uint64_t sub_100001B7C()
{
  v0 = swift_allocObject();
  sub_100002DA4();
  return v0;
}

uint64_t sub_100001BDC@<X0>(uint64_t a1@<X8>)
{
  sub_10006BB6C();
  v2 = type metadata accessor for AlarmEntry(0);
  v3 = v2[5];
  v4 = sub_10006BB7C();
  v5 = *(*(v4 - 8) + 56);
  v5(a1 + v3, 1, 1, v4);
  result = (v5)(a1 + v2[6], 1, 1, v4);
  *(a1 + v2[7]) = 0;
  v7 = v2[8];
  v8 = (a1 + v2[9]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a1 + v2[10]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + v2[11]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v2[12]);
  *v11 = 0;
  v11[1] = 0;
  *(a1 + v2[13]) = 0;
  *(a1 + v2[14]) = 0;
  v12 = (a1 + v2[15]);
  *v12 = 0;
  v12[1] = 0;
  *(a1 + v2[16]) = 0;
  *(a1 + v2[17]) = 0;
  *(a1 + v7) = 1;
  return result;
}

uint64_t sub_100001D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19, char a20)
{
  v26 = sub_10006BB7C();
  (*(*(v26 - 8) + 32))(a9, a1, v26);
  v27 = type metadata accessor for AlarmEntry(0);
  sub_100003490(a2, a9 + v27[5]);
  result = sub_100003490(a3, a9 + v27[6]);
  *(a9 + v27[7]) = a4;
  *(a9 + v27[8]) = a5;
  v29 = (a9 + v27[9]);
  *v29 = a6;
  v29[1] = a7;
  v30 = (a9 + v27[10]);
  *v30 = a8;
  v30[1] = a10;
  v31 = (a9 + v27[11]);
  *v31 = a11;
  v31[1] = a12;
  v32 = (a9 + v27[12]);
  *v32 = a13;
  v32[1] = a14;
  *(a9 + v27[13]) = a15;
  *(a9 + v27[14]) = a16;
  v33 = (a9 + v27[15]);
  *v33 = a17;
  v33[1] = a18;
  *(a9 + v27[16]) = a19;
  *(a9 + v27[17]) = a20;
  return result;
}

uint64_t sub_100001E90(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for AlarmEntry(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WidgetUtilities();
  v10 = (*(v9 + 80))(0xD00000000000001FLL, 0x800000010006D340);
  (*(*a4 + 224))(v10);
  a2(v8);
  return sub_100003548(v8);
}

uint64_t sub_100001F8C(uint64_t a1, void (*a2)(char *), uint64_t a3, id *a4)
{
  v45 = a3;
  v46 = a2;
  v5 = sub_10006CA9C();
  __chkstk_darwin(v5 - 8);
  v44 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003500(&qword_1000887E8, &qword_1000795A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v13 = sub_10006BB7C();
  v39 = *(v13 - 8);
  v40 = v13;
  __chkstk_darwin(v13);
  v35 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003500(&qword_1000887F0, qword_1000795A8);
  v42 = *(v15 - 8);
  v43 = v15;
  __chkstk_darwin(v15);
  v41 = &v35 - v16;
  v37 = type metadata accessor for AlarmEntry(0);
  v17 = *(v37 - 8);
  __chkstk_darwin(v37);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v35 - v21;
  v36 = *(type metadata accessor for WidgetUtilities() + 80);
  v23 = v36(0xD00000000000001FLL, 0x800000010006D360);
  (*(*a4 + 28))(v23);
  v38 = v22;
  sub_1000035A4(v22, v19);
  v24 = sub_100005F38(0, 1, 1, &_swiftEmptyArrayStorage);
  v26 = v24[2];
  v25 = v24[3];
  if (v26 >= v25 >> 1)
  {
    v24 = sub_100005F38((v25 > 1), v26 + 1, 1, v24);
  }

  v24[2] = v26 + 1;
  sub_100006110(v19, v24 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v26);
  v27 = [a4[2] nextExpectedRefreshDate];
  if (v27)
  {
    v28 = v27;
    sub_10006BB3C();

    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  v31 = v40;
  v30 = v41;
  v32 = v39;
  (*(v39 + 56))(v9, v29, 1, v40);
  sub_100003490(v9, v12);
  if ((*(v32 + 48))(v12, 1, v31) == 1)
  {
    sub_100006174(v12);
    v36(0xD00000000000001ELL, 0x800000010006D380);
    sub_10006CA8C();
    sub_1000061DC(&qword_1000887F8, type metadata accessor for AlarmEntry, &unk_100079618);
    sub_10006CAFC();
  }

  else
  {
    v33 = v35;
    (*(v32 + 32))(v35, v12, v31);
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_10006CD2C(35);

    v47 = 0xD000000000000021;
    v48 = 0x800000010006D3A0;
    sub_1000061DC(&qword_100088800, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v49._countAndFlagsBits = sub_10006CD9C();
    sub_10006CBBC(v49);

    v36(v47, v48);

    sub_10006CA6C();
    sub_1000061DC(&qword_1000887F8, type metadata accessor for AlarmEntry, &unk_100079618);
    sub_10006CAFC();
    (*(v32 + 8))(v33, v31);
  }

  v46(v30);
  (*(v42 + 8))(v30, v43);
  return sub_100003548(v38);
}

uint64_t sub_1000025B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*(a1 + 16) nextExpectedRefreshDate];
  if (v3)
  {
    v4 = v3;
    sub_10006BB3C();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_10006BB7C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_100002658()
{
  type metadata accessor for AlarmDataProvider();
  v0 = swift_allocObject();
  sub_100002DA4();
  return v0;
}

uint64_t sub_100002690(uint64_t a1, void (*a2)(char *))
{
  v4 = type metadata accessor for AlarmEntry(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  v8 = type metadata accessor for WidgetUtilities();
  v9 = (*(v8 + 80))(0xD00000000000001FLL, 0x800000010006D340);
  (*(*v7 + 224))(v9);
  a2(v6);
  return sub_100003548(v6);
}

uint64_t sub_100002794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100002848;

  return TimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_100002848()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000293C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100006998;

  return TimelineProvider.relevance()(a1, a2, a3);
}

id sub_1000029F0()
{
  v0 = objc_allocWithZone(MTAlarmManager);

  return [v0 init];
}

id sub_100002A30()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

void sub_100002A74(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

id sub_100002B10()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

void sub_100002B54(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

id sub_100002BEC()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

void sub_100002C30(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

id sub_100002CC8()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

void sub_100002D0C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t sub_100002DA4()
{
  v1 = sub_10006BC3C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10006BD3C();
  v59 = v5;
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = [objc_allocWithZone(MTAlarmManager) init];
  v9 = [objc_allocWithZone(NSDateFormatter) init];
  *(v0 + 24) = v9;
  v10 = (v0 + 24);
  v11 = v9;
  sub_10006BD2C();
  isa = sub_10006BD0C().super.isa;
  v13 = *(v6 + 8);
  v60 = v6 + 8;
  v13(v8, v5);
  v57 = v13;
  [v11 setTimeZone:isa];

  swift_beginAccess();
  v14 = *v10;
  v15 = sub_10002988C();
  v16 = *(v2 + 16);
  v64 = v2 + 16;
  v58 = v16;
  v62 = v15;
  v16(v4, v15, v1);
  v17 = sub_10006BBEC().super.isa;
  v61 = *(v2 + 8);
  v55[1] = v2 + 8;
  v61(v4, v1);
  [v14 setLocale:v17];

  [*v10 setDateStyle:4];
  [*v10 setTimeStyle:0];
  [*v10 setDoesRelativeDateFormatting:1];
  [*v10 setFormattingContext:4];
  v18 = [objc_allocWithZone(NSDateFormatter) init];
  v19 = v63;
  *(v63 + 32) = v18;
  v19 += 4;
  v20 = v18;
  sub_10006BD2C();
  v21 = sub_10006BD0C().super.isa;
  v22 = v59;
  v13(v8, v59);
  [v20 setTimeZone:v21];

  swift_beginAccess();
  v23 = *v19;
  v24 = v15;
  v25 = v1;
  v56 = v1;
  v26 = v1;
  v27 = v58;
  v58(v4, v24, v26);
  v28 = v23;
  v29 = sub_10006BBEC().super.isa;
  v61(v4, v25);
  [v28 setLocale:v29];

  v30 = *v19;
  v31 = sub_10006CB6C();
  [v30 setLocalizedDateFormatFromTemplate:v31];

  [*v19 setDateStyle:0];
  [*v19 setTimeStyle:1];
  [*v19 setDoesRelativeDateFormatting:1];
  [*v19 setFormattingContext:4];
  v32 = [objc_allocWithZone(NSDateFormatter) init];
  v33 = v63;
  v34 = v63;
  *(v63 + 40) = v32;
  v34 += 5;
  v35 = v32;
  sub_10006BD2C();
  v36 = sub_10006BD0C().super.isa;
  v37 = v22;
  v38 = v57;
  v57(v8, v37);
  [v35 setTimeZone:v36];

  swift_beginAccess();
  v39 = *v34;
  v40 = v56;
  v27(v4, v62, v56);
  v41 = v39;
  v42 = sub_10006BBEC().super.isa;
  v43 = v61;
  v61(v4, v40);
  [v41 setLocale:v42];

  v44 = *v34;
  v45 = sub_10006CB6C();
  [v44 setDateFormat:v45];

  v46 = [objc_allocWithZone(NSDateFormatter) init];
  *(v33 + 48) = v46;
  v47 = v46;
  sub_10006BD2C();
  v48 = sub_10006BD0C().super.isa;
  v38(v8, v59);
  [v47 setTimeZone:v48];

  swift_beginAccess();
  v49 = *(v33 + 48);
  v58(v4, v62, v40);
  v50 = v49;
  v51 = sub_10006BBEC().super.isa;
  v43(v4, v40);
  [v50 setLocale:v51];

  v52 = *(v33 + 48);
  v53 = sub_10006CB6C();
  [v52 setDateFormat:v53];

  return v33;
}

uint64_t type metadata accessor for AlarmEntry(uint64_t a1)
{
  result = qword_10008C4B0;
  if (!qword_10008C4B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100003490(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003500(&qword_1000887E8, &qword_1000795A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003500(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003548(uint64_t a1)
{
  v2 = type metadata accessor for AlarmEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000035A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003608@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10006BB7C();
  v140 = *(v3 - 8);
  __chkstk_darwin(v3);
  v135 = v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v126 - v6;
  v8 = type metadata accessor for AlarmEntry(0);
  __chkstk_darwin(v8);
  v10 = v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003500(&qword_1000887E8, &qword_1000795A0);
  __chkstk_darwin(v11);
  v136 = v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v137 = v126 - v14;
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v18 = v126 - v17;
  v19 = *(v1 + 16);
  v20 = [v19 nextWidgetAlarmInThreshold];
  if (v20)
  {
    v21 = v20;
    v132 = v1;
    v133 = v7;
    v134 = a1;
    v142 = 0;
    v143 = 0xE000000000000000;
    sub_10006CD2C(70);
    v144._countAndFlagsBits = 0xD00000000000001FLL;
    v144._object = 0x800000010006D420;
    sub_10006CBBC(v144);
    v22 = [v21 description];
    v23 = sub_10006CB7C();
    v25 = v24;

    v145._countAndFlagsBits = v23;
    v145._object = v25;
    sub_10006CBBC(v145);

    v146._countAndFlagsBits = 0x6F6F6E537369202CLL;
    v146._object = 0xED0000203A64657ALL;
    sub_10006CBBC(v146);
    v26 = [v21 isSnoozed];
    v27 = v26 == 0;
    if (v26)
    {
      v28._countAndFlagsBits = 1702195828;
    }

    else
    {
      v28._countAndFlagsBits = 0x65736C6166;
    }

    if (v27)
    {
      v29 = 0xE500000000000000;
    }

    else
    {
      v29 = 0xE400000000000000;
    }

    v28._object = v29;
    sub_10006CBBC(v28);

    v147._object = 0x800000010006D440;
    v147._countAndFlagsBits = 0xD000000000000014;
    sub_10006CBBC(v147);
    v141 = v21;
    v30 = [v21 snoozeFireDate];
    if (v30)
    {
      v31 = v30;
      sub_10006BB3C();

      v32 = *(v140 + 56);
      v32(v18, 0, 1, v3);
    }

    else
    {
      v32 = *(v140 + 56);
      v32(v18, 1, 1, v3);
    }

    v46 = type metadata accessor for WidgetUtilities();
    sub_10006CD5C();
    sub_100006174(v18);
    v126[0] = *(v46 + 80);
    v126[1] = v46;
    (v126[0])(v142, v143);

    sub_10006BB6C();
    v47 = v8[5];
    v48 = 1;
    v32(&v10[v47], 1, 1, v3);
    v131 = v8[6];
    v138 = v32;
    v139 = v3;
    v32(&v10[v131], 1, 1, v3);
    v10[v8[8]] = 0;
    v49 = &v10[v8[9]];
    *v49 = 0;
    *(v49 + 1) = 0;
    v127 = v49;
    v50 = &v10[v8[10]];
    *v50 = 0;
    *(v50 + 1) = 0;
    v128 = v50;
    v51 = &v10[v8[11]];
    *v51 = 0;
    *(v51 + 1) = 0;
    v129 = v51;
    v52 = &v10[v8[12]];
    *v52 = 0;
    *(v52 + 1) = 0;
    v130 = v52;
    v53 = v8[13];
    v10[v53] = 0;
    v54 = v8[14];
    v10[v54] = 0;
    v55 = &v10[v8[15]];
    *v55 = 0;
    v55[1] = 0;
    v10[v8[16]] = 0;
    v10[v8[17]] = 0;
    v56 = [v141 nextFireDate];
    v57 = v137;
    if (v56)
    {
      v58 = v56;
      sub_10006BB3C();

      v48 = 0;
    }

    v138(v57, v48, 1, v139);
    v59 = v57;
    v60 = v8[7];
    sub_100006270(v59, &v10[v47]);
    v61 = v141;
    v10[v60] = [v141 isSleepAlarm];
    v62 = [v61 isSleepAlarm];
    v63 = v134;
    if (v62)
    {
      v64 = [objc_opt_self() nextSleepAlarm];
      if (!v64)
      {
        (v126[0])(0xD000000000000021, 0x800000010006D460);
        sub_10006BB6C();

        v119 = v138;
        v118 = v139;
        v138((v63 + v8[5]), 1, 1, v139);
        v119(v63 + v8[6], 1, 1, v118);
        *(v63 + v8[7]) = 0;
        *(v63 + v8[8]) = 0;
        v120 = (v63 + v8[9]);
        *v120 = 0;
        v120[1] = 0;
        v121 = (v63 + v8[10]);
        *v121 = 0;
        v121[1] = 0;
        v122 = (v63 + v8[11]);
        *v122 = 0;
        v122[1] = 0;
        v123 = (v63 + v8[12]);
        *v123 = 0;
        v123[1] = 0;
        *(v63 + v8[13]) = 0;
        *(v63 + v8[14]) = 0;
        v124 = (v63 + v8[15]);
        *v124 = 0;
        v124[1] = 0;
        v125 = v8[16];
        *(v63 + v8[17]) = 0;
        *(v63 + v125) = 1;
        return sub_100003548(v10);
      }
    }

    v10[v53] = [v61 isFiring];
    v10[v54] = 0;
    v65 = [v61 snoozeFireDate];
    if (v65)
    {
      v66 = v136;
      v67 = v65;
      sub_10006BB3C();

      v68 = 0;
      v69 = v139;
      v70 = v140;
    }

    else
    {
      v68 = 1;
      v69 = v139;
      v70 = v140;
      v66 = v136;
    }

    v138(v66, v68, 1, v69);
    sub_100006270(v66, &v10[v131]);
    v78 = [v61 title];
    if (v78)
    {
      v79 = v78;
      v80 = sub_10006CB7C();
      v82 = v81;
    }

    else
    {
      v80 = 0;
      v82 = 0;
    }

    v84 = v132;
    v83 = v133;
    *v55 = v80;
    v55[1] = v82;
    v85 = v141;
    v86 = [v141 nextFireDate];
    if (v86)
    {
      v87 = v135;
      v88 = v86;
      sub_10006BB3C();

      v89 = (*(v70 + 32))(v83, v87, v69);
      v90 = (*(*v84 + 120))(v89);
      isa = sub_10006BB1C().super.isa;
      v92 = [v90 stringFromDate:isa];

      v93 = sub_10006CB7C();
      v95 = v94;

      v96 = v127;
      *v127 = v93;
      v96[1] = v95;
      v97 = (*(*v84 + 144))();
      v98 = sub_10006BB1C().super.isa;
      v99 = [v97 stringFromDate:v98];

      v100 = sub_10006CB7C();
      v102 = v101;

      v103 = v128;
      *v128 = v100;
      v103[1] = v102;
      v104 = (*(*v84 + 168))();
      v105 = sub_10006BB1C().super.isa;
      v106 = [v104 stringFromDate:v105];

      v107 = sub_10006CB7C();
      v109 = v108;

      v110 = v129;
      *v129 = v107;
      v110[1] = v109;
      v111 = (*(*v84 + 192))();
      v112 = sub_10006BB1C().super.isa;
      v113 = [v111 stringFromDate:v112];

      v114 = sub_10006CB7C();
      v116 = v115;

      (*(v70 + 8))(v83, v69);
      v117 = v130;
      *v130 = v114;
      v117[1] = v116;
    }

    else
    {
    }

    return sub_100006110(v10, v63);
  }

  else
  {
    v33 = [v19 alarmsSync];
    if (v33 && ((v34 = v33, sub_100006224(), v35 = sub_10006CC0C(), v34, v35 >> 62) ? (v36 = sub_10006CD6C()) : (v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v36))
    {
      v37 = type metadata accessor for WidgetUtilities();
      (*(v37 + 80))(0xD00000000000001DLL, 0x800000010006D400);
      sub_10006BB6C();
      v38 = *(v140 + 56);
      v38(a1 + v8[5], 1, 1, v3);
      result = (v38)(a1 + v8[6], 1, 1, v3);
      *(a1 + v8[7]) = 0;
      *(a1 + v8[8]) = 0;
      v40 = (a1 + v8[9]);
      *v40 = 0;
      v40[1] = 0;
      v41 = (a1 + v8[10]);
      *v41 = 0;
      v41[1] = 0;
      v42 = (a1 + v8[11]);
      *v42 = 0;
      v42[1] = 0;
      v43 = (a1 + v8[12]);
      *v43 = 0;
      v43[1] = 0;
      *(a1 + v8[13]) = 0;
      *(a1 + v8[14]) = 0;
      v44 = (a1 + v8[15]);
      *v44 = 0;
      v44[1] = 0;
      *(a1 + v8[16]) = 0;
      v45 = v8[17];
    }

    else
    {
      v71 = type metadata accessor for WidgetUtilities();
      (*(v71 + 80))(0xD00000000000002ALL, 0x800000010006D3D0);
      sub_10006BB6C();
      v72 = *(v140 + 56);
      v72(a1 + v8[5], 1, 1, v3);
      result = (v72)(a1 + v8[6], 1, 1, v3);
      *(a1 + v8[7]) = 0;
      *(a1 + v8[8]) = 0;
      v73 = (a1 + v8[9]);
      *v73 = 0;
      v73[1] = 0;
      v74 = (a1 + v8[10]);
      *v74 = 0;
      v74[1] = 0;
      v75 = (a1 + v8[11]);
      *v75 = 0;
      v75[1] = 0;
      v76 = (a1 + v8[12]);
      *v76 = 0;
      v76[1] = 0;
      *(a1 + v8[13]) = 0;
      *(a1 + v8[14]) = 0;
      v77 = (a1 + v8[15]);
      *v77 = 0;
      v77[1] = 0;
      v45 = v8[16];
      *(a1 + v8[17]) = 0;
    }

    *(a1 + v45) = 1;
  }

  return result;
}

uint64_t sub_1000041C4@<X0>(uint64_t a2@<X8>)
{
  sub_10006BB6C();
  v3 = type metadata accessor for AlarmEntry(0);
  v4 = v3[5];
  v5 = sub_10006BB7C();
  v6 = *(*(v5 - 8) + 56);
  v6(a2 + v4, 1, 1, v5);
  result = (v6)(a2 + v3[6], 1, 1, v5);
  *(a2 + v3[7]) = 0;
  *(a2 + v3[8]) = 0;
  v8 = (a2 + v3[9]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v3[10]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v3[11]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a2 + v3[12]);
  *v11 = 0;
  v11[1] = 0;
  *(a2 + v3[13]) = 0;
  *(a2 + v3[14]) = 0;
  v12 = (a2 + v3[15]);
  *v12 = 0;
  v12[1] = 0;
  v13 = v3[16];
  *(a2 + v3[17]) = 0;
  *(a2 + v13) = 1;
  return result;
}

uint64_t sub_1000042E0@<X0>(uint64_t a2@<X8>)
{
  sub_10006BB6C();
  v3 = type metadata accessor for AlarmEntry(0);
  v4 = v3[5];
  v5 = sub_10006BB7C();
  v6 = *(*(v5 - 8) + 56);
  v6(a2 + v4, 1, 1, v5);
  result = (v6)(a2 + v3[6], 1, 1, v5);
  *(a2 + v3[7]) = 0;
  *(a2 + v3[8]) = 0;
  v8 = (a2 + v3[9]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v3[10]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v3[11]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a2 + v3[12]);
  *v11 = 0;
  v11[1] = 0;
  *(a2 + v3[13]) = 0;
  *(a2 + v3[14]) = 0;
  v12 = (a2 + v3[15]);
  *v12 = 0;
  v12[1] = 0;
  *(a2 + v3[16]) = 0;
  *(a2 + v3[17]) = 1;
  return result;
}

uint64_t sub_100004440()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100004498@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10006BB7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100004500(uint64_t a1)
{
  v3 = sub_10006BB7C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_100004590@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AlarmEntry(0) + 20);

  return sub_1000062E0(v3, a1);
}

uint64_t sub_1000045D4(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AlarmEntry(0) + 20);

  return sub_100006270(a1, v3);
}

uint64_t sub_100004660@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10006BB7C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1000046CC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AlarmEntry(0) + 24);

  return sub_1000062E0(v3, a1);
}

uint64_t sub_100004710(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AlarmEntry(0) + 24);

  return sub_100006270(a1, v3);
}

uint64_t sub_10000479C()
{
  v1 = sub_10006BB7C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003500(&qword_1000887E8, &qword_1000795A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = *(type metadata accessor for AlarmEntry(0) + 24);
  sub_1000062E0(v0 + v11, v10);
  v12 = *(v2 + 48);
  v13 = v12(v10, 1, v1);
  sub_100006174(v10);
  if (v13 == 1)
  {
    return 0;
  }

  sub_10006BB6C();
  sub_1000062E0(v0 + v11, v7);
  result = v12(v7, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v15 = sub_10006BB4C();
    v16 = *(v2 + 8);
    v16(v4, v1);
    v16(v7, v1);
    return v15 == -1;
  }

  return result;
}

uint64_t sub_100004994(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000073;
  v3 = 0x6D72616C41206F4ELL;
  v4 = a1;
  v5 = 0xEA00000000006666;
  v6 = 4605519;
  if (a1 == 6)
  {
    v6 = 0x4F20736D72616C41;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  v7 = 0xD000000000000013;
  v8 = 0x800000010006D310;
  if (a1 != 4)
  {
    v7 = 7827278;
    v8 = 0xE300000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v8;
  }

  else
  {
    v7 = v6;
  }

  v9 = 0x2064657A6F6F6E53;
  v10 = 0xED00006D72616C41;
  if (a1 != 2)
  {
    v9 = 0x705520656B6157;
    v10 = 0xE700000000000000;
  }

  v11 = 0xE500000000000000;
  v12 = 0x6D72616C41;
  if (!a1)
  {
    v12 = 0x6D72616C41206F4ELL;
    v11 = 0xE900000000000073;
  }

  if (a1 <= 1u)
  {
    v9 = v12;
    v10 = v11;
  }

  if (a1 <= 3u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v7;
  }

  if (v4 <= 3)
  {
    v14 = v10;
  }

  else
  {
    v14 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xEA00000000006666;
        if (v13 != 0x4F20736D72616C41)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v2 = 0xE300000000000000;
        if (v13 != 4605519)
        {
          goto LABEL_43;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0x800000010006D310;
      if (v13 != 0xD000000000000013)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v2 = 0xE300000000000000;
      if (v13 != 7827278)
      {
        goto LABEL_43;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xED00006D72616C41;
        if (v13 != 0x2064657A6F6F6E53)
        {
          goto LABEL_43;
        }

        goto LABEL_40;
      }

      v2 = 0xE700000000000000;
      v3 = 0x705520656B6157;
    }

    else if (a2)
    {
      v2 = 0xE500000000000000;
      if (v13 != 0x6D72616C41)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    if (v13 != v3)
    {
LABEL_43:
      v15 = sub_10006CDAC();
      goto LABEL_44;
    }
  }

LABEL_40:
  if (v14 != v2)
  {
    goto LABEL_43;
  }

  v15 = 1;
LABEL_44:

  return v15 & 1;
}

uint64_t sub_100004C14(char a1)
{
  result = type metadata accessor for AlarmEntry(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_100004CB0(char a1)
{
  result = type metadata accessor for AlarmEntry(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t sub_100004D34()
{
  v1 = *(v0 + *(type metadata accessor for AlarmEntry(0) + 36));

  return v1;
}

uint64_t sub_100004D74(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AlarmEntry(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_100004E04()
{
  v1 = *(v0 + *(type metadata accessor for AlarmEntry(0) + 40));

  return v1;
}

uint64_t sub_100004E44(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AlarmEntry(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_100004ED4()
{
  v1 = *(v0 + *(type metadata accessor for AlarmEntry(0) + 44));

  return v1;
}

uint64_t sub_100004F14(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AlarmEntry(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_100004FA4()
{
  v1 = *(v0 + *(type metadata accessor for AlarmEntry(0) + 48));

  return v1;
}

uint64_t sub_100004FE4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AlarmEntry(0) + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_100005098(char a1)
{
  result = type metadata accessor for AlarmEntry(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t sub_100005134(char a1)
{
  result = type metadata accessor for AlarmEntry(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t sub_1000051AC()
{
  v1 = *(v0 + *(type metadata accessor for AlarmEntry(0) + 60));

  return v1;
}

uint64_t sub_1000051EC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AlarmEntry(0) + 60));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1000052A0(char a1)
{
  result = type metadata accessor for AlarmEntry(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t sub_10000533C(char a1)
{
  result = type metadata accessor for AlarmEntry(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t sub_1000053B4()
{
  v1 = sub_100003500(&qword_1000887E8, &qword_1000795A0);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for AlarmEntry(0);
  sub_1000062E0(v0 + v4[5], v3);
  v5 = sub_10006BB7C();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5);
  sub_100006174(v3);
  if (v6 == 1)
  {
    if (*(v0 + v4[17]))
    {
      return 6;
    }

    else
    {
      return 0;
    }
  }

  else if (*(v0 + v4[7]))
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1000054F8()
{
  type metadata accessor for AlarmEntry(0);

  return sub_10006C7FC();
}

BOOL sub_10000555C()
{
  v1 = sub_100003500(&qword_1000887E8, &qword_1000795A0);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for AlarmEntry(0);
  sub_1000062E0(v0 + *(v4 + 20), v3);
  v5 = sub_10006BB7C();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_100006174(v3);
  return v6;
}

uint64_t sub_100005630()
{
  v1 = (v0 + *(type metadata accessor for AlarmEntry(0) + 36));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_100005684()
{
  v1 = (v0 + *(type metadata accessor for AlarmEntry(0) + 40));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1000056D8()
{
  v1 = (v0 + *(type metadata accessor for AlarmEntry(0) + 44));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_10000572C()
{
  v1 = (v0 + *(type metadata accessor for AlarmEntry(0) + 48));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_100005780()
{
  v1 = sub_100003500(&qword_1000887E8, &qword_1000795A0);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for AlarmEntry(0);
  v5 = (v0 + v4[15]);
  if (v5[1])
  {
    v6 = *v5;
  }

  else
  {
    sub_1000062E0(v0 + v4[5], v3);
    v7 = sub_10006BB7C();
    v8 = (*(*(v7 - 8) + 48))(v3, 1, v7);
    sub_100006174(v3);
    if (v8 == 1)
    {
      if (*(v0 + v4[17]))
      {
        v9 = 6;
      }

      else
      {
        v9 = 0;
      }
    }

    else if (*(v0 + v4[7]))
    {
      v9 = 3;
    }

    else
    {
      v9 = 1;
    }

    v6 = sub_1000058C4(v9);
  }

  return v6;
}

uint64_t sub_1000058C4(unsigned __int8 a1)
{
  v1 = 0xE900000000000073;
  v2 = 0x6D72616C41206F4ELL;
  v3 = 0xEA00000000006666;
  v4 = 0x4F20736D72616C41;
  if (a1 != 6)
  {
    v4 = 4605519;
    v3 = 0xE300000000000000;
  }

  v5 = 0x800000010006D310;
  v6 = 0xD000000000000013;
  if (a1 != 4)
  {
    v6 = 7827278;
    v5 = 0xE300000000000000;
  }

  if (a1 <= 5u)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0xED00006D72616C41;
  v8 = 0x2064657A6F6F6E53;
  if (a1 != 2)
  {
    v8 = 0x705520656B6157;
    v7 = 0xE700000000000000;
  }

  if (a1)
  {
    v2 = 0x6D72616C41;
    v1 = 0xE500000000000000;
  }

  if (a1 > 1u)
  {
    v2 = v8;
    v1 = v7;
  }

  if (a1 <= 3u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v4;
  }

  if (a1 <= 3u)
  {
    v10 = v1;
  }

  else
  {
    v10 = v3;
  }

  v11 = [objc_opt_self() mainBundle];
  v15._countAndFlagsBits = v10;
  v16._countAndFlagsBits = v9;
  v16._object = v10;
  v17.value._countAndFlagsBits = 0;
  v17.value._object = 0;
  v12.super.isa = v11;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v13 = sub_10006B88C(v16, v17, v12, v18, v9, v15);
  swift_bridgeObjectRelease_n();

  return v13;
}

uint64_t sub_100005A5C(unsigned __int8 a1)
{
  v1 = 0x6D72616C41206F4ELL;
  v2 = 0x4F20736D72616C41;
  if (a1 != 6)
  {
    v2 = 4605519;
  }

  v3 = 0xD000000000000013;
  if (a1 != 4)
  {
    v3 = 7827278;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0x2064657A6F6F6E53;
  if (a1 != 2)
  {
    v4 = 0x705520656B6157;
  }

  if (a1)
  {
    v1 = 0x6D72616C41;
  }

  if (a1 > 1u)
  {
    v1 = v4;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100005B80(uint64_t a1, unsigned __int8 a2)
{
  sub_10006CB9C();
}

Swift::Int sub_100005CBC(uint64_t a1, unsigned __int8 a2)
{
  sub_10006CDCC();
  sub_10006CB9C();

  return sub_10006CDFC();
}

unint64_t sub_100005E04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100006350(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100005E34(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000073;
  v4 = 0x6D72616C41206F4ELL;
  v5 = 0xEA00000000006666;
  v6 = 0x4F20736D72616C41;
  if (v2 != 6)
  {
    v6 = 4605519;
    v5 = 0xE300000000000000;
  }

  v7 = 0x800000010006D310;
  v8 = 0xD000000000000013;
  if (v2 != 4)
  {
    v8 = 7827278;
    v7 = 0xE300000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xED00006D72616C41;
  v10 = 0x2064657A6F6F6E53;
  if (v2 != 2)
  {
    v10 = 0x705520656B6157;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = 0x6D72616C41;
    v3 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

void *sub_100005F38(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003500(&qword_100088A00, qword_100079788);
  v10 = *(type metadata accessor for AlarmEntry(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for AlarmEntry(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_100006110(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006174(uint64_t a1)
{
  v2 = sub_100003500(&qword_1000887E8, &qword_1000795A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000061DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100006224()
{
  result = qword_100088808;
  if (!qword_100088808)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100088808);
  }

  return result;
}

uint64_t sub_100006270(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003500(&qword_1000887E8, &qword_1000795A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000062E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003500(&qword_1000887E8, &qword_1000795A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100006350(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100085FC0;
  v6._object = a2;
  v4 = sub_10006CD8C(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000063E8()
{
  result = qword_100088810;
  if (!qword_100088810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088810);
  }

  return result;
}

uint64_t sub_100006460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10006BB7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100003500(&qword_1000887E8, &qword_1000795A0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 36) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_10000659C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10006BB7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100003500(&qword_1000887E8, &qword_1000795A0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1000066B4(uint64_t a1)
{
  sub_10006BB7C();
  if (v1 <= 0x3F)
  {
    sub_100006774(319);
    if (v2 <= 0x3F)
    {
      sub_1000067CC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100006774(uint64_t a1)
{
  if (!qword_100088998)
  {
    sub_10006BB7C();
    v1 = sub_10006CCEC();
    if (!v2)
    {
      atomic_store(v1, &qword_100088998);
    }
  }
}

void sub_1000067CC()
{
  if (!qword_1000889A0)
  {
    v0 = sub_10006CCEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000889A0);
    }
  }
}

uint64_t getEnumTagSinglePayload for AlarmState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlarmState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000069A0@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = sub_100003500(&qword_100088A08, &qword_1000797B0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v34 - v3;
  v5 = sub_100003500(&qword_100088A10, &qword_1000797B8);
  v6 = *(v5 - 8);
  v35 = v5;
  v36 = v6;
  __chkstk_darwin(v5);
  v8 = &v34 - v7;
  v9 = sub_100003500(&qword_100088A18, &unk_1000797C0);
  v10 = *(v9 - 8);
  v37 = v9;
  v38 = v10;
  __chkstk_darwin(v9);
  v34 = &v34 - v11;
  v40 = sub_100006990();
  type metadata accessor for AlarmsWidget.WidgetView(0);
  sub_10000911C(&qword_100088A20, type metadata accessor for AlarmsWidget.WidgetView, &unk_100079810);
  sub_100006FDC();
  sub_10006CA5C();
  sub_10006C14C();
  v12 = sub_10006C59C();
  v14 = v13;
  v16 = v15;
  v17 = sub_100007030();
  sub_10006C24C();
  sub_1000070DC(v12, v14, v16 & 1);

  (*(v2 + 8))(v4, v1);
  sub_100003500(&qword_100088A38, &unk_100079E90);
  v18 = sub_10006CA0C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1000797A0;
  v23 = v22 + v21;
  v24 = *(v19 + 104);
  v24(v23, enum case for WidgetFamily.accessoryRectangular(_:), v18);
  v24(v23 + v20, enum case for WidgetFamily.accessoryInline(_:), v18);
  v24(v23 + 2 * v20, enum case for WidgetFamily.accessoryCircular(_:), v18);
  v40 = v1;
  v41 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v34;
  v27 = v35;
  sub_10006C22C();

  (*(v36 + 8))(v8, v27);
  sub_10006C14C();
  v28 = sub_10006C59C();
  v30 = v29;
  LOBYTE(v8) = v31;
  v40 = v27;
  v41 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v32 = v37;
  sub_10006C21C();
  sub_1000070DC(v28, v30, v8 & 1);

  return (*(v38 + 8))(v26, v32);
}

uint64_t sub_100006F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000035A4(a1, a2);
  KeyPath = swift_getKeyPath();
  *(a2 + *(type metadata accessor for AlarmsWidget.WidgetView(0) + 20)) = KeyPath;
  sub_100003500(&qword_100088A40, &unk_100079800);

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for AlarmsWidget.WidgetView(uint64_t a1)
{
  result = qword_10008C5D0;
  if (!qword_10008C5D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100006FDC()
{
  result = qword_100088A28;
  if (!qword_100088A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088A28);
  }

  return result;
}

unint64_t sub_100007030()
{
  result = qword_100088A30;
  if (!qword_100088A30)
  {
    sub_100007094(&qword_100088A08, &qword_1000797B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088A30);
  }

  return result;
}

uint64_t sub_100007094(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000070DC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000070F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10000919C(a1, a3, type metadata accessor for AlarmEntry);
  v5 = a3 + *(type metadata accessor for AlarmsWidget.WidgetView(0) + 20);

  return sub_100007518(a2, v5);
}

uint64_t sub_100007154()
{
  sub_100003500(&qword_100088A38, &unk_100079E90);
  v0 = sub_10006CA0C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000797A0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for WidgetFamily.accessoryRectangular(_:), v0);
  v6(v5 + v2, enum case for WidgetFamily.accessoryInline(_:), v0);
  v6(v5 + 2 * v2, enum case for WidgetFamily.accessoryCircular(_:), v0);
  return v4;
}

uint64_t sub_1000072A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10006C0AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003500(&qword_100088A40, &unk_100079800);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AlarmsWidget.WidgetView(0);
  sub_1000075EC(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10006CA0C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_10006CCCC();
    v13 = sub_10006C32C();
    sub_10006BDEC();

    sub_10006C09C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100007494@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100003500(&qword_100088A40, &unk_100079800);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100007518(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003500(&qword_100088A48, &unk_10007B6A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007588(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmEntry(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000075EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003500(&qword_100088A40, &unk_100079800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a2;
  v104 = type metadata accessor for AlarmSmallWidgetView(0);
  __chkstk_darwin(v104);
  v85 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_100003500(&qword_100088B48, &qword_1000798F8);
  v86 = *(v106 - 8);
  __chkstk_darwin(v106);
  v88 = &v81 - v4;
  v101 = sub_100003500(&qword_100088B50, &unk_100079900);
  __chkstk_darwin(v101);
  v103 = &v81 - v5;
  v110 = sub_100003500(&qword_100088B20, &qword_1000798E8);
  __chkstk_darwin(v110);
  v105 = &v81 - v6;
  v7 = sub_100003500(&qword_100088B58, &qword_100079D00);
  __chkstk_darwin(v7 - 8);
  v95 = &v81 - v8;
  v9 = type metadata accessor for AlarmComplicationCircularView(0);
  __chkstk_darwin(v9 - 8);
  v96 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_100003500(&qword_100088B28, &qword_1000798F0);
  __chkstk_darwin(v100);
  v97 = &v81 - v11;
  v102 = sub_100003500(&qword_100088B60, &qword_100079910);
  v99 = *(v102 - 8);
  __chkstk_darwin(v102);
  v98 = &v81 - v12;
  v92 = type metadata accessor for AlarmInlineComplicationView(0);
  __chkstk_darwin(v92);
  v82 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_100003500(&qword_100088B68, &qword_100079918);
  v84 = *(v94 - 8);
  __chkstk_darwin(v94);
  v83 = &v81 - v14;
  v107 = sub_100003500(&qword_100088B70, &qword_100079920);
  __chkstk_darwin(v107);
  v109 = &v81 - v15;
  v89 = sub_100003500(&qword_100088B78, &qword_100079928);
  __chkstk_darwin(v89);
  v91 = &v81 - v16;
  v108 = sub_100003500(&qword_100088B00, &qword_1000798E0);
  __chkstk_darwin(v108);
  v93 = &v81 - v17;
  v18 = sub_100003500(&qword_100088B80, &qword_100079930);
  __chkstk_darwin(v18 - 8);
  v20 = &v81 - v19;
  v21 = type metadata accessor for AlarmEntry(0);
  __chkstk_darwin(v21 - 8);
  v23 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for AlarmComplicationRectangularView(0);
  __chkstk_darwin(v24);
  v26 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_100003500(&qword_100088B88, &qword_100079938);
  v87 = *(v90 - 8);
  __chkstk_darwin(v90);
  v28 = &v81 - v27;
  v29 = sub_10006CA0C();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v81 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  sub_1000072A4(v32);
  v34 = (*(v30 + 88))(v32, v29);
  if (v34 == enum case for WidgetFamily.accessoryCircular(_:))
  {
    sub_1000035A4(a1, v23);
    sub_100020F9C(v114);
    *(&v116 + 1) = &type metadata for AnalogueCircularDimensions;
    *&v117 = &off_100086690;
    v35 = swift_allocObject();
    *&v115 = v35;
    v36 = v114[1];
    v35[1] = v114[0];
    v35[2] = v36;
    v37 = v114[3];
    v35[3] = v114[2];
    v35[4] = v37;
    v38 = v95;
    sub_1000600B8();
    v39 = sub_100001CF8();
    v40 = sub_100001CF8();
    v41 = sub_100001CF8();
    v42 = v39 & 1;
    v43 = v96;
    sub_10006011C(v38, v23, &v115, v42, v40 & 1, v41 & 1, v96);
    sub_10006C93C();
    sub_10006BF6C();
    v44 = v97;
    sub_10000919C(v43, v97, type metadata accessor for AlarmComplicationCircularView);
    v45 = v100;
    v46 = (v44 + *(v100 + 36));
    v47 = v120;
    v46[4] = v119;
    v46[5] = v47;
    v46[6] = v121;
    v48 = v116;
    *v46 = v115;
    v46[1] = v48;
    v49 = v118;
    v46[2] = v117;
    v46[3] = v49;
    sub_10006B8FC();
    v50 = sub_100009060();
    v51 = v98;
    sub_10006C60C();
    sub_100009204(v20, &qword_100088B80, &qword_100079930);
    sub_100009204(v44, &qword_100088B28, &qword_1000798F0);
    v52 = v99;
    v53 = v102;
    (*(v99 + 16))(v103, v51, v102);
    swift_storeEnumTagMultiPayload();
    v112 = v45;
    v113 = v50;
    swift_getOpaqueTypeConformance2();
    v54 = sub_10000911C(&qword_100088B40, type metadata accessor for AlarmSmallWidgetView, &unk_10007D120);
    v112 = v104;
    v113 = v54;
    swift_getOpaqueTypeConformance2();
    v55 = v105;
    sub_10006C26C();
    sub_100009264(v55, v109, &qword_100088B20, &qword_1000798E8);
    swift_storeEnumTagMultiPayload();
    sub_100008DF4();
    sub_100008F3C();
    sub_10006C26C();
    sub_100009204(v55, &qword_100088B20, &qword_1000798E8);
    return (*(v52 + 8))(v51, v53);
  }

  else
  {
    v57 = v34;
    v58 = v33;
    if (v57 == enum case for WidgetFamily.accessoryRectangular(_:))
    {
      sub_1000035A4(v33, v23);
      sub_10006469C(v23, v26);
      sub_10006B8FC();
      v59 = sub_10000911C(&qword_100088B08, type metadata accessor for AlarmComplicationRectangularView, &unk_10007D170);
      sub_10006C60C();
      sub_100009204(v20, &qword_100088B80, &qword_100079930);
      sub_1000092CC(v26, type metadata accessor for AlarmComplicationRectangularView);
      v60 = v87;
      v61 = v90;
      (*(v87 + 16))(v91, v28, v90);
      swift_storeEnumTagMultiPayload();
      *&v115 = v24;
      *(&v115 + 1) = v59;
      swift_getOpaqueTypeConformance2();
      v62 = sub_10000911C(&qword_100088B10, type metadata accessor for AlarmInlineComplicationView, &unk_10007D1C0);
      *&v115 = v92;
      *(&v115 + 1) = v62;
      swift_getOpaqueTypeConformance2();
      v63 = v93;
      sub_10006C26C();
      sub_100009264(v63, v109, &qword_100088B00, &qword_1000798E0);
      swift_storeEnumTagMultiPayload();
      sub_100008DF4();
      sub_100008F3C();
      sub_10006C26C();
      sub_100009204(v63, &qword_100088B00, &qword_1000798E0);
      return (*(v60 + 8))(v28, v61);
    }

    else
    {
      v64 = enum case for WidgetFamily.accessoryInline(_:);
      sub_1000035A4(v58, v23);
      if (v57 == v64)
      {
        v65 = v82;
        sub_10006469C(v23, v82);
        sub_10006B8FC();
        v66 = sub_10000911C(&qword_100088B10, type metadata accessor for AlarmInlineComplicationView, &unk_10007D1C0);
        v67 = v83;
        v68 = v92;
        sub_10006C60C();
        sub_100009204(v20, &qword_100088B80, &qword_100079930);
        sub_1000092CC(v65, type metadata accessor for AlarmInlineComplicationView);
        v69 = v84;
        v70 = v94;
        (*(v84 + 16))(v91, v67, v94);
        swift_storeEnumTagMultiPayload();
        v71 = sub_10000911C(&qword_100088B08, type metadata accessor for AlarmComplicationRectangularView, &unk_10007D170);
        *&v115 = v24;
        *(&v115 + 1) = v71;
        swift_getOpaqueTypeConformance2();
        *&v115 = v68;
        *(&v115 + 1) = v66;
        swift_getOpaqueTypeConformance2();
        v72 = v93;
        sub_10006C26C();
        sub_100009264(v72, v109, &qword_100088B00, &qword_1000798E0);
        swift_storeEnumTagMultiPayload();
        sub_100008DF4();
        sub_100008F3C();
        sub_10006C26C();
        sub_100009204(v72, &qword_100088B00, &qword_1000798E0);
        return (*(v69 + 8))(v67, v70);
      }

      else
      {
        v73 = v85;
        sub_10005B8AC(v23, v85);
        sub_10006B8FC();
        v74 = sub_10000911C(&qword_100088B40, type metadata accessor for AlarmSmallWidgetView, &unk_10007D120);
        v75 = v88;
        v76 = v104;
        sub_10006C60C();
        sub_100009204(v20, &qword_100088B80, &qword_100079930);
        sub_1000092CC(v73, type metadata accessor for AlarmSmallWidgetView);
        v77 = v86;
        (*(v86 + 16))(v103, v75, v106);
        swift_storeEnumTagMultiPayload();
        v78 = sub_100009060();
        *&v115 = v100;
        *(&v115 + 1) = v78;
        swift_getOpaqueTypeConformance2();
        *&v115 = v76;
        *(&v115 + 1) = v74;
        swift_getOpaqueTypeConformance2();
        v79 = v105;
        v80 = v106;
        sub_10006C26C();
        sub_100009264(v79, v109, &qword_100088B20, &qword_1000798E8);
        swift_storeEnumTagMultiPayload();
        sub_100008DF4();
        sub_100008F3C();
        sub_10006C26C();
        sub_100009204(v79, &qword_100088B20, &qword_1000798E8);
        (*(v77 + 8))(v88, v80);
        return (*(v30 + 8))(v32, v29);
      }
    }
  }
}

uint64_t sub_100008908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AlarmEntry(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100003500(&qword_100088A48, &unk_10007B6A0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100008A18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for AlarmEntry(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100003500(&qword_100088A48, &unk_10007B6A0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_100008B20(uint64_t a1)
{
  type metadata accessor for AlarmEntry(319);
  if (v1 <= 0x3F)
  {
    sub_100008BA4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100008BA4(uint64_t a1)
{
  if (!qword_100088AA8)
  {
    sub_10006CA0C();
    v1 = sub_10006BE5C();
    if (!v2)
    {
      atomic_store(v1, &qword_100088AA8);
    }
  }
}

uint64_t sub_100008BFC()
{
  sub_100007094(&qword_100088A18, &unk_1000797C0);
  sub_100007094(&qword_100088A10, &qword_1000797B8);
  sub_100007094(&qword_100088A08, &qword_1000797B0);
  sub_100007030();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100008CE4()
{
  result = qword_100088AD8;
  if (!qword_100088AD8)
  {
    sub_100007094(&qword_100088AE0, &qword_1000798D0);
    sub_100008D68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088AD8);
  }

  return result;
}

unint64_t sub_100008D68()
{
  result = qword_100088AE8;
  if (!qword_100088AE8)
  {
    sub_100007094(&qword_100088AF0, &qword_1000798D8);
    sub_100008DF4();
    sub_100008F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088AE8);
  }

  return result;
}

unint64_t sub_100008DF4()
{
  result = qword_100088AF8;
  if (!qword_100088AF8)
  {
    sub_100007094(&qword_100088B00, &qword_1000798E0);
    type metadata accessor for AlarmComplicationRectangularView(255);
    sub_10000911C(&qword_100088B08, type metadata accessor for AlarmComplicationRectangularView, &unk_10007D170);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for AlarmInlineComplicationView(255);
    sub_10000911C(&qword_100088B10, type metadata accessor for AlarmInlineComplicationView, &unk_10007D1C0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088AF8);
  }

  return result;
}

unint64_t sub_100008F3C()
{
  result = qword_100088B18;
  if (!qword_100088B18)
  {
    sub_100007094(&qword_100088B20, &qword_1000798E8);
    sub_100007094(&qword_100088B28, &qword_1000798F0);
    sub_100009060();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for AlarmSmallWidgetView(255);
    sub_10000911C(&qword_100088B40, type metadata accessor for AlarmSmallWidgetView, &unk_10007D120);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088B18);
  }

  return result;
}

unint64_t sub_100009060()
{
  result = qword_100088B30;
  if (!qword_100088B30)
  {
    sub_100007094(&qword_100088B28, &qword_1000798F0);
    sub_10000911C(&qword_100088B38, type metadata accessor for AlarmComplicationCircularView, &unk_10007D210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088B30);
  }

  return result;
}

uint64_t sub_10000911C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100009164()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10000919C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100009204(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003500(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100009264(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003500(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000092CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100009330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109[3] = a2;
  v126 = type metadata accessor for WorldClockEntry(0);
  v122 = *(v126 - 8);
  __chkstk_darwin(v126);
  v4 = v109 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10006CA9C();
  __chkstk_darwin(v5 - 8);
  v109[2] = v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003500(&qword_1000887E8, &qword_1000795A0);
  __chkstk_darwin(v7 - 8);
  v144 = v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v109 - v10;
  v12 = sub_10006BB7C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v138 = v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v137 = v109 - v16;
  __chkstk_darwin(v17);
  v142 = v109 - v18;
  __chkstk_darwin(v19);
  v136 = v109 - v20;
  __chkstk_darwin(v21);
  v135 = v109 - v22;
  __chkstk_darwin(v23);
  v125 = (v109 - v24);
  __chkstk_darwin(v25);
  v124 = v109 - v26;
  __chkstk_darwin(v27);
  v134 = v109 - v28;
  __chkstk_darwin(v29);
  v133 = v109 - v30;
  v31 = type metadata accessor for WorldClockCity(0);
  v32 = *(v31 - 1);
  __chkstk_darwin(v31);
  v34 = v109 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v148 = v109 - v36;
  __chkstk_darwin(v37);
  v143 = v109 - v38;
  v40 = __chkstk_darwin(v39);
  v42 = (v109 - v41);
  v43 = *(*a1 + 96);
  v44 = *a1 + 96;
  v123 = a1;
  v121 = v43;
  v120 = v44;
  v45 = v43(v40);
  v46 = *(v45 + 16);
  v112 = v4;
  v146 = v12;
  v127 = v13;
  v141 = v31;
  v111 = v32;
  v147 = v34;
  if (v46)
  {
    v47 = v31[10];
    v118 = v31[9];
    v117 = v47;
    v116 = v31[11];
    v48 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v109[1] = v45;
    v49 = v45 + v48;
    v50 = (v13 + 16);
    v51 = &_swiftEmptyArrayStorage;
    v114 = (v13 + 48);
    v113 = *(v32 + 72);
    v110 = (v13 + 8);
    v52 = &_swiftEmptyArrayStorage;
    v115 = (v13 + 16);
    v119 = v11;
    v140 = v42;
    v145 = v13 + 32;
    do
    {
      v132 = v46;
      v53 = v42;
      v54 = v52;
      sub_10000A1FC(v49, v53);
      v139 = *v50;
      (v139)(v133, v53 + v118, v12);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_10000DBC0(0, v51[2] + 1, 1, v51, &qword_100088FB0, &qword_100079BF8, &type metadata accessor for Date);
      }

      v130 = v51;
      v56 = *(v54 + 2);
      v55 = *(v54 + 3);
      v57 = v56 + 1;
      if (v56 >= v55 >> 1)
      {
        v54 = sub_10000DBC0((v55 > 1), v56 + 1, 1, v54, &qword_100088FB0, &qword_100079BF8, &type metadata accessor for Date);
      }

      *(v54 + 2) = v57;
      v58 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v59 = *(v13 + 72);
      v60 = *(v13 + 32);
      v61 = v146;
      v60(&v54[v58 + v59 * v56], v133, v146);
      (v139)(v134, v140 + v117, v61);
      v62 = *(v54 + 3);
      v63 = v56 + 2;
      v131 = v49;
      if ((v56 + 2) > (v62 >> 1))
      {
        v54 = sub_10000DBC0((v62 > 1), v56 + 2, 1, v54, &qword_100088FB0, &qword_100079BF8, &type metadata accessor for Date);
      }

      v52 = v54;
      *(v54 + 2) = v63;
      v129 = v58;
      v128 = v59;
      v64 = &v54[v58 + v59 * v57];
      v65 = v146;
      v60(v64, v134, v146);
      v42 = v140;
      v66 = v119;
      sub_100009264(v140 + v116, v119, &qword_1000887E8, &qword_1000795A0);
      if ((*v114)(v66, 1, v65) == 1)
      {
        sub_100009204(v66, &qword_1000887E8, &qword_1000795A0);
        v12 = v65;
        v50 = v115;
        v67 = v131;
        v68 = v129;
        v69 = v128;
      }

      else
      {
        v70 = v124;
        v60(v124, v66, v65);
        v50 = v115;
        (v139)(v125, v70, v65);
        v71 = *(v52 + 3);
        v72 = v56 + 3;
        if ((v56 + 3) > (v71 >> 1))
        {
          v52 = sub_10000DBC0((v71 > 1), v56 + 3, 1, v52, &qword_100088FB0, &qword_100079BF8, &type metadata accessor for Date);
        }

        v67 = v131;
        v68 = v129;
        v69 = v128;
        v12 = v146;
        (*v110)(v124, v146);
        *(v52 + 2) = v72;
        v60(&v52[v68 + v69 * v63], v125, v12);
        v42 = v140;
      }

      sub_10006BB6C();
      v74 = *(v52 + 2);
      v73 = *(v52 + 3);
      if (v74 >= v73 >> 1)
      {
        v52 = sub_10000DBC0((v73 > 1), v74 + 1, 1, v52, &qword_100088FB0, &qword_100079BF8, &type metadata accessor for Date);
      }

      sub_10000DEB0(v42, type metadata accessor for WorldClockCity);
      *(v52 + 2) = v74 + 1;
      v60(&v52[v68 + v74 * v69], v135, v12);
      v49 = v67 + v113;
      v51 = v52;
      v46 = v132 - 1;
      v13 = v127;
      v34 = v147;
    }

    while (v132 != 1);

    v4 = v112;
  }

  else
  {

    v52 = &_swiftEmptyArrayStorage;
  }

  v75 = *(v52 + 2);
  v76 = v144;
  if (v75)
  {
    v150 = &_swiftEmptyArrayStorage;
    result = sub_10000DD9C(0, v75, 0);
    v78 = 0;
    v79 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v130 = v52;
    v128 = &v52[v79];
    v80 = v150;
    v135 = (v13 + 16);
    v81 = (v13 + 32);
    v139 = (v13 + 56);
    v140 = (v13 + 40);
    v125 = (v13 + 8);
    v129 = v75;
    while (v78 < v130[2])
    {
      v132 = v78;
      v133 = v80;
      v82 = &v128[*(v13 + 72) * v78];
      v134 = *(v13 + 16);
      v83 = (v134)(v136, v82, v12);
      v84 = (v121)(v83);
      v85 = *(v84 + 16);
      if (v85)
      {
        v149 = &_swiftEmptyArrayStorage;
        v86 = v84;
        sub_10000DDE0(0, v85, 0);
        v87 = v149;
        v88 = objc_opt_self();
        v89 = *(v111 + 80);
        v131 = v86;
        v145 = (v89 + 32) & ~v89;
        v90 = v86 + v145;
        v91 = *(v111 + 72);
        do
        {
          v92 = v148;
          sub_10000A1FC(v90, v148);
          sub_10000A1FC(v92, v34);
          v93 = [v88 widgetOverrideDate];
          if (v93)
          {
            v94 = v137;
            v95 = v93;
            sub_10006BB3C();

            v96 = v142;
            v97 = v94;
            v34 = v147;
            (*v81)(v142, v97, v12);
          }

          else
          {
            v96 = v142;
            (v134)(v142, v136, v12);
          }

          (*v140)(v34, v96, v12);
          v98 = [v88 widgetOverrideDate];
          if (v98)
          {
            v99 = v138;
            sub_10006BB3C();

            sub_10000DEB0(v148, type metadata accessor for WorldClockCity);
            v100 = v99;
            v34 = v147;
            (*v81)(v76, v100, v12);
            v101 = 0;
          }

          else
          {
            sub_10000DEB0(v148, type metadata accessor for WorldClockCity);
            v101 = 1;
          }

          (*v139)(v76, v101, 1, v12);
          sub_100009204(v76, &qword_1000887E8, &qword_1000795A0);
          v34[v141[5]] = v98 != 0;
          v102 = v143;
          sub_10000DE24(v34, v143, type metadata accessor for WorldClockCity);
          v149 = v87;
          v104 = v87[2];
          v103 = v87[3];
          if (v104 >= v103 >> 1)
          {
            sub_10000DDE0((v103 > 1), v104 + 1, 1);
            v102 = v143;
            v87 = v149;
          }

          v87[2] = v104 + 1;
          sub_10000DE24(v102, v87 + v145 + v104 * v91, type metadata accessor for WorldClockCity);
          v90 += v91;
          --v85;
          v76 = v144;
          v12 = v146;
        }

        while (v85);

        v4 = v112;
        v13 = v127;
      }

      else
      {

        v87 = &_swiftEmptyArrayStorage;
      }

      v105 = v136;
      (v134)(v4, v136, v12);
      v106 = v126;
      *&v4[*(v126 + 20)] = v87;
      v4[*(v106 + 24)] = 0;
      (*v125)(v105, v12);
      v80 = v133;
      v150 = v133;
      v108 = *(v133 + 2);
      v107 = *(v133 + 3);
      if (v108 >= v107 >> 1)
      {
        sub_10000DD9C((v107 > 1), v108 + 1, 1);
        v80 = v150;
      }

      v78 = v132 + 1;
      *(v80 + 2) = v108 + 1;
      result = sub_10000DE24(v4, &v80[((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v108], type metadata accessor for WorldClockEntry);
      if (v78 == v129)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_38:

    sub_10006CA7C();
    sub_10000DF5C(&qword_100088BB0, type metadata accessor for WorldClockEntry, &unk_100079AB0);
    return sub_10006CAFC();
  }

  return result;
}

uint64_t type metadata accessor for WorldClockEntry(uint64_t a1)
{
  result = qword_10008C860;
  if (!qword_10008C860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000A1FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorldClockCity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_10006BB7C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for WorldClockEntry(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t sub_10000A394(void *a1, uint64_t a2, void (*a3)(char *))
{
  v5 = type metadata accessor for WorldClockEntry(0);
  __chkstk_darwin(v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WorldClockIntentModel();
  v8 = swift_allocObject();
  *(v8 + 16) = &_swiftEmptyArrayStorage;
  *(v8 + 24) = 0;
  v9 = a1;
  v10 = [v9 cities];
  if (v10)
  {
    v11 = v10;
    sub_10000DF10();
    v12 = sub_10006CC0C();
  }

  else
  {
    v12 = 0;
  }

  sub_10000BEAC(v12);

  v13 = type metadata accessor for WidgetUtilities();
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_10006CD2C(66);
  v18._object = 0x800000010006D6C0;
  v18._countAndFlagsBits = 0xD000000000000040;
  sub_10006CBBC(v18);
  v19._countAndFlagsBits = sub_10000DA40();
  sub_10006CBBC(v19);

  (*(v13 + 80))(v16, v17);

  sub_10000B8F0(v7);
  swift_beginAccess();
  *&v7[*(v5 + 20)] = *(v8 + 16);
  v7[*(v5 + 24)] = 0;

  a3(v7);

  return sub_10000DEB0(v7, type metadata accessor for WorldClockEntry);
}

uint64_t sub_10000A5AC(void *a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v5 = v4;
  v21 = a4;
  v22 = a3;
  v7 = sub_100003500(&qword_100088BC0, &qword_100079998);
  v20 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  type metadata accessor for WorldClockIntentModel();
  v10 = swift_allocObject();
  *(v10 + 16) = &_swiftEmptyArrayStorage;
  *(v10 + 24) = 0;
  v11 = a1;
  v12 = [v11 cities];
  if (v12)
  {
    v13 = v12;
    sub_10000DF10();
    v14 = sub_10006CC0C();
  }

  else
  {
    v14 = 0;
  }

  sub_10000BEAC(v14);

  (*(*v5 + 80))(v10);
  v15 = type metadata accessor for WidgetUtilities();
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_10006CD2C(49);
  v25._countAndFlagsBits = 0xD00000000000002FLL;
  v25._object = 0x800000010006D710;
  sub_10006CBBC(v25);
  sub_10006CD5C();
  v16 = *(v15 + 80);
  v16(v23, v24);

  v23 = 0;
  v24 = 0xE000000000000000;
  sub_10006CD2C(20);

  v23 = 0xD000000000000012;
  v24 = 0x800000010006D740;
  v17 = sub_100027180();
  v26._countAndFlagsBits = sub_10002776C(v17);
  sub_10006CBBC(v26);

  v16(v23, v24);

  v22(v9);

  return (*(v20 + 8))(v9, v7);
}

uint64_t sub_10000A854(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WorldClockSingleProvider();

  return IntentTimelineProvider.recommendations()(v3, a2);
}

uint64_t sub_10000A958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for WorldClockSingleProvider();
  *v6 = v3;
  v6[1] = sub_100006998;

  return IntentTimelineProvider.relevances()(a1, v7, a3);
}

uint64_t sub_10000AA0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for WorldClockSingleProvider();
  *v6 = v3;
  v6[1] = sub_100006998;

  return IntentTimelineProvider.relevance()(a1, v7, a3);
}

uint64_t sub_10000AADC(uint64_t *a1, void *a2)
{
  swift_beginAccess();
  v3 = *a1;

  return v3;
}

uint64_t sub_10000AB40(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
}

uint64_t sub_10000ABFC@<X0>(uint64_t a2@<X8>)
{
  sub_10006BB6C();
  result = type metadata accessor for WorldClockEntry(0);
  *(a2 + *(result + 20)) = &_swiftEmptyArrayStorage;
  *(a2 + *(result + 24)) = 1;
  return result;
}

uint64_t sub_10000AC44(void *a1, uint64_t a2, void (*a3)(char *))
{
  v5 = type metadata accessor for WorldClockEntry(0);
  __chkstk_darwin(v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WorldClockIntentModel();
  v8 = swift_allocObject();
  *(v8 + 16) = &_swiftEmptyArrayStorage;
  *(v8 + 24) = 0;
  v9 = a1;
  v10 = [v9 cities];
  if (v10)
  {
    v11 = v10;
    sub_10000DF10();
    v12 = sub_10006CC0C();
  }

  else
  {
    v12 = 0;
  }

  sub_10000BEAC(v12);

  v13 = type metadata accessor for WidgetUtilities();
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_10006CD2C(65);
  v18._object = 0x800000010006D760;
  v18._countAndFlagsBits = 0xD00000000000003FLL;
  sub_10006CBBC(v18);
  v19._countAndFlagsBits = sub_10000DA40();
  sub_10006CBBC(v19);

  (*(v13 + 80))(v16, v17);

  sub_10000B8F0(v7);
  swift_beginAccess();
  *&v7[*(v5 + 20)] = *(v8 + 16);
  v7[*(v5 + 24)] = 0;

  a3(v7);

  return sub_10000DEB0(v7, type metadata accessor for WorldClockEntry);
}

uint64_t sub_10000AE58(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = &_swiftEmptyArrayStorage;
  *(v2 + 24) = 0;
  v3 = [a1 cities];
  if (v3)
  {
    v4 = v3;
    sub_10000DF10();
    v5 = sub_10006CC0C();
  }

  else
  {
    v5 = 0;
  }

  sub_10000BEAC(v5);

  return v2;
}

uint64_t sub_10000AEFC(void *a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v5 = v4;
  v21 = a4;
  v22 = a3;
  v7 = sub_100003500(&qword_100088BC0, &qword_100079998);
  v20 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  type metadata accessor for WorldClockIntentModel();
  v10 = swift_allocObject();
  *(v10 + 16) = &_swiftEmptyArrayStorage;
  *(v10 + 24) = 0;
  v11 = a1;
  v12 = [v11 cities];
  if (v12)
  {
    v13 = v12;
    sub_10000DF10();
    v14 = sub_10006CC0C();
  }

  else
  {
    v14 = 0;
  }

  sub_10000BEAC(v14);

  (*(*v5 + 80))(v10);
  v15 = type metadata accessor for WidgetUtilities();
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_10006CD2C(48);
  v25._countAndFlagsBits = 0xD00000000000002ELL;
  v25._object = 0x800000010006D7A0;
  sub_10006CBBC(v25);
  sub_10006CD5C();
  v16 = *(v15 + 80);
  v16(v23, v24);

  v23 = 0;
  v24 = 0xE000000000000000;
  sub_10006CD2C(20);

  v23 = 0xD000000000000012;
  v24 = 0x800000010006D740;
  v17 = sub_100027180();
  v26._countAndFlagsBits = sub_10002776C(v17);
  sub_10006CBBC(v26);

  v16(v23, v24);

  v22(v9);

  return (*(v20 + 8))(v9, v7);
}

uint64_t sub_10000B1A4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WorldClockMultiProvider();

  return IntentTimelineProvider.recommendations()(v3, a2);
}

uint64_t sub_10000B2A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for WorldClockMultiProvider();
  *v6 = v3;
  v6[1] = sub_100002848;

  return IntentTimelineProvider.relevances()(a1, v7, a3);
}

uint64_t sub_10000B35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for WorldClockMultiProvider();
  *v6 = v3;
  v6[1] = sub_100006998;

  return IntentTimelineProvider.relevance()(a1, v7, a3);
}

uint64_t sub_10000B410()
{
  type metadata accessor for WorldClockEntry(0);
}

uint64_t sub_10000B444(uint64_t a1)
{
  v3 = *(type metadata accessor for WorldClockEntry(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10000B4F0(char a1)
{
  result = type metadata accessor for WorldClockEntry(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

unint64_t sub_10000B568()
{
  sub_10006CD2C(41);

  sub_10006BB7C();
  sub_10000DF5C(&qword_100088800, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v1._countAndFlagsBits = sub_10006CD9C();
  sub_10006CBBC(v1);

  v2._countAndFlagsBits = 0x736569746963202CLL;
  v2._object = 0xEA0000000000203ALL;
  sub_10006CBBC(v2);
  type metadata accessor for WorldClockEntry(0);
  type metadata accessor for WorldClockCity(0);
  v3._countAndFlagsBits = sub_10006CC1C();
  sub_10006CBBC(v3);

  return 0xD00000000000001BLL;
}

uint64_t sub_10000B690@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for WorldClockEntry(0) + 20));
  if (*(v3 + 16))
  {
    v4 = *(type metadata accessor for WorldClockCity(0) - 8);
    v5 = v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

    return sub_10000A1FC(v5, a1);
  }

  else
  {

    return sub_1000662E4(a1);
  }
}

uint64_t sub_10000B780(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

id sub_10000B818()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [objc_allocWithZone(GEOAlmanac) init];
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void (*sub_10000B890(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_10000B818();
  return sub_10000B8D8;
}

void sub_10000B8D8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
}

uint64_t sub_10000B8F0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10006BB7C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003500(&qword_1000887E8, &qword_1000795A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = [objc_opt_self() widgetOverrideDate];
  if (v9)
  {
    v10 = v9;
    sub_10006BB3C();

    v11 = *(v3 + 32);
    v11(v8, v5, v2);
    (*(v3 + 56))(v8, 0, 1, v2);
    return (v11)(a1, v8, v2);
  }

  else
  {
    (*(v3 + 56))(v8, 1, 1, v2);
    sub_10006BB6C();
    result = (*(v3 + 48))(v8, 1, v2);
    if (result != 1)
    {
      return sub_100009204(v8, &qword_1000887E8, &qword_1000795A0);
    }
  }

  return result;
}

uint64_t sub_10000BAE8()
{
  v0 = swift_allocObject();
  sub_10000BB20();
  return v0;
}

void *sub_10000BB20()
{
  v0[2] = &_swiftEmptyArrayStorage;
  v0[3] = 0;
  sub_100003500(&qword_100088BC8, &unk_1000799A0);
  type metadata accessor for WorldClockCity(0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100079940;
  v2 = *(*v0 + 192);
  v2(4413774, 0xE300000000000000, 4413774, 0xE300000000000000, 0xD000000000000010, 0x800000010006D7F0, 0x342D544D47, 0xE500000000000000, 40.73061, -73.935242);
  v2(0x6F676163696843, 0xE700000000000000, 4802627, 0xE300000000000000, 0x2F61636972656D41uLL, 0xEF6F676163696843, 0x352D544D47, 0xE500000000000000, 41.881832, -87.623177);
  v2(0x676E696A696542, 0xE700000000000000, 5458498, 0xE300000000000000, 0x6168532F61697341uLL, 0xED0000696168676ELL, 0x362B544D47, 0xE500000000000000, 39.913818, 116.363625);
  v2(0x6E69747265707543, 0xE90000000000006FLL, 5264707, 0xE300000000000000, 0xD000000000000013, 0x800000010006D810, 0x372D544D47, 0xE500000000000000, 37.323, -122.03218);
  swift_beginAccess();
  v0[2] = v1;

  return v0;
}

void *sub_10000BE00(void *a1)
{
  v1[2] = &_swiftEmptyArrayStorage;
  v1[3] = 0;
  v3 = [a1 cities];
  if (v3)
  {
    v4 = v3;
    sub_10000DF10();
    v5 = sub_10006CC0C();
  }

  else
  {
    v5 = 0;
  }

  (*(*v1 + 176))(v5);

  return v1;
}

id sub_10000BEAC(unint64_t a1)
{
  v2 = sub_100003500(&qword_100088BD0, &qword_10007CEE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v62 - v3;
  v76 = type metadata accessor for WorldClockCity(0);
  v67 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v66 = &v62 - v8;
  v9 = &_swiftEmptyArrayStorage;
  if (!a1)
  {
    return (*(*v63 + 104))(v9, v7);
  }

  v62 = v4;
  v81 = &_swiftEmptyArrayStorage;
  v10 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_58;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v12 = 0;
  v69 = &_swiftEmptyArrayStorage;
  while (1)
  {
    if (v11 == v12)
    {
      v20 = v69;
      if (v69 >> 62)
      {
        v21 = sub_10006CD6C();
      }

      else
      {
        v21 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v62;
      if (v21)
      {
        a1 = 0;
        v73 = v20 & 0xFFFFFFFFFFFFFF8;
        v74 = v20 & 0xC000000000000001;
        v72 = (v67 + 56);
        v70 = "$__lazy_storage_$_almanac";
        v9 = &_swiftEmptyArrayStorage;
        v71 = (v67 + 48);
        v68 = v21;
        while (1)
        {
          if (v74)
          {
            v22 = sub_10006CD3C();
          }

          else
          {
            if (a1 >= *(v73 + 16))
            {
              goto LABEL_57;
            }

            v22 = *(v20 + 8 * a1 + 32);
          }

          v23 = v22;
          if (__OFADD__(a1, 1))
          {
            goto LABEL_56;
          }

          v78 = v9;
          v24 = [v22 cityName];
          if (!v24)
          {
            v24 = [v23 displayString];
          }

          v25 = v24;
          v26 = sub_10006CB7C();
          v28 = v27;

          v29 = [v23 timeZoneName];
          v77 = a1 + 1;
          if (!v29)
          {
            goto LABEL_35;
          }

          v30 = v29;
          v31 = sub_10006CB7C();
          v33 = v32;

          v34 = [v23 latitude];
          if (!v34)
          {
            goto LABEL_34;
          }

          v35 = v34;
          v36 = [v23 longditude];
          if (!v36)
          {
            break;
          }

          v37 = v36;
          v65 = v31;
          v38 = [v23 abbreviation];
          if (v38)
          {
            v39 = v38;
            v64 = sub_10006CB7C();
            v41 = v40;
          }

          else
          {
            v64 = 0;
            v41 = 0xE000000000000000;
          }

          [v35 doubleValue];
          v55 = v54;
          [v37 doubleValue];
          v10 = v62;
          (*(*v63 + 192))(v26, v28, v64, v41, v65, v33, 0x372D544D47, 0xE500000000000000, v55, v56);

          v53 = 0;
          v21 = v68;
          v20 = v69;
          v9 = v78;
LABEL_44:

          v57 = v53;
          v58 = v76;
          (*v72)(v10, v57, 1, v76);

          if ((*v71)(v10, 1, v58) == 1)
          {
            sub_100009204(v10, &qword_100088BD0, &qword_10007CEE0);
          }

          else
          {
            v59 = v66;
            sub_10000DE24(v10, v66, type metadata accessor for WorldClockCity);
            sub_10000DE24(v59, v75, type metadata accessor for WorldClockCity);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v9 = sub_10000DBC0(0, v9[2] + 1, 1, v9, &qword_100088BC8, &unk_1000799A0, type metadata accessor for WorldClockCity);
            }

            v61 = v9[2];
            v60 = v9[3];
            if (v61 >= v60 >> 1)
            {
              v9 = sub_10000DBC0((v60 > 1), v61 + 1, 1, v9, &qword_100088BC8, &unk_1000799A0, type metadata accessor for WorldClockCity);
            }

            v9[2] = v61 + 1;
            sub_10000DE24(v75, v9 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v61, type metadata accessor for WorldClockCity);
          }

          ++a1;
          if (v77 == v21)
          {
            goto LABEL_52;
          }
        }

LABEL_34:

        v21 = v68;
        v20 = v69;
LABEL_35:

        v81 = 0;
        v82 = 0xE000000000000000;
        sub_10006CD2C(62);
        v83._object = (v70 | 0x8000000000000000);
        v83._countAndFlagsBits = 0xD00000000000002ELL;
        sub_10006CBBC(v83);
        v42 = [v23 cityName];
        if (v42)
        {
          v43 = v42;
          v44 = sub_10006CB7C();
          v46 = v45;
        }

        else
        {
          v44 = 0;
          v46 = 0;
        }

        v9 = v78;
        v79 = v44;
        v80 = v46;
        sub_100003500(&qword_100088FA0, &qword_100079BE8);
        v84._countAndFlagsBits = sub_10006CB8C();
        sub_10006CBBC(v84);

        v85._countAndFlagsBits = 0x6F7A656D6974202CLL;
        v85._object = 0xEC000000203A656ELL;
        sub_10006CBBC(v85);
        v47 = [v23 timeZoneName];
        if (v47)
        {
          v48 = v47;
          v49 = sub_10006CB7C();
          v51 = v50;
        }

        else
        {
          v49 = 0;
          v51 = 0;
        }

        v52 = type metadata accessor for WidgetUtilities();
        v79 = v49;
        v80 = v51;
        v86._countAndFlagsBits = sub_10006CB8C();
        sub_10006CBBC(v86);

        (*(v52 + 80))(v81, v82);
        v53 = 1;
        goto LABEL_44;
      }

      v9 = &_swiftEmptyArrayStorage;
LABEL_52:

      return (*(*v63 + 104))(v9, v7);
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v13 = sub_10006CD3C();
    }

    else
    {
      if (v12 >= *(v10 + 16))
      {
        goto LABEL_55;
      }

      v13 = *(a1 + 8 * v12 + 32);
    }

    v14 = v13;
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      v11 = sub_10006CD6C();
      goto LABEL_4;
    }

    result = [objc_opt_self() sharedManager];
    if (!result)
    {
      break;
    }

    v17 = result;
    v18 = [v14 identifier];
    v19 = [v17 updatedDataForCityWithID:v18];

    ++v12;
    if (v19)
    {
      sub_10006CBFC();
      if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10006CC2C();
      }

      sub_10006CC3C();
      v69 = v81;
      v12 = v15;
    }
  }

  __break(1u);
  return result;
}

void sub_10000C720(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v100 = a2;
  v101 = a1;
  v106 = sub_100003500(&qword_1000887E8, &qword_1000795A0);
  __chkstk_darwin(v106);
  v99 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v97 = &v92 - v9;
  __chkstk_darwin(v10);
  v98 = &v92 - v11;
  __chkstk_darwin(v12);
  v96 = &v92 - v13;
  v14 = sub_10006BCDC();
  v103 = *(v14 - 8);
  v104 = v14;
  __chkstk_darwin(v14);
  v16 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10006BB7C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v93 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v95 = &v92 - v21;
  __chkstk_darwin(v22);
  v92 = &v92 - v23;
  __chkstk_darwin(v24);
  v94 = &v92 - v25;
  __chkstk_darwin(v26);
  v28 = &v92 - v27;
  v30 = __chkstk_darwin(v29);
  v32 = &v92 - v31;
  v33 = *(*v4 + 120);
  v34 = *v4 + 120;
  v35 = v33(v30);
  (*(*v4 + 144))();
  sub_10006B91C();
  v37 = v36;
  v105 = v18;
  v38 = v32;
  v39 = v17;
  v40 = v17;
  v41 = v16;
  v42 = *(v18 + 8);
  v42(v38, v40);
  [v35 calculateAstronomicalTimeForLocation:a3 time:a4 altitudeInDegrees:{v37, GEOAlmanacAltitudeSunset}];

  v43 = sub_10006BCBC();
  v102 = v4;
  v107 = v34;
  v108 = v33;
  v44 = (v33)(v43);
  v45 = [v44 sunset];

  if (!v45)
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_10006BB3C();

  v46 = sub_10006BC7C();
  (*(v103 + 8))(v41, v104);
  v42(v28, v39);
  v47 = v39;
  if (v46)
  {
    v109 = 0;
    v110 = 0xE000000000000000;
    sub_10006CD2C(44);

    v109 = 0xD000000000000019;
    v110 = 0x800000010006D850;
    v49 = (v108)(v48);
    v50 = [v49 nextSunrise];

    if (v50)
    {
      v51 = v96;
      sub_10006BB3C();

      v52 = 0;
      v53 = v105;
      v54 = v98;
    }

    else
    {
      v52 = 1;
      v53 = v105;
      v54 = v98;
      v51 = v96;
    }

    v61 = *(v53 + 56);
    v62 = 1;
    v61(v51, v52, 1, v47);
    v111._countAndFlagsBits = sub_10006CB8C();
    sub_10006CBBC(v111);

    v112._countAndFlagsBits = 0x73207478656E202CLL;
    v112._object = 0xEF203A7465736E75;
    sub_10006CBBC(v112);
    v63 = v108();
    v64 = [v63 nextSunset];

    if (v64)
    {
      sub_10006BB3C();

      v62 = 0;
    }

    v61(v54, v62, 1, v47);
    v65 = type metadata accessor for WidgetUtilities();
    v113._countAndFlagsBits = sub_10006CB8C();
    sub_10006CBBC(v113);

    (*(v65 + 80))(v109, v110);

    v67 = v108;
    v68 = (v108)(v66);
    v69 = [v68 nextSunrise];

    if (v69)
    {
      v70 = v94;
      sub_10006BB3C();

      v71 = *(v53 + 32);
      v72 = v71(v101, v70, v47);
      v73 = (v67)(v72);
      v74 = [v73 nextSunset];

      if (v74)
      {
        v75 = v92;
        sub_10006BB3C();

        v71(v100, v75, v47);
        return;
      }

      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v109 = 0;
  v110 = 0xE000000000000000;
  sub_10006CD2C(34);

  v109 = 0xD000000000000014;
  v110 = 0x800000010006D830;
  v56 = (v108)(v55);
  v57 = [v56 sunrise];

  if (v57)
  {
    v58 = v97;
    sub_10006BB3C();

    v59 = 0;
    v60 = v105;
  }

  else
  {
    v59 = 1;
    v60 = v105;
    v58 = v97;
  }

  v76 = *(v60 + 56);
  v77 = 1;
  v76(v58, v59, 1, v39);
  v114._countAndFlagsBits = sub_10006CB8C();
  sub_10006CBBC(v114);

  v115._countAndFlagsBits = 0x7465736E7573202CLL;
  v115._object = 0xEA0000000000203ALL;
  sub_10006CBBC(v115);
  v78 = v108();
  v79 = [v78 sunset];

  v80 = v99;
  if (v79)
  {
    sub_10006BB3C();

    v77 = 0;
  }

  v76(v80, v77, 1, v39);
  v81 = type metadata accessor for WidgetUtilities();
  v116._countAndFlagsBits = sub_10006CB8C();
  sub_10006CBBC(v116);

  (*(v81 + 80))(v109, v110);

  v83 = v108;
  v84 = (v108)(v82);
  v85 = [v84 sunrise];

  if (!v85)
  {
    goto LABEL_21;
  }

  v86 = v95;
  sub_10006BB3C();

  v87 = *(v60 + 32);
  v88 = v87(v101, v86, v39);
  v89 = (v83)(v88);
  v90 = [v89 sunset];

  if (v90)
  {
    v91 = v93;
    sub_10006BB3C();

    v87(v100, v91, v39);
    return;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_10000D074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v63 = a5;
  v64 = a6;
  v61 = a3;
  v62 = a4;
  v65 = a2;
  v59 = a7;
  v60 = a1;
  v12 = sub_100003500(&qword_1000887E8, &qword_1000795A0);
  __chkstk_darwin(v12 - 8);
  v58 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v50 - v15;
  v17 = sub_10006BB7C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v50 - v22;
  v24 = sub_100003500(&qword_100088BD8, qword_1000799B0);
  __chkstk_darwin(v24);
  v56 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v50 - v27;
  __chkstk_darwin(v29);
  v31 = &v50 - v30;
  v32 = (*(*v9 + 184))(a8, a9);
  v33 = *(*v9 + 144);
  v57 = v23;
  v33(v32);
  v34 = [objc_opt_self() widgetOverrideDate];
  if (v34)
  {
    sub_10006BB3C();

    (*(v18 + 32))(v16, v20, v17);
    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  v55 = v34 != 0;
  (*(v18 + 56))(v16, v35, 1, v17);
  sub_100009204(v16, &qword_1000887E8, &qword_1000795A0);
  v53 = v28;
  sub_100009264(v31, v28, &qword_100088BD8, qword_1000799B0);
  v54 = *(v24 + 48);
  v36 = v56;
  sub_100009264(v31, v56, &qword_100088BD8, qword_1000799B0);
  v51 = v36 + *(v24 + 48);
  v37 = *(*v9 + 200);

  v52 = v17;
  v38 = v62;

  v39 = v64;

  v40 = v58;
  v41 = v63;
  v37(v63, v39);
  v42 = sub_100001CF8();
  v43 = sub_100001CF8();
  v49 = v42 & 1;
  v44 = v53;
  sub_100066180(v57, v55, v60, v65, v61, v38, v41, v39, v59, v53, v51, v40, v49, v43 & 1);
  sub_100009204(v31, &qword_100088BD8, qword_1000799B0);
  v45 = *(v18 + 8);
  v46 = v36;
  v47 = v52;
  v45(v46, v52);
  return (v45)(v44 + v54, v47);
}

uint64_t sub_10000D4E8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v42 = sub_10006BB7C();
  v5 = *(v42 - 8);
  __chkstk_darwin(v42);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  v11 = sub_10006BCDC();
  v39 = *(v11 - 8);
  v40 = v11;
  __chkstk_darwin(v11);
  v38 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003500(&qword_100088BE0, &qword_10007B3C0);
  __chkstk_darwin(v13 - 8);
  v15 = &v36 - v14;
  v16 = sub_10006BD3C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v36 - v21;
  v41 = a1;
  v23 = a2;
  sub_10006BCEC();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_100009204(v15, &qword_100088BE0, &qword_10007B3C0);
    v24 = type metadata accessor for WidgetUtilities();
    v44[0] = 0;
    v44[1] = 0xE000000000000000;
    sub_10006CD2C(41);

    v44[0] = 0xD000000000000027;
    v44[1] = 0x800000010006D870;
    v45._countAndFlagsBits = v41;
    v45._object = a2;
    sub_10006CBBC(v45);
    (*(v24 + 80))(v44[0], v44[1]);

    v25 = 1;
    v27 = v42;
    v26 = v43;
  }

  else
  {
    (*(v17 + 32))(v22, v15, v16);
    v28 = [objc_opt_self() currentCalendar];
    v29 = v38;
    sub_10006BC8C();

    (*(v17 + 16))(v19, v22, v16);
    sub_10006BCCC();
    sub_10006BB6C();
    sub_10006BC6C();
    v36 = v23;
    v30 = *(v5 + 8);
    v31 = v7;
    v32 = v42;
    v30(v31, v42);
    v37 = v5;
    v33 = v43;
    sub_10006BAFC();
    v30(v10, v32);
    v34 = type metadata accessor for WidgetUtilities();
    v44[0] = 0;
    v44[1] = 0xE000000000000000;
    sub_10006CD2C(50);

    strcpy(v44, "For timezone: ");
    HIBYTE(v44[1]) = -18;
    v46._countAndFlagsBits = v41;
    v46._object = v36;
    sub_10006CBBC(v46);
    v47._object = 0x800000010006D8A0;
    v47._countAndFlagsBits = 0xD000000000000020;
    sub_10006CBBC(v47);
    sub_10000DF5C(&qword_100088800, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v48._countAndFlagsBits = sub_10006CD9C();
    sub_10006CBBC(v48);

    (*(v34 + 80))(v44[0], v44[1]);

    (*(v39 + 8))(v29, v40);
    (*(v17 + 8))(v22, v16);
    v25 = 0;
    v26 = v33;
    v5 = v37;
    v27 = v32;
  }

  return (*(v5 + 56))(v26, v25, 1, v27);
}

unint64_t sub_10000DA40()
{
  sub_10006CD2C(37);

  (*(*v0 + 96))(v1);
  type metadata accessor for WorldClockCity(0);
  v2 = sub_10006CC1C();
  v4 = v3;

  v6._countAndFlagsBits = v2;
  v6._object = v4;
  sub_10006CBBC(v6);

  return 0xD000000000000023;
}

uint64_t sub_10000DB14()
{

  return v0;
}

uint64_t sub_10000DB3C()
{

  return swift_deallocClassInstance();
}

void *sub_10000DBC0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003500(a5, a6);
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

void *sub_10000DD9C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000E2D8(a1, a2, a3, *v3, &qword_100088FA8, &qword_100079BF0, type metadata accessor for WorldClockEntry);
  *v3 = result;
  return result;
}

void *sub_10000DDE0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000E2D8(a1, a2, a3, *v3, &qword_100088BC8, &unk_1000799A0, type metadata accessor for WorldClockCity);
  *v3 = result;
  return result;
}

uint64_t sub_10000DE24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000DEB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10000DF10()
{
  result = qword_100088BB8;
  if (!qword_100088BB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100088BB8);
  }

  return result;
}

uint64_t sub_10000DF5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000E06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10006BB7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10000E13C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10006BB7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_10000E1F4(uint64_t a1)
{
  sub_10006BB7C();
  if (v1 <= 0x3F)
  {
    sub_10000E280(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10000E280(uint64_t a1)
{
  if (!qword_100088E50)
  {
    type metadata accessor for WorldClockCity(255);
    v1 = sub_10006CC6C();
    if (!v2)
    {
      atomic_store(v1, &qword_100088E50);
    }
  }
}

void *sub_10000E2D8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003500(a5, a6);
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

uint64_t sub_10000E4CC()
{
  result = sub_10006C7CC();
  qword_10008FEF8 = result;
  return result;
}

uint64_t *sub_10000E504()
{
  if (qword_10008C870 != -1)
  {
    swift_once();
  }

  return &qword_10008FEF8;
}

uint64_t *sub_10000E5A0()
{
  if (qword_10008C878 != -1)
  {
    swift_once();
  }

  return &qword_10008FF00;
}

uint64_t sub_10000E614()
{
  v0 = sub_10006C71C();
  v1 = __chkstk_darwin(v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:), v1);
  result = sub_10006C7AC();
  qword_10008FF08 = result;
  return result;
}

uint64_t *sub_10000E6F4()
{
  if (qword_10008C880 != -1)
  {
    swift_once();
  }

  return &qword_10008FF08;
}

uint64_t sub_10000E768()
{
  sub_10006C76C();
  v0 = sub_10006C79C();

  qword_10008FF10 = v0;
  return result;
}

uint64_t *sub_10000E7A8()
{
  if (qword_10008C888 != -1)
  {
    swift_once();
  }

  return &qword_10008FF10;
}

uint64_t sub_10000E81C()
{
  v0 = sub_10006C71C();
  v1 = __chkstk_darwin(v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:), v1);
  result = sub_10006C7AC();
  qword_10008FF18 = result;
  return result;
}

uint64_t *sub_10000E904()
{
  if (qword_10008C890 != -1)
  {
    swift_once();
  }

  return &qword_10008FF18;
}

uint64_t *sub_10000E998()
{
  if (qword_10008C898 != -1)
  {
    swift_once();
  }

  return &qword_10008FF20;
}

uint64_t *sub_10000EA30()
{
  if (qword_10008C8A0 != -1)
  {
    swift_once();
  }

  return &qword_10008FF28;
}

uint64_t *sub_10000EAC4()
{
  if (qword_10008C8A8 != -1)
  {
    swift_once();
  }

  return &qword_10008FF30;
}

uint64_t *sub_10000EB54()
{
  if (qword_10008C8B0 != -1)
  {
    swift_once();
  }

  return &qword_10008FF38;
}

uint64_t *sub_10000EBE4()
{
  if (qword_10008C8B8 != -1)
  {
    swift_once();
  }

  return &qword_10008FF40;
}

uint64_t *sub_10000EC70()
{
  if (qword_10008C8C0 != -1)
  {
    swift_once();
  }

  return &qword_10008FF48;
}

uint64_t *sub_10000ED04()
{
  if (qword_10008C8C8 != -1)
  {
    swift_once();
  }

  return &qword_10008FF50;
}

uint64_t *sub_10000EDA0()
{
  if (qword_10008C8D0 != -1)
  {
    swift_once();
  }

  return &qword_10008FF58;
}

uint64_t *sub_10000EE30()
{
  if (qword_10008C8D8 != -1)
  {
    swift_once();
  }

  return &qword_10008FF60;
}

uint64_t *sub_10000EEC0()
{
  if (qword_10008C8E0 != -1)
  {
    swift_once();
  }

  return &qword_10008FF68;
}

uint64_t sub_10000EF34()
{
  v0 = sub_10006C71C();
  v1 = __chkstk_darwin(v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:), v1);
  result = sub_10006C7AC();
  qword_10008FF70 = result;
  return result;
}

uint64_t *sub_10000F014()
{
  if (qword_10008C8E8 != -1)
  {
    swift_once();
  }

  return &qword_10008FF70;
}

uint64_t sub_10000F088(char a1)
{
  if ((a1 & 1) == 0)
  {
    if (qword_10008C890 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  if (qword_10008C8C0 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_5:
}

uint64_t sub_10000F128(char a1)
{
  if ((a1 & 1) == 0)
  {
    if (qword_10008C898 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  if (qword_10008C8C8 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_5:
}

uint64_t sub_10000F1C8(char a1)
{
  if ((a1 & 1) == 0)
  {
    if (qword_10008C8A0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  if (qword_10008C8D0 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_5:
}

uint64_t sub_10000F268(char a1)
{
  if ((a1 & 1) == 0)
  {
    if (qword_10008C8A8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  if (qword_10008C8D8 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_5:
}

uint64_t sub_10000F308(char a1)
{
  if ((a1 & 1) == 0)
  {
    if (qword_10008C8B0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  if (qword_10008C8E0 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_5:
}

uint64_t sub_10000F3A8(char a1)
{
  if ((a1 & 1) == 0)
  {
    if (qword_10008C8B8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  if (qword_10008C8E8 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_5:
}

uint64_t sub_10000F448(char a1)
{
  if (a1)
  {
    return sub_10006C75C();
  }

  else
  {
    return sub_10006C78C();
  }
}

uint64_t *sub_10000F470()
{
  if (qword_10008C8F0 != -1)
  {
    swift_once();
  }

  return &qword_10008FF78;
}

uint64_t *sub_10000F504()
{
  if (qword_10008C8F8 != -1)
  {
    swift_once();
  }

  return &qword_10008FF80;
}

uint64_t sub_10000F594(double a1, double a2, double a3, uint64_t a4, uint64_t *a5)
{
  v6 = sub_10006C71C();
  v7 = __chkstk_darwin(v6);
  (*(v9 + 104))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:), v7);
  result = sub_10006C7AC();
  *a5 = result;
  return result;
}

uint64_t *sub_10000F688()
{
  if (qword_10008C900 != -1)
  {
    swift_once();
  }

  return &qword_10008FF88;
}

uint64_t sub_10000F6FC(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_10000F75C()
{
  sub_100003500(&qword_100089080, &qword_100079E28);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100079C90;
  *(v0 + 32) = sub_10006C76C();
  *(v0 + 40) = sub_10006C76C();
  if (qword_10008C8F0 != -1)
  {
    swift_once();
  }

  *(v0 + 48) = qword_10008FF78;
  v1 = qword_10008C8F8;

  if (v1 != -1)
  {
    swift_once();
  }

  *(v0 + 56) = qword_10008FF80;

  *(v0 + 64) = sub_10006C75C();
  result = sub_10006C8EC();
  qword_10008FF90 = result;
  return result;
}

uint64_t *sub_10000F850()
{
  if (qword_10008C908 != -1)
  {
    swift_once();
  }

  return &qword_10008FF90;
}

uint64_t sub_10000F8C4()
{
  sub_100003500(&qword_100089080, &qword_100079E28);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000797A0;
  if (qword_10008C900 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_10008FF88;
  v1 = qword_10008C8F0;

  if (v1 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_10008FF78;

  *(v0 + 48) = sub_10006C75C();
  result = sub_10006C8EC();
  qword_10008FF98 = result;
  return result;
}

uint64_t *sub_10000F9A8()
{
  if (qword_10008C910 != -1)
  {
    swift_once();
  }

  return &qword_10008FF98;
}

uint64_t sub_10000FA1C()
{
  sub_100003500(&qword_100089080, &qword_100079E28);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100079CA0;
  if (qword_10008C8F8 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_10008FF80;

  *(v0 + 40) = sub_10006C78C();
  result = sub_10006C8EC();
  qword_10008FFA0 = result;
  return result;
}

uint64_t *sub_10000FAC4()
{
  if (qword_10008C918 != -1)
  {
    swift_once();
  }

  return &qword_10008FFA0;
}

uint64_t sub_10000FB38(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_10000FB98()
{
  v0 = sub_10006C9EC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006C9DC();
  v4 = sub_10006C9AC();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    return sub_10006C1EC();
  }

  else
  {
    return sub_10006C1DC();
  }
}

void sub_10000FC88()
{
  if (sub_100011350())
  {
    v0 = [objc_opt_self() defaultController];
    v1 = [v0 currentDisplayZoomMode];

    v2 = [v1 displayZoomOption];
    v3 = v2 == 1;
  }

  else
  {
    v3 = 0;
  }

  byte_10008FFA8 = v3;
}

char *sub_10000FD1C()
{
  if (qword_10008C920 != -1)
  {
    swift_once();
  }

  return &byte_10008FFA8;
}

uint64_t sub_10000FD6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10006C0AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003500(&qword_100088FB8, &qword_100079CB0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_10000FF54(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10006C1AC();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_10006CCCC();
    v13 = sub_10006C32C();
    sub_10006BDEC();

    sub_10006C09C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10000FF54(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003500(&qword_100088FB8, &qword_100079CB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000FFE8(uint64_t a1)
{
  v2 = sub_10006C1AC();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_10006BF8C();
}

uint64_t sub_1000100B0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CapMaxContentSizeCategory(0) + 20);
  v4 = sub_10006C1AC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for CapMaxContentSizeCategory(uint64_t a1)
{
  result = qword_10008CAB0;
  if (!qword_10008CAB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100010178(uint64_t a1)
{
  v3 = *(type metadata accessor for CapMaxContentSizeCategory(0) + 20);
  v4 = sub_10006C1AC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_10001023C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10006C1AC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  KeyPath = swift_getKeyPath();
  sub_10000FD6C(v8);
  v13 = *(type metadata accessor for CapMaxContentSizeCategory(0) + 20);
  v14 = sub_10001088C(v8, v2 + v13);
  (*(v6 + 8))(v8, v5);
  if (v14)
  {
    (*(v6 + 16))(v11, v2 + v13, v5);
  }

  else
  {
    sub_10000FD6C(v11);
  }

  v15 = (a2 + *(sub_100003500(&qword_100088FC0, &qword_100079CE8) + 36));
  v16 = sub_100003500(&qword_100088FC8, &qword_100079CF0);
  (*(v6 + 32))(v15 + *(v16 + 28), v11, v5);
  *v15 = KeyPath;
  v17 = sub_100003500(&qword_100088FD0, &qword_100079CF8);
  return (*(*(v17 - 8) + 16))(a2, a1, v17);
}

uint64_t sub_10001043C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100003500(&qword_100088FB8, &qword_100079CB0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10001049C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100010CA4(a1, a3);
  v5 = *(type metadata accessor for CapMaxContentSizeCategory(0) + 20);
  v6 = sub_10006C1AC();
  v7 = *(*(v6 - 8) + 32);

  return v7(a3 + v5, a2, v6);
}

uint64_t sub_100010548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_10006C1AC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  KeyPath = swift_getKeyPath();
  sub_10000FD6C(v10);
  v15 = *(a2 + 20);
  LOBYTE(a2) = sub_10001088C(v10, v3 + v15);
  (*(v8 + 8))(v10, v7);
  if (a2)
  {
    (*(v8 + 16))(v13, v3 + v15, v7);
  }

  else
  {
    sub_10000FD6C(v13);
  }

  v16 = (a3 + *(sub_100003500(&qword_100088FC0, &qword_100079CE8) + 36));
  v17 = sub_100003500(&qword_100088FC8, &qword_100079CF0);
  (*(v8 + 32))(v16 + *(v17 + 28), v13, v7);
  *v16 = KeyPath;
  v18 = sub_100003500(&qword_100088FD0, &qword_100079CF8);
  return (*(*(v18 - 8) + 16))(a3, a1, v18);
}

Swift::Int sub_100010778(unsigned __int8 a1)
{
  sub_10006CDCC();
  sub_10006CDDC(a1);
  return sub_10006CDFC();
}

Swift::Int sub_1000107D4()
{
  v1 = *v0;
  sub_10006CDCC();
  sub_10006CDDC(v1);
  return sub_10006CDFC();
}

Swift::Int sub_100010848()
{
  v1 = *v0;
  sub_10006CDCC();
  sub_10006CDDC(v1);
  return sub_10006CDFC();
}

BOOL sub_10001088C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v3 = sub_10006C1AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = *(v4 + 16);
  v11(&v19 - v9, a2, v3, v8);
  v12 = *(v4 + 88);
  v13 = v12(v10, v3);
  v14 = 0;
  v15 = enum case for ContentSizeCategory.extraSmall(_:);
  if (v13 != enum case for ContentSizeCategory.extraSmall(_:))
  {
    if (v13 == enum case for ContentSizeCategory.small(_:))
    {
      v14 = 1;
      goto LABEL_24;
    }

    if (v13 == enum case for ContentSizeCategory.medium(_:))
    {
      v14 = 2;
      goto LABEL_24;
    }

    if (v13 == enum case for ContentSizeCategory.large(_:))
    {
      goto LABEL_7;
    }

    if (v13 == enum case for ContentSizeCategory.extraLarge(_:))
    {
      v14 = 4;
    }

    else if (v13 == enum case for ContentSizeCategory.extraExtraLarge(_:))
    {
      v14 = 5;
    }

    else if (v13 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
    {
      v14 = 6;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityMedium(_:))
    {
      v14 = 7;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityLarge(_:))
    {
      v14 = 8;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
    {
      v14 = 9;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
    {
      v14 = 10;
    }

    else
    {
      if (v13 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        (*(v4 + 8))(v10, v3);
LABEL_7:
        v14 = 3;
        goto LABEL_24;
      }

      v14 = 11;
    }
  }

LABEL_24:
  (v11)(v6, v20, v3);
  v16 = v12(v6, v3);
  if (v16 == v15)
  {
    v17 = 0;
  }

  else if (v16 == enum case for ContentSizeCategory.small(_:))
  {
    v17 = 1;
  }

  else if (v16 == enum case for ContentSizeCategory.medium(_:))
  {
    v17 = 2;
  }

  else
  {
    if (v16 != enum case for ContentSizeCategory.large(_:))
    {
      if (v16 == enum case for ContentSizeCategory.extraLarge(_:))
      {
        v17 = 4;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.extraExtraLarge(_:))
      {
        v17 = 5;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
      {
        v17 = 6;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityMedium(_:))
      {
        v17 = 7;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityLarge(_:))
      {
        v17 = 8;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
      {
        v17 = 9;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
      {
        v17 = 10;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        v17 = 11;
        return v14 < v17;
      }

      (*(v4 + 8))(v6, v3);
    }

    v17 = 3;
  }

  return v14 < v17;
}

uint64_t sub_100010CA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003500(&qword_100088B58, &qword_100079D00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100010D34()
{
  result = qword_100088FD8;
  if (!qword_100088FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088FD8);
  }

  return result;
}

uint64_t sub_100010DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003500(&qword_100088B58, &qword_100079D00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_10006C1AC();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100010EEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100003500(&qword_100088B58, &qword_100079D00);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_10006C1AC();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_100010FF4(uint64_t a1)
{
  sub_100011078(319);
  if (v1 <= 0x3F)
  {
    sub_10006C1AC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100011078(uint64_t a1)
{
  if (!qword_100089038)
  {
    sub_10006C1AC();
    v1 = sub_10006BE5C();
    if (!v2)
    {
      atomic_store(v1, &qword_100089038);
    }
  }
}

uint64_t getEnumTagSinglePayload for FaceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FaceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100011224()
{
  result = qword_100089068;
  if (!qword_100089068)
  {
    sub_100007094(&qword_100088FC0, &qword_100079CE8);
    sub_100011308(&qword_100089070, &qword_100088FD0, &qword_100079CF8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100011308(&qword_100089078, &qword_100088FC8, &qword_100079CF0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089068);
  }

  return result;
}

uint64_t sub_100011308(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100007094(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100011350()
{
  if (!qword_10008CAC0)
  {
    qword_10008CAC0 = _sl_dlopen();
  }

  return qword_10008CAC0;
}

uint64_t sub_100011420(uint64_t a1)
{
  result = _sl_dlopen();
  qword_10008CAC0 = result;
  return result;
}

uint64_t sub_100011498@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v1 = sub_100003500(&qword_1000890B8, &qword_100079E78);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v35 - v3;
  v5 = sub_100003500(&qword_1000890C0, &qword_100079E80);
  v6 = *(v5 - 8);
  v36 = v5;
  v37 = v6;
  __chkstk_darwin(v5);
  v8 = &v35 - v7;
  v9 = sub_100003500(&qword_1000890C8, &qword_100079E88);
  v10 = *(v9 - 8);
  v38 = v9;
  v39 = v10;
  __chkstk_darwin(v9);
  v35 = &v35 - v11;
  sub_1000165F4(0, &qword_1000890D0, ClocksSingleIntent_ptr);
  type metadata accessor for WorldClockSingleProvider();
  v41 = sub_10000E4B4();
  type metadata accessor for WorldClockWidgetSingle.WidgetView(0);
  sub_100011AA0(&qword_1000890D8, type metadata accessor for WorldClockWidgetSingle.WidgetView, &unk_10007A0A0);
  sub_100011AA0(&qword_1000890E0, type metadata accessor for WorldClockSingleProvider, &unk_1000799D0);
  sub_10006CA4C();
  sub_10006C14C();
  v12 = sub_10006C59C();
  v14 = v13;
  v16 = v15;
  v17 = sub_100011308(&qword_1000890E8, &qword_1000890B8, &qword_100079E78, &protocol conformance descriptor for IntentConfiguration<A, B>);
  sub_10006C24C();
  sub_1000070DC(v12, v14, v16 & 1);

  (*(v2 + 8))(v4, v1);
  sub_100003500(&qword_100088A38, &unk_100079E90);
  v18 = sub_10006CA0C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100079CA0;
  v23 = v22 + v21;
  v24 = *(v19 + 104);
  v24(v23, enum case for WidgetFamily.systemSmall(_:), v18);
  v24(v23 + v20, enum case for WidgetFamily.accessoryInline(_:), v18);
  v41 = v1;
  v42 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v35;
  v26 = v36;
  sub_10006C22C();

  v28 = v26;
  (*(v37 + 8))(v8, v26);
  sub_10006C14C();
  v29 = sub_10006C59C();
  v31 = v30;
  LOBYTE(v1) = v32;
  v41 = v28;
  v42 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v33 = v38;
  sub_10006C21C();
  sub_1000070DC(v29, v31, v1 & 1);

  return (*(v39 + 8))(v27, v33);
}

uint64_t sub_100011AA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100011B14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorldClockEntry(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100011B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = sub_100003500(&qword_100089988, &qword_10007A9D8);
  __chkstk_darwin(v3 - 8);
  v60 = &v57 - v4;
  v5 = sub_100003500(&qword_100088A48, &unk_10007B6A0);
  __chkstk_darwin(v5 - 8);
  v7 = (&v57 - v6);
  v67 = type metadata accessor for WorldClockWidgetViewSingle(0);
  __chkstk_darwin(v67);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_100003500(&qword_1000899A8, &qword_10007A9F8);
  v63 = *(v68 - 8);
  __chkstk_darwin(v68);
  v62 = &v57 - v10;
  v69 = sub_100003500(&qword_1000899D8, &qword_10007AA28);
  __chkstk_darwin(v69);
  v65 = &v57 - v11;
  v12 = sub_100003500(&qword_100088B80, &qword_100079930);
  __chkstk_darwin(v12 - 8);
  v14 = &v57 - v13;
  v15 = type metadata accessor for WorldClockEntry(0);
  __chkstk_darwin(v15 - 8);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for CityInlineComplication(0);
  __chkstk_darwin(v66);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_100003500(&qword_1000899E0, &unk_10007AA30);
  v61 = *(v64 - 8);
  __chkstk_darwin(v64);
  v21 = &v57 - v20;
  v22 = sub_10006CA0C();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100012B34(type metadata accessor for WorldClockWidgetSingle.WidgetView, v25);
  v58 = v23;
  v59 = v22;
  LODWORD(v22) = (*(v23 + 88))(v25, v22);
  LODWORD(v23) = enum case for WidgetFamily.accessoryInline(_:);
  sub_10001B768(a1, v17, type metadata accessor for WorldClockEntry);
  if (v22 == v23)
  {
    v26 = v64;
    v27 = v65;
    v28 = v67;
    sub_10004EB28(v17, v19);
    v29 = [objc_opt_self() widgetURL];
    if (v29)
    {
      v30 = v29;
      sub_10006B8EC();

      v31 = 0;
    }

    else
    {
      v31 = 1;
    }

    v48 = v28;
    v49 = sub_10006B90C();
    (*(*(v49 - 8) + 56))(v14, v31, 1, v49);
    v50 = sub_100011AA0(&qword_100089890, type metadata accessor for CityInlineComplication, &unk_10007C410);
    v51 = v66;
    sub_10006C60C();
    sub_100009204(v14, &qword_100088B80, &qword_100079930);
    sub_10001B9F0(v19, type metadata accessor for CityInlineComplication);
    v52 = v61;
    (*(v61 + 16))(v27, v21, v26);
    swift_storeEnumTagMultiPayload();
    v71 = v51;
    v72 = v50;
    swift_getOpaqueTypeConformance2();
    v53 = type metadata accessor for ClockWidgetEnvironmentObject(255);
    v54 = v26;
    v55 = sub_100011AA0(&qword_100089898, type metadata accessor for WorldClockWidgetViewSingle, &unk_10007BAF0);
    v56 = sub_100011AA0(&qword_100089220, type metadata accessor for ClockWidgetEnvironmentObject, &unk_10007D7D8);
    v71 = v48;
    v72 = v53;
    v73 = v55;
    v74 = v56;
    swift_getOpaqueTypeConformance2();
    sub_10006C26C();
    return (*(v52 + 8))(v21, v54);
  }

  else
  {
    sub_10002CCBC(v7);
    v32 = sub_100059A50();
    v34 = v33;
    v35 = v60;
    sub_100059A90();
    v36 = sub_100059A80();
    sub_10002CCD8(v17, v7, v32, v34 & 1, v35, v36, v37 & 1, v9);
    v38 = type metadata accessor for ClockWidgetEnvironmentObject(0);
    v39 = sub_100067BFC();
    sub_100067C04(v39);
    v40 = sub_100011AA0(&qword_100089898, type metadata accessor for WorldClockWidgetViewSingle, &unk_10007BAF0);
    v41 = sub_100011AA0(&qword_100089220, type metadata accessor for ClockWidgetEnvironmentObject, &unk_10007D7D8);
    v42 = v62;
    v43 = v67;
    sub_10006C64C();

    sub_10001B9F0(v9, type metadata accessor for WorldClockWidgetViewSingle);
    v44 = v63;
    v45 = v68;
    (*(v63 + 16))(v65, v42, v68);
    swift_storeEnumTagMultiPayload();
    v46 = sub_100011AA0(&qword_100089890, type metadata accessor for CityInlineComplication, &unk_10007C410);
    v71 = v66;
    v72 = v46;
    swift_getOpaqueTypeConformance2();
    v71 = v43;
    v72 = v38;
    v73 = v40;
    v74 = v41;
    swift_getOpaqueTypeConformance2();
    sub_10006C26C();
    (*(v44 + 8))(v42, v45);
    return (*(v58 + 8))(v25, v59);
  }
}

uint64_t sub_10001249C@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = sub_100003500(&qword_1000890F0, &qword_100079EA0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v32 - v3;
  v5 = sub_100003500(&qword_1000890F8, &qword_100079EA8);
  v6 = *(v5 - 8);
  v33 = v5;
  v34 = v6;
  __chkstk_darwin(v5);
  v8 = &v32 - v7;
  v9 = sub_100003500(&qword_100089100, &qword_100079EB0);
  v10 = *(v9 - 8);
  v35 = v9;
  v36 = v10;
  __chkstk_darwin(v9);
  v32 = &v32 - v11;
  sub_1000165F4(0, &qword_1000890D0, ClocksSingleIntent_ptr);
  type metadata accessor for WorldClockSingleProvider();
  v38 = sub_10000E4B4();
  type metadata accessor for WorldClockNonNumericWidgetSingle.WidgetView(0);
  sub_100011AA0(&qword_100089108, type metadata accessor for WorldClockNonNumericWidgetSingle.WidgetView, &unk_10007A130);
  sub_100011AA0(&qword_1000890E0, type metadata accessor for WorldClockSingleProvider, &unk_1000799D0);
  sub_10006CA4C();
  sub_10006C14C();
  v12 = sub_10006C59C();
  v14 = v13;
  v16 = v15;
  v17 = sub_100011308(&qword_100089110, &qword_1000890F0, &qword_100079EA0, &protocol conformance descriptor for IntentConfiguration<A, B>);
  sub_10006C24C();
  sub_1000070DC(v12, v14, v16 & 1);

  (*(v2 + 8))(v4, v1);
  sub_100003500(&qword_100088A38, &unk_100079E90);
  v18 = sub_10006CA0C();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100079E30;
  (*(v19 + 104))(v21 + v20, enum case for WidgetFamily.systemSmall(_:), v18);
  v38 = v1;
  v39 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v32;
  v23 = v33;
  sub_10006C22C();

  v25 = v23;
  (*(v34 + 8))(v8, v23);
  sub_10006C14C();
  v26 = sub_10006C59C();
  v28 = v27;
  LOBYTE(v1) = v29;
  v38 = v25;
  v39 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v30 = v35;
  sub_10006C21C();
  sub_1000070DC(v26, v28, v1 & 1);

  return (*(v36 + 8))(v24, v30);
}

uint64_t sub_100012A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  sub_10001F50C(a1, a4, type metadata accessor for WorldClockEntry);
  v7 = a4 + *(a3(0) + 20);

  return sub_100007518(a2, v7);
}

uint64_t sub_100012B34@<X0>(uint64_t (*a1)(void, __n128)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10006C0AC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003500(&qword_100088A40, &unk_100079800);
  v10 = __chkstk_darwin(v9);
  v12 = &v17 - v11;
  v13 = a1(0, v10);
  sub_1000075EC(v2 + *(v13 + 20), v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_10006CA0C();
    return (*(*(v14 - 8) + 32))(a2, v12, v14);
  }

  else
  {
    sub_10006CCCC();
    v16 = sub_10006C32C();
    sub_10006BDEC();

    sub_10006C09C();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_100012D64@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v1 = sub_10006C9FC();
  v59 = *(v1 - 8);
  v60 = v1;
  __chkstk_darwin(v1);
  v58 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003500(&qword_100089118, &qword_100079EB8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v47 - v5;
  v48 = sub_100003500(&qword_100089120, &qword_100079EC0);
  v50 = *(v48 - 8);
  __chkstk_darwin(v48);
  v8 = &v47 - v7;
  v9 = sub_100003500(&qword_100089128, &qword_100079EC8);
  v10 = *(v9 - 8);
  v52 = v9;
  v53 = v10;
  __chkstk_darwin(v9);
  v47 = &v47 - v11;
  v12 = sub_100003500(&qword_100089130, &qword_100079ED0);
  v13 = *(v12 - 8);
  v54 = v12;
  v55 = v13;
  __chkstk_darwin(v12);
  v49 = &v47 - v14;
  v15 = sub_100003500(&qword_100089138, &qword_100079ED8);
  v16 = *(v15 - 8);
  v56 = v15;
  v57 = v16;
  __chkstk_darwin(v15);
  v51 = &v47 - v17;
  sub_1000165F4(0, &qword_1000890D0, ClocksSingleIntent_ptr);
  type metadata accessor for WorldClockSingleProvider();
  v62 = sub_10000E4B4();
  type metadata accessor for WorldClockSquareWidgetSingle.WidgetView(0);
  sub_100011AA0(&qword_100089140, type metadata accessor for WorldClockSquareWidgetSingle.WidgetView, &unk_10007A1C0);
  sub_100011AA0(&qword_1000890E0, type metadata accessor for WorldClockSingleProvider, &unk_1000799D0);
  sub_10006CA4C();
  sub_10006C14C();
  v18 = sub_10006C59C();
  v20 = v19;
  v22 = v21;
  v23 = sub_100011308(&qword_100089148, &qword_100089118, &qword_100079EB8, &protocol conformance descriptor for IntentConfiguration<A, B>);
  sub_10006C24C();
  sub_1000070DC(v18, v20, v22 & 1);

  (*(v4 + 8))(v6, v3);
  sub_100003500(&qword_100088A38, &unk_100079E90);
  v24 = sub_10006CA0C();
  v25 = *(v24 - 8);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100079E30;
  (*(v25 + 104))(v27 + v26, enum case for WidgetFamily.systemSmall(_:), v24);
  v62 = v3;
  v63 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v47;
  v29 = v48;
  sub_10006C22C();

  (*(v50 + 8))(v8, v29);
  sub_10006C14C();
  v31 = sub_10006C59C();
  v33 = v32;
  LOBYTE(v8) = v34;
  v62 = v29;
  v63 = OpaqueTypeConformance2;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = v49;
  v37 = v52;
  sub_10006C21C();
  sub_1000070DC(v31, v33, v8 & 1);

  v38 = v37;
  (*(v53 + 8))(v30, v37);
  v39 = v58;
  v40 = v59;
  v41 = v60;
  (*(v59 + 104))(v58, enum case for WidgetBackgroundStyle.blur(_:), v60);
  v62 = v38;
  v63 = v35;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = v51;
  v44 = v54;
  sub_10006C25C();
  (*(v40 + 8))(v39, v41);
  (*(v55 + 8))(v36, v44);
  v62 = v44;
  v63 = v42;
  swift_getOpaqueTypeConformance2();
  v45 = v56;
  sub_10006C23C();
  return (*(v57 + 8))(v43, v45);
}

uint64_t sub_10001364C@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v1 = sub_10006C9FC();
  v61 = *(v1 - 8);
  v62 = v1;
  __chkstk_darwin(v1);
  v60 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003500(&qword_100089150, &qword_100079EE0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v49 - v5;
  v7 = sub_100003500(&qword_100089158, &qword_100079EE8);
  v8 = *(v7 - 8);
  v51 = v7;
  v52 = v8;
  __chkstk_darwin(v7);
  v10 = &v49 - v9;
  v11 = sub_100003500(&qword_100089160, &qword_100079EF0);
  v12 = *(v11 - 8);
  v54 = v11;
  v55 = v12;
  __chkstk_darwin(v11);
  v49 = &v49 - v13;
  v14 = sub_100003500(&qword_100089168, &qword_100079EF8);
  v15 = *(v14 - 8);
  v56 = v14;
  v57 = v15;
  __chkstk_darwin(v14);
  v50 = &v49 - v16;
  v17 = sub_100003500(&qword_100089170, &qword_100079F00);
  v18 = *(v17 - 8);
  v58 = v17;
  v59 = v18;
  __chkstk_darwin(v17);
  v53 = &v49 - v19;
  sub_1000165F4(0, &qword_1000890D0, ClocksSingleIntent_ptr);
  type metadata accessor for WorldClockSingleProvider();
  v64 = sub_10000E4B4();
  type metadata accessor for WorldClockDigitalWidgetSingle.WidgetView(0);
  sub_100011AA0(&qword_100089178, type metadata accessor for WorldClockDigitalWidgetSingle.WidgetView, &unk_10007A250);
  sub_100011AA0(&qword_1000890E0, type metadata accessor for WorldClockSingleProvider, &unk_1000799D0);
  sub_10006CA4C();
  sub_10006C14C();
  v20 = sub_10006C59C();
  v22 = v21;
  v24 = v23;
  v25 = sub_100011308(&qword_100089180, &qword_100089150, &qword_100079EE0, &protocol conformance descriptor for IntentConfiguration<A, B>);
  sub_10006C24C();
  sub_1000070DC(v20, v22, v24 & 1);

  (*(v4 + 8))(v6, v3);
  sub_100003500(&qword_100088A38, &unk_100079E90);
  v26 = sub_10006CA0C();
  v27 = *(v26 - 8);
  v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100079E30;
  (*(v27 + 104))(v29 + v28, enum case for WidgetFamily.systemSmall(_:), v26);
  v64 = v3;
  v65 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v49;
  v32 = v51;
  sub_10006C22C();

  (*(v52 + 8))(v10, v32);
  sub_10006C14C();
  v33 = sub_10006C59C();
  v35 = v34;
  LOBYTE(v10) = v36;
  v64 = v32;
  v65 = OpaqueTypeConformance2;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = v50;
  v39 = v54;
  sub_10006C21C();
  sub_1000070DC(v33, v35, v10 & 1);

  v40 = v39;
  (*(v55 + 8))(v31, v39);
  v41 = v60;
  v42 = v61;
  v43 = v62;
  (*(v61 + 104))(v60, enum case for WidgetBackgroundStyle.blur(_:), v62);
  v64 = v40;
  v65 = v37;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = v53;
  v46 = v56;
  sub_10006C25C();
  (*(v42 + 8))(v41, v43);
  (*(v57 + 8))(v38, v46);
  v64 = v46;
  v65 = v44;
  swift_getOpaqueTypeConformance2();
  v47 = v58;
  sub_10006C23C();
  return (*(v59 + 8))(v45, v47);
}

uint64_t sub_100013F34@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, __n128)@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v28 = a3;
  v29 = a4;
  v6 = sub_100003500(&qword_100089988, &qword_10007A9D8);
  __chkstk_darwin(v6 - 8);
  v8 = &v27[-v7];
  v9 = sub_100003500(&qword_100088A48, &unk_10007B6A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v27[-v10];
  v12 = type metadata accessor for WorldClockEntry(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for WorldClockWidgetViewSingle(0);
  __chkstk_darwin(v15);
  v17 = &v27[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_10006CA0C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v27[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100012B34(a2, v21);
  (*(v19 + 8))(v21, v18);
  sub_10001B768(a1, v14, type metadata accessor for WorldClockEntry);
  sub_10002CCBC(v11);
  v22 = sub_100059A50();
  LOBYTE(a1) = v23;
  sub_100059A90();
  v24 = sub_100059A80();
  sub_10002CCD8(v14, v11, v22, a1 & 1, v8, v24, v25 & 1, v17);
  type metadata accessor for ClockWidgetEnvironmentObject(0);
  sub_100067C04(v28);
  sub_100011AA0(&qword_100089898, type metadata accessor for WorldClockWidgetViewSingle, &unk_10007BAF0);
  sub_100011AA0(&qword_100089220, type metadata accessor for ClockWidgetEnvironmentObject, &unk_10007D7D8);
  sub_10006C64C();

  return sub_10001B9F0(v17, type metadata accessor for WorldClockWidgetViewSingle);
}

uint64_t sub_100014280@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v1 = sub_100003500(&qword_100089188, &qword_100079F08);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v35 - v3;
  v5 = sub_100003500(&qword_100089190, &qword_100079F10);
  v6 = *(v5 - 8);
  v36 = v5;
  v37 = v6;
  __chkstk_darwin(v5);
  v8 = &v35 - v7;
  v9 = sub_100003500(&qword_100089198, &qword_100079F18);
  v10 = *(v9 - 8);
  v38 = v9;
  v39 = v10;
  __chkstk_darwin(v9);
  v35 = &v35 - v11;
  sub_1000165F4(0, &qword_1000890D0, ClocksSingleIntent_ptr);
  type metadata accessor for WorldClockSingleProvider();
  v41 = sub_10000E4B4();
  type metadata accessor for CityWidgetDigital.WidgetView(0);
  sub_100011AA0(&qword_1000891A0, type metadata accessor for CityWidgetDigital.WidgetView, &unk_10007A2E0);
  sub_100011AA0(&qword_1000890E0, type metadata accessor for WorldClockSingleProvider, &unk_1000799D0);
  sub_10006CA4C();
  sub_10006C14C();
  v12 = sub_10006C59C();
  v14 = v13;
  v16 = v15;
  v17 = sub_100011308(&qword_1000891A8, &qword_100089188, &qword_100079F08, &protocol conformance descriptor for IntentConfiguration<A, B>);
  sub_10006C24C();
  sub_1000070DC(v12, v14, v16 & 1);

  (*(v2 + 8))(v4, v1);
  sub_100003500(&qword_100088A38, &unk_100079E90);
  v18 = sub_10006CA0C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100079CA0;
  v23 = v22 + v21;
  v24 = *(v19 + 104);
  v24(v23, enum case for WidgetFamily.accessoryRectangular(_:), v18);
  v24(v23 + v20, enum case for WidgetFamily.accessoryCircular(_:), v18);
  v41 = v1;
  v42 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v35;
  v26 = v36;
  sub_10006C22C();

  v28 = v26;
  (*(v37 + 8))(v8, v26);
  sub_10006C14C();
  v29 = sub_10006C59C();
  v31 = v30;
  LOBYTE(v1) = v32;
  v41 = v28;
  v42 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v33 = v38;
  sub_10006C21C();
  sub_1000070DC(v29, v31, v1 & 1);

  return (*(v39 + 8))(v27, v33);
}

uint64_t sub_1000148C4(unsigned int *a1, unsigned int *a2)
{
  sub_100003500(&qword_100088A38, &unk_100079E90);
  v4 = sub_10006CA0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100079CA0;
  v9 = v8 + v7;
  v10 = *a1;
  v11 = *(v5 + 104);
  v11(v9, v10, v4);
  v11(v9 + v6, *a2, v4);
  return v8;
}

uint64_t sub_100014A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v130 = a2;
  v3 = sub_100003500(&qword_100089988, &qword_10007A9D8);
  __chkstk_darwin(v3 - 8);
  v101 = &v98 - v4;
  v5 = sub_100003500(&qword_100088A48, &unk_10007B6A0);
  __chkstk_darwin(v5 - 8);
  v100 = (&v98 - v6);
  v109 = type metadata accessor for WorldClockWidgetViewSingle(0);
  __chkstk_darwin(v109);
  v102 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_100003500(&qword_1000899A8, &qword_10007A9F8);
  v103 = *(v111 - 8);
  __chkstk_darwin(v111);
  v107 = &v98 - v8;
  v105 = sub_100003500(&qword_1000899B0, &qword_10007AA00);
  __chkstk_darwin(v105);
  v108 = &v98 - v9;
  v129 = sub_100003500(&qword_100089908, &qword_10007A9A8);
  __chkstk_darwin(v129);
  v110 = &v98 - v10;
  v106 = type metadata accessor for CityInlineComplication(0);
  __chkstk_darwin(v106);
  v99 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WorldClockEntry(0);
  __chkstk_darwin(v12 - 8);
  v125 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for ClockCircularDigitalComplication(0);
  __chkstk_darwin(v113);
  v112 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_100003500(&qword_1000899B8, &qword_10007AA08);
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v114 = &v98 - v15;
  v124 = sub_100003500(&qword_1000898F0, &qword_10007A9A0);
  __chkstk_darwin(v124);
  v115 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v118 = &v98 - v18;
  v126 = sub_100003500(&qword_1000899C0, &qword_10007AA10);
  __chkstk_darwin(v126);
  v128 = &v98 - v19;
  v120 = sub_100003500(&qword_1000899C8, &qword_10007AA18);
  __chkstk_darwin(v120);
  v122 = &v98 - v20;
  v127 = sub_100003500(&qword_1000898D8, &qword_10007A998);
  __chkstk_darwin(v127);
  v123 = &v98 - v21;
  v22 = sub_100003500(&qword_100088B80, &qword_100079930);
  __chkstk_darwin(v22 - 8);
  v24 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v98 - v26;
  v28 = type metadata accessor for WorldClockCity(0);
  __chkstk_darwin(v28 - 8);
  v30 = &v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for ClockRectangularComplication(0);
  __chkstk_darwin(v119);
  v32 = &v98 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_100003500(&qword_1000899D0, &qword_10007AA20);
  v104 = *(v121 - 8);
  __chkstk_darwin(v121);
  v34 = &v98 - v33;
  v35 = sub_10006CA0C();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = &v98 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  sub_100012B34(type metadata accessor for CityWidgetDigital.WidgetView, v38);
  v98 = v36;
  v40 = (*(v36 + 88))(v38, v35);
  if (v40 == enum case for WidgetFamily.accessoryCircular(_:))
  {
    v41 = v125;
    sub_10001B768(a1, v125, type metadata accessor for WorldClockEntry);
    sub_100020F9C(v133);
    *(&v135 + 1) = &type metadata for AnalogueCircularDimensions;
    *&v136 = &off_100086690;
    v42 = swift_allocObject();
    *&v134 = v42;
    v43 = v133[1];
    v42[1] = v133[0];
    v42[2] = v43;
    v44 = v133[3];
    v42[3] = v133[2];
    v42[4] = v44;
    v45 = sub_100001CF8();
    v46 = sub_100001CF8();
    v47 = sub_100001CF8();
    v48 = v112;
    sub_10004E420(v41, &v134, v45 & 1, v46 & 1, v47 & 1, v112);
    v49 = [objc_opt_self() widgetURL];
    if (v49)
    {
      v50 = v49;
      sub_10006B8EC();

      v51 = 0;
    }

    else
    {
      v51 = 1;
    }

    v64 = sub_10006B90C();
    (*(*(v64 - 8) + 56))(v24, v51, 1, v64);
    sub_100011AA0(&qword_1000898F8, type metadata accessor for ClockCircularDigitalComplication, &unk_10007C3C0);
    v65 = v114;
    sub_10006C60C();
    sub_100009204(v24, &qword_100088B80, &qword_100079930);
    sub_10001B9F0(v48, type metadata accessor for ClockCircularDigitalComplication);
    sub_10006C93C();
    sub_10006BF6C();
    v66 = v115;
    (*(v116 + 32))(v115, v65, v117);
    v67 = (v66 + *(v124 + 36));
    v68 = v139;
    v67[4] = v138;
    v67[5] = v68;
    v67[6] = v140;
    v69 = v135;
    *v67 = v134;
    v67[1] = v69;
    v70 = v137;
    v67[2] = v136;
    v67[3] = v70;
    v71 = v118;
    sub_10001F574(v66, v118);
    sub_100009264(v71, v122, &qword_1000898F0, &qword_10007A9A0);
    swift_storeEnumTagMultiPayload();
    v72 = sub_100011AA0(&qword_1000898E0, type metadata accessor for ClockRectangularComplication, &unk_10007BB40);
    v131 = v119;
    v132 = v72;
    swift_getOpaqueTypeConformance2();
    sub_10001E4B8();
    v73 = v123;
    sub_10006C26C();
    sub_100009264(v73, v128, &qword_1000898D8, &qword_10007A998);
    swift_storeEnumTagMultiPayload();
    sub_10001E3CC();
    sub_10001E5A4();
    sub_10006C26C();
    sub_100009204(v73, &qword_1000898D8, &qword_10007A998);
    return sub_100009204(v71, &qword_1000898F0, &qword_10007A9A0);
  }

  else
  {
    v52 = v40;
    v53 = v125;
    if (v40 == enum case for WidgetFamily.accessoryRectangular(_:))
    {
      sub_10000B690(v30);
      sub_10002DCD0(v30, v32);
      v54 = [objc_opt_self() widgetURL];
      if (v54)
      {
        v55 = v54;
        sub_10006B8EC();

        v56 = 0;
      }

      else
      {
        v56 = 1;
      }

      v92 = sub_10006B90C();
      (*(*(v92 - 8) + 56))(v27, v56, 1, v92);
      v93 = sub_100011AA0(&qword_1000898E0, type metadata accessor for ClockRectangularComplication, &unk_10007BB40);
      v94 = v119;
      sub_10006C60C();
      sub_100009204(v27, &qword_100088B80, &qword_100079930);
      sub_10001B9F0(v32, type metadata accessor for ClockRectangularComplication);
      v95 = v104;
      v96 = v121;
      (*(v104 + 16))(v122, v34, v121);
      swift_storeEnumTagMultiPayload();
      *&v134 = v94;
      *(&v134 + 1) = v93;
      swift_getOpaqueTypeConformance2();
      sub_10001E4B8();
      v97 = v123;
      sub_10006C26C();
      sub_100009264(v97, v128, &qword_1000898D8, &qword_10007A998);
      swift_storeEnumTagMultiPayload();
      sub_10001E3CC();
      sub_10001E5A4();
      sub_10006C26C();
      sub_100009204(v97, &qword_1000898D8, &qword_10007A998);
      return (*(v95 + 8))(v34, v96);
    }

    else
    {
      v57 = enum case for WidgetFamily.accessoryInline(_:);
      sub_10001B768(v39, v125, type metadata accessor for WorldClockEntry);
      if (v52 == v57)
      {
        v58 = v99;
        sub_10004EB28(v53, v99);
        sub_10001B768(v58, v108, type metadata accessor for CityInlineComplication);
        swift_storeEnumTagMultiPayload();
        sub_100011AA0(&qword_100089890, type metadata accessor for CityInlineComplication, &unk_10007C410);
        v59 = type metadata accessor for ClockWidgetEnvironmentObject(255);
        v60 = sub_100011AA0(&qword_100089898, type metadata accessor for WorldClockWidgetViewSingle, &unk_10007BAF0);
        v61 = sub_100011AA0(&qword_100089220, type metadata accessor for ClockWidgetEnvironmentObject, &unk_10007D7D8);
        *&v134 = v109;
        *(&v134 + 1) = v59;
        *&v135 = v60;
        *(&v135 + 1) = v61;
        swift_getOpaqueTypeConformance2();
        v62 = v110;
        sub_10006C26C();
        sub_100009264(v62, v128, &qword_100089908, &qword_10007A9A8);
        swift_storeEnumTagMultiPayload();
        sub_10001E3CC();
        sub_10001E5A4();
        sub_10006C26C();
        sub_100009204(v62, &qword_100089908, &qword_10007A9A8);
        return sub_10001B9F0(v58, type metadata accessor for CityInlineComplication);
      }

      else
      {
        v74 = v100;
        sub_10002CCBC(v100);
        v75 = sub_100059A50();
        v77 = v76;
        v78 = v101;
        sub_100059A90();
        v79 = sub_100059A80();
        v81 = v102;
        sub_10002CCD8(v53, v74, v75, v77 & 1, v78, v79, v80 & 1, v102);
        v82 = type metadata accessor for ClockWidgetEnvironmentObject(0);
        v83 = sub_100067BFC();
        sub_100067C04(v83);
        v84 = sub_100011AA0(&qword_100089898, type metadata accessor for WorldClockWidgetViewSingle, &unk_10007BAF0);
        v85 = sub_100011AA0(&qword_100089220, type metadata accessor for ClockWidgetEnvironmentObject, &unk_10007D7D8);
        v86 = v107;
        v87 = v109;
        sub_10006C64C();

        sub_10001B9F0(v81, type metadata accessor for WorldClockWidgetViewSingle);
        v88 = v103;
        v89 = v86;
        v90 = v111;
        (*(v103 + 16))(v108, v89, v111);
        swift_storeEnumTagMultiPayload();
        sub_100011AA0(&qword_100089890, type metadata accessor for CityInlineComplication, &unk_10007C410);
        *&v134 = v87;
        *(&v134 + 1) = v82;
        *&v135 = v84;
        *(&v135 + 1) = v85;
        swift_getOpaqueTypeConformance2();
        v91 = v110;
        sub_10006C26C();
        sub_100009264(v91, v128, &qword_100089908, &qword_10007A9A8);
        swift_storeEnumTagMultiPayload();
        sub_10001E3CC();
        sub_10001E5A4();
        sub_10006C26C();
        sub_100009204(v91, &qword_100089908, &qword_10007A9A8);
        (*(v88 + 8))(v107, v90);
        return (*(v98 + 8))(v38, v35);
      }
    }
  }
}

uint64_t sub_100015E04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10006C0AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003500(&qword_100088A40, &unk_100079800);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1000075EC(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10006CA0C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_10006CCCC();
    v13 = sub_10006C32C();
    sub_10006BDEC();

    sub_10006C09C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100015FEC@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v1 = sub_100003500(&qword_1000891B0, &qword_100079F20);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v35 - v3;
  v5 = sub_100003500(&qword_1000891B8, &qword_100079F28);
  v6 = *(v5 - 8);
  v36 = v5;
  v37 = v6;
  __chkstk_darwin(v5);
  v8 = &v35 - v7;
  v9 = sub_100003500(&qword_1000891C0, &qword_100079F30);
  v10 = *(v9 - 8);
  v38 = v9;
  v39 = v10;
  __chkstk_darwin(v9);
  v35 = &v35 - v11;
  sub_1000165F4(0, &qword_1000891C8, ClocksIntent_ptr);
  type metadata accessor for WorldClockMultiProvider();
  v41 = sub_10000E4B4();
  type metadata accessor for WorldClockWidgetMulti.WidgetView(0);
  sub_100011AA0(&qword_1000891D0, type metadata accessor for WorldClockWidgetMulti.WidgetView, &unk_10007A370);
  sub_100011AA0(&qword_1000891D8, type metadata accessor for WorldClockMultiProvider, &unk_100079A48);
  sub_10006CA4C();
  sub_10006C14C();
  v12 = sub_10006C59C();
  v14 = v13;
  v16 = v15;
  v17 = sub_100011308(&qword_1000891E0, &qword_1000891B0, &qword_100079F20, &protocol conformance descriptor for IntentConfiguration<A, B>);
  sub_10006C24C();
  sub_1000070DC(v12, v14, v16 & 1);

  (*(v2 + 8))(v4, v1);
  sub_100003500(&qword_100088A38, &unk_100079E90);
  v18 = sub_10006CA0C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1000797A0;
  v23 = v22 + v21;
  v24 = *(v19 + 104);
  v24(v23, enum case for WidgetFamily.systemSmall(_:), v18);
  v24(v23 + v20, enum case for WidgetFamily.systemMedium(_:), v18);
  v24(v23 + 2 * v20, enum case for WidgetFamily.accessoryRectangular(_:), v18);
  v41 = v1;
  v42 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v35;
  v26 = v36;
  sub_10006C22C();

  v28 = v26;
  (*(v37 + 8))(v8, v26);
  sub_10006C14C();
  v29 = sub_10006C59C();
  v31 = v30;
  LOBYTE(v1) = v32;
  v41 = v28;
  v42 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v33 = v38;
  sub_10006C21C();
  sub_1000070DC(v29, v31, v1 & 1);

  return (*(v39 + 8))(v27, v33);
}

uint64_t sub_1000165F4(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100016654@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  sub_10001B768(a1, a3, type metadata accessor for WorldClockEntry);
  KeyPath = swift_getKeyPath();
  *(a3 + *(a2(0) + 20)) = KeyPath;
  sub_100003500(&qword_100088A40, &unk_100079800);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100016728()
{
  sub_100003500(&qword_100088A38, &unk_100079E90);
  v0 = sub_10006CA0C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000797A0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for WidgetFamily.systemSmall(_:), v0);
  v6(v5 + v2, enum case for WidgetFamily.systemMedium(_:), v0);
  v6(v5 + 2 * v2, enum case for WidgetFamily.accessoryRectangular(_:), v0);
  return v4;
}

uint64_t sub_100016884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = sub_100003500(&qword_100089988, &qword_10007A9D8);
  __chkstk_darwin(v3 - 8);
  v61 = &v57 - v4;
  v5 = sub_100003500(&qword_100088A48, &unk_10007B6A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v57 - v6;
  v67 = type metadata accessor for WorldClockWidgetViewMulti(0);
  __chkstk_darwin(v67);
  v58 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_100003500(&qword_100089990, &qword_10007A9E0);
  v63 = *(v68 - 8);
  __chkstk_darwin(v68);
  v60 = &v57 - v9;
  v69 = sub_100003500(&qword_100089998, &qword_10007A9E8);
  __chkstk_darwin(v69);
  v65 = &v57 - v10;
  v11 = sub_100003500(&qword_100088B80, &qword_100079930);
  __chkstk_darwin(v11 - 8);
  v13 = &v57 - v12;
  v14 = type metadata accessor for WorldClockEntry(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for WorldClockRectangularSummary(0);
  __chkstk_darwin(v66);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_100003500(&qword_1000899A0, &qword_10007A9F0);
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v20 = &v57 - v19;
  v21 = sub_10006CA0C();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100012B34(type metadata accessor for WorldClockWidgetMulti.WidgetView, v24);
  v57 = v22;
  v25 = *(v22 + 88);
  v59 = v21;
  v26 = v25(v24, v21);
  LODWORD(v21) = enum case for WidgetFamily.accessoryRectangular(_:);
  sub_10001B768(a1, v16, type metadata accessor for WorldClockEntry);
  if (v26 == v21)
  {
    v27 = v64;
    v28 = v65;
    v29 = v67;
    sub_10004B678(v16, v18);
    v30 = [objc_opt_self() widgetURL];
    if (v30)
    {
      v31 = v30;
      sub_10006B8EC();

      v32 = 0;
    }

    else
    {
      v32 = 1;
    }

    v48 = v29;
    v49 = sub_10006B90C();
    (*(*(v49 - 8) + 56))(v13, v32, 1, v49);
    v50 = sub_100011AA0(&qword_100089930, type metadata accessor for WorldClockRectangularSummary, &unk_10007C320);
    v51 = v66;
    sub_10006C60C();
    sub_100009204(v13, &qword_100088B80, &qword_100079930);
    sub_10001B9F0(v18, type metadata accessor for WorldClockRectangularSummary);
    v52 = v62;
    (*(v62 + 16))(v28, v20, v27);
    swift_storeEnumTagMultiPayload();
    v71 = v51;
    v72 = v50;
    swift_getOpaqueTypeConformance2();
    v53 = type metadata accessor for ClockWidgetEnvironmentObject(255);
    v54 = v27;
    v55 = sub_100011AA0(&qword_100089938, type metadata accessor for WorldClockWidgetViewMulti, &unk_10007BB90);
    v56 = sub_100011AA0(&qword_100089220, type metadata accessor for ClockWidgetEnvironmentObject, &unk_10007D7D8);
    v71 = v48;
    v72 = v53;
    v73 = v55;
    v74 = v56;
    swift_getOpaqueTypeConformance2();
    sub_10006C26C();
    return (*(v52 + 8))(v20, v54);
  }

  else
  {
    sub_100059A8C();
    v33 = sub_100059A50();
    v35 = v34;
    v36 = v61;
    sub_100059A90();
    v37 = v58;
    sub_10002F27C(v16, v7, v33, v35 & 1, v36, v58);
    v38 = type metadata accessor for ClockWidgetEnvironmentObject(0);
    v39 = sub_100067BFC();
    sub_100067C04(v39);
    v40 = sub_100011AA0(&qword_100089938, type metadata accessor for WorldClockWidgetViewMulti, &unk_10007BB90);
    v41 = sub_100011AA0(&qword_100089220, type metadata accessor for ClockWidgetEnvironmentObject, &unk_10007D7D8);
    v42 = v60;
    v43 = v67;
    sub_10006C64C();

    sub_10001B9F0(v37, type metadata accessor for WorldClockWidgetViewMulti);
    v44 = v63;
    v45 = v68;
    (*(v63 + 16))(v65, v42, v68);
    swift_storeEnumTagMultiPayload();
    v46 = sub_100011AA0(&qword_100089930, type metadata accessor for WorldClockRectangularSummary, &unk_10007C320);
    v71 = v66;
    v72 = v46;
    swift_getOpaqueTypeConformance2();
    v71 = v43;
    v72 = v38;
    v73 = v40;
    v74 = v41;
    swift_getOpaqueTypeConformance2();
    sub_10006C26C();
    (*(v44 + 8))(v42, v45);
    return (*(v57 + 8))(v24, v59);
  }
}

uint64_t sub_100017168@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100003500(&qword_100088A40, &unk_100079800);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000171E0@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v1 = sub_10006C9FC();
  v63 = *(v1 - 8);
  v64 = v1;
  __chkstk_darwin(v1);
  v62 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003500(&qword_1000891E8, &qword_100079F38);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v50 - v5;
  v52 = sub_100003500(&qword_1000891F0, &qword_100079F40);
  v54 = *(v52 - 8);
  __chkstk_darwin(v52);
  v8 = &v50 - v7;
  v9 = sub_100003500(&qword_1000891F8, &qword_100079F48);
  v10 = *(v9 - 8);
  v56 = v9;
  v57 = v10;
  __chkstk_darwin(v9);
  v51 = &v50 - v11;
  v12 = sub_100003500(&qword_100089200, &qword_100079F50);
  v13 = *(v12 - 8);
  v58 = v12;
  v59 = v13;
  __chkstk_darwin(v12);
  v53 = &v50 - v14;
  v15 = sub_100003500(&qword_100089208, &qword_100079F58);
  v16 = *(v15 - 8);
  v60 = v15;
  v61 = v16;
  __chkstk_darwin(v15);
  v55 = &v50 - v17;
  type metadata accessor for DateTimeProvider();
  v70 = sub_10000A300();
  sub_100003500(&qword_100089210, &qword_100079F60);
  v18 = type metadata accessor for DateTimeWidgetView(255);
  v19 = type metadata accessor for ClockWidgetEnvironmentObject(255);
  v20 = sub_100011AA0(&qword_100089218, type metadata accessor for DateTimeWidgetView, &unk_10007C230);
  v21 = sub_100011AA0(&qword_100089220, type metadata accessor for ClockWidgetEnvironmentObject, &unk_10007D7D8);
  v66 = v18;
  v67 = v19;
  v68 = v20;
  v69 = v21;
  swift_getOpaqueTypeConformance2();
  sub_100011AA0(&qword_100089228, type metadata accessor for DateTimeProvider, &unk_10007AA60);
  sub_10006CA5C();
  sub_10006C14C();
  v22 = sub_10006C59C();
  v24 = v23;
  LOBYTE(v20) = v25;
  v26 = sub_100011308(&qword_100089230, &qword_1000891E8, &qword_100079F38, &protocol conformance descriptor for StaticConfiguration<A>);
  sub_10006C24C();
  sub_1000070DC(v22, v24, v20 & 1);

  (*(v4 + 8))(v6, v3);
  sub_100003500(&qword_100088A38, &unk_100079E90);
  v27 = sub_10006CA0C();
  v28 = *(v27 - 8);
  v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100079E30;
  (*(v28 + 104))(v30 + v29, enum case for WidgetFamily.systemSmall(_:), v27);
  v66 = v3;
  v67 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v51;
  v33 = v52;
  sub_10006C22C();

  (*(v54 + 8))(v8, v33);
  sub_10006C14C();
  v34 = sub_10006C59C();
  v36 = v35;
  LOBYTE(v8) = v37;
  v66 = v33;
  v67 = OpaqueTypeConformance2;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = v53;
  v40 = v56;
  sub_10006C21C();
  sub_1000070DC(v34, v36, v8 & 1);

  v41 = v40;
  (*(v57 + 8))(v32, v40);
  v42 = v62;
  v43 = v63;
  v44 = v64;
  (*(v63 + 104))(v62, enum case for WidgetBackgroundStyle.blur(_:), v64);
  v66 = v41;
  v67 = v38;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v55;
  v47 = v58;
  sub_10006C25C();
  (*(v43 + 8))(v42, v44);
  (*(v59 + 8))(v39, v47);
  v66 = v47;
  v67 = v45;
  swift_getOpaqueTypeConformance2();
  v48 = v60;
  sub_10006C23C();
  return (*(v61 + 8))(v46, v48);
}

uint64_t sub_100017A90(uint64_t a1)
{
  v2 = sub_100003500(&qword_100089988, &qword_10007A9D8);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for DateTimeWidgetView(0);
  __chkstk_darwin(v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + *(type metadata accessor for DateTimeEntry(0) + 24));
  v9 = sub_100059A50();
  v11 = v10;
  sub_100059A90();
  sub_100048438(v8, v9, v11 & 1, v4, v7);
  type metadata accessor for ClockWidgetEnvironmentObject(0);
  v12 = sub_100067BFC();
  sub_100067C04(v12);
  sub_100011AA0(&qword_100089218, type metadata accessor for DateTimeWidgetView, &unk_10007C230);
  sub_100011AA0(&qword_100089220, type metadata accessor for ClockWidgetEnvironmentObject, &unk_10007D7D8);
  sub_10006C64C();

  return sub_10001B9F0(v7, type metadata accessor for DateTimeWidgetView);
}

uint64_t sub_100017C70@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v1 = sub_10006C9FC();
  v63 = *(v1 - 8);
  v64 = v1;
  __chkstk_darwin(v1);
  v62 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003500(&qword_100089238, &qword_100079F68);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v50 - v5;
  v52 = sub_100003500(&qword_100089240, &qword_100079F70);
  v54 = *(v52 - 8);
  __chkstk_darwin(v52);
  v8 = &v50 - v7;
  v9 = sub_100003500(&qword_100089248, &qword_100079F78);
  v10 = *(v9 - 8);
  v56 = v9;
  v57 = v10;
  __chkstk_darwin(v9);
  v51 = &v50 - v11;
  v12 = sub_100003500(&qword_100089250, &qword_100079F80);
  v13 = *(v12 - 8);
  v58 = v12;
  v59 = v13;
  __chkstk_darwin(v12);
  v53 = &v50 - v14;
  v15 = sub_100003500(&qword_100089258, &qword_100079F88);
  v16 = *(v15 - 8);
  v60 = v15;
  v61 = v16;
  __chkstk_darwin(v15);
  v55 = &v50 - v17;
  type metadata accessor for DateTimeProvider();
  v70 = sub_10000A300();
  sub_100003500(&qword_100089260, &qword_100079F90);
  v18 = type metadata accessor for NonNumericWidgetView(255);
  v19 = type metadata accessor for ClockWidgetEnvironmentObject(255);
  v20 = sub_100011AA0(&qword_100089268, type metadata accessor for NonNumericWidgetView, &unk_10007C280);
  v21 = sub_100011AA0(&qword_100089220, type metadata accessor for ClockWidgetEnvironmentObject, &unk_10007D7D8);
  v66 = v18;
  v67 = v19;
  v68 = v20;
  v69 = v21;
  swift_getOpaqueTypeConformance2();
  sub_100011AA0(&qword_100089228, type metadata accessor for DateTimeProvider, &unk_10007AA60);
  sub_10006CA5C();
  sub_10006C14C();
  v22 = sub_10006C59C();
  v24 = v23;
  LOBYTE(v20) = v25;
  v26 = sub_100011308(&qword_100089270, &qword_100089238, &qword_100079F68, &protocol conformance descriptor for StaticConfiguration<A>);
  sub_10006C24C();
  sub_1000070DC(v22, v24, v20 & 1);

  (*(v4 + 8))(v6, v3);
  sub_100003500(&qword_100088A38, &unk_100079E90);
  v27 = sub_10006CA0C();
  v28 = *(v27 - 8);
  v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100079E30;
  (*(v28 + 104))(v30 + v29, enum case for WidgetFamily.systemSmall(_:), v27);
  v66 = v3;
  v67 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v51;
  v33 = v52;
  sub_10006C22C();

  (*(v54 + 8))(v8, v33);
  sub_10006C14C();
  v34 = sub_10006C59C();
  v36 = v35;
  LOBYTE(v8) = v37;
  v66 = v33;
  v67 = OpaqueTypeConformance2;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = v53;
  v40 = v56;
  sub_10006C21C();
  sub_1000070DC(v34, v36, v8 & 1);

  v41 = v40;
  (*(v57 + 8))(v32, v40);
  v42 = v62;
  v43 = v63;
  v44 = v64;
  (*(v63 + 104))(v62, enum case for WidgetBackgroundStyle.blur(_:), v64);
  v66 = v41;
  v67 = v38;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v55;
  v47 = v58;
  sub_10006C25C();
  (*(v43 + 8))(v42, v44);
  (*(v59 + 8))(v39, v47);
  v66 = v47;
  v67 = v45;
  swift_getOpaqueTypeConformance2();
  v48 = v60;
  sub_10006C23C();
  return (*(v61 + 8))(v46, v48);
}

uint64_t sub_100018520(uint64_t a1)
{
  v2 = sub_100003500(&qword_100089988, &qword_10007A9D8);
  __chkstk_darwin(v2 - 8);
  v4 = (&v12 - v3);
  v5 = type metadata accessor for NonNumericWidgetView(0);
  __chkstk_darwin(v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *(a1 + *(type metadata accessor for DateTimeEntry(0) + 24));
  v8 = sub_100059A50();
  v10 = v9;
  sub_1000489E0(v4);
  sub_1000489FC(a1, v8, v10 & 1, v4, v7);
  type metadata accessor for ClockWidgetEnvironmentObject(0);
  sub_100067C04(3);
  sub_100011AA0(&qword_100089268, type metadata accessor for NonNumericWidgetView, &unk_10007C280);
  sub_100011AA0(&qword_100089220, type metadata accessor for ClockWidgetEnvironmentObject, &unk_10007D7D8);
  sub_10006C64C();

  return sub_10001B9F0(v7, type metadata accessor for NonNumericWidgetView);
}

uint64_t sub_100018700@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v1 = sub_10006C9FC();
  v63 = *(v1 - 8);
  v64 = v1;
  __chkstk_darwin(v1);
  v62 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003500(&qword_100089278, &qword_100079F98);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v50 - v5;
  v52 = sub_100003500(&qword_100089280, &qword_100079FA0);
  v54 = *(v52 - 8);
  __chkstk_darwin(v52);
  v8 = &v50 - v7;
  v9 = sub_100003500(&qword_100089288, &qword_100079FA8);
  v10 = *(v9 - 8);
  v56 = v9;
  v57 = v10;
  __chkstk_darwin(v9);
  v51 = &v50 - v11;
  v12 = sub_100003500(&qword_100089290, &qword_100079FB0);
  v13 = *(v12 - 8);
  v58 = v12;
  v59 = v13;
  __chkstk_darwin(v12);
  v53 = &v50 - v14;
  v15 = sub_100003500(&qword_100089298, &qword_100079FB8);
  v16 = *(v15 - 8);
  v60 = v15;
  v61 = v16;
  __chkstk_darwin(v15);
  v55 = &v50 - v17;
  type metadata accessor for DateTimeProvider();
  v70 = sub_10000A300();
  sub_100003500(&qword_1000892A0, &qword_100079FC0);
  v18 = type metadata accessor for SquareWidgetView(255);
  v19 = type metadata accessor for ClockWidgetEnvironmentObject(255);
  v20 = sub_100011AA0(&qword_1000892A8, type metadata accessor for SquareWidgetView, &unk_10007C2D0);
  v21 = sub_100011AA0(&qword_100089220, type metadata accessor for ClockWidgetEnvironmentObject, &unk_10007D7D8);
  v66 = v18;
  v67 = v19;
  v68 = v20;
  v69 = v21;
  swift_getOpaqueTypeConformance2();
  sub_100011AA0(&qword_100089228, type metadata accessor for DateTimeProvider, &unk_10007AA60);
  sub_10006CA5C();
  sub_10006C14C();
  v22 = sub_10006C59C();
  v24 = v23;
  LOBYTE(v20) = v25;
  v26 = sub_100011308(&qword_1000892B0, &qword_100089278, &qword_100079F98, &protocol conformance descriptor for StaticConfiguration<A>);
  sub_10006C24C();
  sub_1000070DC(v22, v24, v20 & 1);

  (*(v4 + 8))(v6, v3);
  sub_100003500(&qword_100088A38, &unk_100079E90);
  v27 = sub_10006CA0C();
  v28 = *(v27 - 8);
  v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100079E30;
  (*(v28 + 104))(v30 + v29, enum case for WidgetFamily.systemSmall(_:), v27);
  v66 = v3;
  v67 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v51;
  v33 = v52;
  sub_10006C22C();

  (*(v54 + 8))(v8, v33);
  sub_10006C14C();
  v34 = sub_10006C59C();
  v36 = v35;
  LOBYTE(v8) = v37;
  v66 = v33;
  v67 = OpaqueTypeConformance2;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = v53;
  v40 = v56;
  sub_10006C21C();
  sub_1000070DC(v34, v36, v8 & 1);

  v41 = v40;
  (*(v57 + 8))(v32, v40);
  v42 = v62;
  v43 = v63;
  v44 = v64;
  (*(v63 + 104))(v62, enum case for WidgetBackgroundStyle.blur(_:), v64);
  v66 = v41;
  v67 = v38;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v55;
  v47 = v58;
  sub_10006C25C();
  (*(v43 + 8))(v42, v44);
  (*(v59 + 8))(v39, v47);
  v66 = v47;
  v67 = v45;
  swift_getOpaqueTypeConformance2();
  v48 = v60;
  sub_10006C23C();
  return (*(v61 + 8))(v46, v48);
}

uint64_t sub_100018FB4(uint64_t a1)
{
  v2 = sub_100003500(&qword_100089988, &qword_10007A9D8);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for SquareWidgetView(0);
  __chkstk_darwin(v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *(a1 + *(type metadata accessor for DateTimeEntry(0) + 24));
  v8 = sub_100059A50();
  v10 = v9;
  sub_100059A90();
  sub_1000495A4(a1, v8, v10 & 1, v4, v7);
  type metadata accessor for ClockWidgetEnvironmentObject(0);
  sub_100067C04(4);
  sub_100011AA0(&qword_1000892A8, type metadata accessor for SquareWidgetView, &unk_10007C2D0);
  sub_100011AA0(&qword_100089220, type metadata accessor for ClockWidgetEnvironmentObject, &unk_10007D7D8);
  sub_10006C64C();

  return sub_10001B9F0(v7, type metadata accessor for SquareWidgetView);
}

uint64_t sub_100019194@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v1 = sub_10006C9FC();
  v63 = *(v1 - 8);
  v64 = v1;
  __chkstk_darwin(v1);
  v62 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003500(&qword_1000892B8, &qword_100079FC8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v50 - v5;
  v52 = sub_100003500(&qword_1000892C0, &qword_100079FD0);
  v54 = *(v52 - 8);
  __chkstk_darwin(v52);
  v8 = &v50 - v7;
  v9 = sub_100003500(&qword_1000892C8, &qword_100079FD8);
  v10 = *(v9 - 8);
  v56 = v9;
  v57 = v10;
  __chkstk_darwin(v9);
  v51 = &v50 - v11;
  v12 = sub_100003500(&qword_1000892D0, &qword_100079FE0);
  v13 = *(v12 - 8);
  v58 = v12;
  v59 = v13;
  __chkstk_darwin(v12);
  v53 = &v50 - v14;
  v15 = sub_100003500(&qword_1000892D8, &qword_100079FE8);
  v16 = *(v15 - 8);
  v60 = v15;
  v61 = v16;
  __chkstk_darwin(v15);
  v55 = &v50 - v17;
  type metadata accessor for DateTimeProvider();
  v70 = sub_10000A300();
  sub_100003500(&qword_1000892E0, &qword_100079FF0);
  v18 = type metadata accessor for DigitalClockWidgetView(255);
  v19 = type metadata accessor for ClockWidgetEnvironmentObject(255);
  v20 = sub_100011AA0(&qword_1000892E8, type metadata accessor for DigitalClockWidgetView, &unk_10007C1E0);
  v21 = sub_100011AA0(&qword_100089220, type metadata accessor for ClockWidgetEnvironmentObject, &unk_10007D7D8);
  v66 = v18;
  v67 = v19;
  v68 = v20;
  v69 = v21;
  swift_getOpaqueTypeConformance2();
  sub_100011AA0(&qword_100089228, type metadata accessor for DateTimeProvider, &unk_10007AA60);
  sub_10006CA5C();
  sub_10006C14C();
  v22 = sub_10006C59C();
  v24 = v23;
  LOBYTE(v20) = v25;
  v26 = sub_100011308(&qword_1000892F0, &qword_1000892B8, &qword_100079FC8, &protocol conformance descriptor for StaticConfiguration<A>);
  sub_10006C24C();
  sub_1000070DC(v22, v24, v20 & 1);

  (*(v4 + 8))(v6, v3);
  sub_100003500(&qword_100088A38, &unk_100079E90);
  v27 = sub_10006CA0C();
  v28 = *(v27 - 8);
  v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100079E30;
  (*(v28 + 104))(v30 + v29, enum case for WidgetFamily.systemSmall(_:), v27);
  v66 = v3;
  v67 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v51;
  v33 = v52;
  sub_10006C22C();

  (*(v54 + 8))(v8, v33);
  sub_10006C14C();
  v34 = sub_10006C59C();
  v36 = v35;
  LOBYTE(v8) = v37;
  v66 = v33;
  v67 = OpaqueTypeConformance2;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = v53;
  v40 = v56;
  sub_10006C21C();
  sub_1000070DC(v34, v36, v8 & 1);

  v41 = v40;
  (*(v57 + 8))(v32, v40);
  v42 = v62;
  v43 = v63;
  v44 = v64;
  (*(v63 + 104))(v62, enum case for WidgetBackgroundStyle.blur(_:), v64);
  v66 = v41;
  v67 = v38;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v55;
  v47 = v58;
  sub_10006C25C();
  (*(v43 + 8))(v42, v44);
  (*(v59 + 8))(v39, v47);
  v66 = v47;
  v67 = v45;
  swift_getOpaqueTypeConformance2();
  v48 = v60;
  sub_10006C23C();
  return (*(v61 + 8))(v46, v48);
}

uint64_t sub_100019A50(uint64_t a1)
{
  v2 = sub_100003500(&qword_100089988, &qword_10007A9D8);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for DigitalClockWidgetView(0);
  __chkstk_darwin(v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + *(type metadata accessor for DateTimeEntry(0) + 24));
  v9 = sub_100059A50();
  v11 = v10;
  sub_100059A90();
  sub_100047D50(v8, v9, v11 & 1, v4, v7);
  type metadata accessor for ClockWidgetEnvironmentObject(0);
  sub_100067C04(0);
  sub_100011AA0(&qword_1000892E8, type metadata accessor for DigitalClockWidgetView, &unk_10007C1E0);
  sub_100011AA0(&qword_100089220, type metadata accessor for ClockWidgetEnvironmentObject, &unk_10007D7D8);
  sub_10006C64C();

  return sub_10001B9F0(v7, type metadata accessor for DigitalClockWidgetView);
}

uint64_t sub_100019C30@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = sub_100003500(&qword_1000892F8, &qword_100079FF8);
  v37 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v37 - v2;
  v4 = sub_100003500(&qword_100089300, &qword_10007A000);
  v5 = *(v4 - 8);
  v39 = v4;
  v40 = v5;
  __chkstk_darwin(v4);
  v7 = &v37 - v6;
  v8 = sub_100003500(&qword_100089308, &qword_10007A008);
  v9 = *(v8 - 8);
  v41 = v8;
  v42 = v9;
  __chkstk_darwin(v8);
  v38 = &v37 - v10;
  sub_1000165F4(0, &qword_1000890D0, ClocksSingleIntent_ptr);
  type metadata accessor for WorldClockSingleProvider();
  v48 = sub_10000E4B4();
  sub_100003500(&qword_100089310, &qword_10007A010);
  v11 = sub_100007094(&qword_100089318, &qword_10007A018);
  v12 = type metadata accessor for ClockWidgetEnvironmentObject(255);
  v13 = sub_100007094(&qword_100089320, &qword_10007A020);
  v14 = sub_10001A7B0();
  v44 = v13;
  v45 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = sub_100011AA0(&qword_100089220, type metadata accessor for ClockWidgetEnvironmentObject, &unk_10007D7D8);
  v44 = v11;
  v45 = v12;
  v46 = OpaqueTypeConformance2;
  v47 = v16;
  swift_getOpaqueTypeConformance2();
  sub_100011AA0(&qword_1000890E0, type metadata accessor for WorldClockSingleProvider, &unk_1000799D0);
  sub_10006CA4C();
  sub_10006C14C();
  v17 = sub_10006C59C();
  v19 = v18;
  v21 = v20;
  v22 = sub_100011308(&qword_100089338, &qword_1000892F8, &qword_100079FF8, &protocol conformance descriptor for IntentConfiguration<A, B>);
  sub_10006C24C();
  sub_1000070DC(v17, v19, v21 & 1);

  (*(v37 + 8))(v3, v1);
  sub_100003500(&qword_100088A38, &unk_100079E90);
  v23 = sub_10006CA0C();
  v24 = *(v23 - 8);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100079E30;
  (*(v24 + 104))(v26 + v25, enum case for WidgetFamily.accessoryCircular(_:), v23);
  v44 = v1;
  v45 = v22;
  v27 = swift_getOpaqueTypeConformance2();
  v29 = v38;
  v28 = v39;
  sub_10006C22C();

  v30 = v28;
  (*(v40 + 8))(v7, v28);
  sub_10006C14C();
  v31 = sub_10006C59C();
  v33 = v32;
  LOBYTE(v1) = v34;
  v44 = v30;
  v45 = v27;
  swift_getOpaqueTypeConformance2();
  v35 = v41;
  sub_10006C21C();
  sub_1000070DC(v31, v33, v1 & 1);

  return (*(v42 + 8))(v29, v35);
}

uint64_t sub_10001A288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_100003500(&qword_100088B80, &qword_100079930);
  __chkstk_darwin(v3 - 8);
  v5 = &v38 - v4;
  v6 = sub_100003500(&qword_100088B58, &qword_100079D00);
  __chkstk_darwin(v6 - 8);
  v8 = &v38 - v7;
  v9 = type metadata accessor for WorldClockEntry(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ClockCircularAnalogueComplication(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003500(&qword_100089320, &qword_10007A020);
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  v39 = sub_100003500(&qword_100089318, &qword_10007A018);
  v18 = *(v39 - 8);
  __chkstk_darwin(v39);
  v20 = &v38 - v19;
  sub_10001B768(a1, v11, type metadata accessor for WorldClockEntry);
  sub_100020F9C(v43);
  *(&v45 + 1) = &type metadata for AnalogueCircularDimensions;
  *&v46 = &off_100086690;
  v21 = swift_allocObject();
  *&v44 = v21;
  v22 = v43[1];
  v21[1] = v43[0];
  v21[2] = v22;
  v23 = v43[3];
  v21[3] = v43[2];
  v21[4] = v23;
  sub_100059A94();
  LOBYTE(a1) = sub_100001CF8();
  v24 = sub_100001CF8();
  v25 = sub_100001CF8();
  sub_10004CD00(v11, v8, &v44, a1 & 1, v24 & 1, v25 & 1, v14);
  sub_10006C93C();
  v26 = 1;
  sub_10006BF6C();
  sub_10001F50C(v14, v17, type metadata accessor for ClockCircularAnalogueComplication);
  v27 = &v17[*(v15 + 36)];
  v28 = v49;
  *(v27 + 4) = v48;
  *(v27 + 5) = v28;
  *(v27 + 6) = v50;
  v29 = v45;
  *v27 = v44;
  *(v27 + 1) = v29;
  v30 = v47;
  *(v27 + 2) = v46;
  *(v27 + 3) = v30;
  v31 = [objc_opt_self() widgetURL];
  if (v31)
  {
    v32 = v31;
    sub_10006B8EC();

    v26 = 0;
  }

  v33 = sub_10006B90C();
  (*(*(v33 - 8) + 56))(v5, v26, 1, v33);
  v34 = sub_10001A7B0();
  sub_10006C60C();
  sub_100009204(v5, &qword_100088B80, &qword_100079930);
  sub_100009204(v17, &qword_100089320, &qword_10007A020);
  type metadata accessor for ClockWidgetEnvironmentObject(0);
  v35 = sub_100067BFC();
  sub_100067C04(v35);
  v41 = v15;
  v42 = v34;
  swift_getOpaqueTypeConformance2();
  sub_100011AA0(&qword_100089220, type metadata accessor for ClockWidgetEnvironmentObject, &unk_10007D7D8);
  v36 = v39;
  sub_10006C64C();

  return (*(v18 + 8))(v20, v36);
}

unint64_t sub_10001A7B0()
{
  result = qword_100089328;
  if (!qword_100089328)
  {
    sub_100007094(&qword_100089320, &qword_10007A020);
    sub_100011AA0(&qword_100089330, type metadata accessor for ClockCircularAnalogueComplication, &unk_10007C370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089328);
  }

  return result;
}

uint64_t sub_10001A878(unsigned int *a1)
{
  sub_100003500(&qword_100088A38, &unk_100079E90);
  v2 = sub_10006CA0C();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100079E30;
  (*(v3 + 104))(v5 + v4, *a1, v2);
  return v5;
}

uint64_t sub_10001A960@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v62 = sub_100003500(&qword_100089340, &qword_10007A028);
  v64 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = &v48 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v54 = &v48 - v3;
  v4 = type metadata accessor for CityWidgetDigital(0);
  __chkstk_darwin(v4 - 8);
  v60 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = (&v48 - v7);
  v9 = type metadata accessor for WorldClockWidgetMulti(0);
  __chkstk_darwin(v9 - 8);
  v59 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = (&v48 - v12);
  v53 = sub_100003500(&qword_100089348, &qword_10007A030);
  v63 = *(v53 - 8);
  __chkstk_darwin(v53);
  v57 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v48 - v16;
  v58 = sub_100003500(&qword_100089350, &qword_10007A038);
  v65 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v48 - v20;
  v22 = sub_100003500(&qword_100089358, &qword_10007A040);
  v49 = v22;
  v51 = *(v22 - 8);
  v23 = v51;
  __chkstk_darwin(v22);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v48 - v27;
  sub_10001B0B8();
  v50 = v28;
  sub_10006C20C();
  sub_100003500(&qword_100089368, &qword_10007A048);
  v48 = v21;
  sub_10006BE8C();
  sub_10001B158();
  *v13 = swift_getKeyPath();
  sub_100003500(&qword_100088A40, &unk_100079800);
  swift_storeEnumTagMultiPayload();
  *v8 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  nullsub_1();
  v29 = v54;
  sub_10001B2E8(v54);
  v30 = *(v23 + 16);
  v52 = v25;
  v30(v25, v28, v22);
  v66[0] = v25;
  v31 = v56;
  (*(v65 + 16))(v56, v21, v58);
  v66[1] = v31;
  v32 = v63;
  v33 = v57;
  v34 = v53;
  (*(v63 + 16))(v57, v17, v53);
  v66[3] = v33;
  v35 = v59;
  sub_10001B768(v13, v59, type metadata accessor for WorldClockWidgetMulti);
  v66[4] = v35;
  v36 = v60;
  sub_10001B768(v8, v60, type metadata accessor for CityWidgetDigital);
  v66[5] = v36;
  v37 = v64;
  v38 = v61;
  v39 = v62;
  v40 = v29;
  (*(v64 + 16))(v61, v29, v62);
  v66[8] = v38;
  sub_10001B7D0(v66);
  v41 = *(v37 + 8);
  v64 = v37 + 8;
  v41(v40, v39);
  sub_10001B9F0(v8, type metadata accessor for CityWidgetDigital);
  sub_10001B9F0(v13, type metadata accessor for WorldClockWidgetMulti);
  v42 = *(v32 + 8);
  v63 = v32 + 8;
  v42(v17, v34);
  v43 = *(v65 + 8);
  v65 += 8;
  v44 = v58;
  v43(v48, v58);
  v45 = *(v51 + 8);
  v46 = v49;
  v45(v50, v49);
  v41(v61, v62);
  sub_10001B9F0(v60, type metadata accessor for CityWidgetDigital);
  sub_10001B9F0(v59, type metadata accessor for WorldClockWidgetMulti);
  v42(v57, v34);
  v43(v56, v44);
  return (v45)(v52, v46);
}

uint64_t sub_10001B074(__n128 a1)
{
  sub_10001B0B8();

  return sub_10006C20C();
}

unint64_t sub_10001B0B8()
{
  result = qword_100089360;
  if (!qword_100089360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089360);
  }

  return result;
}

uint64_t sub_10001B10C()
{
  sub_100003500(&qword_100089368, &qword_10007A048);

  return sub_10006BE8C();
}

uint64_t sub_10001B158()
{
  v0 = sub_100003500(&qword_100089370, &qword_10007A050);
  __chkstk_darwin(v0);
  v2 = &v10 - v1;
  v3 = type metadata accessor for WorldClockWidgetSingle(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = (&v10 - v7);
  *v8 = swift_getKeyPath();
  sub_100003500(&qword_100088A40, &unk_100079800);
  swift_storeEnumTagMultiPayload();
  sub_10001B768(v8, v5, type metadata accessor for WorldClockWidgetSingle);
  sub_10001B768(v5, v2, type metadata accessor for WorldClockWidgetSingle);
  sub_10006BE8C();
  sub_10001B9F0(v8, type metadata accessor for WorldClockWidgetSingle);
  return sub_10001B9F0(v5, type metadata accessor for WorldClockWidgetSingle);
}

uint64_t sub_10001B2E8@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v48 = sub_100003500(&qword_100089378, &qword_10007A058);
  __chkstk_darwin(v48);
  v47 = &v35 - v1;
  v46 = sub_100003500(&qword_100089380, &qword_10007A060);
  v50 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v52 = &v35 - v4;
  v5 = sub_100003500(&qword_100089388, &qword_10007A068);
  v36 = v5;
  v41 = *(v5 - 8);
  v6 = v41;
  __chkstk_darwin(v5);
  v51 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v35 - v9;
  v11 = sub_100003500(&qword_100089390, &qword_10007A070);
  v44 = *(v11 - 8);
  v12 = v44;
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v35 - v16;
  sub_10001BAA8();
  v43 = v17;
  sub_10006C29C();
  sub_10001BAFC();
  v40 = v10;
  sub_10006C29C();
  sub_10001BB50();
  v18 = v52;
  sub_10006C29C();
  v38 = *(v12 + 16);
  v39 = v11;
  v19 = v14;
  v42 = v14;
  v38(v14, v17, v11);
  v37 = *(v6 + 16);
  v20 = v51;
  v37(v51, v10, v5);
  v21 = *(v50 + 16);
  v22 = v45;
  v23 = v18;
  v24 = v46;
  v21(v45, v23, v46);
  v25 = v47;
  v38(v47, v19, v11);
  v26 = v48;
  v27 = v20;
  v28 = v36;
  v37(&v25[*(v48 + 48)], v27, v36);
  v21(&v25[*(v26 + 64)], v22, v24);
  sub_10006BE8C();
  v29 = *(v50 + 8);
  v29(v52, v24);
  v30 = *(v41 + 8);
  v31 = v28;
  v30(v40, v28);
  v32 = *(v44 + 8);
  v33 = v39;
  v32(v43, v39);
  v29(v22, v24);
  v30(v51, v31);
  return (v32)(v42, v33);
}

uint64_t sub_10001B768(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001B7D0(uint64_t *a1)
{
  v2 = sub_100003500(&qword_100089980, &qword_10007A9D0);
  __chkstk_darwin(v2);
  v4 = &v17 - v3;
  v5 = *a1;
  v6 = sub_100003500(&qword_100089358, &qword_10007A040);
  (*(*(v6 - 8) + 16))(v4, v5, v6);
  v7 = v2[12];
  v8 = a1[1];
  v9 = sub_100003500(&qword_100089350, &qword_10007A038);
  (*(*(v9 - 8) + 16))(&v4[v7], v8, v9);
  v10 = v2[20];
  v11 = a1[3];
  v12 = sub_100003500(&qword_100089348, &qword_10007A030);
  (*(*(v12 - 8) + 16))(&v4[v10], v11, v12);
  sub_10001B768(a1[4], &v4[v2[24]], type metadata accessor for WorldClockWidgetMulti);
  sub_10001B768(a1[5], &v4[v2[28]], type metadata accessor for CityWidgetDigital);
  v13 = v2[40];
  v14 = a1[8];
  v15 = sub_100003500(&qword_100089340, &qword_10007A028);
  (*(*(v15 - 8) + 16))(&v4[v13], v14, v15);
  return sub_10006BE8C();
}

uint64_t sub_10001B9F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001BA70(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10001BAA8()
{
  result = qword_100089398;
  if (!qword_100089398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089398);
  }

  return result;
}

unint64_t sub_10001BAFC()
{
  result = qword_1000893A0;
  if (!qword_1000893A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000893A0);
  }

  return result;
}

unint64_t sub_10001BB50()
{
  result = qword_1000893A8;
  if (!qword_1000893A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000893A8);
  }

  return result;
}

unint64_t sub_10001BBD8()
{
  result = qword_1000893B0;
  if (!qword_1000893B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000893B0);
  }

  return result;
}

uint64_t sub_10001BCC0@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_10006B8CC();
  v32 = *(v1 - 8);
  v33 = v1;
  __chkstk_darwin(v1);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003500(&qword_1000893B8, &qword_10007A078);
  v5 = *(v4 - 8);
  v26 = v4;
  v27 = v5;
  __chkstk_darwin(v4);
  v7 = &v26 - v6;
  v8 = sub_100003500(&qword_1000893C0, &qword_10007A080);
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v12 = sub_100003500(&qword_1000893C8, &qword_10007A088);
  v13 = *(v12 - 8);
  v30 = v12;
  v31 = v13;
  __chkstk_darwin(v12);
  v15 = &v26 - v14;
  swift_beginAccess();

  sub_100003500(&qword_1000893D0, &qword_10007A090);
  v16 = sub_100007094(&qword_1000893D8, &qword_10007A098);
  v17 = sub_100011308(&qword_1000893E0, &qword_1000893D8, &qword_10007A098, &protocol conformance descriptor for ControlWidgetButton<A, B, C>);
  v35 = v16;
  v36 = v17;
  swift_getOpaqueTypeConformance2();
  sub_10006CAEC();
  sub_10006B8AC();
  v18 = sub_100011308(&qword_1000893E8, &qword_1000893B8, &qword_10007A078, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v19 = v26;
  sub_10006C2EC();
  v20 = v33;
  v21 = *(v32 + 8);
  v21(v3, v33);
  (*(v27 + 8))(v7, v19);
  sub_10006B8AC();
  v35 = v19;
  v36 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v28;
  sub_10006C2DC();
  v21(v3, v20);
  (*(v29 + 8))(v11, v23);
  v35 = v23;
  v36 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v24 = v30;
  sub_10006C2FC();
  return (*(v31 + 8))(v15, v24);
}

uint64_t sub_10001C1D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10006C7FC();
  *a1 = result;
  return result;
}

uint64_t sub_10001C298@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_10006B8CC();
  v32 = *(v1 - 8);
  v33 = v1;
  __chkstk_darwin(v1);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003500(&qword_1000893B8, &qword_10007A078);
  v5 = *(v4 - 8);
  v26 = v4;
  v27 = v5;
  __chkstk_darwin(v4);
  v7 = &v26 - v6;
  v8 = sub_100003500(&qword_1000893C0, &qword_10007A080);
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v12 = sub_100003500(&qword_1000893C8, &qword_10007A088);
  v13 = *(v12 - 8);
  v30 = v12;
  v31 = v13;
  __chkstk_darwin(v12);
  v15 = &v26 - v14;
  swift_beginAccess();

  sub_100003500(&qword_1000893D0, &qword_10007A090);
  v16 = sub_100007094(&qword_1000893D8, &qword_10007A098);
  v17 = sub_100011308(&qword_1000893E0, &qword_1000893D8, &qword_10007A098, &protocol conformance descriptor for ControlWidgetButton<A, B, C>);
  v35 = v16;
  v36 = v17;
  swift_getOpaqueTypeConformance2();
  sub_10006CAEC();
  sub_10006B8AC();
  v18 = sub_100011308(&qword_1000893E8, &qword_1000893B8, &qword_10007A078, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v19 = v26;
  sub_10006C2EC();
  v20 = v33;
  v21 = *(v32 + 8);
  v21(v3, v33);
  (*(v27 + 8))(v7, v19);
  sub_10006B8AC();
  v35 = v19;
  v36 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v28;
  sub_10006C2DC();
  v21(v3, v20);
  (*(v29 + 8))(v11, v23);
  v35 = v23;
  v36 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v24 = v30;
  sub_10006C2FC();
  return (*(v31 + 8))(v15, v24);
}

uint64_t sub_10001C750(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = sub_100003500(&qword_1000893D8, &qword_10007A098);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v8 - v5;
  v8[1] = sub_100023734(v2);
  sub_100003500(&qword_100089968, &qword_10007A9C8);
  sub_100011308(&qword_100089970, &qword_100089968, &qword_10007A9C8, &protocol conformance descriptor for Label<A, B>);
  sub_10001F480();
  sub_10006C97C();
  sub_10002AC48();
  sub_100011308(&qword_1000893E0, &qword_1000893D8, &qword_10007A098, &protocol conformance descriptor for ControlWidgetButton<A, B, C>);

  sub_10006C27C();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10001C98C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10006C7FC();
  *a1 = result;
  return result;
}

uint64_t sub_10001CA54@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_10006B8CC();
  v32 = *(v1 - 8);
  v33 = v1;
  __chkstk_darwin(v1);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003500(&qword_1000893B8, &qword_10007A078);
  v5 = *(v4 - 8);
  v26 = v4;
  v27 = v5;
  __chkstk_darwin(v4);
  v7 = &v26 - v6;
  v8 = sub_100003500(&qword_1000893C0, &qword_10007A080);
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v12 = sub_100003500(&qword_1000893C8, &qword_10007A088);
  v13 = *(v12 - 8);
  v30 = v12;
  v31 = v13;
  __chkstk_darwin(v12);
  v15 = &v26 - v14;
  swift_beginAccess();

  sub_100003500(&qword_1000893D0, &qword_10007A090);
  v16 = sub_100007094(&qword_1000893D8, &qword_10007A098);
  v17 = sub_100011308(&qword_1000893E0, &qword_1000893D8, &qword_10007A098, &protocol conformance descriptor for ControlWidgetButton<A, B, C>);
  v35 = v16;
  v36 = v17;
  swift_getOpaqueTypeConformance2();
  sub_10006CAEC();
  sub_10006B8AC();
  v18 = sub_100011308(&qword_1000893E8, &qword_1000893B8, &qword_10007A078, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v19 = v26;
  sub_10006C2EC();
  v20 = v33;
  v21 = *(v32 + 8);
  v21(v3, v33);
  (*(v27 + 8))(v7, v19);
  sub_10006B8AC();
  v35 = v19;
  v36 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v28;
  sub_10006C2DC();
  v21(v3, v20);
  (*(v29 + 8))(v11, v23);
  v35 = v23;
  v36 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v24 = v30;
  sub_10006C2FC();
  return (*(v31 + 8))(v15, v24);
}

uint64_t sub_10001CF6C@<X0>(uint64_t a3@<X8>)
{
  sub_10006C14C();
  result = sub_10006C59C();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_10001CFCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10006C7FC();
  *a1 = result;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10001BBD8();
  sub_10006BECC();
  return 0;
}

uint64_t sub_10001D470(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003500(&qword_100088A48, &unk_10007B6A0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10001D4FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003500(&qword_100088A48, &unk_10007B6A0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_10001D578(uint64_t a1)
{
  sub_100008BA4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10001D5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WorldClockEntry(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100003500(&qword_100088A48, &unk_10007B6A0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10001D708(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for WorldClockEntry(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100003500(&qword_100088A48, &unk_10007B6A0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_10001D810(uint64_t a1)
{
  type metadata accessor for WorldClockEntry(319);
  if (v1 <= 0x3F)
  {
    sub_100008BA4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10001D964()
{
  sub_100007094(&qword_1000890C8, &qword_100079E88);
  sub_100007094(&qword_1000890C0, &qword_100079E80);
  sub_100007094(&qword_1000890B8, &qword_100079E78);
  sub_100011308(&qword_1000890E8, &qword_1000890B8, &qword_100079E78, &protocol conformance descriptor for IntentConfiguration<A, B>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10001DAC0()
{
  result = qword_100089880;
  if (!qword_100089880)
  {
    sub_100007094(&qword_100089888, &qword_10007A978);
    type metadata accessor for CityInlineComplication(255);
    sub_100011AA0(&qword_100089890, type metadata accessor for CityInlineComplication, &unk_10007C410);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for WorldClockWidgetViewSingle(255);
    type metadata accessor for ClockWidgetEnvironmentObject(255);
    sub_100011AA0(&qword_100089898, type metadata accessor for WorldClockWidgetViewSingle, &unk_10007BAF0);
    sub_100011AA0(&qword_100089220, type metadata accessor for ClockWidgetEnvironmentObject, &unk_10007D7D8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089880);
  }

  return result;
}

uint64_t sub_10001DC64()
{
  sub_100007094(&qword_100089100, &qword_100079EB0);
  sub_100007094(&qword_1000890F8, &qword_100079EA8);
  sub_100007094(&qword_1000890F0, &qword_100079EA0);
  sub_100011308(&qword_100089110, &qword_1000890F0, &qword_100079EA0, &protocol conformance descriptor for IntentConfiguration<A, B>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10001DD80()
{
  result = qword_1000898A0;
  if (!qword_1000898A0)
  {
    sub_100007094(&qword_1000898A8, &qword_10007A980);
    type metadata accessor for WorldClockWidgetViewSingle(255);
    type metadata accessor for ClockWidgetEnvironmentObject(255);
    sub_100011AA0(&qword_100089898, type metadata accessor for WorldClockWidgetViewSingle, &unk_10007BAF0);
    sub_100011AA0(&qword_100089220, type metadata accessor for ClockWidgetEnvironmentObject, &unk_10007D7D8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000898A0);
  }

  return result;
}

uint64_t sub_10001DEB4()
{
  sub_100007094(&qword_100089138, &qword_100079ED8);
  sub_100007094(&qword_100089130, &qword_100079ED0);
  sub_100007094(&qword_100089128, &qword_100079EC8);
  sub_100007094(&qword_100089120, &qword_100079EC0);
  sub_100007094(&qword_100089118, &qword_100079EB8);
  sub_100011308(&qword_100089148, &qword_100089118, &qword_100079EB8, &protocol conformance descriptor for IntentConfiguration<A, B>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001E04C()
{
  sub_100007094(&qword_100089170, &qword_100079F00);
  sub_100007094(&qword_100089168, &qword_100079EF8);
  sub_100007094(&qword_100089160, &qword_100079EF0);
  sub_100007094(&qword_100089158, &qword_100079EE8);
  sub_100007094(&qword_100089150, &qword_100079EE0);
  sub_100011308(&qword_100089180, &qword_100089150, &qword_100079EE0, &protocol conformance descriptor for IntentConfiguration<A, B>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001E1E4()
{
  sub_100007094(&qword_100089198, &qword_100079F18);
  sub_100007094(&qword_100089190, &qword_100079F10);
  sub_100007094(&qword_100089188, &qword_100079F08);
  sub_100011308(&qword_1000891A8, &qword_100089188, &qword_100079F08, &protocol conformance descriptor for IntentConfiguration<A, B>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10001E340()
{
  result = qword_1000898C0;
  if (!qword_1000898C0)
  {
    sub_100007094(&qword_1000898C8, &qword_10007A990);
    sub_10001E3CC();
    sub_10001E5A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000898C0);
  }

  return result;
}

unint64_t sub_10001E3CC()
{
  result = qword_1000898D0;
  if (!qword_1000898D0)
  {
    sub_100007094(&qword_1000898D8, &qword_10007A998);
    type metadata accessor for ClockRectangularComplication(255);
    sub_100011AA0(&qword_1000898E0, type metadata accessor for ClockRectangularComplication, &unk_10007BB40);
    swift_getOpaqueTypeConformance2();
    sub_10001E4B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000898D0);
  }

  return result;
}

unint64_t sub_10001E4B8()
{
  result = qword_1000898E8;
  if (!qword_1000898E8)
  {
    sub_100007094(&qword_1000898F0, &qword_10007A9A0);
    type metadata accessor for ClockCircularDigitalComplication(255);
    sub_100011AA0(&qword_1000898F8, type metadata accessor for ClockCircularDigitalComplication, &unk_10007C3C0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000898E8);
  }

  return result;
}

unint64_t sub_10001E5A4()
{
  result = qword_100089900;
  if (!qword_100089900)
  {
    sub_100007094(&qword_100089908, &qword_10007A9A8);
    sub_100011AA0(&qword_100089890, type metadata accessor for CityInlineComplication, &unk_10007C410);
    type metadata accessor for WorldClockWidgetViewSingle(255);
    type metadata accessor for ClockWidgetEnvironmentObject(255);
    sub_100011AA0(&qword_100089898, type metadata accessor for WorldClockWidgetViewSingle, &unk_10007BAF0);
    sub_100011AA0(&qword_100089220, type metadata accessor for ClockWidgetEnvironmentObject, &unk_10007D7D8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089900);
  }

  return result;
}

uint64_t sub_10001E718()
{
  sub_100007094(&qword_1000891C0, &qword_100079F30);
  sub_100007094(&qword_1000891B8, &qword_100079F28);
  sub_100007094(&qword_1000891B0, &qword_100079F20);
  sub_100011308(&qword_1000891E0, &qword_1000891B0, &qword_100079F20, &protocol conformance descriptor for IntentConfiguration<A, B>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001E874(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100007094(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001E8F0()
{
  result = qword_100089920;
  if (!qword_100089920)
  {
    sub_100007094(&qword_100089928, &qword_10007A9B8);
    type metadata accessor for WorldClockRectangularSummary(255);
    sub_100011AA0(&qword_100089930, type metadata accessor for WorldClockRectangularSummary, &unk_10007C320);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for WorldClockWidgetViewMulti(255);
    type metadata accessor for ClockWidgetEnvironmentObject(255);
    sub_100011AA0(&qword_100089938, type metadata accessor for WorldClockWidgetViewMulti, &unk_10007BB90);
    sub_100011AA0(&qword_100089220, type metadata accessor for ClockWidgetEnvironmentObject, &unk_10007D7D8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089920);
  }

  return result;
}

uint64_t sub_10001EA94()
{
  sub_100007094(&qword_100089208, &qword_100079F58);
  sub_100007094(&qword_100089200, &qword_100079F50);
  sub_100007094(&qword_1000891F8, &qword_100079F48);
  sub_100007094(&qword_1000891F0, &qword_100079F40);
  sub_100007094(&qword_1000891E8, &qword_100079F38);
  sub_100011308(&qword_100089230, &qword_1000891E8, &qword_100079F38, &protocol conformance descriptor for StaticConfiguration<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001EC2C()
{
  sub_100007094(&qword_100089258, &qword_100079F88);
  sub_100007094(&qword_100089250, &qword_100079F80);
  sub_100007094(&qword_100089248, &qword_100079F78);
  sub_100007094(&qword_100089240, &qword_100079F70);
  sub_100007094(&qword_100089238, &qword_100079F68);
  sub_100011308(&qword_100089270, &qword_100089238, &qword_100079F68, &protocol conformance descriptor for StaticConfiguration<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001EDC4()
{
  sub_100007094(&qword_100089298, &qword_100079FB8);
  sub_100007094(&qword_100089290, &qword_100079FB0);
  sub_100007094(&qword_100089288, &qword_100079FA8);
  sub_100007094(&qword_100089280, &qword_100079FA0);
  sub_100007094(&qword_100089278, &qword_100079F98);
  sub_100011308(&qword_1000892B0, &qword_100089278, &qword_100079F98, &protocol conformance descriptor for StaticConfiguration<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001EF5C()
{
  sub_100007094(&qword_1000892D8, &qword_100079FE8);
  sub_100007094(&qword_1000892D0, &qword_100079FE0);
  sub_100007094(&qword_1000892C8, &qword_100079FD8);
  sub_100007094(&qword_1000892C0, &qword_100079FD0);
  sub_100007094(&qword_1000892B8, &qword_100079FC8);
  sub_100011308(&qword_1000892F0, &qword_1000892B8, &qword_100079FC8, &protocol conformance descriptor for StaticConfiguration<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001F0F4()
{
  sub_100007094(&qword_100089308, &qword_10007A008);
  sub_100007094(&qword_100089300, &qword_10007A000);
  sub_100007094(&qword_1000892F8, &qword_100079FF8);
  sub_100011308(&qword_100089338, &qword_1000892F8, &qword_100079FF8, &protocol conformance descriptor for IntentConfiguration<A, B>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001F368()
{
  sub_100007094(&qword_1000893C8, &qword_10007A088);
  sub_100007094(&qword_1000893C0, &qword_10007A080);
  sub_100007094(&qword_1000893B8, &qword_10007A078);
  sub_100011308(&qword_1000893E8, &qword_1000893B8, &qword_10007A078, &protocol conformance descriptor for StaticControlConfiguration<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10001F480()
{
  result = qword_100089978;
  if (!qword_100089978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089978);
  }

  return result;
}

uint64_t sub_10001F4D4()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10001F50C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001F574(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003500(&qword_1000898F0, &qword_10007A9A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001F648@<X0>(uint64_t a2@<X8>)
{
  sub_10006BB6C();
  v3 = type metadata accessor for DateTimeEntry(0);
  result = sub_10006BD2C();
  *(a2 + *(v3 + 24)) = 1;
  return result;
}

uint64_t sub_10001F694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_10006BB7C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for DateTimeEntry(0);
  v10 = *(v9 + 20);
  v11 = sub_10006BD3C();
  result = (*(*(v11 - 8) + 32))(a4 + v10, a2, v11);
  *(a4 + *(v9 + 24)) = a3;
  return result;
}

uint64_t type metadata accessor for DateTimeEntry(uint64_t a1)
{
  result = qword_10008D970;
  if (!qword_10008D970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001F7AC(uint64_t a1, void (*a2)(char *))
{
  v3 = type metadata accessor for DateTimeEntry(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006BB6C();
  sub_10006BD2C();
  v6[*(v4 + 32)] = 0;
  a2(v6);
  return sub_10001F898(v6);
}

uint64_t sub_10001F854@<X0>(uint64_t a2@<X8>)
{
  sub_10006BB6C();
  v3 = type metadata accessor for DateTimeEntry(0);
  result = sub_10006BD2C();
  *(a2 + *(v3 + 24)) = 0;
  return result;
}

uint64_t sub_10001F898(uint64_t a1)
{
  v2 = type metadata accessor for DateTimeEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001F8F4(uint64_t a1, void (*a2)(char *))
{
  v3 = sub_10006CA9C();
  __chkstk_darwin(v3 - 8);
  v4 = sub_100003500(&qword_1000899E8, &qword_10007AA40);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  sub_100003500(&qword_1000899F0, qword_10007AA48);
  v8 = type metadata accessor for DateTimeEntry(0);
  v9 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100079E30;
  v11 = v10 + v9;
  sub_10006BB6C();
  sub_10006BD2C();
  *(v11 + *(v8 + 24)) = 0;
  sub_10006CA8C();
  sub_10001FF3C(&qword_1000899F8, type metadata accessor for DateTimeEntry, &unk_10007AAB8);
  sub_10006CAFC();
  a2(v7);
  (*(v5 + 8))(v7, v4);
  v12 = type metadata accessor for WidgetUtilities();
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_10006CD2C(20);

  v15 = 0xD000000000000012;
  v16 = 0x800000010006D740;
  v13 = sub_100027180();
  v17._countAndFlagsBits = sub_10002776C(v13);
  sub_10006CBBC(v17);

  (*(v12 + 80))(v15, v16);
}

uint64_t sub_10001FC84@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DateTimeEntry(0) + 20);
  v4 = sub_10006BD3C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_10001FD00(uint64_t a1)
{
  v3 = *(type metadata accessor for DateTimeEntry(0) + 20);
  v4 = sub_10006BD3C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_10001FDE8(char a1)
{
  result = type metadata accessor for DateTimeEntry(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

unint64_t sub_10001FE60()
{
  sub_10006CD2C(31);

  type metadata accessor for DateTimeEntry(0);
  sub_10006BD3C();
  sub_10001FF3C(&qword_100089A00, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
  v1._countAndFlagsBits = sub_10006CD9C();
  sub_10006CBBC(v1);

  return 0xD00000000000001DLL;
}

uint64_t sub_10001FF3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10001FFCC()
{
  sub_10006CD2C(31);

  sub_10006BD3C();
  sub_10001FF3C(&qword_100089A00, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
  v1._countAndFlagsBits = sub_10006CD9C();
  sub_10006CBBC(v1);

  return 0xD00000000000001DLL;
}

uint64_t sub_1000200DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10006BB7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_10006BD3C();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_10002020C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10006BB7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_10006BD3C();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100020314(uint64_t a1)
{
  result = sub_10006BB7C();
  if (v2 <= 0x3F)
  {
    result = sub_10006BD3C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

double sub_1000203A8@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = sub_100003500(&qword_100089B40, &qword_10007D480);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  sub_10006C3DC();
  v7 = enum case for Font.Design.default(_:);
  v8 = sub_10006C39C();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v6, v7, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  v10 = sub_10006C3EC();
  sub_100020928(v6);
  *(a1 + 8) = v10;
  result = 2.0;
  *(a1 + 16) = xmmword_10007AB50;
  *(a1 + 32) = xmmword_10007AB60;
  *(a1 + 48) = 0x3FF0000000000000;
  *a1 = a2;
  return result;
}

uint64_t sub_100020574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10006C1AC();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 16);
  v9(v8, a1, v4, v6);
  v10 = (*(v5 + 88))(v8, v4);
  if (v10 == enum case for ContentSizeCategory.extraSmall(_:) || v10 == enum case for ContentSizeCategory.small(_:) || v10 == enum case for ContentSizeCategory.medium(_:) || v10 == enum case for ContentSizeCategory.large(_:) || v10 == enum case for ContentSizeCategory.extraLarge(_:) || v10 == enum case for ContentSizeCategory.extraExtraLarge(_:) || v10 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:) || v10 == enum case for ContentSizeCategory.accessibilityMedium(_:) || v10 == enum case for ContentSizeCategory.accessibilityLarge(_:) || v10 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
  {
    return (v9)(a2, a1, v4);
  }

  if (v10 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) || v10 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
  {
    return (*(v5 + 104))(a2, enum case for ContentSizeCategory.accessibilityExtraLarge(_:), v4);
  }

  (v9)(a2, a1, v4);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100020798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10006C1AC();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:) || v11 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) || v11 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
  {
    return sub_10006C46C();
  }

  v14 = (*(a3 + 48))(a2, a3);
  (*(v7 + 8))(v10, v6);
  return v14;
}

uint64_t sub_100020928(uint64_t a1)
{
  v2 = sub_100003500(&qword_100089B40, &qword_10007D480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100020998(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

double sub_100020B64@<D0>(_OWORD *a1@<X8>)
{
  sub_100021944(v5);
  v2 = v5[1];
  *a1 = v5[0];
  a1[1] = v2;
  result = *&v6;
  v4 = v7;
  a1[2] = v6;
  a1[3] = v4;
  return result;
}

uint64_t sub_100020BA4()
{
  v0 = sub_100003500(&qword_100089B40, &qword_10007D480);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_10006C47C();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for Font.TextStyle.subheadline(_:), v3, v5);
  v8 = enum case for Font.Design.rounded(_:);
  v9 = sub_10006C39C();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v2, v8, v9);
  (*(v10 + 56))(v2, 0, 1, v9);
  sub_10006C3FC();
  sub_100020928(v2);
  (*(v4 + 8))(v7, v3);
  sub_10006C3CC();
  v11 = sub_10006C40C();

  return v11;
}

double sub_100020DA0@<D0>(double *a1@<X8>, double a2@<D0>)
{
  sub_100021944(v7);
  v4 = v7[1];
  *a1 = v7[0];
  *(a1 + 1) = v4;
  result = *&v8;
  v6 = v9;
  *(a1 + 2) = v8;
  *(a1 + 3) = v6;
  *a1 = a2;
  return result;
}

uint64_t sub_100020E50(uint64_t a1)
{
  v3 = sub_10006C1AC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:) || v8 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) || v8 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
  {
    return sub_10006C36C();
  }

  v11 = *(v1 + 8);
  v12 = *(v4 + 8);

  v12(v7, v3);
  return v11;
}

double sub_100020F9C@<D0>(_OWORD *a1@<X8>)
{
  sub_100021CAC(v5);
  v2 = v5[1];
  *a1 = v5[0];
  a1[1] = v2;
  result = *&v6;
  v4 = v7;
  a1[2] = v6;
  a1[3] = v4;
  return result;
}

double sub_100020FDC()
{
  v0 = sub_10000FD1C();
  swift_beginAccess();
  result = 56.0;
  if (*v0)
  {
    return 50.0;
  }

  return result;
}

uint64_t sub_100021034@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>, double a9@<D6>)
{
  *a2 = a3;
  *(a2 + 8) = result;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  *(a2 + 40) = a7;
  *(a2 + 48) = a8;
  *(a2 + 56) = a9;
  return result;
}

double sub_10002104C@<D0>(double *a1@<X8>, double a2@<D0>)
{
  sub_100021CAC(v7);
  v4 = v7[1];
  *a1 = v7[0];
  *(a1 + 1) = v4;
  result = *&v8;
  v6 = v9;
  *(a1 + 2) = v8;
  *(a1 + 3) = v6;
  *a1 = a2;
  return result;
}

uint64_t sub_1000210B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = sub_10006C1AC();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + 8);
  (*(v8 + 16))(v11, a1, v7, v9);
  v13 = (*(v8 + 88))(v11, v7);
  if (v13 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:) || v13 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) || v13 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
  {
    return a4();
  }

  v16 = *(v8 + 8);

  v16(v11, v7);
  return v12;
}

uint64_t sub_10002127C(uint64_t a1)
{
  v3 = sub_10006C1AC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:) || v8 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) || v8 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
  {
    return sub_10006C42C();
  }

  v11 = *(v1 + 8);
  v12 = *(v4 + 8);

  v12(v7, v3);
  return v11;
}

double sub_1000213C8@<D0>(uint64_t a1@<X8>)
{
  sub_100021B60(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_100021414(double (*a1)(__n128))
{
  v2 = sub_100003500(&qword_100089B40, &qword_10007D480);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  a1(v3);
  v6 = enum case for Font.Design.default(_:);
  v7 = sub_10006C39C();
  v8 = *(v7 - 8);
  (*(v8 + 104))(v5, v6, v7);
  (*(v8 + 56))(v5, 0, 1, v7);
  v9 = sub_10006C3EC();
  sub_100020928(v5);
  return v9;
}

uint64_t sub_100021544@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>)
{
  *a2 = a3;
  *(a2 + 8) = result;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  *(a2 + 40) = a7;
  *(a2 + 48) = a8;
  return result;
}

uint64_t sub_100021560(uint64_t a1)
{
  v3 = sub_10006C1AC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 8);
  (*(v4 + 16))(v7, a1, v3, v5);
  v9 = (*(v4 + 88))(v7, v3);
  if (v9 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:) || v9 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) || v9 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
  {
    return sub_10006C42C();
  }

  v12 = *(v4 + 8);

  v12(v7, v3);
  return v8;
}

double sub_100021714@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_10006C44C();
  *a1 = 0x4050000000000000;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_10007AB50;
  *(a1 + 32) = xmmword_10007AB70;
  result = 3.5;
  *(a1 + 48) = xmmword_10007AB80;
  *(a1 + 64) = 0x3FECCCCCCCCCCCCDLL;
  return result;
}

uint64_t sub_100021770@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>, double a9@<D6>, double a10@<D7>)
{
  *a2 = a3;
  *(a2 + 8) = result;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  *(a2 + 40) = a7;
  *(a2 + 48) = a8;
  *(a2 + 56) = a9;
  *(a2 + 64) = a10;
  return result;
}

double sub_10002178C@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *(a1 + 8) = sub_10006C44C();
  *(a1 + 16) = xmmword_10007AB50;
  *(a1 + 32) = xmmword_10007AB70;
  result = 3.5;
  *(a1 + 48) = xmmword_10007AB80;
  *(a1 + 64) = 0x3FECCCCCCCCCCCCDLL;
  *a1 = a2;
  return result;
}

uint64_t sub_1000217F4(uint64_t a1)
{
  v3 = sub_10006C1AC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 8);
  (*(v4 + 16))(v7, a1, v3, v5);
  v9 = (*(v4 + 88))(v7, v3);
  if (v9 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:) || v9 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) || v9 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
  {
    return sub_10006C46C();
  }

  v12 = *(v4 + 8);

  v12(v7, v3);
  return v8;
}

double sub_100021944@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_100003500(&qword_100089B40, &qword_10007D480);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_10006C47C();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, enum case for Font.TextStyle.subheadline(_:), v5, v7);
  v10 = enum case for Font.Design.rounded(_:);
  v11 = sub_10006C39C();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v4, v10, v11);
  (*(v12 + 56))(v4, 0, 1, v11);
  sub_10006C3FC();
  sub_100020928(v4);
  (*(v6 + 8))(v9, v5);
  sub_10006C3CC();
  v13 = sub_10006C40C();

  *a1 = 0x4061000000000000;
  *(a1 + 8) = v13;
  __asm { FMOV            V1.2D, #8.0 }

  *(a1 + 16) = xmmword_10007AB90;
  *(a1 + 32) = _Q1;
  result = 4.0;
  *(a1 + 48) = xmmword_10007ABA0;
  return result;
}

double sub_100021B60@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_100003500(&qword_100089B40, &qword_10007D480);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  sub_10006C3DC();
  v5 = enum case for Font.Design.default(_:);
  v6 = sub_10006C39C();
  v7 = *(v6 - 8);
  (*(v7 + 104))(v4, v5, v6);
  (*(v7 + 56))(v4, 0, 1, v6);
  v8 = sub_10006C3EC();
  sub_100020928(v4);
  *a1 = 0x4050000000000000;
  *(a1 + 8) = v8;
  result = 2.0;
  *(a1 + 16) = xmmword_10007AB50;
  *(a1 + 32) = xmmword_10007AB60;
  *(a1 + 48) = 0x3FF0000000000000;
  return result;
}

double sub_100021CAC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_100003500(&qword_100089B40, &qword_10007D480);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_10000FD1C();
  swift_beginAccess();
  if (*v5)
  {
    v6 = 50.0;
  }

  else
  {
    v6 = 56.0;
  }

  sub_10006C3CC();
  v7 = enum case for Font.Design.default(_:);
  v8 = sub_10006C39C();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v4, v7, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  v10 = sub_10006C3EC();
  sub_100020928(v4);
  *a1 = v6;
  *(a1 + 8) = v10;
  __asm { FMOV            V1.2D, #4.0 }

  *(a1 + 16) = xmmword_10007ABB0;
  *(a1 + 32) = _Q1;
  result = 2.0;
  *(a1 + 48) = xmmword_10007AB50;
  return result;
}

__n128 sub_100021E38(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100021E64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_100021EAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100021F0C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100021F28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_100021F70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100021FCC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100021FF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_100022038(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100022120(unsigned __int8 a1)
{
  sub_10006CD2C(16);

  v2 = 0xEA00000000006B63;
  v3 = 0x6F6C63646C726F77;
  v4 = 0xE500000000000000;
  v5 = 0x72656D6974;
  if (a1 != 2)
  {
    v5 = 0x63746177706F7473;
    v4 = 0xE900000000000068;
  }

  if (a1)
  {
    v3 = 0x6D72616C61;
    v2 = 0xE500000000000000;
  }

  if (a1 <= 1u)
  {
    v6._countAndFlagsBits = v3;
  }

  else
  {
    v6._countAndFlagsBits = v5;
  }

  if (a1 <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  v6._object = v7;
  sub_10006CBBC(v6);

  v9._countAndFlagsBits = 0x746C75616665643ALL;
  v9._object = 0xE800000000000000;
  sub_10006CBBC(v9);
  return 0x2D6B636F6C63;
}

uint64_t sub_100022224(unsigned __int8 a1)
{
  v1 = 0x6F6C63646C726F77;
  v2 = 0x72656D6974;
  if (a1 != 2)
  {
    v2 = 0x63746177706F7473;
  }

  if (a1)
  {
    v1 = 0x6D72616C61;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000222A0()
{
  v0 = sub_100003500(&qword_100089B48, &qword_10007ADA8);
  sub_1000263C4(v0, qword_10008FFB0);
  sub_100022560(v0, qword_10008FFB0);
  sub_100003500(&qword_100089C50, &qword_10007B330);
  v1 = *(sub_100003500(&qword_100089C58, &qword_10007B338) - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100079940;
  v5 = v4 + v3;
  *(v4 + v3) = 0;
  sub_100025760();
  sub_10006B6AC();
  *(v5 + v2) = 1;
  sub_10006B6AC();
  *(v5 + 2 * v2) = 2;
  sub_10006B6AC();
  *(v5 + 3 * v2) = 3;
  sub_10006B6AC();
  sub_100024AF8(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_10006B6BC();
}

uint64_t sub_1000224F0()
{
  if (qword_10008D980 != -1)
  {
    swift_once();
  }

  v0 = sub_100003500(&qword_100089B48, &qword_10007ADA8);

  return sub_100022560(v0, qword_10008FFB0);
}

uint64_t sub_100022560(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100022598@<X0>(uint64_t a1@<X8>)
{
  if (qword_10008D980 != -1)
  {
    swift_once();
  }

  v2 = sub_100003500(&qword_100089B48, &qword_10007ADA8);
  v3 = sub_100022560(v2, qword_10008FFB0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_100022664(uint64_t a1)
{
  if (qword_10008D980 != -1)
  {
    swift_once();
  }

  v2 = sub_100003500(&qword_100089B48, &qword_10007ADA8);
  v3 = sub_100022560(v2, qword_10008FFB0);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*sub_100022764(uint64_t a1))()
{
  if (qword_10008D980 != -1)
  {
    swift_once();
  }

  v1 = sub_100003500(&qword_100089B48, &qword_10007ADA8);
  sub_100022560(v1, qword_10008FFB0);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_100022808()
{
  v0 = sub_100003500(&qword_100089B58, &qword_10007ADB8);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_10006B8BC();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10006BC3C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10006CB5C();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10006B8CC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_10006B74C();
  sub_1000263C4(v10, qword_10008FFC8);
  sub_100022560(v10, qword_10008FFC8);
  sub_10006CB4C();
  sub_10006BC0C();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_10006B8DC();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_10006B73C();
}

uint64_t (*sub_100022B94(uint64_t a1, __n128 a2))()
{
  if (qword_10008D988 != -1)
  {
    swift_once();
  }

  v2 = sub_10006B74C();
  sub_100022560(v2, qword_10008FFC8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_100022C44(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006B63;
  v3 = 0x6F6C63646C726F77;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x72656D6974;
    }

    else
    {
      v5 = 0x63746177706F7473;
    }

    if (v4 == 2)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE900000000000068;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6D72616C61;
    }

    else
    {
      v5 = 0x6F6C63646C726F77;
    }

    if (v4)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEA00000000006B63;
    }
  }

  v7 = 0xE500000000000000;
  v8 = 0x72656D6974;
  if (a2 != 2)
  {
    v8 = 0x63746177706F7473;
    v7 = 0xE900000000000068;
  }

  if (a2)
  {
    v3 = 0x6D72616C61;
    v2 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_10006CDAC();
  }

  return v11 & 1;
}