uint64_t sub_15DC(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_15F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1638(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_16A8(uint64_t a1)
{
  v1 = sub_1B0C(&qword_182C0, &qword_FF30);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = swift_projectBox();
  (*(v2 + 16))(v5, v8, v1);
  sub_F73C();
  v9 = *(v2 + 8);
  v9(v5, v1);
  swift_getKeyPath();
  sub_F75C();

  v9(v7, v1);
  return sub_F6DC();
}

uint64_t sub_1854@<X0>(uint64_t a1@<X8>)
{
  sub_F48C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v2 = qword_19098;
  result = sub_F57C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1960()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1B0C(&qword_182C0, &qword_FF30);
  swift_allocBox();
  sub_43BC(v1, v2);
  sub_F2FC();
  sub_1B54();
  sub_F74C();
  sub_F48C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v3 = qword_19098;
  sub_F57C();
  sub_1B0C(&qword_182D0, &qword_FDF0);
  sub_1BB4();
  sub_F71C();
}

uint64_t sub_1B0C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1B54()
{
  result = qword_182C8;
  if (!qword_182C8)
  {
    sub_F2FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_182C8);
  }

  return result;
}

unint64_t sub_1BB4()
{
  result = qword_182D8;
  if (!qword_182D8)
  {
    sub_1C18(&qword_182D0, &qword_FDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_182D8);
  }

  return result;
}

uint64_t sub_1C18(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_F24C();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1CBC()
{
  result = qword_182E0;
  if (!qword_182E0)
  {
    sub_1C18(&qword_182E8, &unk_101D0);
    sub_1BB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_182E0);
  }

  return result;
}

uint64_t sub_1D80@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v24[0] = a3;
  v5 = sub_1B0C(&qword_182F0, &qword_FF20);
  __chkstk_darwin(v5);
  v6 = sub_1B0C(&qword_182F8, &qword_FF28);
  __chkstk_darwin(v6 - 8);
  v8 = v24 - v7;
  v9 = sub_F40C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v24[1] = a1;
    v13 = a1;
  }

  else
  {

    sub_F87C();
    v14 = sub_F51C();
    sub_F12C();

    sub_F3FC();
    swift_getAtKeyPath();
    sub_361C(a1, 0);
    (*(v10 + 8))(v12, v9);
  }

  sub_1B0C(&qword_182C0, &qword_FF30);
  v15 = swift_allocBox();
  sub_F2FC();
  sub_3B3C(&qword_182C8, &type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_F74C();
  v16 = [objc_opt_self() currentDevice];
  v17 = [v16 sf_inRetailKioskMode];

  if (v17)
  {
    v19 = 1;
  }

  else
  {
    v20 = __chkstk_darwin(v18);
    v24[-4] = a1;
    LOBYTE(v24[-3]) = a2 & 1;
    v24[-2] = v15;
    __chkstk_darwin(v20);
    v24[-4] = v15;
    v24[-3] = a1;
    LOBYTE(v24[-2]) = v21;
    sub_1B0C(&qword_18300, &qword_FF38);
    sub_3644();
    sub_F54C();
    sub_1B0C(&qword_18328, &qword_FF50);
    sub_37A8();
    sub_3C68(&qword_18368, &qword_182F0, &qword_FF20, &protocol conformance descriptor for List<A, B>);
    sub_F3AC();
    v19 = 0;
  }

  v22 = sub_1B0C(&qword_18370, &qword_FF70);
  (*(*(v22 - 8) + 56))(v8, v19, 1, v22);
  sub_3970(v8, v24[0]);
}

uint64_t sub_21CC(uint64_t a1, uint64_t a2, char a3)
{
  sub_F48C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v3 = qword_19098;
  sub_F57C();
  sub_1B0C(&qword_18378, &qword_FF78);
  sub_1C18(&qword_18310, &qword_FF40);
  sub_1C18(&qword_18318, &qword_FF48);
  sub_F42C();
  sub_3C68(&qword_18320, &qword_18318, &qword_FF48, &protocol conformance descriptor for Picker<A, B, C>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_F71C();
}

uint64_t sub_23DC@<X0>(uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v39 = a3;
  v37 = a2;
  v45 = a4;
  v4 = sub_F42C();
  v5 = *(v4 - 8);
  v43 = v4;
  v44 = v5;
  __chkstk_darwin(v4);
  v42 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B0C(&qword_18380, &qword_FF80);
  __chkstk_darwin(v7 - 8);
  v8 = sub_1B0C(&qword_182C0, &qword_FF30);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v33 - v13;
  v15 = sub_1B0C(&qword_18318, &qword_FF48);
  v38 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v33 - v16;
  v18 = sub_1B0C(&qword_18310, &qword_FF40);
  v19 = *(v18 - 8);
  v40 = v18;
  v41 = v19;
  __chkstk_darwin(v18);
  v21 = v33 - v20;
  v22 = sub_F48C();
  v35 = v23;
  v36 = v22;
  v33[3] = v24;
  v34 = v25;
  v26 = swift_projectBox();
  (*(v9 + 16))(v12, v26, v8);
  sub_F73C();
  v27 = *(v9 + 8);
  v27(v12, v8);
  swift_getKeyPath();
  sub_F75C();

  v27(v14, v8);
  v46 = v37;
  v47 = v39 & 1;
  sub_F14C();
  sub_1B0C(&qword_18388, &qword_FFB8);
  sub_3B3C(&qword_18390, &type metadata accessor for AirPlayMode, &protocol conformance descriptor for AirPlayMode);
  sub_3A20();
  sub_F6CC();
  v28 = v42;
  sub_F41C();
  v29 = sub_3C68(&qword_18320, &qword_18318, &qword_FF48, &protocol conformance descriptor for Picker<A, B, C>);
  v30 = v43;
  sub_F5EC();
  (*(v44 + 8))(v28, v30);
  (*(v38 + 8))(v17, v15);
  v48 = v15;
  v49 = v30;
  v50 = v29;
  v51 = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  v31 = v40;
  sub_F5FC();
  return (*(v41 + 8))(v21, v31);
}

uint64_t sub_28F8(uint64_t a1)
{
  v2 = sub_F14C();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_F1AC();
}

uint64_t sub_29C4(void *a1, char a2)
{
  sub_F13C();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2 & 1;
  sub_3B30(a1, a2 & 1);
  sub_1B0C(&qword_183A0, &unk_FFC0);
  sub_F14C();
  sub_1B0C(&qword_18340, &qword_FF58);
  sub_3C68(&qword_183A8, &qword_183A0, &unk_FFC0, &protocol conformance descriptor for [A]);
  sub_3834();
  sub_3B3C(&qword_183B0, &type metadata accessor for AirPlayMode, &protocol conformance descriptor for AirPlayMode);
  return sub_F70C();
}

uint64_t sub_2B28@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v31 = a2;
  v3 = sub_F14C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for AirPlayMode.never(_:))
  {
    sub_F48C();
    if (qword_182B8 != -1)
    {
      swift_once();
    }

    v8 = qword_19098;
    v9 = sub_F57C();
    v11 = v10;
    *&v32 = v9;
    *(&v32 + 1) = v10;
    v13 = v12 & 1;
    *&v33 = v12 & 1;
    *(&v33 + 1) = v14;
    LOBYTE(v34) = 0;
    sub_3B84(v9, v10, v12 & 1);

    sub_F4DC();
    v32 = v35;
    v33 = v36;
    LOBYTE(v34) = v37;
    HIBYTE(v34) = 1;
    sub_1B0C(&qword_18350, &qword_FF60);
    sub_1B0C(&qword_18360, &qword_FF68);
    sub_3900(&qword_18348, &qword_18350, &qword_FF60);
    sub_3900(&qword_18358, &qword_18360, &qword_FF68);
  }

  else if (v7 == enum case for AirPlayMode.ask(_:))
  {
    sub_F48C();
    if (qword_182B8 != -1)
    {
      swift_once();
    }

    v15 = qword_19098;
    v9 = sub_F57C();
    v11 = v16;
    *&v32 = v9;
    *(&v32 + 1) = v16;
    v13 = v17 & 1;
    *&v33 = v17 & 1;
    *(&v33 + 1) = v18;
    LOBYTE(v34) = 0;
    sub_3B84(v9, v16, v17 & 1);

    sub_F4DC();
    v32 = v35;
    v33 = v36;
    v34 = v37;
    sub_1B0C(&qword_18350, &qword_FF60);
    sub_1B0C(&qword_18360, &qword_FF68);
    sub_3900(&qword_18348, &qword_18350, &qword_FF60);
    sub_3900(&qword_18358, &qword_18360, &qword_FF68);
  }

  else
  {
    if (v7 != enum case for AirPlayMode.automatic(_:))
    {
      v32 = 0u;
      v33 = 0u;
      LOBYTE(v34) = 1;
      sub_F4DC();
      v32 = v35;
      v33 = v36;
      LOBYTE(v34) = v37;
      HIBYTE(v34) = 1;
      sub_1B0C(&qword_18350, &qword_FF60);
      sub_1B0C(&qword_18360, &qword_FF68);
      sub_3900(&qword_18348, &qword_18350, &qword_FF60);
      sub_3900(&qword_18358, &qword_18360, &qword_FF68);
      sub_F4DC();
      v29 = v36;
      v30 = v35;
      v22 = v37;
      v23 = v38;
      result = (*(v4 + 8))(v6, v3);
      v21 = v29;
      v20 = v30;
      goto LABEL_10;
    }

    sub_F48C();
    if (qword_182B8 != -1)
    {
      swift_once();
    }

    v25 = qword_19098;
    v9 = sub_F57C();
    v11 = v26;
    v13 = v27 & 1;
    *&v32 = v9;
    *(&v32 + 1) = v26;
    *&v33 = v27 & 1;
    *(&v33 + 1) = v28;
    LOBYTE(v34) = 1;
    sub_3B84(v9, v26, v27 & 1);

    sub_F4DC();
    v32 = v35;
    v33 = v36;
    v34 = v37;
    sub_1B0C(&qword_18350, &qword_FF60);
    sub_1B0C(&qword_18360, &qword_FF68);
    sub_3900(&qword_18348, &qword_18350, &qword_FF60);
    sub_3900(&qword_18358, &qword_18360, &qword_FF68);
  }

  sub_F4DC();
  sub_3B94(v9, v11, v13);

  v20 = v35;
  v21 = v36;
  v22 = v37;
  v23 = v38;
LABEL_10:
  v24 = v31;
  *v31 = v20;
  v24[1] = v21;
  *(v24 + 32) = v22;
  *(v24 + 33) = v23;
  return result;
}

uint64_t sub_3294(uint64_t a1, char a2, uint64_t a3)
{
  sub_1B0C(&qword_18340, &qword_FF58);
  sub_3834();
  return sub_F39C();
}

double sub_3338@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_F14C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B0C(&qword_182C0, &qword_FF30);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - v9;
  v11 = swift_projectBox();
  (*(v8 + 16))(v10, v11, v7);
  sub_F72C();
  (*(v8 + 8))(v10, v7);
  v12 = *&v17[0];
  sub_F19C();

  sub_2B28(v6, v17);
  (*(v4 + 8))(v6, v3);
  v13 = v18;
  v14 = v19;
  result = *v17;
  v16 = v17[1];
  *a2 = v17[0];
  *(a2 + 16) = v16;
  *(a2 + 32) = v13;
  *(a2 + 33) = v14;
  return result;
}

uint64_t sub_3528@<X0>(uint64_t a1@<X8>)
{
  sub_F48C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v2 = qword_19098;
  result = sub_F57C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

void sub_361C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_3644()
{
  result = qword_18308;
  if (!qword_18308)
  {
    sub_1C18(&qword_18300, &qword_FF38);
    sub_1C18(&qword_18310, &qword_FF40);
    sub_1C18(&qword_18318, &qword_FF48);
    sub_F42C();
    sub_3C68(&qword_18320, &qword_18318, &qword_FF48, &protocol conformance descriptor for Picker<A, B, C>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18308);
  }

  return result;
}

unint64_t sub_37A8()
{
  result = qword_18330;
  if (!qword_18330)
  {
    sub_1C18(&qword_18328, &qword_FF50);
    sub_3834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18330);
  }

  return result;
}

unint64_t sub_3834()
{
  result = qword_18338;
  if (!qword_18338)
  {
    sub_1C18(&qword_18340, &qword_FF58);
    sub_3900(&qword_18348, &qword_18350, &qword_FF60);
    sub_3900(&qword_18358, &qword_18360, &qword_FF68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18338);
  }

  return result;
}

uint64_t sub_3900(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C18(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_3970(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0C(&qword_182F8, &qword_FF28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_3A20()
{
  result = qword_18398;
  if (!qword_18398)
  {
    sub_1C18(&qword_18388, &qword_FFB8);
    sub_3834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18398);
  }

  return result;
}

uint64_t sub_3AA4()
{
  sub_361C(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 25, 7);
}

double sub_3AE0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2B28(a1, v7);
  v3 = v8;
  v4 = v9;
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v3;
  *(a2 + 33) = v4;
  return result;
}

id sub_3B30(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_3B3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_3B84(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_3B94(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_3BB8()
{
  result = qword_183B8;
  if (!qword_183B8)
  {
    sub_1C18(&qword_182F8, &qword_FF28);
    sub_3C68(&qword_183C0, &qword_18370, &qword_FF70, &protocol conformance descriptor for NavigationLink<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183B8);
  }

  return result;
}

uint64_t sub_3C68(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1C18(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_3CDC@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v28[0] = a3;
  v5 = sub_1B0C(&qword_182E8, &unk_101D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v28 - v7;
  v9 = sub_1B0C(&qword_183C8, &qword_100B0);
  __chkstk_darwin(v9 - 8);
  v11 = v28 - v10;
  v12 = sub_F40C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v29 = a1;
    v16 = a1;
  }

  else
  {

    sub_F87C();
    v17 = sub_F51C();
    sub_F12C();

    sub_F3FC();
    swift_getAtKeyPath();
    sub_361C(a1, 0);
    (*(v13 + 8))(v15, v12);
  }

  sub_1B0C(&qword_182C0, &qword_FF30);
  swift_allocBox();
  sub_F2FC();
  sub_1B54();
  sub_F74C();
  v18 = [objc_opt_self() currentDevice];
  v19 = [v18 sf_inRetailKioskMode];

  if ((v19 & 1) != 0 || (sub_F72C(), v20 = v29, v21 = sub_F2DC(), v20, (v21 & 1) == 0))
  {
    v26 = 1;
  }

  else
  {
    sub_F48C();
    if (qword_182B8 != -1)
    {
      swift_once();
    }

    v22 = qword_19098;
    v29 = sub_F57C();
    v30 = v23;
    v31 = v24 & 1;
    v32 = v25;
    sub_1B0C(&qword_182D0, &qword_FDF0);
    sub_1BB4();
    sub_F71C();
    (*(v6 + 32))(v11, v8, v5);
    v26 = 0;
  }

  (*(v6 + 56))(v11, v26, 1, v5);
  sub_4528(v11, v28[0]);
}

uint64_t sub_411C(uint64_t a1)
{
  v1 = sub_1B0C(&qword_182C0, &qword_FF30);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = swift_projectBox();
  (*(v2 + 16))(v5, v8, v1);
  sub_F73C();
  v9 = *(v2 + 8);
  v9(v5, v1);
  swift_getKeyPath();
  sub_F75C();

  v9(v7, v1);
  return sub_F6DC();
}

uint64_t sub_42C8@<X0>(uint64_t a1@<X8>)
{
  sub_F48C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v2 = qword_19098;
  result = sub_F57C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

id sub_43BC(void *a1, char a2)
{
  v10[0] = a1;
  v3 = sub_F40C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v7 = v10[0];

    return v7;
  }

  else
  {

    sub_F87C();
    v9 = sub_F51C();
    sub_F12C();

    sub_F3FC();
    swift_getAtKeyPath();
    sub_361C(v10[0], 0);
    (*(v4 + 8))(v6, v3);
    return v10[1];
  }
}

uint64_t sub_4528(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0C(&qword_183C8, &qword_100B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_45A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_F29C();
  *a1 = result & 1;
  return result;
}

unint64_t sub_45FC()
{
  result = qword_183D0;
  if (!qword_183D0)
  {
    sub_1C18(&qword_183C8, &qword_100B0);
    sub_1CBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183D0);
  }

  return result;
}

uint64_t sub_4680@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_F40C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B0C(&qword_183D8, &qword_100E8);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_4868(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_F38C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_F87C();
    v13 = sub_F51C();
    sub_F12C();

    sub_F3FC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_4868(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0C(&qword_183D8, &qword_100E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4904@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v30[0] = a3;
  v5 = sub_1B0C(&qword_182E8, &unk_101D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v30 - v7;
  v9 = sub_1B0C(&qword_183C8, &qword_100B0);
  __chkstk_darwin(v9 - 8);
  v11 = v30 - v10;
  v12 = sub_F40C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v31 = a1;
    v16 = a1;
  }

  else
  {

    sub_F87C();
    v17 = sub_F51C();
    sub_F12C();

    sub_F3FC();
    swift_getAtKeyPath();
    sub_361C(a1, 0);
    (*(v13 + 8))(v15, v12);
  }

  sub_1B0C(&qword_182C0, &qword_FF30);
  swift_allocBox();
  sub_F2FC();
  sub_1B54();
  sub_F74C();
  v18 = [objc_opt_self() currentDevice];
  v19 = [v18 sf_isiPad];

  if (v19 && (v20 = [objc_opt_self() sharedPreferences], v21 = objc_msgSend(v20, "isSupported"), v20, v21) && (sub_F72C(), v22 = v31, v23 = sub_F1DC(), v22, (v23 & 1) != 0))
  {
    sub_F48C();
    if (qword_182B8 != -1)
    {
      swift_once();
    }

    v24 = qword_19098;
    v31 = sub_F57C();
    v32 = v25;
    v33 = v26 & 1;
    v34 = v27;
    sub_1B0C(&qword_182D0, &qword_FDF0);
    sub_1BB4();
    sub_F71C();
    (*(v6 + 32))(v11, v8, v5);
    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  (*(v6 + 56))(v11, v28, 1, v5);
  sub_4528(v11, v30[0]);
}

uint64_t sub_4D80(uint64_t a1)
{
  v1 = sub_1B0C(&qword_182C0, &qword_FF30);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = swift_projectBox();
  (*(v2 + 16))(v5, v8, v1);
  sub_F73C();
  v9 = *(v2 + 8);
  v9(v5, v1);
  swift_getKeyPath();
  sub_F75C();

  v9(v7, v1);
  return sub_F6DC();
}

uint64_t sub_4F2C@<X0>(uint64_t a1@<X8>)
{
  sub_F48C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v2 = qword_19098;
  result = sub_F57C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_5028@<X0>(_BYTE *a1@<X8>)
{
  result = sub_F17C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_50AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v52 = sub_F50C();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B0C(&qword_182C0, &qword_FF30);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v37 - v9;
  v11 = sub_1B0C(&qword_182D0, &qword_FDF0);
  v45 = *(v11 - 8);
  v46 = v11;
  __chkstk_darwin(v11);
  v13 = v37 - v12;
  v48 = sub_1B0C(&qword_183E8, &unk_10300);
  __chkstk_darwin(v48);
  v56 = v37 - v14;
  v47 = a1;
  v15 = swift_projectBox();
  v54 = *(v5 + 16);
  v55 = v5 + 16;
  v54(v8, v15, v4);
  sub_F73C();
  v17 = *(v5 + 8);
  v16 = v5 + 8;
  v17(v8, v4);
  swift_getKeyPath();
  sub_F75C();

  v53 = v17;
  v17(v10, v4);
  v44 = v13;
  sub_F6DC();
  sub_F48C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v18 = qword_19098;
  v19 = sub_F57C();
  v41 = v20;
  v42 = v19;
  v39 = v21;
  v40 = v22;
  v54(v8, v15, v4);
  sub_F73C();
  v23 = v53;
  v53(v8, v4);
  swift_getKeyPath();
  sub_F75C();

  v23(v10, v4);
  v37[3] = v58;
  v43 = v16;
  sub_1B0C(&qword_183F8, &qword_10310);
  sub_3C68(&qword_182D8, &qword_182D0, &qword_FDF0, &protocol conformance descriptor for Toggle<A>);
  v38 = v15;
  sub_3C68(&qword_18400, &qword_183F8, &qword_10310, &protocol conformance descriptor for VStack<A>);
  v24 = v46;
  v25 = v10;
  v26 = v39;
  v27 = v41;
  v28 = v42;
  v29 = v44;
  sub_F63C();

  sub_3B94(v28, v27, v26 & 1);

  (*(v45 + 8))(v29, v24);
  v54(v25, v38, v4);
  sub_F72C();
  v53(v25, v4);
  v30 = v57;
  LOBYTE(v27) = sub_F28C();

  KeyPath = swift_getKeyPath();
  v32 = swift_allocObject();
  *(v32 + 16) = v27 & 1;
  v33 = v49;
  v34 = v56;
  v35 = &v56[*(v48 + 36)];
  *v35 = KeyPath;
  v35[1] = sub_6350;
  v35[2] = v32;
  sub_F4FC();
  sub_60E4();
  sub_F62C();
  (*(v50 + 8))(v33, v52);
  return sub_6358(v34);
}

uint64_t sub_5790@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_F4AC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = sub_1B0C(&qword_18418, &unk_103B0);
  return sub_57E8((a2 + *(v3 + 44)));
}

uint64_t sub_57E8@<X0>(char *a2@<X8>)
{
  v25 = a2;
  v2 = sub_1B0C(&qword_18420, &unk_10A20);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_1B0C(&qword_18428, &qword_103C0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v24 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v24 - v14;
  __chkstk_darwin(v13);
  v17 = &v24 - v16;

  sub_F6BC();
  sub_F30C();
  v18 = sub_F31C();
  (*(*(v18 - 8) + 56))(v4, 0, 1, v18);
  sub_F6AC();
  v19 = *(v6 + 16);
  v19(v12, v17, v5);
  v19(v9, v15, v5);
  v20 = v25;
  v19(v25, v12, v5);
  v21 = sub_1B0C(&qword_18430, &qword_103C8);
  v19(&v20[*(v21 + 48)], v9, v5);
  v22 = *(v6 + 8);
  v22(v15, v5);
  v22(v17, v5);
  v22(v9, v5);
  return (v22)(v12, v5);
}

void sub_5B20(uint64_t a1)
{
  v1 = sub_1B0C(&qword_182C0, &qword_FF30);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v7 - v3;
  v5 = swift_projectBox();
  (*(v2 + 16))(v4, v5, v1);
  sub_F72C();
  (*(v2 + 8))(v4, v1);
  v6 = v7[1];
  sub_F1BC();
}

uint64_t sub_5C28@<X0>(uint64_t a1@<X8>)
{
  sub_F48C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v2 = qword_19098;
  result = sub_F57C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_5D34@<X0>(uint64_t a5@<X8>)
{
  sub_F48C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v6 = qword_19098;
  result = sub_F57C();
  *a5 = result;
  *(a5 + 8) = v8;
  *(a5 + 16) = v9 & 1;
  *(a5 + 24) = v10;
  return result;
}

uint64_t sub_5E0C@<X0>(uint64_t a1@<X8>)
{
  sub_F48C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v2 = qword_19098;
  result = sub_F57C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_5EF4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1B0C(&qword_182C0, &qword_FF30);
  swift_allocBox();
  sub_43BC(v1, v2);
  sub_F2FC();
  sub_1B54();
  sub_F74C();
  sub_F48C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v3 = qword_19098;
  sub_F57C();
  sub_1B0C(&qword_183E0, &qword_102F8);
  sub_1C18(&qword_183E8, &unk_10300);
  sub_60E4();
  swift_getOpaqueTypeConformance2();
  sub_F71C();
}

unint64_t sub_60E4()
{
  result = qword_183F0;
  if (!qword_183F0)
  {
    sub_1C18(&qword_183E8, &unk_10300);
    sub_1C18(&qword_182D0, &qword_FDF0);
    sub_1C18(&qword_183F8, &qword_10310);
    sub_3C68(&qword_182D8, &qword_182D0, &qword_FDF0, &protocol conformance descriptor for Toggle<A>);
    sub_3C68(&qword_18400, &qword_183F8, &qword_10310, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_3C68(&qword_18408, &qword_18410, &qword_10318, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183F0);
  }

  return result;
}

uint64_t sub_6280@<X0>(_BYTE *a2@<X8>)
{
  result = sub_F1DC();
  *a2 = result & 1;
  return result;
}

uint64_t sub_62D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_F15C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_6358(uint64_t a1)
{
  v2 = sub_1B0C(&qword_183E8, &unk_10300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_63CC()
{
  result = qword_18438;
  if (!qword_18438)
  {
    sub_1C18(&qword_18440, &unk_103D0);
    sub_1C18(&qword_183E8, &unk_10300);
    sub_60E4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18438);
  }

  return result;
}

uint64_t sub_64CC@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = sub_1B0C(&qword_18448, &qword_104C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  v9 = sub_1B0C(&qword_18450, &unk_104C8);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - v10;
  v12 = sub_F40C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v30[0] = a1;
    v16 = a1;
  }

  else
  {

    sub_F87C();
    v17 = sub_F51C();
    sub_F12C();

    sub_F3FC();
    swift_getAtKeyPath();
    sub_361C(a1, 0);
    (*(v13 + 8))(v15, v12);
  }

  sub_1B0C(&qword_182C0, &qword_FF30);
  swift_allocBox();
  sub_F2FC();
  sub_B4B0(&qword_182C8, &type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  sub_F74C();
  v32 = &type metadata for SettingsAppFeatureFlags;
  v33 = sub_A0D4();
  v18 = sub_F0BC();
  sub_A128(v30);
  if ((v18 & 1) != 0 && (sub_F72C(), v19 = v30[0], v20 = sub_F20C(), v19, v21 = *(v20 + 16), , v21))
  {
    sub_F48C();
    if (qword_182B8 != -1)
    {
      swift_once();
    }

    v22 = qword_19098;
    v30[0] = sub_F57C();
    v30[1] = v23;
    v31 = v24 & 1;
    v32 = v25;
    sub_1B0C(&qword_18460, &qword_104D8);
    sub_3C68(&qword_18468, &qword_18460, &qword_104D8, &protocol conformance descriptor for NavigationLink<A, B>);
    sub_F71C();
    (*(v6 + 32))(v11, v8, v5);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  (*(v6 + 56))(v11, v26, 1, v5);
  sub_A174(v11, v29);
}

uint64_t sub_6964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[0] = a1;
  v18[1] = a2;
  v2 = sub_1B0C(&qword_182C0, &qword_FF30);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - v4;
  v6 = type metadata accessor for OnenessListOfDevices(0);
  __chkstk_darwin(v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B0C(&qword_18470, &qword_104E0);
  __chkstk_darwin(v9);
  v10 = sub_F2FC();
  v11 = sub_B4B0(&qword_182C8, &type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  *v8 = sub_F35C();
  v8[8] = v12 & 1;
  v13 = *(v6 + 20);
  *&v8[v13] = swift_getKeyPath();
  sub_1B0C(&qword_183D8, &qword_100E8);
  swift_storeEnumTagMultiPayload();
  v14 = swift_projectBox();
  (*(v3 + 16))(v5, v14, v2);
  sub_F72C();
  (*(v3 + 8))(v5, v2);
  v15 = v19;
  v16 = sub_B4B0(&qword_18478, type metadata accessor for OnenessListOfDevices, &unk_10558);
  sub_F5DC();

  sub_A264(v8);
  sub_1B0C(&qword_18480, &unk_10520);
  sub_A2C0();
  v19 = v6;
  v20 = v10;
  v21 = v16;
  v22 = v11;
  swift_getOpaqueTypeConformance2();
  return sub_F3AC();
}

uint64_t sub_6C98(uint64_t a1)
{
  sub_1B0C(&qword_18350, &qword_FF60);
  sub_A34C();

  return sub_F39C();
}

__n128 sub_6D3C@<Q0>(__n128 *a2@<X8>)
{
  v39 = a2;
  v2 = sub_F47C();
  __chkstk_darwin(v2 - 8);
  v3 = sub_F11C();
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = __chkstk_darwin(v3);
  v35 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v36 = &v34 - v6;
  v7 = sub_1B0C(&qword_182C0, &qword_FF30);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34 - v9;
  v11 = swift_projectBox();
  v12 = *(v8 + 16);
  v12(v10, v11, v7);
  sub_F72C();
  v13 = *(v8 + 8);
  v13(v10, v7);
  v14 = v45.n128_u64[0];
  v15 = sub_F20C();

  v16 = *(v15 + 16);

  if (v16 == 1)
  {
    v12(v10, v11, v7);
    sub_F72C();
    v13(v10, v7);
    v17 = v45.n128_u64[0];
    v18 = sub_F20C();

    if (*(v18 + 16))
    {
      v20 = v37;
      v19 = v38;
      v21 = v35;
      (*(v37 + 16))(v35, v18 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v38);

      v22 = v36;
      (*(v20 + 32))(v36, v21, v19);
      v40 = sub_F10C();
      v41 = v23;
      v42 = 0;
      v43 = &_swiftEmptyArrayStorage;
      v44 = 0;
      sub_F4DC();
      (*(v20 + 8))(v22, v19);
      goto LABEL_8;
    }
  }

  sub_F46C();
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  sub_F45C(v48);
  v12(v10, v11, v7);
  sub_F72C();
  v13(v10, v7);
  v24 = v45.n128_u64[0];
  v25 = sub_F20C();

  v26 = *(v25 + 16);

  v45.n128_u64[0] = v26;
  sub_F43C();
  v49._countAndFlagsBits = 0x7363614D20;
  v49._object = 0xE500000000000000;
  sub_F45C(v49);
  sub_F49C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v27 = qword_19098;
  v40 = sub_F57C();
  v41 = v28;
  v42 = v29 & 1;
  v43 = v30;
  v44 = 1;
  sub_F4DC();
LABEL_8:
  result = v46;
  v32 = v47;
  v33 = v39;
  *v39 = v45;
  v33[1] = result;
  v33[2].n128_u8[0] = v32;
  return result;
}

uint64_t sub_7210@<X0>(uint64_t a1@<X8>)
{
  sub_F48C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v2 = qword_19098;
  result = sub_F57C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_7304@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = sub_1B0C(&qword_18548, &qword_105A8);
  v26 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v25 - v3;
  v5 = sub_1B0C(&qword_18550, &qword_105B0);
  v27 = *(v5 - 8);
  v28 = v5;
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v8 = sub_F40C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  if (*(v1 + 8) == 1)
  {
    v30 = *v1;
    v13 = v12;
  }

  else
  {

    sub_F87C();
    v14 = sub_F51C();
    sub_F12C();

    sub_F3FC();
    swift_getAtKeyPath();
    sub_361C(v12, 0);
    (*(v9 + 8))(v11, v8);
  }

  sub_1B0C(&qword_182C0, &qword_FF30);
  swift_allocBox();
  sub_F2FC();
  sub_B4B0(&qword_182C8, &type metadata accessor for AirPlayAndHandoffSettingsState, &protocol conformance descriptor for AirPlayAndHandoffSettingsState);
  v15 = sub_F74C();
  __chkstk_darwin(v15);
  sub_1B0C(&qword_18558, &qword_105B8);
  sub_A7D8();
  sub_F54C();
  sub_F48C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v16 = qword_19098;
  v17 = sub_F57C();
  v19 = v18;
  v21 = v20;
  v22 = sub_3C68(&qword_185C8, &qword_18548, &qword_105A8, &protocol conformance descriptor for List<A, B>);
  sub_F61C();
  sub_3B94(v17, v19, v21 & 1);

  (*(v26 + 8))(v4, v2);
  sub_F33C();
  v30 = v2;
  v31 = v22;
  swift_getOpaqueTypeConformance2();
  sub_B4B0(&qword_185D0, &type metadata accessor for EditButton, &protocol conformance descriptor for EditButton);
  v23 = v28;
  sub_F65C();
  (*(v27 + 8))(v7, v23);
}

uint64_t sub_784C(uint64_t a1, uint64_t a2)
{
  sub_F48C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v2 = qword_19098;
  sub_F57C();
  sub_1B0C(&qword_18570, &qword_105C0);
  sub_A870();
  return sub_F71C();
}

uint64_t sub_7990@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for OnenessListOfDevices(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_1B0C(&qword_182C0, &qword_FF30);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = swift_projectBox();
  (*(v8 + 16))(v10, v11, v7);
  sub_F72C();
  (*(v8 + 8))(v10, v7);
  v12 = v20;
  v13 = sub_F20C();

  v20 = v13;
  swift_getKeyPath();

  sub_1B0C(&qword_185D8, &qword_10610);
  sub_1B0C(&qword_18590, &qword_105D0);
  sub_3C68(&qword_185E0, &qword_185D8, &qword_10610, &protocol conformance descriptor for [A]);
  sub_B4B0(&qword_185E8, &type metadata accessor for CompanionDevice, &protocol conformance descriptor for CompanionDevice);
  sub_A9AC();
  sub_F6FC();
  sub_AAA0(v19, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_AC24(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_AC88;
  *(v16 + 24) = v15;
  result = sub_1B0C(&qword_18570, &qword_105C0);
  v18 = (a3 + *(result + 36));
  *v18 = sub_AF20;
  v18[1] = v16;
  return result;
}

uint64_t sub_7CC0@<X0>(void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1B0C(&qword_18620, &qword_10650);
  __chkstk_darwin(v5 - 8);
  v7 = &v25[-v6];
  v8 = sub_1B0C(&qword_18628, &qword_10658);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v25[-v12];
  sub_F0FC();
  v14 = sub_F4BC();
  v26 = 1;
  sub_7FE8(v13, a2, v27);
  *&v25[23] = v27[1];
  *&v25[39] = v27[2];
  *&v25[55] = v27[3];
  v25[71] = v28;
  *&v25[7] = v27[0];
  v15 = v26;
  v16 = sub_F0EC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (v18(v13, 1, v16) != 1)
  {
    sub_B4F8(v13, v11, &qword_18628, &qword_10658);
    if (v18(v11, 1, v16) == 1)
    {
      sub_B560(v11, &qword_18628, &qword_10658);
      v20 = sub_F05C();
      (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
    }

    else
    {
      sub_F0CC();
      (*(v17 + 8))(v11, v16);
      v21 = sub_F05C();
      if ((*(*(v21 - 8) + 48))(v7, 1, v21) != 1)
      {
        v19 = 0;
        goto LABEL_8;
      }
    }

    v19 = 1;
LABEL_8:
    sub_B560(v7, &qword_18620, &qword_10650);
    goto LABEL_9;
  }

  v19 = 0;
LABEL_9:
  *a3 = v14;
  *(a3 + 8) = 0;
  *(a3 + 16) = v15;
  v22 = *v25;
  *(a3 + 33) = *&v25[16];
  v23 = *&v25[48];
  *(a3 + 49) = *&v25[32];
  *(a3 + 65) = v23;
  *(a3 + 81) = *&v25[64];
  *(a3 + 17) = v22;
  *(a3 + 89) = v19;
  return sub_B560(v13, &qword_18628, &qword_10658);
}

uint64_t sub_7FE8@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v92 = a2;
  v99 = a1;
  v100 = a3;
  v3 = sub_F47C();
  __chkstk_darwin(v3 - 8);
  v96 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1B0C(&qword_182C0, &qword_FF30);
  v94 = *(v95 - 1);
  __chkstk_darwin(v95);
  v93 = &v86 - v5;
  v6 = sub_1B0C(&qword_18620, &qword_10650);
  __chkstk_darwin(v6 - 8);
  v8 = &v86 - v7;
  v9 = sub_F05C();
  v97 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v98 = &v86 - v13;
  v14 = sub_1B0C(&qword_18628, &qword_10658);
  __chkstk_darwin(v14 - 8);
  v16 = &v86 - v15;
  v17 = sub_F0EC();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_F10C();
  v111 = v21;
  sub_B5C0();
  v22 = sub_F58C();
  v102 = v23;
  v103 = v22;
  v101 = v24;
  v104 = v25;
  sub_B4F8(v99, v16, &qword_18628, &qword_10658);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_B560(v16, &qword_18628, &qword_10658);
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = -1;
  }

  else
  {
    v31 = *(v18 + 32);
    v99 = v17;
    v31(v20, v16, v17);
    sub_F0CC();
    v32 = v97;
    v33 = (*(v97 + 48))(v8, 1, v9);
    v91 = v18;
    v90 = v20;
    if (v33 == 1)
    {
      sub_B560(v8, &qword_18620, &qword_10650);
      sub_F48C();
      if (qword_182B8 != -1)
      {
        swift_once();
      }

      v34 = qword_19098;
      v35 = sub_F57C();
      v37 = v36;
      v39 = v38;
      sub_F53C();
      v40 = sub_F56C();
      v42 = v41;
      v44 = v43;

      sub_3B94(v35, v37, v39 & 1);

      LODWORD(v110) = sub_F4EC();
      v45 = sub_F55C();
      v47 = v46;
      v49 = v48;
      v51 = v50;
      sub_3B94(v40, v42, v44 & 1);

      v105 = v45;
      v106 = v47;
      v107 = v49 & 1;
      v108 = v51;
      v109 = 1;
      sub_F4DC();
    }

    else
    {
      (*(v32 + 32))(v98, v8, v9);
      v89 = swift_projectBox();
      v52 = v94;
      v88 = *(v94 + 16);
      v53 = v93;
      v54 = v95;
      v88(v93, v89, v95);
      sub_F72C();
      v87 = *(v52 + 8);
      v87(v53, v54);
      v55 = v110;
      sub_F0DC();
      v94 = sub_F21C();
      v92 = v56;

      v57 = *(v32 + 8);
      v57(v12, v9);
      v88(v53, v89, v54);
      sub_F72C();
      v87(v53, v54);
      v58 = v110;
      sub_F0DC();
      v59 = sub_F1CC();
      v61 = v60;

      v97 = v9;
      v95 = v57;
      v57(v12, v9);
      sub_F46C();
      v115._countAndFlagsBits = 0x657375207473614CLL;
      v115._object = 0xEA00000000002064;
      sub_F45C(v115);
      v116._countAndFlagsBits = v94;
      v116._object = v92;
      sub_F44C(v116);

      v117._countAndFlagsBits = 0x20726F6620;
      v117._object = 0xE500000000000000;
      sub_F45C(v117);
      v118._countAndFlagsBits = v59;
      v118._object = v61;
      sub_F44C(v118);

      v119._countAndFlagsBits = 0;
      v119._object = 0xE000000000000000;
      sub_F45C(v119);
      sub_F49C();
      if (qword_182B8 != -1)
      {
        swift_once();
      }

      v62 = qword_19098;
      v63 = sub_F57C();
      v65 = v64;
      v67 = v66;
      sub_F53C();
      v68 = sub_F56C();
      v70 = v69;
      v72 = v71;

      sub_3B94(v63, v65, v67 & 1);

      LODWORD(v110) = sub_F4EC();
      v73 = sub_F55C();
      v75 = v74;
      v77 = v76;
      v79 = v78;
      sub_3B94(v68, v70, v72 & 1);

      v105 = v73;
      v106 = v75;
      v107 = v77 & 1;
      v108 = v79;
      v109 = 0;
      sub_F4DC();
      (v95)(v98, v97);
    }

    (*(v91 + 8))(v90, v99);
    v26 = v110;
    v27 = v111;
    v28 = v112;
    v29 = v113;
    v30 = v114;
    sub_B62C(v110, v111, v112, v113);
  }

  v80 = v101 & 1;
  v82 = v102;
  v81 = v103;
  sub_3B84(v103, v102, v101 & 1);
  v83 = v104;

  sub_B614(v26, v27, v28, v29, v30);
  sub_B668(v26, v27, v28, v29, v30);
  LOBYTE(v110) = v80;
  v84 = v100;
  *v100 = v81;
  v84[1] = v82;
  *(v84 + 16) = v80;
  v84[3] = v83;
  v84[4] = v26;
  v84[5] = v27;
  v84[6] = v28;
  v84[7] = v29;
  *(v84 + 64) = v30;
  sub_B668(v26, v27, v28, v29, v30);
  sub_3B94(v81, v82, v80);
}

uint64_t sub_8A38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnenessListOfDevices(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_F0AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = sub_1B0C(&qword_185F0, &qword_10618);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  v14 = sub_F82C();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v9 + 16))(&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  sub_AAA0(a2, v7);
  sub_F80C();
  v15 = sub_F7FC();
  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = (v10 + *(v5 + 80) + v16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = &protocol witness table for MainActor;
  (*(v9 + 32))(v18 + v16, &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  sub_AC24(v7, v18 + v17);
  sub_9DD0(0, 0, v13, &unk_10628, v18);
}

uint64_t sub_8CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = sub_F38C();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  v7 = sub_F11C();
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();
  v8 = sub_F40C();
  v5[22] = v8;
  v5[23] = *(v8 - 8);
  v5[24] = swift_task_alloc();
  v9 = sub_F08C();
  v5[25] = v9;
  v5[26] = *(v9 - 8);
  v5[27] = swift_task_alloc();
  v5[28] = sub_1B0C(&qword_185F8, &qword_10648);
  v5[29] = swift_task_alloc();
  sub_F80C();
  v5[30] = sub_F7FC();
  v11 = sub_F7EC();
  v5[31] = v11;
  v5[32] = v10;

  return _swift_task_switch(sub_8F14, v11, v10);
}

uint64_t sub_8F14()
{
  v1 = *(v0 + 224);
  sub_F09C();
  *(v0 + 280) = *(v1 + 36);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 200);
  sub_F0AC();
  sub_B4B0(&qword_18600, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  sub_F83C();
  sub_B4B0(&qword_18608, &type metadata accessor for IndexSet.Index, &protocol conformance descriptor for IndexSet.Index);
  v5 = sub_F78C();
  (*(v3 + 8))(v2, v4);
  v6 = *(v0 + 120);
  if ((v5 & 1) == 0)
  {
    v9 = sub_F85C();
    v11 = *v10;
    v9(v0 + 16, 0);
    sub_F84C();
    v12 = *v6;
    if (*(v6 + 8) == 1)
    {
      v13 = v12;
      v14 = v13;
    }

    else
    {
      v22 = *(v0 + 184);
      v21 = *(v0 + 192);
      v23 = *(v0 + 176);

      sub_F87C();
      v24 = sub_F51C();
      sub_F12C();

      sub_F3FC();
      swift_getAtKeyPath();
      sub_361C(v12, 0);
      v25 = *(v22 + 8);
      v25(v21, v23);
      v14 = *(v0 + 80);

      sub_F87C();
      v26 = sub_F51C();
      sub_F12C();

      sub_F3FC();
      swift_getAtKeyPath();
      sub_361C(v12, 0);
      v25(v21, v23);
      v13 = *(v0 + 88);
    }

    *(v0 + 264) = v14;
    v27 = sub_F20C();

    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 < *(v27 + 16))
    {
      (*(*(v0 + 160) + 16))(*(v0 + 168), v27 + ((*(*(v0 + 160) + 80) + 32) & ~*(*(v0 + 160) + 80)) + *(*(v0 + 160) + 72) * v11, *(v0 + 152));

      v29 = swift_task_alloc();
      *(v0 + 272) = v29;
      *v29 = v0;
      v29[1] = sub_95AC;
      v28 = *(v0 + 168);

      return AirPlayAndHandoffSettingsState.unpair(device:)(v28);
    }

    __break(1u);
    return AirPlayAndHandoffSettingsState.unpair(device:)(v28);
  }

  sub_B560(*(v0 + 232), &qword_185F8, &qword_10648);

  v7 = *v6;
  v41 = *(v6 + 8);
  v42 = *v6;
  if (v41 == 1)
  {
    v8 = v7;
  }

  else
  {
    v15 = *(v0 + 184);
    v16 = *(v0 + 192);
    v17 = *(v0 + 176);

    sub_F87C();
    v18 = sub_F51C();
    sub_F12C();

    sub_F3FC();
    swift_getAtKeyPath();
    sub_361C(v7, 0);
    (*(v15 + 8))(v16, v17);
    v8 = *(v0 + 96);
  }

  v19 = sub_F1FC();
  sub_1B0C(&qword_185D8, &qword_10610);
  sub_3C68(&qword_18610, &qword_185D8, &qword_10610, &protocol conformance descriptor for [A]);
  sub_3C68(&qword_18618, &qword_185D8, &qword_10610, &protocol conformance descriptor for [A]);
  sub_F86C();
  v19(v0 + 48, 0);

  if (v41)
  {
    v20 = v42;
  }

  else
  {
    v31 = *(v0 + 184);
    v30 = *(v0 + 192);
    v32 = *(v0 + 176);

    sub_F87C();
    v33 = sub_F51C();
    sub_F12C();

    sub_F3FC();
    swift_getAtKeyPath();
    sub_361C(v42, 0);
    (*(v31 + 8))(v30, v32);
    v20 = *(v0 + 104);
  }

  v34 = sub_F20C();

  v35 = *(v34 + 16);

  if (!v35)
  {
    v37 = *(v0 + 136);
    v36 = *(v0 + 144);
    v38 = *(v0 + 128);
    type metadata accessor for OnenessListOfDevices(0);
    sub_4680(v36);
    sub_F37C();
    (*(v37 + 8))(v36, v38);
  }

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_95AC()
{
  v1 = *v0;
  v2 = *(*v0 + 264);
  v3 = *(*v0 + 168);
  v4 = *(*v0 + 160);
  v5 = *(*v0 + 152);

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 256);
  v7 = *(v1 + 248);

  return _swift_task_switch(sub_9748, v7, v6);
}

uint64_t sub_9748()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  sub_F0AC();
  sub_B4B0(&qword_18600, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  sub_F83C();
  sub_B4B0(&qword_18608, &type metadata accessor for IndexSet.Index, &protocol conformance descriptor for IndexSet.Index);
  v4 = sub_F78C();
  (*(v2 + 8))(v1, v3);
  v5 = v0[15];
  if ((v4 & 1) == 0)
  {
    v8 = sub_F85C();
    v10 = *v9;
    v8(v0 + 2, 0);
    sub_F84C();
    v11 = *v5;
    if (*(v5 + 8) == 1)
    {
      v12 = v11;
      v13 = v12;
    }

    else
    {
      v21 = v0[23];
      v20 = v0[24];
      v22 = v0[22];

      sub_F87C();
      v23 = sub_F51C();
      sub_F12C();

      sub_F3FC();
      swift_getAtKeyPath();
      sub_361C(v11, 0);
      v24 = *(v21 + 8);
      v24(v20, v22);
      v13 = v0[10];

      sub_F87C();
      v25 = sub_F51C();
      sub_F12C();

      sub_F3FC();
      swift_getAtKeyPath();
      sub_361C(v11, 0);
      v24(v20, v22);
      v12 = v0[11];
    }

    v0[33] = v13;
    v26 = sub_F20C();

    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v10 < *(v26 + 16))
    {
      (*(v0[20] + 16))(v0[21], v26 + ((*(v0[20] + 80) + 32) & ~*(v0[20] + 80)) + *(v0[20] + 72) * v10, v0[19]);

      v28 = swift_task_alloc();
      v0[34] = v28;
      *v28 = v0;
      v28[1] = sub_95AC;
      v27 = v0[21];

      return AirPlayAndHandoffSettingsState.unpair(device:)(v27);
    }

    __break(1u);
    return AirPlayAndHandoffSettingsState.unpair(device:)(v27);
  }

  sub_B560(v0[29], &qword_185F8, &qword_10648);

  v6 = *v5;
  v40 = *(v5 + 8);
  v41 = *v5;
  if (v40 == 1)
  {
    v7 = v6;
  }

  else
  {
    v14 = v0[23];
    v15 = v0[24];
    v16 = v0[22];

    sub_F87C();
    v17 = sub_F51C();
    sub_F12C();

    sub_F3FC();
    swift_getAtKeyPath();
    sub_361C(v6, 0);
    (*(v14 + 8))(v15, v16);
    v7 = v0[12];
  }

  v18 = sub_F1FC();
  sub_1B0C(&qword_185D8, &qword_10610);
  sub_3C68(&qword_18610, &qword_185D8, &qword_10610, &protocol conformance descriptor for [A]);
  sub_3C68(&qword_18618, &qword_185D8, &qword_10610, &protocol conformance descriptor for [A]);
  sub_F86C();
  v18(v0 + 6, 0);

  if (v40)
  {
    v19 = v41;
  }

  else
  {
    v30 = v0[23];
    v29 = v0[24];
    v31 = v0[22];

    sub_F87C();
    v32 = sub_F51C();
    sub_F12C();

    sub_F3FC();
    swift_getAtKeyPath();
    sub_361C(v41, 0);
    (*(v30 + 8))(v29, v31);
    v19 = v0[13];
  }

  v33 = sub_F20C();

  v34 = *(v33 + 16);

  if (!v34)
  {
    v36 = v0[17];
    v35 = v0[18];
    v37 = v0[16];
    type metadata accessor for OnenessListOfDevices(0);
    sub_4680(v35);
    sub_F37C();
    (*(v36 + 8))(v35, v37);
  }

  v38 = v0[1];

  return v38();
}

uint64_t sub_9DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1B0C(&qword_185F0, &qword_10618);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_B4F8(a3, v25 - v10, &qword_185F0, &qword_10618);
  v12 = sub_F82C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_B560(v11, &qword_185F0, &qword_10618);
  }

  else
  {
    sub_F81C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_F7EC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_F7DC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_B560(a3, &qword_185F0, &qword_10618);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_B560(a3, &qword_185F0, &qword_10618);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

unint64_t sub_A0D4()
{
  result = qword_18458;
  if (!qword_18458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18458);
  }

  return result;
}

uint64_t sub_A128(void *a1)
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

uint64_t sub_A174(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0C(&qword_18450, &unk_104C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for OnenessListOfDevices(uint64_t a1)
{
  result = qword_184F0;
  if (!qword_184F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A264(uint64_t a1)
{
  v2 = type metadata accessor for OnenessListOfDevices(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_A2C0()
{
  result = qword_18488;
  if (!qword_18488)
  {
    sub_1C18(&qword_18480, &unk_10520);
    sub_A34C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18488);
  }

  return result;
}

unint64_t sub_A34C()
{
  result = qword_18348;
  if (!qword_18348)
  {
    sub_1C18(&qword_18350, &qword_FF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18348);
  }

  return result;
}

uint64_t sub_A3E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1B0C(&qword_18490, &unk_10530);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_A4AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_1B0C(&qword_18490, &unk_10530);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_A558(uint64_t a1)
{
  sub_A614(319, &qword_18500, &type metadata accessor for AirPlayAndHandoffSettingsState);
  if (v1 <= 0x3F)
  {
    sub_A614(319, &unk_18508, &type metadata accessor for DismissAction);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_A614(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_F34C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_A66C()
{
  result = qword_18538;
  if (!qword_18538)
  {
    sub_1C18(&qword_18450, &unk_104C8);
    sub_A6F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18538);
  }

  return result;
}

unint64_t sub_A6F0()
{
  result = qword_18540;
  if (!qword_18540)
  {
    sub_1C18(&qword_18448, &qword_104C0);
    sub_3C68(&qword_18468, &qword_18460, &qword_104D8, &protocol conformance descriptor for NavigationLink<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18540);
  }

  return result;
}

unint64_t sub_A7D8()
{
  result = qword_18560;
  if (!qword_18560)
  {
    sub_1C18(&qword_18558, &qword_105B8);
    sub_A870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18560);
  }

  return result;
}

unint64_t sub_A870()
{
  result = qword_18568;
  if (!qword_18568)
  {
    sub_1C18(&qword_18570, &qword_105C0);
    sub_A928();
    sub_3C68(&qword_185B8, &qword_185C0, &unk_105E8, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18568);
  }

  return result;
}

unint64_t sub_A928()
{
  result = qword_18578;
  if (!qword_18578)
  {
    sub_1C18(&qword_18580, &qword_105C8);
    sub_A9AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18578);
  }

  return result;
}

unint64_t sub_A9AC()
{
  result = qword_18588;
  if (!qword_18588)
  {
    sub_1C18(&qword_18590, &qword_105D0);
    sub_3C68(&qword_18598, &qword_185A0, &qword_105D8, &protocol conformance descriptor for VStack<A>);
    sub_3C68(&qword_185A8, &qword_185B0, &qword_105E0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18588);
  }

  return result;
}

uint64_t sub_AAA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnenessListOfDevices(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_AB04()
{
  v1 = (type metadata accessor for OnenessListOfDevices(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_361C(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[7];
  sub_1B0C(&qword_183D8, &qword_100E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_F38C();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_AC24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnenessListOfDevices(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_AC88(uint64_t a1)
{
  v3 = *(type metadata accessor for OnenessListOfDevices(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_8A38(a1, v4);
}

uint64_t sub_ACF8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_ADF0;

  return v6(a1);
}

uint64_t sub_ADF0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_AEE8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_AF48()
{
  v1 = sub_F0AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for OnenessListOfDevices(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  sub_361C(*(v0 + v8), *(v0 + v8 + 8));
  v10 = v6[7];
  sub_1B0C(&qword_183D8, &qword_100E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_F38C();
    (*(*(v11 - 8) + 8))(v0 + v8 + v10, v11);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_B0FC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_F0AC() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for OnenessListOfDevices(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_B24C;

  return sub_8CD0(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_B24C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_B340(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_B7F4;

  return sub_ACF8(a1, v4);
}

uint64_t sub_B3F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_B24C;

  return sub_ACF8(a1, v4);
}

uint64_t sub_B4B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_B4F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1B0C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_B560(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1B0C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_B5C0()
{
  result = qword_18630;
  if (!qword_18630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18630);
  }

  return result;
}

uint64_t sub_B614(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_B62C(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_B62C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_3B84(a1, a2, a3 & 1);
}

uint64_t sub_B668(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_B680(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_B680(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_3B94(a1, a2, a3 & 1);
}

uint64_t sub_B6BC()
{
  sub_1C18(&qword_18550, &qword_105B0);
  sub_F33C();
  sub_1C18(&qword_18548, &qword_105A8);
  sub_3C68(&qword_185C8, &qword_18548, &qword_105A8, &protocol conformance descriptor for List<A, B>);
  swift_getOpaqueTypeConformance2();
  sub_B4B0(&qword_185D0, &type metadata accessor for EditButton, &protocol conformance descriptor for EditButton);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_B824@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v29[0] = a3;
  v5 = sub_1B0C(&qword_182E8, &unk_101D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v29 - v7;
  v9 = sub_1B0C(&qword_183C8, &qword_100B0);
  __chkstk_darwin(v9 - 8);
  v11 = v29 - v10;
  v12 = sub_F40C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v30 = a1;
    v16 = a1;
  }

  else
  {

    sub_F87C();
    v17 = sub_F51C();
    sub_F12C();

    sub_F3FC();
    swift_getAtKeyPath();
    sub_361C(a1, 0);
    (*(v13 + 8))(v15, v12);
  }

  sub_1B0C(&qword_182C0, &qword_FF30);
  swift_allocBox();
  sub_F2FC();
  sub_1B54();
  sub_F74C();
  v18 = objc_opt_self();
  v19 = [v18 currentDevice];
  v20 = [v19 sf_inRetailKioskMode];

  if (v20 & 1) != 0 || (v21 = [v18 currentDevice], v22 = objc_msgSend(v21, "sf_isiPad"), v21, (v22))
  {
    v23 = 1;
  }

  else
  {
    sub_F48C();
    if (qword_182B8 != -1)
    {
      swift_once();
    }

    v24 = qword_19098;
    v30 = sub_F57C();
    v31 = v25;
    v32 = v26 & 1;
    v33 = v27;
    sub_1B0C(&qword_182D0, &qword_FDF0);
    sub_1BB4();
    sub_F71C();
    (*(v6 + 32))(v11, v8, v5);
    v23 = 0;
  }

  (*(v6 + 56))(v11, v23, 1, v5);
  sub_4528(v11, v29[0]);
}

uint64_t sub_BC70(uint64_t a1)
{
  v1 = sub_1B0C(&qword_182C0, &qword_FF30);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = swift_projectBox();
  (*(v2 + 16))(v5, v8, v1);
  sub_F73C();
  v9 = *(v2 + 8);
  v9(v5, v1);
  swift_getKeyPath();
  sub_F75C();

  v9(v7, v1);
  return sub_F6DC();
}

uint64_t sub_BE1C@<X0>(uint64_t a1@<X8>)
{
  sub_F48C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v2 = qword_19098;
  result = sub_F57C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_BF18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_F2BC();
  *a1 = result & 1;
  return result;
}

id sub_BFA4()
{
  type metadata accessor for FindAirPlayAndHandoffSettingsClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_19098 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SettingsAppFeatureFlags(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SettingsAppFeatureFlags(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_C0EC()
{
  result = qword_186D0;
  if (!qword_186D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186D0);
  }

  return result;
}

Swift::Int sub_C148()
{
  sub_F88C();
  sub_F89C(0);
  return sub_F8AC();
}

Swift::Int sub_C1B4(uint64_t a1)
{
  sub_F88C();
  sub_F89C(0);
  return sub_F8AC();
}

unint64_t sub_C244()
{
  result = qword_18770;
  if (!qword_18770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18770);
  }

  return result;
}

uint64_t sub_C2B8()
{
  v0 = type metadata accessor for AirPlayAndHandoffSettingsList(0);
  v1 = sub_C31C();

  return SettingsPane.init(makeContent:)(sub_C2B4, 0, v0, v1);
}

unint64_t sub_C31C()
{
  result = qword_18778;
  if (!qword_18778)
  {
    type metadata accessor for AirPlayAndHandoffSettingsList(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18778);
  }

  return result;
}

unint64_t sub_C388()
{
  result = qword_18780;
  if (!qword_18780)
  {
    sub_1C18(&qword_18788, &qword_10908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18780);
  }

  return result;
}

uint64_t sub_C3EC@<X0>(void *a1@<X8>)
{
  v2 = sub_F07C();
  __chkstk_darwin(v2 - 8);
  v3 = sub_EFFC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_F7AC();
  __chkstk_darwin(v7 - 8);
  v11[1] = [objc_allocWithZone(sub_F2FC()) init];
  sub_F66C();
  v8 = v11[3];
  *a1 = v11[2];
  a1[1] = v8;
  type metadata accessor for AirPlayAndHandoffSettingsList(0);
  sub_F79C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v9 = [qword_19098 bundleURL];
  sub_F02C();

  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v3);
  sub_F06C();
  return sub_F01C();
}

uint64_t type metadata accessor for AirPlayAndHandoffSettingsList(uint64_t a1)
{
  result = qword_187E8;
  if (!qword_187E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_C6A4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_F00C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_C764(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_F00C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_C808(uint64_t a1)
{
  sub_C88C(319);
  if (v1 <= 0x3F)
  {
    sub_F00C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_C88C(uint64_t a1)
{
  if (!qword_187F8)
  {
    sub_F2FC();
    v1 = sub_F69C();
    if (!v2)
    {
      atomic_store(v1, &qword_187F8);
    }
  }
}

uint64_t sub_C900@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v1 = sub_1B0C(&qword_18828, &qword_10990);
  __chkstk_darwin(v1 - 8);
  v3 = &v59 - v2;
  v76 = sub_F04C();
  v4 = *(v76 - 8);
  __chkstk_darwin(v76);
  v66 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_F76C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = sub_1B0C(&qword_18830, &qword_10998);
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v11 = &v59 - v10;
  v62 = sub_1B0C(&qword_18838, &qword_109A0);
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v59 - v12;
  v69 = sub_1B0C(&qword_18840, &qword_109A8);
  __chkstk_darwin(v69);
  v14 = &v59 - v13;
  v77 = sub_1B0C(&qword_18848, &qword_109B0);
  v70 = *(v77 - 8);
  __chkstk_darwin(v77);
  v67 = &v59 - v15;
  v16 = sub_1B0C(&qword_18850, &qword_109B8);
  v71 = *(v16 - 8);
  v72 = v16;
  __chkstk_darwin(v16);
  v78 = &v59 - v17;
  v18 = sub_1B0C(&qword_18858, &qword_109C0);
  v73 = *(v18 - 8);
  v74 = v18;
  __chkstk_darwin(v18);
  v79 = &v59 - v19;
  sub_1B0C(&qword_18860, &qword_109C8);
  sub_3C68(&qword_18868, &qword_18860, &qword_109C8, &protocol conformance descriptor for TupleView<A>);
  v59 = v11;
  v20 = v80;
  sub_F54C();
  *v9 = 0xD000000000000024;
  v9[1] = 0x8000000000012A60;
  v65 = v7;
  v21 = *(v7 + 104);
  v68 = v6;
  v21(v9, enum case for SettingsEventImage.graphicIcon(_:), v6);
  sub_D6CC();
  sub_F03C();
  v22 = v76;
  result = (*(v4 + 48))(v3, 1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for AirPlayAndHandoffSettingsList(0);
    v24 = v66;
    (*(v4 + 32))(v66, v3, v22);
    sub_3C68(&qword_18870, &qword_18830, &qword_10998, &protocol conformance descriptor for List<A, B>);
    v25 = v60;
    v26 = v64;
    v27 = v59;
    sub_F5AC();

    (*(v4 + 8))(v24, v22);
    (*(v65 + 8))(v9, v68);
    (*(v63 + 8))(v27, v26);
    v28 = sub_F3BC();
    LOBYTE(v27) = sub_F52C();
    (*(v61 + 32))(v14, v25, v62);
    v29 = v69;
    v30 = &v14[*(v69 + 36)];
    *v30 = v28;
    v30[8] = v27;
    v31 = v20[1];
    v76 = *v20;
    v85 = v76;
    v86 = v31;
    v68 = v31;
    sub_1B0C(&qword_18878, &qword_109D0);
    sub_F67C();
    v32 = v83;
    v33 = sub_F2FC();
    v34 = sub_E34C();
    v35 = sub_1B54();
    v36 = v67;
    sub_F5DC();

    sub_E448(v14);
    v85 = v29;
    v86 = v33;
    v87 = v34;
    v88 = v35;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v38 = v77;
    sub_F59C();
    (*(v70 + 8))(v36, v38);
    sub_F48C();
    if (qword_182B8 != -1)
    {
      swift_once();
    }

    v39 = qword_19098;
    v40 = sub_F57C();
    v42 = v41;
    v44 = v43;
    v85 = v77;
    v86 = OpaqueTypeConformance2;
    v77 = swift_getOpaqueTypeConformance2();
    v45 = v78;
    v46 = v72;
    sub_F61C();
    sub_3B94(v40, v42, v44 & 1);

    (*(v71 + 8))(v45, v46);
    sub_F48C();
    v78 = sub_F57C();
    v71 = v47;
    v49 = v48;
    v70 = v50;
    v83 = v76;
    v84 = v68;
    sub_F68C();
    v51 = v85;
    v52 = v86;
    v53 = v87;
    swift_getKeyPath();
    v85 = v51;
    v86 = v52;
    v87 = v53;
    sub_1B0C(&qword_18888, &qword_10A08);
    sub_F6EC();

    __chkstk_darwin(v54);
    sub_1B0C(&qword_18890, &qword_10A10);
    v81 = v46;
    v82 = v77;
    swift_getOpaqueTypeConformance2();
    sub_3C68(&qword_18898, &qword_18890, &qword_10A10, &protocol conformance descriptor for TupleView<A>);
    v55 = v74;
    v56 = v78;
    v57 = v71;
    v58 = v79;
    sub_F64C();

    sub_3B94(v56, v57, v49 & 1);

    return (*(v73 + 8))(v58, v55);
  }

  return result;
}

void sub_D46C(uint64_t a1@<X8>)
{
  sub_F2FC();
  sub_1B54();
  v22 = sub_F35C();
  v3 = v2;
  v21 = sub_F35C();
  v23 = v4;
  v20 = sub_F35C();
  v6 = v5;
  v19 = sub_F35C();
  v8 = v7;
  v18 = sub_F35C();
  v10 = v9;
  v11 = sub_F35C();
  v13 = v12;
  v14 = sub_F35C();
  v15 = v10 & 1;
  v17 = v16 & 1;
  *a1 = v22;
  *(a1 + 8) = v3 & 1;
  *(a1 + 16) = v21;
  *(a1 + 24) = v23 & 1;
  *(a1 + 32) = v20;
  *(a1 + 40) = v6 & 1;
  *(a1 + 48) = v19;
  *(a1 + 56) = v8 & 1;
  *(a1 + 64) = v18;
  *(a1 + 72) = v15;
  *(a1 + 80) = v11;
  *(a1 + 88) = v13 & 1;
  *(a1 + 96) = v14;
  *(a1 + 104) = v16 & 1;
  sub_3B30(v22, v3 & 1);
  sub_3B30(v21, v23 & 1);
  v6 &= 1u;
  sub_3B30(v20, v6);
  sub_3B30(v19, v8 & 1);
  sub_3B30(v18, v15);
  sub_3B30(v11, v13 & 1);
  sub_3B30(v14, v17);
  sub_361C(v14, v17);
  sub_361C(v11, v13 & 1);
  sub_361C(v18, v15);
  sub_361C(v19, v8 & 1);
  sub_361C(v20, v6);
  sub_361C(v21, v23 & 1);

  sub_361C(v22, v3 & 1);
}

uint64_t sub_D6CC()
{
  v0 = sub_F07C();
  __chkstk_darwin(v0 - 8);
  v1 = sub_EFFC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_F7AC();
  __chkstk_darwin(v5 - 8);
  sub_1B0C(&qword_188B8, &unk_10AA0);
  sub_F00C();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10910;
  sub_F79C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v7 = [qword_19098 bundleURL];
  sub_F02C();

  (*(v2 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v1);
  sub_F06C();
  sub_F01C();
  return v6;
}

uint64_t sub_D968@<X0>(void **a1@<X0>, char *a2@<X8>)
{
  v69 = a2;
  v67 = sub_1B0C(&qword_188A0, &qword_10A18) - 8;
  v3 = __chkstk_darwin(v67);
  v68 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v66 = v56 - v6;
  __chkstk_darwin(v5);
  v73 = v56 - v7;
  v8 = type metadata accessor for AirPlayAndHandoffSettingsList(0);
  v61 = *(v8 - 8);
  v60 = *(v61 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B0C(&qword_18420, &unk_10A20);
  __chkstk_darwin(v11 - 8);
  v13 = v56 - v12;
  v64 = sub_1B0C(&qword_18428, &qword_103C0);
  v71 = *(v64 - 8);
  v14 = __chkstk_darwin(v64);
  v65 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v59 = v56 - v17;
  __chkstk_darwin(v16);
  v74 = v56 - v18;
  v63 = sub_1B0C(&qword_188A8, &qword_10A30);
  v72 = *(v63 - 8);
  v19 = __chkstk_darwin(v63);
  v62 = v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v70 = v56 - v21;
  v56[0] = a1;
  v58 = *a1;
  v57 = a1[1];
  v78 = v58;
  v79 = v57;
  v56[1] = sub_1B0C(&qword_18878, &qword_109D0);
  sub_F68C();
  v22 = v75;
  v23 = v76;
  v24 = v77;
  swift_getKeyPath();
  v78 = v22;
  v79 = v23;
  v80 = v24;
  sub_1B0C(&qword_18888, &qword_10A08);
  sub_F6EC();

  sub_F36C();
  sub_F30C();
  v25 = sub_F31C();
  (*(*(v25 - 8) + 56))(v13, 0, 1, v25);
  v26 = v56[0];
  sub_E57C(v56[0], v10);
  v27 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v28 = swift_allocObject();
  sub_E5E4(v10, v28 + v27);
  sub_F6AC();
  sub_E57C(v26, v10);
  v29 = swift_allocObject();
  sub_E5E4(v10, v29 + v27);
  v30 = v59;
  sub_F6BC();
  v75 = v58;
  v76 = v57;
  sub_F67C();
  v31 = v78;
  v32 = sub_F26C();
  v34 = v33;

  v35 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v35 = v32 & 0xFFFFFFFFFFFFLL;
  }

  v36 = v35 == 0;
  KeyPath = swift_getKeyPath();
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  v39 = v71;
  v40 = v66;
  v41 = v64;
  (*(v71 + 32))(v66, v30, v64);
  v42 = (v40 + *(v67 + 44));
  *v42 = KeyPath;
  v42[1] = sub_E8A0;
  v42[2] = v38;
  v43 = v73;
  sub_E8B8(v40, v73);
  v44 = *(v72 + 16);
  v46 = v62;
  v45 = v63;
  v44(v62, v70, v63);
  v47 = *(v39 + 16);
  v48 = v65;
  v47(v65, v74, v41);
  v49 = v43;
  v50 = v68;
  sub_E928(v49, v68);
  v51 = v69;
  v44(v69, v46, v45);
  v52 = sub_1B0C(&qword_188B0, &qword_10A98);
  v47(&v51[*(v52 + 48)], v48, v41);
  sub_E928(v50, &v51[*(v52 + 64)]);
  sub_E998(v73);
  v53 = *(v71 + 8);
  v53(v74, v41);
  v54 = *(v72 + 8);
  v54(v70, v45);
  sub_E998(v50);
  v53(v48, v41);
  return (v54)(v46, v45);
}

uint64_t sub_E110@<X0>(uint64_t a1@<X8>)
{
  sub_F48C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v2 = qword_19098;
  result = sub_F57C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

void sub_E20C(void *a1, void (*a2)(void *))
{
  sub_1B0C(&qword_18878, &qword_109D0);
  v3 = sub_F67C();
  a2(v3);
}

uint64_t sub_E278@<X0>(uint64_t a3@<X8>)
{
  sub_F48C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v4 = qword_19098;
  result = sub_F57C();
  *a3 = result;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7 & 1;
  *(a3 + 24) = v8;
  return result;
}

unint64_t sub_E34C()
{
  result = qword_18880;
  if (!qword_18880)
  {
    sub_1C18(&qword_18840, &qword_109A8);
    sub_1C18(&qword_18830, &qword_10998);
    sub_3C68(&qword_18870, &qword_18830, &qword_10998, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18880);
  }

  return result;
}

uint64_t sub_E448(uint64_t a1)
{
  v2 = sub_1B0C(&qword_18840, &qword_109A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_E4B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_F22C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_E510@<X0>(uint64_t *a2@<X8>)
{
  result = sub_F26C();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_E57C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirPlayAndHandoffSettingsList(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E5E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirPlayAndHandoffSettingsList(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_E660()
{
  v1 = (type metadata accessor for AirPlayAndHandoffSettingsList(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_F00C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_E7CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_F3DC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_E7FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_F3DC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_E8B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0C(&qword_188A0, &qword_10A18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_E928(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0C(&qword_188A0, &qword_10A18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E998(uint64_t a1)
{
  v2 = sub_1B0C(&qword_188A0, &qword_10A18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_EA00()
{
  sub_1C18(&qword_18858, &qword_109C0);
  sub_1C18(&qword_18890, &qword_10A10);
  sub_1C18(&qword_18850, &qword_109B8);
  sub_1C18(&qword_18848, &qword_109B0);
  sub_1C18(&qword_18840, &qword_109A8);
  sub_F2FC();
  sub_E34C();
  sub_1B54();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_3C68(&qword_18898, &qword_18890, &qword_10A10, &protocol conformance descriptor for TupleView<A>);
  return swift_getOpaqueTypeConformance2();
}

void sub_EBA4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for AirPlayAndHandoffSettingsList(0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v21.receiver - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21.receiver = v1;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "viewDidLoad");
  sub_C3EC(v5);
  v6 = objc_allocWithZone(sub_1B0C(&qword_188E8, &qword_10AD0));
  v7 = sub_F4CC();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v8.super.isa = qword_19098;
  v20._countAndFlagsBits = 0x8000000000012A40;
  v22._countAndFlagsBits = 0xD000000000000014;
  v22._object = 0x8000000000012A20;
  v23.value._countAndFlagsBits = 0;
  v23.value._object = 0;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  sub_EFEC(v22, v23, v8, v24, 0xD000000000000010, v20);
  v9 = sub_F7BC();

  [v1 setTitle:v9];

  v10 = [v7 view];
  if (!v10)
  {
    v11 = v7;
    goto LABEL_8;
  }

  v11 = v10;
  v12 = [v1 view];
  if (v12)
  {
    v13 = v12;
    [v12 addSubview:v11];

    v14 = [v1 view];
    if (v14)
    {
      v15 = v14;
      [v14 bounds];
      v17 = v16;
      v19 = v18;

      [v11 setFrame:{0.0, 0.0, v17, v19}];
      [v11 setAutoresizingMask:18];
      [v1 addChildViewController:v7];
      [v7 didMoveToParentViewController:v1];

LABEL_8:
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_EF90()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}