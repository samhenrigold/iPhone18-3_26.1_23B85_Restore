uint64_t sub_1000E0D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MessagesToRemoveHelper.Range(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v13 = *(v7 + 72);
    while (1)
    {
      sub_1000E300C(v12, v10, type metadata accessor for MessagesToRemoveHelper.Range);
      v14 = *v10;
      sub_1000E3074(v10, type metadata accessor for MessagesToRemoveHelper.Range);
      if (v14 == a1)
      {
        break;
      }

      v12 += v13;
      if (!--v11)
      {
        goto LABEL_5;
      }
    }

    sub_1000E300C(v12, a3, type metadata accessor for MessagesToRemoveHelper.Range);
    v15 = 0;
  }

  else
  {
LABEL_5:
    v15 = 1;
  }

  return (*(v7 + 56))(a3, v15, 1, v6, v8);
}

uint64_t sub_1000E0EE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  *(a1 + *(type metadata accessor for MessagesToRemoveHelper.Range(0) + 32)) = 1;
  (*(v5 + 16))(v7, a2, v4);
  return sub_1004A7104();
}

uint64_t sub_1000E0FDC(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for MessagesToRemoveHelper.Range(0);
  sub_10000E268(a1 + *(v5 + 20), v4, &qword_1005CD1D0, &unk_1004CF2C0);
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v6 = sub_1004A70E4();
  sub_100025F40(v4, &unk_1005D91B0, &unk_1004CF400);
  return v6 & 1;
}

uint64_t sub_1000E10D0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v4);
  v6 = &v23 - v5;
  v7 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v23 - v15;
  v17 = type metadata accessor for MessagesToRemoveHelper.Range(0);
  MessageIdentifierSet.subtracting(_:)(a1 + *(v17 + 24), v6);
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_100025F40(v6, &unk_1005D91B0, &unk_1004CF400);
    v18 = 1;
  }

  else
  {
    sub_100025FDC(v6, v13, &unk_1005D91B0, &unk_1004CF400);
    sub_100025FDC(v13, v9, &qword_1005CD1D0, &unk_1004CF2C0);
    v18 = 0;
  }

  (*(v11 + 56))(v9, v18, 1, v10);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100025F40(v9, &qword_1005CD518, &qword_1004CF2F0);
    v19 = sub_10000C9C0(&qword_1005CD528, &unk_1004CF300);
    return (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
  }

  else
  {
    sub_100025FDC(v9, v16, &qword_1005CD1D0, &unk_1004CF2C0);
    v21 = sub_10000C9C0(&qword_1005CD528, &unk_1004CF300);
    v22 = *(v21 + 48);
    *a2 = *a1;
    sub_100025FDC(v16, a2 + v22, &qword_1005CD1D0, &unk_1004CF2C0);
    return (*(*(v21 - 8) + 56))(a2, 0, 1, v21);
  }
}

uint64_t sub_1000E1420(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MessagesToRemoveHelper.Range(0);
  sub_100016D2C();
  return sub_1004A7034() & 1;
}

uint64_t sub_1000E1480(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  type metadata accessor for MessagesToRemoveHelper.Range(0);
  (*(v4 + 16))(v6, a2, v3);
  return sub_1004A7104();
}

unint64_t sub_1000E1570(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(v7[0]) = 1;
    LODWORD(v8) = -1;
    v3 = sub_100016948();
    static MessageIdentifier.... infix(_:_:)(v7, &v8, &type metadata for UID, &v9);
    sub_100016D2C();
    sub_1004A7114();
    v4 = v9;
  }

  else
  {
    if (a2 == -1)
    {
      sub_100016D2C();

      return sub_1004A7114();
    }

    LODWORD(v7[0]) = a2 + 1;
    LODWORD(v8) = -1;
    v3 = sub_100016948();
    static MessageIdentifier.... infix(_:_:)(v7, &v8, &type metadata for UID, &v6);
    sub_100016D2C();
    sub_1004A7114();
    v4 = v6;
  }

  v7[0] = v4;
  result = Range<>.init<A>(_:)(v7, &type metadata for UID, v3);
  v8 = result;
  if (HIDWORD(result) != result)
  {
    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    v5 = sub_1004A70B4();
    sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
    sub_1004A7064();
    return v5(v7, 0);
  }

  return result;
}

uint64_t sub_1000E1720(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v15 - v10;
  v12 = type metadata accessor for MessagesToRemoveHelper.Range(0);
  MessageIdentifierSet.subtracting(_:)(a2 + *(v12 + 28), v8);
  MessageIdentifierSet.subtracting(_:)(a3, v11);
  sub_100025F40(v8, &unk_1005D91B0, &unk_1004CF400);
  v13 = MessageIdentifierSet.count.getter();
  result = sub_100025F40(v11, &unk_1005D91B0, &unk_1004CF400);
  if (__OFADD__(*a1, v13))
  {
    __break(1u);
  }

  else
  {
    *a1 += v13;
  }

  return result;
}

uint64_t sub_1000E186C(uint64_t a1, uint64_t a2, void (*a3)(void, void, void), uint64_t a4)
{
  v58 = a4;
  v8 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  __chkstk_darwin(v8 - 8);
  v55 = &v45 - v9;
  v10 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v56 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v45 - v11;
  v13 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v13);
  v52 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v51 = &v45 - v16;
  __chkstk_darwin(v17);
  v54 = &v45 - v18;
  __chkstk_darwin(v19);
  v21 = &v45 - v20;
  __chkstk_darwin(v22);
  v24 = &v45 - v23;
  result = MessageIdentifierSet.count.getter();
  v57 = a3;
  if (result < a3)
  {
    v49 = v12;
    v53 = a1;
    v26 = type metadata accessor for MessagesToRemoveHelper.Range(0);
    v27 = a2 + *(v26 + 28);
    v48 = a2;
    MessageIdentifierSet.subtracting(_:)(v27, v21);
    MessageIdentifierSet.subtracting(_:)(v58, v24);
    sub_100025F40(v21, &unk_1005D91B0, &unk_1004CF400);
    v50 = v10;
    if (sub_1004A70C4())
    {
      return sub_100025F40(v24, &unk_1005D91B0, &unk_1004CF400);
    }

    v28 = v21;
    v47 = v4;
    v29 = MessageIdentifierSet.count.getter();
    result = MessageIdentifierSet.count.getter();
    if (__OFADD__(v29, result))
    {
      __break(1u);
    }

    else
    {
      v30 = v57;
      if (v29 + result <= v57)
      {
        v57 = *(v56 + 16);
        v43 = v49;
        v42 = v50;
        v57(v49, v24, v50);
        sub_1004A7104();
        v44 = v55;
        sub_10000E268(v48 + *(v26 + 20), v55, &qword_1005CD1D0, &unk_1004CF2C0);
        MessageIdentifierSet.subtracting(_:)(v58, v28);
        sub_100025F40(v44, &unk_1005D91B0, &unk_1004CF400);
        _s15MissingMessagesO10NewMissingVMa(0);
        v57(v43, v28, v42);
        sub_1004A7104();
        v33 = v28;
LABEL_10:
        sub_100025F40(v33, &unk_1005D91B0, &unk_1004CF400);
        return sub_100025F40(v24, &unk_1005D91B0, &unk_1004CF400);
      }

      v31 = MessageIdentifierSet.count.getter();
      result = MessageIdentifierSet.count.getter();
      v32 = v31 + result;
      if (!__OFADD__(v31, result))
      {
        v46 = v28;
        result = v32 - v30;
        v33 = v54;
        if (!__OFSUB__(v32, v30))
        {
          MessageIdentifierSet.suffix(_:)(result, v13, v54);
          v34 = sub_1000E5314();
          if ((v34 & 0x100000000) == 0)
          {
            v35 = v34;
            v57 = *(v56 + 16);
            v36 = v49;
            v57(v49, v33, v50);
            sub_1004A7104();
            v37 = v55;
            sub_10000E268(v48 + *(v26 + 20), v55, &qword_1005CD1D0, &unk_1004CF2C0);
            v38 = v51;
            MessageIdentifierSet.subtracting(_:)(v58, v51);
            sub_100025F40(v37, &unk_1005D91B0, &unk_1004CF400);
            LODWORD(v60) = v35;
            LODWORD(v59) = -1;
            v39 = sub_100016948();
            static MessageIdentifier.... infix(_:_:)(&v60, &v59, &type metadata for UID, &v61);
            v60 = v61;
            v59 = Range<>.init<A>(_:)(&v60, &type metadata for UID, v39);
            sub_100016D2C();
            v40 = v52;
            sub_1004A7124();
            v41 = v46;
            MessageIdentifierSet.intersection(_:)(v40, v46);
            sub_100025F40(v40, &unk_1005D91B0, &unk_1004CF400);
            sub_100025F40(v38, &unk_1005D91B0, &unk_1004CF400);
            _s15MissingMessagesO10NewMissingVMa(0);
            v57(v36, v41, v50);
            sub_1004A7104();
            sub_100025F40(v41, &unk_1005D91B0, &unk_1004CF400);
          }

          goto LABEL_10;
        }

LABEL_15:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1000E1E38(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for MessagesToRemoveHelper.Range(0);
  sub_100016D2C();
  if (sub_1004A7034() & 1) != 0 && (sub_1004A7034() & 1) != 0 && (sub_1004A7034())
  {
    v5 = *(a1 + *(v4 + 32)) ^ *(a2 + *(v4 + 32)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void *sub_1000E1F1C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = type metadata accessor for MessageBatches(0);
  __chkstk_darwin(v6);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v24[-v10];
  v12 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v12 - 8);
  v14 = &v24[-v13];
  v15 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v15 - 8);
  v17 = &v24[-v16];
  if (!*(*(a1 + 8) + 16))
  {
    sub_10000E268(a1 + *(v6 + 24), v17, &qword_1005CD518, &qword_1004CF2F0);
    v21 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
    if ((*(*(v21 - 8) + 48))(v17, 1, v21) == 1)
    {
      sub_100025F40(v17, &qword_1005CD518, &qword_1004CF2F0);
    }

    else
    {
      sub_10000E268(v17, v14, &unk_1005D91B0, &unk_1004CF400);
      sub_100025F40(v17, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
      v22 = sub_1004A70C4();
      sub_100025F40(v14, &unk_1005D91B0, &unk_1004CF400);
      if ((v22 & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    return _swiftEmptyArrayStorage;
  }

LABEL_2:
  sub_1000E300C(a1, v8, type metadata accessor for MessageBatches);
  v18 = a3 & 1;
  v24[12] = v18;
  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = HIDWORD(a2);
  }

  if (v18)
  {
    a2 = 0;
  }

  else
  {
    a2 = a2;
  }

  sub_1000D7F2C(v19 | (v18 << 32));
  v24[8] = v18;
  sub_1000D9360(a2 | (v18 << 32), v11);
  sub_1000E3074(v8, type metadata accessor for MessageBatches);
  v20 = sub_1000D87C8();
  sub_1000E3074(v11, type metadata accessor for MessageBatches);
  return v20;
}

void *sub_1000E2208(uint64_t a1, unint64_t a2, int a3)
{
  v37 = sub_10000C9C0(&qword_1005CFD78, &qword_1004D3468);
  __chkstk_darwin(v37);
  v34 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v36 = &v26 - v8;
  v9 = type metadata accessor for MessagesToRemoveHelper.Range(0);
  v35 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v11 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1000E1F1C(a1, a2, a3 & 1);
  v13 = v12[2];
  if (v13)
  {
    v27 = a1;
    v28 = a2;
    v29 = a3;
    v39 = _swiftEmptyArrayStorage;
    sub_100091C88(0, v13, 0);
    v14 = v39;
    v33 = v12[2];
    v15 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
    v16 = 0;
    v18 = *(v15 - 8);
    result = (v15 - 8);
    v30 = v12 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v31 = v18;
    v32 = v12;
    while (v33 != v16)
    {
      if (v16 >= v12[2])
      {
        goto LABEL_12;
      }

      v19 = v36;
      v20 = v37;
      v21 = *(v37 + 48);
      sub_10000E268(&v30[*(v31 + 72) * v16], &v36[v21], &qword_1005CD1D0, &unk_1004CF2C0);
      v22 = v34;
      *v34 = v16;
      v23 = *(v20 + 48);
      sub_100025FDC(&v19[v21], v22 + v23, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_1000E07B4(v16, v22 + v23, v11);
      sub_100025F40(v22, &qword_1005CFD78, &qword_1004D3468);
      v39 = v14;
      v25 = v14[2];
      v24 = v14[3];
      if (v25 >= v24 >> 1)
      {
        sub_100091C88((v24 > 1), v25 + 1, 1);
        v14 = v39;
      }

      ++v16;
      v14[2] = v25 + 1;
      result = sub_1000E2FA4(v11, v14 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v25, type metadata accessor for MessagesToRemoveHelper.Range);
      v12 = v32;
      if (v13 == v16)
      {

        sub_1000E3074(v27, type metadata accessor for MessageBatches);
        LOBYTE(a3) = v29;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {

    sub_1000E3074(a1, type metadata accessor for MessageBatches);
    v14 = _swiftEmptyArrayStorage;
LABEL_10:
    v38 = a3 & 1;
    return v14;
  }

  return result;
}

uint64_t type metadata accessor for MessagesToRemoveHelper.Range(uint64_t a1)
{
  result = qword_1005CFDD8;
  if (!qword_1005CFDD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1000E25D0(uint64_t a1, unint64_t a2, int a3)
{
  v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v6 - 8);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v44 = &v41 - v9;
  v10 = type metadata accessor for MessageBatches(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (&v41 - v14);
  v16 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v16 - 8);
  v18 = &v41 - v17;
  v19 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v42 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v43 = &v41 - v23;
  sub_1000E300C(a1, v12, type metadata accessor for MessageBatches);
  v46 = a3;
  v25 = a3 & 1;
  v24 = (a3 & 1) == 0;
  LOBYTE(v48) = a3 & 1;
  v26 = a3 & 1;
  if (a3)
  {
    v27 = 0;
  }

  else
  {
    v27 = HIDWORD(a2);
  }

  if (v24)
  {
    a2 = a2;
  }

  else
  {
    a2 = 0;
  }

  sub_1000D7F2C(v27 | (v26 << 32));
  LOBYTE(v48) = v25;
  sub_1000D9360(a2 | (v25 << 32), v15);
  sub_1000E3074(v12, type metadata accessor for MessageBatches);
  v28 = v15[1];

  sub_1000E3074(v15, type metadata accessor for MessageBatches);
  if (*(v28 + 16))
  {
    v29 = *(v28 + 32);

    v48 = v29;
    v30 = sub_100016948();
    v47 = Range<>.init<A>(_:)(&v48, &type metadata for UID, v30);
    sub_100016D2C();
    sub_1004A7124();
    v31 = 0;
  }

  else
  {

    v31 = 1;
  }

  (*(v20 + 56))(v18, v31, 1, v19);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_100025F40(v18, &qword_1005CD518, &qword_1004CF2F0);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v33 = v43;
    sub_100025FDC(v18, v43, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_10000C9C0(&qword_1005CF068, &qword_1004D1F58);
    v34 = (type metadata accessor for MessagesToRemoveHelper.Range(0) - 8);
    v35 = (*(*v34 + 80) + 32) & ~*(*v34 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1004CEAA0;
    v37 = (v36 + v35);
    v38 = v42;
    sub_10000E268(v33, v42, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100016D2C();
    v39 = v44;
    sub_1004A7114();
    v40 = v45;
    sub_1004A7114();
    *v37 = 0;
    sub_100025FDC(v38, v37 + v34[7], &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100025FDC(v39, v37 + v34[8], &unk_1005D91B0, &unk_1004CF400);
    sub_100025FDC(v40, v37 + v34[9], &unk_1005D91B0, &unk_1004CF400);
    *(v37 + v34[10]) = 0;
    sub_100025F40(v33, &qword_1005CD1D0, &unk_1004CF2C0);
    return v36;
  }
}

uint64_t sub_1000E2B10(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
  }

  else
  {
    v10 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    if (*(*(v10 - 8) + 84) != a2)
    {
      v13 = *(a1 + a3[8]);
      if (v13 >= 2)
      {
        return ((v13 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
  }

  v11 = *(v8 + 48);

  return v11(a1 + v9, a2, v7);
}

uint64_t sub_1000E2C54(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8]) = a2 + 1;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_1000E2D70(uint64_t a1)
{
  sub_1000E2E4C(319, &qword_1005CE2B8, type metadata accessor for MessageIdentifierSetNonEmpty);
  if (v1 <= 0x3F)
  {
    sub_1000E2E4C(319, &qword_1005CDDC0, type metadata accessor for MessageIdentifierSet);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000E2E4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_100016948();
    v7 = a3(a1, &type metadata for UID, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1000E2EF4()
{
  result = qword_1005CFE20;
  if (!qword_1005CFE20)
  {
    result = swift_getWitnessTable("58\v", &type metadata for MessagesToRemoveHelper.Index, v0, v1);
    atomic_store(result, &qword_1005CFE20);
  }

  return result;
}

unint64_t sub_1000E2F4C()
{
  result = qword_1005CFE28;
  if (!qword_1005CFE28)
  {
    v3 = type metadata accessor for MessagesToRemoveHelper.Range(255);
    result = swift_getWitnessTable(byte_1004D35D4, v3, v0, v1);
    atomic_store(result, &qword_1005CFE28);
  }

  return result;
}

uint64_t sub_1000E2FA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000E300C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000E3074(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000E30F8(uint64_t a1)
{
  result = _s15MissingMessagesO10IncompleteVMa(319);
  if (v2 <= 0x3F)
  {
    result = _s15MissingMessagesO8CompleteVMa(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000E31CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000E32D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s15MissingMessagesO11QueriedUIDsVMa(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

void sub_1000E338C(uint64_t a1)
{
  sub_10002ABD0();
  if (v1 <= 0x3F)
  {
    _s15MissingMessagesO11QueriedUIDsVMa(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000E342C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000E34B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1000E3534(uint64_t a1)
{
  sub_1000E3BE4(319, &qword_1005CDDC0, type metadata accessor for MessageIdentifierSet);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1000E35D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s15MissingMessagesO8ProgressVMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = _s15MissingMessagesO11QueriedUIDsVMa(0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 28));
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
    v10 = a1 + *(a3 + 24);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1000E3720(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = _s15MissingMessagesO8ProgressVMa(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = _s15MissingMessagesO11QueriedUIDsVMa(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1000E3828(uint64_t a1)
{
  _s15MissingMessagesO8ProgressVMa(319);
  if (v1 <= 0x3F)
  {
    sub_10002ABD0();
    if (v2 <= 0x3F)
    {
      _s15MissingMessagesO11QueriedUIDsVMa(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000E38E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000E39FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_1000E3B10(uint64_t a1)
{
  sub_1000E3BE4(319, &qword_1005CE2B8, type metadata accessor for MessageIdentifierSetNonEmpty);
  if (v1 <= 0x3F)
  {
    sub_1000E3BE4(319, &qword_1005CDDC0, type metadata accessor for MessageIdentifierSet);
    if (v2 <= 0x3F)
    {
      sub_10002ABD0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000E3BE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_100016948();
    v7 = a3(a1, &type metadata for UID, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t _s15MissingMessagesO7UnknownVwet(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000E3CF8(uint64_t a1)
{
  v190 = a1;
  v188 = _s15MissingMessagesO10IncompleteVMa(0);
  __chkstk_darwin(v188);
  v181 = &v167 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v182 = &v167 - v3;
  v185 = _s15MissingMessagesO8CompleteVMa(0);
  __chkstk_darwin(v185);
  v173 = &v167 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v180 = &v167 - v6;
  v187 = _s15MissingMessagesO8ProgressVMa(0);
  __chkstk_darwin(v187);
  v178 = &v167 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v175 = &v167 - v9;
  __chkstk_darwin(v10);
  v179 = &v167 - v11;
  __chkstk_darwin(v12);
  v176 = &v167 - v13;
  __chkstk_darwin(v14);
  v177 = &v167 - v15;
  __chkstk_darwin(v16);
  v174 = &v167 - v17;
  __chkstk_darwin(v18);
  v172 = &v167 - v19;
  v189 = sub_10000C9C0(&qword_1005D01D8, &qword_1004D3898);
  __chkstk_darwin(v189);
  v21 = &v167 - v20;
  v22 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v184 = &v167 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v171 = &v167 - v26;
  __chkstk_darwin(v27);
  v183 = &v167 - v28;
  __chkstk_darwin(v29);
  v170 = &v167 - v30;
  __chkstk_darwin(v31);
  v167 = &v167 - v32;
  __chkstk_darwin(v33);
  v35 = &v167 - v34;
  v36 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v36);
  v169 = &v167 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v168 = &v167 - v39;
  __chkstk_darwin(v40);
  v42 = &v167 - v41;
  v43 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v43 - 8);
  v45 = &v167 - v44;
  v46 = _s15MissingMessagesOMa(0);
  __chkstk_darwin(v46);
  v48 = &v167 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E8398(v191, v48, _s15MissingMessagesOMa);
  sub_10000E268(v190, v42, &unk_1005D91B0, &unk_1004CF400);
  v186 = v36;
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_100025F40(v42, &unk_1005D91B0, &unk_1004CF400);
    v49 = 1;
  }

  else
  {
    sub_100025FDC(v42, v35, &unk_1005D91B0, &unk_1004CF400);
    sub_100025FDC(v35, v45, &qword_1005CD1D0, &unk_1004CF2C0);
    v49 = 0;
  }

  (*(v23 + 56))(v45, v49, 1, v22);
  v50 = *(v189 + 48);
  sub_1000E8398(v48, v21, _s15MissingMessagesOMa);
  sub_100025FDC(v45, &v21[v50], &qword_1005CD518, &qword_1004CF2F0);
  v189 = v46;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v78 = *v21;
    if ((*(v23 + 48))(&v21[v50], 1, v22) == 1)
    {
      v79 = _s15MissingMessagesO10NewMissingVMa(0);
      v80 = v191;
      v81 = v190 + *(v79 + 20);
      v82 = *(v81 + 16);
      v83 = *(v81 + 20);
      v84 = v185;
      sub_1000E8D38(v190 + *(v79 + 24), v191 + *(v185 + 20), _s15MissingMessagesO11QueriedUIDsVMa);
      *v80 = v82;
      *(v80 + 4) = v83;
      *(v80 + *(v84 + 24)) = v78;
    }

    else
    {
      v124 = v167;
      sub_100025FDC(&v21[v50], v167, &qword_1005CD1D0, &unk_1004CF2C0);
      v125 = v170;
      sub_10000E268(v124, v170, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100016D2C();
      v126 = v168;
      sub_1004A7114();
      sub_100025F40(v124, &qword_1005CD1D0, &unk_1004CF2C0);
      v127 = _s15MissingMessagesO10NewMissingVMa(0);
      v128 = v190;
      v129 = (v190 + *(v127 + 20));
      v130 = *v129;
      v131 = v129[2];
      if (*v129 <= v131)
      {
        v132 = v129[2];
      }

      else
      {
        v132 = *v129;
      }

      if (*(v129 + 4))
      {
        v130 = v129[2];
      }

      else
      {
        v131 = v132;
      }

      if (*(v129 + 12))
      {
        v133 = v130;
      }

      else
      {
        v133 = v131;
      }

      v134 = v129[3] & v129[1];
      v135 = v125;
      v136 = v172;
      sub_100025FDC(v135, v172, &qword_1005CD1D0, &unk_1004CF2C0);
      v137 = v187;
      sub_100025FDC(v126, v136 + *(v187 + 20), &unk_1005D91B0, &unk_1004CF400);
      v138 = v136 + *(v137 + 24);
      *v138 = v133;
      *(v138 + 4) = v134;
      LODWORD(v137) = v129[4];
      v139 = *(v129 + 20);
      v140 = v188;
      v141 = v128 + *(v127 + 24);
      v142 = v191;
      sub_1000E8D38(v141, v191 + *(v188 + 24), _s15MissingMessagesO11QueriedUIDsVMa);
      sub_1000E8398(v136, v142, _s15MissingMessagesO8ProgressVMa);
      v143 = v142 + *(v140 + 20);
      *v143 = v137;
      *(v143 + 4) = v139;
      *(v142 + *(v140 + 28)) = v78;
    }

    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload == 1)
  {
    if ((*(v23 + 48))(&v21[v50], 1, v22) == 1)
    {
      v52 = v181;
      sub_1000E8398(v21, v181, _s15MissingMessagesO10IncompleteVMa);
      v53 = v175;
      sub_1000E8D38(v52, v175, _s15MissingMessagesO8ProgressVMa);
      v54 = v53 + *(v187 + 24);
      v55 = *v54;
      v56 = *(v54 + 4);
      v57 = _s15MissingMessagesO10NewMissingVMa(0);
      v58 = v190;
      v59 = (v190 + *(v57 + 20));
      v60 = *v59;
      v61 = v59[2];
      if (*v59 <= v61)
      {
        v62 = v59[2];
      }

      else
      {
        v62 = *v59;
      }

      if (*(v59 + 4))
      {
        v60 = v59[2];
      }

      else
      {
        v61 = v62;
      }

      if (!*(v59 + 12))
      {
        v60 = v61;
      }

      v63 = v59[3] & v59[1];
      if (v60 >= v55)
      {
        v64 = v55;
      }

      else
      {
        v64 = v60;
      }

      if (v59[3] & v59[1])
      {
        v60 = v55;
        v64 = v55;
      }

      if (!v56)
      {
        v60 = v64;
      }

      *v54 = v60;
      *(v54 + 4) = v56 & v63;
      v65 = v178;
      sub_1000E8D38(v53, v178, _s15MissingMessagesO8ProgressVMa);
      v66 = v188;
      v67 = v52 + *(v188 + 20);
      v68 = *v67;
      v69 = v59[4];
      v70 = *(v59 + 20);
      if (v69 <= *v67)
      {
        v71 = *v67;
      }

      else
      {
        v71 = v59[4];
      }

      if (*(v59 + 20))
      {
        v69 = *v67;
      }

      else
      {
        v68 = v71;
      }

      v72 = *(v67 + 4);
      if (v72)
      {
        v73 = v69;
      }

      else
      {
        v73 = v68;
      }

      v74 = v72 & v70;
      v75 = v191;
      MessageIdentifierSet.union(_:)(v58 + *(v57 + 24), v191 + *(v188 + 24));
      sub_1000E8400(v53, _s15MissingMessagesO8ProgressVMa);
      v76 = *(v52 + *(v66 + 28));
      sub_1000E8400(v52, _s15MissingMessagesO10IncompleteVMa);
      sub_1000E8398(v65, v75, _s15MissingMessagesO8ProgressVMa);
      v77 = v75 + *(v66 + 20);
      *v77 = v73;
      *(v77 + 4) = v74;
      *(v75 + *(v66 + 28)) = v76;
      return swift_storeEnumTagMultiPayload();
    }

    v98 = v182;
    sub_1000E8398(v21, v182, _s15MissingMessagesO10IncompleteVMa);
    v99 = v184;
    sub_100025FDC(&v21[v50], v184, &qword_1005CD1D0, &unk_1004CF2C0);
    v100 = v176;
    sub_1000E8D38(v98, v176, _s15MissingMessagesO8ProgressVMa);
    sub_1000E6BC8(v99);
    v101 = v100 + *(v187 + 24);
    v102 = *v101;
    v103 = *(v101 + 4);
    v104 = _s15MissingMessagesO10NewMissingVMa(0);
    v105 = v190;
    v106 = (v190 + *(v104 + 20));
    v107 = *v106;
    v108 = v106[2];
    if (*v106 <= v108)
    {
      v109 = v106[2];
    }

    else
    {
      v109 = *v106;
    }

    if (*(v106 + 4))
    {
      v107 = v106[2];
    }

    else
    {
      v108 = v109;
    }

    if (!*(v106 + 12))
    {
      v107 = v108;
    }

    v110 = v106[3] & v106[1];
    if (v107 >= v102)
    {
      v111 = v102;
    }

    else
    {
      v111 = v107;
    }

    if (v106[3] & v106[1])
    {
      v107 = v102;
      v111 = v102;
    }

    if (!v103)
    {
      v107 = v111;
    }

    *v101 = v107;
    *(v101 + 4) = v103 & v110;
    v112 = v179;
    sub_1000E8D38(v100, v179, _s15MissingMessagesO8ProgressVMa);
    v113 = v188;
    v114 = v98 + *(v188 + 20);
    v115 = *v114;
    v116 = v106[4];
    if (v116 <= *v114)
    {
      v117 = *v114;
    }

    else
    {
      v117 = v106[4];
    }

    if (*(v106 + 20))
    {
      v116 = *v114;
    }

    else
    {
      v115 = v117;
    }

    v118 = *(v114 + 4);
    if (v118)
    {
      v119 = v116;
    }

    else
    {
      v119 = v115;
    }

    v120 = v118 & v106[5];
    v121 = v191;
    MessageIdentifierSet.union(_:)(v105 + *(v104 + 24), v191 + *(v188 + 24));
    sub_1000E8400(v100, _s15MissingMessagesO8ProgressVMa);
    sub_100025F40(v184, &qword_1005CD1D0, &unk_1004CF2C0);
    v122 = *(v98 + *(v113 + 28));
    v123 = _s15MissingMessagesO10IncompleteVMa;
LABEL_98:
    sub_1000E8400(v98, v123);
    sub_1000E8398(v112, v121, _s15MissingMessagesO8ProgressVMa);
    v165 = v121 + *(v113 + 20);
    *v165 = v119;
    *(v165 + 4) = v120;
    *(v121 + *(v113 + 28)) = v122;
    return swift_storeEnumTagMultiPayload();
  }

  if ((*(v23 + 48))(&v21[v50], 1, v22) != 1)
  {
    v98 = v180;
    sub_1000E8398(v21, v180, _s15MissingMessagesO8CompleteVMa);
    v144 = v183;
    sub_100025FDC(&v21[v50], v183, &qword_1005CD1D0, &unk_1004CF2C0);
    v145 = v144;
    v146 = v171;
    sub_10000E268(v145, v171, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100016D2C();
    v147 = v169;
    sub_1004A7114();
    v148 = _s15MissingMessagesO10NewMissingVMa(0);
    v149 = v190;
    v150 = (v190 + *(v148 + 20));
    v151 = *v150;
    v152 = v150[2];
    if (*v150 <= v152)
    {
      v153 = v150[2];
    }

    else
    {
      v153 = *v150;
    }

    if (*(v150 + 4))
    {
      v151 = v150[2];
    }

    else
    {
      v152 = v153;
    }

    if (*(v150 + 12))
    {
      v154 = v151;
    }

    else
    {
      v154 = v152;
    }

    v155 = v150[3] & v150[1];
    v156 = v146;
    v157 = v174;
    sub_100025FDC(v156, v174, &qword_1005CD1D0, &unk_1004CF2C0);
    v158 = v187;
    sub_100025FDC(v147, v157 + *(v187 + 20), &unk_1005D91B0, &unk_1004CF400);
    v159 = v157 + *(v158 + 24);
    *v159 = v154;
    *(v159 + 4) = v155;
    v112 = v177;
    sub_1000E8D38(v157, v177, _s15MissingMessagesO8ProgressVMa);
    v160 = *v98;
    v161 = v150[4];
    v162 = *(v150 + 20);
    if (v161 <= *v98)
    {
      v163 = *v98;
    }

    else
    {
      v163 = v150[4];
    }

    if (*(v150 + 20))
    {
      v161 = *v98;
    }

    else
    {
      v160 = v163;
    }

    if (*(v98 + 4))
    {
      v119 = v161;
    }

    else
    {
      v119 = v160;
    }

    v120 = *(v98 + 4) & v162;
    v164 = v185;
    v113 = v188;
    v121 = v191;
    MessageIdentifierSet.union(_:)(v149 + *(v148 + 24), v191 + *(v188 + 24));
    sub_1000E8400(v157, _s15MissingMessagesO8ProgressVMa);
    sub_100025F40(v183, &qword_1005CD1D0, &unk_1004CF2C0);
    v122 = *(v98 + *(v164 + 24));
    v123 = _s15MissingMessagesO8CompleteVMa;
    goto LABEL_98;
  }

  v85 = v173;
  sub_1000E8398(v21, v173, _s15MissingMessagesO8CompleteVMa);
  v86 = *v85;
  v87 = *(v85 + 4);
  v88 = _s15MissingMessagesO10NewMissingVMa(0);
  v89 = v191;
  v90 = v190 + *(v88 + 20);
  v91 = *(v90 + 16);
  v92 = *(v90 + 20);
  if (v91 <= v86)
  {
    v93 = v86;
  }

  else
  {
    v93 = v91;
  }

  if (v92)
  {
    v91 = v86;
    v93 = v86;
  }

  if (v87)
  {
    v94 = v91;
  }

  else
  {
    v94 = v93;
  }

  v95 = v87 & v92;
  v96 = v185;
  MessageIdentifierSet.union(_:)(v190 + *(v88 + 24), v191 + *(v185 + 20));
  v97 = *(v85 + *(v96 + 24));
  sub_1000E8400(v85, _s15MissingMessagesO8CompleteVMa);
  *v89 = v94;
  *(v89 + 4) = v95;
  *(v89 + *(v96 + 24)) = v97;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000E4C34(uint64_t *a1, uint64_t *a2)
{
  sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v4 = sub_1004A7044();
  if (v4 == sub_1004A7074())
  {
    return 0;
  }

  result = sub_1004A7074();
  v6 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v7 = sub_1004A7044();
  result = sub_1004A7074();
  if (v6 < v7 || v6 >= result)
  {
    goto LABEL_9;
  }

  v8 = sub_10000C9C0(a1, a2);
  MessageIdentifierSet.RangeView.subscript.getter(v8, &v9);
  return v9;
}

uint64_t sub_1000E4D18(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005D01E0, &qword_1004D38A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - v5;
  v7 = _s15MissingMessagesO8ProgressVMa(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s15MissingMessagesO10IncompleteVMa(0);
  __chkstk_darwin(v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s15MissingMessagesOMa(0);
  __chkstk_darwin(v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E8D38(v2, v16, _s15MissingMessagesOMa);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      sub_1000E8400(v2, _s15MissingMessagesOMa);
      sub_1000E8398(v16, v13, _s15MissingMessagesO10IncompleteVMa);
      sub_1000E6E98(a1, v6);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        sub_100025F40(v6, &qword_1005D01E0, &qword_1004D38A0);
        v18 = v11[6];
        v19 = &v13[v11[5]];
        v20 = *v19;
        v21 = v19[4];
        v22 = _s15MissingMessagesO8CompleteVMa(0);
        sub_1000E8D38(&v13[v18], v2 + *(v22 + 20), _s15MissingMessagesO11QueriedUIDsVMa);
        v23 = v13[v11[7]];
        sub_1000E8400(v13, _s15MissingMessagesO10IncompleteVMa);
        *v2 = v20;
        *(v2 + 4) = v21;
        *(v2 + *(v22 + 24)) = v23;
      }

      else
      {
        sub_1000E8398(v6, v10, _s15MissingMessagesO8ProgressVMa);
        sub_1000E666C();
        if (v24)
        {
          v25 = &v13[v11[5]];
          v26 = *v25;
          LOBYTE(v25) = v25[4];
          v27 = &v10[*(v7 + 24)];
          *v27 = v26;
          v27[4] = v25;
        }

        sub_1000E8398(v10, v2, _s15MissingMessagesO8ProgressVMa);
        v28 = &v13[v11[5]];
        v29 = *v28;
        v30 = v28[4];
        sub_1000E8D38(&v13[v11[6]], v2 + v11[6], _s15MissingMessagesO11QueriedUIDsVMa);
        v31 = v13[v11[7]];
        sub_1000E8400(v13, _s15MissingMessagesO10IncompleteVMa);
        v32 = v2 + v11[5];
        *v32 = v29;
        *(v32 + 4) = v30;
        *(v2 + v11[7]) = v31;
      }

      return swift_storeEnumTagMultiPayload();
    }

    else
    {
      return sub_1000E8400(v16, _s15MissingMessagesOMa);
    }
  }

  return result;
}

uint64_t sub_1000E5108()
{
  v1 = v0;
  v2 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = _s15MissingMessagesO10IncompleteVMa(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s15MissingMessagesOMa(0);
  __chkstk_darwin(v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E8D38(v1, v10, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return 0;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1000E8398(v10, v7, _s15MissingMessagesO10IncompleteVMa);
    sub_10000E268(v7, v4, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    v12 = MessageIdentifierSet.count.getter();
    sub_1000E8400(v7, _s15MissingMessagesO10IncompleteVMa);
    sub_100025F40(v4, &unk_1005D91B0, &unk_1004CF400);
    return v12;
  }

  else
  {
    sub_1000E8400(v10, _s15MissingMessagesOMa);
    return 0;
  }
}

unint64_t sub_1000E5314()
{
  v0 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  __chkstk_darwin(v0);
  v2 = &v7 - v1;
  sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  MessageIdentifierSet.ranges.getter(v2);
  sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v3 = sub_1004A7044();
  v4 = sub_1004A7074();
  if (v3 == v4)
  {
    sub_100025F40(v2, &qword_1005CD7A0, &unk_1004CF590);
    v5 = 0;
  }

  else
  {
    MessageIdentifierSet.RangeView.subscript.getter(v0, &v8);
    sub_100025F40(v2, &qword_1005CD7A0, &unk_1004CF590);
    v5 = v8;
  }

  return v5 | ((v3 == v4) << 32);
}

unint64_t sub_1000E5454()
{
  v1 = v0;
  v2 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = _s15MissingMessagesOMa(0);
  __chkstk_darwin(v5);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = _s15MissingMessagesO8CompleteVMa(0);
  __chkstk_darwin(v8);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000E8D38(v1, v7, _s15MissingMessagesOMa);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v14 = _s15MissingMessagesOMa;
    v15 = v7;
LABEL_8:
    sub_1000E8400(v15, v14);
    v12 = 0;
    v13 = 1;
    return v12 | (v13 << 32);
  }

  sub_1000E8398(v7, v10, _s15MissingMessagesO8CompleteVMa);
  if (v10[*(v8 + 24)] != 1)
  {
    v14 = _s15MissingMessagesO8CompleteVMa;
    v15 = v10;
    goto LABEL_8;
  }

  sub_1000E8D38(&v10[*(v8 + 20)], v4, _s15MissingMessagesO11QueriedUIDsVMa);
  v11 = sub_1000E5314();
  sub_1000E8400(v10, _s15MissingMessagesO8CompleteVMa);
  sub_100025F40(v4, &unk_1005D91B0, &unk_1004CF400);
  v12 = 0;
  v13 = 1;
  if ((v11 & 0x100000000) == 0 && (v11 & 0xFFFFFFFE) != 0)
  {
    v13 = 0;
    v12 = (v11 - 1);
  }

  return v12 | (v13 << 32);
}

uint64_t sub_1000E5698@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = _s15MissingMessagesO8ProgressVMa(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s15MissingMessagesO10IncompleteVMa(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s15MissingMessagesOMa(0);
  __chkstk_darwin(v13);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E8D38(v2, v15, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1000E8398(v15, v12, _s15MissingMessagesO10IncompleteVMa);
      sub_1000E8D38(v12, v9, _s15MissingMessagesO8ProgressVMa);
      sub_1000E8400(v12, _s15MissingMessagesO10IncompleteVMa);
      sub_10000E268(v9, v6, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_1000E8400(v9, _s15MissingMessagesO8ProgressVMa);
      return sub_100025FDC(v6, a1, &unk_1005D91B0, &unk_1004CF400);
    }

    sub_1000E8400(v15, _s15MissingMessagesOMa);
  }

  sub_100016D2C();
  return sub_1004A7114();
}

uint64_t sub_1000E5918(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v4 = sub_10000C9C0(&qword_1005D0140, &unk_1004D3840);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  __chkstk_darwin(v11 - 8);
  v13 = &v26 - v12;
  v14 = _s15MissingMessagesO10IncompleteVMa(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _s15MissingMessagesOMa(0);
  __chkstk_darwin(v17);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E8D38(v2, v19, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1000E8398(v19, v16, _s15MissingMessagesO10IncompleteVMa);
      sub_10000E268(v16, v13, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      v21 = MessageIdentifierSet.count.getter();
      sub_1000E8400(v16, _s15MissingMessagesO10IncompleteVMa);
      sub_100025F40(v13, &unk_1005D91B0, &unk_1004CF400);
    }

    else
    {
      sub_1000E8400(v19, _s15MissingMessagesOMa);
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v21 >= v26 / 2)
  {
    goto LABEL_13;
  }

  sub_1000E62E4(v6);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    sub_1000E8398(v6, v10, _s15MissingMessagesO11QueriedUIDsVMa);
    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    if ((sub_1004A70C4() & 1) == 0 && (a2 & 0x100000000) == 0)
    {
      v27 = a2;
      v23 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      v24 = MessageIdentifierSet.contains(_:)(&v27, v23);
      sub_1000E8400(v10, _s15MissingMessagesO11QueriedUIDsVMa);
      v22 = v24 ^ 1;
      return v22 & 1;
    }

    sub_1000E8400(v10, _s15MissingMessagesO11QueriedUIDsVMa);
LABEL_13:
    v22 = 0;
    return v22 & 1;
  }

  sub_100025F40(v6, &qword_1005D0140, &unk_1004D3840);
  v22 = 1;
  return v22 & 1;
}

uint64_t sub_1000E5D14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = _s15MissingMessagesO8CompleteVMa(0);
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s15MissingMessagesO10IncompleteVMa(0);
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s15MissingMessagesOMa(0);
  __chkstk_darwin(v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E8D38(v2, v12, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1000E8398(v12, v9, _s15MissingMessagesO10IncompleteVMa);
      v14 = *(v7 + 24);
      v15 = &v9[*(v7 + 20)];
      v16 = *v15;
      v17 = v15[4];
      v18 = _s15MissingMessagesO30WindowUpperBoundAndQueriedUIDsVMa(0);
      sub_1000E8D38(&v9[v14], a1 + *(v18 + 20), _s15MissingMessagesO11QueriedUIDsVMa);
      sub_1000E8400(v9, _s15MissingMessagesO10IncompleteVMa);
      *a1 = v16;
      *(a1 + 4) = v17;
    }

    else
    {
      sub_1000E8398(v12, v6, _s15MissingMessagesO8CompleteVMa);
      v21 = *v6;
      v22 = v6[4];
      v23 = *(v4 + 20);
      v18 = _s15MissingMessagesO30WindowUpperBoundAndQueriedUIDsVMa(0);
      sub_1000E8398(&v6[v23], a1 + *(v18 + 20), _s15MissingMessagesO11QueriedUIDsVMa);
      *a1 = v21;
      *(a1 + 4) = v22;
    }

    return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
  }

  else
  {
    v19 = _s15MissingMessagesO30WindowUpperBoundAndQueriedUIDsVMa(0);
    return (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
  }
}

uint64_t sub_1000E5FCC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_100016D2C();
  sub_1004A7114();
  return sub_100025FDC(v4, a1, &unk_1005D91B0, &unk_1004CF400);
}

uint64_t sub_1000E6078()
{
  v1 = _s15MissingMessagesO8CompleteVMa(0);
  __chkstk_darwin(v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s15MissingMessagesO10IncompleteVMa(0);
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s15MissingMessagesOMa(0);
  __chkstk_darwin(v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E8398(v0, v9, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1000E8398(v9, v6, _s15MissingMessagesO10IncompleteVMa);
      v11 = *(v4 + 28);
      if (v6[v11])
      {
        v12 = 3;
      }

      else
      {
        v12 = 1;
        v6[v11] = 1;
      }

      sub_1000E8398(v6, v0, _s15MissingMessagesO10IncompleteVMa);
    }

    else
    {
      sub_1000E8398(v9, v3, _s15MissingMessagesO8CompleteVMa);
      v13 = *(v1 + 24);
      if (v3[v13])
      {
        v12 = 3;
      }

      else
      {
        v3[v13] = 1;
        v12 = 2;
      }

      sub_1000E8398(v3, v0, _s15MissingMessagesO8CompleteVMa);
    }
  }

  else
  {
    if (*v9)
    {
      v12 = 3;
    }

    else
    {
      v12 = 0;
    }

    *v0 = 1;
  }

  swift_storeEnumTagMultiPayload();
  return v12;
}

uint64_t sub_1000E62E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = _s15MissingMessagesO8CompleteVMa(0);
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s15MissingMessagesO10IncompleteVMa(0);
  __chkstk_darwin(v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s15MissingMessagesOMa(0);
  __chkstk_darwin(v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E8D38(v2, v12, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1000E8398(v12, v9, _s15MissingMessagesO10IncompleteVMa);
      sub_1000E8D38(&v9[*(v7 + 24)], a1, _s15MissingMessagesO11QueriedUIDsVMa);
      sub_1000E8400(v9, _s15MissingMessagesO10IncompleteVMa);
    }

    else
    {
      sub_1000E8398(v12, v6, _s15MissingMessagesO8CompleteVMa);
      sub_1000E8398(&v6[*(v4 + 20)], a1, _s15MissingMessagesO11QueriedUIDsVMa);
    }

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  return (*(*(v15 - 8) + 56))(a1, v14, 1, v15);
}

uint64_t sub_1000E6534(uint64_t a1, uint64_t a2)
{
  sub_100016D2C();

  return sub_1004A7034();
}

uint64_t sub_1000E6580()
{
  sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  sub_1004A6934();
  return 0;
}

uint64_t sub_1000E65DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*a2 != *a1)
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  sub_100016D2C();

  return sub_1004A7034();
}

uint64_t sub_1000E666C()
{
  v1 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  sub_1000E6870();
  sub_10000E268(v0, v3, &qword_1005CD1D0, &unk_1004CF2C0);
  MessageIdentifierSet.intersection(_:)(v9, v6);
  sub_100025F40(v3, &unk_1005D91B0, &unk_1004CF400);
  v10 = MessageIdentifierSet.count.getter();
  sub_100025F40(v6, &unk_1005D91B0, &unk_1004CF400);
  if (v10 < 1)
  {
    v11 = 0;
  }

  else
  {
    _s15MissingMessagesO8ProgressVMa(0);
    MessageIdentifierSet.intersection(_:)(v9, v6);
    MessageIdentifierSet.count.getter();
    sub_100025F40(v6, &unk_1005D91B0, &unk_1004CF400);
    v11 = v10;
  }

  sub_100025F40(v9, &unk_1005D91B0, &unk_1004CF400);
  return v11;
}

uint64_t sub_1000E6870()
{
  v1 = v0;
  v2 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v30 - v6;
  v8 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v14 = _s15MissingMessagesO8ProgressVMa(0);
  v15 = v1 + *(v14 + 24);
  if ((*(v15 + 4) & 1) == 0)
  {
    v16 = *v15;
    if (v16 != -1)
    {
      LODWORD(v32) = v16 + 1;
LABEL_14:
      LODWORD(v31) = -1;
      v28 = sub_100016948();
      static MessageIdentifier.... infix(_:_:)(&v32, &v31, &type metadata for UID, &v33);
      v32 = v33;
      v31 = Range<>.init<A>(_:)(&v32, &type metadata for UID, v28);
      sub_100016D2C();
      return sub_1004A7124();
    }
  }

  sub_10000E268(v1, v7, &qword_1005CD1D0, &unk_1004CF2C0);
  MessageIdentifierSet.union(_:)(v1 + *(v14 + 20), v10);
  sub_100025F40(v7, &unk_1005D91B0, &unk_1004CF400);
  MessageIdentifierSet.suffix(_:)(3000, v8, v13);
  sub_100025F40(v10, &unk_1005D91B0, &unk_1004CF400);
  v17 = MessageIdentifierSet.startIndex.getter(v8);
  v19 = v18;
  if (v17 != MessageIdentifierSet.endIndex.getter(v8) || v19 != v20)
  {
    MessageIdentifierSet.subscript.getter(v19, v8, &v33);
    sub_100025F40(v13, &unk_1005D91B0, &unk_1004CF400);
    LODWORD(v32) = v33;
    goto LABEL_14;
  }

  sub_100025F40(v13, &unk_1005D91B0, &unk_1004CF400);
  sub_10000E268(v1, v4, &qword_1005CD1D0, &unk_1004CF2C0);
  v22 = MessageIdentifierSet.startIndex.getter(v8);
  v24 = v23;
  if (v22 != MessageIdentifierSet.endIndex.getter(v8) || v24 != v25)
  {
    MessageIdentifierSet.subscript.getter(v24, v8, &v33);
    v27 = v33;
    sub_100025F40(v4, &unk_1005D91B0, &unk_1004CF400);
    LODWORD(v32) = v27;
    goto LABEL_14;
  }

  result = sub_100025F40(v4, &unk_1005D91B0, &unk_1004CF400);
  __break(1u);
  return result;
}

uint64_t sub_1000E6BC8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v19 - v9;
  v11 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v11);
  v13 = v19 - v12;
  v14 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v14 - 8);
  v16 = v19 - v15;
  sub_10000E268(v2, v10, &qword_1005CD1D0, &unk_1004CF2C0);
  v19[1] = a1;
  MessageIdentifierSet.union(_:)(a1, v13);
  sub_100025F40(v10, &unk_1005D91B0, &unk_1004CF400);
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_100025F40(v13, &unk_1005D91B0, &unk_1004CF400);
    v17 = 1;
  }

  else
  {
    sub_100025FDC(v13, v7, &unk_1005D91B0, &unk_1004CF400);
    sub_100025FDC(v7, v16, &qword_1005CD1D0, &unk_1004CF2C0);
    v17 = 0;
  }

  (*(v5 + 56))(v16, v17, 1, v4);
  result = (*(v5 + 48))(v16, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1000E8F80(v16, v2);
    _s15MissingMessagesO8ProgressVMa(0);
    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    return sub_1004A70F4();
  }

  return result;
}

uint64_t sub_1000E6E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v41 = a1;
  v43 = a2;
  v4 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v4 - 8);
  v40 = &v36 - v5;
  v42 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v39 = *(v42 - 8);
  __chkstk_darwin(v42);
  v38 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v37 = &v36 - v8;
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  v12 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  __chkstk_darwin(v18);
  v20 = &v36 - v19;
  sub_10000E268(v3, v11, &qword_1005CD1D0, &unk_1004CF2C0);
  MessageIdentifierSet.intersection(_:)(v41, v20);
  sub_100025F40(v11, &unk_1005D91B0, &unk_1004CF400);
  v41 = v3;
  sub_10000E268(v3, v11, &qword_1005CD1D0, &unk_1004CF2C0);
  MessageIdentifierSet.subtracting(_:)(v20, v17);
  sub_100025F40(v11, &unk_1005D91B0, &unk_1004CF400);
  sub_10000E268(v17, v14, &unk_1005D91B0, &unk_1004CF400);
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_100025F40(v14, &unk_1005D91B0, &unk_1004CF400);
    v23 = 1;
    v22 = v40;
  }

  else
  {
    v21 = v38;
    sub_100025FDC(v14, v38, &unk_1005D91B0, &unk_1004CF400);
    v22 = v40;
    sub_100025FDC(v21, v40, &qword_1005CD1D0, &unk_1004CF2C0);
    v23 = 0;
  }

  v24 = v39;
  v25 = v42;
  (*(v39 + 56))(v22, v23, 1, v42);
  if ((*(v24 + 48))(v22, 1, v25) == 1)
  {
    sub_100025F40(v17, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v20, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v22, &qword_1005CD518, &qword_1004CF2F0);
    v26 = _s15MissingMessagesO8ProgressVMa(0);
    return (*(*(v26 - 8) + 56))(v43, 1, 1, v26);
  }

  else
  {
    v28 = v37;
    sub_100025FDC(v22, v37, &qword_1005CD1D0, &unk_1004CF2C0);
    v29 = v43;
    sub_10000E268(v28, v43, &qword_1005CD1D0, &unk_1004CF2C0);
    v30 = _s15MissingMessagesO8ProgressVMa(0);
    v31 = v41;
    MessageIdentifierSet.union(_:)(v20, v29 + *(v30 + 20));
    sub_100025F40(v28, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100025F40(v17, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v20, &unk_1005D91B0, &unk_1004CF400);
    v32 = *(v30 + 24);
    v33 = *(v31 + v32);
    v34 = *(v31 + v32 + 4);
    v35 = v29 + v32;
    *v35 = v33;
    *(v35 + 4) = v34;
    return (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
  }
}

uint64_t sub_1000E73F0()
{
  v1 = _s15MissingMessagesO8CompleteVMa(0);
  __chkstk_darwin(v1);
  v3 = &v24[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = _s15MissingMessagesO10IncompleteVMa(0);
  __chkstk_darwin(v4);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = _s15MissingMessagesOMa(0);
  __chkstk_darwin(v7);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000E8D38(v0, v9, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return 0x6E776F6E6B6E75;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1000E8398(v9, v6, _s15MissingMessagesO10IncompleteVMa);
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_1004A6724(65);
    v30._countAndFlagsBits = 0xD000000000000016;
    v30._object = 0x80000001004AA2D0;
    sub_1004A5994(v30);
    v31._countAndFlagsBits = sub_1000E7890();
    sub_1004A5994(v31);

    v32._object = 0x80000001004AA2F0;
    v32._countAndFlagsBits = 0xD000000000000015;
    sub_1004A5994(v32);
    v11 = &v6[*(v4 + 20)];
    if (v11[4])
    {
      v12._countAndFlagsBits = 7104878;
      v13 = 0xE300000000000000;
    }

    else
    {
      v17 = *v11;
      v26 = 0;
      v27 = 0xE000000000000000;
      v25 = v17;
      sub_1004A6934();
      v12._countAndFlagsBits = v26;
      v13 = v27;
    }

    v12._object = v13;
    sub_1004A5994(v12);

    v34._countAndFlagsBits = 0x656972657571202CLL;
    v34._object = 0xEF203A7344495564;
    sub_1004A5994(v34);
    _s15MissingMessagesO11QueriedUIDsVMa(0);
    sub_1000E8340();
    v35._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v35);

    v36._countAndFlagsBits = 41;
    v36._object = 0xE100000000000000;
    sub_1004A5994(v36);
    v14 = v28;
    v18 = _s15MissingMessagesO10IncompleteVMa;
    v19 = v6;
  }

  else
  {
    sub_1000E8398(v9, v3, _s15MissingMessagesO8CompleteVMa);
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_1004A6724(64);
    v33._countAndFlagsBits = 0xD00000000000001BLL;
    v33._object = 0x80000001004AA2B0;
    sub_1004A5994(v33);
    if (v3[4])
    {
      v15._countAndFlagsBits = 7104878;
      v16 = 0xE300000000000000;
    }

    else
    {
      v20 = *v3;
      v26 = 0;
      v27 = 0xE000000000000000;
      v25 = v20;
      sub_1004A6934();
      v15._countAndFlagsBits = v26;
      v16 = v27;
    }

    v15._object = v16;
    sub_1004A5994(v15);

    v37._countAndFlagsBits = 0x656972657571202CLL;
    v37._object = 0xEF203A7344495564;
    sub_1004A5994(v37);
    _s15MissingMessagesO11QueriedUIDsVMa(0);
    sub_1000E8340();
    v38._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v38);

    v39._countAndFlagsBits = 0x646C756F6873202CLL;
    v39._object = 0xEF203A776F726720;
    sub_1004A5994(v39);
    if (v3[*(v1 + 24)])
    {
      v21._countAndFlagsBits = 1702195828;
    }

    else
    {
      v21._countAndFlagsBits = 0x65736C6166;
    }

    if (v3[*(v1 + 24)])
    {
      v22 = 0xE400000000000000;
    }

    else
    {
      v22 = 0xE500000000000000;
    }

    v21._object = v22;
    sub_1004A5994(v21);

    v40._countAndFlagsBits = 41;
    v40._object = 0xE100000000000000;
    sub_1004A5994(v40);
    v14 = v28;
    v18 = _s15MissingMessagesO8CompleteVMa;
    v19 = v3;
  }

  sub_1000E8400(v19, v18);
  return v14;
}

uint64_t sub_1000E7890()
{
  v1 = v0;
  v2 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v33 - v6;
  sub_10000E268(v0, &v33 - v6, &qword_1005CD1D0, &unk_1004CF2C0);
  sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v8 = MessageIdentifierSet.count.getter();
  sub_100025F40(v7, &unk_1005D91B0, &unk_1004CF400);
  v9 = _s15MissingMessagesO8ProgressVMa(0);
  v10 = *(v9 + 20);
  v11 = MessageIdentifierSet.count.getter();
  if (v8 <= 0xA && v11 <= 0xA)
  {
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1004A6724(73);
    v46._countAndFlagsBits = 0x20676E697373696DLL;
    v46._object = 0xE800000000000000;
    sub_1004A5994(v46);
    sub_10000E268(v0, v4, &qword_1005CD1D0, &unk_1004CF2C0);
    v21 = MessageIdentifierSet.count.getter();
    sub_100025F40(v4, &unk_1005D91B0, &unk_1004CF400);
    v35 = v21;
    v33 = v9;
    v47._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v47);

    v48._countAndFlagsBits = 0x207344495520;
    v48._object = 0xE600000000000000;
    sub_1004A5994(v48);
    sub_10000E268(v1, v4, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_1004A6934();
    sub_100025F40(v4, &unk_1005D91B0, &unk_1004CF400);
    v49._countAndFlagsBits = 0x203A656E6F64202CLL;
    v49._object = 0xE800000000000000;
    sub_1004A5994(v49);
    v35 = MessageIdentifierSet.count.getter();
    v50._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v50);

    v51._countAndFlagsBits = 0x207344495520;
    v51._object = 0xE600000000000000;
    sub_1004A5994(v51);
    sub_1004A6934();
    v52._object = 0x80000001004AA310;
    v52._countAndFlagsBits = 0xD000000000000023;
    sub_1004A5994(v52);
    v22 = v1 + *(v33 + 24);
    if ((*(v22 + 4) & 1) == 0)
    {
      v23 = *v22;
      v35 = 0;
LABEL_20:
      v36 = 0xE000000000000000;
      v34 = v23;
      sub_1004A6934();
      v31._countAndFlagsBits = v35;
      v32 = v36;
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v11 <= 0xA)
  {
    v33 = v10;
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1004A6724(82);
    v53._countAndFlagsBits = 0x20676E697373696DLL;
    v53._object = 0xE800000000000000;
    sub_1004A5994(v53);
    sub_10000E268(v0, v4, &qword_1005CD1D0, &unk_1004CF2C0);
    v24 = MessageIdentifierSet.count.getter();
    sub_100025F40(v4, &unk_1005D91B0, &unk_1004CF400);
    v35 = v24;
    v54._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v54);

    v55._countAndFlagsBits = 0x6E69207344495520;
    v55._object = 0xEF2065676E617220;
    sub_1004A5994(v55);
    sub_10000E268(v1, v4, &qword_1005CD1D0, &unk_1004CF2C0);
    v25 = sub_1000E8214();
    v27 = v26;
    result = sub_100025F40(v4, &unk_1005D91B0, &unk_1004CF400);
    if (v27)
    {
      __break(1u);
      goto LABEL_23;
    }

    v35 = v25;
    sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
    sub_1004A6934();
    v56._countAndFlagsBits = 0x203A656E6F64202CLL;
    v56._object = 0xE800000000000000;
    sub_1004A5994(v56);
    v35 = MessageIdentifierSet.count.getter();
    v57._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v57);

    v58._countAndFlagsBits = 0x207344495520;
    v58._object = 0xE600000000000000;
    sub_1004A5994(v58);
    sub_1004A6934();
    v59._object = 0x80000001004AA310;
    v59._countAndFlagsBits = 0xD000000000000023;
    sub_1004A5994(v59);
    v20 = *(v9 + 24);
LABEL_17:
    v30 = (v1 + v20);
    if ((v30[1] & 1) == 0)
    {
      v23 = *v30;
      v35 = 0;
      goto LABEL_20;
    }

LABEL_18:
    v31._countAndFlagsBits = 7104878;
    v32 = 0xE300000000000000;
LABEL_21:
    v31._object = v32;
    sub_1004A5994(v31);

    return v37;
  }

  v33 = v9;
  if (v8 <= 0xA)
  {
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1004A6724(82);
    v60._countAndFlagsBits = 0x20676E697373696DLL;
    v60._object = 0xE800000000000000;
    sub_1004A5994(v60);
    sub_10000E268(v0, v4, &qword_1005CD1D0, &unk_1004CF2C0);
    v28 = MessageIdentifierSet.count.getter();
    sub_100025F40(v4, &unk_1005D91B0, &unk_1004CF400);
    v35 = v28;
    v61._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v61);

    v62._countAndFlagsBits = 0x207344495520;
    v62._object = 0xE600000000000000;
    sub_1004A5994(v62);
    sub_10000E268(v1, v4, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_1004A6934();
    sub_100025F40(v4, &unk_1005D91B0, &unk_1004CF400);
    v63._countAndFlagsBits = 0x203A656E6F64202CLL;
    v63._object = 0xE800000000000000;
    sub_1004A5994(v63);
    v35 = MessageIdentifierSet.count.getter();
    v64._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v64);

    v65._countAndFlagsBits = 0x6E69207344495520;
    v65._object = 0xEF2065676E617220;
    sub_1004A5994(v65);
    result = sub_1000E8214();
    if (v29)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v35 = result;
    sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
    sub_1004A6934();
    v66._object = 0x80000001004AA310;
    v66._countAndFlagsBits = 0xD000000000000023;
    sub_1004A5994(v66);
    v20 = *(v33 + 24);
    goto LABEL_17;
  }

  v37 = 0;
  v38 = 0xE000000000000000;
  sub_1004A6724(91);
  v39._countAndFlagsBits = 0x20676E697373696DLL;
  v39._object = 0xE800000000000000;
  sub_1004A5994(v39);
  sub_10000E268(v0, v4, &qword_1005CD1D0, &unk_1004CF2C0);
  v13 = MessageIdentifierSet.count.getter();
  sub_100025F40(v4, &unk_1005D91B0, &unk_1004CF400);
  v35 = v13;
  v40._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v40);

  v41._countAndFlagsBits = 0x6E69207344495520;
  v41._object = 0xEF2065676E617220;
  sub_1004A5994(v41);
  sub_10000E268(v1, v4, &qword_1005CD1D0, &unk_1004CF2C0);
  v14 = sub_1000E8214();
  v16 = v15;
  result = sub_100025F40(v4, &unk_1005D91B0, &unk_1004CF400);
  if (v16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v35 = v14;
  sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
  sub_1004A6934();
  v42._countAndFlagsBits = 0x203A656E6F64202CLL;
  v42._object = 0xE800000000000000;
  sub_1004A5994(v42);
  v35 = MessageIdentifierSet.count.getter();
  v43._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v43);

  v44._countAndFlagsBits = 0x6E69207344495520;
  v44._object = 0xEF2065676E617220;
  sub_1004A5994(v44);
  result = sub_1000E8214();
  v18 = v33;
  if ((v19 & 1) == 0)
  {
    v35 = result;
    sub_1004A6934();
    v45._object = 0x80000001004AA310;
    v45._countAndFlagsBits = 0xD000000000000023;
    sub_1004A5994(v45);
    v20 = *(v18 + 24);
    goto LABEL_17;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1000E8214()
{
  v0 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1000E5314();
  if ((v3 & 0x100000000) != 0)
  {
    return 0;
  }

  v4 = v3;
  sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  MessageIdentifierSet.ranges.getter(v2);
  v5 = sub_1000E4C34(&qword_1005CD7A0, &unk_1004CF590) >> 32;
  v7 = v6;
  sub_100025F40(v2, &qword_1005CD7A0, &unk_1004CF590);
  if (v7)
  {
    return 0;
  }

  v9 = v5;
  v10 = v4;
  sub_100016948();
  static MessageIdentifier.... infix(_:_:)(&v10, &v9, &type metadata for UID, &v11);
  return v11;
}

unint64_t sub_1000E8340()
{
  result = qword_1005D0130;
  if (!qword_1005D0130)
  {
    v3 = _s15MissingMessagesO11QueriedUIDsVMa(255);
    result = swift_getWitnessTable(byte_1004D3808, v3, v0, v1);
    atomic_store(result, &qword_1005D0130);
  }

  return result;
}

uint64_t sub_1000E8398(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000E8400(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000E8460(uint64_t a1, uint64_t a2)
{
  sub_100016D2C();
  if ((sub_1004A7034() & 1) == 0)
  {
    return 0;
  }

  v4 = *(_s15MissingMessagesO10NewMissingVMa(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 4);
  v7 = *(a1 + v4 + 8);
  v8 = *(a1 + v4 + 12);
  v9 = *(a1 + v4 + 16);
  v10 = *(a1 + v4 + 20);
  v11 = (a2 + v4);
  v12 = *(a2 + v4 + 4);
  v13 = *(a2 + v4 + 8);
  v14 = *(a2 + v4 + 12);
  v15 = *(a2 + v4 + 16);
  v16 = *(a2 + v4 + 20);
  if (v6)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 == *v5)
    {
      v17 = v12;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  if (v8)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (v13 == v7)
    {
      v18 = v14;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  if (v10)
  {
    if (!v16)
    {
      return 0;
    }
  }

  else
  {
    if (v15 == v9)
    {
      v20 = v16;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  return sub_1004A7034();
}

uint64_t sub_1000E8574(uint64_t a1, uint64_t a2)
{
  sub_100016D2C();
  if ((sub_1004A7034() & 1) == 0)
  {
    goto LABEL_17;
  }

  v4 = _s15MissingMessagesO8ProgressVMa(0);
  if ((sub_1004A7034() & 1) == 0)
  {
    goto LABEL_17;
  }

  v5 = *(v4 + 24);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return v9 & 1;
    }
  }

  else
  {
    if (*v8 != *v6)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      goto LABEL_17;
    }
  }

  v10 = _s15MissingMessagesO10IncompleteVMa(0);
  v11 = *(v10 + 20);
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 4);
  v14 = (a2 + v11);
  v9 = *(a2 + v11 + 4);
  if ((v13 & 1) == 0)
  {
    if (*v14 != *v12)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (v9)
  {
LABEL_15:
    if (sub_1004A7034())
    {
      LOBYTE(v9) = *(a1 + *(v10 + 28)) ^ *(a2 + *(v10 + 28)) ^ 1;
      return v9 & 1;
    }

LABEL_17:
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

BOOL sub_1000E86A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 & 0x100000000) != 0)
  {
    if ((a4 & 0x100000000) == 0)
    {
      return 0;
    }
  }

  else if ((a4 & 0x100000000) != 0 || a4 != a1)
  {
    return 0;
  }

  if ((a2 & 0x100000000) != 0)
  {
    if ((a5 & 0x100000000) == 0)
    {
      return 0;
    }
  }

  else if ((a5 & 0x100000000) != 0 || a5 != a2)
  {
    return 0;
  }

  if ((a3 & 0x100000000) != 0)
  {
    return (a6 & 0x100000000) != 0;
  }

  return (a6 & 0x100000000) == 0 && a6 == a3;
}

uint64_t sub_1000E86F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
    {
      return v4 & 1;
    }
  }

  else
  {
    if (*a2 != *a1)
    {
      v4 = 1;
    }

    if (v4)
    {
      goto LABEL_9;
    }
  }

  v5 = _s15MissingMessagesO8CompleteVMa(0);
  sub_100016D2C();
  if ((sub_1004A7034() & 1) == 0)
  {
LABEL_9:
    v4 = 0;
    return v4 & 1;
  }

  v4 = *(a1 + *(v5 + 24)) ^ *(a2 + *(v5 + 24)) ^ 1;
  return v4 & 1;
}

uint64_t sub_1000E879C(uint64_t a1, uint64_t a2)
{
  sub_100016D2C();
  if ((sub_1004A7034() & 1) == 0)
  {
    return 0;
  }

  v4 = _s15MissingMessagesO8ProgressVMa(0);
  if ((sub_1004A7034() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v8 != *v6)
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1000E8854(uint64_t a1, uint64_t a2)
{
  v33 = _s15MissingMessagesO8CompleteVMa(0);
  __chkstk_darwin(v33);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s15MissingMessagesO10IncompleteVMa(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s15MissingMessagesOMa(0);
  __chkstk_darwin(v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  v17 = sub_10000C9C0(&qword_1005D0138, &qword_1004D3838);
  __chkstk_darwin(v17 - 8);
  v19 = &v33 - v18;
  v21 = *(v20 + 56);
  sub_1000E8D38(a1, &v33 - v18, _s15MissingMessagesOMa);
  sub_1000E8D38(a2, &v19[v21], _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1000E8D38(v19, v16, _s15MissingMessagesOMa);
    if (!swift_getEnumCaseMultiPayload())
    {
      v24 = *v16 ^ v19[v21];
      sub_1000E8400(v19, _s15MissingMessagesOMa);
      v23 = v24 ^ 1;
      return v23 & 1;
    }

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1000E8D38(v19, v10, _s15MissingMessagesOMa);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v27 = _s15MissingMessagesO8CompleteVMa;
      v28 = v10;
      goto LABEL_13;
    }

    v25 = v34;
    sub_1000E8398(&v19[v21], v34, _s15MissingMessagesO8CompleteVMa);
    v26 = *(v25 + 4);
    if (v10[4])
    {
      if (!*(v25 + 4))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (*v25 != *v10)
      {
        v26 = 1;
      }

      if (v26)
      {
        goto LABEL_21;
      }
    }

    sub_100016D2C();
    if (sub_1004A7034())
    {
      v29 = *(v33 + 24);
      v30 = v10[v29];
      v31 = *(v25 + v29);
      sub_1000E8400(v25, _s15MissingMessagesO8CompleteVMa);
      if (v30 == v31)
      {
        sub_1000E8400(v10, _s15MissingMessagesO8CompleteVMa);
        sub_1000E8400(v19, _s15MissingMessagesOMa);
        v23 = 1;
        return v23 & 1;
      }

      goto LABEL_22;
    }

LABEL_21:
    sub_1000E8400(v25, _s15MissingMessagesO8CompleteVMa);
LABEL_22:
    sub_1000E8400(v10, _s15MissingMessagesO8CompleteVMa);
    sub_1000E8400(v19, _s15MissingMessagesOMa);
    goto LABEL_23;
  }

  sub_1000E8D38(v19, v13, _s15MissingMessagesOMa);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v27 = _s15MissingMessagesO10IncompleteVMa;
    v28 = v13;
LABEL_13:
    sub_1000E8400(v28, v27);
LABEL_14:
    sub_100025F40(v19, &qword_1005D0138, &qword_1004D3838);
LABEL_23:
    v23 = 0;
    return v23 & 1;
  }

  sub_1000E8398(&v19[v21], v7, _s15MissingMessagesO10IncompleteVMa);
  v23 = sub_1000E8574(v13, v7);
  sub_1000E8400(v7, _s15MissingMessagesO10IncompleteVMa);
  sub_1000E8400(v13, _s15MissingMessagesO10IncompleteVMa);
  sub_1000E8400(v19, _s15MissingMessagesOMa);
  return v23 & 1;
}

uint64_t sub_1000E8D38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000E8DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1000E8E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_1000E8EDC(uint64_t a1)
{
  sub_10002ABD0();
  if (v1 <= 0x3F)
  {
    _s15MissingMessagesO11QueriedUIDsVMa(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000E8F80(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E9004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = _s15MissingMessagesO11QueriedUIDsVMa(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000E9114(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = _s15MissingMessagesO11QueriedUIDsVMa(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

void sub_1000E921C(uint64_t a1)
{
  sub_1000E3BE4(319, &qword_1005CDDC0, type metadata accessor for MessageIdentifierSet);
  if (v1 <= 0x3F)
  {
    _s15MissingMessagesO11QueriedUIDsVMa(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 _s15MissingMessagesO12WindowUpdateVwCP(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t _s15MissingMessagesO12WindowUpdateVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 21))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s15MissingMessagesO12WindowUpdateVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
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

  *(result + 21) = v3;
  return result;
}

char *sub_1000E9338(uint64_t a1, int a2, uint64_t a3)
{
  v7 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100086ED4(0, *(v7 + 2) + 1, 1, v7);
    v7 = result;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    result = sub_100086ED4((v9 > 1), v10 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[24 * v10];
  *(v11 + 4) = a1;
  *(v11 + 10) = a2;
  *(v11 + 6) = a3;
  *v3 = v7;
  return result;
}

void sub_1000E93F4(void (*a1)(void, void)@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v107 = a2;
  v109 = a1;
  v101 = a3;
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v100 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v98 = &v96 - v8;
  __chkstk_darwin(v9);
  v97 = &v96 - v10;
  __chkstk_darwin(v11);
  v99 = &v96 - v12;
  __chkstk_darwin(v13);
  v108 = &v96 - v14;
  __chkstk_darwin(v15);
  v125 = &v96 - v16;
  __chkstk_darwin(v17);
  v115 = &v96 - v18;
  __chkstk_darwin(v19);
  v117 = &v96 - v20;
  __chkstk_darwin(v21);
  v120 = &v96 - v22;
  v23 = sub_10000C9C0(&qword_1005D0468, &qword_1004D3CE8);
  __chkstk_darwin(v23 - 8);
  v102 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v105 = &v96 - v26;
  __chkstk_darwin(v27);
  v110 = &v96 - v28;
  v30 = __chkstk_darwin(v29);
  v32 = &v96 - v31;
  v33 = *(v5 + 56);
  v104 = v5 + 56;
  v103 = v33;
  (v33)(&v96 - v31, 1, 1, v4, v30);
  v123 = v3;
  v34 = *v3;
  v126 = v4;
  v114 = sub_1000F7764(&qword_1005CF830, "}3\v");
  v127 = v114;
  KeyPath = swift_getKeyPath();

  v36 = 0;
  v37 = sub_1000F342C(v34, KeyPath);

  v38 = sub_1000CE800(v37);

  v39 = 0;
  v40 = v38 + 56;
  v41 = 1 << *(v38 + 32);
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  else
  {
    v42 = -1;
  }

  v43 = v42 & *(v38 + 56);
  v44 = (v41 + 63) >> 6;
  v121 = (v5 + 48);
  v122 = v5;
  v106 = _swiftEmptyArrayStorage;
  v112 = v32;
  v113 = v4;
  v118 = v44;
  v119 = v38 + 56;
  v111 = v38;
  while (1)
  {
    while (1)
    {
      v45 = v117;
      if (!v43)
      {
        goto LABEL_10;
      }

LABEL_14:
      while (1)
      {
        v47 = __clz(__rbit64(v43));
        v43 &= v43 - 1;
        v48 = *(v38 + 48);
        v124 = *(v122 + 72);
        v49 = v120;
        sub_1000F9948(v48 + v124 * (v47 | (v39 << 6)), v120, type metadata accessor for MoveAndCopyMessages.CommandID);
        sub_1000F9A88(v49, v45, type metadata accessor for MoveAndCopyMessages.CommandID);
        v50 = v123[2];
        v51 = v123[3];
        if (!*(v51 + 16))
        {
          break;
        }

        sub_100063E04(v45);
        if ((v52 & 1) == 0)
        {
          break;
        }

LABEL_9:
        sub_1000F9A28(v45, type metadata accessor for MoveAndCopyMessages.CommandID);
        v44 = v118;
        v40 = v119;
        if (!v43)
        {
          goto LABEL_10;
        }
      }

      v53 = v115;
      sub_1000F9948(v45, v115, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_10000C9C0(&qword_1005CEF30, &unk_1004D1E00);
      v54 = swift_allocObject();
      sub_1000F9A88(v53, v54 + *(*v54 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
      if (*(v50 + 16) && (v55 = sub_100063E70(v54), (v56 & 1) != 0))
      {
        v57 = *(*(v50 + 56) + 8 * v55);
      }

      else
      {
        v57 = _swiftEmptySetSingleton;
      }

      __chkstk_darwin(v58);
      v59 = v114;
      *(&v96 - 2) = v4;
      *(&v96 - 1) = v59;
      v60 = swift_getKeyPath();

      v61 = sub_1000F342C(v57, v60);

      v62 = sub_1000CE800(v61);

      v63 = 1 << *(v62 + 32);
      v64 = v63 < 64 ? ~(-1 << v63) : -1;
      v65 = v64 & *(v62 + 56);
      v66 = (v63 + 63) >> 6;

      v67 = 0;
      while (v65)
      {
        v68 = v125;
LABEL_31:
        sub_1000F9948(*(v62 + 48) + (__clz(__rbit64(v65)) | (v67 << 6)) * v124, v68, type metadata accessor for MoveAndCopyMessages.CommandID);
        if (!*(v51 + 16) || (v70 = sub_100063E04(v68), v68 = v125, (v71 & 1) == 0))
        {
          sub_1000F9A28(v68, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_8:

          v32 = v112;
          v4 = v113;
          v45 = v117;
          v38 = v111;
          goto LABEL_9;
        }

        v65 &= v65 - 1;
        v72 = *(*(v51 + 56) + v70);
        sub_1000F9A28(v125, type metadata accessor for MoveAndCopyMessages.CommandID);
        if ((v72 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v68 = v125;
      while (1)
      {
        v69 = v67 + 1;
        if (__OFADD__(v67, 1))
        {
          __break(1u);
          goto LABEL_58;
        }

        if (v69 >= v66)
        {
          break;
        }

        v65 = *(v62 + 56 + 8 * v69);
        ++v67;
        if (v65)
        {
          v67 = v69;
          goto LABEL_31;
        }
      }

      v32 = v112;
      v73 = v110;
      sub_10000E268(v112, v110, &qword_1005D0468, &qword_1004D3CE8);
      v74 = *v121;
      v4 = v113;
      if ((*v121)(v73, 1, v113) != 1)
      {
        break;
      }

      sub_100025F40(v32, &qword_1005D0468, &qword_1004D3CE8);
      sub_100025F40(v73, &qword_1005D0468, &qword_1004D3CE8);
      v80 = v117;
      sub_1000F9948(v117, v32, type metadata accessor for MoveAndCopyMessages.CommandID);
      v103(v32, 0, 1, v4);
      sub_1000F9948(v80, v99, type metadata accessor for MoveAndCopyMessages.CommandID);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v82 = v109;
      v38 = v111;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v106 = sub_100086D8C(0, v106[2] + 1, 1, v106);
      }

      v44 = v118;
      v84 = v106[2];
      v83 = v106[3];
      if (v84 >= v83 >> 1)
      {
        v106 = sub_100086D8C((v83 > 1), v84 + 1, 1, v106);
      }

      sub_1000F9A28(v117, type metadata accessor for MoveAndCopyMessages.CommandID);
      v85 = v106;
      v106[2] = v84 + 1;
      sub_1000F9A88(v99, v85 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + v84 * v124, type metadata accessor for MoveAndCopyMessages.CommandID);
      v40 = v119;
      if (!v82)
      {
LABEL_53:

        v90 = v102;
        sub_10000E268(v32, v102, &qword_1005D0468, &qword_1004D3CE8);
        if ((*v121)(v90, 1, v4) == 1)
        {
          sub_100025F40(v32, &qword_1005D0468, &qword_1004D3CE8);

          sub_100025F40(v90, &qword_1005D0468, &qword_1004D3CE8);
          v91 = 1;
          v92 = v101;
        }

        else
        {
          v92 = v101;
          sub_1000F9A88(v90, v101, type metadata accessor for MoveAndCopyMessages.CommandID);
          v93 = v123;
          sub_1000EA18C(v106, v92);

          v94 = v100;
          sub_1000F9948(v92, v100, type metadata accessor for MoveAndCopyMessages.CommandID);
          v95 = swift_isUniquelyReferenced_nonNull_native();
          v128 = v93[3];
          sub_10001D19C(0, v94, v95);
          sub_1000F9A28(v94, type metadata accessor for MoveAndCopyMessages.CommandID);
          sub_100025F40(v32, &qword_1005D0468, &qword_1004D3CE8);
          v91 = 0;
          v93[3] = v128;
        }

        v103(v92, v91, 1, v4);
        return;
      }
    }

    v116 = v36;
    v75 = v32;
    v76 = v108;
    sub_1000F9A88(v73, v108, type metadata accessor for MoveAndCopyMessages.CommandID);
    v77 = v107;
    v78 = v109;
    v45 = v117;
    if (!v109)
    {
      break;
    }

    v79 = v105;
    v78(v76, v45);
    if (v74(v79, 1, v4) == 1)
    {
      sub_1000B5158(v78, v77);
      sub_1000F9A28(v76, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1000F9A28(v45, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_100025F40(v79, &qword_1005D0468, &qword_1004D3CE8);
      goto LABEL_40;
    }

    v32 = v75;
    sub_100025F40(v75, &qword_1005D0468, &qword_1004D3CE8);
    v86 = v97;
    sub_1000F9A88(v79, v97, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1000F9948(v86, v75, type metadata accessor for MoveAndCopyMessages.CommandID);
    v103(v75, 0, 1, v4);
    sub_1000F9948(v117, v98, type metadata accessor for MoveAndCopyMessages.CommandID);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v106 = sub_100086D8C(0, v106[2] + 1, 1, v106);
    }

    v38 = v111;
    v36 = v116;
    v88 = v106[2];
    v87 = v106[3];
    if (v88 >= v87 >> 1)
    {
      v106 = sub_100086D8C((v87 > 1), v88 + 1, 1, v106);
    }

    sub_1000B5158(v78, v77);
    sub_1000F9A28(v97, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1000F9A28(v108, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1000F9A28(v117, type metadata accessor for MoveAndCopyMessages.CommandID);
    v89 = v106;
    v106[2] = v88 + 1;
    sub_1000F9A88(v98, v89 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + v88 * v124, type metadata accessor for MoveAndCopyMessages.CommandID);
    v44 = v118;
    v40 = v119;
  }

  sub_1000F9A28(v76, type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_1000F9A28(v45, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_40:
  v38 = v111;
  v44 = v118;
  v40 = v119;
  v32 = v75;
  v36 = v116;
  if (v43)
  {
    goto LABEL_14;
  }

LABEL_10:
  while (1)
  {
    v46 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v46 >= v44)
    {
      goto LABEL_53;
    }

    v43 = *(v40 + 8 * v46);
    ++v39;
    if (v43)
    {
      v39 = v46;
      goto LABEL_14;
    }
  }

LABEL_58:
  __break(1u);
}

uint64_t sub_1000EA18C(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000C9C0(&qword_1005D0468, &qword_1004D3CE8);
  __chkstk_darwin(v5 - 8);
  v7 = &v34 - v6;
  v8 = type metadata accessor for MoveAndCopyMessages.CommandID(0) - 8;
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  __chkstk_darwin(v14);
  v17 = &v34 - v16;
  v18 = _swiftEmptySetSingleton;
  v40 = _swiftEmptySetSingleton;
  v41 = _swiftEmptySetSingleton;
  v19 = *(a1 + 16);
  if (v19)
  {
    v34 = v10;
    v35 = a2;
    v20 = *(v2 + 8);
    v37 = *(v2 + 16);
    v38 = v20;
    v36 = v2;
    v21 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v22 = *(v15 + 72);
    v23 = v21;
    v24 = v19;
    do
    {
      sub_1000F9948(v23, v17, type metadata accessor for MoveAndCopyMessages.CommandID);
      v25 = sub_1000F6ED8(v17, v38);
      sub_100080ADC(v25);
      v26 = sub_1000F6ED8(v17, v37);
      sub_1000F9A28(v17, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_100080ADC(v26);
      v23 += v22;
      --v24;
    }

    while (v24);
    if (v41[2])
    {
      v27 = v21;
      v28 = v19;
      do
      {
        sub_1001401F0(v27, v7);
        sub_100025F40(v7, &qword_1005D0468, &qword_1004D3CE8);
        v27 += v22;
        --v28;
      }

      while (v28);
    }

    if (v40[2])
    {
      v29 = v21;
      v30 = v19;
      do
      {
        sub_1001401F0(v29, v7);
        sub_100025F40(v7, &qword_1005D0468, &qword_1004D3CE8);
        v29 += v22;
        --v30;
      }

      while (v30);
    }

    do
    {
      sub_1000F9948(v21, v13, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1000EA6DC(v13);
      sub_1000F9A28(v13, type metadata accessor for MoveAndCopyMessages.CommandID);
      v21 += v22;
      --v19;
    }

    while (v19);
    v18 = v40;
    v31 = v41;
    v10 = v34;
    a2 = v35;
  }

  else
  {
    v31 = _swiftEmptySetSingleton;
  }

  sub_1000F9948(a2, v10, type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_10000C9C0(&qword_1005CEF30, &unk_1004D1E00);
  v32 = swift_allocObject();
  sub_1000F9A88(v10, v32 + *(*v32 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_1000893BC(&v39, v32);

  sub_1000EAC50(v31, a2);

  sub_1000EA544(a2, v18);
}

void sub_1000EA544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 1 << *(a2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a2 + 56);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  while (v10)
  {
    v13 = v12;
LABEL_9:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    sub_1000F9948(*(a2 + 48) + *(v5 + 72) * (v14 | (v13 << 6)), v7, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1000EAE90(a1, v7);
    sub_1000F9A28(v7, type metadata accessor for MoveAndCopyMessages.CommandID);
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      return;
    }

    v10 = *(a2 + 56 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void *sub_1000EA6DC(uint64_t a1)
{
  v3 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  __chkstk_darwin(v3 - 8);
  v5 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F9948(a1, v5, type metadata accessor for MoveAndCopyMessages.CommandID);
  v51[1] = sub_10000C9C0(&qword_1005CEF30, &unk_1004D1E00);
  v6 = swift_allocObject();
  sub_1000F9A88(v5, v6 + *(*v6 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_10013FF08(v6);

  v52 = v1;
  v7 = v1 + 8;
  v8 = *(v1 + 8);
  v51[2] = v7;
  v9 = *(v8 + 16);

  if (v9 && (v10 = sub_100063E70(v6), (v11 & 1) != 0))
  {
    v12 = *(*(v8 + 56) + 8 * v10);
  }

  else
  {
    v12 = _swiftEmptySetSingleton;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
    sub_1004A6594();
    sub_10000DF44(&qword_1005D0438, &qword_1005CEF30, &unk_1004D1E00, byte_1004CFB20);
    result = sub_1004A5DB4();
    v12 = v54[4];
    v14 = v54[5];
    v15 = v54[6];
    v16 = v54[7];
    v17 = v54[8];
  }

  else
  {
    v16 = 0;
    v18 = -1 << *(v12 + 32);
    v14 = (v12 + 56);
    v15 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v17 = (v20 & *(v12 + 56));
  }

  v51[0] = v15;
  v21 = (v15 + 64) >> 6;
  while (v12 < 0)
  {
    v27 = sub_1004A6604();
    if (!v27 || (v54[0] = v27, swift_dynamicCast(), v26 = v55[0], v24 = v16, v25 = v17, !v55[0]))
    {
LABEL_24:
      sub_100020D08(v12);
      sub_10013CFB0(v6);

      v30 = *(v52 + 16);
      v31 = *(v30 + 16);

      if (v31 && (v32 = sub_100063E70(v6), (v33 & 1) != 0))
      {
        v34 = *(*(v30 + 56) + 8 * v32);
      }

      else
      {
        v34 = _swiftEmptySetSingleton;
      }

      if ((v34 & 0xC000000000000001) != 0)
      {
        sub_1004A6594();
        sub_10000DF44(&qword_1005D0438, &qword_1005CEF30, &unk_1004D1E00, byte_1004CFB20);
        result = sub_1004A5DB4();
        v34 = v55[0];
        v35 = v55[1];
        v36 = v55[2];
        v37 = v55[3];
        v38 = v55[4];
      }

      else
      {
        v37 = 0;
        v39 = -1 << *(v34 + 32);
        v35 = (v34 + 56);
        v36 = ~v39;
        v40 = -v39;
        if (v40 < 64)
        {
          v41 = ~(-1 << v40);
        }

        else
        {
          v41 = -1;
        }

        v38 = (v41 & *(v34 + 56));
      }

      v51[0] = v36;
      v42 = (v36 + 64) >> 6;
      while (1)
      {
        if (v34 < 0)
        {
          v48 = sub_1004A6604();
          if (!v48 || (v53 = v48, swift_dynamicCast(), v47 = v54[0], v45 = v37, v46 = v38, !v54[0]))
          {
LABEL_47:
            sub_100020D08(v34);
            sub_10013CFB0(v6);
          }
        }

        else
        {
          v43 = v37;
          v44 = v38;
          v45 = v37;
          if (!v38)
          {
            do
            {
              v45 = (v43 + 1);
              if (__OFADD__(v43, 1))
              {
                goto LABEL_49;
              }

              if (v45 >= v42)
              {
                goto LABEL_47;
              }

              v44 = v35[v45];
              v43 = (v43 + 1);
            }

            while (!v44);
          }

          v46 = (v44 - 1) & v44;
          v47 = *(*(v34 + 48) + ((v45 << 9) | (8 * __clz(__rbit64(v44)))));

          if (!v47)
          {
            goto LABEL_47;
          }
        }

        v49 = sub_10010ACA8(v54, v47);
        if (*v50)
        {
          sub_10013FF08(v6);
        }

        (v49)(v54, 0);

        v37 = v45;
        v38 = v46;
      }
    }

LABEL_22:
    v28 = sub_10010ACA8(v55, v26);
    if (*v29)
    {
      sub_10013FF08(v6);
    }

    (v28)(v55, 0);

    v16 = v24;
    v17 = v25;
  }

  v22 = v16;
  v23 = v17;
  v24 = v16;
  if (v17)
  {
LABEL_18:
    v25 = (v23 - 1) & v23;
    v26 = *(*(v12 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));

    if (!v26)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  while (1)
  {
    v24 = (v22 + 1);
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v21)
    {
      goto LABEL_24;
    }

    v23 = v14[v24];
    v22 = (v22 + 1);
    if (v23)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

void sub_1000EAC50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  while (v10)
  {
    v13 = v12;
LABEL_9:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    sub_1000F9948(*(a1 + 48) + *(v5 + 72) * (v14 | (v13 << 6)), v7, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1000EAE90(v7, a2);
    sub_1000F9A28(v7, type metadata accessor for MoveAndCopyMessages.CommandID);
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      return;
    }

    v10 = *(a1 + 56 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1000EAE00()
{
  if (!(*v0 >> 62))
  {
    result = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    result = sub_1000F2E78();
    if (result)
    {
      return result;
    }

    if (*v0 >> 62)
    {
      v4 = sub_1004A6A34();
      v3 = __OFSUB__(v4, 1);
      result = v4 - 1;
      if (!v3)
      {
        return sub_100169180(result);
      }
    }

    else
    {
      v2 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v3 = __OFSUB__(v2, 1);
      result = v2 - 1;
      if (!v3)
      {
        return sub_100169180(result);
      }
    }

    __break(1u);
    return result;
  }

  result = sub_1004A6A34();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_1000EAE90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MoveAndCopyMessages.CommandID;
  sub_1000F9948(a1, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_10000C9C0(&qword_1005CEF30, &unk_1004D1E00);
  v10 = swift_allocObject();
  sub_1000F9A88(v8, v10 + *(*v10 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_1000F9948(a2, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
  v11 = swift_allocObject();
  sub_1000F9A88(v8, v11 + *(*v11 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
  v12 = sub_1000F3F74(v11, v10, *(v3 + 16));
  if (v12)
  {
    __break(1u);
    goto LABEL_18;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v3 + 16);
  v14 = v30;
  v12 = sub_100063E70(v10);
  v16 = v14[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  LOBYTE(v9) = v15;
  if (v14[3] >= v19)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    sub_1000C6184(v19, isUniquelyReferenced_nonNull_native);
    v14 = v30;
    v12 = sub_100063E70(v10);
    if ((v9 & 1) != (v20 & 1))
    {
LABEL_12:
      v12 = sub_1004A6E24();
      __break(1u);
      goto LABEL_13;
    }
  }

  *(v3 + 16) = v14;
  if (v9)
  {
    goto LABEL_9;
  }

LABEL_8:
  LOBYTE(v9) = v12;
  sub_10001C814(v12, v10, _swiftEmptySetSingleton, v14);

LABEL_9:
  while (1)
  {

    sub_1000893BC(&v30, v11);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v3 + 8);
    v14 = v30;
    v12 = sub_100063E70(v11);
    v22 = v14[2];
    v23 = (v21 & 1) == 0;
    v18 = __OFADD__(v22, v23);
    v24 = v22 + v23;
    if (!v18)
    {
      break;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    v27 = v12;
    sub_10013BB00();
    v12 = v27;
    v14 = v30;
    *(v3 + 16) = v30;
    if ((v9 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  LOBYTE(v9) = v21;
  if (v14[3] < v24)
  {
    sub_1000C6184(v24, isUniquelyReferenced_nonNull_native);
    v14 = v30;
    v12 = sub_100063E70(v11);
    if ((v9 & 1) == (v25 & 1))
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

LABEL_13:
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v28 = v12;
    sub_10013BB00();
    v12 = v28;
    v14 = v30;
    *(v3 + 8) = v30;
    if (v9)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v3 + 8) = v14;
  if ((v9 & 1) == 0)
  {
LABEL_15:
    sub_10001C814(v12, v11, _swiftEmptySetSingleton, v14);
  }

LABEL_16:

  sub_1000893BC(&v30, v10);
}

uint64_t sub_1000EB1F8@<X0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 96) = sub_100093190(&off_100599350);
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = sub_1000F70B8(_swiftEmptyArrayStorage);
  *(a3 + 136) = v6;
  *(a3 + 144) = v7;
  *(a3 + 152) = v8;
  *(a3 + 160) = 0;
  *(a3 + 168) = _swiftEmptyArrayStorage;
  *(a3 + 176) = _swiftEmptyArrayStorage;
  *(a3 + 184) = _swiftEmptySetSingleton;
  v10 = a1[1];
  v19 = *a1;
  v9 = v19;
  v17 = *(a1 + 3);
  v18 = *(a1 + 8);
  *(a3 + 40) = v18;
  *(a3 + 24) = v10;
  *(a3 + 8) = v9;
  v15 = *(a1 + 3);
  v16 = *(a1 + 8);
  *(a3 + 48) = &type metadata for MoveAndCopyMessages;

  sub_1000F72C8(&v17, &v13);
  sub_1000F7324(&v19, &v13);
  sub_100026044();
  sub_1004A6674();
  *(a3 + 105) = a2 & 1;
  sub_10000C9C0(&qword_1005CD560, &unk_1004CF410);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1004CEAA0;
  v13 = v17;
  v14 = v18;
  *(v11 + 32) = type metadata accessor for NotifyMessagesVanished(0);

  sub_1004A6674();
  sub_1000D69D0(&v19);
  result = sub_10009DA94(&v17);
  *a3 = v11;
  return result;
}

void sub_1000EB38C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  __chkstk_darwin(v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F9948(v2, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_100025FDC(v9, v6, &unk_1005D91B0, &unk_1004CF400);
      sub_1004A6EB4(0);
      sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
      sub_1000956A0();
      sub_1004A5564();
      sub_100025F40(v6, &unk_1005D91B0, &unk_1004CF400);
      return;
    }

    v13 = *(v9 + 2);
    v14 = *(v9 + 2);
    sub_1004A6EB4(2uLL);
    sub_1004A6EB4(v13 | (v13 << 32));
    sub_1000927DC(a1, v14);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v11 = *(v9 + 2);
    v12 = *(v9 + 2);
    sub_1004A6EB4(3uLL);
    sub_1004A6EB4(v11 | (v11 << 32));
    sub_100092678(a1, v12);
LABEL_7:

    return;
  }

  sub_1004A6EB4(1uLL);
}

Swift::Int sub_1000EB57C()
{
  sub_1004A6E94();
  sub_1000EB38C(v1);
  return sub_1004A6F14();
}

Swift::Int sub_1000EB5C0(uint64_t a1)
{
  sub_1004A6E94();
  sub_1000EB38C(v2);
  return sub_1004A6F14();
}

Swift::Int sub_1000EB600()
{
  result = sub_100093190(&off_100599328);
  qword_1005DDF60 = result;
  return result;
}

void sub_1000EB628(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  sub_1000F9948(a1, &v22 - v8, type metadata accessor for MailboxTaskLogger);
  sub_1000F9948(a1, v6, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_1000B40DC(v2, v25);
  v10 = sub_1004A4A54();
  v11 = sub_1004A6034();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v12 = 68159491;
    *(v12 + 4) = 2;
    *(v12 + 8) = 256;
    v13 = &v6[*(v4 + 20)];
    *(v12 + 10) = *v13;
    *(v12 + 11) = 2082;
    v14 = &v9[*(v4 + 20)];
    *(v12 + 13) = sub_10015BA6C(*(v14 + 1), *(v14 + 2), &v24);
    *(v12 + 21) = 1040;
    *(v12 + 23) = 2;
    *(v12 + 27) = 512;
    v15 = *(v13 + 12);
    sub_1000F9A28(v6, type metadata accessor for MailboxTaskLogger);
    *(v12 + 29) = v15;
    *(v12 + 31) = 2160;
    *(v12 + 33) = 0x786F626C69616DLL;
    *(v12 + 41) = 2085;
    v16 = *(v14 + 4);
    v17 = *(v14 + 10);

    sub_1000F9A28(v9, type metadata accessor for MailboxTaskLogger);
    v22 = v16;
    v23 = v17;
    v18 = sub_1004A5824();
    v20 = sub_10015BA6C(v18, v19, &v24);

    *(v12 + 43) = v20;
    *(v12 + 51) = 1024;
    v21 = (v25[105] & 1) == 0;
    sub_1000B4138(v25);
    *(v12 + 53) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. Server supports move: %{BOOL}d", v12, 0x39u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000B4138(v25);
    sub_1000F9A28(v6, type metadata accessor for MailboxTaskLogger);

    sub_1000F9A28(v9, type metadata accessor for MailboxTaskLogger);
  }
}

uint64_t sub_1000EB940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v55 = a4;
  v8 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v54 = *(v8 - 8);
  __chkstk_darwin(v8);
  v52 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v50 - v11;
  v13 = sub_10000C9C0(&qword_1005D0468, &qword_1004D3CE8);
  __chkstk_darwin(v13 - 8);
  v53 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v50 - v16;
  __chkstk_darwin(v18);
  v20 = &v50 - v19;
  v21 = sub_10000C9C0(&qword_1005D0470, &qword_1004D3CF0);
  __chkstk_darwin(v21 - 8);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v50 - v25;
  if (sub_10009AD04(0, a1, a2, a3))
  {
    v50 = v4;
    sub_1000E93F4(sub_1000EBF68, 0, v20);
    sub_10000E268(v20, v17, &qword_1005D0468, &qword_1004D3CE8);
    v27 = *(v54 + 48);
    v28 = 1;
    v51 = v8;
    v29 = v27(v17, 1, v8);
    v30 = v26;
    if (v29 != 1)
    {
      sub_1000F9A88(v17, v12, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1000EC73C(v12, v26);
      sub_1000F9A28(v12, type metadata accessor for MoveAndCopyMessages.CommandID);
      v28 = 0;
    }

    sub_100025F40(v20, &qword_1005D0468, &qword_1004D3CE8);
    v31 = sub_10000C9C0(&qword_1005D0478, &qword_1004D3CF8);
    (*(*(v31 - 8) + 56))(v26, v28, 1, v31);
    sub_10000E268(v26, v23, &qword_1005D0470, &qword_1004D3CF0);
    v32 = sub_10000C9C0(&qword_1005D0478, &qword_1004D3CF8);
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v23, 1, v32) == 1)
    {
      sub_100025F40(v23, &qword_1005D0470, &qword_1004D3CF0);
      (*(v54 + 56))(v53, 1, 1, v51);
      v34 = v55;
      return sub_100025FDC(v30, v34, &qword_1005D0470, &qword_1004D3CF0);
    }

    v40 = *(v32 + 48);
    v41 = v53;
    sub_1000F9A88(v23, v53, type metadata accessor for MoveAndCopyMessages.CommandID);
    v42 = v51;
    (*(v54 + 56))(v41, 0, 1, v51);
    sub_1000F9A28(&v23[v40], type metadata accessor for ClientCommand);
    v43 = v27(v41, 1, v42);
    v34 = v55;
    if (v43 == 1)
    {
      return sub_100025FDC(v30, v34, &qword_1005D0470, &qword_1004D3CF0);
    }

    v44 = v55;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        *(v50 + 160) = 1;
      }

      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 2)
    {
LABEL_14:
      sub_1000F9A28(v41, type metadata accessor for MoveAndCopyMessages.CommandID);
      v34 = v44;
      return sub_100025FDC(v30, v34, &qword_1005D0470, &qword_1004D3CF0);
    }

    v34 = v44;
    if (*(v50 + 160))
    {
      return sub_100025FDC(v30, v34, &qword_1005D0470, &qword_1004D3CF0);
    }

    v46 = v30;
    v47 = v52;
    swift_storeEnumTagMultiPayload();
    v48 = v50;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = *(v48 + 152);
    sub_10001D19C(1, v47, isUniquelyReferenced_nonNull_native);
    sub_1000F9A28(v47, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_100025F40(v46, &qword_1005D0470, &qword_1004D3CF0);
    *(v48 + 152) = v56;
    return (*(v33 + 56))(v44, 1, 1, v32);
  }

  else
  {
    v35 = sub_10000C9C0(&qword_1005D0478, &qword_1004D3CF8);
    v36 = *(*(v35 - 8) + 56);
    v37 = v35;
    v38 = v55;

    return v36(v38, 1, 1, v37);
  }
}

uint64_t sub_1000EBF6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v65 = a3;
  v62 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v62);
  v61 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v60 = &v60 - v7;
  v8 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v64 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v60 - v12;
  __chkstk_darwin(v14);
  v16 = &v60 - v15;
  __chkstk_darwin(v17);
  v19 = &v60 - v18;
  __chkstk_darwin(v20);
  v22 = &v60 - v21;
  v23 = sub_10000C9C0(&qword_1005D02A8, &unk_1004D3A30);
  __chkstk_darwin(v23 - 8);
  v25 = *(v24 + 56);
  v26 = a1;
  v28 = &v60 - v27;
  sub_1000F9948(v26, &v60 - v27, type metadata accessor for MoveAndCopyMessages.CommandID);
  v63 = v25;
  v29 = v8;
  sub_1000F9948(a2, &v28[v25], type metadata accessor for MoveAndCopyMessages.CommandID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1000F9948(v28, v16, type metadata accessor for MoveAndCopyMessages.CommandID);
      v31 = v63;
      if (!swift_getEnumCaseMultiPayload())
      {
        v56 = v60;
        sub_100025FDC(v16, v60, &unk_1005D91B0, &unk_1004CF400);
        v57 = v61;
        sub_100025FDC(&v28[v31], v61, &unk_1005D91B0, &unk_1004CF400);
        v58 = v65;
        MessageIdentifierSet.union(_:)(v57, v65);
        sub_100025F40(v57, &unk_1005D91B0, &unk_1004CF400);
        sub_100025F40(v56, &unk_1005D91B0, &unk_1004CF400);
        swift_storeEnumTagMultiPayload();
        (*(v64 + 56))(v58, 0, 1, v8);
        return sub_1000F9A28(v28, type metadata accessor for MoveAndCopyMessages.CommandID);
      }

      sub_100025F40(v16, &unk_1005D91B0, &unk_1004CF400);
      goto LABEL_21;
    }

    sub_1000F9948(v28, v22, type metadata accessor for MoveAndCopyMessages.CommandID);
    v45 = *v22;
    v46 = *(v22 + 2);
    v47 = *(v22 + 2);
    v48 = v63;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000F9948(&v28[v48], v19, type metadata accessor for MoveAndCopyMessages.CommandID);
      v49 = *(v19 + 2);
      if (v46 | (v46 << 32)) == (*(v19 + 2) | (*(v19 + 2) << 32)) && (sub_1000FFC98(v45, *v19))
      {
        v50 = v29;

        sub_1000CF018(v51);

        v52 = sub_100014D98();

        if (v52)
        {

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v66 = v47;
          sub_1000F9AF0(v49, sub_1000F2EF4, 0, isUniquelyReferenced_nonNull_native, &v66);

          swift_bridgeObjectRelease_n();
          v54 = v66;

          v55 = v65;
          *v65 = v45;
          *(v55 + 2) = v46;
          v55[2] = v54;
          swift_storeEnumTagMultiPayload();
          (*(v64 + 56))(v55, 0, 1, v50);
          goto LABEL_25;
        }

        (*(v64 + 56))(v65, 1, 1, v50);

LABEL_24:

        goto LABEL_25;
      }
    }

    goto LABEL_20;
  }

  if (EnumCaseMultiPayload != 2)
  {
LABEL_21:
    (*(v64 + 56))(v65, 1, 1, v29);
    return sub_100025F40(v28, &qword_1005D02A8, &unk_1004D3A30);
  }

  sub_1000F9948(v28, v13, type metadata accessor for MoveAndCopyMessages.CommandID);
  v32 = *v13;
  v33 = *(v13 + 2);
  v34 = *(v13 + 2);
  v35 = v63;
  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_20:

    goto LABEL_21;
  }

  sub_1000F9948(&v28[v35], v10, type metadata accessor for MoveAndCopyMessages.CommandID);
  v36 = *v10;
  v37 = *(v10 + 2);
  v38 = *(v10 + 2);
  if ((v33 | (v33 << 32)) != (v37 | (v37 << 32)) || (sub_1000FFC98(v32, v36) & 1) == 0)
  {

    goto LABEL_20;
  }

  v39 = v29;

  sub_1000CF018(v40);

  v41 = sub_100014D98();

  if ((v41 & 1) == 0)
  {
    (*(v64 + 56))(v65, 1, 1, v29);

    goto LABEL_24;
  }

  v42 = swift_isUniquelyReferenced_nonNull_native();
  v66 = v34;
  sub_1000F9D98(v38, sub_1000F2EDC, 0, v42, &v66);

  swift_bridgeObjectRelease_n();
  v43 = v66;

  v44 = v65;
  *v65 = v32;
  *(v44 + 2) = v33;
  v44[2] = v43;
  swift_storeEnumTagMultiPayload();
  (*(v64 + 56))(v44, 0, 1, v39);
LABEL_25:
  sub_1000F9A28(&v28[v63], type metadata accessor for MoveAndCopyMessages.CommandID);
  return sub_1000F9A28(v28, type metadata accessor for MoveAndCopyMessages.CommandID);
}

uint64_t sub_1000EC73C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v5 - 8);
  v7 = &v30 - v6;
  v8 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  __chkstk_darwin(v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ClientCommand(0);
  __chkstk_darwin(v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F9948(a1, v10, type metadata accessor for MoveAndCopyMessages.CommandID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v20 = *v10;
      v31 = v2;
      v21 = *(v10 + 2);

      sub_1000B492C(v22);
      v23 = &v13[*(sub_10000C9C0(&qword_1005D0480, &qword_1004D3D00) + 48)];
      sub_100025FDC(v7, v13, &unk_1005D91B0, &unk_1004CF400);

      *v23 = v20;
      *(v23 + 2) = v21;
    }
  }

  else
  {
    v31 = v2;
    if (EnumCaseMultiPayload)
    {
      v24 = *v10;
      v25 = *(v10 + 2);

      sub_1000B492C(v26);
      v27 = &v13[*(sub_10000C9C0(&qword_1005D0480, &qword_1004D3D00) + 48)];
      sub_100025FDC(v7, v13, &unk_1005D91B0, &unk_1004CF400);

      *v27 = v24;
      *(v27 + 2) = v25;
    }

    else
    {
      sub_100025FDC(v10, v7, &unk_1005D91B0, &unk_1004CF400);
      v15 = &v13[*(sub_10000C9C0(&qword_1005D0488, &qword_1004DA4C0) + 48)];
      sub_10000E268(v7, v13, &unk_1005D91B0, &unk_1004CF400);
      sub_10000C9C0(&qword_1005CEE68, &unk_1004D1B40);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1004CEAA0;
      v17 = Flag.deleted.unsafeMutableAddressor();
      v19 = *v17;
      v18 = *(v17 + 1);
      *(v16 + 32) = v19;
      *(v16 + 40) = v18;

      sub_100025F40(v7, &unk_1005D91B0, &unk_1004CF400);
      *v15 = 256;
      *(v15 + 1) = v16;
    }
  }

  swift_storeEnumTagMultiPayload();
  v28 = *(sub_10000C9C0(&qword_1005D0478, &qword_1004D3CF8) + 48);
  sub_1000F9948(a1, a2, type metadata accessor for MoveAndCopyMessages.CommandID);
  return sub_1000F9A88(v13, a2 + v28, type metadata accessor for ClientCommand);
}

uint64_t sub_1000ECABC(void *a1, uint64_t a2, uint64_t a3, NSObject *a4, int a5, uint64_t a6, uint64_t a7)
{
  v381 = a7;
  LODWORD(v374) = a5;
  v377 = a4;
  v360 = a3;
  v378 = a2;
  v373 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v373);
  v375 = &v344[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v358 = &v344[-v11];
  __chkstk_darwin(v12);
  v350 = &v344[-v13];
  __chkstk_darwin(v14);
  v355 = &v344[-v15];
  __chkstk_darwin(v16);
  v365 = &v344[-v17];
  __chkstk_darwin(v18);
  v364 = &v344[-v19];
  __chkstk_darwin(v20);
  v22 = &v344[-v21];
  __chkstk_darwin(v23);
  v25 = &v344[-v24];
  v371 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v371);
  v370 = &v344[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v361 = &v344[-v28];
  __chkstk_darwin(v29);
  v353 = &v344[-v30];
  __chkstk_darwin(v31);
  v354 = &v344[-v32];
  __chkstk_darwin(v33);
  v384 = &v344[-v34];
  __chkstk_darwin(v35);
  v368 = &v344[-v36];
  __chkstk_darwin(v37);
  v39 = &v344[-v38];
  __chkstk_darwin(v40);
  v42 = &v344[-v41];
  v43 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v362 = *(v43 - 8);
  __chkstk_darwin(v43);
  v379 = &v344[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v45);
  v367 = &v344[-v46];
  __chkstk_darwin(v47);
  v366 = &v344[-v48];
  __chkstk_darwin(v49);
  v359 = &v344[-v50];
  __chkstk_darwin(v51);
  v369 = &v344[-v52];
  __chkstk_darwin(v53);
  v372 = &v344[-v54];
  __chkstk_darwin(v55);
  v351 = &v344[-v56];
  __chkstk_darwin(v57);
  v352 = &v344[-v58];
  __chkstk_darwin(v59);
  v363 = &v344[-v60];
  __chkstk_darwin(v61);
  v357 = &v344[-v62];
  __chkstk_darwin(v63);
  v348 = &v344[-v64];
  __chkstk_darwin(v65);
  v349 = &v344[-v66];
  __chkstk_darwin(v67);
  v356 = &v344[-v68];
  __chkstk_darwin(v69);
  v71 = &v344[-v70];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v386 = *(v7 + 152);
  sub_10001D19C(1, a1, isUniquelyReferenced_nonNull_native);
  v376 = v7;
  *(v7 + 152) = v386;
  v380 = a1;
  sub_1000F9948(a1, v71, type metadata accessor for MoveAndCopyMessages.CommandID);
  v383 = v43;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_100025FDC(v71, v42, &unk_1005D91B0, &unk_1004CF400);
      sub_1000F9948(v381, v25, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_10000E268(v42, v39, &unk_1005D91B0, &unk_1004CF400);
      v74 = sub_1004A4A54();
      v75 = sub_1004A6034();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v368 = swift_slowAlloc();
        v388 = v368;
        *v76 = 68159491;
        *(v76 + 4) = 2;
        *(v76 + 8) = 256;
        v77 = &v25[*(v373 + 20)];
        *(v76 + 10) = *v77;
        *(v76 + 11) = 2082;
        v79 = *(v77 + 1);
        v78 = *(v77 + 2);

        v80 = sub_10015BA6C(v79, v78, &v388);

        *(v76 + 13) = v80;
        *(v76 + 21) = 1040;
        *(v76 + 23) = 2;
        *(v76 + 27) = 512;
        *(v76 + 29) = *(v77 + 12);
        *(v76 + 31) = 2160;
        *(v76 + 33) = 0x786F626C69616DLL;
        *(v76 + 41) = 2085;
        v81 = *(v77 + 10);
        v386 = *(v77 + 4);
        v387 = v81;

        v82 = sub_1004A5824();
        v84 = sub_10015BA6C(v82, v83, &v388);

        *(v76 + 43) = v84;
        sub_1000F9A28(v25, type metadata accessor for MailboxTaskLogger);
        *(v76 + 51) = 2082;
        v85 = MessageIdentifierSet.debugDescription.getter();
        v87 = sub_10015BA6C(v85, v86, &v388);

        *(v76 + 53) = v87;
        sub_100025F40(v39, &unk_1005D91B0, &unk_1004CF400);
        _os_log_impl(&_mh_execute_header, v74, v75, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did mark source messages %{public}s as deleted.", v76, 0x3Du);
        swift_arrayDestroy();
      }

      else
      {
        sub_1000F9A28(v25, type metadata accessor for MailboxTaskLogger);
        sub_100025F40(v39, &unk_1005D91B0, &unk_1004CF400);
      }

      sub_100025F40(v42, &unk_1005D91B0, &unk_1004CF400);
      goto LABEL_19;
    }

    v116 = *v71;
    v117 = *(v71 + 2);
    v118 = v364;
    sub_1000F9948(v381, v364, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v119 = sub_1004A4A54();
    v120 = sub_1004A6034();
    v121 = os_log_type_enabled(v119, v120);
    v94 = v384;
    if (v121)
    {
      v122 = swift_slowAlloc();
      v345 = v117;
      v123 = v122;
      v365 = swift_slowAlloc();
      v388 = v365;
      *v123 = 68160003;
      *(v123 + 4) = 2;
      *(v123 + 8) = 256;
      v124 = *(v373 + 20);
      v347 = v120;
      v125 = &v118[v124];
      *(v123 + 10) = v118[v124];
      *(v123 + 11) = 2082;
      v346 = v119;
      v127 = *&v118[v124 + 8];
      v126 = *&v118[v124 + 16];

      v128 = sub_10015BA6C(v127, v126, &v388);

      *(v123 + 13) = v128;
      *(v123 + 21) = 1040;
      *(v123 + 23) = 2;
      *(v123 + 27) = 512;
      *(v123 + 29) = *(v125 + 12);
      *(v123 + 31) = 2160;
      *(v123 + 33) = 0x786F626C69616DLL;
      *(v123 + 41) = 2085;
      v129 = *(v125 + 10);
      v386 = *(v125 + 4);
      v387 = v129;

      v130 = sub_1004A5824();
      v132 = sub_10015BA6C(v130, v131, &v388);

      *(v123 + 43) = v132;
      sub_1000F9A28(v118, type metadata accessor for MailboxTaskLogger);
      *(v123 + 51) = 2160;
      *(v123 + 53) = 0x786F626C69616DLL;
      *(v123 + 61) = 2085;
      v386 = v116;
      v387 = v345;

      v133 = sub_1004A5824();
      v135 = sub_10015BA6C(v133, v134, &v388);

      *(v123 + 63) = v135;
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      *(v123 + 71) = 2082;

      v136 = v368;
      sub_1000B492C(v137);
      v138 = MessageIdentifierSet.debugDescription.getter();
      v140 = v139;
      sub_100025F40(v136, &unk_1005D91B0, &unk_1004CF400);
      v141 = sub_10015BA6C(v138, v140, &v388);

      *(v123 + 73) = v141;
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v115 = v346;
      _os_log_impl(&_mh_execute_header, v346, v347, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] [%{sensitive,mask.mailbox}s] Did copy messages %{public}s.", v123, 0x51u);
      goto LABEL_10;
    }

    sub_1000F9A28(v118, type metadata accessor for MailboxTaskLogger);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v88 = *v71;
    v89 = *(v71 + 2);
    v90 = v365;
    sub_1000F9948(v381, v365, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v91 = sub_1004A4A54();
    v92 = sub_1004A6034();
    v93 = os_log_type_enabled(v91, v92);
    v94 = v384;
    if (v93)
    {
      v95 = swift_slowAlloc();
      v345 = v89;
      v96 = v95;
      v364 = swift_slowAlloc();
      v388 = v364;
      *v96 = 68160003;
      *(v96 + 4) = 2;
      *(v96 + 8) = 256;
      v97 = *(v373 + 20);
      v347 = v92;
      v98 = &v90[v97];
      *(v96 + 10) = v90[v97];
      *(v96 + 11) = 2082;
      v346 = v91;
      v100 = *&v90[v97 + 8];
      v99 = *&v90[v97 + 16];

      v101 = sub_10015BA6C(v100, v99, &v388);

      *(v96 + 13) = v101;
      *(v96 + 21) = 1040;
      *(v96 + 23) = 2;
      *(v96 + 27) = 512;
      *(v96 + 29) = *(v98 + 12);
      *(v96 + 31) = 2160;
      *(v96 + 33) = 0x786F626C69616DLL;
      *(v96 + 41) = 2085;
      v102 = *(v98 + 10);
      v386 = *(v98 + 4);
      v387 = v102;

      v103 = sub_1004A5824();
      v105 = sub_10015BA6C(v103, v104, &v388);

      *(v96 + 43) = v105;
      sub_1000F9A28(v90, type metadata accessor for MailboxTaskLogger);
      *(v96 + 51) = 2160;
      *(v96 + 53) = 0x786F626C69616DLL;
      *(v96 + 61) = 2085;
      v386 = v88;
      v387 = v345;

      v106 = sub_1004A5824();
      v108 = sub_10015BA6C(v106, v107, &v388);

      *(v96 + 63) = v108;
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      *(v96 + 71) = 2082;

      v109 = v368;
      sub_1000B492C(v110);
      v111 = MessageIdentifierSet.debugDescription.getter();
      v113 = v112;
      sub_100025F40(v109, &unk_1005D91B0, &unk_1004CF400);
      v114 = sub_10015BA6C(v111, v113, &v388);

      *(v96 + 73) = v114;
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v115 = v346;
      _os_log_impl(&_mh_execute_header, v346, v347, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] [%{sensitive,mask.mailbox}s] Did move messages %{public}s.", v96, 0x51u);
LABEL_10:
      swift_arrayDestroy();

      goto LABEL_20;
    }

    sub_1000F9A28(v90, type metadata accessor for MailboxTaskLogger);
LABEL_17:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    goto LABEL_20;
  }

  sub_1000F9948(v381, v22, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v142 = sub_1004A4A54();
  v143 = sub_1004A6034();
  if (os_log_type_enabled(v142, v143))
  {
    v144 = swift_slowAlloc();
    v388 = swift_slowAlloc();
    *v144 = 68159235;
    *(v144 + 4) = 2;
    *(v144 + 8) = 256;
    v145 = &v22[*(v373 + 20)];
    *(v144 + 10) = *v145;
    *(v144 + 11) = 2082;
    v146 = *(v145 + 1);
    v147 = *(v145 + 2);

    v148 = sub_10015BA6C(v146, v147, &v388);

    *(v144 + 13) = v148;
    *(v144 + 21) = 1040;
    *(v144 + 23) = 2;
    *(v144 + 27) = 512;
    *(v144 + 29) = *(v145 + 12);
    *(v144 + 31) = 2160;
    *(v144 + 33) = 0x786F626C69616DLL;
    *(v144 + 41) = 2085;
    v149 = *(v145 + 10);
    v386 = *(v145 + 4);
    v387 = v149;

    v150 = sub_1004A5824();
    v152 = sub_10015BA6C(v150, v151, &v388);

    *(v144 + 43) = v152;
    sub_1000F9A28(v22, type metadata accessor for MailboxTaskLogger);
    _os_log_impl(&_mh_execute_header, v142, v143, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did expunge deleted messages.", v144, 0x33u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000F9A28(v22, type metadata accessor for MailboxTaskLogger);
  }

LABEL_19:
  v94 = v384;
LABEL_20:
  v153 = v380;
  v154 = v378;
  result = sub_1000EF648();
  v158 = v375;
  v159 = v374;
  if (!result)
  {
    return result;
  }

  v160 = result;
  v161 = v156;
  v162 = v157;

  sub_1000B492C(v163);
  v368 = v160;
  v365 = v161;
  if (!v159)
  {
    if ((~v154 & 0xF000000000000007) != 0 && ((v154 >> 59) & 0x1E | (v154 >> 2) & 1) == 8)
    {
      LODWORD(v379) = *((v154 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v186 = *((v154 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v187 = *((v154 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      sub_1000F9948(v381, v355, type metadata accessor for MailboxTaskLogger);

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_1000F9948(v153, v356, type metadata accessor for MoveAndCopyMessages.CommandID);
      v188 = v354;
      sub_10000E268(v94, v354, &unk_1005D91B0, &unk_1004CF400);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v189 = sub_1004A4A54();
      v190 = sub_1004A6004();
      v191 = os_log_type_enabled(v189, v190);
      v380 = v187;
      if (!v191)
      {

        sub_1000F9A28(v355, type metadata accessor for MailboxTaskLogger);
        sub_1000F9A28(v356, type metadata accessor for MoveAndCopyMessages.CommandID);
        sub_100025F40(v188, &unk_1005D91B0, &unk_1004CF400);
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        v311 = v379;
LABEL_125:
        v342 = v382;
        v343 = sub_1000F8EAC(v311, v186, v187, v162);
        if (v342)
        {
          goto LABEL_126;
        }

        v277 = v343;
        v382 = 0;

LABEL_107:

LABEL_108:
        sub_1000E9338(v160, v161, v277);
        return sub_100025F40(v94, &unk_1005D91B0, &unk_1004CF400);
      }

      LODWORD(v375) = v190;
      v377 = v189;
      v378 = v186;
      v192 = swift_slowAlloc();
      v374 = swift_slowAlloc();
      v388 = v374;
      *v192 = 68160259;
      *(v192 + 4) = 2;
      *(v192 + 8) = 256;
      v193 = v355;
      v194 = &v355[*(v373 + 20)];
      *(v192 + 10) = *v194;
      *(v192 + 11) = 2082;
      v196 = *(v194 + 1);
      v195 = *(v194 + 2);

      v197 = sub_10015BA6C(v196, v195, &v388);

      *(v192 + 13) = v197;
      *(v192 + 21) = 1040;
      *(v192 + 23) = 2;
      *(v192 + 27) = 512;
      *(v192 + 29) = *(v194 + 12);
      *(v192 + 31) = 2160;
      *(v192 + 33) = 0x786F626C69616DLL;
      *(v192 + 41) = 2085;
      v198 = *(v194 + 10);
      v386 = *(v194 + 4);
      v387 = v198;

      v199 = sub_1004A5824();
      v201 = sub_10015BA6C(v199, v200, &v388);

      *(v192 + 43) = v201;
      sub_1000F9A28(v193, type metadata accessor for MailboxTaskLogger);
      *(v192 + 51) = 2082;
      v202 = v349;
      sub_1000F9948(v356, v349, type metadata accessor for MoveAndCopyMessages.CommandID);
      v203 = v348;
      sub_1000F9948(v202, v348, type metadata accessor for MoveAndCopyMessages.CommandID);
      v204 = swift_getEnumCaseMultiPayload();
      if (v204 > 1)
      {
        v205 = v354;
        if (v204 != 2)
        {
          v207 = 0x45474E55505845;
          v206 = 0xE700000000000000;
          goto LABEL_117;
        }

        v206 = 0xE400000000000000;
        v207 = 1163284301;
      }

      else
      {
        v205 = v354;
        if (!v204)
        {
          v206 = 0xE600000000000000;
          v207 = 0x4554454C4544;
          v208 = v202;
          v202 = v203;
LABEL_115:
          sub_1000F9A28(v208, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_117:
          sub_1000F9A28(v202, type metadata accessor for MoveAndCopyMessages.CommandID);
          v323 = sub_10015BA6C(v207, v206, &v388);

          *(v192 + 53) = v323;
          sub_1000F9A28(v356, type metadata accessor for MoveAndCopyMessages.CommandID);
          *(v192 + 61) = 2082;
          v324 = MessageIdentifierSet.debugDescription.getter();
          v326 = sub_10015BA6C(v324, v325, &v388);

          *(v192 + 63) = v326;
          sub_100025F40(v205, &unk_1005D91B0, &unk_1004CF400);
          v383 = v192;
          *(v192 + 71) = 2082;
          v327 = v380[2];
          v328 = _swiftEmptyArrayStorage;
          if (v327)
          {
            v381 = v162;
            v386 = _swiftEmptyArrayStorage;

            sub_100134BC4(0, v327, 0);
            v329 = v380;
            v330 = 32;
            v328 = v386;
            do
            {
              v385 = *(v329 + v330);
              sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
              v331 = sub_1004A5804();
              v333 = v332;
              v386 = v328;
              v335 = v328[2];
              v334 = v328[3];
              if (v335 >= v334 >> 1)
              {
                sub_100134BC4((v334 > 1), v335 + 1, 1);
                v329 = v380;
                v328 = v386;
              }

              v328[2] = v335 + 1;
              v336 = &v328[2 * v335];
              v336[4] = v331;
              v336[5] = v333;
              v330 += 8;
              --v327;
            }

            while (v327);

            v94 = v384;
            v162 = v381;
            v187 = v329;
          }

          else
          {
            v187 = v380;
          }

          v386 = v328;
          sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
          sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770, &protocol conformance descriptor for [A]);
          v337 = sub_1004A5614();
          v339 = v338;

          v340 = sub_10015BA6C(v337, v339, &v388);

          v161 = v383;
          *(v383 + 73) = v340;
          swift_bridgeObjectRelease_n();
          v186 = v378;
          swift_bridgeObjectRelease_n();
          *(v161 + 81) = 1024;

          v311 = v379;
          *(v161 + 83) = v379;

          v341 = v377;
          _os_log_impl(&_mh_execute_header, v377, v375, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Server completed %{public}s of messages %{public}s with destination UIDs %{public}s and UIDValidity 0x%x", v161, 0x57u);
          swift_arrayDestroy();

          v160 = v368;
          LODWORD(v161) = v365;
          goto LABEL_125;
        }

        v207 = 1498435395;
        v206 = 0xE400000000000000;
      }

      v208 = v203;
      goto LABEL_115;
    }

    v210 = v357;
    sub_1000F9948(v153, v357, type metadata accessor for MoveAndCopyMessages.CommandID);
    v211 = swift_getEnumCaseMultiPayload();
    v212 = sub_1000F9A28(v210, type metadata accessor for MoveAndCopyMessages.CommandID);
    if (v211 == 2)
    {
      __chkstk_darwin(v212);
      *&v344[-16] = v94;
      v213 = v382;
      v215 = sub_100154CCC(sub_1000FA230, &v344[-32], v214);
      v382 = v213;
      v216 = v358;
      v217 = v363;
      if ((v218 & 1) == 0)
      {
        v383 = v215;
        v219 = v350;
        sub_1000F9948(v381, v350, type metadata accessor for MailboxTaskLogger);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v220 = v353;
        sub_10000E268(v94, v353, &unk_1005D91B0, &unk_1004CF400);
        v221 = sub_1004A4A54();
        v222 = sub_1004A6004();
        if (os_log_type_enabled(v221, v222))
        {
          v223 = swift_slowAlloc();
          v380 = swift_slowAlloc();
          v381 = v162;
          v388 = v380;
          *v223 = 68159491;
          *(v223 + 4) = 2;
          *(v223 + 8) = 256;
          v224 = &v219[*(v373 + 20)];
          *(v223 + 10) = *v224;
          *(v223 + 11) = 2082;
          v226 = *(v224 + 1);
          v225 = *(v224 + 2);

          v227 = v219;
          v228 = sub_10015BA6C(v226, v225, &v388);

          *(v223 + 13) = v228;
          *(v223 + 21) = 1040;
          *(v223 + 23) = 2;
          *(v223 + 27) = 512;
          *(v223 + 29) = *(v224 + 12);
          *(v223 + 31) = 2160;
          *(v223 + 33) = 0x786F626C69616DLL;
          *(v223 + 41) = 2085;
          v229 = *(v224 + 4);
          v230 = *(v224 + 10);
          v94 = v384;
          v386 = v229;
          v387 = v230;

          v231 = sub_1004A5824();
          v233 = sub_10015BA6C(v231, v232, &v388);

          *(v223 + 43) = v233;
          sub_1000F9A28(v227, type metadata accessor for MailboxTaskLogger);
          *(v223 + 51) = 2082;
          v234 = v353;
          v235 = MessageIdentifierSet.debugDescription.getter();
          v237 = sub_10015BA6C(v235, v236, &v388);

          *(v223 + 53) = v237;
          sub_100025F40(v234, &unk_1005D91B0, &unk_1004CF400);
          _os_log_impl(&_mh_execute_header, v221, v222, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Server completed move of messages %{public}s with destination UIDs", v223, 0x3Du);
          swift_arrayDestroy();
          v162 = v381;
        }

        else
        {

          sub_1000F9A28(v219, type metadata accessor for MailboxTaskLogger);
          sub_100025F40(v220, &unk_1005D91B0, &unk_1004CF400);
        }

        v312 = sub_100169210(v383);
        v314 = v313;
        v315 = v382;
        v317 = sub_1000F8EAC(v312, v316, v313, v162);
        LODWORD(v161) = v365;
        if (!v315)
        {
          v277 = v317;
          v382 = 0;

          v160 = v368;
          goto LABEL_108;
        }

        v380 = v314;
LABEL_126:

        return sub_100025F40(v94, &unk_1005D91B0, &unk_1004CF400);
      }
    }

    else
    {
      v216 = v358;
      v217 = v363;
    }

    sub_1000F9948(v381, v216, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_1000F9948(v153, v217, type metadata accessor for MoveAndCopyMessages.CommandID);
    v238 = v361;
    sub_10000E268(v94, v361, &unk_1005D91B0, &unk_1004CF400);
    v239 = sub_1004A4A54();
    v240 = sub_1004A6004();
    if (!os_log_type_enabled(v239, v240))
    {

      sub_1000F9A28(v216, type metadata accessor for MailboxTaskLogger);
      sub_1000F9A28(v217, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_100025F40(v238, &unk_1005D91B0, &unk_1004CF400);
LABEL_106:
      v277 = sub_1000F918C(1, 1, v162);
      v160 = v368;

      LODWORD(v161) = v365;
      sub_100088220(&v386, v160, v365);

      goto LABEL_107;
    }

    v381 = v162;
    v241 = swift_slowAlloc();
    v380 = swift_slowAlloc();
    v388 = v380;
    *v241 = 68159747;
    *(v241 + 4) = 2;
    *(v241 + 8) = 256;
    v242 = v216 + *(v373 + 20);
    *(v241 + 10) = *v242;
    *(v241 + 11) = 2082;
    v244 = *(v242 + 8);
    v243 = *(v242 + 16);

    v245 = v216;
    v246 = sub_10015BA6C(v244, v243, &v388);

    *(v241 + 13) = v246;
    *(v241 + 21) = 1040;
    *(v241 + 23) = 2;
    v247 = v363;
    *(v241 + 27) = 512;
    *(v241 + 29) = *(v242 + 24);
    *(v241 + 31) = 2160;
    *(v241 + 33) = 0x786F626C69616DLL;
    *(v241 + 41) = 2085;
    v248 = *(v242 + 40);
    v386 = *(v242 + 32);
    v387 = v248;

    v249 = sub_1004A5824();
    v251 = sub_10015BA6C(v249, v250, &v388);

    *(v241 + 43) = v251;
    sub_1000F9A28(v245, type metadata accessor for MailboxTaskLogger);
    *(v241 + 51) = 2082;
    v252 = v352;
    sub_1000F9948(v247, v352, type metadata accessor for MoveAndCopyMessages.CommandID);
    v253 = v351;
    sub_1000F9948(v252, v351, type metadata accessor for MoveAndCopyMessages.CommandID);
    v254 = swift_getEnumCaseMultiPayload();
    if (v254 > 1)
    {
      if (v254 != 2)
      {
        v256 = 0x45474E55505845;
        v257 = 0xE700000000000000;
        v94 = v384;
        goto LABEL_105;
      }

      v257 = 0xE400000000000000;
      v256 = 1163284301;
    }

    else
    {
      if (v254)
      {
        v255 = v253;
      }

      else
      {
        v255 = v252;
      }

      if (v254)
      {
        v256 = 1498435395;
      }

      else
      {
        v252 = v253;
        v256 = 0x4554454C4544;
      }

      if (v254)
      {
        v257 = 0xE400000000000000;
      }

      else
      {
        v257 = 0xE600000000000000;
      }

      v253 = v255;
    }

    v94 = v384;
    sub_1000F9A28(v253, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_105:
    sub_1000F9A28(v252, type metadata accessor for MoveAndCopyMessages.CommandID);
    v318 = sub_10015BA6C(v256, v257, &v388);

    *(v241 + 53) = v318;
    sub_1000F9A28(v247, type metadata accessor for MoveAndCopyMessages.CommandID);
    *(v241 + 61) = 2082;
    v319 = v361;
    v320 = MessageIdentifierSet.debugDescription.getter();
    v322 = sub_10015BA6C(v320, v321, &v388);

    *(v241 + 63) = v322;
    sub_100025F40(v319, &unk_1005D91B0, &unk_1004CF400);
    _os_log_impl(&_mh_execute_header, v239, v240, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Server completed %{public}s of messages %{public}s without destination UIDs", v241, 0x47u);
    swift_arrayDestroy();

    v162 = v381;
    goto LABEL_106;
  }

  sub_1000F9948(v381, v158, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_1000F9948(v153, v372, type metadata accessor for MoveAndCopyMessages.CommandID);
  v164 = v94;
  v165 = v370;
  sub_10000E268(v164, v370, &unk_1005D91B0, &unk_1004CF400);
  sub_1000110B0(v154);

  v166 = 20302;
  if (v159 == 2)
  {
    v166 = 4473154;
  }

  v374 = v166;
  if (v159 == 2)
  {
    v167 = 0xE300000000000000;
  }

  else
  {
    v167 = 0xE200000000000000;
  }

  sub_1000110B0(v154);

  sub_1000110B0(v154);

  sub_1000110B0(v154);

  v168 = sub_1004A4A54();
  v169 = sub_1004A6014();
  if (os_log_type_enabled(v168, v169))
  {
    LODWORD(v364) = v169;
    v381 = v162;
    v161 = swift_slowAlloc();
    v363 = swift_slowAlloc();
    v388 = v363;
    *v161 = 68160259;
    *(v161 + 1) = 2;
    *(v161 + 4) = 256;
    v170 = v158 + *(v373 + 20);
    v161[10] = *v170;
    *(v161 + 11) = 2082;
    v172 = *(v170 + 8);
    v171 = *(v170 + 16);

    v173 = sub_10015BA6C(v172, v171, &v388);

    *(v161 + 13) = v173;
    *(v161 + 21) = 1040;
    *(v161 + 23) = 2;
    *(v161 + 27) = 512;
    *(v161 + 29) = *(v170 + 24);
    *(v161 + 31) = 2160;
    *(v161 + 33) = 0x786F626C69616DLL;
    *(v161 + 41) = 2085;
    v174 = *(v170 + 40);
    v386 = *(v170 + 32);
    v387 = v174;

    v175 = sub_1004A5824();
    v177 = sub_10015BA6C(v175, v176, &v388);

    *(v161 + 43) = v177;
    sub_1000F9A28(v158, type metadata accessor for MailboxTaskLogger);
    *(v161 + 51) = 2082;
    v178 = v372;
    v179 = v369;
    sub_1000F9948(v372, v369, type metadata accessor for MoveAndCopyMessages.CommandID);
    v180 = v359;
    sub_1000F9948(v179, v359, type metadata accessor for MoveAndCopyMessages.CommandID);
    v181 = swift_getEnumCaseMultiPayload();
    if (v181 > 1)
    {
      v185 = v370;
      if (v181 != 2)
      {
        v183 = 0x45474E55505845;
        v184 = 0xE700000000000000;
        v162 = v381;
        goto LABEL_70;
      }

      v184 = 0xE400000000000000;
      v183 = 1163284301;
      v162 = v381;
    }

    else
    {
      if (v181)
      {
        v182 = v180;
      }

      else
      {
        v182 = v179;
      }

      if (!v181)
      {
        v179 = v180;
      }

      v369 = v179;
      if (v181)
      {
        v183 = 1498435395;
      }

      else
      {
        v183 = 0x4554454C4544;
      }

      if (v181)
      {
        v184 = 0xE400000000000000;
      }

      else
      {
        v184 = 0xE600000000000000;
      }

      v180 = v182;
      v162 = v381;
      v185 = v370;
    }

    sub_1000F9A28(v180, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_70:
    sub_1000F9A28(v369, type metadata accessor for MoveAndCopyMessages.CommandID);
    v258 = sub_10015BA6C(v183, v184, &v388);

    *(v161 + 53) = v258;
    sub_1000F9A28(v178, type metadata accessor for MoveAndCopyMessages.CommandID);
    *(v161 + 61) = 2082;
    v259 = MessageIdentifierSet.debugDescription.getter();
    v261 = sub_10015BA6C(v259, v260, &v388);

    *(v161 + 63) = v261;
    sub_100025F40(v185, &unk_1005D91B0, &unk_1004CF400);
    *(v161 + 71) = 2082;

    v262 = sub_10015BA6C(v374, v167, &v388);

    *(v161 + 73) = v262;

    v263 = v378;
    sub_10001114C(v378);

    v264 = v377;

    sub_10001114C(v263);

    *(v161 + 81) = 2082;
    sub_1000110B0(v263);

    v265 = ResponseText.debugDescription.getter(v263, v360, v264);
    v267 = v266;
    sub_10001114C(v263);

    v268 = sub_10015BA6C(v265, v267, &v388);

    *(v161 + 83) = v268;

    sub_10001114C(v263);

    sub_10001114C(v263);

    _os_log_impl(&_mh_execute_header, v168, v364, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Server failed to %{public}s messages %{public}s: %{public}s %{public}s", v161, 0x5Bu);
    swift_arrayDestroy();

    v209 = v376;
    v160 = v368;
    LODWORD(v161) = v365;
    v94 = v384;
    goto LABEL_71;
  }

  sub_1000F9A28(v158, type metadata accessor for MailboxTaskLogger);
  sub_1000F9A28(v372, type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_100025F40(v165, &unk_1005D91B0, &unk_1004CF400);

  sub_10001114C(v154);

  sub_10001114C(v154);

  sub_10001114C(v154);

  sub_10001114C(v154);

  v94 = v384;
  v209 = v376;
  v160 = v368;
LABEL_71:
  v269 = v380;
  v270 = v366;
  sub_1000F9948(v380, v366, type metadata accessor for MoveAndCopyMessages.CommandID);
  v271 = swift_getEnumCaseMultiPayload();
  v272 = sub_1000F9A28(v270, type metadata accessor for MoveAndCopyMessages.CommandID);
  if (v271 == 2)
  {
    __chkstk_darwin(v272);
    *&v344[-16] = v94;
    v273 = v382;
    v275 = sub_100154CCC(sub_1000F98D4, &v344[-32], v274);
    v382 = v273;
    if ((v276 & 1) == 0)
    {
      sub_100169210(v275);
    }
  }

  v277 = sub_1000F918C(0, 1, v162);
  v278 = v367;
  sub_1000F9948(v269, v367, type metadata accessor for MoveAndCopyMessages.CommandID);
  v279 = swift_getEnumCaseMultiPayload();
  sub_1000F9A28(v278, type metadata accessor for MoveAndCopyMessages.CommandID);
  if (v279 != 1)
  {
    goto LABEL_107;
  }

  v380 = v277;
  v280 = v162 + 64;
  v281 = 1 << *(v162 + 32);
  v282 = -1;
  if (v281 < 64)
  {
    v282 = ~(-1 << v281);
  }

  v283 = v282 & *(v162 + 64);
  v284 = (v281 + 63) >> 6;

  v285 = 0;
  while (v283)
  {
LABEL_85:
    v287 = __clz(__rbit64(v283));
    v283 &= v283 - 1;
    v288 = v287 | (v285 << 6);
    v289 = *(v162 + 56) + 24 * v288;
    if ((*v289 & 1) == 0)
    {
      v290 = *(v289 + 8);
      v291 = *(v289 + 16);
      v292 = v162;
      LODWORD(v386) = *(*(v162 + 48) + 4 * v288);
      v381 = v290;
      sub_100014CEC(v290, v291);
      v293 = sub_100016948();
      v294 = v209;
      v295 = v379;
      MessageIdentifierSet.init(_:)(&v386, &type metadata for UID, v293);
      swift_storeEnumTagMultiPayload();
      v296 = swift_isUniquelyReferenced_nonNull_native();
      v297 = *(v294 + 152);
      v386 = v297;
      v298 = sub_100063E04(v295);
      v300 = v297[2];
      v301 = (v299 & 1) == 0;
      v302 = __OFADD__(v300, v301);
      v303 = v300 + v301;
      if (v302)
      {
        goto LABEL_129;
      }

      v304 = v299;
      if (v297[3] >= v303)
      {
        if ((v296 & 1) == 0)
        {
          v310 = v298;
          sub_10013B8C8();
          v298 = v310;
        }
      }

      else
      {
        sub_1000C58F4(v303, v296);
        v298 = sub_100063E04(v379);
        if ((v304 & 1) != (v305 & 1))
        {
          goto LABEL_131;
        }
      }

      v162 = v292;
      v306 = v386;
      if (v304)
      {
        *(v386[7] + v298) = 1;
      }

      else
      {
        v386[(v298 >> 6) + 8] |= 1 << v298;
        v307 = v298;
        sub_1000F9948(v379, v306[6] + *(v362 + 72) * v298, type metadata accessor for MoveAndCopyMessages.CommandID);
        *(v306[7] + v307) = 1;
        v308 = v306[2];
        v302 = __OFADD__(v308, 1);
        v309 = v308 + 1;
        if (v302)
        {
          goto LABEL_130;
        }

        v306[2] = v309;
      }

      v209 = v376;
      sub_100014D40(v381, v291);
      sub_1000F9A28(v379, type metadata accessor for MoveAndCopyMessages.CommandID);
      *(v209 + 152) = v306;
    }
  }

  while (1)
  {
    v286 = v285 + 1;
    if (__OFADD__(v285, 1))
    {
      break;
    }

    if (v286 >= v284)
    {

      v94 = v384;
      v160 = v368;
      LODWORD(v161) = v365;
      v277 = v380;
      goto LABEL_108;
    }

    v283 = *(v280 + 8 * v286);
    ++v285;
    if (v283)
    {
      v285 = v286;
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  result = sub_1004A6E24();
  __break(1u);
  return result;
}

void *sub_1000EF648()
{
  v1 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  __chkstk_darwin(v1);
  v3 = (&v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000F9948(v0, v3, type metadata accessor for MoveAndCopyMessages.CommandID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      return 0;
    }

    v26 = *v3;
    v5 = v3[2];
    sub_10000C9C0(&qword_1005CF7D0, &qword_1004D3CB0);
    result = sub_1004A6A54();
    v7 = result;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = result + 8;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_14:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v5 + 48) + 4 * v17);
        v19 = v7[6];
        v20 = *(*(v5 + 56) + 16 * v17);
        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(v19 + 4 * v17) = v18;
        v21 = v7[7] + 24 * v17;
        *v21 = 0;
        *(v21 + 8) = v20;
        v22 = v7[2];
        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          break;
        }

        v7[2] = v24;
        result = sub_100014CEC(v20, *(&v20 + 1));
        if (!v11)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v8;
      while (1)
      {
        v8 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v8 >= v12)
        {

          return v26;
        }

        v16 = *(v5 + 64 + 8 * v8);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1000F9A28(v3, type metadata accessor for MoveAndCopyMessages.CommandID);
      return 0;
    }

    return *v3;
  }

  return result;
}

uint64_t sub_1000EF890(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A49D4();
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004A48E4();
  __chkstk_darwin(v7 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_1004A48B4();
  sub_1000EADE8();
  sub_1004A4964();
  sub_1000F9A28(v6, &type metadata accessor for OSLogStringAlignment);
  sub_1000F9A28(v9, &type metadata accessor for OSLogPrivacy);
}

unint64_t sub_1000EF9F4(uint64_t a1, uint64_t a2)
{
  v13[2] = a2;
  v3 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v3 - 8);
  v5 = v13 - v4;
  v6 = *(a1 + 8);
  v13[1] = sub_100016D2C();
  result = sub_1004A7114();
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = 0;
    while (v9 < *(v6 + 16))
    {
      v14[0] = *(v6 + 32 + 8 * v9);
      v10 = sub_100016948();
      result = Range<>.init<A>(_:)(v14, &type metadata for UID, v10);
      v14[5] = result;
      if (HIDWORD(result) != result)
      {
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        v11 = sub_1004A70B4();
        sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
        sub_1004A7064();
        result = v11(v14, 0);
      }

      if (v8 == ++v9)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    v12 = sub_1004A7034();
    sub_100025F40(v5, &unk_1005D91B0, &unk_1004CF400);
    return v12 & 1;
  }

  return result;
}

BOOL sub_1000EFBB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  __chkstk_darwin(v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v24 - v14;
  sub_1000F9948(a1, &v24 - v14, type metadata accessor for MoveAndCopyMessages.CommandID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v25 = a2;
      sub_100025FDC(v15, v9, &unk_1005D91B0, &unk_1004CF400);
      sub_10000E268(v9, v6, &unk_1005D91B0, &unk_1004CF400);
      v17 = sub_1000CC2E4(v6);
      a2 = v25;
      sub_100025F40(v9, &unk_1005D91B0, &unk_1004CF400);
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 2)
  {
LABEL_5:

    v17 = sub_1000CF018(v18);

    goto LABEL_7;
  }

  v17 = _swiftEmptySetSingleton;
LABEL_7:
  sub_1000F9948(a2, v12, type metadata accessor for MoveAndCopyMessages.CommandID);
  v19 = swift_getEnumCaseMultiPayload();
  if (v19 > 1)
  {
    if (v19 != 2)
    {
      v20 = _swiftEmptySetSingleton;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v19)
  {
LABEL_11:

    v20 = sub_1000CF018(v21);

    goto LABEL_13;
  }

  sub_100025FDC(v12, v9, &unk_1005D91B0, &unk_1004CF400);
  sub_10000E268(v9, v6, &unk_1005D91B0, &unk_1004CF400);
  v20 = sub_1000CC2E4(v6);
  sub_100025F40(v9, &unk_1005D91B0, &unk_1004CF400);
LABEL_13:
  v22 = sub_10012E098(v20, v17);

  return (v22 & 1) == 0;
}

uint64_t sub_1000EFED8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v74 = a1;
  v75 = a2;
  v70 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v70);
  v71 = &v62[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v72 = &v62[-v6];
  __chkstk_darwin(v7);
  v9 = &v62[-v8];
  __chkstk_darwin(v10);
  v12 = &v62[-v11];
  sub_1000F3D18(v2[16], v2[19]);
  if ((v13 & 1) == 0 || *(v2[22] + 16))
  {
    v14 = v75;
    sub_1000F9948(v75, v12, type metadata accessor for MailboxTaskLogger);
    sub_1000F9948(v14, v9, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v15 = sub_1004A4A54();
    v16 = sub_1004A6014();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v76[0] = swift_slowAlloc();
      *v17 = 68159235;
      *(v17 + 4) = 2;
      *(v17 + 8) = 256;
      v18 = v70;
      v19 = &v9[*(v70 + 20)];
      *(v17 + 10) = *v19;
      *(v17 + 11) = 2082;
      v20 = &v12[*(v18 + 20)];
      *(v17 + 13) = sub_10015BA6C(*(v20 + 1), *(v20 + 2), v76);
      *(v17 + 21) = 1040;
      *(v17 + 23) = 2;
      *(v17 + 27) = 512;
      LOWORD(v19) = *(v19 + 12);
      sub_1000F9A28(v9, type metadata accessor for MailboxTaskLogger);
      *(v17 + 29) = v19;
      *(v17 + 31) = 2160;
      *(v17 + 33) = 0x786F626C69616DLL;
      *(v17 + 41) = 2085;
      v21 = *(v20 + 4);
      LODWORD(v20) = *(v20 + 10);

      sub_1000F9A28(v12, type metadata accessor for MailboxTaskLogger);
      *&v77[0] = v21;
      DWORD2(v77[0]) = v20;
      v22 = sub_1004A5824();
      v24 = sub_10015BA6C(v22, v23, v76);

      *(v17 + 43) = v24;
      _os_log_impl(&_mh_execute_header, v15, v16, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Task is completing, but not done.", v17, 0x33u);
      swift_arrayDestroy();
    }

    else
    {
      sub_1000F9A28(v9, type metadata accessor for MailboxTaskLogger);

      v13 = sub_1000F9A28(v12, type metadata accessor for MailboxTaskLogger);
    }
  }

  v25 = v3[4];
  v26 = *(v3 + 10);
  __chkstk_darwin(v13);
  v27 = v3;
  v29 = v74;
  v28 = v75;
  *&v62[-16] = v3;
  *&v62[-8] = v28;
  v32 = *(v29 + 176);
  v30 = v29 + 176;
  v31 = v32;
  v33 = *(v30 - 8);
  v34 = *(v30 + 8);
  v69 = *(v30 + 16);
  v73 = v25;
  if (v69 == 1)
  {
    *&v77[0] = v33;

    sub_1000BE940(v77, v25, v26, 0, sub_1000F773C);
    sub_100020D58(v33, v31, v34, 1);
    v68 = 0;
    v67 = 0;
    v33 = *&v77[0];
    v35 = v74;
    *(v74 + 168) = *&v77[0];
    *v30 = 0;
    *(v30 + 8) = 0;
    *(v35 + 192) = 1;
  }

  else
  {
    v67 = v34;
    v68 = v31;
  }

  v36 = v26;
  if (*(v27 + 120) == 1)
  {
    v66 = v33;
    v37 = v75;
    sub_1000F9948(v75, v72, type metadata accessor for MailboxTaskLogger);
    sub_1000F9948(v37, v71, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v38 = sub_1004A4A54();
    v39 = sub_1004A6034();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v63 = v39;
      v41 = v40;
      v64 = swift_slowAlloc();
      v76[0] = v64;
      *v41 = 68159235;
      v65 = v26;
      v43 = v71;
      v42 = v72;
      *(v41 + 4) = 2;
      *(v41 + 8) = 256;
      v44 = v70;
      v45 = &v43[*(v70 + 20)];
      *(v41 + 10) = *v45;
      *(v41 + 11) = 2082;
      v46 = &v42[*(v44 + 20)];
      *(v41 + 13) = sub_10015BA6C(*(v46 + 1), *(v46 + 2), v76);
      *(v41 + 21) = 1040;
      *(v41 + 23) = 2;
      *(v41 + 27) = 512;
      v47 = *(v45 + 12);
      v48 = v43;
      v36 = v65;
      sub_1000F9A28(v48, type metadata accessor for MailboxTaskLogger);
      *(v41 + 29) = v47;
      *(v41 + 31) = 2160;
      *(v41 + 33) = 0x786F626C69616DLL;
      *(v41 + 41) = 2085;
      v49 = *(v46 + 4);
      LODWORD(v46) = *(v46 + 10);

      sub_1000F9A28(v42, type metadata accessor for MailboxTaskLogger);
      *&v77[0] = v49;
      DWORD2(v77[0]) = v46;
      v50 = sub_1004A5824();
      v52 = sub_10015BA6C(v50, v51, v76);

      *(v41 + 43) = v52;
      _os_log_impl(&_mh_execute_header, v38, v63, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence has more messages to move/copy. Will mark as needing to re-run.", v41, 0x33u);
      swift_arrayDestroy();
    }

    else
    {
      sub_1000F9A28(v71, type metadata accessor for MailboxTaskLogger);

      sub_1000F9A28(v72, type metadata accessor for MailboxTaskLogger);
    }

    v53 = v66;
    if (v69)
    {
      *&v77[0] = v66;

      sub_1000BE2F4(v77, v73, v36, 0);
      sub_100020D58(v53, v68, v67, 1);
      v54 = v74;
      *(v74 + 168) = *&v77[0];
      *v30 = 0;
      *(v30 + 8) = 0;
      *(v54 + 192) = 1;
    }
  }

  v55 = *(v30 + 40);
  v77[2] = *(v30 + 24);
  v78[0] = v55;
  *(v78 + 12) = *(v30 + 52);
  v56 = *(v30 + 8);
  v77[0] = *(v30 - 8);
  v77[1] = v56;
  sub_1000BAC28(v73, v36);
  __chkstk_darwin(v57);
  v58 = v74;
  *&v62[-32] = v75;
  *&v62[-24] = v58;
  *&v62[-16] = v59;
  sub_10009B290(sub_1000F7744, &v62[-48], v60);
}

void sub_1000F0658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v6);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v23 - v10;
  if ((*(a2 + 120) & 1) == 0)
  {
    sub_1000F9948(a3, v23 - v10, type metadata accessor for MailboxTaskLogger);
    sub_1000F9948(a3, v8, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v12 = sub_1004A4A54();
    v13 = sub_1004A6034();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v14 = 68159235;
      *(v14 + 4) = 2;
      *(v14 + 8) = 256;
      v15 = &v8[*(v6 + 20)];
      *(v14 + 10) = *v15;
      *(v14 + 11) = 2082;
      v16 = *(v6 + 20);
      v23[0] = a1;
      v17 = &v11[v16];
      *(v14 + 13) = sub_10015BA6C(*&v11[v16 + 8], *&v11[v16 + 16], &v25);
      *(v14 + 21) = 1040;
      *(v14 + 23) = 2;
      *(v14 + 27) = 512;
      v18 = *(v15 + 12);
      sub_1000F9A28(v8, type metadata accessor for MailboxTaskLogger);
      *(v14 + 29) = v18;
      *(v14 + 31) = 2160;
      *(v14 + 33) = 0x786F626C69616DLL;
      *(v14 + 41) = 2085;
      v19 = *(v17 + 4);
      LODWORD(v17) = *(v17 + 10);

      sub_1000F9A28(v11, type metadata accessor for MailboxTaskLogger);
      v23[1] = v19;
      v24 = v17;
      a1 = v23[0];
      v20 = sub_1004A5824();
      v22 = sub_10015BA6C(v20, v21, &v25);

      *(v14 + 43) = v22;
      _os_log_impl(&_mh_execute_header, v12, v13, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Marking no more messages needing move or copy.", v14, 0x33u);
      swift_arrayDestroy();
    }

    else
    {
      sub_1000F9A28(v8, type metadata accessor for MailboxTaskLogger);

      sub_1000F9A28(v11, type metadata accessor for MailboxTaskLogger);
    }

    *(a1 + *(type metadata accessor for MailboxSyncState(0) + 52) + 2) = 0;
  }
}

void sub_1000F0958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v9);
  v11 = &v32[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v32[-v13];
  v15 = *a1;
  v38 = *(a1 + 8);
  sub_1000F9948(a2, &v32[-v13], type metadata accessor for MailboxTaskLogger);
  sub_1000F9948(a2, v11, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();

  v16 = sub_1004A4A54();
  v17 = sub_1004A6034();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v36 = a4;
    v19 = v18;
    v34 = swift_slowAlloc();
    v41 = v34;
    *v19 = 68159747;
    v37 = v4;
    *(v19 + 4) = 2;
    *(v19 + 8) = 256;
    v20 = *(v9 + 20);
    v33 = v17;
    v21 = &v11[v20];
    *(v19 + 10) = v11[v20];
    *(v19 + 11) = 2082;
    v22 = *(v9 + 20);
    v35 = a3;
    v23 = &v14[v22];
    *(v19 + 13) = sub_10015BA6C(*&v14[v22 + 8], *&v14[v22 + 16], &v41);
    *(v19 + 21) = 1040;
    *(v19 + 23) = 2;
    *(v19 + 27) = 512;
    LOWORD(v21) = *(v21 + 12);
    sub_1000F9A28(v11, type metadata accessor for MailboxTaskLogger);
    *(v19 + 29) = v21;
    *(v19 + 31) = 2160;
    *(v19 + 33) = 0x786F626C69616DLL;
    *(v19 + 41) = 2085;
    v24 = *(v23 + 4);
    LODWORD(v23) = *(v23 + 10);

    sub_1000F9A28(v14, type metadata accessor for MailboxTaskLogger);
    v39 = v24;
    v40 = v23;
    v25 = sub_1004A5824();
    v27 = sub_10015BA6C(v25, v26, &v41);

    *(v19 + 43) = v27;
    *(v19 + 51) = 2160;
    *(v19 + 53) = 0x786F626C69616DLL;
    *(v19 + 61) = 2085;
    v39 = v15;
    LODWORD(v21) = v38;
    v40 = v38;

    v28 = sub_1004A5824();
    v30 = sub_10015BA6C(v28, v29, &v41);

    *(v19 + 63) = v30;
    _os_log_impl(&_mh_execute_header, v16, v33, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Marking mailbox '%{sensitive,mask.mailbox}s' as needing to run find-missing-messages.", v19, 0x47u);
    swift_arrayDestroy();

    a4 = v36;

    v31 = v21;
  }

  else
  {
    sub_1000F9A28(v11, type metadata accessor for MailboxTaskLogger);

    sub_1000F9A28(v14, type metadata accessor for MailboxTaskLogger);
    v31 = v38;
  }

  sub_1000BA414(v15, v31, 12, a4);
}

double sub_1000F0CEC()
{
  if (qword_1005CCE68 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1000F0D50@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1000F77A8(a1, a2);
  *a5 = result;
  a5[1] = v7;
  return result;
}

Swift::Int sub_1000F0DF8()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  sub_1004A4424();
  return sub_1004A6F14();
}

uint64_t sub_1000F0E5C(uint64_t a1)
{
  sub_1004A6EB4(*v1);

  return sub_1004A4424();
}

Swift::Int sub_1000F0EB0(uint64_t a1)
{
  v2 = *v1;
  sub_1004A6E94();
  sub_1004A6EB4(v2);
  sub_1004A4424();
  return sub_1004A6F14();
}

Swift::Int sub_1000F0FAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  sub_1004A6E94();
  sub_1004A6EB4(v5 | (v5 << 32));
  a3(v8, v6);
  return sub_1004A6F14();
}

uint64_t sub_1000F102C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(v4 + 16);
  sub_1004A6EB4(*(v4 + 8) | (*(v4 + 8) << 32));

  return a4(a1, v6);
}

Swift::Int sub_1000F10AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  sub_1004A6E94();
  sub_1004A6EB4(v6 | (v6 << 32));
  a4(v9, v7);
  return sub_1004A6F14();
}

uint64_t sub_1000F1128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if ((*(a1 + 8) | (*(a1 + 8) << 32)) != (*(a2 + 8) | (*(a2 + 8) << 32)))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if ((sub_1000FFC98(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return a5(v5, v6);
}

Swift::Int sub_1000F11B4()
{
  v1 = *v0;
  v2 = *(v0 + 3);
  v3 = v0[32];
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  sub_1004A4424();
  if (v3 == 1)
  {
    sub_1004A6EB4(v2 != 0);
  }

  else
  {
    sub_1004A6EB4(2uLL);
    sub_1004A6EE4(v2);
    sub_1004A6EE4(HIDWORD(v2));
  }

  return sub_1004A6F14();
}

void sub_1000F1274(uint64_t a1)
{
  v2 = *(v1 + 3);
  v3 = v1[32];
  sub_1004A6EB4(*v1);
  sub_1004A4424();
  if (v3 == 1)
  {
    sub_1004A6EB4(v2 != 0);
  }

  else
  {
    sub_1004A6EB4(2uLL);
    sub_1004A6EE4(v2);
    sub_1004A6EE4(HIDWORD(v2));
  }
}

Swift::Int sub_1000F1308(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 3);
  v4 = v1[32];
  sub_1004A6E94();
  sub_1004A6EB4(v2);
  sub_1004A4424();
  if (v4 == 1)
  {
    sub_1004A6EB4(v3 != 0);
  }

  else
  {
    sub_1004A6EB4(2uLL);
    sub_1004A6EE4(v3);
    sub_1004A6EE4(HIDWORD(v3));
  }

  return sub_1004A6F14();
}

BOOL sub_1000F13C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1000F2F14(v5, v7);
}

uint64_t sub_1000F1410(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = 0;
  v3 = result + 32;
  v4 = _swiftEmptyArrayStorage;
  while (1)
  {
    v5 = (v3 + 8 * v2);
    v7 = *v5;
    v6 = v5[1];
    if (v6 < v7)
    {
      goto LABEL_34;
    }

    v8 = v6 - v7;
    v9 = _swiftEmptyArrayStorage;
    if (v6 - v7 != -1)
    {
      break;
    }

LABEL_7:
    v10 = v9[2];
    v11 = *(v4 + 2);
    v12 = v11 + v10;
    if (__OFADD__(v11, v10))
    {
      goto LABEL_35;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v12 <= *(v4 + 3) >> 1)
    {
      if (v9[2])
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v11 <= v12)
      {
        v17 = v11 + v10;
      }

      else
      {
        v17 = v11;
      }

      result = sub_100085038(result, v17, 1, v4);
      v4 = result;
      if (v9[2])
      {
LABEL_27:
        v18 = *(v4 + 2);
        if ((*(v4 + 3) >> 1) - v18 < v10)
        {
          goto LABEL_37;
        }

        memcpy(&v4[4 * v18 + 32], v9 + 4, 4 * v10);

        if (v10)
        {
          v19 = *(v4 + 2);
          v20 = __OFADD__(v19, v10);
          v21 = v19 + v10;
          if (v20)
          {
            goto LABEL_38;
          }

          *(v4 + 2) = v21;
        }

        goto LABEL_4;
      }
    }

    if (v10)
    {
      goto LABEL_36;
    }

LABEL_4:
    if (++v2 == v1)
    {
      return v4;
    }
  }

  if (v8 < 0)
  {
    goto LABEL_40;
  }

  sub_10000C9C0(&qword_1005CF0D8, &qword_1004D1FE0);
  v9 = swift_allocObject();
  result = j__malloc_size(v9);
  v13 = result - 32;
  if (result < 32)
  {
    v13 = result - 29;
  }

  v9[2] = v6 - v7 + 1;
  v9[3] = 2 * (v13 >> 2);
  v14 = 32;
  while (2)
  {
    if (v6 == v7)
    {
      v15 = 0;
      goto LABEL_19;
    }

    v15 = v7 + 1;
    if (v7 != -1)
    {
LABEL_19:
      *(v9 + v14) = v7;
      if (!v8)
      {
        goto LABEL_7;
      }

      --v8;
      v14 += 4;
      v16 = v6 == v7;
      LODWORD(v7) = v15;
      if (v16)
      {
        goto LABEL_39;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1000F15F0(void (*a1)(__n128))
{
  v2 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v5);
  v8 = &v14 - v7;
  a1(v6);
  sub_1000F9948(v8, v4, type metadata accessor for MoveAndCopyMessages.CommandID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v12 = 0x45474E55505845;
      goto LABEL_12;
    }

    v12 = 1163284301;
    v11 = v4;
  }

  else
  {
    v10 = EnumCaseMultiPayload == 0;
    if (EnumCaseMultiPayload)
    {
      v11 = v4;
    }

    else
    {
      v11 = v8;
    }

    if (v10)
    {
      v8 = v4;
      v12 = 0x4554454C4544;
    }

    else
    {
      v12 = 1498435395;
    }
  }

  sub_1000F9A28(v11, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_12:
  sub_1000F9A28(v8, type metadata accessor for MoveAndCopyMessages.CommandID);
  return v12;
}

uint64_t sub_1000F1774()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000F17B4()
{
  result = qword_1005D0280;
  if (!qword_1005D0280)
  {
    result = swift_getWitnessTable("i3\v", &type metadata for MoveAndCopyMessages.CommandID.Kind, v0, v1);
    atomic_store(result, &qword_1005D0280);
  }

  return result;
}

uint64_t sub_1000F1808(uint64_t a1, char a2, void *a3)
{
  v32 = *(a1 + 16);
  if (!v32)
  {
  }

  v3 = 0;
  for (i = 32; ; i += 56)
  {
    if (v3 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1004A6E24();
      __break(1u);
      goto LABEL_23;
    }

    v4 = *(a1 + i + 16);
    v40 = *(a1 + i);
    v41 = v4;
    v42 = *(a1 + i + 32);
    v34 = *(a1 + i + 48);
    v43 = v34;
    v5 = v40;
    v6 = BYTE7(v40);
    v7 = *(&v40 + 5);
    v8 = *(&v40 + 1);
    v9 = *(&v40 + 1);
    v10 = v4;
    v11 = v42;
    sub_10000E268(&v40, v39, &qword_1005D0458, &qword_1004D3CD8);
    if (!v9)
    {
    }

    v12 = (v8 | ((v7 | (v6 << 16)) << 32)) >> 24;
    v13 = v5 & 1;
    LOBYTE(v40) = v5 & 1;
    DWORD1(v40) = v12;
    *(&v40 + 1) = v9;
    LODWORD(v41) = v10;
    *(&v41 + 1) = *(&v10 + 1);
    *&v42 = v11;
    v14 = *a3;
    v47 = v11;
    v46[0] = v40;
    v46[1] = v41;
    v15 = sub_100063FFC(v46);
    v17 = v14[2];
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      goto LABEL_20;
    }

    v21 = v16;
    if (v14[3] >= v20)
    {
      break;
    }

    sub_1000C6CC4(v20, a2 & 1);
    v44[0] = v40;
    v44[1] = v41;
    v45 = v42;
    v15 = sub_100063FFC(v44);
    if ((v21 & 1) != (v22 & 1))
    {
      goto LABEL_22;
    }

LABEL_10:
    if (v21)
    {
      goto LABEL_15;
    }

LABEL_11:
    v23 = *a3;
    *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    v24 = v23[6] + 40 * v15;
    *v24 = v13;
    *(v24 + 4) = v12;
    *(v24 + 8) = v9;
    *(v24 + 16) = v10;
    *(v24 + 24) = *(&v10 + 1);
    *(v24 + 32) = v11;
    v25 = v23[7] + 12 * v15;
    *v25 = *(&v11 + 1);
    *(v25 + 8) = v34 & 1;
    v26 = v23[2];
    v19 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    ++v3;
    v23[2] = v27;
    a2 = 1;
    if (v32 == v3)
    {
    }
  }

  if (a2)
  {
    goto LABEL_10;
  }

  v36 = v15;
  sub_10013BDC0();
  v15 = v36;
  if ((v21 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v28 = swift_allocError();
  swift_willThrow();

  v48 = v28;
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v29 = *(&v41 + 1);
    v30 = v42;

    sub_100014D40(v29, v30);
  }

LABEL_23:
  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_1004A6724(30);
  v49._object = 0x80000001004AA380;
  v49._countAndFlagsBits = 0xD00000000000001BLL;
  sub_1004A5994(v49);
  sub_1004A6934();
  v50._countAndFlagsBits = 39;
  v50._object = 0xE100000000000000;
  sub_1004A5994(v50);
  result = sub_1004A69A4();
  __break(1u);
  return result;
}

void *sub_1000F1BB0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

void *sub_1000F1C38(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
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

    sub_1000F2C60(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1000F1CC8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v30 = *(v4 - 8);
  v31 = v4;
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v25 - v9;
  v11 = *(a1 + 32);
  v12 = ((1 << v11) + 63) >> 6;
  if ((v11 & 0x3Fu) > 0xD)
  {
    goto LABEL_23;
  }

  while (2)
  {
    v26 = v12;
    v27 = v2;
    v25 = &v25;
    __chkstk_darwin(v8);
    v28 = &v25 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v13);
    v29 = 0;
    v14 = 0;
    v2 = a1 + 56;
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(a1 + 56);
    v18 = (v15 + 63) >> 6;
    while (v17)
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v12 = v19 | (v14 << 6);
      sub_1000F9948(*(a1 + 48) + *(v30 + 72) * v12, v10, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1000F9948(v10, v6, type metadata accessor for MoveAndCopyMessages.CommandID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          goto LABEL_6;
        }

        sub_1000F9A28(v6, type metadata accessor for MoveAndCopyMessages.CommandID);
        sub_1000F9A28(v10, type metadata accessor for MoveAndCopyMessages.CommandID);
        *&v28[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_21:
          sub_100161708(v28, v26, v29, a1);
          return;
        }
      }

      else
      {
        if (EnumCaseMultiPayload == 2)
        {
LABEL_6:
          sub_1000F9A28(v6, type metadata accessor for MoveAndCopyMessages.CommandID);
        }

        sub_1000F9A28(v10, type metadata accessor for MoveAndCopyMessages.CommandID);
      }
    }

    v20 = v14;
    while (1)
    {
      v14 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v14 >= v18)
      {
        goto LABEL_21;
      }

      v21 = *(v2 + 8 * v14);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_23:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v24 = swift_slowAlloc();
  sub_1000F1BB0(v24, v12, a1, sub_1000F29D4);
}

void sub_1000F2070(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v30 = *(v4 - 8);
  v31 = v4;
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v25 - v9;
  v11 = *(a1 + 32);
  v12 = ((1 << v11) + 63) >> 6;
  if ((v11 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (2)
  {
    v26 = v12;
    v27 = v2;
    v25 = &v25;
    __chkstk_darwin(v8);
    v28 = &v25 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v13);
    v29 = 0;
    v14 = 0;
    v2 = a1 + 56;
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(a1 + 56);
    v18 = (v15 + 63) >> 6;
    while (v17)
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_14:
      v12 = v19 | (v14 << 6);
      sub_1000F9948(*(a1 + 48) + *(v30 + 72) * v12, v10, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1000F9948(v10, v6, type metadata accessor for MoveAndCopyMessages.CommandID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if ((EnumCaseMultiPayload - 1) < 2)
      {
        sub_1000F9A28(v6, type metadata accessor for MoveAndCopyMessages.CommandID);
        goto LABEL_6;
      }

      if (EnumCaseMultiPayload == 3)
      {
LABEL_6:
        sub_1000F9A28(v10, type metadata accessor for MoveAndCopyMessages.CommandID);
      }

      else
      {
        sub_1000F9A28(v6, type metadata accessor for MoveAndCopyMessages.CommandID);
        sub_1000F9A28(v10, type metadata accessor for MoveAndCopyMessages.CommandID);
        *&v28[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_19:
          sub_100161708(v28, v26, v29, a1);
          return;
        }
      }
    }

    v20 = v14;
    while (1)
    {
      v14 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v14 >= v18)
      {
        goto LABEL_19;
      }

      v21 = *(v2 + 8 * v14);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_21:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v24 = swift_slowAlloc();
  sub_1000F1BB0(v24, v12, a1, sub_1000F274C);
}

void sub_1000F2414(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v5 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v28 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *(a3 + 32);
  v9 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v24 = v9;
    v26 = &v24;
    __chkstk_darwin(v6);
    v25 = &v24 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v25, v10);
    v27 = 0;
    v9 = 0;
    v30 = a3;
    v12 = *(a3 + 56);
    a3 += 56;
    v11 = v12;
    v13 = 1 << *(a3 - 24);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & v11;
    v16 = (v13 + 63) >> 6;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_12:
      v20 = v17 | (v9 << 6);
      sub_1000F9948(*(v30 + 48) + *(v28 + 72) * v20, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
      v21 = v29(v8);
      sub_1000F9A28(v8, type metadata accessor for MoveAndCopyMessages.CommandID);
      if (v3)
      {

        swift_willThrow();
        return;
      }

      if (v21)
      {
        *&v25[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
LABEL_17:
          sub_100161708(v25, v24, v27, v30);
          return;
        }
      }
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        goto LABEL_17;
      }

      v19 = *(a3 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_20:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v23 = swift_slowAlloc();
  sub_1000F1C38(v23, v9, a3, v29);
}

void sub_1000F274C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v22 = a1;
  v25 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v24 = *(v25 - 8);
  __chkstk_darwin(v25);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v23 = 0;
  v9 = 0;
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
LABEL_13:
    v17 = v14 | (v9 << 6);
    sub_1000F9948(*(a3 + 48) + *(v24 + 72) * v17, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1000F9948(v8, v5, type metadata accessor for MoveAndCopyMessages.CommandID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if ((EnumCaseMultiPayload - 1) < 2)
    {
      sub_1000F9A28(v5, type metadata accessor for MoveAndCopyMessages.CommandID);
      goto LABEL_5;
    }

    if (EnumCaseMultiPayload == 3)
    {
LABEL_5:
      sub_1000F9A28(v8, type metadata accessor for MoveAndCopyMessages.CommandID);
    }

    else
    {
      sub_1000F9A28(v5, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1000F9A28(v8, type metadata accessor for MoveAndCopyMessages.CommandID);
      *(v22 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_18:

        sub_100161708(v22, v21, v23, a3);
        return;
      }
    }
  }

  v15 = v9;
  while (1)
  {
    v9 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v9 >= v13)
    {
      goto LABEL_18;
    }

    v16 = *(a3 + 56 + 8 * v9);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_1000F29D4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v22 = a1;
  v25 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v24 = *(v25 - 8);
  __chkstk_darwin(v25);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v23 = 0;
  v9 = 0;
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
LABEL_14:
    v17 = v14 | (v9 << 6);
    sub_1000F9948(*(a3 + 48) + *(v24 + 72) * v17, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1000F9948(v8, v5, type metadata accessor for MoveAndCopyMessages.CommandID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        goto LABEL_5;
      }

      sub_1000F9A28(v5, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1000F9A28(v8, type metadata accessor for MoveAndCopyMessages.CommandID);
      *(v22 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_20:

        sub_100161708(v22, v21, v23, a3);
        return;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
LABEL_5:
        sub_1000F9A28(v5, type metadata accessor for MoveAndCopyMessages.CommandID);
      }

      sub_1000F9A28(v8, type metadata accessor for MoveAndCopyMessages.CommandID);
    }
  }

  v15 = v9;
  while (1)
  {
    v9 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v9 >= v13)
    {
      goto LABEL_20;
    }

    v16 = *(a3 + 56 + 8 * v9);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1000F2C60(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v29 = a4;
  v25 = a2;
  v26 = a1;
  v6 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v28 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v9 = 0;
  v30 = a3;
  v12 = *(a3 + 56);
  v11 = a3 + 56;
  v10 = v12;
  v13 = 1 << *(v11 - 24);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_11:
    v20 = v17 | (v9 << 6);
    sub_1000F9948(*(v30 + 48) + *(v28 + 72) * v20, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
    v21 = v29(v8);
    sub_1000F9A28(v8, type metadata accessor for MoveAndCopyMessages.CommandID);
    if (v4)
    {
      return;
    }

    if (v21)
    {
      *(v26 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
LABEL_16:
        v23 = v30;

        sub_100161708(v26, v25, v27, v23);
        return;
      }
    }
  }

  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_16;
    }

    v19 = *(v11 + 8 * v9);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t sub_1000F2E78()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_100139930(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000F2EDC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = *(a1 + 1);
  v3 = *(a1 + 2);
  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  *a2 = v2;
  return sub_100014CEC(v4, v3);
}

uint64_t sub_1000F2EF4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = *(a1 + 2);
  v3 = *(a1 + 3);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *a2 = v2;
  return sub_100014CEC(v4, v3);
}

BOOL sub_1000F2F14(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (sub_10003A194(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2)))
  {
    v5 = *(a1 + 3);
    v7 = *(a2 + 6);
    v6 = *(a2 + 7);
    if (a1[32])
    {
      if (v5)
      {
        if (a2[32])
        {
          return (v7 | v6) != 0;
        }
      }

      else if (a2[32])
      {
        return (v7 | v6) == 0;
      }
    }

    else if ((a2[32] & 1) == 0 && __PAIR64__(v6, v7) == v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1000F2FCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v4 - 8);
  v6 = &v36 - v5;
  v7 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  __chkstk_darwin(v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  __chkstk_darwin(v13);
  v15 = &v36 - v14;
  v16 = sub_10000C9C0(&qword_1005D02A8, &unk_1004D3A30);
  __chkstk_darwin(v16 - 8);
  v18 = &v36 - v17;
  v20 = &v36 + *(v19 + 56) - v17;
  sub_1000F9948(a1, &v36 - v17, type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_1000F9948(a2, v20, type metadata accessor for MoveAndCopyMessages.CommandID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_17;
      }

LABEL_19:
      sub_100025F40(v18, &qword_1005D02A8, &unk_1004D3A30);
LABEL_22:
      v34 = 0;
      return v34 & 1;
    }

    sub_1000F9948(v18, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
    v22 = *v9;
    v23 = *(v9 + 2);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v24 = *v20;
      v25 = *(v20 + 2);
      v26 = *(v20 + 2);
      if (*(v9 + 2) | (*(v9 + 2) << 32)) == (v25 | (v25 << 32)) && (sub_1000FFC98(v22, v24))
      {
        v27 = sub_1001151F4(v23, v26);
        goto LABEL_14;
      }

LABEL_20:

LABEL_21:
      sub_1000F9A28(v18, type metadata accessor for MoveAndCopyMessages.CommandID);
      goto LABEL_22;
    }

LABEL_18:

    goto LABEL_19;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1000F9948(v18, v15, type metadata accessor for MoveAndCopyMessages.CommandID);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_100025FDC(v20, v6, &unk_1005D91B0, &unk_1004CF400);
      sub_100016D2C();
      v34 = sub_1004A7034();
      sub_100025F40(v6, &unk_1005D91B0, &unk_1004CF400);
      sub_100025F40(v15, &unk_1005D91B0, &unk_1004CF400);
      sub_1000F9A28(v18, type metadata accessor for MoveAndCopyMessages.CommandID);
      return v34 & 1;
    }

    sub_100025F40(v15, &unk_1005D91B0, &unk_1004CF400);
    goto LABEL_19;
  }

  sub_1000F9948(v18, v12, type metadata accessor for MoveAndCopyMessages.CommandID);
  v28 = *v12;
  v29 = *(v12 + 2);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_18;
  }

  v30 = *v20;
  v31 = *(v20 + 2);
  v32 = *(v20 + 2);
  if ((*(v12 + 2) | (*(v12 + 2) << 32)) != (v31 | (v31 << 32)) || (sub_1000FFC98(v28, v30) & 1) == 0)
  {
    goto LABEL_20;
  }

  v27 = sub_100114864(v29, v32);
LABEL_14:
  v33 = v27;

  if ((v33 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  sub_1000F9A28(v18, type metadata accessor for MoveAndCopyMessages.CommandID);
  v34 = 1;
  return v34 & 1;
}

void *sub_1000F342C(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v39 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_1004A65D4();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v7)
  {
    v47 = _swiftEmptyArrayStorage;
    sub_1000921E8(0, v7 & ~(v7 >> 63), 0);
    v42 = v47;
    if (v41)
    {
      result = sub_1004A6584();
    }

    else
    {
      result = sub_1004A6554();
      v9 = *(a1 + 36);
    }

    v44 = result;
    v45 = v9;
    v46 = v41 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v36 = a1 + 56;
      v37 = v11;
      v34 = v2;
      v35 = a1 + 64;
      v38 = v7;
      while (v10 < v7)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v14 = v44;
        v15 = v45;
        v16 = v46;
        v17 = a1;
        sub_100141B98(v44, v45, v46, a1);
        v43[0] = v18;
        swift_getAtKeyPath();

        v19 = v42;
        v47 = v42;
        v20 = v6;
        v22 = v42[2];
        v21 = v42[3];
        if (v22 >= v21 >> 1)
        {
          sub_1000921E8((v21 > 1), v22 + 1, 1);
          v19 = v47;
        }

        v19[2] = v22 + 1;
        v23 = (*(v39 + 80) + 32) & ~*(v39 + 80);
        v42 = v19;
        result = sub_1000F9A88(v20, v19 + v23 + *(v39 + 72) * v22, type metadata accessor for MoveAndCopyMessages.CommandID);
        v6 = v20;
        if (v41)
        {
          if (!v16)
          {
            goto LABEL_42;
          }

          a1 = v17;
          if (sub_1004A65A4())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v38;
          sub_10000C9C0(&qword_1005D0430, &qword_1004D3C98);
          v12 = sub_1004A5D94();
          sub_1004A6624();
          result = v12(v43, 0);
          if (v10 == v7)
          {
LABEL_34:
            sub_100020944(v44, v45, v46);
            return v42;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_43;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v17;
          v24 = (1 << *(v17 + 32));
          if (v14 >= v24)
          {
            goto LABEL_38;
          }

          v25 = v14 >> 6;
          v26 = *(v36 + 8 * (v14 >> 6));
          if (((v26 >> v14) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v17 + 36) != v15)
          {
            goto LABEL_40;
          }

          v27 = v26 & (-2 << (v14 & 0x3F));
          if (v27)
          {
            v24 = (__clz(__rbit64(v27)) | v14 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v28 = v25 << 6;
            v29 = v25 + 1;
            v30 = (v35 + 8 * v25);
            while (v29 < (v24 + 63) >> 6)
            {
              v32 = *v30++;
              v31 = v32;
              v28 += 64;
              ++v29;
              if (v32)
              {
                result = sub_100020944(v14, v15, 0);
                v24 = (__clz(__rbit64(v31)) + v28);
                goto LABEL_33;
              }
            }

            result = sub_100020944(v14, v15, 0);
          }

LABEL_33:
          v33 = *(v17 + 36);
          v44 = v24;
          v45 = v33;
          v46 = 0;
          v7 = v38;
          if (v10 == v38)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

void sub_1000F3830(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = a1;
    sub_1000922A8(0, v3, 0);
    v34 = v5 + 64;
    v6 = sub_1004A6554();
    if (v6 < 0 || (v7 = v6, v6 >= 1 << *(v5 + 32)))
    {
LABEL_24:
      __break(1u);
    }

    else
    {
      v25 = v5 + 72;
      v26 = v3;
      v35 = *(v5 + 36);
      v8 = 1;
      v27 = v5;
      while (1)
      {
        v9 = v7 >> 6;
        if ((*(v34 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
        {
          break;
        }

        if (v35 != *(v5 + 36))
        {
          goto LABEL_26;
        }

        v29 = v8;
        v32 = *(*(v5 + 48) + 4 * v7);
        v10 = *(v5 + 56) + 40 * v7;
        v30 = *v10;
        v11 = *(v10 + 8);
        v12 = *(v10 + 16);
        v31 = *(v10 + 24);
        v13 = *(v10 + 32);
        sub_100014CEC(v11, v12);
        v15 = _swiftEmptyArrayStorage[2];
        v14 = _swiftEmptyArrayStorage[3];
        v33 = v15 + 1;

        if (v15 >= v14 >> 1)
        {
          sub_1000922A8((v14 > 1), v33, 1);
        }

        _swiftEmptyArrayStorage[2] = v33;
        v16 = &_swiftEmptyArrayStorage[7 * v15];
        *(v16 + 32) = v30;
        *(v16 + 35) = v37;
        *(v16 + 33) = v36;
        *(v16 + 9) = v32;
        v16[5] = a2;
        *(v16 + 12) = a3;
        v16[7] = v11;
        v16[8] = v12;
        v16[9] = v31;
        *(v16 + 80) = v13;
        v5 = v27;
        v17 = 1 << *(v27 + 32);
        if (v7 >= v17)
        {
          goto LABEL_27;
        }

        v18 = *(v34 + 8 * v9);
        if ((v18 & (1 << v7)) == 0)
        {
          goto LABEL_28;
        }

        if (v35 != *(v27 + 36))
        {
          goto LABEL_29;
        }

        v19 = v18 & (-2 << (v7 & 0x3F));
        if (v19)
        {
          v7 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = v9 << 6;
          v21 = v9 + 1;
          v22 = (v25 + 8 * v9);
          while (v21 < (v17 + 63) >> 6)
          {
            v24 = *v22++;
            v23 = v24;
            v20 += 64;
            ++v21;
            if (v24)
            {
              sub_100020944(v7, v35, 0);
              v7 = __clz(__rbit64(v23)) + v20;
              goto LABEL_19;
            }
          }

          sub_100020944(v7, v35, 0);
          v7 = v17;
        }

LABEL_19:
        if (v29 == v26)
        {
          return;
        }

        if ((v7 & 0x8000000000000000) == 0)
        {
          v8 = v29 + 1;
          if (v7 < 1 << *(v27 + 32))
          {
            continue;
          }
        }

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void *sub_1000F3B10(uint64_t a1)
{
  v2 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v15 - v7;
  v9 = sub_1001637EC(_swiftEmptyArrayStorage);
  sub_1001637EC(_swiftEmptyArrayStorage);
  result = _swiftEmptySetSingleton;
  v17 = _swiftEmptySetSingleton;
  v11 = *(a1 + 16);
  if (v11)
  {
    v15[1] = v9;
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1000F9948(v12, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1000F9948(v8, v5, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_10000C9C0(&qword_1005CEF30, &unk_1004D1E00);
      v14 = swift_allocObject();
      sub_1000F9A88(v5, v14 + *(*v14 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1000893BC(&v16, v14);
      sub_1000F9A28(v8, type metadata accessor for MoveAndCopyMessages.CommandID);

      v12 += v13;
      --v11;
    }

    while (v11);
    return v17;
  }

  return result;
}

void sub_1000F3D18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = v8;
  v21[1] = sub_1000F7764(&qword_1005CF830, "}3\v");
  KeyPath = swift_getKeyPath();

  v10 = sub_1000F342C(a1, KeyPath);

  v11 = sub_1000CE800(v10);

  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 56);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  while (v14)
  {
LABEL_9:
    sub_1000F9948(*(v11 + 48) + *(v5 + 72) * (__clz(__rbit64(v14)) | (v16 << 6)), v7, type metadata accessor for MoveAndCopyMessages.CommandID);
    if (!*(a2 + 16) || (v18 = sub_100063E04(v7), (v19 & 1) == 0))
    {
      sub_1000F9A28(v7, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_15:

      return;
    }

    v14 &= v14 - 1;
    v20 = *(*(a2 + 56) + v18);
    sub_1000F9A28(v7, type metadata accessor for MoveAndCopyMessages.CommandID);
    if ((v20 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v15)
    {

      return;
    }

    v14 = *(v11 + 56 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1000F3F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C9C0(&qword_1005D02A8, &unk_1004D3A30);
  __chkstk_darwin(v6);
  v8 = &v381 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v405 = &v381 - v10;
  __chkstk_darwin(v11);
  v13 = &v381 - v12;
  v14 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v14 - 8);
  v404 = &v381 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v387 = &v381 - v17;
  __chkstk_darwin(v18);
  v391 = &v381 - v19;
  __chkstk_darwin(v20);
  v385 = &v381 - v21;
  v435 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  __chkstk_darwin(v435);
  v382 = &v381 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v383 = &v381 - v24;
  __chkstk_darwin(v25);
  v419 = &v381 - v26;
  __chkstk_darwin(v27);
  v418 = &v381 - v28;
  __chkstk_darwin(v29);
  v417 = &v381 - v30;
  __chkstk_darwin(v31);
  v33 = &v381 - v32;
  __chkstk_darwin(v34);
  v36 = &v381 - v35;
  __chkstk_darwin(v37);
  v399 = &v381 - v38;
  __chkstk_darwin(v39);
  v398 = &v381 - v40;
  __chkstk_darwin(v41);
  v397 = &v381 - v42;
  __chkstk_darwin(v43);
  v409 = &v381 - v44;
  __chkstk_darwin(v45);
  v426 = &v381 - v46;
  __chkstk_darwin(v47);
  v386 = &v381 - v48;
  __chkstk_darwin(v49);
  v389 = &v381 - v50;
  __chkstk_darwin(v51);
  v396 = (&v381 - v52);
  __chkstk_darwin(v53);
  v403 = &v381 - v54;
  __chkstk_darwin(v55);
  v408 = &v381 - v56;
  __chkstk_darwin(v57);
  v407 = &v381 - v58;
  __chkstk_darwin(v59);
  v406 = &v381 - v60;
  __chkstk_darwin(v61);
  v428 = &v381 - v62;
  __chkstk_darwin(v63);
  v427 = &v381 - v64;
  __chkstk_darwin(v65);
  v395 = (&v381 - v66);
  __chkstk_darwin(v67);
  v402 = &v381 - v68;
  __chkstk_darwin(v69);
  v413 = &v381 - v70;
  __chkstk_darwin(v71);
  v412 = &v381 - v72;
  sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_1004D3930;
  *(v73 + 32) = a1;
  v447 = v73;
  v411 = *(*a2 + 96);

  v74 = sub_1000EAE00();
  if (v74)
  {
    v75 = v74;
    v410 = a2;
    v431 = v6;
    v432 = v36;
    v433 = _swiftEmptySetSingleton;
    v392 = _swiftEmptySetSingleton;
    v420 = v13;
    v388 = a3;
    v424 = v33;
    v425 = v8;
    while (1)
    {
      if (*(a3 + 16))
      {

        v77 = sub_100063E70(v76);
        v78 = _swiftEmptySetSingleton;
        if (v79)
        {
          v78 = *(*(a3 + 56) + 8 * v77);
        }

        v80 = v78;
        if ((v78 & 0xC000000000000001) == 0)
        {
LABEL_9:
          v83 = 0;
          v85 = -1 << *(v80 + 32);
          v81 = v80 + 56;
          v82 = ~v85;
          v86 = -v85;
          if (v86 < 64)
          {
            v87 = ~(-1 << v86);
          }

          else
          {
            v87 = -1;
          }

          v84 = v87 & *(v80 + 56);
          goto LABEL_13;
        }
      }

      else
      {
        v80 = _swiftEmptySetSingleton;
        if ((_swiftEmptySetSingleton & 0xC000000000000001) == 0)
        {
          goto LABEL_9;
        }
      }

      sub_1004A6594();
      sub_10000C9C0(&qword_1005CEF30, &unk_1004D1E00);
      sub_10000DF44(&qword_1005D0438, &qword_1005CEF30, &unk_1004D1E00, byte_1004CFB20);
      sub_1004A5DB4();
      v80 = v448;
      v81 = v449;
      v82 = v450;
      v83 = v451;
      v84 = v452;
LABEL_13:
      v393 = v82;
      v394 = v75;
      v88 = (v82 + 64) >> 6;
      v415 = v81;
      v416 = v80;
      v89 = v433;
      v414 = v88;
      while (1)
      {
        v423 = v89 & 0xC000000000000001;
        v90 = v89 < 0 ? v89 : v89 & 0xFFFFFFFFFFFFFF8;
        v433 = v89;
        v430 = v89 + 56;
        v91 = v84;
LABEL_18:
        if ((v80 & 0x8000000000000000) == 0)
        {
          break;
        }

        v96 = sub_1004A6604();
        if (!v96 || (*&v436 = v96, sub_10000C9C0(&qword_1005CEF30, &unk_1004D1E00), swift_dynamicCast(), v95 = v441, v94 = v83, v422 = v91, !v441))
        {
LABEL_296:
          v80 = v416;
          goto LABEL_297;
        }

LABEL_27:
        v421 = v94;
        v97 = *(*v95 + 96);
        swift_beginAccess();
        v429 = v95;
        v434 = v97;
        v98 = v412;
        sub_1000F9948(v95 + v97, v412, type metadata accessor for MoveAndCopyMessages.CommandID);
        v100 = v410;
        v99 = v411;
        swift_beginAccess();
        v101 = v100 + v99;
        v102 = v413;
        sub_1000F9948(v101, v413, type metadata accessor for MoveAndCopyMessages.CommandID);
        v103 = sub_1000F2FCC(v98, v102);
        sub_1000F9A28(v102, type metadata accessor for MoveAndCopyMessages.CommandID);
        sub_1000F9A28(v98, type metadata accessor for MoveAndCopyMessages.CommandID);
        if (v103)
        {

          sub_100020D08(v416);
          v379 = 1;
          goto LABEL_302;
        }

        if (!v423)
        {
          v106 = v433;
          v83 = v420;
          v104 = v429;
          if (!*(v433 + 16))
          {
            goto LABEL_100;
          }

          sub_1004A6E94();
          v107 = v402;
          sub_1000F9948(v104 + v434, v402, type metadata accessor for MoveAndCopyMessages.CommandID);
          sub_1000F9948(v107, v395, type metadata accessor for MoveAndCopyMessages.CommandID);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload > 1)
          {
            if (EnumCaseMultiPayload == 2)
            {
              v401 = v90;
              v390 = *v395;
              v110 = *(v395 + 2);
              v111 = v395[2];
              sub_1004A6EB4(3uLL);
              sub_1004A6EB4(v110 | (v110 << 32));
              v112 = v111 + 64;
              v113 = 1 << *(v111 + 32);
              if (v113 < 64)
              {
                v114 = ~(-1 << v113);
              }

              else
              {
                v114 = -1;
              }

              v115 = v114 & *(v111 + 64);
              v116 = (v113 + 63) >> 6;
              v400 = v111;

              v117 = 0;
              v118 = 0;
              if (v115)
              {
                while (1)
                {
                  v119 = v118;
LABEL_44:
                  v120 = __clz(__rbit64(v115)) | (v119 << 6);
                  v121 = *(*(v400 + 48) + 4 * v120);
                  v122 = (*(v400 + 56) + 16 * v120);
                  v123 = *v122;
                  v83 = v122[1];
                  sub_100014CEC(*v122, v83);
                  if (v83 >> 60 == 15)
                  {
                    break;
                  }

                  v115 &= v115 - 1;
                  v438 = v443;
                  v439 = v444;
                  v440 = v445;
                  v436 = v441;
                  v437 = v442;
                  sub_1004A6EE4(v121);
                  sub_1004A4424();
                  sub_100014D40(v123, v83);
                  v117 ^= sub_1004A6F14();
                  v118 = v119;
                  if (!v115)
                  {
                    goto LABEL_41;
                  }
                }
              }

              else
              {
                while (1)
                {
LABEL_41:
                  v119 = v118 + 1;
                  if (__OFADD__(v118, 1))
                  {
                    goto LABEL_307;
                  }

                  if (v119 >= v116)
                  {
                    break;
                  }

                  v115 = *(v112 + 8 * v119);
                  ++v118;
                  if (v115)
                  {
                    goto LABEL_44;
                  }
                }
              }

              sub_1004A6EB4(v117);

              v83 = v420;
              goto LABEL_61;
            }

            sub_1004A6EB4(1uLL);
          }

          else
          {
            if (!EnumCaseMultiPayload)
            {
              v109 = v385;
              sub_100025FDC(v395, v385, &unk_1005D91B0, &unk_1004CF400);
              sub_1004A6EB4(0);
              sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
              sub_1000956A0();
              sub_1004A5564();
              sub_100025F40(v109, &unk_1005D91B0, &unk_1004CF400);
              v104 = v429;
              goto LABEL_62;
            }

            v401 = v90;
            v384 = *v395;
            v124 = *(v395 + 2);
            v125 = v395[2];
            sub_1004A6EB4(2uLL);
            sub_1004A6EB4(v124 | (v124 << 32));
            v126 = v125 + 64;
            v127 = 1 << *(v125 + 32);
            if (v127 < 64)
            {
              v128 = ~(-1 << v127);
            }

            else
            {
              v128 = -1;
            }

            v129 = v128 & *(v125 + 64);
            v130 = (v127 + 63) >> 6;
            v390 = v125;

            v131 = 0;
            v132 = 0;
            if (v129)
            {
              while (1)
              {
                v400 = v131;
                v133 = v132;
LABEL_56:
                v134 = __clz(__rbit64(v129));
                v129 &= v129 - 1;
                v135 = v134 | (v133 << 6);
                v136 = *(*(v390 + 48) + 4 * v135);
                v137 = (*(v390 + 56) + 24 * v135);
                v138 = *v137;
                v140 = *(v137 + 1);
                v139 = *(v137 + 2);
                sub_100014CEC(v140, v139);
                v438 = v443;
                v439 = v444;
                v440 = v445;
                v436 = v441;
                v437 = v442;
                sub_1004A6EE4(v136);
                sub_1004A6EB4(v138);
                sub_100014CEC(v140, v139);
                sub_1004A4424();
                sub_100014D40(v140, v139);
                sub_100014D40(v140, v139);
                v131 = sub_1004A6F14() ^ v400;
                v83 = v420;
                if (!v129)
                {
                  goto LABEL_52;
                }
              }
            }

            while (1)
            {
LABEL_52:
              v133 = v132 + 1;
              if (__OFADD__(v132, 1))
              {
                goto LABEL_305;
              }

              if (v133 >= v130)
              {
                break;
              }

              v129 = *(v126 + 8 * v133);
              ++v132;
              if (v129)
              {
                v400 = v131;
                v132 = v133;
                goto LABEL_56;
              }
            }

            sub_1004A6EB4(v131);

LABEL_61:
            v104 = v429;
            v106 = v433;
            v90 = v401;
          }

LABEL_62:
          sub_1000F9A28(v402, type metadata accessor for MoveAndCopyMessages.CommandID);
          v141 = sub_1004A6F14();
          v142 = -1 << *(v106 + 32);
          v143 = v141 & ~v142;
          if (((*(v430 + ((v143 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v143) & 1) == 0)
          {
            goto LABEL_100;
          }

          v144 = ~v142;
          while (2)
          {
            v145 = *(*(v106 + 48) + 8 * v143);
            v146 = *(*v145 + 96);
            swift_beginAccess();
            v147 = v427;
            sub_1000F9948(v145 + v146, v427, type metadata accessor for MoveAndCopyMessages.CommandID);
            v148 = v104 + v434;
            v149 = v428;
            sub_1000F9948(v148, v428, type metadata accessor for MoveAndCopyMessages.CommandID);
            v150 = v83 + *(v431 + 48);
            sub_1000F9948(v147, v83, type metadata accessor for MoveAndCopyMessages.CommandID);
            sub_1000F9948(v149, v150, type metadata accessor for MoveAndCopyMessages.CommandID);
            v151 = swift_getEnumCaseMultiPayload();
            if (v151 > 1)
            {
              if (v151 != 2)
              {
                sub_1000F9A28(v428, type metadata accessor for MoveAndCopyMessages.CommandID);
                sub_1000F9A28(v427, type metadata accessor for MoveAndCopyMessages.CommandID);
                v173 = swift_getEnumCaseMultiPayload();
                v104 = v429;
                if (v173 == 3)
                {
LABEL_175:
                  sub_1000F9A28(v83, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_30:

                  v83 = v421;
                  v91 = v422;
                  v81 = v415;
                  v80 = v416;
                  v88 = v414;
                  goto LABEL_18;
                }

                goto LABEL_92;
              }

              v154 = v408;
              sub_1000F9948(v83, v408, type metadata accessor for MoveAndCopyMessages.CommandID);
              v155 = *v154;
              v156 = *(v154 + 16);
              if (swift_getEnumCaseMultiPayload() != 2)
              {
                goto LABEL_91;
              }

              v157 = *v150;
              v158 = *(v150 + 8);
              v159 = *(v150 + 16);
              if ((*(v154 + 8) | (*(v154 + 8) << 32)) != (v158 | (v158 << 32)))
              {
                goto LABEL_93;
              }

              v160 = *(v155 + 16);
              v104 = v429;
              if (v160 != *(v157 + 16))
              {
                goto LABEL_96;
              }

              if (!v160 || v155 == v157)
              {
LABEL_77:

                v163 = sub_1001151F4(v156, v159);
                goto LABEL_87;
              }

              v161 = (v155 + 32);
              v162 = (v157 + 32);
              while (*v161 == *v162)
              {
                ++v161;
                ++v162;
                if (!--v160)
                {
                  goto LABEL_77;
                }
              }

LABEL_96:
              sub_1000F9A28(v428, type metadata accessor for MoveAndCopyMessages.CommandID);
              sub_1000F9A28(v427, type metadata accessor for MoveAndCopyMessages.CommandID);

              v83 = v420;
LABEL_97:
              sub_1000F9A28(v83, type metadata accessor for MoveAndCopyMessages.CommandID);
            }

            else
            {
              if (!v151)
              {
                v152 = v406;
                sub_1000F9948(v83, v406, type metadata accessor for MoveAndCopyMessages.CommandID);
                v153 = swift_getEnumCaseMultiPayload();
                v104 = v429;
                if (v153)
                {
                  sub_1000F9A28(v428, type metadata accessor for MoveAndCopyMessages.CommandID);
                  sub_1000F9A28(v427, type metadata accessor for MoveAndCopyMessages.CommandID);
                  sub_100025F40(v152, &unk_1005D91B0, &unk_1004CF400);
                  goto LABEL_92;
                }

                v174 = v150;
                v175 = v152;
                v176 = v391;
                sub_100025FDC(v174, v391, &unk_1005D91B0, &unk_1004CF400);
                sub_100016D2C();
                v177 = sub_1004A7034();
                sub_100025F40(v176, &unk_1005D91B0, &unk_1004CF400);
                sub_1000F9A28(v428, type metadata accessor for MoveAndCopyMessages.CommandID);
                sub_1000F9A28(v427, type metadata accessor for MoveAndCopyMessages.CommandID);
                v104 = v429;
                sub_100025F40(v175, &unk_1005D91B0, &unk_1004CF400);
                sub_1000F9A28(v83, type metadata accessor for MoveAndCopyMessages.CommandID);
                v106 = v433;
                if (v177)
                {
                  goto LABEL_30;
                }

LABEL_99:
                v143 = (v143 + 1) & v144;
                if (((*(v430 + ((v143 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v143) & 1) == 0)
                {
                  goto LABEL_100;
                }

                continue;
              }

              v164 = v407;
              sub_1000F9948(v83, v407, type metadata accessor for MoveAndCopyMessages.CommandID);
              v165 = *v164;
              v166 = *(v164 + 16);
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                v167 = *v150;
                v168 = *(v150 + 8);
                v169 = *(v150 + 16);
                if ((*(v164 + 8) | (*(v164 + 8) << 32)) == (v168 | (v168 << 32)))
                {
                  v170 = *(v165 + 16);
                  v104 = v429;
                  if (v170 != *(v167 + 16))
                  {
                    goto LABEL_96;
                  }

                  if (v170 && v165 != v167)
                  {
                    v171 = (v165 + 32);
                    v172 = (v167 + 32);
                    while (*v171 == *v172)
                    {
                      ++v171;
                      ++v172;
                      if (!--v170)
                      {
                        goto LABEL_86;
                      }
                    }

                    goto LABEL_96;
                  }

LABEL_86:

                  v163 = sub_100114864(v166, v169);
LABEL_87:
                  LODWORD(v400) = v163;

                  sub_1000F9A28(v428, type metadata accessor for MoveAndCopyMessages.CommandID);
                  sub_1000F9A28(v427, type metadata accessor for MoveAndCopyMessages.CommandID);

                  v83 = v420;
                  if (v400)
                  {
                    goto LABEL_175;
                  }

                  goto LABEL_97;
                }

LABEL_93:
                sub_1000F9A28(v428, type metadata accessor for MoveAndCopyMessages.CommandID);
                sub_1000F9A28(v427, type metadata accessor for MoveAndCopyMessages.CommandID);

                v83 = v420;
                v104 = v429;
                goto LABEL_97;
              }

LABEL_91:

              sub_1000F9A28(v428, type metadata accessor for MoveAndCopyMessages.CommandID);
              sub_1000F9A28(v427, type metadata accessor for MoveAndCopyMessages.CommandID);
              v104 = v429;
LABEL_92:
              sub_100025F40(v83, &qword_1005D02A8, &unk_1004D3A30);
            }

            break;
          }

          v106 = v433;
          goto LABEL_99;
        }

        v104 = v429;

        v105 = sub_1004A6614();

        if (v105)
        {
          goto LABEL_30;
        }

LABEL_100:

        sub_1004A5BF4();
        if (*((v447 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v447 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1004A5C44();
        }

        sub_1004A5C84();
        if (v423)
        {

          v178 = sub_1004A65E4();

          v88 = v414;
          if (v178)
          {

            *&v436 = v178;
            sub_10000C9C0(&qword_1005CEF30, &unk_1004D1E00);
            swift_dynamicCast();

            v83 = v421;
            v91 = v422;
            v81 = v415;
            v80 = v416;
            goto LABEL_18;
          }

          v332 = sub_1004A65D4();
          if (__OFADD__(v332, 1))
          {
            goto LABEL_314;
          }

          sub_100089C5C(v90, v332 + 1);
          v83 = v333;
          v446 = v333;
          v334 = *(v333 + 16);
          if (*(v333 + 24) <= v334)
          {
            sub_10008B4AC(v334 + 1);
            v83 = v446;
          }

          sub_1004A6E94();
          v335 = v383;
          sub_1000F9948(v104 + v434, v383, type metadata accessor for MoveAndCopyMessages.CommandID);
          sub_1000F9948(v335, v382, type metadata accessor for MoveAndCopyMessages.CommandID);
          v336 = swift_getEnumCaseMultiPayload();
          v392 = v83;
          if (v336 > 1)
          {
            if (v336 == 2)
            {
              v430 = *v382;
              v338 = *(v382 + 8);
              v339 = *(v382 + 16);
              sub_1004A6EB4(3uLL);
              sub_1004A6EB4(v338 | (v338 << 32));
              v340 = v339 + 64;
              v341 = 1 << *(v339 + 32);
              if (v341 < 64)
              {
                v342 = ~(-1 << v341);
              }

              else
              {
                v342 = -1;
              }

              v343 = v342 & *(v339 + 64);
              v344 = (v341 + 63) >> 6;

              v434 = v339;

              v345 = 0;
              v346 = 0;
              if (v343)
              {
                while (1)
                {
                  v347 = v346;
LABEL_267:
                  v348 = __clz(__rbit64(v343)) | (v347 << 6);
                  v349 = *(*(v434 + 48) + 4 * v348);
                  v350 = (*(v434 + 56) + 16 * v348);
                  v351 = *v350;
                  v83 = v350[1];
                  sub_100014CEC(*v350, v83);
                  if (v83 >> 60 == 15)
                  {
                    break;
                  }

                  v343 &= v343 - 1;
                  v438 = v443;
                  v439 = v444;
                  v440 = v445;
                  v436 = v441;
                  v437 = v442;
                  sub_1004A6EE4(v349);
                  sub_1004A4424();
                  sub_100014D40(v351, v83);
                  v345 ^= sub_1004A6F14();
                  v346 = v347;
                  if (!v343)
                  {
                    goto LABEL_264;
                  }
                }
              }

              else
              {
                while (1)
                {
LABEL_264:
                  v347 = v346 + 1;
                  if (__OFADD__(v346, 1))
                  {
                    goto LABEL_312;
                  }

                  if (v347 >= v344)
                  {
                    break;
                  }

                  v343 = *(v340 + 8 * v347);
                  ++v346;
                  if (v343)
                  {
                    goto LABEL_267;
                  }
                }
              }

              sub_1004A6EB4(v345);

              v88 = v414;
              v104 = v429;
              v83 = v392;
            }

            else
            {
              sub_1004A6EB4(1uLL);
            }
          }

          else
          {
            if (v336)
            {
              v423 = *v382;
              v352 = *(v382 + 8);
              v353 = *(v382 + 16);
              sub_1004A6EB4(2uLL);
              sub_1004A6EB4(v352 | (v352 << 32));
              v354 = v353 + 64;
              v355 = 1 << *(v353 + 32);
              if (v355 < 64)
              {
                v356 = ~(-1 << v355);
              }

              else
              {
                v356 = -1;
              }

              v357 = v356 & *(v353 + 64);
              v358 = (v355 + 63) >> 6;

              v430 = v353;

              v359 = 0;
              for (i = 0; v357; v83 = v392)
              {
                v361 = i;
LABEL_279:
                v362 = __clz(__rbit64(v357));
                v357 &= v357 - 1;
                v363 = v362 | (v361 << 6);
                v364 = *(*(v430 + 48) + 4 * v363);
                v365 = (*(v430 + 56) + 24 * v363);
                v434 = *v365;
                v367 = *(v365 + 1);
                v366 = *(v365 + 2);
                sub_100014CEC(v367, v366);
                v438 = v443;
                v439 = v444;
                v440 = v445;
                v436 = v441;
                v437 = v442;
                sub_1004A6EE4(v364);
                sub_1004A6EB4(v434);
                sub_100014CEC(v367, v366);
                sub_1004A4424();
                sub_100014D40(v367, v366);
                sub_100014D40(v367, v366);
                v359 ^= sub_1004A6F14();
              }

              while (1)
              {
                v361 = i + 1;
                if (__OFADD__(i, 1))
                {
                  goto LABEL_311;
                }

                if (v361 >= v358)
                {

                  sub_1004A6EB4(v359);

                  v88 = v414;
                  v104 = v429;
                  goto LABEL_284;
                }

                v357 = *(v354 + 8 * v361);
                ++i;
                if (v357)
                {
                  i = v361;
                  goto LABEL_279;
                }
              }
            }

            v337 = v385;
            sub_100025FDC(v382, v385, &unk_1005D91B0, &unk_1004CF400);
            sub_1004A6EB4(0);

            sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
            sub_1000956A0();
            sub_1004A5564();
            v104 = v429;
            sub_100025F40(v337, &unk_1005D91B0, &unk_1004CF400);
            v88 = v414;
          }

LABEL_284:
          sub_1000F9A28(v383, type metadata accessor for MoveAndCopyMessages.CommandID);
          v368 = sub_1004A6F14();
          v369 = v83 + 56;
          v370 = -1 << *(v83 + 32);
          v371 = v368 & ~v370;
          v372 = v371 >> 6;
          if (((-1 << v371) & ~*(v83 + 56 + 8 * (v371 >> 6))) == 0)
          {
            v374 = 0;
            v375 = (63 - v370) >> 6;
            v83 = v421;
            while (++v372 != v375 || (v374 & 1) == 0)
            {
              v376 = v372 == v375;
              if (v372 == v375)
              {
                v372 = 0;
              }

              v374 |= v376;
              v377 = *(v369 + 8 * v372);
              if (v377 != -1)
              {
                v373 = __clz(__rbit64(~v377)) + (v372 << 6);
                goto LABEL_294;
              }
            }

            goto LABEL_313;
          }

          v373 = __clz(__rbit64((-1 << v371) & ~*(v83 + 56 + 8 * (v371 >> 6)))) | v371 & 0x7FFFFFFFFFFFFFC0;
          v83 = v421;
LABEL_294:
          *(v369 + ((v373 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v373;
          v378 = v392;
          *(v392[6] + 8 * v373) = v104;
          ++v378[2];

          v89 = v378;
          v81 = v415;
          v80 = v416;
          v84 = v422;
        }

        else
        {
          sub_1004A6E94();
          v179 = v403;
          sub_1000F9948(v104 + v434, v403, type metadata accessor for MoveAndCopyMessages.CommandID);
          sub_1000F9948(v179, v396, type metadata accessor for MoveAndCopyMessages.CommandID);
          v180 = swift_getEnumCaseMultiPayload();
          v401 = v90;
          if (v180 <= 1)
          {
            if (v180)
            {
              v384 = *v396;
              v196 = *(v396 + 2);
              v197 = v396[2];
              sub_1004A6EB4(2uLL);
              sub_1004A6EB4(v196 | (v196 << 32));
              v198 = v197 + 64;
              v199 = 1 << *(v197 + 32);
              if (v199 < 64)
              {
                v200 = ~(-1 << v199);
              }

              else
              {
                v200 = -1;
              }

              v201 = v200 & *(v197 + 64);
              v202 = (v199 + 63) >> 6;
              v390 = v197;

              v203 = 0;
              v204 = 0;
              if (v201)
              {
                while (1)
                {
                  v400 = v203;
                  v205 = v204;
LABEL_129:
                  v206 = __clz(__rbit64(v201));
                  v201 &= v201 - 1;
                  v207 = v206 | (v205 << 6);
                  v208 = *(*(v390 + 48) + 4 * v207);
                  v209 = (*(v390 + 56) + 24 * v207);
                  v210 = *v209;
                  v83 = *(v209 + 1);
                  v211 = *(v209 + 2);
                  sub_100014CEC(v83, v211);
                  v438 = v443;
                  v439 = v444;
                  v440 = v445;
                  v436 = v441;
                  v437 = v442;
                  sub_1004A6EE4(v208);
                  sub_1004A6EB4(v210);
                  sub_100014CEC(v83, v211);
                  sub_1004A4424();
                  sub_100014D40(v83, v211);
                  sub_100014D40(v83, v211);
                  v203 = sub_1004A6F14() ^ v400;
                  if (!v201)
                  {
                    goto LABEL_125;
                  }
                }
              }

              while (1)
              {
LABEL_125:
                v205 = v204 + 1;
                if (__OFADD__(v204, 1))
                {
                  goto LABEL_304;
                }

                if (v205 >= v202)
                {
                  break;
                }

                v201 = *(v198 + 8 * v205);
                ++v204;
                if (v201)
                {
                  v400 = v203;
                  v204 = v205;
                  goto LABEL_129;
                }
              }

              sub_1004A6EB4(v203);

              goto LABEL_134;
            }

            v181 = v385;
            sub_100025FDC(v396, v385, &unk_1005D91B0, &unk_1004CF400);
            sub_1004A6EB4(0);
            sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
            sub_1000956A0();
            sub_1004A5564();
            sub_100025F40(v181, &unk_1005D91B0, &unk_1004CF400);
LABEL_135:
            v212 = v424;
            v83 = v425;
            v104 = v429;
            goto LABEL_136;
          }

          if (v180 == 2)
          {
            v390 = *v396;
            v182 = *(v396 + 2);
            v183 = v396[2];
            sub_1004A6EB4(3uLL);
            sub_1004A6EB4(v182 | (v182 << 32));
            v184 = v183 + 64;
            v185 = 1 << *(v183 + 32);
            if (v185 < 64)
            {
              v186 = ~(-1 << v185);
            }

            else
            {
              v186 = -1;
            }

            v187 = v186 & *(v183 + 64);
            v188 = (v185 + 63) >> 6;
            v400 = v183;

            v189 = 0;
            v190 = 0;
            if (v187)
            {
              while (1)
              {
                v191 = v190;
LABEL_117:
                v192 = __clz(__rbit64(v187)) | (v191 << 6);
                v193 = *(*(v400 + 48) + 4 * v192);
                v194 = (*(v400 + 56) + 16 * v192);
                v195 = *v194;
                v83 = v194[1];
                sub_100014CEC(*v194, v83);
                if (v83 >> 60 == 15)
                {
                  break;
                }

                v187 &= v187 - 1;
                v438 = v443;
                v439 = v444;
                v440 = v445;
                v436 = v441;
                v437 = v442;
                sub_1004A6EE4(v193);
                sub_1004A4424();
                sub_100014D40(v195, v83);
                v189 ^= sub_1004A6F14();
                v190 = v191;
                if (!v187)
                {
                  goto LABEL_114;
                }
              }
            }

            else
            {
              while (1)
              {
LABEL_114:
                v191 = v190 + 1;
                if (__OFADD__(v190, 1))
                {
                  goto LABEL_306;
                }

                if (v191 >= v188)
                {
                  break;
                }

                v187 = *(v184 + 8 * v191);
                ++v190;
                if (v187)
                {
                  goto LABEL_117;
                }
              }
            }

            sub_1004A6EB4(v189);

LABEL_134:

            goto LABEL_135;
          }

          sub_1004A6EB4(1uLL);
          v212 = v424;
          v83 = v425;
LABEL_136:
          sub_1000F9A28(v403, type metadata accessor for MoveAndCopyMessages.CommandID);
          v213 = sub_1004A6F14();
          v214 = ~(-1 << *(v433 + 32));
          v215 = v213 & v214;
          while (2)
          {
            if ((*(v430 + ((v215 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v215))
            {
              v216 = *(*(v433 + 48) + 8 * v215);
              v217 = *(*v216 + 96);
              swift_beginAccess();
              v218 = v432;
              sub_1000F9948(v216 + v217, v432, type metadata accessor for MoveAndCopyMessages.CommandID);
              sub_1000F9948(v104 + v434, v212, type metadata accessor for MoveAndCopyMessages.CommandID);
              v219 = v83 + *(v431 + 48);
              sub_1000F9948(v218, v83, type metadata accessor for MoveAndCopyMessages.CommandID);
              sub_1000F9948(v212, v219, type metadata accessor for MoveAndCopyMessages.CommandID);
              v220 = swift_getEnumCaseMultiPayload();
              if (v220 > 1)
              {
                if (v220 != 2)
                {
                  sub_1000F9A28(v212, type metadata accessor for MoveAndCopyMessages.CommandID);
                  sub_1000F9A28(v432, type metadata accessor for MoveAndCopyMessages.CommandID);
                  if (swift_getEnumCaseMultiPayload() == 3)
                  {
                    goto LABEL_173;
                  }

                  goto LABEL_138;
                }

                v222 = v83;
                v223 = v419;
                sub_1000F9948(v222, v419, type metadata accessor for MoveAndCopyMessages.CommandID);
                v224 = *v223;
                v225 = *(v223 + 16);
                if (swift_getEnumCaseMultiPayload() != 2)
                {

                  v212 = v424;
                  sub_1000F9A28(v424, type metadata accessor for MoveAndCopyMessages.CommandID);
                  sub_1000F9A28(v432, type metadata accessor for MoveAndCopyMessages.CommandID);
                  v83 = v425;
                  goto LABEL_138;
                }

                v226 = *(v223 + 8);
                v227 = *v219;
                v228 = *(v219 + 8);
                v229 = *(v219 + 16);
                if ((v226 | (v226 << 32)) == (v228 | (v228 << 32)))
                {
                  v230 = *(v224 + 16);
                  if (v230 == *(v227 + 16))
                  {
                    if (!v230 || v224 == v227)
                    {
LABEL_154:

                      LODWORD(v400) = sub_1001151F4(v225, v229);

                      v233 = v424;
                      sub_1000F9A28(v424, type metadata accessor for MoveAndCopyMessages.CommandID);
                      sub_1000F9A28(v432, type metadata accessor for MoveAndCopyMessages.CommandID);

                      v212 = v233;

                      v83 = v425;
                      if (v400)
                      {
                        goto LABEL_173;
                      }

                      goto LABEL_170;
                    }

                    v231 = (v224 + 32);
                    v232 = (v227 + 32);
                    while (*v231 == *v232)
                    {
                      ++v231;
                      ++v232;
                      if (!--v230)
                      {
                        goto LABEL_154;
                      }
                    }
                  }
                }

                v246 = v424;
                sub_1000F9A28(v424, type metadata accessor for MoveAndCopyMessages.CommandID);
                sub_1000F9A28(v432, type metadata accessor for MoveAndCopyMessages.CommandID);

                v212 = v246;

                v83 = v425;
LABEL_170:
                sub_1000F9A28(v83, type metadata accessor for MoveAndCopyMessages.CommandID);
                goto LABEL_139;
              }

              if (!v220)
              {
                v221 = v417;
                sub_1000F9948(v83, v417, type metadata accessor for MoveAndCopyMessages.CommandID);
                if (swift_getEnumCaseMultiPayload())
                {
                  sub_1000F9A28(v212, type metadata accessor for MoveAndCopyMessages.CommandID);
                  sub_1000F9A28(v432, type metadata accessor for MoveAndCopyMessages.CommandID);
                  sub_100025F40(v221, &unk_1005D91B0, &unk_1004CF400);
LABEL_138:
                  sub_100025F40(v83, &qword_1005D02A8, &unk_1004D3A30);
                  goto LABEL_139;
                }

                v247 = v219;
                v248 = v221;
                v249 = v404;
                sub_100025FDC(v247, v404, &unk_1005D91B0, &unk_1004CF400);
                sub_100016D2C();
                v250 = sub_1004A7034();
                sub_100025F40(v249, &unk_1005D91B0, &unk_1004CF400);
                sub_1000F9A28(v212, type metadata accessor for MoveAndCopyMessages.CommandID);
                sub_1000F9A28(v432, type metadata accessor for MoveAndCopyMessages.CommandID);
                v104 = v429;
                sub_100025F40(v248, &unk_1005D91B0, &unk_1004CF400);
                sub_1000F9A28(v83, type metadata accessor for MoveAndCopyMessages.CommandID);
                if (v250)
                {
                  goto LABEL_174;
                }

LABEL_139:
                v215 = (v215 + 1) & v214;
                continue;
              }

              v234 = v83;
              v235 = v418;
              sub_1000F9948(v234, v418, type metadata accessor for MoveAndCopyMessages.CommandID);
              v236 = *v235;
              v237 = *(v235 + 16);
              if (swift_getEnumCaseMultiPayload() != 1)
              {

                v212 = v424;
                sub_1000F9A28(v424, type metadata accessor for MoveAndCopyMessages.CommandID);
                sub_1000F9A28(v432, type metadata accessor for MoveAndCopyMessages.CommandID);
                v83 = v425;
                v104 = v429;
                goto LABEL_138;
              }

              v238 = *(v235 + 8);
              v239 = *v219;
              v240 = *(v219 + 8);
              v241 = *(v219 + 16);
              if ((v238 | (v238 << 32)) != (v240 | (v240 << 32)) || (v242 = *(v236 + 16), v242 != *(v239 + 16)))
              {
LABEL_169:
                v212 = v424;
                sub_1000F9A28(v424, type metadata accessor for MoveAndCopyMessages.CommandID);
                sub_1000F9A28(v432, type metadata accessor for MoveAndCopyMessages.CommandID);

                v83 = v425;
                v104 = v429;
                goto LABEL_170;
              }

              if (v242 && v236 != v239)
              {
                v243 = (v236 + 32);
                v244 = (v239 + 32);
                while (*v243 == *v244)
                {
                  ++v243;
                  ++v244;
                  if (!--v242)
                  {
                    goto LABEL_164;
                  }
                }

                goto LABEL_169;
              }

LABEL_164:

              v245 = sub_100114864(v237, v241);

              v212 = v424;
              sub_1000F9A28(v424, type metadata accessor for MoveAndCopyMessages.CommandID);
              sub_1000F9A28(v432, type metadata accessor for MoveAndCopyMessages.CommandID);

              v83 = v425;
              v104 = v429;
              if ((v245 & 1) == 0)
              {
                goto LABEL_170;
              }

LABEL_173:
              sub_1000F9A28(v83, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_174:

              v83 = v421;
              v91 = v422;
              v81 = v415;
              v80 = v416;
              v88 = v414;
              v90 = v401;
              goto LABEL_18;
            }

            break;
          }

          v251 = v392;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v446 = v251;
          v253 = v251[2];
          v254 = v251[3];

          if (v254 <= v253)
          {
            v83 = v405;
            v255 = v409;
            v256 = v253 + 1;
            if (isUniquelyReferenced_nonNull_native)
            {
              sub_10008B4AC(v256);
            }

            else
            {
              sub_1000905EC(v256);
            }

            v257 = v446;
            sub_1004A6E94();
            v258 = v389;
            sub_1000F9948(v104 + v434, v389, type metadata accessor for MoveAndCopyMessages.CommandID);
            sub_1000F9948(v258, v386, type metadata accessor for MoveAndCopyMessages.CommandID);
            v259 = swift_getEnumCaseMultiPayload();
            if (v259 > 1)
            {
              if (v259 == 2)
              {
                v423 = v257;
                v430 = *v386;
                v261 = *(v386 + 8);
                v262 = *(v386 + 16);
                sub_1004A6EB4(3uLL);
                sub_1004A6EB4(v261 | (v261 << 32));
                v263 = v262 + 64;
                v264 = 1 << *(v262 + 32);
                if (v264 < 64)
                {
                  v265 = ~(-1 << v264);
                }

                else
                {
                  v265 = -1;
                }

                v266 = v265 & *(v262 + 64);
                v267 = (v264 + 63) >> 6;
                v433 = v262;

                v268 = 0;
                v269 = 0;
                if (v266)
                {
                  while (1)
                  {
                    v270 = v269;
LABEL_194:
                    v271 = __clz(__rbit64(v266)) | (v270 << 6);
                    v83 = *(*(v433 + 48) + 4 * v271);
                    v272 = (*(v433 + 56) + 16 * v271);
                    v273 = *v272;
                    v274 = v272[1];
                    sub_100014CEC(*v272, v274);
                    if (v274 >> 60 == 15)
                    {
                      break;
                    }

                    v266 &= v266 - 1;
                    v438 = v443;
                    v439 = v444;
                    v440 = v445;
                    v436 = v441;
                    v437 = v442;
                    sub_1004A6EE4(v83);
                    sub_1004A4424();
                    sub_100014D40(v273, v274);
                    v268 ^= sub_1004A6F14();
                    v269 = v270;
                    if (!v266)
                    {
                      goto LABEL_191;
                    }
                  }
                }

                else
                {
                  while (1)
                  {
LABEL_191:
                    v270 = v269 + 1;
                    if (__OFADD__(v269, 1))
                    {
                      goto LABEL_309;
                    }

                    if (v270 >= v267)
                    {
                      break;
                    }

                    v266 = *(v263 + 8 * v270);
                    ++v269;
                    if (v266)
                    {
                      goto LABEL_194;
                    }
                  }
                }

                sub_1004A6EB4(v268);

                v83 = v405;
                goto LABEL_211;
              }

              sub_1004A6EB4(1uLL);
            }

            else
            {
              if (!v259)
              {
                v260 = v385;
                sub_100025FDC(v386, v385, &unk_1005D91B0, &unk_1004CF400);
                sub_1004A6EB4(0);
                sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
                sub_1000956A0();
                sub_1004A5564();
                sub_100025F40(v260, &unk_1005D91B0, &unk_1004CF400);
                v104 = v429;
                goto LABEL_212;
              }

              v423 = v257;
              v401 = *v386;
              v275 = *(v386 + 8);
              v276 = *(v386 + 16);
              sub_1004A6EB4(2uLL);
              sub_1004A6EB4(v275 | (v275 << 32));
              v277 = v276 + 64;
              v278 = 1 << *(v276 + 32);
              if (v278 < 64)
              {
                v279 = ~(-1 << v278);
              }

              else
              {
                v279 = -1;
              }

              v280 = v279 & *(v276 + 64);
              v281 = (v278 + 63) >> 6;
              v430 = v276;

              v282 = 0;
              v283 = 0;
              if (v280)
              {
                while (1)
                {
                  v433 = v282;
                  v284 = v283;
LABEL_206:
                  v285 = __clz(__rbit64(v280));
                  v280 &= v280 - 1;
                  v286 = v285 | (v284 << 6);
                  v287 = *(*(v430 + 48) + 4 * v286);
                  v288 = (*(v430 + 56) + 24 * v286);
                  v289 = *v288;
                  v291 = *(v288 + 1);
                  v290 = *(v288 + 2);
                  sub_100014CEC(v291, v290);
                  v438 = v443;
                  v439 = v444;
                  v440 = v445;
                  v436 = v441;
                  v437 = v442;
                  sub_1004A6EE4(v287);
                  sub_1004A6EB4(v289);
                  sub_100014CEC(v291, v290);
                  sub_1004A4424();
                  sub_100014D40(v291, v290);
                  sub_100014D40(v291, v290);
                  v282 = sub_1004A6F14() ^ v433;
                  v83 = v405;
                  if (!v280)
                  {
                    goto LABEL_202;
                  }
                }
              }

              while (1)
              {
LABEL_202:
                v284 = v283 + 1;
                if (__OFADD__(v283, 1))
                {
                  goto LABEL_308;
                }

                if (v284 >= v281)
                {
                  break;
                }

                v280 = *(v277 + 8 * v284);
                ++v283;
                if (v280)
                {
                  v433 = v282;
                  v283 = v284;
                  goto LABEL_206;
                }
              }

              sub_1004A6EB4(v282);

LABEL_211:
              v255 = v409;
              v104 = v429;
              v257 = v423;
            }

LABEL_212:
            sub_1000F9A28(v389, type metadata accessor for MoveAndCopyMessages.CommandID);
            v292 = sub_1004A6F14();
            v293 = -1 << *(v257 + 32);
            v215 = v292 & ~v293;
            v433 = v257 + 56;
            if (((*(v257 + 56 + ((v215 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v215) & 1) == 0)
            {
              goto LABEL_250;
            }

            v430 = ~v293;
            v423 = sub_10000C9C0(&qword_1005CEF30, &unk_1004D1E00);
            while (2)
            {
              v294 = *(*(v257 + 48) + 8 * v215);
              v295 = *(*v294 + 96);
              swift_beginAccess();
              v296 = v294 + v295;
              v297 = v426;
              sub_1000F9948(v296, v426, type metadata accessor for MoveAndCopyMessages.CommandID);
              sub_1000F9948(v104 + v434, v255, type metadata accessor for MoveAndCopyMessages.CommandID);
              v298 = v83 + *(v431 + 48);
              sub_1000F9948(v297, v83, type metadata accessor for MoveAndCopyMessages.CommandID);
              sub_1000F9948(v255, v298, type metadata accessor for MoveAndCopyMessages.CommandID);
              v299 = swift_getEnumCaseMultiPayload();
              if (v299 <= 1)
              {
                if (!v299)
                {
                  v300 = v397;
                  sub_1000F9948(v83, v397, type metadata accessor for MoveAndCopyMessages.CommandID);
                  if (swift_getEnumCaseMultiPayload())
                  {
                    sub_1000F9A28(v255, type metadata accessor for MoveAndCopyMessages.CommandID);
                    sub_1000F9A28(v426, type metadata accessor for MoveAndCopyMessages.CommandID);
                    sub_100025F40(v300, &unk_1005D91B0, &unk_1004CF400);
                    goto LABEL_215;
                  }

                  v323 = v300;
                  v324 = v387;
                  sub_100025FDC(v298, v387, &unk_1005D91B0, &unk_1004CF400);
                  sub_100016D2C();
                  v325 = sub_1004A7034();
                  sub_100025F40(v324, &unk_1005D91B0, &unk_1004CF400);
                  sub_1000F9A28(v255, type metadata accessor for MoveAndCopyMessages.CommandID);
                  sub_1000F9A28(v426, type metadata accessor for MoveAndCopyMessages.CommandID);
                  v326 = v323;
                  v104 = v429;
                  sub_100025F40(v326, &unk_1005D91B0, &unk_1004CF400);
                  if (v325)
                  {
                    goto LABEL_315;
                  }

LABEL_249:
                  sub_1000F9A28(v83, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_216:
                  v215 = (v215 + 1) & v430;
                  if (((*(v433 + ((v215 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v215) & 1) == 0)
                  {
                    goto LABEL_250;
                  }

                  continue;
                }

                v311 = v398;
                sub_1000F9948(v83, v398, type metadata accessor for MoveAndCopyMessages.CommandID);
                v312 = *v311;
                v313 = *(v311 + 16);
                if (swift_getEnumCaseMultiPayload() == 1)
                {
                  v314 = *v298;
                  v315 = *(v298 + 8);
                  v316 = *(v298 + 16);
                  if ((*(v311 + 8) | (*(v311 + 8) << 32)) == (v315 | (v315 << 32)))
                  {
                    v317 = *(v312 + 16);
                    if (v317 != *(v314 + 16))
                    {
                      goto LABEL_242;
                    }

                    if (v317 && v312 != v314)
                    {
                      v318 = (v312 + 32);
                      v319 = (v314 + 32);
                      while (*v318 == *v319)
                      {
                        ++v318;
                        ++v319;
                        if (!--v317)
                        {
                          goto LABEL_239;
                        }
                      }

                      goto LABEL_242;
                    }

LABEL_239:

                    v310 = sub_100114864(v313, v316);
LABEL_240:
                    v320 = v310;

                    v321 = v409;
                    sub_1000F9A28(v409, type metadata accessor for MoveAndCopyMessages.CommandID);
                    sub_1000F9A28(v426, type metadata accessor for MoveAndCopyMessages.CommandID);

                    v255 = v321;
                    v104 = v429;

                    v83 = v405;
                    if (v320)
                    {
                      goto LABEL_315;
                    }

                    goto LABEL_249;
                  }

                  v327 = v409;
                  sub_1000F9A28(v409, type metadata accessor for MoveAndCopyMessages.CommandID);
                  sub_1000F9A28(v426, type metadata accessor for MoveAndCopyMessages.CommandID);

                  v255 = v327;
                  goto LABEL_248;
                }

                goto LABEL_243;
              }

              break;
            }

            if (v299 == 2)
            {
              v301 = v399;
              sub_1000F9948(v83, v399, type metadata accessor for MoveAndCopyMessages.CommandID);
              v302 = *v301;
              v303 = *(v301 + 16);
              if (swift_getEnumCaseMultiPayload() == 2)
              {
                v304 = *v298;
                v305 = *(v298 + 8);
                v306 = *(v298 + 16);
                if ((*(v301 + 8) | (*(v301 + 8) << 32)) != (v305 | (v305 << 32)))
                {
                  goto LABEL_242;
                }

                v307 = *(v302 + 16);
                if (v307 != *(v304 + 16))
                {
                  goto LABEL_242;
                }

                if (!v307 || v302 == v304)
                {
LABEL_230:

                  v310 = sub_1001151F4(v303, v306);
                  goto LABEL_240;
                }

                v308 = (v302 + 32);
                v309 = (v304 + 32);
                while (*v308 == *v309)
                {
                  ++v308;
                  ++v309;
                  if (!--v307)
                  {
                    goto LABEL_230;
                  }
                }

LABEL_242:
                v322 = v409;
                sub_1000F9A28(v409, type metadata accessor for MoveAndCopyMessages.CommandID);
                sub_1000F9A28(v426, type metadata accessor for MoveAndCopyMessages.CommandID);

                v255 = v322;
                v104 = v429;
LABEL_248:

                v83 = v405;
                goto LABEL_249;
              }

LABEL_243:

              v255 = v409;
              sub_1000F9A28(v409, type metadata accessor for MoveAndCopyMessages.CommandID);
              sub_1000F9A28(v426, type metadata accessor for MoveAndCopyMessages.CommandID);
            }

            else
            {
              sub_1000F9A28(v255, type metadata accessor for MoveAndCopyMessages.CommandID);
              sub_1000F9A28(v426, type metadata accessor for MoveAndCopyMessages.CommandID);
              if (swift_getEnumCaseMultiPayload() == 3)
              {
                goto LABEL_315;
              }
            }

LABEL_215:
            sub_100025F40(v83, &qword_1005D02A8, &unk_1004D3A30);
            goto LABEL_216;
          }

          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10008EFFC();
          }

LABEL_250:
          v328 = v446;
          *(v446 + ((v215 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v215;
          *(v328[6] + 8 * v215) = v104;
          v329 = v328[2];
          v330 = __OFADD__(v329, 1);
          v331 = v329 + 1;
          if (v330)
          {
            goto LABEL_310;
          }

          v328[2] = v331;

          v392 = v328;
          v89 = v328;
          v81 = v415;
          v80 = v416;
          v88 = v414;
          v83 = v421;
          v84 = v422;
        }
      }

      v92 = v83;
      v93 = v91;
      v94 = v83;
      if (v91)
      {
LABEL_23:
        v422 = (v93 - 1) & v93;
        v95 = *(*(v80 + 48) + ((v94 << 9) | (8 * __clz(__rbit64(v93)))));

        if (!v95)
        {
          goto LABEL_296;
        }

        goto LABEL_27;
      }

      while (1)
      {
        v94 = v92 + 1;
        if (__OFADD__(v92, 1))
        {
          __break(1u);
LABEL_304:
          __break(1u);
LABEL_305:
          __break(1u);
LABEL_306:
          __break(1u);
LABEL_307:
          __break(1u);
          __break(1u);
          __break(1u);
LABEL_308:
          __break(1u);
          __break(1u);
          __break(1u);
LABEL_309:
          __break(1u);
          __break(1u);
          __break(1u);
LABEL_310:
          __break(1u);
LABEL_311:
          __break(1u);
LABEL_312:
          __break(1u);
LABEL_313:
          __break(1u);
LABEL_314:
          __break(1u);
LABEL_315:
          sub_1000F9A28(v83, type metadata accessor for MoveAndCopyMessages.CommandID);
          result = sub_1004A6E14();
          __break(1u);
          return result;
        }

        if (v94 >= v88)
        {
          break;
        }

        v93 = *(v81 + 8 * v94);
        ++v92;
        if (v93)
        {
          goto LABEL_23;
        }
      }

LABEL_297:
      sub_100020D08(v80);

      v75 = sub_1000EAE00();
      a3 = v388;
      if (!v75)
      {
        goto LABEL_301;
      }
    }
  }

  v433 = _swiftEmptySetSingleton;
LABEL_301:

  v379 = 0;
LABEL_302:

  return v379;
}