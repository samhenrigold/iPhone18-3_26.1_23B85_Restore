double ReviewBrickComponentModel.segue.getter@<D0>(uint64_t a1@<X8>)
{
  sub_6932C(v1 + 40, v5, &qword_3BE370, &qword_2E7520);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

double sub_A6EC8@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_2C0D48();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_A70D8(v1, &v27);
  v7 = v29;
  v23 = v27;
  v22 = v28;
  v8 = sub_2C3788();
  sub_2C24D8();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v25 = v7;
  v24 = 0;
  type metadata accessor for InfoItemSymbolView(0);
  sub_6620C(&qword_3BE408, &unk_2E5E10);
  sub_2C2678();
  sub_2C46A8();
  sub_2C2708();
  *&v26[7] = v27;
  *&v26[23] = v28;
  *&v26[39] = v29;
  sub_29A87C(v6);
  v17 = sub_2C0CB8();
  (*(v4 + 8))(v6, v3);
  KeyPath = swift_getKeyPath();
  v19 = v22;
  *a1 = v23;
  *(a1 + 16) = v19;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v10;
  *(a1 + 56) = v12;
  *(a1 + 64) = v14;
  *(a1 + 72) = v16;
  *(a1 + 80) = 0;
  v20 = *&v26[16];
  *(a1 + 81) = *v26;
  *(a1 + 97) = v20;
  result = *&v26[32];
  *(a1 + 113) = *&v26[32];
  *(a1 + 128) = *&v26[47];
  *(a1 + 136) = KeyPath;
  *(a1 + 144) = v17;
  return result;
}

double sub_A70D8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v53 = a2;
  v3 = sub_6620C(&qword_3BCB28, &qword_2E3B60);
  __chkstk_darwin(v3 - 8);
  v5 = &v48[-v4];
  v6 = sub_2C3918();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v48[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2C0978();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v48[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for InfoItemSymbolView(0);
  v17 = a1 + *(v14 + 28);
  v18 = *(v17 + 8);
  if (*(v17 + 16))
  {

    v19 = sub_2C42C8();
    sub_29AD08(v13);
    (*(v7 + 104))(v9, enum case for Font.TextStyle.body(_:), v6);
    v20 = sub_2C3848();
    (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
    sub_2C3868();
    v21 = sub_2C38A8();
    sub_69198(v5, &qword_3BCB28, &qword_2E3B60);
    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v13, v10);
    KeyPath = swift_getKeyPath();
    v54 = v19;
    v55 = KeyPath;
    v56 = v21;
    v57 = 0;
    v58 = 1;
  }

  else
  {
    *&v59 = *v17;
    *(&v59 + 1) = v18;
    sub_7212C(v14, v15, v16);

    v23 = sub_2C3A48();
    v51 = v24;
    v52 = v23;
    v49 = v25;
    v50 = v26;
    sub_29AD08(v13);
    (*(v7 + 104))(v9, enum case for Font.TextStyle.body(_:), v6);
    v27 = enum case for Font.Design.rounded(_:);
    v28 = sub_2C3848();
    v29 = *(v28 - 8);
    (*(v29 + 104))(v5, v27, v28);
    (*(v29 + 56))(v5, 0, 1, v28);
    sub_2C3868();
    sub_2C38A8();
    sub_69198(v5, &qword_3BCB28, &qword_2E3B60);
    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v13, v10);
    v30 = v49;
    v32 = v51;
    v31 = v52;
    v33 = sub_2C39E8();
    v35 = v34;
    v37 = v36;
    sub_72180(v31, v32, v30 & 1);

    v38 = sub_2C3A28();
    v40 = v39;
    LOBYTE(v31) = v41;
    v43 = v42;
    sub_72180(v33, v35, v37 & 1);

    v54 = v38;
    v55 = v40;
    v56 = v31 & 1;
    v57 = v43;
    v58 = 0;
  }

  sub_6620C(&qword_3BD7D0, &unk_2E6640);
  sub_88554();
  sub_2C33C8();
  result = *&v59;
  v45 = v60;
  v46 = v61;
  v47 = v53;
  *v53 = v59;
  v47[1] = v45;
  *(v47 + 32) = v46;
  return result;
}

uint64_t sub_A75CC()
{
  if (*v0)
  {
    return 0x63496D6574737973;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_A7604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v5 || (sub_2C65B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x63496D6574737973 && a2 == 0xEA00000000006E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2C65B8();

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

uint64_t sub_A76E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_ABD7C(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_A7724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_ABD7C(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_A776C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_ABDD0(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_A77A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_ABDD0(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_A77F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_ABE24(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_A782C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_ABE24(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_A7894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_6620C(&qword_3BE330, &qword_2E5D88);
  __chkstk_darwin(v8);
  v10 = v23 - v9;
  v11 = sub_6620C(&qword_3BE338, &qword_2E5D90);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v17 = v23 - v16;
  if (a3)
  {
    v23[2] = a1;
    v23[3] = a2;
    sub_7212C(v13, v14, v15);

    *v10 = sub_2C3A48();
    *(v10 + 1) = v18;
    v10[16] = v19 & 1;
    *(v10 + 3) = v20;
    swift_storeEnumTagMultiPayload();
    sub_72B74(&qword_3BE340, &qword_3BE338, &qword_2E5D90, &protocol conformance descriptor for JetLocalize<A, B, C>);
    return sub_2C33C8();
  }

  else
  {
    v22 = swift_allocObject();
    *(v22 + 16) = a1;
    *(v22 + 24) = a1;
    *(v22 + 32) = a2;
    *(v22 + 40) = 0;
    v23[0] = sub_6620C(&qword_3BE348, &qword_2E5D98);
    sub_2BFBC8();
    sub_2BFBA8();
    v23[1] = a4;
    sub_A93CC();
    sub_A9328(&qword_3BDE60, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
    sub_A9328(&qword_3BDE68, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
    sub_2BFBD8();
    (*(v12 + 16))(v10, v17, v11);
    swift_storeEnumTagMultiPayload();
    sub_72B74(&qword_3BE340, &qword_3BE338, &qword_2E5D90, &protocol conformance descriptor for JetLocalize<A, B, C>);
    sub_2C33C8();
    return (*(v12 + 8))(v17, v11);
  }
}

uint64_t sub_A7C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v57 = a4;
  v58 = a2;
  v59 = a3;
  v60 = a1;
  v61 = a5;
  v7 = sub_2BFDD8();
  __chkstk_darwin(v7 - 8);
  v56 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_6620C(&qword_3BC938, &unk_2E3990);
  __chkstk_darwin(v53);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v47 - v12;
  v14 = sub_2C29C8();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v47 - v19;
  v21 = sub_6620C(&qword_3BC940, &qword_2F5A90);
  __chkstk_darwin(v21);
  v52 = &v47 - v22;
  v23 = sub_2C0E98();
  v51 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_6620C(&qword_3BE360, &unk_2E5DA0);
  __chkstk_darwin(v54);
  v55 = &v47 - v26;
  v50 = v25;
  sub_2C0E88();
  v27 = v15[13];
  v27(v20, enum case for DynamicTypeSize.xSmall(_:), v14);
  v27(v17, enum case for DynamicTypeSize.accessibility3(_:), v14);
  sub_A9328(&qword_3BC950, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_2C5868();
  if (result)
  {
    v29 = v15[4];
    v29(v13, v20, v14);
    v49 = v23;
    v48 = v21;
    v30 = v53;
    v29(&v13[*(v53 + 48)], v17, v14);
    sub_6932C(v13, v10, &qword_3BC938, &unk_2E3990);
    v31 = *(v30 + 48);
    v32 = v52;
    v29(v52, v10, v14);
    v33 = v15[1];
    v33(&v10[v31], v14);
    sub_A95D4(v13, v10);
    v29((v32 + *(v48 + 36)), &v10[*(v30 + 48)], v14);
    v33(v10, v14);
    sub_A9328(&qword_3BE368, &type metadata accessor for StarRatingView, &protocol conformance descriptor for StarRatingView);
    sub_72B74(&qword_3BC960, &qword_3BC940, &qword_2F5A90, &protocol conformance descriptor for ClosedRange<A>);
    v34 = v55;
    v36 = v49;
    v35 = v50;
    sub_2C3F48();
    sub_69198(v32, &qword_3BC940, &qword_2F5A90);
    (*(v51 + 8))(v35, v36);
    v37 = sub_2C3768();
    sub_2C24D8();
    v38 = v34 + *(v54 + 36);
    *v38 = v37;
    *(v38 + 8) = v39;
    *(v38 + 16) = v40;
    *(v38 + 24) = v41;
    *(v38 + 32) = v42;
    *(v38 + 40) = 0;
    sub_A8218(a6);
    sub_691F8(v60, v62);
    v43 = sub_2C3968();
    v45 = v44;
    LOBYTE(v36) = v46;
    sub_A9488();
    sub_2C3F68();
    sub_72180(v43, v45, v36 & 1);

    return sub_A9644(v34);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_A8218(double a1)
{
  v2 = sub_2C5418();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2C5288();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [objc_allocWithZone(NSNumberFormatter) init];
  [v21 setNumberStyle:1];
  [v21 setMaximumFractionDigits:1];
  [v21 setMinimumFractionDigits:1];
  v10 = [objc_allocWithZone(NSNumber) initWithDouble:a1];
  v11 = [v21 stringFromNumber:v10];

  if (v11)
  {
    v12 = sub_2C58C8();
    v14 = v13;

    v19[1] = "Couldn't Sort Books";
    sub_6620C(&unk_3C44C0, &unk_2F11D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2E3F30;
    v20 = v6;
    v16 = v3;
    *(inited + 32) = 0xD000000000000012;
    v17 = inited + 32;
    *(inited + 40) = 0x8000000000302800;
    *(inited + 48) = v12;
    *(inited + 56) = v14;
    sub_677B4(inited);
    swift_setDeallocating();
    sub_69198(v17, &qword_3BD8A0, &unk_2E4840);
    sub_2C5278();
    (*(v16 + 104))(v5, enum case for LocalizerLookupStrategy.default(_:), v2);
    sub_2BFD98();

    (*(v16 + 8))(v5, v2);
    (*(v7 + 8))(v9, v20);
  }

  else
  {
    sub_2BFDC8();
    v18 = v21;
  }
}

uint64_t sub_A8598()
{
  if (*v0)
  {
    return 1954047348;
  }

  else
  {
    return 0x6974615272617473;
  }
}

uint64_t sub_A85D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6974615272617473 && a2 == 0xEA0000000000676ELL;
  if (v6 || (sub_2C65B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2C65B8();

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

uint64_t sub_A86C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_ABC80(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_A86FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_ABC80(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_A8738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_ABD28(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_A8774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_ABD28(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_A87B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2C65B8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_A8830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_ABCD4(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_A886C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_ABCD4(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_A88D4@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_A8928@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_389F18;
  v8._object = a2;
  v6 = sub_2C63E8(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_A8980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_AAEDC(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_A89BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_AAEDC(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_A89F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x63496D6574737973;
  }

  else
  {
    v3 = 1954047348;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xEA00000000006E6FLL;
  }

  if (*a2)
  {
    v5 = 0x63496D6574737973;
  }

  else
  {
    v5 = 1954047348;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006E6FLL;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2C65B8();
  }

  return v8 & 1;
}

Swift::Int sub_A8A9C()
{
  sub_2C6738();
  sub_2C5958();

  return sub_2C6778();
}

uint64_t sub_A8B1C(uint64_t a1)
{
  sub_2C5958();
}

Swift::Int sub_A8B88(uint64_t a1)
{
  sub_2C6738();
  sub_2C5958();

  return sub_2C6778();
}

void sub_A8C10(uint64_t *a1@<X8>)
{
  v2 = 1954047348;
  if (*v1)
  {
    v2 = 0x63496D6574737973;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006E6FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_A8C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_AAF30(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_A8C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_AAF30(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

Swift::Int sub_A8D00()
{
  sub_2C6738();
  sub_2C5958();
  return sub_2C6778();
}

Swift::Int sub_A8D60(uint64_t a1)
{
  sub_2C6738();
  sub_2C5958();
  return sub_2C6778();
}

uint64_t sub_A8DB4@<X0>(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v4 = a1[1];
  v8._object = v4;
  v6 = sub_2C63E8(a2, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_A8E18@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_389F50;
  v8._object = a2;
  v6 = sub_2C63E8(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_A8E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_AAE34(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_A8EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_AAE34(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_A8EE8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1954047348;
  }

  else
  {
    v3 = 0x6974615272617473;
  }

  if (v2)
  {
    v4 = 0xEA0000000000676ELL;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1954047348;
  }

  else
  {
    v5 = 0x6974615272617473;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xEA0000000000676ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2C65B8();
  }

  return v8 & 1;
}

Swift::Int sub_A8F8C()
{
  sub_2C6738();
  sub_2C5958();

  return sub_2C6778();
}

uint64_t sub_A900C(uint64_t a1)
{
  sub_2C5958();
}

Swift::Int sub_A9078(uint64_t a1)
{
  sub_2C6738();
  sub_2C5958();

  return sub_2C6778();
}

uint64_t sub_A9100@<X0>(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, char *a3@<X8>)
{
  v9._countAndFlagsBits = *a1;
  v4 = a1[1];
  v9._object = v4;
  v6 = sub_2C63E8(a2, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

void sub_A915C(uint64_t *a1@<X8>)
{
  v2 = 1954047348;
  if (!*v1)
  {
    v2 = 0x6974615272617473;
  }

  v3 = 0xEA0000000000676ELL;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_A91A4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, Swift::OpaquePointer a3@<X4>, char *a4@<X8>)
{
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  v7 = sub_2C63E8(a3, v10);

  if (v7 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (!v7)
  {
    v9 = 0;
  }

  *a4 = v9;
  return result;
}

uint64_t sub_A9204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_AAE88(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_A9240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_AAE88(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_A92A8@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_A9328(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_A9370()
{
  sub_A93AC(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_A93AC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_A93CC()
{
  result = qword_3BE350;
  if (!qword_3BE350)
  {
    sub_718D4(&qword_3BE348, &qword_2E5D98);
    sub_A9488();
    sub_A9328(&qword_3BCA50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE350);
  }

  return result;
}

unint64_t sub_A9488()
{
  result = qword_3BE358;
  if (!qword_3BE358)
  {
    sub_718D4(&qword_3BE360, &unk_2E5DA0);
    sub_2C0E98();
    sub_718D4(&qword_3BC940, &qword_2F5A90);
    sub_A9328(&qword_3BE368, &type metadata accessor for StarRatingView, &protocol conformance descriptor for StarRatingView);
    sub_72B74(&qword_3BC960, &qword_3BC940, &qword_2F5A90, &protocol conformance descriptor for ClosedRange<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE358);
  }

  return result;
}

uint64_t sub_A95D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BC938, &unk_2E3990);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_A9644(uint64_t a1)
{
  v2 = sub_6620C(&qword_3BE360, &unk_2E5DA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_A96AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE388;
  if (!qword_3BE388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE388);
  }

  return result;
}

uint64_t sub_A9708(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_6620C(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_A9770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE3A8;
  if (!qword_3BE3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE3A8);
  }

  return result;
}

unint64_t sub_A97C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE3B0;
  if (!qword_3BE3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE3B0);
  }

  return result;
}

unint64_t sub_A9818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE3B8;
  if (!qword_3BE3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE3B8);
  }

  return result;
}

uint64_t sub_A986C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InfoItemComponentModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_A98D0(uint64_t a1)
{
  v2 = type metadata accessor for InfoItemComponentModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_A992C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2C65B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000003004A0 == a2 || (sub_2C65B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x776F7262657965 && a2 == 0xE700000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_2C65B8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x696C41656D617266 && a2 == 0xEE00746E656D6E67)
  {

    return 7;
  }

  else
  {
    v6 = sub_2C65B8();

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

uint64_t sub_A9BC0(void *a1)
{
  v32 = sub_6620C(&qword_3BE570, &qword_2E6670);
  v34 = *(v32 - 8);
  __chkstk_darwin(v32);
  v3 = &v31 - v2;
  v4 = sub_6620C(&qword_3BE578, &qword_2E6678);
  v33 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v31 - v5;
  v7 = sub_6620C(&qword_3BE580, &qword_2E6680);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - v9;
  v11 = a1[3];
  v36 = a1;
  v12 = sub_72084(a1, v11);
  sub_ABD7C(v12, v13, v14);
  v15 = v35;
  sub_2C67A8();
  if (!v15)
  {
    v31 = 0;
    v35 = v8;
    v16 = sub_2C64C8();
    v17 = (2 * *(v16 + 16)) | 1;
    v37 = v16;
    v38 = v16 + 32;
    v39 = 0;
    v40 = v17;
    v18 = sub_249B90();
    v21 = v7;
    if (v18 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_2C6238();
      swift_allocError();
      v8 = v7;
      v26 = v25;
      sub_6620C(&qword_3BE558, &qword_2E6668);
      *v26 = &type metadata for InfoItemSymbol;
      sub_2C6408();
      sub_2C6228();
      (*(*(v24 - 8) + 104))(v26, enum case for DecodingError.typeMismatch(_:), v24);
      swift_willThrow();
      (*(v35 + 8))(v10, v7);
    }

    else
    {
      v41 = v18;
      if (v18)
      {
        v42 = 1;
        sub_ABDD0(v18, v19, v20);
        v22 = v31;
        sub_2C63F8();
        v23 = v35;
        if (!v22)
        {
          v30 = v32;
          v8 = sub_2C6468();
          (*(v34 + 8))(v3, v30);
          (*(v23 + 8))(v10, v21);
          swift_unknownObjectRelease();
          goto LABEL_9;
        }
      }

      else
      {
        v42 = 0;
        sub_ABE24(v18, v19, v20);
        v28 = v31;
        sub_2C63F8();
        v29 = v35;
        if (!v28)
        {
          v8 = sub_2C6468();
          (*(v33 + 8))(v6, v4);
          (*(v29 + 8))(v10, v21);
          goto LABEL_8;
        }
      }

      (*(v35 + 8))(v10, v21);
    }

LABEL_8:
    swift_unknownObjectRelease();
  }

LABEL_9:
  sub_68CD0(v36);
  return v8;
}

void *sub_AA0F4(void *a1)
{
  v2 = sub_6620C(&qword_3BE538, &qword_2E6650);
  v33 = *(v2 - 8);
  v34 = v2;
  __chkstk_darwin(v2);
  v4 = v31 - v3;
  v5 = sub_6620C(&qword_3BE540, &qword_2E6658);
  v32 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v31 - v6;
  v8 = sub_6620C(&qword_3BE548, &qword_2E6660);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v31 - v10;
  v12 = a1[3];
  v36 = a1;
  v13 = sub_72084(a1, v12);
  sub_ABC80(v13, v14, v15);
  v16 = v35;
  sub_2C67A8();
  if (!v16)
  {
    v17 = v34;
    v35 = v9;
    v18 = sub_2C64C8();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_249B90();
    if (v20 == 2 || v40 != v41 >> 1)
    {
      v24 = sub_2C6238();
      swift_allocError();
      v26 = v25;
      sub_6620C(&qword_3BE558, &qword_2E6668);
      *v26 = &type metadata for InfoItemTitle;
      v13 = v11;
      sub_2C6408();
      sub_2C6228();
      (*(*(v24 - 8) + 104))(v26, enum case for DecodingError.typeMismatch(_:), v24);
      swift_willThrow();
      (*(v35 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v31[3] = v20;
      if (v20)
      {
        v37 = 1;
        sub_ABCD4(v20, v21, v22);
        sub_2C63F8();
        v23 = v35;
        v13 = sub_2C6468();
        (*(v33 + 8))(v4, v17);
        (*(v23 + 8))(v11, v8);
        swift_unknownObjectRelease();
      }

      else
      {
        v37 = 0;
        sub_ABD28(v20, v21, v22);
        sub_2C63F8();
        v28 = v35;
        sub_2C6488();
        v30 = v29;
        (*(v32 + 8))(v7, v5);
        (*(v28 + 8))(v11, v8);
        swift_unknownObjectRelease();
        v13 = v30;
      }
    }
  }

  sub_68CD0(v36);
  return v13;
}

void *sub_AA634(void *a1)
{
  v3 = sub_6620C(&qword_3BE3E0, &qword_2E5DD8);
  v29 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v25 - v4;
  v6 = sub_6620C(&qword_3BE3E8, &qword_2E5DE0);
  v30 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v25 - v7;
  v9 = sub_72084(a1, a1[3]);
  sub_AAEDC(v9, v10, v11);
  v12 = sub_2C67A8();
  if (!v1)
  {
    v27 = v3;
    v28 = a1;
    v15 = v29;
    sub_AAF30(v12, v13, v14);
    sub_2C63F8();
    v32 = 0;
    v16 = sub_2C6418();
    if (v17)
    {
      v9 = v16;
      v19 = v5;
LABEL_7:
      v20 = v28;
      (*(v15 + 8))(v19, v27);
      (*(v30 + 8))(v8, v6);
      sub_68CD0(v20);
      return v9;
    }

    v31 = 1;
    v21 = sub_2C6418();
    v19 = v5;
    if (v22)
    {
      v9 = v21;
      goto LABEL_7;
    }

    v26 = sub_2C6238();
    swift_allocError();
    v25 = v23;
    a1 = v28;
    v9 = sub_72084(v28, v28[3]);
    sub_2C6788();
    v24 = v25;
    sub_2C6228();
    (*(*(v26 - 8) + 104))(v24, enum case for DecodingError.dataCorrupted(_:));
    swift_willThrow();
    (*(v15 + 8))(v19, v27);
    (*(v30 + 8))(v8, v6);
  }

  sub_68CD0(a1);
  return v9;
}

void *sub_AAA38(void *a1)
{
  v3 = sub_6620C(&qword_3BE3C0, &qword_2E5DC8);
  v30 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v26 - v4;
  v6 = sub_6620C(&qword_3BE3C8, &qword_2E5DD0);
  v31 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v9 = sub_72084(a1, a1[3]);
  sub_AAE34(v9, v10, v11);
  v12 = sub_2C67A8();
  if (!v1)
  {
    v28 = v3;
    v29 = a1;
    v15 = v31;
    sub_AAE88(v12, v13, v14);
    sub_2C63F8();
    v33 = 0;
    v16 = sub_2C6438();
    LODWORD(v27) = v17;
    if ((v17 & 1) == 0)
    {
      v9 = v16;
      v21 = v5;
LABEL_8:
      v22 = v29;
      (*(v30 + 8))(v21, v28);
      (*(v15 + 8))(v8, v6);
      sub_68CD0(v22);
      return v9;
    }

    v32 = 1;
    v19 = sub_2C6418();
    v21 = v5;
    if (v20)
    {
      v9 = v19;
      goto LABEL_8;
    }

    v23 = sub_2C6238();
    swift_allocError();
    a1 = v29;
    v24 = v29[3];
    v26 = v29[4];
    v27 = v25;
    sub_72084(v29, v24);
    sub_2C6788();
    v9 = v27;
    sub_2C6228();
    (*(*(v23 - 8) + 104))(v9, enum case for DecodingError.dataCorrupted(_:), v23);
    swift_willThrow();
    (*(v30 + 8))(v21, v28);
    (*(v15 + 8))(v8, v6);
  }

  sub_68CD0(a1);
  return v9;
}

unint64_t sub_AAE34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE3D0;
  if (!qword_3BE3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE3D0);
  }

  return result;
}

unint64_t sub_AAE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE3D8;
  if (!qword_3BE3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE3D8);
  }

  return result;
}

unint64_t sub_AAEDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE3F0;
  if (!qword_3BE3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE3F0);
  }

  return result;
}

unint64_t sub_AAF30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE3F8;
  if (!qword_3BE3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE3F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InfoItemComponentModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for InfoItemComponentModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_AB138(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_6620C(&qword_3BE400, &unk_2E5E00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_6620C(&qword_3BC7C0, &unk_2E3890);
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      v14 = sub_6620C(&qword_3BE408, &unk_2E5E10);
      if (*(*(v14 - 8) + 84) != a2)
      {
        v16 = *(a1 + a3[7] + 16);
        if (v16 > 1)
        {
          return (v16 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      v8 = v14;
      v12 = *(v14 - 8);
      v13 = a3[6];
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_AB2C4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_6620C(&qword_3BE400, &unk_2E5E00);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_6620C(&qword_3BC7C0, &unk_2E3890);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_6620C(&qword_3BE408, &unk_2E5E10);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 16) = -a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_AB45C(uint64_t a1)
{
  sub_AB560(319, &qword_3BE478, &type metadata accessor for FontConstants, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_AB560(319, &qword_3BC850, &type metadata accessor for ColorConstants, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_AB5C4(319, v2, v3);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_AB560(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_AB5C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_3BE480)
  {
    sub_AB620(0, a2, a3);
    v3 = sub_2C2688();
    if (!v4)
    {
      atomic_store(v3, &qword_3BE480);
    }
  }
}

unint64_t sub_AB620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE488;
  if (!qword_3BE488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE488);
  }

  return result;
}

uint64_t sub_AB690(uint64_t a1, unsigned int a2)
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

uint64_t sub_AB6D8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_AB730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE4C0;
  if (!qword_3BE4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE4C0);
  }

  return result;
}

unint64_t sub_AB788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE4C8;
  if (!qword_3BE4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE4C8);
  }

  return result;
}

unint64_t sub_AB7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE4D0;
  if (!qword_3BE4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE4D0);
  }

  return result;
}

unint64_t sub_AB838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE4D8;
  if (!qword_3BE4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE4D8);
  }

  return result;
}

unint64_t sub_AB890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE4E0;
  if (!qword_3BE4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE4E0);
  }

  return result;
}

unint64_t sub_AB8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE4E8;
  if (!qword_3BE4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE4E8);
  }

  return result;
}

unint64_t sub_AB940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE4F0;
  if (!qword_3BE4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE4F0);
  }

  return result;
}

unint64_t sub_AB998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE4F8;
  if (!qword_3BE4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE4F8);
  }

  return result;
}

unint64_t sub_AB9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE500;
  if (!qword_3BE500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE500);
  }

  return result;
}

unint64_t sub_ABA48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE508;
  if (!qword_3BE508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE508);
  }

  return result;
}

unint64_t sub_ABAA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE510;
  if (!qword_3BE510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE510);
  }

  return result;
}

unint64_t sub_ABAF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE518;
  if (!qword_3BE518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE518);
  }

  return result;
}

unint64_t sub_ABB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE520;
  if (!qword_3BE520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE520);
  }

  return result;
}

unint64_t sub_ABBA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE528;
  if (!qword_3BE528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE528);
  }

  return result;
}

unint64_t sub_ABC00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE530;
  if (!qword_3BE530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE530);
  }

  return result;
}

unint64_t sub_ABC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE550;
  if (!qword_3BE550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE550);
  }

  return result;
}

unint64_t sub_ABCD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE560;
  if (!qword_3BE560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE560);
  }

  return result;
}

unint64_t sub_ABD28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE568;
  if (!qword_3BE568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE568);
  }

  return result;
}

unint64_t sub_ABD7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE588;
  if (!qword_3BE588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE588);
  }

  return result;
}

unint64_t sub_ABDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE590;
  if (!qword_3BE590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE590);
  }

  return result;
}

unint64_t sub_ABE24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE598;
  if (!qword_3BE598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE598);
  }

  return result;
}

unint64_t sub_ABEDC()
{
  result = qword_3BE5A0;
  if (!qword_3BE5A0)
  {
    sub_718D4(&qword_3BE5A8, &qword_2E66D8);
    sub_ABF94();
    sub_72B74(&qword_3BCB00, &qword_3BCB08, &qword_2E6700, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE5A0);
  }

  return result;
}

unint64_t sub_ABF94()
{
  result = qword_3BE5B0;
  if (!qword_3BE5B0)
  {
    sub_718D4(&qword_3BE5B8, &qword_2E66E0);
    sub_AC020();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE5B0);
  }

  return result;
}

unint64_t sub_AC020()
{
  result = qword_3BE5C0;
  if (!qword_3BE5C0)
  {
    sub_718D4(&qword_3BE5C8, &qword_2E66E8);
    sub_AC0AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE5C0);
  }

  return result;
}

unint64_t sub_AC0AC()
{
  result = qword_3BE5D0;
  if (!qword_3BE5D0)
  {
    sub_718D4(&qword_3BE5D8, &qword_2E66F0);
    sub_AC130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE5D0);
  }

  return result;
}

unint64_t sub_AC130()
{
  result = qword_3BE5E0;
  if (!qword_3BE5E0)
  {
    sub_718D4(&qword_3BE5E8, &qword_2E66F8);
    sub_88554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE5E0);
  }

  return result;
}

unint64_t sub_AC1C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE5F0;
  if (!qword_3BE5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE5F0);
  }

  return result;
}

unint64_t sub_AC218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE5F8;
  if (!qword_3BE5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE5F8);
  }

  return result;
}

unint64_t sub_AC270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE600;
  if (!qword_3BE600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE600);
  }

  return result;
}

unint64_t sub_AC2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE608;
  if (!qword_3BE608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE608);
  }

  return result;
}

unint64_t sub_AC320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE610;
  if (!qword_3BE610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE610);
  }

  return result;
}

unint64_t sub_AC378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE618;
  if (!qword_3BE618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE618);
  }

  return result;
}

unint64_t sub_AC3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE620;
  if (!qword_3BE620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE620);
  }

  return result;
}

unint64_t sub_AC428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE628;
  if (!qword_3BE628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE628);
  }

  return result;
}

unint64_t sub_AC480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE630;
  if (!qword_3BE630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE630);
  }

  return result;
}

unint64_t sub_AC4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE638;
  if (!qword_3BE638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE638);
  }

  return result;
}

unint64_t sub_AC530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE640;
  if (!qword_3BE640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE640);
  }

  return result;
}

unint64_t sub_AC588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE648;
  if (!qword_3BE648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE648);
  }

  return result;
}

unint64_t sub_AC5E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE650;
  if (!qword_3BE650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE650);
  }

  return result;
}

unint64_t sub_AC638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE658;
  if (!qword_3BE658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE658);
  }

  return result;
}

unint64_t sub_AC690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE660;
  if (!qword_3BE660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE660);
  }

  return result;
}

unint64_t sub_AC6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE668;
  if (!qword_3BE668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE668);
  }

  return result;
}

unint64_t sub_AC740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE670;
  if (!qword_3BE670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE670);
  }

  return result;
}

unint64_t sub_AC798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE678;
  if (!qword_3BE678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE678);
  }

  return result;
}

uint64_t dispatch thunk of SeriesListModeManaging.filterOption(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 56) + **(a5 + 56));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_7100C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of SeriesListModeManaging.sortOrder(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 64) + **(a5 + 64));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_88BE0;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of SeriesListModeManaging.setFilterOption(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 72) + **(a5 + 72));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_88BE0;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of SeriesListModeManaging.setSortOrder(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 80) + **(a5 + 80));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_88BE0;

  return v13(a1, a2, a3, a4, a5);
}

__n128 sub_ACDD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_ACDF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_ACE3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_ACEA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2C1F28();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v86 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v85 = &v72 - v8;
  v78 = sub_2BE698();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v75 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_2BE678();
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v73 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6620C(&qword_3BE6C8, &unk_2EE720);
  __chkstk_darwin(v11 - 8);
  v90 = &v72 - v12;
  v13 = sub_6620C(&qword_3BE6D0, &unk_2E6E00);
  __chkstk_darwin(v13 - 8);
  v15 = &v72 - v14;
  v84 = sub_2BEB08();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v81 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v82 = &v72 - v18;
  v19 = sub_6620C(&qword_3BE6D8, &qword_2F2BF0);
  __chkstk_darwin(v19 - 8);
  v79 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v89 = &v72 - v22;
  __chkstk_darwin(v23);
  v25 = &v72 - v24;
  if (qword_3BB848 != -1)
  {
    swift_once();
  }

  v26 = sub_2C00B8();
  sub_57AD8(v26, qword_3C3170);
  sub_AEBE4(v1, v95);
  v27 = sub_2C0098();
  v28 = sub_2C5DB8();
  v29 = os_log_type_enabled(v27, v28);
  v91 = v1;
  if (v29)
  {
    v80 = v15;
    v87 = v5;
    v72 = v4;
    v88 = a1;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v94 = v31;
    *v30 = 136315138;
    sub_72084(v95, v96);
    sub_1D6230(v25);
    v32 = sub_2BE228();
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v25, 1, v32) == 1)
    {
      sub_69198(v25, &qword_3BE6D8, &qword_2F2BF0);
      v34 = 0;
      v35 = 0;
    }

    else
    {
      v34 = sub_2BE1E8();
      v35 = v36;
      (*(v33 + 8))(v25, v32);
    }

    v92 = v34;
    v93 = v35;
    sub_6620C(&qword_3BDB00, &qword_2E6E10);
    v37 = sub_2C5918();
    v39 = v38;
    sub_AEC1C(v95);
    v40 = sub_5CCF4(v37, v39, &v94);

    *(v30 + 4) = v40;
    _os_log_impl(&dword_0, v27, v28, "longestStreak: %s", v30, 0xCu);
    sub_68CD0(v31);

    v5 = v87;
    a1 = v88;
    v4 = v72;
    v15 = v80;
    v2 = v91;
  }

  else
  {

    sub_AEC1C(v95);
  }

  sub_AEBE4(v2, v95);
  v41 = sub_2C0098();
  v42 = sub_2C5DB8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 134217984;
    sub_72084(v95, v96);
    sub_1D6B0C();
    v45 = v44;
    sub_AEC1C(v95);
    *(v43 + 4) = v45;
    _os_log_impl(&dword_0, v41, v42, "totalCompletedGoalDays: %ld", v43, 0xCu);
    v2 = v91;
  }

  else
  {
    sub_AEC1C(v95);
  }

  sub_72084(v2, v2[3]);
  sub_1D6B0C();
  if (v46 >= v2[8])
  {
    v51 = enum case for FrameName.readingInsightDaily(_:);
    v52 = sub_2BF0C8();
    v53 = *(v52 - 8);
    (*(v53 + 104))(v15, v51, v52);
    (*(v53 + 56))(v15, 0, 1, v52);
    v54 = sub_2BE8D8();
    (*(*(v54 - 8) + 56))(v90, 1, 1, v54);
    sub_72084(v2, v2[3]);
    v55 = v89;
    sub_1D6230(v89);
    v56 = sub_2BE228();
    v57 = *(v56 - 8);
    if ((*(v57 + 48))(v55, 1, v56) == 1)
    {
      sub_69198(v55, &qword_3BE6D8, &qword_2F2BF0);
    }

    else
    {
      v87 = v5;
      v58 = v74;
      v59 = *(v74 + 104);
      v60 = v73;
      v80 = v15;
      v88 = a1;
      v61 = v76;
      v59(v73, enum case for Calendar.Component.day(_:), v76);
      v62 = v4;
      v63 = v75;
      sub_2BE658();
      sub_2BE1D8();
      v64 = v63;
      v4 = v62;
      (*(v77 + 8))(v64, v78);
      v65 = v61;
      a1 = v88;
      (*(v58 + 8))(v60, v65);
      v5 = v87;
      (*(v57 + 8))(v89, v56);
    }

    v66 = v82;
    sub_2BEAF8();
    sub_72084(v91, v91[3]);
    sub_1D6230(v79);
    v67 = v83;
    v68 = v84;
    (*(v83 + 16))(v81, v66, v84);
    v69 = v85;
    sub_2C1F18();
    (*(v5 + 16))(v86, v69, v4);
    sub_2C14A8();
    (*(v5 + 8))(v69, v4);
    (*(v67 + 8))(v66, v68);
    v50 = 0;
  }

  else
  {
    v47 = sub_2C0098();
    v48 = sub_2C5DB8();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_0, v47, v48, "Eligibility criteria not met for ReadingSummaryFrame", v49, 2u);
    }

    v50 = 1;
  }

  v70 = sub_2C14B8();
  return (*(*(v70 - 8) + 56))(a1, v50, 1, v70);
}

uint64_t sub_ADA14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = sub_2BE588();
  v65 = *(v78 - 8);
  __chkstk_darwin(v78);
  v77 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for ReadingInsightsDataProvider.MonthTotal(0);
  v64 = *(v80 - 8);
  __chkstk_darwin(v80);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_2C20B8();
  v79 = *(v76 - 8);
  __chkstk_darwin(v76);
  v66 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2C20D8();
  v73 = *(v8 - 8);
  __chkstk_darwin(v8);
  v72 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v71 = &v61 - v11;
  v12 = sub_6620C(&qword_3BE6C8, &unk_2EE720);
  __chkstk_darwin(v12 - 8);
  v14 = &v61 - v13;
  v15 = sub_6620C(&qword_3BE6D0, &unk_2E6E00);
  __chkstk_darwin(v15 - 8);
  v67 = &v61 - v16;
  v70 = sub_2BEB08();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v75 = &v61 - v19;
  if (qword_3BB848 != -1)
  {
    swift_once();
  }

  v20 = sub_2C00B8();
  sub_57AD8(v20, qword_3C3170);
  sub_AEBE4(v1, &v84);
  v21 = sub_2C0098();
  v22 = sub_2C5DB8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v63 = v14;
    v24 = v23;
    v62 = swift_slowAlloc();
    v81 = v62;
    *v24 = 136315138;
    sub_72084(&v84, v86);
    sub_1D6D4C();
    v25 = sub_2C5B38();
    v74 = a1;
    v27 = v26;

    sub_AEC1C(&v84);
    v28 = v25;
    v2 = v1;
    v29 = sub_5CCF4(v28, v27, &v81);
    a1 = v74;

    *(v24 + 4) = v29;
    _os_log_impl(&dword_0, v21, v22, "monthlyTotals: %s", v24, 0xCu);
    sub_68CD0(v62);

    v14 = v63;
  }

  else
  {

    sub_AEC1C(&v84);
  }

  sub_72084(v2, *(v2 + 24));
  v30 = sub_1D6D4C();
  LOBYTE(v84) = *(v2 + 40);
  v31 = *(v2 + 64);
  v85 = *(v2 + 48);
  v86 = v31;
  v87 = *(v2 + 80);
  v81 = v30;
  v82 = 0;
  v83 = 0;
  YearInReviewEligibilityCriteria.isEligible(for:)(&v81);
  v33 = v32;
  sub_AEC4C(v81, v82, v83);
  if (v33)
  {
    v63 = v8;
    v34 = enum case for FrameName.readingInsightMonthly(_:);
    v35 = sub_2BF0C8();
    v36 = *(v35 - 8);
    v37 = v67;
    (*(v36 + 104))(v67, v34, v35);
    (*(v36 + 56))(v37, 0, 1, v35);
    v38 = sub_2BE8D8();
    (*(*(v38 - 8) + 56))(v14, 1, 1, v38);
    sub_2BEAF8();
    sub_72084(v2, *(v2 + 24));
    v39 = sub_1D6D4C();
    v40 = *(v39 + 2);
    if (v40)
    {
      v74 = a1;
      v84 = _swiftEmptyArrayStorage;
      sub_647A4(0, v40, 0);
      v41 = v84;
      v42 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v67 = v39;
      v43 = &v39[v42];
      v44 = *(v64 + 72);
      v45 = (v65 + 16);
      v46 = v66;
      do
      {
        sub_AEC5C(v43, v6);
        (*v45)(v77, v6, v78);
        sub_2C20A8();
        sub_AECC0(v6);
        v84 = v41;
        v48 = v41[2];
        v47 = v41[3];
        if (v48 >= v47 >> 1)
        {
          sub_647A4((v47 > 1), v48 + 1, 1);
          v41 = v84;
        }

        v41[2] = v48 + 1;
        (*(v79 + 32))(v41 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v48, v46, v76);
        v43 += v44;
        --v40;
      }

      while (v40);

      a1 = v74;
    }

    else
    {
    }

    v53 = v69;
    v54 = v75;
    v55 = v70;
    (*(v69 + 16))(v68, v75, v70);
    v56 = v71;
    sub_2C20C8();
    v57 = v73;
    v58 = v63;
    (*(v73 + 16))(v72, v56, v63);
    sub_2C1BA8();
    (*(v57 + 8))(v56, v58);
    (*(v53 + 8))(v54, v55);
    v52 = 0;
  }

  else
  {
    v49 = sub_2C0098();
    v50 = sub_2C5DB8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_0, v49, v50, "Eligibility criteria not met for TotalMonthlyReadingFrame", v51, 2u);
    }

    v52 = 1;
  }

  v59 = sub_2C1BB8();
  return (*(*(v59 - 8) + 56))(a1, v52, 1, v59);
}

void *sub_AE448()
{
  v0 = sub_2C1BC8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2C1BE8();
  __chkstk_darwin(v4 - 8);
  v5 = sub_6620C(&qword_3BE680, &qword_2E6DD0);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_6620C(&qword_3BE688, &qword_2E6DD8);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - v9;
  sub_6620C(&qword_3BE690, &qword_2E6DE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2E15C0;
  sub_ACEA4(v10);
  v12 = sub_2C14B8();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_69198(v10, &qword_3BE688, &qword_2E6DD8);
    *(inited + 32) = 0u;
    *(inited + 48) = 0u;
    *(inited + 64) = 0;
  }

  else
  {
    *(inited + 56) = v12;
    *(inited + 64) = sub_AEB9C(&qword_3BE6C0, &type metadata accessor for ReadingSummaryFrame, &protocol conformance descriptor for ReadingSummaryFrame);
    v14 = sub_720C8((inited + 32));
    (*(v13 + 32))(v14, v10, v12);
  }

  sub_ADA14(v7);
  v15 = sub_2C1BB8();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v7, 1, v15) == 1)
  {
    sub_69198(v7, &qword_3BE680, &qword_2E6DD0);
    *(inited + 72) = 0u;
    *(inited + 88) = 0u;
    *(inited + 104) = 0;
  }

  else
  {
    *(inited + 96) = v15;
    *(inited + 104) = sub_AEB9C(&qword_3BE6B8, &type metadata accessor for TotalMonthlyReadingFrame, &protocol conformance descriptor for TotalMonthlyReadingFrame);
    v17 = sub_720C8((inited + 72));
    (*(v16 + 32))(v17, v7, v15);
  }

  sub_AEAC8(inited + 32, &v30);
  v27 = v31;
  v26 = v30;
  v28 = v32;
  if (*(&v31 + 1))
  {
    sub_68D1C(&v26, v29);
    v18 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_5BE44(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v20 = v18[2];
    v19 = v18[3];
    if (v20 >= v19 >> 1)
    {
      v18 = sub_5BE44((v19 > 1), v20 + 1, 1, v18);
    }

    v18[2] = v20 + 1;
    sub_68D1C(v29, &v18[5 * v20 + 4]);
  }

  else
  {
    sub_69198(&v26, &qword_3BE698, &qword_2E6DE8);
    v18 = _swiftEmptyArrayStorage;
  }

  sub_AEAC8(inited + 72, &v30);
  v27 = v31;
  v26 = v30;
  v28 = v32;
  if (*(&v31 + 1))
  {
    sub_68D1C(&v26, v29);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_5BE44(0, v18[2] + 1, 1, v18);
    }

    v22 = v18[2];
    v21 = v18[3];
    if (v22 >= v21 >> 1)
    {
      v18 = sub_5BE44((v21 > 1), v22 + 1, 1, v18);
    }

    v18[2] = v22 + 1;
    sub_68D1C(v29, &v18[5 * v22 + 4]);
  }

  else
  {
    sub_69198(&v26, &qword_3BE698, &qword_2E6DE8);
  }

  *&v30 = v18;
  sub_6620C(&qword_3BE6A0, &unk_2E6DF0);
  sub_AEB38();
  if (sub_2C5D28())
  {
    (*(v1 + 104))(v3, enum case for TransitionFrameViewModel.Section.readingInsights(_:), v0);
    sub_2C1BD8();
    *(&v31 + 1) = sub_2C0FD8();
    v32 = sub_AEB9C(&qword_3BE6B0, &type metadata accessor for TransitionFrame, &protocol conformance descriptor for TransitionFrame);
    sub_720C8(&v30);
    sub_2C0FC8();
    sub_68D1C(&v30, v29);
    v23 = v18[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v26 = v18;
    if (!isUniquelyReferenced_nonNull_native || v23 >= v18[3] >> 1)
    {
      v18 = sub_5BE44(isUniquelyReferenced_nonNull_native, v23 + 1, 1, v18);
      *&v26 = v18;
    }

    sub_1811A0(0, 0, 1, v29);
  }

  return v18;
}

uint64_t sub_AEAC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BE698, &qword_2E6DE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_AEB38()
{
  result = qword_3BE6A8;
  if (!qword_3BE6A8)
  {
    sub_718D4(&qword_3BE6A0, &unk_2E6DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE6A8);
  }

  return result;
}

uint64_t sub_AEB9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_AEC4C(uint64_t result, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return v3;
}

uint64_t sub_AEC5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingInsightsDataProvider.MonthTotal(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_AECC0(uint64_t a1)
{
  v2 = type metadata accessor for ReadingInsightsDataProvider.MonthTotal(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_AED30(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_6620C(&qword_3BC7C0, &unk_2E3890);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = sub_6620C(&qword_3BE6E0, &qword_2E6E28);
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v16 = sub_2C2548();
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_AEEE0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_6620C(&qword_3BC7C0, &unk_2E3890);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[5] + 8) = a2;
    return result;
  }

  v13 = sub_6620C(&qword_3BE6E0, &qword_2E6E28);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = sub_2C2548();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for YearInReviewToolbarContent(uint64_t a1)
{
  result = qword_3BE740;
  if (!qword_3BE740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_AF0BC(uint64_t a1)
{
  sub_AF178(319);
  if (v1 <= 0x3F)
  {
    sub_A63F4();
    if (v2 <= 0x3F)
    {
      sub_AF1D0(319);
      if (v3 <= 0x3F)
      {
        sub_2C2548();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_AF178(uint64_t a1)
{
  if (!qword_3BC850)
  {
    sub_2C0D48();
    v1 = sub_2C2558();
    if (!v2)
    {
      atomic_store(v1, &qword_3BC850);
    }
  }
}

void sub_AF1D0(uint64_t a1)
{
  if (!qword_3BE750)
  {
    sub_718D4(&unk_3BE758, &qword_2E6E50);
    v1 = sub_2C60B8();
    if (!v2)
    {
      atomic_store(v1, &qword_3BE750);
    }
  }
}

uint64_t sub_AF250()
{
  v1 = (v0 + *(type metadata accessor for YearInReviewToolbarContent(0) + 20));
  v2 = v1[1];
  if (v2)
  {
    v3 = *v1;

    sub_1DA078(0xD000000000000011);
    sub_6620C(&qword_3BE868, &unk_2F0B20);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_2E3F30;
    *(v4 + 56) = &type metadata for String;
    *(v4 + 64) = sub_B1BAC(v4, v5, v6);
    *(v4 + 32) = v3;
    *(v4 + 40) = v2;
    v7 = sub_2C5898();

    return v7;
  }

  else
  {

    return sub_1DA078(0x206E692072616559);
  }
}

uint64_t sub_AF380@<X0>(uint64_t a1@<X8>)
{
  v97 = a1;
  v96 = sub_6620C(&qword_3BE798, &qword_2E6EA0);
  __chkstk_darwin(v96);
  v95 = &v73 - v2;
  v3 = sub_6620C(&qword_3BE7A0, &qword_2E6EA8);
  v93 = *(v3 - 8);
  v94 = v3;
  __chkstk_darwin(v3);
  v92 = &v73 - v4;
  v90 = sub_6620C(&qword_3BE7A8, &qword_2E6EB0);
  v88 = *(v90 - 8);
  __chkstk_darwin(v90);
  v78 = &v73 - v5;
  v89 = sub_6620C(&qword_3BE7B0, &qword_2E6EB8);
  v77 = *(v89 - 8);
  __chkstk_darwin(v89);
  v76 = &v73 - v6;
  v7 = sub_6620C(&qword_3BE6E0, &qword_2E6E28);
  __chkstk_darwin(v7 - 8);
  v9 = &v73 - v8;
  v80 = sub_6620C(&unk_3BE758, &qword_2E6E50);
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v85 = &v73 - v10;
  v11 = sub_6620C(&qword_3BE7B8, &qword_2E6EC0);
  __chkstk_darwin(v11 - 8);
  v86 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v73 - v14;
  v16 = sub_6620C(&qword_3BE7C0, &qword_2E6EC8);
  v83 = *(v16 - 8);
  v84 = v16;
  __chkstk_darwin(v16);
  v75 = &v73 - v17;
  v18 = sub_2C3478();
  __chkstk_darwin(v18 - 8);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_6620C(&qword_3BE7C8, &qword_2E6ED0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v73 - v23;
  v82 = sub_6620C(&qword_3BE7D0, &qword_2E6ED8);
  v74 = *(v82 - 8);
  __chkstk_darwin(v82);
  v26 = &v73 - v25;
  v27 = sub_6620C(&qword_3BE7D8, &qword_2E6EE0);
  __chkstk_darwin(v27 - 8);
  v29 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v73 - v31;
  v81 = type metadata accessor for YearInReviewToolbarContent(0);
  v33 = *(v81 + 32);
  v98 = v32;
  v99 = v1;
  LODWORD(v33) = *(v1 + v33);
  v91 = v15;
  v87 = v20;
  if (v33 == 1)
  {
    v34 = sub_2C3458();
    __chkstk_darwin(v34);
    *(&v73 - 2) = v99;
    sub_6620C(&qword_3BE828, &qword_2E6F10);
    sub_B18F8();
    sub_2C25D8();
    v35 = sub_72B74(&qword_3BE7E0, &qword_3BE7C8, &qword_2E6ED0, &protocol conformance descriptor for ToolbarItem<A, B>);
    sub_2C28F8();
    (*(v22 + 8))(v24, v21);
    v100 = v21;
    v101 = v35;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v37 = v75;
    v38 = v82;
    sub_2C34C8();
    v40 = v83;
    v39 = v84;
    (*(v83 + 16))(v29, v37, v84);
    (*(v40 + 56))(v29, 0, 1, v39);
    v100 = v38;
    v101 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_2C34D8();
    sub_69198(v29, &qword_3BE7D8, &qword_2E6EE0);
    (*(v40 + 8))(v37, v39);
    (*(v74 + 8))(v26, v38);
  }

  else
  {
    (*(v83 + 56))(v29, 1, 1, v84);
    v41 = sub_72B74(&qword_3BE7E0, &qword_3BE7C8, &qword_2E6ED0, &protocol conformance descriptor for ToolbarItem<A, B>);
    v100 = v21;
    v101 = v41;
    v42 = swift_getOpaqueTypeConformance2();
    v100 = v82;
    v101 = v42;
    swift_getOpaqueTypeConformance2();
    sub_2C34D8();
    sub_69198(v29, &qword_3BE7D8, &qword_2E6EE0);
  }

  sub_6932C(v99 + *(v81 + 24), v9, &qword_3BE6E0, &qword_2E6E28);
  if ((*(v79 + 48))(v9, 1, v80) == 1)
  {
    sub_69198(v9, &qword_3BE6E0, &qword_2E6E28);
    v43 = v86;
    (*(v88 + 56))(v86, 1, 1, v90);
    v44 = sub_72B74(&qword_3BE7E8, &qword_3BE7B0, &qword_2E6EB8, &protocol conformance descriptor for ToolbarItem<A, B>);
    v100 = v89;
    v101 = v44;
    swift_getOpaqueTypeConformance2();
    v45 = v91;
    sub_2C34D8();
    sub_69198(v43, &qword_3BE7B8, &qword_2E6EC0);
  }

  else
  {
    v46 = v85;
    sub_69130(v9, v85, &unk_3BE758, &qword_2E6E50);
    v47 = sub_2C3448();
    __chkstk_darwin(v47);
    v48 = v99;
    *(&v73 - 2) = v46;
    *(&v73 - 1) = v48;
    sub_6620C(&qword_3BE810, &qword_2E6F00);
    v49 = sub_718D4(&qword_3BE818, &qword_2E6F08);
    v50 = sub_718D4(&qword_3BE800, &qword_2E7C70);
    v51 = sub_72B74(&qword_3BE820, &qword_3BE818, &qword_2E6F08, &protocol conformance descriptor for ShareLink<A, B, C, D>);
    v52 = sub_72B74(&unk_3C4390, &qword_3BE800, &qword_2E7C70, &protocol conformance descriptor for Label<A, B>);
    v100 = v49;
    v101 = v50;
    v102 = v51;
    v103 = v52;
    swift_getOpaqueTypeConformance2();
    v53 = v76;
    sub_2C25D8();
    v54 = sub_72B74(&qword_3BE7E8, &qword_3BE7B0, &qword_2E6EB8, &protocol conformance descriptor for ToolbarItem<A, B>);
    v55 = v78;
    v56 = v89;
    sub_2C34C8();
    v57 = v88;
    v58 = v86;
    v59 = v90;
    (*(v88 + 16))(v86, v55, v90);
    (*(v57 + 56))(v58, 0, 1, v59);
    v100 = v56;
    v101 = v54;
    swift_getOpaqueTypeConformance2();
    v45 = v91;
    sub_2C34D8();
    sub_69198(v58, &qword_3BE7B8, &qword_2E6EC0);
    (*(v57 + 8))(v55, v59);
    (*(v77 + 8))(v53, v56);
    sub_69198(v85, &unk_3BE758, &qword_2E6E50);
  }

  sub_2C3448();
  sub_6620C(&qword_3BE7F0, &qword_2E6EE8);
  v60 = sub_718D4(&qword_3BE7F8, &unk_2E6EF0);
  v61 = sub_718D4(&qword_3BE800, &qword_2E7C70);
  v62 = sub_72B74(&qword_3BE808, &qword_3BE7F8, &unk_2E6EF0, &protocol conformance descriptor for ActionButton<A>);
  v63 = sub_72B74(&unk_3C4390, &qword_3BE800, &qword_2E7C70, &protocol conformance descriptor for Label<A, B>);
  v100 = v60;
  v101 = v61;
  v102 = v62;
  v103 = v63;
  swift_getOpaqueTypeConformance2();
  v64 = v92;
  sub_2C25D8();
  v65 = v95;
  v66 = *(v96 + 48);
  v67 = *(v96 + 64);
  v68 = v98;
  sub_6932C(v98, v95, &qword_3BE7D8, &qword_2E6EE0);
  sub_6932C(v45, v65 + v66, &qword_3BE7B8, &qword_2E6EC0);
  v69 = v45;
  v71 = v93;
  v70 = v94;
  (*(v93 + 16))(v65 + v67, v64, v94);
  sub_2C3358();
  (*(v71 + 8))(v64, v70);
  sub_69198(v69, &qword_3BE7B8, &qword_2E6EC0);
  return sub_69198(v68, &qword_3BE7D8, &qword_2E6EE0);
}

uint64_t sub_B01F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v136 = a2;
  v135 = sub_2C4728();
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v133 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_6620C(&qword_3BC938, &unk_2E3990);
  __chkstk_darwin(v132);
  v131 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v129 = &v114 - v6;
  v7 = sub_2C29C8();
  v148 = *(v7 - 8);
  v149 = v7;
  __chkstk_darwin(v7);
  v147 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v146 = &v114 - v10;
  v130 = sub_6620C(&qword_3BC940, &qword_2F5A90);
  __chkstk_darwin(v130);
  v128 = &v114 - v11;
  v145 = sub_2C38C8();
  v144 = *(v145 - 8);
  __chkstk_darwin(v145);
  v143 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_2C0D48();
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v114 = (&v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_2C2548();
  v151 = *(v14 - 8);
  v152 = v14;
  __chkstk_darwin(v14);
  v150 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_6620C(&qword_3BCA00, &unk_2E3A40);
  v125 = *(v127 - 8);
  __chkstk_darwin(v127);
  v124 = &v114 - v16;
  v121 = sub_6620C(&qword_3BE850, &unk_2E6F20);
  __chkstk_darwin(v121);
  v126 = &v114 - v17;
  v122 = sub_6620C(&qword_3BE840, &qword_2E6F18);
  __chkstk_darwin(v122);
  v123 = &v114 - v18;
  v153 = sub_1DA078(0x422046463846555CLL);
  v154 = v19;
  sub_7212C(v153, v19, v20);
  v21 = sub_2C3A48();
  v23 = v22;
  v25 = v24;
  LODWORD(v153) = sub_2C3538();
  v26 = sub_2C39A8();
  v28 = v27;
  v30 = v29;
  sub_72180(v21, v23, v25 & 1);

  v31 = sub_2C3A28();
  v33 = v32;
  LOBYTE(v21) = v34;
  sub_72180(v26, v28, v30 & 1);

  v141 = sub_2C39C8();
  v140 = v35;
  v139 = v36;
  v142 = v37;
  sub_72180(v31, v33, v21 & 1);

  v153 = sub_AF250();
  v154 = v38;
  v39 = sub_2C3A48();
  v41 = v40;
  v43 = v42;
  v44 = a1 + *(type metadata accessor for YearInReviewToolbarContent(0) + 28);
  v46 = v150;
  v45 = v151;
  v47 = *(v151 + 104);
  v118 = enum case for ColorScheme.dark(_:);
  v48 = v152;
  v119 = v151 + 104;
  v117 = v47;
  v47(v150);
  v120 = v44;
  LOBYTE(v44) = sub_2C2538();
  v49 = *(v45 + 8);
  v116 = v45 + 8;
  v115 = v49;
  v49(v46, v48);
  if (v44)
  {
    v50 = v114;
    sub_29A87C(v114);
    v51 = sub_2C0CE8();
    (*(v137 + 8))(v50, v138);
  }

  else
  {
    v51 = sub_2C4268();
  }

  v153 = v51;
  v52 = sub_2C39A8();
  v54 = v53;
  v56 = v55;
  sub_72180(v39, v41, v43 & 1);

  v57 = sub_2C3A28();
  v59 = v58;
  v61 = v60;
  sub_72180(v52, v54, v56 & 1);

  v62 = v139;
  v63 = v141;
  v64 = v140;
  v65 = sub_2C39C8();
  v138 = v66;
  v68 = v67;
  v137 = v69;
  sub_72180(v57, v59, v61 & 1);

  sub_72180(v63, v64, v62 & 1);

  sub_2C37F8();
  v70 = v144;
  v71 = v143;
  v72 = v145;
  (*(v144 + 104))(v143, enum case for Font.Leading.tight(_:), v145);
  sub_2C38E8();

  (*(v70 + 8))(v71, v72);
  v73 = v138;
  v74 = sub_2C39E8();
  v76 = v75;
  LOBYTE(v70) = v77;

  sub_72180(v65, v73, v68 & 1);

  sub_2C3868();
  v78 = sub_2C3988();
  v80 = v79;
  LOBYTE(v73) = v81;
  v83 = v82;
  sub_72180(v74, v76, v70 & 1);

  v153 = v78;
  v154 = v80;
  v145 = v80;
  v84 = v73 & 1;
  v155 = v73 & 1;
  v156 = v83;
  v86 = v148;
  v85 = v149;
  v87 = *(v148 + 104);
  v88 = v146;
  v87(v146, enum case for DynamicTypeSize.small(_:), v149);
  v89 = v147;
  v87(v147, enum case for DynamicTypeSize.accessibility1(_:), v85);
  sub_B1B4C();
  result = sub_2C5868();
  if (result)
  {
    LODWORD(v143) = v84;
    v91 = v86;
    v144 = v83;
    v92 = *(v86 + 32);
    v93 = v129;
    v92(v129, v88, v85);
    v94 = v132;
    v92((v93 + *(v132 + 48)), v89, v85);
    v95 = v131;
    sub_6932C(v93, v131, &qword_3BC938, &unk_2E3990);
    v96 = *(v94 + 48);
    v97 = v128;
    v92(v128, v95, v85);
    v147 = v78;
    v98 = *(v91 + 8);
    v98(v95 + v96, v85);
    sub_69130(v93, v95, &qword_3BC938, &unk_2E3990);
    v92((v97 + *(v130 + 36)), (v95 + *(v94 + 48)), v85);
    v98(v95, v85);
    sub_72B74(&qword_3BC960, &qword_3BC940, &qword_2F5A90, &protocol conformance descriptor for ClosedRange<A>);
    v99 = v124;
    sub_2C3F48();
    sub_69198(v97, &qword_3BC940, &qword_2F5A90);
    sub_72180(v147, v145, v143);

    v100 = v150;
    v101 = v152;
    v117(v150, v118, v152);
    v102 = v120;
    v103 = sub_2C2538();
    v115(v100, v101);
    v104 = v134;
    v105 = &enum case for BlendMode.plusLighter(_:);
    if ((v103 & 1) == 0)
    {
      v105 = &enum case for BlendMode.normal(_:);
    }

    v106 = v133;
    v107 = v135;
    (*(v134 + 104))(v133, *v105, v135);
    v108 = v126;
    (*(v104 + 32))(&v126[*(v121 + 36)], v106, v107);
    (*(v125 + 32))(v108, v99, v127);
    KeyPath = swift_getKeyPath();
    v110 = v123;
    v111 = &v123[*(v122 + 36)];
    v112 = sub_6620C(&qword_3BE860, &qword_2E6F30);
    (*(v151 + 16))(v111 + *(v112 + 28), v102, v101);
    *v111 = KeyPath;
    sub_69130(v108, v110, &qword_3BE850, &unk_2E6F20);
    v113 = v136;
    sub_69130(v110, v136, &qword_3BE840, &qword_2E6F18);
    result = sub_6620C(&qword_3BE828, &qword_2E6F10);
    *(v113 + *(result + 36)) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_B1000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[1] = a2;
  v3 = sub_6620C(&qword_3BE870, &qword_2E6F70);
  __chkstk_darwin(v3 - 8);
  v4 = sub_6620C(&unk_3BE758, &qword_2E6E50);
  __chkstk_darwin(v4);
  v6 = v13 - v5;
  v7 = sub_6620C(&qword_3BE818, &qword_2E6F08);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v13 - v9;
  sub_6932C(a1, v6, &unk_3BE758, &qword_2E6E50);
  v11 = sub_B12F4(a1);
  v13[5] = sub_B1C00();
  v13[2] = v11;
  sub_2C2698();
  sub_72B74(&qword_3BE878, &unk_3BE758, &qword_2E6E50, &protocol conformance descriptor for SnapshotImageItem<A>);
  sub_2C4768();
  sub_6620C(&qword_3BE800, &qword_2E7C70);
  sub_72B74(&qword_3BE820, &qword_3BE818, &qword_2E6F08, &protocol conformance descriptor for ShareLink<A, B, C, D>);
  sub_72B74(&unk_3C4390, &qword_3BE800, &qword_2E7C70, &protocol conformance descriptor for Label<A, B>);
  sub_2C4038();
  return (*(v8 + 8))(v10, v7);
}

id sub_B12F4(uint64_t a1)
{
  v15 = a1;
  v1 = sub_6620C(&unk_3BE758, &qword_2E6E50);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - v3;
  v5 = [objc_allocWithZone(LPLinkMetadata) init];
  sub_AF250();
  v6 = sub_2C5888();

  [v5 setTitle:v6];

  sub_1DA078(0x6F4220656C707041);
  v7 = sub_2C5888();

  [v5 setSummary:v7];

  v8 = [objc_allocWithZone(LPImageProperties) init];
  [v8 setType:1];
  v9 = [objc_allocWithZone(NSItemProvider) init];
  sub_6932C(v15, v4, &unk_3BE758, &qword_2E6E50);
  v10 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v11 = swift_allocObject();
  sub_69130(v4, v11 + v10, &unk_3BE758, &qword_2E6E50);
  sub_72B74(&qword_3BE878, &unk_3BE758, &qword_2E6E50, &protocol conformance descriptor for SnapshotImageItem<A>);
  sub_2C5DF8();

  v12 = [objc_allocWithZone(LPImage) initWithItemProvider:v9 properties:v8 placeholderImage:0];
  [v5 setImage:v12];

  return v5;
}

uint64_t sub_B158C()
{
  v3 = sub_1DA078(0x6572616853);
  sub_7212C(v3, v0, v1);
  return sub_2C4308();
}

uint64_t sub_B1600()
{
  v0 = sub_2C4BF8();
  __chkstk_darwin(v0 - 8);
  v1 = sub_2C24B8();
  __chkstk_darwin(v1 - 8);
  v2 = sub_6620C(&qword_3BE7F8, &unk_2E6EF0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8[-1] - v4;
  sub_2C2498();
  sub_2C4BE8();
  sub_2C5598();
  v8[3] = sub_2C5628();
  v8[4] = &protocol witness table for Models.FlowBackAction;
  sub_720C8(v8);
  sub_2C5588();
  sub_2BFC38();
  sub_6620C(&qword_3BE800, &qword_2E7C70);
  sub_72B74(&qword_3BE808, &qword_3BE7F8, &unk_2E6EF0, &protocol conformance descriptor for ActionButton<A>);
  sub_72B74(&unk_3C4390, &qword_3BE800, &qword_2E7C70, &protocol conformance descriptor for Label<A, B>);
  sub_2C4038();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_B1870()
{
  v3 = sub_1DA078(0x65736F6C43);
  sub_7212C(v3, v0, v1);
  return sub_2C4308();
}

unint64_t sub_B18F8()
{
  result = qword_3BE830;
  if (!qword_3BE830)
  {
    sub_718D4(&qword_3BE828, &qword_2E6F10);
    sub_B1984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE830);
  }

  return result;
}

unint64_t sub_B1984()
{
  result = qword_3BE838;
  if (!qword_3BE838)
  {
    sub_718D4(&qword_3BE840, &qword_2E6F18);
    sub_B1A3C();
    sub_72B74(&qword_3BE858, &qword_3BE860, &qword_2E6F30, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE838);
  }

  return result;
}

unint64_t sub_B1A3C()
{
  result = qword_3BE848;
  if (!qword_3BE848)
  {
    sub_718D4(&qword_3BE850, &unk_2E6F20);
    sub_718D4(&qword_3BC940, &qword_2F5A90);
    sub_72B74(&qword_3BC960, &qword_3BC940, &qword_2F5A90, &protocol conformance descriptor for ClosedRange<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE848);
  }

  return result;
}

unint64_t sub_B1B4C()
{
  result = qword_3BC950;
  if (!qword_3BC950)
  {
    sub_2C29C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BC950);
  }

  return result;
}

unint64_t sub_B1BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C4450;
  if (!qword_3C4450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C4450);
  }

  return result;
}

unint64_t sub_B1C00()
{
  result = qword_3C4380;
  if (!qword_3C4380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3C4380);
  }

  return result;
}

uint64_t sub_B1C4C()
{
  v1 = *(sub_6620C(&unk_3BE758, &qword_2E6E50) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_2C1D78();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t MenuStoreService.checkAudiobookAvailability(storeId:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_B1E2C, 0, 0);
}

uint64_t sub_B1E2C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_B1F24;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 6, 0, 0, 0xD000000000000024, 0x8000000000302900, sub_B2230, v3, &type metadata for Bool);
}

uint64_t sub_B1F24()
{

  return _swift_task_switch(sub_B203C, 0, 0);
}

void sub_B2054(uint64_t a1, uint64_t a2)
{
  v3 = sub_6620C(&qword_3BE898, &qword_2E7008);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - v5;
  v7 = objc_opt_self();
  v8 = sub_2C5888();
  (*(v4 + 16))(v6, a1, v3);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  (*(v4 + 32))(v10 + v9, v6, v3);
  aBlock[4] = sub_B2D8C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_B2238;
  aBlock[3] = &unk_38C2D8;
  v11 = _Block_copy(aBlock);

  [v7 checkAudiobookAvailabilityForStoreID:v8 completion:v11];
  _Block_release(v11);
}

uint64_t sub_B2238(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void MenuStoreService.openProductPage(for:resourceType:transaction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [objc_opt_self() sharedInstance];
  if (v5)
  {
    v6 = v5;
    v7 = sub_2C5888();
    [v6 showProductPageForStoreID:v7 resourceType:sub_2BF4B8() transaction:a4 needsAnalyticsLinkData:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t MenuStoreService.showWriteAndReview(storeId:transaction:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return _swift_task_switch(sub_B236C, 0, 0);
}

uint64_t sub_B236C()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[21] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[20];
    v4 = sub_2C5888();
    v0[22] = v4;
    v0[2] = v0;
    v0[7] = v0 + 23;
    v0[3] = sub_B24D4;
    v5 = swift_continuation_init();
    v0[17] = sub_6620C(&qword_3BE890, &qword_2E6F90);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_B2618;
    v0[13] = &unk_38C1F0;
    v0[14] = v5;
    [v2 showWriteAReviewForStoreId:v4 transaction:v3 completion:v0 + 10];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v1);
}

uint64_t sub_B24D4()
{

  return _swift_task_switch(sub_B25B4, 0, 0);
}

uint64_t sub_B25B4()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_B2618(uint64_t a1, char a2)
{
  v3 = *sub_72084((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return _swift_continuation_resume(v3);
}

uint64_t sub_B268C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_B26AC, 0, 0);
}

uint64_t sub_B26AC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_B27A4;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 6, 0, 0, 0xD000000000000024, 0x8000000000302900, sub_B2E48, v3, &type metadata for Bool);
}

uint64_t sub_B27A4()
{

  return _swift_task_switch(sub_B2E4C, 0, 0);
}

uint64_t sub_B28BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_7100C;

  return MenuStoreService.showWriteAndReview(storeId:transaction:)(a1, a2, a3);
}

uint64_t dispatch thunk of StoreServicing.checkAudiobookAvailability(storeId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_B2A98;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_B2A98(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of StoreServicing.showWriteAndReview(storeId:transaction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_7100C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_B2CF8()
{
  v1 = sub_6620C(&qword_3BE898, &qword_2E7008);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_B2D8C(char a1)
{
  sub_6620C(&qword_3BE898, &qword_2E7008);
  sub_6620C(&qword_3BE898, &qword_2E7008);
  return sub_2C5BD8();
}

uint64_t sub_B2E30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_B2E50(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_B2E64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_B2EAC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_B2F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2BE5F8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_2BE5E8();
  sub_B38A0(a4, v8);
  (*(v6 + 8))(v8, v5);
  return sub_2C1838();
}

uint64_t sub_B3030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v21[0] = a3;
  v5 = type metadata accessor for YearInReviewPage(0);
  __chkstk_darwin(v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6620C(&qword_3BE8B0, &qword_2E70B8);
  __chkstk_darwin(v8);
  v10 = v21 - v9;
  sub_B37E0(a1, v7);
  sub_B37E0(v7, v10);
  v11 = type metadata accessor for YearInReviewPageView(0);
  *&v10[*(v11 + 20)] = a2;
  sub_2C1548();
  swift_allocObject();
  swift_retain_n();
  v21[1] = sub_2C1528();
  sub_2C4368();
  sub_B3844(v7);
  v12 = v21[3];
  v13 = &v10[*(v11 + 24)];
  *v13 = v21[2];
  *(v13 + 1) = v12;
  v14 = sub_2BEF68();
  v16 = v15;
  v17 = &v10[*(sub_6620C(&qword_3BE8C8, &unk_2E70C0) + 36)];
  *v17 = v14;
  v17[1] = v16;
  v17[2] = a2;
  v18 = *(v8 + 36);

  sub_D5760(v19, a2, &v10[v18]);
  sub_B35B0();
  sub_2C3DA8();
  return sub_69198(v10, &qword_3BE8B0, &qword_2E70B8);
}

uint64_t sub_B323C@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = sub_2BFEC8();
  __chkstk_darwin(v2 - 8);
  v3 = sub_6620C(&qword_3BE8A0, &qword_2E70A8);
  v4 = *(v3 - 8);
  v20 = v3;
  v21 = v4;
  __chkstk_darwin(v3);
  v6 = v19 - v5;
  v7 = v1[1];
  v9 = v1[2];
  v25 = *v1;
  v8 = v25;
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = v7;
  v10[4] = v9;
  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = v7;
  v11[4] = v9;
  swift_retain_n();
  swift_retain_n();
  sub_2BFEB8();
  v19[1] = sub_6620C(&qword_3BE8A8, &qword_2E70B0);
  sub_2C1AD8();
  v12 = sub_2C1848();
  sub_81078(v12, v13, v14);
  v15 = sub_718D4(&qword_3BE8B0, &qword_2E70B8);
  v16 = sub_B35B0();
  v23 = v15;
  v24 = v16;
  swift_getOpaqueTypeConformance2();
  sub_B3D70(&qword_3BE8E8, &type metadata accessor for YearInReviewLoadingView, &protocol conformance descriptor for YearInReviewLoadingView);
  sub_B3D70(&qword_3BE8F0, &type metadata accessor for YearInReviewErrorView, &protocol conformance descriptor for YearInReviewErrorView);
  sub_2BFBE8();
  sub_B377C();
  v17 = v20;
  sub_2C3CB8();
  return (*(v21 + 8))(v6, v17);
}

uint64_t sub_B3564()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_B35B0()
{
  result = qword_3BE8B8;
  if (!qword_3BE8B8)
  {
    sub_718D4(&qword_3BE8B0, &qword_2E70B8);
    sub_B366C();
    sub_B3D70(&qword_3BE8E0, type metadata accessor for PageLifeCycleViewModifier, &unk_2E9198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE8B8);
  }

  return result;
}

unint64_t sub_B366C()
{
  result = qword_3BE8C0;
  if (!qword_3BE8C0)
  {
    sub_718D4(&qword_3BE8C8, &unk_2E70C0);
    v3 = sub_B3D70(&qword_3BE8D0, type metadata accessor for YearInReviewPageView, &unk_2EF888);
    sub_B3728(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE8C0);
  }

  return result;
}

unint64_t sub_B3728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BE8D8;
  if (!qword_3BE8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE8D8);
  }

  return result;
}

unint64_t sub_B377C()
{
  result = qword_3BE8F8;
  if (!qword_3BE8F8)
  {
    sub_718D4(&qword_3BE8A0, &qword_2E70A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE8F8);
  }

  return result;
}

uint64_t sub_B37E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for YearInReviewPage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_B3844(uint64_t a1)
{
  v2 = type metadata accessor for YearInReviewPage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_B38A0(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v3 = sub_2BE498();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_2BE4D8();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  v14 = sub_2BE698();
  __chkstk_darwin(v14 - 8);
  v15 = sub_6620C(&qword_3BC418, &unk_2E9200);
  __chkstk_darwin(v15 - 8);
  v17 = &v29 - v16;
  v18 = sub_2BE588();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2BE608();
  v29 = a1;
  sub_2BE3E8();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_69198(v17, &qword_3BC418, &unk_2E9200);
    if (qword_3BB8B8 != -1)
    {
      swift_once();
    }

    v22 = sub_2C00B8();
    sub_57AD8(v22, qword_3C32C0);
    v23 = sub_2C0098();
    v24 = sub_2C5DC8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      *(v25 + 4) = v29;
      _os_log_impl(&dword_0, v23, v24, "Failed to create date for last day of '%ld'.", v25, 0xCu);
    }

    return 0;
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    sub_2BE198();
    sub_2BE488();
    sub_2BE448();
    (*(v30 + 8))(v5, v31);
    v27 = *(v32 + 8);
    v28 = v34;
    v27(v7, v34);
    sub_2BE4C8();
    v27(v10, v28);
    sub_B3D70(&qword_3BE900, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
    sub_2BE568();
    v27(v13, v28);
    (*(v19 + 8))(v21, v18);
    return v35;
  }
}

uint64_t sub_B3D70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_B3DB8()
{
  sub_718D4(&qword_3BE8A0, &qword_2E70A8);
  sub_B377C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_B3E20(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(result + 16);
  if (v4)
  {
    for (i = (result + 40); ; i += 2)
    {
      v8 = *i;
      v9[0] = *(i - 1);
      v9[1] = v8;

      sub_B40E4(v9, a2, a3);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_B3EB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = sub_2C3308();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CodeAXTraits(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_72084(a1, a1[3]);
  sub_2C6798();
  if (!v2)
  {
    v13 = v4;
    v14 = v5;
    sub_72084(v16, v16[3]);
    sub_6620C(&qword_3BCA70, &unk_2E7120);
    sub_B4C88();
    sub_2C65E8();
    v11 = v16[6];
    sub_2C32F8();
    sub_B3E20(v11, v7, v16);

    (*(v14 + 32))(v10, v7, v13);
    sub_68CD0(v16);
    sub_B4D04(v10, v15);
  }

  return sub_68CD0(a1);
}

uint64_t sub_B40E4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2C3308();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v11 = v9 == 0x6E6F747475427369 && v10 == 0xE800000000000000;
  if (v11 || (sub_2C65B8() & 1) != 0)
  {
    sub_2C32A8();
LABEL_7:
    sub_2C32E8();
    return (*(v6 + 8))(v8, v5);
  }

  if (v9 == 0x7265646165487369 && v10 == 0xE800000000000000 || (sub_2C65B8() & 1) != 0)
  {
    sub_2C32B8();
    goto LABEL_7;
  }

  if (v9 == 0x7463656C65537369 && v10 == 0xEA00000000006465 || (sub_2C65B8() & 1) != 0)
  {
    sub_2C31D8();
    goto LABEL_7;
  }

  if (v9 == 0x6B6E694C7369 && v10 == 0xE600000000000000 || (sub_2C65B8() & 1) != 0)
  {
    sub_2C3278();
    goto LABEL_7;
  }

  if (v9 == 0x6863726165537369 && v10 == 0xED0000646C656946 || (sub_2C65B8() & 1) != 0)
  {
    sub_2C3218();
    goto LABEL_7;
  }

  if (v9 == 0x6567616D497369 && v10 == 0xE700000000000000 || (sub_2C65B8() & 1) != 0)
  {
    sub_2C3288();
    goto LABEL_7;
  }

  if (v9 == 0x756F537379616C70 && v10 == 0xEA0000000000646ELL || (sub_2C65B8() & 1) != 0)
  {
    sub_2C31E8();
    goto LABEL_7;
  }

  if (v9 == 0x616F6279654B7369 && v10 == 0xED000079654B6472 || (sub_2C65B8() & 1) != 0)
  {
    sub_2C3208();
    goto LABEL_7;
  }

  if (v9 == 0x6369746174537369 && v10 == 0xEC00000074786554 || (sub_2C65B8() & 1) != 0)
  {
    sub_2C31F8();
    goto LABEL_7;
  }

  if (v9 == 0xD000000000000010 && 0x8000000000302930 == v10 || (sub_2C65B8() & 1) != 0)
  {
    sub_2C3238();
    goto LABEL_7;
  }

  if (v9 == 0xD000000000000011 && 0x8000000000302950 == v10 || (sub_2C65B8() & 1) != 0)
  {
    sub_2C3248();
    goto LABEL_7;
  }

  if (v9 == 0xD000000000000012 && 0x8000000000302970 == v10 || (sub_2C65B8() & 1) != 0)
  {
    sub_2C3258();
    goto LABEL_7;
  }

  if (v9 == 0xD000000000000017 && 0x8000000000302990 == v10 || (sub_2C65B8() & 1) != 0)
  {
    sub_2C3268();
    goto LABEL_7;
  }

  if (v9 == 0x6150736573756163 && v10 == 0xEE006E7275546567 || (sub_2C65B8() & 1) != 0)
  {
    sub_2C3228();
    goto LABEL_7;
  }

  if (v9 == 0x6C61646F4D7369 && v10 == 0xE700000000000000 || (sub_2C65B8() & 1) != 0)
  {
    sub_2C3298();
    goto LABEL_7;
  }

  if (v9 == 0x656C67676F547369 && v10 == 0xE800000000000000 || (sub_2C65B8() & 1) != 0)
  {
    sub_2C32D8();
    goto LABEL_7;
  }

  if (v9 == 0x7261426261547369 && v10 == 0xE800000000000000 || (sub_2C65B8() & 1) != 0)
  {
    sub_2C32C8();
    goto LABEL_7;
  }

  sub_691F8(a3, v16);
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_2C61F8(21);

  v14 = 0xD000000000000012;
  v15 = 0x80000000003029B0;
  v17._countAndFlagsBits = v9;
  v17._object = v10;
  sub_2C5978(v17);
  v18._countAndFlagsBits = 39;
  v18._object = 0xE100000000000000;
  sub_2C5978(v18);
  sub_2C6238();
  swift_allocError();
  sub_2C6218();

  sub_68CD0(v16);
  return swift_willThrow();
}

uint64_t sub_B4774@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __chkstk_darwin(a1);
  v5 = &v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_691F8(v6, v10);
  sub_B3EB8(v10, v5);
  sub_68CD0(a1);
  v7 = sub_2C3308();
  return (*(*(v7 - 8) + 32))(a2, v5, v7);
}

uint64_t sub_B4860@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_6620C(&qword_3BE910, &qword_2E7470);
  __chkstk_darwin(v5 - 8);
  v24 = &v22 - v6;
  v7 = sub_6620C(&qword_3BE918, &unk_2E7130);
  __chkstk_darwin(v7 - 8);
  v26 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v22 - v10;
  v12 = sub_2C3308();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v15 = a2;
  v14(a2, 1, 1, v12);
  sub_691F8(a1, v25);
  v16 = type metadata accessor for CodeAXTraits(0);
  sub_B4DD8();
  sub_2C60C8();
  sub_68CD0(a1);
  if (v2)
  {
    return sub_B4EC0(v15, type metadata accessor for _CodeAXTraits_OrNil);
  }

  v23 = v14;
  v18 = v24;
  v19 = v15;
  v20 = v26;
  sub_B4E50(v11, v26);
  if ((*(*(v16 - 8) + 48))(v20, 1, v16) == 1)
  {
    sub_69198(v20, &qword_3BE918, &unk_2E7130);
    v21 = 1;
  }

  else
  {
    (*(v13 + 16))(v18, v20, v12);
    sub_B4EC0(v20, type metadata accessor for CodeAXTraits);
    v21 = 0;
  }

  v23(v18, v21, 1, v12);
  return sub_B4D68(v18, v19);
}

uint64_t sub_B4B2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __chkstk_darwin(a1);
  v5 = &v9[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2C3308();
  (*(*(v6 - 8) + 56))(a2, 1, 1, v6);
  sub_691F8(a1, v9);
  sub_B4860(v9, v5);
  sub_68CD0(a1);
  return sub_B4D68(v5, a2);
}

unint64_t sub_B4C88()
{
  result = qword_3BE908;
  if (!qword_3BE908)
  {
    sub_718D4(&qword_3BCA70, &unk_2E7120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE908);
  }

  return result;
}

uint64_t sub_B4D04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CodeAXTraits(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_B4D68(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BE910, &qword_2E7470);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_B4DD8()
{
  result = qword_3BE920;
  if (!qword_3BE920)
  {
    type metadata accessor for CodeAXTraits(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE920);
  }

  return result;
}

uint64_t sub_B4E50(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BE918, &unk_2E7130);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_B4EC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_B4F34(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C3308();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_B4FB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C3308();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_B5050(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BE910, &qword_2E7470);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_B50DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BE910, &qword_2E7470);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_B5170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_B51E0(uint64_t a1)
{
  if (!qword_3BEA20)
  {
    sub_2C3308();
    v1 = sub_2C60B8();
    if (!v2)
    {
      atomic_store(v1, &qword_3BEA20);
    }
  }
}

void *sub_B5238(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v13 = &v27 - v12;
  __chkstk_darwin(v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = sub_2C5D48();
  if (!v19)
  {
    return sub_2C5B58();
  }

  v41 = v19;
  v45 = sub_2C62E8();
  v32 = sub_2C62F8();
  sub_2C6298(v41);
  result = sub_2C5D18();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_2C5D88();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_2C62D8();
      result = sub_2C5D68();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t MCatalogRequestIntentHandler.fetch<A>(resources:relationships:views:additionalParameters:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[14] = a5;
  v7[15] = a6;
  v7[12] = a3;
  v7[13] = a4;
  v7[10] = a1;
  v7[11] = a2;
  v9 = sub_2BF5E8();
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();
  v12 = type metadata accessor for MCatalogRequestIntent(0, a6, v10, v11);
  v7[19] = v12;
  v7[20] = *(v12 - 8);
  v13 = swift_task_alloc();
  v14 = *v6;
  v7[21] = v13;
  v7[22] = v14;
  v15 = sub_6620C(&qword_3BD1F0, &unk_2F55C0);
  v16 = swift_task_alloc();
  v7[23] = v16;
  *v16 = v7;
  v16[1] = sub_B57E0;

  return BaseObjectGraph.inject<A>(_:)(v7 + 2, v15, v15);
}

uint64_t sub_B57E0()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_B5D70;
  }

  else
  {
    v2 = sub_B58F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_B58F4()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  (*(v0[17] + 16))(v2, v0[14], v0[16]);
  sub_15E5F4(0xD000000000000015, 0x80000000003029D0, v7, v6, v5, v4, v2, v3, v1);
  v8 = v0[5];
  v9 = v0[6];
  sub_72084(v0 + 2, v8);

  v10 = swift_task_alloc();
  v0[25] = v10;
  WitnessTable = swift_getWitnessTable();
  *v10 = v0;
  v10[1] = sub_B5A7C;
  v12 = v0[21];
  v13 = v0[22];
  v14 = v0[19];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 7, v12, v13, v14, WitnessTable, v8, v9);
}

uint64_t sub_B5A7C()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_B5DE0;
  }

  else
  {
    v2 = sub_B5B90;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_B5B90()
{
  v2 = v0[20];
  v1 = v0[21];
  v13 = v0[19];
  v3 = v0[15];
  v0[8] = v0[7];
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  sub_2C1088();
  v5 = sub_2C5B98();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_B5238(sub_B5EF0, v4, v5, TupleTypeMetadata2, &type metadata for Never, WitnessTable, &protocol witness table for Never, v8);

  v0[9] = v9;
  sub_2C5B98();
  swift_getWitnessTable();
  v10 = sub_2C57F8();
  (*(v2 + 8))(v1, v13);
  sub_68CD0(v0 + 2);

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_B5D70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_B5DE0()
{
  (*(v0[20] + 8))(v0[21], v0[19]);
  sub_68CD0(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_B5E70@<X0>(uint64_t *a2@<X8>)
{
  sub_2C1088();
  v3 = sub_2C1078();
  v4 = sub_2BFAE8();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
  result = sub_2C1078();
  a2[2] = result;
  return result;
}

uint64_t sub_B5F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_B5FE4;

  return MCatalogRequestIntentHandler.fetch<A>(resources:relationships:views:additionalParameters:metadata:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_B5FE4(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_B6118(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_6620C(&qword_3BDF58, &unk_2E5B70);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for _CodeImageScale_OrNil(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[12];
    goto LABEL_11;
  }

  v13 = sub_6620C(&qword_3BEA50, &qword_2E7290);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[15];
    goto LABEL_11;
  }

  v15 = sub_6620C(&qword_3BEA58, &qword_2E7298);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[20];

  return v16(v17, a2, v15);
}

uint64_t sub_B6324(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = sub_6620C(&qword_3BDF58, &unk_2E5B70);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for _CodeImageScale_OrNil(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[12];
    goto LABEL_9;
  }

  v13 = sub_6620C(&qword_3BEA50, &qword_2E7290);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[15];
    goto LABEL_9;
  }

  v15 = sub_6620C(&qword_3BEA58, &qword_2E7298);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[20];

  return v16(v17, a2, a2, v15);
}

void sub_B651C(uint64_t a1)
{
  sub_A62E4();
  if (v1 <= 0x3F)
  {
    sub_A6360(319);
    if (v2 <= 0x3F)
    {
      sub_BB240(319, &qword_3BE2D8, &type metadata accessor for ImpressionMetrics, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_BB2A4(319, &qword_3BE2E0, &type metadata for String, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_BB2A4(319, &qword_3BEAC8, &type metadata for Bool, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_BB2A4(319, &qword_3BEAD0, &type metadata for TextComponentModel.SymbolImageSpec, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              type metadata accessor for _CodeImageScale_OrNil(319);
              if (v7 <= 0x3F)
              {
                sub_BB240(319, &qword_3BEAD8, &type metadata accessor for FontSpec, &type metadata accessor for Optional);
                if (v8 <= 0x3F)
                {
                  sub_BB2A4(319, &qword_3BEAE0, &type metadata for CGFloat, &type metadata accessor for Optional);
                  if (v9 <= 0x3F)
                  {
                    sub_BB2A4(319, &qword_3BEAE8, &type metadata for Int, &type metadata accessor for Optional);
                    if (v10 <= 0x3F)
                    {
                      sub_BB240(319, &qword_3BEAF0, type metadata accessor for _CodeAXTraits_OrNil, &type metadata accessor for DiscardOnError);
                      if (v11 <= 0x3F)
                      {
                        sub_BB2A4(319, &unk_3BEAF8, &type metadata for TintColorInfo, &type metadata accessor for Optional);
                        if (v12 <= 0x3F)
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
    }
  }
}

uint64_t sub_B6818(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_B6860(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_B68C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BEB68, &qword_2E72E8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_B6950(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BEB68, &qword_2E72E8);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_B69CC(uint64_t a1)
{
  sub_BB240(319, &unk_3BEBD8, &type metadata accessor for Image.Scale, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_B6A68@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v24 = sub_6620C(&qword_3BEC10, &qword_2E7448);
  __chkstk_darwin(v24);
  v3 = &v22 - v2;
  v23 = sub_6620C(&qword_3BEC18, &qword_2E7450);
  __chkstk_darwin(v23);
  v5 = &v22 - v4;
  v6 = sub_6620C(&qword_3BEC20, &qword_2E7458);
  v22 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v22 - v7;
  v9 = sub_6620C(&unk_3C4370, &qword_2E7460);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  v12 = sub_2BE3B8();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v22 - v17;
  if (!*(v1 + *(type metadata accessor for TextComponentModel(0) + 76) + 8))
  {
    goto LABEL_4;
  }

  sub_2BE3A8();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_69198(v11, &unk_3C4370, &qword_2E7460);
LABEL_4:
    sub_B6EF4(v3);
    sub_B9A74(v3, v5);
    swift_storeEnumTagMultiPayload();
    sub_72B74(&qword_3BEC28, &qword_3BEC20, &qword_2E7458, &protocol conformance descriptor for Link<A>);
    sub_B9AE4();
    sub_2C33C8();
    return sub_B9C10(v3);
  }

  (*(v13 + 32))(v18, v11, v12);
  v20 = (*(v13 + 16))(v15, v18, v12);
  __chkstk_darwin(v20);
  *(&v22 - 2) = v1;
  sub_B9AE4();
  sub_2C3938();
  v21 = v22;
  (*(v22 + 16))(v5, v8, v6);
  swift_storeEnumTagMultiPayload();
  sub_72B74(&qword_3BEC28, &qword_3BEC20, &qword_2E7458, &protocol conformance descriptor for Link<A>);
  sub_2C33C8();
  (*(v21 + 8))(v8, v6);
  return (*(v13 + 8))(v18, v12);
}

uint64_t sub_B6EF4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v3 = type metadata accessor for _CodeAXTraits_OrNil(0);
  __chkstk_darwin(v3 - 8);
  v38 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_6620C(&qword_3BEA58, &qword_2E7298);
  __chkstk_darwin(v5 - 8);
  v35 = &v34 - v6;
  v7 = sub_6620C(&qword_3BE910, &qword_2E7470);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - v8;
  v34 = sub_2C3308();
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v40 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2C3678();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_6620C(&qword_3BEC38, &qword_2E7468);
  __chkstk_darwin(v15);
  v17 = &v34 - v16;
  v18 = sub_6620C(&qword_3BEC48, &qword_2E7478);
  v41 = *(v18 - 8);
  v42 = v18;
  __chkstk_darwin(v18);
  v20 = &v34 - v19;
  *v17 = sub_2C3178();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v21 = sub_6620C(&qword_3BEC50, &qword_2E7480);
  sub_B7680(v2, &v17[*(v21 + 44)]);
  sub_2C3658();
  v22 = sub_72B74(&qword_3BEC40, &qword_3BEC38, &qword_2E7468, &protocol conformance descriptor for HStack<A>);
  v39 = v15;
  v36 = v22;
  sub_2C3FA8();
  (*(v12 + 8))(v14, v11);
  v23 = v34;
  sub_69198(v17, &qword_3BEC38, &qword_2E7468);
  v24 = type metadata accessor for TextComponentModel(0);
  v25 = v35;
  sub_6932C(&v2[*(v24 + 80)], v35, &qword_3BEA58, &qword_2E7298);
  v26 = v25;
  v27 = v38;
  sub_BA900(v26, v38, type metadata accessor for _CodeAXTraits_OrNil);
  sub_69130(v27, v9, &qword_3BE910, &qword_2E7470);
  v28 = v37;
  v29 = *(v37 + 48);
  if (v29(v9, 1, v23) == 1)
  {
    v44 = _swiftEmptyArrayStorage;
    sub_B99B8(&qword_3BEC58, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
    v30 = v40;
    v38 = v9;
    sub_6620C(&qword_3BEC60, &qword_2E7488);
    sub_72B74(&qword_3BEC68, &qword_3BEC60, &qword_2E7488, &protocol conformance descriptor for [A]);
    v31 = v38;
    sub_2C6158();
    if (v29(v31, 1, v23) != 1)
    {
      sub_69198(v31, &qword_3BE910, &qword_2E7470);
    }
  }

  else
  {
    v30 = v40;
    (*(v28 + 32))(v40, v9, v23);
  }

  v44 = v39;
  v45 = v36;
  swift_getOpaqueTypeConformance2();
  v32 = v42;
  sub_2C3FE8();
  (*(v28 + 8))(v30, v23);
  return (*(v41 + 8))(v20, v32);
}

uint64_t sub_B74C4()
{
  if (*v0)
  {
    return 0x6D65747379537369;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_B74F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_2C65B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D65747379537369 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2C65B8();

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

uint64_t sub_B75D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BAB2C(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_B7610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BAB2C(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_B764C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_B9CC8(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_B7680@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v86 = sub_6620C(&qword_3BEC70, &qword_2E7490);
  __chkstk_darwin(v86);
  v4 = &v80 - v3;
  v87 = type metadata accessor for HTMLText(0);
  __chkstk_darwin(v87);
  v82 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6620C(&qword_3BEC78, &qword_2E7498);
  __chkstk_darwin(v6 - 8);
  v8 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v93 = &v80 - v10;
  v11 = sub_6620C(&qword_3BEC80, &qword_2E74A0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v84 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v80 - v15;
  v17 = sub_6620C(&qword_3BEC88, &qword_2E74A8);
  __chkstk_darwin(v17 - 8);
  v89 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v91 = &v80 - v20;
  __chkstk_darwin(v21);
  v23 = &v80 - v22;
  __chkstk_darwin(v24);
  v26 = &v80 - v25;
  v27 = type metadata accessor for TextComponentModel(0);
  v28 = v27[10];
  v88 = a1;
  v29 = &a1[v28];
  v30 = *(v29 + 1);
  v92 = v8;
  if (v30)
  {
    v85 = v11;
    v83 = v23;
    v31 = v29[16];

    v33 = v26;
    if (v31)
    {
      sub_2C42B8();
    }

    else
    {
      v39 = BSUIBundle(v32);
      sub_2C42E8();
    }

    v40 = sub_2C3A58();
    v42 = v41;
    v94 = v40;
    v95 = v41;
    v44 = v43 & 1;
    v96 = v43 & 1;
    v97 = v45;
    sub_2C3F88();
    sub_72180(v40, v42, v44);

    v26 = v33;
    sub_69130(v16, v33, &qword_3BEC80, &qword_2E74A0);
    v34 = *(v12 + 56);
    v38 = v85;
    v35 = (v34)(v33, 0, 1, v85);
    v23 = v83;
  }

  else
  {
    v34 = *(v12 + 56);
    v35 = (v34)(v26, 1, 1, v11);
    v38 = v11;
  }

  v46 = v88;
  v47 = v88[v27[9]];
  if (v47 == 2 || (v47 & 1) == 0)
  {
    v55 = &v88[v27[7]];
    v56 = v55[1];
    v94 = *v55;
    v95 = v56;
    sub_7212C(v35, v36, v37);

    *v4 = sub_2C3A48();
    *(v4 + 1) = v57;
    v4[16] = v58 & 1;
    *(v4 + 3) = v59;
    swift_storeEnumTagMultiPayload();
    sub_B99B8(&qword_3BEC90, type metadata accessor for HTMLText, &unk_2E77AC);
    sub_2C33C8();
  }

  else
  {
    v48 = &v88[v27[7]];
    v49 = *(v48 + 1);
    v81 = *v48;
    v83 = v49;
    v50 = v27[15];
    v85 = v38;
    v51 = v87;
    v52 = v82;
    sub_6932C(&v88[v50], &v82[*(v87 + 20)], &qword_3BEA50, &qword_2E7290);
    *v52 = v81;
    v52[1] = v49;
    v53 = *(v51 + 24);
    *(v52 + v53) = swift_getKeyPath();
    sub_6620C(&qword_3BECA0, &qword_2E74E8);
    swift_storeEnumTagMultiPayload();
    v54 = v52 + *(v51 + 28);
    *v54 = swift_getKeyPath();
    v54[8] = 0;
    sub_BAAC4(v52, v4, type metadata accessor for HTMLText);
    swift_storeEnumTagMultiPayload();
    sub_B99B8(&qword_3BEC90, type metadata accessor for HTMLText, &unk_2E77AC);

    v38 = v85;
    sub_2C33C8();
    sub_BA84C(v52, type metadata accessor for HTMLText);
  }

  v60 = v46 + v27[11];
  if (*(v60 + 8))
  {
    v88 = v34;
    v61 = *(v60 + 16);

    v63 = v38;
    if (v61)
    {
      sub_2C42B8();
    }

    else
    {
      v65 = BSUIBundle(v62);
      sub_2C42E8();
    }

    v66 = sub_2C3A58();
    v68 = v67;
    v94 = v66;
    v95 = v67;
    v70 = v69 & 1;
    v96 = v69 & 1;
    v97 = v71;
    v72 = v84;
    sub_2C3F88();
    sub_72180(v66, v68, v70);

    sub_69130(v72, v23, &qword_3BEC80, &qword_2E74A0);
    v64 = 0;
    v38 = v63;
    v34 = v88;
  }

  else
  {
    v64 = 1;
  }

  (v34)(v23, v64, 1, v38);
  v73 = v91;
  sub_6932C(v26, v91, &qword_3BEC88, &qword_2E74A8);
  v74 = v92;
  v75 = v93;
  sub_6932C(v93, v92, &qword_3BEC78, &qword_2E7498);
  v88 = v26;
  v76 = v89;
  sub_6932C(v23, v89, &qword_3BEC88, &qword_2E74A8);
  v77 = v90;
  sub_6932C(v73, v90, &qword_3BEC88, &qword_2E74A8);
  v78 = sub_6620C(&qword_3BEC98, &qword_2E74B0);
  sub_6932C(v74, v77 + *(v78 + 48), &qword_3BEC78, &qword_2E7498);
  sub_6932C(v76, v77 + *(v78 + 64), &qword_3BEC88, &qword_2E74A8);
  sub_69198(v23, &qword_3BEC88, &qword_2E74A8);
  sub_69198(v75, &qword_3BEC78, &qword_2E7498);
  sub_69198(v88, &qword_3BEC88, &qword_2E74A8);
  sub_69198(v76, &qword_3BEC88, &qword_2E74A8);
  sub_69198(v74, &qword_3BEC78, &qword_2E7498);
  return sub_69198(v73, &qword_3BEC88, &qword_2E74A8);
}

uint64_t sub_B7EE4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6575676573;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 1954047348;
      break;
    case 4:
      result = 0x6666755374786574;
      break;
    case 5:
      result = 0x4C4D54487369;
      break;
    case 6:
      result = 0x53676E696461656CLL;
      break;
    case 7:
      result = 0x676E696C69617274;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x6E656D6E67696C61;
      break;
    case 10:
      result = 0x6F6C6F4374786574;
      break;
    case 11:
      result = 0x63657053746E6F66;
      break;
    case 12:
      result = 0x6964646150706F74;
      break;
    case 13:
      result = 0x61506D6F74746F62;
      break;
    case 14:
      result = 0x696D694C656E696CLL;
      break;
    case 15:
      result = 7107189;
      break;
    case 16:
      result = 0x7374696172547861;
      break;
    case 17:
      result = 0x6F666E49746E6974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_B811C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v68 = sub_6620C(&qword_3BEA58, &qword_2E7298);
  __chkstk_darwin(v68);
  v69 = &v64 - v3;
  v4 = sub_6620C(&qword_3BEA50, &qword_2E7290);
  __chkstk_darwin(v4 - 8);
  v71 = &v64 - v5;
  v72 = type metadata accessor for _CodeImageScale_OrNil(0);
  __chkstk_darwin(v72);
  v73 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&qword_3BDF58, &unk_2E5B70);
  __chkstk_darwin(v7 - 8);
  v9 = &v64 - v8;
  v76 = sub_6620C(&qword_3BECA8, &qword_2E7528);
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v11 = &v64 - v10;
  v12 = type metadata accessor for TextComponentModel(0);
  __chkstk_darwin(v12);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v14 + 40) = 0u;
  v80 = 0;
  v78 = 0u;
  v79 = 0u;
  *(v14 + 56) = 0u;
  *(v14 + 9) = 0;
  sub_A9708(&v78, (v14 + 40), &unk_3BDC90, &unk_2E5620);
  v15 = sub_72084(a1, a1[3]);
  sub_BA7F8(v15, v16, v17);
  v75 = v11;
  v18 = v77;
  sub_2C67A8();
  if (v18)
  {
    sub_68CD0(a1);
    return sub_69198((v14 + 40), &qword_3BE370, &qword_2E7520);
  }

  else
  {
    v64 = v9;
    v65 = v14;
    v77 = v14 + 40;
    v66 = v12;
    v67 = a1;
    sub_6620C(&qword_3BE378, &qword_2E5DB0);
    v81 = 0;
    sub_72B74(&qword_3BE390, &qword_3BE378, &qword_2E5DB0, &protocol conformance descriptor for CodeAnyHashable<A>);
    sub_2C64A8();
    v19 = v79;
    v20 = v65;
    *v65 = v78;
    v20[1] = v19;
    *(v20 + 4) = v80;
    sub_6620C(&qword_3BE370, &qword_2E7520);
    v81 = 1;
    sub_72B74(&qword_3BE398, &qword_3BE370, &qword_2E7520, &protocol conformance descriptor for _CodeByKind_OrNil<A>);
    sub_2C64A8();
    sub_A9708(&v78, v77, &qword_3BE370, &qword_2E7520);
    sub_2C5018();
    LOBYTE(v78) = 2;
    sub_B99B8(&qword_3BE3A0, &type metadata accessor for ImpressionMetrics, &protocol conformance descriptor for ImpressionMetrics);
    v21 = v64;
    sub_2C6458();
    v22 = v66;
    sub_69130(v21, v20 + v66[6], &qword_3BDF58, &unk_2E5B70);
    LOBYTE(v78) = 3;
    v23 = sub_2C6468();
    v24 = (v20 + v22[7]);
    *v24 = v23;
    v24[1] = v25;
    LOBYTE(v78) = 4;
    v26 = sub_2C6418();
    v27 = (v20 + v22[8]);
    *v27 = v26;
    v27[1] = v28;
    LOBYTE(v78) = 5;
    v29 = sub_2C6428();
    *(v20 + v22[9]) = v29;
    v81 = 6;
    sub_BA8AC(v29, v30, v31);
    sub_2C6458();
    v32 = v79;
    v33 = v20 + v22[10];
    *v33 = v78;
    v33[16] = v32;
    v81 = 7;
    sub_2C6458();
    v34 = v79;
    v35 = v20 + v66[11];
    *v35 = v78;
    v35[16] = v34;
    LOBYTE(v78) = 8;
    sub_B99B8(&qword_3BECC0, type metadata accessor for _CodeImageScale_OrNil, &unk_2E7308);
    v36 = v73;
    sub_2C64A8();
    v37 = sub_BA900(v36, v20 + v66[12], type metadata accessor for _CodeImageScale_OrNil);
    v81 = 9;
    sub_A9818(v37, v38, v39);
    sub_2C64A8();
    *(v65 + v66[13]) = v78;
    LOBYTE(v78) = 10;
    v40 = sub_2C6418();
    v41 = (v65 + v66[14]);
    *v41 = v40;
    v41[1] = v42;
    sub_2C2368();
    LOBYTE(v78) = 11;
    sub_B99B8(&qword_3BECC8, &type metadata accessor for FontSpec, &protocol conformance descriptor for FontSpec);
    sub_2C6458();
    v43 = sub_69130(v71, v65 + v66[15], &qword_3BEA50, &qword_2E7290);
    v81 = 12;
    sub_BA968(v43, v44, v45);
    sub_2C6458();
    v46 = BYTE8(v78);
    v47 = v65 + v66[16];
    *v47 = v78;
    v47[8] = v46;
    v81 = 13;
    sub_2C6458();
    v48 = BYTE8(v78);
    v49 = v65 + v66[17];
    *v49 = v78;
    v49[8] = v48;
    LOBYTE(v78) = 14;
    v50 = sub_2C6448();
    v51 = v65 + v66[18];
    *v51 = v50;
    v51[8] = v52 & 1;
    LOBYTE(v78) = 15;
    v53 = sub_2C6418();
    v54 = (v65 + v66[19]);
    *v54 = v53;
    v54[1] = v55;
    LOBYTE(v78) = 16;
    sub_BA9BC();
    sub_2C64A8();
    v56 = sub_69130(v69, v65 + v66[20], &qword_3BEA58, &qword_2E7298);
    v81 = 17;
    sub_BAA70(v56, v57, v58);
    sub_2C6458();
    (*(v74 + 8))(v75, v76);
    v59 = v80;
    v60 = v65;
    v61 = v65 + v66[21];
    v62 = v79;
    *v61 = v78;
    *(v61 + 1) = v62;
    *(v61 + 4) = v59;
    sub_BAAC4(v60, v70, type metadata accessor for TextComponentModel);
    sub_68CD0(v67);
    return sub_BA84C(v60, type metadata accessor for TextComponentModel);
  }
}

uint64_t sub_B8F6C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_B9EA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_B8FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BA7F8(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_B8FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BA7F8(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_B907C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_6620C(&qword_3BEA50, &qword_2E7290);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = sub_2BE2E8();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for HTMLText(0);
  sub_6932C(v1 + *(v7 + 20), v5, &qword_3BEA50, &qword_2E7290);
  v8 = sub_2C2368();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v5, 1, v8);

  if (v10 == 1)
  {
    sub_69198(v5, &qword_3BEA50, &qword_2E7290);
    sub_2C37F8();
  }

  else
  {
    sub_2C2358();
    (*(v9 + 8))(v5, v8);
  }

  sub_2BE2D8();
  result = sub_2C3A38();
  *a1 = result;
  *(a1 + 8) = v12;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v14;
  return result;
}

uint64_t sub_B925C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = sub_2C42D8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CodeImageScale(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_72084(a1, a1[3]);
  sub_2C6798();
  if (!v2)
  {
    v34 = v5;
    v35 = a1;
    v32 = v10;
    v33 = v7;
    v11 = v38;
    sub_72084(v36, v37);
    v12 = sub_2C65D8();
    v16 = v12;
    v17 = v13;
    if (v12 == 0x6C6C616D73 && v13 == 0xE500000000000000)
    {

      v24 = &enum case for Image.Scale.small(_:);
      v20 = v11;
      v21 = v4;
      v26 = v33;
      v25 = v34;
      v22 = v32;
      v23 = v35;
      goto LABEL_17;
    }

    v19 = sub_2C65B8();
    v20 = v11;
    v21 = v4;
    v22 = v32;
    v23 = v35;
    if (v19)
    {

      v24 = &enum case for Image.Scale.small(_:);
      v26 = v33;
      v25 = v34;
LABEL_17:
      (*(v25 + 104))(v26, *v24, v21);
      (*(v25 + 32))(v22, v26, v21);
      sub_68CD0(v36);
      sub_BA900(v22, v20, type metadata accessor for CodeImageScale);
      v14 = v23;
      return sub_68CD0(v14);
    }

    v26 = v33;
    v25 = v34;
    if (v16 == 0x6D756964656DLL && v17 == 0xE600000000000000 || (sub_2C65B8() & 1) != 0)
    {

      v24 = &enum case for Image.Scale.medium(_:);
      goto LABEL_17;
    }

    if (v16 == 0x656772616CLL && v17 == 0xE500000000000000)
    {

LABEL_22:
      v24 = &enum case for Image.Scale.large(_:);
      goto LABEL_17;
    }

    v27 = sub_2C65B8();

    if (v27)
    {
      goto LABEL_22;
    }

    v28 = sub_2C6238();
    swift_allocError();
    v30 = v29;
    sub_72084(v36, v37);
    sub_2C65C8();
    sub_2C6228();
    (*(*(v28 - 8) + 104))(v30, enum case for DecodingError.dataCorrupted(_:), v28);
    swift_willThrow();
    sub_68CD0(v36);
    a1 = v35;
  }

  v14 = a1;
  return sub_68CD0(v14);
}

uint64_t sub_B9654@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_6620C(&qword_3BEB68, &qword_2E72E8);
  __chkstk_darwin(v5 - 8);
  v26 = &v22 - v6;
  v7 = sub_6620C(&qword_3BED00, &qword_2E7538);
  __chkstk_darwin(v7 - 8);
  v24 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v22 - v10;
  v12 = sub_2C42D8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v15 = a2;
  v14(a2, 1, 1, v12);
  sub_691F8(a1, v25);
  v16 = type metadata accessor for CodeImageScale(0);
  sub_B99B8(&qword_3BED08, type metadata accessor for CodeImageScale, &unk_2E76E4);
  sub_2C60C8();
  sub_68CD0(a1);
  if (v2)
  {
    return sub_BA84C(v15, type metadata accessor for _CodeImageScale_OrNil);
  }

  v23 = v14;
  v18 = v26;
  v19 = v15;
  v20 = v24;
  sub_69130(v11, v24, &qword_3BED00, &qword_2E7538);
  if ((*(*(v16 - 8) + 48))(v20, 1, v16) == 1)
  {
    sub_69198(v20, &qword_3BED00, &qword_2E7538);
    v21 = 1;
  }

  else
  {
    (*(v13 + 16))(v18, v20, v12);
    sub_BA84C(v20, type metadata accessor for CodeImageScale);
    v21 = 0;
  }

  v23(v18, v21, 1, v12);
  return sub_A9708(v18, v19, &qword_3BEB68, &qword_2E72E8);
}

uint64_t sub_B99B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_B9A00@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_BA458(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_B9A74(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BEC10, &qword_2E7448);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_B9AE4()
{
  result = qword_3BEC30;
  if (!qword_3BEC30)
  {
    sub_718D4(&qword_3BEC10, &qword_2E7448);
    sub_718D4(&qword_3BEC38, &qword_2E7468);
    sub_72B74(&qword_3BEC40, &qword_3BEC38, &qword_2E7468, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_B99B8(&qword_3BCA50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BEC30);
  }

  return result;
}

uint64_t sub_B9C10(uint64_t a1)
{
  v2 = sub_6620C(&qword_3BEC10, &qword_2E7448);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_B9CC8(void *a1)
{
  v3 = sub_6620C(&qword_3BECF0, &qword_2E7530);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-v5];
  v7 = a1[4];
  v8 = sub_72084(a1, a1[3]);
  sub_BAB2C(v8, v9, v10);
  sub_2C67A8();
  if (!v1)
  {
    v12[15] = 0;
    v7 = sub_2C6468();
    v12[14] = 1;
    sub_2C6478();
    (*(v4 + 8))(v6, v3);
  }

  sub_68CD0(a1);
  return v7;
}

uint64_t sub_B9EA0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2C65B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000003004A0 == a2 || (sub_2C65B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6666755374786574 && a2 == 0xEA00000000007869 || (sub_2C65B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4C4D54487369 && a2 == 0xE600000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x53676E696461656CLL && a2 == 0xED00006C6F626D79 || (sub_2C65B8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x676E696C69617274 && a2 == 0xEE006C6F626D7953 || (sub_2C65B8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000003029F0 == a2 || (sub_2C65B8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E656D6E67696C61 && a2 == 0xE900000000000074 || (sub_2C65B8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6F6C6F4374786574 && a2 == 0xE900000000000072 || (sub_2C65B8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x63657053746E6F66 && a2 == 0xE800000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6964646150706F74 && a2 == 0xEA0000000000676ELL || (sub_2C65B8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x61506D6F74746F62 && a2 == 0xED0000676E696464 || (sub_2C65B8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x696D694C656E696CLL && a2 == 0xE900000000000074 || (sub_2C65B8() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x7374696172547861 && a2 == 0xE800000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6F666E49746E6974 && a2 == 0xE800000000000000)
  {

    return 17;
  }

  else
  {
    v6 = sub_2C65B8();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

void *sub_BA458(void *a1)
{
  v3 = sub_72084(a1, a1[3]);
  sub_2C6798();
  if (!v1)
  {
    sub_72084(v12, v12[3]);
    v4 = sub_2C65D8();
    v7 = v4;
    v8 = v5;
    v9 = v4 == 0x676E696C69617274 && v5 == 0xE800000000000000;
    if (v9 || (sub_2C65B8() & 1) != 0)
    {

      v10 = sub_2C46C8();
    }

    else
    {
      if (v7 == 0x676E696461656CLL && v8 == 0xE700000000000000 || (sub_2C65B8() & 1) != 0)
      {
      }

      else
      {
        if (v7 == 0x7265746E6563 && v8 == 0xE600000000000000 || (sub_2C65B8() & 1) != 0)
        {

          v10 = sub_2C46A8();
          goto LABEL_16;
        }

        if (v7 == 7368564 && v8 == 0xE300000000000000 || (sub_2C65B8() & 1) != 0)
        {

          v10 = sub_2C4688();
          goto LABEL_16;
        }

        if (v7 == 0x6D6F74746F62 && v8 == 0xE600000000000000 || (sub_2C65B8() & 1) != 0)
        {

          v10 = sub_2C4698();
          goto LABEL_16;
        }

        if (v7 == 0x696461654C706F74 && v8 == 0xEA0000000000676ELL || (sub_2C65B8() & 1) != 0)
        {

          v10 = sub_2C4638();
          goto LABEL_16;
        }

        if (v7 == 0x6C69617254706F74 && v8 == 0xEB00000000676E69 || (sub_2C65B8() & 1) != 0)
        {

          v10 = sub_2C4648();
          goto LABEL_16;
        }

        if (v7 == 0x654C6D6F74746F62 && v8 == 0xED0000676E696461 || (sub_2C65B8() & 1) != 0)
        {

          v10 = sub_2C4658();
          goto LABEL_16;
        }

        if (v7 == 0x72546D6F74746F62 && v8 == 0xEE00676E696C6961)
        {

          v10 = sub_2C4668();
          goto LABEL_16;
        }

        v11 = sub_2C65B8();

        if (v11)
        {
          v10 = sub_2C4668();
          goto LABEL_16;
        }
      }

      v10 = sub_2C46B8();
    }

LABEL_16:
    v3 = v10;
    sub_68CD0(v12);
    sub_68CD0(a1);
    return v3;
  }

  sub_68CD0(a1);
  return v3;
}

unint64_t sub_BA7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BECB0;
  if (!qword_3BECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BECB0);
  }

  return result;
}

uint64_t sub_BA84C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_BA8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BECB8;
  if (!qword_3BECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BECB8);
  }

  return result;
}

uint64_t sub_BA900(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_BA968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BECD0;
  if (!qword_3BECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BECD0);
  }

  return result;
}

unint64_t sub_BA9BC()
{
  result = qword_3BECD8;
  if (!qword_3BECD8)
  {
    sub_718D4(&qword_3BEA58, &qword_2E7298);
    sub_B99B8(&qword_3BECE0, type metadata accessor for _CodeAXTraits_OrNil, &unk_2E70D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BECD8);
  }

  return result;
}

unint64_t sub_BAA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BECE8;
  if (!qword_3BECE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BECE8);
  }

  return result;
}

uint64_t sub_BAAC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_BAB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BECF8;
  if (!qword_3BECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BECF8);
  }

  return result;
}

uint64_t sub_BABB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C42D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_BAC34(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C42D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_BACA4(uint64_t a1)
{
  result = sub_2C42D8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextComponentModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TextComponentModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_BAE84(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_6620C(&qword_3BEA50, &qword_2E7290);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_6620C(&qword_3BEDA0, &qword_2E7560);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_BAFD4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_6620C(&qword_3BEA50, &qword_2E7290);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_6620C(&qword_3BEDA0, &qword_2E7560);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_BB110(uint64_t a1)
{
  sub_BB240(319, &qword_3BEAD8, &type metadata accessor for FontSpec, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_BB240(319, &unk_3BEE10, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_BB2A4(319, &qword_3BC858, &type metadata for Bool, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_BB240(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_BB2A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_BB2F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BEE48;
  if (!qword_3BEE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BEE48);
  }

  return result;
}

unint64_t sub_BB350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BEE50;
  if (!qword_3BEE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BEE50);
  }

  return result;
}

unint64_t sub_BB3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BEE58;
  if (!qword_3BEE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BEE58);
  }

  return result;
}

unint64_t sub_BB400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BEE60;
  if (!qword_3BEE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BEE60);
  }

  return result;
}

unint64_t sub_BB458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BEE68;
  if (!qword_3BEE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BEE68);
  }

  return result;
}

unint64_t sub_BB4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BEE70;
  if (!qword_3BEE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BEE70);
  }

  return result;
}

uint64_t sub_BB52C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

unint64_t sub_BB5C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BEE78;
  if (!qword_3BEE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BEE78);
  }

  return result;
}

unint64_t sub_BB618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BEE80;
  if (!qword_3BEE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BEE80);
  }

  return result;
}

unint64_t sub_BB670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BEE88;
  if (!qword_3BEE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BEE88);
  }

  return result;
}

unint64_t sub_BB6C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BEE90;
  if (!qword_3BEE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BEE90);
  }

  return result;
}

BOOL sub_BB760(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_BB790@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_BB7BC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t dispatch thunk of LibraryDataProviding.series(from:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_88BE0;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of LibraryDataProviding.asset(from:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 24) + **(a6 + 24));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_7100C;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of LibraryDataProviding.assets(from:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_B2A98;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_BBC9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_BBCE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_BBD4C()
{
  v133 = sub_6620C(&unk_3BE758, &qword_2E6E50);
  __chkstk_darwin(v133);
  v127 = &v97 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v122 = &v97 - v3;
  v126 = sub_2C0E38();
  v138 = *(v126 - 8);
  __chkstk_darwin(v126);
  v125 = (&v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v132 = sub_2C1D78();
  v137 = *(v132 - 8);
  __chkstk_darwin(v132);
  v124 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v123 = &v97 - v7;
  v142 = sub_2C18F8();
  v136 = *(v142 - 8);
  __chkstk_darwin(v142);
  v141 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v144 = &v97 - v10;
  v143 = sub_2C1B38();
  v134 = *(v143 - 8);
  __chkstk_darwin(v143);
  v121 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v140 = &v97 - v13;
  v120 = sub_6620C(&qword_3BC4F0, &qword_2E34F0);
  v131 = *(v120 - 8);
  __chkstk_darwin(v120);
  v139 = &v97 - v14;
  v15 = sub_2C17B8();
  __chkstk_darwin(v15 - 8);
  v105 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_6620C(&qword_3BE6C8, &unk_2EE720);
  __chkstk_darwin(v17 - 8);
  v19 = &v97 - v18;
  v20 = sub_6620C(&qword_3BE6D0, &unk_2E6E00);
  __chkstk_darwin(v20 - 8);
  v100 = &v97 - v21;
  v104 = sub_2BEB08();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v101 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v102 = &v97 - v24;
  v25 = sub_2BE5F8();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *v0;
  v30 = v0[1];
  v119 = v0[11];
  sub_2C1D48();
  v32 = v31;
  v34 = v33;
  sub_2BE5E8();
  v130 = sub_1E2C58(v29, v28);
  v129 = v35;
  result = (*(v26 + 8))(v28, v25);
  v37 = *(v30 + 16);
  if (v37)
  {
    v38 = 0;
    v39 = v30 + 32;
    v135 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v38 >= *(v30 + 16))
      {
        __break(1u);
        return result;
      }

      sub_691F8(v39, &v146);
      sub_72084(&v146, v147);
      sub_2BF8F8();
      v40 = sub_2BFA98();
      v42 = v41;
      if (v40 == sub_2BFA98() && v42 == v43)
      {
      }

      else
      {
        v45 = sub_2C65B8();

        if ((v45 & 1) == 0)
        {
          sub_693D0(&v146, &v145);
          v46 = v135;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v149 = v46;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_64808(0, v46[2] + 1, 1);
            v46 = v149;
          }

          v49 = v46[2];
          v48 = v46[3];
          if (v49 >= v48 >> 1)
          {
            sub_64808((v48 > 1), v49 + 1, 1);
            v46 = v149;
          }

          v46[2] = v49 + 1;
          v135 = v46;
          result = sub_693D0(&v145, &v46[5 * v49 + 4]);
          goto LABEL_5;
        }
      }

      result = sub_68CD0(&v146);
LABEL_5:
      ++v38;
      v39 += 40;
      if (v37 == v38)
      {
        goto LABEL_18;
      }
    }
  }

  v135 = _swiftEmptyArrayStorage;
LABEL_18:
  v99 = v19;
  v118 = v135[2];
  sub_6620C(&qword_3BEE98, &qword_2E7A78);
  v50 = v134;
  v51 = *(v134 + 72);
  v52 = (*(v134 + 80) + 32) & ~*(v134 + 80);
  v98 = swift_allocObject();
  v53 = (v98 + v52);
  *v53 = v32;
  *(v53 + 1) = v34;
  v54 = *(v50 + 104);
  v55 = v143;
  v54(v53, enum case for SharableAssetLayoutStyle.rectangle(_:), v143);
  *&v53[v51] = v32;
  v117 = v51;
  v128 = v53;
  v54(&v53[v51], enum case for SharableAssetLayoutStyle.square(_:), v55);
  *&v145 = _swiftEmptyArrayStorage;
  sub_647E8(0, 2, 0);
  v56 = v145;
  v116 = objc_opt_self();
  v57 = 0;
  v58 = 0;
  v115 = *(v50 + 16);
  v114 = (v136 + 16);
  v113 = (v138 + 104);
  v112 = enum case for ColorScheme.dark(_:);
  v111 = (v137 + 16);
  v110 = (v137 + 8);
  v109 = enum case for PageBackground.singleColor(_:);
  v108 = (v136 + 8);
  v134 = v50 + 16;
  v107 = (v50 + 8);
  v106 = v131 + 32;
  do
  {
    v138 = v56;
    LODWORD(v137) = v57;
    v59 = v140;
    v60 = v143;
    v61 = v115;
    v115(v140, &v128[v58 * v117], v143);
    v61(v121, v59, v60);

    v62 = v144;
    sub_2C18E8();
    v136 = *v114;
    v63 = v141;
    (v136)(v141, v62, v142);
    v147 = sub_2C0E78();
    v148 = sub_BCE90(&qword_3BEEA0, &type metadata accessor for ShareableAsset, &protocol conformance descriptor for ShareableAsset);
    sub_720C8(&v146);
    sub_2C0E68();
    v64 = *(sub_6620C(&qword_3BEEA8, &unk_2E7A80) + 48);
    v65 = [v116 secondarySystemBackgroundColor];
    v66 = sub_2C4288();
    v67 = v125;
    *v125 = v66;
    v68 = sub_2C2548();
    v69 = *(v68 - 8);
    (*(v69 + 104))(v67 + v64, v112, v68);
    (*(v69 + 56))(v67 + v64, 0, 1, v68);
    (*v113)(v67, v109, v126);

    v70 = v123;
    sub_2C1D58();
    v71 = *v111;
    v72 = v122;
    v73 = v132;
    (*v111)(v122, v70, v132);
    sub_2C1B28();
    v75 = v74;
    v77 = v76;
    v78 = sub_2C1D68();
    v79 = v133;
    v80 = (v72 + *(v133 + 36));
    *v80 = v75;
    v80[1] = v77;
    v81 = (v72 + *(v79 + 40));
    *v81 = v78;
    v81[1] = v82;
    *(v72 + *(v79 + 44)) = v119;
    v83 = v63;
    v84 = v142;
    (v136)(v83, v144, v142);
    v71(v124, v70, v73);
    sub_BCE20(v72, v127);
    sub_BCE90(&qword_3BEEB0, &type metadata accessor for YearInReviewSharableImage, &protocol conformance descriptor for YearInReviewSharableImage);
    sub_72B74(&qword_3BE878, &unk_3BE758, &qword_2E6E50, &protocol conformance descriptor for SnapshotImageItem<A>);

    sub_2C09C8();
    v85 = v72;
    v56 = v138;
    sub_BCED8(v85);
    (*v110)(v70, v73);
    (*v108)(v144, v84);
    (*v107)(v140, v143);
    *&v145 = v56;
    v87 = *(v56 + 16);
    v86 = *(v56 + 24);
    if (v87 >= v86 >> 1)
    {
      sub_647E8((v86 > 1), v87 + 1, 1);
      v56 = v145;
    }

    *(v56 + 16) = v87 + 1;
    (*(v131 + 32))(v56 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v87, v139, v120);
    v57 = 1;
    v58 = 1;
  }

  while ((v137 & 1) == 0);

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v88 = enum case for FrameName.yearSummary(_:);
  v89 = sub_2BF0C8();
  v90 = *(v89 - 8);
  v91 = v100;
  (*(v90 + 104))(v100, v88, v89);
  (*(v90 + 56))(v91, 0, 1, v89);
  v92 = sub_2BE8D8();
  (*(*(v92 - 8) + 56))(v99, 1, 1, v92);
  v93 = v102;
  sub_2BEAF8();
  sub_6620C(&qword_3BC400, &unk_2E3430);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_2E3F30;
  v95 = v103;
  v96 = v104;
  (*(v103 + 16))(v101, v93, v104);
  sub_2C17A8();
  *(v94 + 56) = sub_6620C(&qword_3BEEB8, &unk_2E7A90);
  *(v94 + 64) = sub_72B74(&qword_3BEEC0, &qword_3BEEB8, &unk_2E7A90, &protocol conformance descriptor for SummaryFrame<A, B>);
  sub_720C8((v94 + 32));
  sub_2C0858();
  (*(v95 + 8))(v93, v96);
  return v94;
}

uint64_t sub_BCE20(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&unk_3BE758, &qword_2E6E50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_BCE90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_BCED8(uint64_t a1)
{
  v2 = sub_6620C(&unk_3BE758, &qword_2E6E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_BCF40(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_BCF64(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_BCF90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_BCFD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_BD05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a4;
  v38 = a3;
  v37 = a2;
  v36 = a1;
  v42 = a6;
  v7 = sub_2BFF28();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = sub_6620C(&unk_3C43D0, &qword_2F1180);
  __chkstk_darwin(v10 - 8);
  v12 = &v36 - v11;
  v13 = sub_6620C(&qword_3BEED0, &unk_2E7C50);
  v40 = *(v13 - 8);
  v41 = v13;
  __chkstk_darwin(v13);
  v15 = &v36 - v14;
  v17 = a5[9];
  v16 = a5[10];
  sub_72084(a5 + 6, v17);
  if (((*(v16 + 40))(v17, v16) & 2) != 0)
  {
    sub_2C2488();
    v19 = sub_2C24B8();
    (*(*(v19 - 8) + 56))(v12, 0, 1, v19);
  }

  else
  {
    v18 = sub_2C24B8();
    (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  }

  sub_BDE38(a5, v45);
  sub_6932C(v36, v43, &qword_3BC840, &qword_2ED0A0);
  (*(v8 + 16))(&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v7);
  v20 = (*(v8 + 80) + 160) & ~*(v8 + 80);
  v21 = swift_allocObject();
  v22 = v45[5];
  *(v21 + 80) = v45[4];
  *(v21 + 96) = v22;
  *(v21 + 112) = v46;
  v23 = v45[1];
  *(v21 + 16) = v45[0];
  *(v21 + 32) = v23;
  v24 = v45[3];
  *(v21 + 48) = v45[2];
  *(v21 + 64) = v24;
  v25 = v43[0];
  v26 = v43[1];
  *(v21 + 152) = v44;
  *(v21 + 136) = v26;
  *(v21 + 120) = v25;
  (*(v8 + 32))(v21 + v20, &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v27 = (v21 + ((v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  v28 = v39;
  *v27 = v38;
  v27[1] = v28;
  __chkstk_darwin(v28);
  *(&v36 - 2) = a5;

  sub_6620C(&qword_3BEED8, &qword_2E7C60);
  sub_BE0A8();
  sub_2C43B8();
  v29 = a5[9];
  v30 = a5[10];
  sub_72084(a5 + 6, v29);
  LOBYTE(v29) = (*(v30 + 40))(v29, v30);
  KeyPath = swift_getKeyPath();
  v32 = swift_allocObject();
  *(v32 + 16) = v29 & 1;
  v33 = v42;
  (*(v40 + 32))(v42, v15, v41);
  result = sub_6620C(&qword_3BEEF8, &qword_2E7CA8);
  v35 = (v33 + *(result + 36));
  *v35 = KeyPath;
  v35[1] = sub_BE260;
  v35[2] = v32;
  return result;
}

uint64_t sub_BD4EC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_6620C(&qword_3BEEF0, &qword_2E7C68);
  __chkstk_darwin(v3);
  v5 = v46 - v4;
  v6 = sub_6620C(&qword_3BEF00, &qword_2E7CB0);
  v48 = *(v6 - 8);
  __chkstk_darwin(v6);
  v47 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (v46 - v9);
  v11 = sub_6620C(&qword_3BEF08, &qword_2E7CB8);
  __chkstk_darwin(v11);
  v13 = v46 - v12;
  v14 = sub_6620C(&qword_3BE800, &qword_2E7C70);
  v49 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v46 - v15;
  sub_29AD30(&v51);
  if (v52)
  {
    v46[0] = v13;
    v46[1] = v11;
    v46[2] = v14;
    v17 = sub_68D1C(&v51, v53);
    __chkstk_darwin(v17);
    v46[-2] = a1;
    __chkstk_darwin(v18);
    v46[-2] = v53;
    v46[-1] = a1;
    v49 = v10;
    sub_2C42F8();
    v19 = *(a1 + 9);
    v20 = *(a1 + 10);
    sub_72084(a1 + 6, v19);
    v21 = (*(v20 + 32))(v19, v20);
    v46[3] = v3;
    if (v22)
    {
      *&v51 = v21;
      *(&v51 + 1) = v22;
      sub_7212C(v21, v22, v23);
      v24 = sub_2C3A48();
      v26 = v25;
      v28 = v27;
      v30 = v29 & 1;
      sub_BE2CC(v24, v25, v29 & 1);
    }

    else
    {
      v24 = 0;
      v26 = 0;
      v30 = 0;
      v28 = 0;
    }

    v41 = v47;
    v42 = v48;
    v43 = *(v48 + 16);
    v43(v47, v49, v6);
    v43(v5, v41, v6);
    v44 = &v5[*(sub_6620C(&qword_3BEF18, &qword_2E7CC8) + 48)];
    *v44 = v24;
    v44[1] = v26;
    v44[2] = v30;
    v44[3] = v28;
    sub_BE288(v24, v26, v30, v28);
    sub_BE2DC(v24, v26, v30, v28);
    v45 = *(v42 + 8);
    v45(v41, v6);
    v48 = v6;
    sub_6932C(v5, v46[0], &qword_3BEEF0, &qword_2E7C68);
    swift_storeEnumTagMultiPayload();
    sub_72B74(&qword_3BEEE8, &qword_3BEEF0, &qword_2E7C68, &protocol conformance descriptor for TupleView<A>);
    sub_72B74(&unk_3C4390, &qword_3BE800, &qword_2E7C70, &protocol conformance descriptor for Label<A, B>);
    sub_2C33C8();
    sub_BE2DC(v24, v26, v30, v28);
    sub_69198(v5, &qword_3BEEF0, &qword_2E7C68);
    v45(v49, v48);
    return sub_68CD0(v53);
  }

  else
  {
    sub_69198(&v51, &qword_3BEF10, &qword_2E7CC0);
    v31 = *(a1 + 9);
    v32 = *(a1 + 10);
    sub_72084(a1 + 6, v31);
    v53[0] = (*(v32 + 24))(v31, v32);
    v53[1] = v33;
    v34 = *(a1 + 9);
    v35 = *(a1 + 10);
    sub_72084(a1 + 6, v34);
    (*(v35 + 16))(&v51, v34, v35);
    v36 = sub_2B17F0();
    sub_7212C(v36, v37, v38);
    sub_2C4308();
    v39 = v49;
    v49[2](v13, v16, v14);
    swift_storeEnumTagMultiPayload();
    sub_72B74(&qword_3BEEE8, &qword_3BEEF0, &qword_2E7C68, &protocol conformance descriptor for TupleView<A>);
    sub_72B74(&unk_3C4390, &qword_3BE800, &qword_2E7C70, &protocol conformance descriptor for Label<A, B>);
    sub_2C33C8();
    return (v39[1])(v16, v14);
  }
}

uint64_t sub_BDB78@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[9];
  v4 = a1[10];
  sub_72084(a1 + 6, v3);
  v11 = (*(v4 + 24))(v3, v4);
  sub_7212C(v11, v5, v6);
  result = sub_2C3A48();
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_BDC04@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_72084(a1, v5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = __chkstk_darwin(AssociatedTypeWitness);
  (*(v6 + 24))(a2 + 48, v5, v6, v8);
  swift_getAssociatedConformanceWitness();
  result = sub_2C44B8();
  *a3 = result;
  return result;
}

uint64_t sub_BDD10@<X0>(uint64_t a1@<X8>)
{
  sub_BDE38(v1, v12);
  v3 = swift_allocObject();
  v4 = v12[5];
  *(v3 + 80) = v12[4];
  *(v3 + 96) = v4;
  *(v3 + 112) = v13;
  v5 = v12[1];
  *(v3 + 16) = v12[0];
  *(v3 + 32) = v5;
  v6 = v12[3];
  *(v3 + 48) = v12[2];
  *(v3 + 64) = v6;
  *a1 = swift_getKeyPath();
  *(a1 + 40) = 0;
  KeyPath = swift_getKeyPath();
  v8 = sub_6620C(&qword_3BEEC8, &unk_2E7C10);
  *(a1 + v8[9]) = KeyPath;
  sub_6620C(&unk_3C4360, qword_2ED140);
  swift_storeEnumTagMultiPayload();
  result = swift_getKeyPath();
  v10 = a1 + v8[10];
  *v10 = result;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  v11 = (a1 + v8[11]);
  *v11 = sub_BDED4;
  v11[1] = v3;
  return result;
}

uint64_t sub_BDE70()
{
  if (*(v0 + 56))
  {
    if (*(v0 + 40))
    {
      sub_68CD0((v0 + 16));
    }
  }

  else
  {
  }

  sub_68CD0((v0 + 64));

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_BDEEC()
{
  v1 = sub_2BFF28();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 56))
  {
    if (*(v0 + 40))
    {
      sub_68CD0((v0 + 16));
    }
  }

  else
  {
  }

  sub_68CD0((v0 + 64));

  if (*(v0 + 144))
  {
    sub_68CD0((v0 + 120));
  }

  v5 = (v3 + 160) & ~v3;
  v6 = (v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_BE004()
{
  v1 = *(sub_2BFF28() - 8);
  v2 = (*(v1 + 80) + 160) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return (*(v0 + 104))(v0 + 120, v0 + v2, *v3, v3[1]);
}

unint64_t sub_BE0A8()
{
  result = qword_3BEEE0;
  if (!qword_3BEEE0)
  {
    sub_718D4(&qword_3BEED8, &qword_2E7C60);
    sub_72B74(&qword_3BEEE8, &qword_3BEEF0, &qword_2E7C68, &protocol conformance descriptor for TupleView<A>);
    sub_72B74(&unk_3C4390, &qword_3BE800, &qword_2E7C70, &protocol conformance descriptor for Label<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BEEE0);
  }

  return result;
}

uint64_t sub_BE18C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2C30A8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_BE1BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2C30A8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_BE288(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_BE2CC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_BE2CC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_BE2DC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_72180(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_BE364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_6620C(&qword_3BEF88, &unk_2E7D40);
  __chkstk_darwin(v10 - 8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v22 - v14;
  v23[3] = a3;
  v23[4] = a4;
  v16 = sub_720C8(v23);
  (*(*(a3 - 8) + 16))(v16, a2, a3);
  v17 = type metadata accessor for PageRootView(0);
  v18 = a5 + v17[7];
  type metadata accessor for HostProxy(0);
  sub_C012C(&qword_3BCB70, type metadata accessor for HostProxy, &protocol conformance descriptor for HostProxy);
  *v18 = sub_2C2568();
  *(v18 + 8) = v19 & 1;
  v20 = a5 + v17[8];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  sub_F41B8(v23, a1, v15);
  sub_691F8(v23, v22);
  sub_6932C(v15, v12, &qword_3BEF88, &unk_2E7D40);
  PageContent.init(pageIntent:initialPage:)(v22, v12, a5);
  *(a5 + v17[5]) = a1;
  sub_2C1498();

  sub_2C4DB8();
  sub_69198(v15, &qword_3BEF88, &unk_2E7D40);
  result = sub_68CD0(v23);
  *(a5 + v17[6]) = v22[0];
  return result;
}

uint64_t sub_BE58C(uint64_t a1)
{
  v25[1] = a1;
  v1 = sub_6620C(&qword_3BEF80, &qword_2E8D50);
  __chkstk_darwin(v1 - 8);
  v3 = v25 - v2;
  v4 = sub_2BFDD8();
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin(v4);
  v26 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PageContent.PageInfo(0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_6620C(&qword_3BEF88, &unk_2E7D40);
  __chkstk_darwin(v10 - 8);
  v12 = v25 - v11;
  v13 = type metadata accessor for Page(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6620C(&qword_3BEF90, &unk_2EC5E0);
  sub_2C4378();
  sub_6932C(&v9[*(v7 + 28)], v12, &qword_3BEF88, &unk_2E7D40);
  sub_C01DC(v9, type metadata accessor for PageContent.PageInfo);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v17 = &qword_3BEF88;
    v18 = &unk_2E7D40;
    v19 = v12;
LABEL_5:
    sub_69198(v19, v17, v18);
    return 0;
  }

  sub_BF578(v12, v16);
  sub_6932C(&v16[*(v13 + 20)], v3, &qword_3BEF80, &qword_2E8D50);
  v21 = v27;
  v20 = v28;
  if ((*(v27 + 48))(v3, 1, v28) == 1)
  {
    sub_C01DC(v16, type metadata accessor for Page);
    v17 = &qword_3BEF80;
    v18 = &qword_2E8D50;
    v19 = v3;
    goto LABEL_5;
  }

  v23 = v26;
  (*(v21 + 32))(v26, v3, v20);
  if (v16[*(v13 + 36)] == 1)
  {
    (*(v21 + 8))(v23, v20);
    sub_C01DC(v16, type metadata accessor for Page);
    return 10519010;
  }

  else
  {
    sub_6620C(&unk_3BD1A0, &qword_2E5AD0);
    sub_2C4DB8();
    v24 = sub_2BFDB8();
    sub_68CD0(v29);
    (*(v21 + 8))(v23, v20);
    sub_C01DC(v16, type metadata accessor for Page);
    return v24;
  }
}

Swift::Void __swiftcall PageHostingController.viewWillLayoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[qword_3BCB68];
  swift_getKeyPath();
  aBlock[0] = v3;
  sub_C012C(&qword_3BCB70, type metadata accessor for HostProxy, &protocol conformance descriptor for HostProxy);
  sub_2BE6F8();

  swift_beginAccess();
  if ((*(v3 + 56) & 1) == 0)
  {
    v4 = [v0 transitionCoordinator];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 viewControllerForKey:UITransitionContextToViewControllerKey];
      if (v6)
      {
        v7 = v6;

        if (v7 == v1)
        {
          v8 = [v1 bc_cardViewController];
          if (v8)
          {
            v9 = v8;
            v10 = [v8 currentState];

            LODWORD(v9) = [v10 transitioning];
            if (v9)
            {
              if (*(v3 + 56) == 1)
              {
                *(v3 + 56) = 1;
              }

              else
              {
                KeyPath = swift_getKeyPath();
                __chkstk_darwin(KeyPath);
                aBlock[0] = v3;
                sub_2BE6E8();
              }

              aBlock[4] = sub_BF3B0;
              aBlock[5] = v3;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_74394;
              aBlock[3] = &unk_38C890;
              v12 = _Block_copy(aBlock);

              [v5 animateAlongsideTransition:0 completion:v12];
              _Block_release(v12);
            }
          }
        }
      }

      swift_unknownObjectRelease();
    }
  }

  v14.receiver = v1;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "viewWillLayoutSubviews", aBlock[0]);
}

uint64_t sub_BED14(uint64_t a1, uint64_t a2)
{
  v2 = sub_2C4478();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2C4468();
  sub_2C46F8();
  (*(v3 + 8))(v5, v2);
  sub_2C2848();
}

uint64_t sub_BEE4C(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 56))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_C012C(&qword_3BCB70, type metadata accessor for HostProxy, &protocol conformance descriptor for HostProxy);
    sub_2BE6E8();
  }

  else
  {
    *(a1 + 56) = 0;
  }

  return result;
}

void sub_BEF78(void *a1)
{
  v1 = a1;
  PageHostingController.viewWillLayoutSubviews()();
}

Swift::Void __swiftcall PageHostingController.goToSeeAll(shelfIndex:)(Swift::Int shelfIndex)
{
  v2 = type metadata accessor for HostProxy.Event(0);
  __chkstk_darwin(v2);
  v4 = (&v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = shelfIndex;
  swift_storeEnumTagMultiPayload();

  sub_2C23D8();

  sub_C01DC(v4, type metadata accessor for HostProxy.Event);
}

Swift::Void __swiftcall PageHostingController.loadNextPage()()
{
  v0 = type metadata accessor for HostProxy.Event(0);
  __chkstk_darwin(v0);
  v2 = &v3 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();

  sub_2C23D8();

  sub_C01DC(v2, type metadata accessor for HostProxy.Event);
}

Swift::Void __swiftcall PageHostingController.presentPPTProductPage()()
{
  v1 = *(*(v0 + qword_3BCB68) + 32);
  swift_getKeyPath();
  sub_C012C(&qword_3BEF28, type metadata accessor for StorePPTTrigger, &unk_2FCC24);

  sub_2BE6F8();

  swift_getKeyPath();
  sub_2BE718();

  ++*(v1 + 16);
  swift_getKeyPath();
  sub_2BE708();
}

uint64_t sub_BF280@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_C012C(&qword_3BCB70, type metadata accessor for HostProxy, &protocol conformance descriptor for HostProxy);
  sub_2BE6F8();

  result = swift_beginAccess();
  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_BF3B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_BF3D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_C012C(&qword_3BEF28, type metadata accessor for StorePPTTrigger, &unk_2FCC24);
  sub_2BE6F8();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t type metadata accessor for PageHostingController(uint64_t a1)
{
  result = qword_3BEF30;
  if (!qword_3BEF30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_BF578(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Page(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_BF5F8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v68 = a7;
  v67 = a6;
  v62 = a5;
  v64 = a4;
  v57 = a3;
  v66 = a1;
  v65 = type metadata accessor for PageRootView(0);
  __chkstk_darwin(v65);
  v63 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for RootHostingControllerConfiguration(0);
  __chkstk_darwin(v71);
  v61 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v69 = &v48 - v14;
  v54 = sub_6620C(&qword_3BCE28, &qword_2E9620);
  __chkstk_darwin(v54);
  v53 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v48 - v17;
  v70 = &v48 - v17;
  v55 = sub_6620C(&qword_3BC330, &unk_2E3D50);
  sub_2C4968();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2E3F30;
  type metadata accessor for PaginationController();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 18) = 0;
  *(v20 + 24) = 0u;
  *(v20 + 40) = 0u;
  *(v20 + 56) = 0u;
  v73 = v20;
  sub_2C4958();
  v73 = v19;
  v60 = sub_6620C(&unk_3BD220, &qword_2E3FF0);
  v59 = sub_8A870();
  v58 = sub_2C4DF8();

  sub_6932C(a4, v18, &qword_3BCE28, &qword_2E9620);
  v21 = v69;
  v56 = type metadata accessor for RootHostingControllerConfiguration;
  sub_C0174(a5, v69, type metadata accessor for RootHostingControllerConfiguration);
  *(v7 + qword_3BCB60 + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v22 = v7 + qword_3BCC58;
  *v22 = 0;
  *(v22 + 8) = 1;
  *(v7 + qword_3BCB80) = 0;
  *(v7 + qword_3BCC60) = &_swiftEmptySetSingleton;
  v51 = type metadata accessor for HostProxy(0);
  swift_allocObject();
  v23 = sub_C2644();
  v49 = qword_3BCB68;
  *(v7 + qword_3BCB68) = v23;
  sub_2C09A8();
  swift_allocObject();
  v24 = sub_2C0998();
  v48 = qword_3BCC48;
  *(v7 + qword_3BCC48) = v24;
  v52 = type metadata accessor for NavigationProvider();
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v50 = qword_3BCC50;
  *(v8 + qword_3BCC50) = v25;
  sub_2BEED8();
  swift_allocObject();
  v26 = sub_2BEEC8();
  v27 = qword_3BCB90;
  *(v8 + qword_3BCB90) = v26;
  sub_C0174(v21, v8 + qword_3E8830, type metadata accessor for RootHostingControllerConfiguration);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_2E3BC0;
  sub_6932C(v70, v53, &qword_3BCE28, &qword_2E9620);
  sub_2C4958();
  sub_2BF028();
  v73 = v57;
  v28 = v57;
  sub_2C4958();
  sub_2BEC48();
  swift_allocObject();
  v73 = sub_2BEC38();
  sub_2C4958();
  LOBYTE(v73) = sub_2C07D8() & 1;
  sub_2C4958();
  v73 = *(v8 + v48);

  sub_2C4958();
  v73 = *(v8 + v27);

  sub_2C4958();
  v29 = v49;
  v73 = *(v8 + v49);

  v30 = v51;
  sub_2C4958();
  sub_6620C(&unk_3BFED0, &unk_2E7D50);
  sub_2C53F8();
  v73 = sub_2C53E8();
  v74 = &protocol witness table for BasicImpressionsTracker;
  sub_2C4958();
  sub_6620C(&qword_3BCE30, qword_2E3D60);
  v31 = *(v8 + v50);
  v75 = v52;
  v76 = &protocol witness table for NavigationProvider;
  v73 = v31;

  sub_2C4958();
  type metadata accessor for PageLifecycleHandler();
  v32 = swift_allocObject();
  type metadata accessor for Page.LifecycleInfo();
  v33 = swift_allocObject();
  *(v33 + 16) = _swiftEmptyDictionarySingleton;
  *(v32 + 16) = v33;
  v73 = v32;
  sub_2C4958();
  sub_6620C(&qword_3BCE38, &unk_2E7D60);
  v34 = *(v8 + v29);
  v75 = v30;
  v76 = sub_C012C(&qword_3BCE40, type metadata accessor for HostProxy, &protocol conformance descriptor for HostProxy);
  v73 = v34;

  sub_2C4958();
  sub_6620C(&qword_3BCE48, &unk_2E3DB0);
  v35 = *(v8 + v29);
  v75 = v30;
  v76 = sub_C012C(&unk_3BCE50, type metadata accessor for HostProxy, &protocol conformance descriptor for HostProxy);
  v73 = v35;

  sub_2C4958();
  v36 = v69;
  sub_C0174(v69, v61, v56);
  sub_2C4958();
  v73 = v55;
  v37 = sub_2C4DF8();

  v39 = v63;
  sub_BE364(v38, v66, v67, v68, v63);
  v73 = v37;
  v76 = v65;
  v77 = sub_C012C(&qword_3BEF98, type metadata accessor for PageRootView, &protocol conformance descriptor for PageRootView);
  v40 = sub_720C8(&v74);
  sub_C0174(v39, v40, type metadata accessor for PageRootView);

  v42 = sub_BE58C(v41);
  v44 = v43;

  sub_C01DC(v39, type metadata accessor for PageRootView);
  v78 = v42;
  v79 = v44;
  sub_77E04(&v73, v72);
  v45 = sub_2C3398();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v46 = v45;
  sub_731AC();
  sub_73578();

  sub_C01DC(v36, type metadata accessor for RootHostingControllerConfiguration);
  sub_69198(v70, &qword_3BCE28, &qword_2E9620);
  sub_77C1C(&v73);
  sub_C01DC(v62, type metadata accessor for RootHostingControllerConfiguration);
  sub_69198(v64, &qword_3BCE28, &qword_2E9620);
  return v46;
}

uint64_t sub_C012C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_C0174(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_C01DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Int ContextActionAssetType.hashValue.getter(unsigned __int8 a1)
{
  sub_2C6738();
  sub_2C6748(a1);
  return sub_2C6778();
}

uint64_t ContextActionSource.key.getter()
{
  sub_C04C8(v0, &v2);
  if (v3 > 4)
  {
    if (v3 <= 7)
    {
      if (v3 == 5)
      {
        return 0x796C746E65636572;
      }

      if (v3 == 6)
      {
        return 0xD000000000000014;
      }

      return 0x736B636950706F74;
    }

    switch(v3)
    {
      case 8:
        return 0xD000000000000014;
      case 9:
        return 0;
      case 10:
        return 0x2D6F742D746E6177;
    }

LABEL_24:

    sub_68CD0(v4);
    return 0x7972617262696CLL;
  }

  if (v3 <= 1)
  {
    if (!v3)
    {
      return 0x65756E69746E6F63;
    }

    if (v3 == 1)
    {
      return 0xD000000000000016;
    }

    goto LABEL_24;
  }

  if (v3 == 2)
  {
    return 0xD000000000000015;
  }

  if (v3 == 3)
  {
    return 0x616C702D696E696DLL;
  }

  return 0x2D746375646F7270;
}

uint64_t ContextActionPublisherInfo.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ContextActionPublisherInfo.year.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ContextActionPublisherInfo.year.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ContextActionDataProtocol.analyticsAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2BEC68();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t ContextActionDataProtocol.selectionMode.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 8);
  v7 = *(v6() + 16);

  if (v7 == 1)
  {
    v8 = (v6)(a1, a2);
    if (*(v8 + 16))
    {
      sub_691F8(v8 + 32, v10);

      sub_68D1C(v10, v11);
      result = sub_68D1C(v11, a3);
      *(a3 + 40) = 0;
      return result;
    }
  }

  result = (v6)(a1, a2);
  *a3 = result;
  *(a3 + 40) = 1;
  return result;
}

uint64_t _s11BookStoreUI19ContextActionSourceO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_C04C8(a1, v11);
  sub_C04C8(a2, &v13);
  if (v12 < 0xB)
  {
    goto LABEL_4;
  }

  sub_C04C8(v11, v9);
  if (v14 < 0xB)
  {
    sub_68CD0(v10);

LABEL_4:
    v3 = ContextActionSource.key.getter();
    v5 = v4;
    if (v3 == ContextActionSource.key.getter() && v5 == v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_2C65B8();
    }

    sub_C1290(v11);
    return v7 & 1;
  }

  if (v9[0] == v13 && v9[1] == v14)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2C65B8();
  }

  sub_68CD0(v15);
  sub_68CD0(v10);
  sub_C12F8(v11);
  return v7 & 1;
}

unint64_t sub_C08B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3BEFA0;
  if (!qword_3BEFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BEFA0);
  }

  return result;
}

uint64_t sub_C0914(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_C092C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF4 && *(a1 + 48))
  {
    return (*a1 + 2147483637);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 10;
  if (v4 >= 0xC)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_C0984(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF5)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483637;
    if (a3 >= 0x7FFFFFF5)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF5)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 10;
    }
  }

  return result;
}

double sub_C09DC(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_C0A1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_C0A78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of ContextAssetInfoProtocol.coverImage.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_B2A98;

  return v7(a1, a2);
}

uint64_t dispatch thunk of ContextAssetInfoProtocol.rawCoverImage(size:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v13 = (*(a2 + 328) + **(a2 + 328));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_C1328;
  v10.n128_f64[0] = a3;
  v11.n128_f64[0] = a4;

  return v13(a1, a2, v10, v11);
}

__n128 sub_C11BC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_C11D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_C120C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_C1258(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_C1290(uint64_t a1)
{
  v2 = sub_6620C(&qword_3BEFA8, &qword_2E8008);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_C1334()
{
  sub_6620C(&qword_3BCE08, &qword_2F6080);
  sub_72B74(&qword_3BCE10, &qword_3BCE08, &qword_2F6080, &protocol conformance descriptor for PassthroughSubject<A, B>);
  return sub_2C2408();
}

void sub_C13F8(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_C1444(uint64_t *a1))(id **a1, char a2)
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
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_C14D4;
}

void sub_C14D4(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

id sub_C1550()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [result bc_windowForViewControllerWithFallbackToKeyWindow:0];

    if (v2 && (v3 = [v2 windowScene], v2, v3))
    {
      v4 = [v3 session];

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_C160C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [v1 navigationController];
    if (!v2)
    {
LABEL_11:

      return 0;
    }

    v3 = v2;
    v4 = [v2 viewControllers];

    sub_C17C4();
    v5 = sub_2C5B28();

    if (v5 >> 62)
    {
      result = sub_2C6398();
      if (result)
      {
LABEL_5:
        if ((v5 & 0xC000000000000001) != 0)
        {
          v6 = sub_2C6208();
        }

        else
        {
          if (!*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return result;
          }

          v6 = *(v5 + 32);
        }

        v7 = v6;

        v1 = v1;
        v8 = sub_2C5FF8();

        if (v8)
        {
          v9 = [v1 tabBarController];
          if (v9)
          {

            return &dword_0 + 1;
          }

          v10 = [v1 splitViewController];

          if (v10)
          {

            return &dword_0 + 1;
          }

          return 0;
        }

        goto LABEL_11;
      }
    }

    else
    {
      result = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
      if (result)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_C17C4()
{
  result = qword_3BEFB0;
  if (!qword_3BEFB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3BEFB0);
  }

  return result;
}

double sub_C1860()
{
  swift_getKeyPath();
  sub_C2D3C(&qword_3BCB70, type metadata accessor for HostProxy, &protocol conformance descriptor for HostProxy);
  sub_2BE6F8();

  swift_beginAccess();
  return *(v0 + 40);
}

uint64_t sub_C193C(double a1)
{
  result = swift_beginAccess();
  if (*(v1 + 40) == a1)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_C2D3C(&qword_3BCB70, type metadata accessor for HostProxy, &protocol conformance descriptor for HostProxy);
    sub_2BE6E8();
  }

  return result;
}

uint64_t sub_C1A68(uint64_t a1, double a2)
{
  result = swift_beginAccess();
  *(a1 + 40) = a2;
  return result;
}

uint64_t sub_C1ABC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 40) = v2;
  return result;
}

uint64_t (*sub_C1B10(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11BookStoreUI9HostProxy___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_C2D3C(&qword_3BCB70, type metadata accessor for HostProxy, &protocol conformance descriptor for HostProxy);
  sub_2BE6F8();

  *v4 = v1;
  swift_getKeyPath();
  sub_2BE718();

  v4[7] = sub_C1810(v4);
  return sub_C1C48;
}

double sub_C1CA4()
{
  swift_getKeyPath();
  sub_C2D3C(&qword_3BCB70, type metadata accessor for HostProxy, &protocol conformance descriptor for HostProxy);
  sub_2BE6F8();

  swift_beginAccess();
  return *(v0 + 48);
}

uint64_t sub_C1D58(double a1)
{
  result = swift_beginAccess();
  if (*(v1 + 48) == a1)
  {
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_C2D3C(&qword_3BCB70, type metadata accessor for HostProxy, &protocol conformance descriptor for HostProxy);
    sub_2BE6E8();
  }

  return result;
}

uint64_t sub_C1E84(uint64_t a1, double a2)
{
  result = swift_beginAccess();
  *(a1 + 48) = a2;
  return result;
}

uint64_t sub_C1ED8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 48) = v2;
  return result;
}

uint64_t (*sub_C1F2C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11BookStoreUI9HostProxy___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_C2D3C(&qword_3BCB70, type metadata accessor for HostProxy, &protocol conformance descriptor for HostProxy);
  sub_2BE6F8();

  *v4 = v1;
  swift_getKeyPath();
  sub_2BE718();

  v4[7] = sub_C1C54(v4);
  return sub_C2064;
}

uint64_t sub_C20C0()
{
  swift_getKeyPath();
  sub_C2D3C(&qword_3BCB70, type metadata accessor for HostProxy, &protocol conformance descriptor for HostProxy);
  sub_2BE6F8();

  swift_beginAccess();
  return *(v0 + 56);
}

uint64_t sub_C2174(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 56) == v2)
  {
    *(v1 + 56) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_C2D3C(&qword_3BCB70, type metadata accessor for HostProxy, &protocol conformance descriptor for HostProxy);
    sub_2BE6E8();
  }

  return result;
}

uint64_t sub_C2298(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 56) = a2;
  return result;
}

uint64_t sub_C22EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 56) = v2;
  return result;
}

uint64_t (*sub_C2340(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11BookStoreUI9HostProxy___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_C2D3C(&qword_3BCB70, type metadata accessor for HostProxy, &protocol conformance descriptor for HostProxy);
  sub_2BE6F8();

  *v4 = v1;
  swift_getKeyPath();
  sub_2BE718();

  v4[7] = sub_C2070(v4);
  return sub_C2478;
}

void sub_C2484(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_2BE708();

  free(v3);
}

uint64_t HostProxy.deinit()
{

  swift_unknownObjectWeakDestroy();

  v1 = OBJC_IVAR____TtC11BookStoreUI9HostProxy___observationRegistrar;
  v2 = sub_2BE738();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t HostProxy.__deallocating_deinit()
{

  swift_unknownObjectWeakDestroy();

  v1 = OBJC_IVAR____TtC11BookStoreUI9HostProxy___observationRegistrar;
  v2 = sub_2BE738();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_C2644()
{
  v1 = v0;
  sub_6620C(&qword_3BCE08, &qword_2F6080);
  swift_allocObject();
  *(v0 + 16) = sub_2C23E8();
  swift_unknownObjectWeakInit();
  type metadata accessor for StorePPTTrigger(0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  sub_2BE728();
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = v2;
  *(v1 + 56) = 0;
  sub_2BE728();
  return v1;
}

uint64_t HostProxy.issue(instruction:animated:)(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v32 = type metadata accessor for HostProxy.Event(0);
  __chkstk_darwin(v32);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6620C(&qword_3BC238, &unk_2E2F10);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v10 = sub_2C00B8();
  v29 = *(v10 - 8);
  v30 = v10;
  __chkstk_darwin(v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2C0088();
  v13 = *(v7 + 16);
  v31 = a1;
  v14 = v6;
  v28 = v13;
  v13(v9, a1, v6);
  v15 = sub_2C0098();
  v16 = sub_2C5DE8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = v16;
    v18 = v17;
    v25 = swift_slowAlloc();
    v33 = v25;
    *v18 = 136315394;
    sub_72B74(&qword_3BEFC8, &qword_3BC238, &unk_2E2F10, &protocol conformance descriptor for PageUpdateInstruction<A, B>);
    v19 = sub_2C6568();
    v27 = v2;
    v2 = v20;
    (*(v7 + 8))(v9, v14);
    v21 = sub_5CCF4(v19, v2, &v33);
    LOBYTE(v2) = v27;

    *(v18 + 4) = v21;
    *(v18 + 12) = 1024;
    *(v18 + 14) = v2 & 1;
    _os_log_impl(&dword_0, v15, v26, "Issuing page update instruction: %s, animated: %{BOOL}d", v18, 0x12u);
    sub_68CD0(v25);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  (*(v29 + 8))(v12, v30);
  v22 = *(sub_6620C(&qword_3BEFC0, &qword_2E8088) + 48);
  v28(v5, v31, v14);
  v5[v22] = v2 & 1;
  swift_storeEnumTagMultiPayload();
  sub_2C23D8();
  sub_C2C98(v5);
  return 1;
}

uint64_t HostProxy.scrollTo(location:)(uint64_t a1)
{
  v2 = type metadata accessor for HostProxy.Event(0);
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2C10A8();
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  swift_storeEnumTagMultiPayload();
  sub_2C23D8();
  sub_C2C98(v4);
  return 1;
}

uint64_t sub_C2B98(uint64_t a1)
{
  v2 = type metadata accessor for HostProxy.Event(0);
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2C10A8();
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  swift_storeEnumTagMultiPayload();
  sub_2C23D8();
  sub_C2C98(v4);
  return 1;
}

uint64_t sub_C2C98(uint64_t a1)
{
  v2 = type metadata accessor for HostProxy.Event(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_C2D3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_C2DCC@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_C2E7C(uint64_t a1)
{
  result = sub_2BE738();
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

void sub_C31F4(uint64_t a1)
{
  sub_2BF028();
  if (v1 <= 0x3F)
  {
    sub_C329C(319);
    if (v2 <= 0x3F)
    {
      sub_2C10A8();
      if (v3 <= 0x3F)
      {
        sub_C3314();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_C329C(uint64_t a1)
{
  if (!qword_3BF220)
  {
    sub_718D4(&qword_3BC238, &unk_2E2F10);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_3BF220);
    }
  }
}

void *sub_C3314()
{
  result = qword_3BF228;
  if (!qword_3BF228)
  {
    result = &type metadata for Int;
    atomic_store(&type metadata for Int, &qword_3BF228);
  }

  return result;
}

uint64_t sub_C3370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a1;
  v3[8] = a3;
  sub_6620C(&qword_3BE238, &unk_2E8260);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v4 = sub_2BF738();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v5 = sub_6620C(&qword_3BE240, &qword_2E5AC0);
  v6 = swift_task_alloc();
  v3[14] = v6;
  *v6 = v3;
  v6[1] = sub_C34D0;

  return BaseObjectGraph.inject<A>(_:)(v3 + 2, v5, v5);
}

uint64_t sub_C34D0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_C3D00;
  }

  else
  {
    v2 = sub_C35E4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_C35E4()
{
  v1 = *(v0 + 64);
  v2 = *(type metadata accessor for SeriesListSortAction(0) + 20);
  *(v0 + 160) = v2;
  sub_72084((v1 + v2), *(v1 + v2 + 24));
  v3 = sub_2BF3B8();
  v5 = v4;
  *(v0 + 128) = v3;
  *(v0 + 136) = v4;
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  sub_72084((v0 + 16), v6);
  v11 = (*(v7 + 64) + **(v7 + 64));
  v8 = swift_task_alloc();
  *(v0 + 144) = v8;
  *v8 = v0;
  v8[1] = sub_C3768;
  v9 = *(v0 + 80);

  return v11(v9, v3, v5, v6, v7);
}

uint64_t sub_C3768()
{

  return _swift_task_switch(sub_C3864, 0, 0);
}

uint64_t sub_C3864()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v5 = (*(v0 + 64) + *(v0 + 160));
    sub_72084(v5, v5[3]);
    sub_2BF2E8();
    if (v4(v3, 1, v1) != 1)
    {
      sub_C4338(*(v0 + 80));
    }
  }

  else
  {
    (*(v2 + 32))(*(v0 + 104), v3, v1);
  }

  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  v9 = *(v0 + 96);
  v8 = *(v0 + 104);
  v10 = *(v0 + 88);
  v11 = *(v0 + 72);
  v12 = *(v0 + 40);
  v13 = *(v0 + 48);
  sub_72084((v0 + 16), v12);
  (*(v9 + 16))(v11, v8, v10);
  (*(v9 + 56))(v11, 0, 1, v10);
  (*(v13 + 8))(v11, v6, v7, v12, v13);
  sub_C4338(v11);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  sub_72084((v0 + 16), v14);
  v21 = (*(v15 + 80) + **(v15 + 80));
  v16 = swift_task_alloc();
  *(v0 + 152) = v16;
  *v16 = v0;
  v16[1] = sub_C3AF0;
  v17 = *(v0 + 128);
  v18 = *(v0 + 136);
  v19 = *(v0 + 64);

  return v21(v19, v17, v18, v14, v15);
}

uint64_t sub_C3AF0()
{

  return _swift_task_switch(sub_C3C08, 0, 0);
}

uint64_t sub_C3C08()
{
  v1 = v0[7];
  (*(v0[12] + 8))(v0[13], v0[11]);
  v2 = enum case for ActionOutcome.performed(_:);
  v3 = sub_2C4C08();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  sub_68CD0(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_C3D00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_C3D78(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&unk_3BDBB0, &qword_2E47D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for SeriesListSortAction(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  sub_C3F9C(a1, &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  sub_C41A8(&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_6620C(&qword_3BDAB8, &unk_2E8250);

  v12 = sub_2C5738();
  v13 = sub_2C5C58();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2E8248;
  v14[5] = v11;
  v14[6] = v12;

  sub_1CDB58(0, 0, v6, &unk_2E4D80, v14);

  return v12;
}

uint64_t sub_C3F9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SeriesListSortAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_C4000()
{
  v1 = (type metadata accessor for SeriesListSortAction(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = sub_2BF738();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  sub_68CD0((v0 + v3 + v1[7]));
  v6 = v1[9];
  v7 = sub_2C4BF8();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[10];
  v9 = sub_2BF088();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v0 + v3 + v8, v9);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_C41A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SeriesListSortAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_C420C(uint64_t a1)
{
  v4 = *(type metadata accessor for SeriesListSortAction(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_7100C;

  return sub_C3370(a1, v6, v1 + v5);
}

uint64_t sub_C42F0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_C4338(uint64_t a1)
{
  v2 = sub_6620C(&qword_3BE238, &unk_2E8260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *ShareActionItem.tracker.getter()
{
  v1 = *(v0 + 96);
  v2 = v1;
  return v1;
}

uint64_t ShareActionItem.__allocating_init(data:context:tracker:figaroProvider:)(__int128 *a1, __int128 *a2, uint64_t a3, __int128 *a4)
{
  v8 = swift_allocObject();
  *(v8 + 144) = 0;
  sub_68D1C(a1, v8 + 56);
  sub_68D1C(a2, v8 + 16);
  *(v8 + 96) = a3;
  sub_68D1C(a4, v8 + 104);
  return v8;
}

uint64_t ShareActionItem.init(data:context:tracker:figaroProvider:)(__int128 *a1, __int128 *a2, uint64_t a3, __int128 *a4)
{
  *(v4 + 144) = 0;
  sub_68D1C(a1, v4 + 56);
  sub_68D1C(a2, v4 + 16);
  *(v4 + 96) = a3;
  sub_68D1C(a4, v4 + 104);
  return v4;
}

uint64_t sub_C4510()
{
  v1 = v0;
  v2 = v0[10];
  v3 = v1[11];
  sub_72084(v1 + 7, v2);
  ContextActionDataProtocol.selectionMode.getter(v2, v3, v12);
  LOBYTE(v2) = v13;
  sub_C4620(v12);
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v5 = v1[10];
    v6 = v1[11];
    sub_72084(v1 + 7, v5);
    (*(v6 + 64))(v12, v5, v6);
    v11[0] = xmmword_2E8270;
    memset(&v11[1], 0, 32);
    v7 = _s11BookStoreUI19ContextActionSourceO2eeoiySbAC_ACtFZ_0(v12, v11);
    sub_C12F8(v11);
    sub_C12F8(v12);
    if (v7)
    {
      v8 = v1[5];
      v9 = v1[6];
      sub_72084(v1 + 2, v8);
      v4 = ContextMenuPresentationContextProtocol.isCompact.getter(v8, v9);
    }

    else
    {
      v4 = 1;
    }
  }

  return v4 & 1;
}

uint64_t sub_C4674()
{
  *(v1 + 16) = v0;
  sub_2C5C18();
  *(v1 + 24) = sub_2C5C08();
  v3 = sub_2C5BB8();

  return _swift_task_switch(sub_C470C, v3, v2);
}

uint64_t sub_C470C()
{
  v1 = *(v0 + 16);

  v2 = v1[5];
  v3 = v1[6];
  sub_72084(v1 + 2, v2);
  v4 = swift_allocObject();
  *(v4 + 16) = &unk_2E8298;
  *(v4 + 24) = v1;

  ContextMenuPresentationContextProtocol.showShareSheet(with:using:)(v1 + 7, &unk_2E82A8, v4, v2, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_C47F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_7100C;

  return sub_C4B54(a1, v9, v10, a4, a5);
}

uint64_t sub_C48A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  *(v6 + 80) = a1;
  v13 = (a6 + *a6);
  v11 = swift_task_alloc();
  *(v6 + 88) = v11;
  *v11 = v6;
  v11[1] = sub_C49CC;

  return v13(v6 + 16, a2, a3, a4, a5);
}

uint64_t sub_C49CC()
{
  v2 = *v0;
  v1 = *v0;
  v3 = *v0;

  v4 = v1[5];
  if (v4)
  {
    v5 = v2[10];
    v6 = sub_72084(v2 + 2, v4);
    v2[9] = v4;
    v7 = sub_720C8(v2 + 6);
    (*(*(v4 - 8) + 16))(v7, v6, v4);
    sub_693CC(v2 + 3, v5);
    sub_68CD0(v2 + 2);
  }

  else
  {
    v8 = v2[10];
    *v8 = 0u;
    v8[1] = 0u;
  }

  v9 = v3[1];

  return v9();
}

uint64_t sub_C4B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_6620C(&unk_3C4370, &qword_2E7460);
  v5[5] = swift_task_alloc();
  v6 = sub_2BE3B8();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_C4C50, 0, 0);
}

uint64_t sub_C4C50()
{
  v216 = v0;
  v1 = sub_2C58C8();
  v3 = v2;
  if (v1 == sub_2C58C8() && v3 == v4)
  {

    goto LABEL_15;
  }

  v6 = sub_2C65B8();

  if (v6)
  {
LABEL_15:
    v17 = v0[4];
    v18 = v0[2];
    v19 = v17[3];
    v20 = v17[4];
    sub_72084(v17, v19);
    v21 = (*(v20 + 8))(v19, v20);
    v18[3] = &type metadata for String;
    *v18 = v21;
    v18[1] = v22;
    goto LABEL_16;
  }

  v7 = sub_2C58C8();
  v9 = v8;
  if (v7 == sub_2C58C8() && v9 == v10)
  {

    goto LABEL_20;
  }

  v12 = sub_2C65B8();

  if (v12)
  {
LABEL_20:
    v25 = v0[4];
    v26 = v25[3];
    v27 = v25[4];
    sub_72084(v25, v26);
    v28 = (*(v27 + 288))(v26, v27);
LABEL_21:
    v30 = v0[2];
    if (!v29)
    {
LABEL_28:
      *v30 = 0u;
      *(v30 + 16) = 0u;
      goto LABEL_16;
    }

    *(v30 + 24) = &type metadata for String;
    *v30 = v28;
    *(v30 + 8) = v29;
LABEL_16:

    v23 = v0[1];

    return v23();
  }

  v13 = sub_2C58C8();
  v15 = v14;
  if (v13 == sub_2C58C8() && v15 == v16)
  {
    goto LABEL_13;
  }

  v31 = sub_2C65B8();

  if (v31)
  {
    goto LABEL_24;
  }

  v44 = sub_2C58C8();
  v46 = v45;
  if (v44 == sub_2C58C8() && v46 == v47)
  {
LABEL_13:

    goto LABEL_24;
  }

  v48 = sub_2C65B8();

  if (v48)
  {
LABEL_24:
    v32 = v0[4];
    v33 = v32[3];
    v34 = v32[4];
    sub_72084(v32, v33);
    (*(v34 + 264))(v33, v34);
    if (v35)
    {
      v36 = v0[6];
      v37 = v0[7];
      v38 = v0[5];
      sub_2BE3A8();

      if ((*(v37 + 48))(v38, 1, v36) != 1)
      {
        v39 = v0[8];
        v40 = v0[6];
        v41 = v0[2];
        v42 = *(v0[7] + 32);
        v42(v39, v0[5], v40);
        v41[3] = v40;
        v43 = sub_720C8(v41);
        v42(v43, v39, v40);
        goto LABEL_16;
      }

      sub_C7B98(v0[5]);
    }

    goto LABEL_27;
  }

  v49 = sub_2C58C8();
  v51 = v50;
  if (v49 == sub_2C58C8() && v51 == v52)
  {

LABEL_37:
    v54 = v0[4];
    v55 = v54[3];
    v56 = v54[4];
    sub_72084(v54, v55);
    v28 = (*(v56 + 208))(v55, v56);
    goto LABEL_21;
  }

  v53 = sub_2C65B8();

  if (v53)
  {
    goto LABEL_37;
  }

  v57 = sub_2C58C8();
  v59 = v58;
  if (v57 == sub_2C58C8() && v59 == v60)
  {

LABEL_42:
    v62 = v0[4];
    v63 = v62[3];
    v64 = v62[4];
    sub_72084(v62, v63);
    v28 = (*(v64 + 64))(v63, v64);
    goto LABEL_21;
  }

  v61 = sub_2C65B8();

  if (v61)
  {
    goto LABEL_42;
  }

  v65 = sub_2C58C8();
  v67 = v66;
  if (v65 != sub_2C58C8() || v67 != v68)
  {
    v69 = sub_2C65B8();

    if (v69)
    {
      goto LABEL_47;
    }

    v77 = sub_2C58C8();
    v79 = v78;
    if (v77 == sub_2C58C8() && v79 == v80)
    {

LABEL_56:
      v82 = v0[4];
      v83 = v82[3];
      v84 = v82[4];
      sub_72084(v82, v83);
      v85 = *(v84 + 16);
      if (v85(v83, v84) != 4 && v85(v83, v84) != 5)
      {
        v87 = v82[3];
        v86 = v82[4];
        sub_72084(v0[4], v87);
        v88 = (*(v86 + 48))(v87, v86);
        if (v88)
        {
          v89 = v88;
          v90 = v0[2];
          v90[3] = sub_6620C(&qword_3BF368, &qword_2E8348);
          *v90 = v89;
          goto LABEL_16;
        }
      }

      goto LABEL_27;
    }

    v81 = sub_2C65B8();

    if (v81)
    {
      goto LABEL_56;
    }

    v91 = sub_2C58C8();
    v93 = v92;
    if (v91 == sub_2C58C8() && v93 == v94)
    {

LABEL_64:
      v96 = v0[4];
      v97 = v96[3];
      v98 = v96[4];
      sub_72084(v96, v97);
      v28 = (*(v98 + 312))(v97, v98);
      goto LABEL_21;
    }

    v95 = sub_2C65B8();

    if (v95)
    {
      goto LABEL_64;
    }

    v99 = sub_2C58C8();
    v101 = v100;
    if (v99 == sub_2C58C8() && v101 == v102)
    {

LABEL_69:
      v104 = v0[4];
      v105 = v104[3];
      v106 = v104[4];
      sub_72084(v104, v105);
      v28 = (*(v106 + 184))(v105, v106);
      goto LABEL_21;
    }

    v103 = sub_2C65B8();

    if (v103)
    {
      goto LABEL_69;
    }

    v107 = sub_2C58C8();
    v109 = v108;
    if (v107 == sub_2C58C8() && v109 == v110)
    {

LABEL_74:
      v112 = v0[4];
      v113 = v112[3];
      v114 = v112[4];
      sub_72084(v112, v113);
      v28 = (*(v114 + 32))(v113, v114);
      goto LABEL_21;
    }

    v111 = sub_2C65B8();

    if (v111)
    {
      goto LABEL_74;
    }

    v115 = sub_2C58C8();
    v117 = v116;
    if (v115 == sub_2C58C8() && v117 == v118)
    {

LABEL_79:
      v120 = v0[4];
      v121 = v120[3];
      v122 = v120[4];
      sub_72084(v120, v121);
      v28 = (*(v122 + 320))(v121, v122);
      goto LABEL_21;
    }

    v119 = sub_2C65B8();

    if (v119)
    {
      goto LABEL_79;
    }

    v123 = sub_2C58C8();
    v125 = v124;
    if (v123 == sub_2C58C8() && v125 == v126)
    {
      goto LABEL_82;
    }

    v127 = sub_2C65B8();

    if (v127)
    {
      goto LABEL_27;
    }

    v128 = sub_2C58C8();
    v130 = v129;
    if (v128 == sub_2C58C8() && v130 == v131)
    {
    }

    else
    {
      v132 = sub_2C65B8();

      if ((v132 & 1) == 0)
      {
        v144 = sub_2C58C8();
        v146 = v145;
        if (v144 == sub_2C58C8() && v146 == v147)
        {
        }

        else
        {
          v148 = sub_2C65B8();

          if ((v148 & 1) == 0)
          {
            v155 = sub_2C58C8();
            v157 = v156;
            if (v155 == sub_2C58C8() && v157 == v158)
            {
            }

            else
            {
              v159 = sub_2C65B8();

              if ((v159 & 1) == 0)
              {
                v163 = sub_2C58C8();
                v165 = v164;
                if (v163 != sub_2C58C8() || v165 != v166)
                {
                  v167 = sub_2C65B8();

                  if ((v167 & 1) == 0)
                  {
                    v168 = sub_2C58C8();
                    v170 = v169;
                    if (v168 == sub_2C58C8() && v170 == v171)
                    {
                    }

                    else
                    {
                      v172 = sub_2C65B8();

                      if ((v172 & 1) == 0)
                      {
                        v177 = sub_2C58C8();
                        v179 = v178;
                        if (v177 == sub_2C58C8() && v179 == v180)
                        {
                        }

                        else
                        {
                          v181 = sub_2C65B8();

                          if ((v181 & 1) == 0)
                          {
                            v185 = sub_2C58C8();
                            v187 = v186;
                            if (v185 == sub_2C58C8() && v187 == v188)
                            {
                            }

                            else
                            {
                              v189 = sub_2C65B8();

                              if ((v189 & 1) == 0)
                              {
                                v193 = sub_2C58C8();
                                v195 = v194;
                                if (v193 == sub_2C58C8() && v195 == v196)
                                {
                                }

                                else
                                {
                                  v197 = sub_2C65B8();

                                  if ((v197 & 1) == 0)
                                  {
                                    if (qword_3BB878 != -1)
                                    {
                                      swift_once();
                                    }

                                    v201 = v0[3];
                                    v202 = sub_2C00B8();
                                    sub_57AD8(v202, qword_3C3200);
                                    v203 = v201;
                                    v204 = sub_2C0098();
                                    v205 = sub_2C5DD8();

                                    if (os_log_type_enabled(v204, v205))
                                    {
                                      v206 = swift_slowAlloc();
                                      v207 = swift_slowAlloc();
                                      v212 = v207;
                                      *v206 = 136315138;
                                      v208 = sub_2C58C8();
                                      v210 = sub_5CCF4(v208, v209, &v212);

                                      *(v206 + 4) = v210;
                                      _os_log_impl(&dword_0, v204, v205, "Detected an unhandled property %s", v206, 0xCu);
                                      sub_68CD0(v207);
                                    }

                                    goto LABEL_27;
                                  }
                                }

                                v198 = v0[4];
                                v199 = v198[3];
                                v200 = v198[4];
                                sub_72084(v198, v199);
                                v28 = (*(v200 + 232))(v199, v200);
                                goto LABEL_21;
                              }
                            }

                            v190 = v0[4];
                            v191 = v190[3];
                            v192 = v190[4];
                            sub_72084(v190, v191);
                            v28 = (*(v192 + 280))(v191, v192);
                            goto LABEL_21;
                          }
                        }

                        v182 = v0[4];
                        v183 = v182[3];
                        v184 = v182[4];
                        sub_72084(v182, v183);
                        v28 = (*(v184 + 24))(v183, v184);
                        goto LABEL_21;
                      }
                    }

                    v173 = v0[4];
                    v174 = v173[3];
                    v175 = v173[4];
                    sub_72084(v173, v174);
                    v176 = (*(v175 + 152))(v174, v175);
                    v30 = v0[2];
                    if (v176 != 2)
                    {
                      *(v30 + 24) = &type metadata for Bool;
                      *v30 = v176 & 1;
                      goto LABEL_16;
                    }

                    goto LABEL_28;
                  }

LABEL_27:
                  v30 = v0[2];
                  goto LABEL_28;
                }

LABEL_82:

                goto LABEL_27;
              }
            }

            v160 = v0[4];
            v161 = v160[3];
            v162 = v160[4];
            sub_72084(v160, v161);
            v28 = (*(v162 + 80))(v161, v162);
            goto LABEL_21;
          }
        }

        v149 = v0[4];
        v150 = v149[3];
        v151 = v149[4];
        sub_72084(v149, v150);
        (*(v151 + 216))(&v212, v150, v151);
        v152 = v213;
        if (v213 == 1)
        {
          goto LABEL_27;
        }

        v139 = v214;
        v136 = v215;
        v153 = v212;

        v140 = v153;
        v141 = v152;
        v142 = v139;
        v143 = v136;
LABEL_96:
        sub_C7B50(v140, v141, v142, v143);
        if (v136)
        {
          v154 = v0[2];
          v154[3] = &type metadata for String;
          *v154 = v139;
          v154[1] = v136;
          goto LABEL_16;
        }

        goto LABEL_27;
      }
    }

    v133 = v0[4];
    v134 = v133[3];
    v135 = v133[4];
    sub_72084(v133, v134);
    (*(v135 + 216))(&v212, v134, v135);
    v136 = v213;
    if (v213 == 1)
    {
      goto LABEL_27;
    }

    v138 = v214;
    v137 = v215;
    v139 = v212;

    v140 = v139;
    v141 = v136;
    v142 = v138;
    v143 = v137;
    goto LABEL_96;
  }

LABEL_47:
  v70 = v0[4];
  v71 = v70[3];
  v72 = v70[4];
  sub_72084(v70, v71);
  v73 = *(v72 + 16);
  if (v73(v71, v72) == 4 || v73(v71, v72) == 5)
  {
    goto LABEL_27;
  }

  v75 = v70[3];
  v74 = v70[4];
  sub_72084(v0[4], v75);
  v211 = (*(v74 + 40) + **(v74 + 40));
  v76 = swift_task_alloc();
  v0[9] = v76;
  *v76 = v0;
  v76[1] = sub_C5E60;

  return v211(v75, v74);
}