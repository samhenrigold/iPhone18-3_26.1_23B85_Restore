uint64_t sub_100044F48@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = sub_10006BCDC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003500(&qword_1000887E8, &qword_1000795A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - v6;
  v8 = sub_100003500(&qword_100088BE0, &qword_10007B3C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_100003500(&qword_100089C70, &qword_10007B9C0);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  v14 = sub_10006B7EC();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 56))(v13, 1, 1, v1, v16);
  v19 = sub_10006BD3C();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  sub_10006B7DC();
  sub_10006B79C();
  sub_10006B7AC();
  sub_10006B77C();
  sub_10006B78C();
  sub_10006B7BC();
  sub_10006B7CC();
  sub_10006BCBC();
  sub_10006BC9C();
  (*(v2 + 8))(v4, v1);
  v20 = sub_10006BB7C();
  v21 = *(v20 - 8);
  result = (*(v21 + 48))(v7, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v15 + 8))(v18, v14);
    return (*(v21 + 32))(v24, v7, v20);
  }

  return result;
}

uint64_t sub_100045364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v4 = v3;
  v60 = a1;
  v61 = a2;
  v5 = sub_10006CADC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v58 = (&v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v59 = &v56 - v9;
  v10 = sub_100003500(&qword_10008A0D0, &qword_10007B9C8);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v56 - v12;
  v57 = sub_100045C74();
  v14 = type metadata accessor for Clock(0);
  v15 = (v3 + v14[6]);
  v17 = v15[3];
  v16 = v15[4];
  sub_10004F840(v15, v17);
  v18 = (*(v16 + 24))(v17, v16);
  v19 = v15[3];
  v20 = v15[4];
  sub_10004F840(v15, v19);
  v21 = (*(v20 + 72))(v19, v20);
  v22 = v3 + v14[11];
  LOBYTE(v15) = *(v22 + 40);
  v23 = *(v22 + 56);
  v24 = &v13[*(sub_100003500(&qword_10008A0D8, &qword_10007B9D0) + 36)];
  v25 = *(sub_10006BF5C() + 20);
  v26 = enum case for RoundedCornerStyle.continuous(_:);
  v27 = sub_10006C16C();
  (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
  __asm { FMOV            V0.2D, #2.0 }

  *v24 = _Q0;
  *&v24[*(sub_100003500(&qword_10008A0E0, &qword_10007B9D8) + 36)] = 256;
  *v13 = 0;
  v33 = v57;
  *(v13 + 1) = v57;
  *(v13 + 2) = v21;
  *(v13 + 3) = 0x3FE0B020C49BA5E3;
  *(v13 + 4) = v18;
  v13[40] = v15;
  *(v13 + 6) = v23;
  v34 = v14[14];
  v35 = &v13[*(v11 + 44)];
  v36 = *(type metadata accessor for ClockWidgetAccentableForegroundColor(0) + 24);
  v37 = sub_10006C9EC();
  v38 = v4 + v34;
  v39 = v58;
  (*(*(v37 - 8) + 16))(&v35[v36], v38, v37);
  *v35 = v33;
  *(v35 + 1) = 0x3FF0000000000000;
  v40 = enum case for _ClockHandRotationEffect.Period.hourHand(_:);
  v41 = v59;
  (*(v6 + 104))(v59, enum case for _ClockHandRotationEffect.Period.hourHand(_:), v5);
  (*(v6 + 32))(v39, v41, v5);
  v42 = (*(v6 + 88))(v39, v5);
  if (v42 == enum case for _ClockHandRotationEffect.Period.custom(_:))
  {
    (*(v6 + 96))(v39, v5);
    v43 = *v39;
  }

  else if (v42 == v40)
  {

    v43 = 43200.0;
  }

  else if (v42 == enum case for _ClockHandRotationEffect.Period.minuteHand(_:))
  {

    v43 = 3600.0;
  }

  else if (v42 == enum case for _ClockHandRotationEffect.Period.secondHand(_:))
  {

    v43 = 60.0;
  }

  else
  {
    v44 = *(v6 + 8);

    v44(v39, v5);
    v43 = 0.0;
  }

  v45 = sub_10006BCFC();
  sub_10006B91C();
  v47 = fmod(v46 + v45, v43);
  v48 = (v47 + v47) * 3.14159265 / v43;
  sub_10006C96C();
  v50 = v49;
  v52 = v51;
  v53 = v61;
  sub_1000586D4(v13, v61, &qword_10008A0D0, &qword_10007B9C8);
  result = sub_100003500(&qword_10008A0E8, &qword_10007B9E0);
  v55 = v53 + *(result + 36);
  *v55 = v48;
  *(v55 + 8) = v50;
  *(v55 + 16) = v52;
  return result;
}

uint64_t sub_100045840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v53 = a1;
  v54 = a2;
  v52 = sub_10006CADC();
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = (&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v9 = &v49 - v8;
  v10 = sub_100003500(&qword_10008A0F0, &qword_10007B9E8);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v49 - v12;
  v50 = sub_100045C74();
  v14 = type metadata accessor for Clock(0);
  v15 = (v3 + v14[6]);
  v16 = v15[3];
  v17 = v15[4];
  sub_10004F840(v15, v16);
  v18 = (*(v17 + 24))(v16, v17);
  v19 = v15[3];
  v20 = v15[4];
  sub_10004F840(v15, v19);
  v21 = (*(v20 + 72))(v19, v20);
  v22 = v3 + v14[11];
  v23 = *(v22 + 40);
  v24 = *(v22 + 56);
  v25 = v14[14];
  v26 = &v13[*(v11 + 44)];
  v27 = *(type metadata accessor for ClockWidgetAccentableForegroundColor(0) + 24);
  v28 = sub_10006C9EC();
  v29 = &v26[v27];
  v30 = v4 + v25;
  v32 = v50;
  v31 = v51;
  (*(*(v28 - 8) + 16))(v29, v30, v28);
  *v26 = v32;
  *(v26 + 1) = 0x3FF0000000000000;
  *v13 = 0;
  *(v13 + 1) = v32;
  *(v13 + 2) = v21;
  *(v13 + 3) = 0x3FECCCCCCCCCCCCDLL;
  *(v13 + 4) = v18;
  v13[40] = v23;
  v33 = v52;
  *(v13 + 6) = v24;
  v34 = enum case for _ClockHandRotationEffect.Period.minuteHand(_:);
  (*(v5 + 104))(v9, enum case for _ClockHandRotationEffect.Period.minuteHand(_:), v33);
  (*(v5 + 32))(v31, v9, v33);
  v35 = (*(v5 + 88))(v31, v33);
  if (v35 == enum case for _ClockHandRotationEffect.Period.custom(_:))
  {
    (*(v5 + 96))(v31, v33);
    v36 = *v31;
  }

  else if (v35 == enum case for _ClockHandRotationEffect.Period.hourHand(_:))
  {

    v36 = 43200.0;
  }

  else if (v35 == v34)
  {

    v36 = 3600.0;
  }

  else if (v35 == enum case for _ClockHandRotationEffect.Period.secondHand(_:))
  {

    v36 = 60.0;
  }

  else
  {
    v37 = *(v5 + 8);

    v37(v31, v33);
    v36 = 0.0;
  }

  v38 = sub_10006BCFC();
  sub_10006B91C();
  v40 = fmod(v39 + v38, v36);
  v41 = (v40 + v40) * 3.14159265 / v36;
  sub_10006C96C();
  v43 = v42;
  v45 = v44;
  v46 = v54;
  sub_1000586D4(v13, v54, &qword_10008A0F0, &qword_10007B9E8);
  result = sub_100003500(&qword_10008A0F8, &qword_10007B9F0);
  v48 = v46 + *(result + 36);
  *v48 = v41;
  *(v48 + 8) = v43;
  *(v48 + 16) = v45;
  return result;
}

uint64_t sub_100045C74()
{
  v1 = sub_10006C9EC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Clock(0);
  sub_10006C9CC();
  v6 = sub_10006C9AC();
  v7 = *(v2 + 8);
  v7(v4, v1);
  if (v6)
  {
    return sub_10006C78C();
  }

  if (*(v0 + *(v5 + 52)))
  {
  }

  if (*(v0 + *(v5 + 48)) == 1)
  {
    sub_10006C9DC();
    v9 = sub_10006C9AC();
    v7(v4, v1);
    if (v9)
    {
    }
  }

  return sub_10000F1C8(0);
}

uint64_t sub_100045DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  v8 = type metadata accessor for Clock(0);
  v9 = (v3 + v8[6]);
  v10 = v9[3];
  v11 = v9[4];
  sub_10004F840(v9, v10);
  v12 = (*(v11 + 72))(v10, v11);
  v13 = v3 + v8[11];
  LOBYTE(v10) = *(v13 + 40);
  v14 = *(v13 + 56);
  v15 = (a2 + *(sub_100003500(&qword_10008A0D8, &qword_10007B9D0) + 36));
  v16 = *(sub_10006BF5C() + 20);
  v17 = enum case for RoundedCornerStyle.continuous(_:);
  v18 = sub_10006C16C();
  (*(*(v18 - 8) + 104))(&v15[v16], v17, v18);
  __asm { FMOV            V0.2D, #2.0 }

  *v15 = _Q0;
  *&v15[*(sub_100003500(&qword_10008A0E0, &qword_10007B9D8) + 36)] = 256;
  *a2 = 0;
  *(a2 + 8) = a1;
  *(a2 + 16) = v12;
  *(a2 + 24) = 0x3FE0B020C49BA5E3;
  *(a2 + 32) = a3;
  *(a2 + 40) = v10;
  *(a2 + 48) = v14;
  v24 = v8[14];
  v25 = (a2 + *(sub_100003500(&qword_10008A0D0, &qword_10007B9C8) + 36));
  v26 = *(type metadata accessor for ClockWidgetAccentableForegroundColor(0) + 24);
  v27 = sub_10006C9EC();
  (*(*(v27 - 8) + 16))(&v25[v26], v4 + v24, v27);
  *v25 = a1;
  *(v25 + 1) = 0x3FF0000000000000;
  return swift_retain_n();
}

uint64_t sub_100045FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  v8 = type metadata accessor for Clock(0);
  v9 = (v3 + v8[6]);
  v10 = v9[3];
  v11 = v9[4];
  sub_10004F840(v9, v10);
  v12 = (*(v11 + 72))(v10, v11);
  v13 = v3 + v8[11];
  v14 = *(v13 + 40);
  v15 = *(v13 + 56);
  v16 = v8[14];
  v17 = (a2 + *(sub_100003500(&qword_10008A0F0, &qword_10007B9E8) + 36));
  v18 = *(type metadata accessor for ClockWidgetAccentableForegroundColor(0) + 24);
  v19 = sub_10006C9EC();
  (*(*(v19 - 8) + 16))(&v17[v18], v4 + v16, v19);
  *v17 = a1;
  *(v17 + 1) = 0x3FF0000000000000;
  *a2 = 0;
  *(a2 + 8) = a1;
  *(a2 + 16) = v12;
  *(a2 + 24) = 0x3FECCCCCCCCCCCCDLL;
  *(a2 + 32) = a3;
  *(a2 + 40) = v14;
  *(a2 + 48) = v15;
  return swift_retain_n();
}

uint64_t sub_10004610C()
{
  v1 = sub_10006C9EC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Clock(0);
  sub_10006C9CC();
  v6 = sub_10006C9AC();
  v7 = *(v2 + 8);
  v7(v4, v1);
  if (v6 & 1) == 0 && ((*(v0 + *(v5 + 52)) & 1) != 0 || *(v0 + *(v5 + 48)) == 1 && (sub_10006C9DC(), v9 = sub_10006C9AC(), v7(v4, v1), (v9)))
  {
  }

  else
  {
    return sub_10006C78C();
  }
}

double sub_100046268()
{
  v1 = sub_10006C0AC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for Clock(0) + 60) + 8);

  if ((v5 & 1) == 0)
  {
    sub_10006CCCC();
    v6 = sub_10006C32C();
    sub_10006BDEC();

    sub_10006C09C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
  }

  v7 = sub_10006763C();

  result = dbl_10007B4F0[v7 == 4];
  if (v7 == 3)
  {
    return 0.93;
  }

  return result;
}

uint64_t sub_1000463EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v5 = v4;
  v10 = type metadata accessor for Clock(0);
  v11 = (v4 + *(v10 + 24));
  v12 = v11[3];
  v13 = v11[4];
  sub_10004F840(v11, v12);
  v14 = (*(v13 + 96))(v12, v13);
  v15 = *(v10 + 56);
  v16 = (a2 + *(sub_100003500(&qword_10008A100, &qword_10007B9F8) + 36));
  v17 = *(type metadata accessor for ClockWidgetAccentableOpacity(0) + 24);
  v18 = sub_10006C9EC();
  (*(*(v18 - 8) + 16))(&v16[v17], v5 + v15, v18);
  __asm { FMOV            V0.2D, #1.0 }

  *v16 = _Q0;
  *a2 = 1;
  *(a2 + 8) = a1;
  *(a2 + 16) = v14;
  *(a2 + 24) = a3;
  *(a2 + 32) = a4;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0x3FC3333333333333;
}

double sub_100046530(uint64_t a1, __n128 a2)
{
  v3 = sub_10006CADC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == enum case for _ClockHandRotationEffect.Period.custom(_:))
  {
    (*(v4 + 96))(v7, v3);
    return *v7;
  }

  else if (v8 == enum case for _ClockHandRotationEffect.Period.hourHand(_:))
  {
    return 43200.0;
  }

  else if (v8 == enum case for _ClockHandRotationEffect.Period.minuteHand(_:))
  {
    return 3600.0;
  }

  else if (v8 == enum case for _ClockHandRotationEffect.Period.secondHand(_:))
  {
    return 60.0;
  }

  else
  {
    (*(v4 + 8))(v7, v3);
    return 0.0;
  }
}

long double sub_1000466C8(uint64_t a1, long double a2)
{
  v3 = sub_10006BCFC();
  sub_10006B91C();
  v5 = fmod(v4 + v3, a2);
  return (v5 + v5) * 3.14159265 / a2;
}

uint64_t sub_10004672C()
{
  v1 = sub_10006C9EC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Clock(0);
  sub_10006C9CC();
  v6 = sub_10006C9AC();
  v7 = *(v2 + 8);
  v7(v4, v1);
  if (v6)
  {
    return sub_10006C78C();
  }

  if (v0[*(v5 + 52)] & 1) != 0 || v0[*(v5 + 48)] == 1 && (sub_10006C9DC(), v10 = sub_10006C9AC(), v7(v4, v1), (v10))
  {
    v9 = *v0;
  }

  else
  {
    v9 = 0;
  }

  return sub_10000F268(v9);
}

uint64_t sub_100046884()
{
  v1 = sub_10006C9EC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Clock(0);
  sub_10006C9CC();
  v6 = sub_10006C9AC();
  v7 = *(v2 + 8);
  v7(v4, v1);
  if (v6)
  {
    return sub_10006C78C();
  }

  if (*(v0 + *(v5 + 52)))
  {
  }

  if (*(v0 + *(v5 + 48)) == 1)
  {
    sub_10006C9DC();
    v9 = sub_10006C9AC();
    v7(v4, v1);
    if (v9)
    {
    }
  }

  return sub_10006C75C();
}

uint64_t sub_1000469E4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a5;
  *(a4 + 24) = a6;
  *(a4 + 32) = a7;
  *(a4 + 40) = a3;
  *(a4 + 48) = a8;
  return result;
}

double sub_100046A2C@<D0>(uint64_t a1@<X8>)
{
  sub_10006C4BC();
  result = *&v9;
  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 32) = v11;
  return result;
}

void sub_100046A94(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6)
{
  MidX = CGRectGetMidX(*&a1);
  v16.origin.x = a1;
  v16.origin.y = a2;
  v16.size.width = a3;
  v16.size.height = a4;
  MidY = CGRectGetMidY(v16);
  v14.x = MidX;
  v14.y = MidY;
  sub_10006C49C(v14);
  v15.y = MidY + a5 * -0.5 * a6;
  v15.x = MidX;
  sub_10006C4AC(v15);
}

double sub_100046B30@<D0>(uint64_t a1@<X8>)
{
  sub_10006C4BC();
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  return result;
}

uint64_t (*sub_100046BB8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_10006BE2C();
  return sub_100059ACC;
}

uint64_t sub_100046C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10005747C();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100046CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10005747C();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100046D08(uint64_t a1)
{
  v2 = sub_10005747C();

  return Shape.body.getter(a1, v2);
}

double sub_100046D64@<D0>(uint64_t a2@<X8>)
{
  sub_10006C4BC();
  result = *&v11;
  *a2 = v11;
  *(a2 + 16) = v12;
  *(a2 + 32) = v13;
  return result;
}

void sub_100046DD4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, uint64_t a8, char a9)
{
  MidX = CGRectGetMidX(*&a1);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  MidY = CGRectGetMidY(v23);
  v19 = a5 * 0.5;
  v20 = MidY * -0.15;
  if ((a9 & 1) == 0)
  {
    v20 = v19 * a7;
  }

  v21.y = MidY - v20;
  v21.x = MidX;
  sub_10006C49C(v21);
  v22.y = MidY - v19 * a6;
  v22.x = MidX;
  sub_10006C4AC(v22);
}

double sub_100046E94@<D0>(uint64_t a1@<X8>)
{
  sub_10006C4BC();
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  return result;
}

uint64_t (*sub_100046F14(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_10006BE2C();
  return sub_100046F9C;
}

void sub_100046FA0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_100046FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100057410();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100047050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100057410();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000470B4(uint64_t a1)
{
  v2 = sub_100057410();

  return Shape.body.getter(a1, v2);
}

double sub_100047100@<D0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_10006C93C();
  v7 = v6;
  sub_100047234(v3, &v17);
  v41 = v27;
  v42 = v28;
  v43 = v29;
  v44 = v30;
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v40 = v26;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v36 = v22;
  v31 = v17;
  v32 = v18;
  v45[10] = v27;
  v45[11] = v28;
  v45[12] = v29;
  v45[13] = v30;
  v45[6] = v23;
  v45[7] = v24;
  v45[8] = v25;
  v45[9] = v26;
  v45[2] = v19;
  v45[3] = v20;
  v45[4] = v21;
  v45[5] = v22;
  v45[0] = v17;
  v45[1] = v18;
  sub_100009264(&v31, &v16, &qword_10008A108, &qword_10007BA00);
  sub_100009204(v45, &qword_10008A108, &qword_10007BA00);
  *a2 = v5;
  *(a2 + 8) = v7;
  v8 = v42;
  *(a2 + 176) = v41;
  *(a2 + 192) = v8;
  v9 = v44;
  *(a2 + 208) = v43;
  *(a2 + 224) = v9;
  v10 = v38;
  *(a2 + 112) = v37;
  *(a2 + 128) = v10;
  v11 = v40;
  *(a2 + 144) = v39;
  *(a2 + 160) = v11;
  v12 = v34;
  *(a2 + 48) = v33;
  *(a2 + 64) = v12;
  v13 = v36;
  *(a2 + 80) = v35;
  *(a2 + 96) = v13;
  result = *&v31;
  v15 = v32;
  *(a2 + 16) = v31;
  *(a2 + 32) = v15;
  return result;
}

uint64_t sub_100047234@<X0>(char *a1@<X0>, _OWORD *a2@<X8>)
{
  v31 = *a1;
  if (*a1)
  {
    v4 = 0;
    v32 = 0;
    v33 = 0;
    v5 = 0;
    v6 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v7 = 0;
    v30 = 0;
    v8 = 0;
    v9 = 0.0;
  }

  else
  {
    v9 = 1.0;
    if (a1[40])
    {
      v4 = *(a1 + 4);
      v32 = *(a1 + 6);
      v36 = *(a1 + 1);
      sub_10006BE7C();
      v5 = v78;
      v6 = v79;
      v34 = v81;
      v35 = v80;
      v33 = v82;
      sub_1000583EC(a1, &v63);
      v7 = sub_10006C93C();
      v30 = v10;
      v8 = 256;
    }

    else
    {
      v4 = 0;
      v32 = 0;
      v33 = 0;
      v5 = 0;
      v6 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v7 = 0;
      v30 = 0;
      v8 = 0;
    }
  }

  v12 = *(a1 + 3);
  v11 = *(a1 + 4);
  v13 = *(a1 + 6);
  v14 = *(a1 + 1);
  sub_10006BE7C();
  sub_1000583EC(a1, &v63);
  v15 = sub_10006C93C();
  v17 = v16;
  v18 = *sub_10000E6F4();
  *&v47 = v4;
  *(&v47 + 1) = v32;
  *&v48 = v5;
  *(&v48 + 1) = v6;
  *&v49 = v35;
  *(&v49 + 1) = v34;
  *&v50 = v33;
  *(&v50 + 1) = v36;
  *&v51 = v8;
  *(&v51 + 1) = v7;
  v38 = v47;
  v39 = v48;
  v41 = v50;
  v42 = v51;
  v40 = v49;
  *&v53 = v11;
  BYTE8(v53) = v31;
  *&v54 = v12;
  *(&v54 + 1) = v13;
  v19 = v44;
  v20 = v45;
  v56 = v45;
  v55 = v44;
  v21 = v46;
  *&v57 = v46;
  *(&v57 + 1) = v14;
  LOWORD(v58) = 256;
  *(&v58 + 1) = v15;
  *&v43[8] = v53;
  *&v43[72] = v57;
  *&v43[56] = v45;
  *&v59 = v17;
  *(&v59 + 1) = v18;
  v60 = v9;
  v62 = 0;
  v61 = 0;
  *&v43[40] = v44;
  *&v43[24] = v54;
  *&v43[120] = *&v9;
  *v43 = v30;
  *&v43[136] = 0;
  v52 = v30;
  *&v43[104] = v59;
  *&v43[88] = v58;
  v22 = *&v43[96];
  a2[10] = *&v43[80];
  a2[11] = v22;
  v23 = *&v43[128];
  a2[12] = *&v43[112];
  a2[13] = v23;
  v24 = *&v43[32];
  a2[6] = *&v43[16];
  a2[7] = v24;
  v25 = *&v43[64];
  a2[8] = *&v43[48];
  a2[9] = v25;
  v26 = v41;
  a2[2] = v40;
  a2[3] = v26;
  v27 = *v43;
  a2[4] = v42;
  a2[5] = v27;
  v28 = v39;
  *a2 = v38;
  a2[1] = v28;
  v63 = v11;
  v64 = v31;
  v65 = v12;
  v66 = v13;
  v67 = v19;
  v68 = v20;
  v69 = v21;
  v70 = v14;
  v71 = 256;
  v72 = v15;
  v73 = v17;
  v74 = v18;
  v75 = v9;
  v77 = 0;
  v76 = 0;

  sub_100009264(&v47, v37, &qword_10008B518, &qword_10007CB48);
  sub_100009264(&v53, v37, &qword_10008B520, &qword_10007CB50);
  sub_100009204(&v63, &qword_10008B520, &qword_10007CB50);
  v37[0] = v4;
  v37[1] = v32;
  v37[2] = v5;
  v37[3] = v6;
  v37[4] = v35;
  v37[5] = v34;
  v37[6] = v33;
  v37[7] = v36;
  v37[8] = v8;
  v37[9] = v7;
  v37[10] = v30;
  return sub_100009204(v37, &qword_10008B518, &qword_10007CB48);
}

double sub_100047604@<D0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v31[0] = *v2;
  v31[1] = v4;
  v31[2] = *(v2 + 32);
  v32 = *(v2 + 48);
  v5 = sub_10006C93C();
  v7 = v6;
  sub_100047234(v31, &v17);
  v43 = v27;
  v44 = v28;
  v45 = v29;
  v46 = v30;
  v39 = v23;
  v40 = v24;
  v41 = v25;
  v42 = v26;
  v35 = v19;
  v36 = v20;
  v37 = v21;
  v38 = v22;
  v33 = v17;
  v34 = v18;
  v47[10] = v27;
  v47[11] = v28;
  v47[12] = v29;
  v47[13] = v30;
  v47[6] = v23;
  v47[7] = v24;
  v47[8] = v25;
  v47[9] = v26;
  v47[2] = v19;
  v47[3] = v20;
  v47[4] = v21;
  v47[5] = v22;
  v47[0] = v17;
  v47[1] = v18;
  sub_100009264(&v33, &v16, &qword_10008A108, &qword_10007BA00);
  sub_100009204(v47, &qword_10008A108, &qword_10007BA00);
  *a2 = v5;
  *(a2 + 8) = v7;
  v8 = v44;
  *(a2 + 176) = v43;
  *(a2 + 192) = v8;
  v9 = v46;
  *(a2 + 208) = v45;
  *(a2 + 224) = v9;
  v10 = v40;
  *(a2 + 112) = v39;
  *(a2 + 128) = v10;
  v11 = v42;
  *(a2 + 144) = v41;
  *(a2 + 160) = v11;
  v12 = v36;
  *(a2 + 48) = v35;
  *(a2 + 64) = v12;
  v13 = v38;
  *(a2 + 80) = v37;
  *(a2 + 96) = v13;
  result = *&v33;
  v15 = v34;
  *(a2 + 16) = v33;
  *(a2 + 32) = v15;
  return result;
}

uint64_t sub_100047754@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
}

__n128 sub_1000477A0(uint64_t a1)
{

  result = *a1;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  *(v1 + 32) = *(a1 + 32);
  return result;
}

uint64_t sub_1000477E8(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_100047820(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_100047858(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

double sub_100047884@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_10006C78C();
  v4 = sub_10006C75C();
  v5 = sub_10006C78C();
  result = 0.0585;
  *a2 = xmmword_10007B4D0;
  *(a2 + 16) = 0x3F916872B020C49CLL;
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = 1;
  *(a2 + 48) = v5;
  *(a2 + 56) = 0x3FC3333333333333;
  return result;
}

double sub_1000478F8@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_10006C78C();
  v4 = sub_10006C75C();
  result = 0.0585;
  *a2 = xmmword_10007B4D0;
  *(a2 + 16) = 0x3F916872B020C49CLL;
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  return result;
}

uint64_t sub_10004798C(_BYTE *a1)
{
  v2 = type metadata accessor for DigitalClockWidgetView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_100003500(&qword_10008B4F0, &qword_10007CB30);
  __chkstk_darwin(v5);
  v7 = (&v15 - v6);
  v8 = type metadata accessor for PlaceholderViewSingle(0);
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    v11 = sub_100048A14();
    sub_100047DAC(type metadata accessor for DigitalClockWidgetView, &v10[*(v8 + 24)]);
    *v10 = 1;
    v10[1] = v11 & 1;
    sub_10003DE44(v10, v7, type metadata accessor for PlaceholderViewSingle);
    swift_storeEnumTagMultiPayload();
    sub_100003500(&qword_10008B308, &qword_10007C980);
    sub_10003DF94(&qword_10008AF98, type metadata accessor for PlaceholderViewSingle, &unk_10007BBE0);
    sub_100011308(&qword_10008B300, &qword_10008B308, &qword_10007C980, &protocol conformance descriptor for GeometryReader<A>);
    sub_10006C26C();
    return sub_10003DD7C(v10, type metadata accessor for PlaceholderViewSingle);
  }

  else
  {
    sub_10003DE44(a1, &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DigitalClockWidgetView);
    v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v14 = swift_allocObject();
    sub_10003DDDC(&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for DigitalClockWidgetView);
    *v7 = sub_1000583AC;
    v7[1] = v14;
    swift_storeEnumTagMultiPayload();
    sub_100003500(&qword_10008B308, &qword_10007C980);
    sub_10003DF94(&qword_10008AF98, type metadata accessor for PlaceholderViewSingle, &unk_10007BBE0);
    sub_100011308(&qword_10008B300, &qword_10008B308, &qword_10007C980, &protocol conformance descriptor for GeometryReader<A>);
    return sub_10006C26C();
  }
}

uint64_t sub_100047DAC@<X0>(uint64_t (*a1)(void, __n128)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10006C0AC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003500(&qword_100089DD8, &qword_10007B628);
  v10 = __chkstk_darwin(v9);
  v12 = &v17 - v11;
  v13 = a1(0, v10);
  sub_100009264(v2 + *(v13 + 24), v12, &qword_100089DD8, &qword_10007B628);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_10006C9EC();
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

uint64_t sub_100047FE8(_BYTE *a1)
{
  v2 = type metadata accessor for DateTimeWidgetView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_100003500(&qword_10008B4F0, &qword_10007CB30);
  __chkstk_darwin(v5);
  v7 = (&v15 - v6);
  v8 = type metadata accessor for PlaceholderViewSingle(0);
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    v11 = sub_100048A14();
    sub_100047DAC(type metadata accessor for DateTimeWidgetView, &v10[*(v8 + 24)]);
    *v10 = 1;
    v10[1] = v11 & 1;
    sub_10003DE44(v10, v7, type metadata accessor for PlaceholderViewSingle);
    swift_storeEnumTagMultiPayload();
    sub_100003500(&qword_10008B308, &qword_10007C980);
    sub_10003DF94(&qword_10008AF98, type metadata accessor for PlaceholderViewSingle, &unk_10007BBE0);
    sub_100011308(&qword_10008B300, &qword_10008B308, &qword_10007C980, &protocol conformance descriptor for GeometryReader<A>);
    sub_10006C26C();
    return sub_10003DD7C(v10, type metadata accessor for PlaceholderViewSingle);
  }

  else
  {
    sub_10003DE44(a1, &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DateTimeWidgetView);
    v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v14 = swift_allocObject();
    sub_10003DDDC(&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for DateTimeWidgetView);
    *v7 = sub_100058354;
    v7[1] = v14;
    swift_storeEnumTagMultiPayload();
    sub_100003500(&qword_10008B308, &qword_10007C980);
    sub_10003DF94(&qword_10008AF98, type metadata accessor for PlaceholderViewSingle, &unk_10007BBE0);
    sub_100011308(&qword_10008B300, &qword_10008B308, &qword_10007C980, &protocol conformance descriptor for GeometryReader<A>);
    return sub_10006C26C();
  }
}

uint64_t sub_1000483AC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = swift_getKeyPath();
  *(a2 + 16) = 0;
  v4 = *(a1(0) + 24);
  *(a2 + v4) = swift_getKeyPath();
  sub_100003500(&qword_100089DD8, &qword_10007B628);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100048450@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  v8 = a5(0);
  return sub_1000586D4(a4, a6 + *(v8 + 24), &qword_100089988, &qword_10007A9D8);
}

uint64_t sub_1000484DC@<X0>(uint64_t (*a1)(uint64_t)@<X2>, uint64_t (*a2)(void, __n128)@<X3>, uint64_t a3@<X8>)
{
  a1(v3);
  v6 = sub_10006C76C();
  v7 = (a3 + *(sub_100003500(&qword_10008A110, &qword_10007BA08) + 36));
  v8 = type metadata accessor for AccentedWidgetBackground(0);
  result = sub_100047DAC(a2, v7 + *(v8 + 20));
  *v7 = v6;
  return result;
}

uint64_t sub_100048594@<X0>(uint64_t a1@<X8>)
{
  sub_10004861C(v1);
  v3 = *sub_10000E5A0();
  v4 = (a1 + *(sub_100003500(&qword_10008A110, &qword_10007BA08) + 36));
  v5 = *(type metadata accessor for AccentedWidgetBackground(0) + 20);

  result = sub_100047DAC(type metadata accessor for NonNumericWidgetView, v4 + v5);
  *v4 = v3;
  return result;
}

uint64_t sub_10004861C(_BYTE *a1)
{
  v2 = type metadata accessor for NonNumericWidgetView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_100003500(&qword_10008B4F0, &qword_10007CB30);
  __chkstk_darwin(v5);
  v7 = (&v15 - v6);
  v8 = type metadata accessor for PlaceholderViewSingle(0);
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    v11 = sub_100048A14();
    sub_100047DAC(type metadata accessor for NonNumericWidgetView, &v10[*(v8 + 24)]);
    *v10 = 1;
    v10[1] = v11 & 1;
    sub_10003DE44(v10, v7, type metadata accessor for PlaceholderViewSingle);
    swift_storeEnumTagMultiPayload();
    sub_100003500(&qword_10008B308, &qword_10007C980);
    sub_10003DF94(&qword_10008AF98, type metadata accessor for PlaceholderViewSingle, &unk_10007BBE0);
    sub_100011308(&qword_10008B300, &qword_10008B308, &qword_10007C980, &protocol conformance descriptor for GeometryReader<A>);
    sub_10006C26C();
    return sub_10003DD7C(v10, type metadata accessor for PlaceholderViewSingle);
  }

  else
  {
    sub_10003DE44(a1, &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NonNumericWidgetView);
    v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v14 = swift_allocObject();
    sub_10003DDDC(&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for NonNumericWidgetView);
    *v7 = sub_1000582FC;
    v7[1] = v14;
    swift_storeEnumTagMultiPayload();
    sub_100003500(&qword_10008B308, &qword_10007C980);
    sub_10003DF94(&qword_10008AF98, type metadata accessor for PlaceholderViewSingle, &unk_10007BBE0);
    sub_100011308(&qword_10008B300, &qword_10008B308, &qword_10007C980, &protocol conformance descriptor for GeometryReader<A>);
    return sub_10006C26C();
  }
}

uint64_t sub_100048A14()
{
  v1 = sub_10006C0AC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 8);
  if (*(v0 + 16) != 1)
  {

    sub_10006CCCC();
    v6 = sub_10006C32C();
    sub_10006BDEC();

    sub_10006C09C();
    swift_getAtKeyPath();
    sub_10002B84C(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_100048BA0@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t (*a2)(void, __n128)@<X1>, uint64_t a3@<X8>)
{
  a1(v3);
  v6 = sub_10006C76C();
  v7 = (a3 + *(sub_100003500(&qword_10008A110, &qword_10007BA08) + 36));
  v8 = type metadata accessor for AccentedWidgetBackground(0);
  result = sub_100047DAC(a2, v7 + *(v8 + 20));
  *v7 = v6;
  return result;
}

uint64_t sub_100048C1C(_BYTE *a1)
{
  v2 = type metadata accessor for SquareWidgetView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_100003500(&qword_10008B4F0, &qword_10007CB30);
  __chkstk_darwin(v5);
  v7 = (&v15 - v6);
  v8 = type metadata accessor for PlaceholderViewSingle(0);
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    v11 = sub_100048A14();
    sub_100047DAC(type metadata accessor for SquareWidgetView, &v10[*(v8 + 24)]);
    *v10 = 1;
    v10[1] = v11 & 1;
    sub_10003DE44(v10, v7, type metadata accessor for PlaceholderViewSingle);
    swift_storeEnumTagMultiPayload();
    sub_100003500(&qword_10008B308, &qword_10007C980);
    sub_10003DF94(&qword_10008AF98, type metadata accessor for PlaceholderViewSingle, &unk_10007BBE0);
    sub_100011308(&qword_10008B300, &qword_10008B308, &qword_10007C980, &protocol conformance descriptor for GeometryReader<A>);
    sub_10006C26C();
    return sub_10003DD7C(v10, type metadata accessor for PlaceholderViewSingle);
  }

  else
  {
    sub_10003DE44(a1, &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SquareWidgetView);
    v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v14 = swift_allocObject();
    sub_10003DDDC(&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for SquareWidgetView);
    *v7 = sub_100057EC4;
    v7[1] = v14;
    swift_storeEnumTagMultiPayload();
    sub_100003500(&qword_10008B308, &qword_10007C980);
    sub_10003DF94(&qword_10008AF98, type metadata accessor for PlaceholderViewSingle, &unk_10007BBE0);
    sub_100011308(&qword_10008B300, &qword_10008B308, &qword_10007C980, &protocol conformance descriptor for GeometryReader<A>);
    return sub_10006C26C();
  }
}

uint64_t sub_100048FC8@<X0>(uint64_t (*a1)(void, __n128)@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v40 = a2;
  v45 = a3;
  v4 = sub_100003500(&qword_100088B80, &qword_100079930);
  __chkstk_darwin(v4 - 8);
  v44 = &v39 - v5;
  v42 = sub_10006C1AC();
  v6 = *(v42 - 8);
  __chkstk_darwin(v42);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SmallWorldClockView(0);
  v10 = (v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_100003500(&qword_10008B4F8, &qword_10007CB38);
  __chkstk_darwin(v13);
  v15 = &v39 - v14;
  v43 = sub_100003500(&qword_10008B500, &qword_10007CB40);
  __chkstk_darwin(v43);
  v41 = &v39 - v16;
  sub_10006BEEC();
  sub_1000220D8();
  sub_1000209E4();
  sub_100020A1C();
  sub_100020A54();
  sub_100020A54();
  sub_100020AEC();
  sub_100020B24();
  sub_100020D9C();
  sub_1000662E4(v12 + v10[7]);
  v17 = (v12 + v10[8]);
  v17[3] = &type metadata for SmallSizeDimentions;
  v17[4] = &off_1000865B8;
  v18 = swift_allocObject();
  *v17 = v18;
  v19 = v47[1];
  v18[1] = v47[0];
  v18[2] = v19;
  v20 = v47[3];
  v18[3] = v47[2];
  v18[4] = v20;
  sub_100057F94(v47, v46);
  v21 = sub_100048A14();
  sub_100047DAC(a1, v12 + v10[15]);
  *v12 = swift_getKeyPath();
  sub_100003500(&qword_100088FB8, &qword_100079CB0);
  swift_storeEnumTagMultiPayload();
  *(v12 + v10[9]) = 0;
  *(v12 + v10[10]) = 0;
  *(v12 + v10[11]) = 1;
  *(v12 + v10[12]) = 0;
  v22 = v12 + v10[13];
  type metadata accessor for ClockWidgetEnvironmentObject(0);
  sub_10003DF94(&qword_100089220, type metadata accessor for ClockWidgetEnvironmentObject, &unk_10007D7D8);
  *v22 = sub_10006BE6C();
  v22[8] = v23 & 1;
  *(v12 + v10[14]) = v21 & 1;
  v24 = 1.0;
  if (sub_100048A14())
  {
    v24 = *v40();
  }

  sub_10006C96C();
  v26 = v25;
  v28 = v27;
  sub_10003DDDC(v12, v15, type metadata accessor for SmallWorldClockView);
  v29 = &v15[*(v13 + 36)];
  *v29 = v24;
  v29[1] = v24;
  *(v29 + 2) = v26;
  *(v29 + 3) = v28;
  v30 = v42;
  (*(v6 + 104))(v8, enum case for ContentSizeCategory.extraExtraExtraLarge(_:), v42);
  v31 = sub_100057FF0();
  v32 = v41;
  sub_100026F64(v8, v13, v31);
  (*(v6 + 8))(v8, v30);
  sub_100009204(v15, &qword_10008B4F8, &qword_10007CB38);
  v33 = [objc_opt_self() widgetURL];
  if (v33)
  {
    v34 = v44;
    v35 = v33;
    sub_10006B8EC();

    v36 = 0;
  }

  else
  {
    v36 = 1;
    v34 = v44;
  }

  v37 = sub_10006B90C();
  (*(*(v37 - 8) + 56))(v34, v36, 1, v37);
  sub_1000580AC();
  sub_10006C60C();
  sub_100058168(v47);
  sub_100009204(v34, &qword_100088B80, &qword_100079930);
  return sub_100009204(v32, &qword_10008B500, &qword_10007CB40);
}

uint64_t sub_1000495E8()
{
  v0 = sub_10006C8FC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100003500(&qword_10008A118, &qword_10007BA10);
  sub_10006C90C();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000797A0;
  v8 = xmmword_10007B500;
  *v3 = xmmword_10007B500;
  v5 = enum case for GridItem.Size.flexible(_:);
  v6 = *(v1 + 104);
  v6(v3, enum case for GridItem.Size.flexible(_:), v0);
  sub_10006C92C();
  sub_10006C91C();
  *v3 = v8;
  v6(v3, v5, v0);
  sub_10006C92C();
  sub_10006C91C();
  *v3 = v8;
  v6(v3, v5, v0);
  sub_10006C92C();
  sub_10006C91C();
  return v4;
}

uint64_t sub_100049824(__n128 a1)
{
  type metadata accessor for WorldClockRectangularSummary(0);
}

uint64_t sub_100049858@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v23 = sub_10006C2CC();
  v21 = *(v23 - 8);
  __chkstk_darwin(v23);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10006C28C();
  __chkstk_darwin(v4);
  v5 = sub_100003500(&qword_10008A120, &qword_10007BA18);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  v9 = sub_100003500(&qword_10008A128, &qword_10007BA20);
  v10 = *(v9 - 8);
  v19 = v9;
  v20 = v10;
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  type metadata accessor for WorldClockRectangularSummary(0);
  v25 = v1;

  sub_10006C1BC();
  LODWORD(v26) = 0;
  sub_10003DF94(&qword_10008A130, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  sub_10006CE0C();
  sub_100003500(&qword_10008A138, &qword_10007BA28);
  sub_10004FF50();
  sub_10006C95C();
  v24 = v1;
  v13 = sub_100003500(&qword_10008A158, &qword_10007BA38);
  v14 = sub_100011308(&qword_10008A160, &qword_10008A120, &qword_10007BA18, &protocol conformance descriptor for LazyVGrid<A>);
  v15 = sub_100011308(&qword_10008A168, &qword_10008A158, &qword_10007BA38, &protocol conformance descriptor for Grid<A>);
  sub_10006C6EC();
  (*(v6 + 8))(v8, v5);
  sub_10006C2BC();
  v26 = v5;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  swift_getOpaqueTypeConformance2();
  v16 = v19;
  sub_10006C6AC();
  (*(v21 + 8))(v3, v23);
  return (*(v20 + 8))(v12, v16);
}

uint64_t sub_100049C84(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for WorldClockRectangularSummary(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v9 = xmmword_10007B510;
  swift_getKeyPath();
  sub_10003DE44(a1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorldClockRectangularSummary);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_10003DDDC(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for WorldClockRectangularSummary);
  sub_100003500(&qword_10008B440, &qword_10007CAA8);
  sub_100003500(&qword_10008A150, &qword_10007BA30);
  sub_100057AB4();
  sub_100011308(&qword_10008A148, &qword_10008A150, &qword_10007BA30, &protocol conformance descriptor for TupleView<A>);
  return sub_10006C8BC();
}

uint64_t sub_100049E64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v119 = a3;
  v5 = sub_100003500(&qword_10008B4A8, &qword_10007CAF0);
  __chkstk_darwin(v5 - 8);
  v120 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v118 = &v109 - v8;
  v9 = sub_10006C71C();
  v114 = *(v9 - 8);
  v115 = v9;
  __chkstk_darwin(v9);
  v113 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003500(&qword_100088BE0, &qword_10007B3C0);
  __chkstk_darwin(v11 - 8);
  v111 = &v109 - v12;
  v112 = sub_100003500(&qword_10008B4B0, &qword_10007CAF8);
  __chkstk_darwin(v112);
  v117 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v123 = &v109 - v15;
  v16 = sub_100003500(&qword_10008B4B8, &qword_10007CB00);
  __chkstk_darwin(v16 - 8);
  v116 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v122 = &v109 - v19;
  v20 = type metadata accessor for WorldClockCity(0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v109 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  v25 = type metadata accessor for WorldClockEntry(0);
  if (v24 < 0 || (v26 = *(a2 + *(v25 + 20)), v24 >= *(v26 + 16)))
  {
    sub_1000662E4(v23);
  }

  else
  {
    sub_10003DE44(v26 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v24, v23, type metadata accessor for WorldClockCity);
  }

  v27 = &v23[*(v20 + 28)];
  v28 = *(v27 + 1);
  *&v139[0] = *v27;
  *(&v139[0] + 1) = v28;
  v121 = sub_10002B2FC();

  v29 = sub_10006C5BC();
  v31 = v30;
  v33 = v32;
  v124 = v23;
  sub_10006C46C();
  v34 = sub_10006C52C();
  v110 = v20;
  v36 = v35;
  v38 = v37;

  sub_1000070DC(v29, v31, v33 & 1);

  v39 = sub_10006C51C();
  v41 = v40;
  LOBYTE(v29) = v42;
  sub_1000070DC(v34, v36, v38 & 1);

  sub_10006C78C();
  v43 = sub_10006C4EC();
  v45 = v44;
  v47 = v46;
  v49 = v48;

  sub_1000070DC(v39, v41, v29 & 1);

  KeyPath = swift_getKeyPath();
  v51 = swift_getKeyPath();
  LOBYTE(v125) = v47 & 1;
  v138 = 0;
  *&v133 = v43;
  *(&v133 + 1) = v45;
  LOBYTE(v134) = v47 & 1;
  *(&v134 + 1) = v49;
  *&v135 = KeyPath;
  *(&v135 + 1) = 1;
  LOBYTE(v136) = 0;
  *(&v136 + 1) = v51;
  v137 = 0x3FE3333333333333;
  v52 = &v124[*(v110 + 24)];
  v54 = *v52;
  v53 = *(v52 + 1);
  *&v127 = v54;
  *(&v127 + 1) = v53;
  sub_100003500(&qword_10008B430, &qword_10007CA78);
  sub_1000579E0();
  sub_10006C67C();
  v139[2] = v135;
  v139[3] = v136;
  v140 = v137;
  v139[0] = v133;
  v139[1] = v134;
  sub_100009204(v139, &qword_10008B430, &qword_10007CA78);
  v55 = v111;
  sub_1000657E8(v111);
  v56 = sub_10006BD3C();
  (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
  v57 = sub_10006C50C();
  v59 = v58;
  LOBYTE(v41) = v60;
  v62 = v61;
  v63 = swift_getKeyPath();
  v64 = sub_100003500(&qword_10008B370, &qword_10007C9B0);
  v65 = v123;
  v66 = (v123 + *(v64 + 36));
  sub_100003500(&qword_10008B378, &qword_10007D430);
  sub_10006BBFC();
  *v66 = v63;
  *v65 = v57;
  *(v65 + 8) = v59;
  *(v65 + 16) = v41 & 1;
  *(v65 + 24) = v62;
  v67 = sub_10006C37C();
  v68 = swift_getKeyPath();
  v69 = (v65 + *(sub_100003500(&qword_10008B488, &qword_10007CAD0) + 36));
  *v69 = v68;
  v69[1] = v67;
  v70 = swift_getKeyPath();
  v71 = v65 + *(sub_100003500(&qword_10008B4C0, &qword_10007CB08) + 36);
  *v71 = v70;
  *(v71 + 8) = 1;
  *(v71 + 16) = 0;
  v72 = sub_10006C78C();
  v73 = swift_getKeyPath();
  v74 = (v65 + *(sub_100003500(&qword_10008B4C8, &qword_10007CB10) + 36));
  *v74 = v73;
  v74[1] = v72;
  (*(v114 + 104))(v113, enum case for Color.RGBColorSpace.sRGBLinear(_:), v115);
  v75 = sub_10006C7BC();
  v76 = (v65 + *(sub_100003500(&qword_10008B4D0, &qword_10007CB18) + 36));
  *v76 = v75;
  v76[1] = 0x3FF0000000000000;
  v76[2] = 0;
  v76[3] = 0;
  v77 = swift_getKeyPath();
  v78 = v65 + *(v112 + 36);
  *v78 = v77;
  *(v78 + 8) = 1;
  sub_100065940(1);
  *&v133 = v79;
  *(&v133 + 1) = v80;
  v81 = sub_10006C5BC();
  v83 = v82;
  LOBYTE(v41) = v84;
  sub_10006C37C();
  v85 = sub_10006C52C();
  v87 = v86;
  LOBYTE(v65) = v88;

  sub_1000070DC(v81, v83, v41 & 1);

  sub_10006C78C();
  v89 = sub_10006C4EC();
  v91 = v90;
  LOBYTE(v62) = v92;
  v94 = v93;

  sub_1000070DC(v85, v87, v65 & 1);

  v95 = swift_getKeyPath();
  v96 = swift_getKeyPath();
  v138 = v62 & 1;
  v132 = 0;
  *&v127 = v89;
  *(&v127 + 1) = v91;
  LOBYTE(v128) = v62 & 1;
  *(&v128 + 1) = v94;
  *&v129 = v95;
  *(&v129 + 1) = 0x3FE3333333333333;
  *&v130 = v96;
  *(&v130 + 1) = 1;
  v131 = 0;
  v97 = sub_100001CF8();
  sub_100065940(v97 & 1);
  v125 = v98;
  v126 = v99;
  sub_100003500(&qword_10008B4D8, &qword_10007CB20);
  sub_100057DF4();
  v100 = v118;
  sub_10006C67C();

  v135 = v129;
  v136 = v130;
  LOBYTE(v137) = v131;
  v133 = v127;
  v134 = v128;
  sub_100009204(&v133, &qword_10008B4D8, &qword_10007CB20);
  v101 = v122;
  v102 = v116;
  sub_100009264(v122, v116, &qword_10008B4B8, &qword_10007CB00);
  v103 = v123;
  v104 = v117;
  sub_100009264(v123, v117, &qword_10008B4B0, &qword_10007CAF8);
  v105 = v120;
  sub_100009264(v100, v120, &qword_10008B4A8, &qword_10007CAF0);
  v106 = v119;
  sub_100009264(v102, v119, &qword_10008B4B8, &qword_10007CB00);
  v107 = sub_100003500(&qword_10008B4E8, &qword_10007CB28);
  sub_100009264(v104, v106 + *(v107 + 48), &qword_10008B4B0, &qword_10007CAF8);
  sub_100009264(v105, v106 + *(v107 + 64), &qword_10008B4A8, &qword_10007CAF0);
  sub_100009204(v100, &qword_10008B4A8, &qword_10007CAF0);
  sub_100009204(v103, &qword_10008B4B0, &qword_10007CAF8);
  sub_100009204(v101, &qword_10008B4B8, &qword_10007CB00);
  sub_10003DD7C(v124, type metadata accessor for WorldClockCity);
  sub_100009204(v105, &qword_10008B4A8, &qword_10007CAF0);
  sub_100009204(v104, &qword_10008B4B0, &qword_10007CAF8);
  return sub_100009204(v102, &qword_10008B4B8, &qword_10007CB00);
}

uint64_t sub_10004A94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_10004AA1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for WorldClockRectangularSummary(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  *a2 = sub_10006C93C();
  *(a2 + 8) = v8;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  sub_100003500(&qword_10008B438, &unk_10007CA80);
  v12 = xmmword_10007B510;
  swift_getKeyPath();
  sub_10003DE44(a1, &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorldClockRectangularSummary);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  sub_10003DDDC(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for WorldClockRectangularSummary);
  sub_100003500(&qword_10008B440, &qword_10007CAA8);
  sub_100003500(&qword_10008B448, &qword_10007CAB0);
  sub_100057AB4();
  sub_100011308(&qword_10008B460, &qword_10008B448, &qword_10007CAB0, &protocol conformance descriptor for GridRow<A>);
  return sub_10006C8BC();
}

uint64_t sub_10004AC38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for WorldClockCity(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = type metadata accessor for WorldClockEntry(0);
  if (v10 < 0 || (v12 = *(a2 + *(v11 + 20)), v10 >= *(v12 + 16)))
  {
    sub_1000662E4(v9);
  }

  else
  {
    sub_10003DE44(v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v10, v9, type metadata accessor for WorldClockCity);
  }

  *a3 = 0;
  *(a3 + 8) = 1;
  v13 = sub_100003500(&qword_10008B448, &qword_10007CAB0);
  sub_10004AD94(v9, a3 + *(v13 + 36));
  return sub_10003DD7C(v9, type metadata accessor for WorldClockCity);
}

uint64_t sub_10004AD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v105 = a1;
  v99 = sub_10006C71C();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v96 = v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003500(&qword_100088BE0, &qword_10007B3C0);
  __chkstk_darwin(v4 - 8);
  v94[0] = v94 - v5;
  v97 = sub_100003500(&qword_10008B468, &qword_10007CAB8) - 8;
  __chkstk_darwin(v97);
  v103 = v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v107 = v94 - v8;
  v9 = sub_100003500(&qword_10008B470, &qword_10007CAC0);
  __chkstk_darwin(v9 - 8);
  v102 = v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v101 = v94 - v12;
  __chkstk_darwin(v13);
  v100 = v94 - v14;
  __chkstk_darwin(v15);
  v108 = v94 - v16;
  v95 = type metadata accessor for WorldClockCity(0);
  v17 = (a1 + *(v95 + 28));
  v18 = v17[1];
  v111 = *v17;
  v112 = v18;
  v106 = sub_10002B2FC();

  v19 = sub_10006C5BC();
  v21 = v20;
  v23 = v22;
  sub_10006C46C();
  v24 = sub_10006C52C();
  v26 = v25;
  v28 = v27;

  sub_1000070DC(v19, v21, v23 & 1);

  v29 = sub_10006C51C();
  v31 = v30;
  v33 = v32;
  sub_1000070DC(v24, v26, v28 & 1);

  sub_10006C78C();
  v34 = sub_10006C4EC();
  v36 = v35;
  LOBYTE(v24) = v37;
  v39 = v38;

  sub_1000070DC(v29, v31, v33 & 1);

  KeyPath = swift_getKeyPath();
  v111 = v34;
  v112 = v36;
  v113 = v24 & 1;
  v114 = v39;
  v115 = KeyPath;
  v116 = 0x3FE3333333333333;
  v41 = (v105 + *(v95 + 24));
  v43 = *v41;
  v42 = v41[1];
  v109 = v43;
  v110 = v42;
  v95 = sub_100003500(&qword_10008B478, &qword_10007CAC8);
  v94[1] = sub_100057B94();
  sub_10006C67C();
  sub_1000070DC(v34, v36, v24 & 1);

  v44 = v94[0];
  sub_1000657E8(v94[0]);
  v45 = sub_10006BD3C();
  (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
  v46 = sub_10006C50C();
  v48 = v47;
  LOBYTE(v29) = v49;
  v51 = v50;
  v52 = swift_getKeyPath();
  v53 = sub_100003500(&qword_10008B370, &qword_10007C9B0);
  v54 = v107;
  v55 = (v107 + *(v53 + 36));
  sub_100003500(&qword_10008B378, &qword_10007D430);
  sub_10006BBFC();
  *v55 = v52;
  *v54 = v46;
  *(v54 + 8) = v48;
  *(v54 + 16) = v29 & 1;
  *(v54 + 24) = v51;
  v56 = sub_10006C37C();
  v57 = swift_getKeyPath();
  v58 = (v54 + *(sub_100003500(&qword_10008B488, &qword_10007CAD0) + 36));
  *v58 = v57;
  v58[1] = v56;
  v59 = sub_10006C78C();
  v60 = swift_getKeyPath();
  v61 = (v54 + *(sub_100003500(&qword_10008B490, &qword_10007CAD8) + 36));
  *v61 = v60;
  v61[1] = v59;
  (*(v98 + 104))(v96, enum case for Color.RGBColorSpace.sRGBLinear(_:), v99);
  v62 = sub_10006C7BC();
  v63 = (v54 + *(sub_100003500(&qword_10008B498, &qword_10007CAE0) + 36));
  *v63 = v62;
  v63[1] = 0x3FF0000000000000;
  v63[2] = 0;
  v63[3] = 0;
  v64 = swift_getKeyPath();
  v65 = v54 + *(v97 + 44);
  *v65 = v64;
  *(v65 + 8) = 1;
  sub_100065940(1);
  v111 = v66;
  v112 = v67;
  v68 = sub_10006C5BC();
  v70 = v69;
  LOBYTE(v29) = v71;
  sub_10006C37C();
  v72 = sub_10006C52C();
  v74 = v73;
  LOBYTE(v34) = v75;

  sub_1000070DC(v68, v70, v29 & 1);

  sub_10006C78C();
  v76 = sub_10006C4EC();
  v78 = v77;
  LOBYTE(v29) = v79;
  v81 = v80;

  sub_1000070DC(v72, v74, v34 & 1);

  v82 = swift_getKeyPath();
  v111 = v76;
  v112 = v78;
  LOBYTE(v29) = v29 & 1;
  v113 = v29;
  v114 = v81;
  v115 = v82;
  v116 = 0x3FE3333333333333;
  v83 = sub_100001CF8();
  sub_100065940(v83 & 1);
  v109 = v84;
  v110 = v85;
  v86 = v100;
  sub_10006C67C();

  sub_1000070DC(v76, v78, v29);

  v87 = v101;
  sub_100009264(v108, v101, &qword_10008B470, &qword_10007CAC0);
  v88 = v107;
  v89 = v103;
  sub_100009264(v107, v103, &qword_10008B468, &qword_10007CAB8);
  v90 = v102;
  sub_100009264(v86, v102, &qword_10008B470, &qword_10007CAC0);
  v91 = v104;
  sub_100009264(v87, v104, &qword_10008B470, &qword_10007CAC0);
  v92 = sub_100003500(&qword_10008B4A0, &qword_10007CAE8);
  sub_100009264(v89, v91 + *(v92 + 48), &qword_10008B468, &qword_10007CAB8);
  sub_100009264(v90, v91 + *(v92 + 64), &qword_10008B470, &qword_10007CAC0);
  sub_100009204(v86, &qword_10008B470, &qword_10007CAC0);
  sub_100009204(v88, &qword_10008B468, &qword_10007CAB8);
  sub_100009204(v108, &qword_10008B470, &qword_10007CAC0);
  sub_100009204(v90, &qword_10008B470, &qword_10007CAC0);
  sub_100009204(v89, &qword_10008B468, &qword_10007CAB8);
  return sub_100009204(v87, &qword_10008B470, &qword_10007CAC0);
}

uint64_t sub_10004B678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10006C8FC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10003DDDC(a1, a2, type metadata accessor for WorldClockEntry);
  v13 = *(type metadata accessor for WorldClockRectangularSummary(0) + 20);
  sub_100003500(&qword_10008A118, &qword_10007BA10);
  sub_10006C90C();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000797A0;
  v14 = xmmword_10007B500;
  *v7 = xmmword_10007B500;
  v9 = enum case for GridItem.Size.flexible(_:);
  v10 = *(v5 + 104);
  v10(v7, enum case for GridItem.Size.flexible(_:), v4);
  sub_10006C92C();
  sub_10006C91C();
  *v7 = v14;
  v10(v7, v9, v4);
  sub_10006C92C();
  sub_10006C91C();
  *v7 = v14;
  v10(v7, v9, v4);
  sub_10006C92C();
  result = sub_10006C91C();
  *(a2 + v13) = v8;
  return result;
}

uint64_t sub_10004B96C(char a1, __n128 a2)
{
  result = type metadata accessor for ClockCircularAnalogueComplication(0);
  *(v2 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_10004BA08(char a1, __n128 a2)
{
  result = type metadata accessor for ClockCircularAnalogueComplication(0);
  *(v2 + *(result + 32)) = a1;
  return result;
}

uint64_t sub_10004BAA4(char a1, __n128 a2)
{
  result = type metadata accessor for ClockCircularAnalogueComplication(0);
  *(v2 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_10004BB1C@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = sub_10006C2CC();
  v22 = *(v2 - 8);
  v23 = v2;
  __chkstk_darwin(v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003500(&qword_10008A170, &qword_10007BA40);
  __chkstk_darwin(v5);
  v7 = (&v21 - v6);
  v8 = sub_100003500(&qword_10008A178, &qword_10007BA48);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for WorldClockCity(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000B690(v14);
  *v7 = sub_10006C93C();
  v7[1] = v15;
  v16 = sub_100003500(&qword_10008A180, &qword_10007BA50);
  sub_10004BE40(v1, v14, v7 + *(v16 + 44));
  sub_10006C93C();
  sub_10006BEDC();
  v17 = (v7 + *(v5 + 36));
  v18 = v28;
  *v17 = v27;
  v17[1] = v18;
  v17[2] = v29;
  sub_10006C2BC();
  v19 = sub_100050028();
  sub_10006C6AC();
  (*(v22 + 8))(v4, v23);
  sub_100009204(v7, &qword_10008A170, &qword_10007BA40);
  type metadata accessor for ClockCircularAnalogueComplication(0);
  v25 = v5;
  v26 = v19;
  swift_getOpaqueTypeConformance2();
  sub_10006C68C();
  (*(v9 + 8))(v11, v8);
  return sub_10003DD7C(v14, type metadata accessor for WorldClockCity);
}

uint64_t sub_10004BE40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v84 = a2;
  v81 = a3;
  v4 = type metadata accessor for Clock(0);
  __chkstk_darwin(v4);
  v82 = &v73[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v76 = &v73[-v7];
  v8 = sub_100003500(&qword_10008B3E0, &qword_10007CA38);
  __chkstk_darwin(v8);
  v10 = &v73[-v9];
  v11 = sub_100003500(&qword_10008B3E8, &qword_10007CA40);
  __chkstk_darwin(v11);
  v80 = &v73[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v73[-v14];
  __chkstk_darwin(v16);
  v87 = &v73[-v17];
  v18 = sub_10006C7DC();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v73[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v79 = sub_10006C99C();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v73[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v86 = &v73[-v24];
  sub_10006C98C();
  v25 = type metadata accessor for ClockCircularAnalogueComplication(0);
  v83 = 0;
  v26 = 0;
  v27 = v25[7];
  v85 = a1;
  v74 = *(a1 + v27);
  if ((v74 & 1) == 0)
  {
    sub_10006C82C();
    (*(v19 + 104))(v21, enum case for Image.ResizingMode.stretch(_:), v18);
    v28 = sub_10006C81C();
    v75 = v10;
    v29 = v15;
    v30 = v25;
    v31 = v8;
    v32 = v11;
    v33 = v28;

    (*(v19 + 8))(v21, v18);
    v83 = v33;
    v11 = v32;
    v8 = v31;
    v25 = v30;
    v15 = v29;
    v10 = v75;

    v26 = 0x3FE8000000000000;
  }

  v75 = v26;
  *v10 = sub_10006C1BC();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v34 = sub_100003500(&qword_10008B3F0, &qword_10007CA48);
  v35 = v85;
  sub_10004C764(v85, v84, &v10[*(v34 + 44)]);
  v36 = (v35 + v25[6]);
  v37 = v36[3];
  v38 = v36[4];
  sub_10004F840(v36, v37);
  v39 = (*(v38 + 24))(v37, v38) * 0.446;
  v40 = sub_10006C33C();
  v41 = &v10[*(v8 + 36)];
  *v41 = v40;
  *(v41 + 1) = 0;
  *(v41 + 2) = 0;
  *(v41 + 3) = v39;
  *(v41 + 4) = 0;
  v41[40] = 0;
  v42 = v36[3];
  v43 = v36[4];
  sub_10004F840(v36, v42);
  (*(v43 + 24))(v42, v43);
  v44 = v36[3];
  v45 = v36[4];
  sub_10004F840(v36, v44);
  (*(v45 + 24))(v44, v45);
  sub_10006C93C();
  sub_10006BF6C();
  sub_1000586D4(v10, v15, &qword_10008B3E0, &qword_10007CA38);
  v46 = &v15[*(v11 + 36)];
  v47 = v94;
  v46[4] = v93;
  v46[5] = v47;
  v46[6] = v95;
  v48 = v90;
  *v46 = v89;
  v46[1] = v48;
  v49 = v92;
  v46[2] = v91;
  v46[3] = v49;
  v50 = v87;
  sub_1000586D4(v15, v87, &qword_10008B3E8, &qword_10007CA40);
  v51 = v76;
  sub_1000657E8(&v76[v4[5]]);
  sub_10003E1E0(v36, &v51[v4[6]]);
  v52 = v4[8];
  v53 = sub_10006BB7C();
  (*(*(v53 - 8) + 56))(&v51[v52], 1, 1, v53);
  v54 = *(v85 + v25[8]);
  v55 = sub_10006C78C();
  v56 = sub_10006C75C();
  v57 = sub_10006C78C();
  sub_10006C9DC();
  *v51 = 1;
  v51[v4[7]] = v74;
  v51[v4[9]] = v54;
  v51[v4[10]] = 0;
  v58 = &v51[v4[11]];
  *v58 = xmmword_10007B520;
  *(v58 + 2) = 0x3FA999999999999ALL;
  *(v58 + 3) = v55;
  *(v58 + 4) = v56;
  v58[40] = 0;
  *(v58 + 41) = *v88;
  *(v58 + 11) = *&v88[3];
  *(v58 + 6) = v57;
  *(v58 + 7) = 0;
  v51[v4[12]] = 0;
  v51[v4[13]] = 1;
  v59 = &v51[v4[15]];
  type metadata accessor for ClockWidgetEnvironmentObject(0);
  sub_10003DF94(&qword_100089220, type metadata accessor for ClockWidgetEnvironmentObject, &unk_10007D7D8);
  *v59 = sub_10006BE6C();
  v59[8] = v60 & 1;
  v61 = v78;
  v62 = *(v78 + 16);
  v63 = v77;
  v64 = v79;
  v62(v77, v86, v79);
  v65 = v80;
  sub_100009264(v50, v80, &qword_10008B3E8, &qword_10007CA40);
  v66 = v82;
  sub_10003DE44(v51, v82, type metadata accessor for Clock);
  v67 = v81;
  v62(v81, v63, v64);
  v68 = sub_100003500(&qword_10008B3F8, &unk_10007CA50);
  v69 = &v67[v68[12]];
  v70 = v75;
  *v69 = v83;
  v69[1] = v70;
  sub_100009264(v65, &v67[v68[16]], &qword_10008B3E8, &qword_10007CA40);
  sub_10003DE44(v66, &v67[v68[20]], type metadata accessor for Clock);
  sub_10003DD7C(v51, type metadata accessor for Clock);
  sub_100009204(v87, &qword_10008B3E8, &qword_10007CA40);
  v71 = *(v61 + 8);
  v71(v86, v64);
  sub_10003DD7C(v66, type metadata accessor for Clock);
  sub_100009204(v65, &qword_10008B3E8, &qword_10007CA40);

  return (v71)(v63, v64);
}

uint64_t sub_10004C764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100003500(&qword_100089B40, &qword_10007D480);
  __chkstk_darwin(v6 - 8);
  v8 = &v36 - v7;
  v9 = sub_100003500(&qword_10008B400, &qword_10007CA60);
  v45 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  if (*(a1 + *(type metadata accessor for ClockCircularAnalogueComplication(0) + 28)))
  {
    v12 = *(v45 + 56);

    return v12(a3, 1, 1, v9);
  }

  else
  {
    v42 = type metadata accessor for WorldClockCity(0);
    v14 = (a2 + *(v42 + 28));
    v15 = v14[1];
    *&v55[0] = *v14;
    *(&v55[0] + 1) = v15;
    v43 = sub_10002B2FC();

    v16 = sub_10006C5BC();
    v44 = a3;
    v18 = v17;
    v41 = a2;
    v20 = v19;
    sub_10006C3DC();
    v40 = sub_10006C4DC();
    v39 = v21;
    v23 = v22;
    v38 = v24;
    sub_1000070DC(v16, v18, v20 & 1);

    KeyPath = swift_getKeyPath();
    v36 = swift_getKeyPath();
    LOBYTE(v55[0]) = v23 & 1;
    LOBYTE(v48) = 0;
    v25 = sub_10006C78C();
    v26 = swift_getKeyPath();
    sub_10006C3AC();
    v27 = enum case for Font.Design.default(_:);
    v28 = sub_10006C39C();
    v29 = *(v28 - 8);
    (*(v29 + 104))(v8, v27, v28);
    (*(v29 + 56))(v8, 0, 1, v28);
    v30 = sub_10006C3EC();
    sub_100009204(v8, &qword_100089B40, &qword_10007D480);
    v31 = swift_getKeyPath();
    *&v48 = v40;
    *(&v48 + 1) = v39;
    LOBYTE(v49) = v23 & 1;
    *(&v49 + 1) = v38;
    *&v50 = KeyPath;
    *(&v50 + 1) = 1;
    LOBYTE(v51) = 0;
    *(&v51 + 1) = v36;
    *&v52 = 0x3FE3333333333333;
    *(&v52 + 1) = v26;
    *&v53 = v25;
    *(&v53 + 1) = v31;
    v54 = v30;
    v32 = (v41 + *(v42 + 24));
    v34 = *v32;
    v33 = v32[1];
    v46 = v34;
    v47 = v33;
    sub_100003500(&qword_10008B408, &qword_10007CA68);
    sub_100057870();
    sub_10006C67C();
    v55[4] = v52;
    v55[5] = v53;
    v56 = v54;
    v55[0] = v48;
    v55[1] = v49;
    v55[2] = v50;
    v55[3] = v51;
    sub_100009204(v55, &qword_10008B408, &qword_10007CA68);
    v35 = v44;
    sub_1000586D4(v11, v44, &qword_10008B400, &qword_10007CA60);
    return (*(v45 + 56))(v35, 0, 1, v9);
  }
}

double sub_10004CC3C@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_10006C78C();
  v4 = sub_10006C75C();
  v5 = sub_10006C78C();
  result = 0.1;
  *a2 = xmmword_10007B520;
  *(a2 + 16) = 0x3FA999999999999ALL;
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = 0;
  *(a2 + 48) = v5;
  *(a2 + 56) = 0;
  return result;
}

uint64_t sub_10004CCA0@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  sub_100003500(a2, a3);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10004CD00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  sub_10003DDDC(a1, a7, type metadata accessor for WorldClockEntry);
  v13 = type metadata accessor for ClockCircularAnalogueComplication(0);
  sub_1000586D4(a2, a7 + v13[5], &qword_100088B58, &qword_100079D00);
  result = sub_10003D860(a3, a7 + v13[6]);
  *(a7 + v13[7]) = a4;
  *(a7 + v13[8]) = a5;
  *(a7 + v13[9]) = a6;
  return result;
}

uint64_t sub_10004CDC0@<X0>(uint64_t a1@<X8>)
{
  v4 = v2 + *(type metadata accessor for ClockCircularDigitalComplication(0) + 20);

  return sub_10003E1E0(v4, a1);
}

uint64_t sub_10004CE28(char a1, __n128 a2)
{
  result = type metadata accessor for ClockCircularDigitalComplication(0);
  *(v2 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_10004CEC4(char a1, __n128 a2)
{
  result = type metadata accessor for ClockCircularDigitalComplication(0);
  *(v2 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_10004CF60(char a1, __n128 a2)
{
  result = type metadata accessor for ClockCircularDigitalComplication(0);
  *(v2 + *(result + 32)) = a1;
  return result;
}

uint64_t sub_10004CFDC@<X0>(uint64_t a1@<X8>)
{
  v22[2] = a1;
  v1 = type metadata accessor for WorldClockCity(0);
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000B690(v4);
  v5 = &v4[*(v2 + 36)];
  v6 = *v5;
  v7 = *(v5 + 1);

  sub_10003DD7C(v4, type metadata accessor for WorldClockCity);
  *&v30[0] = v6;
  *(&v30[0] + 1) = v7;
  v22[1] = sub_10002B2FC();
  v8 = sub_10006C5BC();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  KeyPath = swift_getKeyPath();
  v16 = sub_10006C42C();
  v17 = swift_getKeyPath();
  v29 = v12 & 1;
  v28 = 0;
  *&v23 = v8;
  *(&v23 + 1) = v10;
  LOBYTE(v24) = v12 & 1;
  *(&v24 + 1) = v14;
  *&v25 = KeyPath;
  *(&v25 + 1) = 1;
  LOBYTE(v26) = 0;
  *(&v26 + 1) = v17;
  v27 = v16;
  sub_10000B690(v4);
  v18 = &v4[*(v2 + 32)];
  v20 = *v18;
  v19 = *(v18 + 1);

  sub_10003DD7C(v4, type metadata accessor for WorldClockCity);
  v22[3] = v20;
  v22[4] = v19;
  sub_100003500(&qword_10008A1A0, &qword_10007BA90);
  sub_100050100();
  sub_10006C67C();

  v30[2] = v25;
  v30[3] = v26;
  v31 = v27;
  v30[0] = v23;
  v30[1] = v24;
  return sub_100009204(v30, &qword_10008A1A0, &qword_10007BA90);
}

uint64_t sub_10004D1FC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WorldClockCity(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003500(&qword_100088BE0, &qword_10007B3C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v30 - v6;
  v8 = sub_10006BC3C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002988C();
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_100029924();
  (*(v9 + 8))(v11, v8);
  if (v13)
  {
    v31 = 0;
    v32 = 1;
    result = sub_10006C26C();
  }

  else
  {
    sub_10000B690(v4);
    sub_1000657E8(v7);
    sub_10003DD7C(v4, type metadata accessor for WorldClockCity);
    v15 = sub_10006BD3C();
    (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
    v16 = sub_10006C4CC();
    v18 = v17;
    v20 = v19;
    sub_10006C42C();
    v21 = sub_10006C52C();
    v23 = v22;
    v25 = v24;
    v27 = v26;

    sub_1000070DC(v16, v18, v20 & 1);

    KeyPath = swift_getKeyPath();
    v33 = v21;
    v34 = v23;
    v35 = v25 & 1;
    v36 = v27;
    v37 = KeyPath;
    v38 = 1;
    sub_100050270(v21, v23, v25 & 1);

    sub_100003500(&qword_10008A1D0, &qword_10007BAA8);
    sub_100050280();
    v31 = sub_10006C8AC();
    v32 = 0;
    sub_10006C26C();
    sub_1000070DC(v21, v23, v25 & 1);
  }

  v29 = v34;
  *a1 = v33;
  *(a1 + 8) = v29;
  return result;
}

uint64_t sub_10004D58C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22[1] = a1;
  v3 = sub_10006C2CC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003500(&qword_10008A1E0, &qword_10007BAB0);
  __chkstk_darwin(v7);
  v9 = v22 - v8;
  v10 = sub_100003500(&qword_10008A1E8, &qword_10007BAB8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v22 - v12;
  *v9 = sub_10006C93C();
  *(v9 + 1) = v14;
  v15 = sub_100003500(&qword_10008A1F0, &qword_10007BAC0);
  sub_10004D878(v2, &v9[*(v15 + 44)]);
  KeyPath = swift_getKeyPath();
  v17 = &v9[*(sub_100003500(&qword_10008A1F8, &qword_10007BAC8) + 36)];
  *v17 = KeyPath;
  v17[1] = 0x3FE8000000000000;
  sub_10006C93C();
  sub_10006BEDC();
  v18 = &v9[*(v7 + 36)];
  v19 = v24;
  *v18 = v23;
  *(v18 + 1) = v19;
  *(v18 + 2) = v25;
  sub_10006C2BC();
  v20 = sub_100050338();
  sub_10006C6AC();
  (*(v4 + 8))(v6, v3);
  sub_100009204(v9, &qword_10008A1E0, &qword_10007BAB0);
  type metadata accessor for ClockCircularDigitalComplication(0);
  v22[2] = v7;
  v22[3] = v20;
  swift_getOpaqueTypeConformance2();
  sub_10006C68C();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_10004D878@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_100003500(&qword_10008B390, &qword_10007C9F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = sub_10006C99C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v22 - v15;
  sub_10006C98C();
  *v9 = sub_10006C1BC();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v17 = sub_100003500(&qword_10008B398, &qword_10007C9F8);
  sub_10004DADC(a1, &v9[*(v17 + 44)]);
  v18 = *(v11 + 16);
  v18(v13, v16, v10);
  sub_100009264(v9, v6, &qword_10008B390, &qword_10007C9F0);
  v18(a2, v13, v10);
  v19 = &a2[*(sub_100003500(&qword_10008B3A0, &qword_10007CA00) + 48)];
  sub_100009264(v6, v19, &qword_10008B390, &qword_10007C9F0);
  sub_100009204(v9, &qword_10008B390, &qword_10007C9F0);
  v20 = *(v11 + 8);
  v20(v16, v10);
  sub_100009204(v6, &qword_10008B390, &qword_10007C9F0);
  return (v20)(v13, v10);
}

uint64_t sub_10004DADC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v80 = a2;
  v81 = a1;
  v76 = sub_100003500(&qword_10008B3A8, &qword_10007CA08);
  __chkstk_darwin(v76);
  v77 = (&v67 - v2);
  v3 = sub_100003500(&qword_10008B3B0, &qword_10007CA10);
  __chkstk_darwin(v3 - 8);
  v79 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v78 = &v67 - v6;
  v7 = type metadata accessor for WorldClockCity(0);
  __chkstk_darwin(v7 - 8);
  v68 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003500(&qword_100088BE0, &qword_10007B3C0);
  __chkstk_darwin(v9 - 8);
  v70 = &v67 - v10;
  v72 = sub_100003500(&qword_10008B3B8, &qword_10007CA18);
  __chkstk_darwin(v72);
  v71 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v67 - v13;
  v15 = sub_100003500(&qword_10008B328, &qword_10007C990);
  __chkstk_darwin(v15);
  v17 = &v67 - v16;
  v18 = sub_100003500(&qword_10008B3C0, &qword_10007CA20);
  __chkstk_darwin(v18);
  v20 = &v67 - v19;
  v21 = sub_100003500(&qword_10008B3C8, &qword_10007CA28);
  __chkstk_darwin(v21 - 8);
  v75 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v67 - v24;
  v26 = sub_10006BC3C();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10002988C();
  (*(v27 + 16))(v29, v30, v26);
  v31 = sub_10002AA0C();
  (*(v27 + 8))(v29, v26);
  v69 = v31;
  v73 = v15;
  v74 = v25;
  v67 = v17;
  if (v31)
  {
    sub_10004D1FC(&v82);
    v32 = v83;
    *v20 = v82;
    v20[8] = v32;
    swift_storeEnumTagMultiPayload();
    sub_100003500(&qword_10008B338, &qword_10007C998);
    sub_100057194();
    sub_1000570D4();
    sub_10006C26C();
  }

  else
  {
    sub_10004CFDC(v17);
    sub_100009264(v17, v20, &qword_10008B328, &qword_10007C990);
    swift_storeEnumTagMultiPayload();
    sub_100003500(&qword_10008B338, &qword_10007C998);
    sub_100057194();
    sub_1000570D4();
    sub_10006C26C();
    sub_100009204(v17, &qword_10008B328, &qword_10007C990);
  }

  v33 = v68;
  sub_10000B690(v68);
  v34 = v70;
  sub_1000657E8(v70);
  sub_10003DD7C(v33, type metadata accessor for WorldClockCity);
  v35 = sub_10006BD3C();
  (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  v36 = sub_10006C50C();
  v38 = v37;
  v40 = v39;
  sub_10006C37C();
  v41 = sub_10006C52C();
  v43 = v42;
  LOBYTE(v34) = v44;

  sub_1000070DC(v36, v38, v40 & 1);

  sub_10006C3BC();
  v45 = sub_10006C4DC();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_1000070DC(v41, v43, v34 & 1);

  KeyPath = swift_getKeyPath();
  v53 = swift_getKeyPath();
  v54 = &v14[*(v72 + 36)];
  sub_100003500(&qword_10008B378, &qword_10007D430);
  sub_10006BBFC();
  *v54 = v53;
  *v14 = v45;
  *(v14 + 1) = v47;
  v14[16] = v49 & 1;
  *(v14 + 3) = v51;
  *(v14 + 4) = KeyPath;
  v14[40] = 1;
  sub_100009264(v14, v71, &qword_10008B3B8, &qword_10007CA18);
  sub_1000577B8();
  v55 = sub_10006C8AC();
  sub_100009204(v14, &qword_10008B3B8, &qword_10007CA18);
  v72 = v55;
  if (v69)
  {

    v56 = v67;
    sub_10004CFDC(v67);
    sub_100009264(v56, v77, &qword_10008B328, &qword_10007C990);
    swift_storeEnumTagMultiPayload();
    sub_100003500(&qword_10008B338, &qword_10007C998);
    sub_1000570D4();
    sub_100057194();
    v57 = v78;
    sub_10006C26C();
    sub_100009204(v56, &qword_10008B328, &qword_10007C990);
  }

  else
  {

    sub_10004D1FC(&v82);
    v58 = v83;
    v59 = v77;
    *v77 = v82;
    *(v59 + 8) = v58;
    swift_storeEnumTagMultiPayload();
    sub_100003500(&qword_10008B338, &qword_10007C998);
    sub_1000570D4();
    sub_100057194();
    v57 = v78;
    sub_10006C26C();
  }

  v60 = v74;
  v61 = v75;
  sub_100009264(v74, v75, &qword_10008B3C8, &qword_10007CA28);
  v62 = v79;
  sub_100009264(v57, v79, &qword_10008B3B0, &qword_10007CA10);
  v63 = v80;
  *v80 = 0;
  *(v63 + 8) = 1;
  v64 = sub_100003500(&qword_10008B3D8, &qword_10007CA30);
  sub_100009264(v61, v63 + v64[12], &qword_10008B3C8, &qword_10007CA28);
  *(v63 + v64[16]) = v72;
  sub_100009264(v62, v63 + v64[20], &qword_10008B3B0, &qword_10007CA10);
  v65 = v63 + v64[24];
  *v65 = 0;
  v65[8] = 1;
  sub_100009204(v57, &qword_10008B3B0, &qword_10007CA10);
  sub_100009204(v60, &qword_10008B3C8, &qword_10007CA28);
  sub_100009204(v62, &qword_10008B3B0, &qword_10007CA10);

  return sub_100009204(v61, &qword_10008B3C8, &qword_10007CA28);
}

uint64_t sub_10004E420@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  sub_10003DDDC(a1, a6, type metadata accessor for WorldClockEntry);
  v11 = type metadata accessor for ClockCircularDigitalComplication(0);
  result = sub_10003D860(a2, a6 + v11[5]);
  *(a6 + v11[6]) = a3;
  *(a6 + v11[7]) = a4;
  *(a6 + v11[8]) = a5;
  return result;
}

uint64_t sub_10004E4B4@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = sub_10006C2CC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003500(&qword_10008A220, &qword_10007BAD8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - v7;
  v9 = sub_10006C0EC();
  sub_10004E754(v21);
  v10 = v21[0];
  sub_10006C93C();
  sub_10006BEDC();
  v20 = 1;
  v15 = v9;
  v16[0] = 1;
  *&v16[8] = v10;
  sub_10006C2BC();
  v11 = sub_100003500(&qword_10008A228, &qword_10007BAE0);
  v12 = sub_1000504A8();
  sub_10006C6AC();
  (*(v2 + 8))(v4, v1);
  v21[2] = *&v16[16];
  v21[3] = v17;
  v21[4] = v18;
  v22 = v19;
  v21[0] = v15;
  v21[1] = *v16;
  sub_100009204(v21, &qword_10008A228, &qword_10007BAE0);
  *&v15 = v11;
  *(&v15 + 1) = v12;
  swift_getOpaqueTypeConformance2();
  sub_10006C68C();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10004E754@<X0>(uint64_t *a1@<X8>)
{
  v35 = a1;
  v1 = sub_100003500(&qword_100088BE0, &qword_10007B3C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v34 - v2;
  v4 = type metadata accessor for WorldClockCity(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10006C13C();
  __chkstk_darwin(v8 - 8);
  v9 = sub_100003500(&qword_10008B370, &qword_10007C9B0);
  __chkstk_darwin(v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  v34 = sub_10006C7FC();
  sub_10006C12C();
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  sub_10006C11C(v36);
  sub_10000B690(v7);
  v15 = (v7 + *(v5 + 36));
  v16 = *v15;
  v17 = v15[1];

  sub_10003DD7C(v7, type metadata accessor for WorldClockCity);
  v37._countAndFlagsBits = v16;
  v37._object = v17;
  sub_10006C10C(v37);

  v38._countAndFlagsBits = 32;
  v38._object = 0xE100000000000000;
  sub_10006C11C(v38);
  sub_10000B690(v7);
  sub_1000657E8(v3);
  sub_10003DD7C(v7, type metadata accessor for WorldClockCity);
  v18 = sub_10006BD3C();
  (*(*(v18 - 8) + 56))(v3, 0, 1, v18);
  v19 = sub_10006C50C();
  v21 = v20;
  LOBYTE(v7) = v22;
  sub_10006C0FC();
  sub_1000070DC(v19, v21, v7 & 1);

  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  sub_10006C11C(v39);
  sub_10006C15C();
  v23 = sub_10006C59C();
  v25 = v24;
  LOBYTE(v21) = v26;
  v28 = v27;
  KeyPath = swift_getKeyPath();
  v30 = &v14[*(v9 + 36)];
  sub_100003500(&qword_10008B378, &qword_10007D430);
  sub_10006BBFC();
  *v30 = KeyPath;
  *v14 = v23;
  *(v14 + 1) = v25;
  v14[16] = v21 & 1;
  *(v14 + 3) = v28;
  sub_100009264(v14, v11, &qword_10008B370, &qword_10007C9B0);
  sub_100057700();
  v31 = sub_10006C8AC();
  result = sub_100009204(v14, &qword_10008B370, &qword_10007C9B0);
  v33 = v35;
  *v35 = v34;
  v33[1] = v31;
  return result;
}

uint64_t sub_10004EB5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10006C01C();
  *a1 = result;
  return result;
}

uint64_t sub_10004EBB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10006BF9C();
  *a1 = result;
  return result;
}

uint64_t sub_10004EC0C@<X0>(uint64_t a1@<X8>)
{
  result = sub_10006C07C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10004EC94(uint64_t a1)
{
  v2 = sub_100003500(&qword_10008B928, &qword_10007CEA8);
  __chkstk_darwin(v2 - 8);
  sub_100009264(a1, &v5 - v3, &qword_10008B928, &qword_10007CEA8);
  return sub_10006BFEC();
}

void *sub_10004EDCC(void *result, int64_t a2, char a3, void *a4)
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

  sub_100003500(&qword_100088BC8, &unk_1000799A0);
  v10 = *(type metadata accessor for WorldClockCity(0) - 8);
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
  v15 = *(type metadata accessor for WorldClockCity(0) - 8);
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

uint64_t sub_10004EFD4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t sub_10004F0AC()
{
  result = qword_100089EF0;
  if (!qword_100089EF0)
  {
    sub_100007094(&qword_100089ED8, &qword_10007B798);
    sub_100011308(&qword_100089EF8, &qword_100089F00, &qword_10007B7B0, &protocol conformance descriptor for VStack<A>);
    sub_100011308(&qword_100089F08, &qword_100089EC8, &qword_10007B750, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089EF0);
  }

  return result;
}

uint64_t sub_10004F204@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10006BFFC();
  *a1 = result;
  return result;
}

BOOL sub_10004F258(uint64_t a1, uint64_t a2)
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
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.extraExtraLarge(_:))
      {
        v17 = 5;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
      {
        v17 = 6;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityMedium(_:))
      {
        v17 = 7;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityLarge(_:))
      {
        v17 = 8;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
      {
        v17 = 9;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
      {
        v17 = 10;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        v17 = 11;
        return v14 >= v17;
      }

      (*(v4 + 8))(v6, v3);
    }

    v17 = 3;
  }

  return v14 >= v17;
}

uint64_t sub_10004F670()
{
  v1 = sub_10006C9EC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  sub_100036CA4(&v12 - v6);
  sub_10006C9CC();
  v8 = sub_10006C9AC();
  v9 = *(v2 + 8);
  v9(v4, v1);
  v9(v7, v1);
  if (v8)
  {
    v10 = sub_10000F850();
  }

  else if (*(v0 + 8) == 1)
  {
    v10 = sub_10000F9A8();
  }

  else
  {
    v10 = sub_10000FAC4();
  }

  return *v10;
}

unint64_t sub_10004F7BC()
{
  result = qword_100089F98;
  if (!qword_100089F98)
  {
    sub_100007094(&qword_100089F88, &qword_10007B820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089F98);
  }

  return result;
}

void *sub_10004F840(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10004F884()
{
  result = qword_100089FD8;
  if (!qword_100089FD8)
  {
    sub_100007094(&qword_100089FD0, &qword_10007B928);
    sub_10004F93C();
    sub_100011308(&qword_10008A030, &qword_10008A038, &qword_10007B958, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089FD8);
  }

  return result;
}

unint64_t sub_10004F93C()
{
  result = qword_100089FE0;
  if (!qword_100089FE0)
  {
    sub_100007094(&qword_100089FE8, &qword_10007B930);
    sub_10004F9F4();
    sub_100011308(&qword_10008A020, &qword_10008A028, &qword_10007B950, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089FE0);
  }

  return result;
}

unint64_t sub_10004F9F4()
{
  result = qword_100089FF0;
  if (!qword_100089FF0)
  {
    sub_100007094(&qword_100089FF8, &qword_10007B938);
    sub_10004FAAC();
    sub_100011308(&qword_10008A010, &qword_10008A018, &qword_10007B948, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089FF0);
  }

  return result;
}

unint64_t sub_10004FAAC()
{
  result = qword_10008A000;
  if (!qword_10008A000)
  {
    sub_100007094(&qword_10008A008, &qword_10007B940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008A000);
  }

  return result;
}

unint64_t sub_10004FB30()
{
  result = qword_10008A050;
  if (!qword_10008A050)
  {
    sub_100007094(&qword_10008A048, &qword_10007B968);
    sub_10004FBE8();
    sub_100011308(&qword_10008A020, &qword_10008A028, &qword_10007B950, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008A050);
  }

  return result;
}

unint64_t sub_10004FBE8()
{
  result = qword_10008A058;
  if (!qword_10008A058)
  {
    sub_100007094(&qword_10008A060, &qword_10007B970);
    sub_10004FC74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008A058);
  }

  return result;
}

unint64_t sub_10004FC74()
{
  result = qword_10008A068;
  if (!qword_10008A068)
  {
    sub_100007094(&qword_10008A070, &qword_10007B978);
    sub_10004FD2C();
    sub_100011308(&qword_10008A010, &qword_10008A018, &qword_10007B948, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008A068);
  }

  return result;
}

unint64_t sub_10004FD2C()
{
  result = qword_10008A078;
  if (!qword_10008A078)
  {
    sub_100007094(&qword_10008A080, &qword_10007B980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008A078);
  }

  return result;
}

unint64_t sub_10004FDE8()
{
  result = qword_10008A0B0;
  if (!qword_10008A0B0)
  {
    sub_100007094(&qword_10008A090, &qword_10007B990);
    sub_100011308(&qword_10008A0B8, &qword_10008A0C0, &qword_10007B9B0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008A0B0);
  }

  return result;
}

unint64_t sub_10004FF50()
{
  result = qword_10008A140;
  if (!qword_10008A140)
  {
    sub_100007094(&qword_10008A138, &qword_10007BA28);
    sub_100011308(&qword_10008A148, &qword_10008A150, &qword_10007BA30, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008A140);
  }

  return result;
}

unint64_t sub_100050028()
{
  result = qword_10008A188;
  if (!qword_10008A188)
  {
    sub_100007094(&qword_10008A170, &qword_10007BA40);
    sub_100011308(&qword_10008A190, &qword_10008A198, &qword_10007BA58, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008A188);
  }

  return result;
}

unint64_t sub_100050100()
{
  result = qword_10008A1A8;
  if (!qword_10008A1A8)
  {
    sub_100007094(&qword_10008A1A0, &qword_10007BA90);
    sub_1000501B8();
    sub_100011308(&qword_10008A1C0, &qword_10008A1C8, &qword_10007BAA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008A1A8);
  }

  return result;
}

unint64_t sub_1000501B8()
{
  result = qword_10008A1B0;
  if (!qword_10008A1B0)
  {
    sub_100007094(&qword_10008A1B8, &qword_10007BA98);
    sub_100011308(&qword_10008A010, &qword_10008A018, &qword_10007B948, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008A1B0);
  }

  return result;
}

uint64_t sub_100050270(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_100050280()
{
  result = qword_10008A1D8;
  if (!qword_10008A1D8)
  {
    sub_100007094(&qword_10008A1D0, &qword_10007BAA8);
    sub_100011308(&qword_10008A030, &qword_10008A038, &qword_10007B958, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008A1D8);
  }

  return result;
}

unint64_t sub_100050338()
{
  result = qword_10008A200;
  if (!qword_10008A200)
  {
    sub_100007094(&qword_10008A1E0, &qword_10007BAB0);
    sub_1000503C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008A200);
  }

  return result;
}

unint64_t sub_1000503C4()
{
  result = qword_10008A208;
  if (!qword_10008A208)
  {
    sub_100007094(&qword_10008A1F8, &qword_10007BAC8);
    sub_100011308(&qword_10008A210, &qword_10008A218, &qword_10007BAD0, &protocol conformance descriptor for ZStack<A>);
    sub_100011308(&qword_10008A020, &qword_10008A028, &qword_10007B950, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008A208);
  }

  return result;
}

unint64_t sub_1000504A8()
{
  result = qword_10008A230;
  if (!qword_10008A230)
  {
    sub_100007094(&qword_10008A228, &qword_10007BAE0);
    sub_100011308(&qword_10008A238, &qword_10008A240, &qword_10007BAE8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008A230);
  }

  return result;
}

unint64_t sub_1000506EC()
{
  result = qword_10008A248;
  if (!qword_10008A248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008A248);
  }

  return result;
}

unint64_t sub_100050744()
{
  result = qword_10008A250;
  if (!qword_10008A250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008A250);
  }

  return result;
}

unint64_t sub_100050798()
{
  result = qword_10008A258;
  if (!qword_10008A258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008A258);
  }

  return result;
}

unint64_t sub_100050834()
{
  result = qword_10008A270;
  if (!qword_10008A270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008A270);
  }

  return result;
}

unint64_t sub_10005088C()
{
  result = qword_10008A278;
  if (!qword_10008A278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008A278);
  }

  return result;
}

void sub_100050A70(uint64_t a1)
{
  type metadata accessor for WorldClockEntry(319);
  if (v1 <= 0x3F)
  {
    sub_100053EC4(319, &qword_100088AA8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_10005201C(319, &qword_10008A2E8, &type metadata for Bool, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_100053EC4(319, &qword_10008A2F0, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_100053EC4(319, &unk_10008A2F8, type metadata accessor for ClockWidgetEnvironmentObject, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100050C94(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for WorldClockEntry(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100003500(&qword_100088A48, &unk_10007B6A0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 254)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 > 1)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = sub_100003500(&qword_100089988, &qword_10007A9D8);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_100050E30(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for WorldClockEntry(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_100003500(&qword_100088A48, &unk_10007B6A0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6] + 8) = -a2;
  }

  else
  {
    v15 = sub_100003500(&qword_100089988, &qword_10007A9D8);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_100050FBC(uint64_t a1)
{
  type metadata accessor for WorldClockEntry(319);
  if (v1 <= 0x3F)
  {
    sub_100053EC4(319, &qword_100088AA8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_10005201C(319, &qword_10008A2E8, &type metadata for Bool, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_100053EC4(319, &qword_10008A2F0, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100051108(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_10006C9EC();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1000511C8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_10006C9EC();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10005128C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003500(&qword_100088A48, &unk_10007B6A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_10006C9EC();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000513DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003500(&qword_100088A48, &unk_10007B6A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = sub_10006C9EC();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_100051508(uint64_t a1)
{
  sub_100053EC4(319, &qword_100088AA8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_10006C9EC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000515D8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100003500(&qword_100088B58, &qword_100079D00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for WorldClockCity(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6] + 24);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_10006C9EC();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[13];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_100051770(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100003500(&qword_100088B58, &qword_100079D00);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for WorldClockCity(0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 24) = (a2 - 1);
  }

  else
  {
    v15 = sub_10006C9EC();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[13];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_1000518F4(uint64_t a1)
{
  sub_100053EC4(319, &qword_100089038, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    type metadata accessor for WorldClockCity(319);
    if (v2 <= 0x3F)
    {
      sub_100051A34();
      if (v3 <= 0x3F)
      {
        sub_100053EC4(319, &unk_10008A2F8, type metadata accessor for ClockWidgetEnvironmentObject, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_10006C9EC();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_100051A34()
{
  result = qword_10008A5A8;
  if (!qword_10008A5A8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10008A5A8);
  }

  return result;
}

uint64_t sub_100051AAC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10006C9EC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_100051B6C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10006C9EC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100051C10(uint64_t a1)
{
  sub_100053EC4(319, &qword_100088E50, type metadata accessor for WorldClockCity, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_10006C9EC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100051CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WorldClockEntry(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_10006C9EC();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100051E28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for WorldClockEntry(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = sub_10006C9EC();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_100051F4C(uint64_t a1)
{
  type metadata accessor for WorldClockEntry(319);
  if (v1 <= 0x3F)
  {
    sub_10005201C(319, &unk_10008A6E0, &type metadata for Color, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_10006C9EC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10005201C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_100052080(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100003500(&qword_100088B58, &qword_100079D00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for WorldClockCity(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6] + 24);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_10006C9EC();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[11];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_100052218(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100003500(&qword_100088B58, &qword_100079D00);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for WorldClockCity(0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 24) = (a2 - 1);
  }

  else
  {
    v15 = sub_10006C9EC();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[11];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_10005239C(uint64_t a1)
{
  sub_100053EC4(319, &qword_100089038, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    type metadata accessor for WorldClockCity(319);
    if (v2 <= 0x3F)
    {
      sub_100051A34();
      if (v3 <= 0x3F)
      {
        sub_10006C9EC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000524B0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  v10 = sub_10006BD3C();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v11 = v10;
    v12 = *(v10 - 8);
    v13 = a3[6];
LABEL_9:
    v15 = *(v12 + 48);

    return v15(a1 + v13, a2, v11);
  }

  v14 = sub_100003500(&qword_1000887E8, &qword_1000795A0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v11 = v14;
    v12 = *(v14 - 8);
    v13 = a3[9];
    goto LABEL_9;
  }

  v16 = sub_100003500(&qword_100089988, &qword_10007A9D8);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[14];

  return v17(v18, a2, v16);
}

uint64_t sub_100052648(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = a2 + 1;
    return result;
  }

  v8 = sub_10006BD3C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100003500(&qword_1000887E8, &qword_1000795A0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = sub_100003500(&qword_100089988, &qword_10007A9D8);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[14];

  return v15(v16, a2, a2, v14);
}

void sub_1000527C8(uint64_t a1)
{
  sub_10006BD3C();
  if (v1 <= 0x3F)
  {
    sub_100053EC4(319, &qword_100088998, &type metadata accessor for Date, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100053EC4(319, &qword_10008A2F0, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100052914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_10006C9EC();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1000529A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_10006C9EC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_100052A40(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10006C9EC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100052B00(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10006C9EC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100052BA4(uint64_t a1)
{
  result = sub_10006C9EC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100052C34(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10006C9EC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100052CF4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10006C9EC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100052DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_10006C9EC();
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100052E34(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for WorldClockCity(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_100003500(&qword_100088B58, &qword_100079D00);
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[8];
      goto LABEL_3;
    }

    v14 = sub_10006C9EC();
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[10];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_100052FC8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for WorldClockCity(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[5];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 24) = (a2 - 1);
    return result;
  }

  v13 = sub_100003500(&qword_100088B58, &qword_100079D00);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_3;
  }

  v14 = sub_10006C9EC();
  v15 = *(*(v14 - 8) + 56);
  v16 = a1 + a4[10];

  return v15(v16, a2, a2, v14);
}

void sub_100053148(uint64_t a1)
{
  type metadata accessor for WorldClockCity(319);
  if (v1 <= 0x3F)
  {
    sub_100051A34();
    if (v2 <= 0x3F)
    {
      sub_100053EC4(319, &qword_100089038, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_10006C9EC();
        if (v4 <= 0x3F)
        {
          sub_100053EC4(319, &unk_10008A2F8, type metadata accessor for ClockWidgetEnvironmentObject, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100053298(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10006BD3C();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_100003500(&qword_1000887E8, &qword_1000795A0);
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[8];
      goto LABEL_3;
    }

    v14 = sub_10006C9EC();
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[14];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_10005342C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_10006BD3C();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[5];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 24) = (a2 - 1);
    return result;
  }

  v13 = sub_100003500(&qword_1000887E8, &qword_1000795A0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_3;
  }

  v14 = sub_10006C9EC();
  v15 = *(*(v14 - 8) + 56);
  v16 = a1 + a4[14];

  return v15(v16, a2, a2, v14);
}

void sub_1000535AC(uint64_t a1)
{
  sub_10006BD3C();
  if (v1 <= 0x3F)
  {
    sub_100051A34();
    if (v2 <= 0x3F)
    {
      sub_100053EC4(319, &qword_100088998, &type metadata accessor for Date, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_10006C9EC();
        if (v4 <= 0x3F)
        {
          sub_100053EC4(319, &unk_10008A2F8, type metadata accessor for ClockWidgetEnvironmentObject, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

__n128 initializeBufferWithCopyOfBuffer for Clock.ClockHand.ClockHandConnector(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for Clock.ClockHand.ClockHandConnector(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Clock.ClockHand.ClockHandConnector(uint64_t result, int a2, int a3)
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

__n128 sub_100053770(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10005377C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000537D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100053824(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005386C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

__n128 sub_1000538CC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000538E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100053928(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1000539D8(uint64_t a1)
{
  sub_10005201C(319, &qword_10008A2E8, &type metadata for Bool, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100053EC4(319, &qword_10008A2F0, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100053AF8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_100003500(&qword_100089988, &qword_10007A9D8);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_100053BC8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_100003500(&qword_100089988, &qword_10007A9D8);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100053C88(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100053D58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for WorldClockEntry(0);
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

void sub_100053E10(uint64_t a1)
{
  type metadata accessor for WorldClockEntry(319);
  if (v1 <= 0x3F)
  {
    sub_100053EC4(319, &unk_10008ADA8, &type metadata accessor for GridItem, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100053EC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100053F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WorldClockEntry(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100003500(&qword_100088B58, &qword_100079D00);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10005406C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for WorldClockEntry(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100003500(&qword_100088B58, &qword_100079D00);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_100054184(uint64_t a1)
{
  type metadata accessor for WorldClockEntry(319);
  if (v1 <= 0x3F)
  {
    sub_100053EC4(319, &qword_100089038, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100051A34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100054270(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100054344(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for WorldClockEntry(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

unint64_t sub_100054400(uint64_t a1)
{
  result = type metadata accessor for WorldClockEntry(319);
  if (v2 <= 0x3F)
  {
    result = sub_100051A34();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000544BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_100054558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_100054604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100054678()
{
  result = qword_10008AF78;
  if (!qword_10008AF78)
  {
    sub_100007094(&qword_100089DE8, &qword_10007B668);
    sub_100054734();
    sub_10003DF94(&qword_10008AFB0, type metadata accessor for AccentedWidgetBackground, &unk_10007BE60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008AF78);
  }

  return result;
}

unint64_t sub_100054734()
{
  result = qword_10008AF80;
  if (!qword_10008AF80)
  {
    sub_100007094(&qword_100089DE0, &qword_10007B660);
    sub_1000547B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008AF80);
  }

  return result;
}

unint64_t sub_1000547B8()
{
  result = qword_10008AF88;
  if (!qword_10008AF88)
  {
    sub_100007094(&qword_10008AF90, &qword_10007C838);
    sub_10003DF94(&qword_10008AF98, type metadata accessor for PlaceholderViewSingle, &unk_10007BBE0);
    sub_100011308(&qword_10008AFA0, &qword_10008AFA8, &qword_10007C840, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008AF88);
  }

  return result;
}

uint64_t sub_1000548A0()
{
  sub_100007094(&qword_100089DF0, &qword_10007B6B0);
  sub_100011308(&qword_100089E00, &qword_100089DF0, &qword_10007B6B0, &protocol conformance descriptor for VStack<A>);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10005493C()
{
  result = qword_10008AFB8;
  if (!qword_10008AFB8)
  {
    sub_100007094(&qword_10008AFC0, &qword_10007C848);
    sub_10003DF94(&qword_100089E38, type metadata accessor for PlaceholderViewMulti, &unk_10007BC30);
    sub_10003DFDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008AFB8);
  }

  return result;
}

unint64_t sub_1000549FC()
{
  result = qword_10008AFC8;
  if (!qword_10008AFC8)
  {
    sub_100007094(&qword_10008AFD0, &qword_10007C850);
    sub_10003DF94(&qword_100089E60, type metadata accessor for SmallWorldClockView, &unk_10007BC80);
    sub_10003DF94(&qword_100089D78, type metadata accessor for CapMaxContentSizeCategory, &unk_100079D08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008AFC8);
  }

  return result;
}

unint64_t sub_100054AEC()
{
  result = qword_10008AFD8;
  if (!qword_10008AFD8)
  {
    sub_100007094(&qword_10008AFE0, &qword_10007C858);
    sub_100054B70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008AFD8);
  }

  return result;
}

unint64_t sub_100054B70()
{
  result = qword_10008AFE8;
  if (!qword_10008AFE8)
  {
    sub_100007094(&qword_100089E78, &unk_10007B710);
    sub_100011308(&qword_100089E80, &qword_100089E70, &qword_10007B708, &protocol conformance descriptor for ZStack<A>);
    sub_10003DF94(&qword_100089E58, type metadata accessor for MediumWorldClockView, &unk_10007BD20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008AFE8);
  }

  return result;
}

unint64_t sub_100054C5C()
{
  result = qword_10008AFF0;
  if (!qword_10008AFF0)
  {
    sub_100007094(&qword_100089EC0, &qword_10007B748);
    sub_100054D14();
    sub_100011308(&qword_100089F08, &qword_100089EC8, &qword_10007B750, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008AFF0);
  }

  return result;
}

unint64_t sub_100054D14()
{
  result = qword_10008AFF8;
  if (!qword_10008AFF8)
  {
    sub_100007094(&qword_10008B000, &qword_10007C860);
    sub_100007094(&qword_100089E90, &qword_10007B728);
    sub_10003E244();
    swift_getOpaqueTypeConformance2();
    sub_10003DF94(&qword_10008B008, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008AFF8);
  }

  return result;
}

unint64_t sub_100054E98()
{
  result = qword_10008B030;
  if (!qword_10008B030)
  {
    sub_100007094(&qword_10008B038, &qword_10007C878);
    sub_100007094(&qword_100089ED8, &qword_10007B798);
    sub_10004F0AC();
    swift_getOpaqueTypeConformance2();
    sub_10003DF94(&qword_10008B008, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B030);
  }

  return result;
}

unint64_t sub_100054F94()
{
  result = qword_10008B040;
  if (!qword_10008B040)
  {
    sub_100007094(&qword_10008B048, &qword_10007C880);
    sub_100011308(&qword_100089F20, &qword_100089F10, &qword_10007B7B8, &protocol conformance descriptor for ZStack<A>);
    sub_10003DF94(&qword_10008B008, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B040);
  }

  return result;
}

unint64_t sub_100055108()
{
  result = qword_10008B070;
  if (!qword_10008B070)
  {
    sub_100007094(&qword_100089F48, &qword_10007B7E8);
    sub_100055194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B070);
  }

  return result;
}

unint64_t sub_100055194()
{
  result = qword_10008B078;
  if (!qword_10008B078)
  {
    sub_100007094(&qword_100089F40, &qword_10007B7E0);
    sub_10003DF94(&qword_10008B080, type metadata accessor for ClockWidgetAccentableForegroundColor, &unk_10007BEB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B078);
  }

  return result;
}

unint64_t sub_1000552DC()
{
  result = qword_10008B0A8;
  if (!qword_10008B0A8)
  {
    sub_100007094(&qword_10008B0B0, &qword_10007C8A8);
    sub_100055360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B0A8);
  }

  return result;
}

unint64_t sub_100055360()
{
  result = qword_10008B0B8;
  if (!qword_10008B0B8)
  {
    sub_100007094(&qword_10008B0C0, &qword_10007C8B0);
    sub_1000553EC();
    sub_100055854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B0B8);
  }

  return result;
}

unint64_t sub_1000553EC()
{
  result = qword_10008B0C8;
  if (!qword_10008B0C8)
  {
    sub_100007094(&qword_10008B0D0, &qword_10007C8B8);
    sub_100007094(&qword_10008B0D8, &qword_10007C8C0);
    sub_1000554E0();
    swift_getOpaqueTypeConformance2();
    sub_100011308(&qword_10008B148, &qword_10008B150, &qword_10007C8F8, &protocol conformance descriptor for _MaskAlignmentEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B0C8);
  }

  return result;
}

unint64_t sub_1000554E0()
{
  result = qword_10008B0E0;
  if (!qword_10008B0E0)
  {
    sub_100007094(&qword_10008B0D8, &qword_10007C8C0);
    sub_10005556C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B0E0);
  }

  return result;
}

unint64_t sub_10005556C()
{
  result = qword_10008B0E8;
  if (!qword_10008B0E8)
  {
    sub_100007094(&qword_10008B0F0, &qword_10007C8C8);
    sub_1000555F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B0E8);
  }

  return result;
}

unint64_t sub_1000555F8()
{
  result = qword_10008B0F8;
  if (!qword_10008B0F8)
  {
    sub_100007094(&qword_10008B100, &qword_10007C8D0);
    sub_100055684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B0F8);
  }

  return result;
}

unint64_t sub_100055684()
{
  result = qword_10008B108;
  if (!qword_10008B108)
  {
    sub_100007094(&qword_10008B110, &qword_10007C8D8);
    sub_100055710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B108);
  }

  return result;
}

unint64_t sub_100055710()
{
  result = qword_10008B118;
  if (!qword_10008B118)
  {
    sub_100007094(&qword_10008B120, &qword_10007C8E0);
    sub_10005579C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B118);
  }

  return result;
}

unint64_t sub_10005579C()
{
  result = qword_10008B128;
  if (!qword_10008B128)
  {
    sub_100007094(&qword_10008B130, &qword_10007C8E8);
    sub_100011308(&qword_10008B138, &qword_10008B140, &qword_10007C8F0, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B128);
  }

  return result;
}

unint64_t sub_100055854()
{
  result = qword_10008B158;
  if (!qword_10008B158)
  {
    sub_100007094(&qword_10008B160, &qword_10007C900);
    sub_10005590C();
    sub_100011308(&qword_10008B148, &qword_10008B150, &qword_10007C8F8, &protocol conformance descriptor for _MaskAlignmentEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B158);
  }

  return result;
}

unint64_t sub_10005590C()
{
  result = qword_10008B168;
  if (!qword_10008B168)
  {
    sub_100007094(&qword_10008B170, &qword_10007C908);
    sub_100055998();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B168);
  }

  return result;
}

unint64_t sub_100055998()
{
  result = qword_10008B178;
  if (!qword_10008B178)
  {
    sub_100007094(&qword_10008B180, &qword_10007C910);
    sub_100055684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B178);
  }

  return result;
}

unint64_t sub_100055A28()
{
  result = qword_10008B188;
  if (!qword_10008B188)
  {
    sub_100007094(&qword_100089F78, &qword_10007B810);
    sub_100007094(&qword_100089F68, &qword_10007B808);
    sub_100011308(&qword_100089F70, &qword_100089F68, &qword_10007B808, &protocol conformance descriptor for _ViewModifier_Content<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B188);
  }

  return result;
}

uint64_t sub_100055B24()
{
  sub_100007094(&qword_100089F80, &qword_10007B818);
  sub_100007094(&qword_100089F88, &qword_10007B820);
  sub_100011308(&qword_100089F90, &qword_100089F80, &qword_10007B818, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_10004F7BC();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100055BE4()
{
  result = qword_10008B190;
  if (!qword_10008B190)
  {
    sub_100007094(&qword_100089FB0, &qword_10007B868);
    sub_100055C70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B190);
  }

  return result;
}

unint64_t sub_100055C70()
{
  result = qword_10008B198;
  if (!qword_10008B198)
  {
    sub_100007094(&qword_100089FA0, &qword_10007B828);
    sub_100011308(&qword_10008B1A0, &qword_100089FA8, &qword_10007B860, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100011308(&qword_10008B1A8, &qword_10008B1B0, &qword_10007C918, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B198);
  }

  return result;
}

uint64_t sub_100055E2C(uint64_t *a1, uint64_t (*a2)(uint64_t), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  a2(255);
  sub_10006BF4C();
  sub_10003DF94(a3, a4, a5);
  return swift_getWitnessTable();
}

unint64_t sub_100055EC8()
{
  result = qword_10008B1C0;
  if (!qword_10008B1C0)
  {
    sub_100007094(&qword_100089FC8, &unk_10007B888);
    sub_100055F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B1C0);
  }

  return result;
}

unint64_t sub_100055F54()
{
  result = qword_10008B1C8;
  if (!qword_10008B1C8)
  {
    sub_100007094(&qword_100089FC0, &unk_10007B878);
    sub_100055FE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B1C8);
  }

  return result;
}

unint64_t sub_100055FE0()
{
  result = qword_10008B1D0;
  if (!qword_10008B1D0)
  {
    sub_100007094(&qword_100089FB8, &qword_10007B870);
    sub_100056098();
    sub_100011308(&qword_100089078, &qword_100088FC8, &qword_100079CF0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B1D0);
  }

  return result;
}

unint64_t sub_100056098()
{
  result = qword_10008B1D8;
  if (!qword_10008B1D8)
  {
    sub_100007094(&qword_10008B1E0, &qword_10007C920);
    sub_10005611C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B1D8);
  }

  return result;
}

unint64_t sub_10005611C()
{
  result = qword_10008B1E8;
  if (!qword_10008B1E8)
  {
    sub_100007094(&qword_10008B1F0, &qword_10007C928);
    sub_1000561A8();
    sub_10005631C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B1E8);
  }

  return result;
}

unint64_t sub_1000561A8()
{
  result = qword_10008B1F8;
  if (!qword_10008B1F8)
  {
    sub_100007094(&qword_10008B200, &qword_10007C930);
    sub_100056264();
    sub_10003DF94(&qword_10008B1B8, type metadata accessor for ClockWidgetAccentableOpacity, &unk_10007BE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B1F8);
  }

  return result;
}

unint64_t sub_100056264()
{
  result = qword_10008B208;
  if (!qword_10008B208)
  {
    sub_100007094(&qword_10008B210, &qword_10007C938);
    sub_100011308(&qword_10008B218, &qword_10008B220, &qword_10007C940, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B208);
  }

  return result;
}

unint64_t sub_10005631C()
{
  result = qword_10008B228;
  if (!qword_10008B228)
  {
    sub_100007094(&qword_10008B230, &qword_10007C948);
    sub_100011308(&qword_10008B238, &qword_10008B240, &qword_10007C950, &protocol conformance descriptor for VStack<A>);
    sub_10003DF94(&qword_10008B1B8, type metadata accessor for ClockWidgetAccentableOpacity, &unk_10007BE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B228);
  }

  return result;
}

unint64_t sub_100056408()
{
  result = qword_10008B248;
  if (!qword_10008B248)
  {
    sub_100007094(&qword_10008A088, &qword_10007B988);
    sub_100056494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B248);
  }

  return result;
}

unint64_t sub_100056494()
{
  result = qword_10008B250;
  if (!qword_10008B250)
  {
    sub_100007094(&qword_10008A040, &qword_10007B960);
    sub_10004FB30();
    sub_10003DF94(&qword_10008B008, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B250);
  }

  return result;
}

unint64_t sub_100056554()
{
  result = qword_10008B258;
  if (!qword_10008B258)
  {
    sub_100007094(&qword_10008B260, &qword_10007C958);
    sub_10004F884();
    sub_10003DF94(&qword_10008B008, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B258);
  }

  return result;
}

unint64_t sub_100056614()
{
  result = qword_10008B268;
  if (!qword_10008B268)
  {
    sub_100007094(&qword_10008A0C8, &qword_10007B9B8);
    sub_1000566CC();
    sub_100011308(&qword_10008B278, &qword_10008B280, &qword_10007C960, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B268);
  }

  return result;
}

unint64_t sub_1000566CC()
{
  result = qword_10008B270;
  if (!qword_10008B270)
  {
    sub_100007094(&qword_10008A0A0, &qword_10007B9A0);
    sub_100007094(&qword_10008A090, &qword_10007B990);
    sub_10004FDE8();
    swift_getOpaqueTypeConformance2();
    sub_10003DF94(&qword_10008B008, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B270);
  }

  return result;
}

unint64_t sub_1000567C8()
{
  result = qword_10008B288;
  if (!qword_10008B288)
  {
    sub_100007094(&qword_10008A0E8, &qword_10007B9E0);
    sub_100056854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B288);
  }

  return result;
}

unint64_t sub_100056854()
{
  result = qword_10008B290;
  if (!qword_10008B290)
  {
    sub_100007094(&qword_10008A0D0, &qword_10007B9C8);
    sub_100056910();
    sub_10003DF94(&qword_10008B080, type metadata accessor for ClockWidgetAccentableForegroundColor, &unk_10007BEB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B290);
  }

  return result;
}

unint64_t sub_100056910()
{
  result = qword_10008B298;
  if (!qword_10008B298)
  {
    sub_100007094(&qword_10008A0D8, &qword_10007B9D0);
    sub_1000569C8();
    sub_100011308(&qword_10008B2A8, &qword_10008A0E0, &qword_10007B9D8, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B298);
  }

  return result;
}

unint64_t sub_1000569C8()
{
  result = qword_10008B2A0;
  if (!qword_10008B2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B2A0);
  }

  return result;
}

unint64_t sub_100056A20()
{
  result = qword_10008B2B0;
  if (!qword_10008B2B0)
  {
    sub_100007094(&qword_10008A0F8, &qword_10007B9F0);
    sub_100056AAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B2B0);
  }

  return result;
}

unint64_t sub_100056AAC()
{
  result = qword_10008B2B8;
  if (!qword_10008B2B8)
  {
    sub_100007094(&qword_10008A0F0, &qword_10007B9E8);
    sub_1000569C8();
    sub_10003DF94(&qword_10008B080, type metadata accessor for ClockWidgetAccentableForegroundColor, &unk_10007BEB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B2B8);
  }

  return result;
}

unint64_t sub_100056B74()
{
  result = qword_10008B2C0;
  if (!qword_10008B2C0)
  {
    sub_100007094(&qword_10008A100, &qword_10007B9F8);
    sub_1000569C8();
    sub_10003DF94(&qword_10008B1B8, type metadata accessor for ClockWidgetAccentableOpacity, &unk_10007BE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B2C0);
  }

  return result;
}

unint64_t sub_100056C78()
{
  result = qword_10008B2D8;
  if (!qword_10008B2D8)
  {
    sub_100007094(&qword_10008A110, &qword_10007BA08);
    sub_100056D34();
    sub_10003DF94(&qword_10008AFB0, type metadata accessor for AccentedWidgetBackground, &unk_10007BE60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B2D8);
  }

  return result;
}

unint64_t sub_100056D34()
{
  result = qword_10008B2E0;
  if (!qword_10008B2E0)
  {
    sub_100007094(&qword_10008B2E8, &qword_10007C970);
    sub_100056DB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B2E0);
  }

  return result;
}

unint64_t sub_100056DB8()
{
  result = qword_10008B2F0;
  if (!qword_10008B2F0)
  {
    sub_100007094(&qword_10008B2F8, &qword_10007C978);
    sub_10003DF94(&qword_10008AF98, type metadata accessor for PlaceholderViewSingle, &unk_10007BBE0);
    sub_100011308(&qword_10008B300, &qword_10008B308, &qword_10007C980, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B2F0);
  }

  return result;
}

uint64_t sub_100056EA0()
{
  sub_100007094(&qword_10008A128, &qword_10007BA20);
  sub_100007094(&qword_10008A120, &qword_10007BA18);
  sub_100007094(&qword_10008A158, &qword_10007BA38);
  sub_100011308(&qword_10008A160, &qword_10008A120, &qword_10007BA18, &protocol conformance descriptor for LazyVGrid<A>);
  sub_100011308(&qword_10008A168, &qword_10008A158, &qword_10007BA38, &protocol conformance descriptor for Grid<A>);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100056FD8()
{
  result = qword_10008B310;
  if (!qword_10008B310)
  {
    sub_100007094(&qword_10008B318, &qword_10007C988);
    sub_100007094(&qword_10008A170, &qword_10007BA40);
    sub_100050028();
    swift_getOpaqueTypeConformance2();
    sub_10003DF94(&qword_10008B008, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B310);
  }

  return result;
}

unint64_t sub_1000570D4()
{
  result = qword_10008B320;
  if (!qword_10008B320)
  {
    sub_100007094(&qword_10008B328, &qword_10007C990);
    sub_100050100();
    sub_10003DF94(&qword_10008B008, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B320);
  }

  return result;
}

unint64_t sub_100057194()
{
  result = qword_10008B330;
  if (!qword_10008B330)
  {
    sub_100007094(&qword_10008B338, &qword_10007C998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B330);
  }

  return result;
}

unint64_t sub_10005721C()
{
  result = qword_10008B340;
  if (!qword_10008B340)
  {
    sub_100007094(&qword_10008B348, &qword_10007C9A0);
    sub_100007094(&qword_10008A1E0, &qword_10007BAB0);
    sub_100050338();
    swift_getOpaqueTypeConformance2();
    sub_10003DF94(&qword_10008B008, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B340);
  }

  return result;
}

unint64_t sub_100057318()
{
  result = qword_10008B350;
  if (!qword_10008B350)
  {
    sub_100007094(&qword_10008B358, &qword_10007C9A8);
    sub_100007094(&qword_10008A228, &qword_10007BAE0);
    sub_1000504A8();
    swift_getOpaqueTypeConformance2();
    sub_10003DF94(&qword_10008B008, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B350);
  }

  return result;
}

unint64_t sub_100057410()
{
  result = qword_10008B360;
  if (!qword_10008B360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B360);
  }

  return result;
}

unint64_t sub_10005747C()
{
  result = qword_10008B368;
  if (!qword_10008B368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B368);
  }

  return result;
}

uint64_t sub_1000574E0()
{
  v1 = (type metadata accessor for MediumWorldClockView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_10006BB7C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for WorldClockEntry(0);

  v6 = v1[10];
  v7 = sub_10006C9EC();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100057618()
{
  v1 = (type metadata accessor for SmallMultiWorldClockView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = sub_10006C9EC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_100057700()
{
  result = qword_10008B380;
  if (!qword_10008B380)
  {
    sub_100007094(&qword_10008B370, &qword_10007C9B0);
    sub_100011308(&qword_10008B388, &qword_10008B378, &qword_10007D430, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B380);
  }

  return result;
}

unint64_t sub_1000577B8()
{
  result = qword_10008B3D0;
  if (!qword_10008B3D0)
  {
    sub_100007094(&qword_10008B3B8, &qword_10007CA18);
    sub_100050280();
    sub_100011308(&qword_10008B388, &qword_10008B378, &qword_10007D430, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B3D0);
  }

  return result;
}

unint64_t sub_100057870()
{
  result = qword_10008B410;
  if (!qword_10008B410)
  {
    sub_100007094(&qword_10008B408, &qword_10007CA68);
    sub_100057928();
    sub_100011308(&qword_10008A1C0, &qword_10008A1C8, &qword_10007BAA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B410);
  }

  return result;
}

unint64_t sub_100057928()
{
  result = qword_10008B418;
  if (!qword_10008B418)
  {
    sub_100007094(&qword_10008B420, &qword_10007CA70);
    sub_1000579E0();
    sub_100011308(&qword_10008B1A8, &qword_10008B1B0, &qword_10007C918, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B418);
  }

  return result;
}

unint64_t sub_1000579E0()
{
  result = qword_10008B428;
  if (!qword_10008B428)
  {
    sub_100007094(&qword_10008B430, &qword_10007CA78);
    sub_1000501B8();
    sub_100011308(&qword_10008A020, &qword_10008A028, &qword_10007B950, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B428);
  }

  return result;
}

unint64_t sub_100057AB4()
{
  result = qword_10008B450;
  if (!qword_10008B450)
  {
    sub_100007094(&qword_10008B440, &qword_10007CAA8);
    sub_100057B40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B450);
  }

  return result;
}

unint64_t sub_100057B40()
{
  result = qword_10008B458;
  if (!qword_10008B458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B458);
  }

  return result;
}

unint64_t sub_100057B94()
{
  result = qword_10008B480;
  if (!qword_10008B480)
  {
    sub_100007094(&qword_10008B478, &qword_10007CAC8);
    sub_100011308(&qword_10008A020, &qword_10008A028, &qword_10007B950, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B480);
  }

  return result;
}

uint64_t sub_100057C4C()
{
  v1 = *(type metadata accessor for WorldClockRectangularSummary(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_10006BB7C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for WorldClockEntry(0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100057D60(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for WorldClockRectangularSummary(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_100057DF4()
{
  result = qword_10008B4E0;
  if (!qword_10008B4E0)
  {
    sub_100007094(&qword_10008B4D8, &qword_10007CB20);
    sub_100057B94();
    sub_100011308(&qword_10008A010, &qword_10008A018, &qword_10007B948, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B4E0);
  }

  return result;
}

unint64_t sub_100057FF0()
{
  result = qword_10008B508;
  if (!qword_10008B508)
  {
    sub_100007094(&qword_10008B4F8, &qword_10007CB38);
    sub_10003DF94(&qword_100089E60, type metadata accessor for SmallWorldClockView, &unk_10007BC80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B508);
  }

  return result;
}

unint64_t sub_1000580AC()
{
  result = qword_10008B510;
  if (!qword_10008B510)
  {
    sub_100007094(&qword_10008B500, &qword_10007CB40);
    sub_100057FF0();
    sub_10003DF94(&qword_100089D78, type metadata accessor for CapMaxContentSizeCategory, &unk_100079D08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B510);
  }

  return result;
}

uint64_t sub_1000581D4(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*v2 + 64);
  sub_10002B84C(*(v1 + v4 + 8), *(v1 + v4 + 16));
  v6 = v2[8];
  sub_100003500(&qword_100089DD8, &qword_10007B628);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_10006C9EC();
    (*(*(v7 - 8) + 8))(v1 + v4 + v6, v7);
  }

  else
  {
  }

  return _swift_deallocObject(v1, v4 + v5, v3 | 7);
}

unint64_t sub_100058424()
{
  result = qword_10008B5B8;
  if (!qword_10008B5B8)
  {
    sub_100007094(&qword_10008B598, &qword_10007CBC8);
    sub_100011308(&qword_10008B5C0, &qword_10008B5A0, &qword_10007CBD0, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B5B8);
  }

  return result;
}

unint64_t sub_1000584D4()
{
  result = qword_10008B5E0;
  if (!qword_10008B5E0)
  {
    sub_100007094(&qword_10008B558, &qword_10007CB88);
    sub_100056B74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B5E0);
  }

  return result;
}

unint64_t sub_100058560()
{
  result = qword_10008B778;
  if (!qword_10008B778)
  {
    sub_100007094(&qword_10008B748, &qword_10007CD58);
    sub_10005861C();
    sub_10003DF94(&qword_10008B1B8, type metadata accessor for ClockWidgetAccentableOpacity, &unk_10007BE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B778);
  }

  return result;
}

unint64_t sub_10005861C()
{
  result = qword_10008B780;
  if (!qword_10008B780)
  {
    sub_100007094(&qword_10008B788, &qword_10007CD80);
    sub_100011308(&qword_10008B790, &qword_10008B798, &qword_10007CD88, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B780);
  }

  return result;
}

uint64_t sub_1000586D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003500(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_10005873C()
{
  result = qword_10008B7B0;
  if (!qword_10008B7B0)
  {
    sub_100007094(&qword_10008B730, &qword_10007CD40);
    sub_1000587C8();
    sub_1000588EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B7B0);
  }

  return result;
}

unint64_t sub_1000587C8()
{
  result = qword_10008B7B8;
  if (!qword_10008B7B8)
  {
    sub_100007094(&qword_10008B728, &qword_10007CD38);
    sub_100011308(&qword_10008B050, &qword_10008B058, &qword_10007C888, &protocol conformance descriptor for ZStack<A>);
    sub_100007094(&qword_10008B068, &qword_10007C890);
    sub_100011308(&qword_10008B060, &qword_10008B068, &qword_10007C890, &protocol conformance descriptor for ZStack<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B7B8);
  }

  return result;
}

unint64_t sub_1000588EC()
{
  result = qword_10008B7C0;
  if (!qword_10008B7C0)
  {
    sub_100007094(&qword_10008B6F8, &qword_10007CD08);
    sub_100007094(&qword_100089F48, &qword_10007B7E8);
    sub_100055108();
    swift_getOpaqueTypeConformance2();
    sub_100007094(&qword_10008B090, &qword_10007C898);
    sub_100011308(&qword_10008B088, &qword_10008B090, &qword_10007C898, &protocol conformance descriptor for ZStack<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B7C0);
  }

  return result;
}

unint64_t sub_100058A20()
{
  result = qword_10008B840;
  if (!qword_10008B840)
  {
    sub_100007094(&qword_10008B820, &qword_10007CDF8);
    sub_100058AD8();
    sub_100011308(&qword_10008A010, &qword_10008A018, &qword_10007B948, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B840);
  }

  return result;
}

unint64_t sub_100058AD8()
{
  result = qword_10008B848;
  if (!qword_10008B848)
  {
    sub_100007094(&qword_10008B818, &qword_10007CDF0);
    sub_100058B90();
    sub_100011308(&qword_10008B1A8, &qword_10008B1B0, &qword_10007C918, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B848);
  }

  return result;
}

unint64_t sub_100058B90()
{
  result = qword_10008B850;
  if (!qword_10008B850)
  {
    sub_100007094(&qword_10008B810, &qword_10007CDE8);
    sub_100058C48();
    sub_100011308(&qword_100089078, &qword_100088FC8, &qword_100079CF0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B850);
  }

  return result;
}

unint64_t sub_100058C48()
{
  result = qword_10008B858;
  if (!qword_10008B858)
  {
    sub_100007094(&qword_10008B860, &qword_10007CE18);
    sub_10004FD2C();
    sub_100011308(&qword_10008A1C0, &qword_10008A1C8, &qword_10007BAA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B858);
  }

  return result;
}

uint64_t sub_100058D00()
{
  v1 = (type metadata accessor for MediumWorldClockView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 88) & ~v2;
  v4 = (((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;
  v6 = sub_10006BB7C();
  (*(*(v6 - 8) + 8))(v5, v6);
  type metadata accessor for WorldClockEntry(0);

  v7 = v1[10];
  v8 = sub_10006C9EC();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

double sub_100058E54@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = (type metadata accessor for MediumWorldClockView(0) - 8);
  v6 = v2 + ((*(*v5 + 80) + 88) & ~*(*v5 + 80));
  v7 = type metadata accessor for MediumClockFaceView(0);
  sub_10003DE44(a1, &a2[v7[5]], type metadata accessor for WorldClockCity);
  v8 = &a2[v7[6]];
  *(v8 + 3) = &type metadata for MediumSizeDimentions;
  *(v8 + 4) = &off_100086840;
  v9 = swift_allocObject();
  *v8 = v9;
  v10 = *(v2 + 64);
  *(v9 + 48) = *(v2 + 48);
  *(v9 + 64) = v10;
  *(v9 + 80) = *(v2 + 80);
  v11 = *(v2 + 32);
  *(v9 + 16) = *(v2 + 16);
  *(v9 + 32) = v11;
  LOBYTE(v8) = *(v6 + v5[7]);
  v12 = v5[9];
  v13 = v5[10];
  v14 = *(v6 + v12);
  v15 = v7[11];
  v16 = sub_10006C9EC();
  (*(*(v16 - 8) + 16))(&a2[v15], v6 + v13, v16);
  *a2 = swift_getKeyPath();
  sub_100003500(&qword_100088FB8, &qword_100079CB0);
  swift_storeEnumTagMultiPayload();
  a2[v7[7]] = v8;
  a2[v7[8]] = 0;
  *&a2[v7[9]] = 0x3FE199999999999ALL;
  a2[v7[10]] = v14;
  sub_10005925C(v2 + 16, v20);
  sub_10006C93C();
  sub_10006BEDC();
  v17 = &a2[*(sub_100003500(&qword_10008B8A0, &qword_10007CE58) + 36)];
  v18 = v20[1];
  *v17 = v20[0];
  *(v17 + 1) = v18;
  result = v21[0];
  *(v17 + 2) = *v21;
  return result;
}

unint64_t sub_1000590A4()
{
  result = qword_10008B8B0;
  if (!qword_10008B8B0)
  {
    sub_100007094(&qword_10008B8A0, &qword_10007CE58);
    sub_10003DF94(&qword_10008B8B8, type metadata accessor for MediumClockFaceView, &unk_10007BD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B8B0);
  }

  return result;
}

unint64_t sub_100059168()
{
  result = qword_10008B8D8;
  if (!qword_10008B8D8)
  {
    sub_100007094(&qword_10008B8C8, &qword_10007CE60);
    sub_10004F7BC();
    sub_10003DF94(&qword_10008B1B8, type metadata accessor for ClockWidgetAccentableOpacity, &unk_10007BE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008B8D8);
  }

  return result;
}

uint64_t sub_100059224()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000592B8()
{
  v1 = (type metadata accessor for SmallMultiWorldClockView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v1[9];
  v6 = sub_10006C9EC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v4 + 56, v2 | 7);
}

void sub_1000593C0(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SmallMultiWorldClockView(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  sub_100032C60(a1, v7, v2 + v6, v8, a2);
}

uint64_t sub_100059470()
{
  v1 = (type metadata accessor for SmallMultiWorldClockView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = sub_10006C9EC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100059560@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = (type metadata accessor for SmallMultiWorldClockView(0) - 8);
  v6 = v2 + ((*(*v5 + 80) + 72) & ~*(*v5 + 80));
  v7 = type metadata accessor for SmallWorldClockView(0);
  sub_10003DE44(a1, &a2[v7[5]], type metadata accessor for WorldClockCity);
  v8 = &a2[v7[6]];
  *(v8 + 3) = &type metadata for SmallMultiSizeDimentions;
  *(v8 + 4) = &off_100086768;
  v9 = swift_allocObject();
  *v8 = v9;
  v10 = *(v2 + 32);
  *(v9 + 16) = *(v2 + 16);
  *(v9 + 32) = v10;
  *(v9 + 48) = *(v2 + 48);
  *(v9 + 64) = *(v2 + 64);
  v11 = *(v6 + 8);
  LOBYTE(a1) = *(a1 + *(type metadata accessor for WorldClockCity(0) + 52));
  LOBYTE(v8) = *(v6 + 9);
  v12 = v5[9];
  v13 = v7[13];
  v14 = sub_10006C9EC();
  (*(*(v14 - 8) + 16))(&a2[v13], v6 + v12, v14);
  *a2 = swift_getKeyPath();
  sub_100003500(&qword_100088FB8, &qword_100079CB0);
  swift_storeEnumTagMultiPayload();
  a2[v7[7]] = v11;
  a2[v7[8]] = a1;
  a2[v7[9]] = 0;
  a2[v7[10]] = 1;
  v15 = &a2[v7[11]];
  type metadata accessor for ClockWidgetEnvironmentObject(0);
  sub_100059794(v2 + 16, v18);
  sub_10003DF94(&qword_100089220, type metadata accessor for ClockWidgetEnvironmentObject, &unk_10007D7D8);
  result = sub_10006BE6C();
  *v15 = result;
  v15[8] = v17 & 1;
  a2[v7[12]] = v8;
  return result;
}

uint64_t sub_1000597F0()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100059828()
{
  v1 = type metadata accessor for WorldClockWidgetViewSingle(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_10006BB7C();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  type metadata accessor for WorldClockEntry(0);

  v7 = v1[5];
  sub_100003500(&qword_100088A40, &unk_100079800);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_10006CA0C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  sub_10002B84C(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  v9 = v1[7];
  sub_100003500(&qword_100089DD8, &qword_10007B628);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_10006C9EC();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100059B34()
{
  v1 = sub_10006C2CC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AlarmSmallWidgetView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  sub_10005A064(v0, v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AlarmSmallWidgetView);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_10005B8DC(v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for AlarmSmallWidgetView);
  v11[0] = sub_10005A0D0;
  v11[1] = v9;
  sub_10006C2BC();
  sub_100003500(&qword_10008B9F0, &qword_10007CF70);
  sub_100011308(&qword_10008B9F8, &qword_10008B9F0, &qword_10007CF70, &protocol conformance descriptor for GeometryReader<A>);
  sub_10006C6AC();
  (*(v2 + 8))(v4, v1);
}

void *sub_100059D7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for AlarmEntry(0) + 32)) == 1)
  {
    sub_100064644(v15);
  }

  else
  {
    v4 = sub_10006C93C();
    v6 = v5;
    v7 = *sub_10000E5A0();

    v8 = sub_10006C1CC();
    v11[0] = 0;
    sub_10005A0D4(a1, __src);
    memcpy(__dst, __src, 0x159uLL);
    memcpy(v13, __src, 0x159uLL);
    sub_100009264(__dst, v15, &qword_10008BFD8, &qword_10007D5D8);
    sub_100009204(v13, &qword_10008BFD8, &qword_10007D5D8);
    memcpy(v14 + 7, __dst, 0x159uLL);
    v9 = sub_10006C33C();
    v15[0] = v8;
    LOBYTE(v15[1]) = 0;
    memcpy(&v15[1] + 1, v14, 0x160uLL);
    BYTE8(v15[23]) = v9;
    memset(&v15[24], 0, 32);
    LOBYTE(v15[26]) = 1;
    memcpy(v12, v15, sizeof(v12));
    __src[0] = v8;
    LOBYTE(__src[1]) = 0;
    memcpy(&__src[1] + 1, v14, 0x160uLL);
    BYTE8(__src[23]) = v9;
    memset(&__src[24], 0, 32);
    LOBYTE(__src[26]) = 1;

    sub_100009264(v15, v11, &qword_10008BFE0, &qword_10007D5E0);
    sub_100009204(__src, &qword_10008BFE0, &qword_10007D5E0);

    v13[0] = v7;
    memcpy(&v13[1], v12, 0x1A1uLL);
    v14[0] = v7;
    memcpy(&v14[1], v12, 0x1A1uLL);
    sub_100009264(v13, __src, &qword_10008BFB8, &qword_10007D5C8);
    sub_100009204(v14, &qword_10008BFB8, &qword_10007D5C8);
    memcpy(&v15[1], v13, 0x1A9uLL);
    *&v15[0] = v4;
    *(&v15[0] + 1) = v6;
    sub_1000645E4(v15);
  }

  memcpy(v11, v15, 0x1BAuLL);
  sub_100003500(&qword_10008BFC0, &qword_10007D5D0);
  sub_1000645F0();
  sub_100011308(&qword_10008BFD0, &qword_10008BFC0, &qword_10007D5D0, &protocol conformance descriptor for ZStack<A>);
  sub_10006C26C();
  return memcpy(a2, __src, 0x1BAuLL);
}

uint64_t sub_10005A064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005A0D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v143 = a2;
  v3 = sub_10006C41C();
  v140 = *(v3 - 8);
  v141 = v3;
  __chkstk_darwin(v3);
  v139 = v129 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10006C56C();
  __chkstk_darwin(v5 - 8);
  v129[1] = v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003500(&qword_1000887E8, &qword_1000795A0);
  __chkstk_darwin(v7 - 8);
  v130 = v129 - v8;
  v9 = sub_100003500(&qword_100089B40, &qword_10007D480);
  __chkstk_darwin(v9 - 8);
  v11 = v129 - v10;
  v150 = sub_10006C0EC();
  LOBYTE(v226) = 0;
  v144 = a1;
  sub_10005B528(v237);
  *&v225[7] = v237[0];
  *&v225[23] = v237[1];
  *&v225[39] = v237[2];
  *&v225[55] = v237[3];
  v149 = v226;
  *&v226 = sub_100005780();
  *(&v226 + 1) = v12;
  v131 = sub_10002B2FC();
  v13 = sub_10006C5BC();
  v15 = v14;
  v17 = v16;
  sub_10006C3DC();
  v18 = enum case for Font.Design.default(_:);
  v19 = sub_10006C39C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 104);
  v135 = v18;
  v132 = v21;
  v133 = v20 + 104;
  v21(v11, v18, v19);
  v22 = *(v20 + 56);
  v136 = v20 + 56;
  v137 = v19;
  v134 = v22;
  v22(v11, 0, 1, v19);
  sub_10006C3EC();
  v138 = v11;
  sub_100009204(v11, &qword_100089B40, &qword_10007D480);
  v23 = sub_10006C52C();
  v25 = v24;
  LOBYTE(v11) = v26;

  sub_1000070DC(v13, v15, v17 & 1);

  sub_10000EE30();

  v27 = sub_10006C4EC();
  v147 = v28;
  v148 = v27;
  LOBYTE(v15) = v29;
  v142 = v30;

  sub_1000070DC(v23, v25, v11 & 1);

  v146 = sub_10006C35C();
  sub_10006BE4C();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = v144;
  v145 = v15 & 1;
  LOBYTE(v226) = v15 & 1;
  LOBYTE(v212) = 0;
  if ((sub_10000479C() & 1) == 0)
  {
    if (!sub_10000555C())
    {
      sub_10006464C(&v226);
      goto LABEL_8;
    }

    *&v226 = sub_100005684();
    *(&v226 + 1) = v85;
    v86 = sub_10006C5BC();
    v88 = v87;
    v90 = v89;
    sub_10006C3AC();
    v92 = v137;
    v91 = v138;
    v132(v138, v135, v137);
    v134(v91, 0, 1, v92);
    sub_10006C3EC();
    sub_100009204(v91, &qword_100089B40, &qword_10007D480);
    v93 = sub_10006C52C();
    v95 = v94;
    v97 = v96;

    sub_1000070DC(v86, v88, v90 & 1);

    sub_10006C78C();
    v98 = sub_10006C4EC();
    v100 = v99;
    v102 = v101;
    v104 = v103;

    sub_1000070DC(v93, v95, v97 & 1);

    KeyPath = swift_getKeyPath();
    v106 = swift_getKeyPath();
    LOBYTE(v201) = v102 & 1;
    *&v190 = v98;
    *(&v190 + 1) = v100;
    LOBYTE(v191) = v102 & 1;
    *(&v191 + 1) = v226;
    DWORD1(v191) = *(&v226 + 3);
    *(&v191 + 1) = v104;
    *&v192 = KeyPath;
    BYTE8(v192) = 1;
    *(&v192 + 9) = v212;
    HIDWORD(v192) = *(&v212 + 3);
    *&v193 = v106;
    *(&v193 + 1) = 0x3FE0000000000000;
    *&v226 = sub_100005630();
    *(&v226 + 1) = v107;
    v108 = sub_10006C5BC();
    v110 = v109;
    LOBYTE(v104) = v111;
    sub_10006C42C();
    v113 = v139;
    v112 = v140;
    v114 = v141;
    (*(v140 + 104))(v139, enum case for Font.Leading.tight(_:), v141);
    sub_10006C43C();

    (*(v112 + 8))(v113, v114);
    v115 = sub_10006C52C();
    v117 = v116;
    LOBYTE(v112) = v118;

    sub_1000070DC(v108, v110, v104 & 1);

    sub_10006C74C();
    v119 = sub_10006C4EC();
    v121 = v120;
    LOBYTE(v110) = v122;
    v124 = v123;

    sub_1000070DC(v115, v117, v112 & 1);

    v125 = swift_getKeyPath();
    v126 = swift_getKeyPath();
    *&v194 = v119;
    *(&v194 + 1) = v121;
    LOBYTE(v195) = v110 & 1;
    *(&v195 + 1) = v226;
    DWORD1(v195) = *(&v226 + 3);
    *(&v195 + 1) = v124;
    *&v196 = v125;
    BYTE8(v196) = 0;
    *(&v196 + 9) = v212;
    HIDWORD(v196) = *(&v212 + 3);
    *&v197 = v126;
    *(&v197 + 1) = 0x3FE0000000000000;
    v186 = v190;
    v187 = v191;
    v188 = v192;
    v189 = v193;
    v173[1] = v196;
    v173[2] = v197;
    v172 = v194;
    v173[0] = v195;
    v163 = v192;
    v164[0] = v193;
    v161 = v190;
    v162 = v191;
    v180 = v192;
    v181 = v193;
    v178 = v190;
    v179 = v191;
    v168 = v196;
    v169 = v197;
    v166 = v194;
    v167 = v195;
    LOBYTE(v201) = v110 & 1;
    v184 = v196;
    v185 = v197;
    v182 = v194;
    v183 = v195;
    sub_100009264(&v190, &v226, &qword_10008BEB0, &qword_10007D4C8);
    sub_100009264(&v194, &v226, &qword_10008BEB0, &qword_10007D4C8);
    sub_100009264(&v161, &v226, &qword_10008BEB0, &qword_10007D4C8);
    sub_100009264(&v166, &v226, &qword_10008BEB0, &qword_10007D4C8);
    sub_100009204(&v172, &qword_10008BEB0, &qword_10007D4C8);
    v198 = v186;
    v199[0] = v187;
    v199[1] = v188;
    v199[2] = v189;
    sub_100009204(&v198, &qword_10008BEB0, &qword_10007D4C8);
    v205 = v182;
    v206 = v183;
    v207 = v184;
    v208 = v185;
    v201 = v178;
    v202 = v179;
    v203 = v180;
    v204 = v181;
    sub_100064670(&v201);
    v220 = v209;
    v221 = v210;
    v222 = v211;
    v216 = v205;
    v217 = v206;
    v219 = v208;
    v218 = v207;
    v212 = v201;
    v213 = v202;
    v215 = v204;
    v214 = v203;
    sub_100003500(&qword_10008BFF8, &qword_10007D5F8);
    sub_100003500(&qword_10008C000, &qword_10007D600);
    sub_100011308(&qword_10008C008, &qword_10008BFF8, &qword_10007D5F8, &protocol conformance descriptor for TupleView<A>);
    sub_100011308(&qword_10008C010, &qword_10008C000, &qword_10007D600, &protocol conformance descriptor for TupleView<A>);
    sub_10006C26C();
    sub_100009204(&v194, &qword_10008BEB0, &qword_10007D4C8);
    v82 = &v190;
    v83 = &qword_10008BEB0;
    v84 = &qword_10007D4C8;
LABEL_6:
    sub_100009204(v82, v83, v84);
    v220 = v234;
    v221 = v235;
    v222 = v236;
    v216 = v230;
    v217 = v231;
    v219 = v233;
    v218 = v232;
    v212 = v226;
    v213 = v227;
    v215 = v229;
    v214 = v228;
    nullsub_1();
    v234 = v220;
    v235 = v221;
    v236 = v222;
    v230 = v216;
    v231 = v217;
    v233 = v219;
    v232 = v218;
    v226 = v212;
    v227 = v213;
    v229 = v215;
    v228 = v214;
LABEL_8:
    v220 = v234;
    v221 = v235;
    v216 = v230;
    v217 = v231;
    v219 = v233;
    v218 = v232;
    v212 = v226;
    v213 = v227;
    v215 = v229;
    v214 = v228;
    *&v172 = v150;
    *(&v172 + 1) = 0x4014000000000000;
    LOBYTE(v173[0]) = v149;
    *(v173 + 1) = *v225;
    *(&v173[1] + 1) = *&v225[16];
    *(&v173[2] + 1) = *&v225[32];
    *(&v173[3] + 1) = *&v225[48];
    v200[0] = v172;
    v200[1] = v173[0];
    v200[4] = v173[3];
    v200[3] = v173[2];
    v200[2] = v173[1];
    *&v161 = v148;
    *(&v161 + 1) = v147;
    LOBYTE(v162) = v145;
    DWORD1(v162) = *&v224[3];
    *(&v162 + 1) = *v224;
    v127 = v142;
    *(&v162 + 1) = v142;
    LOBYTE(v163) = v146;
    DWORD1(v163) = *&v223[3];
    *(&v163 + 1) = *v223;
    *(&v163 + 1) = v32;
    *&v164[0] = v34;
    *(&v164[0] + 1) = v36;
    *&v164[1] = v38;
    BYTE8(v164[1]) = 0;
    *(&v200[5] + 8) = v161;
    *(&v200[9] + 1) = *(v164 + 9);
    *(&v200[8] + 8) = v164[0];
    *(&v200[7] + 8) = v163;
    *(&v200[6] + 8) = v162;
    v202 = v227;
    v201 = v226;
    v206 = v231;
    v205 = v230;
    v203 = v228;
    v204 = v229;
    v210 = v235;
    v209 = v234;
    v207 = v232;
    v208 = v233;
    *(&v200[18] + 8) = v234;
    *(&v200[19] + 8) = v235;
    *(&v200[16] + 8) = v232;
    *(&v200[17] + 8) = v233;
    *(&v200[13] + 8) = v229;
    *(&v200[14] + 8) = v230;
    v222 = v236;
    *&v173[4] = *&v225[63];
    *&v200[5] = *&v225[63];
    v211 = v236;
    BYTE8(v200[20]) = v236;
    *(&v200[15] + 8) = v231;
    *(&v200[10] + 8) = v226;
    *(&v200[11] + 8) = v227;
    *(&v200[12] + 8) = v228;
    LOBYTE(v194) = 1;
    v128 = v143;
    memcpy(v143, v200, 0x150uLL);
    v128[42] = 0;
    *(v128 + 344) = 1;
    sub_100009264(&v172, &v198, &qword_10008BFE8, &qword_10007D5E8);
    sub_100009264(&v161, &v198, &qword_10008BEA8, &qword_10007D4C0);
    sub_100009264(&v201, &v198, &qword_10008BFF0, &qword_10007D5F0);
    sub_100009204(&v212, &qword_10008BFF0, &qword_10007D5F0);
    *&v166 = v148;
    *(&v166 + 1) = v147;
    LOBYTE(v167) = v145;
    *(&v167 + 1) = *v224;
    DWORD1(v167) = *&v224[3];
    *(&v167 + 1) = v127;
    LOBYTE(v168) = v146;
    *(&v168 + 1) = *v223;
    DWORD1(v168) = *&v223[3];
    *(&v168 + 1) = v32;
    *&v169 = v34;
    *(&v169 + 1) = v36;
    *&v170 = v38;
    BYTE8(v170) = 0;
    sub_100009204(&v166, &qword_10008BEA8, &qword_10007D4C0);
    *&v198 = v150;
    *(&v198 + 1) = 0x4014000000000000;
    LOBYTE(v199[0]) = v149;
    *(&v199[1] + 1) = *&v225[16];
    *(&v199[2] + 1) = *&v225[32];
    *(&v199[3] + 1) = *&v225[48];
    *&v199[4] = *&v225[63];
    *(v199 + 1) = *v225;
    return sub_100009204(&v198, &qword_10008BFE8, &qword_10007D5E8);
  }

  v40 = type metadata accessor for AlarmEntry(0);
  v41 = v130;
  sub_100009264(v39 + *(v40 + 24), v130, &qword_1000887E8, &qword_1000795A0);
  v42 = sub_10006BB7C();
  result = (*(*(v42 - 8) + 48))(v41, 1, v42);
  if (result != 1)
  {
    sub_10006C55C();
    v44 = sub_10006C58C();
    v46 = v45;
    v48 = v47;
    sub_10006C3AC();
    v50 = v137;
    v49 = v138;
    v132(v138, v135, v137);
    v134(v49, 0, 1, v50);
    sub_10006C3EC();
    sub_100009204(v49, &qword_100089B40, &qword_10007D480);
    v51 = sub_10006C52C();
    v53 = v52;
    v55 = v54;

    sub_1000070DC(v44, v46, v48 & 1);

    sub_10006C78C();
    v56 = sub_10006C4EC();
    v58 = v57;
    LOBYTE(v46) = v59;
    v61 = v60;

    sub_1000070DC(v51, v53, v55 & 1);

    sub_10006C94C();
    sub_10006BEDC();
    v174 = v46 & 1;
    v62 = swift_getKeyPath();
    *&v166 = v56;
    *(&v166 + 1) = v58;
    LOBYTE(v167) = v46 & 1;
    *(&v167 + 1) = v61;
    v168 = v175;
    v169 = v176;
    v170 = v177;
    *&v171 = v62;
    *(&v171 + 1) = 0x3FE0000000000000;
    sub_10006C14C();
    v63 = sub_10006C59C();
    v65 = v64;
    LOBYTE(v61) = v66;
    sub_10006C42C();
    v68 = v139;
    v67 = v140;
    v69 = v141;
    (*(v140 + 104))(v139, enum case for Font.Leading.tight(_:), v141);
    sub_10006C43C();

    (*(v67 + 8))(v68, v69);
    v70 = sub_10006C52C();
    v72 = v71;
    LOBYTE(v68) = v73;

    sub_1000070DC(v63, v65, v61 & 1);

    sub_10006C74C();
    v74 = sub_10006C4EC();
    v76 = v75;
    LOBYTE(v61) = v77;
    v79 = v78;

    sub_1000070DC(v70, v72, v68 & 1);

    v80 = swift_getKeyPath();
    v81 = swift_getKeyPath();
    *&v186 = v74;
    *(&v186 + 1) = v76;
    LOBYTE(v187) = v61 & 1;
    *(&v187 + 1) = v226;
    DWORD1(v187) = *(&v226 + 3);
    *(&v187 + 1) = v79;
    *&v188 = v80;
    BYTE8(v188) = 1;
    *(&v188 + 9) = v212;
    HIDWORD(v188) = *(&v212 + 3);
    *&v189 = v81;
    *(&v189 + 1) = 0x3FE0000000000000;
    v163 = v168;
    v164[0] = v169;
    v164[1] = v170;
    v165 = v171;
    v161 = v166;
    v162 = v167;
    v197 = v189;
    v196 = v188;
    v194 = v186;
    v195 = v187;
    v172 = v166;
    v173[0] = v167;
    v173[3] = v170;
    v173[4] = v171;
    v173[1] = v168;
    v173[2] = v169;
    v151 = v166;
    v152 = v167;
    v155 = v170;
    v156 = v171;
    v153 = v168;
    v154 = v169;
    v192 = v188;
    v193 = v189;
    v190 = v186;
    v191 = v187;
    LOBYTE(v201) = v61 & 1;
    v159 = v188;
    v160 = v189;
    v157 = v186;
    v158 = v187;
    sub_100009264(&v166, &v226, &qword_10008C018, &qword_10007D608);
    sub_100009264(&v186, &v226, &qword_10008BEB0, &qword_10007D4C8);
    sub_100009264(&v172, &v226, &qword_10008C018, &qword_10007D608);
    sub_100009264(&v190, &v226, &qword_10008BEB0, &qword_10007D4C8);
    sub_100009204(&v194, &qword_10008BEB0, &qword_10007D4C8);
    v199[1] = v163;
    v199[2] = v164[0];
    v199[3] = v164[1];
    v199[4] = v165;
    v198 = v161;
    v199[0] = v162;
    sub_100009204(&v198, &qword_10008C018, &qword_10007D608);
    v207 = v157;
    v208 = v158;
    v209 = v159;
    v210 = v160;
    v203 = v153;
    v204 = v154;
    v205 = v155;
    v206 = v156;
    v201 = v151;
    v202 = v152;
    sub_10006467C(&v201);
    v220 = v209;
    v221 = v210;
    v222 = v211;
    v216 = v205;
    v217 = v206;
    v219 = v208;
    v218 = v207;
    v212 = v201;
    v213 = v202;
    v215 = v204;
    v214 = v203;
    sub_100003500(&qword_10008BFF8, &qword_10007D5F8);
    sub_100003500(&qword_10008C000, &qword_10007D600);
    sub_100011308(&qword_10008C008, &qword_10008BFF8, &qword_10007D5F8, &protocol conformance descriptor for TupleView<A>);
    sub_100011308(&qword_10008C010, &qword_10008C000, &qword_10007D600, &protocol conformance descriptor for TupleView<A>);
    sub_10006C26C();
    sub_100009204(&v186, &qword_10008BEB0, &qword_10007D4C8);
    v82 = &v166;
    v83 = &qword_10008C018;
    v84 = &qword_10007D608;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_10005B528@<X0>(uint64_t *a1@<X8>)
{
  v45 = a1;
  v1 = sub_100003500(&qword_100089B40, &qword_10007D480);
  __chkstk_darwin(v1 - 8);
  v3 = &v41 - v2;
  sub_1000054C0();
  v4 = sub_10006C5CC();
  v6 = v5;
  v8 = v7;
  sub_10006C45C();
  v9 = sub_10006C52C();
  v11 = v10;
  v13 = v12;

  sub_1000070DC(v4, v6, v8 & 1);

  sub_10006C78C();
  v14 = sub_10006C4EC();
  v43 = v15;
  v44 = v14;
  v17 = v16;
  v42 = v18;

  sub_1000070DC(v9, v11, v13 & 1);

  sub_10006C14C();
  v19 = sub_10006C59C();
  v21 = v20;
  v23 = v22;
  sub_10006C3DC();
  v24 = enum case for Font.Design.default(_:);
  v25 = sub_10006C39C();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v3, v24, v25);
  (*(v26 + 56))(v3, 0, 1, v25);
  sub_10006C3EC();
  sub_100009204(v3, &qword_100089B40, &qword_10007D480);
  v27 = sub_10006C52C();
  v29 = v28;
  LOBYTE(v3) = v30;

  sub_1000070DC(v19, v21, v23 & 1);

  sub_10006C78C();
  v31 = sub_10006C4EC();
  v33 = v32;
  LOBYTE(v9) = v34;
  v36 = v35;

  sub_1000070DC(v27, v29, v3 & 1);

  v37 = v42 & 1;
  v46 = v42 & 1;
  v48 = v42 & 1;
  v47 = v9 & 1;
  v39 = v44;
  v38 = v45;
  *v45 = v44;
  v38[1] = v17;
  *(v38 + 16) = v37;
  v38[3] = v43;
  v38[4] = v31;
  v38[5] = v33;
  *(v38 + 48) = v9 & 1;
  v38[7] = v36;
  sub_100050270(v39, v17, v37);

  sub_100050270(v31, v33, v9 & 1);

  sub_1000070DC(v31, v33, v9 & 1);

  sub_1000070DC(v39, v17, v46);
}

uint64_t sub_10005B8DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005B944(uint64_t a1)
{
  v3 = sub_10006C2CC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v9);
  v10 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005A064(v1, v10, type metadata accessor for AlarmSmallWidgetView);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  sub_10005B8DC(v10, v12 + v11, type metadata accessor for AlarmSmallWidgetView);
  v14[0] = sub_1000646AC;
  v14[1] = v12;
  sub_10006C2BC();
  sub_100003500(&qword_10008B9F0, &qword_10007CF70);
  sub_100011308(&qword_10008B9F8, &qword_10008B9F0, &qword_10007CF70, &protocol conformance descriptor for GeometryReader<A>);
  sub_10006C6AC();
  (*(v4 + 8))(v6, v3);
}

uint64_t sub_10005BB68()
{
  v1 = sub_10006C2CC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003500(&qword_10008BA00, &qword_10007CF78);
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  *v7 = sub_10006C1CC();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = sub_100003500(&qword_10008BA08, &unk_10007CF80);
  sub_10005BD24(v0, &v7[*(v8 + 44)]);
  sub_10006C2BC();
  sub_100011308(&qword_10008BA10, &qword_10008BA00, &qword_10007CF78, &protocol conformance descriptor for VStack<A>);
  sub_10006C6AC();
  (*(v2 + 8))(v4, v1);
  return sub_100009204(v7, &qword_10008BA00, &qword_10007CF78);
}

uint64_t sub_10005BD24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = sub_100003500(&qword_10008BF80, &qword_10007D568);
  __chkstk_darwin(v37);
  v5 = &v36 - v4;
  *&v38 = type metadata accessor for ClockDateText(0);
  __chkstk_darwin(v38);
  v36 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003500(&qword_1000887E8, &qword_1000795A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v36 - v8;
  v10 = sub_100003500(&qword_10008BF88, &qword_10007D570);
  __chkstk_darwin(v10 - 8);
  v42 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  v44 = sub_10006C0CC();
  v65 = 0;
  sub_10005C434(&v52);
  v70 = *&v53[48];
  v71 = *&v53[64];
  v72 = *&v53[80];
  v73 = v53[96];
  v66 = v52;
  v67 = *v53;
  v68 = *&v53[16];
  v69 = *&v53[32];
  v74[0] = v52;
  v74[1] = *v53;
  v74[2] = *&v53[16];
  v74[3] = *&v53[32];
  v74[4] = *&v53[48];
  v74[5] = *&v53[64];
  v74[6] = *&v53[80];
  v75 = v53[96];
  sub_100009264(&v66, &v45, &qword_10008BF90, &qword_10007D578);
  sub_100009204(v74, &qword_10008BF90, &qword_10007D578);
  *&v64[71] = v70;
  *&v64[87] = v71;
  *&v64[103] = v72;
  *&v64[7] = v66;
  *&v64[23] = v67;
  *&v64[39] = v68;
  v64[119] = v73;
  *&v64[55] = v69;
  v43 = v65;
  *(&v41 + 1) = sub_10006C46C();
  *&v41 = swift_getKeyPath();
  *(&v40 + 1) = sub_10006C78C();
  *&v40 = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  LOBYTE(v52) = 0;
  v15 = type metadata accessor for AlarmEntry(0);
  sub_100009264(a1 + *(v15 + 20), v9, &qword_1000887E8, &qword_1000795A0);
  v16 = sub_10006BB7C();
  v17 = (*(*(v16 - 8) + 48))(v9, 1, v16);
  sub_100009204(v9, &qword_1000887E8, &qword_1000795A0);
  if (v17 == 1)
  {
    *v5 = 0x4038000000000000;
    v5[8] = 0;
    swift_storeEnumTagMultiPayload();
    sub_10006459C(&qword_10008BF98, type metadata accessor for ClockDateText, &unk_10007D2B0);
    sub_10006C26C();
  }

  else
  {
    v18 = type metadata accessor for WorldClockCity(0);
    v19 = v36;
    (*(*(v18 - 8) + 56))(v36, 1, 1, v18);
    v20 = *(v38 + 20);
    sub_10005A064(a1, v19 + v20, type metadata accessor for AlarmEntry);
    (*(*(v15 - 8) + 56))(v19 + v20, 0, 1, v15);
    sub_10005A064(v19, v5, type metadata accessor for ClockDateText);
    swift_storeEnumTagMultiPayload();
    sub_10006459C(&qword_10008BF98, type metadata accessor for ClockDateText, &unk_10007D2B0);
    sub_10006C26C();
    sub_10006429C(v19, type metadata accessor for ClockDateText);
  }

  v21 = v42;
  sub_100009264(v14, v42, &qword_10008BF88, &qword_10007D570);
  *&v45 = v44;
  *(&v45 + 1) = 0x4008000000000000;
  LOBYTE(v46[0]) = v43;
  *(&v46[4] + 1) = *&v64[64];
  *(&v46[5] + 1) = *&v64[80];
  *(&v46[6] + 1) = *&v64[96];
  *(&v46[7] + 1) = *&v64[112];
  *(v46 + 1) = *v64;
  *(&v46[1] + 1) = *&v64[16];
  *(&v46[2] + 1) = *&v64[32];
  *(&v46[3] + 1) = *&v64[48];
  *(&v46[7] + 9) = v76[0];
  HIDWORD(v46[7]) = *(v76 + 3);
  v38 = xmmword_10007CF60;
  v47 = xmmword_10007CF60;
  v23 = *(&v40 + 1);
  v22 = v41;
  v24 = v14;
  v25 = *(&v41 + 1);
  v48 = v41;
  v27 = KeyPath;
  v26 = v40;
  v49 = v40;
  *&v50 = KeyPath;
  *(&v50 + 1) = 1;
  v51 = 0;
  *(a2 + 208) = 0;
  v28 = v46[6];
  *(a2 + 96) = v46[5];
  *(a2 + 112) = v28;
  v29 = v46[0];
  *a2 = v45;
  *(a2 + 16) = v29;
  v30 = v46[4];
  *(a2 + 64) = v46[3];
  *(a2 + 80) = v30;
  v31 = v46[2];
  *(a2 + 32) = v46[1];
  *(a2 + 48) = v31;
  v32 = v50;
  *(a2 + 176) = v49;
  *(a2 + 192) = v32;
  v33 = v48;
  *(a2 + 144) = v47;
  *(a2 + 160) = v33;
  *(a2 + 128) = v46[7];
  v34 = a2 + *(sub_100003500(&qword_10008BFA0, &qword_10007D5B0) + 48);
  sub_100009264(v21, v34, &qword_10008BF88, &qword_10007D570);
  sub_100009264(&v45, &v52, &qword_10008BFA8, &qword_10007D5B8);
  sub_100009204(v24, &qword_10008BF88, &qword_10007D570);
  sub_100009204(v21, &qword_10008BF88, &qword_10007D570);
  *&v53[65] = *&v64[64];
  *&v53[81] = *&v64[80];
  *&v53[97] = *&v64[96];
  *&v53[1] = *v64;
  *&v53[17] = *&v64[16];
  *&v53[33] = *&v64[32];
  *&v52 = v44;
  *(&v52 + 1) = 0x4008000000000000;
  v53[0] = v43;
  v54 = *&v64[112];
  *&v53[49] = *&v64[48];
  *v55 = v76[0];
  *&v55[3] = *(v76 + 3);
  v56 = v38;
  v57 = v22;
  v58 = v25;
  v59 = v26;
  v60 = v23;
  v61 = v27;
  v62 = 1;
  v63 = 0;
  return sub_100009204(&v52, &qword_10008BFA8, &qword_10007D5B8);
}

uint64_t sub_10005C434@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10006C71C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21.i8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *sub_10000E504();

  sub_10006C96C();
  v8 = v7;
  v10 = v9;
  (*(v3 + 104))(v5, enum case for Color.RGBColorSpace.sRGBLinear(_:), v2);
  v11 = sub_10006C7BC();
  v28 = sub_100005780();
  v29.i64[0] = v12;
  sub_10002B2FC();
  v13 = sub_10006C5BC();
  v15 = v14;
  v21 = vdupq_n_s64(0x3FECCCCCCCCCCCCDuLL);
  *v24 = v6;
  *&v24[8] = v21;
  *&v24[24] = v8;
  *&v25 = v10;
  *(&v25 + 1) = v11;
  v26 = 0x3FF0000000000000uLL;
  v27 = 0;
  v17 = v16 & 1;
  v23 = v16 & 1;
  v22 = 1;
  *(a1 + 32) = v25;
  *(a1 + 48) = 0x3FF0000000000000uLL;
  v18 = *&v24[16];
  *a1 = *v24;
  *(a1 + 16) = v18;
  *(a1 + 64) = 0;
  *(a1 + 72) = v13;
  *(a1 + 80) = v14;
  *(a1 + 88) = v16 & 1;
  *(a1 + 96) = v19;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1;
  sub_100009264(v24, &v28, &qword_10008BFB0, &qword_10007D5C0);
  sub_100050270(v13, v15, v17);

  sub_1000070DC(v13, v15, v17);

  v28 = v6;
  v29 = v21;
  v30 = v8;
  v31 = v10;
  v32 = v11;
  v33 = 0x3FF0000000000000;
  v34 = 0;
  v35 = 0;
  return sub_100009204(&v28, &qword_10008BFB0, &qword_10007D5C0);
}

uint64_t sub_10005C670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1000586D4(a1, a3, &qword_100088BD0, &qword_10007CEE0);
  v5 = type metadata accessor for ClockDateText(0);
  return sub_1000586D4(a2, a3 + *(v5 + 20), &qword_10008B968, &qword_10007CF90);
}

uint64_t sub_10005C6F4()
{
  v1 = sub_100003500(&qword_10008BA18, &qword_10007CF98);
  __chkstk_darwin(v1);
  v3 = v10 - v2;
  v4 = sub_100003500(&qword_10008BA20, &qword_10007CFA0);
  __chkstk_darwin(v4);
  v6 = v10 - v5;
  *v3 = sub_10006C0EC();
  *(v3 + 1) = 0;
  v3[16] = 1;
  v7 = sub_100003500(&qword_10008BA28, &qword_10007CFA8);
  sub_10005C8E0(v0, &v3[*(v7 + 44)]);
  sub_100011308(&qword_10008BA30, &qword_10008BA18, &qword_10007CF98, &protocol conformance descriptor for HStack<A>);
  sub_10006C6BC();
  sub_100009204(v3, &qword_10008BA18, &qword_10007CF98);
  v10[0] = sub_10005D040();
  v10[1] = v8;
  sub_10002B2FC();
  sub_10006BF1C();

  return sub_100009204(v6, &qword_10008BA20, &qword_10007CFA0);
}

uint64_t sub_10005C8E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v46 = sub_100003500(&qword_10008BF60, &qword_10007D550);
  __chkstk_darwin(v46);
  v45 = &v42[-v3];
  v47 = sub_100003500(&qword_10008BF68, &qword_10007D558);
  __chkstk_darwin(v47);
  v5 = &v42[-v4];
  v6 = sub_10006B86C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100003500(&qword_10008BDC0, &qword_10007D3D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v42[-v11];
  v13 = sub_100003500(&qword_1000887E8, &qword_1000795A0);
  __chkstk_darwin(v13 - 8);
  v15 = &v42[-v14];
  v16 = sub_10006BB7C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v42[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!sub_10000555C())
  {
    goto LABEL_4;
  }

  v20 = type metadata accessor for AlarmEntry(0);
  sub_100009264(a1 + *(v20 + 20), v15, &qword_1000887E8, &qword_1000795A0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_100009204(v15, &qword_1000887E8, &qword_1000795A0);
LABEL_4:
    v49 = sub_1000054C0();
    sub_10006C68C();

    v21 = sub_1000053B4();
    v49 = sub_1000058C4(v21);
    v50 = v22;
    sub_10002B2FC();
    v23 = sub_10006C5BC();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    sub_100009264(v12, v9, &qword_10008BDC0, &qword_10007D3D0);
    sub_100009264(v9, v5, &qword_10008BDC0, &qword_10007D3D0);
    v30 = &v5[*(sub_100003500(&qword_10008BF70, &qword_10007D560) + 48)];
    *v30 = v23;
    *(v30 + 1) = v25;
    v27 &= 1u;
    v30[16] = v27;
    *(v30 + 3) = v29;
    sub_100050270(v23, v25, v27);

    sub_100050270(v23, v25, v27);

    sub_1000070DC(v23, v25, v27);

    sub_100009204(v9, &qword_10008BDC0, &qword_10007D3D0);
    sub_100009264(v5, v45, &qword_10008BF68, &qword_10007D558);
    swift_storeEnumTagMultiPayload();
    sub_100011308(&qword_10008BF78, &qword_10008BF68, &qword_10007D558, &protocol conformance descriptor for TupleView<A>);
    sub_10006C26C();
    sub_1000070DC(v23, v25, v27);

    sub_100009204(v5, &qword_10008BF68, &qword_10007D558);
    return sub_100009204(v12, &qword_10008BDC0, &qword_10007D3D0);
  }

  (*(v17 + 32))(v19, v15, v16);
  v49 = sub_1000054C0();
  v44 = v12;
  sub_10006C68C();

  v32 = type metadata accessor for WidgetUtilities();
  (*(v32 + 136))(v19);
  v33 = sub_10006C5AC();
  v35 = v34;
  v43 = v36;
  v38 = v37;
  sub_100009264(v12, v9, &qword_10008BDC0, &qword_10007D3D0);
  sub_100009264(v9, v5, &qword_10008BDC0, &qword_10007D3D0);
  v39 = &v5[*(sub_100003500(&qword_10008BF70, &qword_10007D560) + 48)];
  *v39 = v33;
  *(v39 + 1) = v35;
  v40 = v43;
  v41 = v43 & 1;
  v39[16] = v43 & 1;
  *(v39 + 3) = v38;
  sub_100050270(v33, v35, v40 & 1);

  sub_100050270(v33, v35, v41);

  sub_1000070DC(v33, v35, v41);

  sub_100009204(v9, &qword_10008BDC0, &qword_10007D3D0);
  sub_100009264(v5, v45, &qword_10008BF68, &qword_10007D558);
  swift_storeEnumTagMultiPayload();
  sub_100011308(&qword_10008BF78, &qword_10008BF68, &qword_10007D558, &protocol conformance descriptor for TupleView<A>);
  sub_10006C26C();
  sub_1000070DC(v33, v35, v41);

  sub_100009204(v5, &qword_10008BF68, &qword_10007D558);
  sub_100009204(v44, &qword_10008BDC0, &qword_10007D3D0);
  return (*(v17 + 8))(v19, v16);
}

uint64_t sub_10005CFDC()
{
  sub_1000054C0();
  sub_10006C68C();
}

uint64_t sub_10005D040()
{
  sub_100003500(&qword_10008BA38, &qword_10007CFB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100079CA0;
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v13._countAndFlagsBits = 0x800000010006E8D0;
  v16._countAndFlagsBits = 0x616C41207478654ELL;
  v16._object = 0xEA00000000006D72;
  v18.value._countAndFlagsBits = 0;
  v18.value._object = 0;
  v3.super.isa = v2;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v4 = sub_10006B88C(v16, v18, v3, v20, 0xD000000000000010, v13);
  v6 = v5;

  *(v0 + 32) = v4;
  *(v0 + 40) = v6;
  *(v0 + 48) = sub_100005684();
  *(v0 + 56) = v7;
  if (sub_10000555C())
  {
    v14._object = v0;
    v8 = [v1 mainBundle];
    v14._countAndFlagsBits = 0xEE00616D6D6F6320;
    v17._countAndFlagsBits = 8236;
    v17._object = 0xE200000000000000;
    v19.value._countAndFlagsBits = 0;
    v19.value._object = 0;
    v9.super.isa = v8;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    sub_10006B88C(v17, v19, v9, v21, 0x726F746172706573, v14);

    sub_100003500(&qword_10008BA40, &unk_10007CFB8);
    sub_100011308(&qword_10008BA48, &qword_10008BA40, &unk_10007CFB8, &protocol conformance descriptor for [A]);
    v10 = sub_10006CB2C();

    return v10;
  }

  else
  {

    if (sub_10000555C())
    {

      return sub_100005684();
    }

    else
    {
      v12 = sub_1000053B4();

      return sub_1000058C4(v12);
    }
  }
}

uint64_t sub_10005D298()
{
  if (sub_10000555C())
  {

    return sub_100005684();
  }

  else
  {
    v1 = sub_1000053B4();

    return sub_1000058C4(v1);
  }
}

uint64_t sub_10005D2E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10006C0AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003500(&qword_100088FB8, &qword_100079CB0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100009264(v2, &v14 - v9, &qword_100088FB8, &qword_100079CB0);
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

uint64_t sub_10005D54C(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AlarmComplicationCircularView(0) + 20);

  return sub_100007588(a1, v3);
}

uint64_t sub_10005D5D8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AlarmComplicationCircularView(0) + 24);

  return sub_10003E1E0(v3, a1);
}

uint64_t sub_10005D640(char a1)
{
  result = type metadata accessor for AlarmComplicationCircularView(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_10005D6DC(char a1)
{
  result = type metadata accessor for AlarmComplicationCircularView(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t sub_10005D778(char a1)
{
  result = type metadata accessor for AlarmComplicationCircularView(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_10005D7F0()
{
  v1 = sub_10006C2CC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003500(&qword_10008BA50, &qword_10007CFF8);
  __chkstk_darwin(v5);
  v7 = v15 - v6;
  *v7 = sub_10006C93C();
  *(v7 + 1) = v8;
  v9 = sub_100003500(&qword_10008BA58, &qword_10007D000);
  sub_10005D9F8(v0, &v7[*(v9 + 44)]);
  KeyPath = swift_getKeyPath();
  v11 = &v7[*(sub_100003500(&qword_10008BA60, &qword_10007D038) + 36)];
  *v11 = KeyPath;
  v11[1] = 0x3FE8000000000000;
  sub_10006C93C();
  sub_10006BEDC();
  v12 = &v7[*(v5 + 36)];
  v13 = v15[1];
  *v12 = v15[0];
  *(v12 + 1) = v13;
  *(v12 + 2) = v15[2];
  sub_10006C2BC();
  sub_100062948();
  sub_10006C6AC();
  (*(v2 + 8))(v4, v1);
  return sub_100009204(v7, &qword_10008BA50, &qword_10007CFF8);
}

uint64_t sub_10005D9F8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v58 = a2;
  v51 = sub_100003500(&qword_10008BAC8, &qword_10007D080);
  __chkstk_darwin(v51);
  v49 = v47 - v3;
  v4 = sub_100003500(&qword_10008BF30, &qword_10007D528);
  __chkstk_darwin(v4);
  v50 = v47 - v5;
  v6 = sub_100003500(&qword_10008BF38, &qword_10007D530);
  __chkstk_darwin(v6);
  v8 = v47 - v7;
  v52 = sub_100003500(&qword_10008BF40, &qword_10007D538);
  __chkstk_darwin(v52);
  v10 = v47 - v9;
  v11 = sub_100003500(&qword_10008BDD0, &qword_10007D3D8);
  __chkstk_darwin(v11);
  v13 = v47 - v12;
  v14 = sub_100003500(&qword_10008BF48, &qword_10007D540);
  __chkstk_darwin(v14 - 8);
  v55 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v47 - v17;
  v19 = sub_10006C99C();
  v56 = *(v19 - 8);
  v57 = v19;
  __chkstk_darwin(v19);
  v54 = v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v53 = v47 - v22;
  sub_10006C98C();
  v23 = a1 + *(type metadata accessor for AlarmComplicationCircularView(0) + 20);
  if (sub_10000555C())
  {
    v48 = v13;
    sub_10005E210(v13);
    sub_100009264(v13, v8, &qword_10008BDD0, &qword_10007D3D8);
    swift_storeEnumTagMultiPayload();
    sub_100003500(&qword_10008BDE0, &qword_10007D3E0);
    sub_10006385C();
    sub_100011308(&qword_10008BDD8, &qword_10008BDE0, &qword_10007D3E0, &protocol conformance descriptor for VStack<A>);
    sub_10006C26C();
    sub_100009264(v10, v50, &qword_10008BF40, &qword_10007D538);
    swift_storeEnumTagMultiPayload();
    sub_1000644E4();
    sub_100063A0C();
    sub_10006C26C();
    sub_100009204(v10, &qword_10008BF40, &qword_10007D538);
    sub_100009204(v48, &qword_10008BDD0, &qword_10007D3D8);
    v24 = v18;
  }

  else
  {
    v47[0] = v8;
    v47[1] = v11;
    v48 = v18;
    v25 = v50;
    if (*(v23 + *(type metadata accessor for AlarmEntry(0) + 68)) == 1)
    {
      v49 = v4;
      v26 = sub_10006C1BC();
      v60 = 0;
      sub_10005FEAC(&v69);
      v64 = *&v70[32];
      v65 = *&v70[48];
      v66 = v70[64];
      v61 = v69;
      v62 = *v70;
      v63 = *&v70[16];
      v68 = v70[64];
      v67[2] = *&v70[16];
      v67[3] = *&v70[32];
      v67[4] = *&v70[48];
      v67[0] = v69;
      v67[1] = *v70;
      sub_100009264(&v61, v59, &qword_10008BAC0, &qword_10007D078);
      sub_100009204(v67, &qword_10008BAC0, &qword_10007D078);
      v59[87] = v66;
      *&v59[71] = v65;
      *&v59[55] = v64;
      *&v59[39] = v63;
      *&v59[23] = v62;
      *&v59[7] = v61;
      v69 = v26;
      v70[0] = v60;
      *&v70[33] = *&v59[32];
      *&v70[49] = *&v59[48];
      *&v70[65] = *&v59[64];
      *&v70[81] = *&v59[80];
      *&v70[1] = *v59;
      *&v70[17] = *&v59[16];
      v27 = *v70;
      v28 = v47[0];
      *v47[0] = v69;
      v28[1] = v27;
      v29 = *&v70[64];
      v28[4] = *&v70[48];
      v28[5] = v29;
      *(v28 + 89) = *&v70[73];
      v30 = *&v70[32];
      v28[2] = *&v70[16];
      v28[3] = v30;
      swift_storeEnumTagMultiPayload();
      sub_100009264(&v69, v59, &qword_10008BDE0, &qword_10007D3E0);
      sub_100003500(&qword_10008BDE0, &qword_10007D3E0);
      sub_10006385C();
      sub_100011308(&qword_10008BDD8, &qword_10008BDE0, &qword_10007D3E0, &protocol conformance descriptor for VStack<A>);
      sub_10006C26C();
      sub_100009264(v10, v25, &qword_10008BF40, &qword_10007D538);
      swift_storeEnumTagMultiPayload();
      sub_1000644E4();
      sub_100063A0C();
      v31 = v48;
      sub_10006C26C();
      sub_100009204(&v69, &qword_10008BDE0, &qword_10007D3E0);
      v32 = v10;
      v24 = v31;
      v33 = &qword_10008BF40;
      v34 = &qword_10007D538;
    }

    else
    {
      v35 = v49;
      sub_10005E6A4(v49);
      sub_100009264(v35, v25, &qword_10008BAC8, &qword_10007D080);
      swift_storeEnumTagMultiPayload();
      sub_1000644E4();
      sub_100063A0C();
      v24 = v48;
      sub_10006C26C();
      v32 = v35;
      v33 = &qword_10008BAC8;
      v34 = &qword_10007D080;
    }

    sub_100009204(v32, v33, v34);
  }

  v36 = v56;
  v37 = v57;
  v38 = *(v56 + 16);
  v39 = v53;
  v40 = v54;
  v38(v54, v53, v57);
  v41 = v55;
  sub_100009264(v24, v55, &qword_10008BF48, &qword_10007D540);
  v42 = v24;
  v43 = v58;
  v38(v58, v40, v37);
  v44 = sub_100003500(&qword_10008BF58, &qword_10007D548);
  sub_100009264(v41, &v43[*(v44 + 48)], &qword_10008BF48, &qword_10007D540);
  sub_100009204(v42, &qword_10008BF48, &qword_10007D540);
  v45 = *(v36 + 8);
  v45(v39, v37);
  sub_100009204(v41, &qword_10008BF48, &qword_10007D540);
  return (v45)(v40, v37);
}

uint64_t sub_10005E210@<X0>(uint64_t a1@<X8>)
{
  v23[1] = a1;
  v1 = sub_100003500(&qword_10008BA88, &qword_10007D050);
  __chkstk_darwin(v1);
  v3 = v23 - v2;
  v4 = sub_100003500(&qword_10008BA90, &qword_10007D058);
  __chkstk_darwin(v4);
  v6 = v23 - v5;
  v7 = sub_100003500(&qword_10008BA98, &qword_10007D060);
  __chkstk_darwin(v7);
  v9 = v23 - v8;
  v10 = sub_10006BC3C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002988C();
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_100029924();
  (*(v11 + 8))(v13, v10);
  v16 = sub_10006C1BC();
  if (v15)
  {
    *v9 = v16;
    *(v9 + 1) = 0;
    v9[16] = 0;
    v17 = sub_100003500(&qword_10008BAB8, &qword_10007D070);
    sub_10005F808(v23[0], &v9[*(v17 + 44)]);
    v18 = &qword_10008BA98;
    v19 = &qword_10007D060;
    sub_100009264(v9, v6, &qword_10008BA98, &qword_10007D060);
    swift_storeEnumTagMultiPayload();
    sub_100011308(&qword_10008BAA8, &qword_10008BA98, &qword_10007D060, &protocol conformance descriptor for VStack<A>);
    sub_100011308(&qword_10008BAB0, &qword_10008BA88, &qword_10007D050, &protocol conformance descriptor for VStack<A>);
    sub_10006C26C();
    v20 = v9;
  }

  else
  {
    *v3 = v16;
    *(v3 + 1) = 0;
    v3[16] = 0;
    v21 = sub_100003500(&qword_10008BAA0, &qword_10007D068);
    sub_10005E968(v23[0], &v3[*(v21 + 44)]);
    v18 = &qword_10008BA88;
    v19 = &qword_10007D050;
    sub_100009264(v3, v6, &qword_10008BA88, &qword_10007D050);
    swift_storeEnumTagMultiPayload();
    sub_100011308(&qword_10008BAA8, &qword_10008BA98, &qword_10007D060, &protocol conformance descriptor for VStack<A>);
    sub_100011308(&qword_10008BAB0, &qword_10008BA88, &qword_10007D050, &protocol conformance descriptor for VStack<A>);
    sub_10006C26C();
    v20 = v3;
  }

  return sub_100009204(v20, v18, v19);
}

double sub_10005E5C8@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_10006C1BC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_10005FEAC(&v7);
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v13 = v7;
  v14 = v8;
  v20 = v12;
  v19[2] = v9;
  v19[3] = v10;
  v19[4] = v11;
  v19[0] = v7;
  v19[1] = v8;
  sub_100009264(&v13, &v6, &qword_10008BAC0, &qword_10007D078);
  sub_100009204(v19, &qword_10008BAC0, &qword_10007D078);
  v3 = v16;
  *(a1 + 56) = v15;
  *(a1 + 72) = v3;
  *(a1 + 88) = v17;
  *(a1 + 104) = v18;
  result = *&v13;
  v5 = v14;
  *(a1 + 24) = v13;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_10005E6A4@<X0>(uint64_t a1@<X8>)
{
  v13 = a1;
  v1 = sub_10006C19C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003500(&qword_10008BAC8, &qword_10007D080);
  __chkstk_darwin(v5);
  v7 = &v13 - v6;
  type metadata accessor for AlarmComplicationCircularView(0);
  v8 = sub_1000054C0();
  v9 = sub_10006C38C();
  KeyPath = swift_getKeyPath();
  v14 = v8;
  v15 = KeyPath;
  v16 = v9;
  sub_10006C18C();
  sub_100003500(&qword_10008BAD0, &qword_10007D0B8);
  sub_100062AB8();
  sub_10006C6CC();
  (*(v2 + 8))(v4, v1);

  v14 = sub_1000058C4(0);
  v15 = v11;
  sub_10002B2FC();
  sub_10006BF1C();

  return sub_100009204(v7, &qword_10008BAC8, &qword_10007D080);
}

uint64_t sub_10005E900@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  *a4 = sub_10006C1BC();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  sub_100003500(a1, a2);
  return a3(v5);
}

uint64_t sub_10005E968@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v125 = a1;
  v132 = a2;
  v131 = sub_100003500(&qword_10008BEC0, &qword_10007D4D8);
  __chkstk_darwin(v131);
  v3 = &v116 - v2;
  v126 = sub_100003500(&qword_10008BEC8, &qword_10007D4E0);
  __chkstk_darwin(v126);
  v130 = &v116 - v4;
  v129 = sub_100003500(&qword_10008BED0, &qword_10007D4E8);
  __chkstk_darwin(v129);
  v133 = (&v116 - v5);
  v134 = sub_10006C19C();
  v6 = *(v134 - 8);
  __chkstk_darwin(v134);
  v8 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_100003500(&qword_10008BED8, &qword_10007D4F0);
  __chkstk_darwin(v135);
  v124 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v137 = &v116 - v11;
  __chkstk_darwin(v12);
  v138 = &v116 - v13;
  v14 = sub_10006BC3C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100003500(&qword_10008BEE0, &qword_10007D4F8);
  __chkstk_darwin(v18 - 8);
  v128 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v127 = &v116 - v21;
  v22 = sub_10002988C();
  (*(v15 + 16))(v17, v22, v14);
  v23 = sub_10002AA0C();
  (*(v15 + 8))(v17, v14);
  if (v23 == 2 || (v23 & 1) == 0)
  {
    v124 = *(type metadata accessor for AlarmComplicationCircularView(0) + 20);
    v69 = sub_1000054C0();
    KeyPath = swift_getKeyPath();
    v71 = sub_10006C42C();
    v72 = swift_getKeyPath();
    v136 = v3;
    v139 = v69;
    v140 = KeyPath;
    v141 = 0x3FECCCCCCCCCCCCDLL;
    v142 = v72;
    v143 = v71;
    sub_10006C18C();
    sub_100003500(&qword_10008BEE8, &qword_10007D500);
    sub_100064374();
    v73 = v137;
    sub_10006C6CC();
    (*(v6 + 8))(v8, v134);

    sub_10006C14C();
    v74 = sub_10006C59C();
    v76 = v75;
    v78 = v77;
    v79 = v138;
    sub_10006BF0C();
    sub_1000070DC(v74, v76, v78 & 1);

    sub_100009204(v73, &qword_10008BED8, &qword_10007D4F0);
    v139 = sub_1000056D8();
    v140 = v80;
    sub_10002B2FC();
    v81 = sub_10006C5BC();
    v83 = v82;
    LOBYTE(v73) = v84;
    sub_10006C37C();
    v85 = sub_10006C52C();
    v133 = v86;
    v134 = v85;
    LODWORD(v123) = v87;
    v135 = v88;

    sub_1000070DC(v81, v83, v73 & 1);

    v139 = sub_10000572C();
    v140 = v89;
    v90 = sub_10006C5BC();
    v92 = v91;
    v94 = v93;
    sub_10006C42C();
    v95 = sub_10006C52C();
    v97 = v96;
    v99 = v98;
    v101 = v100;

    sub_1000070DC(v90, v92, v94 & 1);

    v102 = v137;
    sub_100009264(v79, v137, &qword_10008BED8, &qword_10007D4F0);
    LOBYTE(v74) = v123 & 1;
    LOBYTE(v139) = v123 & 1;
    v103 = v136;
    sub_100009264(v102, v136, &qword_10008BED8, &qword_10007D4F0);
    v104 = sub_100003500(&qword_10008BF08, &qword_10007D510);
    v105 = v103 + *(v104 + 48);
    v106 = v133;
    v107 = v134;
    *v105 = v134;
    *(v105 + 8) = v106;
    *(v105 + 16) = v74;
    *(v105 + 24) = v135;
    v108 = v103 + *(v104 + 64);
    *v108 = v95;
    *(v108 + 8) = v97;
    LOBYTE(v92) = v99 & 1;
    *(v108 + 16) = v99 & 1;
    *(v108 + 24) = v101;
    v109 = v106;
    sub_100050270(v107, v106, v74);

    sub_100050270(v95, v97, v92);

    sub_100050270(v107, v109, v74);

    sub_100050270(v95, v97, v92);

    sub_1000070DC(v95, v97, v92);

    sub_1000070DC(v107, v109, v139);

    sub_100009204(v102, &qword_10008BED8, &qword_10007D4F0);
    sub_100009264(v103, v130, &qword_10008BEC0, &qword_10007D4D8);
    swift_storeEnumTagMultiPayload();
    sub_100011308(&qword_10008BF10, &qword_10008BED0, &qword_10007D4E8, &protocol conformance descriptor for TupleView<A>);
    sub_100011308(&qword_10008BF18, &qword_10008BEC0, &qword_10007D4D8, &protocol conformance descriptor for TupleView<A>);
    v66 = v127;
    sub_10006C26C();
    sub_1000070DC(v95, v97, v92);

    sub_1000070DC(v134, v133, v74);

    v65 = v136;
    v67 = &qword_10008BEC0;
    v68 = &qword_10007D4D8;
  }

  else
  {
    type metadata accessor for AlarmComplicationCircularView(0);
    v139 = sub_10000572C();
    v140 = v24;
    sub_10002B2FC();
    v25 = sub_10006C5BC();
    v27 = v26;
    v29 = v28;
    sub_10006C42C();
    v121 = sub_10006C52C();
    v120 = v30;
    v119 = v31;
    v122 = v32;

    sub_1000070DC(v25, v27, v29 & 1);

    v139 = sub_1000056D8();
    v140 = v33;
    v34 = sub_10006C5BC();
    v36 = v35;
    v38 = v37;
    sub_10006C37C();
    v123 = sub_10006C52C();
    v117 = v39;
    v118 = v40;
    v136 = v41;

    sub_1000070DC(v34, v36, v38 & 1);

    v42 = sub_1000054C0();
    v43 = swift_getKeyPath();
    v44 = sub_10006C42C();
    v45 = swift_getKeyPath();
    v139 = v42;
    v140 = v43;
    v141 = 0x3FECCCCCCCCCCCCDLL;
    v142 = v45;
    v143 = v44;
    sub_10006C18C();
    sub_100003500(&qword_10008BEE8, &qword_10007D500);
    sub_100064374();
    v46 = v124;
    sub_10006C6CC();
    (*(v6 + 8))(v8, v134);

    sub_10006C14C();
    v47 = sub_10006C59C();
    v49 = v48;
    v51 = v50;
    v52 = v137;
    sub_10006BF0C();
    sub_1000070DC(v47, v49, v51 & 1);

    sub_100009204(v46, &qword_10008BED8, &qword_10007D4F0);
    v53 = v138;
    sub_10006BF3C();
    sub_100009204(v52, &qword_10008BED8, &qword_10007D4F0);
    LODWORD(v47) = v119 & 1;
    LOBYTE(v139) = v119 & 1;
    sub_100009264(v53, v52, &qword_10008BED8, &qword_10007D4F0);
    v54 = v121;
    v55 = v133;
    v56 = v120;
    *v133 = v121;
    v55[1] = v56;
    *(v55 + 16) = v47;
    v57 = v123;
    v55[3] = v122;
    v55[4] = v57;
    v58 = v117;
    v55[5] = v117;
    LODWORD(v134) = v118 & 1;
    *(v55 + 48) = v118 & 1;
    v55[7] = v136;
    v59 = sub_100003500(&qword_10008BF28, &qword_10007D520);
    sub_100009264(v52, v55 + *(v59 + 64), &qword_10008BED8, &qword_10007D4F0);
    v60 = v56;
    LODWORD(v135) = v47;
    sub_100050270(v54, v56, v47);

    v61 = v58;
    v62 = v58;
    LOBYTE(v58) = v134;
    sub_100050270(v57, v62, v134);

    sub_100050270(v54, v60, v47);

    v63 = v123;
    sub_100050270(v123, v61, v58);

    sub_100009204(v52, &qword_10008BED8, &qword_10007D4F0);
    sub_1000070DC(v63, v61, v58);

    sub_1000070DC(v54, v60, v139);

    sub_100009264(v55, v130, &qword_10008BED0, &qword_10007D4E8);
    swift_storeEnumTagMultiPayload();
    sub_100011308(&qword_10008BF10, &qword_10008BED0, &qword_10007D4E8, &protocol conformance descriptor for TupleView<A>);
    sub_100011308(&qword_10008BF18, &qword_10008BEC0, &qword_10007D4D8, &protocol conformance descriptor for TupleView<A>);
    v64 = v127;
    sub_10006C26C();
    sub_1000070DC(v123, v61, v58);

    sub_1000070DC(v54, v60, v135);

    v65 = v55;
    v66 = v64;
    v67 = &qword_10008BED0;
    v68 = &qword_10007D4E8;
  }

  sub_100009204(v65, v67, v68);
  sub_100009204(v138, &qword_10008BED8, &qword_10007D4F0);
  v110 = v128;
  sub_100009264(v66, v128, &qword_10008BEE0, &qword_10007D4F8);
  v111 = v66;
  v112 = v132;
  *v132 = 0;
  *(v112 + 8) = 1;
  v113 = sub_100003500(&qword_10008BF20, &qword_10007D518);
  sub_100009264(v110, v112 + *(v113 + 48), &qword_10008BEE0, &qword_10007D4F8);
  v114 = v112 + *(v113 + 64);
  *v114 = 0;
  v114[8] = 1;
  sub_100009204(v111, &qword_10008BEE0, &qword_10007D4F8);
  return sub_100009204(v110, &qword_10008BEE0, &qword_10007D4F8);
}

uint64_t sub_10005F808@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v34 = a1;
  v36 = a2;
  v2 = sub_10006C19C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100003500(&qword_10008BAC8, &qword_10007D080);
  __chkstk_darwin(v35);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  type metadata accessor for AlarmComplicationCircularView(0);
  v11 = sub_1000054C0();
  v12 = sub_10006C42C();
  KeyPath = swift_getKeyPath();
  v37 = v11;
  v38 = KeyPath;
  v39 = v12;
  sub_10006C18C();
  sub_100003500(&qword_10008BAD0, &qword_10007D0B8);
  sub_100062AB8();
  sub_10006C6CC();
  (*(v3 + 8))(v5, v2);

  sub_10006C14C();
  v14 = sub_10006C59C();
  v16 = v15;
  v18 = v17;
  v32 = v7;
  v33 = v10;
  sub_10006BF0C();
  sub_1000070DC(v14, v16, v18 & 1);

  sub_100009204(v7, &qword_10008BAC8, &qword_10007D080);
  sub_10005FBD8(v34, &v37);
  v19 = v37;
  v20 = v38;
  v21 = v39;
  v22 = v40;
  LOBYTE(v2) = v41;
  v23 = sub_10006C37C();
  v24 = swift_getKeyPath();
  v25 = v32;
  sub_100009264(v10, v32, &qword_10008BAC8, &qword_10007D080);
  v26 = v36;
  *v36 = 0;
  *(v26 + 8) = 1;
  v27 = sub_100003500(&qword_10008BEB8, &qword_10007D4D0);
  sub_100009264(v25, v26 + v27[12], &qword_10008BAC8, &qword_10007D080);
  v28 = v26 + v27[16];
  *v28 = v19;
  *(v28 + 1) = v20;
  *(v28 + 2) = v21;
  *(v28 + 3) = v22;
  v28[32] = v2;
  *(v28 + 5) = v24;
  *(v28 + 6) = v23;
  v29 = v26 + v27[20];
  *v29 = 0;
  v29[8] = 1;
  sub_1000642FC(v19, v20, v21, v22);

  sub_100009204(v33, &qword_10008BAC8, &qword_10007D080);
  sub_100064338(v19, v20, v21, v22);

  return sub_100009204(v25, &qword_10008BAC8, &qword_10007D080);
}

double sub_10005FBD8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10006B86C();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100003500(&qword_1000887E8, &qword_1000795A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_10006BB7C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1 + *(type metadata accessor for AlarmComplicationCircularView(0) + 20);
  v14 = type metadata accessor for AlarmEntry(0);
  sub_100009264(v13 + *(v14 + 20), v8, &qword_1000887E8, &qword_1000795A0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100009204(v8, &qword_1000887E8, &qword_1000795A0);
    *&v32 = sub_100005684();
    *(&v32 + 1) = v15;
    sub_10002B2FC();
    v27 = sub_10006C5BC();
    v28 = v16;
    v29 = v17 & 1;
    v30 = v18;
    v31 = 1;
    sub_10006C26C();
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v19 = type metadata accessor for WidgetUtilities();
    (*(v19 + 136))(v12);
    v27 = sub_10006C5AC();
    v28 = v20;
    v29 = v21 & 1;
    v30 = v22;
    v31 = 0;
    sub_10006C26C();
    (*(v10 + 8))(v12, v9);
  }

  result = *&v32;
  v24 = v33;
  v25 = v34;
  *a2 = v32;
  *(a2 + 16) = v24;
  *(a2 + 32) = v25;
  return result;
}

uint64_t sub_10005FEAC@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AlarmComplicationCircularView(0);
  v22 = sub_1000054C0();
  v21 = sub_10006C37C();
  KeyPath = swift_getKeyPath();
  sub_1000058C4(7u);
  sub_10002B2FC();
  v2 = sub_10006C5BC();
  v4 = v3;
  v6 = v5;
  sub_10006C37C();
  v7 = sub_10006C52C();
  v9 = v8;
  v11 = v10;

  sub_1000070DC(v2, v4, v6 & 1);

  sub_1000058C4(6u);
  v12 = sub_10006C4FC();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_1000070DC(v7, v9, v11 & 1);

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v22;
  *(a1 + 24) = KeyPath;
  *(a1 + 32) = v21;
  *(a1 + 40) = v12;
  *(a1 + 48) = v14;
  *(a1 + 56) = v16 & 1;
  *(a1 + 64) = v18;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;

  sub_100050270(v12, v14, v16 & 1);

  sub_1000070DC(v12, v14, v16 & 1);
}

uint64_t sub_1000600BC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100003500(&qword_100088FB8, &qword_100079CB0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10006011C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  sub_1000586D4(a1, a7, &qword_100088B58, &qword_100079D00);
  v13 = type metadata accessor for AlarmComplicationCircularView(0);
  sub_10005B8DC(a2, a7 + v13[5], type metadata accessor for AlarmEntry);
  result = sub_10003D860(a3, a7 + v13[6]);
  *(a7 + v13[7]) = a4;
  *(a7 + v13[8]) = a5;
  *(a7 + v13[9]) = a6;
  return result;
}

void *sub_1000601D8@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_10006C93C();
  v5 = v4;
  sub_10006028C(__src);
  memcpy(__dst, __src, 0x189uLL);
  memcpy(v10, __src, 0x189uLL);
  sub_100009264(__dst, &v7, &qword_10008BAE0, &qword_10007D0C0);
  sub_100009204(v10, &qword_10008BAE0, &qword_10007D0C0);
  *a2 = v3;
  a2[1] = v5;
  return memcpy(a2 + 2, __dst, 0x189uLL);
}

uint64_t sub_10006028C@<X0>(uint64_t a1@<X8>)
{
  v2 = *sub_10000E5A0();

  v3 = sub_10006C33C();
  v4 = sub_10006C1CC();
  v6[0] = 0;
  sub_10006041C(__src);
  memcpy(__dst, __src, 0x161uLL);
  memcpy(v10, __src, 0x161uLL);
  sub_100009264(__dst, v11, &qword_10008BE90, &qword_10007D470);
  sub_100009204(v10, &qword_10008BE90, &qword_10007D470);
  memcpy(&v8[7], __dst, 0x161uLL);
  v11[0] = v4;
  v11[1] = 0;
  LOBYTE(v11[2]) = 0;
  memcpy(&v11[2] + 1, v8, 0x168uLL);
  memcpy(&v7[7], v11, 0x179uLL);
  *a1 = v2;
  *(a1 + 8) = v3;
  memcpy((a1 + 9), v7, 0x180uLL);
  __src[0] = v4;
  __src[1] = 0;
  LOBYTE(__src[2]) = 0;
  memcpy(&__src[2] + 1, v8, 0x168uLL);

  sub_100009264(v11, v6, &qword_10008BE98, &qword_10007D478);
  sub_100009204(__src, &qword_10008BE98, &qword_10007D478);
}

uint64_t sub_10006041C@<X0>(void *a1@<X8>)
{
  v78 = a1;
  v1 = sub_10006C41C();
  v76 = *(v1 - 8);
  v77 = v1;
  __chkstk_darwin(v1);
  v75 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003500(&qword_100089B40, &qword_10007D480);
  __chkstk_darwin(v3 - 8);
  v5 = &v72 - v4;
  v90 = sub_10006C0EC();
  LOBYTE(v147[0]) = 0;
  sub_100060F60(v101);
  *(v100 + 7) = v101[0];
  *(&v100[1] + 7) = v101[1];
  *(&v100[2] + 7) = v101[2];
  *(&v100[3] + 7) = v101[3];
  v91 = LOBYTE(v147[0]);
  v89 = sub_10006C34C();
  sub_10006C14C();
  v6 = sub_10006C59C();
  v8 = v7;
  v10 = v9;
  sub_10006C3DC();
  v11 = enum case for Font.Design.default(_:);
  LODWORD(v82) = enum case for Font.Design.default(_:);
  v12 = sub_10006C39C();
  KeyPath = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 104);
  v81 = v13 + 104;
  v83 = v14;
  v14(v5, v11, v12);
  v15 = *(v13 + 56);
  v74 = v13 + 56;
  v80 = v15;
  v15(v5, 0, 1, v12);
  v73 = v5;
  sub_10006C3EC();
  sub_100009204(v5, &qword_100089B40, &qword_10007D480);
  v16 = sub_10006C52C();
  v18 = v17;
  LOBYTE(v11) = v19;

  sub_1000070DC(v6, v8, v10 & 1);

  sub_10000EE30();

  v20 = sub_10006C4EC();
  v86 = v21;
  v87 = v20;
  LOBYTE(v6) = v22;
  v88 = v23;

  sub_1000070DC(v16, v18, v11 & 1);

  v85 = sub_10006C35C();
  sub_10006BE4C();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v84 = v6 & 1;
  LOBYTE(v147[0]) = v6 & 1;
  LOBYTE(v103) = 0;
  sub_10006C14C();
  v32 = sub_10006C59C();
  v34 = v33;
  LOBYTE(v6) = v35;
  sub_10006C3AC();
  v36 = v73;
  v37 = KeyPath;
  v83(v73, v82, KeyPath);
  v80(v36, 0, 1, v37);
  sub_10006C3EC();
  sub_100009204(v36, &qword_100089B40, &qword_10007D480);
  v38 = sub_10006C52C();
  v40 = v39;
  LOBYTE(v37) = v41;

  sub_1000070DC(v32, v34, v6 & 1);

  sub_10006C78C();
  v42 = sub_10006C4EC();
  v80 = v43;
  v81 = v42;
  LOBYTE(v32) = v44;
  v82 = v45;

  sub_1000070DC(v38, v40, v37 & 1);

  KeyPath = swift_getKeyPath();
  v74 = swift_getKeyPath();
  LODWORD(v83) = v32 & 1;
  LOBYTE(v147[0]) = v32 & 1;
  sub_10006C14C();
  v46 = sub_10006C59C();
  v48 = v47;
  LOBYTE(v37) = v49;
  sub_10006C42C();
  v51 = v75;
  v50 = v76;
  v52 = v77;
  (*(v76 + 104))(v75, enum case for Font.Leading.tight(_:), v77);
  sub_10006C43C();

  (*(v50 + 8))(v51, v52);
  v53 = sub_10006C52C();
  v55 = v54;
  LOBYTE(v50) = v56;

  sub_1000070DC(v46, v48, v37 & 1);

  sub_10006C74C();
  v57 = sub_10006C4EC();
  v77 = v58;
  LOBYTE(v18) = v59;
  v61 = v60;

  sub_1000070DC(v53, v55, v50 & 1);

  v62 = swift_getKeyPath();
  v63 = swift_getKeyPath();
  LOBYTE(v48) = v18 & 1;
  LOBYTE(v147[0]) = v18 & 1;
  *&v103 = v90;
  *(&v103 + 1) = 0x4014000000000000;
  LOBYTE(v104[0]) = v91;
  *(&v104[1] + 1) = v100[1];
  *(&v104[2] + 1) = v100[2];
  *(&v104[3] + 1) = v100[3];
  *&v104[4] = *(&v100[3] + 15);
  *(v104 + 1) = v100[0];
  BYTE8(v104[4]) = v89;
  HIDWORD(v104[4]) = *&v102[3];
  *(&v104[4] + 9) = *v102;
  memset(&v104[5], 0, 32);
  v105 = 1;
  v93[2] = v104[1];
  v93[3] = v104[2];
  v93[0] = v103;
  v93[1] = v104[0];
  LOBYTE(v93[8]) = 1;
  memset(&v93[6], 0, 32);
  v93[4] = v104[3];
  v93[5] = v104[4];
  *&v106 = v87;
  *(&v106 + 1) = v86;
  LOBYTE(v107) = v84;
  *(&v107 + 1) = *v99;
  DWORD1(v107) = *&v99[3];
  *(&v107 + 1) = v88;
  LOBYTE(v108) = v85;
  *(&v108 + 1) = *v98;
  DWORD1(v108) = *&v98[3];
  *(&v108 + 1) = v25;
  *&v109[0] = v27;
  *(&v109[0] + 1) = v29;
  *&v109[1] = v31;
  BYTE8(v109[1]) = 0;
  *(&v93[8] + 8) = v106;
  *(&v93[12] + 1) = *(v109 + 9);
  *(&v93[11] + 8) = v109[0];
  *(&v93[10] + 8) = v108;
  *(&v93[9] + 8) = v107;
  *&v110 = v81;
  *(&v110 + 1) = v80;
  LOBYTE(v111) = v83;
  DWORD1(v111) = *(v97 + 3);
  *(&v111 + 1) = v97[0];
  *(&v111 + 1) = v82;
  *&v112 = KeyPath;
  BYTE8(v112) = 1;
  HIDWORD(v112) = *&v96[3];
  *(&v112 + 9) = *v96;
  v64 = v74;
  *&v113 = v74;
  *(&v113 + 1) = 0x3FE0000000000000;
  *(&v93[16] + 8) = v113;
  *(&v93[15] + 8) = v112;
  *(&v93[14] + 8) = v111;
  *(&v93[13] + 8) = v110;
  v65 = v57;
  *&v114 = v57;
  v66 = v77;
  *(&v114 + 1) = v77;
  LOBYTE(v115) = v18 & 1;
  DWORD1(v115) = *(v95 + 3);
  *(&v115 + 1) = v95[0];
  v67 = v61;
  *(&v115 + 1) = v61;
  v68 = v62;
  *&v116 = v62;
  BYTE8(v116) = 1;
  HIDWORD(v116) = *&v94[3];
  *(&v116 + 9) = *v94;
  v69 = v63;
  *&v117 = v63;
  *(&v117 + 1) = 0x3FE0000000000000;
  *(&v93[19] + 8) = v116;
  *(&v93[20] + 8) = v117;
  *(&v93[17] + 8) = v114;
  *(&v93[18] + 8) = v115;
  v92 = 1;
  v70 = v78;
  memcpy(v78, v93, 0x158uLL);
  v70[43] = 0;
  *(v70 + 352) = 1;
  v118[0] = v65;
  v118[1] = v66;
  v119 = v48;
  *v120 = v95[0];
  *&v120[3] = *(v95 + 3);
  v121 = v67;
  v122 = v68;
  v123 = 1;
  *v124 = *v94;
  *&v124[3] = *&v94[3];
  v125 = v69;
  v126 = 0x3FE0000000000000;
  sub_100009264(&v103, v147, &qword_10008BEA0, &qword_10007D4B8);
  sub_100009264(&v106, v147, &qword_10008BEA8, &qword_10007D4C0);
  sub_100009264(&v110, v147, &qword_10008BEB0, &qword_10007D4C8);
  sub_100009264(&v114, v147, &qword_10008BEB0, &qword_10007D4C8);
  sub_100009204(v118, &qword_10008BEB0, &qword_10007D4C8);
  v127[0] = v81;
  v127[1] = v80;
  v128 = v83;
  *v129 = v97[0];
  *&v129[3] = *(v97 + 3);
  v130 = v82;
  v131 = KeyPath;
  v132 = 1;
  *v133 = *v96;
  *&v133[3] = *&v96[3];
  v134 = v64;
  v135 = 0x3FE0000000000000;
  sub_100009204(v127, &qword_10008BEB0, &qword_10007D4C8);
  v136[0] = v87;
  v136[1] = v86;
  v137 = v84;
  *v138 = *v99;
  *&v138[3] = *&v99[3];
  v139 = v88;
  v140 = v85;
  *v141 = *v98;
  *&v141[3] = *&v98[3];
  v142 = v25;
  v143 = v27;
  v144 = v29;
  v145 = v31;
  v146 = 0;
  sub_100009204(v136, &qword_10008BEA8, &qword_10007D4C0);
  v150 = v100[1];
  v151 = v100[2];
  *v152 = v100[3];
  v147[0] = v90;
  v147[1] = 0x4014000000000000;
  v148 = v91;
  *&v152[15] = *(&v100[3] + 15);
  v149 = v100[0];
  v153 = v89;
  *v154 = *v102;
  *&v154[3] = *&v102[3];
  v156 = 0u;
  v155 = 0u;
  v157 = 1;
  return sub_100009204(v147, &qword_10008BEA0, &qword_10007D4B8);
}

uint64_t sub_100060F60@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003500(&qword_100089B40, &qword_10007D480);
  __chkstk_darwin(v2 - 8);
  v47 = &v45[-v3];
  v4 = type metadata accessor for AlarmEntry(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v45[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000041C4(v6);
  sub_1000054F8();
  sub_10006429C(v6, type metadata accessor for AlarmEntry);
  v7 = sub_10006C5CC();
  v9 = v8;
  v11 = v10;
  sub_10006C45C();
  v12 = sub_10006C52C();
  v14 = v13;
  v16 = v15;

  sub_1000070DC(v7, v9, v11 & 1);

  sub_10006C78C();
  v17 = sub_10006C4EC();
  v48 = v18;
  v49 = v17;
  v46 = v19;
  v50 = v20;

  sub_1000070DC(v12, v14, v16 & 1);

  sub_10006C14C();
  v21 = sub_10006C59C();
  v23 = v22;
  v25 = v24;
  sub_10006C3DC();
  v26 = enum case for Font.Design.default(_:);
  v27 = sub_10006C39C();
  v28 = *(v27 - 8);
  v29 = v47;
  (*(v28 + 104))(v47, v26, v27);
  (*(v28 + 56))(v29, 0, 1, v27);
  sub_10006C3EC();
  sub_100009204(v29, &qword_100089B40, &qword_10007D480);
  v30 = sub_10006C52C();
  v32 = v31;
  LOBYTE(v28) = v33;

  sub_1000070DC(v21, v23, v25 & 1);

  sub_10006C78C();
  v34 = sub_10006C4EC();
  v36 = v35;
  LOBYTE(v12) = v37;
  v39 = v38;

  sub_1000070DC(v30, v32, v28 & 1);

  v40 = v46 & 1;
  v51 = v46 & 1;
  v53 = v46 & 1;
  v52 = v12 & 1;
  v42 = v48;
  v41 = v49;
  *a1 = v49;
  *(a1 + 8) = v42;
  *(a1 + 16) = v40;
  *(a1 + 24) = v50;
  *(a1 + 32) = v34;
  *(a1 + 40) = v36;
  *(a1 + 48) = v12 & 1;
  *(a1 + 56) = v39;
  v43 = v41;
  sub_100050270(v41, v42, v40);

  sub_100050270(v34, v36, v12 & 1);

  sub_1000070DC(v34, v36, v12 & 1);

  sub_1000070DC(v43, v42, v51);
}

uint64_t sub_1000613DC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_100061528@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10006C71C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003500(&qword_10008BAE8, &qword_10007D0C8);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v25 - v9;
  *v10 = sub_10006C0EC();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v11 = sub_100003500(&qword_10008BAF0, &qword_10007D0D0);
  sub_1000617B0(v1, &v10[*(v11 + 44)]);
  (*(v4 + 104))(v6, enum case for Color.RGBColorSpace.sRGBLinear(_:), v3);
  v12 = sub_10006C7BC();
  v13 = &v10[*(sub_100003500(&qword_10008BAF8, &qword_10007D0D8) + 36)];
  *v13 = v12;
  v13[1] = 0x3FF0000000000000;
  v13[2] = 0;
  v13[3] = 0;
  v14 = sub_10006C38C();
  KeyPath = swift_getKeyPath();
  v16 = &v10[*(sub_100003500(&qword_10008BB00, &qword_10007D0E0) + 36)];
  *v16 = KeyPath;
  v16[1] = v14;
  v17 = sub_10006C78C();
  v18 = swift_getKeyPath();
  v19 = &v10[*(v8 + 44)];
  *v19 = v18;
  v19[1] = v17;
  v20 = sub_10000FD1C();
  swift_beginAccess();
  if (*v20)
  {
    v21 = 0.8;
  }

  else
  {
    v21 = 1.0;
  }

  v22 = swift_getKeyPath();
  sub_1000586D4(v10, a1, &qword_10008BAE8, &qword_10007D0C8);
  result = sub_100003500(&qword_10008BB08, &qword_10007D118);
  v24 = a1 + *(result + 36);
  *v24 = v22;
  *(v24 + 8) = v21;
  return result;
}

uint64_t sub_1000617B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v4 = sub_10006B86C();
  __chkstk_darwin(v4 - 8);
  v56[1] = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003500(&qword_1000887E8, &qword_1000795A0);
  __chkstk_darwin(v6 - 8);
  v57 = v56 - v7;
  v8 = sub_10006BB7C();
  v60 = *(v8 - 8);
  *&v61 = v8;
  __chkstk_darwin(v8);
  v58 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_100003500(&qword_10008BE30, &qword_10007D3F8);
  __chkstk_darwin(v67);
  v68 = v56 - v10;
  v63 = sub_100003500(&qword_10008BE38, &qword_10007D400);
  __chkstk_darwin(v63);
  v66 = v56 - v11;
  v69 = sub_100003500(&qword_10008BE40, &qword_10007D408);
  __chkstk_darwin(v69);
  v65 = v56 - v12;
  v64 = sub_100003500(&qword_10008BE48, &qword_10007D410);
  __chkstk_darwin(v64);
  v14 = v56 - v13;
  v15 = sub_100003500(&qword_10008B968, &qword_10007CF90);
  __chkstk_darwin(v15 - 8);
  v17 = v56 - v16;
  *&v62 = type metadata accessor for AlarmEntry(0);
  v18 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100003500(&qword_100088BD0, &qword_10007CEE0);
  __chkstk_darwin(v20 - 8);
  v22 = v56 - v21;
  v23 = type metadata accessor for WorldClockCity(0);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009264(a1, v22, &qword_100088BD0, &qword_10007CEE0);
  if ((*(v24 + 48))(v22, 1, v23) != 1)
  {
    sub_10005B8DC(v22, v26, type metadata accessor for WorldClockCity);
    sub_100062190(v26, v71);
    v31 = v72;
    v32 = v73;
    v61 = v71[1];
    v62 = v71[0];
    KeyPath = swift_getKeyPath();
    v34 = &v14[*(v64 + 36)];
    sub_100003500(&qword_10008B378, &qword_10007D430);
    sub_10006BBFC();
    *v34 = KeyPath;
    v35 = v61;
    *v14 = v62;
    *(v14 + 1) = v35;
    v14[32] = v31;
    v14[33] = v32;
    sub_100009264(v14, v66, &qword_10008BE48, &qword_10007D410);
    swift_storeEnumTagMultiPayload();
    sub_1000640B8();
    v36 = v65;
    sub_10006C26C();
    sub_100009264(v36, v68, &qword_10008BE40, &qword_10007D408);
    swift_storeEnumTagMultiPayload();
    sub_100064034(&qword_10008BE50, &qword_10008BE40, &qword_10007D408, sub_1000640B8);
    sub_10006C26C();
    sub_100009204(v36, &qword_10008BE40, &qword_10007D408);
    sub_100009204(v14, &qword_10008BE48, &qword_10007D410);
    v37 = type metadata accessor for WorldClockCity;
    v38 = v26;
    return sub_10006429C(v38, v37);
  }

  v27 = v66;
  v28 = v68;
  sub_100009204(v22, &qword_100088BD0, &qword_10007CEE0);
  v29 = type metadata accessor for ClockDateText(0);
  sub_100009264(a1 + *(v29 + 20), v17, &qword_10008B968, &qword_10007CF90);
  v30 = v62;
  if ((*(v18 + 48))(v17, 1, v62) != 1)
  {
    v40 = v59;
    sub_10005B8DC(v17, v59, type metadata accessor for AlarmEntry);
    v41 = v57;
    sub_100009264(v40 + *(v30 + 20), v57, &qword_1000887E8, &qword_1000795A0);
    v43 = v60;
    v42 = v61;
    if ((*(v60 + 48))(v41, 1, v61) == 1)
    {
      sub_10006429C(v40, type metadata accessor for AlarmEntry);
      sub_100009204(v41, &qword_1000887E8, &qword_1000795A0);
      goto LABEL_8;
    }

    v47 = v58;
    (*(v43 + 32))(v58, v41, v42);
    v48 = type metadata accessor for WidgetUtilities();
    (*(v48 + 136))(v47);
    v49 = sub_10006C5AC();
    v51 = v50;
    *v27 = v49;
    *(v27 + 8) = v50;
    v53 = v52 & 1;
    *(v27 + 16) = v52 & 1;
    *(v27 + 24) = v54;
    swift_storeEnumTagMultiPayload();
    sub_100050270(v49, v51, v53);
    sub_1000640B8();

    v55 = v65;
    sub_10006C26C();
    sub_100009264(v55, v28, &qword_10008BE40, &qword_10007D408);
    swift_storeEnumTagMultiPayload();
    sub_100064034(&qword_10008BE50, &qword_10008BE40, &qword_10007D408, sub_1000640B8);
    sub_10006C26C();
    sub_1000070DC(v49, v51, v53);

    sub_100009204(v55, &qword_10008BE40, &qword_10007D408);
    (*(v60 + 8))(v58, v61);
    v37 = type metadata accessor for AlarmEntry;
    v38 = v59;
    return sub_10006429C(v38, v37);
  }

  sub_100009204(v17, &qword_10008B968, &qword_10007CF90);
LABEL_8:
  sub_10006C14C();
  *v28 = sub_10006C59C();
  *(v28 + 8) = v44;
  *(v28 + 16) = v45 & 1;
  *(v28 + 24) = v46;
  swift_storeEnumTagMultiPayload();
  sub_100064034(&qword_10008BE50, &qword_10008BE40, &qword_10007D408, sub_1000640B8);
  return sub_10006C26C();
}

double sub_100062190@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v66 = a1;
  v67 = a2;
  v3 = sub_10006C13C();
  __chkstk_darwin(v3 - 8);
  v65 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003500(&qword_100088BE0, &qword_10007B3C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v65 - v6;
  v8 = sub_10006BC3C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v65 - v13;
  v15 = sub_10002988C();
  v16 = *(v9 + 16);
  v16(v14, v15, v8);
  v17 = sub_100029924();
  v18 = *(v9 + 8);
  v18(v14, v8);
  if (v17)
  {
    sub_1000657E8(v7);
    v19 = sub_10006BD3C();
    (*(*(v19 - 8) + 56))(v7, 0, 1, v19);
    v20 = sub_10006C50C();
    v22 = v20;
    v23 = v21;
    *&v68 = v20;
    *(&v68 + 1) = v21;
    v25 = v24 & 1;
    *&v69 = v24 & 1;
    *(&v69 + 1) = v26;
    LOBYTE(v70) = 0;
  }

  else
  {
    v27 = v66;
    v16(v11, v15, v8);
    v28 = sub_10002AA0C();
    v18(v11, v8);
    if (v28 == 2 || (v28 & 1) == 0)
    {
      sub_10006C12C();
      v78._countAndFlagsBits = 0;
      v78._object = 0xE000000000000000;
      sub_10006C11C(v78);
      v44 = type metadata accessor for WidgetUtilities();
      v45 = (v27 + *(type metadata accessor for WorldClockCity(0) + 32));
      v46 = *v45;
      v47 = v45[1];
      v48 = (*(v44 + 120))(*v45, v47);
      v50 = v49;
      v52 = v51;
      sub_10006C0FC();
      sub_1000070DC(v48, v50, v52 & 1);

      v79._countAndFlagsBits = 32;
      v79._object = 0xE100000000000000;
      sub_10006C11C(v79);
      v53 = (*(v44 + 128))(v46, v47);
      v55 = v54;
      LOBYTE(v47) = v56;
      sub_10006C0FC();
      sub_1000070DC(v53, v55, v47 & 1);

      v80._countAndFlagsBits = 0;
      v80._object = 0xE000000000000000;
      sub_10006C11C(v80);
      sub_10006C15C();
      *&v68 = sub_10006C59C();
      *(&v68 + 1) = v57;
      *&v69 = v58 & 1;
      *(&v69 + 1) = v59;
      v70 = 256;
      sub_100003500(&qword_10008BE88, &qword_10007D428);
      sub_100064220();
      sub_10006C26C();
      goto LABEL_8;
    }

    sub_10006C12C();
    v75._countAndFlagsBits = 0;
    v75._object = 0xE000000000000000;
    sub_10006C11C(v75);
    v29 = type metadata accessor for WidgetUtilities();
    v30 = (v27 + *(type metadata accessor for WorldClockCity(0) + 32));
    v31 = *v30;
    v32 = v30[1];
    v33 = (*(v29 + 128))(*v30, v32);
    v35 = v34;
    v37 = v36;
    sub_10006C0FC();
    sub_1000070DC(v33, v35, v37 & 1);

    v76._countAndFlagsBits = 32;
    v76._object = 0xE100000000000000;
    sub_10006C11C(v76);
    v38 = (*(v29 + 120))(v31, v32);
    v40 = v39;
    LOBYTE(v32) = v41;
    sub_10006C0FC();
    sub_1000070DC(v38, v40, v32 & 1);

    v77._countAndFlagsBits = 0;
    v77._object = 0xE000000000000000;
    sub_10006C11C(v77);
    sub_10006C15C();
    v20 = sub_10006C59C();
    v22 = v20;
    v23 = v21;
    *&v68 = v20;
    *(&v68 + 1) = v21;
    v25 = v42 & 1;
    *&v69 = v42 & 1;
    *(&v69 + 1) = v43;
    LOBYTE(v70) = 1;
  }

  sub_100050270(v20, v21, v25);

  sub_10006C26C();
  v68 = v71;
  v69 = v72;
  v70 = v73;
  sub_100003500(&qword_10008BE88, &qword_10007D428);
  sub_100064220();
  sub_10006C26C();
  sub_1000070DC(v22, v23, v25);

LABEL_8:
  result = *&v71;
  v61 = v72;
  v62 = v73;
  v63 = v74;
  v64 = v67;
  *v67 = v71;
  v64[1] = v61;
  *(v64 + 32) = v62;
  *(v64 + 33) = v63;
  return result;
}

uint64_t sub_1000627BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_10006288C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WorldClockCity(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = *(type metadata accessor for ClockDateText(0) + 20);
  v4 = type metadata accessor for AlarmEntry(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

unint64_t sub_100062948()
{
  result = qword_10008BA68;
  if (!qword_10008BA68)
  {
    sub_100007094(&qword_10008BA50, &qword_10007CFF8);
    sub_1000629D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008BA68);
  }

  return result;
}

unint64_t sub_1000629D4()
{
  result = qword_10008BA70;
  if (!qword_10008BA70)
  {
    sub_100007094(&qword_10008BA60, &qword_10007D038);
    sub_100011308(&qword_10008BA78, &qword_10008BA80, &unk_10007D040, &protocol conformance descriptor for ZStack<A>);
    sub_100011308(&qword_10008A020, &qword_10008A028, &qword_10007B950, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008BA70);
  }

  return result;
}

unint64_t sub_100062AB8()
{
  result = qword_10008BAD8;
  if (!qword_10008BAD8)
  {
    sub_100007094(&qword_10008BAD0, &qword_10007D0B8);
    sub_100011308(&qword_10008A1C0, &qword_10008A1C8, &qword_10007BAA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008BAD8);
  }

  return result;
}

uint64_t sub_100062B70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003500(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_100062D10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmEntry(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100062D90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmEntry(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100062E20(uint64_t a1)
{
  result = type metadata accessor for AlarmEntry(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100062EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003500(&qword_100088B58, &qword_100079D00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AlarmEntry(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100062FD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100003500(&qword_100088B58, &qword_100079D00);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for AlarmEntry(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1000630E8(uint64_t a1)
{
  sub_1000634F8(319, &qword_100089038, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AlarmEntry(319);
    if (v2 <= 0x3F)
    {
      sub_100051A34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000631E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003500(&qword_100088BD0, &qword_10007CEE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100003500(&qword_10008B968, &qword_10007CF90);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100063300(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100003500(&qword_100088BD0, &qword_10007CEE0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100003500(&qword_10008B968, &qword_10007CF90);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_100063414(uint64_t a1)
{
  sub_1000634F8(319, &qword_10008BD78, type metadata accessor for WorldClockCity, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1000634F8(319, &unk_10008BD80, type metadata accessor for AlarmEntry, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000634F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000635BC(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_100007094(a2, a3);
  sub_100011308(a4, a2, a3, a5);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10006364C()
{
  result = qword_10008BDB0;
  if (!qword_10008BDB0)
  {
    sub_100007094(&qword_10008BA20, &qword_10007CFA0);
    sub_100011308(&qword_10008BA30, &qword_10008BA18, &qword_10007CF98, &protocol conformance descriptor for HStack<A>);
    sub_10006459C(&qword_10008B008, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008BDB0);
  }

  return result;
}

unint64_t sub_100063738()
{
  result = qword_10008BDB8;
  if (!qword_10008BDB8)
  {
    sub_100007094(&qword_10008BDC0, &qword_10007D3D0);
    sub_10006459C(&qword_10008B008, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008BDB8);
  }

  return result;
}

uint64_t sub_1000637F4()
{
  sub_100007094(&qword_10008BA50, &qword_10007CFF8);
  sub_100062948();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10006385C()
{
  result = qword_10008BDC8;
  if (!qword_10008BDC8)
  {
    sub_100007094(&qword_10008BDD0, &qword_10007D3D8);
    sub_100011308(&qword_10008BAA8, &qword_10008BA98, &qword_10007D060, &protocol conformance descriptor for VStack<A>);
    sub_100011308(&qword_10008BAB0, &qword_10008BA88, &qword_10007D050, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008BDC8);
  }

  return result;
}

unint64_t sub_100063A0C()
{
  result = qword_10008BDE8;
  if (!qword_10008BDE8)
  {
    sub_100007094(&qword_10008BAC8, &qword_10007D080);
    sub_100062AB8();
    sub_10006459C(&qword_10008B008, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008BDE8);
  }

  return result;
}

unint64_t sub_100063B10()
{
  result = qword_10008BE00;
  if (!qword_10008BE00)
  {
    sub_100007094(&qword_10008BB08, &qword_10007D118);
    sub_100063BC8();
    sub_100011308(&qword_10008A020, &qword_10008A028, &qword_10007B950, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008BE00);
  }

  return result;
}

unint64_t sub_100063BC8()
{
  result = qword_10008BE08;
  if (!qword_10008BE08)
  {
    sub_100007094(&qword_10008BAE8, &qword_10007D0C8);
    sub_100063C80();
    sub_100011308(&qword_10008B1A8, &qword_10008B1B0, &qword_10007C918, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008BE08);
  }

  return result;
}

unint64_t sub_100063C80()
{
  result = qword_10008BE10;
  if (!qword_10008BE10)
  {
    sub_100007094(&qword_10008BB00, &qword_10007D0E0);
    sub_100063D38();
    sub_100011308(&qword_10008A1C0, &qword_10008A1C8, &qword_10007BAA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008BE10);
  }

  return result;
}

unint64_t sub_100063D38()
{
  result = qword_10008BE18;
  if (!qword_10008BE18)
  {
    sub_100007094(&qword_10008BAF8, &qword_10007D0D8);
    sub_100011308(&qword_10008BE20, &qword_10008BE28, &qword_10007D3F0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008BE18);
  }

  return result;
}

uint64_t sub_100063DF0()
{
  v1 = *(type metadata accessor for AlarmSmallWidgetView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v13 = *(v1 + 64);
  v14 = v0;
  v4 = v0 + v3;
  v5 = sub_10006BB7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v3, v5);
  v8 = type metadata accessor for AlarmEntry(0);
  v9 = *(v8 + 20);
  v10 = *(v6 + 48);
  if (!v10(v4 + v9, 1, v5))
  {
    v7(v4 + v9, v5);
  }

  v11 = *(v8 + 24);
  if (!v10(v4 + v11, 1, v5))
  {
    v7(v4 + v11, v5);
  }

  return _swift_deallocObject(v14, v3 + v13, v2 | 7);
}

void *sub_100063FC4@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for AlarmSmallWidgetView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100059D7C(v4, a1);
}