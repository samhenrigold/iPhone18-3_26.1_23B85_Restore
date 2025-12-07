id sub_10002862C()
{
  v26.receiver = v0;
  v26.super_class = type metadata accessor for TodayCardThreeLineOverlayView();
  objc_msgSendSuper2(&v26, "layoutSubviews");
  sub_10076422C();
  CGRectGetWidth(v27);
  v1 = 14.0;
  sub_100770ACC();
  v3 = v2;
  v5 = v4;
  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_headingLabel];
  v7 = [v6 text];
  if (v7)
  {

    [v6 measurementsWithFitting:v0 in:{v3, v5}];
    v9 = v8;
    v11 = v10;
    sub_10076422C();
    sub_100770A4C();
    [v6 setFrame:?];
    [v6 jet_languageAwareOutsets];
    v13 = v12;
    v28.origin.x = 20.0;
    v28.origin.y = 14.0;
    v28.size.width = v3;
    v28.size.height = v9;
    v1 = v13 + CGRectGetMaxY(v28) - v11;
  }

  v14 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_titleLabel];
  v15 = [v14 text];
  if (v15)
  {

    [v14 measurementsWithFitting:v0 in:{v3, v5}];
    v18 = v17;
    if (qword_10093F478 != -1)
    {
      swift_once();
    }

    v19 = sub_10076D9AC();
    sub_10000A61C(v19, qword_100942DB0);
    sub_10076D42C();
    v21 = v1 + v20;
    sub_10076422C();
    sub_100770A4C();
    [v14 setFrame:?];
    v29.origin.x = 20.0;
    v29.origin.y = v21;
    v29.size.width = v3;
    v29.size.height = v18;
    MaxY = CGRectGetMaxY(v29);
  }

  v22 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_descriptionLabel];
  v23 = [v22 text];
  if (v23)
  {

    if ((v0[OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_isExpanded] & 1) == 0)
    {
      [v22 measurementsWithFitting:v0 in:{v3, v5}];
      sub_10076422C();
      CGRectGetMaxY(v30);
      sub_10076422C();
      sub_100770A4C();
      [v22 setFrame:?];
    }
  }

  v24 = 1.0;
  if (v0[OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_isExpanded])
  {
    v24 = 0.0;
  }

  return [v22 setAlpha:v24];
}

double sub_1000289B8(double a1, double a2)
{
  v4 = sub_10076997C();
  v49 = *(v4 - 8);
  v50 = v4;
  *&v5 = __chkstk_darwin(v4).n128_u64[0];
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*&v2[OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_headingLabel] text];
  if (v8)
  {
    v9 = v8;
    sub_10076FF9C();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = [*&v2[OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_titleLabel] text];
  if (v12)
  {
    v13 = v12;
    sub_10076FF9C();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = [*&v2[OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_descriptionLabel] text];
  if (v16)
  {
    v17 = v16;
    v47 = sub_10076FF9C();
    v19 = v18;
  }

  else
  {
    v47 = 0;
    v19 = 0;
  }

  v48 = v2[OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_isExpanded];
  [v2 layoutMargins];
  v20 = [v2 traitCollection];
  sub_100770ACC();
  if (!v11)
  {
    if (v15)
    {
      goto LABEL_14;
    }

LABEL_22:
    if (v19)
    {
      goto LABEL_19;
    }

LABEL_23:

    goto LABEL_24;
  }

  v21 = v19;
  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_100940EF0 != -1)
  {
    swift_once();
  }

  v22 = sub_10076D3DC();
  sub_10000A61C(v22, qword_1009A1AC8);
  v23 = sub_100770B3C();
  v24 = sub_10076C04C();
  v52 = v24;
  v53 = sub_100029E48(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v25 = sub_10000DB7C(v51);
  (*(*(v24 - 8) + 104))(v25, enum case for Feature.measurement_with_labelplaceholder(_:), v24);
  v26 = v23;
  sub_10076C90C();
  sub_10000CD74(v51);

  sub_10076996C();
  sub_10076992C();

  (*(v49 + 8))(v7, v50);
  v19 = v21;
  if (!v15)
  {
    goto LABEL_22;
  }

LABEL_14:
  v46 = v19;
  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_100940EF8 != -1)
  {
    swift_once();
  }

  v27 = sub_10076D3DC();
  sub_10000A61C(v27, qword_1009A1AE0);
  v28 = sub_100770B3C();
  v29 = sub_10076C04C();
  v52 = v29;
  v53 = sub_100029E48(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v30 = sub_10000DB7C(v51);
  (*(*(v29 - 8) + 104))(v30, enum case for Feature.measurement_with_labelplaceholder(_:), v29);
  v31 = v28;
  sub_10076C90C();
  sub_10000CD74(v51);

  sub_10076996C();
  sub_10076992C();
  if (qword_10093F478 != -1)
  {
    swift_once();
  }

  v32 = sub_10076D9AC();
  sub_10000A61C(v32, qword_100942DB0);
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1007841E0;
  *(v33 + 32) = v20;
  v34 = v20;
  v35 = sub_10076DEEC();
  sub_10076D3EC();

  (*(v49 + 8))(v7, v50);
  if (!v46)
  {
    goto LABEL_23;
  }

LABEL_19:
  if (v48)
  {

LABEL_24:

    return a1;
  }

  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_100940F20 != -1)
  {
    swift_once();
  }

  v36 = sub_10076D3DC();
  sub_10000A61C(v36, qword_1009A1B58);
  v37 = sub_100770B3C();
  v38 = sub_10076C04C();
  v52 = v38;
  v53 = sub_100029E48(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v39 = sub_10000DB7C(v51);
  (*(*(v38 - 8) + 104))(v39, enum case for Feature.measurement_with_labelplaceholder(_:), v38);
  v40 = v37;
  sub_10076C90C();
  sub_10000CD74(v51);
  sub_10076996C();
  sub_10076992C();
  if (qword_10093F480 != -1)
  {
    swift_once();
  }

  v41 = sub_10076D9AC();
  sub_10000A61C(v41, qword_100942DC8);
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1007841E0;
  *(v42 + 32) = v20;
  v43 = v20;
  v44 = sub_10076DEEC();
  sub_10076D3EC();

  (*(v49 + 8))(v7, v50);
  return a1;
}

id sub_1000292C8(void *a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for TodayCardThreeLineOverlayView();
  objc_msgSendSuper2(&v10, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_100941270 != -1)
    {
      swift_once();
    }

    v6 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
    sub_10000A61C(v6, qword_1009A24A8);
    v7 = v1;
    sub_10075FDCC();

    sub_100770E7C();
    if (qword_100941280 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v6, qword_1009A24D8);
    v8 = v7;
    sub_10075FDCC();

    sub_100770E7C();
    if (qword_10093F470 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v6, qword_10099C918);
    v9 = v8;
    sub_10075FDCC();

    return sub_100770E7C();
  }

  return result;
}

id sub_10002955C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayCardThreeLineOverlayView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100029638()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

double sub_100029690(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_clickActionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_clickActionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_clickActionHandler + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000167E0(v4, v5);
}

id sub_1000296B0()
{
  [*(v0 + OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_headingLabel) setText:0];
  [*(v0 + OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_titleLabel) setText:0];
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_descriptionLabel);

  return [v1 setText:0];
}

uint64_t sub_100029724()
{
  v1 = [v0 accessibilityElements];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1007701BC();

  return v3;
}

void sub_1000297CC()
{
  v1 = v0;
  v25 = sub_10076771C();
  v2 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  v21 = OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_headingLabel;
  if (qword_100940EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  v9 = sub_10000A61C(v8, qword_1009A1AC8);
  v10 = *(v8 - 8);
  v23 = *(v10 + 16);
  v23(v7, v9, v8);
  v22 = *(v10 + 56);
  v22(v7, 0, 1, v8);
  v11 = enum case for DirectionalTextAlignment.none(_:);
  v12 = *(v2 + 104);
  v24 = v2 + 104;
  v12(v4, enum case for DirectionalTextAlignment.none(_:), v25);
  v13 = sub_1007626BC();
  v14 = objc_allocWithZone(v13);
  *(v1 + v21) = sub_1007626AC();
  v21 = OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_titleLabel;
  if (qword_100940EF8 != -1)
  {
    swift_once();
  }

  v15 = sub_10000A61C(v8, qword_1009A1AE0);
  v23(v7, v15, v8);
  v22(v7, 0, 1, v8);
  v12(v4, v11, v25);
  v16 = objc_allocWithZone(v13);
  *(v1 + v21) = sub_1007626AC();
  v21 = OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_descriptionLabel;
  if (qword_100940F20 != -1)
  {
    swift_once();
  }

  v17 = sub_10000A61C(v8, qword_1009A1B58);
  v23(v7, v17, v8);
  v22(v7, 0, 1, v8);
  v12(v4, v11, v25);
  v18 = objc_allocWithZone(v13);
  *(v1 + v21) = sub_1007626AC();
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_isExpanded) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_sizeCategory) = 7;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_wantsCardConsistentMargins) = 1;
  v19 = (v1 + OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_clickActionHandler);
  *v19 = 0;
  v19[1] = 0;
  sub_10077156C();
  __break(1u);
}

id sub_100029C1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v6 = v4[OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_sizeCategory];
  v4[OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_sizeCategory] = a4;
  if (a4 == 7)
  {
    if (v6 == 7)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v4 setNeedsLayout];
    goto LABEL_6;
  }

  if (v6 == 7)
  {
    goto LABEL_5;
  }

  switch(a4)
  {
    case 6:
      if (v6 != 6)
      {
        goto LABEL_5;
      }

      break;
    case 5:
      if (v6 != 5)
      {
        goto LABEL_5;
      }

      break;
    case 4:
      if (v6 != 4)
      {
        goto LABEL_5;
      }

      break;
    default:
      if (v6 != a4 || (v6 - 7) >= 0xFFFFFFFD)
      {
        goto LABEL_5;
      }

      break;
  }

LABEL_6:
  v7 = *&v4[OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_headingLabel];
  sub_10076855C();
  if (v8)
  {
    v9 = sub_10076FF6C();
  }

  else
  {
    v9 = 0;
  }

  [v7 setText:v9];

  v10 = sub_10076C7AC();
  [v7 setTextColor:v10];

  v11 = *&v5[OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_titleLabel];
  sub_10076854C();
  if (v12)
  {
    v13 = sub_10076FF6C();
  }

  else
  {
    v13 = 0;
  }

  [v11 setText:v13];

  v14 = sub_10076C79C();
  [v11 setTextColor:v14];

  v15 = *&v5[OBJC_IVAR____TtC20ProductPageExtension29TodayCardThreeLineOverlayView_descriptionLabel];
  sub_10076853C();
  if (v16)
  {
    v17 = sub_10076FF6C();
  }

  else
  {
    v17 = 0;
  }

  [v15 setText:v17];

  v18 = sub_10076C7AC();
  [v15 setTextColor:v18];

  return [v5 setNeedsLayout];
}

uint64_t sub_100029E48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100029EA0@<X0>(double *a2@<X8>)
{
  v46 = a2;
  v2 = sub_10076C38C();
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v37 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10000A5D4(&qword_100942F28, &unk_10079ACB0);
  __chkstk_darwin(v43);
  v45 = &v37 - v4;
  v5 = sub_10000A5D4(&qword_1009499A0, &qword_1007848B0);
  __chkstk_darwin(v5 - 8);
  v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v37 - v8;
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  v13 = sub_10000A5D4(&unk_1009568A0, &qword_100784890);
  __chkstk_darwin(v13 - 8);
  v41 = &v37 - v14;
  v15 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v37 - v17;
  v44 = sub_10076B5BC();
  v19 = *(v44 - 8);
  __chkstk_darwin(v44);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076468C();
  swift_getKeyPath();
  v42 = v21;
  sub_10076F49C();

  v22 = *(v16 + 8);
  v22(v18, v15);
  v23 = v40;
  sub_10076463C();
  sub_10000CFBC(v23, &qword_1009499A0, &qword_1007848B0);
  sub_10002AB4C(v9, v12);
  if ((*(v16 + 48))(v12, 1, v15) == 1)
  {
    sub_10000CFBC(v12, &qword_1009499A0, &qword_1007848B0);
    v24 = 1;
    v25 = v41;
  }

  else
  {
    swift_getKeyPath();
    v25 = v41;
    sub_10076F49C();

    v22(v12, v15);
    v24 = 0;
  }

  v26 = v44;
  (*(v19 + 56))(v25, v24, 1, v44);
  v27 = v42;
  v28 = *(v43 + 48);
  v29 = v45;
  (*(v19 + 16))(v45, v42, v26);
  sub_10002ABBC(v25, v29 + v28);
  if ((*(v19 + 48))(v29 + v28, 1, v26) == 1)
  {
    if ((*(v19 + 88))(v29, v26) == enum case for Shelf.ContentType.unifiedMessage(_:))
    {
      v30 = v37;
      sub_10076460C();
      sub_10076C23C();
      v32 = v31;
      (*(v38 + 8))(v30, v39);
      v33 = v46;
      v46[3] = &type metadata for CGFloat;
      v33[4] = &protocol witness table for CGFloat;
      *v33 = v32 * 0.5;
      sub_10000CFBC(v25, &unk_1009568A0, &qword_100784890);
      return (*(v19 + 8))(v27, v26);
    }

    else
    {
      v35 = v46;
      v46[3] = &type metadata for Double;
      v35[4] = &protocol witness table for Double;
      *v35 = 0;
      sub_10000CFBC(v25, &unk_1009568A0, &qword_100784890);
      v36 = *(v19 + 8);
      v36(v27, v26);
      return (v36)(v29, v26);
    }
  }

  else
  {
    sub_100642BFC(v46);
    sub_10000CFBC(v25, &unk_1009568A0, &qword_100784890);
    (*(v19 + 8))(v27, v26);
    return sub_10000CFBC(v29, &qword_100942F28, &unk_10079ACB0);
  }
}

uint64_t sub_10002A4B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10076B5BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - v10;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v9 + 8))(v11, v8);
  v12 = (*(v5 + 88))(v7, v4);
  if (v12 == enum case for Shelf.ContentType.mediumAdLockupWithScreenshotsBackground(_:) || v12 == enum case for Shelf.ContentType.condensedAdLockupWithIconBackground(_:))
  {
    if (qword_1009411F0 != -1)
    {
      swift_once();
    }

    v14 = sub_10076D9AC();
    v15 = v14;
    v16 = qword_1009A2350;
    goto LABEL_13;
  }

  if (v12 == enum case for Shelf.ContentType.action(_:))
  {
    if (qword_100941218 != -1)
    {
      swift_once();
    }

    v14 = sub_10076D9AC();
    v15 = v14;
    v16 = qword_1009A23C8;
LABEL_13:
    v17 = sub_10000A61C(v14, v16);
    a2[3] = v15;
    a2[4] = &protocol witness table for StaticDimension;
    v18 = sub_10000DB7C(a2);
    return (*(*(v15 - 8) + 16))(v18, v17, v15);
  }

  sub_100642F38(a1, a2);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10002A794@<X0>(void *a1@<X8>)
{
  v2 = sub_10000A5D4(&unk_100952090, &unk_100784CD0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3 - 8];
  v5 = sub_10076182C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15[-v11 - 8];
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v10 + 8))(v12, v9);
  if (!*(v14 + 16))
  {

    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    goto LABEL_8;
  }

  sub_10000A570(v14 + 32, v15);

  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10000A5D4(&qword_100942F18, &unk_100788330);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    goto LABEL_8;
  }

  if (!*(&v17 + 1))
  {
LABEL_8:
    result = sub_10000CFBC(&v16, &qword_100942F20, &qword_100784D10);
    goto LABEL_9;
  }

  sub_100012498(&v16, v19);
  sub_10000CF78(v19, v19[3]);
  sub_1007670CC();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000CFBC(v4, &unk_100952090, &unk_100784CD0);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    if (sub_10076181C())
    {
      a1[3] = &type metadata for CGFloat;
      a1[4] = &protocol witness table for CGFloat;
      *a1 = 0x4020000000000000;
      (*(v6 + 8))(v8, v5);
      return sub_10000CD74(v19);
    }

    (*(v6 + 8))(v8, v5);
  }

  result = sub_10000CD74(v19);
LABEL_9:
  a1[3] = &type metadata for Double;
  a1[4] = &protocol witness table for Double;
  *a1 = 0;
  return result;
}

uint64_t sub_10002AB4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_1009499A0, &qword_1007848B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002ABBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_1009568A0, &qword_100784890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

CGFloat sub_10002AC2C()
{
  CGAffineTransformMakeScale(&v2, 1.0, -1.0);
  *&v1.a = *&v2.m11;
  *&v1.c = *&v2.m13;
  *&v1.tx = *&v2.m21;
  CATransform3DMakeAffineTransform(&v2, &v1);
  *byte_10099C930 = v2;
  return v2.m21;
}

uint64_t type metadata accessor for RevealingImageMirrorView(uint64_t a1)
{
  result = qword_100942F58;
  if (!qword_100942F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002AD58()
{
  v0 = sub_10000A5D4(&qword_100943040, &qword_100784E48);
  sub_10000DB18(v0, qword_100942F68);
  sub_10000A61C(v0, qword_100942F68);
  sub_10000A5D4(&qword_100943058, &unk_100784E50);
  return sub_10076F54C();
}

uint64_t sub_10002ADE4()
{
  v0 = sub_10000A5D4(&qword_100943038, &qword_100784E40);
  sub_10000DB18(v0, qword_100942F80);
  sub_10000A61C(v0, qword_100942F80);
  return sub_10076F54C();
}

uint64_t sub_10002AE5C()
{
  v0 = sub_10000A5D4(&unk_100955860, &qword_100788520);
  sub_10000DB18(v0, qword_100942F98);
  sub_10000A61C(v0, qword_100942F98);
  return sub_10076F54C();
}

uint64_t sub_10002AEDC()
{
  v0 = sub_10000A5D4(&unk_100955860, &qword_100788520);
  sub_10000DB18(v0, qword_100942FB0);
  sub_10000A61C(v0, qword_100942FB0);
  return sub_10076F54C();
}

uint64_t sub_10002AF54()
{
  v0 = sub_10000A5D4(&unk_100955860, &qword_100788520);
  sub_10000DB18(v0, qword_100942FC8);
  sub_10000A61C(v0, qword_100942FC8);
  return sub_10076F54C();
}

uint64_t sub_10002AFCC()
{
  v0 = sub_10000A5D4(&qword_100943038, &qword_100784E40);
  sub_10000DB18(v0, qword_100942FE0);
  sub_10000A61C(v0, qword_100942FE0);
  return sub_10076F54C();
}

uint64_t sub_10002B044()
{
  v0 = sub_10000A5D4(&qword_100943038, &qword_100784E40);
  sub_10000DB18(v0, qword_100942FF8);
  sub_10000A61C(v0, qword_100942FF8);
  return sub_10076F54C();
}

uint64_t sub_10002B0BC()
{
  ObjectType = swift_getObjectType();
  v0 = sub_10000A5D4(&unk_100955860, &qword_100788520);
  v128 = *(v0 - 8);
  __chkstk_darwin(v0);
  v122 = v117 - v1;
  v131 = sub_10075DDBC();
  v2 = *(v131 - 8);
  __chkstk_darwin(v131);
  v4 = v117 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&qword_100943038, &qword_100784E40);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v117 - v7;
  sub_10076F73C();
  sub_10076F72C();
  if (qword_10093F490 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v9 = sub_10000A5D4(&qword_100943040, &qword_100784E48);
    sub_10000A61C(v9, qword_100942F68);
    v10 = sub_10076F3FC();
    v12 = v11;

    v13 = swift_getObjectType();
    if (qword_10093F4C0 != -1)
    {
      swift_once();
    }

    v123 = v0;
    v126 = v4;
    v132 = v2;
    v14 = sub_10000A61C(v5, qword_100942FF8);
    v15 = *(v6 + 16);
    v125 = v5;
    v15(v8, v14, v5);
    v136 = xmmword_100784DA0;
    v124 = v13;
    sub_10076F42C();
    *&v136 = sub_10075DE5C();

    sub_10002CADC(&v136);
    v117[5] = v14;
    v5 = 0xED00006449656C61;

    v16 = sub_10016DAC4(v136);

    *&v136 = &off_1008824D8;
    sub_1000F93E8(v16);
    v6 = v136;
    v2 = *(v136 + 16);
    v8 = v131;
    if (!v2)
    {
      break;
    }

    v134 = _swiftEmptyArrayStorage;
    sub_1007714EC();
    v4 = 0;
    while (v4 < *(v6 + 16))
    {
      v136 = *(v6 + 16 * v4 + 32);

      v0 = 0xED00006449656C61;
      v8 = v10;
      sub_10002C3D8(&v136, v10, v12, ObjectType, v139);

      ++v4;
      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
      if (v2 == v4)
      {

        v17 = v134;
        v8 = v131;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  v17 = _swiftEmptyArrayStorage;
LABEL_10:
  v127 = v12;
  v121 = sub_10000A5D4(&unk_100942870, &qword_100784460);
  v129 = swift_allocObject();
  *(v129 + 16) = xmmword_100784DB0;
  v18 = swift_allocObject();
  *(v18 + 16) = v10;
  *(v18 + 24) = v12;
  strcpy((v18 + 32), "unsetLocaleId");
  *(v18 + 46) = -4864;
  *(v18 + 48) = ObjectType;
  v117[4] = type metadata accessor for MenuDebugSetting();
  v19 = swift_allocObject();
  v19[7] = 0xD000000000000011;
  v19[8] = 0x80000001007CDF60;
  v19[9] = v17;
  v19[10] = sub_10002CB88;
  v19[11] = v18;
  swift_unknownObjectRetain();

  v20 = v126;
  sub_10075DDAC();
  v21 = sub_10075DD8C();
  v23 = v22;
  v24 = *(v132 + 1);
  v132 += 8;
  v130 = v24;
  v24(v20, v8);
  *&v136 = v21;
  *(&v136 + 1) = v23;
  sub_10077140C();
  if (qword_10093F498 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v125, qword_100942F80);
  sub_10076F41C();
  v26 = *(&v136 + 1);
  v25 = v136;
  if (!*(&v136 + 1))
  {
    v25 = 0x636F4C7465736E75;
    v26 = 0xED00006449656C61;
  }

  v134 = v25;
  v135 = v26;
  v27 = sub_10077140C();
  __chkstk_darwin(v27);
  v117[-2] = &v136;

  sub_10061C2F8(sub_10002CB98, &v117[-4], v17);
  v117[3] = 0;

  sub_10002CBB4(&v136);
  *(v129 + 32) = v19;
  if (qword_10093F4A0 != -1)
  {
    swift_once();
  }

  v28 = v123;
  v29 = sub_10000A61C(v123, qword_100942F98);
  v30 = v128;
  v31 = v128 + 16;
  v32 = *(v128 + 16);
  v33 = v122;
  v32(v122, v29, v28);
  v34 = type metadata accessor for BoolPreferencesDebugSetting(0);
  v35 = swift_allocObject();
  strcpy((v35 + 56), "Screamer Mode");
  *(v35 + 70) = -4864;
  *(v35 + 72) = 0xD000000000000025;
  *(v35 + 80) = 0x80000001007CDF80;
  *(v35 + 88) = 0;
  v120 = v31;
  v119 = v32;
  v32((v35 + OBJC_IVAR____TtC20ProductPageExtension27BoolPreferencesDebugSetting_key), v33, v28);
  v36 = (v35 + OBJC_IVAR____TtC20ProductPageExtension27BoolPreferencesDebugSetting_preferences);
  v37 = v127;
  *v36 = v10;
  v36[1] = v37;
  swift_unknownObjectRetain();
  v38 = v126;
  sub_10075DDAC();
  v39 = sub_10075DD8C();
  v41 = v40;
  v130(v38, v131);
  *&v136 = v39;
  *(&v136 + 1) = v41;
  v42 = v28;
  sub_10077140C();
  v43 = *(v30 + 8);
  v128 = v30 + 8;
  v118 = v43;
  v43(v33, v28);
  *(v129 + 40) = v35;
  if (qword_10093F4A8 != -1)
  {
    swift_once();
  }

  v44 = sub_10000A61C(v28, qword_100942FB0);
  v45 = v119;
  v119(v33, v44, v28);
  v46 = swift_allocObject();
  v117[1] = v34;
  v47 = v33;
  v48 = v46;
  *(v46 + 56) = 0xD000000000000011;
  *(v46 + 64) = 0x80000001007CDFB0;
  *(v46 + 72) = 0xD00000000000002CLL;
  *(v46 + 80) = 0x80000001007CDFD0;
  *(v46 + 88) = 1;
  v45(v46 + OBJC_IVAR____TtC20ProductPageExtension27BoolPreferencesDebugSetting_key, v47, v28);
  v49 = (v48 + OBJC_IVAR____TtC20ProductPageExtension27BoolPreferencesDebugSetting_preferences);
  v50 = v127;
  *v49 = v10;
  v49[1] = v50;
  swift_unknownObjectRetain();
  sub_10075DDAC();
  v51 = sub_10075DD8C();
  v53 = v52;
  v54 = v131;
  v55 = v47;
  v56 = v130;
  v130(v38, v131);
  *&v136 = v51;
  *(&v136 + 1) = v53;
  sub_10077140C();
  v118(v55, v42);
  v57 = v129;
  *(v129 + 48) = v48;
  v117[2] = type metadata accessor for InfoDebugSetting();
  v58 = swift_allocObject();
  v58[7] = 0xD000000000000013;
  v58[8] = 0x80000001007CE000;
  v58[9] = 0xD00000000000001CLL;
  v58[10] = 0x80000001007CE020;
  sub_10075DDAC();
  v59 = sub_10075DD8C();
  v61 = v60;
  v56(v38, v54);
  *&v136 = v59;
  *(&v136 + 1) = v61;
  sub_10077140C();
  *(v57 + 56) = v58;
  if (qword_10093F4B0 != -1)
  {
    swift_once();
  }

  v62 = v123;
  v63 = sub_10000A61C(v123, qword_100942FC8);
  v64 = v122;
  v65 = v119;
  v119(v122, v63, v62);
  v66 = swift_allocObject();
  *(v66 + 56) = 0xD000000000000012;
  *(v66 + 64) = 0x80000001007CE040;
  *(v66 + 72) = 0xD000000000000030;
  *(v66 + 80) = 0x80000001007CE060;
  *(v66 + 88) = 0;
  v65(v66 + OBJC_IVAR____TtC20ProductPageExtension27BoolPreferencesDebugSetting_key, v64, v62);
  v67 = (v66 + OBJC_IVAR____TtC20ProductPageExtension27BoolPreferencesDebugSetting_preferences);
  v68 = v127;
  *v67 = v10;
  v67[1] = v68;
  swift_unknownObjectRetain();
  v69 = v126;
  sub_10075DDAC();
  v70 = sub_10075DD8C();
  v72 = v71;
  v130(v69, v131);
  *&v136 = v70;
  *(&v136 + 1) = v72;
  sub_10077140C();
  v118(v64, v62);
  *(v129 + 64) = v66;
  v128 = 0x80000001007CE0A0;
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_100784DC0;
  v134 = 1701736302;
  v135 = 0xE400000000000000;
  sub_10077140C();
  v74 = swift_allocObject();
  v74[2] = v10;
  v74[3] = v68;
  v75 = ObjectType;
  v74[4] = ObjectType;
  type metadata accessor for MenuItemDebugSetting();
  v76 = swift_allocObject();
  *(v76 + 72) = 0;
  *(v76 + 56) = 1701736270;
  *(v76 + 64) = 0xE400000000000000;
  *(v76 + 80) = sub_10002CC1C;
  *(v76 + 88) = v74;
  v77 = v137;
  *(v76 + 16) = v136;
  *(v76 + 32) = v77;
  *(v76 + 48) = v138;
  *(v73 + 32) = v76;
  v134 = 0x646E616D65446E6FLL;
  v135 = 0xE800000000000000;
  swift_unknownObjectRetain();
  sub_10077140C();
  v78 = swift_allocObject();
  v78[2] = v10;
  v78[3] = v68;
  v78[4] = v75;
  v79 = swift_allocObject();
  *(v79 + 72) = 0;
  *(v79 + 56) = 0x6E616D6544206E4FLL;
  *(v79 + 64) = 0xE900000000000064;
  *(v79 + 80) = sub_10002CC44;
  *(v79 + 88) = v78;
  v80 = v137;
  *(v79 + 16) = v136;
  *(v79 + 32) = v80;
  *(v79 + 48) = v138;
  *(v73 + 40) = v79;
  v134 = 0x74726174536E6FLL;
  v135 = 0xE700000000000000;
  swift_unknownObjectRetain();
  sub_10077140C();
  v81 = swift_allocObject();
  v81[2] = v10;
  v81[3] = v68;
  v81[4] = v75;
  v82 = swift_allocObject();
  *(v82 + 72) = 0;
  *(v82 + 56) = 0x7472617453206E4FLL;
  *(v82 + 64) = 0xE800000000000000;
  *(v82 + 80) = sub_10002CCA4;
  *(v82 + 88) = v81;
  v83 = v137;
  *(v82 + 16) = v136;
  *(v82 + 32) = v83;
  *(v82 + 48) = v138;
  *(v73 + 48) = v82;
  v84 = swift_allocObject();
  v84[2] = v10;
  v84[3] = v68;
  v84[4] = v75;
  v85 = swift_allocObject();
  v86 = v128;
  v85[7] = 0xD00000000000001ALL;
  v85[8] = v86;
  ObjectType = v73;
  v85[9] = v73;
  v85[10] = sub_10002CCCC;
  v85[11] = v84;
  swift_unknownObjectRetain_n();

  sub_10075DDAC();
  v87 = sub_10075DD8C();
  v89 = v88;
  v130(v69, v131);
  *&v136 = v87;
  *(&v136 + 1) = v89;
  sub_10077140C();
  if (qword_10093F4B8 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v125, qword_100942FE0);
  sub_10076F41C();
  v91 = *(&v136 + 1);
  v90 = v136;
  if (!*(&v136 + 1))
  {
    v90 = 0x74726174536E6FLL;
    v91 = 0xE700000000000000;
  }

  v134 = v90;
  v135 = v91;
  v92 = sub_10077140C();
  __chkstk_darwin(v92);
  v117[-2] = &v136;
  v93 = ObjectType;

  sub_10061C2F8(sub_10002D89C, &v117[-4], v93);

  sub_10002CBB4(&v136);
  v94 = v129;
  *(v129 + 72) = v85;
  sub_10076F41C();
  v95 = v136;
  v96 = swift_allocObject();
  *(v96 + 56) = 0xD000000000000016;
  *(v96 + 64) = 0x80000001007CE0C0;
  *(v96 + 72) = v95;

  sub_10075DDAC();
  v97 = sub_10075DD8C();
  v99 = v98;
  v100 = v131;
  v101 = v130;
  v130(v69, v131);
  v134 = v97;
  v135 = v99;
  sub_10077140C();

  v94[10] = v96;
  type metadata accessor for ActionDebugSetting();
  v102 = swift_allocObject();
  strcpy((v102 + 56), "Apply Settings");
  *(v102 + 71) = -18;
  *(v102 + 72) = 0u;
  *(v102 + 88) = 0u;
  *(v102 + 104) = sub_10002CA54;
  *(v102 + 112) = 0;
  sub_10075DDAC();
  v103 = sub_10075DD8C();
  v105 = v104;
  v101(v69, v100);
  *&v136 = v103;
  *(&v136 + 1) = v105;
  sub_10077140C();
  v94[11] = v102;
  v106 = swift_allocObject();
  strcpy((v106 + 56), "Reset Settings");
  *(v106 + 71) = -18;
  *(v106 + 72) = 0u;
  *(v106 + 88) = 0u;
  *(v106 + 104) = sub_10002D6A4;
  *(v106 + 112) = 0;
  sub_10075DDAC();
  v107 = sub_10075DD8C();
  v109 = v108;
  v101(v69, v100);
  *&v136 = v107;
  *(&v136 + 1) = v109;
  sub_10077140C();
  v94[12] = v106;
  v110 = v94;
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_1007841E0;
  type metadata accessor for DebugSection();
  v112 = swift_allocObject();
  sub_10075DDAC();
  v113 = sub_10075DD8C();
  v115 = v114;
  v101(v69, v100);
  v112[2] = v113;
  v112[3] = v115;
  v112[4] = 0;
  v112[5] = 0xE000000000000000;
  v112[6] = v110;
  *(v111 + 32) = v112;
  swift_unknownObjectRelease();
  return v111;
}

uint64_t sub_10002C3D8@<X0>(uint64_t *a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v10 = *a1;
  v11 = a1[1];
  if (v11)
  {
    v12 = a1[1];
    v13 = *a1;
  }

  else
  {

    v13 = 0x74655320746F4ELL;
    v12 = 0xE700000000000000;
  }

  sub_10077140C();
  v14 = swift_allocObject();
  v14[2] = v10;
  v14[3] = v11;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a6;
  type metadata accessor for MenuItemDebugSetting();
  v15 = swift_allocObject();
  *(v15 + 72) = 0;
  *(v15 + 56) = v13;
  *(v15 + 64) = v12;
  *(v15 + 80) = sub_10002D82C;
  *(v15 + 88) = v14;
  *(v15 + 16) = v18;
  *(v15 + 32) = v19;
  *(v15 + 48) = v20;
  *a7 = v15;
  swift_bridgeObjectRetain_n();
  return swift_unknownObjectRetain();
}

uint64_t sub_10002C520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10000A5D4(&qword_100943038, &qword_100784E40);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-1] - v8;
  swift_getObjectType();
  if (a2)
  {
    if (qword_10093F498 != -1)
    {
      swift_once();
    }

    v10 = sub_10000A61C(v6, qword_100942F80);
    (*(v7 + 16))(v9, v10, v6);
    v15[0] = a1;
    v15[1] = a2;

    return sub_10076F42C();
  }

  else
  {
    if (qword_10093F498 != -1)
    {
      swift_once();
    }

    v12 = sub_10000A61C(v6, qword_100942F80);
    v15[3] = v6;
    v15[4] = sub_10002D83C(&qword_100943050, &qword_100943038, &qword_100784E40);
    v13 = sub_10000DB7C(v15);
    (*(v7 + 16))(v13, v12, v6);
    sub_10076F3EC();
    return sub_10000CD74(v15);
  }
}

void *sub_10002C720()
{
  swift_getObjectType();
  if (qword_10093F498 != -1)
  {
    swift_once();
  }

  v4 = sub_10000A5D4(&qword_100943038, &qword_100784E40);
  sub_10000A61C(v4, qword_100942F80);
  sub_10076F41C();
  if (!v6)
  {
  }

  return sub_10077140C();
}

uint64_t sub_10002C814(__n128 a1, uint64_t a2, uint64_t a3)
{
  v9[0] = a1;
  v3 = sub_10000A5D4(&qword_100943038, &qword_100784E40);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  swift_getObjectType();
  if (qword_10093F4B8 != -1)
  {
    swift_once();
  }

  v7 = sub_10000A61C(v3, qword_100942FE0);
  (*(v4 + 16))(v6, v7, v3);
  v9[1] = v9[0];
  return sub_10076F42C();
}

void *sub_10002C960()
{
  swift_getObjectType();
  if (qword_10093F4B8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A5D4(&qword_100943038, &qword_100784E40);
  sub_10000A61C(v2, qword_100942FE0);
  sub_10076F41C();
  return sub_10077140C();
}

void sub_10002CA54()
{
  v0 = [objc_opt_self() sharedCoordinator];
  [v0 notify];
}

void sub_10002CADC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10043FD10(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_10002CCD8(v4);
  *a1 = v2;
}

uint64_t sub_10002CB48()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10002CBB4(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100943310, &unk_100784150);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002CC6C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10002CCD8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_10077162C(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_10077023C();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_10002CEA0(v7, v8, a1, v4);
      v6[2] = 0;

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
    sub_10002CDD0(0, v2, 1, a1);
  }
}

uint64_t sub_10002CDD0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_10077167C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_10002CEA0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_138:
      v8 = sub_10043FB64(v8);
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
        sub_10002D47C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
  v8 = _swiftEmptyArrayStorage;
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
        v13 = sub_10077167C();
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

          else if ((v13 ^ sub_10077167C()))
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
      v8 = sub_10049D820(0, *(v8 + 2) + 1, 1, v8);
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      v8 = sub_10049D820((v39 > 1), v40 + 1, 1, v8);
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
        sub_10002D47C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
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
          v8 = sub_10043FB64(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        sub_10043FAD8(v44);
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
    if (v37 || (sub_10077167C() & 1) == 0)
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

uint64_t sub_10002D47C(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_10077167C() & 1) != 0)
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
      if (!v21 && (sub_10077167C() & 1) != 0)
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

void sub_10002D6A4()
{
  sub_10076F73C();
  sub_10076F72C();
  if (qword_10093F490 != -1)
  {
    swift_once();
  }

  v0 = sub_10000A5D4(&qword_100943040, &qword_100784E48);
  v1 = sub_10000A61C(v0, qword_100942F68);
  v4[3] = v0;
  v4[4] = sub_10002D83C(&qword_100943048, &qword_100943040, &qword_100784E48);
  v2 = sub_10000DB7C(v4);
  (*(*(v0 - 8) + 16))(v2, v1, v0);
  sub_10076F71C();

  sub_10000CD74(v4);
  v3 = [objc_opt_self() sharedCoordinator];
  [v3 notify];
}

uint64_t sub_10002D7EC()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10002D83C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000CE78(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10002D8C8()
{
  result = qword_100943060;
  if (!qword_100943060)
  {
    sub_1007631EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100943060);
  }

  return result;
}

uint64_t sub_10002D920(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v42 = a2;
  v5 = sub_10076F50C();
  v41 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100766EDC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&qword_100942C70, &unk_100783EF0);
  v12 = sub_10076FCEC();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v14 = [Strong presentedViewController];

  if (v14)
  {

    v15 = swift_unknownObjectUnownedLoadStrong();
    sub_10002E318(v3, v44);
    v16 = swift_allocObject();
    sub_10002E3A0(v44, (v16 + 2));
    v17 = v42;
    v16[3] = a1;
    v16[4] = v17;
    v16[5] = v12;
    aBlock[4] = sub_10002E3D8;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009AEDC;
    aBlock[3] = &unk_100884A40;
    v18 = _Block_copy(aBlock);

    [v15 dismissViewControllerAnimated:1 completion:v18];
    _Block_release(v18);
  }

  else
  {
    v19 = v42;
    v38 = v3;
    v39 = v9;
    v40 = v7;
    v37 = v12;
    v20 = sub_1007631CC();
    sub_1007631BC();
    if (sub_1007631DC())
    {
      type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
      v21 = type metadata accessor for StoreNavigationController();
      v22 = objc_allocWithZone(v21);
      *&v22[OBJC_IVAR____TtC20ProductPageExtension25StoreNavigationController_objectGraph] = v19;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v45.receiver = v22;
      v45.super_class = v21;

      v24 = v11;
      v25 = objc_msgSendSuper2(&v45, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
      [v25 setDelegate:v25];
      sub_100016F40(0, &qword_1009641D0, UIAction_ptr);
      swift_allocObject();
      v26 = swift_unknownObjectUnownedLoadStrong();
      swift_unknownObjectWeakInit();

      v27 = sub_100770F1C();
      sub_1003BEB84(v20, v27);

      sub_10000A5D4(&unk_100942870, &qword_100784460);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1007841E0;
      *(v28 + 32) = v20;
      sub_100016F40(0, &qword_1009453B0, UIViewController_ptr);
      v29 = v20;
      isa = sub_1007701AC().super.isa;

      [v25 setViewControllers:isa];

      v31 = swift_unknownObjectUnownedLoadStrong();
      [v31 presentViewController:v25 animated:0 completion:0];

      v20 = v25;
      v11 = v24;
    }

    else
    {
      v31 = swift_unknownObjectUnownedLoadStrong();
      [v31 presentViewController:v20 animated:0 completion:0];
    }

    v32 = v39;
    v33 = v40;

    (*(v32 + 8))(v11, v8);
    v34 = v41;
    (*(v41 + 104))(v33, enum case for ActionOutcome.performed(_:), v5);
    v12 = v37;
    sub_10076FCBC();
    (*(v34 + 8))(v33, v5);
  }

  return v12;
}

uint64_t sub_10002DE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a1;
  v6 = sub_10076F50C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100766EDC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1007631CC();
  sub_1007631BC();
  if (sub_1007631DC())
  {
    type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
    v15 = type metadata accessor for StoreNavigationController();
    v29 = v10;
    v16 = v15;
    v17 = objc_allocWithZone(v15);
    v30 = a4;
    v18 = v17;
    *&v17[OBJC_IVAR____TtC20ProductPageExtension25StoreNavigationController_objectGraph] = a3;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v32.receiver = v18;
    v32.super_class = v16;

    v20 = objc_msgSendSuper2(&v32, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
    [v20 setDelegate:v20];
    sub_100016F40(0, &qword_1009641D0, UIAction_ptr);
    swift_allocObject();
    v28 = v6;
    Strong = swift_unknownObjectUnownedLoadStrong();
    swift_unknownObjectWeakInit();

    v10 = v29;
    v22 = sub_100770F1C();
    sub_1003BEB84(v14, v22);

    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1007841E0;
    *(v23 + 32) = v14;
    sub_100016F40(0, &qword_1009453B0, UIViewController_ptr);
    v24 = v14;
    isa = sub_1007701AC().super.isa;

    [v20 setViewControllers:isa];

    v6 = v28;
    v26 = swift_unknownObjectUnownedLoadStrong();
    [v26 presentViewController:v20 animated:0 completion:0];

    v14 = v20;
  }

  else
  {
    v26 = swift_unknownObjectUnownedLoadStrong();
    [v26 presentViewController:v14 animated:0 completion:0];
  }

  (*(v11 + 8))(v13, v10);
  (*(v7 + 104))(v9, enum case for ActionOutcome.performed(_:), v6);
  sub_10076FCBC();
  return (*(v7 + 8))(v9, v6);
}

void sub_10002E248(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong presentedViewController];

    if (v4)
    {
      [v4 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t sub_10002E2D8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002E350()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002E3E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_10002E404(uint64_t a1, double a2, double a3)
{
  sub_10000CF78(v3, v3[3]);
  sub_10076E0FC();
  return ceil(v4);
}

__n128 sub_10002E470(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10002E484(uint64_t a1, int a2)
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

uint64_t sub_10002E4CC(uint64_t result, int a2, int a3)
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

uint64_t sub_10002E5A0()
{
  v0 = sub_10076D39C();
  sub_10000DB18(v0, qword_100943070);
  sub_10000A61C(v0, qword_100943070);
  return sub_10076D3AC();
}

uint64_t sub_10002E5F4()
{
  v0 = sub_10000A5D4(&qword_100943118, &qword_100785018);
  sub_10000DB18(v0, qword_100943088);
  sub_10000A61C(v0, qword_100943088);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  type metadata accessor for UIRectEdge(0);
  return sub_10075FDDC();
}

void sub_10002E698(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_dismissTapGestureRecognizer] = 0;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_dismissScreenEdgePanGestureRecognizer] = 0;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_blurOverlayView] = 0;
  v6 = &v2[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_interactiveDismissal];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_dismissCompleted] = 0;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_scrollDismissInitialTranslationY] = 0;
  v2[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_isScrollDismissActive] = 0;
  v7 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v2[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_overlayView] = v7;
  type metadata accessor for TransitioningPresentedContainerView();
  *&v2[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_presentedContainerView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v29.receiver = v2;
  v29.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v29, "initWithPresentedViewController:presentingViewController:", a1, a2);
  v9 = objc_allocWithZone(UITapGestureRecognizer);
  v10 = v8;
  v11 = [v9 initWithTarget:v10 action:"didTapOverlayView:"];
  v12 = *&v10[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_dismissTapGestureRecognizer];
  *&v10[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_dismissTapGestureRecognizer] = v11;
  v13 = v11;

  if (!v13)
  {
    __break(1u);
    goto LABEL_9;
  }

  v14 = OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_overlayView;
  v15 = *&v10[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_overlayView];
  [v15 addGestureRecognizer:v13];

  v16 = [objc_allocWithZone(UIScreenEdgePanGestureRecognizer) initWithTarget:v10 action:"edgePanDidChange:"];
  v17 = OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_dismissScreenEdgePanGestureRecognizer;
  v18 = *&v10[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_dismissScreenEdgePanGestureRecognizer];
  *&v10[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_dismissScreenEdgePanGestureRecognizer] = v16;
  v19 = v16;

  if (!v19)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (qword_10093F4D0 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A5D4(&qword_100943118, &qword_100785018);
  sub_10000A61C(v20, qword_100943088);
  v21 = v10;
  sub_10075FDCC();

  [v19 setEdges:{v28, v10}];
  v22 = *&v10[v17];
  if (!v22)
  {
    goto LABEL_10;
  }

  v23 = v21;
  v24 = v22;
  v25 = [v23 traitCollection];
  v26 = [v25 horizontalSizeClass];

  [v24 setEnabled:v26 != 2];
  if (*&v10[v17])
  {
    [*&v10[v14] addGestureRecognizer:?];
    v27 = [v23 traitCollection];

    sub_10002EA10();
    [*&v23[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_presentedContainerView] setClipsToBounds:0];

    return;
  }

LABEL_11:
  __break(1u);
}

void sub_10002EA10()
{
  v1 = v0;
  if (sub_1007706FC())
  {
    v2 = OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_blurOverlayView;
    v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_blurOverlayView);
    if (v3 || (v4 = [objc_opt_self() effectWithStyle:4], v5 = objc_msgSend(objc_allocWithZone(UIVisualEffectView), "initWithEffect:", v4), v4, sub_10002EC70(v5), (v3 = *(v1 + v2)) != 0))
    {
      v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_overlayView);
      v7 = v3;
      [v6 bounds];
      [v7 setFrame:{0.0, 0.0}];

      v8 = *(v1 + v2);
      if (v8)
      {
        [v8 setHidden:0];
      }
    }

    v9 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_overlayView);
    v14 = [objc_opt_self() clearColor];
    [v9 setBackgroundColor:v14];
  }

  else
  {
    v10 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_overlayView);
    v11 = [objc_opt_self() blackColor];
    v12 = [v11 colorWithAlphaComponent:0.4];

    [v10 setBackgroundColor:v12];
    v13 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_blurOverlayView);
    if (v13)
    {

      [v13 setHidden:1];
    }
  }
}

void sub_10002EC70(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_blurOverlayView;
  v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_blurOverlayView);
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *(v1 + v3);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v3) = a1;
  v6 = a1;

  if (a1)
  {
    [*(v1 + OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_overlayView) addSubview:v6];
  }
}

void sub_10002EDAC()
{
  v1 = v0;
  v2 = [v0 containerView];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = [v0 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == 2)
  {
    v6 = [v1 traitCollection];
    sub_10077071C();

    [v3 bounds];
    CGRectGetWidth(v19);
    if (qword_10093F4C8 != -1)
    {
      swift_once();
    }

    v7 = sub_10076D39C();
    sub_10000A61C(v7, qword_100943070);
    sub_10076D36C();
    [v3 bounds];
    x = v20.origin.x;
    y = v20.origin.y;
    width = v20.size.width;
    height = v20.size.height;
    CGRectGetMidX(v20);
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    CGRectGetMidY(v21);

    return;
  }

  v12 = [v1 presentingViewController];
  sub_1005A5D54();

  v13 = [v1 presentingViewController];
  v14 = [v13 view];

  if (!v14)
  {
    __break(1u);
    goto LABEL_15;
  }

  [v14 safeAreaInsets];

  v15 = [v1 presentingViewController];
  v16 = [v15 view];

  if (!v16)
  {
LABEL_15:
    __break(1u);
    return;
  }

  [v16 safeAreaInsets];

  [v3 bounds];
  if (qword_10093FEA0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  sub_10000A61C(v17, qword_10099E700);
  sub_10076D36C();
  v18 = [v1 traitCollection];
  if (sub_10077071C())
  {
    sub_1007706EC();
  }

  [v3 bounds];
  CGRectGetMinY(v22);
  [v3 bounds];
  CGRectGetMinX(v23);
}

void sub_10002F164()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "containerViewWillLayoutSubviews");
  v1 = [v0 containerView];
  if (v1)
  {
    v2 = v1;
    v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_overlayView];
    [v1 bounds];
    [v3 setFrame:?];
    v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_blurOverlayView];
    if (v4)
    {
      v5 = v4;
      [v2 bounds];
      [v5 setFrame:{0.0, 0.0}];
    }

    v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_presentedContainerView];
    sub_10002EDAC();
    [v6 setFrame:?];
  }
}

void sub_10002F2A0(uint64_t a1, void *a2)
{
  v12.receiver = v2;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
  v5 = [v2 containerView];
  if (v5)
  {
    v6 = v5;
    sub_10002EA10();
    v7 = swift_allocObject();
    *(v7 + 16) = v2;
    *(v7 + 24) = v6;
    v11[4] = sub_1000310CC;
    v11[5] = v7;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1006F5994;
    v11[3] = &unk_100884C28;
    v8 = _Block_copy(v11);
    v9 = v2;
    v10 = v6;

    [a2 animateAlongsideTransition:v8 completion:0];
    _Block_release(v8);
  }
}

void sub_10002F460(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  *(*&v3[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_presentedContainerView] + OBJC_IVAR____TtC20ProductPageExtension35TransitioningPresentedContainerView_hidesInsertedSubviews) = 1;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v10[4] = sub_100031068;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1006F5994;
  v10[3] = &unk_100884BD8;
  v8 = _Block_copy(v10);
  v9 = v3;

  [a1 animateAlongsideTransition:0 completion:v8];
  _Block_release(v8);
}

void sub_10002F614()
{
  v1 = [v0 containerView];
  if (v1)
  {
    v18 = v1;
    [v1 bounds];
    v3 = v2;
    v5 = v4;
    v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_overlayView];
    [v6 setFrame:?];
    v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_blurOverlayView];
    if (v7)
    {
      [v7 setFrame:{0.0, 0.0, v3, v5}];
    }

    [v18 addSubview:v6];
    v8 = [v0 presentedViewController];
    v9 = [v8 view];

    if (v9)
    {
      [v9 setAutoresizingMask:18];
      v10 = *&v0[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_presentedContainerView];
      [v10 bounds];
      [v9 setFrame:?];
      [v10 addSubview:v9];
      v11 = [v0 presentedViewController];
      v12 = [v11 contentScrollView];

      sub_100030F5C(&selRef_removeTarget_action_, &selRef__removeScrollViewScrollObserver_);
      swift_unknownObjectWeakAssign();
      sub_100030F5C(&selRef_addTarget_action_, &selRef__addScrollViewScrollObserver_);
    }

    v13 = [v0 presentedViewController];
    v14 = [v13 transitionCoordinator];

    [v6 setAlpha:0.0];
    if (v14)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = v0;
      aBlock[4] = sub_100030F54;
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1006F5994;
      aBlock[3] = &unk_100884B88;
      v16 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      v17 = v0;

      [v14 animateAlongsideTransition:v16 completion:0];

      swift_unknownObjectRelease();
      _Block_release(v16);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_10002F92C(uint64_t a1, char *a2)
{
  [*&a2[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_overlayView] setAlpha:1.0];
  v3 = [a2 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 == 1)
  {
    v5 = [a2 presentedViewController];
    v6 = [v5 view];

    if (v6)
    {
      [v6 _setCornerRadius:0.0];
    }
  }
}

void sub_10002FA74(char a1)
{
  if ((a1 & 1) == 0)
  {
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_overlayView] removeFromSuperview];
    v2 = [v1 presentedViewController];
    v4 = [v2 view];

    if (v4)
    {
      [v4 setClipsToBounds:0];
      v3 = [v4 layer];
      [v3 setMaskedCorners:15];

      [v4 _setCornerRadius:0.0];
    }
  }
}

void sub_10002FBC4()
{
  v1 = [v0 presentedViewController];
  v2 = [v1 transitionCoordinator];

  if (v2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v6[4] = sub_100030F34;
    v6[5] = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_1006F5994;
    v6[3] = &unk_100884B38;
    v4 = _Block_copy(v6);
    swift_unknownObjectRetain();
    v5 = v0;

    [v2 animateAlongsideTransition:v4 completion:0];
    swift_unknownObjectRelease();
    _Block_release(v4);
    swift_unknownObjectRelease();
  }
}

void sub_10002FCF0(uint64_t a1, char *a2)
{
  [*&a2[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_overlayView] setAlpha:0.0];
  v3 = [a2 presentedViewController];
  v4 = [v3 view];

  if (v4)
  {
    v5 = [v4 layer];

    [v5 setMaskedCorners:15];
  }

  v6 = [a2 presentedViewController];
  [v6 setNeedsStatusBarAppearanceUpdate];
}

uint64_t sub_10002FEEC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_interactiveDismissal;
  swift_beginAccess();
  sub_100030DA4(a1, v1 + v3);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100030E14(v1 + v3, v8);
    v6 = v9 == 0;
    sub_100030E84(v8);
    [v5 setShowsVerticalScrollIndicator:v6];
  }

  return sub_100030E84(a1);
}

void sub_10002FFA4(void *a1)
{
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_presentedContainerView] frame];
  v3 = CGRectGetWidth(v31) * 0.28;
  [a1 translationInView:0];
  v5 = fabs(v4);
  if (v5 >= v3)
  {
    v5 = v3;
  }

  v6 = v5 / v3;
  v7 = [a1 state];
  if (v7 > 2)
  {
    if ((v7 - 4) >= 2)
    {
      if (v7 != 3)
      {
        return;
      }

      if (v6 >= 1.0)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_11;
  }

  if (!v7)
  {
LABEL_11:
    if (v1[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_dismissCompleted])
    {
      return;
    }

    v11 = &v1[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_interactiveDismissal];
    swift_beginAccess();
    if (*(v11 + 24))
    {
      sub_10000A570(v11, &v28);
      v12 = *(&v29 + 1);
      v13 = v30;
      sub_10000CF78(&v28, *(&v29 + 1));
      (v13[4])(v12, v13);
      sub_10000CD74(&v28);
    }

    v30 = 0;
    v28 = 0u;
    v29 = 0u;
LABEL_25:
    sub_10002FEEC(&v28);
    return;
  }

  if (v7 == 1)
  {
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1007841E0;
    v15 = [v1 presentedViewController];
    v16 = [v15 view];

    if (!v16)
    {
      __break(1u);
      return;
    }

    *(v14 + 32) = v16;
    v17 = [v1 presentedViewController];
    swift_getObjectType();
    v18 = swift_conformsToProtocol2();
    v19 = _swiftEmptyArrayStorage;
    if (v18 && v17)
    {
      v20 = v18;
      v21 = v1;
      ObjectType = swift_getObjectType();
      v23 = (*(v20 + 16))(ObjectType, v20);
      if (v23)
      {
        v24 = v23;
        v19 = swift_allocObject();
        *(v19 + 1) = xmmword_1007841E0;
        v19[4] = v24;
      }

      v1 = v21;
    }

    v25 = [v1 traitCollection];
    *(&v29 + 1) = &type metadata for ScaleDownInteractiveDismissal;
    v30 = &off_100889240;
    v26 = swift_allocObject();
    *&v28 = v26;
    *(v26 + 16) = v14;
    *(v26 + 24) = v19;
    *(v26 + 32) = v25;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0x3FECCCCCCCCCCCCDLL;
    goto LABEL_25;
  }

  if (v7 != 2)
  {
    return;
  }

  if (v6 >= 1.0)
  {
LABEL_26:
    v27 = [v1 presentedViewController];
    [v27 dismissViewControllerAnimated:1 completion:0];

    v1[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_dismissCompleted] = 1;
    return;
  }

  v8 = &v1[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_interactiveDismissal];
  swift_beginAccess();
  if (*(v8 + 24))
  {
    sub_10000A570(v8, &v28);
    v9 = *(&v29 + 1);
    v10 = v30;
    sub_10000CF78(&v28, *(&v29 + 1));
    (v10[2])(v9, v10, v6);
    sub_10000CD74(&v28);
  }
}

void sub_1000303FC(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    v4 = OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_isScrollDismissActive;
    if (v1[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_isScrollDismissActive] == 1)
    {
      [*&v1[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_presentedContainerView] frame];
      v5 = CGRectGetHeight(v42) * 0.18;
      [a1 translationInView:0];
      v7 = v6 - *&v1[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_scrollDismissInitialTranslationY];
      if (v7 >= v5)
      {
        v8 = v5;
      }

      else
      {
        v8 = v6 - *&v1[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_scrollDismissInitialTranslationY];
      }

      v9 = 0.0;
      if (v5 <= 0.0)
      {
        v9 = v5;
      }

      if (v7 < 0.0)
      {
        v10 = v9;
      }

      else
      {
        v10 = v8;
      }

      v11 = v10 / v5;
      v12 = [a1 state];
      if (v12 > 2)
      {
        if ((v12 - 4) >= 2)
        {
          if (v12 != 3)
          {
            goto LABEL_36;
          }

          if (v11 >= 1.0)
          {
LABEL_39:
            v36 = [v1 presentedViewController];
            [v36 dismissViewControllerAnimated:1 completion:0];

            v1[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_dismissCompleted] = 1;
            return;
          }
        }
      }

      else if (v12)
      {
        if (v12 == 2)
        {
          if (v11 < 1.0)
          {
            v13 = &v1[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_interactiveDismissal];
            swift_beginAccess();
            if (*(v13 + 24))
            {
              sub_10000A570(v13, &v38);
              v14 = *(&v39 + 1);
              v15 = v40;
              sub_10000CF78(&v38, *(&v39 + 1));
              (v15[2])(v14, v15, v11);

              sub_10000CD74(&v38);
              return;
            }

            goto LABEL_38;
          }

          goto LABEL_39;
        }

LABEL_36:

LABEL_38:

        return;
      }

      if (v1[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_dismissCompleted])
      {
        goto LABEL_36;
      }

      v33 = &v1[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_interactiveDismissal];
      swift_beginAccess();
      if (*(v33 + 24))
      {
        sub_10000A570(v33, &v38);
        v34 = *(&v39 + 1);
        v35 = v40;
        sub_10000CF78(&v38, *(&v39 + 1));
        (v35[4])(v34, v35);
        sub_10000CD74(&v38);
      }

      v40 = 0;
      v38 = 0u;
      v39 = 0u;
      sub_10002FEEC(&v38);

      v1[v4] = 0;
    }

    else
    {
      if ([a1 state] != 1 && objc_msgSend(a1, "state") != 2)
      {
        goto LABEL_36;
      }

      [v37 contentOffset];
      v17 = v16;
      [v37 adjustedContentInset];
      if (v17 + v18 > 0.0)
      {
        goto LABEL_36;
      }

      [a1 velocityInView:v37];
      if (v19 <= 0.0)
      {
        goto LABEL_36;
      }

      [v37 adjustedContentInset];
      [v37 contentOffset];
      [v37 setContentOffset:?];
      sub_10000A5D4(&unk_100942870, &qword_100784460);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1007841E0;
      v21 = [v1 presentedViewController];
      v22 = [v21 view];

      if (v22)
      {
        *(v20 + 32) = v22;
        v23 = [v1 presentedViewController];
        swift_getObjectType();
        v24 = swift_conformsToProtocol2();
        v25 = _swiftEmptyArrayStorage;
        if (v24 && v23)
        {
          v26 = v24;
          v27 = v1;
          ObjectType = swift_getObjectType();
          v29 = (*(v26 + 16))(ObjectType, v26);
          if (v29)
          {
            v30 = v29;
            v25 = swift_allocObject();
            *(v25 + 1) = xmmword_1007841E0;
            v25[4] = v30;
          }

          v1 = v27;
        }

        *(&v39 + 1) = &type metadata for PullDownInteractiveDismissal;
        v40 = &off_100889268;
        *&v38 = v20;
        *(&v38 + 1) = v25;
        *&v39 = 0x3FB1EB851EB851ECLL;
        sub_10002FEEC(&v38);
        [a1 translationInView:0];
        v32 = v31;

        *&v1[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_scrollDismissInitialTranslationY] = v32;
        v1[v4] = 1;
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_100030A50(void *a1)
{
  v2 = v1;
  v19.receiver = v1;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = [v4 layoutDirection];

  if (!a1 || v5 != [a1 layoutDirection])
  {
    v6 = *&v2[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_dismissScreenEdgePanGestureRecognizer];
    if (!v6)
    {
      __break(1u);
      goto LABEL_13;
    }

    v7 = qword_10093F4D0;
    v8 = v6;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = sub_10000A5D4(&qword_100943118, &qword_100785018);
    sub_10000A61C(v9, qword_100943088);
    v10 = v2;
    sub_10075FDCC();

    [v8 setEdges:{v18, v2}];
  }

  v11 = [v2 traitCollection];
  v12 = [v11 horizontalSizeClass];

  if (a1 && v12 == [a1 horizontalSizeClass])
  {
    goto LABEL_11;
  }

  v13 = *&v2[OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_dismissScreenEdgePanGestureRecognizer];
  if (v13)
  {
    v14 = v13;
    v15 = [v2 traitCollection];
    v16 = [v15 horizontalSizeClass];

    [v14 setEnabled:v16 != 2];
LABEL_11:
    v17 = [v2 containerView];
    [v17 setNeedsLayout];

    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_100030DA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100943130, &qword_100785020);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100030E14(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100943130, &qword_100785020);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100030E84(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100943130, &qword_100785020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100030EEC()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100030F3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100030F5C(SEL *a1, SEL *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong panGestureRecognizer];

    [v7 *a1];
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    [v8 *a2];
  }
}

uint64_t sub_100031030()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003108C()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1000310CC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC20ProductPageExtension44AppPromotionDetailPagePresentationController_overlayView);
  [*(v0 + 24) bounds];

  return [v1 setFrame:?];
}

uint64_t sub_100031140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a3;
  v22 = a5;
  v23 = a2;
  v26 = sub_10076B6EC();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10076664C();
  v7 = *(v21 - 8);
  __chkstk_darwin(v21);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v10 = *(v20 - 8);
  __chkstk_darwin(v20);
  v12 = &v19 - v11;
  v13 = sub_10000A5D4(&unk_100946710, &unk_10079A020);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19 - v15;
  sub_1007633BC();
  sub_10076F4AC();
  (*(v14 + 8))(v16, v13);
  sub_10076336C();
  sub_10076331C();
  swift_getKeyPath();
  sub_10076338C();

  v17 = sub_100630CB4();
  (*(*(v22 + 8) + 80))(v27, v12, v23, v9, v6, v17, v25);
  swift_unknownObjectRelease();
  (*(v24 + 8))(v6, v26);
  (*(v7 + 8))(v9, v21);
  (*(v10 + 8))(v12, v20);
  return sub_10000CD74(v27);
}

void sub_100031484(uint64_t a1, int a2, void *a3, uint64_t a4, double a5, double a6, double a7)
{
  v8 = v7;
  v15 = sub_10076E1EC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_10076E21C();
  v73 = *(v74 - 8);
  *&v19 = __chkstk_darwin(v74).n128_u64[0];
  v72 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [v8 contentView];
  [a3 pageMarginInsets];
  v23 = v22;
  [a3 pageMarginInsets];
  [v21 setLayoutMargins:{a5, v23, a7}];

  v24 = *&v8[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_messageTextView];
  v75 = a1;
  sub_10076B9AC();
  v25 = sub_10076081C();
  v26 = sub_10076082C();
  v77 = a4;
  v27 = v24;
  sub_100032368(v26, sub_100032360);
  v29 = v28;

  sub_100245548(v25, v29);

  v76 = a2;
  if (a2)
  {
    (*(v16 + 104))(v18, enum case for Separator.Position.bottom(_:), v15);
    v81[3] = sub_10076D67C();
    v81[4] = &protocol witness table for ZeroDimension;
    sub_10000DB7C(v81);
    sub_10076D66C();
    v30 = v72;
    sub_10076E1FC();
    v31 = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v32 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
    swift_beginAccess();
    v33 = *(v73 + 40);
    v34 = v31;
    v33(&v31[v32], v30, v74);
    swift_endAccess();

    v35 = OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_bottomSeparatorView;
    v36 = *&v8[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_bottomSeparatorView];
    if (v36)
    {
      [v36 removeFromSuperview];
      v37 = *&v8[v35];
    }

    else
    {
      v37 = 0;
    }

    *&v8[v35] = v34;
    v41 = v34;

    v42 = [v8 contentView];
    [v42 addSubview:v41];

    [*&v8[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_roundedBackgroundView] setHidden:1];
    sub_1000325F0();
    v43 = sub_100770CFC();
    v44 = type metadata accessor for DynamicTypeLinkedTextView(0);
    v80.receiver = v27;
    v80.super_class = v44;
    v45 = objc_msgSendSuper2(&v80, "textColor");
    v79.receiver = v27;
    v79.super_class = v44;
    objc_msgSendSuper2(&v79, "setTextColor:", v43);
    v78.receiver = v27;
    v78.super_class = v44;
    v46 = objc_msgSendSuper2(&v78, "textColor");
    if (v46)
    {
      goto LABEL_8;
    }

LABEL_14:
    if (!v45)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v38 = OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_bottomSeparatorView;
  v39 = *&v8[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_bottomSeparatorView];
  if (v39)
  {
    [v39 removeFromSuperview];
    v40 = *&v8[v38];
  }

  else
  {
    v40 = 0;
  }

  *&v8[v38] = 0;

  [*&v8[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_roundedBackgroundView] setHidden:0];
  sub_1000325F0();
  v43 = sub_100770D1C();
  v50 = type metadata accessor for DynamicTypeLinkedTextView(0);
  v84.receiver = v27;
  v84.super_class = v50;
  v45 = objc_msgSendSuper2(&v84, "textColor");
  v83.receiver = v27;
  v83.super_class = v50;
  objc_msgSendSuper2(&v83, "setTextColor:", v43);
  v82.receiver = v27;
  v82.super_class = v50;
  v46 = objc_msgSendSuper2(&v82, "textColor");
  if (!v46)
  {
    goto LABEL_14;
  }

LABEL_8:
  v47 = v46;
  if (!v45)
  {

    goto LABEL_15;
  }

  v48 = v45;
  v49 = sub_100770EEC();

  if ((v49 & 1) == 0)
  {
LABEL_15:
    sub_1002448C4();
    goto LABEL_16;
  }

  v45 = v48;
LABEL_16:

  v43 = v45;
LABEL_17:

  sub_1000325F0();
  v51 = sub_100770E1C();
  [v27 setTintColor:v51];

  v52 = sub_10076B99C();
  sub_10011DCEC(v52);

  v53 = sub_10076B9BC();
  sub_10011C2BC(v53);
  v54 = sub_10076B9CC();
  v55 = *&v8[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkSymbolConfiguration];
  *&v8[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkSymbolConfiguration] = v54;
  v56 = v54;

  sub_10011C54C();
  v57 = *(sub_10076B98C() + 16);

  v58 = OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_buttonRow;
  v59 = *&v8[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_buttonRow];
  if (v57)
  {
    v60 = v77;
    if (v59)
    {
      v61 = *&v8[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_buttonRow];
    }

    else
    {
      type metadata accessor for BannerButtonRow(0);
      v61 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    }

    v63 = v59;
    v64 = sub_10076B98C();
    sub_1004B9E0C(v64, v60);

    v65 = *&v8[v58];
    if (v65)
    {
      type metadata accessor for BannerButtonRow(0);
      v66 = v61;
      v59 = v65;
      v67 = sub_100770EEC();

      if ((v67 & 1) == 0)
      {
        [v59 removeFromSuperview];
      }
    }

    else
    {
      v68 = v61;
      v59 = 0;
    }

    v69 = *&v8[v58];
    *&v8[v58] = v61;
    v70 = v61;

    sub_10011C344(v65);
  }

  else
  {
    if (v59)
    {
      [v59 removeFromSuperview];
      v62 = *&v8[v58];
    }

    else
    {
      v62 = 0;
    }

    *&v8[v58] = 0;

    sub_10011C344(v59);
  }

  v8[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_shouldUseArcadeMetrics] = v76 & 1;
  [v8 setNeedsLayout];
  sub_100760C4C();
  sub_10076F64C();
  sub_10076FC1C();
  [v8 setNeedsLayout];
}

double sub_100031C78()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtwork];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkView];
    if (v2)
    {
      swift_retain_n();
      v7 = v2;
      v3 = [v0 traitCollection];
      sub_10011D2FC(v1);
      v5 = v4;

      if (v5)
      {
      }

      else
      {
        sub_10076BFBC();
        sub_100760C4C();
        sub_10075FD2C();
        sub_100760BCC();
        swift_allocObject();
        swift_unknownObjectWeakInit();

        sub_100760B7C();

        sub_10000CFBC(v8, &qword_100943310, &unk_100784150);
      }
    }
  }

  return result;
}

void sub_100031E40(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10000A5D4(&qword_100943190, qword_100798490);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  v10 = sub_10076BD9C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  __chkstk_darwin(v17);
  v19 = &v31 - v18;
  sub_10003267C(a3, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000CFBC(v9, &qword_100943190, qword_100798490);
  }

  else
  {
    v32 = a1;
    v20 = *(v11 + 32);
    v20(v19, v9, v10);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v22 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtwork), v23 = Strong, , v23, v22))
    {
      sub_10076C01C();

      v20(v16, v13, v10);
      sub_1000326EC(&qword_100943198, &type metadata accessor for Artwork.URLTemplate, &protocol conformance descriptor for Artwork.URLTemplate);
      v24 = sub_10076FF1C();
      v25 = *(v11 + 8);
      v25(v16, v10);
      v25(v19, v10);
      a1 = v32;
      if ((v24 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      (*(v11 + 8))(v19, v10);
      a1 = v32;
    }
  }

  if (a1)
  {
    a1 = [a1 imageWithRenderingMode:2];
  }

  swift_beginAccess();
  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v27 = *(v26 + OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkView);
    v28 = v26;
    v29 = v27;

    if (v27)
    {
      v33.value.super.isa = a1;
      v33.is_nil = 0;
      sub_10075FCEC(v33, v30);
    }
  }
}

void sub_100032194(uint64_t *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v11 = *a1;
  if (sub_10076B99C())
  {

    v12 = 15.0;
  }

  else
  {
    v12 = 22.0;
  }

  sub_10076B98C();
  sub_10000A5D4(&unk_10094C3B0, qword_10078C480);
  v13 = sub_1007701EC();

  v14 = 15.0;
  if ((v13 & 1) == 0)
  {
    v14 = v12;
  }

  v15 = 9.0;
  if (v13)
  {
    v15 = 12.0;
  }

  *&v16 = v15;
  *(&v16 + 1) = 0x402E000000000000;
  v17 = v15;
  v18 = xmmword_100785060;
  v19 = v12;
  v20 = 0x4022000000000000;
  v21 = v14;
  v22 = xmmword_100785070;
  v23 = xmmword_100785080;
  sub_10011D440(v11, &v16, a8, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, a2, a3);
}

void sub_100032368(uint64_t a1, void (*a2)(_OWORD *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v30 = _swiftEmptyArrayStorage;
    sub_1004BB894(0, v2, 0);
    v4 = _swiftEmptyArrayStorage;
    v27 = a1 + 64;
    v5 = sub_1007712DC();
    v6 = 0;
    v28 = *(a1 + 36);
    v25 = v2;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v27 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_22;
      }

      if (v28 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v9 = (*(a1 + 48) + 16 * v5);
      v11 = *v9;
      v10 = v9[1];
      v12 = *(*(a1 + 56) + 8 * v5);

      a2(v29, v11, v10, v12);

      v30 = v4;
      v14 = v4[2];
      v13 = v4[3];
      if (v14 >= v13 >> 1)
      {
        sub_1004BB894((v13 > 1), v14 + 1, 1);
        v4 = v30;
      }

      v4[2] = v14 + 1;
      v15 = &v4[6 * v14];
      v16 = v29[0];
      v17 = v29[2];
      v15[3] = v29[1];
      v15[4] = v17;
      v15[2] = v16;
      v7 = 1 << *(a1 + 32);
      if (v5 >= v7)
      {
        goto LABEL_24;
      }

      v18 = *(v27 + 8 * v8);
      if ((v18 & (1 << v5)) == 0)
      {
        goto LABEL_25;
      }

      if (v28 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v19 = v18 & (-2 << (v5 & 0x3F));
      if (v19)
      {
        v7 = __clz(__rbit64(v19)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v8 << 6;
        v21 = v8 + 1;
        v22 = (a1 + 72 + 8 * v8);
        while (v21 < (v7 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            sub_100032734(v5, v28, 0);
            v7 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        sub_100032734(v5, v28, 0);
      }

LABEL_4:
      ++v6;
      v5 = v7;
      if (v6 == v25)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

unint64_t sub_1000325F0()
{
  result = qword_100942F10;
  if (!qword_100942F10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100942F10);
  }

  return result;
}

uint64_t sub_10003263C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003267C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100943190, qword_100798490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000326EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_100032734(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100032740()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_1009431A0);
  sub_10000A61C(v4, qword_1009431A0);
  if (qword_100940A00 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A0C10);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

id sub_100032914(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension29FamilyPurchasesViewController_presenter) = a1;
  v4 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v15[4] = sub_100032B18;
  v15[5] = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_1002BAFEC;
  v15[3] = &unk_100884CE0;
  v5 = _Block_copy(v15);

  v6 = [v4 initWithSectionProvider:v5];
  _Block_release(v5);

  v7 = v6;

  v8 = sub_10007689C(v7, a2);

  sub_1000366AC(&unk_100943210, v9, type metadata accessor for FamilyPurchasesViewController, &unk_100785188);
  v10 = v8;
  sub_10076781C();
  v11 = v10;
  sub_10076784C();
  v12 = sub_10076FF6C();

  [v11 setTitle:v12];

  *(v11 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_prefersLargeTitle) = 0;
  v13 = [v11 navigationItem];
  [v13 setLargeTitleDisplayMode:2];

  return v11;
}

uint64_t sub_100032B18(uint64_t a1, uint64_t a2)
{
  v2 = sub_10076E81C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076E87C();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v2, v8);
  sub_10076E84C();
  sub_100016F40(0, &unk_1009632E0, NSCollectionLayoutSection_ptr);
  v11 = sub_10077097C();
  (*(v7 + 8))(v10, v6);
  return v11;
}

void sub_100032DC4(uint64_t a1, uint64_t a2)
{
  v16.receiver = v2;
  v16.super_class = type metadata accessor for FamilyPurchasesViewController();
  objc_msgSendSuper2(&v16, "viewDidLoad");
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v5 = sub_100770D3C();
    [v4 setBackgroundColor:v5];

    v6 = [v2 collectionView];
    if (v6)
    {
      v7 = v6;
      v8 = sub_100770D3C();
      [v7 setBackgroundColor:v8];

      [v7 setAlwaysBounceVertical:1];
      type metadata accessor for LinkableHeaderCollectionViewCell();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_1007708FC();
      v10 = sub_10076FF6C();

      [v7 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v10];

      type metadata accessor for AccountDetailCollectionViewCell(0);
      v11 = swift_getObjCClassFromMetadata();
      sub_1007708FC();
      v12 = sub_10076FF6C();

      [v7 registerClass:v11 forCellWithReuseIdentifier:v12];

      type metadata accessor for DetailCollectionViewCell(0);
      v13 = swift_getObjCClassFromMetadata();
      v14 = UICollectionElementKindSectionHeader;
      sub_1007708FC();
      v15 = sub_10076FF6C();

      [v7 registerClass:v13 forSupplementaryViewOfKind:v14 withReuseIdentifier:v15];

      sub_100760C9C();
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_1000330AC(void *a1)
{
  v2 = sub_10076671C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E0AC();
  sub_1007677AC();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for FamilyPurchasesSection.errorBanner(_:))
  {
    type metadata accessor for LinkableHeaderCollectionViewCell();
    sub_1007708FC();
    v7 = sub_10076FF6C();

    v8.super.isa = sub_10075E02C().super.isa;
    v9 = [a1 dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:v8.super.isa];
LABEL_9:
    v13 = v9;

    return v13;
  }

  if (v6 == enum case for FamilyPurchasesSection.loggedInUser(_:) || v6 == enum case for FamilyPurchasesSection.familyMembers(_:))
  {
    type metadata accessor for AccountDetailCollectionViewCell(0);
    sub_1007708FC();
    v7 = sub_10076FF6C();

    v8.super.isa = sub_10075E02C().super.isa;
    v9 = [a1 dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:v8.super.isa];
    goto LABEL_9;
  }

  type metadata accessor for LinkableHeaderCollectionViewCell();
  sub_1007708FC();
  v11 = sub_10076FF6C();

  isa = sub_10075E02C().super.isa;
  v13 = [a1 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:isa];

  (*(v3 + 8))(v5, v2);
  return v13;
}

void sub_100033BB8(uint64_t a1)
{
  v3 = sub_10075DFDC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = [v1 collectionView];
  if (v6)
  {
    v14 = v6;
    if (sub_10075DFBC() < 1)
    {
    }

    else
    {
      v7 = objc_opt_self();
      (*(v4 + 16))(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
      v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
      v9 = swift_allocObject();
      *(v9 + 16) = v14;
      (*(v4 + 32))(v9 + v8, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
      v10 = swift_allocObject();
      *(v10 + 16) = sub_100034988;
      *(v10 + 24) = v9;
      aBlock[4] = sub_1000349FC;
      aBlock[5] = v10;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001C5148;
      aBlock[3] = &unk_100884D58;
      v11 = _Block_copy(aBlock);
      v12 = v14;

      [v7 performWithoutAnimation:v11];

      _Block_release(v11);
      LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

      if (v7)
      {
        __break(1u);
      }
    }
  }
}

void sub_100033E54(void *a1)
{
  v2 = [a1 collectionViewLayout];
  [v2 invalidateLayout];

  sub_10075DF9C(v3);
  v5 = v4;
  [a1 reloadSections:v4];
}

id sub_100033EF0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FamilyPurchasesViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_100033F5C()
{
  v1 = [v0 collectionView];
  [v1 reloadData];
}

uint64_t sub_100033FB4(uint64_t a1)
{
  v3 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph);
  v7 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  sub_10076F5AC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_10000CFBC(v5, &unk_100943200, &unk_100785840);
  }

  sub_100263BF0(a1, 1, v6, v5);

  return (*(v8 + 8))(v5, v7);
}

uint64_t sub_1000341DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_1000341F4(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = sub_10077164C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2[3];
  sub_10000CF78(a2, v10);
  sub_1000FF02C(v10);
  sub_10076D40C();
  v11 = *(v7 + 8);
  v11(v9, v6);
  sub_10000CF78(a2 + 25, a2[28]);
  sub_10076D2AC();
  sub_100016E2C((a2 + 15), v15, &unk_100943240, &qword_10078AFB0);
  v12 = v16;
  if (v16)
  {
    sub_10000CF78(v15, v16);
    sub_1000FF02C(v12);
    sub_10076D40C();
    v11(v9, v6);
    sub_10000CD74(v15);
  }

  else
  {
    sub_10000CFBC(v15, &unk_100943240, &qword_10078AFB0);
  }

  sub_10000CF78(a2 + 30, a2[33]);
  sub_10076D2BC();
  sub_10000CF78(a2 + 20, a2[23]);
  sub_10076D2BC();
  sub_10000CF78(a2 + 5, a2[8]);
  sub_10076D42C();
  sub_10000CF78(a2 + 10, a2[13]);
  sub_10076D3FC();
  return a3;
}

double sub_100034514(uint64_t a1, uint64_t a2, char a3, void *a4, double a5, double a6)
{
  v28 = a1;
  v10 = sub_10076997C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10093FAD8 != -1)
  {
    swift_once();
  }

  sub_1000367B4(&unk_10094DA80, v31);
  if ((a3 & 1) == 0)
  {
    sub_10000CFBC(v32, &unk_100943240, &qword_10078AFB0);
    memset(v32, 0, sizeof(v32));
    v33 = 0;
  }

  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_100940B80 != -1)
  {
    swift_once();
  }

  v14 = sub_10076D3DC();
  sub_10000A61C(v14, qword_1009A1078);
  v15 = [a4 traitCollection];
  v27 = a4;
  v16 = v15;
  v17 = sub_100770B3C();

  sub_1000367B4(v31, v30);
  v18 = sub_10076DDDC();
  swift_allocObject();
  v19 = sub_10076DD9C();
  v30[23] = v18;
  v30[24] = &protocol witness table for LayoutViewPlaceholder;
  v30[20] = v19;
  v20 = sub_10076C04C();
  v29[3] = v20;
  v29[4] = sub_1000366AC(&qword_100943230, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v21 = sub_10000DB7C(v29);
  (*(*(v20 - 8) + 104))(v21, enum case for Feature.measurement_with_labelplaceholder(_:), v20);
  v22 = v17;
  sub_10076C90C();
  sub_10000CD74(v29);

  sub_10076996C();
  sub_10076994C();
  (*(v11 + 8))(v13, v10);
  swift_allocObject();
  v23 = sub_10076DD9C();
  v30[33] = v18;
  v30[34] = &protocol witness table for LayoutViewPlaceholder;
  v30[30] = v23;
  v24 = sub_1000341F4(v27, v30, a5, a6);

  sub_100036810(v30);
  sub_100036864(v31);
  return v24;
}

uint64_t sub_1000348C4()
{
  v1 = sub_10075DFDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100034988()
{
  sub_10075DFDC();
  v1 = *(v0 + 16);

  sub_100033E54(v1);
}

id sub_100034A04(void *a1, uint64_t a2, uint64_t a3)
{
  if (sub_10076FF9C() == a2 && v5 == a3)
  {

    goto LABEL_10;
  }

  v7 = sub_10077167C();

  if (v7)
  {
LABEL_10:
    v10 = sub_10076FF6C();
    type metadata accessor for DetailCollectionViewCell(0);
    sub_1007708FC();
    v11 = sub_10076FF6C();

    isa = sub_10075E02C().super.isa;
    v13 = [a1 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v11 forIndexPath:isa];

    return v13;
  }

  v8 = objc_allocWithZone(UICollectionViewCell);

  return [v8 init];
}

void sub_100034B40(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10076BF6C();
  v58 = *(v5 - 8);
  v59 = v5;
  __chkstk_darwin(v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&qword_10094BB50, &qword_1007851D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v54 - v9;
  v11 = sub_10076671C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E0AC();
  sub_1007677AC();
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == enum case for FamilyPurchasesSection.errorBanner(_:))
  {
    type metadata accessor for LinkableHeaderCollectionViewCell();
    v16 = swift_dynamicCastClass();
    if (!v16)
    {
      return;
    }

    v17 = v16;
    v18 = a1;
    if (sub_10076780C())
    {
      v19 = *(*&v17[OBJC_IVAR____TtC20ProductPageExtension32LinkableHeaderCollectionViewCell_headerView] + OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_label);
      v20 = sub_10076082C();
      sub_100107BF4(v20, sub_1000368B8);
      v22 = v21;

      v23 = sub_10076081C();
      sub_10050C274(v23, 0, v22);

      [v17 setNeedsLayout];

      return;
    }

    goto LABEL_21;
  }

  if (v15 != enum case for FamilyPurchasesSection.loggedInUser(_:) && v15 != enum case for FamilyPurchasesSection.familyMembers(_:))
  {
    (*(v12 + 8))(v14, v11);
    return;
  }

  type metadata accessor for AccountDetailCollectionViewCell(0);
  v25 = swift_dynamicCastClass();
  if (v25)
  {
    v26 = v25;
    v27 = a1;
    [v2 pageMarginInsets];
    v29 = v28;
    v57 = sub_10075E09C();
    v30 = sub_10075E09C();
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      return;
    }

    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    sub_10075E0AC();
    v35 = sub_1007677DC();
    v55 = v31 == v35;
    v56 = v31 != v35;
    v36 = v27;
    [v2 pageMarginInsets];
    [v26 setLayoutMargins:?];

    sub_10076783C();
    v37 = *&v26[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_titleLabel];
    v38 = sub_10076FF6C();

    [v37 setText:v38];

    [v26 setNeedsLayout];
    v26[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_showTopSeparatorView] = 1;
    [*&v26[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_topSeparatorView] setHidden:0];
    top = UIEdgeInsetsZero.top;
    if (v57)
    {
      v40 = v29;
    }

    else
    {
      v40 = left;
    }

    v41 = bottom;
    v42 = right;
    if (v57)
    {
      top = 0.0;
      v41 = 0.0;
      v42 = 0.0;
    }

    v43 = &v26[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_topSeparatorViewInsets];
    *v43 = top;
    v43[1] = v40;
    v43[2] = v41;
    v43[3] = v42;
    *(v43 + 32) = 0;
    v44 = v56;
    v26[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_showBottomSeparatorView] = v55;
    [*&v26[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_bottomSeparatorView] setHidden:v44];
    v45 = &v26[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_bottomSeparatorViewInsets];
    *v45 = UIEdgeInsetsZero.top;
    v45[1] = left;
    v45[2] = bottom;
    v45[3] = right;
    *(v45 + 32) = 0;
    v46 = type metadata accessor for Accessory(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v46 - 8) + 56))(v10, 0, 1, v46);
    sub_1003D3450(v10, *&v3[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph]);
    sub_10000CFBC(v10, &qword_10094BB50, &qword_1007851D0);
    [*&v26[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryView] setHidden:0];
    v47 = &v26[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_imageMarginRight];
    *v47 = 0x4030000000000000;
    v47[8] = 0;
    (*(v58 + 104))(v7, enum case for Artwork.Style.round(_:), v59);
    sub_10075FCCC();
    v48 = sub_1007677BC();
    if (v48)
    {
      v49 = v48;
      v50 = [objc_opt_self() mainScreen];
      [v50 scale];
      v52 = v51;

      v60.width = 36.0;
      v60.height = 36.0;
      UIGraphicsBeginImageContextWithOptions(v60, 0, v52);
      [v49 drawInRect:{0.0, 0.0, 36.0, 36.0}];
      v53 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
    }

    else
    {
      v53 = 0;
    }

    v18 = v53;
    sub_10075FCAC();
    [v26 setNeedsLayout];

LABEL_21:
  }
}

void sub_1000351F0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  type metadata accessor for DetailCollectionViewCell(0);
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    return;
  }

  v12 = v11;
  if (sub_10076FF9C() == a2 && v13 == a3)
  {
    v17 = a1;
  }

  else
  {
    v15 = sub_10077167C();
    v35 = a1;

    if ((v15 & 1) == 0)
    {
      v16 = v35;

      return;
    }
  }

  v18 = [v12 contentView];
  v19 = objc_opt_self();
  v20 = [v19 clearColor];
  [v18 setBackgroundColor:v20];

  v21 = a1;
  v22 = [v19 clearColor];
  [v12 setBackgroundColor:v22];

  v12[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_isSelectable] = 0;
  [v12 setSelectedBackgroundView:0];
  sub_10075E0AC();
  sub_10076782C();
  v23 = OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_titleLabel;
  v24 = *&v12[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_titleLabel];
  if (v25)
  {
    v26 = sub_10076FF6C();
  }

  else
  {
    v26 = 0;
  }

  [v24 setText:v26];

  if (qword_100940A00 != -1)
  {
    swift_once();
  }

  v27 = sub_10076D3DC();
  v28 = sub_10000A61C(v27, qword_1009A0C10);
  v29 = *(v27 - 8);
  (*(v29 + 16))(v10, v28, v27);
  (*(v29 + 56))(v10, 0, 1, v27);
  sub_1007625DC();
  v30 = *&v12[v23];
  v31 = [v19 systemGrayColor];
  [v30 setTextColor:v31];

  [v4 pageMarginInsets];
  v33 = v32;
  [v4 pageMarginInsets];
  [v12 setLayoutMargins:{0.0, v33, 0.0}];
}

void sub_1000355A8(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Accessory(0);
  v64 = *(v4 - 8);
  __chkstk_darwin(v4);
  v60 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v61 = (&v57 - v7);
  __chkstk_darwin(v8);
  v63 = &v57 - v9;
  v10 = sub_10000A5D4(&qword_10094BB50, &qword_1007851D0);
  __chkstk_darwin(v10 - 8);
  v62 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = (&v57 - v13);
  __chkstk_darwin(v15);
  v65 = &v57 - v16;
  __chkstk_darwin(v17);
  v66 = &v57 - v18;
  v19 = sub_10076671C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v24 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29FamilyPurchasesViewController_presenter];
  sub_10075E0AC();
  sub_1007677AC();
  v25 = (*(v20 + 88))(v22, v19);
  if (v25 == enum case for FamilyPurchasesSection.errorBanner(_:))
  {
    if (sub_10076780C())
    {
      v26 = sub_10076080C();
      v28 = v27;
      [a1 bounds];
      sub_100034514(v26, v28, 0, v2, v29, v30);
    }

    return;
  }

  if (v25 != enum case for FamilyPurchasesSection.loggedInUser(_:) && v25 != enum case for FamilyPurchasesSection.familyMembers(_:))
  {
    (*(v20 + 8))(v22, v19);
    return;
  }

  v32 = sub_10076783C();
  v59 = v33;
  v34 = v66;
  swift_storeEnumTagMultiPayload();
  v35 = *(v64 + 56);
  v35(v34, 0, 1, v4);
  v35(v65, 1, 1, v4);
  v36 = sub_10075E09C();
  sub_10075E0AC();
  v37 = sub_1007677DC();
  v38 = (v37 - 1);
  if (__OFSUB__(v37, 1))
  {
    __break(1u);
    goto LABEL_30;
  }

  v57 = v32;
  v58 = v36;
  v32 = v23;
  v39 = [v23 view];
  if (!v39)
  {
    __break(1u);
    return;
  }

  v40 = v39;
  [v39 bounds];

  v41 = [v23 traitCollection];
  sub_10077071C();

  v42 = [v23 traitCollection];
  sub_100016E2C(v66, v14, &qword_10094BB50, &qword_1007851D0);
  v43 = *(v64 + 48);
  if (v43(v14, 1, v4) == 1)
  {
    v24 = v42;
    v44 = v14;
LABEL_18:
    sub_10000CFBC(v44, &qword_10094BB50, &qword_1007851D0);
    goto LABEL_20;
  }

  v45 = v14;
  v46 = v63;
  sub_1000366F4(v45, v63);
  sub_100528FA8(v42);
  v47 = v61;
  swift_storeEnumTagMultiPayload();
  v48 = sub_10052A9D0(v46, v47);
  sub_100036758(v47);
  if (v48)
  {
    _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();
  }

  v49 = v62;
  sub_100016E2C(v65, v62, &qword_10094BB50, &qword_1007851D0);
  if (v43(v49, 1, v4) == 1)
  {
    v24 = v42;
    sub_100036758(v46);
    v44 = v49;
    goto LABEL_18;
  }

  v50 = v60;
  sub_1000366F4(v49, v60);
  v24 = v42;
  sub_100528FA8(v42);
  sub_100036758(v50);
  sub_100036758(v46);
LABEL_20:
  v14 = v38;
  v38 = &selRef_initWithTabBarSystemItem_tag_;
  if (qword_100940360 != -1)
  {
LABEL_30:
    swift_once();
  }

  v51 = sub_10076D3DC();
  sub_10000A61C(v51, qword_100955E38);
  v52 = sub_10076C04C();
  v67[3] = v52;
  v67[4] = sub_1000366AC(&qword_100943230, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v53 = sub_10000DB7C(v67);
  (*(*(v52 - 8) + 104))(v53, enum case for Feature.measurement_with_labelplaceholder(_:), v52);
  sub_10076C90C();
  sub_10000CD74(v67);
  sub_10076991C();
  if (qword_100940368 != -1)
  {
    swift_once();
  }

  v54 = sub_10076D9AC();
  sub_10000A61C(v54, qword_100955E50);
  sub_10076D42C();
  if (qword_100940370 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v54, qword_100955E68);
  sub_10076D3FC();
  v55 = [v32 v38[274]];
  sub_10076E20C();

  if (v58 == v14)
  {
    v56 = [v32 v38[274]];
    sub_10076E20C();
  }

  else
  {
  }

  sub_10000CFBC(v65, &qword_10094BB50, &qword_1007851D0);
  sub_10000CFBC(v66, &qword_10094BB50, &qword_1007851D0);
}

id sub_100035EF4(uint64_t a1)
{
  v2 = sub_10076D9AC();
  v41 = *(v2 - 8);
  __chkstk_darwin(v2);
  v40 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10077164C();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v37 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&qword_100943220, qword_10079FE00);
  __chkstk_darwin(v6 - 8);
  v36 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v42 = v35 - v9;
  v10 = sub_10076671C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v35 - v15;
  sub_1007677AC();
  (*(v11 + 104))(v13, enum case for FamilyPurchasesSection.familyMembers(_:), v10);
  sub_1000366AC(&qword_100943228, 255, &type metadata accessor for FamilyPurchasesSection, &protocol conformance descriptor for FamilyPurchasesSection);
  sub_10077018C();
  sub_10077018C();
  v17 = *(v11 + 8);
  v17(v13, v10);
  result = (v17)(v16, v10);
  if (v43[0] == v43[5])
  {
    sub_10076782C();
    v35[1] = v19;
    if (qword_10093F4D8 != -1)
    {
      swift_once();
    }

    v20 = sub_10000A61C(v2, qword_1009431A0);
    v22 = v41;
    v21 = v42;
    v23 = *(v41 + 16);
    v23(v42, v20, v2);
    (*(v22 + 56))(v21, 0, 1, v2);
    result = [v1 view];
    if (result)
    {
      v24 = result;
      [result bounds];

      v25 = [v1 traitCollection];
      if (qword_100940240 != -1)
      {
        swift_once();
      }

      v26 = sub_10076D3DC();
      sub_10000A61C(v26, qword_100955470);
      v27 = sub_10076C04C();
      v43[3] = v27;
      v43[4] = sub_1000366AC(&qword_100943230, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v28 = sub_10000DB7C(v43);
      (*(*(v27 - 8) + 104))(v28, enum case for Feature.measurement_with_labelplaceholder(_:), v27);
      sub_10076C90C();
      sub_10000CD74(v43);
      sub_10076991C();
      if (qword_100940248 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v2, qword_100955488);
      sub_10076D42C();
      v29 = v36;
      sub_100016E2C(v42, v36, &qword_100943220, qword_10079FE00);
      v30 = *(v22 + 48);
      v31 = v30(v29, 1, v2);
      v32 = v40;
      if (v31 == 1)
      {
        if (qword_100940250 != -1)
        {
          swift_once();
        }

        v33 = sub_10000A61C(v2, qword_1009554A0);
        v23(v32, v33, v2);
        if (v30(v29, 1, v2) != 1)
        {
          sub_10000CFBC(v29, &qword_100943220, qword_10079FE00);
        }
      }

      else
      {
        (*(v22 + 32))(v40, v29, v2);
      }

      v34 = v37;
      sub_10076D17C();
      sub_10076D97C();
      (*(v38 + 8))(v34, v39);
      (*(v22 + 8))(v32, v2);

      return sub_10000CFBC(v42, &qword_100943220, qword_10079FE00);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000366AC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1000366F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Accessory(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100036758(uint64_t a1)
{
  v2 = type metadata accessor for Accessory(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MetadataRibbonHighlightedTextViewLayout.Metrics.standard.unsafeMutableAddressor()
{
  if (qword_10093F4E0 != -1)
  {
    swift_once();
  }

  v0 = sub_10076AC8C();

  return sub_10000A61C(v0, static MetadataRibbonHighlightedTextViewLayout.Metrics.standard);
}

char *sub_10003692C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10076AC8C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC20ProductPageExtension33MetadataRibbonHighlightedTextView_metrics;
  if (qword_10093F4E0 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v11, static MetadataRibbonHighlightedTextViewLayout.Metrics.standard);
  v17 = *(v12 + 16);
  v17(&v5[v15], v16, v11);
  v18 = &v5[OBJC_IVAR____TtC20ProductPageExtension33MetadataRibbonHighlightedTextView_id];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 4) = 0;
  v19 = OBJC_IVAR____TtC20ProductPageExtension33MetadataRibbonHighlightedTextView_itemType;
  v20 = sub_1007668DC();
  (*(*(v20 - 8) + 56))(&v5[v19], 1, 1, v20);
  v21 = &v5[OBJC_IVAR____TtC20ProductPageExtension33MetadataRibbonHighlightedTextView_labelMaxWidth];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v5[OBJC_IVAR____TtC20ProductPageExtension33MetadataRibbonHighlightedTextView_truncationLegibilityThreshold];
  *v22 = 0;
  v22[8] = 1;
  v5[OBJC_IVAR____TtC20ProductPageExtension33MetadataRibbonHighlightedTextView_allowsTruncation] = 2;
  sub_1007626BC();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension33MetadataRibbonHighlightedTextView_descriptionLabel] = sub_10076269C();
  v42.receiver = v5;
  v42.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = OBJC_IVAR____TtC20ProductPageExtension33MetadataRibbonHighlightedTextView_descriptionLabel;
  v29 = *&v27[OBJC_IVAR____TtC20ProductPageExtension33MetadataRibbonHighlightedTextView_descriptionLabel];
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v30 = v29;
  v31 = sub_100770D1C();
  [v30 setTextColor:v31];

  v32 = *&v27[v28];
  v17(v14, &v27[OBJC_IVAR____TtC20ProductPageExtension33MetadataRibbonHighlightedTextView_metrics], v11);
  v33 = v32;
  v34 = sub_10076AC7C();
  (*(v12 + 8))(v14, v11);
  [v33 setNumberOfLines:v34];

  v35 = *&v27[v28];
  sub_10076D84C();
  if (qword_10093F698 != -1)
  {
    swift_once();
  }

  v36 = sub_10076715C();
  v37 = sub_10000A61C(v36, qword_10099CE38);
  v41[3] = v36;
  v41[4] = sub_100038A88(&qword_10094B6A0, &type metadata accessor for MetadataRibbonTextStyle, &protocol conformance descriptor for MetadataRibbonTextStyle);
  v38 = sub_10000DB7C(v41);
  (*(*(v36 - 8) + 16))(v38, v37, v36);
  sub_1007625FC();

  [v27 addSubview:*&v27[v28]];
  return v27;
}

uint64_t sub_100036D9C()
{
  ObjectType = swift_getObjectType();
  v18 = sub_10076D1FC();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076AC8C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10076AC9C();
  v9 = *(v17 - 8);
  *&v10 = __chkstk_darwin(v17).n128_u64[0];
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v0;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "layoutSubviews", v10);
  v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension33MetadataRibbonHighlightedTextView_descriptionLabel];
  v20 = sub_1007626BC();
  v21 = &protocol witness table for UILabel;
  v19 = v13;
  (*(v6 + 16))(v8, &v0[OBJC_IVAR____TtC20ProductPageExtension33MetadataRibbonHighlightedTextView_metrics], v5);
  v14 = v13;
  sub_10076AC3C();
  sub_10076422C();
  sub_10076AC5C();
  (*(v2 + 8))(v4, v18);
  return (*(v9 + 8))(v12, v17);
}

id sub_10003726C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = *&v4[OBJC_IVAR____TtC20ProductPageExtension33MetadataRibbonHighlightedTextView_descriptionLabel];
    if (a4)
    {
      v6 = sub_1000372FC(a1, a2, a3, a4);
      [v5 setAttributedText:v6];
    }

    else
    {
      v6 = sub_10076FF6C();
      [v5 setText:v6];
    }
  }

  return [v4 setNeedsLayout];
}

id sub_1000372FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10076D84C();
  if (qword_10093F6B0 != -1)
  {
    swift_once();
  }

  v5 = sub_10076715C();
  sub_10000A61C(v5, qword_10099CE80);
  v6.super.isa = [v4 traitCollection];
  isa = v6.super.isa;
  v36.super.isa = sub_10076713C(v6).super.isa;

  sub_10076D84C();
  if (qword_10093F698 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v5, qword_10099CE38);
  v8.super.isa = [v4 traitCollection];
  v9 = v8.super.isa;
  v10 = sub_10076713C(v8).super.isa;

  v35 = sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v11 = [objc_allocWithZone(UIColor) initWithRed:0.450980392 green:0.450980392 blue:0.494117647 alpha:1.0];
  v12.super.isa = [objc_allocWithZone(UIColor) initWithRed:0.682352941 green:0.682352941 blue:0.698039216 alpha:1.0];
  v13.super.isa = v11;
  v14 = sub_100770DEC(v13, v12).super.isa;
  sub_10000A5D4(&unk_10094E7E0, qword_100785360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100783DD0;
  *(inited + 32) = NSFontAttributeName;
  v16 = sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  *(inited + 64) = v16;
  *(inited + 40) = v10;
  v17 = NSFontAttributeName;
  v34 = v10;
  sub_1000FC5F4(inited);
  swift_setDeallocating();
  sub_10000CFBC(inited + 32, &unk_100948B10, &unk_10078B4F0);
  v18 = objc_allocWithZone(NSMutableAttributedString);
  v19 = sub_10076FF6C();
  type metadata accessor for Key(0);
  sub_100038A88(&qword_100943320, type metadata accessor for Key, &unk_100783A7C);
  v20 = sub_10076FE3C().super.isa;

  v21 = [v18 initWithString:v19 attributes:v20];

  v22 = swift_initStackObject();
  *(v22 + 32) = NSForegroundColorAttributeName;
  *(v22 + 16) = xmmword_100784500;
  *(v22 + 40) = v14;
  *(v22 + 64) = v35;
  *(v22 + 72) = v17;
  *(v22 + 104) = v16;
  *(v22 + 80) = v36;
  v23 = NSForegroundColorAttributeName;
  v24 = v14;
  v25 = v36.super.isa;
  sub_1000FC5F4(v22);
  swift_setDeallocating();
  sub_10000A5D4(&unk_100948B10, &unk_10078B4F0);
  swift_arrayDestroy();
  v26.super.isa = sub_10076FE3C().super.isa;

  v27 = v21;
  result = [v27 string];
  if (result)
  {
    v29 = result;

    v30 = sub_10076FF6C();
    v31 = [v29 rangeOfString:v30 options:1];
    v33 = v32;

    [v27 addAttributes:v26.super.isa range:{v31, v33}];
    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_100037830()
{
  v0 = sub_10076438C();
  v2 = v1;
  v3 = sub_1007642EC();
  sub_10003726C(v0, v2, v3, v4);

  return result;
}

uint64_t sub_1000378AC(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_10076699C();
}

uint64_t sub_1000378F8(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_1007669BC();
}

uint64_t sub_100037954@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension33MetadataRibbonHighlightedTextView_itemType;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &qword_100943318, &qword_100799480);
}

uint64_t sub_1000379BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension33MetadataRibbonHighlightedTextView_itemType;
  swift_beginAccess();
  sub_10003837C(a1, v1 + v3, &qword_100943318, &qword_100799480);
  return swift_endAccess();
}

uint64_t sub_100037A98(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC20ProductPageExtension33MetadataRibbonHighlightedTextView_labelMaxWidth;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_100037B64(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3 + *a3;
  swift_beginAccess();
  return *v4;
}

uint64_t sub_100037BAC(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC20ProductPageExtension33MetadataRibbonHighlightedTextView_truncationLegibilityThreshold;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_100037C6C(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_1007669DC();
}

uint64_t sub_100037CA8()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension33MetadataRibbonHighlightedTextView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100037CEC(char a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension33MetadataRibbonHighlightedTextView_allowsTruncation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100037D9C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension33MetadataRibbonHighlightedTextView_id;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &qword_100943310, &unk_100784150);
}

uint64_t sub_100037E04(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension33MetadataRibbonHighlightedTextView_id;
  swift_beginAccess();
  sub_10003837C(a1, v1 + v3, &qword_100943310, &unk_100784150);
  return swift_endAccess();
}

uint64_t sub_100037ED4()
{
  v0 = sub_10000A5D4(&unk_100942850, &unk_100784420);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - v2;
  v4 = sub_10076AC8C();
  sub_10000DB18(v4, static MetadataRibbonHighlightedTextViewLayout.Metrics.standard);
  sub_10000A61C(v4, static MetadataRibbonHighlightedTextViewLayout.Metrics.standard);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  sub_10075FECC();
  sub_10076AC6C();
  return (*(v1 + 8))(v3, v0);
}

void sub_100038014(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (sub_10077084C())
  {

    v5 = 6.0;
    goto LABEL_12;
  }

  v6 = sub_10076FF9C();
  v8 = v7;
  if (v6 != sub_10076FF9C() || v8 != v9)
  {
    v11 = sub_10077167C();

    if (v11)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

LABEL_10:
  v12 = sub_10077088C();

  v5 = 2.0;
  if (v12)
  {
    v5 = 4.0;
  }

LABEL_12:
  *a2 = v5;
}

uint64_t static MetadataRibbonHighlightedTextViewLayout.Metrics.standard.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10093F4E0 != -1)
  {
    swift_once();
  }

  v2 = sub_10076AC8C();
  v3 = sub_10000A61C(v2, static MetadataRibbonHighlightedTextViewLayout.Metrics.standard);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t type metadata accessor for MetadataRibbonHighlightedTextView(uint64_t a1)
{
  result = qword_1009432F8;
  if (!qword_1009432F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100038230(uint64_t a1)
{
  sub_10076AC8C();
  if (v1 <= 0x3F)
  {
    sub_100038324(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100038324(uint64_t a1)
{
  if (!qword_100943308)
  {
    sub_1007668DC();
    v1 = sub_1007711AC();
    if (!v2)
    {
      atomic_store(v1, &qword_100943308);
    }
  }
}

uint64_t sub_10003837C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000A5D4(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_1000383E4()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension33MetadataRibbonHighlightedTextView_metrics;
  if (qword_10093F4E0 != -1)
  {
    swift_once();
  }

  v2 = sub_10076AC8C();
  v3 = sub_10000A61C(v2, static MetadataRibbonHighlightedTextViewLayout.Metrics.standard);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  v4 = v0 + OBJC_IVAR____TtC20ProductPageExtension33MetadataRibbonHighlightedTextView_id;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  v5 = OBJC_IVAR____TtC20ProductPageExtension33MetadataRibbonHighlightedTextView_itemType;
  v6 = sub_1007668DC();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = v0 + OBJC_IVAR____TtC20ProductPageExtension33MetadataRibbonHighlightedTextView_labelMaxWidth;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v0 + OBJC_IVAR____TtC20ProductPageExtension33MetadataRibbonHighlightedTextView_truncationLegibilityThreshold;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension33MetadataRibbonHighlightedTextView_allowsTruncation) = 2;
  sub_10077156C();
  __break(1u);
}

double sub_100038564(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v39 = a2;
  v33 = a1;
  v4 = sub_10076AC8C();
  v36 = *(v4 - 8);
  __chkstk_darwin(v4);
  v35 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076AC9C();
  v37 = *(v6 - 8);
  v38 = v6;
  __chkstk_darwin(v6);
  v34 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10076DA7C();
  v31 = *(v32 - 8);
  __chkstk_darwin(v32);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076DD3C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  __chkstk_darwin(v17);
  v19 = &v29 - v18;
  if (qword_10093F4E0 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A61C(v4, static MetadataRibbonHighlightedTextViewLayout.Metrics.standard);
  sub_10076DD2C();
  sub_10076D84C();
  v30 = v4;
  if (qword_10093F698 != -1)
  {
    swift_once();
  }

  v21 = sub_10076715C();
  v22 = sub_10000A61C(v21, qword_10099CE38);
  v41[3] = v21;
  v41[4] = sub_100038A88(&qword_10094B6A0, &type metadata accessor for MetadataRibbonTextStyle, &protocol conformance descriptor for MetadataRibbonTextStyle);
  v23 = sub_10000DB7C(v41);
  (*(*(v21 - 8) + 16))(v23, v22, v21);
  sub_10076DC8C();
  v24 = *(v11 + 8);
  v24(v13, v10);
  sub_10000CD74(v41);
  sub_10076AC7C();
  sub_10076DD1C();
  v24(v16, v10);
  sub_10076438C();
  (*(v11 + 16))(v16, v19, v10);
  sub_10076DA5C();
  sub_10076DA9C();
  sub_10076DA4C();
  (*(v31 + 8))(v9, v32);
  sub_10000A570(v41, v40);
  (*(v36 + 16))(v35, v20, v30);
  v25 = v34;
  sub_10076AC3C();
  sub_10076AC4C();
  v27 = v26;
  (*(v37 + 8))(v25, v38);
  sub_10000CD74(v41);
  v24(v19, v10);
  return v27;
}

uint64_t sub_100038A88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100038AD0(uint64_t a1)
{
  v1 = sub_10076B5BC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v18 - v10;
  swift_getKeyPath();
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  v12 = *(v6 + 8);
  v12(v11, v5);
  v13 = (*(v2 + 88))(v4, v1);
  if (v13 == enum case for Shelf.ContentType.annotation(_:))
  {
    v14 = 1;
    return v14 & 1;
  }

  if (v13 != enum case for Shelf.ContentType.productBadge(_:))
  {
    v14 = sub_10044C8CC();
    (*(v2 + 8))(v4, v1);
    return v14 & 1;
  }

  result = sub_1007633CC();
  v16 = result + 1;
  if (!__OFADD__(result, 1))
  {
    swift_getKeyPath();
    sub_10076338C();

    swift_getKeyPath();
    sub_10076F49C();

    v12(v8, v5);
    v17 = *(v18[1] + 16);

    v14 = v16 < v17;
    return v14 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100038D98()
{
  sub_10000CD74((v0 + 16));

  return swift_deallocClassInstance();
}

char *sub_100038E6C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v49 = swift_isaMask & *v4;
  v10 = sub_10076F9AC();
  v11 = *(v10 - 8);
  v50 = v10;
  v51 = v11;
  __chkstk_darwin(v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076771C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v18 - 8);
  v20 = &v42 - v19;
  v21 = &v5[qword_10099CA00];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v5[qword_10099CA08];
  *v22 = 0;
  *(v22 + 1) = 0;
  swift_weakInit();
  if (qword_100940EF0 != -1)
  {
    swift_once();
  }

  v23 = sub_10076D3DC();
  v24 = sub_10000A61C(v23, qword_1009A1AC8);
  v25 = *(v23 - 8);
  v48 = *(v25 + 16);
  v48(v20, v24, v23);
  v47 = *(v25 + 56);
  v47(v20, 0, 1, v23);
  v26 = *(v15 + 104);
  v42 = v15 + 104;
  v46 = enum case for DirectionalTextAlignment.none(_:);
  v45 = v26;
  v26(v17);
  v44 = sub_1007626BC();
  v27 = objc_allocWithZone(v44);
  v43 = v14;
  v28 = sub_1007626AC();
  *&v5[qword_10099C9F0] = v28;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v29 = v28;
  sub_10076F95C();
  sub_10000CFBC(&v53, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v55, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  v30 = *(v51 + 8);
  v51 += 8;
  v30(v13, v50);
  if (qword_100940EF8 != -1)
  {
    swift_once();
  }

  v31 = sub_10000A61C(v23, qword_1009A1AE0);
  v48(v20, v31, v23);
  v47(v20, 0, 1, v23);
  v45(v17, v46, v43);
  v32 = objc_allocWithZone(v44);
  v33 = sub_1007626AC();
  *&v5[qword_10099C9F8] = v33;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v34 = v33;
  sub_10076F95C();
  sub_10000CFBC(&v53, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v55, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  v30(v13, v50);
  v37 = type metadata accessor for LegacyTodayCardCollectionViewCell(0, *(v49 + 640), v35, v36);
  v52.receiver = v5;
  v52.super_class = v37;
  v38 = objc_msgSendSuper2(&v52, "initWithFrame:", a1, a2, a3, a4);
  v39 = [v38 contentView];
  [v39 addSubview:*&v38[qword_10099C9F0]];

  v40 = [v38 contentView];
  [v40 addSubview:*&v38[qword_10099C9F8]];

  return v38;
}

uint64_t sub_1000394AC(uint64_t result, char a2)
{
  v3 = v2 + qword_10099CA00;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1000394C8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_10099CA08);
  *v3 = a1;
  v3[1] = a2;
  return swift_unknownObjectRelease();
}

double sub_1000394F4()
{
  v1 = sub_10077164C();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded) == 1)
  {
    v6 = [v0 traitCollection];
    v7 = sub_1005DEC48(v6, v0);
  }

  else
  {
    if (qword_100941268 != -1)
    {
      swift_once();
    }

    v8 = sub_10076D9AC();
    sub_10000A61C(v8, qword_1009A2490);
    sub_10076D17C();
    sub_10076D40C();
    v7 = v9;
    (*(v2 + 8))(v5, v1);
  }

  return v7;
}

double sub_10003967C()
{
  v0 = sub_10077164C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100941278 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D9AC();
  sub_10000A61C(v4, qword_1009A24C0);
  sub_10076D17C();
  sub_10076D40C();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_1000397BC()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = sub_10076C38C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v8 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v8 - 8);
  v10 = v36 - v9 + 16;
  v13 = type metadata accessor for LegacyTodayCardCollectionViewCell(0, *((v3 & v2) + 0x280), v11, v12);
  v39.receiver = v1;
  v39.super_class = v13;
  objc_msgSendSuper2(&v39, "layoutSubviews");
  v14 = [v1 contentView];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v36[0] = v16;
  v36[1] = v18;
  v37 = v20;
  v38 = v22;
  sub_100039BC0(v36);
  v23 = [v1 contentView];
  [v23 layoutMargins];
  v25 = v24;
  v27 = v26;

  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded) == 1)
  {
    v28 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_10003BDD4(v1 + v28, v10);
    if ((*(v5 + 48))(v10, 1, v4))
    {
      sub_10000CFBC(v10, &unk_1009434A0, &unk_100787B90);
    }

    else
    {
      (*(v5 + 16))(v7, v10, v4);
      sub_10000CFBC(v10, &unk_1009434A0, &unk_100787B90);
      v29 = [v1 traitCollection];
      sub_10076C31C();
      sub_10076C31C();
      [v29 layoutDirection];
      sub_1007708DC();
      v25 = v30;
      v27 = v31;

      (*(v5 + 8))(v7, v4);
    }
  }

  v36[0] = v16 + v25;
  v37 = v20 - (v27 + v25);
  v32.n128_f64[0] = sub_10003A02C(v36);
  v33 = (*((swift_isaMask & *v1) + 0x338))(v36, v32);
  return (*((swift_isaMask & *v1) + 0x1A8))(v33);
}

void sub_100039B78(void *a1)
{
  v1 = a1;
  sub_1000397BC();
}

void sub_100039BC0(CGFloat *a1)
{
  v2 = v1;
  v4 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v4 - 8);
  v6 = &v50 - v5;
  if (*&v1[qword_10099CA08])
  {
    v7 = *&v1[qword_10099CA08 + 8];
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 16);
    swift_unknownObjectRetain();
    v50 = v9(ObjectType, v7);
    v10 = v9(ObjectType, v7);
    v11 = [v10 isHidden];

    if (v11)
    {
      swift_unknownObjectRelease();
      v12 = v50;
    }

    else
    {
      if (*(v2 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded) == 1)
      {
        if ((*(v7 + 72))(ObjectType, v7))
        {
          sub_1003DBCB0();
          v14 = v13;
          v16 = v15;
        }

        else
        {
          v29 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
          swift_beginAccess();
          sub_10003BDD4(v2 + v29, v6);
          v30 = [v2 traitCollection];
          sub_1003DF334(v6, v30);
          v14 = v31;
          v16 = v32;

          sub_10000CFBC(v6, &unk_1009434A0, &unk_100787B90);
        }

        v33 = [v2 traitCollection];
        v34 = sub_10077070C();

        [v50 layoutMargins];
        [v50 setLayoutMargins:?];
        [v50 layoutMargins];
        if ((v34 & 1) == 0)
        {
          v14 = v16;
        }
      }

      else
      {
        v17 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
        swift_beginAccess();
        sub_10003BDD4(v2 + v17, v6);
        LOBYTE(v17) = *(v2 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory);
        v18 = [v2 traitCollection];
        sub_1003DF8CC(v6, v17, v18);
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v14 = v25;

        sub_10000CFBC(v6, &unk_1009434A0, &unk_100787B90);
        v26 = v24;
        v27 = v22;
        v28 = v20;
      }

      [v50 setLayoutMargins:{v28, v27, v26, v14}];
      v35 = [v2 contentView];
      [v35 bounds];
      v37 = v36;
      v39 = v38;

      [v50 sizeThatFits:{v37, v39}];
      v41 = v40;
      v42 = *a1;
      v43 = a1[1];
      v44 = a1[2];
      v45 = a1[3];
      v52.origin.x = *a1;
      v52.origin.y = v43;
      v52.size.width = v44;
      v52.size.height = v45;
      MinX = CGRectGetMinX(v52);
      v53.origin.x = v42;
      v53.origin.y = v43;
      v53.size.width = v44;
      v53.size.height = v45;
      v47 = CGRectGetMaxY(v53) - v41;
      v54.origin.x = v42;
      v54.origin.y = v43;
      v54.size.width = v44;
      v54.size.height = v45;
      Width = CGRectGetWidth(v54);
      [v50 setFrame:{MinX, v47, Width, v41}];
      v55.origin.x = MinX;
      v55.origin.y = v47;
      v55.size.width = Width;
      v55.size.height = v41;
      Height = CGRectGetHeight(v55);
      swift_unknownObjectRelease();

      a1[3] = v45 - Height;
    }
  }
}

double sub_10003A02C(CGFloat *a1)
{
  v3 = sub_1000394F4();
  v36 = sub_10003967C();
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  if (v1[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded] == 1)
  {
    sub_1003DBCB0();
    v9 = v8;
  }

  else
  {
    v10 = [v1 contentView];
    [v10 layoutMargins];
    v9 = v11;
  }

  v12 = v7 - v9;
  v13 = *&v1[qword_10099C9F0];
  [v13 measurementsWithFitting:v1 in:{v12, v6}];
  v15 = v14;
  v17 = v16;
  v34 = v18;
  v37.origin.x = v5;
  v37.origin.y = v4;
  v37.size.width = v12;
  v37.size.height = v6;
  MinX = CGRectGetMinX(v37);
  v38.origin.x = v5;
  v38.origin.y = v4;
  v38.size.width = v12;
  v38.size.height = v6;
  v20 = CGRectGetMinY(v38) + v3 - v17;
  v39.origin.x = v5;
  v39.origin.y = v4;
  v39.size.width = v12;
  v39.size.height = v6;
  Width = CGRectGetWidth(v39);
  [v1 bounds];
  sub_100770A4C();
  [v13 setFrame:?];
  v40.origin.x = MinX;
  v40.origin.y = v20;
  v40.size.width = Width;
  v40.size.height = v15;
  v22 = CGRectGetMaxY(v40) - v34;
  v23 = *&v1[qword_10099C9F8];
  v41.origin.x = v5;
  v41.origin.y = v4;
  v41.size.width = v12;
  v41.size.height = v6;
  v24 = CGRectGetWidth(v41);
  v42.origin.x = v5;
  v42.origin.y = v4;
  v42.size.width = v12;
  v42.size.height = v6;
  [v23 measurementsWithFitting:v1 in:{v24, CGRectGetHeight(v42) - v22}];
  v26 = v25;
  v28 = v27;
  v35 = v29;
  v43.origin.x = v5;
  v43.origin.y = v4;
  v43.size.width = v12;
  v43.size.height = v6;
  v30 = CGRectGetMinX(v43);
  v44.origin.x = v5;
  v44.origin.y = v4;
  v44.size.width = v12;
  v44.size.height = v6;
  v31 = CGRectGetWidth(v44);
  [v1 bounds];
  sub_100770A4C();
  [v23 setFrame:?];
  v45.origin.x = v30;
  v45.origin.y = v22 + v36 - v28;
  v45.size.width = v31;
  v45.size.height = v26;
  v32 = CGRectGetMaxY(v45) - v35;
  a1[1] = v4 + v32;
  result = v6 - v32;
  a1[3] = result;
  return result;
}

uint64_t sub_10003A2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LegacyTodayCardCollectionViewCell(0, *((swift_isaMask & *v4) + 0x280), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  objc_msgSendSuper2(&v7, "prepareForReuse");
  return sub_1006C7B40(v5, &off_100884E38);
}

void sub_10003A334(void *a1)
{
  v4 = a1;
  sub_10003A2BC(v4, v1, v2, v3);
}

void sub_10003A37C()
{
  sub_1003DFB08();
  if (*(v0 + qword_10099CA08))
  {
    v1 = *(v0 + qword_10099CA08 + 8);
    ObjectType = swift_getObjectType();
    v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded);
    v4 = *(v1 + 32);
    swift_unknownObjectRetain();
    v4(v3, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  if (*(v0 + qword_10099CA08))
  {
    if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded))
    {
      v5 = 0.0;
    }

    else
    {
      v5 = 20.0;
    }

    v6 = *(v0 + qword_10099CA08 + 8);
    v7 = swift_getObjectType();
    v8 = *(v6 + 16);
    swift_unknownObjectRetain();
    v9 = v8(v7, v6);
    swift_unknownObjectRelease();
    [v9 _setContinuousCornerRadius:v5];
  }
}

id sub_10003A4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v60 = a4;
  v7 = a2;
  v57 = swift_isaMask & *v4;
  v9 = sub_10076C7EC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v13 - 8);
  v15 = &v56 - v14;
  v16 = sub_10076C38C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v59 = a3;
  v18(v15, a3, v16);
  (*(v17 + 56))(v15, 0, 1, v16);
  v19 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_10003BD64(v15, &v5[v19]);
  swift_endAccess();
  sub_1003DC6B0(v7);
  v20 = [v5 backgroundView];
  if (v20)
  {
    v21 = v20;
    v22 = sub_10076C70C();
    if (!v22)
    {
      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      v22 = sub_100770D8C();
    }

    v23 = v22;
    [v21 setBackgroundColor:v22];
  }

  v58 = v7;
  v24 = *&v5[qword_10099C9F0];
  sub_10076C82C();
  if (v25)
  {
    v26 = sub_10076FF6C();
  }

  else
  {
    v26 = 0;
  }

  [v24 setText:v26];

  sub_10076C80C();
  v27 = sub_10076C7AC();
  v28 = *(v10 + 8);
  v28(v12, v9);
  [v24 setTextColor:v27];

  v29 = a1;
  v30 = UIAccessibilityTraitButton;
  [v24 setAccessibilityTraits:UIAccessibilityTraitButton];
  v31 = *&v5[qword_10099C9F8];
  v32 = v29;
  sub_10076C81C();
  if (v33)
  {
    v34 = sub_10076FF6C();
  }

  else
  {
    v34 = 0;
  }

  v35 = v58;
  [v31 setText:v34];

  sub_10076C80C();
  v36 = sub_10076C79C();
  v28(v12, v9);
  [v31 setTextColor:v36];

  [v31 setAccessibilityTraits:v30];
  v37 = [v5 backgroundView];
  v38 = v59;
  if (v37)
  {
    v39 = v37;
    v40 = sub_10076C70C();
    if (!v40)
    {
      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      v40 = sub_100770D8C();
    }

    v41 = v40;
    [v39 setBackgroundColor:v40];
  }

  v42 = [v5 contentView];
  v43 = [v5 traitCollection];
  if (v35 != 4)
  {
    sub_10076C31C();
    sub_10076C31C();
  }

  [v43 layoutDirection];
  sub_1007708DC();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;

  [v42 setLayoutMargins:{v45, v47, v49, v51}];
  v54 = type metadata accessor for LegacyTodayCardCollectionViewCell(0, *(v57 + 640), v52, v53);
  return [v5 setNeedsLayout];
}

void sub_10003AA54(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v8 - 8);
  v10 = &v46 - v9;
  if ((a3 & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 112))(ObjectType, a2);
    v12 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_10003BD64(v10, &v4[v12]);
    swift_endAccess();
    v13 = (*(a2 + 160))(ObjectType, a2);
    v4[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] = v13;
    if (v13 == 4)
    {
      v14 = [v4 contentView];
      [v14 setClipsToBounds:1];
    }

    [v4 setNeedsLayout];
    v15 = (*(a2 + 136))(ObjectType, a2);
    sub_1003DC6B0(v15);
  }

  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;
    v18 = *(v16 + qword_10099CA08);
    if (v18 && *&v4[qword_10099CA08])
    {
      v46 = *(v16 + qword_10099CA08 + 8);
      v19 = *&v4[qword_10099CA08 + 8];
      v20 = swift_getObjectType();
      v21 = *(v19 + 120);
      v22 = a1;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v21(v18, v46, a3 & 1, v20, v19);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (a3)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v23 = a1;
      if (a3)
      {
LABEL_14:

        return;
      }
    }

    v24 = qword_10099C9F0;
    v25 = *&v4[qword_10099C9F0];
    v26 = [*&v17[qword_10099C9F0] text];
    [v25 setText:v26];

    v27 = [*&v17[v24] textColor];
    [v25 setTextColor:v27];

    v28 = qword_10099C9F8;
    v29 = *&v4[qword_10099C9F8];
    v30 = [*&v17[qword_10099C9F8] text];
    [v29 setText:v30];

    v31 = [*&v17[v28] textColor];
    [v29 setTextColor:v31];

    v32 = [v4 backgroundView];
    if (v32)
    {
      v33 = v32;
      v34 = [v17 backgroundView];
      v35 = [v34 backgroundColor];

      [v33 setBackgroundColor:v35];
    }

    v36 = [v4 contentView];
    v37 = [v17 contentView];
    [v37 layoutMargins];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;

    [v36 setLayoutMargins:{v39, v41, v43, v45}];
    [v4 setNeedsLayout];
    goto LABEL_14;
  }
}

double sub_10003AE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000A570(a1, v9);
  sub_10000A5D4(&unk_100942830, &qword_100782680);
  sub_10076C84C();
  if (swift_dynamicCast())
  {
    v5 = sub_10076C83C();
    if (v5)
    {
      v6 = v5;
      v7 = *(v3 + qword_10099CA08);
      if (v7)
      {
        v9[3] = sub_100762DFC();
        v9[4] = sub_10003BD0C();
        v9[0] = v6;
        v8[3] = swift_getObjectType();
        v8[0] = v7;
        swift_unknownObjectRetain_n();

        sub_10075FA0C();
        swift_unknownObjectRelease();

        sub_10000CD74(v8);
        sub_10000CFBC(v9, &unk_10094F720, &unk_100785540);
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_10003AFDC(uint64_t result)
{
  if (*(v1 + qword_10099CA08))
  {
    v2 = result;
    v3 = *(v1 + qword_10099CA08 + 8);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 128);
    swift_unknownObjectRetain();
    v5(v2, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10003B080(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for LegacyTodayCardCollectionViewCell(0, *((swift_isaMask & *v4) + 0x280), a3, a4);
  v13.receiver = v4;
  v13.super_class = v6;
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", a1);
  v7 = [v4 traitCollection];
  v8 = [v7 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v8 != result))
  {
    if (qword_100941270 != -1)
    {
      swift_once();
    }

    v10 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
    sub_10000A61C(v10, qword_1009A24A8);
    v11 = v4;
    sub_10075FDCC();

    sub_100770E7C();
    if (qword_100941280 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v10, qword_1009A24D8);
    v12 = v11;
    sub_10075FDCC();

    return sub_100770E7C();
  }

  return result;
}

void sub_10003B254(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = a1;
  sub_10003B080(a3, v8, v6, v7);
}

void sub_10003B2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = &selRef_initWithTabBarSystemItem_tag_;
  v9 = &off_100911000;
  if (a3)
  {
    ObjectType = swift_getObjectType();
    v12 = *(a4 + 16);
    v13 = v12(ObjectType, a4);
    [v13 removeFromSuperview];

    v14 = swift_getObjectType();
    v15 = v12(v14, a4);
    [v15 _setContinuousCornerRadius:0.0];

    v9 = &off_100911000;
    v16 = v12(v14, a4);
    v17 = [v16 layer];

    [v17 setMaskedCorners:15];
    v8 = &selRef_initWithTabBarSystemItem_tag_;
  }

  if (a1)
  {
    v18 = v8;
    v19 = swift_getObjectType();
    v20 = *(a2 + 16);
    swift_unknownObjectRetain();
    v21 = v20(v19, a2);
    v22 = v21;
    v23 = 20.0;
    if (v5[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
    {
      v23 = 0.0;
    }

    [v21 v18[85]];
    v24 = [v22 v9[274]];
    [v24 setMaskedCorners:12];

    v25 = [v5 contentView];
    [v25 addSubview:v22];
    swift_unknownObjectRelease();
  }
}

void sub_10003B4E0()
{
  sub_1003DC268();
  v1 = [v0 contentView];
  v2 = [*&v0[qword_10099C9F0] text];
  if (v2)
  {
    v3 = v2;
    v4 = sub_10076FF9C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v33 = v4;
  v34 = v6;
  v7 = [*&v0[qword_10099C9F8] text];
  if (v7)
  {
    v8 = v7;
    v9 = sub_10076FF9C();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v35 = v9;
  v36 = v11;
  if (*&v0[qword_10099CA08])
  {
    v12 = *&v0[qword_10099CA08 + 8];
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 16);
    swift_unknownObjectRetain();
    v15 = v14(ObjectType, v12);
    swift_unknownObjectRelease();
    v16 = [v15 accessibilityLabel];

    if (v16)
    {
      v17 = sub_10076FF9C();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    v37 = v17;
    v38 = v19;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
LABEL_14:
  if (v20 <= 3)
  {
    v22 = 3;
  }

  else
  {
    v22 = v20;
  }

  v23 = v22 + 1;
  v24 = 16 * v20 + 40;
  while (1)
  {
    if (v20 == 3)
    {
      sub_10000A5D4(&unk_100943470, &qword_10078C740);
      swift_arrayDestroy();
      sub_10000A5D4(&unk_10094BB60, &unk_100785530);
      sub_10003BCA8();
      sub_10076FEFC();

      v31 = sub_10076FF6C();

      [v1 setAccessibilityLabel:v31];

      return;
    }

    if (v23 == ++v20)
    {
      break;
    }

    v25 = v24 + 16;
    v26 = *&v32[v24];
    v24 += 16;
    if (v26)
    {
      v27 = *&v32[v25 - 24];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_10049D954(0, *(v21 + 2) + 1, 1, v21);
      }

      v29 = *(v21 + 2);
      v28 = *(v21 + 3);
      if (v29 >= v28 >> 1)
      {
        v21 = sub_10049D954((v28 > 1), v29 + 1, 1, v21);
      }

      *(v21 + 2) = v29 + 1;
      v30 = &v21[16 * v29];
      *(v30 + 4) = v27;
      *(v30 + 5) = v26;
      goto LABEL_14;
    }
  }

  __break(1u);
}

Class sub_10003B7E8(void *a1)
{
  v1 = a1;
  v2 = sub_10003B858();

  if (v2)
  {
    v3.super.isa = sub_1007701AC().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

uint64_t sub_10003B858()
{
  sub_10000A5D4(&unk_1009434B0, &unk_100785550);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100783DD0;
  v2 = [v0 contentView];
  *(v1 + 56) = sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  *(v1 + 32) = v2;
  if (*&v0[qword_10099CA08] && (v3 = *&v0[qword_10099CA08 + 8], ObjectType = swift_getObjectType(), v5 = *(v3 + 144), swift_unknownObjectRetain(), v6 = v5(ObjectType, v3), swift_unknownObjectRelease(), v6))
  {
    v7 = v6;
  }

  else
  {

    v7 = _swiftEmptyArrayStorage;
  }

  sub_1000F94EC(v7);
  return v1;
}

void sub_10003B978(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_1007701BC();
  }

  else
  {
    v4 = 0;
  }

  v7 = a1;
  sub_10003B9F0(v4, v7, v5, v6);
}

void sub_10003B9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_isaMask & *v4;
  if (a1)
  {
    v6.super.isa = sub_1007701AC().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = type metadata accessor for LegacyTodayCardCollectionViewCell(0, *(v5 + 640), a3, a4);
  v8.receiver = v4;
  v8.super_class = v7;
  objc_msgSendSuper2(&v8, "setAccessibilityElements:", v6.super.isa);
}

uint64_t sub_10003BAA8()
{
  swift_unknownObjectRelease();

  return swift_weakDestroy();
}

id sub_10003BB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LegacyTodayCardCollectionViewCell(0, *((swift_isaMask & *v4) + 0x280), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_10003BB64(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_weakDestroy();
}

double sub_10003BC40(uint64_t a1)
{
  sub_10003BC94(a1);

  return result;
}

unint64_t sub_10003BCA8()
{
  result = qword_100943480;
  if (!qword_100943480)
  {
    sub_10000CE78(&unk_10094BB60, &unk_100785530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100943480);
  }

  return result;
}

unint64_t sub_10003BD0C()
{
  result = qword_100943490;
  if (!qword_100943490)
  {
    sub_100762DFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100943490);
  }

  return result;
}

uint64_t sub_10003BD64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003BDD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 initializeBufferWithCopyOfBuffer for TodayCardGridTracker.TrackedSectionKey(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10003BE88(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10003BED0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10003BF20@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, double a14@<D6>, double a15@<D7>, double a16, double a17)
{
  v81 = a6;
  v79 = a5;
  v93 = a4;
  v96 = a3;
  v97 = a2;
  v99 = a14;
  v100 = a15;
  v101 = a1;
  v98 = a7;
  v86 = sub_10000A5D4(&qword_100942908, &unk_1007A3F70);
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v83 = &v75 - v19;
  v82 = sub_10076ABAC();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v78 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_10076B66C();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_10076EA6C();
  v95 = *(v91 - 8);
  __chkstk_darwin(v91);
  v23 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10076C36C();
  v94 = *(v24 - 8);
  __chkstk_darwin(v24);
  v77 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v90 = &v75 - v27;
  __chkstk_darwin(v28);
  v92 = &v75 - v29;
  __chkstk_darwin(v30);
  v32 = &v75 - v31;
  v33 = sub_10076B5BC();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v75 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10000A5D4(&qword_100942C40, &unk_100786C80);
  __chkstk_darwin(v37);
  v76 = &v75 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v41 = &v75 - v40;
  sub_100016E2C(v97, &v75 - v40, &qword_1009499A0, &qword_1007848B0);
  v42 = *(v37 + 48);
  v97 = v41;
  sub_100016E2C(v96, &v41[v42], &qword_1009499A0, &qword_1007848B0);
  swift_getKeyPath();
  sub_10000A5D4(&unk_100946720, &qword_100784820);
  sub_10076F49C();

  v96 = v34;
  v43 = v34;
  v44 = v33;
  v45 = (*(v43 + 88))(v36, v33);
  if (v45 == enum case for Shelf.ContentType.singleColumnList(_:))
  {
    v46 = v94;
    (*(v94 + 104))(v32, enum case for PageGrid.Direction.vertical(_:), v24);
    sub_10076202C();
    v47 = sub_10076EA4C();
    (*(v95 + 8))(v23, v91);
    if (v47)
    {
      sub_10076204C();
    }

    (*(v46 + 16))(v92, v32, v24);
    sub_1003CB618(1);
    sub_10076C33C();
    (*(v46 + 8))(v32, v24);
    return sub_10000CFBC(v97, &qword_100942C40, &unk_100786C80);
  }

  v75 = v23;
  v48 = v94;
  v49 = v95;
  if (v45 == enum case for Shelf.ContentType.twoColumnList(_:))
  {
    v50 = v90;
    v51 = v24;
    (*(v94 + 104))(v90, enum case for PageGrid.Direction.vertical(_:), v24);
    swift_getKeyPath();
    v52 = v87;
    sub_10076F49C();

    v53 = v88;
    v54 = v89;
    if ((*(v88 + 88))(v52, v89) == enum case for Shelf.ContentsMetadata.searchFocusTwoColumnList(_:))
    {
      (*(v53 + 96))(v52, v54);
      v55 = v80;
      v56 = v78;
      v57 = v52;
      v58 = v82;
      (*(v80 + 32))(v78, v57, v82);
      v59 = sub_10076AB9C();
      (*(v55 + 8))(v56, v58);
    }

    else
    {
      (*(v53 + 8))(v52, v54);
      v59 = 1;
    }

    v67 = v91;
    v68 = v49;
    v69 = v75;
    sub_10076202C();
    v70 = sub_10076EA4C();
    (*(v68 + 8))(v69, v67);
    if (v70 & 1) != 0 && (sub_10076204C())
    {
      v59 = 1;
    }

    (*(v48 + 16))(v92, v50, v51);
    sub_1003CB618(v59);
    sub_10076C33C();
    (*(v48 + 8))(v50, v51);
    return sub_10000CFBC(v97, &qword_100942C40, &unk_100786C80);
  }

  if (v45 == enum case for Shelf.ContentType.scrollablePill(_:))
  {
    v60 = v94;
    v61 = v92;
    v62 = v24;
    (*(v94 + 104))(v92, enum case for PageGrid.Direction.horizontal(_:), v24);
    v102 = 0x4020000000000000;
    sub_10001E290();
    v63 = v83;
    sub_10076C29C();
    v102 = 0x4020000000000000;
    v64 = v84;
    sub_10076C29C();
    (*(v60 + 16))(v77, v61, v62);
    sub_1004C8060(v63, v64);
    sub_10076C33C();
    v65 = *(v85 + 8);
    v66 = v86;
    v65(v64, v86);
    v65(v63, v66);
    (*(v60 + 8))(v61, v62);
    return sub_10000CFBC(v97, &qword_100942C40, &unk_100786C80);
  }

  v102 = v79;
  v103 = v81;
  v72 = v97;
  v73 = v76;
  sub_100016E2C(v97, v76, &qword_100942C40, &unk_100786C80);
  v74 = *(v37 + 48);
  sub_10003CEB0();
  sub_1007620BC();
  sub_10000CFBC(v72, &qword_100942C40, &unk_100786C80);
  sub_10000CFBC(v73 + v74, &qword_1009499A0, &qword_1007848B0);
  sub_10000CFBC(v73, &qword_1009499A0, &qword_1007848B0);
  return (*(v96 + 8))(v36, v44);
}

uint64_t sub_10003CA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_10003CE58();

  return sub_1007620BC();
}

uint64_t sub_10003CB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_10003CE58();

  return sub_1007620AC();
}

uint64_t sub_10003CC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16)
{
  v29[4] = a5;
  v29[5] = a6;
  v29[3] = a4;
  *&v29[1] = a13;
  *&v29[2] = a14;
  v29[0] = a1;
  v19 = sub_10000A5D4(&qword_100942C40, &unk_100786C80);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v22 = v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v29 - v24;
  v26 = *(v16 + 2);
  sub_100016E2C(a2, v29 - v24, &qword_1009499A0, &qword_1007848B0);
  sub_100016E2C(a3, &v25[*(v20 + 56)], &qword_1009499A0, &qword_1007848B0);
  v30 = *v16;
  v31 = v26;
  sub_100016E2C(v25, v22, &qword_100942C40, &unk_100786C80);
  v27 = *(v20 + 56);
  sub_1007620BC();
  sub_10000CFBC(v25, &qword_100942C40, &unk_100786C80);
  sub_10000CFBC(&v22[v27], &qword_1009499A0, &qword_1007848B0);
  return sub_10000CFBC(v22, &qword_1009499A0, &qword_1007848B0);
}

unint64_t sub_10003CE58()
{
  result = qword_1009434D0;
  if (!qword_1009434D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009434D0);
  }

  return result;
}

unint64_t sub_10003CEB0()
{
  result = qword_1009434D8;
  if (!qword_1009434D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009434D8);
  }

  return result;
}

uint64_t sub_10003CF64(uint64_t a1, char *a2)
{
  v55._countAndFlagsBits = a1;
  v55._object = a2;
  v44 = sub_10000A5D4(&unk_100958FE0, qword_1007A5B10);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v41 - v3;
  v4 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v4 - 8);
  v54 = &v41 - v5;
  v6 = sub_10075F65C();
  v52 = *(v6 - 8);
  v53 = v6;
  __chkstk_darwin(v6);
  v51 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100765F6C();
  v48 = *(v8 - 8);
  v49 = v8;
  __chkstk_darwin(v8);
  v50 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100766EDC();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v45 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076F4FC();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10000A5D4(&unk_100958150, &unk_100786630);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - v13;
  v15 = sub_10076C15C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v19 - 8);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v41 - v23;
  v25 = sub_10075DB7C();
  v57 = *(v25 - 8);
  __chkstk_darwin(v25);
  v27 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v2 + OBJC_IVAR____TtC20ProductPageExtension25StoreNavigationController_objectGraph);
  if (result)
  {
    *&v60 = 0;
    *(&v60 + 1) = 0xE000000000000000;
    v56 = result;

    sub_10077145C(29);

    *&v60 = 0xD00000000000001BLL;
    *(&v60 + 1) = 0x80000001007CE990;
    sub_1007700CC(v55);
    sub_10075DB6C();

    result = (*(v57 + 48))(v24, 1, v25);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v29 = v57;
      (*(v57 + 32))(v27, v24, v25);
      v62 = 0;
      v60 = 0u;
      v61 = 0u;
      v30 = *(v16 + 104);
      v41 = v18;
      v30(v18, enum case for FlowPage.product(_:), v15);
      v31 = *(v29 + 16);
      v55._object = v27;
      v31(v21, v27, v25);
      (*(v29 + 56))(v21, 0, 1, v25);
      v32 = sub_10076096C();
      (*(*(v32 - 8) + 56))(v14, 1, 1, v32);
      v58 = 0u;
      v59 = 0u;
      sub_10076F4DC();
      (*(v46 + 104))(v45, enum case for FlowPresentationContext.infer(_:), v47);
      (*(v48 + 104))(v50, enum case for FlowAnimationBehavior.infer(_:), v49);
      (*(v52 + 104))(v51, enum case for FlowOrigin.inapp(_:), v53);
      sub_10076FA2C();
      v33 = sub_10075F63C();
      swift_allocObject();
      v34 = sub_10075F5EC();
      v35 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
      v36 = v54;
      sub_10076F63C();
      v37 = *(v35 - 8);
      if ((*(v37 + 48))(v36, 1, v35) == 1)
      {
        (*(v57 + 8))(v55._object, v25);

        return sub_10000CFBC(v36, &unk_100943200, &unk_100785840);
      }

      else
      {
        *(&v61 + 1) = v33;
        v62 = sub_10003F08C(&qword_1009435E0, 255, &type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
        *&v60 = v34;
        v38 = v42;
        v39 = v43;
        v40 = v44;
        (*(v42 + 104))(v43, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v44);

        sub_10076F6CC();

        (*(v38 + 8))(v39, v40);
        (*(v57 + 8))(v55._object, v25);
        sub_10000CD74(&v60);
        return (*(v37 + 8))(v36, v35);
      }
    }
  }

  return result;
}

void sub_10003D9DC(int a1, id a2)
{
  v3 = [a2 navigationBar];
  [a2 pageMarginInsets];
  [v3 setLayoutMargins:?];
}

uint64_t sub_10003DB8C(uint64_t a1)
{
  v3 = [v1 viewControllers];
  sub_10003F040();
  v4 = sub_1007701BC();

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    goto LABEL_11;
  }

  result = sub_10077158C();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = sub_10077149C();
LABEL_6:
    v7 = v6;

    v14[0] = v7;
    sub_10000A5D4(&qword_1009435B8, &qword_100785828);
    if (swift_dynamicCast())
    {
      if (*(&v12 + 1))
      {
        sub_100012498(&v11, v14);
        v8 = v15;
        v9 = v16;
        sub_10000CF78(v14, v15);
        v10 = (*(v9 + 8))(a1, v8, v9);
        sub_10000CD74(v14);
        return v10 & 1;
      }

LABEL_12:
      sub_10000CFBC(&v11, &unk_1009435C0, &unk_100785830);
      v10 = 0;
      return v10 & 1;
    }

LABEL_11:
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    goto LABEL_12;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_10003DD1C(uint64_t a1)
{
  v3 = [v1 viewControllers];
  sub_10003F040();
  v4 = sub_1007701BC();

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    goto LABEL_11;
  }

  result = sub_10077158C();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = sub_10077149C();
LABEL_6:
    v7 = v6;

    v14[0] = v7;
    sub_10000A5D4(&qword_1009435A8, &qword_100785818);
    if (swift_dynamicCast())
    {
      if (*(&v12 + 1))
      {
        sub_100012498(&v11, v14);
        v8 = v15;
        v9 = v16;
        sub_10000CF78(v14, v15);
        v10 = (*(v9 + 8))(a1, v8, v9);
        sub_10000CD74(v14);
        return v10 & 1;
      }

LABEL_12:
      sub_10000CFBC(&v11, &qword_1009435B0, &qword_100785820);
      v10 = 0;
      return v10 & 1;
    }

LABEL_11:
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    goto LABEL_12;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

BOOL sub_10003DF78()
{
  v1 = [v0 viewControllers];
  sub_10003F040();
  v2 = sub_1007701BC();

  if (v2 >> 62)
  {
    if (sub_10077158C())
    {
      goto LABEL_3;
    }

LABEL_11:

    return 0;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = sub_10077149C();
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_15;
    }

    v3 = *(v2 + 32);
  }

  v4 = v3;

  sub_10076DE6C();
  v5 = swift_dynamicCastClass();

  if (v5)
  {
    v6 = [v0 viewControllers];
    v7 = sub_1007701BC();

    if (!(v7 >> 62))
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:

      return v8 == 1;
    }

LABEL_15:
    v8 = sub_10077158C();
    goto LABEL_9;
  }

  return 0;
}

uint64_t sub_10003E0E0(uint64_t a1)
{
  v2 = a1;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for StoreNavigationController();
  v3 = objc_msgSendSuper2(&v12, "popToRootViewControllerAnimated:", v2 & 1);
  if (v3)
  {
    v4 = v3;
    sub_10003F040();
    v5 = sub_1007701BC();

    return v5;
  }

  v6 = [v1 viewControllers];
  sub_10003F040();
  v7 = sub_1007701BC();

  if (!(v7 >> 62))
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  result = sub_10077158C();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = sub_10077149C();
    goto LABEL_8;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v7 + 32);
LABEL_8:
    v10 = v9;

    v11 = [v10 contentScrollView];
    [v11 _scrollToTopIfPossible:v2 & 1];

    return 0;
  }

  __break(1u);
  return result;
}

BOOL sub_10003E2B8(uint64_t a1, uint64_t a2)
{
  if (sub_10075E13C())
  {
    v5 = [v2 viewControllers];
    sub_10003F040();
    v6 = sub_1007701BC();

    if (v6 >> 62)
    {
      v7 = sub_10077158C();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v7 > 1;
  }

  else
  {
    sub_10003F0D4(a2, v19);
    v9 = v20;
    if (v20)
    {
      v10 = sub_10000CF78(v19, v20);
      v11 = *(v9 - 8);
      v12 = __chkstk_darwin(v10);
      v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 16))(v14, v12);
      v15 = sub_10077165C();
      (*(v11 + 8))(v14, v9);
      sub_10000CD74(v19);
    }

    else
    {
      v15 = 0;
    }

    v16 = type metadata accessor for StoreNavigationController();
    v18.receiver = v2;
    v18.super_class = v16;
    v17 = objc_msgSendSuper2(&v18, "canPerformAction:withSender:", a1, v15);
    swift_unknownObjectRelease();
    return v17;
  }
}

double sub_10003E6CC()
{
  v1 = v0;
  v2 = sub_10076F2EC();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10075F37C();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v0 viewControllers];
  sub_10003F040();
  v9 = sub_1007701BC();

  if (v9 >> 62)
  {
    if (sub_10077158C())
    {
      goto LABEL_3;
    }

LABEL_17:

    return result;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

LABEL_3:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = sub_10077149C();
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_22;
    }

    v10 = *(v9 + 32);
  }

  v27 = v10;

  type metadata accessor for TabPlaceholderViewController(0);
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension25StoreNavigationController_objectGraph];
    if (v12)
    {
      v8 = v4;
      v13 = v4[2];
      v25 = v11;
      v13(v7, v11 + OBJC_IVAR____TtC20ProductPageExtension28TabPlaceholderViewController_storeTab, v3);

      v14 = [v1 traitCollection];
      v26 = v12;
      v15 = sub_10017AD94(v14, 0, v12);

      if (v15)
      {
        v16 = [v25 tabBarItem];
        [v15 setTabBarItem:v16];

        sub_10000A5D4(&unk_100942870, &qword_100784460);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1007841E0;
        *(v17 + 32) = v15;
        v18 = v15;
        isa = sub_1007701AC().super.isa;

        [v1 setViewControllers:isa animated:0];

LABEL_15:
        (*(v8 + 1))(v7, v3);
        return result;
      }

      v25 = v13;
      if (qword_1009412E8 == -1)
      {
LABEL_14:
        v22 = sub_10076FD4C();
        sub_10000A61C(v22, qword_1009A2600);
        sub_10000A5D4(&unk_100942A60, &unk_100784760);
        sub_10076F33C();
        *(swift_allocObject() + 16) = xmmword_100783DD0;
        sub_10076F2DC();
        v30._object = 0x80000001007CE940;
        v30._countAndFlagsBits = 0xD000000000000041;
        sub_10076F2CC(v30);
        v28[3] = v3;
        v23 = sub_10000DB7C(v28);
        v25(v23, v7, v3);
        sub_10076F29C();
        sub_10000CFBC(v28, &unk_1009434C0, &qword_100783F60);
        v31._countAndFlagsBits = 0;
        v31._object = 0xE000000000000000;
        sub_10076F2CC(v31);
        sub_10076F2FC();
        sub_10076FBCC();

        goto LABEL_15;
      }

LABEL_22:
      swift_once();
      goto LABEL_14;
    }
  }

  v20 = v27;

  return result;
}

id sub_10003EC74(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for StoreNavigationController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10003ED6C(char a1)
{
  v2 = [*v1 popViewControllerAnimated:a1 & 1];

  return v2;
}

id sub_10003EDAC()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC20ProductPageExtension43NavigationBarManualCheckLayoutMarginsChange__cachedLayoutMargins];
  v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension43NavigationBarManualCheckLayoutMarginsChange__cachedLayoutMargins];
  v14 = *&v0[OBJC_IVAR____TtC20ProductPageExtension43NavigationBarManualCheckLayoutMarginsChange__cachedLayoutMargins + 16];
  v3 = v0[OBJC_IVAR____TtC20ProductPageExtension43NavigationBarManualCheckLayoutMarginsChange__cachedLayoutMargins + 32];
  result = [v0 layoutMargins];
  if ((v3 & 1) != 0 || (v7.f64[1] = v8, v5.f64[1] = v6, (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v13, v5), vceqq_f64(v14, v7)))) & 1) == 0))
  {
    [v0 layoutMargins];
    *v2 = v9;
    *(v2 + 1) = v10;
    *(v2 + 2) = v11;
    *(v2 + 3) = v12;
    v2[32] = 0;
    v15.receiver = v0;
    v15.super_class = ObjectType;
    return objc_msgSendSuper2(&v15, "layoutMarginsDidChange");
  }

  return result;
}

unint64_t sub_10003F040()
{
  result = qword_1009453B0;
  if (!qword_1009453B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009453B0);
  }

  return result;
}

uint64_t sub_10003F08C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_10003F0D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_1009434C0, &qword_100783F60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003F144()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003F184(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003F1A0(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100942900, &unk_10078A660);
  __chkstk_darwin(v2 - 8);
  v4 = &v47 - v3;
  v5 = sub_10076C2DC();
  v6 = *(v5 - 8);
  v62 = v5;
  v63 = v6;
  __chkstk_darwin(v5);
  v8 = (&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10000A5D4(&qword_100942908, &unk_1007A3F70);
  __chkstk_darwin(v9 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v47 - v13;
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  __chkstk_darwin(v18);
  v20 = &v47 - v19;
  sub_10000A5D4(&qword_100942910, &unk_10078A670);
  v21 = *(sub_10076C20C() - 8);
  v56 = *(v21 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  v53 = v23;
  *(v23 + 16) = xmmword_1007844F0;
  v60 = v23 + v22;
  v24 = a1;
  v64 = a1;
  sub_10001E290();
  v57 = v20;
  sub_10076C29C();
  v64 = 11.0;
  v25 = v17;
  sub_10076C29C();
  v64 = 12.0;
  v26 = v14;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #16.0 }

  *v8 = _Q0;
  v61 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v32 = v62;
  v33 = *(v63 + 104);
  v63 += 104;
  v55 = v33;
  (v33)(v8);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  LOBYTE(v64) = 0;
  v36 = v4;
  sub_10076C29C();
  v64 = 0.0;
  v58 = v11;
  sub_10076C29C();
  v59 = v25;
  sub_10076C1CC();
  v64 = v24;
  sub_10076C29C();
  v64 = 10.0;
  sub_10076C29C();
  v64 = 10.0;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #20.0 }

  *v8 = _Q0;
  v38 = v55;
  v55(v8, v61, v32);
  LOBYTE(v64) = 0;
  sub_10076C29C();
  v64 = 0.0;
  sub_10076C29C();
  v39 = v56;
  top = UIEdgeInsetsZero.top;
  v51 = left;
  v52 = bottom;
  sub_10076C1CC();
  v48 = 2 * v39;
  v64 = v24;
  sub_10076C29C();
  v64 = 10.0;
  sub_10076C29C();
  v64 = 10.0;
  sub_10076C29C();
  v49 = vdupq_n_s64(0x4041000000000000uLL);
  *v8 = v49;
  v40 = v61;
  v41 = v62;
  v42 = v38;
  v38(v8, v61, v62);
  LOBYTE(v64) = 0;
  v54 = v36;
  sub_10076C29C();
  v64 = 0.0;
  sub_10076C29C();
  v43 = v48;
  sub_10076C1CC();
  v44 = v56;
  v48 = v43 + v56;
  v64 = v24;
  sub_10076C29C();
  v64 = 10.0;
  sub_10076C29C();
  v64 = 10.0;
  sub_10076C29C();
  *v8 = v49;
  v42(v8, v40, v41);
  sub_1007704BC();
  LOBYTE(v64) = 0;
  sub_10076C29C();
  v64 = 0.0;
  sub_10076C29C();
  v47 = v26;
  sub_10076C1CC();
  v64 = v24;
  sub_10076C29C();
  v64 = 10.0;
  sub_10076C29C();
  v64 = 10.0;
  sub_10076C29C();
  v49 = vdupq_n_s64(0x404A000000000000uLL);
  *v8 = v49;
  v45 = v55;
  v55(v8, v61, v62);
  LOBYTE(v64) = 0;
  sub_10076C29C();
  v64 = 0.0;
  sub_10076C29C();
  sub_10076C1CC();
  v56 += 4 * v44;
  v64 = v24;
  sub_10076C29C();
  v64 = 10.0;
  sub_10076C29C();
  v64 = 10.0;
  sub_10076C29C();
  *v8 = v49;
  v45(v8, v61, v62);
  LOBYTE(v64) = 0;
  sub_10076C29C();
  v64 = 0.0;
  sub_10076C29C();
  sub_10076C1CC();
  return v53;
}

double sub_10003FBAC()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076505C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076507C();
  sub_10003FFB8(&qword_1009435F8, &type metadata accessor for ProductReviewAction, &protocol conformance descriptor for ProductReviewAction);
  sub_10076332C();
  if (v30[1])
  {
    sub_10076506C();
    v8 = (*(v5 + 88))(v7, v4);
    if (v8 == enum case for ProductReviewAction.ReviewAction.tapToRate(_:))
    {
      (*(v5 + 96))(v7, v4);
      swift_getKeyPath();
      sub_10076338C();

      sub_10076C2FC();
      v10 = v9;
      v12 = v11;
      (*(v1 + 8))(v3, v0);
      v13 = sub_100630CB4();
      sub_1000BF38C(v13, v10, v12);
      v15 = v14;
      swift_unknownObjectRelease();

LABEL_13:

      return v15;
    }

    if (v8 == enum case for ProductReviewAction.ReviewAction.writeAReview(_:))
    {
      (*(v5 + 96))(v7, v4);
      v30[0] = type metadata accessor for ProductReviewActionsView(0);
      v16 = sub_10076509C();
      v17 = sub_10076508C();
      swift_getKeyPath();
      sub_10076338C();

      sub_10076C2FC();
      v19 = v18;
      v21 = v20;
      (*(v1 + 8))(v3, v0);
      sub_100630CB4();
      if (v16)
      {

        v22 = sub_10076B8EC();
        v24 = v23;

        if (v17)
        {
LABEL_7:

          v25 = sub_10076B8EC();
          v27 = v26;

LABEL_12:
          sub_1007425D8(v22, v24, v25, v27, v30[0], v19, v21);
          v15 = v28;

          swift_unknownObjectRelease();

          goto LABEL_13;
        }
      }

      else
      {
        v22 = 0;
        v24 = 0;
        if (v17)
        {
          goto LABEL_7;
        }
      }

      v25 = 0;
      v27 = 0;
      goto LABEL_12;
    }

    (*(v5 + 8))(v7, v4);
  }

  return 0.0;
}

uint64_t sub_10003FFB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10004003C()
{
  result = [objc_opt_self() configurationWithPointSize:12.0];
  qword_100943610 = result;
  return result;
}

void sub_100040088(uint64_t a1, void *a2)
{
  v3 = objc_opt_self();
  v4 = UIFontTextStyleTitle3;
  v5 = [v3 configurationWithTextStyle:v4];

  *a2 = v5;
}

id sub_1000400FC(unsigned __int8 a1)
{
  v2 = sub_10076048C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 1u)
  {
    if (a1)
    {
      (*(v3 + 104))(v6, enum case for SystemImage.laurelLeading(_:), v2, v4);
      if (qword_10093F4F0 == -1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      (*(v3 + 104))(v6, enum case for SystemImage.laurelLeading(_:), v2, v4);
      if (qword_10093F4E8 == -1)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_14;
  }

  if (a1 == 2)
  {
    (*(v3 + 104))(v6, enum case for SystemImage.laurelLeading(_:), v2, v4);
    if (qword_10093F4F8 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (a1 != 3)
  {
    v7 = sub_1005A5DB8(0x654C6C657275614CLL, 0xEF656772614C7466, 0);
    v8 = [v7 imageWithRenderingMode:2];

    return v8;
  }

  (*(v3 + 104))(v6, enum case for SystemImage.laurelLeading(_:), v2, v4);
  if (qword_10093F500 != -1)
  {
LABEL_14:
    swift_once();
  }

LABEL_13:
  v10 = sub_10076046C();
  (*(v3 + 8))(v6, v2);
  return v10;
}

id sub_1000403C8(unsigned __int8 a1)
{
  v2 = sub_10076048C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 1u)
  {
    if (a1)
    {
      (*(v3 + 104))(v6, enum case for SystemImage.laurelTrailing(_:), v2, v4);
      if (qword_10093F4F0 == -1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      (*(v3 + 104))(v6, enum case for SystemImage.laurelTrailing(_:), v2, v4);
      if (qword_10093F4E8 == -1)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_14;
  }

  if (a1 == 2)
  {
    (*(v3 + 104))(v6, enum case for SystemImage.laurelTrailing(_:), v2, v4);
    if (qword_10093F4F8 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (a1 != 3)
  {
    v7 = sub_1005A5DB8(0xD000000000000010, 0x80000001007CEC30, 0);
    v8 = [v7 imageWithRenderingMode:2];

    return v8;
  }

  (*(v3 + 104))(v6, enum case for SystemImage.laurelTrailing(_:), v2, v4);
  if (qword_10093F500 != -1)
  {
LABEL_14:
    swift_once();
  }

LABEL_13:
  v10 = sub_10076046C();
  (*(v3 + 8))(v6, v2);
  return v10;
}

unint64_t sub_1000406D4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100043730(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_100040724()
{
  v1 = *v0;
  sub_10077175C();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  sub_10077176C(v2);
  return sub_1007717AC();
}

void sub_100040774()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  sub_10077176C(v1);
}

Swift::Int sub_1000407AC(uint64_t a1)
{
  v2 = *v1;
  sub_10077175C();
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  sub_10077176C(v3);
  return sub_1007717AC();
}

void *sub_1000407F8@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_100040818(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

Swift::Int sub_100040830()
{
  v1 = *v0;
  sub_10077175C();
  sub_10077176C(v1);
  return sub_1007717AC();
}

Swift::Int sub_100040878(uint64_t a1)
{
  v2 = *v1;
  sub_10077175C();
  sub_10077176C(v2);
  return sub_1007717AC();
}

uint64_t sub_1000408BC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 == 2)
  {
    if (sub_10075DE3C())
    {
      if (qword_100940D48 != -1)
      {
        swift_once();
      }

      v3 = sub_10076D3DC();
      v4 = v3;
      v5 = qword_1009A15D0;
      goto LABEL_27;
    }

    if (sub_10075DDEC())
    {
      if (qword_100940D50 != -1)
      {
        swift_once();
      }

      v3 = sub_10076D3DC();
      v4 = v3;
      v5 = qword_1009A15E8;
      goto LABEL_27;
    }

    if (sub_10075DE2C())
    {
      if (qword_100940D58 != -1)
      {
        swift_once();
      }

      v3 = sub_10076D3DC();
      v4 = v3;
      v5 = qword_1009A1600;
      goto LABEL_27;
    }
  }

  else if (a1 == 1)
  {
    if (sub_10075DE3C())
    {
      if (qword_100940D18 != -1)
      {
        swift_once();
      }

      v3 = sub_10076D3DC();
      v4 = v3;
      v5 = qword_1009A1540;
LABEL_27:
      v6 = sub_10000A61C(v3, v5);
      v13 = *(v4 - 8);
      (*(v13 + 16))(a2, v6, v4);
      v7 = *(v13 + 56);
      v8 = a2;
      v9 = 0;
      v10 = v4;
      goto LABEL_29;
    }

    if (sub_10075DDEC())
    {
      if (qword_100940D20 != -1)
      {
        swift_once();
      }

      v3 = sub_10076D3DC();
      v4 = v3;
      v5 = qword_1009A1558;
      goto LABEL_27;
    }

    if (sub_10075DE2C())
    {
      if (qword_100940D28 != -1)
      {
        swift_once();
      }

      v3 = sub_10076D3DC();
      v4 = v3;
      v5 = qword_1009A1570;
      goto LABEL_27;
    }
  }

  v11 = sub_10076D3DC();
  v7 = *(*(v11 - 8) + 56);
  v10 = v11;
  v8 = a2;
  v9 = 1;
LABEL_29:

  return v7(v8, v9, 1, v10);
}

char *sub_100040B8C(char a1, char a2, char a3, char a4, unsigned __int8 a5)
{
  v6 = v5;
  LODWORD(v87) = a5;
  ObjectType = swift_getObjectType();
  v12 = sub_10075DE9C();
  v82 = *(v12 - 8);
  v83 = v12;
  __chkstk_darwin(v12);
  v81 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_10076D3DC();
  v86 = *(v79 - 8);
  __chkstk_darwin(v79);
  v78 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v84 = &v77 - v16;
  v17 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v17 - 8);
  v80 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v85 = &v77 - v20;
  v21 = OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_useAdsLocale;
  v6[OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_useAdsLocale] = 0;
  v22 = OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_titleLabel;
  sub_1007626BC();
  *&v6[v22] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_leftLaurelView;
  *&v6[v23] = [objc_allocWithZone(UIImageView) init];
  v24 = OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_rightLaurelView;
  *&v6[v24] = [objc_allocWithZone(UIImageView) init];
  v6[OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_size] = a1;
  v6[OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_preferredLineCount] = a2 & 1;
  v6[OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_shouldCapWidthByAvailableWidth] = a3;
  v6[v21] = a4;
  v6[OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_useCase] = a5;
  v25 = type metadata accessor for EditorsChoiceView();
  v90.receiver = v6;
  v90.super_class = v25;
  v26 = objc_msgSendSuper2(&v90, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v30 = v26;
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v31 = [objc_opt_self() clearColor];
  [v30 setBackgroundColor:v31];

  v32 = OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_titleLabel;
  v33 = *&v30[OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_titleLabel];
  v34 = [v30 tintColor];

  [v33 setTextColor:v34];
  [*&v30[v32] setLineBreakMode:4];
  v35 = *&v30[v32];
  if (v87)
  {
    v36 = v35;
    v37 = [v30 traitCollection];
    v38 = a1;
    v39 = a1;
    *&v87 = v36;
    v77 = v37;
    if (a1 <= 1u)
    {
      v40 = v86;
      v41 = v84;
      v42 = v79;
      if (v38)
      {
        if (qword_100940D10 != -1)
        {
          swift_once();
        }

        v43 = qword_1009A1528;
      }

      else
      {
        if (qword_100940D08 != -1)
        {
          swift_once();
        }

        v43 = qword_1009A1510;
      }
    }

    else
    {
      v40 = v86;
      v41 = v84;
      v42 = v79;
      if (v38 == 2)
      {
        if (qword_100940D30 != -1)
        {
          swift_once();
        }

        v43 = qword_1009A1588;
      }

      else if (v38 == 3)
      {
        if (qword_100940D60 != -1)
        {
          swift_once();
        }

        v43 = qword_1009A1618;
      }

      else
      {
        if (qword_100940D68 != -1)
        {
          swift_once();
        }

        v43 = qword_1009A1630;
      }
    }

    v48 = sub_10000A61C(v42, v43);
    (*(v40 + 16))(v41, v48, v42);
    v49 = v81;
    sub_10075DE6C();
    v50 = v80;
    sub_1000408BC(v39, v80);
    (*(v82 + 8))(v49, v83);
    if ((*(v40 + 48))(v50, 1, v42) == 1)
    {

      sub_1000276DC(v50);
      v51 = v85;
      (*(v40 + 32))(v85, v41, v42);
    }

    else
    {
      v52 = v78;
      v84 = *(v40 + 32);
      (v84)(v78, v50, v42);
      v53 = v77;
      v54.super.isa = v77;
      isa = sub_10076D3BC(v54).super.isa;
      [(objc_class *)isa pointSize];
      v57 = v56;
      v58.super.isa = v53;
      v59 = sub_10076D3BC(v58).super.isa;
      [(objc_class *)v59 pointSize];
      v61 = v60;

      v40 = v86;
      v62 = *(v40 + 8);
      if (v61 >= v57)
      {
        v62(v52, v42);
        v51 = v85;
        v63 = v85;
        v64 = v41;
      }

      else
      {
        v62(v41, v42);
        v51 = v85;
        v63 = v85;
        v64 = v52;
      }

      (v84)(v63, v64, v42);
    }

    v65 = v87;
    (*(v40 + 56))(v51, 0, 1, v42);
    sub_1007625DC();
  }

  else
  {
    v44 = v35;
    sub_10076D84C();
    if (qword_10093F6A8 != -1)
    {
      swift_once();
    }

    v45 = sub_10076715C();
    v46 = sub_10000A61C(v45, qword_10099CE68);
    v89[3] = v45;
    v89[4] = sub_100043BA4(&qword_10094B6A0, &type metadata accessor for MetadataRibbonTextStyle, &protocol conformance descriptor for MetadataRibbonTextStyle);
    v47 = sub_10000DB7C(v89);
    (*(*(v45 - 8) + 16))(v47, v46, v45);
    sub_1007625FC();
  }

  [*&v30[v32] setAdjustsFontSizeToFitWidth:{1, v77}];
  v66 = *&v30[v32];
  v67 = v30;
  [v67 addSubview:v66];
  if (v67[OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_size] == 4)
  {

    [v67 setContentMode:3];
  }

  else
  {
    v68 = OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_rightLaurelView;
    v69 = *&v67[OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_rightLaurelView];
    v70 = [v67 tintColor];
    [v69 setTintColor:v70];

    v71 = OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_leftLaurelView;
    v72 = *&v67[OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_leftLaurelView];
    v73 = [v67 tintColor];

    [v72 setTintColor:v73];
    [*&v67[v68] setSemanticContentAttribute:3];
    [*&v67[v71] setSemanticContentAttribute:3];
    [v67 addSubview:*&v67[v71]];
    [v67 addSubview:*&v67[v68]];
  }

  sub_1000420C4();
  sub_100042230();
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v74 = swift_allocObject();
  v87 = xmmword_100783DD0;
  *(v74 + 16) = xmmword_100783DD0;
  *(v74 + 32) = sub_10076E4CC();
  *(v74 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_100770C6C();
  swift_unknownObjectRelease();

  v75 = swift_allocObject();
  *(v75 + 16) = v87;
  *(v75 + 32) = sub_10076E88C();
  *(v75 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v67;
}

void sub_100041760()
{
  ObjectType = swift_getObjectType();
  v54.receiver = v0;
  v54.super_class = type metadata accessor for EditorsChoiceView();
  objc_msgSendSuper2(&v54, "layoutSubviews");
  v2 = v0[OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_preferredLineCount];
  v3 = v0[OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_size];
  v4 = OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_useAdsLocale;
  v5 = v0[OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_useAdsLocale];
  v6 = v0[OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_useCase];
  sub_10076422C();
  Width = CGRectGetWidth(v56);
  v8 = sub_10012CDBC(v2, v3, v5, v6, v0, ObjectType, Width);
  v9 = *&v0[OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_titleLabel];
  v11 = v10 & 1;
  [v9 setNumberOfLines:{(v11 + 1), v8}];
  v55._object = v0[v4];
  v55._countAndFlagsBits = v11;
  sub_100043740(v55);
  v12 = sub_10076FF6C();

  [v9 setText:v12];

  v13 = [v0 traitCollection];
  if (v6 == 1)
  {
    v14 = v13;
    v15 = [v13 preferredContentSizeCategory];
    v16 = sub_10077084C();

    if (v16)
    {
      [*&v0[OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_leftLaurelView] setHidden:1];
      [*&v0[OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_rightLaurelView] setHidden:1];
      sub_10076422C();
      v17 = CGRectGetWidth(v57);
      sub_10076422C();
      [v9 sizeThatFits:{v17, CGRectGetHeight(v58)}];
      v19 = v18;
      v21 = v20;
      sub_10076422C();
      v22 = CGRectGetMidX(v59) - v19 * 0.5;
      sub_10076422C();
      [v9 setFrame:{v22, CGRectGetMidY(v60) - v21 * 0.5, v17, v21}];
      return;
    }
  }

  else
  {
  }

  v23 = v3;
  v24 = sub_1000400FC(v3);
  v25 = sub_1000403C8(v23);
  v26 = 12.0;
  if (v23 != 4)
  {
    [v0 bounds];
    Height = CGRectGetHeight(v61);
    [v24 size];
    if (v28 < Height)
    {
      Height = v28;
    }

    [v24 size];
    v30 = Height * v29;
    [v24 size];
    v32 = v30 / v31;
    [v0 bounds];
    MinX = CGRectGetMinX(v62);
    [v0 bounds];
    v34 = CGRectGetMidY(v63) - Height * 0.5;
    v35 = *&v0[OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_leftLaurelView];
    [v35 setHidden:0];
    [v35 setImage:v24];
    [v35 setFrame:{MinX, v34, v32, Height}];
    [v0 bounds];
    v36 = CGRectGetHeight(v64);
    [v25 size];
    if (v37 < v36)
    {
      v36 = v37;
    }

    [v25 size];
    v39 = v36 * v38;
    [v25 size];
    v41 = v39 / v40;
    [v0 bounds];
    v42 = CGRectGetMaxX(v65) - v41;
    [v0 bounds];
    v43 = CGRectGetMidY(v66) - v36 * 0.5;
    v44 = *&v0[OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_rightLaurelView];
    [v44 setHidden:0];
    [v44 setImage:v25];
    [v44 setFrame:{v42, v43, v41, v36}];
    v26 = dbl_100785B28[v23];
  }

  sub_10076422C();
  v45 = CGRectGetWidth(v67);
  [v24 size];
  v47 = v26 + v26 + v46;
  [v25 size];
  v49 = v45 - (v47 + v48);
  sub_10076422C();
  [v9 sizeThatFits:{v49, CGRectGetHeight(v68)}];
  v51 = v50;
  [v24 size];
  v53 = v26 + v52;
  sub_10076422C();
  [v9 setFrame:{v53, CGRectGetMidY(v69) + v51 * -0.5, v49, v51}];
}

void sub_100041C64(double a1, double a2, double a3, double a4)
{
  if (*(v4 + OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_size) != 4)
  {
    v31.receiver = v4;
    v31.super_class = type metadata accessor for EditorsChoiceView();
    objc_msgSendSuper2(&v31, "drawRect:", a1, a2, a3, a4);
    return;
  }

  v5 = UIGraphicsGetCurrentContext();
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = [v4 tintColor];
    if (!v8)
    {
      __break(1u);
      return;
    }

    v9 = v8;
    v10 = [v8 CGColor];

    CGContextSetFillColorWithColor(v7, v10);
  }

  v11 = sub_1000400FC(4u);
  [v4 bounds];
  Height = CGRectGetHeight(v33);
  [v11 size];
  if (v13 < Height)
  {
    Height = v13;
  }

  [v11 size];
  v15 = Height * v14;
  [v11 size];
  v17 = v15 / v16;
  [v4 bounds];
  MinX = CGRectGetMinX(v34);
  [v4 bounds];
  [v11 drawInRect:{MinX, CGRectGetMidY(v35) - Height * 0.5, v17, Height}];
  v30 = sub_1000403C8(4u);
  [v4 bounds];
  v19 = CGRectGetHeight(v36);
  [v30 size];
  if (v20 < v19)
  {
    v19 = v20;
  }

  [v30 size];
  v22 = v19 * v21;
  [v30 size];
  v24 = v22 / v23;
  [v4 bounds];
  v25 = CGRectGetMaxX(v37) - v24;
  [v4 bounds];
  [v30 drawInRect:{v25, CGRectGetMidY(v38) - v19 * 0.5, v24, v19}];
}

void sub_100041F58()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_titleLabel];
  v2 = [v0 tintColor];
  [v1 setTextColor:v2];

  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_leftLaurelView];
  v4 = [v0 tintColor];
  [v3 setTintColor:v4];

  v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_rightLaurelView];
  v6 = [v0 tintColor];
  [v5 setTintColor:v6];

  if (v0[OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_size] == 4)
  {

    [v0 setNeedsDisplay];
  }
}

void sub_1000420C4()
{
  if (v0[OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_useCase] == 1)
  {
    v1 = [v0 layer];
    [v1 setAllowsGroupBlending:0];

    v2 = [v0 traitCollection];
    [v2 userInterfaceStyle];

    sub_10076FF9C();
    v3 = sub_10076FF6C();

    v4 = [*&v0[OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_leftLaurelView] layer];
    [v4 setCompositingFilter:v3];

    v5 = [*&v0[OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_rightLaurelView] layer];
    [v5 setCompositingFilter:v3];
  }
}

id sub_100042230()
{
  v1 = v0[OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_useCase];
  v2 = [v0 traitCollection];
  if (v1 == 1)
  {
    v3 = v2;
    v4 = [v2 preferredContentSizeCategory];
    v5 = sub_10077084C();

    if (v5)
    {
      v6 = 4;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v6 = 1;
LABEL_6:
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_titleLabel];

  return [v7 setTextAlignment:v6];
}

id sub_100042344()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditorsChoiceView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for InAppPurchaseIconType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for InAppPurchaseIconType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for RatingView.StarSize(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RatingView.StarSize(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for RatingView.UseCase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RatingView.UseCase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100042814()
{
  result = qword_100943688;
  if (!qword_100943688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100943688);
  }

  return result;
}

unint64_t sub_10004286C()
{
  result = qword_100943690;
  if (!qword_100943690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100943690);
  }

  return result;
}

unint64_t sub_1000428C4()
{
  result = qword_100943698;
  if (!qword_100943698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100943698);
  }

  return result;
}

double sub_100042918(char a1, uint64_t a2, int a3, int a4, void *a5, uint64_t a6, double a7)
{
  LODWORD(v109) = a3;
  v113 = a2;
  v114 = a6;
  v117 = a4;
  v9 = a4;
  v10 = sub_10075DE9C();
  v111 = *(v10 - 8);
  v112 = v10;
  __chkstk_darwin(v10);
  v110 = v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v12 - 8);
  v107 = v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v105 - v15;
  v17 = sub_10076D3DC();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v115 = v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v108 = v105 - v21;
  __chkstk_darwin(v22);
  v116 = v105 - v23;
  __chkstk_darwin(v24);
  v26 = v105 - v25;
  __chkstk_darwin(v27);
  v29 = v105 - v28;
  *&v31 = __chkstk_darwin(v30).n128_u64[0];
  v106 = v105 - v32;
  v118 = a5;
  v33 = [a5 traitCollection];
  if (v9 != 1)
  {

    goto LABEL_5;
  }

  v34 = v33;
  v35 = [v33 preferredContentSizeCategory];
  v36 = sub_10077084C();

  if ((v36 & 1) == 0)
  {
LABEL_5:
    v38 = v113;
    v39 = sub_1000400FC(v113);
    v40 = sub_1000403C8(v38);
    [v39 size];
    [v40 size];

    v37 = v115;
    goto LABEL_6;
  }

  v37 = v115;
  v38 = v113;
LABEL_6:
  if (a1)
  {
    goto LABEL_44;
  }

  v41._countAndFlagsBits = 0xD00000000000001ALL;
  v41._object = 0x80000001007CEC10;
  if (v109)
  {
    v42 = sub_100769B9C(v41);
  }

  else
  {
    v122._countAndFlagsBits = 0;
    v122._object = 0xE000000000000000;
    v42 = sub_1007622EC(v41, v122);
  }

  v44 = v42;
  v45 = v43;
  v46 = [v118 traitCollection];
  v105[2] = v45;
  v105[1] = v44;
  if (v38 <= 1u)
  {
    if (v38)
    {
      if (qword_100940D10 != -1)
      {
        swift_once();
      }

      v47 = qword_1009A1528;
    }

    else
    {
      if (qword_100940D08 != -1)
      {
        swift_once();
      }

      v47 = qword_1009A1510;
    }
  }

  else if (v38 == 2)
  {
    if (v117)
    {
      if (qword_100940D30 != -1)
      {
        swift_once();
      }

      v47 = qword_1009A1588;
    }

    else
    {
      if (qword_100940D38 != -1)
      {
        swift_once();
      }

      v47 = qword_1009A15A0;
    }
  }

  else if (v38 == 3)
  {
    if (qword_100940D60 != -1)
    {
      swift_once();
    }

    v47 = qword_1009A1618;
  }

  else
  {
    if (qword_100940D68 != -1)
    {
      swift_once();
    }

    v47 = qword_1009A1630;
  }

  v48 = sub_10000A61C(v17, v47);
  (*(v18 + 16))(v29, v48, v17);
  v49 = v110;
  sub_10075DE6C();
  sub_1000408BC(v38, v16);
  (*(v111 + 8))(v49, v112);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {

    sub_1000276DC(v16);
    v50 = v106;
    (*(v18 + 32))(v106, v29, v17);
    v37 = v115;
  }

  else
  {
    v51 = *(v18 + 32);
    v51(v26, v16, v17);
    v52.super.isa = v46;
    isa = sub_10076D3BC(v52).super.isa;
    [(objc_class *)isa pointSize];
    v55 = v54;
    v56.super.isa = v46;
    v57 = sub_10076D3BC(v56).super.isa;
    [(objc_class *)v57 pointSize];
    v59 = v58;

    v60 = *(v18 + 8);
    if (v59 >= v55)
    {
      v60(v26, v17);
      v50 = v106;
      v61 = v106;
      v62 = v29;
    }

    else
    {
      v60(v29, v17);
      v50 = v106;
      v61 = v106;
      v62 = v26;
    }

    v51(v61, v62, v17);
    v37 = v115;
    v38 = v113;
  }

  v63 = v117;
  v64 = [v118 traitCollection];
  if (v63 == 1)
  {
    v65 = v64;
    v66 = [v64 preferredContentSizeCategory];
    sub_10077084C();
  }

  else
  {
  }

  v67 = sub_10076C04C();
  v120 = v67;
  v121 = sub_100043BA4(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v68 = sub_10000DB7C(v119);
  (*(*(v67 - 8) + 104))(v68, enum case for Feature.measurement_with_labelplaceholder(_:), v67);
  sub_10076C90C();
  sub_10000CD74(v119);
  sub_10076991C();
  v70 = v69;

  (*(v18 + 8))(v50, v17);
  v71 = sub_10076C8CC();
  if (v117)
  {
    if ((v71 & 1) == 0)
    {
LABEL_44:
      v72._object = 0x80000001007CEB90;
      if (v109)
      {
        v72._countAndFlagsBits = 0xD000000000000017;
        v73 = sub_100769B9C(v72);
      }

      else
      {
        v123._countAndFlagsBits = 0xD000000000000050;
        v123._object = 0x80000001007CEBB0;
        v72._countAndFlagsBits = 0xD000000000000017;
        v73 = sub_1007622EC(v72, v123);
      }

      v75 = v73;
      v76 = v74;
      v78 = v107;
      v77 = v108;
      v79 = [v118 traitCollection];
      v113 = v76;
      v109 = v75;
      if (v38 <= 1u)
      {
        if (v38)
        {
          if (qword_100940D10 != -1)
          {
            swift_once();
          }

          v80 = qword_1009A1528;
        }

        else
        {
          if (qword_100940D08 != -1)
          {
            swift_once();
          }

          v80 = qword_1009A1510;
        }
      }

      else if (v38 == 2)
      {
        if (v117)
        {
          if (qword_100940D30 != -1)
          {
            swift_once();
          }

          v80 = qword_1009A1588;
        }

        else
        {
          if (qword_100940D38 != -1)
          {
            swift_once();
          }

          v80 = qword_1009A15A0;
        }
      }

      else if (v38 == 3)
      {
        if (qword_100940D60 != -1)
        {
          swift_once();
        }

        v80 = qword_1009A1618;
      }

      else
      {
        if (qword_100940D68 != -1)
        {
          swift_once();
        }

        v80 = qword_1009A1630;
      }

      v81 = sub_10000A61C(v17, v80);
      (*(v18 + 16))(v77, v81, v17);
      v82 = v110;
      sub_10075DE6C();
      sub_1000408BC(v38, v78);
      (*(v111 + 8))(v82, v112);
      if ((*(v18 + 48))(v78, 1, v17) == 1)
      {

        sub_1000276DC(v78);
        (*(v18 + 32))(v116, v77, v17);
      }

      else
      {
        v83 = v77;
        v84 = *(v18 + 32);
        v84(v37, v78, v17);
        v85.super.isa = v79;
        v86 = sub_10076D3BC(v85).super.isa;
        [(objc_class *)v86 pointSize];
        v88 = v87;
        v89.super.isa = v79;
        v90 = sub_10076D3BC(v89).super.isa;
        [(objc_class *)v90 pointSize];
        v92 = v91;

        v93 = *(v18 + 8);
        if (v92 >= v88)
        {
          v93(v37, v17);
          v94 = v116;
          v95 = v83;
        }

        else
        {
          v93(v83, v17);
          v94 = v116;
          v95 = v37;
        }

        v84(v94, v95, v17);
      }

      v96 = v117;
      v97 = [v118 traitCollection];
      if (v96 == 1)
      {
        v98 = v97;
        v99 = [v97 preferredContentSizeCategory];
        sub_10077084C();
      }

      else
      {
      }

      v100 = sub_10076C04C();
      v120 = v100;
      v121 = sub_100043BA4(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v101 = sub_10000DB7C(v119);
      (*(*(v100 - 8) + 104))(v101, enum case for Feature.measurement_with_labelplaceholder(_:), v100);
      sub_10076C90C();
      sub_10000CD74(v119);
      v102 = v116;
      sub_10076991C();
      v70 = v103;

      (*(v18 + 8))(v102, v17);
    }
  }

  return v70;
}