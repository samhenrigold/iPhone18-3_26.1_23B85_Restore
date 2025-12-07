uint64_t *sub_100429A90(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_10041F4F0(a1, a2, a3, a4, a5, a6, a7, sub_10042B7FC);
  if (!v7)
  {
    sub_10046C184(result, v9, v10 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 1554);
    v11 = sub_1004A5814();

    return v11;
  }

  return result;
}

uint64_t sub_100429B44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  sub_10000C9C0(&qword_1005DC848, &qword_100504B98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004D13E0;
  *(inited + 32) = sub_100429E44;
  *(inited + 40) = 0;
  *(inited + 48) = sub_100429F4C;
  *(inited + 56) = 0;
  *(inited + 64) = sub_10042A048;
  *(inited + 72) = 0;
  *(inited + 80) = sub_10042A144;
  *(inited + 88) = 0;
  *(inited + 96) = sub_10042A244;
  *(inited + 104) = 0;
  v15 = swift_allocObject();
  v25 = a6;
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_10042EB24;
  *(v16 + 24) = v15;
  *(inited + 112) = sub_10042EB44;
  *(inited + 120) = v16;

  sub_1003FB45C(inited, a1, a2, a3, 0xD000000000000020, 0x80000001004B03C0, 1558);
  v18 = v17;
  v20 = v19;
  swift_setDeallocating();
  sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
  result = swift_arrayDestroy();
  if (!v27)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {

      sub_1003A5228();
      swift_allocError();
      *v22 = a3;
      return swift_willThrow();
    }

    else
    {

      sub_100469DF8(a1);

      result = sub_10041FC00(a1, a2, a3, a4, a5, v25, a7);
      *a8 = v18;
      a8[1] = v20;
      a8[2] = result;
      a8[3] = v23;
    }
  }

  return result;
}

double sub_100429E44@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  if (qword_1005DBB88 != -1)
  {
    swift_once();
  }

  v9 = static Media.TopLevelType.application;
  v8 = unk_1005DE9D0;
  sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
  if (!v3)
  {
    sub_10046B71C(0x544143494C505041uLL, 0xEB000000004E4F49, 0, 0, a1, v6, v7);
    sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
    *a3 = v9;
    a3[1] = v8;
  }

  return result;
}

double sub_100429F4C@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  if (qword_1005DBB90 != -1)
  {
    swift_once();
  }

  v9 = static Media.TopLevelType.audio;
  v8 = unk_1005DE9E0;
  sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
  if (!v3)
  {
    sub_10046B71C(0x4F49445541uLL, 0xE500000000000000, 0, 0, a1, v6, v7);
    sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
    *a3 = v9;
    a3[1] = v8;
  }

  return result;
}

double sub_10042A048@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  if (qword_1005DBB98 != -1)
  {
    swift_once();
  }

  v9 = static Media.TopLevelType.image;
  v8 = unk_1005DE9F0;
  sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
  if (!v3)
  {
    sub_10046B71C(0x4547414D49uLL, 0xE500000000000000, 0, 0, a1, v6, v7);
    sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
    *a3 = v9;
    a3[1] = v8;
  }

  return result;
}

double sub_10042A144@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  if (qword_1005DBBA0 != -1)
  {
    swift_once();
  }

  v9 = static Media.TopLevelType.message;
  v8 = unk_1005DEA00;
  sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
  if (!v3)
  {
    sub_10046B71C(0x4547415353454DuLL, 0xE700000000000000, 0, 0, a1, v6, v7);
    sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
    *a3 = v9;
    a3[1] = v8;
  }

  return result;
}

double sub_10042A244@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  if (qword_1005DBBA8 != -1)
  {
    swift_once();
  }

  v9 = static Media.TopLevelType.video;
  v8 = unk_1005DEA10;
  sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
  if (!v3)
  {
    sub_10046B71C(0x4F45444956uLL, 0xE500000000000000, 0, 0, a1, v6, v7);
    sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
    *a3 = v9;
    a3[1] = v8;
  }

  return result;
}

uint64_t sub_10042A340@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = sub_10046B71C(0x415441444154454DuLL, 0xE900000000000020, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v36 = a8;
    v18 = sub_10041ED48(a1, a2, a3, a4, a5, a6, a7);
    v20 = v19;
    v30 = v21;
    v33 = HIDWORD(v21);
    swift_beginAccess();
    v22 = v33 - v30;
    if (v33 == v30)
    {
      v23 = _swiftEmptyArrayStorage;
    }

    else
    {
      v31 = ((v20 >> 24) & 0xFFFF00 | BYTE6(v20)) + v30;
      v34 = v18[3];
      __n = v22;
      v24 = sub_10015BEAC(v22, 0);
      memcpy(v24 + 32, (v34 + v31), __n);
      v23 = v24;
    }

    v35 = _s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(v23);
    v32 = v25;

    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {

      sub_1003A5228();
      swift_allocError();
      *v26 = a3;
      return swift_willThrow();
    }

    else
    {

      sub_100469DF8(a1);

      result = sub_10040155C(a1, a2, a3, a4, a5, a6, a7);
      *v36 = result;
      *(v36 + 8) = v27;
      *(v36 + 16) = v28;
      *(v36 + 24) = v35;
      *(v36 + 32) = v32;
    }
  }

  return result;
}

uint64_t sub_10042A5BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = sub_10046B71C(0x415441444154454DuLL, 0xE900000000000020, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v34 = a8;
    v18 = sub_10041ED48(a1, a2, a3, a4, a5, a6, a7);
    v20 = v19;
    v28 = v21;
    v31 = HIDWORD(v21);
    swift_beginAccess();
    v22 = v31 - v28;
    if (v31 == v28)
    {
      v23 = _swiftEmptyArrayStorage;
    }

    else
    {
      v29 = ((v20 >> 24) & 0xFFFF00 | BYTE6(v20)) + v28;
      v32 = v18[3];
      __n = v22;
      v24 = sub_10015BEAC(v22, 0);
      memcpy(v24 + 32, (v32 + v29), __n);
      v23 = v24;
    }

    v33 = _s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(v23);
    v30 = v25;

    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {

      sub_1003A5228();
      swift_allocError();
      *v26 = a3;
      return swift_willThrow();
    }

    else
    {

      sub_100469DF8(a1);

      result = sub_100401CE4(a1, a2, a3, a4, a5, a6, a7);
      *v34 = result;
      *(v34 + 8) = v33;
      *(v34 + 16) = v30 | 0x8000000000000000;
      *(v34 + 24) = 0;
      *(v34 + 32) = 0;
    }
  }

  return result;
}

uint64_t *sub_10042A840(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v7 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
      return swift_willThrow();
    }

    v9 = result;
    v10 = *result;
    v11 = result[1];
    v12 = *(result + 4);
    v15 = *(result + 22);
    v16 = *(result + 10);

    sub_10042966C(v9, v7, a3, a6, 0x7B7EuLL, &v17, 0xE200000000000000, 1488);
    if (v6)
    {

      *v9 = v10;
      *(v9 + 8) = v11;
      *(v9 + 16) = v12;
      *(v9 + 20) = v16;
      *(v9 + 22) = v15;
      return swift_willThrow();
    }

    return v17;
  }

  return result;
}

uint64_t *sub_10042A98C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v11 = result;
    v12 = *result;
    v13 = result[1];
    v14 = *(result + 4);
    v23 = *(result + 22);
    v24 = *(result + 10);

    sub_10042AC78(v11, v9, a3, a4, a5, a6, a7, v25);
    if (v8)
    {

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v24;
      *(v11 + 22) = v23;
      return swift_willThrow();
    }

    v20 = v25[1];
    *a8 = v25[0];
    a8[1] = v20;
    v21 = v25[3];
    a8[2] = v25[2];
    a8[3] = v21;
  }

  return result;
}

void sub_10042AAC8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v3)
  {
    v7 = *(a1 + 2);
    if (*(a1 + 3) == v7)
    {
      sub_1003A5324();
      swift_allocError();
LABEL_11:
      swift_willThrow();
      return;
    }

    v8 = *(a1 + 22);
    v9 = *(a1 + 10);
    v10 = *a1;
    swift_beginAccess();
    v11 = v7 + 1;
    if (v7 == -1)
    {
      __break(1u);
      return;
    }

    v12 = *(*(v10 + 24) + (v8 | (v9 << 8)) + v7);
    *(a1 + 2) = v11;
    v13 = v12 == 10 || v12 == 13;
    if (v13 || (v12 & 0x80) != 0 || !v12 || v12 == 34 || v12 == 92)
    {
      sub_1003A527C();
      swift_allocError();
      *v14 = 0xD000000000000011;
      v14[1] = 0x80000001004B0D60;
      v14[2] = 0xD000000000000020;
      v14[3] = 0x80000001004B03C0;
      v14[4] = 1761;
      goto LABEL_11;
    }

    sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    sub_1004A58E4();
  }
}

uint64_t sub_10042AC78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  result = sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v8)
  {
    result = sub_10041F4F0(a1, a2, a3, a4, a5, a6, a7, sub_10042B7FC);
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      v32 = result;
      if (a2 + 1 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v20 = a3;
        swift_willThrow();
      }

      else
      {
        v29 = v18;
        v30 = v19;
        sub_100469DF8(a1);

        sub_10042AAC8(a1, a2 + 1, a3);
        v31 = v21;
        v28 = v22;

        v38 = 0;
        v39 = _swiftEmptyArrayStorage;
        v40 = _swiftEmptyArrayStorage;

        sub_100469200(a1, a2 + 1, a3, &v38, a4, a5, a6, a7);

        v23 = v38;
        v24 = v39;
        v25 = v40;
        sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
        *&v34 = v32;
        *(&v34 + 1) = v29;
        LODWORD(v35) = v30;
        WORD2(v35) = WORD2(v30);
        BYTE6(v35) = BYTE6(v30);
        *(&v35 + 1) = v28;
        *&v36 = v31;
        *(&v36 + 1) = v23;
        *&v37 = v24;
        *(&v37 + 1) = v25;
        v38 = v32;
        v39 = v29;
        LODWORD(v40) = v30;
        WORD2(v40) = WORD2(v30);
        BYTE6(v40) = BYTE6(v30);
        v41 = v28;
        v42 = v31;
        v43 = v23;
        v44 = v24;
        v45 = v25;
        sub_1003A3310(&v34, v33);
        result = sub_1002EED64(&v38);
        v26 = v35;
        *a8 = v34;
        a8[1] = v26;
        v27 = v37;
        a8[2] = v36;
        a8[3] = v27;
      }
    }
  }

  return result;
}

uint64_t sub_10042B1A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v18 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    *v8 = v18;
    *(v8 + 8) = v17;
    *(v8 + 16) = v14;
    *(v8 + 20) = v13;
    *(v8 + 22) = i;
  }

  else
  {
    v9 = a3;
    if (v18 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v24 = v9;
      return swift_willThrow();
    }

    v11 = a2;
    v8 = a1;
    v59 = a8;
    v19 = *a1;
    v20 = *(a1 + 8);
    v21 = *(a1 + 16);
    v22 = *(a1 + 20);
    v23 = *(a1 + 22);
    sub_100469DF8(a1);
    if (v10)
    {
      *v8 = v19;
      *(v8 + 8) = v20;
      *(v8 + 16) = v21;
      *(v8 + 20) = v22;
      *(v8 + 22) = v23;
      return swift_willThrow();
    }

    v26 = sub_10041F4F0(v8, v11, v9, a4, a5, a6, a7, sub_10042B7FC);
    v56 = v27;
    v57 = v28;
    v58 = v26;
    sub_100469DF8(v8);
    sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, v8, v11, v9);
    sub_10000C9C0(&qword_1005DC870, &unk_10050A030);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1004CEAA0;
    *(v15 + 32) = sub_10041F4F0(v8, v11, v9, a4, a5, a6, a7, sub_10042B7FC);
    *(v15 + 40) = v29;
    *(v15 + 44) = v30;
    *(v15 + 48) = v31;
    *(v15 + 52) = v32;
    *(v15 + 54) = v33;
    v34 = *v8;
    v16 = *(v8 + 8);
    v35 = *(v8 + 20);
    v53 = *(v8 + 16);
    v54 = *(v8 + 22);

    v55 = v18 + 1;
    if (v18 + 1 >= v9)
    {
      sub_1003A5228();
      swift_allocError();
      *v48 = v9;
      goto LABEL_17;
    }

    v50 = v15;
    v51 = v34;
    v52 = v35;
    v36 = v18 + 2;
    v18 = *v8;
    v17 = *(v8 + 8);
    v14 = *(v8 + 16);
    v13 = *(v8 + 20);
    for (i = *(v8 + 22); v36 < v9; i = *(v8 + 22))
    {
      swift_retain_n();
      sub_100469DF8(v8);

      v37 = sub_10041F4F0(v8, v55, v9, a4, a5, a6, a7, sub_10042B7FC);
      v39 = v38;
      v40 = v37;
      v42 = v41;

      v44 = *(v15 + 16);
      v43 = *(v15 + 24);
      v45 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        v47 = sub_100461254((v43 > 1), v44 + 1, 1, v15);
        v45 = v44 + 1;
        v15 = v47;
      }

      *(v15 + 16) = v45;
      v46 = v15 + 24 * v44;
      *(v46 + 32) = v40;
      *(v46 + 40) = v42;
      *(v46 + 48) = v39;
      *(v46 + 52) = WORD2(v39);
      *(v46 + 54) = BYTE6(v39);
      v18 = *v8;
      v17 = *(v8 + 8);
      v14 = *(v8 + 16);
      v13 = *(v8 + 20);
    }

    sub_1003A5228();
    swift_allocError();
    *v49 = v9;

    v15 = v50;
  }

  swift_willThrow();

  *v8 = v18;
  *(v8 + 8) = v17;
  *(v8 + 16) = v14;
  *(v8 + 20) = v13;
  *(v8 + 22) = i;
  v35 = v52;
  v34 = v51;
LABEL_17:
  swift_willThrow();
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if (swift_dynamicCast())
  {

    result = sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, v8, v11, v9);
    *v59 = v58;
    *(v59 + 8) = v56;
    *(v59 + 16) = v57;
    *(v59 + 20) = WORD2(v57);
    *(v59 + 22) = BYTE6(v57);
    *(v59 + 24) = v15;
  }

  else
  {

    *v8 = v34;
    *(v8 + 8) = v16;
    *(v8 + 16) = v53;
    *(v8 + 20) = v35;
    *(v8 + 22) = v54;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_10042B720(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10046B71C(0x2EuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v3)
  {
    result = sub_10046C278(a1, a2, a3, 1);
    if (result < 0)
    {
      sub_1003A527C();
      swift_allocError();
      *v8 = 0xD000000000000011;
      v8[1] = 0x80000001004B08A0;
      v8[2] = 0xD000000000000020;
      v8[3] = 0x80000001004B03C0;
      v8[4] = 202;
      return swift_willThrow();
    }
  }

  return result;
}

void sub_10042B7FC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_10046B71C(0x22uLL, 0xE100000000000000, 1, 0, a1, a2, a3);
  if (v4)
  {
    return;
  }

  v55 = 0;
  sub_10046BE40(a1, a2, a3, &v55, &v55 + 1);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_10046B71C(0x22uLL, 0xE100000000000000, 1, 0, a1, a2, a3);
  if ((v55 & 0x100) == 0)
  {
    *a4 = v10;
    *(a4 + 8) = v12;
    *(a4 + 16) = v14;
    *(a4 + 20) = WORD2(v14);
    *(a4 + 22) = BYTE6(v14);
    return;
  }

  v48 = v12;
  v49 = HIDWORD(v12);
  v15 = qword_1005DB9D0;

  if (v15 != -1)
  {
LABEL_48:
    swift_once();
  }

  v47 = a4;
  v16 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v17 = HIDWORD(qword_1005DE390);
  v18 = dword_1005DE398;
  v19 = word_1005DE39C;
  v20 = byte_1005DE39E;
  v50 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v51 = qword_1005DE390;
  v52 = dword_1005DE398;
  v53 = word_1005DE39C;
  v54 = byte_1005DE39E;

  swift_beginAccess();
  if (v48 == v49)
  {
LABEL_5:

    *v47 = v16;
    *(v47 + 8) = v51;
    *(v47 + 12) = v17;
    *(v47 + 16) = v18;
    *(v47 + 20) = v19;
    *(v47 + 22) = v20;
    return;
  }

  v46 = v14;
  v21 = BYTE6(v14) | (WORD2(v14) << 8);
  LODWORD(v14) = v48;
  while (1)
  {
    a4 = v10;
    v24 = *(v10 + 24);
    v10 = v21;
    v25 = v24 + v21;
    sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
    v26 = swift_allocObject();
    v27 = j__malloc_size(v26);
    *(v26 + 16) = 1;
    *(v26 + 24) = 2 * v27 - 64;
    v28 = *(v25 + v14);
    *(v26 + 32) = v28;
    v29 = __CFADD__(v14, 1);
    v14 = (v14 + 1);
    if (v29)
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (v28 == 92)
    {
      break;
    }

    v37 = v17 + 1;
    if (v17 == -1)
    {
      goto LABEL_43;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v37 >= v18)
      {
        v38 = v37 - v18;
      }

      else
      {
        v38 = 0;
      }

      v39 = variable initialization expression of Engine.isProcessingUpdates();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v38, v39 & 1);
    }

    ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v17);
    v16 = v50;
    v18 = v52;
    v19 = v53;
    v20 = v54;
    swift_beginAccess();
    v40 = v54 | (v53 << 8);
    v41 = v52 - v40;
    if (v52 - v40 >= v17)
    {
      v41 = v17;
    }

    if (!v17)
    {
      v41 = 0;
    }

    *(*(v50 + 24) + v40 + v41) = v28;
    v17 = HIDWORD(v51) + 1;
    if (HIDWORD(v51) == -1)
    {
      goto LABEL_44;
    }

LABEL_14:
    v21 = v10;
    HIDWORD(v51) = v17;
    v10 = a4;
    if (v14 == v49)
    {
      goto LABEL_5;
    }
  }

  if (v14 == v49)
  {
    goto LABEL_39;
  }

  v30 = *(a4 + 24) + v10;
  v31 = swift_allocObject();
  v32 = j__malloc_size(v31);
  *(v31 + 16) = 1;
  *(v31 + 24) = 2 * v32 - 64;
  v33 = *(v30 + v14);
  *(v31 + 32) = v33;
  v29 = __CFADD__(v14, 1);
  v14 = (v14 + 1);
  if (v29)
  {
    goto LABEL_45;
  }

  if (v33 == 92 || v33 == 34)
  {
    v34 = v17 + 1;
    if (v17 == -1)
    {
      goto LABEL_46;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v34 >= v18)
      {
        v35 = v34 - v18;
      }

      else
      {
        v35 = 0;
      }

      v36 = variable initialization expression of Engine.isProcessingUpdates();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v35, v36 & 1);
    }

    ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v17);
    v16 = v50;
    v18 = v52;
    v19 = v53;
    v20 = v54;
    swift_beginAccess();
    v22 = v54 | (v53 << 8);
    v23 = v52 - v22;
    if (v52 - v22 >= v17)
    {
      v23 = v17;
    }

    if (!v17)
    {
      v23 = 0;
    }

    *(*(v50 + 24) + v22 + v23) = v33;
    v17 = HIDWORD(v51) + 1;
    if (HIDWORD(v51) == -1)
    {
      goto LABEL_47;
    }

    goto LABEL_14;
  }

LABEL_39:
  sub_1004A6724(36);

  if (v49 < v48)
  {
    __break(1u);
  }

  else if (v49 <= (v46 - v10))
  {
    swift_beginAccess();

    v42 = sub_1004A58D4();
    v44 = v43;

    v56._countAndFlagsBits = v42;
    v56._object = v44;
    sub_1004A5994(v56);

    v57._countAndFlagsBits = 39;
    v57._object = 0xE100000000000000;
    sub_1004A5994(v57);
    sub_1003A527C();
    swift_allocError();
    *v45 = 0xD000000000000021;
    v45[1] = 0x80000001004B0B90;
    v45[2] = 0xD000000000000020;
    v45[3] = 0x80000001004B03C0;
    v45[4] = 2065;
    swift_willThrow();

    return;
  }

  __break(1u);
}

void sub_10042BD48(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1004712FC(34, 0xE100000000000000, a1, a2, a3);
  if (v4)
  {
    return;
  }

  v55 = 0;
  sub_10046CC90(a1, a2, a3, &v55, &v55 + 1);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_1004712FC(34, 0xE100000000000000, a1, a2, a3);
  if ((v55 & 0x100) == 0)
  {
    *a4 = v10;
    *(a4 + 8) = v12;
    *(a4 + 16) = v14;
    *(a4 + 20) = WORD2(v14);
    *(a4 + 22) = BYTE6(v14);
    return;
  }

  v48 = v12;
  v49 = HIDWORD(v12);
  v15 = qword_1005DB9D0;

  if (v15 != -1)
  {
LABEL_48:
    swift_once();
  }

  v47 = a4;
  v16 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v17 = HIDWORD(qword_1005DE390);
  v18 = dword_1005DE398;
  v19 = word_1005DE39C;
  v20 = byte_1005DE39E;
  v50 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v51 = qword_1005DE390;
  v52 = dword_1005DE398;
  v53 = word_1005DE39C;
  v54 = byte_1005DE39E;

  swift_beginAccess();
  if (v48 == v49)
  {
LABEL_5:

    *v47 = v16;
    *(v47 + 8) = v51;
    *(v47 + 12) = v17;
    *(v47 + 16) = v18;
    *(v47 + 20) = v19;
    *(v47 + 22) = v20;
    return;
  }

  v46 = v14;
  v21 = BYTE6(v14) | (WORD2(v14) << 8);
  LODWORD(v14) = v48;
  while (1)
  {
    a4 = v10;
    v24 = *(v10 + 24);
    v10 = v21;
    v25 = v24 + v21;
    sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
    v26 = swift_allocObject();
    v27 = j__malloc_size(v26);
    *(v26 + 16) = 1;
    *(v26 + 24) = 2 * v27 - 64;
    v28 = *(v25 + v14);
    *(v26 + 32) = v28;
    v29 = __CFADD__(v14, 1);
    v14 = (v14 + 1);
    if (v29)
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (v28 == 92)
    {
      break;
    }

    v37 = v17 + 1;
    if (v17 == -1)
    {
      goto LABEL_43;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v37 >= v18)
      {
        v38 = v37 - v18;
      }

      else
      {
        v38 = 0;
      }

      v39 = variable initialization expression of Engine.isProcessingUpdates();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v38, v39 & 1);
    }

    ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v17);
    v16 = v50;
    v18 = v52;
    v19 = v53;
    v20 = v54;
    swift_beginAccess();
    v40 = v54 | (v53 << 8);
    v41 = v52 - v40;
    if (v52 - v40 >= v17)
    {
      v41 = v17;
    }

    if (!v17)
    {
      v41 = 0;
    }

    *(*(v50 + 24) + v40 + v41) = v28;
    v17 = HIDWORD(v51) + 1;
    if (HIDWORD(v51) == -1)
    {
      goto LABEL_44;
    }

LABEL_14:
    v21 = v10;
    HIDWORD(v51) = v17;
    v10 = a4;
    if (v14 == v49)
    {
      goto LABEL_5;
    }
  }

  if (v14 == v49)
  {
    goto LABEL_39;
  }

  v30 = *(a4 + 24) + v10;
  v31 = swift_allocObject();
  v32 = j__malloc_size(v31);
  *(v31 + 16) = 1;
  *(v31 + 24) = 2 * v32 - 64;
  v33 = *(v30 + v14);
  *(v31 + 32) = v33;
  v29 = __CFADD__(v14, 1);
  v14 = (v14 + 1);
  if (v29)
  {
    goto LABEL_45;
  }

  if (v33 == 92 || v33 == 34)
  {
    v34 = v17 + 1;
    if (v17 == -1)
    {
      goto LABEL_46;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v34 >= v18)
      {
        v35 = v34 - v18;
      }

      else
      {
        v35 = 0;
      }

      v36 = variable initialization expression of Engine.isProcessingUpdates();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v35, v36 & 1);
    }

    ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v17);
    v16 = v50;
    v18 = v52;
    v19 = v53;
    v20 = v54;
    swift_beginAccess();
    v22 = v54 | (v53 << 8);
    v23 = v52 - v22;
    if (v52 - v22 >= v17)
    {
      v23 = v17;
    }

    if (!v17)
    {
      v23 = 0;
    }

    *(*(v50 + 24) + v22 + v23) = v33;
    v17 = HIDWORD(v51) + 1;
    if (HIDWORD(v51) == -1)
    {
      goto LABEL_47;
    }

    goto LABEL_14;
  }

LABEL_39:
  sub_1004A6724(36);

  if (v49 < v48)
  {
    __break(1u);
  }

  else if (v49 <= (v46 - v10))
  {
    swift_beginAccess();

    v42 = sub_1004A58D4();
    v44 = v43;

    v56._countAndFlagsBits = v42;
    v56._object = v44;
    sub_1004A5994(v56);

    v57._countAndFlagsBits = 39;
    v57._object = 0xE100000000000000;
    sub_1004A5994(v57);
    sub_1003A527C();
    swift_allocError();
    *v45 = 0xD000000000000021;
    v45[1] = 0x80000001004B0B90;
    v45[2] = 0xD000000000000020;
    v45[3] = 0x80000001004B03C0;
    v45[4] = 2110;
    swift_willThrow();

    return;
  }

  __break(1u);
}

uint64_t sub_10042C284(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = a3;
  if (v4 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v12 = v5;
    goto LABEL_6;
  }

  v7 = *a1;
  v8 = a1[1];
  v9 = *(a1 + 4);
  v10 = *(a1 + 10);
  v11 = *(a1 + 22);

  sub_10046B71C(0x5D5BuLL, 0xE200000000000000, 0, 0, a1, v4, v5);
  if (!v3)
  {
    if (qword_1005DBBD8 == -1)
    {
LABEL_9:
      v5 = static SectionSpecifier.complete;
      v14 = unk_1005DEA70;
      v15 = byte_1005DEA78;

      sub_100051190(v14, v15);

      return v5;
    }

LABEL_11:
    swift_once();
    goto LABEL_9;
  }

  *a1 = v7;
  a1[1] = v8;
  *(a1 + 4) = v9;
  *(a1 + 10) = v10;
  *(a1 + 22) = v11;
LABEL_6:
  swift_willThrow();
  return v5;
}

uint64_t *sub_10042C3DC(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = (a2 + 1);
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_26;
  }

  v11 = result;
  if (v8 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v18 = a3;
LABEL_7:
    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {

        return v8;
      }
    }

    if (v8 < a3)
    {

      v8 = sub_10042C764(v11, v8, a3, a4, a5, a6, a7);
LABEL_24:

      return v8;
    }

    sub_1003A5228();
    swift_allocError();
    *v19 = a3;
    swift_willThrow();
    return v8;
  }

  v12 = *result;
  v13 = result[1];
  v14 = *(result + 4);
  v15 = *(result + 10);
  v16 = *(result + 22);

  v17 = sub_10042E0BC(v11, v8, a3);
  if (v7)
  {

    *v11 = v12;
    *(v11 + 8) = v13;
    *(v11 + 16) = v14;
    *(v11 + 20) = v15;
    *(v11 + 22) = v16;
    goto LABEL_7;
  }

  v24 = v17;

  v20 = sub_10047112C(v11, v8, a3, a4, a5, a6, a7);
  v22 = v21;

  if (v22 == 255)
  {
    v20 = 0;
    v23 = 2;
  }

  else
  {
    v23 = v22;
  }

  v8 = v24;
  if (v24[2] || v23 <= 1u || v20 <= 1 || v20 == 3)
  {
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t *sub_10042C764(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v20 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v11 = *result;
    v12 = result[1];
    v13 = *(result + 4);
    v22 = *(result + 22);
    v23 = *(result + 10);

    v18 = sub_10042C924(v10, v8, a3, a4, a5, a6, a7);
    if (v7)
    {

LABEL_9:
      *v10 = v11;
      v10[1] = v12;
      *(v10 + 4) = v13;
      *(v10 + 10) = v23;
      *(v10 + 22) = v22;
      return swift_willThrow();
    }

    if (v19 >= 2u && v18 == 2)
    {

      sub_1003A527C();
      swift_allocError();
      *v21 = 0xD00000000000002ALL;
      v21[1] = 0x80000001004B0C30;
      v21[2] = 0xD000000000000020;
      v21[3] = 0x80000001004B03C0;
      v21[4] = 2240;
      swift_willThrow();
      goto LABEL_9;
    }

    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_10042C924(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_10000C9C0(&qword_1005DC850, &qword_100504BA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004D13E0;
  *(inited + 32) = sub_10042CBF8;
  *(inited + 40) = 0;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10042EB60;
  *(v15 + 24) = v14;
  *(inited + 48) = sub_10042EBBC;
  *(inited + 56) = v15;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_10042EBD8;
  *(v17 + 24) = v16;
  *(inited + 64) = sub_100430B5C;
  *(inited + 72) = v17;
  *(inited + 80) = sub_10042CC24;
  *(inited + 88) = 0;
  *(inited + 96) = sub_10042CC54;
  *(inited + 104) = 0;
  *(inited + 112) = sub_10042CC80;
  *(inited + 120) = 0;
  swift_retain_n();
  sub_1003FB730(inited, a1, a2, a3, 0xD000000000000020, 0x80000001004B03C0, 2314);
  v19 = v18;
  swift_setDeallocating();
  sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
  swift_arrayDestroy();
  return v19;
}

uint64_t *sub_10042CB48(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_10046B71C(0xD000000000000012, 0x80000001004B0C10, 0, 0, a1, a2, a3);
  if (!v7)
  {
    return sub_10042597C(a1, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

void sub_10042CC90(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *(a1 + 2);
  if (*(a1 + 3) == v5)
  {
    sub_1003A5324();
    swift_allocError();
LABEL_3:
    swift_willThrow();
    return;
  }

  v9 = *(a1 + 22);
  v10 = *(a1 + 10);
  v12 = *a1;
  swift_beginAccess();
  if (v5 == -1)
  {
    __break(1u);
  }

  else
  {
    v13 = *(*(v12 + 24) + (v9 | (v10 << 8)) + v5);
    *(a1 + 2) = v5 + 1;
    v14 = (v13 - 45) > 0x32 || ((1 << (v13 - 45)) & 0x4000000000003) == 0;
    if (v14 && (v13 & 0xFFFFFFDF) - 91 < 0xFFFFFFE6)
    {
      sub_1004A6724(26);
      v18 = sub_1004A6CE4();
      v20 = v19;

      v29._object = 0x80000001004B0D80;
      v29._countAndFlagsBits = 0x1000000000000018;
      sub_1004A5994(v29);
      sub_1003A527C();
      swift_allocError();
      *v21 = v18;
      v21[1] = v20;
      v21[2] = 0xD000000000000020;
      v21[3] = 0x80000001004B03C0;
      v21[4] = 2641;
      goto LABEL_3;
    }

    sub_10046C958(a1, a2, a3);
    if (!v4)
    {
      sub_10046C184(v15, v16, v17 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 2647);
      v23 = v22;
      v25 = v24;
      v27 = sub_1004A58D4();
      v28 = v26;

      v30._countAndFlagsBits = v25;
      v30._object = v23;
      sub_1004A5994(v30);

      *a4 = v27;
      a4[1] = v28;
    }
  }
}

uint64_t sub_10042CF04(char **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    __break(1u);
LABEL_25:
    v8 = sub_100085070(0, *(v8 + 2) + 1, 1, v8);
LABEL_12:
    v29 = *(v8 + 2);
    v28 = *(v8 + 3);
    v30 = v38;
    if (v29 >= v28 >> 1)
    {
      v30 = v38;
      v8 = sub_100085070((v28 > 1), v29 + 1, 1, v8);
    }

    *(v8 + 2) = v29 + 1;
    v31 = &v8[16 * v29];
    *(v31 + 4) = v47;
    *(v31 + 5) = v44;
    *v40 = v8;
    if (v49 + 1 >= v11)
    {
      sub_1003A5228();
      swift_allocError();
      *v36 = v11;
    }

    else
    {
      while (1)
      {
        v32 = *v9;
        v33 = *(v9 + 8);
        v46 = *(v9 + 16);
        v34 = *(v9 + 20);
        v35 = *(v9 + 22);

        sub_100469DF8(v9);

        if (v30)
        {
          break;
        }

        v30 = 0;
        sub_10042CF04(v40, v9, v49, v11, v39, v14, v13, v12);
      }

      *v9 = v32;
      *(v9 + 8) = v33;
      *(v9 + 16) = v46;
      *(v9 + 20) = v34;
      *(v9 + 22) = v35;
    }

    swift_willThrow();
  }

  v11 = a4;
  if (v15 >= a4)
  {
    sub_1003A5228();
    swift_allocError();
    *v22 = v11;
    return swift_willThrow();
  }

  v12 = a8;
  v13 = a7;
  v14 = a6;
  v9 = a2;
  v18 = *a2;
  v48 = *(a2 + 2);
  v45 = *(a2 + 3);
  v43 = *(a2 + 4);
  v41 = *(a2 + 22);
  v42 = *(a2 + 10);
  swift_retain_n();
  v19 = sub_10041ED48(v9, v15, v11, a5, v14, v13, v12);
  v39 = a5;
  v40 = a1;
  v49 = v15;
  if (!v10)
  {
    sub_10046C184(v19, v20, v21 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 2681);
    v38 = 0;
    v44 = v24;
    v47 = v23;
    v8 = *a1;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

  *v9 = v18;
  *(v9 + 8) = v48;
  *(v9 + 12) = v45;
  *(v9 + 16) = v43;
  *(v9 + 20) = v42;
  v25 = v15 + 1;
  *(v9 + 22) = v41;
  if (v15 + 1 >= v11)
  {
    sub_1003A5228();
    swift_allocError();
    *v26 = v11;
    swift_willThrow();

    *v9 = v18;
    *(v9 + 8) = v48;
    *(v9 + 12) = v45;
    *(v9 + 16) = v43;
    *(v9 + 20) = v42;
    *(v9 + 22) = v41;
    return swift_willThrow();
  }

  swift_retain_n();
  sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, v9, v25, v11);
  sub_10042CF04(v40, v9, v25, v11, 0, v14, v13, v12);
  sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, v9, v25, v11);
  if (v15 + 2 < v11)
  {
    while (1)
    {

      sub_100469DF8(v9);

      sub_10042CF04(v40, v9, v25, v11, a5, v14, v13, v12);
    }
  }

  sub_1003A5228();
  swift_allocError();
  *v37 = v11;
  swift_willThrow();
}

uint64_t sub_10042D47C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = sub_10046B71C(a8, a9, 0, 0, a1, a2, a3);
  if (!v10)
  {
    return a10(a1, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_10042D524@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  result = sub_10046B71C(a3, a4, 0, 0, a1, *a2, a2[1]);
  if (!v7)
  {
    *a7 = a5;
    *(a7 + 8) = a6;
  }

  return result;
}

uint64_t sub_10042D57C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_10046C278(a1, a2, a3, 1);
  if (!v6)
  {
    if (result < 0)
    {
      sub_1003A527C();
      swift_allocError();
      *v11 = 0xD000000000000011;
      v11[1] = 0x80000001004B08A0;
      v11[2] = 0xD000000000000020;
      v11[3] = 0x80000001004B03C0;
      v12 = 202;
    }

    else
    {
      if (v10 == a4)
      {
        *a5 = result;
        return result;
      }

      sub_1004A6724(26);

      v13._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v13);

      v14._countAndFlagsBits = 0x2C73746967696420;
      v14._object = 0xED000020746F6720;
      sub_1004A5994(v14);
      v15._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v15);

      sub_1003A527C();
      swift_allocError();
      *v11 = 0x6465746365707845;
      v11[1] = 0xE900000000000020;
      v11[2] = 0xD000000000000020;
      v11[3] = 0x80000001004B03C0;
      v12 = 3051;
    }

    v11[4] = v12;
    return swift_willThrow();
  }

  return result;
}

uint64_t *sub_10042D768(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v5 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
      return swift_willThrow();
    }

    v7 = result;
    v8 = *result;
    v9 = result[1];
    v10 = *(result + 4);
    v11 = *(result + 10);
    v12 = *(result + 22);

    sub_10042D57C(v7, v5, a3, a4, &v15);
    if (v4)
    {

      *v7 = v8;
      *(v7 + 8) = v9;
      *(v7 + 16) = v10;
      *(v7 + 20) = v11;
      *(v7 + 22) = v12;
      return swift_willThrow();
    }

    return v15;
  }

  return result;
}

void sub_10042D8C4(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v4 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v15 = a3;
    goto LABEL_9;
  }

  v7 = *result;
  v8 = result[1];
  v9 = *(result + 4);
  v10 = *(result + 10);
  v11 = *(result + 22);

  sub_10046C660(result, v4, a3);
  if (v3)
  {

    *result = v7;
    result[1] = v8;
    *(result + 4) = v9;
    *(result + 10) = v10;
    *(result + 22) = v11;
LABEL_9:
    swift_willThrow();
    return;
  }

  if (HIDWORD(v13) >= v13)
  {
    if (v14 - (BYTE6(v14) | (WORD2(v14) << 8)) >= HIDWORD(v13))
    {
      v18[0] = v12;
      v18[1] = v13;
      v19 = v14;
      v20 = WORD2(v14);
      v21 = BYTE6(v14);
      v22 = v13;
      v23 = HIDWORD(v13);

      sub_1003C5B5C(v18, 0);
      v17 = v16;
      sub_1003A52D0(v18);
      sub_1003F5A98(v17, j__malloc, j__realloc, sub_100127C74, sub_100127C84);

      return;
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t (*sub_10042DBA0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void)))(void)
{
  result = sub_10046B71C(0x5CuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (v4)
  {
    return a4;
  }

  if (!__OFADD__(a2, 1))
  {
    if (a2 + 1 >= a3)
    {
      sub_1003A5228();
      v10 = swift_allocError();
      *v11 = a3;
      a4 = v10;
      swift_willThrow();
    }

    else
    {
      sub_100466470(a1, &v15);
      sub_10046C184(v15, v16, v17 | (v18 << 32) | (v19 << 48), 0xD000000000000020, 0x80000001004B03C0, 115);
      v12 = a4();
      v14 = v13;

      v15 = 92;
      v16 = 0xE100000000000000;
      v20._countAndFlagsBits = v12;
      v20._object = v14;
      sub_1004A5994(v20);

      a4 = ByteBufferAllocator.buffer(string:)(v15, v16, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
    }

    return a4;
  }

  __break(1u);
  return result;
}

uint64_t *sub_10042DDB0(uint64_t *result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  v5 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v5 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
      return swift_willThrow();
    }

    v8 = result;
    v9 = *result;
    v10 = result[1];
    v11 = *(result + 4);
    v12 = *(result + 10);
    v13 = *(result + 22);

    a4(&v15, v8, v5, a3);
    if (v4)
    {

      *v8 = v9;
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v12;
      *(v8 + 22) = v13;
      return swift_willThrow();
    }

    return v15;
  }

  return result;
}

uint64_t *sub_10042DEC4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v5 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v15 = a3;
    }

    else
    {
      v7 = result;
      v8 = *result;
      v9 = result[1];
      v10 = *(result + 4);
      v11 = *(result + 10);
      v12 = *(result + 22);
      if (a2 + 2 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v16 = a3;
      }

      else
      {

        sub_1004660B8(v7, v25);
        if (!v4)
        {
          sub_10046C184(v25[0], v25[1], v26 | (v27 << 32) | (v28 << 48), 0xD000000000000020, 0x80000001004B03C0, 2766);
          v22 = v13;
          v23 = v14;

          v17 = sub_10046F8E8(v7, v5, a3);
          v19 = v18;
          v21 = v20;

          *a4 = v22;
          *(a4 + 8) = v23;
          *(a4 + 16) = v17;
          *(a4 + 24) = v21;
          *(a4 + 32) = v19;
          *(a4 + 38) = BYTE6(v19);
          *(a4 + 36) = WORD2(v19);
          return result;
        }
      }

      swift_willThrow();

      *v7 = v8;
      *(v7 + 8) = v9;
      *(v7 + 16) = v10;
      *(v7 + 20) = v11;
      *(v7 + 22) = v12;
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t *sub_10042E0BC(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v5 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
      goto LABEL_8;
    }

    v7 = result;
    v8 = *result;
    v9 = result[1];
    v10 = *(result + 4);
    v11 = *(result + 10);
    v12 = *(result + 22);
    sub_10000C9C0(&qword_1005D14D8, &qword_1004F1B10);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1004CEAA0;

    v13 = sub_10046C278(v7, v5, a3, 0);
    if (v3)
    {
    }

    else
    {
      if ((v13 & 0x8000000000000000) == 0)
      {
        *(v4 + 32) = v13;
        if (v5 + 1 >= a3)
        {
          sub_1003A5228();
          swift_allocError();
          *v24 = a3;
        }

        else
        {
          v15 = *(v7 + 8);
          v33 = *(v7 + 20);
          v34 = *(v7 + 16);
          v32 = *(v7 + 22);
          v38 = *v7;

          if (v5 + 2 >= a3)
          {
            sub_1003A5228();
            v25 = swift_allocError();
            *v26 = a3;
            v27 = v38;
          }

          else
          {
            v16 = v5 + 3;
            v17 = *v7;
            v18 = *(v7 + 8);
            v40 = *(v7 + 20);
            v41 = *(v7 + 16);
            v39 = *(v7 + 22);
            if (v5 + 3 >= a3)
            {
LABEL_24:
              v28 = v17;
              sub_1003A5228();
              v25 = swift_allocError();
              *v29 = a3;

              v27 = v38;
            }

            else
            {
              v37 = v5 + 4;
              v19 = v4;
              v35 = v12;
              v36 = v11;
              while (1)
              {
                v42 = v19;
                v43 = v17;
                swift_retain_n();
                sub_10046B71C(0x2EuLL, 0xE100000000000000, 0, 0, v7, v16, a3);
                if (v37 >= a3)
                {
                  sub_1003A5228();
                  v25 = swift_allocError();
                  *v30 = a3;
                  v27 = v38;
                  swift_willThrow();

                  goto LABEL_27;
                }

                sub_1004698A4(v7, v37, a3, 0, v44);

                v20 = v44[0];
                if ((v44[0] & 0x8000000000000000) != 0)
                {
                  break;
                }

                v19 = v42;
                v22 = *(v42 + 2);
                v21 = *(v42 + 3);
                if (v22 >= v21 >> 1)
                {
                  v19 = sub_100460CC0((v21 > 1), v22 + 1, 1, v42);
                }

                v16 = v5 + 3;
                *(v19 + 2) = v22 + 1;
                *&v19[8 * v22 + 32] = v20;
                v17 = *v7;
                v18 = *(v7 + 8);
                v40 = *(v7 + 20);
                v41 = *(v7 + 16);
                v39 = *(v7 + 22);
                v12 = v35;
                v11 = v36;
                if (v5 + 3 >= a3)
                {
                  goto LABEL_24;
                }
              }

              sub_1003A527C();
              v25 = swift_allocError();
              *v31 = 0xD000000000000011;
              v31[1] = 0x80000001004B08A0;
              v31[2] = 0xD000000000000020;
              v31[3] = 0x80000001004B03C0;
              v31[4] = 202;
              swift_willThrow();
              v4 = v42;
              v12 = v35;
              v11 = v36;
              v27 = v38;
LABEL_27:
              v28 = v43;
            }

            swift_willThrow();

            *v7 = v28;
            *(v7 + 8) = v18;
            *(v7 + 16) = v41;
            *(v7 + 20) = v40;
            *(v7 + 22) = v39;
          }

          swift_willThrow();
          v44[10] = v25;
          swift_errorRetain();
          sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
          if (swift_dynamicCast())
          {

            return v4;
          }

          *v7 = v27;
          *(v7 + 8) = v15;
          *(v7 + 16) = v34;
          *(v7 + 20) = v33;
          *(v7 + 22) = v32;
        }

        swift_willThrow();

        goto LABEL_6;
      }

      sub_1003A527C();
      swift_allocError();
      *v23 = 0xD000000000000011;
      v23[1] = 0x80000001004B08A0;
      v23[2] = 0xD000000000000020;
      v23[3] = 0x80000001004B03C0;
      v23[4] = 202;
      swift_willThrow();
    }

    *(v4 + 16) = 0;
LABEL_6:

    *v7 = v8;
    *(v7 + 8) = v9;
    *(v7 + 16) = v10;
    *(v7 + 20) = v11;
    *(v7 + 22) = v12;
LABEL_8:
    swift_willThrow();
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t *sub_10042E674(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v6 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v13 = a3;
LABEL_18:
      swift_willThrow();
      return v5;
    }

    v8 = result;
    v9 = *result;
    v5 = *(result + 2);
    v10 = *(result + 3);
    v11 = *(result + 4);
    v20 = *(result + 10);
    v12 = *(result + 22);
    if (a2 + 2 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
    }

    else
    {
      swift_retain_n();
      sub_10046B71C(0x7EuLL, 0xE100000000000000, 0, 0, v8, v6 + 1, a3);
      if (!v4)
      {

        goto LABEL_12;
      }

      *v8 = v9;
      *(v8 + 8) = v5;
      *(v8 + 12) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v20;
      *(v8 + 22) = v12;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (!swift_dynamicCast())
    {

LABEL_17:
      *v8 = v9;
      *(v8 + 8) = v5;
      *(v8 + 12) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v20;
      *(v8 + 22) = v12;
      goto LABEL_18;
    }

LABEL_12:
    sub_10046B71C(0x7BuLL, 0xE100000000000000, 0, 0, v8, v6, a3);
    v18 = v5;
    v15 = sub_10046C278(v8, v6, a3, 1);
    v5 = v15;
    if (v15 < 0)
    {

      sub_1003A527C();
      swift_allocError();
      *v17 = 0xD000000000000011;
      v17[1] = 0x80000001004B08A0;
      v17[2] = 0xD000000000000020;
      v17[3] = 0x80000001004B03C0;
      v17[4] = 202;
    }

    else
    {
      if (v15 <= a4)
      {
        sub_10046B71C(0x7DuLL, 0xE100000000000000, 0, 0, v8, v6, a3);
        sub_100464188(v8, v6, a3);

        return v5;
      }

      sub_1003FF690();
      swift_allocError();
      *v16 = v5;
      v16[1] = a4;
    }

    swift_willThrow();
    v5 = v18;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

unint64_t sub_10042E9D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10046D2B8(a1, a2, a3);
  if (!v3)
  {
    sub_10046C184(v5, v6, v7 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 3028);
    v4 = v8;
    v10 = v9;
    if ((sub_1004A5924() - 256) < 0xFFFFFFFFFFFFFF01 || (sub_1003E3E9C(v4, v10) & 1) == 0)
    {

      sub_1003A527C();
      swift_allocError();
      *v11 = 0xD000000000000012;
      v11[1] = 0x80000001004B0B70;
      v11[2] = 0xD000000000000020;
      v11[3] = 0x80000001004B03C0;
      v11[4] = 3030;
      swift_willThrow();
    }
  }

  return v4;
}

uint64_t sub_10042EAEC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10042ED58(uint64_t result)
{
  v1 = *(result + 64) & 0x1FFLL;
  *(result + 16) &= 0x1FFFFFFFFuLL;
  *(result + 64) = v1;
  return result;
}

uint64_t sub_10042EDC8(uint64_t result)
{
  v1 = *(result + 64) & 0x1FFLL | 0x8000000000000000;
  *(result + 16) &= 0x1FFFFFFFFuLL;
  *(result + 64) = v1;
  return result;
}

uint64_t sub_10042EE3C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = __OFADD__(a2, 1);
  v6 = a2 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    if (v6 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v15 = a3;
      return swift_willThrow();
    }

    v7 = result;
    v9 = *result;
    v10 = *(result + 8);
    v11 = *(result + 16);
    v12 = *(result + 20);
    v13 = *(result + 22);
    sub_100466470(result, v17);
    if (v4)
    {
      *v7 = v9;
      *(v7 + 8) = v10;
      *(v7 + 16) = v11;
      *(v7 + 20) = v12;
      *(v7 + 22) = v13;
      return swift_willThrow();
    }

    sub_10046C184(v17[0], v17[1], v18 | (v19 << 32) | (v20 << 48), 0xD000000000000020, 0x80000001004B03C0, 115);
    v16 = a4();

    return v16;
  }

  return result;
}

uint64_t (*sub_10042EF94(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void)))(void)
{
  result = sub_10046B71C(0x5BuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (v4)
  {
    return a4;
  }

  v10 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v10 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v12 = a3;
      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        swift_errorRetain();
        if ((swift_dynamicCast() & 1) == 0)
        {

          return a4;
        }
      }

      if (v10 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v13 = a3;
        swift_willThrow();
        return a4;
      }

      v11 = sub_10042EE3C(a1, v10, a3, a4);
    }

    else
    {

      v11 = sub_10042EE3C(a1, a2 + 1, a3, a4);
    }

    a4 = v11;

    sub_10046B71C(0x5DuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    return a4;
  }

  __break(1u);
  return result;
}

void sub_10042F2A8(uint64_t *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 3) == v1)
  {
    sub_1003A5324();
    swift_allocError();
LABEL_3:
    swift_willThrow();
    return;
  }

  v3 = *(a1 + 22);
  v4 = *(a1 + 10);
  v5 = *a1;
  swift_beginAccess();
  v6 = v1 + 1;
  if (v1 == -1)
  {
    __break(1u);
  }

  else
  {
    v7 = *(*(v5 + 24) + (v3 | (v4 << 8)) + v1);
    *(a1 + 2) = v6;
    if (!isalnum(v7) && (v7 - 45) >= 2 && v7 != 95 && v7 != 126)
    {
      sub_1004A6724(32);

      v10._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v10);

      sub_1003A527C();
      swift_allocError();
      *v9 = 0xD00000000000001ELL;
      v9[1] = 0x80000001004B0C80;
      v9[2] = 0xD000000000000020;
      v9[3] = 0x80000001004B03C0;
      v9[4] = 1242;
      goto LABEL_3;
    }

    sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1004CEAA0;
    *(v8 + 32) = v7;
  }
}

void sub_10042F46C(uint64_t *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 3) == v1)
  {
    sub_1003A5324();
    swift_allocError();
LABEL_3:
    swift_willThrow();
    return;
  }

  v3 = *(a1 + 22);
  v4 = *(a1 + 10);
  v5 = *a1;
  swift_beginAccess();
  v6 = v1 + 1;
  if (v1 == -1)
  {
    __break(1u);
  }

  else
  {
    v7 = *(*(v5 + 24) + (v3 | (v4 << 8)) + v1);
    *(a1 + 2) = v6;
    if ((v7 - 39) >= 6 && v7 != 33 && v7 != 36)
    {
      sub_1004A6724(35);

      v10._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v10);

      sub_1003A527C();
      swift_allocError();
      *v9 = 0xD000000000000021;
      v9[1] = 0x80000001004B0CA0;
      v9[2] = 0xD000000000000020;
      v9[3] = 0x80000001004B03C0;
      v9[4] = 1250;
      goto LABEL_3;
    }

    sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1004CEAA0;
    *(v8 + 32) = v7;
  }
}

void sub_10042F624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    return;
  }

  if (v4 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v12 = a3;
  }

  else
  {
    v7 = *a1;
    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    v10 = *(a1 + 20);
    v11 = *(a1 + 22);
    sub_10042F2A8(a1);
    if (!v3)
    {
      return;
    }

    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    *(a1 + 20) = v10;
    *(a1 + 22) = v11;
  }

  swift_willThrow();
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if (swift_dynamicCast())
  {
  }

  else
  {

    swift_errorRetain();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if (v4 < a3)
  {
    sub_10042F46C(a1);
    return;
  }

  sub_1003A5228();
  swift_allocError();
  *v13 = a3;
  swift_willThrow();
  swift_errorRetain();
  if (swift_dynamicCast())
  {

    goto LABEL_16;
  }

  swift_errorRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:

    return;
  }

LABEL_16:

  if (v4 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v14 = a3;
    swift_willThrow();
  }

  else
  {

    sub_100429134(a1, v4, a3);
  }
}

uint64_t sub_10042F97C(uint64_t a1, uint64_t a2, size_t a3)
{
  if (qword_1005DB9D0 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v7 = HIDWORD(qword_1005DE390);
    v8 = dword_1005DE398;
    v9 = word_1005DE39C;
    v10 = byte_1005DE39E;
    v25 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
    v26 = qword_1005DE390;
    v27 = dword_1005DE398;
    v28 = word_1005DE39C;
    v29 = byte_1005DE39E;

    sub_10042F624(a1, a2, a3);
    v12 = a1;
    a1 = v3;
    if (v3)
    {
      break;
    }

    v13 = v11;
    v23 = v12;
    v24 = a2;
    while (1)
    {
      a2 = a3;
      a3 = *(v13 + 16);
      v14 = v7 + a3;
      if (__CFADD__(v7, a3))
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        if (v14 >= v8)
        {
          v15 = v14 - v8;
        }

        else
        {
          v15 = 0;
        }

        v16 = variable initialization expression of Engine.isProcessingUpdates();
        ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v15, v16 & 1);
      }

      if (HIDWORD(a3))
      {
        goto LABEL_23;
      }

      ByteBuffer._ensureAvailableCapacity(_:at:)(a3, v7);
      LODWORD(v8) = v27;
      swift_beginAccess();
      v17 = v29 | (v28 << 8);
      LODWORD(v18) = v27 - v17;
      if (v27 - v17 >= v7)
      {
        LODWORD(v18) = v7;
      }

      if (v7)
      {
        v18 = v18;
      }

      else
      {
        v18 = 0;
      }

      memmove((*(v25 + 24) + v17 + v18), (v13 + 32), a3);

      LODWORD(v7) = HIDWORD(v26) + a3;
      if (__CFADD__(HIDWORD(v26), a3))
      {
        goto LABEL_24;
      }

      HIDWORD(v26) += a3;
      a3 = a2;
      v3 = 0;
      sub_10042F624(v23, v24, a2);
      v13 = v19;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }

  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if (swift_dynamicCast())
  {

    sub_10046C184(v20, v26 | (v7 << 32), v8 | (v9 << 32) | (v10 << 48), 0xD000000000000020, 0x80000001004B03C0, 989);
    v8 = v21;
  }

  else
  {
  }

  return v8;
}

uint64_t sub_10042FC30(uint64_t *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  result = sub_10046C278(a1, a2, a3, 1);
  if (!v4)
  {
    if (result < 0 || (sub_10046B71C(0x2EuLL, 0xE100000000000000, 0, 0, a1, a2, a3), (sub_10046C278(a1, a2, a3, 1) & 0x8000000000000000) != 0) || (sub_10046B71C(0x2EuLL, 0xE100000000000000, 0, 0, a1, a2, a3), (sub_10046C278(a1, a2, a3, 1) & 0x8000000000000000) != 0) || (sub_10046B71C(0x2EuLL, 0xE100000000000000, 0, 0, a1, a2, a3), (sub_10046C278(a1, a2, a3, 1) & 0x8000000000000000) != 0))
    {
      sub_1003A527C();
      swift_allocError();
      *v9 = 0xD000000000000011;
      v9[1] = 0x80000001004B08A0;
      v9[2] = 0xD000000000000020;
      v9[3] = 0x80000001004B03C0;
      v9[4] = 202;
      return swift_willThrow();
    }

    else
    {
      v10 = sub_1004A6CE4();
      v11._countAndFlagsBits = 46;
      v11._object = 0xE100000000000000;
      sub_1004A5994(v11);
      v12._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v12);

      v13._countAndFlagsBits = 46;
      v13._object = 0xE100000000000000;
      sub_1004A5994(v13);
      v14._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v14);

      v15._countAndFlagsBits = 46;
      v15._object = 0xE100000000000000;
      sub_1004A5994(v15);
      v16._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v16);

      return v10;
    }
  }

  return result;
}

uint64_t *sub_10042FEA4(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v5 = a3;
    if (v4 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v12 = v5;
    }

    else
    {
      v6 = result;
      v7 = *result;
      v8 = result[1];
      v9 = *(result + 4);
      v10 = *(result + 10);
      v11 = *(result + 22);

      sub_10046B71C(0x2FuLL, 0xE100000000000000, 0, 0, v6, v4, v5);
      if (v3)
      {
      }

      else
      {
        v13 = v4 + 1;
        if (v4 + 1 < v5)
        {

          sub_10046B71C(0x3D4449553BuLL, 0xE500000000000000, 0, 0, v6, v13, v5);
          v5 = sub_100405E9C(v6, v13, v5, v14);

          return v5;
        }

        sub_1003A5228();
        swift_allocError();
        *v15 = v5;
        swift_willThrow();
      }

      *v6 = v7;
      *(v6 + 8) = v8;
      *(v6 + 16) = v9;
      *(v6 + 20) = v10;
      *(v6 + 22) = v11;
    }

    swift_willThrow();
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_100430070@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v14 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v9 = a3;
    if (v14 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v15 = v9;
      return swift_willThrow();
    }

    v4 = a1;
    v10 = a4;
    v5 = *a1;
    v13 = a1[1];
    v12 = *(a1 + 4);
    v11 = *(a1 + 10);
    v8 = *(a1 + 22);

    sub_10046B71C(0x3D4552495058453BuLL, 0xE800000000000000, 0, 0, v4, v14, v9);
    if (v6)
    {

LABEL_13:
      *v4 = v5;
      *(v4 + 8) = v13;
      *(v4 + 16) = v12;
      *(v4 + 20) = v11;
      *(v4 + 22) = v8;
      return swift_willThrow();
    }

    v16 = v14 + 1;
    if (v14 + 1 >= v9)
    {

      sub_1003A5228();
      swift_allocError();
      *v18 = v9;
LABEL_12:
      swift_willThrow();
      goto LABEL_13;
    }

    v17 = v14 + 2;
    if (v17 >= v9)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = v9;
      swift_willThrow();
LABEL_11:

      goto LABEL_12;
    }

    v30 = v16;
    swift_retain_n();
    v29 = sub_10042D768(v4, v17, v9, 4);
    sub_10046B71C(0x2DuLL, 0xE100000000000000, 0, 0, v4, v17, v9);
    v28 = sub_10042D768(v4, v17, v9, 2);
    sub_10046B71C(0x2DuLL, 0xE100000000000000, 0, 0, v4, v17, v9);
    a1 = sub_10042D768(v4, v17, v9, 2);
    v7 = 0;
  }

  v21 = a1;

  if (v28 - 13 < 0xFFFFFFFFFFFFFFF4 || (v21 - 4) < 0xFFFFFFFFFFFFFFE1)
  {
    __break(1u);
  }

  else
  {
    v27 = v21;
    sub_10046B71C(0x54uLL, 0xE100000000000000, 0, 0, v4, v30, v9);
    if (v7)
    {

      goto LABEL_11;
    }

    v26 = sub_10042D768(v4, v30, v9, 2);
    sub_10046B71C(0x3AuLL, 0xE100000000000000, 0, 0, v4, v30, v9);
    v22 = sub_10042D768(v4, v30, v9, 2);
    sub_10046B71C(0x3AuLL, 0xE100000000000000, 0, 0, v4, v30, v9);
    v25 = sub_10042D768(v4, v30, v9, 2);
    v31 = sub_10046FED4(v4, v30, v9);
    v24 = v23;

    *v10 = v29;
    *(v10 + 8) = v28;
    *(v10 + 16) = v27;
    *(v10 + 24) = v26;
    *(v10 + 32) = v22;
    *(v10 + 40) = v25;
    *(v10 + 48) = v31;
    *(v10 + 56) = v24 & 1;
  }

  return result;
}

uint64_t sub_1004304F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = (*(v3 + 16))(a1, *a2, a2[1]);
  if (!v4)
  {
    *a3 = result;
    *(a3 + 8) = v7;
    *(a3 + 16) = v8;
  }

  return result;
}

void sub_100430538(uint64_t *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 3) == v1)
  {
    sub_1003A5324();
    swift_allocError();
LABEL_8:
    swift_willThrow();
    return;
  }

  v3 = *(a1 + 22);
  v4 = *(a1 + 10);
  v5 = *a1;
  swift_beginAccess();
  v6 = v1 + 1;
  if (v1 != -1)
  {
    v7 = *(*(v5 + 24) + (v3 | (v4 << 8)) + v1);
    *(a1 + 2) = v6;
    if (v7 == 38 || v7 == 61)
    {
      sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1004CEAA0;
      *(v8 + 32) = v7;
      return;
    }

    sub_1004A6724(20);

    v10._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v10);

    sub_1003A527C();
    swift_allocError();
    *v9 = 0xD000000000000012;
    v9[1] = 0x80000001004B0CF0;
    v9[2] = 0xD000000000000020;
    v9[3] = 0x80000001004B03C0;
    v9[4] = 1293;
    goto LABEL_8;
  }

  __break(1u);
}

void sub_1004306E4(uint64_t *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 3) == v1)
  {
    sub_1003A5324();
    swift_allocError();
LABEL_3:
    swift_willThrow();
    return;
  }

  v3 = *(a1 + 22);
  v4 = *(a1 + 10);
  v5 = *a1;
  swift_beginAccess();
  v6 = v1 + 1;
  if (v1 == -1)
  {
    __break(1u);
  }

  else
  {
    v7 = *(*(v5 + 24) + (v3 | (v4 << 8)) + v1);
    *(a1 + 2) = v6;
    if ((v7 - 47) > 0x11 || ((1 << (v7 - 47)) & 0x20801) == 0)
    {
      sub_1004A6724(20);

      v11._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v11);

      sub_1003A527C();
      swift_allocError();
      *v10 = 0xD000000000000012;
      v10[1] = 0x80000001004B0D10;
      v10[2] = 0xD000000000000020;
      v10[3] = 0x80000001004B03C0;
      v10[4] = 1312;
      goto LABEL_3;
    }

    sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1004CEAA0;
    *(v9 + 32) = v7;
  }
}

void sub_100430920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {

    sub_1000C9FC8(a3, a4);
  }
}

uint64_t sub_100430A24@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = (*(v3 + 16))(a1, *a2, a2[1]);
  if (!v4)
  {
    *a3 = result;
    *(a3 + 8) = v7;
    *(a3 + 16) = v8;
    *(a3 + 24) = v9 & 1;
  }

  return result;
}

uint64_t sub_100430A6C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(v3 + 16))(a1, *a2, a2[1]);
  if (!v4)
  {
    *a3 = result;
    a3[1] = v7;
  }

  return result;
}

uint64_t sub_100430AA8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = (*(v3 + 16))(a1, *a2, a2[1]);
  if (!v4)
  {
    *a3 = result;
    *(a3 + 8) = v7;
  }

  return result;
}

uint64_t sub_100430C04(void *a1)
{
  v2 = v1;
  v32 = a1;
  v4 = a1[2];
  if (v4)
  {
    v5 = *(v1 + 20);
    result = sub_1002F178C(0, 0xE000000000000000, v1 + 8, v5);
    if (v7)
    {
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
    }

    v9 = result;
    v10 = *(v1 + 20);
    v11 = __CFADD__(v10, result);
    v12 = v10 + result;
    if (v11)
    {
      goto LABEL_29;
    }

    *(v1 + 20) = v12;
  }

  else
  {
    v9 = 0;
    v12 = *(v1 + 20);
  }

  v13 = v12;
  result = sub_1002F178C(0x28uLL, 0xE100000000000000, v1 + 8, v12);
  if (v14)
  {
    v15._countAndFlagsBits = 40;
    v15._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v1 + 20);
  v11 = __CFADD__(v16, result);
  v17 = v16 + result;
  if (v11)
  {
    goto LABEL_24;
  }

  *(v1 + 20) = v17;
  v18 = v9 + result;
  if (__OFADD__(v9, result))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  __chkstk_darwin(result);
  v31[2] = sub_100430E24;
  v31[3] = 0;
  v31[4] = v2;
  v31[5] = &v32;
  v31[6] = 32;
  v31[7] = 0xE100000000000000;
  result = sub_100451B60(0, sub_100430E50, v31, a1);
  v19 = v18 + result;
  if (__OFADD__(v18, result))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = *(v2 + 20);
  result = sub_1002F178C(0x29uLL, 0xE100000000000000, v2 + 8, v20);
  if (v21)
  {
    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v22, v20);
  }

  v23 = *(v2 + 20);
  v24 = (v23 + result);
  if (__CFADD__(v23, result))
  {
    goto LABEL_27;
  }

  *(v2 + 20) = v24;
  v25 = __OFADD__(v19, result);
  v26 = v19 + result;
  if (v25)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  if (!v4)
  {
    return v26;
  }

  result = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v24);
  if (v27)
  {
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v28, v24);
  }

  v29 = *(v2 + 20);
  v11 = __CFADD__(v29, result);
  v30 = v29 + result;
  if (v11)
  {
    goto LABEL_30;
  }

  *(v2 + 20) = v30;
  v25 = __OFADD__(v26, result);
  result += v26;
  if (v25)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  return result;
}

void sub_100430E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v74 = *(a3 + 16);
  if (!v74)
  {
    v64 = *(v3 + 5);
    v65 = sub_1002F178C(0x4C494EuLL, 0xE300000000000000, (v3 + 8), v64);
    if (v66)
    {
      v67._countAndFlagsBits = 4999502;
      v67._object = 0xE300000000000000;
      v65 = ByteBuffer._setStringSlowpath(_:at:)(v67, v64);
    }

    v68 = *(v3 + 5);
    v18 = __CFADD__(v68, v65);
    v69 = v68 + v65;
    if (!v18)
    {
      *(v3 + 5) = v69;
      return;
    }

    goto LABEL_62;
  }

  v6 = *v3;
  *v3 = 0;
  v7 = *(v3 + 5);
  v8 = sub_1002F178C(0, 0xE000000000000000, (v3 + 8), v7);
  if (v9)
  {
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v8 = ByteBuffer._setStringSlowpath(_:at:)(v10, v7);
  }

  v11 = v8;
  v12 = *(v3 + 5);
  v13 = (v12 + v8);
  if (__CFADD__(v12, v8))
  {
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
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  *(v3 + 5) = v13;
  v14 = sub_1002F178C(0x28uLL, 0xE100000000000000, (v3 + 8), v13);
  if (v15)
  {
    v16._countAndFlagsBits = 40;
    v16._object = 0xE100000000000000;
    v14 = ByteBuffer._setStringSlowpath(_:at:)(v16, v13);
  }

  v17 = *(v3 + 5);
  v18 = __CFADD__(v17, v14);
  v19 = v17 + v14;
  if (v18)
  {
    goto LABEL_55;
  }

  *(v3 + 5) = v19;
  if (__OFADD__(v11, v14))
  {
    goto LABEL_56;
  }

  v71 = v11 + v14;
  v70 = v6;

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v72 = a2;
  while (v74 != v21)
  {
    if (v21 >= *(a2 + 16))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v25 = *(a2 + v20 + 32);
    v26 = *(a2 + v20 + 40);
    v27 = *(a3 + v20 + 40);
    v75 = *(a3 + v20 + 32);

    sub_100441B60(v25, v26);
    v29 = v28;
    v30 = *(v4 + 5);
    v31 = sub_1002F178C(0x20uLL, 0xE100000000000000, (v4 + 8), v30);
    if (v32)
    {
      v33._countAndFlagsBits = 32;
      v33._object = 0xE100000000000000;
      v31 = ByteBuffer._setStringSlowpath(_:at:)(v33, v30);
    }

    v34 = *(v4 + 5);
    v35 = (v34 + v31);
    if (__CFADD__(v34, v31))
    {
      goto LABEL_47;
    }

    *(v4 + 5) = v35;
    v24 = __OFADD__(v29, v31);
    v36 = v29 + v31;
    if (v24)
    {
      goto LABEL_48;
    }

    if (v27)
    {
      sub_100441B60(v75, v27);
      v38 = v36 + v37;
      if (__OFADD__(v36, v37))
      {
        goto LABEL_49;
      }
    }

    else
    {
      v39 = sub_1002F178C(0x4C494EuLL, 0xE300000000000000, (v4 + 8), v35);
      if (v40)
      {
        v41._countAndFlagsBits = 4999502;
        v41._object = 0xE300000000000000;
        v39 = ByteBuffer._setStringSlowpath(_:at:)(v41, v35);
      }

      v42 = *(v4 + 5);
      v18 = __CFADD__(v42, v39);
      v43 = v42 + v39;
      if (v18)
      {
        goto LABEL_53;
      }

      *(v4 + 5) = v43;
      v38 = v36 + v39;
      if (__OFADD__(v36, v39))
      {
        goto LABEL_49;
      }
    }

    v24 = __OFADD__(v22, v38);
    v44 = v22 + v38;
    if (v24)
    {
      goto LABEL_50;
    }

    if (v21 >= v74 - 1)
    {

      v23 = 0;
      a2 = v72;
    }

    else
    {
      v45 = *(v4 + 5);
      v46 = sub_1002F178C(0x20uLL, 0xE100000000000000, (v4 + 8), v45);
      if (v47)
      {
        v48._countAndFlagsBits = 32;
        v48._object = 0xE100000000000000;
        v46 = ByteBuffer._setStringSlowpath(_:at:)(v48, v45);
      }

      v23 = v46;

      v49 = *(v4 + 5);
      v18 = __CFADD__(v49, v23);
      v50 = v49 + v23;
      a2 = v72;
      if (v18)
      {
        goto LABEL_52;
      }

      *(v4 + 5) = v50;
    }

    v20 += 16;
    ++v21;
    v24 = __OFADD__(v44, v23);
    v22 = v44 + v23;
    if (v24)
    {
      goto LABEL_51;
    }
  }

  v51 = v71 + v22;
  if (__OFADD__(v71, v22))
  {
    goto LABEL_57;
  }

  v52 = *(v4 + 5);
  v53 = sub_1002F178C(0x29uLL, 0xE100000000000000, (v4 + 8), v52);
  if (v54)
  {
    v55._countAndFlagsBits = 41;
    v55._object = 0xE100000000000000;
    v53 = ByteBuffer._setStringSlowpath(_:at:)(v55, v52);
  }

  v56 = *(v4 + 5);
  v57 = (v56 + v53);
  if (__CFADD__(v56, v53))
  {
    goto LABEL_58;
  }

  *(v4 + 5) = v57;
  v24 = __OFADD__(v51, v53);
  v58 = v51 + v53;
  if (v24)
  {
    goto LABEL_59;
  }

  v59 = sub_1002F178C(0, 0xE000000000000000, (v4 + 8), v57);
  if (v60)
  {
    v61._countAndFlagsBits = 0;
    v61._object = 0xE000000000000000;
    v59 = ByteBuffer._setStringSlowpath(_:at:)(v61, v57);
  }

  v62 = *(v4 + 5);
  v18 = __CFADD__(v62, v59);
  v63 = v62 + v59;
  if (v18)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  *(v4 + 5) = v63;
  if (__OFADD__(v58, v59))
  {
    goto LABEL_61;
  }

  *v4 = v70;
}

NIOIMAPCore2::IMAPCalendarDay_optional __swiftcall IMAPCalendarDay.init(year:month:day:)(Swift::Int year, Swift::Int month, Swift::Int day)
{
  v5 = (day - 32) < 0xFFFFFFFFFFFFFFE1 || (month - 13) < 0xFFFFFFFFFFFFFFF4 || (year - 2501) < 0xFFFFFFFFFFFFFDA7;
  if (v5)
  {
    year = 0;
    month = 0;
    day = 0;
  }

  result.value.day = day;
  result.value.month = month;
  result.value.year = year;
  result.is_nil = v5;
  return result;
}

unint64_t sub_1004312C8()
{
  result = qword_1005DC890;
  if (!qword_1005DC890)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IMAPCalendarDay, &type metadata for IMAPCalendarDay, v0, v1);
    atomic_store(result, &qword_1005DC890);
  }

  return result;
}

unint64_t sub_10043132C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15._countAndFlagsBits = sub_1004A6CE4();
  v15._object = v5;
  v16._countAndFlagsBits = 45;
  v16._object = 0xE100000000000000;
  sub_1004A5994(v16);
  v17._countAndFlagsBits = sub_100431454(v6, a2);
  v17._object = 0xE300000000000000;
  sub_1004A5994(v17);

  v18._countAndFlagsBits = 45;
  v18._object = 0xE100000000000000;
  sub_1004A5994(v18);
  v19._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v19);

  v7 = *(v2 + 20);
  v8 = sub_1002F178C(v15._countAndFlagsBits, v15._object, v3 + 8, *(v3 + 20));
  if (v9)
  {
    v8 = ByteBuffer._setStringSlowpath(_:at:)(v15, v7);
  }

  v10 = v8;

  v12 = *(v3 + 20);
  v13 = __CFADD__(v12, v10);
  v14 = v12 + v10;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 20) = v14;
    return v10;
  }

  return result;
}

uint64_t sub_100431454(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) <= 0xB)
  {
    return *&aJan[8 * a2 - 8];
  }

  __break(1u);
  return result;
}

uint64_t sub_100431478(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004A5814();
  v4 = v2;
  if (v3 == 7233898 && v2 == 0xE300000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (v3 == 6448486 && v4 == 0xE300000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (v3 == 7496045 && v4 == 0xE300000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 3;
  }

  else if (v3 == 7499873 && v4 == 0xE300000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 4;
  }

  else if (v3 == 7954797 && v4 == 0xE300000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 5;
  }

  else if (v3 == 7239018 && v4 == 0xE300000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 6;
  }

  else if (v3 == 7107946 && v4 == 0xE300000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 7;
  }

  else if (v3 == 6780257 && v4 == 0xE300000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 8;
  }

  else if (v3 == 7366003 && v4 == 0xE300000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 9;
  }

  else if (v3 == 7627631 && v4 == 0xE300000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 10;
  }

  else if (v3 == 7761774 && v4 == 0xE300000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 11;
  }

  else if (v3 == 6514020 && v4 == 0xE300000000000000)
  {

    return 12;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 0;
    }
  }
}

double IMAPServer.init(userAuthenticationMechanism:host:port:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, _OWORD *a9@<X8>)
{
  v12[64] = a8 & 1;
  *&v13 = a1;
  *(&v13 + 1) = a2;
  *&v14 = a3;
  *(&v14 + 1) = a4;
  *v15 = a5;
  *&v15[8] = a6;
  *&v15[16] = a7;
  v15[24] = a8 & 1;
  v16[0] = a1;
  v16[1] = a2;
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a6;
  v16[6] = a7;
  v17 = a8 & 1;
  sub_100430970(&v13, v12);
  sub_10042EC54(v16);
  v10 = v14;
  *a9 = v13;
  a9[1] = v10;
  a9[2] = *v15;
  result = *&v15[9];
  *(a9 + 41) = *&v15[9];
  return result;
}

uint64_t IMAPServer.userAuthenticationMechanism.getter()
{
  v1 = *v0;
  sub_10043194C(*v0, v0[1], v0[2], v0[3]);
  return v1;
}

void sub_10043194C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {

    sub_10043199C(a3, a4);
  }
}

double sub_10043199C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void IMAPServer.userAuthenticationMechanism.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100430920(*v4, v4[1], v4[2], v4[3]);
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t MailboxStatus.unseenCount.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

void IMAPServer.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 == 1)
  {
    goto LABEL_4;
  }

  v3 = *(v1 + 24);
  sub_1004A6EC4(1u);
  if (!v2)
  {
    sub_1004A6EC4(0);
    if (v3 == 1)
    {
      goto LABEL_4;
    }

LABEL_9:
    sub_1004A6EC4(1u);
    if (v3)
    {
      sub_1004A6EB4(1uLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      sub_1004A6EB4(0);
    }

    goto LABEL_5;
  }

  sub_1004A6EC4(1u);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v3 != 1)
  {
    goto LABEL_9;
  }

LABEL_4:
  sub_1004A6EC4(0);
LABEL_5:
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (*(v1 + 56))
  {
    sub_1004A6EC4(0);
  }

  else
  {
    v4 = *(v1 + 48);
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v4);
  }
}

Swift::Int IMAPServer.hashValue.getter()
{
  sub_1004A6E94();
  IMAPServer.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_100431B4C(uint64_t a1)
{
  sub_1004A6E94();
  IMAPServer.hash(into:)(v2);
  return sub_1004A6F14();
}

uint64_t sub_100431B88(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return _s12NIOIMAPCore210IMAPServerV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t sub_100431BE4(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 8);
  if (v4 == 1)
  {
    v5 = 0;
    v6 = *(v1 + 20);
  }

  else
  {
    v7 = sub_1004A382C(*a1, v4, *(a1 + 16), *(a1 + 24));
    v8 = *(v1 + 20);
    result = sub_1002F178C(0x40uLL, 0xE100000000000000, v1 + 8, v8);
    if (v10)
    {
      v11._countAndFlagsBits = 64;
      v11._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v11, v8);
    }

    v12 = *(v1 + 20);
    v13 = __CFADD__(v12, result);
    v6 = v12 + result;
    if (v13)
    {
      goto LABEL_22;
    }

    *(v1 + 20) = v6;
    v5 = v7 + result;
    if (__OFADD__(v7, result))
    {
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }
  }

  v15 = *(a1 + 32);
  v14 = *(a1 + 40);
  v16 = v6;

  v17 = sub_1002F178C(v15, v14, v1 + 8, v16);
  if (v18)
  {
    v19._countAndFlagsBits = v15;
    v19._object = v14;
    v17 = ByteBuffer._setStringSlowpath(_:at:)(v19, v16);
  }

  v20 = v17;

  v21 = *(v2 + 20);
  v22 = (v21 + v20);
  if (__CFADD__(v21, v20))
  {
    __break(1u);
    goto LABEL_20;
  }

  *(v2 + 20) = v22;
  v23 = v5 + v20;
  if (__OFADD__(v5, v20))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (*(a1 + 56))
  {
    v24 = 0;
  }

  else
  {
    v30._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v30);

    v25 = sub_1002F178C(0x3AuLL, 0xE100000000000000, v2 + 8, v22);
    if (v26)
    {
      v27._countAndFlagsBits = 58;
      v27._object = 0xE100000000000000;
      v25 = ByteBuffer._setStringSlowpath(_:at:)(v27, v22);
    }

    v24 = v25;

    v28 = *(v2 + 20);
    v13 = __CFADD__(v28, v24);
    v29 = v28 + v24;
    if (v13)
    {
      goto LABEL_24;
    }

    *(v2 + 20) = v29;
  }

  result = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t _s12NIOIMAPCore210IMAPServerV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = *a2;
  v6 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  if (v2 == 1)
  {
    if (v6 == 1)
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (v6 == 1)
  {
LABEL_10:
    sub_10043194C(*a2, *(a2 + 8), v9, v8);
    sub_10043194C(v3, v2, v5, v4);
    sub_100430920(v3, v2, v5, v4);
    v16 = v7;
    v17 = v6;
    v18 = v9;
    v19 = v8;
LABEL_35:
    sub_100430920(v16, v17, v18, v19);
    return 0;
  }

  if (v2)
  {
    if (!v6)
    {
      sub_10043194C(*a2, 0, v9, v8);
      sub_10043194C(v3, v2, v5, v4);
LABEL_34:
      sub_1000C9FC8(v9, v8);
      v16 = v3;
      v17 = v2;
      v18 = v5;
      v19 = v4;
      goto LABEL_35;
    }

    if (v3 != v7 || v2 != v6)
    {
      v20 = a1;
      v21 = a2;
      v22 = sub_1004A6D34();
      a2 = v21;
      v23 = v22;
      a1 = v20;
      if ((v23 & 1) == 0)
      {
        v24 = v7;
        v25 = v6;
        v26 = v9;
        v27 = v8;
LABEL_31:
        sub_10043194C(v24, v25, v26, v27);
        v28 = v3;
        v29 = v2;
        goto LABEL_32;
      }
    }
  }

  else if (v6)
  {
    sub_10043194C(*a2, *(a2 + 8), v9, v8);
    v28 = v3;
    v29 = 0;
LABEL_32:
    v36 = v5;
    v37 = v4;
LABEL_33:
    sub_10043194C(v28, v29, v36, v37);

    goto LABEL_34;
  }

  if (v4 == 1)
  {
    if (v8 != 1)
    {
      sub_10043194C(v7, v6, v9, v8);
      v28 = v3;
      v29 = v2;
      v36 = v5;
      v37 = 1;
      goto LABEL_33;
    }

    v30 = a2;
    v31 = a1;
    sub_10043194C(v7, v6, v9, 1);
    v32 = v3;
    v33 = v2;
    v34 = v5;
    v35 = 1;
    goto LABEL_26;
  }

  if (v8 == 1)
  {
    v24 = v7;
    v25 = v6;
    v26 = v9;
    v27 = 1;
    goto LABEL_31;
  }

  if (!v4)
  {
    if (v8)
    {
      sub_10043194C(v7, v6, v9, v8);
      v28 = v3;
      v29 = v2;
      v36 = v5;
      v37 = 0;
      goto LABEL_33;
    }

    v30 = a2;
    v31 = a1;
    sub_10043194C(v7, v6, v9, 0);
    v32 = v3;
    v33 = v2;
    v34 = v5;
    v35 = 0;
    goto LABEL_26;
  }

  if (!v8)
  {
    v24 = v7;
    v25 = v6;
    v26 = v9;
    v27 = 0;
    goto LABEL_31;
  }

  v30 = a2;
  v31 = a1;
  if (v5 == v9 && v4 == v8)
  {
    sub_10043194C(v7, v6, v5, v4);
    v32 = v3;
    v33 = v2;
    v34 = v5;
    v35 = v4;
LABEL_26:
    sub_10043194C(v32, v33, v34, v35);

    goto LABEL_27;
  }

  v39 = sub_1004A6D34();
  sub_10043194C(v7, v6, v9, v8);
  sub_10043194C(v3, v2, v5, v4);

  if ((v39 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_27:
  sub_1000C9FC8(v9, v8);
  sub_100430920(v3, v2, v5, v4);
  a1 = v31;
  a2 = v30;
LABEL_3:
  if (a1[4] == *(a2 + 32) && a1[5] == *(a2 + 40) || (v10 = a1, v11 = a2, v12 = sub_1004A6D34(), a2 = v11, v13 = v12, a1 = v10, v14 = 0, (v13 & 1) != 0))
  {
    v15 = *(a2 + 56);
    if (a1[7])
    {
      if ((*(a2 + 56) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (a1[6] != *(a2 + 48))
      {
        v15 = 1;
      }

      if (v15)
      {
        return 0;
      }
    }

    return 1;
  }

  return v14;
}

unint64_t sub_1004321A8()
{
  result = qword_1005DC898;
  if (!qword_1005DC898)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IMAPServer, &type metadata for IMAPServer, v0, v1);
    atomic_store(result, &qword_1005DC898);
  }

  return result;
}

uint64_t sub_1004321FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100432244(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double IMAPURL.init(server:query:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_100395528(v33);
  v30 = v33[9];
  v31 = v33[10];
  v32 = v33[11];
  v26 = v33[5];
  v27 = v33[6];
  v28 = v33[7];
  v29 = v33[8];
  v22 = v33[1];
  v23 = v33[2];
  v24 = v33[3];
  v25 = v33[4];
  v6 = a1[1];
  v18 = *a1;
  v19 = v6;
  v7 = a1[2];
  v21 = v33[0];
  *v20 = v7;
  *&v20[9] = *(a1 + 41);
  sub_100432440(a2, &v21);
  v46 = v29;
  v47 = v30;
  v48 = v31;
  v49 = v32;
  v42 = v25;
  v43 = v26;
  v44 = v27;
  v45 = v28;
  v38 = v21;
  v39 = v22;
  v40 = v23;
  v41 = v24;
  v34 = v18;
  v35 = v19;
  v36 = *v20;
  v37 = *&v20[16];
  v50[12] = v29;
  v50[13] = v30;
  v50[14] = v31;
  v50[15] = v32;
  v50[8] = v25;
  v50[9] = v26;
  v50[10] = v27;
  v50[11] = v28;
  v50[3] = *&v20[16];
  v50[4] = v21;
  v50[5] = v22;
  v50[6] = v23;
  v50[7] = v24;
  v50[0] = v18;
  v50[1] = v19;
  v50[2] = *v20;
  sub_10042ECA8(&v34, &v17);
  sub_10042ED04(v50);
  v8 = v47;
  a3[12] = v46;
  a3[13] = v8;
  v9 = v49;
  a3[14] = v48;
  a3[15] = v9;
  v10 = v43;
  a3[8] = v42;
  a3[9] = v10;
  v11 = v45;
  a3[10] = v44;
  a3[11] = v11;
  v12 = v39;
  a3[4] = v38;
  a3[5] = v12;
  v13 = v41;
  a3[6] = v40;
  a3[7] = v13;
  v14 = v35;
  *a3 = v34;
  a3[1] = v14;
  result = *&v36;
  v16 = v37;
  a3[2] = v36;
  a3[3] = v16;
  return result;
}

uint64_t sub_100432440(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005DC860, &qword_100504BB8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10043252C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005DC860, &qword_100504BB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void IMAPURL.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  if (v3 == 1)
  {
    goto LABEL_4;
  }

  v6 = *(v1 + 24);
  sub_1004A6EC4(1u);
  if (!v3)
  {
    sub_1004A6EC4(0);
    if (v6 == 1)
    {
      goto LABEL_4;
    }

LABEL_12:
    sub_1004A6EC4(1u);
    if (v6)
    {
      sub_1004A6EB4(1uLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      sub_1004A6EB4(0);
    }

    goto LABEL_5;
  }

  sub_1004A6EC4(1u);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v6 != 1)
  {
    goto LABEL_12;
  }

LABEL_4:
  sub_1004A6EC4(0);
LABEL_5:
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v5)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v4);
  }

  v7 = *(v1 + 208);
  v19[8] = *(v1 + 192);
  v19[9] = v7;
  v8 = *(v1 + 240);
  v19[10] = *(v1 + 224);
  v19[11] = v8;
  v9 = *(v1 + 144);
  v19[4] = *(v1 + 128);
  v19[5] = v9;
  v10 = *(v1 + 176);
  v19[6] = *(v1 + 160);
  v19[7] = v10;
  v11 = *(v1 + 80);
  v19[0] = *(v1 + 64);
  v19[1] = v11;
  v12 = *(v1 + 112);
  v19[2] = *(v1 + 96);
  v19[3] = v12;
  if (sub_100432EB0(v19) == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    v13 = *(v1 + 208);
    v19[20] = *(v1 + 192);
    v19[21] = v13;
    v14 = *(v1 + 240);
    v19[22] = *(v1 + 224);
    v19[23] = v14;
    v15 = *(v1 + 144);
    v19[16] = *(v1 + 128);
    v19[17] = v15;
    v16 = *(v1 + 176);
    v19[18] = *(v1 + 160);
    v19[19] = v16;
    v17 = *(v1 + 80);
    v19[12] = *(v1 + 64);
    v19[13] = v17;
    v18 = *(v1 + 112);
    v19[14] = *(v1 + 96);
    v19[15] = v18;
    sub_1004A6EC4(1u);
    URLCommand.hash(into:)(a1);
  }
}

Swift::Int IMAPURL.hashValue.getter()
{
  sub_1004A6E94();
  IMAPURL.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_1004327C0(uint64_t a1)
{
  sub_1004A6E94();
  IMAPURL.hash(into:)(v2);
  return sub_1004A6F14();
}

BOOL sub_1004327FC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[13];
  v19[12] = a1[12];
  v19[13] = v2;
  v3 = a1[15];
  v19[14] = a1[14];
  v19[15] = v3;
  v4 = a1[9];
  v19[8] = a1[8];
  v19[9] = v4;
  v5 = a1[11];
  v19[10] = a1[10];
  v19[11] = v5;
  v6 = a1[5];
  v19[4] = a1[4];
  v19[5] = v6;
  v7 = a1[7];
  v19[6] = a1[6];
  v19[7] = v7;
  v8 = a1[1];
  v19[0] = *a1;
  v19[1] = v8;
  v9 = a1[3];
  v19[2] = a1[2];
  v19[3] = v9;
  v10 = a2[13];
  v20[12] = a2[12];
  v20[13] = v10;
  v11 = a2[15];
  v20[14] = a2[14];
  v20[15] = v11;
  v12 = a2[9];
  v20[8] = a2[8];
  v20[9] = v12;
  v13 = a2[11];
  v20[10] = a2[10];
  v20[11] = v13;
  v14 = a2[5];
  v20[4] = a2[4];
  v20[5] = v14;
  v15 = a2[7];
  v20[6] = a2[6];
  v20[7] = v15;
  v16 = a2[1];
  v20[0] = *a2;
  v20[1] = v16;
  v17 = a2[3];
  v20[2] = a2[2];
  v20[3] = v17;
  return _s12NIOIMAPCore27IMAPURLV23__derived_struct_equalsySbAC_ACtFZ_0(v19, v20);
}

uint64_t sub_1004328B0(_OWORD *a1)
{
  v3 = *(v1 + 20);
  result = sub_1002F178C(0x2F2F3A70616D69uLL, 0xE700000000000000, v1 + 8, v3);
  if (v5)
  {
    v6._countAndFlagsBits = 0x2F2F3A70616D69;
    v6._object = 0xE700000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v6, v3);
  }

  v7 = result;
  v8 = *(v1 + 20);
  v9 = __CFADD__(v8, result);
  v10 = v8 + result;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  *(v1 + 20) = v10;
  v11 = a1[1];
  v34[0] = *a1;
  v34[1] = v11;
  v35[0] = a1[2];
  *(v35 + 9) = *(a1 + 41);
  result = sub_100431BE4(v34);
  v12 = v7 + result;
  if (__OFADD__(v7, result))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = *(v1 + 20);
  result = sub_1002F178C(0x2FuLL, 0xE100000000000000, v1 + 8, v13);
  if (v14)
  {
    v15._countAndFlagsBits = 47;
    v15._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v1 + 20);
  v9 = __CFADD__(v16, result);
  v17 = v16 + result;
  if (v9)
  {
    goto LABEL_16;
  }

  *(v1 + 20) = v17;
  v18 = v12 + result;
  if (__OFADD__(v12, result))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v19 = a1[13];
  v33[8] = a1[12];
  v33[9] = v19;
  v20 = a1[15];
  v33[10] = a1[14];
  v33[11] = v20;
  v21 = a1[9];
  v33[4] = a1[8];
  v33[5] = v21;
  v22 = a1[11];
  v33[6] = a1[10];
  v33[7] = v22;
  v23 = a1[5];
  v33[0] = a1[4];
  v33[1] = v23;
  v24 = a1[7];
  v33[2] = a1[6];
  v33[3] = v24;
  if (sub_100432EB0(v33) == 1)
  {
    v25 = 0;
  }

  else
  {
    v26 = a1[13];
    v36[8] = a1[12];
    v36[9] = v26;
    v27 = a1[15];
    v36[10] = a1[14];
    v36[11] = v27;
    v28 = a1[9];
    v36[4] = a1[8];
    v36[5] = v28;
    v29 = a1[11];
    v36[6] = a1[10];
    v36[7] = v29;
    v30 = a1[5];
    v36[0] = a1[4];
    v36[1] = v30;
    v31 = a1[7];
    v36[2] = a1[6];
    v36[3] = v31;
    v25 = sub_1004A2080(v36);
  }

  v32 = __OFADD__(v18, v25);
  result = v18 + v25;
  if (v32)
  {
    goto LABEL_18;
  }

  return result;
}

BOOL _s12NIOIMAPCore27IMAPURLV23__derived_struct_equalsySbAC_ACtFZ_0(_OWORD *a1, _OWORD *a2)
{
  v4 = a1[1];
  v123[0] = *a1;
  v123[1] = v4;
  v124[0] = a1[2];
  *(v124 + 9) = *(a1 + 41);
  v5 = a2[1];
  v121[0] = *a2;
  v121[1] = v5;
  v122[0] = a2[2];
  *(v122 + 9) = *(a2 + 41);
  if ((_s12NIOIMAPCore210IMAPServerV23__derived_struct_equalsySbAC_ACtFZ_0(v123, v121) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[13];
  v7 = a1[11];
  v117 = a1[12];
  v118 = v6;
  v8 = a1[13];
  v9 = a1[15];
  v119 = a1[14];
  v120 = v9;
  v10 = a1[9];
  v11 = a1[7];
  v113 = a1[8];
  v114 = v10;
  v12 = a1[9];
  v13 = a1[11];
  v115 = a1[10];
  v116 = v13;
  v14 = a1[5];
  v110[0] = a1[4];
  v110[1] = v14;
  v15 = a1[7];
  v16 = a1[4];
  v17 = a1[5];
  v111 = a1[6];
  v112 = v15;
  v18 = a2[13];
  v19 = a2[11];
  v106 = a2[12];
  v107 = v18;
  v20 = a2[13];
  v21 = a2[15];
  v108 = a2[14];
  v109 = v21;
  v22 = a2[9];
  v23 = a2[7];
  v102 = a2[8];
  v103 = v22;
  v24 = a2[9];
  v25 = a2[11];
  v104 = a2[10];
  v105 = v25;
  v26 = a2[5];
  v99[0] = a2[4];
  v99[1] = v26;
  v27 = a2[7];
  v29 = a2[4];
  v28 = a2[5];
  v100 = a2[6];
  v101 = v27;
  v30 = a1[13];
  __src[8] = a1[12];
  __src[9] = v30;
  v31 = a1[15];
  __src[10] = a1[14];
  __src[11] = v31;
  v32 = a1[9];
  __src[4] = a1[8];
  __src[5] = v32;
  v33 = a1[11];
  __src[6] = a1[10];
  __src[7] = v33;
  v34 = a1[5];
  __src[0] = a1[4];
  __src[1] = v34;
  v35 = a1[7];
  __src[2] = a1[6];
  __src[3] = v35;
  __src[20] = v106;
  __src[21] = v20;
  v36 = a2[15];
  __src[22] = v108;
  __src[23] = v36;
  __src[16] = v102;
  __src[17] = v24;
  __src[18] = v104;
  __src[19] = v19;
  __src[12] = v29;
  __src[13] = v28;
  __src[14] = v100;
  __src[15] = v23;
  v98[8] = v117;
  v98[9] = v8;
  v37 = a1[15];
  v98[10] = v119;
  v98[11] = v37;
  v98[4] = v113;
  v98[5] = v12;
  v98[6] = v115;
  v98[7] = v7;
  v98[0] = v16;
  v98[1] = v17;
  v98[2] = v111;
  v98[3] = v11;
  if (sub_100432EB0(v98) != 1)
  {
    v50 = a2[13];
    v95[8] = a2[12];
    v95[9] = v50;
    v51 = a2[15];
    v95[10] = a2[14];
    v95[11] = v51;
    v52 = a2[9];
    v95[4] = a2[8];
    v95[5] = v52;
    v53 = a2[11];
    v95[6] = a2[10];
    v95[7] = v53;
    v54 = a2[5];
    v95[0] = a2[4];
    v95[1] = v54;
    v55 = a2[7];
    v95[2] = a2[6];
    v95[3] = v55;
    if (sub_100432EB0(v95) != 1)
    {
      v57 = a2[13];
      v58 = a2[11];
      v90 = a2[12];
      v91 = v57;
      v59 = a2[13];
      v60 = a2[15];
      v92 = a2[14];
      v93 = v60;
      v61 = a2[9];
      v62 = a2[7];
      v86 = a2[8];
      v87 = v61;
      v63 = a2[9];
      v64 = a2[11];
      v88 = a2[10];
      v89 = v64;
      v65 = a2[5];
      v83[0] = a2[4];
      v83[1] = v65;
      v66 = a2[7];
      v68 = a2[4];
      v67 = a2[5];
      v84 = a2[6];
      v85 = v66;
      __dst[8] = v90;
      __dst[9] = v59;
      v69 = a2[15];
      __dst[10] = v92;
      __dst[11] = v69;
      __dst[4] = v86;
      __dst[5] = v63;
      __dst[6] = v88;
      __dst[7] = v58;
      __dst[0] = v68;
      __dst[1] = v67;
      __dst[2] = v84;
      __dst[3] = v62;
      v70 = a1[13];
      v133 = a1[12];
      v134 = v70;
      v71 = a1[15];
      v135 = a1[14];
      v136 = v71;
      v72 = a1[9];
      v129 = a1[8];
      v130 = v72;
      v73 = a1[11];
      v131 = a1[10];
      v132 = v73;
      v74 = a1[5];
      v125 = a1[4];
      v126 = v74;
      v75 = a1[7];
      v127 = a1[6];
      v128 = v75;
      sub_10043252C(v110, v94);
      sub_10043252C(v99, v94);
      v76 = _s12NIOIMAPCore210URLCommandO21__derived_enum_equalsySbAC_ACtFZ_0(&v125, __dst);
      sub_100025F40(v83, &qword_1005DC860, &qword_100504BB8);
      v77 = a1[13];
      v94[8] = a1[12];
      v94[9] = v77;
      v78 = a1[15];
      v94[10] = a1[14];
      v94[11] = v78;
      v79 = a1[9];
      v94[4] = a1[8];
      v94[5] = v79;
      v80 = a1[11];
      v94[6] = a1[10];
      v94[7] = v80;
      v81 = a1[5];
      v94[0] = a1[4];
      v94[1] = v81;
      v82 = a1[7];
      v94[2] = a1[6];
      v94[3] = v82;
      sub_100025F40(v94, &qword_1005DC860, &qword_100504BB8);
      return (v76 & 1) != 0;
    }

LABEL_6:
    memcpy(__dst, __src, sizeof(__dst));
    sub_10043252C(v110, &v125);
    sub_10043252C(v99, &v125);
    sub_100025F40(__dst, &qword_1005DC8A8, &unk_100505000);
    return 0;
  }

  v38 = a2[13];
  __dst[8] = a2[12];
  __dst[9] = v38;
  v39 = a2[15];
  __dst[10] = a2[14];
  __dst[11] = v39;
  v40 = a2[9];
  __dst[4] = a2[8];
  __dst[5] = v40;
  v41 = a2[11];
  __dst[6] = a2[10];
  __dst[7] = v41;
  v42 = a2[5];
  __dst[0] = a2[4];
  __dst[1] = v42;
  v43 = a2[7];
  __dst[2] = a2[6];
  __dst[3] = v43;
  if (sub_100432EB0(__dst) != 1)
  {
    goto LABEL_6;
  }

  v44 = a1[13];
  v133 = a1[12];
  v134 = v44;
  v45 = a1[15];
  v135 = a1[14];
  v136 = v45;
  v46 = a1[9];
  v129 = a1[8];
  v130 = v46;
  v47 = a1[11];
  v131 = a1[10];
  v132 = v47;
  v48 = a1[5];
  v125 = a1[4];
  v126 = v48;
  v49 = a1[7];
  v127 = a1[6];
  v128 = v49;
  sub_10043252C(v110, v95);
  sub_10043252C(v99, v95);
  sub_100025F40(&v125, &qword_1005DC860, &qword_100504BB8);
  return 1;
}

uint64_t sub_100432EB0(uint64_t a1)
{
  v1 = (*(a1 + 16) >> 33) & 0x7FFFFFFF | ((*(a1 + 64) >> 9) << 31);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100432ED8()
{
  result = qword_1005DC8A0;
  if (!qword_1005DC8A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IMAPURL, &type metadata for IMAPURL, v0, v1);
    atomic_store(result, &qword_1005DC8A0);
  }

  return result;
}

uint64_t sub_100432F2C(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100432F50(uint64_t a1)
{
  v1 = (*(a1 + 16) >> 33) & 0x7FFFFFFF | ((*(a1 + 64) >> 9) << 31);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100432F74(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v13;
  *(a1 + 192) = result;
  *(a1 + 208) = v12;
  return result;
}

uint64_t sub_100432FB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 256))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100433000(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 256) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static IMAPURLAuthenticationMechanism.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 != a3 || a2 != a4)
      {
        return sub_1004A6D34();
      }

      return 1;
    }

    return 0;
  }

  return !a4;
}

void IMAPURLAuthenticationMechanism.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1004A6EB4(1uLL);

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EB4(0);
  }
}

Swift::Int IMAPURLAuthenticationMechanism.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1004A6E94();
  if (a2)
  {
    sub_1004A6EB4(1uLL);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EB4(0);
  }

  return sub_1004A6F14();
}

Swift::Int sub_1004331A8()
{
  v1 = *(v0 + 8);
  sub_1004A6E94();
  if (v1)
  {
    sub_1004A6EB4(1uLL);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EB4(0);
  }

  return sub_1004A6F14();
}

void sub_100433218(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_1004A6EB4(1uLL);

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EB4(0);
  }
}

Swift::Int sub_100433290(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1004A6E94();
  if (v2)
  {
    sub_1004A6EB4(1uLL);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EB4(0);
  }

  return sub_1004A6F14();
}

unint64_t sub_100433300()
{
  result = qword_1005DC8B0;
  if (!qword_1005DC8B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IMAPURLAuthenticationMechanism, &type metadata for IMAPURLAuthenticationMechanism, v0, v1);
    atomic_store(result, &qword_1005DC8B0);
  }

  return result;
}

uint64_t sub_100433354(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return sub_1004A6D34();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

uint64_t sub_100433398(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004333E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t *InitialResponse.empty.unsafeMutableAddressor()
{
  if (qword_1005DBB60 != -1)
  {
    swift_once();
  }

  return &static InitialResponse.empty;
}

uint64_t sub_10043349C()
{
  if (qword_1005DB9D0 != -1)
  {
    swift_once();
  }

  static InitialResponse.empty = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  qword_1005DE988 = qword_1005DE390;
  dword_1005DE990 = dword_1005DE398;
  word_1005DE994 = word_1005DE39C;
  byte_1005DE996 = byte_1005DE39E;
}

uint64_t static InitialResponse.empty.getter()
{
  if (qword_1005DBB60 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1004335A4()
{
  result = qword_1005DC8B8;
  if (!qword_1005DC8B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InitialResponse, &type metadata for InitialResponse, v0, v1);
    atomic_store(result, &qword_1005DC8B8);
  }

  return result;
}

NIOIMAPCore2::_UInt24 __swiftcall _UInt24.init(_:)(Swift::UInt32 a1)
{
  v1 = a1 >> 8;
  result._backing._0 = v1;
  return result;
}

uint64_t _UInt24._backing.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 2) = a2;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for _UInt24(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for _UInt24(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 0x1FFFFFF) >> 24)
  {
    v2 = *(a1 + 3);
    if (!*(a1 + 3))
    {
      return 0;
    }
  }

  else
  {
    v2 = *(a1 + 3);
    if (!*(a1 + 3))
    {
      return 0;
    }
  }

  return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 0xFFFFFF;
}

uint64_t storeEnumTagSinglePayload for _UInt24(uint64_t result, int a2, int a3)
{
  if ((a3 + 0x1FFFFFF) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (!a3)
  {
    v3 = 0;
  }

  if (a2)
  {
    *result = a2 - 1;
    *(result + 2) = (a2 - 1) >> 16;
    if (v3)
    {
      v4 = ((a2 - 1) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else if (v3)
  {
    if (v3 == 2)
    {
      *(result + 3) = 0;
    }

    else
    {
      *(result + 3) = 0;
    }
  }

  return result;
}

unint64_t sub_100433888()
{
  result = qword_1005DC8C0;
  if (!qword_1005DC8C0)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for UInt64, &type metadata for UInt64, v0, v1);
    atomic_store(result, &qword_1005DC8C0);
  }

  return result;
}

void *sub_1004338EC(unint64_t a1)
{
  result = ServerMessageDate.components.getter(a1, &v30);
  if ((v31 - 1) > 0xB)
  {
    goto LABEL_23;
  }

  v3 = v32;
  v4 = v33;
  v5 = v34;
  v29 = v35;
  v6 = *&aJan_0[8 * v31 - 8];
  v36._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v36);

  v37._countAndFlagsBits = 45;
  v37._object = 0xE100000000000000;
  sub_1004A5994(v37);
  v38._countAndFlagsBits = v6;
  v38._object = 0xE300000000000000;
  sub_1004A5994(v38);

  v39._countAndFlagsBits = 45;
  v39._object = 0xE100000000000000;
  sub_1004A5994(v39);
  v40._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v40);

  v41._countAndFlagsBits = 32;
  v41._object = 0xE100000000000000;
  sub_1004A5994(v41);
  v7 = *(v1 + 20);
  v8 = sub_1002F178C(0x22uLL, 0xE100000000000000, v1 + 8, v7);
  if (v9)
  {
    v10._countAndFlagsBits = 34;
    v10._object = 0xE100000000000000;
    v8 = ByteBuffer._setStringSlowpath(_:at:)(v10, v7);
  }

  v11 = v8;

  v12 = *(v1 + 20);
  v13 = __CFADD__(v12, v11);
  v14 = v12 + v11;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  *(v1 + 20) = v14;
  result = sub_100433D60(v3, v4, v5);
  v15 = result + v11;
  if (__OFADD__(v11, result))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = *(v1 + 20);
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, v1 + 8, v16);
  if (v17)
  {
    v18._countAndFlagsBits = 32;
    v18._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v18, v16);
  }

  v19 = *(v1 + 20);
  v13 = __CFADD__(v19, result);
  v20 = v19 + result;
  if (v13)
  {
    goto LABEL_18;
  }

  *(v1 + 20) = v20;
  v21 = __OFADD__(v15, result);
  v22 = result + v15;
  if (v21)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = sub_100433FB0(v29);
  v23 = result + v22;
  if (__OFADD__(v22, result))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v24 = *(v1 + 20);
  result = sub_1002F178C(0x22uLL, 0xE100000000000000, v1 + 8, v24);
  if (v25)
  {
    v26._countAndFlagsBits = 34;
    v26._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v26, v24);
  }

  v27 = *(v1 + 20);
  v13 = __CFADD__(v27, result);
  v28 = v27 + result;
  if (v13)
  {
    goto LABEL_21;
  }

  *(v1 + 20) = v28;
  v21 = __OFADD__(v23, result);
  result = (result + v23);
  if (v21)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  return result;
}

void __swiftcall ServerMessageDate.Components.init(year:month:day:hour:minute:second:timeZoneMinutes:)(NIOIMAPCore2::ServerMessageDate::Components_optional *__return_ptr retstr, Swift::Int year, Swift::Int month, Swift::Int day, Swift::Int hour, Swift::Int minute, Swift::Int second, Swift::Int timeZoneMinutes)
{
  if ((day - 32) < 0xFFFFFFFFFFFFFFE1 || (month - 13) < 0xFFFFFFFFFFFFFFF4 || hour > 0x17 || minute > 0x3B || second > 0x3C || (timeZoneMinutes - 1441) < 0xFFFFFFFFFFFFF4BFLL || (year - 0x10000) < 0xFFFFFFFFFFFF0001)
  {
    year = 0;
    month = 0;
    day = 0;
    hour = 0;
    minute = 0;
    second = 0;
    timeZoneMinutes = 0;
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  retstr->value.year = year;
  retstr->value.month = month;
  retstr->value.day = day;
  retstr->value.hour = hour;
  retstr->value.minute = minute;
  retstr->value.second = second;
  retstr->value.zoneMinutes = timeZoneMinutes;
  retstr->is_nil = v8;
}

unint64_t ServerMessageDate.components.getter@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  v2 = result >> 5;
  if (result / 0x5F0A570060 == 0xFFFF * (((67109889 * (result / 0x5F0A570060)) >> 32) >> 10) || ((v3 = result & 0x1F, v4 = v2 - 13 * ((v2 * 0x13B13B13B13B13B2uLL) >> 64), v5 = result / 0x1A0 - 61 * ((result / 0x1A0 * 0x4325C53EF368EB1uLL) >> 64), v6 = result / 0x6320 - 61 * ((result / 0x6320 * 0x4325C53EF368EB1uLL) >> 64), v6 <= 0x3B) ? (v7 = v5 > 0x17) : (v7 = 1), !v7 ? (v8 = v3 == 0) : (v8 = 1), !v8 ? (v9 = v2 == 13 * ((v2 * 0x13B13B13B13B13B2uLL) >> 64)) : (v9 = 1), v9))
  {
    __break(1u);
  }

  else
  {
    if (-1431655765 * (result / 0x1FAE1D0020) < 0x55555556)
    {
      v10 = result / 0x5A0CC20 - 1441 * ((result / 0x5A0CC20 * 0x2D7AC25A9A8F31uLL) >> 64);
    }

    else
    {
      v10 = 1441 * ((result / 0x5A0CC20 * 0x2D7AC25A9A8F31uLL) >> 64) - result / 0x5A0CC20;
    }

    *a2 = result / 0x5F0A570060 - 0xFFFF * (((67109889 * (result / 0x5F0A570060)) >> 32) >> 10);
    a2[1] = v4;
    a2[2] = v3;
    a2[3] = v5;
    a2[4] = v6;
    a2[5] = result / 0x179EA0 - 61 * ((result / 0x179EA0 * 0x4325C53EF368EB1uLL) >> 64);
    a2[6] = v10;
  }

  return result;
}

unint64_t sub_100433D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1 <= 9)
  {
    v25._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v25);

    v7 = 48;
    v8 = 0xE100000000000000;
    if (a2 > 9)
    {
      goto LABEL_3;
    }

LABEL_6:
    v26._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v26);

    v9 = 48;
    v11 = 0xE100000000000000;
    if (a3 > 9)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v7 = sub_1004A6CE4();
  v8 = v15;
  if (a2 <= 9)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = sub_1004A6CE4();
  v11 = v10;
  if (a3 > 9)
  {
LABEL_4:
    v12 = sub_1004A6CE4();
    v14 = v13;
    goto LABEL_8;
  }

LABEL_7:
  v27._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v27);

  v12 = 48;
  v14 = 0xE100000000000000;
LABEL_8:
  v28._countAndFlagsBits = 58;
  v28._object = 0xE100000000000000;
  sub_1004A5994(v28);
  v29._countAndFlagsBits = v9;
  v29._object = v11;
  sub_1004A5994(v29);

  v30._countAndFlagsBits = 58;
  v30._object = 0xE100000000000000;
  sub_1004A5994(v30);
  v31._countAndFlagsBits = v12;
  v31._object = v14;
  sub_1004A5994(v31);

  v16 = *(v3 + 20);
  v17 = sub_1002F178C(v7, v8, v3 + 8, v16);
  if (v18)
  {
    v19._countAndFlagsBits = v7;
    v19._object = v8;
    v17 = ByteBuffer._setStringSlowpath(_:at:)(v19, v16);
  }

  v20 = v17;

  v22 = *(v4 + 20);
  v23 = __CFADD__(v22, v20);
  v24 = v22 + v20;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 20) = v24;
    return v20;
  }

  return result;
}

unint64_t sub_100433FB0(unint64_t result)
{
  v2 = v1;
  v3 = result;
  v4 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    v4 = -result;
    if (__OFSUB__(0, result))
    {
      goto LABEL_20;
    }
  }

  v5 = v4 % 60;
  v6 = __OFSUB__(v4, v4 % 60);
  v7 = v4 - v4 % 60;
  if (v6)
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7 / 60;
  v9 = 100 * (v7 / 60);
  if ((v8 * 100) >> 64 != v9 >> 63)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (__OFADD__(v9, v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = sub_1004A6CE4();
  v12 = v11;
  if (sub_1004A5924() > 3)
  {
    goto LABEL_9;
  }

  sub_1004A5874(4);
  result = sub_1004A5924();
  v13 = 4 - result;
  if (!__OFSUB__(4, result))
  {
    v24._countAndFlagsBits = 48;
    v24._object = 0xE100000000000000;
    v25._countAndFlagsBits = sub_1004A5A74(v24, v13);
    sub_1004A5974(v25);

    v26._countAndFlagsBits = v10;
    v26._object = v12;
    sub_1004A5994(v26);

    v10 = 0;
    v12 = 0xE000000000000000;
LABEL_9:
    v14 = 43;
    if (v3 < 0)
    {
      v14 = 45;
    }

    v23 = v14;
    v27._countAndFlagsBits = v10;
    v27._object = v12;
    sub_1004A5994(v27);

    v15 = *(v1 + 20);
    v16 = sub_1002F178C(v23, 0xE100000000000000, v1 + 8, v15);
    if (v17)
    {
      v18._countAndFlagsBits = v23;
      v18._object = 0xE100000000000000;
      v16 = ByteBuffer._setStringSlowpath(_:at:)(v18, v15);
    }

    v19 = v16;

    v20 = *(v2 + 20);
    v21 = __CFADD__(v20, v19);
    v22 = v20 + v19;
    if (!v21)
    {
      *(v2 + 20) = v22;
      return v19;
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t *_s12NIOIMAPCore217ServerMessageDateVyA2C10ComponentsVcfC_0(unint64_t *result)
{
  v1 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v1 >> 16)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v2 = result[6];
  v3 = v2;
  if ((v2 & 0x8000000000000000) != 0)
  {
    v3 = -v2;
    if (__OFSUB__(0, v2))
    {
      goto LABEL_22;
    }
  }

  if (v3 >= 0x10000)
  {
    goto LABEL_15;
  }

  v4 = result[5];
  if (v4 > 255)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = result[4];
  if (v5 > 255)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = result[3];
  if (v6 > 255)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result[1];
  if (v7 > 255)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = result[2];
  if (((v4 | v3 | v5 | v6 | v7 | v8) & 0x8000000000000000) == 0)
  {
    if (v8 <= 255)
    {
      return (32 * (13 * (61 * (61 * (61 * (1441 * (3 * v1 + (v2 >> 63)) + v3) + v4) + v5) + v6) + v7) + v8);
    }

    goto LABEL_21;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

unint64_t sub_10043427C()
{
  result = qword_1005DC8C8;
  if (!qword_1005DC8C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ServerMessageDate, &type metadata for ServerMessageDate, v0, v1);
    atomic_store(result, &qword_1005DC8C8);
  }

  return result;
}

uint64_t sub_1004342E0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100434300(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 56) = v3;
  return result;
}

unint64_t sub_10043434C()
{
  result = qword_1005DC8D0;
  if (!qword_1005DC8D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InternetMessageDate, &type metadata for InternetMessageDate, v0, v1);
    atomic_store(result, &qword_1005DC8D0);
  }

  return result;
}

unint64_t sub_1004343A4()
{
  result = qword_1005DC8D8;
  if (!qword_1005DC8D8)
  {
    result = swift_getWitnessTable("I0\b", &type metadata for InternetMessageDate, v0, v1);
    atomic_store(result, &qword_1005DC8D8);
  }

  return result;
}

unint64_t sub_1004343FC()
{
  result = qword_1005DC8E0;
  if (!qword_1005DC8E0)
  {
    result = swift_getWitnessTable("10\b", &type metadata for InternetMessageDate, v0, v1);
    atomic_store(result, &qword_1005DC8E0);
  }

  return result;
}

unint64_t sub_100434480(int a1)
{
  v2 = v1;
  v12._countAndFlagsBits = 0x3D4449553B2FLL;
  v12._object = 0xE600000000000000;
  sub_1004A5994(v12);
  sub_1004A6934();
  v3 = *(v1 + 20);
  v4 = sub_1002F178C(0, 0xE000000000000000, v2 + 8, *(v2 + 20));
  if (v5)
  {
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    v4 = ByteBuffer._setStringSlowpath(_:at:)(v6, v3);
  }

  v7 = v4;

  v9 = *(v2 + 20);
  v10 = __CFADD__(v9, v7);
  v11 = v9 + v7;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 20) = v11;
    return v7;
  }

  return result;
}

unint64_t sub_100434564()
{
  result = qword_1005DC8E8[0];
  if (!qword_1005DC8E8[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IUID, &type metadata for IUID, v0, v1);
    atomic_store(result, qword_1005DC8E8);
  }

  return result;
}

uint64_t KeyValue.init(key:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for KeyValue(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t static KeyValue.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_1004A5724())
  {
    v12[0] = a3;
    v12[1] = a4;
    v12[2] = a5;
    v12[3] = a6;
    type metadata accessor for KeyValue(0, v12);
    v10 = sub_1004A5724();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

Swift::Int KeyValue.hashValue.getter(void *a1)
{
  sub_1004A6E94();
  KeyValue.hash(into:)(v3, a1);
  return sub_1004A6F14();
}

Swift::Int sub_1004348F0(uint64_t a1, void *a2)
{
  sub_1004A6E94();
  KeyValue.hash(into:)(v4, a2);
  return sub_1004A6F14();
}

uint64_t sub_100434960(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1004349EC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_100434BC8(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

void BodyStructure.LanguageLocation.location.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100051690(v3[1], v3[2], v3[3]);
  v3[1] = a1;
  v3[2] = a2;
  v3[3] = a3;
}

void BodyStructure.LanguageLocation.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  sub_1004A6EB4(v8);
  if (v8)
  {
    v9 = a2 + 40;
    do
    {

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v9 += 16;
      --v8;
    }

    while (v8);
  }

  if (a5)
  {
    sub_1004A6EC4(1u);
    if (a4)
    {
      sub_1004A6EC4(1u);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      sub_1004A6EC4(0);
    }

    v10 = *(a5 + 16);
    sub_1004A6EB4(v10);
    if (v10)
    {
      v11 = (a5 + 55);
      do
      {
        v12 = *(v11 - 23);
        if (*v11)
        {
          sub_1004A6EB4(1uLL);
          sub_1004A6EB4(v12);
        }

        else
        {
          sub_1004A6EB4(0);
          if (v12)
          {
            sub_1004A6EC4(1u);
            swift_beginAccess();
            sub_1004A6EA4();
          }

          else
          {
            sub_1004A6EC4(0);
          }
        }

        v11 += 24;
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    sub_1004A6EC4(0);
  }
}

Swift::Int BodyStructure.LanguageLocation.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1004A6E94();
  v7 = *(a1 + 16);
  sub_1004A6EB4(v7);
  if (v7)
  {
    v8 = a1 + 40;
    do
    {

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v8 += 16;
      --v7;
    }

    while (v7);
  }

  if (a4)
  {
    sub_1004A6EC4(1u);
    if (a3)
    {
      sub_1004A6EC4(1u);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      sub_1004A6EC4(0);
    }

    v9 = *(a4 + 16);
    sub_1004A6EB4(v9);
    if (v9)
    {
      v10 = (a4 + 55);
      do
      {
        v11 = *(v10 - 23);
        if (*v10)
        {
          sub_1004A6EB4(1uLL);
          sub_1004A6EB4(v11);
        }

        else
        {
          sub_1004A6EB4(0);
          if (v11)
          {
            sub_1004A6EC4(1u);
            swift_beginAccess();
            sub_1004A6EA4();
          }

          else
          {
            sub_1004A6EC4(0);
          }
        }

        v10 += 24;
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    sub_1004A6EC4(0);
  }

  return sub_1004A6F14();
}

Swift::Int sub_100435270(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  sub_1004A6E94();
  BodyStructure.LanguageLocation.hash(into:)(v7, v2, v3, v5, v4);
  return sub_1004A6F14();
}

BOOL _s12NIOIMAPCore213BodyStructureO16LanguageLocationV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((sub_10020FB40(a1, a5) & 1) == 0)
  {
    return 0;
  }

  if (a4)
  {
    if (a8)
    {
      if (!a3)
      {
        if (!a7)
        {
          goto LABEL_9;
        }

LABEL_14:
        sub_1003E25F0(a6, a7, a8);

        return 0;
      }

      if (a7)
      {
        if (a2 == a6 && a3 == a7 || (sub_1004A6D34() & 1) != 0)
        {
LABEL_9:

          v14 = sub_10039ED48(a4, a8);

          return (v14 & 1) != 0;
        }

        goto LABEL_14;
      }
    }
  }

  else if (!a8)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1004353E4()
{
  result = qword_1005DC970[0];
  if (!qword_1005DC970[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BodyStructure.LanguageLocation, &type metadata for BodyStructure.LanguageLocation, v0, v1);
    atomic_store(result, qword_1005DC970);
  }

  return result;
}

uint64_t static LastCommandMessageID.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v5 = *(a3 - 8);
  __chkstk_darwin(a1);
  v28 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v7;
  CommandMessageID = type metadata accessor for LastCommandMessageID(0, v8, v7, v7);
  v10 = *(CommandMessageID - 8);
  __chkstk_darwin(CommandMessageID);
  v32 = &v27 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  v14 = __chkstk_darwin(TupleTypeMetadata2);
  v16 = &v27 - v15;
  v18 = *(v17 + 48);
  v30 = v10;
  v19 = *(v10 + 16);
  v19(&v27 - v15, v31, CommandMessageID, v14);
  (v19)(&v16[v18], a2, CommandMessageID);
  v31 = v5;
  v20 = *(v5 + 48);
  if (v20(v16, 1, a3) == 1)
  {
    v21 = 1;
    if (v20(&v16[v18], 1, a3) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    (v19)(v32, v16, CommandMessageID);
    if (v20(&v16[v18], 1, a3) != 1)
    {
      v22 = v31;
      v23 = v28;
      (*(v31 + 32))(v28, &v16[v18], a3);
      v24 = v32;
      v21 = sub_1004A5724();
      v25 = *(v22 + 8);
      v25(v23, a3);
      v25(v24, a3);
LABEL_8:
      v13 = v30;
      goto LABEL_9;
    }

    (*(v31 + 8))(v32, a3);
  }

  v21 = 0;
  CommandMessageID = TupleTypeMetadata2;
LABEL_9:
  (*(v13 + 8))(v16, CommandMessageID);
  return v21 & 1;
}

void LastCommandMessageID.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v12, a2, v8);
  if ((*(v4 + 48))(v10, 1, v3) == 1)
  {
    sub_1004A6EB4(1uLL);
  }

  else
  {
    (*(v4 + 32))(v6, v10, v3);
    sub_1004A6EB4(0);
    sub_1004A5564();
    (*(v4 + 8))(v6, v3);
  }
}

Swift::Int LastCommandMessageID.hashValue.getter(uint64_t a1)
{
  sub_1004A6E94();
  LastCommandMessageID.hash(into:)(v3, a1);
  return sub_1004A6F14();
}

Swift::Int sub_1004359B4(uint64_t a1, uint64_t a2)
{
  sub_1004A6E94();
  LastCommandMessageID.hash(into:)(v4, a2);
  return sub_1004A6F14();
}

uint64_t sub_100435A20(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_100435A7C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_100435BFC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t static LastCommandSet.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a1;
  v7 = type metadata accessor for MessageIdentifierSetNonEmpty(0, a3, a4, a4);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v30[0] = v30 - v9;
  v30[1] = a3;
  v30[2] = a4;
  CommandSet = type metadata accessor for LastCommandSet(0, a3, a4, v10);
  v12 = *(CommandSet - 8);
  __chkstk_darwin(CommandSet);
  v33 = v30 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  v16 = __chkstk_darwin(TupleTypeMetadata2);
  v18 = v30 - v17;
  v20 = *(v19 + 48);
  v31 = v12;
  v21 = *(v12 + 16);
  v21(v30 - v17, v32, CommandSet, v16);
  (v21)(&v18[v20], a2, CommandSet);
  v32 = v8;
  v22 = *(v8 + 48);
  if (v22(v18, 1, v7) == 1)
  {
    v23 = 1;
    if (v22(&v18[v20], 1, v7) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    (v21)(v33, v18, CommandSet);
    if (v22(&v18[v20], 1, v7) != 1)
    {
      v24 = v32;
      v25 = &v18[v20];
      v26 = v30[0];
      (*(v32 + 32))(v30[0], v25, v7);
      v27 = v33;
      v23 = static MessageIdentifierSetNonEmpty.__derived_struct_equals(_:_:)(v33, v26);
      v28 = *(v24 + 8);
      v28(v26, v7);
      v28(v27, v7);
LABEL_8:
      v15 = v31;
      goto LABEL_9;
    }

    (*(v32 + 8))(v33, v7);
  }

  v23 = 0;
  CommandSet = TupleTypeMetadata2;
LABEL_9:
  (*(v15 + 8))(v18, CommandSet);
  return v23 & 1;
}

void LastCommandSet.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = type metadata accessor for MessageIdentifierSetNonEmpty(0, *(a2 + 16), *(a2 + 24), a4);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - v10;
  v13 = __chkstk_darwin(v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v5, a2, v13);
  if ((*(v9 + 48))(v15, 1, v8) == 1)
  {
    sub_1004A6EB4(1uLL);
  }

  else
  {
    (*(v9 + 32))(v11, v15, v8);
    sub_1004A6EB4(0);
    MessageIdentifierSetNonEmpty.hash(into:)(a1, v8, v17, v18);
    (*(v9 + 8))(v11, v8);
  }
}

Swift::Int LastCommandSet.hashValue.getter(uint64_t a1)
{
  sub_1004A6E94();
  LastCommandSet.hash(into:)(v5, a1, v2, v3);
  return sub_1004A6F14();
}

Swift::Int sub_1004363AC(uint64_t a1, uint64_t a2)
{
  sub_1004A6E94();
  LastCommandSet.hash(into:)(v6, a2, v3, v4);
  return sub_1004A6F14();
}

uint64_t static LastCommandSet.range(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v9 = type metadata accessor for MessageIdentifierRange(0, a2, a3, a5);
  v10 = __chkstk_darwin(v9);
  v12 = &v18 - v11;
  (*(v13 + 16))(&v18 - v11, a1, v10);
  MessageIdentifierSetNonEmpty.init(range:)(v12, a2, a3, v14);
  v16 = type metadata accessor for MessageIdentifierSetNonEmpty(0, a2, a3, v15);
  return (*(*(v16 - 8) + 56))(a4, 0, 1, v16);
}

uint64_t sub_100436540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for MessageIdentifierSetNonEmpty(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v4;
}

uint64_t sub_1004365B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for MessageIdentifierSetNonEmpty(0, *(a3 + 16), *(a3 + 24), a4);
  v7 = (*(*(v6 - 8) + 48))(a1, a2, v6);
  if (v7 >= 2)
  {
    return v7 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100436634(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = (a2 + 1);
  }

  else
  {
    v6 = 0;
  }

  v7 = type metadata accessor for MessageIdentifierSetNonEmpty(0, *(a4 + 16), *(a4 + 24), a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, v6, a3, v7);
}

uint64_t sub_1004366B8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1002F178C(0x204E5255544552uLL, 0xE700000000000000, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 0x204E5255544552;
    v7._object = 0xE700000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *(v1 + 20) = v10;
  result = sub_1002F178C(0x28uLL, 0xE100000000000000, v1 + 8, v10);
  if (v11)
  {
    v12._countAndFlagsBits = 40;
    v12._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v10);
  }

  v13 = *(v1 + 20);
  v14 = (v13 + result);
  if (__CFADD__(v13, result))
  {
    goto LABEL_24;
  }

  *(v1 + 20) = v14;
  v15 = __OFADD__(v8, result);
  v16 = v8 + result;
  if (v15)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v17 = *(a1 + 16);
  if (v17)
  {
    v35 = a1;
    result = sub_1002F178C(0, 0xE000000000000000, v1 + 8, v14);
    if (v18)
    {
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v19, v14);
    }

    v20 = result;
    v21 = *(v2 + 20);
    v22 = __CFADD__(v21, result);
    v23 = v21 + result;
    if (v22)
    {
      goto LABEL_29;
    }

    *(v2 + 20) = v23;
    __chkstk_darwin(result);
    v34[2] = sub_10043691C;
    v34[3] = 0;
    v34[4] = v2;
    v34[5] = &v35;
    v34[6] = 32;
    v34[7] = 0xE100000000000000;
    result = sub_10045297C(0, sub_1004369B4, v34, a1);
    v24 = v20 + result;
    if (__OFADD__(v20, result))
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v25 = *(v2 + 20);
    result = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v25);
    if (v26)
    {
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v27, v25);
    }

    v28 = *(v2 + 20);
    LODWORD(v14) = v28 + result;
    if (__CFADD__(v28, result))
    {
      goto LABEL_31;
    }

    *(v2 + 20) = v14;
    v17 = v24 + result;
    if (__OFADD__(v24, result))
    {
LABEL_32:
      __break(1u);
      return result;
    }
  }

  v15 = __OFADD__(v16, v17);
  v29 = v16 + v17;
  if (v15)
  {
    goto LABEL_26;
  }

  result = sub_1002F178C(0x29uLL, 0xE100000000000000, v2 + 8, v14);
  if (v30)
  {
    v31._countAndFlagsBits = 41;
    v31._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v31, v14);
  }

  v32 = *(v2 + 20);
  v22 = __CFADD__(v32, result);
  v33 = v32 + result;
  if (v22)
  {
    goto LABEL_27;
  }

  *(v2 + 20) = v33;
  v15 = __OFADD__(v29, result);
  result += v29;
  if (v15)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_10043691C(_OWORD *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v2 = a1[3];
  v4[2] = a1[2];
  v4[3] = v2;
  return sub_100486D38(v4);
}

uint64_t sub_10043695C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(__int128 *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X8>, unint64_t a8@<X6>, void *a9@<X7>)
{
  v11 = *a1;
  v12 = *(a2 + 64);
  v13 = *a6;
  v14 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v14;
  v15 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v15;
  v18 = v12;
  result = sub_1004920BC(v11, v17, a3, a4, a5, v13, a8, a9);
  if (!v9)
  {
    *a7 = result;
  }

  return result;
}

BOOL sub_1004369D8(void *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (a1[4])
  {
    if ((a2[4] & 1) == 0)
    {
      return 0;
    }

    v6 = a1[2];
    v7 = a1[3];
    v8 = a2[2];
    v9 = a2[3];
    if (v2 != v4 || v3 != v5)
    {
      v11 = a1;
      v12 = a2;
      v13 = sub_1004A6D34();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    if (v6 != v8 || v7 != v9)
    {
      v16 = a1;
      v17 = a2;
      v18 = sub_1004A6D34();
      a2 = v17;
      v19 = v18;
      a1 = v16;
      if ((v19 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (a2[4])
    {
      return 0;
    }

    if (v2 != v4 || v3 != v5)
    {
      v21 = a1;
      v22 = a2;
      v23 = sub_1004A6D34();
      a2 = v22;
      v24 = v23;
      a1 = v21;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v26 = a1[5];
  v25 = a1[6];
  v27 = a1[7];
  v29 = a2[5];
  v28 = a2[6];
  v30 = a2[7];
  if (HIBYTE(v27) == 255)
  {
    if (HIBYTE(v30) == 255)
    {
      return 1;
    }

    goto LABEL_24;
  }

  if (HIBYTE(v30) == 255)
  {
LABEL_24:
    sub_1003A3378(a1[5], v25, v27);
    sub_1003A3378(v29, v28, v30);
    sub_1003A3390(v26, v25, v27);
    sub_1003A3390(v29, v28, v30);
    return 0;
  }

  if ((v27 & 0x100000000000000) != 0)
  {
    if ((v30 & 0x100000000000000) == 0)
    {
      return 0;
    }

    sub_1003A3378(a1[5], v25, v27);
    sub_1003A3378(v29, v28, v30);
    v32 = sub_100397AD8(v26, v29);
  }

  else
  {
    if ((v30 & 0x100000000000000) != 0)
    {
      return 0;
    }

    sub_1003A3378(a1[5], v25, v27);
    sub_1003A3378(v29, v28, v30);
    v32 = sub_10020FBD0(v26, v25, v27 & 0xFFFFFFFFFFFFFFLL, v29, v28, v30 & 0xFFFFFFFFFFFFFFLL);
  }

  v33 = v32;
  sub_1003A3390(v29, v28, v30);
  sub_1003A3390(v26, v25, v27);
  return (v33 & 1) != 0;
}

BOOL sub_100436BFC(void *a1, void *a2)
{
  v4 = type metadata accessor for ParameterValue(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_10000C9C0(&qword_1005DBC70, &unk_100505A20);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  if (*a1 == *a2 || (v14 = sub_1004A6D34(), result = 0, (v14 & 1) != 0))
  {
    v16 = *(sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0) + 52);
    v17 = *(v11 + 48);
    sub_1003E0614(a1 + v16, v13);
    sub_1003E0614(a2 + v16, &v13[v17]);
    v18 = *(v5 + 48);
    if (v18(v13, 1, v4) == 1)
    {
      if (v18(&v13[v17], 1, v4) == 1)
      {
        sub_100025F40(v13, &qword_1005D7F50, &unk_100502FF0);
        return 1;
      }
    }

    else
    {
      sub_1003E0614(v13, v10);
      if (v18(&v13[v17], 1, v4) != 1)
      {
        sub_1002FC114(&v13[v17], v7);
        v19 = _s12NIOIMAPCore214ParameterValueO21__derived_enum_equalsySbAC_ACtFZ_0(v10, v7);
        sub_1002FC1DC(v7);
        sub_1002FC1DC(v10);
        sub_100025F40(v13, &qword_1005D7F50, &unk_100502FF0);
        return (v19 & 1) != 0;
      }

      sub_1002FC1DC(v10);
    }

    sub_100025F40(v13, &qword_1005DBC70, &unk_100505A20);
    return 0;
  }

  return result;
}

BOOL static ListSelectBaseOption.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (*(a1 + 32) == 0xFF)
  {
    return *(a2 + 32) == 0xFF;
  }

  v18 = v2;
  v19 = v3;
  v6 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v6;
  v15 = v4;
  v16 = *(a1 + 40);
  v17 = *(a1 + 56);
  v7 = *(a2 + 32);
  if (*(a2 + 32) == 0xFF)
  {
    return 0;
  }

  else
  {
    v9 = *(a2 + 16);
    v10[0] = *a2;
    v10[1] = v9;
    v11 = v7;
    v12 = *(a2 + 40);
    v13 = *(a2 + 56);
    return sub_1004369D8(v14, v10);
  }
}

void ListSelectBaseOption.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 32);
  if (v3 == 255)
  {
    sub_1004A6EB4(0);
  }

  else
  {
    v4 = *(v1 + 40);
    v5 = *(v1 + 48);
    v6 = *(v1 + 56);
    sub_1004A6EB4(1uLL);
    if (v3)
    {
      sub_1004A6EB4(1uLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      sub_1004A6EB4(0);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    sub_1003B0040(a1, v4, v5, v6);
  }
}

Swift::Int ListSelectBaseOption.hashValue.getter()
{
  sub_1004A6E94();
  v1 = *(v0 + 32);
  if (v1 == 255)
  {
    sub_1004A6EB4(0);
  }

  else
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);
    sub_1004A6EB4(1uLL);
    if (v1)
    {
      sub_1004A6EB4(1uLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      sub_1004A6EB4(0);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1003B0040(v6, v2, v3, v4);
  }

  return sub_1004A6F14();
}

void sub_100437150(uint64_t a1)
{
  v3 = *(v1 + 32);
  if (v3 == 255)
  {
    sub_1004A6EB4(0);
  }

  else
  {
    v4 = *(v1 + 40);
    v5 = *(v1 + 48);
    v6 = *(v1 + 56);
    sub_1004A6EB4(1uLL);
    if (v3)
    {
      sub_1004A6EB4(1uLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      sub_1004A6EB4(0);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    sub_1003B0040(a1, v4, v5, v6);
  }
}

Swift::Int sub_10043724C(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  sub_1004A6E94();
  if (v2 == 255)
  {
    sub_1004A6EB4(0);
  }

  else
  {
    sub_1004A6EB4(1uLL);
    if (v2)
    {
      sub_1004A6EB4(1uLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      sub_1004A6EB4(0);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1003B0040(v7, v3, v4, v5);
  }

  return sub_1004A6F14();
}

BOOL sub_100437330(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (*(a1 + 32) == 0xFF)
  {
    return ~*(a2 + 32) == 0;
  }

  v18 = v2;
  v19 = v3;
  v7 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v7;
  v11 = v4;
  v12 = *(a1 + 40);
  v13 = *(a1 + 56);
  if (v5 == 0xFF)
  {
    return 0;
  }

  else
  {
    v9 = *(a2 + 16);
    v14[0] = *a2;
    v14[1] = v9;
    v15 = v5;
    v16 = *(a2 + 40);
    v17 = *(a2 + 56);
    return sub_1004369D8(v10, v14);
  }
}

unint64_t sub_1004373D8()
{
  result = qword_1005DCA78;
  if (!qword_1005DCA78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListSelectBaseOption, &type metadata for ListSelectBaseOption, v0, v1);
    atomic_store(result, &qword_1005DCA78);
  }

  return result;
}

uint64_t sub_100437444(uint64_t a1)
{
  v1 = *(a1 + 23);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100437458(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10043746C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 64))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  if (v4 + 1 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004374B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 32) = ~a2;
    }
  }

  return result;
}

double sub_100437500(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 - 255;
  }

  else if (a2)
  {
    *(a1 + 32) = -a2;
  }

  return result;
}

BOOL static ListSelectIndependentOption.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2 != 254)
  {
    if (v2 == 255)
    {
      if (*(a2 + 32) == 0xFF)
      {
        return 1;
      }
    }

    else
    {
      v4 = *(a1 + 16);
      v12[0] = *a1;
      v12[1] = v4;
      v13 = v2;
      v14 = *(a1 + 40);
      v15 = *(a1 + 56);
      v5 = *(a2 + 32);
      if ((~*(a2 + 32) & 0xFELL) != 0)
      {
        v6 = *(a2 + 16);
        v8[0] = *a2;
        v8[1] = v6;
        v9 = v5;
        v10 = *(a2 + 40);
        v11 = *(a2 + 56);
        return sub_1004369D8(v12, v8);
      }
    }

    return 0;
  }

  return *(a2 + 32) == 254;
}

void ListSelectIndependentOption.hash(into:)(uint64_t a1)
{
  v3 = v1[4];
  if (v3 == 254)
  {
    v4 = 2;
    goto LABEL_5;
  }

  if (v3 == 255)
  {
    v4 = 0;
LABEL_5:
    sub_1004A6EB4(v4);
    return;
  }

  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  sub_1004A6EB4(1uLL);
  if (v3)
  {
    sub_1004A6EB4(1uLL);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EB4(0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  sub_1003B0040(a1, v5, v6, v7);
}

Swift::Int ListSelectIndependentOption.hashValue.getter()
{
  sub_1004A6E94();
  v1 = v0[4];
  if (v1 == 254)
  {
    v2 = 2;
    goto LABEL_5;
  }

  if (v1 == 255)
  {
    v2 = 0;
LABEL_5:
    sub_1004A6EB4(v2);
    return sub_1004A6F14();
  }

  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  sub_1004A6EB4(1uLL);
  if (v1)
  {
    sub_1004A6EB4(1uLL);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EB4(0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1003B0040(v7, v3, v4, v5);
  return sub_1004A6F14();
}

void sub_10043781C(uint64_t a1)
{
  v3 = *(v1 + 32);
  if (v3 == 254)
  {
    v4 = 2;
    goto LABEL_5;
  }

  if (v3 == 255)
  {
    v4 = 0;
LABEL_5:
    sub_1004A6EB4(v4);
    return;
  }

  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  sub_1004A6EB4(1uLL);
  if (v3)
  {
    sub_1004A6EB4(1uLL);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EB4(0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  sub_1003B0040(a1, v5, v6, v7);
}

Swift::Int sub_100437928(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  sub_1004A6E94();
  if (v2 == 254)
  {
    v6 = 2;
    goto LABEL_5;
  }

  if (v2 == 255)
  {
    v6 = 0;
LABEL_5:
    sub_1004A6EB4(v6);
    return sub_1004A6F14();
  }

  sub_1004A6EB4(1uLL);
  if (v2)
  {
    sub_1004A6EB4(1uLL);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EB4(0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1003B0040(v8, v3, v4, v5);
  return sub_1004A6F14();
}

BOOL sub_100437A1C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (v4 == 254)
  {
    v6 = *(a2 + 32) == 254;
    goto LABEL_5;
  }

  if (v4 == 255)
  {
    v6 = ~*(a2 + 32) == 0;
LABEL_5:
    v7 = v6;
    return v7 & 1;
  }

  v20 = v2;
  v21 = v3;
  v9 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v9;
  v13 = v4;
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  if ((~v5 & 0xFE) != 0)
  {
    v11 = *(a2 + 16);
    v16[0] = *a2;
    v16[1] = v11;
    v17 = v5;
    v18 = *(a2 + 40);
    v19 = *(a2 + 56);
    return sub_1004369D8(v12, v16);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100437AD8()
{
  result = qword_1005DCA80;
  if (!qword_1005DCA80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListSelectIndependentOption, &type metadata for ListSelectIndependentOption, v0, v1);
    atomic_store(result, &qword_1005DCA80);
  }

  return result;
}

uint64_t sub_100437B2C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100437B40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 64))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 > 1)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 3)
  {
    return v4 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100437B88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 32) = -2 - a2;
    }
  }

  return result;
}

__n128 ListSelectOptions.init(baseOption:options:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a3 + 32) = result;
  *(a3 + 48) = v5;
  *(a3 + 64) = a2;
  return result;
}

BOOL static ListSelectOption.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2 > 0xFDu)
  {
    if (v2 == 254)
    {
      if (*(a2 + 32) != 254)
      {
        return 0;
      }
    }

    else
    {
      if (v2 != 255)
      {
        goto LABEL_10;
      }

      if (*(a2 + 32) != 0xFF)
      {
        return 0;
      }
    }

    return 1;
  }

  if (v2 == 252)
  {
    return *(a2 + 32) == 252;
  }

  if (v2 == 253)
  {
    return *(a2 + 32) == 253;
  }

LABEL_10:
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v13 = v2;
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  v4 = *(a2 + 32);
  if ((v4 & 0xFC | 2) == 0xFE)
  {
    return 0;
  }

  v5 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v5;
  v9 = v4;
  v10 = *(a2 + 40);
  v11 = *(a2 + 56);
  return sub_1004369D8(v12, v8);
}

void ListSelectOption.hash(into:)(uint64_t a1)
{
  v4 = v1[4];
  v3 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  if (v4 > 0xFDu)
  {
    if (v4 == 254)
    {
      v7 = 1;
      goto LABEL_12;
    }

    if (v4 == 255)
    {
      v7 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    if (v4 == 252)
    {
      v7 = 3;
      goto LABEL_12;
    }

    if (v4 == 253)
    {
      v7 = 2;
LABEL_12:
      sub_1004A6EB4(v7);
      return;
    }
  }

  sub_1004A6EB4(4uLL);
  if (v4)
  {
    sub_1004A6EB4(1uLL);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EB4(0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  sub_1003B0040(a1, v3, v5, v6);
}

Swift::Int ListSelectOption.hashValue.getter()
{
  sub_1004A6E94();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  if (v2 > 0xFDu)
  {
    if (v2 == 254)
    {
      v5 = 1;
      goto LABEL_12;
    }

    if (v2 == 255)
    {
      v5 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    if (v2 == 252)
    {
      v5 = 3;
      goto LABEL_12;
    }

    if (v2 == 253)
    {
      v5 = 2;
LABEL_12:
      sub_1004A6EB4(v5);
      return sub_1004A6F14();
    }
  }

  sub_1004A6EB4(4uLL);
  if (v2)
  {
    sub_1004A6EB4(1uLL);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EB4(0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1003B0040(v7, v1, v3, v4);
  return sub_1004A6F14();
}

Swift::Int sub_100437F60(uint64_t a1)
{
  sub_1004A6E94();
  ListSelectOption.hash(into:)(v2);
  return sub_1004A6F14();
}

BOOL sub_100437F9C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (v4 > 0xFDu)
  {
    if (v4 == 254)
    {
      v6 = *(a2 + 32) == 254;
      goto LABEL_12;
    }

    if (v4 == 255)
    {
      v6 = ~*(a2 + 32) == 0;
      goto LABEL_12;
    }
  }

  else
  {
    if (v4 == 252)
    {
      v6 = *(a2 + 32) == 252;
      goto LABEL_12;
    }

    if (v4 == 253)
    {
      v6 = *(a2 + 32) == 253;
LABEL_12:
      v9 = v6;
      return v9 & 1;
    }
  }

  v20 = v2;
  v21 = v3;
  v7 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v7;
  v13 = v4;
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  if ((v5 & 0xFC | 2) == 0xFE)
  {
    return 0;
  }

  else
  {
    v11 = *(a2 + 16);
    v16[0] = *a2;
    v16[1] = v11;
    v17 = v5;
    v18 = *(a2 + 40);
    v19 = *(a2 + 56);
    return sub_1004369D8(v12, v16);
  }
}

uint64_t static ListSelectOptions.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  if (*(a1 + 32) == 0xFF)
  {
    if (v3 != 0xFF)
    {
      return 0;
    }
  }

  else
  {
    v4 = *(a1 + 16);
    v13[0] = *a1;
    v13[1] = v4;
    v15 = *(a1 + 40);
    v16 = *(a1 + 56);
    v14 = v2;
    if (v3 == 0xFF)
    {
      return 0;
    }

    v5 = *(a2 + 16);
    v17[0] = *a2;
    v17[1] = v5;
    v19 = *(a2 + 40);
    v20 = *(a2 + 56);
    v18 = v3;
    v6 = a1;
    v7 = a2;
    v8 = sub_1004369D8(v13, v17);
    a2 = v7;
    v9 = v8;
    a1 = v6;
    if (!v9)
    {
      return 0;
    }
  }

  v10 = *(a1 + 64);
  v11 = *(a2 + 64);

  return sub_1003988F4(v10, v11);
}

void ListSelectOptions.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 32);
  if (v4 == 255)
  {
    sub_1004A6EB4(0);
  }

  else
  {
    v5 = *(v2 + 40);
    v6 = *(v2 + 48);
    v7 = *(v2 + 56);
    sub_1004A6EB4(1uLL);
    if (v4)
    {
      sub_1004A6EB4(1uLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      sub_1004A6EB4(0);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1003B0040(a1, v5, v6, v7);
  }

  v8 = *(v2 + 64);

  sub_1003AD7B0(a1, v8);
}

Swift::Int ListSelectOptions.hashValue.getter()
{
  sub_1004A6E94();
  v1 = *(v0 + 32);
  if (v1 == 255)
  {
    sub_1004A6EB4(0);
  }

  else
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);
    sub_1004A6EB4(1uLL);
    if (v1)
    {
      sub_1004A6EB4(1uLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      sub_1004A6EB4(0);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1003B0040(v6, v2, v3, v4);
  }

  sub_1003AD7B0(v6, *(v0 + 64));
  return sub_1004A6F14();
}

void sub_10043835C(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 64);
  if (v3 == 255)
  {
    sub_1004A6EB4(0);
  }

  else
  {
    v5 = *(v1 + 40);
    v6 = *(v1 + 48);
    v7 = *(v1 + 56);
    sub_1004A6EB4(1uLL);
    if (v3)
    {
      sub_1004A6EB4(1uLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      sub_1004A6EB4(0);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1003B0040(a1, v5, v6, v7);
  }

  sub_1003AD7B0(a1, v4);
}

Swift::Int sub_10043845C(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v6 = *(v1 + 56);
  v5 = *(v1 + 64);
  sub_1004A6E94();
  if (v2 == 255)
  {
    sub_1004A6EB4(0);
  }

  else
  {
    sub_1004A6EB4(1uLL);
    if (v2)
    {
      sub_1004A6EB4(1uLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      sub_1004A6EB4(0);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1003B0040(v8, v3, v4, v6);
  }

  sub_1003AD7B0(v8, v5);
  return sub_1004A6F14();
}

uint64_t sub_10043854C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v4 = *(a2 + 32);
  v5 = *(a2 + 64);
  if (*(a1 + 32) == 0xFF)
  {
    if (v4 != 0xFF)
    {
      return 0;
    }
  }

  else
  {
    v6 = *(a1 + 16);
    v9[0] = *a1;
    v9[1] = v6;
    v10 = v2;
    v11 = *(a1 + 40);
    v12 = *(a1 + 56);
    if (v4 == 0xFF)
    {
      return 0;
    }

    v7 = *(a2 + 16);
    v13[0] = *a2;
    v13[1] = v7;
    v14 = v4;
    v15 = *(a2 + 40);
    v16 = *(a2 + 56);
    if (!sub_1004369D8(v9, v13))
    {
      return 0;
    }
  }

  return sub_1003988F4(v3, v5);
}

uint64_t sub_10043861C(unint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = v7;
  if (v7 <= 0xFDu)
  {
    if (v7 == 252)
    {
      v2 = v1 + 5;
      v19 = v1[5];
      result = sub_1002F178C(0x5649535255434552uLL, 0xEE00484354414D45, (v1 + 2), v19);
      if (v20)
      {
        v21._countAndFlagsBits = 0x5649535255434552;
        v21._object = 0xEE00484354414D45;
        result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
      }

      LODWORD(v7) = *v2 + result;
      if (!__CFADD__(*v2, result))
      {
        goto LABEL_26;
      }

      __break(1u);
LABEL_23:
      v23 = v2[5];
      v2 += 5;
      v22 = v23;
      result = sub_1002F178C(0x45544F4D4552uLL, 0xE600000000000000, (v2 - 3), v23);
      if (v24)
      {
        v25._countAndFlagsBits = 0x45544F4D4552;
        v25._object = 0xE600000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v25, v22);
      }

      LODWORD(v7) = *v2 + result;
      if (!__CFADD__(*v2, result))
      {
        goto LABEL_26;
      }

      goto LABEL_40;
    }

    if (v7 != 253)
    {
      goto LABEL_16;
    }

    v9 = 0x2D4C414943455053;
    v2 = v1 + 5;
    v8 = v1[5];
    v10 = (v1 + 2);
    result = sub_1002F178C(0x2D4C414943455053uLL, 0xEB00000000455355, (v1 + 2), v8);
    if (v13)
    {
      v14._countAndFlagsBits = 0x2D4C414943455053;
      v14._object = 0xEB00000000455355;
      result = ByteBuffer._setStringSlowpath(_:at:)(v14, v8);
    }

    LODWORD(v7) = *v2 + result;
    if (!__CFADD__(*v2, result))
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  if (v11 == 254)
  {
    goto LABEL_23;
  }

  if (v11 == 255)
  {
    v8 = 0x4249524353425553;
    v16 = v2[5];
    v2 += 5;
    v15 = v16;
    v9 = (v2 - 3);
    result = sub_1002F178C(0x4249524353425553uLL, 0xEA00000000004445, (v2 - 3), v16);
    if (v17)
    {
      v18._countAndFlagsBits = 0x4249524353425553;
      v18._object = 0xEA00000000004445;
      result = ByteBuffer._setStringSlowpath(_:at:)(v18, v15);
    }

    LODWORD(v7) = *v2 + result;
    if (!__CFADD__(*v2, result))
    {
LABEL_26:
      *v2 = v7;
      return result;
    }

    __break(1u);
  }

LABEL_16:
  if (v7)
  {
    result = sub_100462978(v4, v3, v5, v6);
  }

  else
  {
    v26 = v2[5];
    result = sub_1002F178C(v4, v3, (v2 + 2), v26);
    if (v27)
    {
      v28._countAndFlagsBits = v4;
      v28._object = v3;
      result = ByteBuffer._setStringSlowpath(_:at:)(v28, v26);
    }

    v29 = v2[5];
    v30 = __CFADD__(v29, result);
    v31 = v29 + result;
    if (v30)
    {
      goto LABEL_41;
    }

    v2[5] = v31;
  }

  if (HIBYTE(v10) == 255)
  {
    return result;
  }

  v32 = result;
  v33 = v2[5];
  sub_1003A30E8(v8, v9, v10, HIBYTE(v10) & 1);
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, (v2 + 2), v33);
  if (v34)
  {
    v35._countAndFlagsBits = 32;
    v35._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v35, v33);
  }

  v36 = v2[5];
  v30 = __CFADD__(v36, result);
  v37 = v36 + result;
  if (v30)
  {
    goto LABEL_42;
  }

  v2[5] = v37;
  v38 = v32 + result;
  if (__OFADD__(v32, result))
  {
LABEL_43:
    __break(1u);
    return result;
  }

  v39 = sub_100462BEC(v8, v9, v10 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v10) & 1) << 56));
  sub_1003A3390(v8, v9, v10);
  result = v38 + v39;
  if (__OFADD__(v38, v39))
  {
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  return result;
}

uint64_t sub_100438924(unint64_t *a1, uint64_t a2)
{
  v3 = sub_10043861C(a1);
  v4 = *(a2 + 20);
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, a2 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 32;
    v7._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = *(a2 + 20);
  v9 = __CFADD__(v8, result);
  v10 = v8 + result;
  if (v9)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(a2 + 20) = v10;
  v11 = __OFADD__(v3, result);
  result += v3;
  if (v11)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

unint64_t sub_100438A78()
{
  result = qword_1005DCA88;
  if (!qword_1005DCA88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListSelectOption, &type metadata for ListSelectOption, v0, v1);
    atomic_store(result, &qword_1005DCA88);
  }

  return result;
}

unint64_t sub_100438AD0()
{
  result = qword_1005DCA90;
  if (!qword_1005DCA90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListSelectOptions, &type metadata for ListSelectOptions, v0, v1);
    atomic_store(result, &qword_1005DCA90);
  }

  return result;
}

uint64_t sub_100438B24(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100438B38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 64))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 32);
  if (v3 > 1)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 5)
  {
    return v4 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100438B80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 32) = -4 - a2;
    }
  }

  return result;
}

uint64_t static BodyStructure.LocationAndExtensions.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    if (a5)
    {
      if (a1 == a4 && a2 == a5)
      {
        goto LABEL_6;
      }

      v7 = a3;
      v8 = a6;
      v9 = sub_1004A6D34();
      a3 = v7;
      a6 = v8;
      if (v9)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

  if (a5)
  {
    return 0;
  }

LABEL_6:

  return sub_10039ED48(a3, a6);
}

void BodyStructure.LocationAndExtensions.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EC4(0);
  }

  v5 = *(a4 + 16);
  sub_1004A6EB4(v5);
  if (v5)
  {
    v6 = (a4 + 55);
    do
    {
      v7 = *(v6 - 23);
      if (*v6)
      {
        sub_1004A6EB4(1uLL);
        sub_1004A6EB4(v7);
      }

      else
      {
        sub_1004A6EB4(0);
        if (v7)
        {
          sub_1004A6EC4(1u);
          swift_beginAccess();
          sub_1004A6EA4();
        }

        else
        {
          sub_1004A6EC4(0);
        }
      }

      v6 += 24;
      --v5;
    }

    while (v5);
  }
}

Swift::Int BodyStructure.LocationAndExtensions.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1004A6E94();
  if (a2)
  {
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EC4(0);
  }

  v5 = *(a3 + 16);
  sub_1004A6EB4(v5);
  if (v5)
  {
    v6 = (a3 + 55);
    do
    {
      v7 = *(v6 - 23);
      if (*v6)
      {
        sub_1004A6EB4(1uLL);
        sub_1004A6EB4(v7);
      }

      else
      {
        sub_1004A6EB4(0);
        if (v7)
        {
          sub_1004A6EC4(1u);
          swift_beginAccess();
          sub_1004A6EA4();
        }

        else
        {
          sub_1004A6EC4(0);
        }
      }

      v6 += 24;
      --v5;
    }

    while (v5);
  }

  return sub_1004A6F14();
}

Swift::Int sub_100438F00(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_1004A6E94();
  BodyStructure.LocationAndExtensions.hash(into:)(v6, v2, v3, v4);
  return sub_1004A6F14();
}

unint64_t sub_100438F5C()
{
  result = qword_1005DCA98;
  if (!qword_1005DCA98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BodyStructure.LocationAndExtensions, &type metadata for BodyStructure.LocationAndExtensions, v0, v1);
    atomic_store(result, &qword_1005DCA98);
  }

  return result;
}

uint64_t sub_100438FB0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if (v3)
  {
    if (v5)
    {
      v7 = *a1 == *a2 && v3 == v5;
      if (v7 || (sub_1004A6D34() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_8:

  return sub_10039ED48(v4, v6);
}

uint64_t sub_10043905C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1004390D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100439154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a4;
  v6 = sub_1004A48E4();
  __chkstk_darwin(v6 - 8);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004A49D4();
  __chkstk_darwin(v9 - 8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v29 = sub_100439C40();
  v30 = v13;
  v31 = v14;
  v32 = v15;
  v16 = v29;
  v17 = v13 & 1;
  v18 = BYTE1(v13) & 1;
  v19 = BYTE2(v13) & 1;
  v20 = v14;
  v21 = v15;
  sub_1000EADE8();
  sub_1004390BC();
  v23[2] = v16;
  v24 = v17;
  v25 = v18;
  v26 = v19;
  v27 = v20;
  v28 = v21;
  sub_1004A4994();
  sub_1004390D4(v8, &type metadata accessor for OSLogPrivacy);
  sub_1004390D4(v11, &type metadata accessor for OSLogStringAlignment);
  sub_1000B5158(v20, v21);
}

uint64_t sub_100439324()
{
  result = (*(v0 + 16))();
  if ((result & &_mh_execute_header) != 0)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_10043938C(unint64_t a1, uint64_t (*a2)(unint64_t))
{
  v4 = HIDWORD(a1);
  if (qword_1005DB9D0 != -1)
  {
    swift_once();
  }

  v5 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v6 = dword_1005DE398;
  v7 = word_1005DE39C;
  v8 = byte_1005DE39E;

  LOBYTE(v19) = 0;
  BYTE5(v19) = 0;
  *(&v19 + 1) = 65537;
  *(&v19 + 1) = v5;
  *&v20 = qword_1005DE390;
  DWORD2(v20) = v6;
  WORD6(v20) = v7;
  BYTE14(v20) = v8;
  *&v21 = sub_1003DBA20(_swiftEmptyArrayStorage);
  *(&v21 + 1) = v9;
  v22 = v10;
  result = a2(a1);
  if (a1 < v4)
  {
    v12 = DWORD1(v20);
    result = sub_1002F178C(0x3AuLL, 0xE100000000000000, &v19 + 8, DWORD1(v20));
    if (v13)
    {
      v14._countAndFlagsBits = 58;
      v14._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v14, v12);
    }

    if (__CFADD__(DWORD1(v20), result))
    {
      goto LABEL_13;
    }

    DWORD1(v20) += result;
    result = a2(v4);
  }

  if (DWORD1(v20) < v20)
  {
    __break(1u);
  }

  else if (DWORD2(v20) - (BYTE14(v20) | (WORD6(v20) << 8)) >= DWORD1(v20))
  {
    v23[0] = *(&v19 + 1);
    v23[1] = v20;
    v24 = DWORD2(v20);
    v25 = WORD6(v20);
    v26 = BYTE14(v20);
    v27 = v20;
    v28 = DWORD1(v20);
    v15 = DWORD1(v20) - v20;
    *&v17[0] = 0;
    *(&v17[0] + 1) = 0xE000000000000000;

    sub_1004A5874(v15);
    sub_1003BB2E4(v23, v17);
    sub_1003A52D0(v23);
    v16 = *&v17[0];
    v17[0] = v19;
    v17[1] = v20;
    v17[2] = v21;
    v18 = v22;
    sub_1003E5C94(v17);
    return v16;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1004395B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1004A49D4();
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004A48E4();
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  sub_1004A48B4();
  sub_1000EADE8();
  sub_1004A4964();
  sub_1004390D4(v8, &type metadata accessor for OSLogStringAlignment);
  sub_1004390D4(v11, &type metadata accessor for OSLogPrivacy);
}

uint64_t sub_1004397E8(void (*a1)(__n128), uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(__int128 *))
{
  v7 = sub_10000C9C0(a3, a4);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v13[-v9];
  a1(v8);
  v14 = v10;
  v11 = sub_1003E5B04(a5);
  sub_100121C40(v10);
  return v11;
}

uint64_t sub_100439940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a4;
  v6 = sub_1004A48E4();
  __chkstk_darwin(v6 - 8);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004A49D4();
  __chkstk_darwin(v9 - 8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v29 = sub_1004A49F4();
  v30 = v13;
  v31 = v14;
  v32 = v15;
  v16 = v29;
  v17 = v13 & 1;
  v18 = BYTE1(v13) & 1;
  v19 = BYTE2(v13) & 1;
  v20 = v14;
  v21 = v15;
  sub_1000EADE8();
  sub_1004390BC();
  v23[2] = v16;
  v24 = v17;
  v25 = v18;
  v26 = v19;
  v27 = v20;
  v28 = v21;
  sub_1004A4994();
  sub_1004390D4(v8, &type metadata accessor for OSLogPrivacy);
  sub_1004390D4(v11, &type metadata accessor for OSLogStringAlignment);
  sub_1000B5158(v20, v21);
}

uint64_t sub_100439B30()
{
  result = (*(v0 + 16))();
  if ((result & &_mh_execute_header) != 0)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_100439BC8()
{
  result = (*(v0 + 16))();
  if ((result & &_mh_execute_header) != 0)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_100439CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a4;
  v6 = sub_1004A48E4();
  __chkstk_darwin(v6 - 8);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004A49D4();
  __chkstk_darwin(v9 - 8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v29 = sub_100439C40();
  v30 = v13;
  v31 = v14;
  v32 = v15;
  v16 = v29;
  v17 = v13 & 1;
  v18 = BYTE1(v13) & 1;
  v19 = BYTE2(v13) & 1;
  v20 = v14;
  v21 = v15;
  sub_1000EADE8();
  sub_1004390BC();
  v23[2] = v16;
  v24 = v17;
  v25 = v18;
  v26 = v19;
  v27 = v20;
  v28 = v21;
  sub_1004A49A4();
  sub_1004390D4(v8, &type metadata accessor for OSLogPrivacy);
  sub_1004390D4(v11, &type metadata accessor for OSLogStringAlignment);
  sub_1000B5158(v20, v21);
}

uint64_t sub_100439EA0()
{
  result = (*(v0 + 16))();
  if (v2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100439EF0(uint64_t (*a1)(void))
{
  v1 = a1();
  v3 = v2;
  v5 = v4;
  v6 = SectionSpecifier.debugDescription.getter(v1, v2, v4);

  sub_1000511A4(v3, v5);
  return v6;
}

void *sub_100439F94()
{
  v1 = (*(v0 + 16))();
  v2 = SectionSpecifier.Part.debugDescription.getter(v1);

  return v2;
}

uint64_t sub_10043A004(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(v1 + 16);
  if (v2)
  {
    v58 = _swiftEmptyArrayStorage;
    sub_100134BC4(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v37 = v2 - 1;
    for (i = 32; ; i += 8)
    {
      v5 = *(v1 + i);
      v56 = 91;
      v57 = 0xE100000000000000;
      v6 = qword_1005DB9D0;

      if (v6 != -1)
      {
        swift_once();
      }

      v7 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
      v8 = qword_1005DE390;
      v9 = word_1005DE39C;
      v10 = byte_1005DE39E;

      *&v11 = *(&qword_1005DE390 + 4);
      v38 = v11;
      result = sub_1003DBA20(_swiftEmptyArrayStorage);
      LOBYTE(v52) = 0;
      BYTE5(v52) = 0;
      *(&v52 + 1) = 65537;
      *(&v52 + 1) = v7;
      LODWORD(v53) = v8;
      *(&v53 + 4) = v38;
      WORD6(v53) = v9;
      BYTE14(v53) = v10;
      *&v54 = result;
      *(&v54 + 1) = v13;
      v55 = v14;
      v51 = v5;
      v15 = v5[2];
      if (v15)
      {
        v16 = v38;
        result = sub_1002F178C(0, 0xE000000000000000, &v52 + 8, v38);
        if (v17)
        {
          v18._countAndFlagsBits = 0;
          v18._object = 0xE000000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v18, v16);
        }

        if (__CFADD__(DWORD1(v53), result))
        {
          goto LABEL_26;
        }

        DWORD1(v53) += result;
      }

      __chkstk_darwin(result);
      v36[2] = sub_1004945DC;
      v36[3] = 0;
      v36[4] = &v52;
      v36[5] = &v51;
      v36[6] = 46;
      v36[7] = 0xE100000000000000;
      result = sub_100452D20(0, sub_10043BF1C, v36, v5);
      v19 = DWORD1(v53);
      if (v15)
      {
        result = sub_1002F178C(0, 0xE000000000000000, &v52 + 8, DWORD1(v53));
        if (v20)
        {
          v21._countAndFlagsBits = 0;
          v21._object = 0xE000000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
        }

        LODWORD(v19) = DWORD1(v53) + result;
        if (__CFADD__(DWORD1(v53), result))
        {
          goto LABEL_27;
        }

        DWORD1(v53) += result;
      }

      v22 = v53;
      if (v19 < v53)
      {
        break;
      }

      if (DWORD2(v53) - (BYTE14(v53) | (WORD6(v53) << 8)) < v19)
      {
        goto LABEL_25;
      }

      v23 = v1;
      v41 = *(&v52 + 1);
      v42 = v53;
      v43 = v19;
      v44 = DWORD2(v53);
      v45 = WORD6(v53);
      v46 = BYTE14(v53);
      v47 = v53;
      v48 = v19;
      v24 = v19 - v53;
      v39 = 0;
      v40 = 0xE000000000000000;

      sub_1004A5874(v24);
      v25 = v41;
      v26 = v45;
      v27 = v46;
      swift_beginAccess();
      sub_10049DE0C(*(v25 + 24) + (v27 | (v26 << 8)) + v22, v24, &v39);
      sub_1003A52D0(&v41);
      v28 = v39;
      v29 = v40;
      v49[0] = v52;
      v49[1] = v53;
      v49[2] = v54;
      v50 = v55;
      sub_1003E5C94(v49);
      v59._countAndFlagsBits = v28;
      v59._object = v29;
      sub_1004A5994(v59);

      v60._countAndFlagsBits = 93;
      v60._object = 0xE100000000000000;
      sub_1004A5994(v60);

      v30 = v56;
      v31 = v57;
      v58 = v3;
      v33 = v3[2];
      v32 = v3[3];
      if (v33 >= v32 >> 1)
      {
        sub_100134BC4((v32 > 1), v33 + 1, 1);
        v3 = v58;
      }

      v3[2] = v33 + 1;
      v34 = &v3[2 * v33];
      v34[4] = v30;
      v34[5] = v31;
      v1 = v23;
      if (!v37)
      {

        goto LABEL_23;
      }

      --v37;
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {

    v3 = _swiftEmptyArrayStorage;
LABEL_23:
    *&v52 = v3;
    sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    sub_100031CDC();
    v35 = sub_1004A5614();

    return v35;
  }

  return result;
}