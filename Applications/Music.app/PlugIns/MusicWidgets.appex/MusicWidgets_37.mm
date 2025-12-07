uint64_t ArtworkImage.Placeholder.View.init(name:weight:availableSize:scaleFactor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v10 = a4.n128_u64[0];
  v14 = type metadata accessor for ArtworkImage.Placeholder.View(0);
  v15 = *(v14 + 32);
  *(a3 + v15) = swift_getKeyPath();
  sub_100009DCC(&qword_1006EED98, &qword_1005971B0);
  swift_storeEnumTagMultiPayload();
  v16 = *(v14 + 36);
  *(a3 + v16) = swift_getKeyPath();
  sub_100009DCC(&unk_1006EEDA0, &unk_10059C170);
  result = swift_storeEnumTagMultiPayload();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = v10;
  *(a3 + 24) = a5;
  *(a3 + 32) = a6;
  *(a3 + 40) = a7;
  return result;
}

double sub_1003C1F5C@<D0>(uint64_t *a3@<X8>)
{
  sub_10056E928();
  v5 = v4;
  v7 = v6;
  v8 = sub_1003C1880();
  v10 = v9;
  sub_1003C1880();
  v12 = v11;

  sub_1003C1880();
  v14 = v13;

  v15 = type metadata accessor for ArtworkImage.Placeholder.View(0);
  v16 = *(v15 + 32);
  *(a3 + v16) = swift_getKeyPath();
  sub_100009DCC(&qword_1006EED98, &qword_1005971B0);
  swift_storeEnumTagMultiPayload();
  v17 = *(v15 + 36);
  *(a3 + v17) = swift_getKeyPath();
  sub_100009DCC(&unk_1006EEDA0, &unk_10059C170);
  swift_storeEnumTagMultiPayload();
  *a3 = v8;
  a3[1] = v10;
  a3[2] = v12;
  a3[3] = v5;
  a3[4] = v7;
  a3[5] = v14;
  *(a3 + *(sub_100009DCC(&unk_1006F2C90, &unk_10059E550) + 36)) = 0;
  sub_1005709E8();
  sub_10056E888();
  v18 = (a3 + *(sub_100009DCC(&unk_1006F2C80, &qword_10059C538) + 36));
  *v18 = v20;
  v18[1] = v21;
  result = *&v22;
  v18[2] = v22;
  return result;
}

uint64_t EnvironmentValues.placeholderStyle.getter()
{
  sub_1003CACD8();

  return sub_10056F1A8();
}

uint64_t sub_1003C2178(uint64_t a1)
{
  sub_100009DCC(&qword_1006F1330, &unk_10059C180);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v7 - v4;
  sub_10000CC8C(a1, &v7 - v4, &qword_1006F1330, &unk_10059C180);
  sub_10000CC8C(v5, v3, &qword_1006F1330, &unk_10059C180);
  sub_1003CACD8();
  sub_10056F1B8();
  return sub_10001036C(v5, &qword_1006F1330, &unk_10059C180);
}

uint64_t EnvironmentValues.placeholderStyle.setter(uint64_t a1)
{
  sub_100009DCC(&qword_1006F1330, &unk_10059C180);
  __chkstk_darwin();
  sub_10000CC8C(a1, &v4 - v2, &qword_1006F1330, &unk_10059C180);
  sub_1003CACD8();
  sub_10056F1B8();
  return sub_10001036C(a1, &qword_1006F1330, &unk_10059C180);
}

uint64_t ArtworkImage.Placeholder.View.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10056F318();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin();
  v6 = (v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009DCC(&qword_1006F1330, &unk_10059C180);
  __chkstk_darwin();
  v8 = (v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v10 = (v33 - v9);
  v33[3] = type metadata accessor for ArtworkImage.Placeholder.View(0);
  sub_1003BEBC0(v10);
  v11 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v10, 1, v11) == 1)
  {
    sub_10001036C(v10, &qword_1006F1330, &unk_10059C180);
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
  }

  else
  {
    sub_10000CC8C((v10 + 5), &v36, &qword_1006F2F70, &unk_10059EA00);
    sub_1003CAD4C(v10, type metadata accessor for ArtworkImage.Placeholder.View.Style);
    if (*(&v37 + 1))
    {
      sub_10002EA74(&v36, v39);
      v33[2] = v41;
      sub_10000C8CC(v39, v40);
      v33[1] = v33;
      v13 = __chkstk_darwin();
      (*(v15 + 16))(v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
      v16 = sub_10056E898();
      sub_100010474(v39);
      goto LABEL_6;
    }
  }

  sub_10001036C(&v36, &qword_1006F2F70, &unk_10059EA00);
  sub_1003BE9C0(&unk_1006EEDA0, &unk_10059C170, &type metadata accessor for ColorSchemeContrast, v6);
  v17 = [objc_opt_self() secondarySystemFillColor];
  v18 = sub_100570528();
  (*(v34 + 8))(v6, v35);
  v39[0] = v18;
  v16 = sub_10056E898();
LABEL_6:
  sub_1003BEBC0(v8);
  if (v12(v8, 1, v11) == 1)
  {
    sub_10001036C(v8, &qword_1006F1330, &unk_10059C180);
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
LABEL_10:
    sub_10001036C(&v36, &qword_1006F2F70, &unk_10059EA00);
    sub_1003BE9C0(&unk_1006EEDA0, &unk_10059C170, &type metadata accessor for ColorSchemeContrast, v6);
    v23 = [objc_opt_self() tertiaryLabelColor];
    v24 = sub_100570528();
    (*(v34 + 8))(v6, v35);
    v39[0] = v24;
    v22 = sub_10056E898();
    goto LABEL_11;
  }

  sub_10000CC8C(v8, &v36, &qword_1006F2F70, &unk_10059EA00);
  sub_1003CAD4C(v8, type metadata accessor for ArtworkImage.Placeholder.View.Style);
  if (!*(&v37 + 1))
  {
    goto LABEL_10;
  }

  sub_10002EA74(&v36, v39);
  sub_10000C8CC(v39, v40);
  v19 = __chkstk_darwin();
  (*(v21 + 16))(v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  v22 = sub_10056E898();
  sub_100010474(v39);
LABEL_11:
  v25 = sub_1005704B8();
  v26 = sub_10056FA38();

  v27 = sub_1005709E8();
  v29 = v28;
  v30 = a1 + *(sub_100009DCC(&qword_1006F1338, &qword_10059C190) + 36);
  sub_1003C2990(v2, v22, v30);

  result = sub_100009DCC(&qword_1006F1340, &qword_10059C198);
  v32 = (v30 + *(result + 36));
  *v32 = v27;
  v32[1] = v29;
  *a1 = v25;
  *(a1 + 8) = v16;
  *(a1 + 16) = v26;
  return result;
}

uint64_t sub_1003C2990@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  sub_100009DCC(&qword_1006F1330, &unk_10059C180);
  __chkstk_darwin();
  v39 = (v36 - v6);
  sub_100009DCC(&qword_1006F1348, &qword_10059C1A0);
  __chkstk_darwin();
  v43 = v36 - v7;
  v8 = sub_100570A78();
  v40 = *(v8 - 8);
  v41 = v8;
  __chkstk_darwin();
  v42 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F2E90, &qword_10059D000);
  __chkstk_darwin();
  v11 = v36 - v10;
  v12 = sub_100009DCC(&qword_1006F1A20, &qword_10059D008);
  v13 = *(v12 - 8);
  v37 = v12;
  v38 = v13;
  __chkstk_darwin();
  v15 = v36 - v14;
  sub_100009DCC(&qword_1006F1A28, &qword_10059D010);
  __chkstk_darwin();
  v17 = v36 - v16;
  v36[1] = a1;

  v18 = sub_100570578();
  v19 = sub_10056FB38();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);

  v20 = sub_10056FBA8();
  sub_10001036C(v11, &qword_1006F2E90, &qword_10059D000);
  KeyPath = swift_getKeyPath();
  v45 = v18;
  v46 = a2;
  v47 = KeyPath;
  v48 = v20;
  v22 = sub_100009DCC(&qword_1006F1A30, &qword_10059D048);
  v23 = sub_1003CDE8C();
  sub_10056FFA8();

  v45 = v22;
  v46 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v37;
  sub_100570078();
  (*(v38 + 8))(v15, v24);
  type metadata accessor for ArtworkImage.Placeholder.View(0);
  v25 = v39;
  sub_1003BEBC0(v39);
  v26 = v25;
  v27 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  if ((*(*(v27 - 8) + 48))(v26, 1, v27) == 1)
  {
    sub_10001036C(v26, &qword_1006F1330, &unk_10059C180);
    v29 = v40;
    v28 = v41;
    v30 = v43;
    (*(v40 + 56))(v43, 1, 1, v41);
  }

  else
  {
    v31 = v26 + *(v27 + 24);
    v30 = v43;
    sub_10000CC8C(v31, v43, &qword_1006F1348, &qword_10059C1A0);
    sub_1003CAD4C(v26, type metadata accessor for ArtworkImage.Placeholder.View.Style);
    v29 = v40;
    v28 = v41;
    if ((*(v40 + 48))(v30, 1, v41) != 1)
    {
      v32 = v42;
      (*(v29 + 32))(v42, v30, v28);
      goto LABEL_7;
    }
  }

  v32 = v42;
  (*(v29 + 104))(v42, enum case for BlendMode.normal(_:), v28);
  if ((*(v29 + 48))(v30, 1, v28) != 1)
  {
    sub_10001036C(v30, &qword_1006F1348, &qword_10059C1A0);
  }

LABEL_7:
  v33 = sub_100009DCC(&qword_1006F1A60, &qword_10059D068);
  v34 = v44;
  (*(v29 + 32))(v44 + *(v33 + 36), v32, v28);
  return sub_1003CDFFC(v17, v34);
}

uint64_t ArtworkImage.Placeholder.View.Style.init(foreground:background:blendMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  *a4 = 0u;
  *(a4 + 1) = 0u;
  *(a4 + 2) = 0u;
  *(a4 + 3) = 0u;
  *(a4 + 4) = 0u;
  v9 = *(v8 + 24);
  v10 = sub_100570A78();
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  sub_10008B71C(a1, a4, &qword_1006F2F70, &unk_10059EA00);
  sub_10008B71C(a2, (a4 + 40), &qword_1006F2F70, &unk_10059EA00);
  return sub_10008B71C(a3, &a4[v9], &qword_1006F1348, &qword_10059C1A0);
}

uint64_t sub_1003C3230()
{
  sub_100009DCC(&qword_1006F1348, &qword_10059C1A0);
  __chkstk_darwin();
  v1 = v10 - v0;
  v2 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  sub_10000C910(v2, static ArtworkImage.Placeholder.View.Style.nowPlaying);
  v3 = sub_10000C49C(v2, static ArtworkImage.Placeholder.View.Style.nowPlaying);
  sub_1005704D8();
  v4 = sub_1005704E8();

  v11[3] = &type metadata for Color;
  v11[4] = &protocol witness table for Color;
  v11[0] = v4;
  sub_1005704A8();
  v5 = sub_1005704E8();

  v10[3] = &type metadata for Color;
  v10[4] = &protocol witness table for Color;
  v10[0] = v5;
  v6 = sub_100570A78();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *v3 = 0u;
  v8 = *(v2 + 24);
  v7(&v3[v8], 1, 1, v6);
  sub_10008B71C(v11, v3, &qword_1006F2F70, &unk_10059EA00);
  sub_10008B71C(v10, (v3 + 40), &qword_1006F2F70, &unk_10059EA00);
  return sub_10008B71C(v1, &v3[v8], &qword_1006F1348, &qword_10059C1A0);
}

uint64_t sub_1003C3470()
{
  sub_100009DCC(&qword_1006F1348, &qword_10059C1A0);
  __chkstk_darwin();
  v1 = v13 - v0;
  v2 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  sub_10000C910(v2, static ArtworkImage.Placeholder.View.Style.miniPlayer);
  v3 = sub_10000C49C(v2, static ArtworkImage.Placeholder.View.Style.miniPlayer);
  v4 = objc_opt_self();
  v5 = [v4 quaternaryLabelColor];
  v6 = sub_100570528();
  v14[3] = &type metadata for Color;
  v14[4] = &protocol witness table for Color;
  v14[0] = v6;
  v7 = [v4 tertiarySystemFillColor];
  v8 = sub_100570528();
  v13[3] = &type metadata for Color;
  v13[4] = &protocol witness table for Color;
  v13[0] = v8;
  v9 = sub_100570A78();
  v10 = *(*(v9 - 8) + 56);
  v10(v1, 1, 1, v9);
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *v3 = 0u;
  v11 = *(v2 + 24);
  v10(&v3[v11], 1, 1, v9);
  sub_10008B71C(v14, v3, &qword_1006F2F70, &unk_10059EA00);
  sub_10008B71C(v13, (v3 + 40), &qword_1006F2F70, &unk_10059EA00);
  return sub_10008B71C(v1, &v3[v11], &qword_1006F1348, &qword_10059C1A0);
}

uint64_t sub_1003C36B4()
{
  sub_100009DCC(&qword_1006F1348, &qword_10059C1A0);
  __chkstk_darwin();
  v1 = v12 - v0;
  v2 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  sub_10000C910(v2, static ArtworkImage.Placeholder.View.Style.widgets);
  v3 = sub_10000C49C(v2, static ArtworkImage.Placeholder.View.Style.widgets);
  sub_1005704D8();
  v4 = sub_1005704E8();

  v13[3] = &type metadata for Color;
  v13[4] = &protocol witness table for Color;
  v13[0] = v4;
  sub_1005704D8();
  v5 = sub_1005704E8();

  v12[3] = &type metadata for Color;
  v12[4] = &protocol witness table for Color;
  v12[0] = v5;
  v6 = enum case for BlendMode.plusLighter(_:);
  v7 = sub_100570A78();
  v8 = *(v7 - 8);
  (*(v8 + 104))(v1, v6, v7);
  v9 = *(v8 + 56);
  v9(v1, 0, 1, v7);
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *v3 = 0u;
  v10 = *(v2 + 24);
  v9(&v3[v10], 1, 1, v7);
  sub_10008B71C(v13, v3, &qword_1006F2F70, &unk_10059EA00);
  sub_10008B71C(v12, (v3 + 40), &qword_1006F2F70, &unk_10059EA00);
  return sub_10008B71C(v1, &v3[v10], &qword_1006F1348, &qword_10059C1A0);
}

uint64_t sub_1003C392C()
{
  sub_100009DCC(&qword_1006F1348, &qword_10059C1A0);
  __chkstk_darwin();
  v1 = v9 - v0;
  v2 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  sub_10000C910(v2, static ArtworkImage.Placeholder.View.Style.accentuated);
  v3 = sub_10000C49C(v2, static ArtworkImage.Placeholder.View.Style.accentuated);
  v4 = sub_100570458();
  v11[3] = &type metadata for Color;
  v11[4] = &protocol witness table for Color;
  v11[0] = v4;
  v5 = sub_100570A78();
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *v3 = 0u;
  v7 = *(v2 + 24);
  v6(&v3[v7], 1, 1, v5);
  sub_10008B71C(v11, v3, &qword_1006F2F70, &unk_10059EA00);
  sub_10008B71C(v9, (v3 + 40), &qword_1006F2F70, &unk_10059EA00);
  return sub_10008B71C(v1, &v3[v7], &qword_1006F1348, &qword_10059C1A0);
}

uint64_t sub_1003C3B34@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v7 = sub_10000C49C(v6, a2);
  return sub_1003CADAC(v7, a4, type metadata accessor for ArtworkImage.Placeholder.View.Style);
}

uint64_t sub_1003C3B9C@<X0>(char *a1@<X8>)
{
  sub_100009DCC(&qword_1006F1348, &qword_10059C1A0);
  __chkstk_darwin();
  v3 = v13 - v2;
  v14[3] = &type metadata for Color;
  v14[4] = &protocol witness table for Color;
  v4 = objc_opt_self();
  v5 = [v4 tertiaryLabelColor];
  v6 = sub_100570528();
  v13[4] = &protocol witness table for Color;
  v14[0] = v6;
  v13[3] = &type metadata for Color;
  v7 = [v4 secondarySystemFillColor];
  v13[0] = sub_100570528();
  v8 = sub_100570A78();
  v9 = *(*(v8 - 8) + 56);
  v9(v3, 1, 1, v8);
  v10 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  v11 = *(v10 + 24);
  v9(&a1[v11], 1, 1, v8);
  sub_10008B71C(v14, a1, &qword_1006F2F70, &unk_10059EA00);
  sub_10008B71C(v13, (a1 + 40), &qword_1006F2F70, &unk_10059EA00);
  return sub_10008B71C(v3, &a1[v11], &qword_1006F1348, &qword_10059C1A0);
}

uint64_t sub_1003C3D5C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6F69646172;
    v7 = 0x65726E6567;
    if (a1 != 10)
    {
      v7 = 0x7265736F706D6F63;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 30324;
    v9 = 0x6F68706F7263696DLL;
    if (a1 != 7)
    {
      v9 = 0x6E6F73726570;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x636973756DLL;
    v2 = 0x6C79616C5077656ELL;
    v3 = 0x7473696C79616C70;
    if (a1 != 4)
    {
      v3 = 0x646956636973756DLL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6979616C50776F6ELL;
    if (a1 != 1)
    {
      v4 = 0x65646C6F4677656ELL;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1003C3EDC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1003CDAC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1003C3F10(uint64_t a1)
{
  v2 = sub_1003CAE14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003C3F4C(uint64_t a1)
{
  v2 = sub_1003CAE14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003C3F88(uint64_t a1)
{
  v2 = sub_1003CAE68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003C3FC4(uint64_t a1)
{
  v2 = sub_1003CAE68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003C4030(uint64_t a1)
{
  v2 = sub_1003CAEBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003C406C(uint64_t a1)
{
  v2 = sub_1003CAEBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003C40A8(uint64_t a1)
{
  v2 = sub_1003CAFB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003C40E4(uint64_t a1)
{
  v2 = sub_1003CAFB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003C4120(uint64_t a1)
{
  v2 = sub_1003CB204();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003C415C(uint64_t a1)
{
  v2 = sub_1003CB204();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003C4198(uint64_t a1)
{
  v2 = sub_1003CB060();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003C41D4(uint64_t a1)
{
  v2 = sub_1003CB060();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003C4210(uint64_t a1)
{
  v2 = sub_1003CB15C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003C424C(uint64_t a1)
{
  v2 = sub_1003CB15C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003C4288(uint64_t a1)
{
  v2 = sub_1003CB108();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003C42C4(uint64_t a1)
{
  v2 = sub_1003CB108();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003C4300(uint64_t a1)
{
  v2 = sub_1003CB1B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003C433C(uint64_t a1)
{
  v2 = sub_1003CB1B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003C4378(uint64_t a1)
{
  v2 = sub_1003CAF64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003C43B4(uint64_t a1)
{
  v2 = sub_1003CAF64();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1003C4400(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_100574498();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1003C4488(uint64_t a1)
{
  v2 = sub_1003CB0B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003C44C4(uint64_t a1)
{
  v2 = sub_1003CB0B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003C4500(uint64_t a1)
{
  v2 = sub_1003CAF10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003C453C(uint64_t a1)
{
  v2 = sub_1003CAF10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003C4578(uint64_t a1)
{
  v2 = sub_1003CB00C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003C45B4(uint64_t a1)
{
  v2 = sub_1003CB00C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ArtworkImage.Placeholder.encode(to:)(void *a1)
{
  v2 = sub_100009DCC(&qword_1006F1350, &qword_10059C1A8);
  v82 = *(v2 - 8);
  v83 = v2;
  __chkstk_darwin();
  v81 = &v51 - v3;
  v4 = sub_100009DCC(&qword_1006F1358, &qword_10059C1B0);
  v79 = *(v4 - 8);
  v80 = v4;
  __chkstk_darwin();
  v78 = &v51 - v5;
  v6 = sub_100009DCC(&qword_1006F1360, &qword_10059C1B8);
  v76 = *(v6 - 8);
  v77 = v6;
  __chkstk_darwin();
  v75 = &v51 - v7;
  v8 = sub_100009DCC(&qword_1006F1368, &qword_10059C1C0);
  v73 = *(v8 - 8);
  v74 = v8;
  __chkstk_darwin();
  v72 = &v51 - v9;
  v10 = sub_100009DCC(&qword_1006F1370, &qword_10059C1C8);
  v70 = *(v10 - 8);
  v71 = v10;
  __chkstk_darwin();
  v69 = &v51 - v11;
  v68 = sub_100009DCC(&qword_1006F1378, &qword_10059C1D0);
  v67 = *(v68 - 8);
  __chkstk_darwin();
  v64 = &v51 - v12;
  v63 = sub_100009DCC(&qword_1006F1380, &qword_10059C1D8);
  v61 = *(v63 - 8);
  __chkstk_darwin();
  v60 = &v51 - v13;
  v66 = sub_100009DCC(&qword_1006F1388, &unk_10059C1E0);
  v65 = *(v66 - 8);
  __chkstk_darwin();
  v62 = &v51 - v14;
  sub_100009DCC(&qword_1006EF6E8, &qword_100598E50);
  __chkstk_darwin();
  v59 = &v51 - v15;
  v58 = sub_100009DCC(&qword_1006F1390, &qword_10059C1F0);
  v57 = *(v58 - 8);
  __chkstk_darwin();
  v56 = &v51 - v16;
  v55 = sub_100009DCC(&qword_1006F1398, &qword_10059C1F8);
  v54 = *(v55 - 8);
  __chkstk_darwin();
  v18 = &v51 - v17;
  v53 = sub_100009DCC(&qword_1006F13A0, &qword_10059C200);
  v52 = *(v53 - 8);
  __chkstk_darwin();
  v20 = &v51 - v19;
  v21 = sub_100009DCC(&qword_1006F13A8, &qword_10059C208);
  v51 = *(v21 - 8);
  __chkstk_darwin();
  v23 = &v51 - v22;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100009DCC(&qword_1006F13B0, &qword_10059C210);
  v27 = *(v26 - 8);
  v86 = v26;
  v87 = v27;
  __chkstk_darwin();
  v29 = &v51 - v28;
  sub_10000C8CC(a1, a1[3]);
  sub_1003CAE14();
  v85 = v29;
  sub_100574718();
  sub_1003CADAC(v84, v25, type metadata accessor for ArtworkImage.Placeholder);
  v30 = sub_100009DCC(&unk_1006F2C60, &qword_10059C108);
  v31 = (*(*(v30 - 8) + 48))(v25, 11, v30);
  if (v31 <= 5)
  {
    if (v31 > 2)
    {
      if (v31 == 3)
      {
        v90 = 2;
        sub_1003CB15C();
        v37 = v85;
        v36 = v86;
        sub_1005742F8();
        v41 = *(v54 + 8);
        v42 = v18;
        v43 = &v87;
      }

      else if (v31 == 4)
      {
        v91 = 3;
        sub_1003CB108();
        v40 = v56;
        v37 = v85;
        v36 = v86;
        sub_1005742F8();
        v41 = *(v57 + 8);
        v42 = v40;
        v43 = v92;
      }

      else
      {
        v92[17] = 5;
        sub_1003CB060();
        v50 = v60;
        v37 = v85;
        v36 = v86;
        sub_1005742F8();
        v41 = *(v61 + 8);
        v42 = v50;
        v43 = &v93;
      }
    }

    else
    {
      if (!v31)
      {
        v44 = v59;
        sub_100019B40(v25, v59, &qword_1006EF6E8, &qword_100598E50);
        v92[16] = 4;
        sub_1003CB0B4();
        v45 = v62;
        v47 = v85;
        v46 = v86;
        sub_1005742F8();
        sub_100572128();
        sub_1003CB258(&qword_1006F1400, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
        v48 = v66;
        sub_100574318();
        (*(v65 + 8))(v45, v48);
        sub_10001036C(v44, &qword_1006EF6E8, &qword_100598E50);
        return (*(v87 + 8))(v47, v46);
      }

      if (v31 == 1)
      {
        v88 = 0;
        sub_1003CB204();
        v32 = v85;
        v33 = v86;
        sub_1005742F8();
        (*(v51 + 8))(v23, v21);
        return (*(v87 + 8))(v32, v33);
      }

      v89 = 1;
      sub_1003CB1B0();
      v37 = v85;
      v36 = v86;
      sub_1005742F8();
      v41 = *(v52 + 8);
      v42 = v20;
      v43 = &v85;
    }

    goto LABEL_23;
  }

  if (v31 > 8)
  {
    if (v31 == 9)
    {
      v92[21] = 9;
      sub_1003CAF10();
      v35 = v75;
      v37 = v85;
      v36 = v86;
      sub_1005742F8();
      v39 = v76;
      v38 = v77;
    }

    else if (v31 == 10)
    {
      v92[22] = 10;
      sub_1003CAEBC();
      v35 = v78;
      v37 = v85;
      v36 = v86;
      sub_1005742F8();
      v39 = v79;
      v38 = v80;
    }

    else
    {
      v92[23] = 11;
      sub_1003CAE68();
      v35 = v81;
      v37 = v85;
      v36 = v86;
      sub_1005742F8();
      v39 = v82;
      v38 = v83;
    }

    goto LABEL_25;
  }

  if (v31 != 6)
  {
    if (v31 == 7)
    {
      v92[19] = 7;
      sub_1003CAFB8();
      v35 = v69;
      v37 = v85;
      v36 = v86;
      sub_1005742F8();
      v39 = v70;
      v38 = v71;
    }

    else
    {
      v92[20] = 8;
      sub_1003CAF64();
      v35 = v72;
      v37 = v85;
      v36 = v86;
      sub_1005742F8();
      v39 = v73;
      v38 = v74;
    }

LABEL_25:
    v41 = *(v39 + 8);
    v42 = v35;
    goto LABEL_26;
  }

  v92[18] = 6;
  sub_1003CB00C();
  v49 = v64;
  v37 = v85;
  v36 = v86;
  sub_1005742F8();
  v41 = *(v67 + 8);
  v42 = v49;
  v43 = &v94;
LABEL_23:
  v38 = *(v43 - 32);
LABEL_26:
  v41(v42, v38);
  return (*(v87 + 8))(v37, v36);
}

void ArtworkImage.Placeholder.hash(into:)(uint64_t a1)
{
  v2 = sub_100572128();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006EF6E8, &qword_100598E50);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v15 - v8;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003CADAC(v1, v11, type metadata accessor for ArtworkImage.Placeholder);
  v12 = sub_100009DCC(&unk_1006F2C60, &qword_10059C108);
  v13 = (*(*(v12 - 8) + 48))(v11, 11, v12);
  if (v13 > 5)
  {
    if (v13 > 8)
    {
      if (v13 == 9)
      {
        v14 = 9;
      }

      else if (v13 == 10)
      {
        v14 = 10;
      }

      else
      {
        v14 = 11;
      }
    }

    else if (v13 == 6)
    {
      v14 = 6;
    }

    else if (v13 == 7)
    {
      v14 = 7;
    }

    else
    {
      v14 = 8;
    }

    goto LABEL_23;
  }

  if (v13 > 2)
  {
    if (v13 == 3)
    {
      v14 = 2;
    }

    else if (v13 == 4)
    {
      v14 = 3;
    }

    else
    {
      v14 = 5;
    }

    goto LABEL_23;
  }

  if (v13)
  {
    v14 = v13 != 1;
LABEL_23:
    sub_100574688(v14);
    return;
  }

  sub_100019B40(v11, v9, &qword_1006EF6E8, &qword_100598E50);
  sub_100574688(4uLL);
  sub_10000CC8C(v9, v7, &qword_1006EF6E8, &qword_100598E50);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    sub_100574698(0);
  }

  else
  {
    (*(v3 + 32))(v5, v7, v2);
    sub_100574698(1u);
    sub_1003CB258(&qword_1006F1428, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
    sub_100572748();
    (*(v3 + 8))(v5, v2);
  }

  sub_10001036C(v9, &qword_1006EF6E8, &qword_100598E50);
}

Swift::Int ArtworkImage.Placeholder.hashValue.getter()
{
  sub_100574678();
  ArtworkImage.Placeholder.hash(into:)(v1);
  return sub_1005746C8();
}

uint64_t ArtworkImage.Placeholder.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v3 = sub_100009DCC(&qword_1006F1430, &qword_10059C218);
  v90 = *(v3 - 8);
  v91 = v3;
  __chkstk_darwin();
  v99 = &v67 - v4;
  v5 = sub_100009DCC(&qword_1006F1438, &qword_10059C220);
  v88 = *(v5 - 8);
  v89 = v5;
  __chkstk_darwin();
  v100 = &v67 - v6;
  v87 = sub_100009DCC(&qword_1006F1440, &qword_10059C228);
  v86 = *(v87 - 8);
  __chkstk_darwin();
  v103 = &v67 - v7;
  v85 = sub_100009DCC(&qword_1006F1448, &qword_10059C230);
  v84 = *(v85 - 8);
  __chkstk_darwin();
  v98 = &v67 - v8;
  v83 = sub_100009DCC(&qword_1006F1450, &qword_10059C238);
  v82 = *(v83 - 8);
  __chkstk_darwin();
  v97 = &v67 - v9;
  v81 = sub_100009DCC(&qword_1006F1458, &qword_10059C240);
  v79 = *(v81 - 8);
  __chkstk_darwin();
  v96 = &v67 - v10;
  v77 = sub_100009DCC(&qword_1006F1460, &qword_10059C248);
  v76 = *(v77 - 8);
  __chkstk_darwin();
  v94 = &v67 - v11;
  v80 = sub_100009DCC(&qword_1006F1468, &qword_10059C250);
  v78 = *(v80 - 8);
  __chkstk_darwin();
  v95 = &v67 - v12;
  v74 = sub_100009DCC(&qword_1006F1470, &qword_10059C258);
  v75 = *(v74 - 8);
  __chkstk_darwin();
  v102 = &v67 - v13;
  v73 = sub_100009DCC(&qword_1006F1478, &qword_10059C260);
  v72 = *(v73 - 8);
  __chkstk_darwin();
  v93 = &v67 - v14;
  v71 = sub_100009DCC(&qword_1006F1480, &qword_10059C268);
  v70 = *(v71 - 8);
  __chkstk_darwin();
  v92 = &v67 - v15;
  v69 = sub_100009DCC(&qword_1006F1488, &qword_10059C270);
  v68 = *(v69 - 8);
  __chkstk_darwin();
  v17 = &v67 - v16;
  v18 = sub_100009DCC(&qword_1006F1490, &qword_10059C278);
  v104 = *(v18 - 8);
  __chkstk_darwin();
  v20 = &v67 - v19;
  v21 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = &v67 - v24;
  v26 = a1[3];
  v106 = a1;
  sub_10000C8CC(a1, v26);
  sub_1003CAE14();
  v27 = v105;
  sub_100574708();
  if (!v27)
  {
    v67 = v23;
    v29 = v102;
    v28 = v103;
    v105 = v25;
    v30 = sub_1005742E8();
    if (*(v30 + 16) == 1)
    {
      v31 = *(v30 + 32);
      if (v31 != 12)
      {
        if (*(v30 + 32) > 5u)
        {
          v40 = v104;
          if (*(v30 + 32) > 8u)
          {
            v32 = v101;
            if (v31 == 9)
            {
              v116 = 9;
              sub_1003CAF10();
              sub_100574258();
              (*(v86 + 8))(v28, v87);
              (*(v40 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v53 = sub_100009DCC(&unk_1006F2C60, &qword_10059C108);
              v36 = v105;
              (*(*(v53 - 8) + 56))(v105, 9, 11, v53);
            }

            else if (v31 == 10)
            {
              v117 = 10;
              sub_1003CAEBC();
              v47 = v100;
              sub_100574258();
              (*(v88 + 8))(v47, v89);
              (*(v40 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v48 = sub_100009DCC(&unk_1006F2C60, &qword_10059C108);
              v36 = v105;
              (*(*(v48 - 8) + 56))(v105, 10, 11, v48);
            }

            else
            {
              v59 = v101;
              v118 = 11;
              sub_1003CAE68();
              v60 = v99;
              sub_100574258();
              (*(v90 + 8))(v60, v91);
              (*(v40 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v65 = sub_100009DCC(&unk_1006F2C60, &qword_10059C108);
              v36 = v105;
              (*(*(v65 - 8) + 56))(v105, 11, 11, v65);
              v32 = v59;
            }
          }

          else
          {
            v32 = v101;
            if (v31 == 6)
            {
              v113 = 6;
              sub_1003CB00C();
              v49 = v96;
              sub_100574258();
              (*(v79 + 8))(v49, v81);
              (*(v40 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v50 = sub_100009DCC(&unk_1006F2C60, &qword_10059C108);
              v36 = v105;
              (*(*(v50 - 8) + 56))(v105, 6, 11, v50);
            }

            else if (v31 == 7)
            {
              v114 = 7;
              sub_1003CAFB8();
              v41 = v97;
              sub_100574258();
              (*(v82 + 8))(v41, v83);
              (*(v40 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v42 = sub_100009DCC(&unk_1006F2C60, &qword_10059C108);
              v36 = v105;
              (*(*(v42 - 8) + 56))(v105, 7, 11, v42);
            }

            else
            {
              v115 = 8;
              sub_1003CAF64();
              v56 = v98;
              sub_100574258();
              (*(v84 + 8))(v56, v85);
              (*(v40 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v57 = sub_100009DCC(&unk_1006F2C60, &qword_10059C108);
              v36 = v105;
              (*(*(v57 - 8) + 56))(v105, 8, 11, v57);
            }
          }

          goto LABEL_29;
        }

        if (*(v30 + 32) <= 2u)
        {
          v32 = v101;
          if (*(v30 + 32))
          {
            if (v31 == 1)
            {
              v108 = 1;
              sub_1003CB1B0();
              v33 = v92;
              sub_100574258();
              v34 = v104;
              (*(v70 + 8))(v33, v71);
              (*(v34 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v35 = sub_100009DCC(&unk_1006F2C60, &qword_10059C108);
              v36 = v105;
              (*(*(v35 - 8) + 56))(v105, 2, 11, v35);
            }

            else
            {
              v109 = 2;
              sub_1003CB15C();
              v54 = v93;
              sub_100574258();
              v55 = v104;
              (*(v72 + 8))(v54, v73);
              (*(v55 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v63 = sub_100009DCC(&unk_1006F2C60, &qword_10059C108);
              v36 = v105;
              (*(*(v63 - 8) + 56))(v105, 3, 11, v63);
            }
          }

          else
          {
            v107 = 0;
            sub_1003CB204();
            sub_100574258();
            (*(v68 + 8))(v17, v69);
            (*(v104 + 8))(v20, v18);
            swift_unknownObjectRelease();
            v62 = sub_100009DCC(&unk_1006F2C60, &qword_10059C108);
            v36 = v105;
            (*(*(v62 - 8) + 56))(v105, 1, 11, v62);
          }

          goto LABEL_29;
        }

        if (v31 == 3)
        {
          v110 = 3;
          sub_1003CB108();
          sub_100574258();
          v51 = v104;
          (*(v75 + 8))(v29, v74);
          (*(v51 + 8))(v20, v18);
          swift_unknownObjectRelease();
          v52 = sub_100009DCC(&unk_1006F2C60, &qword_10059C108);
          v36 = v105;
          (*(*(v52 - 8) + 56))(v105, 4, 11, v52);
        }

        else
        {
          v43 = v104;
          if (v31 == 4)
          {
            v111 = 4;
            sub_1003CB0B4();
            v44 = v95;
            sub_100574258();
            sub_100572128();
            sub_1003CB258(&qword_1006F14A0, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
            v45 = v67;
            v46 = v80;
            sub_100574288();
            (*(v78 + 8))(v44, v46);
            (*(v43 + 8))(v20, v18);
            swift_unknownObjectRelease();
            v66 = sub_100009DCC(&unk_1006F2C60, &qword_10059C108);
            (*(*(v66 - 8) + 56))(v45, 0, 11, v66);
            v36 = v105;
            sub_1003CB2A0(v45, v105, type metadata accessor for ArtworkImage.Placeholder);
            v32 = v101;
LABEL_29:
            sub_1003CB2A0(v36, v32, type metadata accessor for ArtworkImage.Placeholder);
            return sub_100010474(v106);
          }

          v112 = 5;
          sub_1003CB060();
          v58 = v94;
          sub_100574258();
          (*(v76 + 8))(v58, v77);
          (*(v43 + 8))(v20, v18);
          swift_unknownObjectRelease();
          v64 = sub_100009DCC(&unk_1006F2C60, &qword_10059C108);
          v36 = v105;
          (*(*(v64 - 8) + 56))(v105, 5, 11, v64);
        }

        v32 = v101;
        goto LABEL_29;
      }
    }

    v37 = sub_100573F88();
    swift_allocError();
    v39 = v38;
    sub_100009DCC(&qword_1006F1498, &qword_10059C280);
    *v39 = v21;
    sub_100574268();
    sub_100573F78();
    (*(*(v37 - 8) + 104))(v39, enum case for DecodingError.typeMismatch(_:), v37);
    swift_willThrow();
    (*(v104 + 8))(v20, v18);
    swift_unknownObjectRelease();
  }

  return sub_100010474(v106);
}

uint64_t sub_1003C6B2C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_1003C6B94(uint64_t a1)
{
  sub_100574678();
  ArtworkImage.Placeholder.hash(into:)(v2);
  return sub_1005746C8();
}

uint64_t GenericMusicItem.placeholder.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1005722D8();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10056D438();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v47 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin();
  v12 = &v44 - v11;
  v13 = *(v8 + 16);
  v13(&v44 - v11, v1, v7, v10);
  v14 = (*(v8 + 88))(v12, v7);
  if (v14 == enum case for GenericMusicItem.album(_:))
  {
    goto LABEL_2;
  }

  v48 = a1;
  if (v14 == enum case for GenericMusicItem.artist(_:))
  {
LABEL_5:
    (*(v8 + 8))(v12, v7);
    v15 = sub_100009DCC(&unk_1006F2C60, &qword_10059C108);
    v16 = *(*(v15 - 8) + 56);
    v17 = v48;
    v18 = 7;
    return v16(v17, v18, 11, v15);
  }

  if (v14 == enum case for GenericMusicItem.composer(_:))
  {
    v20 = sub_100009DCC(&unk_1006F2C60, &qword_10059C108);
    (*(*(v20 - 8) + 56))(v48, 11, 11, v20);
    return (*(v8 + 8))(v12, v7);
  }

  if (v14 == enum case for GenericMusicItem.creditArtist(_:) || v14 == enum case for GenericMusicItem.curator(_:))
  {
    goto LABEL_5;
  }

  if (v14 == enum case for GenericMusicItem.editorialItem(_:))
  {
LABEL_15:
    (*(v8 + 8))(v12, v7);
    v15 = sub_100009DCC(&unk_1006F2C60, &qword_10059C108);
    v16 = *(*(v15 - 8) + 56);
    v17 = v48;
    goto LABEL_3;
  }

  if (v14 == enum case for GenericMusicItem.genre(_:))
  {
    v22 = sub_100009DCC(&unk_1006F2C60, &qword_10059C108);
    (*(*(v22 - 8) + 56))(v48, 10, 11, v22);
    return (*(v8 + 8))(v12, v7);
  }

  if (v14 == enum case for GenericMusicItem.musicMovie(_:))
  {
    goto LABEL_19;
  }

  if (v14 == enum case for GenericMusicItem.musicVideo(_:))
  {
    v24 = sub_100009DCC(&unk_1006F2C60, &qword_10059C108);
    (*(*(v24 - 8) + 56))(v48, 5, 11, v24);
    return (*(v8 + 8))(v12, v7);
  }

  if (v14 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v8 + 96))(v12, v7);
    (*(v4 + 32))(v6, v12, v3);
    v25 = v48;
    sub_100572148();
    (*(v4 + 8))(v6, v3);
    v26 = sub_100009DCC(&unk_1006F2C60, &qword_10059C108);
    return (*(*(v26 - 8) + 56))(v25, 0, 11, v26);
  }

  if (v14 == enum case for GenericMusicItem.playlistFolder(_:))
  {
    v27 = enum case for Playlist.Variant.folder(_:);
    v28 = sub_100572128();
    v29 = *(v28 - 8);
    v30 = v48;
    (*(v29 + 104))(v48, v27, v28);
    (*(v29 + 56))(v30, 0, 1, v28);
    v31 = sub_100009DCC(&unk_1006F2C60, &qword_10059C108);
    (*(*(v31 - 8) + 56))(v30, 0, 11, v31);
    return (*(v8 + 8))(v12, v7);
  }

  if (v14 == enum case for GenericMusicItem.radioShow(_:))
  {
    goto LABEL_27;
  }

  if (v14 == enum case for GenericMusicItem.recordLabel(_:))
  {
    goto LABEL_5;
  }

  if (v14 == enum case for GenericMusicItem.socialProfile(_:))
  {
    v33 = sub_100009DCC(&unk_1006F2C60, &qword_10059C108);
    (*(*(v33 - 8) + 56))(v48, 8, 11, v33);
    return (*(v8 + 8))(v12, v7);
  }

  a1 = v48;
  if (v14 == enum case for GenericMusicItem.song(_:))
  {
    goto LABEL_2;
  }

  if (v14 == enum case for GenericMusicItem.station(_:))
  {
LABEL_27:
    (*(v8 + 8))(v12, v7);
    v32 = sub_100009DCC(&unk_1006F2C60, &qword_10059C108);
    return (*(*(v32 - 8) + 56))(v48, 9, 11, v32);
  }

  if (v14 == enum case for GenericMusicItem.tvEpisode(_:) || v14 == enum case for GenericMusicItem.tvSeason(_:) || v14 == enum case for GenericMusicItem.tvShow(_:))
  {
LABEL_19:
    (*(v8 + 8))(v12, v7);
    v23 = sub_100009DCC(&unk_1006F2C60, &qword_10059C108);
    return (*(*(v23 - 8) + 56))(v48, 6, 11, v23);
  }

  a1 = v48;
  if (v14 == enum case for GenericMusicItem.uploadedAudio(_:))
  {
LABEL_2:
    (*(v8 + 8))(v12, v7);
    v15 = sub_100009DCC(&unk_1006F2C60, &qword_10059C108);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1;
LABEL_3:
    v18 = 1;
    return v16(v17, v18, 11, v15);
  }

  if (v14 == enum case for GenericMusicItem.uploadedVideo(_:))
  {
    goto LABEL_19;
  }

  if (v14 == enum case for GenericMusicItem.other(_:))
  {
    goto LABEL_15;
  }

  if (qword_1006EEB48 != -1)
  {
    swift_once();
  }

  v34 = sub_10056DF88();
  sub_10000C49C(v34, static Logger.artwork);
  (v13)(v47, v1, v7);
  v35 = sub_10056DF68();
  v46 = sub_100573438();
  if (os_log_type_enabled(v35, v46))
  {
    v36 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v49 = v45;
    *v36 = 136315394;
    *(v36 + 4) = sub_10037A2AC(0xD000000000000010, 0x80000001005B7BC0, &v49);
    *(v36 + 12) = 2080;
    sub_1003CB258(&qword_1006EF950, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
    v37 = v47;
    v38 = sub_100574408();
    v40 = v39;
    v41 = *(v8 + 8);
    v41(v37, v7);
    v42 = sub_10037A2AC(v38, v40, &v49);

    *(v36 + 14) = v42;
    _os_log_impl(&_mh_execute_header, v35, v46, "Unhandled case for %s: %s", v36, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v41 = *(v8 + 8);
    v41(v47, v7);
  }

  v43 = sub_100009DCC(&unk_1006F2C60, &qword_10059C108);
  (*(*(v43 - 8) + 56))(v48, 1, 11, v43);
  return (v41)(v12, v7);
}

uint64_t GenericMusicItem.aspectRatio.getter()
{
  sub_100009DCC(&qword_1006F3E50, &qword_1005971F0);
  __chkstk_darwin();
  v2 = &v33[-v1];
  v3 = sub_10056DA88();
  v35 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v33[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10056D438();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin();
  v12 = &v33[-v11];
  v13 = *(v7 + 16);
  v13(&v33[-v11], v0, v6, v10);
  v14 = (*(v7 + 88))(v12, v6);
  v20 = v14 == enum case for GenericMusicItem.album(_:) || v14 == enum case for GenericMusicItem.artist(_:) || v14 == enum case for GenericMusicItem.composer(_:) || v14 == enum case for GenericMusicItem.creditArtist(_:) || v14 == enum case for GenericMusicItem.curator(_:) || v14 == enum case for GenericMusicItem.editorialItem(_:) || v14 == enum case for GenericMusicItem.genre(_:);
  if (v20 || v14 == enum case for GenericMusicItem.musicMovie(_:) || v14 == enum case for GenericMusicItem.musicVideo(_:) || v14 == enum case for GenericMusicItem.playlist(_:) || v14 == enum case for GenericMusicItem.playlistFolder(_:) || v14 == enum case for GenericMusicItem.radioShow(_:) || v14 == enum case for GenericMusicItem.recordLabel(_:) || v14 == enum case for GenericMusicItem.socialProfile(_:) || v14 == enum case for GenericMusicItem.song(_:) || v14 == enum case for GenericMusicItem.station(_:) || v14 == enum case for GenericMusicItem.tvEpisode(_:) || v14 == enum case for GenericMusicItem.tvSeason(_:) || v14 == enum case for GenericMusicItem.tvShow(_:) || v14 == enum case for GenericMusicItem.uploadedAudio(_:))
  {
    return (*(v7 + 8))(v12, v6);
  }

  if (v14 == enum case for GenericMusicItem.uploadedVideo(_:))
  {
    (*(v7 + 96))(v12, v6);
    v22 = v35;
    (*(v35 + 32))(v5, v12, v3);
    sub_100374A78(v2);
    v23 = type metadata accessor for ArtworkImage.ViewModel(0);
    if ((*(*(v23 - 8) + 48))(v2, 1, v23) == 1)
    {
      (*(v22 + 8))(v5, v3);
      return sub_10001036C(v2, &qword_1006F3E50, &qword_1005971F0);
    }

    else if (sub_100571DE8() < 1 || sub_100571DF8() < 1)
    {
      (*(v22 + 8))(v5, v3);
      return sub_1003CAD4C(v2, type metadata accessor for ArtworkImage.ViewModel);
    }

    else
    {
      sub_100571DE8();
      sub_100571DF8();
      (*(v22 + 8))(v5, v3);
      return sub_1003CAD4C(v2, type metadata accessor for ArtworkImage.ViewModel);
    }
  }

  if (v14 == enum case for GenericMusicItem.other(_:))
  {
    return (*(v7 + 8))(v12, v6);
  }

  if (qword_1006EEB48 != -1)
  {
    swift_once();
  }

  v24 = sub_10056DF88();
  sub_10000C49C(v24, static Logger.artwork);
  (v13)(v9, v0, v6);
  v25 = sub_10056DF68();
  v26 = sub_100573438();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *v27 = 136315394;
    *(v27 + 4) = sub_10037A2AC(0xD000000000000010, 0x80000001005B7BC0, &v36);
    *(v27 + 12) = 2080;
    sub_1003CB258(&qword_1006EF950, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
    v34 = v26;
    v28 = sub_100574408();
    v30 = v29;
    v31 = *(v7 + 8);
    v31(v9, v6);
    v32 = sub_10037A2AC(v28, v30, &v36);

    *(v27 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v25, v34, "Unhandled case for %s: %s", v27, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v31 = *(v7 + 8);
    v31(v9, v6);
  }

  return (v31)(v12, v6);
}

void Playlist.Variant.symbolImage.getter()
{
  v1 = v0;
  v2 = sub_100572128();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 != enum case for Playlist.Variant.smart(_:) && v7 != enum case for Playlist.Variant.genius(_:) && v7 != enum case for Playlist.Variant.folder(_:))
  {
    (*(v3 + 8))(v6, v2);
  }

  v8 = sub_100572898();

  v9 = [objc_opt_self() _systemImageNamed:v8];

  if (!v9)
  {
    __break(1u);
  }
}

uint64_t ArtworkImage.ViewModel.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100571E58();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArtworkImage.ViewModel(0);
  v10 = __chkstk_darwin();
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v21 = v9;
    v13 = a1;
    sub_100571D18();
    v14 = [v13 token];
    sub_100573D58();
    swift_unknownObjectRelease();
    sub_1000D3B98(0, &qword_1006F14A8, MPStoreArtworkRequestToken_ptr);
    if ((swift_dynamicCast() & 1) != 0 && (v15 = v22, v16 = [v22 cropStyle], v15, v16))
    {
      (*(v5 + 16))(v12, v7, v4);
      Artwork.CropStyle.init(_:)(v16, &v12[*(v8 + 20)]);

      (*(v5 + 8))(v7, v4);
    }

    else
    {

      v17 = *(v8 + 20);
      v18 = sub_100571DC8();
      (*(*(v18 - 8) + 56))(&v12[v17], 1, 1, v18);
      (*(v5 + 32))(v12, v7, v4);
    }

    sub_1003CB2A0(v12, a2, type metadata accessor for ArtworkImage.ViewModel);
    return (*(v21 + 56))(a2, 0, 1, v8);
  }

  else
  {
    v20 = *(v9 + 56);

    return v20(a2, 1, 1, v8, v10);
  }
}

uint64_t Artwork.CropStyle.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100571DC8();
  v6 = __chkstk_darwin();
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_53;
  }

  v61 = v5;
  v9 = sub_1005728D8();
  v11 = v10;
  if (v9 == sub_1005728D8() && v11 == v12)
  {
    v26 = a1;

    goto LABEL_16;
  }

  v14 = sub_100574498();
  v15 = a1;

  if (v14)
  {
LABEL_16:
    sub_100571D48();
LABEL_17:

    (*(v61 + 32))(a2, v8, v4);
    return (*(v61 + 56))(a2, 0, 1, v4);
  }

  v16 = sub_1005728D8();
  v18 = v17;
  if (v16 == sub_1005728D8() && v18 == v19)
  {

    goto LABEL_19;
  }

  v21 = sub_100574498();

  if (v21)
  {
LABEL_19:
    sub_100571D68();
    goto LABEL_17;
  }

  v22 = sub_1005728D8();
  v24 = v23;
  if (v22 == sub_1005728D8() && v24 == v25)
  {

LABEL_21:
    sub_100571D78();
    goto LABEL_17;
  }

  v28 = sub_100574498();

  if (v28)
  {
    goto LABEL_21;
  }

  v29 = sub_1005728D8();
  v31 = v30;
  if (v29 == sub_1005728D8() && v31 == v32)
  {

LABEL_26:
    sub_100571DA8();
    goto LABEL_17;
  }

  v33 = sub_100574498();

  if (v33)
  {
    goto LABEL_26;
  }

  v34 = sub_1005728D8();
  v36 = v35;
  if (v34 == sub_1005728D8() && v36 == v37)
  {

LABEL_31:
    sub_100571D98();
    goto LABEL_17;
  }

  v38 = sub_100574498();

  if (v38)
  {
    goto LABEL_31;
  }

  v39 = sub_1005728D8();
  v41 = v40;
  if (v39 == sub_1005728D8() && v41 == v42)
  {

LABEL_36:
    sub_100571DB8();
    goto LABEL_17;
  }

  v43 = sub_100574498();

  if (v43)
  {
    goto LABEL_36;
  }

  v44 = sub_1005728D8();
  v46 = v45;
  if (v44 == sub_1005728D8() && v46 == v47)
  {

LABEL_41:
    sub_100571D58();
    goto LABEL_17;
  }

  v48 = sub_100574498();

  if (v48)
  {
    goto LABEL_41;
  }

  v49 = sub_1005728D8();
  v51 = v50;
  if (v49 == sub_1005728D8() && v51 == v52)
  {

LABEL_46:
    sub_100571D88();
    goto LABEL_17;
  }

  v53 = sub_100574498();

  if (v53)
  {
    goto LABEL_46;
  }

  v54 = sub_1005728D8();
  v56 = v55;
  if (v54 == sub_1005728D8() && v56 == v57)
  {

LABEL_51:
    sub_100571D38();
    goto LABEL_17;
  }

  v58 = sub_100574498();

  if (v58)
  {
    goto LABEL_51;
  }

  v5 = v61;
LABEL_53:
  v59 = *(v5 + 56);

  return v59(a2, 1, 1, v4, v6);
}

uint64_t sub_1003C8880()
{
  v0 = sub_100571DC8();
  sub_10000C910(v0, static Artwork.CropStyle.fallback);
  sub_10000C49C(v0, static Artwork.CropStyle.fallback);
  return sub_100571D48();
}

uint64_t sub_1003C8904()
{
  v0 = sub_100571D28();
  sub_10000C910(v0, static Artwork.ImageFormat.fallback);
  v1 = sub_10000C49C(v0, static Artwork.ImageFormat.fallback);
  v2 = enum case for Artwork.ImageFormat.heic(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static Artwork.monogramArtwork(for:layoutDirection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_1000D3B98(0, &qword_1006EF688, MPArtworkCatalog_ptr);
  if (static MPArtworkCatalog.monogram(for:layoutDirection:)(a1, a2, a3, a4 & 1))
  {
    sub_100571D18();
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = sub_100571E58();
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

uint64_t sub_1003C8AB8()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, static Logger.artwork);
  sub_10000C49C(v0, static Logger.artwork);
  return static Logger.music(_:)(0x6B726F77747241, 0xE700000000000000);
}

uint64_t sub_1003C8B74@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_10000C49C(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_1003C8C18()
{
  v0 = sub_100009DCC(&qword_1006F1330, &unk_10059C180);
  sub_10000C910(v0, qword_1006F1310);
  v1 = sub_10000C49C(v0, qword_1006F1310);
  v2 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_1003C8CB8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006EEB50 != -1)
  {
    swift_once();
  }

  v2 = sub_100009DCC(&qword_1006F1330, &unk_10059C180);
  v3 = sub_10000C49C(v2, qword_1006F1310);
  return sub_10000CC8C(v3, a1, &qword_1006F1330, &unk_10059C180);
}

void (*EnvironmentValues.placeholderStyle.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100009DCC(&qword_1006F1330, &unk_10059C180) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v4[2] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v5);
    v4[2] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[3] = v6;
  v4[4] = sub_1003CACD8();
  sub_10056F1A8();
  return sub_1003C8E60;
}

void sub_1003C8E60(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_10000CC8C((*a1)[3], (*a1)[2], &qword_1006F1330, &unk_10059C180);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    sub_10000CC8C(v3[2], v3[1], &qword_1006F1330, &unk_10059C180);
    sub_10056F1B8();
    sub_10001036C(v6, &qword_1006F1330, &unk_10059C180);
  }

  else
  {
    sub_10056F1B8();
  }

  sub_10001036C(v4, &qword_1006F1330, &unk_10059C180);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

uint64_t sub_1003C8F70(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  sub_100009DCC(&qword_1006F1348, &qword_10059C1A0);
  __chkstk_darwin();
  v4 = &v19 - v3;
  v5 = sub_100570A78();
  v19 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F1330, &unk_10059C180);
  __chkstk_darwin();
  v9 = &v19 - v8;
  v10 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CC8C(a2, v9, &qword_1006F1330, &unk_10059C180);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_10001036C(v9, &qword_1006F1330, &unk_10059C180);
  }

  sub_1003CB2A0(v9, v13, type metadata accessor for ArtworkImage.Placeholder.View.Style);
  sub_10000CC8C(v13, &v21, &qword_1006F2F70, &unk_10059EA00);
  if (v22)
  {
    sub_10002EA74(&v21, v23);
    v15 = v20;
    sub_10001036C(v20, &qword_1006F2F70, &unk_10059EA00);
    sub_10002EA74(v23, v15);
  }

  else
  {
    sub_10001036C(&v21, &qword_1006F2F70, &unk_10059EA00);
    v15 = v20;
  }

  v16 = v19;
  sub_10000CC8C((v13 + 40), &v21, &qword_1006F2F70, &unk_10059EA00);
  if (v22)
  {
    sub_10002EA74(&v21, v23);
    sub_10001036C(v15 + 40, &qword_1006F2F70, &unk_10059EA00);
    sub_10002EA74(v23, v15 + 40);
  }

  else
  {
    sub_10001036C(&v21, &qword_1006F2F70, &unk_10059EA00);
  }

  sub_10000CC8C(&v13[*(v10 + 24)], v4, &qword_1006F1348, &qword_10059C1A0);
  sub_1003CAD4C(v13, type metadata accessor for ArtworkImage.Placeholder.View.Style);
  if ((*(v16 + 48))(v4, 1, v5) == 1)
  {
    return sub_10001036C(v4, &qword_1006F1348, &qword_10059C1A0);
  }

  v17 = *(v16 + 32);
  v17(v7, v4, v5);
  v18 = *(v10 + 24);
  sub_10001036C(v15 + v18, &qword_1006F1348, &qword_10059C1A0);
  v17((v15 + v18), v7, v5);
  return (*(v16 + 56))(v15 + v18, 0, 1, v5);
}

uint64_t PlaceholderStyleModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = (a2 + *(sub_100009DCC(&qword_1006F14B0, &qword_10059C288) + 36));
  v6 = *(sub_100009DCC(&qword_1006F14B8, &qword_10059C290) + 28);
  sub_1003C94B8(&v5[v6]);
  v7 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  (*(*(v7 - 8) + 56))(&v5[v6], 0, 1, v7);
  *v5 = KeyPath;
  v8 = sub_100009DCC(&qword_1006F14C0, &qword_10059C298);
  v9 = *(*(v8 - 8) + 16);

  return v9(a2, a1, v8);
}

uint64_t sub_1003C94B8@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_100009DCC(&qword_1006F1348, &qword_10059C1A0);
  __chkstk_darwin();
  v5 = &v15 - v4;
  sub_100009DCC(&qword_1006F1330, &unk_10059C180);
  __chkstk_darwin();
  v7 = (&v15 - v6);
  type metadata accessor for PlaceholderStyleModifier(0);
  sub_1003BEBC0(v7);
  v8 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v7, 1, v8) == 1)
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    v10 = sub_100570A78();
    memset(v17, 0, sizeof(v17));
    v18 = 0;
    v11 = *(*(v10 - 8) + 56);
    v11(v5, 1, 1, v10);
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
    v16 = v2;
    v12 = *(v8 + 24);
    v11(&a1[v12], 1, 1, v10);
    sub_10008B71C(v19, a1, &qword_1006F2F70, &unk_10059EA00);
    sub_10008B71C(v17, (a1 + 40), &qword_1006F2F70, &unk_10059EA00);
    v13 = &a1[v12];
    v2 = v16;
    sub_10008B71C(v5, v13, &qword_1006F1348, &qword_10059C1A0);
    if (v9(v7, 1, v8) != 1)
    {
      sub_10001036C(v7, &qword_1006F1330, &unk_10059C180);
    }
  }

  else
  {
    sub_1003CB2A0(v7, a1, type metadata accessor for ArtworkImage.Placeholder.View.Style);
  }

  return (*v2)(a1);
}

uint64_t View.placeholderStyle(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a3;
  v4 = *(sub_100009DCC(&qword_1006F1330, &unk_10059C180) - 8);
  __chkstk_darwin();
  v6 = &v14 - v5;
  v7 = type metadata accessor for PlaceholderStyleModifier(0);
  __chkstk_darwin();
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000CC8C(a1, v6, &qword_1006F1330, &unk_10059C180);
  v10 = *(v7 + 20);
  *(v9 + v10) = swift_getKeyPath();
  sub_100009DCC(&qword_1006EED98, &qword_1005971B0);
  swift_storeEnumTagMultiPayload();
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_100019B40(v6, v12 + v11, &qword_1006F1330, &unk_10059C180);
  *v9 = sub_1003CB32C;
  v9[1] = v12;
  sub_100570328();
  return sub_1003CAD4C(v9, type metadata accessor for PlaceholderStyleModifier);
}

uint64_t View.placeholderStyle(_:)(void (*a1)(__n128), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(sub_100009DCC(&qword_1006F1330, &unk_10059C180) - 8);
  __chkstk_darwin();
  v7 = &v16 - v6;
  v8 = type metadata accessor for PlaceholderStyleModifier(0);
  v9 = __chkstk_darwin();
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  a1(v9);
  v12 = *(v8 + 20);
  *(v11 + v12) = swift_getKeyPath();
  sub_100009DCC(&qword_1006EED98, &qword_1005971B0);
  swift_storeEnumTagMultiPayload();
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_100019B40(v7, v14 + v13, &qword_1006F1330, &unk_10059C180);
  *v11 = sub_1003CE2A0;
  v11[1] = v14;
  sub_100570328();
  return sub_1003CAD4C(v11, type metadata accessor for PlaceholderStyleModifier);
}

uint64_t View.placeholderStyle(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  type metadata accessor for PlaceholderStyleModifier(0);
  __chkstk_darwin();
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v9 + 20);
  *(v8 + v10) = swift_getKeyPath();
  sub_100009DCC(&qword_1006EED98, &qword_1005971B0);
  swift_storeEnumTagMultiPayload();
  *v8 = a1;
  v8[1] = a2;

  sub_100570328();
  return sub_1003CAD4C(v8, type metadata accessor for PlaceholderStyleModifier);
}

uint64_t _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E4SizeV23__derived_struct_equalsySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((*(a1 + 8) & 1) == 0)
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }

LABEL_7:
    v3 = *(a2 + 24);
    if (*(a1 + 24))
    {
      if (!*(a2 + 24))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 16) != *(a2 + 16))
      {
        v3 = 1;
      }

      if (v3)
      {
        return 0;
      }
    }

    v4 = *(a2 + 40);
    if (*(a1 + 40))
    {
      if (!*(a2 + 40))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 32) != *(a2 + 32))
      {
        v4 = 1;
      }

      if (v4)
      {
        return 0;
      }
    }

    v5 = *(a2 + 41);
    if (*(a1 + 41) == 2)
    {
      if (v5 != 2)
      {
        return 0;
      }
    }

    else if (v5 == 2 || (sub_10056E6A8() & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  if (*(a2 + 8))
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E4InfoV23__derived_struct_equalsySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.ViewModel(0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v37[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F3E50, &qword_1005971F0);
  __chkstk_darwin();
  v9 = &v37[-1] - v8;
  sub_100009DCC(&unk_1006F2E50, &qword_10059E8A0);
  __chkstk_darwin();
  v11 = &v37[-1] - v10;
  v13 = *(v12 + 56);
  sub_10000CC8C(a1, &v37[-1] - v10, &qword_1006F3E50, &qword_1005971F0);
  sub_10000CC8C(a2, &v11[v13], &qword_1006F3E50, &qword_1005971F0);
  v14 = *(v5 + 48);
  if (v14(v11, 1, v4) != 1)
  {
    sub_10000CC8C(v11, v9, &qword_1006F3E50, &qword_1005971F0);
    if (v14(&v11[v13], 1, v4) != 1)
    {
      sub_1003CB2A0(&v11[v13], v7, type metadata accessor for ArtworkImage.ViewModel);
      v15 = _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelV23__derived_struct_equalsySbAF_AFtFZ_0(v9, v7);
      sub_1003CAD4C(v7, type metadata accessor for ArtworkImage.ViewModel);
      sub_1003CAD4C(v9, type metadata accessor for ArtworkImage.ViewModel);
      sub_10001036C(v11, &qword_1006F3E50, &qword_1005971F0);
      if (!v15)
      {
        return 0;
      }

      goto LABEL_8;
    }

    sub_1003CAD4C(v9, type metadata accessor for ArtworkImage.ViewModel);
LABEL_6:
    sub_10001036C(v11, &unk_1006F2E50, &qword_10059E8A0);
    return 0;
  }

  if (v14(&v11[v13], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_10001036C(v11, &qword_1006F3E50, &qword_1005971F0);
LABEL_8:
  v16 = type metadata accessor for ArtworkImage.Info(0);
  if (_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO21__derived_enum_equalsySbAF_AFtFZ_0(a1 + v16[5], a2 + v16[5]))
  {
    v17 = v16[6];
    v18 = (a1 + v17);
    v19 = *(a1 + v17 + 8);
    v20 = (a2 + v17);
    v21 = *(a2 + v17 + 8);
    if (v19)
    {
      if (!v21)
      {
        return 0;
      }
    }

    else
    {
      if (*v18 != *v20)
      {
        LOBYTE(v21) = 1;
      }

      if (v21)
      {
        return 0;
      }
    }

    v22 = (a1 + v16[7]);
    v23 = *(v22 + 26);
    v24 = v22[1];
    v36 = *v22;
    v37[0] = v24;
    *(v37 + 10) = v23;
    v25 = (a2 + v16[7]);
    *&v39[10] = *(v25 + 26);
    v26 = v25[1];
    v38 = *v25;
    *v39 = v26;
    if (_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E4SizeV23__derived_struct_equalsySbAF_AFtFZ_0(&v36, &v38))
    {
      v27 = v16[8];
      v28 = a1 + v27;
      v29 = *(a1 + v27);
      v30 = *(a1 + v27 + 16);
      v31 = a2 + v27;
      v32 = *(a2 + v27);
      v33 = *(v31 + 8);
      v34 = *(v31 + 16);
      if (v30)
      {
        if (v30 == 1)
        {
          if (v34 != 1 || v29 != v32)
          {
            return 0;
          }
        }

        else if (v34 != 2 || v33 | *&v32)
        {
          return 0;
        }
      }

      else if (v34 || v29 != v32 || *(v28 + 8) != v33)
      {
        return 0;
      }

      return 1;
    }
  }

  return 0;
}

uint64_t _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO21__derived_enum_equalsySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100572128();
  v28 = *(v4 - 8);
  v29 = v4;
  __chkstk_darwin();
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006EF6E8, &qword_100598E50);
  __chkstk_darwin();
  v8 = &v28 - v7;
  v9 = sub_100009DCC(&qword_1006F1A70, &qword_10059D078);
  __chkstk_darwin();
  v11 = &v28 - v10;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F1A78, &unk_10059D080);
  __chkstk_darwin();
  v15 = &v28 - v14;
  v17 = *(v16 + 56);
  sub_1003CADAC(a1, &v28 - v14, type metadata accessor for ArtworkImage.Placeholder);
  sub_1003CADAC(a2, &v15[v17], type metadata accessor for ArtworkImage.Placeholder);
  v18 = sub_100009DCC(&unk_1006F2C60, &qword_10059C108);
  v19 = *(*(v18 - 8) + 48);
  v20 = v19(v15, 11, v18);
  if (v20 <= 5)
  {
    if (v20 > 2)
    {
      if (v20 == 3)
      {
        if (v19(&v15[v17], 11, v18) != 3)
        {
          goto LABEL_36;
        }
      }

      else if (v20 == 4)
      {
        if (v19(&v15[v17], 11, v18) != 4)
        {
          goto LABEL_36;
        }
      }

      else if (v19(&v15[v17], 11, v18) != 5)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    if (v20)
    {
      if (v20 == 1)
      {
        if (v19(&v15[v17], 11, v18) != 1)
        {
          goto LABEL_36;
        }
      }

      else if (v19(&v15[v17], 11, v18) != 2)
      {
        goto LABEL_36;
      }

LABEL_35:
      sub_1003CAD4C(v15, type metadata accessor for ArtworkImage.Placeholder);
      return 1;
    }

    sub_1003CADAC(v15, v13, type metadata accessor for ArtworkImage.Placeholder);
    if (v19(&v15[v17], 11, v18))
    {
      sub_10001036C(v13, &qword_1006EF6E8, &qword_100598E50);
      goto LABEL_36;
    }

    v22 = *(v9 + 48);
    sub_100019B40(v13, v11, &qword_1006EF6E8, &qword_100598E50);
    sub_100019B40(&v15[v17], &v11[v22], &qword_1006EF6E8, &qword_100598E50);
    v24 = v28;
    v23 = v29;
    v25 = *(v28 + 48);
    if (v25(v11, 1, v29) == 1)
    {
      if (v25(&v11[v22], 1, v23) == 1)
      {
        sub_10001036C(v11, &qword_1006EF6E8, &qword_100598E50);
        goto LABEL_35;
      }
    }

    else
    {
      sub_10000CC8C(v11, v8, &qword_1006EF6E8, &qword_100598E50);
      if (v25(&v11[v22], 1, v23) != 1)
      {
        (*(v24 + 32))(v6, &v11[v22], v23);
        sub_1003CB258(&qword_1006F1A80, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
        v26 = sub_1005727E8();
        v27 = *(v24 + 8);
        v27(v6, v23);
        v27(v8, v23);
        sub_10001036C(v11, &qword_1006EF6E8, &qword_100598E50);
        if (v26)
        {
          goto LABEL_35;
        }

LABEL_44:
        sub_1003CAD4C(v15, type metadata accessor for ArtworkImage.Placeholder);
        return 0;
      }

      (*(v24 + 8))(v8, v23);
    }

    sub_10001036C(v11, &qword_1006F1A70, &qword_10059D078);
    goto LABEL_44;
  }

  if (v20 <= 8)
  {
    if (v20 == 6)
    {
      if (v19(&v15[v17], 11, v18) != 6)
      {
        goto LABEL_36;
      }
    }

    else if (v20 == 7)
    {
      if (v19(&v15[v17], 11, v18) != 7)
      {
        goto LABEL_36;
      }
    }

    else if (v19(&v15[v17], 11, v18) != 8)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v20 == 9)
  {
    if (v19(&v15[v17], 11, v18) != 9)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v20 == 10)
  {
    if (v19(&v15[v17], 11, v18) != 10)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v19(&v15[v17], 11, v18) == 11)
  {
    goto LABEL_35;
  }

LABEL_36:
  sub_10001036C(v15, &qword_1006F1A78, &unk_10059D080);
  return 0;
}

BOOL _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelV23__derived_struct_equalsySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100571DC8();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F2C40, &qword_10059C100);
  __chkstk_darwin();
  v9 = &v20 - v8;
  v10 = sub_100009DCC(&qword_1006F1A88, &unk_10059D090);
  __chkstk_darwin();
  v12 = &v20 - v11;
  if ((sub_100571E48() & 1) == 0)
  {
    return 0;
  }

  v21 = v7;
  v13 = *(type metadata accessor for ArtworkImage.ViewModel(0) + 20);
  v14 = *(v10 + 48);
  sub_10000CC8C(a1 + v13, v12, &qword_1006F2C40, &qword_10059C100);
  sub_10000CC8C(a2 + v13, &v12[v14], &qword_1006F2C40, &qword_10059C100);
  v15 = *(v5 + 48);
  if (v15(v12, 1, v4) == 1)
  {
    if (v15(&v12[v14], 1, v4) == 1)
    {
      sub_10001036C(v12, &qword_1006F2C40, &qword_10059C100);
      return 1;
    }

    goto LABEL_7;
  }

  sub_10000CC8C(v12, v9, &qword_1006F2C40, &qword_10059C100);
  if (v15(&v12[v14], 1, v4) == 1)
  {
    (*(v5 + 8))(v9, v4);
LABEL_7:
    sub_10001036C(v12, &qword_1006F1A88, &unk_10059D090);
    return 0;
  }

  v17 = v21;
  (*(v5 + 32))(v21, &v12[v14], v4);
  sub_1003CB258(&qword_1006F1A90, &type metadata accessor for Artwork.CropStyle, &protocol conformance descriptor for Artwork.CropStyle);
  v18 = sub_1005727E8();
  v19 = *(v5 + 8);
  v19(v17, v4);
  v19(v9, v4);
  sub_10001036C(v12, &qword_1006F2C40, &qword_10059C100);
  return (v18 & 1) != 0;
}

uint64_t sub_1003CAC0C()
{

  return swift_deallocObject();
}

double sub_1003CAC44@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

unint64_t sub_1003CACD8()
{
  result = qword_1006F1328;
  if (!qword_1006F1328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1328);
  }

  return result;
}

uint64_t sub_1003CAD4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003CADAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1003CAE14()
{
  result = qword_1006F13B8;
  if (!qword_1006F13B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F13B8);
  }

  return result;
}

unint64_t sub_1003CAE68()
{
  result = qword_1006F13C0;
  if (!qword_1006F13C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F13C0);
  }

  return result;
}

unint64_t sub_1003CAEBC()
{
  result = qword_1006F13C8;
  if (!qword_1006F13C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F13C8);
  }

  return result;
}

unint64_t sub_1003CAF10()
{
  result = qword_1006F13D0;
  if (!qword_1006F13D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F13D0);
  }

  return result;
}

unint64_t sub_1003CAF64()
{
  result = qword_1006F13D8;
  if (!qword_1006F13D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F13D8);
  }

  return result;
}

unint64_t sub_1003CAFB8()
{
  result = qword_1006F13E0;
  if (!qword_1006F13E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F13E0);
  }

  return result;
}

unint64_t sub_1003CB00C()
{
  result = qword_1006F13E8;
  if (!qword_1006F13E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F13E8);
  }

  return result;
}

unint64_t sub_1003CB060()
{
  result = qword_1006F13F0;
  if (!qword_1006F13F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F13F0);
  }

  return result;
}

unint64_t sub_1003CB0B4()
{
  result = qword_1006F13F8;
  if (!qword_1006F13F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F13F8);
  }

  return result;
}

unint64_t sub_1003CB108()
{
  result = qword_1006F1408;
  if (!qword_1006F1408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1408);
  }

  return result;
}

unint64_t sub_1003CB15C()
{
  result = qword_1006F1410;
  if (!qword_1006F1410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1410);
  }

  return result;
}

unint64_t sub_1003CB1B0()
{
  result = qword_1006F1418;
  if (!qword_1006F1418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1418);
  }

  return result;
}

unint64_t sub_1003CB204()
{
  result = qword_1006F1420;
  if (!qword_1006F1420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1420);
  }

  return result;
}

uint64_t sub_1003CB258(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003CB2A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003CB330()
{
  v1 = *(sub_100009DCC(&qword_1006F1330, &unk_10059C180) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + v2);
  v4 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {
    if (*(v3 + 3))
    {
      sub_100010474((v0 + v2));
    }

    if (*(v3 + 8))
    {
      sub_100010474(v3 + 5);
    }

    v5 = *(v4 + 24);
    v6 = sub_100570A78();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(&v3[v5], 1, v6))
    {
      (*(v7 + 8))(&v3[v5], v6);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1003CB4D4(uint64_t a1)
{
  v3 = *(sub_100009DCC(&qword_1006F1330, &unk_10059C180) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1003C8F70(a1, v4);
}

uint64_t sub_1003CB5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100571E58();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100009DCC(&qword_1006F2C40, &qword_10059C100);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1003CB6F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100571E58();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100009DCC(&qword_1006F2C40, &qword_10059C100);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_1003CB7FC(uint64_t a1)
{
  sub_100571E58();
  if (v1 <= 0x3F)
  {
    sub_1003CBBF8(319, &unk_1006F1538, &type metadata accessor for Artwork.CropStyle, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1003CB8C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100009DCC(&qword_1006F3E50, &qword_1005971F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ArtworkImage.Placeholder(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 41);
  if (v14 <= 2)
  {
    v15 = 2;
  }

  else
  {
    v15 = *(a1 + *(a3 + 28) + 41);
  }

  v16 = v15 - 2;
  if (v14 >= 2)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003CB9FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100009DCC(&qword_1006F3E50, &qword_1005971F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for ArtworkImage.Placeholder(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 41) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1003CBB14(uint64_t a1)
{
  sub_1003CBBF8(319, &qword_1006F15D0, type metadata accessor for ArtworkImage.ViewModel, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ArtworkImage.Placeholder(319);
    if (v2 <= 0x3F)
    {
      sub_1003CBC5C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1003CBBF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1003CBC5C()
{
  if (!qword_1006F15D8)
  {
    v0 = sub_100573C28();
    if (!v1)
    {
      atomic_store(v0, &qword_1006F15D8);
    }
  }
}

uint64_t sub_1003CBCAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 42))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 41);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 41);
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1003CBD00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1003CBD74(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&unk_1006F2C60, &qword_10059C108);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 0xC)
  {
    return v5 - 11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003CBE00(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 11);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100009DCC(&unk_1006F2C60, &qword_10059C108);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1003CBE90(uint64_t a1)
{
  sub_1003CBEE8();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1003CBEE8()
{
  if (!qword_1006F1698)
  {
    sub_1003CBBF8(0, &unk_1006F16A0, &type metadata accessor for Playlist.Variant, &type metadata accessor for Optional);
    if (!v1)
    {
      atomic_store(v0, &qword_1006F1698);
    }
  }
}

uint64_t sub_1003CBF74(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100009DCC(&qword_1006F16C8, &qword_10059C4E0);
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
      v13 = sub_100009DCC(&qword_1006F16D0, &qword_10059C4E8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1003CC0C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100009DCC(&qword_1006F16C8, &qword_10059C4E0);
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
      v13 = sub_100009DCC(&qword_1006F16D0, &qword_10059C4E8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1003CC200(uint64_t a1)
{
  _s3__C6CGSizeVMa_1(319);
  if (v1 <= 0x3F)
  {
    sub_1003CC598(319, &qword_1006F1740, &qword_1006F1330, &unk_10059C180, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_1003CBBF8(319, &unk_1006F1748, &type metadata accessor for ColorSchemeContrast, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1003CC32C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100009DCC(&qword_1006F1348, &qword_10059C1A0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1003CC408(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = sub_100009DCC(&qword_1006F1348, &qword_10059C1A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1003CC4B8(uint64_t a1)
{
  sub_1003CC598(319, &qword_1006F17F0, &qword_1006F17F8, &unk_10059C500, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1003CBBF8(319, &unk_1006F1800, &type metadata accessor for BlendMode, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1003CC598(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100010324(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1003CC610(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100009DCC(&qword_1006F16C8, &qword_10059C4E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1003CC6E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100009DCC(&qword_1006F16C8, &qword_10059C4E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1003CC790(uint64_t a1)
{
  sub_1003CC840();
  if (v1 <= 0x3F)
  {
    sub_1003CC598(319, &qword_1006F1740, &qword_1006F1330, &unk_10059C180, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1003CC840()
{
  result = qword_1006F2B10;
  if (!qword_1006F2B10)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1006F2B10);
  }

  return result;
}

uint64_t sub_1003CC890()
{
  sub_100010324(&qword_1006F18C8, &qword_10059C530);
  sub_1003CC8F4();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1003CC8F4()
{
  result = qword_1006F2C70;
  if (!qword_1006F2C70)
  {
    sub_100010324(&qword_1006F18C8, &qword_10059C530);
    sub_1003CC9AC();
    sub_100010BC0(&unk_1006F2CB0, &qword_1006F18F0, &qword_10059E560, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F2C70);
  }

  return result;
}

unint64_t sub_1003CC9AC()
{
  result = qword_1006F18D0;
  if (!qword_1006F18D0)
  {
    sub_100010324(&unk_1006F2C80, &qword_10059C538);
    sub_1003CCA38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F18D0);
  }

  return result;
}

unint64_t sub_1003CCA38()
{
  result = qword_1006F18D8;
  if (!qword_1006F18D8)
  {
    sub_100010324(&unk_1006F2C90, &unk_10059E550);
    sub_1003CB258(&qword_1006F18E0, type metadata accessor for ArtworkImage.Placeholder.View, &protocol conformance descriptor for ArtworkImage.Placeholder.View);
    sub_100010BC0(&unk_1006F2CA0, &qword_1006F18E8, &unk_10059C540, &protocol conformance descriptor for _PreferenceWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F18D8);
  }

  return result;
}

unint64_t sub_1003CCBB0()
{
  result = qword_1006F3E80;
  if (!qword_1006F3E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3E80);
  }

  return result;
}

unint64_t sub_1003CCC0C()
{
  result = qword_1006F18F8;
  if (!qword_1006F18F8)
  {
    sub_100010324(&qword_1006F1338, &qword_10059C190);
    sub_1003CCCC4();
    sub_100010BC0(&qword_1006F1920, &qword_1006F1340, &qword_10059C198, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F18F8);
  }

  return result;
}

unint64_t sub_1003CCCC4()
{
  result = qword_1006F1900;
  if (!qword_1006F1900)
  {
    sub_100010324(&qword_1006F1908, &qword_10059C550);
    sub_100010BC0(&qword_1006F1910, &qword_1006F1918, &qword_10059C558, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1900);
  }

  return result;
}

unint64_t sub_1003CCD80()
{
  result = qword_1006F1928;
  if (!qword_1006F1928)
  {
    sub_100010324(&qword_1006F14B0, &qword_10059C288);
    sub_100010BC0(&qword_1006F1930, &qword_1006F14C0, &qword_10059C298, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100010BC0(&qword_1006F1938, &qword_1006F14B8, &qword_10059C290, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1928);
  }

  return result;
}

uint64_t sub_1003CCE64(uint64_t *a1)
{
  type metadata accessor for PlaceholderStyleModifier(255);
  sub_10056ECA8();
  sub_1003CB258(&unk_1006F2F30, type metadata accessor for PlaceholderStyleModifier, &protocol conformance descriptor for PlaceholderStyleModifier);
  return swift_getWitnessTable();
}

uint64_t _s11PlaceholderO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11PlaceholderO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1003CD124()
{
  result = qword_1006F1940;
  if (!qword_1006F1940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1940);
  }

  return result;
}

unint64_t sub_1003CD17C()
{
  result = qword_1006F1948;
  if (!qword_1006F1948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1948);
  }

  return result;
}

unint64_t sub_1003CD1D4()
{
  result = qword_1006F1950;
  if (!qword_1006F1950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1950);
  }

  return result;
}

unint64_t sub_1003CD22C()
{
  result = qword_1006F1958;
  if (!qword_1006F1958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1958);
  }

  return result;
}

unint64_t sub_1003CD284()
{
  result = qword_1006F1960;
  if (!qword_1006F1960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1960);
  }

  return result;
}

unint64_t sub_1003CD2DC()
{
  result = qword_1006F1968;
  if (!qword_1006F1968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1968);
  }

  return result;
}

unint64_t sub_1003CD334()
{
  result = qword_1006F1970;
  if (!qword_1006F1970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1970);
  }

  return result;
}

unint64_t sub_1003CD38C()
{
  result = qword_1006F1978;
  if (!qword_1006F1978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1978);
  }

  return result;
}

unint64_t sub_1003CD3E4()
{
  result = qword_1006F1980;
  if (!qword_1006F1980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1980);
  }

  return result;
}

unint64_t sub_1003CD43C()
{
  result = qword_1006F1988;
  if (!qword_1006F1988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1988);
  }

  return result;
}

unint64_t sub_1003CD494()
{
  result = qword_1006F1990;
  if (!qword_1006F1990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1990);
  }

  return result;
}

unint64_t sub_1003CD4EC()
{
  result = qword_1006F1998;
  if (!qword_1006F1998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1998);
  }

  return result;
}

unint64_t sub_1003CD544()
{
  result = qword_1006F19A0;
  if (!qword_1006F19A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F19A0);
  }

  return result;
}

unint64_t sub_1003CD59C()
{
  result = qword_1006F19A8;
  if (!qword_1006F19A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F19A8);
  }

  return result;
}

unint64_t sub_1003CD5F4()
{
  result = qword_1006F19B0;
  if (!qword_1006F19B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F19B0);
  }

  return result;
}

unint64_t sub_1003CD64C()
{
  result = qword_1006F19B8;
  if (!qword_1006F19B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F19B8);
  }

  return result;
}

unint64_t sub_1003CD6A4()
{
  result = qword_1006F19C0;
  if (!qword_1006F19C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F19C0);
  }

  return result;
}

unint64_t sub_1003CD6FC()
{
  result = qword_1006F19C8;
  if (!qword_1006F19C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F19C8);
  }

  return result;
}

unint64_t sub_1003CD754()
{
  result = qword_1006F19D0;
  if (!qword_1006F19D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F19D0);
  }

  return result;
}

unint64_t sub_1003CD7AC()
{
  result = qword_1006F19D8;
  if (!qword_1006F19D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F19D8);
  }

  return result;
}

unint64_t sub_1003CD804()
{
  result = qword_1006F19E0;
  if (!qword_1006F19E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F19E0);
  }

  return result;
}

unint64_t sub_1003CD85C()
{
  result = qword_1006F19E8;
  if (!qword_1006F19E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F19E8);
  }

  return result;
}

unint64_t sub_1003CD8B4()
{
  result = qword_1006F19F0;
  if (!qword_1006F19F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F19F0);
  }

  return result;
}

unint64_t sub_1003CD90C()
{
  result = qword_1006F19F8;
  if (!qword_1006F19F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F19F8);
  }

  return result;
}

unint64_t sub_1003CD964()
{
  result = qword_1006F1A00;
  if (!qword_1006F1A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1A00);
  }

  return result;
}

unint64_t sub_1003CD9BC()
{
  result = qword_1006F1A08;
  if (!qword_1006F1A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1A08);
  }

  return result;
}

unint64_t sub_1003CDA14()
{
  result = qword_1006F1A10;
  if (!qword_1006F1A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1A10);
  }

  return result;
}

unint64_t sub_1003CDA6C()
{
  result = qword_1006F1A18;
  if (!qword_1006F1A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1A18);
  }

  return result;
}

uint64_t sub_1003CDAC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636973756DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_100574498() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6979616C50776F6ELL && a2 == 0xEA0000000000676ELL || (sub_100574498() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65646C6F4677656ELL && a2 == 0xE900000000000072 || (sub_100574498() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C79616C5077656ELL && a2 == 0xEB00000000747369 || (sub_100574498() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7473696C79616C70 && a2 == 0xE800000000000000 || (sub_100574498() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x646956636973756DLL && a2 == 0xEA00000000006F65 || (sub_100574498() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 30324 && a2 == 0xE200000000000000 || (sub_100574498() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F68706F7263696DLL && a2 == 0xEA0000000000656ELL || (sub_100574498() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E6F73726570 && a2 == 0xE600000000000000 || (sub_100574498() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F69646172 && a2 == 0xE500000000000000 || (sub_100574498() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x65726E6567 && a2 == 0xE500000000000000 || (sub_100574498() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7265736F706D6F63 && a2 == 0xE800000000000000)
  {

    return 11;
  }

  else
  {
    v6 = sub_100574498();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

unint64_t sub_1003CDE8C()
{
  result = qword_1006F1A38;
  if (!qword_1006F1A38)
  {
    sub_100010324(&qword_1006F1A30, &qword_10059D048);
    sub_1003CDF44();
    sub_100010BC0(&unk_1006F2DD0, &qword_1006F1268, &qword_10059D060, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1A38);
  }

  return result;
}

unint64_t sub_1003CDF44()
{
  result = qword_1006F1A40;
  if (!qword_1006F1A40)
  {
    sub_100010324(&qword_1006F1A48, &qword_10059D050);
    sub_100010BC0(&qword_1006F1A50, &qword_1006F1A58, &qword_10059D058, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1A40);
  }

  return result;
}

uint64_t sub_1003CDFFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006F1A28, &qword_10059D010);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003CE06C()
{
  v1 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_100009DCC(&unk_1006F2C60, &qword_10059C108);
  if (!(*(*(v3 - 8) + 48))(v0 + v2, 11, v3))
  {
    v4 = sub_100572128();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v0 + v2, 1, v4))
    {
      (*(v5 + 8))(v0 + v2, v4);
    }
  }

  return swift_deallocObject();
}

double sub_1003CE1E8@<D0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ArtworkImage.Placeholder(0);

  return sub_1003C1F5C(a2);
}

double BadgedPunchOut.path(in:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1003D0EAC(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_1003CE2F0(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_10056E528();
  return sub_1003674BC;
}

uint64_t sub_1003CE378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1003D29E8();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1003CE3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1003D29E8();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1003CE440(uint64_t a1)
{
  v2 = sub_1003D29E8();

  return Shape.body.getter(a1, v2);
}

uint64_t TextBadge.init(immersive:)(char a1)
{
  if (a1)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

uint64_t TextBadge.view.getter(uint64_t a1)
{
  v1 = a1;
  v2 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleLargeTitle];
  [v2 scaledValueForValue:10.0];
  v4 = v3;

  v5 = [objc_opt_self() configurationWithPointSize:7 weight:v4];
  v10[3] = sub_10056EB38();
  v10[4] = &protocol witness table for TintShapeStyle;
  sub_10002AB7C(v10);
  sub_10056EB28();
  v9 = v5;
  TextBadge.view(favoriteBadgeConfiguration:)(&v9, v1);
  v7 = v6;
  sub_1003D18C0(&v9);
  return v7;
}

void TextBadge.view(favoriteBadgeConfiguration:)(void *a1, char a2)
{
  if (a2 != 2)
  {
    if (a2 == 3)
    {
      sub_10002EA8C((a1 + 1), v57);
      sub_10000C8CC(v57, v57[3]);
      String.nonBreakingSpace.unsafeMutableAddressor();

      v23 = sub_100572898();
      v24 = [objc_opt_self() systemImageNamed:v23];

      if (v24)
      {
        v25 = [v24 imageWithConfiguration:*a1];

        v26 = [v25 imageWithRenderingMode:2];
        sub_100570538();
        v27 = sub_10056FF38();
        v29 = v28;
        v31 = v30;
        v32 = sub_10056FE58();
        v34 = v33;
        v36 = v35;
        sub_10001B5A4(v27, v29, v31 & 1);

        v37 = sub_10056FE28();
        v39 = v38;
        v41 = v40;
        v43 = v42;
        sub_10001B5A4(v32, v34, v36 & 1);

        v44 = AccessibilityString.favoriteBadgeLabel.unsafeMutableAddressor();
        v45 = *v44;
        v46 = v44[1];

        Text.accessibilityLabel(_:)(v45, v46, v37, v39, v41 & 1, v43);

        sub_10001B5A4(v37, v39, v41 & 1);

        sub_100010474(v57);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      if (a2 == 4)
      {
        String.nonBreakingSpace.unsafeMutableAddressor();

        sub_100570578();
        v2 = sub_10056FF38();
        v4 = v3;
        v6 = v5;
        v7 = sub_10056FE58();
        v9 = v8;
        v11 = v10;
        sub_10001B5A4(v2, v4, v6 & 1);

        LODWORD(v57[0]) = sub_10056F6F8();
        v12 = sub_10056FE28();
        v14 = v13;
        v16 = v15;
        v18 = v17;
        sub_10001B5A4(v7, v9, v11 & 1);

        v19 = AccessibilityString.immersiveBadgeLabel.unsafeMutableAddressor();
        v20 = *v19;
        v21 = v19[1];

        Text.accessibilityLabel(_:)(v20, v21, v12, v14, v16 & 1, v18);

        sub_10001B5A4(v12, v14, v16 & 1);
      }

      else
      {
        v48 = String.nonBreakingSpace.unsafeMutableAddressor();
        v50 = *v48;
        v49 = v48[1];
        v55 = v50;
        v56 = v49;

        v51 = (*ExplicitRestrictionsController.shared.unsafeMutableAddressor() + OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_symbol);
        swift_beginAccess();
        v53 = *v51;
        v52 = v51[1];

        v58._countAndFlagsBits = v53;
        v58._object = v52;
        sub_100572A98(v58);

        v54 = v55;
        LODWORD(v55) = sub_10056F6F8();
        Text.playableForegroundStyle<A>(_:isPlayable:)(&v55, a2 & 1, v54, v56, 0, _swiftEmptyArrayStorage, &type metadata for HierarchicalShapeStyle, &protocol witness table for HierarchicalShapeStyle);
      }
    }
  }
}

uint64_t static FavoriteBadgeConfiguration.default.getter@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleLargeTitle];
  [v2 scaledValueForValue:10.0];
  v4 = v3;

  v5 = [objc_opt_self() configurationWithPointSize:7 weight:v4];
  a1[4] = sub_10056EB38();
  a1[5] = &protocol witness table for TintShapeStyle;
  sub_10002AB7C(a1 + 1);
  result = sub_10056EB28();
  *a1 = v5;
  return result;
}

uint64_t sub_1003CEB00()
{
  v1 = 0x7974706D65;
  v2 = 0x657469726F766166;
  if (*v0 != 2)
  {
    v2 = 0x76697372656D6D69;
  }

  if (*v0)
  {
    v1 = 0x746963696C707865;
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

uint64_t sub_1003CEB7C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1003D1A94(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1003CEBA4(uint64_t a1)
{
  v2 = sub_1003D18F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003CEBE0(uint64_t a1)
{
  v2 = sub_1003D18F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003CEC1C(uint64_t a1)
{
  v2 = sub_1003D1A40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003CEC58(uint64_t a1)
{
  v2 = sub_1003D1A40();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1003CECB0(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x626179616C507369 && a2 == 0xEA0000000000656CLL)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_100574498();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1003CED40(uint64_t a1)
{
  v2 = sub_1003D19EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003CED7C(uint64_t a1)
{
  v2 = sub_1003D19EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003CEDB8(uint64_t a1)
{
  v2 = sub_1003D1998();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003CEDF4(uint64_t a1)
{
  v2 = sub_1003D1998();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003CEE30(uint64_t a1)
{
  v2 = sub_1003D1944();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003CEE6C(uint64_t a1)
{
  v2 = sub_1003D1944();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TextBadge.encode(to:)(void *a1, int a2)
{
  v31 = a2;
  v3 = sub_100009DCC(&qword_1006F1A98, &qword_10059D0A0);
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin();
  v28 = &v22 - v4;
  v5 = sub_100009DCC(&qword_1006F1AA0, &qword_10059D0A8);
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin();
  v24 = &v22 - v6;
  v25 = sub_100009DCC(&qword_1006F1AA8, &qword_10059D0B0);
  v23 = *(v25 - 8);
  __chkstk_darwin();
  v8 = &v22 - v7;
  v9 = sub_100009DCC(&qword_1006F1AB0, &qword_10059D0B8);
  v22 = *(v9 - 8);
  __chkstk_darwin();
  v11 = &v22 - v10;
  v12 = sub_100009DCC(&qword_1006F1AB8, &qword_10059D0C0);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v22 - v14;
  sub_10000C8CC(a1, a1[3]);
  sub_1003D18F0();
  v16 = v31;
  sub_100574718();
  switch(v16)
  {
    case 2:
      v32 = 0;
      sub_1003D1A40();
      sub_1005742F8();
      (*(v22 + 8))(v11, v9);
      return (*(v13 + 8))(v15, v12);
    case 3:
      v34 = 2;
      sub_1003D1998();
      v17 = v24;
      sub_1005742F8();
      v19 = v26;
      v18 = v27;
      goto LABEL_6;
    case 4:
      v35 = 3;
      sub_1003D1944();
      v17 = v28;
      sub_1005742F8();
      v19 = v29;
      v18 = v30;
LABEL_6:
      (*(v19 + 8))(v17, v18);
      return (*(v13 + 8))(v15, v12);
  }

  v33 = 1;
  sub_1003D19EC();
  sub_1005742F8();
  v21 = v25;
  sub_100574338();
  (*(v23 + 8))(v8, v21);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1003CF354@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1003D1BFC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t GenericMusicItem.favoriteBadge.getter()
{
  v1 = v0;
  v58 = sub_10056DF88();
  v56 = *(v58 - 8);
  __chkstk_darwin();
  v57 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100571CF8();
  v68 = *(v3 - 8);
  v69 = v3;
  __chkstk_darwin();
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005722D8();
  v63 = *(v6 - 8);
  v64 = v6;
  __chkstk_darwin();
  v62 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100571A68();
  v60 = *(v8 - 8);
  v61 = v8;
  __chkstk_darwin();
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005713A8();
  isa = v10[-1].isa;
  v67 = v10;
  __chkstk_darwin();
  v65 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F1AE8, &qword_10059D0C8);
  __chkstk_darwin();
  v13 = &v53 - v12;
  v14 = sub_100571B78();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10056D438();
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v54 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin();
  v23 = &v53 - v22;
  v24 = *(v19 + 16);
  v55 = v1;
  v25 = v1;
  v26 = v24;
  (v24)(&v53 - v22, v25, v18, v21);
  v27 = (*(v19 + 88))(v23, v18);
  if (v27 != enum case for GenericMusicItem.album(_:))
  {
    if (v27 == enum case for GenericMusicItem.artist(_:))
    {
      (*(v19 + 96))(v23, v18);
      v31 = v68;
      v30 = v69;
      (*(v68 + 32))(v5, v23, v69);
      sub_100571C68();
      v32 = sub_10056D558();
      (*(*(v32 - 8) + 56))(v13, 0, 1, v32);
      v29 = _s11MusicCoreUI9TextBadgeO3forAC0A11KitInternal0A14FavoriteStatusOSg_tcfC_0(v13);
      (*(v31 + 8))(v5, v30);
      return v29;
    }

    if (v27 == enum case for GenericMusicItem.composer(_:) || v27 == enum case for GenericMusicItem.creditArtist(_:) || v27 == enum case for GenericMusicItem.curator(_:) || v27 == enum case for GenericMusicItem.editorialItem(_:) || v27 == enum case for GenericMusicItem.genre(_:) || v27 == enum case for GenericMusicItem.musicMovie(_:))
    {
      goto LABEL_32;
    }

    if (v27 == enum case for GenericMusicItem.musicVideo(_:))
    {
      (*(v19 + 96))(v23, v18);
      v33 = v65;
      v34 = isa;
      v35 = v67;
      (*(isa + 4))(v65, v23, v67);
      sub_100571328();
LABEL_15:
      v36 = sub_10056D558();
      (*(*(v36 - 8) + 56))(v13, 0, 1, v36);
      v29 = _s11MusicCoreUI9TextBadgeO3forAC0A11KitInternal0A14FavoriteStatusOSg_tcfC_0(v13);
      (*(v34 + 1))(v33, v35);
      return v29;
    }

    if (v27 == enum case for GenericMusicItem.playlist(_:))
    {
      (*(v19 + 96))(v23, v18);
      v33 = v62;
      v34 = v63;
      v35 = v64;
      v63[4](v62, v23, v64);
      sub_100572078();
      goto LABEL_15;
    }

    if (v27 == enum case for GenericMusicItem.playlistFolder(_:) || v27 == enum case for GenericMusicItem.radioShow(_:) || v27 == enum case for GenericMusicItem.recordLabel(_:) || v27 == enum case for GenericMusicItem.socialProfile(_:))
    {
      goto LABEL_32;
    }

    if (v27 == enum case for GenericMusicItem.song(_:))
    {
      (*(v19 + 96))(v23, v18);
      v33 = v59;
      v34 = v60;
      v35 = v61;
      v60[4](v59, v23, v61);
      sub_100571948();
      goto LABEL_15;
    }

    if (v27 == enum case for GenericMusicItem.station(_:) || v27 == enum case for GenericMusicItem.tvEpisode(_:) || v27 == enum case for GenericMusicItem.tvSeason(_:) || v27 == enum case for GenericMusicItem.tvShow(_:) || v27 == enum case for GenericMusicItem.uploadedAudio(_:) || v27 == enum case for GenericMusicItem.uploadedVideo(_:) || v27 == enum case for GenericMusicItem.other(_:))
    {
LABEL_32:
      (*(v19 + 8))(v23, v18);
    }

    else
    {
      v37 = Logger.badging.unsafeMutableAddressor();
      v39 = v56;
      v38 = v57;
      v40 = v58;
      (*(v56 + 16))(v57, v37, v58);
      v41 = v54;
      v26(v54, v55, v18);
      v42 = sub_10056DF68();
      v43 = sub_100573438();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        LODWORD(v68) = v43;
        v45 = v44;
        v69 = swift_slowAlloc();
        v70 = v69;
        *v45 = 136315394;
        *(v45 + 4) = sub_10037A2AC(0xD000000000000010, 0x80000001005B7BC0, &v70);
        *(v45 + 12) = 2080;
        sub_1003D2A3C(&qword_1006EF950, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
        v46 = sub_100574408();
        v48 = v47;
        v49 = *(v19 + 8);
        v67 = v42;
        v49(v41, v18);
        v50 = sub_10037A2AC(v46, v48, &v70);

        *(v45 + 14) = v50;
        v51 = v67;
        _os_log_impl(&_mh_execute_header, v67, v68, "Unhandled case for favorite badge with item: %s, %s", v45, 0x16u);
        swift_arrayDestroy();

        (*(v39 + 8))(v57, v58);
      }

      else
      {

        v49 = *(v19 + 8);
        v49(v41, v18);
        (*(v39 + 8))(v38, v40);
      }

      v49(v23, v18);
    }

    return 2;
  }

  (*(v19 + 96))(v23, v18);
  (*(v15 + 32))(v17, v23, v14);
  sub_100571A88();
  v28 = sub_10056D558();
  (*(*(v28 - 8) + 56))(v13, 0, 1, v28);
  v29 = _s11MusicCoreUI9TextBadgeO3forAC0A11KitInternal0A14FavoriteStatusOSg_tcfC_0(v13);
  (*(v15 + 8))(v17, v14);
  return v29;
}

uint64_t GenericMusicItem.explicitBadge(_:)(int a1)
{
  LODWORD(v96) = a1;
  v68 = sub_10056DF88();
  v67 = *(v68 - 8);
  __chkstk_darwin();
  v66 = &v62 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_10056DB68();
  v76 = *(v77 - 8);
  __chkstk_darwin();
  v75 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10056D8D8();
  v93 = *(v3 - 8);
  v94 = v3;
  __chkstk_darwin();
  v92 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_10056DB08();
  v73 = *(v74 - 8);
  __chkstk_darwin();
  v72 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F1AF0, &qword_10059D0D0);
  __chkstk_darwin();
  v95 = &v62 - v6;
  v7 = sub_10056DBC8();
  v79 = *(v7 - 8);
  v80 = v7;
  __chkstk_darwin();
  v78 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_10056DA88();
  v64 = *(v65 - 8);
  __chkstk_darwin();
  v63 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_10056DA38();
  v70 = *(v71 - 8);
  __chkstk_darwin();
  v69 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005722D8();
  v88 = *(v11 - 8);
  v89 = v11;
  __chkstk_darwin();
  v87 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100571F08();
  v82 = *(v13 - 8);
  v83 = v13;
  __chkstk_darwin();
  v81 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100571A68();
  v85 = *(v15 - 8);
  v86 = v15;
  __chkstk_darwin();
  v84 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1005713A8();
  v90 = *(v17 - 8);
  v91 = v17;
  __chkstk_darwin();
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F1AF8, &qword_10059D0D8);
  __chkstk_darwin();
  v21 = &v62 - v20;
  v22 = sub_100571B78();
  v23 = *(v22 - 8);
  __chkstk_darwin();
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10056D438();
  v27 = *(v26 - 8);
  __chkstk_darwin();
  v62 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin();
  v31 = &v62 - v30;
  v32 = *(v27 + 16);
  v32(&v62 - v30, v97, v26, v29);
  v33 = (*(v27 + 88))(v31, v26);
  if (v33 != enum case for GenericMusicItem.album(_:))
  {
    v35 = v96;
    if (v33 == enum case for GenericMusicItem.artist(_:) || v33 == enum case for GenericMusicItem.composer(_:) || v33 == enum case for GenericMusicItem.creditArtist(_:) || v33 == enum case for GenericMusicItem.curator(_:) || v33 == enum case for GenericMusicItem.editorialItem(_:) || v33 == enum case for GenericMusicItem.genre(_:))
    {
      goto LABEL_37;
    }

    if (v33 == enum case for GenericMusicItem.musicMovie(_:))
    {
      (*(v27 + 96))(v31, v26);
      v36 = v92;
      v37 = v93;
      v38 = v94;
      (*(v93 + 32))(v92, v31, v94);
      v39 = v95;
      sub_10056D898();
LABEL_11:
      v34 = _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A11KitInternal18VideoContentRatingVSg_SbtcfC_0(v39, v35 & 1);
      (*(v37 + 8))(v36, v38);
      return v34;
    }

    if (v33 == enum case for GenericMusicItem.musicVideo(_:))
    {
      (*(v27 + 96))(v31, v26);
      v41 = v90;
      v40 = v91;
      (*(v90 + 32))(v19, v31, v91);
      sub_100571358();
      v34 = _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A3Kit13ContentRatingOSg_SbtcfC_0(v21, v35 & 1);
      (*(v41 + 8))(v19, v40);
      return v34;
    }

    if (v33 == enum case for GenericMusicItem.playlist(_:))
    {
      (*(v27 + 96))(v31, v26);
      v42 = v87;
      v43 = v88;
      v44 = v89;
      (*(v88 + 32))(v87, v31, v89);
      sub_100572068();
LABEL_16:
      v34 = _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A3Kit13ContentRatingOSg_SbtcfC_0(v21, v35 & 1);
      (*(v43 + 8))(v42, v44);
      return v34;
    }

    if (v33 == enum case for GenericMusicItem.playlistFolder(_:) || v33 == enum case for GenericMusicItem.radioShow(_:) || v33 == enum case for GenericMusicItem.recordLabel(_:) || v33 == enum case for GenericMusicItem.socialProfile(_:))
    {
      goto LABEL_37;
    }

    if (v33 == enum case for GenericMusicItem.song(_:))
    {
      (*(v27 + 96))(v31, v26);
      v42 = v84;
      v43 = v85;
      v44 = v86;
      (*(v85 + 32))(v84, v31, v86);
      sub_1005719D8();
      goto LABEL_16;
    }

    if (v33 == enum case for GenericMusicItem.station(_:))
    {
      (*(v27 + 96))(v31, v26);
      v45 = v81;
      v46 = v82;
      v47 = v83;
      (*(v82 + 32))(v81, v31, v83);
      sub_100571EB8();
LABEL_25:
      v34 = _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A3Kit13ContentRatingOSg_SbtcfC_0(v21, v35 & 1);
      (*(v46 + 8))(v45, v47);
      return v34;
    }

    if (v33 == enum case for GenericMusicItem.tvEpisode(_:))
    {
      (*(v27 + 96))(v31, v26);
      v36 = v78;
      v37 = v79;
      v38 = v80;
      (*(v79 + 32))(v78, v31, v80);
      v39 = v95;
      sub_10056DB78();
      goto LABEL_11;
    }

    if (v33 == enum case for GenericMusicItem.tvSeason(_:))
    {
      (*(v27 + 96))(v31, v26);
      v48 = v76;
      v49 = v75;
      v50 = v77;
      (*(v76 + 32))(v75, v31, v77);
      v51 = v95;
      sub_10056DB28();
      v34 = _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A11KitInternal18VideoContentRatingVSg_SbtcfC_0(v51, v35 & 1);
      (*(v48 + 8))(v49, v50);
      return v34;
    }

    if (v33 == enum case for GenericMusicItem.tvShow(_:))
    {
      (*(v27 + 96))(v31, v26);
      v37 = v73;
      v36 = v72;
      v38 = v74;
      (*(v73 + 32))(v72, v31, v74);
      v39 = v95;
      sub_10056DAC8();
      goto LABEL_11;
    }

    if (v33 == enum case for GenericMusicItem.uploadedAudio(_:))
    {
      (*(v27 + 96))(v31, v26);
      v46 = v70;
      v45 = v69;
      v47 = v71;
      (*(v70 + 32))(v69, v31, v71);
      sub_10056D9F8();
      goto LABEL_25;
    }

    if (v33 == enum case for GenericMusicItem.uploadedVideo(_:))
    {
      (*(v27 + 96))(v31, v26);
      v46 = v64;
      v45 = v63;
      v47 = v65;
      (*(v64 + 32))(v63, v31, v65);
      sub_10056DA48();
      goto LABEL_25;
    }

    if (v33 == enum case for GenericMusicItem.other(_:))
    {
LABEL_37:
      (*(v27 + 8))(v31, v26);
    }

    else
    {
      v53 = Logger.badging.unsafeMutableAddressor();
      (*(v67 + 16))(v66, v53, v68);
      (v32)(v62, v97, v26);
      v54 = sub_10056DF68();
      LODWORD(v97) = sub_100573408();
      if (os_log_type_enabled(v54, v97))
      {
        v55 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v98 = v96;
        *v55 = 136315394;
        *(v55 + 4) = sub_10037A2AC(0xD000000000000010, 0x80000001005B7BC0, &v98);
        *(v55 + 12) = 2080;
        sub_1003D2A3C(&qword_1006EF950, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
        v56 = v62;
        v57 = sub_100574408();
        v59 = v58;
        v60 = *(v27 + 8);
        v60(v56, v26);
        v61 = sub_10037A2AC(v57, v59, &v98);

        *(v55 + 14) = v61;
        _os_log_impl(&_mh_execute_header, v54, v97, "Unhandled case for explicit badge with item: %s, %s", v55, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v60 = *(v27 + 8);
        v60(v62, v26);
      }

      (*(v67 + 8))(v66, v68);
      v60(v31, v26);
    }

    return 2;
  }

  (*(v27 + 96))(v31, v26);
  (*(v23 + 32))(v25, v31, v22);
  sub_100571B08();
  v34 = _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A3Kit13ContentRatingOSg_SbtcfC_0(v21, v96 & 1);
  (*(v23 + 8))(v25, v22);
  return v34;
}

double sub_1003D0EAC@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_10056FD68();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetHeight(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetHeight(v15);
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetWidth(v16);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetMinX(v17);
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectGetMaxY(v18);
  sub_10056FD38();
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetMinX(v19);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetMinY(v20);
  sub_10056FD58();
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetMaxX(v21);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  CGRectGetMinY(v22);
  sub_10056FD58();
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  CGRectGetMaxX(v23);
  sub_10056FD58();
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  CGRectGetMaxY(v24);
  sub_10056FD48();
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  CGRectGetMinX(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  CGRectGetMaxY(v26);
  sub_10056FD58();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

uint64_t _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A3Kit13ContentRatingOSg_SbtcfC_0(uint64_t a1, int a2)
{
  v21 = a2;
  v3 = sub_100571908();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100009DCC(&qword_1006F1BB0, &unk_10059D738) - 8;
  __chkstk_darwin();
  v9 = &v20[-v8];
  sub_100009DCC(&qword_1006F1AF8, &qword_10059D0D8);
  __chkstk_darwin();
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin();
  v14 = &v20[-v13];
  (*(v4 + 104))(&v20[-v13], enum case for ContentRating.explicit(_:), v3, v12);
  (*(v4 + 56))(v14, 0, 1, v3);
  v15 = *(v7 + 56);
  sub_10000CC8C(a1, v9, &qword_1006F1AF8, &qword_10059D0D8);
  sub_10000CC8C(v14, &v9[v15], &qword_1006F1AF8, &qword_10059D0D8);
  v16 = *(v4 + 48);
  if (v16(v9, 1, v3) != 1)
  {
    sub_10000CC8C(v9, v11, &qword_1006F1AF8, &qword_10059D0D8);
    if (v16(&v9[v15], 1, v3) != 1)
    {
      (*(v4 + 32))(v6, &v9[v15], v3);
      sub_1003D2A3C(&qword_1006F1BB8, &type metadata accessor for ContentRating, &protocol conformance descriptor for ContentRating);
      v18 = sub_1005727E8();
      sub_10001036C(a1, &qword_1006F1AF8, &qword_10059D0D8);
      v19 = *(v4 + 8);
      v19(v6, v3);
      sub_10001036C(v14, &qword_1006F1AF8, &qword_10059D0D8);
      v19(v11, v3);
      sub_10001036C(v9, &qword_1006F1AF8, &qword_10059D0D8);
      if (v18)
      {
        return v21 & 1;
      }

      return 2;
    }

    sub_10001036C(a1, &qword_1006F1AF8, &qword_10059D0D8);
    sub_10001036C(v14, &qword_1006F1AF8, &qword_10059D0D8);
    (*(v4 + 8))(v11, v3);
LABEL_6:
    sub_10001036C(v9, &qword_1006F1BB0, &unk_10059D738);
    return 2;
  }

  sub_10001036C(a1, &qword_1006F1AF8, &qword_10059D0D8);
  sub_10001036C(v14, &qword_1006F1AF8, &qword_10059D0D8);
  if (v16(&v9[v15], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_10001036C(v9, &qword_1006F1AF8, &qword_10059D0D8);
  return v21 & 1;
}

uint64_t _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A11KitInternal18VideoContentRatingVSg_SbtcfC_0(uint64_t a1, char a2)
{
  sub_100009DCC(&qword_1006F1AF0, &qword_10059D0D0);
  __chkstk_darwin();
  v5 = &v12 - v4;
  v6 = sub_10056DAA8();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CC8C(a1, v5, &qword_1006F1AF0, &qword_10059D0D0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10001036C(a1, &qword_1006F1AF0, &qword_10059D0D0);
    sub_10001036C(v5, &qword_1006F1AF0, &qword_10059D0D0);
    return 2;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v11 = sub_10056DA98();
    sub_10001036C(a1, &qword_1006F1AF0, &qword_10059D0D0);
    (*(v7 + 8))(v9, v6);
    result = 2;
    if (v11 != 2)
    {
      if (v11)
      {
        return a2 & 1;
      }

      else
      {
        return 2;
      }
    }
  }

  return result;
}

uint64_t _s11MusicCoreUI9TextBadgeO3forAC0A11KitInternal0A14FavoriteStatusOSg_tcfC_0(uint64_t a1)
{
  sub_100009DCC(&qword_1006F1AE8, &qword_10059D0C8);
  __chkstk_darwin();
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v11 - v4;
  sub_10000CC8C(a1, &v11 - v4, &qword_1006F1AE8, &qword_10059D0C8);
  v6 = sub_10056D558();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    sub_10000CC8C(v5, v3, &qword_1006F1AE8, &qword_10059D0C8);
    v8 = (*(v7 + 88))(v3, v6);
    if (v8 != enum case for MusicFavoriteStatus.neutral(_:))
    {
      if (v8 == enum case for MusicFavoriteStatus.favorited(_:))
      {
        v9 = 3;
        goto LABEL_4;
      }

      if (v8 != enum case for MusicFavoriteStatus.disliked(_:))
      {
        (*(v7 + 8))(v3, v6);
      }
    }
  }

  v9 = 2;
LABEL_4:
  sub_10001036C(v5, &qword_1006F1AE8, &qword_10059D0C8);
  sub_10001036C(a1, &qword_1006F1AE8, &qword_10059D0C8);
  return v9;
}

unint64_t sub_1003D18F0()
{
  result = qword_1006F1AC0;
  if (!qword_1006F1AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1AC0);
  }

  return result;
}

unint64_t sub_1003D1944()
{
  result = qword_1006F1AC8;
  if (!qword_1006F1AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1AC8);
  }

  return result;
}

unint64_t sub_1003D1998()
{
  result = qword_1006F1AD0;
  if (!qword_1006F1AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1AD0);
  }

  return result;
}

unint64_t sub_1003D19EC()
{
  result = qword_1006F1AD8;
  if (!qword_1006F1AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1AD8);
  }

  return result;
}

unint64_t sub_1003D1A40()
{
  result = qword_1006F1AE0;
  if (!qword_1006F1AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1AE0);
  }

  return result;
}

uint64_t sub_1003D1A94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974706D65 && a2 == 0xE500000000000000;
  if (v4 || (sub_100574498() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746963696C707865 && a2 == 0xE800000000000000 || (sub_100574498() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657469726F766166 && a2 == 0xE800000000000000 || (sub_100574498() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x76697372656D6D69 && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = sub_100574498();

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

uint64_t sub_1003D1BFC(void *a1)
{
  v39 = sub_100009DCC(&qword_1006F1B88, &qword_10059D708);
  v43 = *(v39 - 8);
  __chkstk_darwin();
  v42 = &v32 - v2;
  v38 = sub_100009DCC(&qword_1006F1B90, &qword_10059D710);
  v40 = *(v38 - 8);
  __chkstk_darwin();
  v41 = &v32 - v3;
  v4 = sub_100009DCC(&qword_1006F1B98, &qword_10059D718);
  v5 = *(v4 - 8);
  v36 = v4;
  v37 = v5;
  __chkstk_darwin();
  v7 = &v32 - v6;
  v8 = sub_100009DCC(&qword_1006F1BA0, &qword_10059D720);
  v35 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v32 - v9;
  v11 = sub_100009DCC(&qword_1006F1BA8, &unk_10059D728);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v32 - v13;
  v15 = a1[3];
  v45 = a1;
  sub_10000C8CC(a1, v15);
  sub_1003D18F0();
  v16 = v44;
  sub_100574708();
  if (!v16)
  {
    v17 = v10;
    v33 = v8;
    v34 = v7;
    v19 = v41;
    v18 = v42;
    v20 = v43;
    v44 = v12;
    v21 = sub_1005742E8();
    v22 = (2 * *(v21 + 16)) | 1;
    v46 = v21;
    v47 = v21 + 32;
    v48 = 0;
    v49 = v22;
    v23 = sub_1003C6B2C();
    if (v23 == 4 || v48 != v49 >> 1)
    {
      v12 = sub_100573F88();
      swift_allocError();
      v24 = v11;
      v26 = v25;
      sub_100009DCC(&qword_1006F1498, &qword_10059C280);
      *v26 = &type metadata for TextBadge;
      sub_100574268();
      sub_100573F78();
      (*(*(v12 - 8) + 104))(v26, enum case for DecodingError.typeMismatch(_:), v12);
      swift_willThrow();
      (*(v44 + 8))(v14, v24);
      swift_unknownObjectRelease();
    }

    else if (v23 > 1u)
    {
      v28 = v44;
      if (v23 == 2)
      {
        v50 = 2;
        sub_1003D1998();
        sub_100574258();
        (*(v40 + 8))(v19, v38);
        (*(v28 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v12 = 3;
      }

      else
      {
        v50 = 3;
        sub_1003D1944();
        sub_100574258();
        (*(v20 + 8))(v18, v39);
        (*(v28 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v12 = 4;
      }
    }

    else if (v23)
    {
      v50 = 1;
      sub_1003D19EC();
      v29 = v34;
      sub_100574258();
      v30 = v36;
      v31 = sub_1005742A8();
      (*(v37 + 8))(v29, v30);
      (*(v44 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v12 = v31 & 1;
    }

    else
    {
      v50 = 0;
      sub_1003D1A40();
      sub_100574258();
      (*(v35 + 8))(v17, v33);
      (*(v44 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v12 = 2;
    }
  }

  sub_100010474(v45);
  return v12;
}

unint64_t sub_1003D22DC()
{
  result = qword_1006F1B00;
  if (!qword_1006F1B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1B00);
  }

  return result;
}

unint64_t sub_1003D2334()
{
  result = qword_1006F1B08;
  if (!qword_1006F1B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1B08);
  }

  return result;
}

unint64_t sub_1003D238C()
{
  result = qword_1006F1B10;
  if (!qword_1006F1B10)
  {
    sub_100010324(&qword_1006F1B18, &qword_10059D180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1B10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextBadge(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_19;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
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

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 2;
  if (v8 <= 2)
  {
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for TextBadge(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
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

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1003D25CC()
{
  result = qword_1006F1B20;
  if (!qword_1006F1B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1B20);
  }

  return result;
}

unint64_t sub_1003D2624()
{
  result = qword_1006F1B28;
  if (!qword_1006F1B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1B28);
  }

  return result;
}

unint64_t sub_1003D267C()
{
  result = qword_1006F1B30;
  if (!qword_1006F1B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1B30);
  }

  return result;
}

unint64_t sub_1003D26D4()
{
  result = qword_1006F1B38;
  if (!qword_1006F1B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1B38);
  }

  return result;
}

unint64_t sub_1003D272C()
{
  result = qword_1006F1B40;
  if (!qword_1006F1B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1B40);
  }

  return result;
}

unint64_t sub_1003D2784()
{
  result = qword_1006F1B48;
  if (!qword_1006F1B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1B48);
  }

  return result;
}

unint64_t sub_1003D27DC()
{
  result = qword_1006F1B50;
  if (!qword_1006F1B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1B50);
  }

  return result;
}

unint64_t sub_1003D2834()
{
  result = qword_1006F1B58;
  if (!qword_1006F1B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1B58);
  }

  return result;
}

unint64_t sub_1003D288C()
{
  result = qword_1006F1B60;
  if (!qword_1006F1B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1B60);
  }

  return result;
}

unint64_t sub_1003D28E4()
{
  result = qword_1006F1B68;
  if (!qword_1006F1B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1B68);
  }

  return result;
}

unint64_t sub_1003D293C()
{
  result = qword_1006F1B70;
  if (!qword_1006F1B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1B70);
  }

  return result;
}

unint64_t sub_1003D2994()
{
  result = qword_1006F1B78;
  if (!qword_1006F1B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1B78);
  }

  return result;
}

unint64_t sub_1003D29E8()
{
  result = qword_1006F1B80;
  if (!qword_1006F1B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1B80);
  }

  return result;
}

uint64_t sub_1003D2A3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id CNSwiftUIAvatarView.makeUIView(context:)(uint64_t a1, uint64_t a2, NSString a3)
{
  v4 = [objc_opt_self() defaultSettings];
  v5 = [objc_allocWithZone(CNAvatarView) initWithSettings:v4];

  sub_100009DCC(&qword_1006F3B50, &qword_100599780);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10057B4F0;
  if (a3)
  {
    a3 = sub_100572898();
  }

  v7 = [objc_opt_self() contactWithDisplayName:a3 handleStrings:0];

  *(v6 + 32) = v7;
  sub_1003D2CA4();
  isa = sub_100572D08().super.isa;

  [v5 setContacts:isa];

  return v5;
}

void CNSwiftUIAvatarView.updateUIView(_:context:)(void *a1, uint64_t a2, uint64_t a3, NSString a4)
{
  sub_100009DCC(&qword_1006F3B50, &qword_100599780);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10057B4F0;
  if (a4)
  {
    a4 = sub_100572898();
  }

  v7 = [objc_opt_self() contactWithDisplayName:a4 handleStrings:0];

  *(v6 + 32) = v7;
  sub_1003D2CA4();
  isa = sub_100572D08().super.isa;

  [a1 setContacts:isa];
}

unint64_t sub_1003D2CA4()
{
  result = qword_1006F1BC0;
  if (!qword_1006F1BC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006F1BC0);
  }

  return result;
}

uint64_t sub_1003D2D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1003D2E04();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1003D2D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1003D2E04();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1003D2DCC(uint64_t a1)
{
  sub_1003D2E04();
  sub_10056F4D8();
  __break(1u);
}

unint64_t sub_1003D2E04()
{
  result = qword_1006F1BC8;
  if (!qword_1006F1BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1BC8);
  }

  return result;
}

id Card.ViewController.init(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *((swift_isaMask & *v4) + 0x50);
  v8 = *((swift_isaMask & *v4) + 0x58);
  type metadata accessor for Card.ViewController.RootViewController(0, v7, v8, a4);
  v12 = sub_1003D4924(a1, v9, v10, v11);
  *&v5[qword_1006F1BD0] = v12;
  v25.receiver = v5;
  v25.super_class = type metadata accessor for Card.ViewController(0, v7, v8, v13);
  v14 = v12;
  v15 = objc_msgSendSuper2(&v25, "initWithRootViewController:", v14);
  [v15 setModalPresentationStyle:{2, v25.receiver, v25.super_class}];
  v16 = [v15 sheetPresentationController];

  if (v16)
  {
    v17 = [objc_opt_self() systemBackgroundColor];
    [v16 _setNonLargeBackground:v17];

    sub_100009DCC(&qword_1006F3B50, &qword_100599780);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10057B4F0;
    sub_1000D3B98(0, &qword_1006F1BD8, UISheetPresentationControllerDetent_ptr);
    v19 = swift_allocObject();
    *(v19 + 16) = v14;
    *(v19 + 24) = v15;
    v20 = v14;
    v21 = v15;
    v22 = sub_100573818();

    *(v18 + 32) = v22;
    isa = sub_100572D08().super.isa;

    [v16 setDetents:isa];

    [v16 setWidthFollowsPreferredContentSizeWhenEdgeAttached:1];
    (*(*(v7 - 8) + 8))(a1, v7);
  }

  else
  {
    (*(*(v7 - 8) + 8))(a1, v7);
  }

  return v15;
}

id sub_1003D3164(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1003D3E54(0, 1);
  v5 = v4;
  result = [a3 view];
  if (*&result == 0.0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    [result safeAreaInsets];
    v9 = v8;

    *&result = v5 - v9;
  }

  return result;
}

Swift::Void __swiftcall Card.ViewController.viewDidLoad()()
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Card.ViewController(0, *((swift_isaMask & *v0) + 0x50), *((swift_isaMask & *v0) + 0x58), v2);
  v5.receiver = v0;
  v5.super_class = v3;
  objc_msgSendSuper2(&v5, "viewDidLoad");
  sub_1003D3E54(0, 1);
  [v0 setPreferredContentSize:?];
  sub_100009DCC(qword_1006F1BE0, &unk_1005A1D40);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10057B510;
  *(v4 + 32) = sub_10056E2A8();
  *(v4 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(swift_allocObject() + 16) = ObjectType;
  sub_100573518();
  swift_unknownObjectRelease();
}

void sub_1003D33C4(void *a1)
{
  v1 = a1;
  Card.ViewController.viewDidLoad()();
}

id Card.ViewController.viewWillTransition(to:with:)(uint64_t a1, double a2, double a3)
{
  v7 = *v3;
  v8 = swift_isaMask;
  sub_1003D3E54(*&a2, 0);
  [v3 setPreferredContentSize:?];
  v10 = type metadata accessor for Card.ViewController(0, *((v8 & v7) + 0x50), *((v8 & v7) + 0x58), v9);
  v12.receiver = v3;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
}

void sub_1003D34E0(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  Card.ViewController.viewWillTransition(to:with:)(a5, a2, a3);
  swift_unknownObjectRelease();
}

void sub_1003D359C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Card.ViewController.RootViewController(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v14.receiver = v4;
  v14.super_class = v5;
  objc_msgSendSuper2(&v14, "viewDidLoad");
  v6 = [v4 view];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1003D3A58();
    [v7 addSubview:v8];

    v9 = *(v4 + qword_1006F1C68);
    v10 = *(v4 + qword_1006F1C78);
    v11 = v9;
    v12 = [v10 view];
    if (v12)
    {
      v13 = v12;
      [v11 addSubview:v12];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1003D36C4(void *a1)
{
  v4 = a1;
  sub_1003D359C(v4, v1, v2, v3);
}

id sub_1003D370C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = type metadata accessor for Card.ViewController.RootViewController(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v60.receiver = v4;
  v60.super_class = v6;
  objc_msgSendSuper2(&v60, "viewDidLayoutSubviews");
  sub_1003D3CA4();
  v8 = v7;
  v9 = *&v4[qword_1006F1C78];
  result = [v4 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v11 = result;
  [result bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v61.origin.x = v13;
  v61.origin.y = v15;
  v61.size.width = v17;
  v61.size.height = v19;
  CGRectGetWidth(v61);
  sub_1003D3CA4();
  sub_1005737C8();
  sub_10056F3D8();
  v59 = v20;
  v22 = v21;

  result = [v5 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v23 = result;
  [result bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v62.origin.x = v25;
  v62.origin.y = v27;
  v62.size.width = v29;
  v62.size.height = v31;
  Height = CGRectGetHeight(v62);
  sub_1003D3BF4(Height < v22);
  v34 = v33;
  v35 = sub_1003D3A58();
  result = [v5 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v36 = result;
  v37 = v8 + v34;
  [result bounds];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v63.origin.x = v39;
  v63.origin.y = v41;
  v63.size.width = v43;
  v63.size.height = v45;
  Width = CGRectGetWidth(v63);
  sub_1005737D8();
  [v35 setContentSize:{Width, v22 + v47}];

  result = [*&v5[qword_1006F1C78] view];
  if (result)
  {
    v48 = result;
    v49 = qword_1006F1C68;
    v50 = *&v5[qword_1006F1C68];
    sub_100573838(0.0, v37, v59, v22);
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;

    [v48 setFrame:{v52, v54, v56, v58}];
    return [*&v5[v49] _setPocketsEnabled:Height < v22];
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1003D3A10(void *a1)
{
  v4 = a1;
  sub_1003D370C(v4, v1, v2, v3);
}

id sub_1003D3A58()
{
  v1 = qword_1006F1C68;
  v2 = *&v0[qword_1006F1C68];
  if (v2)
  {
    v3 = *&v0[qword_1006F1C68];
  }

  else
  {
    v4 = sub_1003D3ABC(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1003D3ABC(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v2 = result;
    [result bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = [objc_allocWithZone(UIScrollView) initWithFrame:{v4, v6, v8, v10}];
    [v11 setShowsVerticalScrollIndicator:0];
    [v11 setShowsHorizontalScrollIndicator:0];
    v12 = objc_opt_self();
    v13 = v11;
    v14 = [v12 clearColor];
    [v13 setBackgroundColor:v14];

    [v13 setAutoresizingMask:18];
    [v13 setContentInsetAdjustmentBehavior:2];
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003D3BF4(char a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 6 || (v5 = 0.0, (a1 & 1) != 0))
  {
    v6 = [v1 view];
    if (v6)
    {
      v7 = v6;
      [v6 safeAreaInsets];

      sub_1003D3CA4();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1003D3CA4()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 != 6)
  {
    v3 = [v0 traitCollection];
    v4 = [v3 horizontalSizeClass];

    if (v4 == 1)
    {
      v5 = [v0 presentationController];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 containerView];

        if (v7)
        {
          v8 = [v7 superview];

          if (v8)
          {
            [v8 _cornerRadius];
            v10 = v9;

            if (v10 > 0.0)
            {
              v11 = [v0 view];
              UIRoundToViewScale();
            }
          }
        }
      }
    }
  }

  v12 = [v0 traitCollection];
  [v12 userInterfaceIdiom];
}

void sub_1003D3E54(uint64_t a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    v4 = [v2 presentationController];
    if (!v4 || (v5 = v4, v6 = [v4 containerView], v5, !v6))
    {
      v7 = [v3 view];
      if (!v7)
      {
        goto LABEL_16;
      }

      v6 = v7;
    }

    [v6 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v39.origin.x = v9;
    v39.origin.y = v11;
    v39.size.width = v13;
    v39.size.height = v15;
    CGRectGetWidth(v39);
  }

  v16 = [v3 presentingViewController];
  if (v16 && (v17 = v16, v18 = [v16 traitCollection], v17, v18) || (v19 = objc_msgSend(v3, "presentationController")) != 0 && (v20 = v19, v18 = objc_msgSend(v19, "traitCollection"), v20, v18))
  {
    v21 = v18;
    [v21 horizontalSizeClass];
  }

  else
  {
    v21 = 0;
  }

  v22 = *&v3[qword_1006F1C78];
  sub_1003D3CA4();
  sub_1005737C8();
  sub_10056F3D8();
  v24 = v23;

  sub_1003D3CA4();
  sub_1005737D8();
  v26 = v25;
  v27 = [v3 view];
  if (v27)
  {
    v28 = v27;
    v29 = v24 + v26;
    [v27 bounds];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v40.origin.x = v31;
    v40.origin.y = v33;
    v40.size.width = v35;
    v40.size.height = v37;
    v38 = CGRectGetHeight(v40) < v29;
    sub_1003D3BF4(v38);

    return;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_1003D40FC(uint64_t a1)
{
  v2 = *(a1 + qword_1006F1C78);
}

id Card.ViewController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id Card.ViewController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController:a1];

  return v3;
}

void sub_1003D42DC(void *a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_1003D4B60();
}

id SyncedLyricsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_100572898();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t sub_1003D4418(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v5 = *((swift_isaMask & *a1) + 0x50);
  v6 = *((swift_isaMask & *a1) + 0x58);
  v7 = a4;

  return a5(v5, v6);
}

id sub_1003D44B4(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *((swift_isaMask & *v1) + 0x50), *((swift_isaMask & *v1) + 0x58));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, "dealloc");
}

char *sub_1003D453C(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = swift_isaMask;
  sub_10056F9B8();
  __chkstk_darwin();
  v6 = *((v5 & v4) + 0x50);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v26 - v8;
  *(v2 + qword_1006F1C68) = 0;
  *(v2 + qword_1006F1C70) = 0x4079E00000000000;
  v10 = *((v5 & v4) + 0x58);
  sub_10056F438();
  (*(v7 + 16))(v9, a1, v6);
  v11 = sub_10056F408();
  sub_10056F9A8();
  sub_10056F3E8();
  sub_10056F3F8();
  result = [v11 view];
  if (result)
  {
    v13 = result;
    v14 = objc_opt_self();
    v15 = [v14 clearColor];
    [v13 setBackgroundColor:v15];

    *(v2 + qword_1006F1C78) = v11;
    v17 = type metadata accessor for Card.ViewController.RootViewController(0, v6, v10, v16);
    v26.receiver = v2;
    v26.super_class = v17;
    v18 = v11;
    v19 = objc_msgSendSuper2(&v26, "initWithNibName:bundle:", 0, 0);
    result = [v19 view];
    if (result)
    {
      v20 = result;
      v21 = [v14 clearColor];
      [v20 setBackgroundColor:v21];

      [v19 addChildViewController:*&v19[qword_1006F1C78]];
      v22 = [v19 navigationItem];
      sub_1000D3B98(0, &qword_1006EFAD8, UIBarButtonItem_ptr);
      sub_1000D3B98(0, &qword_1006EFB60, UIAction_ptr);
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v24 = swift_allocObject();
      v24[2] = v6;
      v24[3] = v10;
      v24[4] = v23;
      v27.value.super.super.isa = sub_100573A88();
      v27.is_nil = 0;
      isa = sub_100573488(UIBarButtonSystemItemClose, v27, v28).super.super.isa;
      [v22 setLeftBarButtonItem:isa];

      return v19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003D4978()
{

  return swift_deallocObject();
}

id sub_1003D4A30(void *a1)
{
  sub_1003D3E54(0, 1);

  return [a1 setPreferredContentSize:?];
}

void sub_1003D4A84()
{
  *(v0 + qword_1006F1C68) = 0;
  *(v0 + qword_1006F1C70) = 0x4079E00000000000;
  sub_1005740F8();
  __break(1u);
}

uint64_t sub_1003D4C30()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1003D4C68()
{

  return swift_deallocObject();
}

uint64_t sub_1003D4CAC(uint64_t a1)
{
  sub_100572E38();
  sub_100570868();
  sub_1005707F8();
  return v2;
}

uint64_t sub_1003D4D08(uint64_t a1)
{
  sub_100572E38();
  sub_100570868();
  sub_100570818();
  return v2;
}

double sub_1003D4DEC(uint64_t a1)
{
  sub_100009DCC(&qword_1006F1EE8, &unk_10059DB18);
  sub_1005707F8();
  return v2;
}

uint64_t CarouselView.init(items:scrollPosition:itemSize:horizontalSpacing:carouselToPageIndicatorSpacing:content:didSelect:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  v47 = a7;
  v48 = a8;
  v45 = a5;
  v46 = a6;
  v44 = a15;
  v43[0] = a17;
  v43[1] = a18;
  sub_100573C28();
  __chkstk_darwin();
  v29 = v43 - v28;
  v49 = a16;
  v50 = a17;
  v51 = a18;
  v52 = a19;
  v30 = type metadata accessor for CarouselView(0, &v49);
  (*(*(a16 - 8) + 56))(v29, 1, 1, a16);
  property wrapper backing initializer of CarouselView.previousItem(v29);
  v31 = (a9 + v30[24]);
  v53 = 0;
  sub_100570668();
  v32 = v50;
  *v31 = v49;
  v31[1] = v32;
  v33 = [objc_opt_self() currentTraitCollection];
  v34 = [v33 userInterfaceIdiom];

  v35 = 8.0;
  if (v34 == 6)
  {
    v35 = 10.0;
  }

  v36 = (a9 + v30[22]);
  *(a9 + v30[25]) = v35;
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  result = sub_1003DACF4(a4, a9 + v30[17]);
  v38 = a9 + v30[18];
  v39 = v46;
  *v38 = v45;
  *(v38 + 1) = v39;
  *(v38 + 2) = a10;
  *(v38 + 3) = a11;
  *(a9 + v30[20]) = a12;
  *(a9 + v30[21]) = a13;
  v40 = (a9 + v30[19]);
  v41 = v48;
  *v40 = v47;
  v40[1] = v41;
  v42 = v44;
  *v36 = a14;
  v36[1] = v42;
  return result;
}

uint64_t property wrapper backing initializer of CarouselView.previousItem(uint64_t a1)
{
  v4 = sub_100573C28();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  (*(v5 + 16))(&v9 - v7, a1, v4, v6);
  sub_100570668();
  return (*(v5 + 8))(a1, v4);
}

uint64_t CarouselView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v94 = sub_10056EB08();
  v86 = *(v94 - 8);
  __chkstk_darwin();
  v85 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = *(a1 - 1);
  v93 = *(v83 + 64);
  __chkstk_darwin();
  v92 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1[2];
  v6 = sub_100572E38();
  v90 = a1[6];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v82 = a1;
  v8 = a1[7];
  v111 = a1[3];
  *&v112 = v8;
  v9 = v111;
  v96 = v111;
  v10 = v8;
  v91 = v8;
  swift_getOpaqueTypeMetadata2();
  v11 = sub_10056ECA8();
  WitnessTable = swift_getWitnessTable();
  v13 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v111 = v6;
  *&v112 = AssociatedTypeWitness;
  *(&v112 + 1) = v11;
  v113 = WitnessTable;
  v114 = AssociatedConformanceWitness;
  sub_1005708E8();
  v111 = v9;
  *&v112 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v110 = &protocol witness table for _FrameLayout;
  v108 = swift_getWitnessTable();
  swift_getWitnessTable();
  v15 = sub_10056E5C8();
  v16 = swift_getWitnessTable();
  v111 = v15;
  *&v112 = v16;
  swift_getOpaqueTypeMetadata2();
  v111 = v15;
  *&v112 = v16;
  swift_getOpaqueTypeConformance2();
  v17 = sub_10056E608();
  v18 = swift_getWitnessTable();
  v111 = v17;
  *&v112 = v18;
  swift_getOpaqueTypeMetadata2();
  sub_10056F738();
  sub_10056ECA8();
  sub_100010324(&qword_1006F1D08, &qword_10059D908);
  v19 = sub_10056ECA8();
  v20 = sub_10056F988();
  v111 = v17;
  *&v112 = v18;
  v21 = swift_getOpaqueTypeConformance2();
  v22 = sub_1003DC640(&qword_1006F1D10, &type metadata accessor for SafeAreaPaddingModifier, &protocol conformance descriptor for SafeAreaPaddingModifier);
  v106 = v21;
  v107 = v22;
  v23 = swift_getWitnessTable();
  v24 = sub_1003DAD64();
  v104 = v23;
  v105 = v24;
  v25 = swift_getWitnessTable();
  v111 = v19;
  *&v112 = v20;
  *(&v112 + 1) = v25;
  v113 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v111 = v19;
  *&v112 = v20;
  *(&v112 + 1) = v25;
  v113 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v27 = swift_getOpaqueTypeConformance2();
  v111 = OpaqueTypeMetadata2;
  *&v112 = v27;
  v28 = swift_getOpaqueTypeMetadata2();
  v111 = OpaqueTypeMetadata2;
  *&v112 = v27;
  v29 = swift_getOpaqueTypeConformance2();
  v111 = v28;
  *&v112 = v29;
  v30 = swift_getOpaqueTypeMetadata2();
  v111 = v28;
  *&v112 = v29;
  v31 = swift_getOpaqueTypeConformance2();
  v111 = v30;
  *&v112 = v31;
  swift_getOpaqueTypeMetadata2();
  sub_10056ECA8();
  v89 = v13;
  v111 = v13;
  v32 = v90;
  v113 = v90;
  *&v33 = v13;
  *(&v33 + 1) = v96;
  v73 = v33;
  v34 = v82;
  v95 = *(v82 + 2);
  v112 = v95;
  type metadata accessor for PageControl(255, &v111);
  sub_10056ECA8();
  sub_100573C28();
  swift_getTupleTypeMetadata2();
  sub_100570AD8();
  swift_getWitnessTable();
  v35 = sub_1005707C8();
  v77 = *(v35 - 8);
  __chkstk_darwin();
  v68 = &v67 - v36;
  v71 = v35;
  v37 = sub_10056ECA8();
  v76 = v37;
  v81 = *(v37 - 8);
  __chkstk_darwin();
  v88 = &v67 - v38;
  v69 = swift_getWitnessTable();
  v102 = v69;
  v103 = &protocol witness table for _AppearanceActionModifier;
  v39 = swift_getWitnessTable();
  v75 = v39;
  v74 = sub_1003DC640(qword_1006F1D20, &type metadata accessor for ScrollPosition, &protocol conformance descriptor for ScrollPosition);
  v111 = v37;
  *&v112 = v94;
  *(&v112 + 1) = v39;
  v113 = v74;
  v78 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v79 = swift_getOpaqueTypeMetadata2();
  v80 = *(v79 - 8);
  __chkstk_darwin();
  v70 = &v67 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v72 = &v67 - v41;
  v42 = v84;
  v97 = v73;
  v98 = v95;
  v43 = v91;
  v99 = v32;
  v100 = v91;
  v101 = v84;
  sub_10056F368();
  sub_1005707B8();
  v44 = v83;
  *&v73 = *(v83 + 16);
  v45 = v92;
  (v73)(v92, v42, v34);
  v46 = (*(v44 + 80) + 64) & ~*(v44 + 80);
  v47 = swift_allocObject();
  v48 = v96;
  *(v47 + 16) = v89;
  *(v47 + 24) = v48;
  *(v47 + 32) = v95;
  *(v47 + 48) = v32;
  *(v47 + 56) = v43;
  v49 = *(v44 + 32);
  v49(v47 + v46, v45, v34);
  v50 = v71;
  v51 = v68;
  sub_100570338();

  (*(v77 + 8))(v51, v50);
  sub_100009DCC(&qword_1006F1D00, &qword_10059D900);
  v52 = v85;
  sub_1005707F8();
  v53 = v92;
  (v73)(v92, v42, v34);
  v54 = swift_allocObject();
  v55 = v96;
  *(v54 + 16) = v89;
  *(v54 + 24) = v55;
  *(v54 + 32) = v95;
  v56 = v91;
  *(v54 + 48) = v90;
  *(v54 + 56) = v56;
  v49(v54 + v46, v53, v34);
  v57 = v70;
  v58 = v76;
  v59 = v94;
  v60 = v75;
  v61 = v74;
  v62 = v88;
  sub_100570348();

  (*(v86 + 8))(v52, v59);
  (*(v81 + 8))(v62, v58);
  v111 = v58;
  *&v112 = v59;
  *(&v112 + 1) = v60;
  v113 = v61;
  swift_getOpaqueTypeConformance2();
  v63 = v72;
  v64 = v79;
  sub_1003CE294();
  v65 = *(v80 + 8);
  v65(v57, v64);
  sub_1003CE294();
  return (v65)(v63, v64);
}

uint64_t sub_1003D5E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v207 = a1;
  v195 = a8;
  v233 = a2;
  v234 = a4;
  v197 = a4;
  v198 = a5;
  v235 = a5;
  v236 = a6;
  v146 = *(type metadata accessor for PageControl(0, &v233) - 8);
  __chkstk_darwin();
  v144 = (&v143 - v14);
  v206 = v15;
  v189 = *(sub_10056ECA8() - 8);
  __chkstk_darwin();
  v147 = &v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v145 = &v143 - v17;
  v193 = v18;
  *&v194 = COERCE_DOUBLE(sub_100573C28());
  v190 = *(v194 - 8);
  __chkstk_darwin();
  v192 = &v143 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v191 = &v143 - v20;
  v21 = sub_10056F7D8();
  v187 = *(v21 - 8);
  v188 = v21;
  __chkstk_darwin();
  v182 = &v143 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10056F968();
  __chkstk_darwin();
  v184 = &v143 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_10056F988();
  v185 = *(v200 - 8);
  __chkstk_darwin();
  v183 = &v143 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = a2;
  v234 = a3;
  v199 = a3;
  v235 = a4;
  v236 = a5;
  v237 = a6;
  v238 = a7;
  v205 = type metadata accessor for CarouselView(0, &v233);
  v180 = *(v205 - 8);
  v181 = *(v180 + 64);
  __chkstk_darwin();
  v179 = &v143 - v25;
  sub_100009DCC(&qword_1006F1D00, &qword_10059D900);
  __chkstk_darwin();
  v196 = &v143 - v26;
  v27 = sub_100572E38();
  v208 = a6;
  v210 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v233 = a3;
  v234 = a7;
  v202 = a7;
  swift_getOpaqueTypeMetadata2();
  v29 = sub_10056ECA8();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v233 = v27;
  v234 = AssociatedTypeWitness;
  v235 = v29;
  v236 = WitnessTable;
  v237 = AssociatedConformanceWitness;
  sub_1005708E8();
  v32 = v199;
  v233 = v199;
  v234 = a7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v232 = &protocol witness table for _FrameLayout;
  v230 = swift_getWitnessTable();
  swift_getWitnessTable();
  v33 = sub_10056E5C8();
  v34 = swift_getWitnessTable();
  v233 = v33;
  v234 = v34;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v233 = v33;
  v234 = v34;
  v155 = swift_getOpaqueTypeConformance2();
  v35 = sub_10056E608();
  v160 = *(v35 - 8);
  __chkstk_darwin();
  v37 = &v143 - v36;
  v38 = swift_getWitnessTable();
  v233 = v35;
  v234 = v38;
  v39 = v38;
  v148 = v38;
  v158 = swift_getOpaqueTypeMetadata2();
  v161 = *(v158 - 8);
  __chkstk_darwin();
  v151 = &v143 - v40;
  sub_10056F738();
  v41 = sub_10056ECA8();
  v163 = *(v41 - 8);
  __chkstk_darwin();
  v201 = &v143 - v42;
  sub_100010324(&qword_1006F1D08, &qword_10059D908);
  v157 = v41;
  v43 = sub_10056ECA8();
  v162 = *(v43 - 8);
  __chkstk_darwin();
  v159 = &v143 - v44;
  v233 = v35;
  v234 = v39;
  v45 = swift_getOpaqueTypeConformance2();
  v150 = v45;
  v46 = sub_1003DC640(&qword_1006F1D10, &type metadata accessor for SafeAreaPaddingModifier, &protocol conformance descriptor for SafeAreaPaddingModifier);
  v228 = v45;
  v229 = v46;
  v47 = swift_getWitnessTable();
  v154 = v47;
  v48 = sub_1003DAD64();
  v226 = v47;
  v227 = v48;
  v49 = swift_getWitnessTable();
  v50 = v43;
  v152 = v43;
  v51 = v200;
  v233 = v43;
  v234 = v200;
  v235 = v49;
  v236 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v52 = v49;
  v153 = v49;
  v53 = swift_getOpaqueTypeMetadata2();
  v177 = *(v53 - 8);
  __chkstk_darwin();
  v149 = &v143 - v54;
  v233 = v50;
  v234 = v51;
  v235 = v52;
  v236 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v55 = swift_getOpaqueTypeConformance2();
  v233 = v53;
  v234 = v55;
  v56 = swift_getOpaqueTypeMetadata2();
  v174 = *(v56 - 8);
  __chkstk_darwin();
  v169 = &v143 - v57;
  v178 = v53;
  v233 = v53;
  v234 = v55;
  v171 = v55;
  v58 = swift_getOpaqueTypeConformance2();
  v233 = v56;
  v234 = v58;
  v59 = swift_getOpaqueTypeMetadata2();
  v170 = *(v59 - 8);
  __chkstk_darwin();
  v164 = v58;
  v165 = &v143 - v60;
  v175 = v56;
  v233 = v56;
  v234 = v58;
  v61 = swift_getOpaqueTypeConformance2();
  v176 = v59;
  v233 = v59;
  v234 = v61;
  v167 = v61;
  v172 = *(swift_getOpaqueTypeMetadata2() - 8);
  __chkstk_darwin();
  v166 = &v143 - v62;
  v173 = v63;
  *&v64 = COERCE_DOUBLE(sub_10056ECA8());
  v203 = *(v64 - 8);
  v204 = *&v64;
  __chkstk_darwin();
  v186 = &v143 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v168 = &v143 - v66;
  __chkstk_darwin();
  v209 = &v143 - v67;
  sub_10056F9E8();
  v211 = v210;
  v212 = v32;
  v69 = v197;
  v68 = v198;
  v213 = v197;
  v214 = v198;
  v215 = v208;
  v216 = v202;
  v70 = v207;
  v217 = v207;
  sub_10056E618();
  v71 = v205;
  sub_100009DCC(&qword_1006F1D00, &qword_10059D900);
  v72 = v196;
  sub_100570818();
  sub_100570B48();
  v73 = v151;
  sub_1005700B8();
  sub_1003DC474(v72);
  (*(v160 + 8))(v37, v35);
  v74 = sub_10056FA28();
  v75 = v71;
  v76 = (v70 + *(v71 + 96));
  v77 = *v76;
  v78 = v76[1];
  v233 = v77;
  v234 = v78;
  sub_100009DCC(&qword_1006F1ED0, &qword_10059DB08);
  sub_100570678();
  v79 = v158;
  sub_1003D84F4(v74, COERCE__INT64(round(v225[0])), 0, v158, v150);
  (*(v161 + 8))(v73, v79);
  _s3__C6CGSizeVMa_1(0);
  v81 = v80;
  v82 = v179;
  v83 = v180;
  v84 = v75;
  (*(v180 + 16))(v179, v70, v75);
  v85 = v83;
  v86 = (*(v83 + 80) + 64) & ~*(v83 + 80);
  v87 = swift_allocObject();
  v88 = v199;
  v87[2] = v210;
  v87[3] = v88;
  v87[4] = v69;
  v87[5] = v68;
  v89 = v149;
  v90 = v202;
  v87[6] = v208;
  v87[7] = v90;
  v91 = v87 + v86;
  v92 = v182;
  (*(v85 + 32))(v91, v82, v84);
  v142 = sub_1003DC640(&qword_1006F1ED8, _s3__C6CGSizeVMa_1, &protocol conformance descriptor for CGSize);
  v93 = v159;
  v94 = v81;
  v95 = v157;
  v96 = v81;
  v97 = v201;
  sub_1003D88F8(v94, sub_1003D8630, 0, sub_1003DC548, v87, v157, v96, v154, v142);

  (*(v163 + 8))(v97, v95);
  sub_10056F958();
  v98 = v183;
  sub_10056F978();
  v99 = v152;
  v100 = v200;
  sub_100570208();
  (*(v185 + 8))(v98, v100);
  (*(v162 + 8))(v93, v99);
  sub_10056F7C8();
  sub_100009DCC(&qword_1006F1EE0, &qword_10059DB10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057B500;
  LOBYTE(v98) = sub_10056FA08();
  *(inited + 32) = v98;
  v102 = sub_10056F9E8();
  *(inited + 33) = v102;
  sub_10056F9F8();
  sub_10056F9F8();
  if (sub_10056F9F8() != v98)
  {
    sub_10056F9F8();
  }

  sub_10056F9F8();
  if (sub_10056F9F8() != v102)
  {
    sub_10056F9F8();
  }

  v103 = v205;
  v104 = v169;
  v105 = v178;
  sub_100570158();
  (*(v187 + 8))(v92, v188);
  (*(v177 + 8))(v89, v105);
  v106 = v165;
  v107 = v175;
  sub_1005701B8();
  (*(v174 + 8))(v104, v107);
  sub_1003D4CAC(v103);
  sub_100572DC8();

  v109 = v166;
  v108 = v167;
  v110 = v176;
  sub_1005700A8();
  (*(v170 + 8))(v106, v110);
  sub_1003D4DEC(v103);
  sub_1005709E8();
  v233 = v110;
  v234 = v108;
  v111 = swift_getOpaqueTypeConformance2();
  v112 = v168;
  v113 = v173;
  sub_1005702A8();
  (*(v172 + 8))(v109, v113);
  *&v225[4] = v111;
  *&v225[5] = &protocol witness table for _FrameLayout;
  v114 = v204;
  v200 = swift_getWitnessTable();
  sub_1003CE294();
  v115 = v112;
  v116 = v210;
  v201 = *(v203 + 8);
  v202 = v203 + 8;
  (v201)(v115, *&v114);
  sub_1003D4CAC(v103);
  v117 = sub_100572DC8();

  if (v117 < 2)
  {
    v133 = v192;
    (*(v189 + 56))(v192, 1, 1, v193);
    *&v225[2] = swift_getWitnessTable();
    *&v225[3] = &protocol witness table for _FrameLayout;
    swift_getWitnessTable();
  }

  else
  {
    v118 = sub_1003D4D08(v103);
    v120 = v119;
    v122 = v121;
    sub_100009DCC(&qword_1006F1D00, &qword_10059D900);
    v123 = v196;
    sub_100570818();
    v124 = v144;
    *v144 = v118;
    v124[1] = v120;
    v124[2] = v122;
    v233 = v116;
    v234 = v197;
    v235 = v198;
    v236 = v208;
    v125 = type metadata accessor for PageControl(0, &v233);
    sub_1003DACF4(v123, v124 + *(v125 + 52));
    sub_1005709E8();
    v126 = v206;
    v127 = swift_getWitnessTable();
    v128 = v147;
    sub_1005702A8();
    (*(v146 + 8))(v124, v126);
    v218 = v127;
    v219 = &protocol witness table for _FrameLayout;
    v129 = v193;
    swift_getWitnessTable();
    v130 = v145;
    sub_1003CE294();
    v131 = v189;
    v132 = *(v189 + 8);
    v132(v128, v129);
    sub_1003CE294();
    v132(v130, v129);
    v133 = v192;
    (*(v131 + 32))(v192, v128, v129);
    (*(v131 + 56))(v133, 0, 1, v129);
  }

  v134 = v191;
  sub_10042FF28(v133, v191);
  v135 = v190;
  v136 = *(v190 + 8);
  v137 = *&v194;
  v136(v133, v194);
  v138 = v204;
  v139 = v186;
  (*(v203 + 16))(v186, v209, COERCE_DOUBLE(*&v204));
  v233 = v139;
  (*(v135 + 16))(v133, v134, COERCE_DOUBLE(*&v137));
  v234 = v133;
  v225[0] = v138;
  v225[1] = v137;
  v223 = v200;
  v221 = swift_getWitnessTable();
  v222 = &protocol witness table for _FrameLayout;
  v220 = swift_getWitnessTable();
  v224 = swift_getWitnessTable();
  sub_10042FBC4(&v233, 2uLL, v225);
  v136(v134, *&v137);
  v140 = v201;
  (v201)(v209, *&v138);
  v136(v133, *&v137);
  return v140(v139, *&v138);
}

uint64_t sub_1003D74CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v46 = a5;
  v44 = a4;
  v47 = a1;
  v48 = a8;
  sub_10056F688();
  __chkstk_darwin();
  v45 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100572E38();
  v43 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = a3;
  v57 = a7;
  swift_getOpaqueTypeMetadata2();
  v15 = sub_10056ECA8();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v56 = v13;
  v57 = AssociatedTypeWitness;
  v58 = v15;
  v59 = WitnessTable;
  v60 = AssociatedConformanceWitness;
  v39 = sub_1005708E8();
  v56 = a3;
  v57 = a7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v64 = &protocol witness table for _FrameLayout;
  v62 = swift_getWitnessTable();
  v38 = swift_getWitnessTable();
  v18 = sub_10056E5C8();
  v42 = *(v18 - 8);
  __chkstk_darwin();
  v36 = v35 - v19;
  v37 = swift_getWitnessTable();
  v56 = v18;
  v57 = v37;
  v40 = &opaque type descriptor for <<opaque return type of View.scrollTargetLayout(isEnabled:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v41 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin();
  v22 = v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = v35 - v23;
  v35[2] = sub_10056F218();
  v25 = a2;
  v56 = a2;
  v57 = a3;
  v26 = a3;
  v27 = v44;
  v28 = v46;
  v58 = v44;
  v59 = v46;
  v29 = v43;
  v60 = v43;
  v61 = a7;
  v30 = type metadata accessor for CarouselView(0, &v56);
  v35[1] = *(v47 + *(v30 + 80));
  v49 = v25;
  v50 = v26;
  v51 = v27;
  v52 = v28;
  v53 = v29;
  v54 = a7;
  v55 = v47;
  sub_1003D8474();
  v31 = v36;
  sub_10056E5B8();
  v32 = v37;
  sub_1005701C8();
  (*(v42 + 8))(v31, v18);
  v56 = v18;
  v57 = v32;
  swift_getOpaqueTypeConformance2();
  sub_1003CE294();
  v33 = *(v41 + 8);
  v33(v22, OpaqueTypeMetadata2);
  sub_1003CE294();
  return (v33)(v24, OpaqueTypeMetadata2);
}

uint64_t sub_1003D79D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v48 = a4;
  v49 = a5;
  v47 = a1;
  v50 = a8;
  v55 = a2;
  v56 = a3;
  v39 = a3;
  v57 = a4;
  v58 = a5;
  v59 = a6;
  v60 = a7;
  v41 = a7;
  v12 = type metadata accessor for CarouselView(0, &v55);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v40 = v37 - v14;
  v15 = sub_100572E38();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = AssociatedTypeWitness;
  v55 = a3;
  v56 = a7;
  v42 = &opaque type descriptor for <<opaque return type of View.onTapGesture(count:perform:)>>;
  swift_getOpaqueTypeMetadata2();
  v17 = sub_10056ECA8();
  v37[1] = v17;
  v45 = v15;
  WitnessTable = swift_getWitnessTable();
  v43 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v55 = v15;
  v56 = AssociatedTypeWitness;
  v57 = v17;
  v58 = WitnessTable;
  v59 = AssociatedConformanceWitness;
  v20 = sub_1005708E8();
  v46 = *(v20 - 8);
  __chkstk_darwin();
  v22 = v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v38 = v37 - v23;
  v24 = v12;
  v25 = v47;
  v54 = sub_1003D4CAC(v12);
  v26 = v40;
  (*(v13 + 16))(v40, v25, v24);
  v27 = (*(v13 + 80) + 64) & ~*(v13 + 80);
  v28 = swift_allocObject();
  *(v28 + 2) = a2;
  v29 = v39;
  v31 = v48;
  v30 = v49;
  *(v28 + 3) = v39;
  *(v28 + 4) = v31;
  *(v28 + 5) = v30;
  *(v28 + 6) = a6;
  v32 = v41;
  *(v28 + 7) = v41;
  (*(v13 + 32))(&v28[v27], v26, v24);
  v55 = v29;
  v56 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = &protocol witness table for _FrameLayout;
  v33 = swift_getWitnessTable();
  sub_1005708C8();
  v51 = v33;
  swift_getWitnessTable();
  v34 = v38;
  sub_1003CE294();
  v35 = *(v46 + 8);
  v35(v22, v20);
  sub_1003CE294();
  return (v35)(v34, v20);
}

uint64_t sub_1003D7DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v65 = a5;
  v66 = a6;
  v64 = a4;
  v71 = a7;
  v57 = a3;
  v59 = *(a3 - 8);
  v63 = *(v59 + 64);
  __chkstk_darwin();
  v58 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v10;
  v75 = v11;
  v12 = v11;
  v76 = v13;
  v77 = v14;
  v78 = v15;
  v79 = v16;
  v17 = v16;
  v55 = v16;
  v18 = type metadata accessor for CarouselView(0, &v74);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin();
  v22 = &v51 - v21;
  v67 = *(v12 - 8);
  __chkstk_darwin();
  v52 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v12;
  v75 = v17;
  v68 = &opaque type descriptor for <<opaque return type of View.onTapGesture(count:perform:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v69 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin();
  v54 = &v51 - v24;
  v60 = sub_10056ECA8();
  v70 = *(v60 - 8);
  __chkstk_darwin();
  v56 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin();
  v62 = &v51 - v27;
  v28 = v18;
  v51 = v18;
  v29 = *(v18 + 76);
  v53 = a2;
  (*(a2 + v29))(a1, v26);
  v30 = v22;
  (*(v19 + 16))(v22, a2, v28);
  v31 = v59;
  v32 = v58;
  v33 = v57;
  (*(v59 + 16))(v58, a1, v57);
  v34 = (*(v19 + 80) + 64) & ~*(v19 + 80);
  v35 = (v20 + *(v31 + 80) + v34) & ~*(v31 + 80);
  v36 = swift_allocObject();
  *(v36 + 2) = v33;
  *(v36 + 3) = v12;
  v37 = v12;
  v38 = v65;
  *(v36 + 4) = v64;
  *(v36 + 5) = v38;
  v39 = v55;
  *(v36 + 6) = v66;
  *(v36 + 7) = v39;
  v40 = v30;
  v41 = v51;
  (*(v19 + 32))(&v36[v34], v40, v51);
  (*(v31 + 32))(&v36[v35], v32, v33);
  v42 = v54;
  v43 = v52;
  sub_100570048();

  (*(v67 + 8))(v43, v37);
  sub_1003D4DEC(v41);
  sub_1003D4DEC(v41);
  sub_1005709E8();
  v74 = v37;
  v75 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v56;
  v46 = OpaqueTypeMetadata2;
  sub_1005702A8();
  (*(v69 + 8))(v42, v46);
  v72 = OpaqueTypeConformance2;
  v73 = &protocol witness table for _FrameLayout;
  v47 = v60;
  swift_getWitnessTable();
  v48 = v62;
  sub_1003CE294();
  v49 = *(v70 + 8);
  v49(v45, v47);
  sub_1003CE294();
  return (v49)(v48, v47);
}

double sub_1003D83CC(uint64_t a1, char a2, _OWORD *a3)
{
  if (a2)
  {
    sub_100570A48();
  }

  __chkstk_darwin();
  sub_10056EA28();

  return result;
}

uint64_t sub_1003D8474()
{
  sub_10056F688();
  sub_1003DC640(&unk_1006F1EF0, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  return sub_100574748();
}

uint64_t sub_1003D84F4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_10056F738();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0uLL;
  v11 = 0uLL;
  if ((a3 & 1) == 0)
  {
    sub_10056E598();
    *(&v10 + 1) = v12;
    *(&v11 + 1) = v13;
  }

  v15[0] = v10;
  v15[1] = v11;
  v16 = a3 & 1;
  sub_10056F728();
  sub_100570328();
  return (*(v7 + 8))(v9, v6);
}

void sub_1003D8630(void *a2@<X8>)
{
  sub_10056E928();
  *a2 = v3;
  a2[1] = v4;
}

uint64_t sub_1003D865C(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a8;
  v15 = sub_100573C28();
  v30 = *(v15 - 8);
  __chkstk_darwin();
  v17 = &v29 - v16;
  v18 = *(a3 - 8);
  __chkstk_darwin();
  v29 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v38 = v31;
  v21 = type metadata accessor for CarouselView(0, &v33);
  v22 = (v20 - sub_1003D4DEC(v21)) * 0.5;
  v23 = (a2 + *(v21 + 96));
  v24 = *v23;
  v25 = v23[1];
  v33 = *v23;
  v34 = v25;
  sub_100009DCC(&qword_1006F1ED0, &qword_10059DB08);
  sub_100570678();
  if (v32 != v22)
  {
    v32 = v22;
    v33 = v24;
    v34 = v25;
    sub_100570688();
  }

  sub_1005706A8();
  sub_100570678();
  if ((*(v18 + 48))(v17, 1, a3) == 1)
  {
    return (*(v30 + 8))(v17, v15);
  }

  v27 = v29;
  (*(v18 + 32))(v29, v17, a3);
  v28 = sub_1003D83CC(v27, 0, v21);
  return (*(v18 + 8))(v27, a3, v28);
}

double sub_1003D88F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  sub_10056F748();
  sub_10056F758();
  sub_100570328();

  return result;
}

void sub_1003D89D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7)
{
  v34 = a5;
  v35 = a7;
  v33 = a4;
  v36 = a1;
  v10 = sub_100573C28();
  v29 = *(v10 - 8);
  v30 = v10;
  __chkstk_darwin();
  v32 = &v27 - v11;
  v31 = *(a2 - 8);
  __chkstk_darwin();
  v28 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10056EB08();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = sub_100573C28();
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v21 = &v27 - v20;
  v37[0] = a2;
  v37[1] = a3;
  v37[2] = v33;
  v37[3] = v34;
  v37[4] = a6;
  v37[5] = v35;
  v35 = type metadata accessor for CarouselView(0, v37);
  sub_100009DCC(&qword_1006F1D00, &qword_10059D900);
  sub_1005707F8();
  swift_getAssociatedConformanceWitness();
  sub_10056EAE8();
  (*(v14 + 8))(v16, v13);
  if ((*(*(AssociatedTypeWitness - 8) + 48))(v21, 1, AssociatedTypeWitness) == 1)
  {
    v22 = v18;
    v37[0] = sub_1003D4CAC(v35);
    sub_100572E38();
    swift_getWitnessTable();
    v23 = v32;
    sub_100573258();
    v24 = v31;
    if ((*(v31 + 48))(v23, 1, a2) == 1)
    {
      (*(v19 + 8))(v21, v22);
      (*(v29 + 8))(v23, v30);
    }

    else
    {
      v25 = v28;
      (*(v24 + 32))(v28, v23, a2);

      v26 = sub_1003D83CC(v25, 0, v35);
      (*(v24 + 8))(v25, a2, v26);
      (*(v19 + 8))(v21, v22);
    }
  }

  else
  {
    (*(v19 + 8))(v21, v18);
  }
}

uint64_t sub_1003D8E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v51 = a6;
  v52 = a7;
  v50 = a5;
  v54 = a3;
  v11 = sub_100573C28();
  v48 = *(v11 - 8);
  v49 = v11;
  __chkstk_darwin();
  v46 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v45 = &v40 - v13;
  v47 = *(a4 - 8);
  __chkstk_darwin();
  v53 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_100573C28();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v40 - v18;
  v20 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v22 = &v40 - v21;
  swift_getAssociatedConformanceWitness();
  sub_10056EAE8();
  if ((*(v20 + 48))(v19, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v17 + 8))(v19, v16);
  }

  (*(v20 + 32))(v22, v19, AssociatedTypeWitness);
  v24 = a8;
  v25 = v50;
  v56 = a4;
  v57 = v50;
  v43 = v20;
  v44 = v22;
  v27 = v51;
  v26 = v52;
  v58 = v51;
  v59 = v52;
  v60 = v24;
  v61 = a9;
  v41 = type metadata accessor for CarouselView(0, &v56);
  v28 = sub_1003D4CAC(v41);
  v42 = &v40;
  v55 = v28;
  __chkstk_darwin();
  *(&v40 - 8) = a4;
  *(&v40 - 7) = v25;
  *(&v40 - 6) = v27;
  *(&v40 - 5) = v26;
  v29 = v44;
  *(&v40 - 4) = v24;
  *(&v40 - 3) = a9;
  *(&v40 - 2) = v29;
  sub_100572E38();
  swift_getWitnessTable();
  sub_100573228();

  if (v57 == 1)
  {
    return (*(v43 + 8))(v29, AssociatedTypeWitness);
  }

  v30 = v56;
  v31 = v41;
  v32 = v54;
  sub_1003D4CAC(v41);
  v33 = v53;
  v52 = v30;
  sub_100572E48();

  v34 = v47;
  v35 = v45;
  (*(v47 + 16))(v45, v33, a4);
  (*(v34 + 56))(v35, 0, 1, a4);
  v37 = v48;
  v36 = v49;
  (*(v48 + 16))(v46, v35, v49);
  sub_1005706A8();
  sub_100570688();
  (*(v37 + 8))(v35, v36);
  v38 = (v32 + *(v31 + 88));
  v39 = v53;
  if (*v38)
  {
    (*v38)(v52, v53);
  }

  (*(v34 + 8))(v39, a4);
  return (*(v43 + 8))(v44, AssociatedTypeWitness);
}

uint64_t sub_1003D93AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v10 = &v13 - v9;
  sub_100573EF8();
  swift_getAssociatedConformanceWitness();
  v11 = sub_1005727E8();
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  return v11 & 1;
}

uint64_t sub_1003D94F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = a6;
  v20 = a8;
  sub_10056EB08();
  __chkstk_darwin();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v14 = v18 - v13;
  sub_100573EF8();
  sub_100570B48();
  v18[1] = v16;
  v18[2] = v15;
  v22[0] = a3;
  v22[1] = a4;
  v22[2] = a5;
  v22[3] = v19;
  v22[4] = a7;
  v22[5] = v20;
  type metadata accessor for CarouselView(0, v22);
  sub_100009DCC(&qword_1006F1D00, &qword_10059D900);
  sub_1005707F8();
  swift_getAssociatedConformanceWitness();
  sub_10056EAF8();
  (*(v21 + 8))(v14, AssociatedTypeWitness);
  return sub_100570808();
}

void *sub_1003D96F4(uint64_t a1)
{
  sub_100009DCC(&qword_1006F1D00, &qword_10059D900);
  __chkstk_darwin();
  v3 = v12 - v2;
  v4 = *(a1 + 32);
  v12[0] = *(a1 + 16);
  v12[1] = v4;
  type metadata accessor for PageControl.Coordinator(0, v12);
  v5 = sub_1003D4D08(a1);
  v7 = v6;
  v9 = v8;
  sub_100009DCC(&qword_1006F1D00, &qword_10059D900);
  sub_100570818();
  v10 = swift_allocObject();
  v10[2] = v5;
  v10[3] = v7;
  v10[4] = v9;
  sub_1003DACF4(v3, v10 + qword_1006F1DC8);
  return v10;
}

void *sub_1003D980C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  sub_1003DACF4(a4, v8 + qword_1006F1DC8);
  return v8;
}

uint64_t sub_1003D987C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_10056EB08();
  v54 = *(v7 - 8);
  v55 = v7;
  __chkstk_darwin();
  v53 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v56 = *(a3 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = sub_100573C28();
  v46 = *(v47 - 8);
  __chkstk_darwin();
  v52 = &v45 - v11;
  v59 = AssociatedTypeWitness;
  v58 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v48 = &v45 - v12;
  v50 = *(v9 - 8);
  __chkstk_darwin();
  v65 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v62 = sub_100573C28();
  v49 = *(v62 - 8);
  __chkstk_darwin();
  v61 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v45 - v15;
  sub_100009DCC(&qword_1006F1D00, &qword_10059D900);
  __chkstk_darwin();
  v18 = &v45 - v17;
  swift_getWitnessTable();
  sub_10056F828();
  sub_10056F818();
  v19 = v68;
  sub_100009DCC(&qword_1006F1D00, &qword_10059D900);
  sub_100570818();
  v20 = qword_1006F1DC8;
  swift_beginAccess();
  v51 = v19;
  sub_1003DC214(v18, v19 + v20);
  swift_endAccess();
  v21 = [a1 numberOfPages];
  sub_1003D4CAC(a3);
  v22 = sub_100572DC8();

  if (v21 != v22)
  {
    sub_1003D4CAC(a3);
    v23 = sub_100572DC8();

    [a1 setNumberOfPages:v23];
  }

  v60 = a1;
  v64 = a3;
  v57 = v4;
  v68 = sub_1003D4CAC(a3);
  v24 = v9;
  v25 = sub_100572E38();
  swift_getWitnessTable();
  sub_100572BC8();

  v66 = v67;
  sub_100574168();
  sub_100574138();
  v45 = v25;
  sub_100574158();
  v26 = (v49 + 32);
  v27 = TupleTypeMetadata2;
  v28 = (v50 + 32);
  v29 = (v50 + 8);
  while (1)
  {
    v30 = v61;
    sub_100574148();
    (*v26)(v16, v30, v62);
    if ((*(*(v27 - 8) + 48))(v16, 1, v27) == 1)
    {
      break;
    }

    v31 = *v16;
    (*v28)(v65, &v16[*(v27 + 48)], v24);
    v32 = (*(*(v64 + 24) + 8))(v24);
    if (v32)
    {
      v33 = v32;
      [v60 setIndicatorImage:v32 forPage:v31];
    }

    (*v29)(v65, v24);
    v27 = TupleTypeMetadata2;
  }

  v34 = v64;
  sub_100009DCC(&qword_1006F1D00, &qword_10059D900);
  v35 = v53;
  sub_1005707F8();
  v36 = v56;
  v37 = v24;
  v38 = v59;
  swift_getAssociatedConformanceWitness();
  v39 = v52;
  sub_10056EAE8();
  (*(v54 + 8))(v35, v55);
  v40 = v58;
  if ((*(v58 + 48))(v39, 1, v38) == 1)
  {

    return (*(v46 + 8))(v39, v47);
  }

  else
  {
    v42 = v48;
    (*(v40 + 32))(v48, v39, v38);
    v67 = sub_1003D4CAC(v34);
    __chkstk_darwin();
    *(&v45 - 6) = v37;
    *(&v45 - 5) = *(v34 + 24);
    *(&v45 - 3) = v36;
    *(&v45 - 2) = v42;
    swift_getWitnessTable();
    sub_100573228();

    if (v69 != 1)
    {
      v43 = v68;
      v44 = v60;
      if ([v60 currentPage] != v43)
      {
        [v44 setCurrentPage:v43];
      }
    }

    return (*(v40 + 8))(v42, v38);
  }
}

uint64_t sub_1003DA0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v9 = &v12 - v8;
  sub_100573EF8();
  swift_getAssociatedConformanceWitness();
  v10 = sub_1005727E8();
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  return v10 & 1;
}

void *sub_1003DA230(void *a1)
{
  v2 = v1;
  v56 = *(*v2 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v48 = &v42 - v5;
  v6 = sub_100573C28();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v46 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin();
  v51 = &v42 - v8;
  v9 = sub_10056EB08();
  v49 = *(v9 - 8);
  v50 = v9;
  __chkstk_darwin();
  v55 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_100009DCC(&qword_1006F1D00, &qword_10059D900);
  __chkstk_darwin();
  v53 = &v42 - v11;
  v60 = *(v6 - 8);
  __chkstk_darwin();
  v47 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v42 - v13;
  __chkstk_darwin();
  v58 = &v42 - v15;
  v59 = sub_100570868();
  v52 = *(v59 - 8);
  *&v16 = __chkstk_darwin().n128_u64[0];
  v57 = &v42 - v17;
  v18 = [a1 currentPage];
  v64 = *(v2 + 16);
  v65 = *(v2 + 24);
  sub_100572E38();
  sub_100570868();
  swift_getWitnessTable();
  result = sub_100570838();
  if (v18 >= v62 && v18 < v63)
  {
    v64 = *(v2 + 16);
    v65 = *(v2 + 24);
    v62 = v18;
    v45 = TupleTypeMetadata2;
    sub_100570848();
    v20 = qword_1006F1DC8;
    swift_beginAccess();
    v43 = v20;
    v21 = v2 + v20;
    v22 = v53;
    sub_1003DC404(v21, v53);
    v23 = v55;
    sub_1005707F8();
    sub_1003DC474(v22);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_10056EAE8();
    (*(v49 + 8))(v23, v50);
    sub_100570858();
    v24 = v61;
    (*(v61 + 56))(v14, 0, 1, AssociatedTypeWitness);
    v25 = *(v45 + 48);
    v26 = v60;
    v27 = *(v60 + 16);
    v28 = v51;
    v27();
    v50 = v25;
    (v27)(&v28[v25], v14, v6);
    v29 = *(v24 + 48);
    if (v29(v28, 1, AssociatedTypeWitness) == 1)
    {
      v30 = *(v26 + 8);
      v30(v14, v6);
      if (v29(&v28[v50], 1, AssociatedTypeWitness) == 1)
      {
        v30(v28, v6);
LABEL_11:
        v30(v58, v6);
        return (*(v52 + 8))(v57, v59);
      }
    }

    else
    {
      v31 = v47;
      (v27)(v47, v28, v6);
      v32 = v50;
      if (v29(&v28[v50], 1, AssociatedTypeWitness) != 1)
      {
        v37 = v61;
        v38 = &v28[v32];
        v39 = v48;
        (*(v61 + 32))(v48, v38, AssociatedTypeWitness);
        v40 = sub_1005727E8();
        v41 = *(v37 + 8);
        v41(v39, AssociatedTypeWitness);
        v30 = *(v60 + 8);
        v30(v14, v6);
        v41(v47, AssociatedTypeWitness);
        v30(v28, v6);
        if (v40)
        {
          goto LABEL_11;
        }

LABEL_9:
        v33 = v53;
        sub_1003DC404(v2 + v43, v53);
        v34 = v48;
        v35 = v59;
        v36 = v57;
        sub_100570858();
        sub_1005707F8();
        sub_10056EAF8();
        (*(v61 + 8))(v34, AssociatedTypeWitness);
        sub_100570808();
        sub_1003DC474(v33);
        v30(v58, v6);
        return (*(v52 + 8))(v36, v35);
      }

      v30 = *(v60 + 8);
      v30(v14, v6);
      (*(v61 + 8))(v31, AssociatedTypeWitness);
    }

    (*(v46 + 8))(v28, v45);
    goto LABEL_9;
  }

  return result;
}

double sub_1003DAA88(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_1003DA230(v3);

  return result;
}

void *sub_1003DAAD8()
{

  sub_1003DC474(v0 + qword_1006F1DC8);
  return v0;
}

uint64_t sub_1003DAB2C()
{
  sub_1003DAAD8();

  return swift_deallocClassInstance();
}

void *sub_1003DAB94@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1003D96F4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1003DABBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_1003DAC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void sub_1003DACB4(uint64_t a1)
{
  swift_getWitnessTable();
  sub_10056F4D8();
  __break(1u);
}

uint64_t sub_1003DACF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006F1D00, &qword_10059D900);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003DAD64()
{
  result = qword_1006F1D18;
  if (!qword_1006F1D18)
  {
    sub_100010324(&qword_1006F1D08, &qword_10059D908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1D18);
  }

  return result;
}

void sub_1003DADFC()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v9[0] = v0[2];
  v1 = v9[0];
  v9[1] = v2;
  v9[2] = v3;
  v9[3] = v4;
  v9[4] = v5;
  v9[5] = v6;
  v7 = *(type metadata accessor for CarouselView(0, v9) - 8);
  v8 = v0 + ((*(v7 + 80) + 64) & ~*(v7 + 80));

  sub_1003D89D4(v8, v1, v2, v3, v4, v5, v6);
}

uint64_t sub_1003DAEB8(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v13[0] = v2[2];
  v5 = v13[0];
  v13[1] = v6;
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = v9;
  v13[5] = v10;
  v11 = *(type metadata accessor for CarouselView(0, v13) - 8);
  return sub_1003D8E44(a1, a2, v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80)), v5, v6, v7, v8, v9, v10);
}

void sub_1003DAFD4(uint64_t a1)
{
  sub_100572E38();
  sub_100570868();
  if (v1 <= 0x3F)
  {
    sub_1003DB828(319, &qword_1006F1DA8, &type metadata accessor for ScrollPosition);
    if (v2 <= 0x3F)
    {
      sub_1003DB828(319, &qword_1006F1DB0, _s3__C6CGSizeVMa_1);
      if (v3 <= 0x3F)
      {
        sub_1003CC840();
        if (v4 <= 0x3F)
        {
          sub_1003DB87C(319);
          if (v5 <= 0x3F)
          {
            sub_100573C28();
            sub_1005706A8();
            if (v7 <= 0x3F)
            {
              sub_1003DB8E0(v6);
              if (v8 <= 0x3F)
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

uint64_t sub_1003DB144(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_10056EB08();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  if (v8 >= 0)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(*(a3 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v7 + 80);
  v14 = v12 - 1;
  if (!v12)
  {
    v14 = 0;
  }

  if (v14 <= v10)
  {
    v14 = v10;
  }

  if (v12)
  {
    v15 = 7;
  }

  else
  {
    v15 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = v13 | 7;
  v17 = ((v13 + 16) & ~v13) + *(*(v6 - 8) + 64) + 7;
  v18 = *(v11 + 80) & 0xF8;
  v19 = ~v18 & 0xFFFFFFFFFFFFFFF8;
  v20 = v18 + 23;
  if (v14 >= a2)
  {
    goto LABEL_37;
  }

  v21 = ((((v15 + *(v11 + 64)) & 0xFFFFFFFFFFFFFFF8) + ((v20 + ((((((((((v17 + ((v13 + 24) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v19) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  v22 = v21 & 0xFFFFFFF8;
  if ((v21 & 0xFFFFFFF8) != 0)
  {
    v23 = 2;
  }

  else
  {
    v23 = a2 - v14 + 1;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v26 = *(a1 + v21);
      if (!v26)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v26 = *(a1 + v21);
      if (!v26)
      {
        goto LABEL_37;
      }
    }

LABEL_34:
    v28 = v26 - 1;
    if (v22)
    {
      v28 = 0;
      v29 = *a1;
    }

    else
    {
      v29 = 0;
    }

    return v14 + (v29 | v28) + 1;
  }

  if (v25)
  {
    v26 = *(a1 + v21);
    if (v26)
    {
      goto LABEL_34;
    }
  }

LABEL_37:
  if (v14 == 0x7FFFFFFF)
  {
    v30 = *(a1 + 1);
    if (v30 >= 0xFFFFFFFF)
    {
      LODWORD(v30) = -1;
    }

    return (v30 + 1);
  }

  else
  {
    v31 = (a1 + v16 + 24) & ~v16;
    if (v14 == v9)
    {
      v32 = *(v7 + 48);

      return v32((v13 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13);
    }

    else
    {
      v33 = (*(v11 + 48))((v20 + ((((((((((v17 + v31) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v19, v12);
      if (v33 >= 2)
      {
        return v33 - 1;
      }

      else
      {
        return 0;
      }
    }
  }
}

void sub_1003DB42C(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_10056EB08();
  v9 = 0;
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  if (v11 >= 0)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(*(a4 + 16) - 8);
  v15 = *(v14 + 84);
  v16 = *(v10 + 80);
  v17 = *(v14 + 80);
  v18 = v15 - 1;
  if (!v15)
  {
    v18 = 0;
  }

  if (v18 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  else
  {
    v19 = v18;
  }

  if (v19 <= v13)
  {
    v20 = v13;
  }

  else
  {
    v20 = v19;
  }

  v21 = ((v16 + 16) & ~v16) + *(*(v8 - 8) + 64) + 7;
  v22 = ~(v17 & 0xF8) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v17 & 0xF8) + 23;
  if (v15)
  {
    v24 = *(v14 + 64);
  }

  else
  {
    v24 = *(v14 + 64) + 1;
  }

  v25 = ((((v24 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v23 + ((((((((((v21 + ((v16 + 24) & ~(v16 | 7))) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v22) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v20 < a3)
  {
    if (((((v24 + 7) & 0xFFFFFFF8) + ((v23 + ((((((((((v21 + ((v16 + 24) & ~(v16 | 7))) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & v22) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v26 = a3 - v20 + 1;
    }

    else
    {
      v26 = 2;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v9 = v27;
    }

    else
    {
      v9 = 0;
    }
  }

  if (a2 > v20)
  {
    if (((((v24 + 7) & 0xFFFFFFF8) + ((v23 + ((((((((((v21 + ((v16 + 24) & ~(v16 | 7))) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & v22) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v28 = a2 - v20;
    }

    else
    {
      v28 = 1;
    }

    if (((((v24 + 7) & 0xFFFFFFF8) + ((v23 + ((((((((((v21 + ((v16 + 24) & ~(v16 | 7))) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & v22) + 31) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v29 = ~v20 + a2;
      bzero(a1, v25);
      *a1 = v29;
    }

    if (v9 > 1)
    {
      if (v9 == 2)
      {
        *(a1 + v25) = v28;
      }

      else
      {
        *(a1 + v25) = v28;
      }
    }

    else if (v9)
    {
      *(a1 + v25) = v28;
    }

    return;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *(a1 + v25) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_48;
    }

    *(a1 + v25) = 0;
LABEL_47:
    if (!a2)
    {
      return;
    }

    goto LABEL_48;
  }

  if (!v9)
  {
    goto LABEL_47;
  }

  *(a1 + v25) = 0;
  if (!a2)
  {
    return;
  }

LABEL_48:
  if (v20 == 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      a1[1] = 0;
      a1[2] = 0;
      *a1 = a2 & 0x7FFFFFFF;
    }

    else
    {
      a1[1] = (a2 - 1);
    }
  }

  else
  {
    v30 = (a1 + (v16 | 7) + 24) & ~(v16 | 7);
    if (v12 == v20)
    {
      v31 = *(v10 + 56);

      v31((v16 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v16, a2, v11, v8);
    }

    else
    {
      v32 = v23 + ((((((((((v21 + v30) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      v33 = (v32 & v22);
      if (v19 >= a2)
      {
        if (v18 >= a2)
        {
          v39 = *(v14 + 56);

          v39(v32 & v22, (a2 + 1));
        }

        else
        {
          if (v24 <= 3)
          {
            v36 = ~(-1 << (8 * v24));
          }

          else
          {
            v36 = -1;
          }

          if (v24)
          {
            v37 = v36 & (~v18 + a2);
            if (v24 <= 3)
            {
              v38 = v24;
            }

            else
            {
              v38 = 4;
            }

            bzero(v33, v24);
            if (v38 > 2)
            {
              if (v38 == 3)
              {
                *v33 = v37;
                v33[2] = BYTE2(v37);
              }

              else
              {
                *v33 = v37;
              }
            }

            else if (v38 == 1)
            {
              *v33 = v37;
            }

            else
            {
              *v33 = v37;
            }
          }
        }
      }

      else
      {
        v34 = (v24 + 7) & 0xFFFFFFF8;
        if (v34 != -8)
        {
          v35 = ~v19 + a2;
          bzero(v33, (v34 + 8));
          *v33 = v35;
        }
      }
    }
  }
}

void sub_1003DB828(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100570868();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1003DB87C(uint64_t a1)
{
  if (!qword_1006F1DB8)
  {
    sub_100010324(&qword_1006F4570, &qword_1005A0460);
    v1 = sub_100573C28();
    if (!v2)
    {
      atomic_store(v1, &qword_1006F1DB8);
    }
  }
}

void sub_1003DB8E0(__n128 a1)
{
  if (!qword_1006F1DC0)
  {
    v1 = sub_1005706A8();
    if (!v2)
    {
      atomic_store(v1, &qword_1006F1DC0);
    }
  }
}

void sub_1003DB930(uint64_t a1)
{
  sub_1003DB828(319, &qword_1006F1DA8, &type metadata accessor for ScrollPosition);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_1003DBA00(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[4];
  sub_100572E38();
  swift_getAssociatedTypeWitness();
  swift_getOpaqueTypeMetadata2();
  sub_10056ECA8();
  swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1005708E8();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10056E5C8();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_10056E608();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10056F738();
  sub_10056ECA8();
  sub_100010324(&qword_1006F1D08, &qword_10059D908);
  sub_10056ECA8();
  sub_10056F988();
  swift_getOpaqueTypeConformance2();
  sub_1003DC640(&qword_1006F1D10, &type metadata accessor for SafeAreaPaddingModifier, &protocol conformance descriptor for SafeAreaPaddingModifier);
  swift_getWitnessTable();
  sub_1003DAD64();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  *(&v11 + 1) = WitnessTable;
  v12 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  *&v11 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10056ECA8();
  v10 = v1;
  v11 = *(a1 + 1);
  v12 = v2;
  type metadata accessor for PageControl(255, &v10);
  sub_10056ECA8();
  sub_100573C28();
  swift_getTupleTypeMetadata2();
  sub_100570AD8();
  swift_getWitnessTable();
  sub_1005707C8();
  v4 = sub_10056ECA8();
  v5 = sub_10056EB08();
  swift_getWitnessTable();
  v6 = swift_getWitnessTable();
  v7 = sub_1003DC640(qword_1006F1D20, &type metadata accessor for ScrollPosition, &protocol conformance descriptor for ScrollPosition);
  v10 = v4;
  *&v11 = v5;
  *(&v11 + 1) = v6;
  v12 = v7;
  return swift_getOpaqueTypeConformance2();
}

void sub_1003DBFB4(uint64_t a1)
{
  sub_100572E38();
  sub_100570868();
  if (v1 <= 0x3F)
  {
    sub_1003DB828(319, &qword_1006F1DA8, &type metadata accessor for ScrollPosition);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1003DC078(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100009DCC(&qword_1006F1D00, &qword_10059D900);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1003DC148(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100009DCC(&qword_1006F1D00, &qword_10059D900);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1003DC214(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006F1D00, &qword_10059D900);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_1003DC2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_allocWithZone(UIPageControl) init];
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  type metadata accessor for PageControl(255, v14);
  swift_getWitnessTable();
  sub_10056F828();
  sub_10056F818();
  [v9 addTarget:v14[0] action:"updateCurrentPage:" forControlEvents:4096];

  v10 = objc_opt_self();
  v11 = [v10 systemFillColor];
  [v9 setPageIndicatorTintColor:v11];

  v12 = [v10 labelColor];
  [v9 setCurrentPageIndicatorTintColor:v12];

  return v9;
}

uint64_t sub_1003DC404(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006F1D00, &qword_10059D900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003DC474(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006F1D00, &qword_10059D900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003DC548(double *a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v12[0] = v1[2];
  v3 = v12[0];
  v12[1] = v4;
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = v7;
  v12[5] = v8;
  v9 = *(type metadata accessor for CarouselView(0, v12) - 8);
  v10 = v1 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  return sub_1003D865C(a1, v10, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1003DC640(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003DC688()
{
  v1 = v0[2];
  v11 = v0[1];
  v12[0] = v11;
  v2 = v0[3];
  v12[1] = v1;
  v12[2] = v2;
  v3 = type metadata accessor for CarouselView(0, v12);
  v4 = v0 + ((*(*(v3 - 1) + 80) + 64) & ~*(*(v3 - 1) + 80));

  v5 = &v4[v3[17]];

  v6 = *(sub_100009DCC(&qword_1006F1D00, &qword_10059D900) + 32);
  v7 = sub_10056EB08();
  (*(*(v7 - 8) + 8))(&v5[v6], v7);

  if (*&v4[v3[22]])
  {
  }

  v8 = &v4[v3[23]];
  v9 = *(v11 - 8);
  if (!(*(v9 + 48))(v8, 1, v11))
  {
    (*(v9 + 8))(v8, v11);
  }

  sub_100573C28();
  sub_1005706A8();

  return swift_deallocObject();
}

uint64_t sub_1003DC8D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v14[0] = v2[2];
  v5 = v14[0];
  v14[1] = v6;
  v14[2] = v7;
  v14[3] = v8;
  v14[4] = v9;
  v14[5] = v10;
  v11 = *(type metadata accessor for CarouselView(0, v14) - 8);
  v12 = v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80));

  return sub_1003D7DEC(a1, v12, v5, v7, v8, v9, a2);
}

uint64_t sub_1003DC9A4()
{
  v1 = *(v0 + 2);
  v14[0] = *(v0 + 1);
  v13 = *&v14[0];
  v2 = *(v0 + 3);
  v14[1] = v1;
  v14[2] = v2;
  v3 = type metadata accessor for CarouselView(0, v14);
  v12 = *(*(v3 - 1) + 64);
  v4 = (*(*(v3 - 1) + 80) + 64) & ~*(*(v3 - 1) + 80);
  v5 = *(v13 - 8);
  v6 = *(v5 + 80);

  v7 = &v0[v4 + v3[17]];

  v8 = *(sub_100009DCC(&qword_1006F1D00, &qword_10059D900) + 32);
  v9 = sub_10056EB08();
  (*(*(v9 - 8) + 8))(&v7[v8], v9);

  if (*&v0[v4 + v3[22]])
  {
  }

  v10 = &v0[v4 + v3[23]];
  if (!(*(v5 + 48))(v10, 1, v13))
  {
    (*(v5 + 8))(v10, v13);
  }

  sub_100573C28();
  sub_1005706A8();

  (*(v5 + 8))(&v0[(v4 + v12 + v6) & ~v6], v13);
  return swift_deallocObject();
}

double sub_1003DCC30()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v14 = v0[2];
  v1 = v14;
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v7 = *(type metadata accessor for CarouselView(0, &v14) - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(*(v1 - 8) + 80);
  v14 = v1;
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v11 = (((v8 + 64) & ~v8) + v9 + v10) & ~v10;
  v18 = v5;
  v19 = v6;
  v12 = type metadata accessor for CarouselView(0, &v14);
  return sub_1003D83CC(v0 + v11, 1, v12);
}

void CircularProgressView.setState(_:animated:)(uint64_t a1, int a2, char a3)
{
  v5 = &v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state];
  if ((a2 & 0x10000) != 0)
  {
    if (v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10])
    {
      return;
    }

    *v5 = *&a1;
    *(v5 + 4) = a2;
    v5[10] = 1;
    if (a3)
    {
      v6 = *&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
      goto LABEL_13;
    }
  }

  else
  {
    if ((v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10] & 1) == 0)
    {
      v16 = *v5;
      v17 = *(v5 + 4);
      if ((a2 & 0x100) != 0)
      {
        if (a1 | a2)
        {
          if ((*(v5 + 4) & 0x100) != 0 && *&v16 | *(v5 + 4))
          {
            return;
          }
        }

        else if ((*(v5 + 4) & 0x100) != 0 && !(*&v16 | *(v5 + 4)))
        {
          return;
        }
      }

      else if ((*(v5 + 4) & 0x100) == 0)
      {
        if (a2)
        {
          if (v17)
          {
            return;
          }
        }

        else if ((v17 & 1) == 0 && *&a1 == v16)
        {
          return;
        }
      }
    }

    *v5 = *&a1;
    *(v5 + 4) = a2;
    v5[10] = 0;
    if (a3)
    {
      v6 = *&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
      LOBYTE(v7) = a2;
      if ((a2 & 0x100) == 0)
      {
        goto LABEL_5;
      }

LABEL_23:
      if (a1 | v7)
      {
        [v6 setOpacity:0.0];
        if (a3)
        {
          return;
        }
      }

      else if (*&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator])
      {
        v20 = swift_allocObject();
        *(v20 + 16) = v3;
        *(v20 + 24) = v6;
        v21 = v3;
        v22 = v6;

        sub_1003DEA74(sub_1003DEF88, v20, 1.0);

        if (a3)
        {
          return;
        }
      }

      else
      {
        [v6 setStrokeEnd:1.0];
        sub_100009DCC(&qword_1006F3B50, &qword_100599780);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_10057B4F0;
        sub_1000D3B98(0, &qword_1006F1F20, NSNumber_ptr);
        *(v23 + 32) = sub_100573A38(4);
        isa = sub_100572D08().super.isa;

        [v6 setLineDashPattern:isa];

        if (a3)
        {
          return;
        }
      }

      goto LABEL_46;
    }
  }

  v13 = objc_opt_self();
  [v13 begin];
  [v13 setDisableActions:1];
  v6 = *&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
  if (v5[10])
  {
LABEL_13:
    [v6 setLineDashPattern:0];
    if (*&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator])
    {
      v14 = swift_allocObject();
      *(v14 + 16) = v3;
      v15 = v3;

      sub_1003DEA74(sub_1003DDFF0, v14, 0.0);

      goto LABEL_15;
    }

LABEL_40:
    if (a3)
    {
      return;
    }

    goto LABEL_46;
  }

  a1 = *v5;
  v7 = *(v5 + 4);
  if ((v7 & 0x100) != 0)
  {
    goto LABEL_23;
  }

LABEL_5:
  v8 = *&a1;
  [v6 setLineDashPattern:0];
  LODWORD(v9) = 1.0;
  [v6 setOpacity:v9];
  if ((v7 & 1) == 0)
  {
    if (*&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator])
    {
      v18 = swift_allocObject();
      *(v18 + 16) = v3;

      v19 = v3;
      sub_1003DEA74(sub_1003DF5F4, v18, v8);

      if (a3)
      {
        return;
      }

      goto LABEL_46;
    }

    [v6 setStrokeEnd:v8];
    goto LABEL_40;
  }

  v10 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator;
  v11 = *&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator];
  if (!v11)
  {
    type metadata accessor for CircularProgressView.SpinAnimator();
    v11 = swift_allocObject();
    *(v11 + 40) = 0;
    *(v11 + 16) = 0xD000000000000010;
    *(v11 + 24) = 0x80000001005B8A10;
    *(v11 + 32) = v6;
    v12 = v6;
  }

  *&v3[v10] = v11;

  sub_1003DE75C();
LABEL_15:

  if (a3)
  {
    return;
  }

LABEL_46:
  v25 = objc_opt_self();

  [v25 commit];
}

BOOL static CircularProgressView.State.__derived_enum_equals(_:_:)(uint64_t a1, __int16 a2, uint64_t a3, __int16 a4)
{
  if ((a2 & 0x100) != 0)
  {
    v5 = (a3 | a4) == 0;
    if ((a4 & 0x100) == 0)
    {
      v5 = 0;
    }

    v6 = (a3 | a4) != 0;
    if ((a4 & 0x100) == 0)
    {
      v6 = 0;
    }

    if (a1 | a2)
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
    if ((a4 & 0x100) == 0)
    {
      if (a2)
      {
        if (a4)
        {
          return 1;
        }
      }

      else if ((a4 & 1) == 0 && *&a1 == *&a3)
      {
        return 1;
      }
    }

    return 0;
  }
}

BOOL sub_1003DD28C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 9) == 1)
  {
    if (*&v2 | v3)
    {
      if (*(a2 + 9))
      {
        return (*&v4 | v5) != 0;
      }
    }

    else if (*(a2 + 9))
    {
      return (*&v4 | v5) == 0;
    }

    return 0;
  }

  if ((*(a2 + 9) & 1) == 0)
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else if ((v5 & 1) == 0 && v2 == v4)
    {
      return 1;
    }
  }

  return 0;
}

char *CircularProgressView.init(size:)(double a1, double a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state];
  *v6 = 0;
  *(v6 + 4) = 0;
  v6[10] = 1;
  *&v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image] = 0;
  *&v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView] = 0;
  *&v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale] = 0x3FE0000000000000;
  *&v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator] = 0;
  v7 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer;
  *&v2[v7] = [objc_allocWithZone(CAShapeLayer) init];
  v8 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer;
  *&v2[v8] = [objc_allocWithZone(CAShapeLayer) init];
  v9 = &v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_preferredSize];
  *v9 = a1;
  v9[1] = a2;
  v25.receiver = v2;
  v25.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, a1, a2);
  v11 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer;
  v12 = *&v10[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer];
  v13 = objc_opt_self();
  v14 = v10;
  v15 = v12;
  v16 = [v13 clearColor];
  v17 = [v16 CGColor];

  [v15 setFillColor:v17];
  [*&v10[v11] setLineWidth:2.5];
  v18 = [v14 layer];
  [v18 addSublayer:*&v10[v11]];

  v19 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer;
  [*&v14[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer] setLineCap:kCALineCapRound];
  [*&v14[v19] setStrokeEnd:0.0];
  v20 = *&v14[v19];
  v21 = [v13 clearColor];
  v22 = [v21 CGColor];

  [v20 setFillColor:v22];
  [*&v14[v19] setLineWidth:2.5];
  [*&v14[v19] setLineDashPhase:6.0];
  v23 = [v14 layer];

  [v23 addSublayer:*&v14[v19]];
  sub_1003DD5EC();

  return v14;
}

void sub_1003DD5EC()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer];
  v2 = [objc_opt_self() tertiarySystemFillColor];
  v3 = [v2 CGColor];

  [v1 setStrokeColor:v3];
  v4 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
  v5 = [v0 tintColor];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 CGColor];

    [v4 setStrokeColor:v7];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall CircularProgressView.tintColorDidChange()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, "tintColorDidChange");
  sub_1003DD5EC();
}

Swift::Void __swiftcall CircularProgressView.layoutSubviews()()
{
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, "layoutSubviews");
  [v0 bounds];
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  v5 = CGRectGetWidth(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v6 = CGRectGetHeight(v26);
  if (v6 >= v5)
  {
    v6 = v5;
  }

  v7 = (v6 + -2.5) * 0.5;
  sub_100573888();
  v10 = [objc_opt_self() bezierPathWithArcCenter:1 radius:v8 startAngle:v9 endAngle:v7 clockwise:{-1.57079633, 4.71238898}];
  v11 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer];
  v12 = [v10 CGPath];
  [v11 setPath:v12];

  v13 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
  v14 = [v10 CGPath];
  [v13 setPath:v14];

  [v13 setBounds:{x, y, width, height}];
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v15 = CGRectGetWidth(v27) * 0.5;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  [v13 setPosition:{v15, CGRectGetHeight(v28) * 0.5}];
  v16 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView;
  v17 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView];
  if (v17)
  {
    [v17 setFrame:{x, y, width, height}];
    v18 = *&v0[v16];
    if (v18)
    {
      v19 = v18;
      [v19 frame];
      v20 = CGRectGetWidth(v29);
      [v19 frame];
      v21 = CGRectGetHeight(v30);
      if (v21 < v20)
      {
        v20 = v21;
      }

      v22 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
      swift_beginAccess();
      v23 = [objc_opt_self() configurationWithPointSize:v20 * *&v0[v22]];
      [v19 setPreferredSymbolConfiguration:v23];
    }
  }
}

double CircularProgressView.sizeThatFits(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_preferredSize;
  swift_beginAccess();
  return *v1;
}

id CircularProgressView.preferredSize.setter(double a1, double a2)
{
  v5 = &v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_preferredSize];
  result = swift_beginAccess();
  v7 = *v5;
  v8 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  if (v7 != a1 || v8 != a2)
  {
    return [v2 invalidateIntrinsicContentSize];
  }

  return result;
}

void (*CircularProgressView.preferredSize.modify(uint64_t *a1))(id **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_preferredSize;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_1003DDCB0;
}

void sub_1003DDCB0(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 3);
  v3 = ((*a1)[6] + (*a1)[5]);
  v4 = *(*a1 + 4);
  v5 = *v3;
  v6 = v3[1];
  *v3 = v2;
  v3[1] = v4;
  if (v2 != v5 || v4 != v6)
  {
    [v1[5] invalidateIntrinsicContentSize];
  }

  free(v1);
}

void (*CircularProgressView.state.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 8);
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10);
  *a1 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state);
  *(a1 + 8) = v2;
  *(a1 + 10) = v3;
  return sub_1003DDDA0;
}