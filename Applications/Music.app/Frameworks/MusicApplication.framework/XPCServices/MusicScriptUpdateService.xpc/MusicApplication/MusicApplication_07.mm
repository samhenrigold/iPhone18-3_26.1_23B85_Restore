uint64_t Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (**a7)()@<X8>)
{
  v48 = a4;
  v49 = a7;
  v46 = a3;
  v50 = a1;
  v10 = *(a5 - 8);
  __chkstk_darwin();
  v44 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v40 = v38 - v12;
  v14 = v13;
  v45 = v13;
  v15 = __chkstk_darwin();
  v17 = v38 - v16;
  v39 = *(v10 + 16);
  v39(v38 - v16, v15);
  v43 = *(v10 + 80);
  v18 = (v43 + 40) & ~v43;
  v19 = swift_allocObject();
  v47 = v19;
  *(v19 + 2) = a5;
  *(v19 + 3) = a6;
  v41 = a6;
  v42 = a2;
  v20 = a2;
  *(v19 + 4) = a2;
  v21 = *(v10 + 32);
  v38[1] = v10 + 32;
  v21(v19 + v18, v17, a5);
  v22 = v40;
  (v39)(v40, v50, a5);
  v23 = swift_allocObject();
  *(v23 + 2) = a5;
  *(v23 + 3) = a6;
  *(v23 + 4) = v20;
  v24 = v22;
  v25 = v21;
  v21(v23 + v18, v24, a5);
  v26 = v23 + ((v18 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  v27 = v46;
  v28 = v46[1];
  *v26 = *v46;
  *(v26 + 1) = v28;
  *(v26 + 4) = *(v27 + 4);
  v29 = v44;
  v21(v44, v50, a5);
  v30 = *(sub_100003ABC(&qword_100601C50, &unk_1004C9840) - 8);
  v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v32 = (*(v30 + 64) + v43 + v31) & ~v43;
  v33 = swift_allocObject();
  v34 = v41;
  *(v33 + 16) = a5;
  *(v33 + 24) = v34;
  sub_100025B04(v48, v33 + v31, &qword_100601C50, &unk_1004C9840);
  v25(v33 + v32, v29, a5);

  v36 = v49;
  v37 = v47;
  *v49 = sub_1000C0010;
  v36[1] = v37;
  v36[2] = &unk_1004CBF68;
  v36[3] = v23;
  v36[4] = &unk_1004CBF78;
  v36[5] = v33;
  return result;
}

uint64_t Actions.UndoSuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t (**a6)()@<X8>)
{
  v40 = a3;
  v41 = a6;
  v37 = a2;
  v33 = a1;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v39 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v35 = &v31 - v11;
  __chkstk_darwin();
  v13 = &v31 - v12;
  sub_100007214(v14, &qword_100601CE0, &qword_1004C99F0);
  v34 = *(v9 + 16);
  v34(v13, a1, a4);
  v36 = *(v9 + 80);
  v15 = (v36 + 40) & ~v36;
  v16 = swift_allocObject();
  v38 = v16;
  *(v16 + 2) = a4;
  *(v16 + 3) = a5;
  v17 = v37;
  *(v16 + 4) = v37;
  v32 = *(v9 + 32);
  v42 = v9 + 32;
  v32(v16 + v15, v13, a4);
  v18 = v35;
  v19 = v33;
  v34(v35, v33, a4);
  v20 = swift_allocObject();
  *(v20 + 2) = a4;
  *(v20 + 3) = a5;
  *(v20 + 4) = v17;
  v21 = v18;
  v22 = v32;
  v32(v20 + v15, v21, a4);
  v23 = v39;
  v22(v39, v19, a4);
  v24 = *(sub_100003ABC(&qword_100601C50, &unk_1004C9840) - 8);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = (*(v24 + 64) + v36 + v25) & ~v36;
  v27 = swift_allocObject();
  *(v27 + 16) = a4;
  *(v27 + 24) = a5;
  sub_100025B04(v40, v27 + v25, &qword_100601C50, &unk_1004C9840);
  v22((v27 + v26), v23, a4);

  v29 = v41;
  v30 = v38;
  *v41 = sub_1000C1DA0;
  v29[1] = v30;
  v29[2] = &unk_1004CBF98;
  v29[3] = v20;
  v29[4] = &unk_1004CBFA8;
  v29[5] = v27;
  return result;
}

uint64_t sub_1000B9818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1004BAF34();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003ABC(&qword_100602AA8, &qword_1004CC118);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v14 - v10;
  sub_1004B7724();
  sub_1004BAF94();
  (*(v5 + 8))(v7, v4);
  v12 = sub_1000B99F0();
  (*(v9 + 8))(v11, v8);
  return v12;
}

uint64_t sub_1000B99F0()
{
  v1 = sub_1004BAF24();
  v24 = *(v1 - 8);
  __chkstk_darwin();
  v21 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v21 - v3;
  __chkstk_darwin();
  v6 = &v21 - v5;
  v7 = sub_100003ABC(&qword_100602AA8, &qword_1004CC118);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v22 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin();
  v12 = &v21 - v11;
  v13 = *(v8 + 16);
  v23 = v0;
  v13(&v21 - v11, v0, v7, v10);
  v14 = (*(v8 + 88))(v12, v7);
  if (v14 != enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    if (v14 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
    {
      *&v33[0] = 0;
      *(&v33[0] + 1) = 0xE000000000000000;
      sub_1004BD404(27);

      *&v33[0] = 0xD000000000000019;
      *(&v33[0] + 1) = 0x80000001004FDBC0;
      (v13)(v22, v23, v7);
      v34._countAndFlagsBits = sub_1004BBF04();
      sub_1004BC024(v34);

      v18 = *&v33[0];
      (*(v8 + 8))(v12, v7);
      return v18;
    }

    return 0;
  }

  (*(v8 + 96))(v12, v7);
  v15 = v24;
  (*(v24 + 32))(v6, v12, v1);
  v16 = *(v15 + 16);
  v16(v4, v6, v1);
  v17 = (*(v15 + 88))(v4, v1);
  if (v17 != enum case for MusicLibrary.FavoriteAction.UnsupportedReason.unsupportedType(_:))
  {
    if (v17 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.alreadyFavorited(_:))
    {
      (*(v15 + 8))(v6, v1);
      return 0xD000000000000011;
    }

    if (v17 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.cannotFavoriteWhenDisliked(_:))
    {
      (*(v15 + 8))(v6, v1);
      return 0xD00000000000001DLL;
    }

    if (v17 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.subscriptionRequired(_:))
    {
      (*(v15 + 8))(v6, v1);
      return 0xD000000000000018;
    }

    if (v17 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.cloudLibraryRequired(_:))
    {
      if (qword_1005FFE10 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1004B85A4();

      v33[4] = v29;
      v33[5] = v30;
      v33[6] = v31;
      v33[7] = v32;
      v33[0] = v25;
      v33[1] = v26;
      v33[2] = v27;
      v33[3] = v28;
      sub_100051DEC(v33);
      if ((WORD4(v33[0]) & 0x100) != 0)
      {
        v18 = 0;
      }

      else
      {
        v18 = 0xD000000000000016;
      }

      goto LABEL_35;
    }

    if (v17 != enum case for MusicLibrary.FavoriteAction.UnsupportedReason.explicitContentRestricted(_:))
    {
      if (v17 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.sharedLibrary(_:))
      {
        (*(v15 + 8))(v6, v1);
        return 0x6C20646572616853;
      }

      if (v17 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.cloudLibraryInitialImport(_:))
      {
        (*(v15 + 8))(v6, v1);
        return 0xD00000000000001CLL;
      }

      if (v17 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.libraryAddIneligibleContent(_:))
      {
        (*(v15 + 8))(v6, v1);
        return 0xD000000000000013;
      }

      if (v17 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.invalidContentType(_:))
      {
        (*(v15 + 8))(v6, v1);
        return 0xD000000000000014;
      }

      if (v17 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.networkRequired(_:))
      {
        v18 = 0xD000000000000010;
      }

      else
      {
        if (v17 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.subscriptionAccountLinkingRequired(_:))
        {
          (*(v15 + 8))(v6, v1);
          return 0xD000000000000025;
        }

        v18 = 0x206E776F6E6B6E55;
        if (v17 != enum case for MusicLibrary.FavoriteAction.UnsupportedReason.unknown(_:))
        {
          *&v33[0] = 0;
          *(&v33[0] + 1) = 0xE000000000000000;
          sub_1004BD404(17);

          *&v33[0] = 0x206E776F6E6B6E55;
          *(&v33[0] + 1) = 0xEF206E6F73616572;
          v16(v21, v6, v1);
          v35._countAndFlagsBits = sub_1004BBF04();
          sub_1004BC024(v35);

          v18 = *&v33[0];
          v20 = *(v15 + 8);
          v20(v6, v1);
          v20(v4, v1);
          return v18;
        }
      }

LABEL_35:
      (*(v15 + 8))(v6, v1);
      return v18;
    }

    (*(v15 + 8))(v6, v1);
    return 0;
  }

  v18 = 0xD000000000000010;
  (*(v15 + 8))(v6, v1);
  return v18;
}

uint64_t sub_1000BA234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[54] = a6;
  v7[55] = a7;
  v7[52] = a4;
  v7[53] = a5;
  v7[50] = a2;
  v7[51] = a3;
  v7[49] = a1;
  v8 = sub_1004BAF24();
  v7[56] = v8;
  v7[57] = *(v8 - 8);
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v7[60] = type metadata accessor for Notice.Variant(0);
  v7[61] = swift_task_alloc();
  v9 = sub_1004BAF34();
  v7[62] = v9;
  v7[63] = *(v9 - 8);
  v7[64] = swift_task_alloc();
  v10 = sub_100003ABC(&qword_100602AA8, &qword_1004CC118);
  v7[65] = v10;
  v7[66] = *(v10 - 8);
  v7[67] = swift_task_alloc();
  v7[68] = swift_task_alloc();

  return _swift_task_switch(sub_1000BA40C, 0, 0);
}

uint64_t sub_1000BA40C(uint64_t a1)
{
  v2 = v1[68];
  v3 = v1[66];
  v37 = v1[65];
  v38 = v1[67];
  v4 = v1[63];
  v5 = v1[64];
  v6 = v1[62];
  sub_1004B7724();
  sub_1004BAF94();
  (*(v4 + 8))(v5, v6);
  (*(v3 + 16))(v38, v2, v37);
  v7 = (*(v3 + 88))(v38, v37);
  if (v7 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    v8 = v1[67];
    v10 = v1[58];
    v9 = v1[59];
    v11 = v1[56];
    v12 = v1[57];
    (*(v1[66] + 96))(v8, v1[65]);
    (*(v12 + 32))(v9, v8, v11);
    (*(v12 + 16))(v10, v9, v11);
    v13 = (*(v12 + 88))(v10, v11);
    if (v13 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.cloudLibraryRequired(_:))
    {
      sub_10000F778(v1[52], (v1 + 14), &qword_100602A08, &qword_1004CBF00);
      if (v1[22] != 1)
      {
        sub_100048998((v1 + 14), (v1 + 2));
        v1[81] = sub_1004BC474();
        v1[82] = sub_1004BC464();
        v33 = sub_1004BC3E4();
        v29 = v34;
        v1[83] = v33;
        v1[84] = v34;
        v27 = sub_1000BB0C8;
        v28 = v33;
        goto LABEL_14;
      }

      v14 = v1[53];
      sub_100007214((v1 + 14), &qword_100602A08, &qword_1004CBF00);
      v15 = v14[3];
      v1[76] = v15;
      v1[77] = v14[4];
      v1[78] = sub_100009178(v14, v15);
      sub_1004BC474();
      v1[79] = sub_1004BC464();
      v16 = sub_1004BC3E4();
      v18 = v17;
      v19 = sub_1000BAE94;
LABEL_11:
      v27 = v19;
      v28 = v16;
      v29 = v18;
LABEL_14:

      return _swift_task_switch(v27, v28, v29);
    }

    if (v13 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.explicitContentRestricted(_:))
    {
      v24 = v1[53];
      v25 = v24[3];
      v1[88] = v25;
      v1[89] = v24[4];
      v1[90] = sub_100009178(v24, v25);
      sub_1004BC474();
      v1[91] = sub_1004BC464();
      v16 = sub_1004BC3E4();
      v18 = v26;
      v19 = sub_1000BB3A4;
      goto LABEL_11;
    }

    v30 = v1 + 59;
    v31 = v1 + 57;
    v32 = v1 + 56;
    (*(v1[57] + 8))(v1[58], v1[56]);
    goto LABEL_18;
  }

  if (v7 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    v30 = v1 + 67;
    v31 = v1 + 66;
    v32 = v1 + 65;
LABEL_18:
    (*(*v31 + 8))(*v30, *v32);
    (*(v1[66] + 8))(v1[68], v1[65]);

    v35 = v1[1];

    return v35();
  }

  v20 = swift_task_alloc();
  v1[69] = v20;
  *v20 = v1;
  v20[1] = sub_1000BA8D4;
  v21 = v1[54];
  v22 = v1[55];
  v23 = v1[50];

  return MusicLibrary.favorite<A>(_:)(v23, v21, v22);
}

uint64_t sub_1000BA8D4()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_1000C3D38;
  }

  else
  {
    v2 = sub_1000BA9E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000BA9E8()
{
  sub_10000F778(v0[51], (v0 + 44), &qword_100601CE0, &qword_1004C99F0);
  v1 = v0[47];
  v0[71] = v1;
  if (v1)
  {
    v0[72] = v0[48];
    v0[73] = sub_100009178(v0 + 44, v1);
    swift_storeEnumTagMultiPayload();
    sub_1004BC474();
    v0[74] = sub_1004BC464();
    v3 = sub_1004BC3E4();

    return _swift_task_switch(sub_1000BAB6C, v3, v2);
  }

  else
  {
    sub_100007214((v0 + 44), &qword_100601CE0, &qword_1004C99F0);
    v4 = swift_task_alloc();
    v0[75] = v4;
    *v4 = v0;
    v4[1] = sub_1000BACCC;
    v5 = v0[52];

    return sub_10028C320(v5);
  }
}

uint64_t sub_1000BAB6C()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[61];

  sub_1002388BC(v3, 0, v2, v1);
  sub_1000C3C6C(v3, type metadata accessor for Notice.Variant);

  return _swift_task_switch(sub_1000BAC1C, 0, 0);
}

uint64_t sub_1000BAC1C()
{
  sub_100004C6C(v0 + 44);
  v1 = swift_task_alloc();
  v0[75] = v1;
  *v1 = v0;
  v1[1] = sub_1000BACCC;
  v2 = v0[52];

  return sub_10028C320(v2);
}

uint64_t sub_1000BACCC()
{

  return _swift_task_switch(sub_1000BADC8, 0, 0);
}

uint64_t sub_1000BADC8()
{
  (*(v0[66] + 8))(v0[68], v0[65]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000BAE94()
{
  v6 = v0[77];

  sub_100115C5C(5, (v0 + 35));
  v5 = (*(v6 + 8) + **(v6 + 8));
  v1 = swift_task_alloc();
  v0[80] = v1;
  *v1 = v0;
  v1[1] = sub_1000BAFC4;
  v2 = v0[77];
  v3 = v0[76];

  return v5(v0 + 35, v3, v2);
}

uint64_t sub_1000BAFC4()
{
  v1 = *v0;

  sub_100052310(v1 + 280);

  return _swift_task_switch(sub_1000C3D3C, 0, 0);
}

uint64_t sub_1000BB0C8(uint64_t a1)
{
  v2 = sub_1004BC464();
  v1[85] = v2;
  v3 = swift_task_alloc();
  v1[86] = v3;
  *(v3 + 16) = 5;
  *(v3 + 24) = v1 + 2;
  *(v3 + 32) = 0;
  v4 = swift_task_alloc();
  v1[87] = v4;
  *v4 = v1;
  v4[1] = sub_1000BB1DC;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 93, v2, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001004FC910, sub_1000C3D5C, v3, &type metadata for Bool);
}

uint64_t sub_1000BB1DC()
{
  v1 = *v0;

  v2 = *(v1 + 672);
  v3 = *(v1 + 664);

  return _swift_task_switch(sub_1000BB33C, v3, v2);
}

uint64_t sub_1000BB33C()
{

  return _swift_task_switch(sub_1000C3D60, 0, 0);
}

uint64_t sub_1000BB3A4()
{
  v6 = v0[89];

  sub_100114418(0, (v0 + 26));
  v5 = (*(v6 + 8) + **(v6 + 8));
  v1 = swift_task_alloc();
  v0[92] = v1;
  *v1 = v0;
  v1[1] = sub_1000BB4D4;
  v2 = v0[89];
  v3 = v0[88];

  return v5(v0 + 26, v3, v2);
}

uint64_t sub_1000BB4D4()
{
  v1 = *v0;

  sub_100052310(v1 + 208);

  return _swift_task_switch(sub_1000C3D3C, 0, 0);
}

uint64_t sub_1000BB5D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);
  v5 = (*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10001384C;

  return sub_1000BA234(v6, v0 + v4, v0 + v5, v0 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8), v0 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8), v2, v3);
}

uint64_t sub_1000BB708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  sub_100003ABC(&qword_1006014F8, &unk_1004C8AA0);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = type metadata accessor for MetricsEvent.Click(0);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  sub_100003ABC(&qword_100601C50, &unk_1004C9840);
  v6[29] = swift_task_alloc();
  v7 = type metadata accessor for Actions.MetricsReportingContext(0);
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000BB920, 0, 0);
}

uint64_t sub_1000BB920()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v1(2);
  }

  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  sub_10000F778(*(v0 + 88), v4, &qword_100601C50, &unk_1004C9840);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_100007214(*(v0 + 232), &qword_100601C50, &unk_1004C9840);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 224);
    v8 = *(v0 + 104);
    sub_1000521DC(*(v0 + 232), *(v0 + 256), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 264) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 272) = v9;
    v10 = sub_1004B6B04();
    *(v0 + 280) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 288) = v12;
    *(v0 + 296) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v7, 1, 1, v10);
    sub_100003ABC(&qword_100601E58, &qword_1004CA360);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004C50A0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v8);
    *(inited + 40) = v14;
    *(inited + 48) = 0;
    *(v0 + 304) = sub_100029080(inited);
    *(v0 + 312) = v15;
    *(v0 + 320) = v16;
    *(v0 + 336) = v17;
    swift_setDeallocating();
    sub_10005DC68(inited + 32);
    sub_1004BC474();
    *(v0 + 328) = sub_1004BC464();
    v19 = sub_1004BC3E4();

    return _swift_task_switch(sub_1000BBC2C, v19, v18);
  }
}

uint64_t sub_1000BBC2C()
{
  v80 = *(v0 + 336);
  v73 = *(v0 + 304);
  v76 = *(v0 + 272);
  v78 = *(v0 + 320);
  v74 = *(v0 + 264);
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  v72 = *(v0 + 168);

  sub_10000F778(v3, v4, &qword_100600DE0, &unk_1004C66D0);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_10000F778(v1 + v2[5], v7, &qword_1006014F8, &unk_1004C8AA0);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 5637;
  sub_100025B04(v4, v6 + v5[7], &qword_100600DE0, &unk_1004C66D0);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_10000F778(v7, v72, &qword_1006014F8, &unk_1004C8AA0);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 336);
  v17 = *(v0 + 312);
  v18 = *(v0 + 320);
  v19 = *(v0 + 304);
  v20 = *(v0 + 168);
  if (v15 == 1)
  {

    sub_100024AE0(v75, v77);

    sub_100025A94(v19, v17, v18, v16, SBYTE1(v16));
    sub_100007214(v20, &qword_1006014F8, &unk_1004C8AA0);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100024AE0(v75, v77);

    sub_100025A94(v19, v17, v18, v16, SBYTE1(v16));

    sub_1000C3C6C(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 176);
  v24 = *(v0 + 160);
  v25 = (*(v0 + 192) + *(*(v0 + 184) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_10000F778(v23, v24, &qword_1006014F8, &unk_1004C8AA0);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 160);
  if (v26 == 1)
  {
    sub_100007214(*(v0 + 160), &qword_1006014F8, &unk_1004C8AA0);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1000C3C6C(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 176);
  v31 = *(v0 + 152);
  v32 = (*(v0 + 192) + *(*(v0 + 184) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_10000F778(v30, v31, &qword_1006014F8, &unk_1004C8AA0);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 288);
    v34 = *(v0 + 280);
    v35 = *(v0 + 208);
    sub_100007214(*(v0 + 152), &qword_1006014F8, &unk_1004C8AA0);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 152);
    sub_10000F778(v36 + v14[6], *(v0 + 208), &qword_100600DE0, &unk_1004C66D0);
    sub_1000C3C6C(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 176);
  v38 = *(v0 + 144);
  sub_100025B04(*(v0 + 208), *(v0 + 192) + *(*(v0 + 184) + 56), &qword_100600DE0, &unk_1004C66D0);
  sub_10000F778(v37, v38, &qword_1006014F8, &unk_1004C8AA0);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 144);
  if (v39 == 1)
  {
    sub_100007214(*(v0 + 144), &qword_1006014F8, &unk_1004C8AA0);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_1000C3C6C(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 176);
  v43 = *(v0 + 136);
  *(*(v0 + 192) + *(*(v0 + 184) + 60)) = v41;
  sub_10000F778(v42, v43, &qword_1006014F8, &unk_1004C8AA0);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 136);
  if (v44 == 1)
  {
    sub_100007214(v45, &qword_1006014F8, &unk_1004C8AA0);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_1000C3C6C(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 176);
  v48 = *(v0 + 128);
  *(*(v0 + 192) + *(*(v0 + 184) + 64)) = v46;
  sub_10000F778(v47, v48, &qword_1006014F8, &unk_1004C8AA0);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 128);
  if (v49 == 1)
  {
    sub_100007214(*(v0 + 128), &qword_1006014F8, &unk_1004C8AA0);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1000C3C6C(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 176);
  v55 = *(v0 + 120);
  v56 = (*(v0 + 192) + *(*(v0 + 184) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100025B04(v54, v55, &qword_1006014F8, &unk_1004C8AA0);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 120);
  if (v57 == 1)
  {
    sub_100007214(v58, &qword_1006014F8, &unk_1004C8AA0);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_1000C3C6C(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 192);
  v61 = *(v0 + 200);
  v62 = *(v0 + 184);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_1000521DC(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1005FFE00 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 312);
  v63 = *(v0 + 320);
  v65 = *(v0 + 304);
  v66 = *(v0 + 256);
  v67 = *(v0 + 240);
  v68 = *(v0 + 224);
  v69 = *(v0 + 200);
  v70 = *(v0 + 336);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100052244(v65, v64, v63, v70, SBYTE1(v70));
  sub_1000C3C6C(v69, type metadata accessor for MetricsEvent.Click);
  sub_100007214(v68, &qword_100600DE0, &unk_1004C66D0);

  return _swift_task_switch(sub_1000C3CD4, 0, 0);
}

uint64_t sub_1000BC3E0()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(sub_100003ABC(&qword_100601C50, &unk_1004C9840) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = v0[4];
  v8 = v0[5];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_10001384C;

  return sub_1000BB708(v7, v8, v0 + v5, v0 + v6, v3, v2);
}

uint64_t sub_1000BC538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1004BAFD4();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003ABC(&qword_100602AA0, &qword_1004CC0C8);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v14 - v10;
  sub_1004B7694();
  sub_1004BAF94();
  (*(v5 + 8))(v7, v4);
  v12 = sub_1000BC70C();
  (*(v9 + 8))(v11, v8);
  return v12;
}

uint64_t sub_1000BC70C()
{
  v1 = sub_1004BAFC4();
  v25 = *(v1 - 8);
  __chkstk_darwin();
  v22 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v22 - v3;
  __chkstk_darwin();
  v6 = &v22 - v5;
  v7 = sub_100003ABC(&qword_100602AA0, &qword_1004CC0C8);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v23 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin();
  v12 = &v22 - v11;
  v13 = *(v8 + 16);
  v24 = v0;
  v13(&v22 - v11, v0, v7, v10);
  v14 = (*(v8 + 88))(v12, v7);
  if (v14 != enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    if (v14 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
    {
      *&v34[0] = 0;
      *(&v34[0] + 1) = 0xE000000000000000;
      sub_1004BD404(27);

      *&v34[0] = 0xD000000000000019;
      *(&v34[0] + 1) = 0x80000001004FDBC0;
      (v13)(v23, v24, v7);
      v35._countAndFlagsBits = sub_1004BBF04();
      sub_1004BC024(v35);

      v19 = *&v34[0];
      (*(v8 + 8))(v12, v7);
      return v19;
    }

    return 0;
  }

  (*(v8 + 96))(v12, v7);
  v15 = v25;
  (*(v25 + 32))(v6, v12, v1);
  v16 = *(v15 + 16);
  v16(v4, v6, v1);
  v17 = (*(v15 + 88))(v4, v1);
  v18 = v6;
  if (v17 != enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.unsupportedType(_:))
  {
    if (v17 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.notFavorited(_:))
    {
      (*(v15 + 8))(v6, v1);
      return 0x6F76614620746F4ELL;
    }

    if (v17 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.subscriptionRequired(_:))
    {
      (*(v15 + 8))(v6, v1);
      return 0xD000000000000018;
    }

    if (v17 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.cloudLibraryRequired(_:))
    {
      if (qword_1005FFE10 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1004B85A4();

      v34[4] = v30;
      v34[5] = v31;
      v34[6] = v32;
      v34[7] = v33;
      v34[0] = v26;
      v34[1] = v27;
      v34[2] = v28;
      v34[3] = v29;
      sub_100051DEC(v34);
      if ((WORD4(v34[0]) & 0x100) != 0)
      {
        v19 = 0;
      }

      else
      {
        v19 = 0xD000000000000016;
      }

      goto LABEL_31;
    }

    if (v17 != enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.explicitContentRestricted(_:))
    {
      if (v17 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.sharedLibrary(_:))
      {
        (*(v15 + 8))(v6, v1);
        return 0x6C20646572616853;
      }

      if (v17 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.cloudLibraryInitialImport(_:))
      {
        (*(v15 + 8))(v6, v1);
        return 0xD00000000000001CLL;
      }

      if (v17 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.libraryAddIneligibleContent(_:))
      {
        (*(v15 + 8))(v6, v1);
        return 0xD000000000000013;
      }

      if (v17 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.invalidContentType(_:))
      {
        (*(v15 + 8))(v6, v1);
        return 0xD000000000000014;
      }

      if (v17 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.subscriptionAccountLinkingRequired(_:))
      {
        (*(v15 + 8))(v6, v1);
        return 0xD000000000000025;
      }

      v19 = 0x206E776F6E6B6E55;
      if (v17 != enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.unknown(_:))
      {
        *&v34[0] = 0;
        *(&v34[0] + 1) = 0xE000000000000000;
        sub_1004BD404(17);

        *&v34[0] = 0x206E776F6E6B6E55;
        *(&v34[0] + 1) = 0xEF206E6F73616572;
        v16(v22, v18, v1);
        v36._countAndFlagsBits = sub_1004BBF04();
        sub_1004BC024(v36);

        v19 = *&v34[0];
        v21 = *(v15 + 8);
        v21(v18, v1);
        v21(v4, v1);
        return v19;
      }

LABEL_31:
      (*(v15 + 8))(v18, v1);
      return v19;
    }

    (*(v15 + 8))(v6, v1);
    return 0;
  }

  v19 = 0xD000000000000010;
  (*(v15 + 8))(v18, v1);
  return v19;
}

uint64_t sub_1000BCEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[54] = a6;
  v7[55] = a7;
  v7[52] = a4;
  v7[53] = a5;
  v7[50] = a2;
  v7[51] = a3;
  v7[49] = a1;
  v8 = sub_1004BAFC4();
  v7[56] = v8;
  v7[57] = *(v8 - 8);
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v7[60] = type metadata accessor for Notice.Variant(0);
  v7[61] = swift_task_alloc();
  v9 = sub_1004BAFD4();
  v7[62] = v9;
  v7[63] = *(v9 - 8);
  v7[64] = swift_task_alloc();
  v10 = sub_100003ABC(&qword_100602AA0, &qword_1004CC0C8);
  v7[65] = v10;
  v7[66] = *(v10 - 8);
  v7[67] = swift_task_alloc();
  v7[68] = swift_task_alloc();

  return _swift_task_switch(sub_1000BD0B4, 0, 0);
}

uint64_t sub_1000BD0B4(uint64_t a1)
{
  v2 = v1[68];
  v3 = v1[66];
  v37 = v1[65];
  v38 = v1[67];
  v4 = v1[63];
  v5 = v1[64];
  v6 = v1[62];
  sub_1004B7694();
  sub_1004BAF94();
  (*(v4 + 8))(v5, v6);
  (*(v3 + 16))(v38, v2, v37);
  v7 = (*(v3 + 88))(v38, v37);
  if (v7 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    v8 = v1[67];
    v10 = v1[58];
    v9 = v1[59];
    v11 = v1[56];
    v12 = v1[57];
    (*(v1[66] + 96))(v8, v1[65]);
    (*(v12 + 32))(v9, v8, v11);
    (*(v12 + 16))(v10, v9, v11);
    v13 = (*(v12 + 88))(v10, v11);
    if (v13 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.cloudLibraryRequired(_:))
    {
      sub_10000F778(v1[52], (v1 + 14), &qword_100602A08, &qword_1004CBF00);
      if (v1[22] != 1)
      {
        sub_100048998((v1 + 14), (v1 + 2));
        v1[80] = sub_1004BC474();
        v1[81] = sub_1004BC464();
        v33 = sub_1004BC3E4();
        v29 = v34;
        v1[82] = v33;
        v1[83] = v34;
        v27 = sub_1000BDBF0;
        v28 = v33;
        goto LABEL_14;
      }

      v14 = v1[53];
      sub_100007214((v1 + 14), &qword_100602A08, &qword_1004CBF00);
      v15 = v14[3];
      v1[75] = v15;
      v1[76] = v14[4];
      v1[77] = sub_100009178(v14, v15);
      sub_1004BC474();
      v1[78] = sub_1004BC464();
      v16 = sub_1004BC3E4();
      v18 = v17;
      v19 = sub_1000BD9BC;
LABEL_11:
      v27 = v19;
      v28 = v16;
      v29 = v18;
LABEL_14:

      return _swift_task_switch(v27, v28, v29);
    }

    if (v13 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.explicitContentRestricted(_:))
    {
      v24 = v1[53];
      v25 = v24[3];
      v1[87] = v25;
      v1[88] = v24[4];
      v1[89] = sub_100009178(v24, v25);
      sub_1004BC474();
      v1[90] = sub_1004BC464();
      v16 = sub_1004BC3E4();
      v18 = v26;
      v19 = sub_1000BDFB8;
      goto LABEL_11;
    }

    v30 = v1 + 59;
    v31 = v1 + 57;
    v32 = v1 + 56;
    (*(v1[57] + 8))(v1[58], v1[56]);
    goto LABEL_18;
  }

  if (v7 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    v30 = v1 + 67;
    v31 = v1 + 66;
    v32 = v1 + 65;
LABEL_18:
    (*(*v31 + 8))(*v30, *v32);
    (*(v1[66] + 8))(v1[68], v1[65]);

    v35 = v1[1];

    return v35();
  }

  v20 = swift_task_alloc();
  v1[69] = v20;
  *v20 = v1;
  v20[1] = sub_1000BD57C;
  v21 = v1[54];
  v22 = v1[55];
  v23 = v1[50];

  return MusicLibrary.undoFavorite<A>(_:)(v23, v21, v22);
}

uint64_t sub_1000BD57C()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_1000BE2D0;
  }

  else
  {
    v2 = sub_1000BD690;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000BD690()
{
  sub_10000F778(v0[51], (v0 + 44), &qword_100601CE0, &qword_1004C99F0);
  v1 = v0[47];
  v0[71] = v1;
  if (v1)
  {
    v0[72] = v0[48];
    v0[73] = sub_100009178(v0 + 44, v1);
    swift_storeEnumTagMultiPayload();
    sub_1004BC474();
    v0[74] = sub_1004BC464();
    v3 = sub_1004BC3E4();

    return _swift_task_switch(sub_1000BD838, v3, v2);
  }

  else
  {
    sub_100007214((v0 + 44), &qword_100601CE0, &qword_1004C99F0);
    (*(v0[66] + 8))(v0[68], v0[65]);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1000BD838()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[61];

  sub_1002388BC(v3, 0, v2, v1);
  sub_1000C3C6C(v3, type metadata accessor for Notice.Variant);

  return _swift_task_switch(sub_1000BD8E8, 0, 0);
}

uint64_t sub_1000BD8E8()
{
  sub_100004C6C(v0 + 44);
  (*(v0[66] + 8))(v0[68], v0[65]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000BD9BC()
{
  v6 = v0[76];

  sub_100115C5C(5, (v0 + 35));
  v5 = (*(v6 + 8) + **(v6 + 8));
  v1 = swift_task_alloc();
  v0[79] = v1;
  *v1 = v0;
  v1[1] = sub_1000BDAEC;
  v2 = v0[76];
  v3 = v0[75];

  return v5(v0 + 35, v3, v2);
}

uint64_t sub_1000BDAEC()
{
  v1 = *v0;

  sub_100052310(v1 + 280);

  return _swift_task_switch(sub_1000C3D3C, 0, 0);
}

uint64_t sub_1000BDBF0(uint64_t a1)
{
  v2 = sub_1004BC464();
  v1[84] = v2;
  v3 = swift_task_alloc();
  v1[85] = v3;
  *(v3 + 16) = 5;
  *(v3 + 24) = v1 + 2;
  *(v3 + 32) = 0;
  v4 = swift_task_alloc();
  v1[86] = v4;
  *v4 = v1;
  v4[1] = sub_1000BDD04;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 92, v2, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001004FC910, sub_100052470, v3, &type metadata for Bool);
}

uint64_t sub_1000BDD04()
{
  v1 = *v0;

  v2 = *(v1 + 664);
  v3 = *(v1 + 656);

  return _swift_task_switch(sub_1000BDE64, v3, v2);
}

uint64_t sub_1000BDE64()
{

  return _swift_task_switch(sub_1000BDECC, 0, 0);
}

uint64_t sub_1000BDECC()
{
  sub_10005BC00((v0 + 2));
  (*(v0[57] + 8))(v0[59], v0[56]);
  (*(v0[66] + 8))(v0[68], v0[65]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000BDFB8()
{
  v6 = v0[88];

  sub_100114418(0, (v0 + 26));
  v5 = (*(v6 + 8) + **(v6 + 8));
  v1 = swift_task_alloc();
  v0[91] = v1;
  *v1 = v0;
  v1[1] = sub_1000BE0E8;
  v2 = v0[88];
  v3 = v0[87];

  return v5(v0 + 26, v3, v2);
}

uint64_t sub_1000BE0E8()
{
  v1 = *v0;

  sub_100052310(v1 + 208);

  return _swift_task_switch(sub_1000BE1EC, 0, 0);
}

uint64_t sub_1000BE1EC()
{
  (*(v0[57] + 8))(v0[59], v0[56]);
  (*(v0[66] + 8))(v0[68], v0[65]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000BE2D0()
{
  (*(v0[66] + 8))(v0[68], v0[65]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000BE3A0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4 + 24))
  {
    sub_100004C6C((v0 + v4));
  }

  v6 = v0 + v5;
  if (*(v0 + v5 + 64) != 1)
  {
    swift_unknownObjectWeakDestroy();
    v7 = *(v6 + 48);
    if (v7 != 255)
    {
      sub_100048974(*(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), v7);
    }

    if (*(v6 + 64))
    {
    }

    if (*(v6 + 80))
    {
    }
  }

  sub_100004C6C((v0 + ((v5 + 103) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1000BE4EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);
  v5 = (*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10001384C;

  return sub_1000BCEDC(v6, v0 + v4, v0 + v5, v0 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8), v0 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8), v2, v3);
}

uint64_t sub_1000BE61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  sub_100003ABC(&qword_1006014F8, &unk_1004C8AA0);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = type metadata accessor for MetricsEvent.Click(0);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  sub_100003ABC(&qword_100601C50, &unk_1004C9840);
  v6[29] = swift_task_alloc();
  v7 = type metadata accessor for Actions.MetricsReportingContext(0);
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000BE834, 0, 0);
}

uint64_t sub_1000BE834()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v1(3);
  }

  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  sub_10000F778(*(v0 + 88), v4, &qword_100601C50, &unk_1004C9840);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_100007214(*(v0 + 232), &qword_100601C50, &unk_1004C9840);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 224);
    v8 = *(v0 + 104);
    sub_1000521DC(*(v0 + 232), *(v0 + 256), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 264) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 272) = v9;
    v10 = sub_1004B6B04();
    *(v0 + 280) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 288) = v12;
    *(v0 + 296) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v7, 1, 1, v10);
    sub_100003ABC(&qword_100601E58, &qword_1004CA360);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004C50A0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v8);
    *(inited + 40) = v14;
    *(inited + 48) = 0;
    *(v0 + 304) = sub_100029080(inited);
    *(v0 + 312) = v15;
    *(v0 + 320) = v16;
    *(v0 + 336) = v17;
    swift_setDeallocating();
    sub_10005DC68(inited + 32);
    sub_1004BC474();
    *(v0 + 328) = sub_1004BC464();
    v19 = sub_1004BC3E4();

    return _swift_task_switch(sub_1000BEB40, v19, v18);
  }
}

uint64_t sub_1000BEB40()
{
  v80 = *(v0 + 336);
  v73 = *(v0 + 304);
  v76 = *(v0 + 272);
  v78 = *(v0 + 320);
  v74 = *(v0 + 264);
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  v72 = *(v0 + 168);

  sub_10000F778(v3, v4, &qword_100600DE0, &unk_1004C66D0);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_10000F778(v1 + v2[5], v7, &qword_1006014F8, &unk_1004C8AA0);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 5893;
  sub_100025B04(v4, v6 + v5[7], &qword_100600DE0, &unk_1004C66D0);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_10000F778(v7, v72, &qword_1006014F8, &unk_1004C8AA0);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 336);
  v17 = *(v0 + 312);
  v18 = *(v0 + 320);
  v19 = *(v0 + 304);
  v20 = *(v0 + 168);
  if (v15 == 1)
  {

    sub_100024AE0(v75, v77);

    sub_100025A94(v19, v17, v18, v16, SBYTE1(v16));
    sub_100007214(v20, &qword_1006014F8, &unk_1004C8AA0);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100024AE0(v75, v77);

    sub_100025A94(v19, v17, v18, v16, SBYTE1(v16));

    sub_1000C3C6C(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 176);
  v24 = *(v0 + 160);
  v25 = (*(v0 + 192) + *(*(v0 + 184) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_10000F778(v23, v24, &qword_1006014F8, &unk_1004C8AA0);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 160);
  if (v26 == 1)
  {
    sub_100007214(*(v0 + 160), &qword_1006014F8, &unk_1004C8AA0);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1000C3C6C(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 176);
  v31 = *(v0 + 152);
  v32 = (*(v0 + 192) + *(*(v0 + 184) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_10000F778(v30, v31, &qword_1006014F8, &unk_1004C8AA0);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 288);
    v34 = *(v0 + 280);
    v35 = *(v0 + 208);
    sub_100007214(*(v0 + 152), &qword_1006014F8, &unk_1004C8AA0);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 152);
    sub_10000F778(v36 + v14[6], *(v0 + 208), &qword_100600DE0, &unk_1004C66D0);
    sub_1000C3C6C(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 176);
  v38 = *(v0 + 144);
  sub_100025B04(*(v0 + 208), *(v0 + 192) + *(*(v0 + 184) + 56), &qword_100600DE0, &unk_1004C66D0);
  sub_10000F778(v37, v38, &qword_1006014F8, &unk_1004C8AA0);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 144);
  if (v39 == 1)
  {
    sub_100007214(*(v0 + 144), &qword_1006014F8, &unk_1004C8AA0);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_1000C3C6C(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 176);
  v43 = *(v0 + 136);
  *(*(v0 + 192) + *(*(v0 + 184) + 60)) = v41;
  sub_10000F778(v42, v43, &qword_1006014F8, &unk_1004C8AA0);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 136);
  if (v44 == 1)
  {
    sub_100007214(v45, &qword_1006014F8, &unk_1004C8AA0);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_1000C3C6C(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 176);
  v48 = *(v0 + 128);
  *(*(v0 + 192) + *(*(v0 + 184) + 64)) = v46;
  sub_10000F778(v47, v48, &qword_1006014F8, &unk_1004C8AA0);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 128);
  if (v49 == 1)
  {
    sub_100007214(*(v0 + 128), &qword_1006014F8, &unk_1004C8AA0);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1000C3C6C(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 176);
  v55 = *(v0 + 120);
  v56 = (*(v0 + 192) + *(*(v0 + 184) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100025B04(v54, v55, &qword_1006014F8, &unk_1004C8AA0);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 120);
  if (v57 == 1)
  {
    sub_100007214(v58, &qword_1006014F8, &unk_1004C8AA0);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_1000C3C6C(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 192);
  v61 = *(v0 + 200);
  v62 = *(v0 + 184);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_1000521DC(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1005FFE00 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 312);
  v63 = *(v0 + 320);
  v65 = *(v0 + 304);
  v66 = *(v0 + 256);
  v67 = *(v0 + 240);
  v68 = *(v0 + 224);
  v69 = *(v0 + 200);
  v70 = *(v0 + 336);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100052244(v65, v64, v63, v70, SBYTE1(v70));
  sub_1000C3C6C(v69, type metadata accessor for MetricsEvent.Click);
  sub_100007214(v68, &qword_100600DE0, &unk_1004C66D0);

  return _swift_task_switch(sub_1000BF2F4, 0, 0);
}

uint64_t sub_1000BF2F4()
{
  sub_1000C3C6C(*(v0 + 256), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000BF430()
{
  v1 = *(v0 + 16);
  v2 = *(sub_100003ABC(&qword_100601C50, &unk_1004C9840) - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  if (*(v0 + 32))
  {
  }

  v7 = v0 + v4;
  v8 = type metadata accessor for Actions.MetricsReportingContext(0);
  if (!(*(*(v8 - 8) + 48))(v0 + v4, 1, v8))
  {
    v16 = v3;
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v15 = *(v10 + 24);
      v11 = sub_1004B6B04();
      v13 = *(v11 - 8);
      v14 = v11;
      if (!(*(v13 + 48))(v9 + v15, 1))
      {
        (*(v13 + 8))(v9 + v15, v14);
      }
    }

    v3 = v16;
  }

  (*(v5 + 8))(v0 + ((v4 + v3 + v6) & ~v6), v1);

  return swift_deallocObject();
}

uint64_t sub_1000BF700()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(sub_100003ABC(&qword_100601C50, &unk_1004C9840) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = v0[4];
  v8 = v0[5];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_10001384C;

  return sub_1000BE61C(v7, v8, v0 + v5, v0 + v6, v3, v2);
}

uint64_t (*Actions.Favorite.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1918989427;
  *(v0 + 24) = 0xE400000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 1918989427;
  *(v1 + 24) = 0xE400000000000000;
  return sub_100051CB8;
}

uint64_t (*Actions.Favorite.Context.menuItemCompactStyleImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6C69662E72617473;
  *(v0 + 24) = 0xE90000000000006CLL;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6C69662E72617473;
  *(v1 + 24) = 0xE90000000000006CLL;
  return sub_1000524E8;
}

uint64_t (*sub_1000BF9BC())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1918989427;
  *(v0 + 24) = 0xE400000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 1918989427;
  *(v1 + 24) = 0xE400000000000000;
  return sub_1000524E8;
}

uint64_t (*sub_1000BFA50())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6C69662E72617473;
  *(v0 + 24) = 0xE90000000000006CLL;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6C69662E72617473;
  *(v1 + 24) = 0xE90000000000006CLL;
  return sub_1000524E8;
}

uint64_t (*Actions.UndoFavorite.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x616C732E72617473;
  *(v0 + 24) = 0xEA00000000006873;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x616C732E72617473;
  *(v1 + 24) = 0xEA00000000006873;
  return sub_1000524E8;
}

uint64_t (*Actions.UndoFavorite.Context.menuItemCompactStyleImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x616C732E72617473;
  *(v0 + 24) = 0xEF6C6C69662E6873;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x616C732E72617473;
  *(v1 + 24) = 0xEF6C6C69662E6873;
  return sub_1000524E8;
}

uint64_t (*sub_1000BFC84())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x616C732E72617473;
  *(v0 + 24) = 0xEA00000000006873;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x616C732E72617473;
  *(v1 + 24) = 0xEA00000000006873;
  return sub_1000524E8;
}

uint64_t (*sub_1000BFD24())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x616C732E72617473;
  *(v0 + 24) = 0xEF6C6C69662E6873;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x616C732E72617473;
  *(v1 + 24) = 0xEF6C6C69662E6873;
  return sub_1000524E8;
}

uint64_t sub_1000BFE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1004BAE94();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003ABC(&qword_100602A98, &qword_1004CC0C0);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v14 - v10;
  sub_1004B7704();
  sub_1004BAF94();
  (*(v5 + 8))(v7, v4);
  v12 = sub_1000C0028();
  (*(v9 + 8))(v11, v8);
  return v12;
}

uint64_t sub_1000C0028()
{
  v1 = v0;
  v2 = sub_1004BAE84();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003ABC(&qword_100602A98, &qword_1004CC0C0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin();
  v12 = &v17 - v11;
  v13 = *(v7 + 16);
  v13(&v17 - v11, v1, v6, v10);
  v14 = (*(v7 + 88))(v12, v6);
  if (v14 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v7 + 96))(v12, v6);
    (*(v3 + 32))(v5, v12, v2);
    v15 = sub_1000C189C(v5);
    (*(v3 + 8))(v5, v2);
  }

  else if (v14 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    return 0;
  }

  else
  {
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_1004BD404(27);

    v17 = 0xD000000000000019;
    v18 = 0x80000001004FDBC0;
    (v13)(v9, v1, v6);
    v19._countAndFlagsBits = sub_1004BBF04();
    sub_1004BC024(v19);

    v15 = v17;
    (*(v7 + 8))(v12, v6);
  }

  return v15;
}

uint64_t sub_1000C02F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a3;
  v5[8] = type metadata accessor for Notice.Variant(0);
  v5[9] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[10] = v9;
  *v9 = v5;
  v9[1] = sub_1000C03DC;

  return MusicLibrary.new_dislike<A>(_:)(a2, a4, a5);
}

uint64_t sub_1000C03DC()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_1000C0528, 0, 0);
  }
}

uint64_t sub_1000C0528()
{
  sub_10000F778(v0[7], (v0 + 2), &qword_100601CE0, &qword_1004C99F0);
  v1 = v0[5];
  v0[11] = v1;
  if (v1)
  {
    v0[12] = v0[6];
    v0[13] = sub_100009178(v0 + 2, v1);
    swift_storeEnumTagMultiPayload();
    sub_1004BC474();
    v0[14] = sub_1004BC464();
    v3 = sub_1004BC3E4();

    return _swift_task_switch(sub_1000C0660, v3, v2);
  }

  else
  {
    sub_100007214((v0 + 2), &qword_100601CE0, &qword_1004C99F0);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1000C0660()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];

  sub_1002388BC(v3, 0, v2, v1);
  sub_1000C3C6C(v3, type metadata accessor for Notice.Variant);

  return _swift_task_switch(sub_1000C0708, 0, 0);
}

uint64_t sub_1000C0708()
{
  sub_100004C6C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000C0774()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4 + 24))
  {
    sub_100004C6C((v0 + v4));
  }

  return swift_deallocObject();
}

uint64_t sub_1000C084C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);
  v5 = (*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000136EC;

  return sub_1000C02F0(v6, v0 + v4, v0 + v5, v2, v3);
}

uint64_t sub_1000C095C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  sub_100003ABC(&qword_1006014F8, &unk_1004C8AA0);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for MetricsEvent.Click(0);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_100003ABC(&qword_100601C50, &unk_1004C9840);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext(0);
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_1000C0B70, 0, 0);
}

uint64_t sub_1000C0B70()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_10000F778(*(v0 + 72), v3, &qword_100601C50, &unk_1004C9840);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100007214(*(v0 + 216), &qword_100601C50, &unk_1004C9840);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 88);
    sub_1000521DC(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 248) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 256) = v8;
    v9 = sub_1004B6B04();
    *(v0 + 264) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 272) = v11;
    *(v0 + 280) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_100003ABC(&qword_100601E58, &qword_1004CA360);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004C50A0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 288) = sub_100029080(inited);
    *(v0 + 296) = v14;
    *(v0 + 304) = v15;
    *(v0 + 320) = v16;
    swift_setDeallocating();
    sub_10005DC68(inited + 32);
    sub_1004BC474();
    *(v0 + 312) = sub_1004BC464();
    v18 = sub_1004BC3E4();

    return _swift_task_switch(sub_1000C0E64, v18, v17);
  }
}

uint64_t sub_1000C0E64()
{
  v80 = *(v0 + 320);
  v73 = *(v0 + 288);
  v76 = *(v0 + 256);
  v78 = *(v0 + 304);
  v74 = *(v0 + 248);
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v72 = *(v0 + 152);

  sub_10000F778(v3, v4, &qword_100600DE0, &unk_1004C66D0);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_10000F778(v1 + v2[5], v7, &qword_1006014F8, &unk_1004C8AA0);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 6149;
  sub_100025B04(v4, v6 + v5[7], &qword_100600DE0, &unk_1004C66D0);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_10000F778(v7, v72, &qword_1006014F8, &unk_1004C8AA0);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 320);
  v17 = *(v0 + 296);
  v18 = *(v0 + 304);
  v19 = *(v0 + 288);
  v20 = *(v0 + 152);
  if (v15 == 1)
  {

    sub_100024AE0(v75, v77);

    sub_100025A94(v19, v17, v18, v16, SBYTE1(v16));
    sub_100007214(v20, &qword_1006014F8, &unk_1004C8AA0);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100024AE0(v75, v77);

    sub_100025A94(v19, v17, v18, v16, SBYTE1(v16));

    sub_1000C3C6C(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = (*(v0 + 176) + *(*(v0 + 168) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_10000F778(v23, v24, &qword_1006014F8, &unk_1004C8AA0);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 144);
  if (v26 == 1)
  {
    sub_100007214(*(v0 + 144), &qword_1006014F8, &unk_1004C8AA0);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1000C3C6C(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = (*(v0 + 176) + *(*(v0 + 168) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_10000F778(v30, v31, &qword_1006014F8, &unk_1004C8AA0);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 192);
    sub_100007214(*(v0 + 136), &qword_1006014F8, &unk_1004C8AA0);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 136);
    sub_10000F778(v36 + v14[6], *(v0 + 192), &qword_100600DE0, &unk_1004C66D0);
    sub_1000C3C6C(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  sub_100025B04(*(v0 + 192), *(v0 + 176) + *(*(v0 + 168) + 56), &qword_100600DE0, &unk_1004C66D0);
  sub_10000F778(v37, v38, &qword_1006014F8, &unk_1004C8AA0);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 128);
  if (v39 == 1)
  {
    sub_100007214(*(v0 + 128), &qword_1006014F8, &unk_1004C8AA0);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_1000C3C6C(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 120);
  *(*(v0 + 176) + *(*(v0 + 168) + 60)) = v41;
  sub_10000F778(v42, v43, &qword_1006014F8, &unk_1004C8AA0);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 120);
  if (v44 == 1)
  {
    sub_100007214(v45, &qword_1006014F8, &unk_1004C8AA0);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_1000C3C6C(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  *(*(v0 + 176) + *(*(v0 + 168) + 64)) = v46;
  sub_10000F778(v47, v48, &qword_1006014F8, &unk_1004C8AA0);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 112);
  if (v49 == 1)
  {
    sub_100007214(*(v0 + 112), &qword_1006014F8, &unk_1004C8AA0);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1000C3C6C(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 160);
  v55 = *(v0 + 104);
  v56 = (*(v0 + 176) + *(*(v0 + 168) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100025B04(v54, v55, &qword_1006014F8, &unk_1004C8AA0);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 104);
  if (v57 == 1)
  {
    sub_100007214(v58, &qword_1006014F8, &unk_1004C8AA0);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_1000C3C6C(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_1000521DC(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1005FFE00 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 296);
  v63 = *(v0 + 304);
  v65 = *(v0 + 288);
  v66 = *(v0 + 240);
  v67 = *(v0 + 224);
  v68 = *(v0 + 208);
  v69 = *(v0 + 184);
  v70 = *(v0 + 320);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100052244(v65, v64, v63, v70, SBYTE1(v70));
  sub_1000C3C6C(v69, type metadata accessor for MetricsEvent.Click);
  sub_100007214(v68, &qword_100600DE0, &unk_1004C66D0);

  return _swift_task_switch(sub_1000C1618, 0, 0);
}

uint64_t sub_1000C1618()
{
  sub_1000C3C6C(*(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000C1754()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(sub_100003ABC(&qword_100601C50, &unk_1004C9840) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10001384C;

  return sub_1000C095C(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_1000C189C(uint64_t a1)
{
  v2 = sub_1004BAE84();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v14 - v7;
  v9 = *(v3 + 16);
  v9(&v14 - v7, a1, v2, v6);
  v10 = (*(v3 + 88))(v8, v2);
  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.unsupportedType(_:))
  {
    return 0xD000000000000010;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.alreadyDisliked(_:))
  {
    return 0xD000000000000010;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.cannotDislikeWhenFavorited(_:))
  {
    v12 = 13;
    return v12 | 0xD000000000000010;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.cannotDislikeWhenLiked(_:))
  {
LABEL_8:
    v12 = 9;
    return v12 | 0xD000000000000010;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.subscriptionRequired(_:))
  {
    v12 = 5;
    return v12 | 0xD000000000000010;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.cloudLibraryRequired(_:))
  {
    return 0xD000000000000016;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.networkRequired(_:))
  {
    return 0xD000000000000010;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.sharedLibrary(_:))
  {
    return 0x6C20646572616853;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.cloudLibraryInitialImport(_:))
  {
    goto LABEL_8;
  }

  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1004BD404(17);

  v14 = 0x206E776F6E6B6E55;
  v15 = 0xEF206E6F73616572;
  (v9)(v5, a1, v2);
  v16._countAndFlagsBits = sub_1004BBF04();
  sub_1004BC024(v16);

  v13 = v14;
  (*(v3 + 8))(v8, v2);
  return v13;
}

uint64_t sub_1000C1BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1004BAFB4();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003ABC(&qword_100602A90, &qword_1004CC0B8);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v14 - v10;
  sub_1004B7684();
  sub_1004BAF94();
  (*(v5 + 8))(v7, v4);
  v12 = sub_1000C1E00();
  (*(v9 + 8))(v11, v8);
  return v12;
}

uint64_t sub_1000C1E00()
{
  v1 = sub_1004BAFA4();
  v19 = *(v1 - 8);
  __chkstk_darwin();
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v18 - v4;
  v6 = sub_100003ABC(&qword_100602A90, &qword_1004CC0B8);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin();
  v12 = &v18 - v11;
  v13 = *(v7 + 16);
  v18 = v0;
  v13(&v18 - v11, v0, v6, v10);
  v14 = (*(v7 + 88))(v12, v6);
  if (v14 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v7 + 96))(v12, v6);
    v15 = v19;
    (*(v19 + 32))(v5, v12, v1);
    (*(v15 + 16))(v3, v5, v1);
    v16 = sub_1004BBF04();
    (*(v15 + 8))(v5, v1);
  }

  else if (v14 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    return 0;
  }

  else
  {
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_1004BD404(27);

    v20 = 0xD000000000000019;
    v21 = 0x80000001004FDBC0;
    (v13)(v9, v18, v6);
    v22._countAndFlagsBits = sub_1004BBF04();
    sub_1004BC024(v22);

    v16 = v20;
    (*(v7 + 8))(v12, v6);
  }

  return v16;
}

uint64_t sub_1000C2110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_10001384C;

  return MusicLibrary.new_undoDislike<A>(_:)(a2, a3, a4);
}

uint64_t sub_1000C21C8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000C2284()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);
  v5 = v0[4];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10001384C;

  return sub_1000C2110(v5, v0 + v4, v2, v3);
}

uint64_t sub_1000C2368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  sub_100003ABC(&qword_1006014F8, &unk_1004C8AA0);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for MetricsEvent.Click(0);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_100003ABC(&qword_100601C50, &unk_1004C9840);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext(0);
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_1000C257C, 0, 0);
}

uint64_t sub_1000C257C()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_10000F778(*(v0 + 72), v3, &qword_100601C50, &unk_1004C9840);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100007214(*(v0 + 216), &qword_100601C50, &unk_1004C9840);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 88);
    sub_1000521DC(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 248) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 256) = v8;
    v9 = sub_1004B6B04();
    *(v0 + 264) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 272) = v11;
    *(v0 + 280) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_100003ABC(&qword_100601E58, &qword_1004CA360);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004C50A0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 288) = sub_100029080(inited);
    *(v0 + 296) = v14;
    *(v0 + 304) = v15;
    *(v0 + 320) = v16;
    swift_setDeallocating();
    sub_10005DC68(inited + 32);
    sub_1004BC474();
    *(v0 + 312) = sub_1004BC464();
    v18 = sub_1004BC3E4();

    return _swift_task_switch(sub_1000C2870, v18, v17);
  }
}

uint64_t sub_1000C2870()
{
  v80 = *(v0 + 320);
  v73 = *(v0 + 288);
  v76 = *(v0 + 256);
  v78 = *(v0 + 304);
  v74 = *(v0 + 248);
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v72 = *(v0 + 152);

  sub_10000F778(v3, v4, &qword_100600DE0, &unk_1004C66D0);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_10000F778(v1 + v2[5], v7, &qword_1006014F8, &unk_1004C8AA0);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 6405;
  sub_100025B04(v4, v6 + v5[7], &qword_100600DE0, &unk_1004C66D0);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_10000F778(v7, v72, &qword_1006014F8, &unk_1004C8AA0);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 320);
  v17 = *(v0 + 296);
  v18 = *(v0 + 304);
  v19 = *(v0 + 288);
  v20 = *(v0 + 152);
  if (v15 == 1)
  {

    sub_100024AE0(v75, v77);

    sub_100025A94(v19, v17, v18, v16, SBYTE1(v16));
    sub_100007214(v20, &qword_1006014F8, &unk_1004C8AA0);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100024AE0(v75, v77);

    sub_100025A94(v19, v17, v18, v16, SBYTE1(v16));

    sub_1000C3C6C(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = (*(v0 + 176) + *(*(v0 + 168) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_10000F778(v23, v24, &qword_1006014F8, &unk_1004C8AA0);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 144);
  if (v26 == 1)
  {
    sub_100007214(*(v0 + 144), &qword_1006014F8, &unk_1004C8AA0);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1000C3C6C(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = (*(v0 + 176) + *(*(v0 + 168) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_10000F778(v30, v31, &qword_1006014F8, &unk_1004C8AA0);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 192);
    sub_100007214(*(v0 + 136), &qword_1006014F8, &unk_1004C8AA0);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 136);
    sub_10000F778(v36 + v14[6], *(v0 + 192), &qword_100600DE0, &unk_1004C66D0);
    sub_1000C3C6C(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  sub_100025B04(*(v0 + 192), *(v0 + 176) + *(*(v0 + 168) + 56), &qword_100600DE0, &unk_1004C66D0);
  sub_10000F778(v37, v38, &qword_1006014F8, &unk_1004C8AA0);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 128);
  if (v39 == 1)
  {
    sub_100007214(*(v0 + 128), &qword_1006014F8, &unk_1004C8AA0);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_1000C3C6C(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 120);
  *(*(v0 + 176) + *(*(v0 + 168) + 60)) = v41;
  sub_10000F778(v42, v43, &qword_1006014F8, &unk_1004C8AA0);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 120);
  if (v44 == 1)
  {
    sub_100007214(v45, &qword_1006014F8, &unk_1004C8AA0);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_1000C3C6C(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  *(*(v0 + 176) + *(*(v0 + 168) + 64)) = v46;
  sub_10000F778(v47, v48, &qword_1006014F8, &unk_1004C8AA0);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 112);
  if (v49 == 1)
  {
    sub_100007214(*(v0 + 112), &qword_1006014F8, &unk_1004C8AA0);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1000C3C6C(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 160);
  v55 = *(v0 + 104);
  v56 = (*(v0 + 176) + *(*(v0 + 168) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100025B04(v54, v55, &qword_1006014F8, &unk_1004C8AA0);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 104);
  if (v57 == 1)
  {
    sub_100007214(v58, &qword_1006014F8, &unk_1004C8AA0);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_1000C3C6C(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_1000521DC(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1005FFE00 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 296);
  v63 = *(v0 + 304);
  v65 = *(v0 + 288);
  v66 = *(v0 + 240);
  v67 = *(v0 + 224);
  v68 = *(v0 + 208);
  v69 = *(v0 + 184);
  v70 = *(v0 + 320);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100052244(v65, v64, v63, v70, SBYTE1(v70));
  sub_1000C3C6C(v69, type metadata accessor for MetricsEvent.Click);
  sub_100007214(v68, &qword_100600DE0, &unk_1004C66D0);

  return _swift_task_switch(sub_1000C3CD8, 0, 0);
}

uint64_t sub_1000C3024()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(sub_100003ABC(&qword_100601C50, &unk_1004C9840) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10001384C;

  return sub_1000C2368(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_1000C318C(uint64_t a1, uint64_t a2)
{
  sub_1004B6E64();
  __chkstk_darwin();
  v2 = sub_1004BBE14();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v11[-v6];
  sub_1004BBDA4();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v8 = qword_100617118;
  sub_1004B6DF4();
  v9 = sub_1004BBED4();
  (*(v3 + 8))(v7, v2);
  return v9;
}

uint64_t (*Actions.SuggestLess.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7568742E646E6168;
  *(v0 + 24) = 0xEF6E776F6473626DLL;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7568742E646E6168;
  *(v1 + 24) = 0xEF6E776F6473626DLL;
  return sub_1000524E8;
}

uint64_t sub_1000C3434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1004B6E64();
  __chkstk_darwin();
  v4 = sub_1004BBE14();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v13[-v8];
  sub_1004BBDA4();
  (*(v5 + 16))(v7, v9, v4);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v10 = qword_100617118;
  sub_1004B6DF4();
  v11 = sub_1004BBED4();
  (*(v5 + 8))(v9, v4);
  return v11;
}

uint64_t (*sub_1000C3614())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7568742E646E6168;
  *(v0 + 24) = 0xEF6E776F6473626DLL;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7568742E646E6168;
  *(v1 + 24) = 0xEF6E776F6473626DLL;
  return sub_1000524E8;
}

uint64_t (*Actions.UndoSuggestLess.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000015;
  *(v0 + 24) = 0x80000001004FDBE0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000015;
  *(v1 + 24) = 0x80000001004FDBE0;
  return sub_1000524E8;
}

uint64_t (*sub_1000C3760())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000015;
  *(v0 + 24) = 0x80000001004FDBE0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000015;
  *(v1 + 24) = 0x80000001004FDBE0;
  return sub_1000524E8;
}

uint64_t _s9MusicCore7ActionsO15UndoSuggestLessO7ContextV13menuItemTitleSSvg_0()
{
  sub_1004B6E64();
  __chkstk_darwin();
  v0 = sub_1004BBE14();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  sub_1004BBDA4();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v6 = qword_100617118;
  sub_1004B6DF4();
  v7 = sub_1004BBED4();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t _s9MusicCore7ActionsO12UndoFavoriteO7ContextV25menuItemCompactStyleTitleSSSgvg_0()
{
  sub_1004B6E64();
  __chkstk_darwin();
  v0 = sub_1004BBE14();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  sub_1004BBDA4();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v6 = qword_100617118;
  sub_1004B6DF4();
  v7 = sub_1004BBED4();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t sub_1000C3C34()
{

  return swift_deallocObject();
}

uint64_t sub_1000C3C6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t (*Actions.RateSong.Context.init<A>(item:library:ratingViewController:presentationSource:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  v31 = a8;
  v32 = a3;
  v29 = a7;
  v30 = a2;
  v33 = a4;
  v34 = a5;
  v28 = a1;
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v27 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin();
  v15 = &v27 - v14;
  (*(v11 + 16))(&v27 - v14, v13);
  v16 = *(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a6;
  *(v17 + 3) = a7;
  v18 = v31;
  *(v17 + 4) = v31;
  *(v17 + 5) = a2;
  v19 = *(v11 + 32);
  v19(&v17[(v16 + 48) & ~v16], v15, a6);
  v19(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v28, a6);
  v20 = (v16 + 56) & ~v16;
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = v29;
  *(v22 + 2) = a6;
  *(v22 + 3) = v23;
  v25 = v32;
  v24 = v33;
  *(v22 + 4) = v18;
  *(v22 + 5) = v25;
  *(v22 + 6) = v24;
  v19(&v22[v20], v27, a6);
  *&v22[v21] = v30;
  sub_100048998(v34, &v22[(v21 + 15) & 0xFFFFFFFFFFFFFFF8]);

  return sub_1000C4800;
}

uint64_t static Actions.RateSong.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 38;
  *(a5 + 40) = sub_10004B4C4;
  *(a5 + 48) = 0;
  *(a5 + 56) = 0x4014000000000000;
  *(a5 + 64) = &unk_1004CC130;
  *(a5 + 72) = 0;
  *(a5 + 80) = &unk_1004CC138;
  *(a5 + 88) = 0;
}

uint64_t sub_1000C4014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = v2;
  *(a2 + 32) = 38;
  *(a2 + 40) = sub_10004B4C4;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0x4014000000000000;
  *(a2 + 64) = &unk_1004CC130;
  *(a2 + 72) = 0;
  *(a2 + 80) = &unk_1004CC138;
  *(a2 + 88) = 0;
}

uint64_t Actions.RateSong.Context.menuItemTitle.getter()
{
  sub_1004B6E64();
  __chkstk_darwin();
  v0 = sub_1004BBE14();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  sub_1004BBDA4();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v6 = qword_100617118;
  sub_1004B6DF4();
  v7 = sub_1004BBED4();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t (*Actions.RateSong.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000017;
  *(v0 + 24) = 0x80000001004FDDA0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000017;
  *(v1 + 24) = 0x80000001004FDDA0;
  return sub_100051CB8;
}

uint64_t (*sub_1000C4330())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000017;
  *(v0 + 24) = 0x80000001004FDDA0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000017;
  *(v1 + 24) = 0x80000001004FDDA0;
  return sub_1000524E8;
}

unint64_t sub_1000C43D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[2] = a2;
  v22[3] = a3;
  v5 = sub_1004BB0E4();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003ABC(&qword_100601DE8, &qword_1004C9C78);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v22 - v11;
  sub_1004BB1D4();
  sub_1004BB1C4();
  v13 = sub_1004BB014();

  if ((v13 & 1) == 0)
  {
    return 0xD00000000000001DLL;
  }

  v22[1] = a4;
  v14 = [objc_opt_self() standardUserDefaults];
  v15 = sub_1004BBE24();
  v16 = [v14 BOOLForKey:v15];

  if (!v16)
  {
    return 0xD000000000000018;
  }

  sub_1004B76B4();
  sub_1004BAF94();
  (*(v6 + 8))(v8, v5);
  if ((*(v10 + 88))(v12, v9) == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v10 + 96))(v12, v9);
    v17 = sub_1004BB0D4();
    v18 = *(v17 - 8);
    v19 = (*(v18 + 88))(v12, v17);
    v20 = enum case for MusicLibrary.AddAction.UnsupportedReason.alreadyAdded(_:);
    (*(v18 + 8))(v12, v17);
    if (v19 == v20)
    {
      return 0;
    }
  }

  else
  {
    (*(v10 + 8))(v12, v9);
  }

  return 0xD000000000000011;
}

uint64_t sub_1000C4744()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

id NSUserDefaults.showStarRatings.getter()
{
  v1 = sub_1004BBE24();
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

uint64_t sub_1000C48A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[32] = a7;
  v8[33] = a8;
  v8[30] = a5;
  v8[31] = a6;
  v8[28] = a3;
  v8[29] = a4;
  v8[26] = a1;
  v8[27] = a2;
  v9 = *(a6 - 8);
  v8[34] = v9;
  v8[35] = *(v9 + 64);
  v8[36] = swift_task_alloc();
  sub_1004B6E64();
  v8[37] = swift_task_alloc();
  v10 = sub_1004BBE14();
  v8[38] = v10;
  v8[39] = *(v10 - 8);
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  sub_1004BC474();
  v8[42] = sub_1004BC464();
  v12 = sub_1004BC3E4();

  return _swift_task_switch(sub_1000C4A30, v12, v11);
}

uint64_t sub_1000C4A30()
{
  v1 = v0[41];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];

  sub_1004BBDA4();
  v50 = *(v3 + 16);
  v50(v2, v1, v4);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v5 = v0[41];
  v48 = v0[40];
  v6 = v0[38];
  v7 = v0[39];
  v43 = v0[36];
  v46 = v0[30];
  v44 = v0[33];
  v45 = v0[29];
  v42 = v0[34];
  v39 = v0[28];
  v40 = v0[26];
  v8 = qword_100617118;
  v49 = *(v0 + 31);
  sub_1004B6DF4();
  v9 = v8;
  sub_1004BBED4();
  v10 = *(v7 + 8);
  v10(v5, v6);
  v11 = sub_1004BBE24();

  v37 = [objc_opt_self() alertControllerWithTitle:v11 message:0 preferredStyle:1];

  sub_1004BBDA4();
  v50(v48, v5, v6);
  sub_1004B6DF4();
  sub_1004BBED4();
  v10(v5, v6);
  v12 = sub_1004BBE24();

  v38 = objc_opt_self();
  v13 = [v38 actionWithTitle:v12 style:1 handler:0];

  v47 = v13;
  [v37 addAction:v13];
  v14 = v40(v39);
  v41 = v15;
  sub_1004BBDA4();
  v50(v48, v5, v6);
  sub_1004B6DF4();
  sub_1004BBED4();
  v10(v5, v6);
  (*(v42 + 16))(v43, v39, v49);
  v16 = (*(v42 + 80) + 64) & ~*(v42 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v49;
  *(v17 + 32) = v44;
  *(v17 + 40) = v14;
  *(v17 + 48) = v41;
  *(v17 + 56) = v45;
  (*(v42 + 32))(v17 + v16, v43, v49);
  v18 = v14;

  v19 = sub_1004BBE24();

  v0[18] = sub_1000C5770;
  v0[19] = v17;
  v0[14] = _NSConcreteStackBlock;
  v0[15] = 1107296256;
  v0[16] = sub_1000C81CC;
  v0[17] = &unk_1005AE040;
  v20 = _Block_copy(v0 + 14);

  v21 = [v38 actionWithTitle:v19 style:0 handler:v20];
  _Block_release(v20);

  [v37 addAction:v21];
  [v37 setPreferredAction:v21];
  [v37 setContentViewController:v18];
  v22 = *(v46 + 80);
  if (v22)
  {
    v23 = *(v46 + 88);
    v24 = qword_1006000B8;

    if (v24 != -1)
    {
      swift_once();
    }

    v25 = sub_1004B80B4();
    sub_100007084(v25, qword_100607AD0);
    v26 = sub_1004B8094();
    v27 = sub_1004BC9A4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Deferring presentation…", v28, 2u);
    }

    v29 = v0[30];

    v30 = objc_allocWithZone(MSVBlockGuard);
    v0[24] = sub_10023620C;
    v0[25] = 0;
    v0[20] = _NSConcreteStackBlock;
    v0[21] = 1107296256;
    v0[22] = sub_10023720C;
    v0[23] = &unk_1005AE068;
    v31 = _Block_copy(v0 + 20);
    v32 = [v30 initWithTimeout:v31 interruptionHandler:10.0];
    _Block_release(v31);

    sub_100047AC4(v29, (v0 + 2));
    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    sub_100048998((v0 + 2), v33 + 24);
    *(v33 + 120) = v37;
    *(v33 + 128) = 257;
    *(v33 + 136) = 0;
    *(v33 + 144) = 0;
    v34 = v32;
    v22(v29, v37, sub_100052410, v33);
    sub_10003CC4C(v22, v23);
  }

  else
  {
    sub_1002346EC(v37, 1, 1, 0, 0);
  }

  v35 = v0[1];

  return v35();
}

uint64_t sub_1000C51CC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    sub_100048974(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000C52F4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = (*(*(v2 - 8) + 80) + 56) & ~*(*(v2 - 8) + 80);
  v7 = (*(*(v2 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v0[6];
  v10 = *(v0 + v7);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1000136EC;

  return sub_1000C48A4(v5, v9, v0 + v6, v10, v0 + v8, v2, v3, v4);
}

uint64_t sub_1000C5450()
{

  return swift_deallocObject();
}

uint64_t sub_1000C5488(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a7;
  v27 = a8;
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v17 = &v26 - v16;
  v18 = sub_1004BC4B4();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v13 + 16))(v15, a5, a6);
  sub_1004BC474();
  v19 = a2;

  v20 = sub_1004BC464();
  v21 = (*(v13 + 80) + 80) & ~*(v13 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = v20;
  *(v22 + 3) = &protocol witness table for MainActor;
  v24 = v26;
  v23 = v27;
  *(v22 + 4) = a6;
  *(v22 + 5) = v24;
  *(v22 + 6) = v23;
  *(v22 + 7) = v19;
  *(v22 + 8) = a3;
  *(v22 + 9) = a4;
  (*(v13 + 32))(&v22[v21], v15, a6);
  sub_1000FD6BC(0, 0, v17, &unk_1004CC1D8, v22);
}

uint64_t sub_1000C56AC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000C57B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000C57CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = v13;
  v8[9] = v14;
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v8[10] = *(a8 - 8);
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  sub_1004BC474();
  v8[13] = sub_1004BC464();
  v10 = sub_1004BC3E4();
  v8[14] = v10;
  v8[15] = v9;

  return _swift_task_switch(sub_1000C58D4, v10, v9);
}

uint64_t sub_1000C58D4()
{
  v1 = v0[8];
  v2 = v0[4];
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 8))(ObjectType, v2);
  v0[16] = v4;
  v5 = v4 / 5.0;
  v6 = swift_task_alloc();
  v0[17] = v6;
  v7 = *(v1 + 8);
  *v6 = v0;
  v6[1] = sub_1000C59BC;
  v8 = v0[9];
  v10 = v0[6];
  v9 = v0[7];
  v11.n128_f64[0] = v5;

  return MusicLibrary.setUserRating<A>(_:for:)(v10, v9, v7, v8, v11);
}

uint64_t sub_1000C59BC()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_1000C5B68;
  }

  else
  {
    v5 = sub_1000C5AF8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000C5AF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000C5B68()
{
  v31 = v0;

  if (qword_1005FFD38 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[10];
  v4 = v0[6];
  v3 = v0[7];
  v5 = sub_1004B80B4();
  sub_100007084(v5, static Logger.actions);
  v6 = *(v2 + 16);
  v6(v1, v4, v3);
  swift_errorRetain();
  v7 = sub_1004B8094();
  v8 = sub_1004BC984();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[18];
  if (v9)
  {
    v12 = v0[11];
    v11 = v0[12];
    v29 = v8;
    v13 = v0[10];
    v14 = v0[7];
    v15 = v0[16] / 5.0;
    v16 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v16 = 134349570;
    *(v16 + 4) = v15;
    *(v16 + 12) = 2082;
    v6(v12, v11, v14);
    v17 = sub_1004BBF04();
    v19 = v18;
    (*(v13 + 8))(v11, v14);
    v20 = sub_100012018(v17, v19, &v30);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2082;
    v0[2] = v10;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v21 = sub_1004BBF04();
    v23 = sub_100012018(v21, v22, &v30);

    *(v16 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v7, v29, "Failed to set userRating=%{public}f for item=%{public}s with error=%{public}s", v16, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v24 = v0[12];
    v25 = v0[10];
    v26 = v0[7];

    (*(v25 + 8))(v24, v26);
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_1000C5E60()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    sub_100048974(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000C5EF4()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000C5FC0(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[7];
  v5 = (*(*(v3 - 8) + 80) + 80) & ~*(*(v3 - 8) + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[8];
  v9 = v1[9];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000136EC;

  return sub_1000C57CC(a1, v6, v7, v4, v8, v9, v1 + v5, v3);
}

uint64_t View.alertPresenting(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{

  sub_100003ABC(&qword_100602AD0, qword_1004CC1E0);
  sub_1000206D4(&qword_100602AD8, &qword_100602AD0, qword_1004CC1E0, &protocol conformance descriptor for PresentedViewState<A>);
  sub_1004B8B74();
  v7 = sub_1000C61D8();
  View.viewPresenting<A, B>(_:modifier:)(a1, a3, v7, x8_0);
}

unint64_t sub_1000C61D8()
{
  result = qword_100602AE0;
  if (!qword_100602AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100602AE0);
  }

  return result;
}

uint64_t sub_1000C622C(void *a1)
{
  sub_1004B8D64();
  sub_100003B68(&qword_100602AE8, &qword_1004CC1F8);
  sub_1004B8D64();
  sub_1000C61D8();
  swift_getWitnessTable();
  sub_1000206D4(&qword_100602AF0, &qword_100602AE8, &qword_1004CC1F8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  return swift_getWitnessTable();
}

uint64_t sub_1000C6314(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000C635C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000C63C4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_100003ABC(&qword_100602B10, &qword_1004CC298);
  v56 = *(v5 - 8);
  __chkstk_darwin();
  v58 = &v44 - v6;
  v59 = sub_100003ABC(&qword_100602B18, &qword_1004CC2A0);
  __chkstk_darwin();
  v60 = &v44 - v7;
  v8 = sub_100003ABC(&qword_100602B20, &qword_1004CC2A8);
  v55 = *(v8 - 8);
  __chkstk_darwin();
  v57 = &v44 - v9;
  v10 = sub_100003ABC(&qword_100602B28, &qword_1004CC2B0);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v61 = &v44 - v12;
  v13 = (a2 + *(*a2 + 96));
  swift_beginAccess();
  v14 = v13[3];
  v82 = v13[2];
  v83 = v14;
  v84 = *(v13 + 8);
  v15 = v13[1];
  v81[0] = *v13;
  v81[1] = v15;
  if (!*(&v83 + 1))
  {
    return (*(v11 + 56))(a3, 1, 1, v10);
  }

  v50 = v8;
  v51 = v11;
  v52 = v10;
  v53 = v5;
  v54 = a3;
  v16 = v82;
  v17 = v81[0];
  v75 = v81[0];
  *v78 = *(v13 + 33);
  v18 = v13[3];
  v73[2] = v13[2];
  v73[3] = v18;
  v19 = *v13;
  v76 = v13[1];
  v77 = v82;
  *&v78[15] = *(v13 + 6);
  v79 = *(&v83 + 1);
  v80 = v84;
  v74 = *(v13 + 8);
  v73[0] = v19;
  v73[1] = v76;
  sub_1000C7A60(v73, &v65);
  v20 = sub_1004BA294();
  if (*(&v17 + 1))
  {
    v21 = v17;
  }

  else
  {
    v21 = 0;
  }

  v22 = 0xE000000000000000;
  if (*(&v17 + 1))
  {
    v22 = *(&v17 + 1);
  }

  v48 = v22;
  v49 = v20;
  v63 = v22;
  v64 = v20;
  v62 = v21;

  sub_100003ABC(&qword_100602AD0, qword_1004CC1E0);
  sub_1000206D4(&qword_100602AD8, &qword_100602AD0, qword_1004CC1E0, &protocol conformance descriptor for PresentedViewState<A>);
  sub_1004B8B84();
  swift_getKeyPath();
  sub_1004B8B94();

  if (v16)
  {
    v58 = &v44;
    LODWORD(v56) = v67;
    __chkstk_darwin();
    __chkstk_darwin();
    v23 = sub_100003ABC(&qword_100602B30, &qword_1004CC2E0);
    v24 = sub_100003ABC(&qword_100602B38, &qword_1004CC2E8);
    v45 = sub_10000E7F4();
    v46 = sub_1000C7B18();
    v47 = sub_1000C7C0C();
    v25 = v57;
    sub_1004B9FA4();

    v26 = v55;
    v27 = v50;
    (*(v55 + 16))(v60, v25, v50);
    swift_storeEnumTagMultiPayload();
    v65 = &type metadata for Color;
    v66 = &type metadata for String;
    v67 = v23;
    v68 = v24;
    v28 = v23;
    v29 = v45;
    v30 = v46;
    v69 = &protocol witness table for Color;
    v70 = v45;
    v31 = v47;
    v71 = v46;
    v72 = v47;
    swift_getOpaqueTypeConformance2();
    v65 = &type metadata for Color;
    v66 = &type metadata for String;
    v67 = v28;
    v68 = v24;
    v69 = &protocol witness table for Color;
    v70 = v29;
    v71 = v30;
    v72 = v31;
    swift_getOpaqueTypeConformance2();
    v32 = v61;
    sub_1004B9514();

    sub_100007214(v81, &qword_100602B60, &qword_1004D0580);
    (*(v26 + 8))(v57, v27);
  }

  else
  {
    v57 = &v44;
    LODWORD(v55) = v67;
    __chkstk_darwin();
    __chkstk_darwin();
    v34 = sub_100003ABC(&qword_100602B30, &qword_1004CC2E0);
    v35 = sub_100003ABC(&qword_100602B38, &qword_1004CC2E8);
    v45 = sub_10000E7F4();
    v46 = sub_1000C7B18();
    v47 = sub_1000C7C0C();
    v36 = v35;
    v37 = v58;
    sub_1004BA084();

    v38 = v56;
    v39 = v53;
    (*(v56 + 16))(v60, v37, v53);
    swift_storeEnumTagMultiPayload();
    v65 = &type metadata for Color;
    v66 = &type metadata for String;
    v67 = v34;
    v68 = v36;
    v40 = v45;
    v41 = v46;
    v69 = &protocol witness table for Color;
    v70 = v45;
    v42 = v47;
    v71 = v46;
    v72 = v47;
    swift_getOpaqueTypeConformance2();
    v65 = &type metadata for Color;
    v66 = &type metadata for String;
    v67 = v34;
    v68 = v36;
    v69 = &protocol witness table for Color;
    v70 = v40;
    v71 = v41;
    v72 = v42;
    swift_getOpaqueTypeConformance2();
    v32 = v61;
    sub_1004B9514();

    sub_100007214(v81, &qword_100602B60, &qword_1004D0580);
    (*(v38 + 8))(v58, v39);
  }

  v43 = v54;
  sub_1000C7C88(v32, v54);
  return (*(v51 + 56))(v43, 0, 1, v52);
}

uint64_t sub_1000C6D6C@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  *a2 = v4;
  return result;
}

uint64_t sub_1000C6E04(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004B85B4();
}

uint64_t sub_1000C6E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[9] = *(a1 + 56);
  swift_getKeyPath();
  v7 = swift_allocObject();
  v8 = *(a1 + 48);
  *(v7 + 48) = *(a1 + 32);
  *(v7 + 64) = v8;
  *(v7 + 80) = *(a1 + 64);
  v9 = *(a1 + 16);
  *(v7 + 16) = *a1;
  *(v7 + 32) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = v7;

  sub_1000C7A60(a1, v14);
  sub_100003ABC(&qword_100602B68, &qword_1004CC320);
  sub_100003ABC(&qword_100602B70, &qword_1004CC328);
  sub_1000C7D78();
  v11 = sub_100003B68(&qword_100602B48, &qword_1004CC2F0);
  v12 = sub_1000206D4(&qword_100602B50, &qword_100602B48, &qword_1004CC2F0, &protocol conformance descriptor for Button<A>);
  v14[0] = v11;
  v14[1] = v12;
  swift_getOpaqueTypeConformance2();
  return sub_1004BA654();
}

uint64_t sub_1000C7030@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 24))
  {
    sub_10000E7F4();

    result = sub_1004B9D84();
    v7 = v6 & 1;
  }

  else
  {
    result = 0;
    v4 = 0;
    v7 = 0;
    v5 = 0;
  }

  *a2 = result;
  a2[1] = v4;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

uint64_t sub_1000C70B4@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a1;
  v28 = a4;
  sub_100003ABC(&qword_100602B90, &qword_1004CC338);
  __chkstk_darwin();
  v7 = &v26 - v6;
  sub_100003ABC(&qword_100601930, &qword_1004C90E8);
  __chkstk_darwin();
  v9 = &v26 - v8;
  v10 = sub_100003ABC(&qword_100602B48, &qword_1004CC2F0);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v26 - v12;
  v32 = a2[1];
  v30 = a2[1];
  v14 = *(a2 + 32);
  if (v14 == 2)
  {
    v15 = sub_1004B86B4();
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  }

  else
  {

    if (v14)
    {
      sub_1004B8684();
    }

    else
    {
      sub_1004B86A4();
    }

    v16 = sub_1004B86B4();
    (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
  }

  v31 = *a2;
  v18 = *(a2 + 5);
  v17 = *(a2 + 6);
  v19 = swift_allocObject();
  v20 = a2[1];
  *(v19 + 16) = *a2;
  *(v19 + 32) = v20;
  *(v19 + 48) = a2[2];
  v21 = *a3;
  *(v19 + 88) = a3[1];
  v22 = a3[3];
  *(v19 + 104) = a3[2];
  *(v19 + 120) = v22;
  *(v19 + 64) = *(a2 + 6);
  *(v19 + 136) = *(a3 + 8);
  *(v19 + 72) = v21;
  sub_100013D04(&v32, v29);
  sub_100013D04(&v31, v29);
  sub_10002F518(v18, v17);
  sub_1000C7A60(a3, v29);
  sub_10000E7F4();
  sub_1004BA494();
  v23 = 1;
  if ((a3[3] & 1) == 0 && *(a3 + 5) == v27)
  {
    sub_1004B8DD4();
    v23 = 0;
  }

  v24 = sub_1004B8DE4();
  (*(*(v24 - 8) + 56))(v7, v23, 1, v24);
  sub_1000206D4(&qword_100602B50, &qword_100602B48, &qword_1004CC2F0, &protocol conformance descriptor for Button<A>);
  sub_1004B9F44();
  sub_100007214(v7, &qword_100602B90, &qword_1004CC338);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1000C7480(__int128 *a1, __int128 *a2)
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v5 = &v17[-v4 - 8];
  v6 = sub_1004BC4B4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = *a1;
  v18 = a1[1];
  v19 = v7;
  v8 = *(a1 + 5);
  v9 = *(a1 + 6);
  sub_1004BC474();
  sub_100013D04(&v19, v17);
  sub_100013D04(&v18, v17);
  sub_10002F518(v8, v9);
  sub_1000C7A60(a2, v17);
  v10 = sub_1004BC464();
  v11 = swift_allocObject();
  v12 = a1[1];
  *(v11 + 32) = *a1;
  *(v11 + 48) = v12;
  *(v11 + 64) = a1[2];
  v13 = *a2;
  *(v11 + 104) = a2[1];
  v14 = a2[3];
  *(v11 + 120) = a2[2];
  *(v11 + 136) = v14;
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  *(v11 + 80) = *(a1 + 6);
  *(v11 + 152) = *(a2 + 8);
  *(v11 + 88) = v13;
  sub_1000FD6BC(0, 0, v5, &unk_1004CC348, v11);
}

uint64_t sub_1000C7620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 48);
  *(v5 + 48) = *(a5 + 32);
  *(v5 + 64) = v7;
  *(v5 + 80) = *(a5 + 64);
  v8 = *(a5 + 16);
  *(v5 + 16) = *a5;
  *(v5 + 32) = v8;
  *(v5 + 88) = sub_1004BC474();
  *(v5 + 96) = sub_1004BC464();
  v9 = *(a4 + 40);
  if (v9)
  {
    v14 = (v9 + *v9);
    v10 = swift_task_alloc();
    *(v5 + 104) = v10;
    *v10 = v5;
    v10[1] = sub_1000C77AC;

    return v14(a4, v5 + 16);
  }

  else
  {
    v13 = sub_1004BC3E4();

    return _swift_task_switch(sub_1000C78F0, v13, v12);
  }
}

uint64_t sub_1000C77AC()
{

  v1 = sub_1004BC3E4();

  return _swift_task_switch(sub_1000C78F0, v1, v0);
}

uint64_t sub_1000C78F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000C7974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 8);
  v6 = sub_1004BA754();
  v8 = v7;
  v9 = a2 + *(sub_100003ABC(&qword_100602AF8, &qword_1004CC280) + 36);
  sub_1000C63C4(v5, v9);
  v10 = (v9 + *(sub_100003ABC(&qword_100602B00, &qword_1004CC288) + 36));
  *v10 = v6;
  v10[1] = v8;
  v11 = sub_100003ABC(&qword_100602B08, &qword_1004CC290);
  v12 = *(*(v11 - 8) + 16);

  return v12(a2, a1, v11);
}

unint64_t sub_1000C7B18()
{
  result = qword_100602B40;
  if (!qword_100602B40)
  {
    sub_100003B68(&qword_100602B30, &qword_1004CC2E0);
    sub_100003B68(&qword_100602B48, &qword_1004CC2F0);
    sub_1000206D4(&qword_100602B50, &qword_100602B48, &qword_1004CC2F0, &protocol conformance descriptor for Button<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100602B40);
  }

  return result;
}

unint64_t sub_1000C7C0C()
{
  result = qword_100602B58;
  if (!qword_100602B58)
  {
    sub_100003B68(&qword_100602B38, &qword_1004CC2E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100602B58);
  }

  return result;
}

uint64_t sub_1000C7C88(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100602B28, &qword_1004CC2B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000C7D78()
{
  result = qword_100602B78;
  if (!qword_100602B78)
  {
    sub_100003B68(&qword_100602B68, &qword_1004CC320);
    sub_1000206D4(&qword_100602B80, &qword_100602B88, &qword_1004CC330, &protocol conformance descriptor for [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100602B78);
  }

  return result;
}

uint64_t sub_1000C7E28()
{

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000C7EA4()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000C7F1C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000136EC;

  return sub_1000C7620(a1, v4, v5, v1 + 32, v1 + 88);
}

uint64_t sub_1000C7FD0()
{

  return swift_deallocObject();
}

uint64_t sub_1000C8020()
{

  return swift_deallocObject();
}

uint64_t sub_1000C8058(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *(a1 + 3);
  v6[0] = *(a1 + 1);
  v6[1] = v4;
  v6[2] = *(a1 + 5);
  v7 = a1[7];
  return v2(v3, v6);
}

unint64_t sub_1000C80D4()
{
  result = qword_100602B98;
  if (!qword_100602B98)
  {
    sub_100003B68(&qword_100602AF8, &qword_1004CC280);
    sub_1000206D4(&qword_100602BA0, &qword_100602B08, &qword_1004CC290, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_1000206D4(&qword_100602BA8, &qword_100602B00, &qword_1004CC288, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100602B98);
  }

  return result;
}

void sub_1000C81CC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1000C8248(uint64_t a1, __int128 *a2, __int128 *a3)
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v6 = &v18[-v5 - 8];
  v7 = sub_1004BC4B4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = *a2;
  v19 = a2[1];
  v20 = v8;
  v9 = *(a2 + 5);
  v10 = *(a2 + 6);
  sub_1004BC474();
  sub_100013D04(&v20, v18);
  sub_100013D04(&v19, v18);
  sub_10002F518(v9, v10);
  sub_1000C7A60(a3, v18);
  v11 = sub_1004BC464();
  v12 = swift_allocObject();
  v13 = a2[1];
  *(v12 + 32) = *a2;
  *(v12 + 48) = v13;
  *(v12 + 64) = a2[2];
  v14 = *a3;
  *(v12 + 104) = a3[1];
  v15 = a3[3];
  *(v12 + 120) = a3[2];
  *(v12 + 136) = v15;
  *(v12 + 16) = v11;
  *(v12 + 24) = &protocol witness table for MainActor;
  *(v12 + 80) = *(a2 + 6);
  *(v12 + 152) = *(a3 + 8);
  *(v12 + 88) = v14;
  sub_1000FD6BC(0, 0, v6, &unk_1004CC3B8, v12);
}

id static UIAlertAction.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v40 = a7;
  v41 = a8;
  v42 = sub_1004B6B04();
  v15 = *(v42 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v38 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v39 = &v38 - v17;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  __chkstk_darwin();
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v38 - v20;
  if (qword_1006006D8 != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    sub_100144204(a1, a2, a3, a4, a5, a6, v40, v41, v21, a9 & 1);
    sub_1000C8C40(v21, v19);
    v22 = v42;
    if ((*(v15 + 48))(v19, 1, v42) == 1)
    {
      sub_10000F7E0(v21);
      v23 = v19;
    }

    else
    {
      v24 = *(v15 + 32);
      v25 = v39;
      v24();
      v26 = [objc_opt_self() sharedApplication];
      sub_1004B6A44(v27);
      v29 = v28;
      v30 = [v26 canOpenURL:v28];

      if (v30)
      {
        v31 = v38;
        (*(v15 + 16))(v38, v25, v22);
        v32 = (*(v15 + 80) + 16) & ~*(v15 + 80);
        v33 = swift_allocObject();
        (v24)(v33 + v32, v31, v22);
        v34 = sub_1004BBE24();
        aBlock[4] = sub_1000C8D38;
        aBlock[5] = v33;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000C81CC;
        aBlock[3] = &unk_1005AE278;
        v35 = _Block_copy(aBlock);

        v36 = [swift_getObjCClassFromMetadata() actionWithTitle:v34 style:0 handler:v35];
        _Block_release(v35);

        (*(v15 + 8))(v25, v22);
        sub_10000F7E0(v21);
        return v36;
      }

      (*(v15 + 8))(v25, v22);
      v23 = v21;
    }

    sub_10000F7E0(v23);
  }

  return 0;
}

void sub_1000C8808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_opt_self() sharedApplication];
  sub_1004B6A44(v4);
  v6 = v5;
  sub_10003D128(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1000C8DC0();
  isa = sub_1004BBC24().super.isa;

  [v3 openURL:v6 options:isa completionHandler:0];
}

id sub_1000C88F4(__int128 *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    a2 = ~*(a1 + 32) & 1;
  }

  if (*(a1 + 1))
  {
    v5 = sub_1004BBE24();
    if (*(a1 + 3))
    {
LABEL_5:
      v6 = sub_1004BBE24();
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
    if (*(a1 + 3))
    {
      goto LABEL_5;
    }
  }

  v6 = 0;
LABEL_8:
  v29 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:a2];

  v7 = *(a1 + 7);
  v28 = *(v7 + 16);
  if (v28)
  {
    v8 = 0;
    v9 = (v7 + 80);
    do
    {
      v31 = v8;
      v11 = *(v9 - 1);
      v12 = *v9;
      v13 = *(v9 - 16);
      v15 = *(v9 - 4);
      v14 = *(v9 - 3);
      v16 = *(v9 - 6);
      v17 = *(v9 - 5);
      v18 = 1;
      if (v13)
      {
        v18 = 2;
      }

      if (v13 == 2)
      {
        v18 = 0;
      }

      v30 = v18;
      v19 = swift_allocObject();
      v20 = *a1;
      *(v19 + 88) = a1[1];
      v21 = a1[3];
      *(v19 + 104) = a1[2];
      *(v19 + 120) = v21;
      *(v19 + 16) = v16;
      *(v19 + 24) = v17;
      v22 = v12;
      v23 = v11;
      *(v19 + 32) = v15;
      *(v19 + 40) = v14;
      *(v19 + 48) = v13;
      *(v19 + 49) = *v33;
      *(v19 + 52) = *&v33[3];
      *(v19 + 56) = v11;
      *(v19 + 64) = v22;
      *(v19 + 136) = *(a1 + 8);
      *(v19 + 72) = v20;

      sub_10002F518(v11, v22);

      sub_10002F518(v11, v22);
      sub_1000C7A60(a1, aBlock);
      v24 = sub_1004BBE24();
      aBlock[4] = sub_1000C8E88;
      aBlock[5] = v19;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000C81CC;
      aBlock[3] = &unk_1005AE2C8;
      v25 = _Block_copy(aBlock);

      v26 = [objc_opt_self() actionWithTitle:v24 style:v30 handler:v25];
      _Block_release(v25);

      [v29 addAction:v26];
      if (a1[3])
      {

        sub_10003CC4C(v11, v22);
        v10 = v31;
      }

      else
      {
        v10 = v31;
        if (v31 == *(a1 + 5))
        {
          [v29 setPreferredAction:v26];

          sub_10003CC4C(v23, v22);
        }

        else
        {

          sub_10003CC4C(v23, v22);
        }
      }

      v8 = v10 + 1;
      v9 += 7;
    }

    while (v28 != v8);
  }

  return v29;
}

uint64_t sub_1000C8C40(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C8CB0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004B6B04();
  (*(*(v3 - 8) + 8))(v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)), v3);

  return swift_deallocObject();
}

void sub_1000C8D38(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1004B6B04() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1000C8808(a1, v6, v4);
}

uint64_t sub_1000C8DA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000C8DC0()
{
  result = qword_100600FD0;
  if (!qword_100600FD0)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100600FD0);
  }

  return result;
}

uint64_t sub_1000C8E18()
{

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000C8E94()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000C8F0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000136EC;

  return sub_1000C7620(a1, v4, v5, v1 + 32, v1 + 88);
}

void Alert.Action.init(id:title:role:perform:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v22 = a7;
  v15 = sub_1004B6D14();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    a1 = sub_1004B6CE4();
    a2 = v19;
    (*(v16 + 8))(v18, v15);
  }

  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  v20 = v22;
  *(a8 + 40) = a6;
  *(a8 + 48) = v20;
}

void __swiftcall Alert.init(title:message:image:style:preferredActionIndex:actions:)(MusicCore::Alert *__return_ptr retstr, Swift::String_optional title, Swift::String_optional message, UIImage_optional image, MusicCore::Alert::Style style, Swift::Int_optional preferredActionIndex, Swift::OpaquePointer actions)
{
  retstr->title = title;
  retstr->message = message;
  retstr->style = image.is_nil;
  *(&retstr->preferredActionIndex.value + 7) = style;
  LOBYTE(retstr->actions._rawValue) = preferredActionIndex.value & 1;
  retstr->image.value.super.isa = *&preferredActionIndex.is_nil;
  *&retstr->image.is_nil = image.value.super.isa;
}

uint64_t Alert.Action.perform(from:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    v8 = (v3 + *v3);
    v5 = swift_task_alloc();
    *(v2 + 16) = v5;
    *v5 = v2;
    v5[1] = sub_1000136EC;

    return v8(v1, a1);
  }

  else
  {
    v7 = *(v2 + 8);

    return v7();
  }
}

void *Alert.image.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

unint64_t sub_1000C9298()
{
  result = qword_100602BB0;
  if (!qword_100602BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100602BB0);
  }

  return result;
}

unint64_t sub_1000C92F0()
{
  result = qword_100602BB8;
  if (!qword_100602BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100602BB8);
  }

  return result;
}

uint64_t sub_1000C9344(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000C938C(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

uint64_t sub_1000C93FC(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

char *sub_1000C9434(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39 = a3;
  v38 = a2;
  ObjectType = swift_getObjectType();
  sub_1004B6E64();
  __chkstk_darwin();
  v7 = sub_1004BBE14();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v38 - v11;
  *&v4[OBJC_IVAR____TtC9MusicCore14TextFieldAlert_submitAction] = 0;
  v13 = &v4[OBJC_IVAR____TtC9MusicCore14TextFieldAlert_configuration];
  v14 = a1[3];
  *(v13 + 2) = a1[2];
  *(v13 + 3) = v14;
  *(v13 + 4) = a1[4];
  v15 = a1[1];
  *v13 = *a1;
  *(v13 + 1) = v15;
  sub_1000CA1EC(a1, v42);
  v41.receiver = v4;
  v41.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v41, "initWithNibName:bundle:", 0, 0);
  v17 = sub_1004BBE24();
  [v16 setTitle:v17];

  if (*(a1 + 5))
  {

    v18 = sub_1004BBE24();
  }

  else
  {
    v18 = 0;
  }

  [v16 setMessage:{v18, v38, v39}];

  v19 = v16;
  [v19 setPreferredStyle:1];
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  v22 = *a1;
  *(v21 + 40) = a1[1];
  v23 = a1[3];
  *(v21 + 56) = a1[2];
  *(v21 + 72) = v23;
  *(v21 + 88) = a1[4];
  *(v21 + 16) = v20;
  *(v21 + 24) = v22;
  aBlock[4] = sub_1000CA2C4;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000C81CC;
  aBlock[3] = &unk_1005AE630;
  v24 = _Block_copy(aBlock);
  sub_1000CA1EC(a1, v42);

  [v19 addTextFieldWithConfigurationHandler:v24];
  _Block_release(v24);
  sub_1004BBDA4();
  (*(v8 + 16))(v10, v12, v7);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v25 = qword_100617118;
  sub_1004B6DF4();
  sub_1004BBED4();
  (*(v8 + 8))(v12, v7);
  v26 = sub_1004BBE24();

  v27 = objc_opt_self();
  v28 = [v27 actionWithTitle:v26 style:1 handler:0];

  [v19 addAction:v28];
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v30 = swift_allocObject();
  v31 = v38;
  v30[2] = v29;
  v30[3] = v31;
  v30[4] = v39;

  v32 = sub_1004BBE24();
  v42[4] = sub_1000CA328;
  v42[5] = v30;
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 1107296256;
  v42[2] = sub_1000C81CC;
  v42[3] = &unk_1005AE680;
  v33 = _Block_copy(v42);

  v34 = [v27 actionWithTitle:v32 style:0 handler:v33];
  _Block_release(v33);

  sub_1000CA334(a1);
  [v34 setEnabled:0];
  v35 = *(v19 + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_submitAction);
  *(v19 + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_submitAction) = v34;
  v36 = v34;

  [v19 addAction:v36];
  [v19 setPreferredAction:v36];

  return v19;
}

void sub_1000C9A28(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v6 = Strong;
  v7 = *(Strong + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_configuration + 8);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_6;
  }

  if (v7 != 1)
  {
    v8 = *(Strong + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_configuration);

    v9 = sub_1004BBE24();
    sub_1000130F8(v8, v7);
LABEL_6:
    [a1 setText:v9];
  }

  if (*(a3 + 56))
  {
    v10 = sub_1004BBE24();
  }

  else
  {
    v10 = 0;
  }

  [a1 setPlaceholder:v10];

  [a1 setAutocapitalizationType:2];
  [a1 setReturnKeyType:9];
  [a1 setDelegate:v6];
}

void sub_1000C9B64(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong textFields];
    if (!v6)
    {

      return;
    }

    v9 = v6;
    sub_1000CA364(0, v7, v8);
    v10 = sub_1004BC2A4();

    if (v10 >> 62)
    {
      if (sub_1004BD6A4())
      {
        goto LABEL_5;
      }
    }

    else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((v10 & 0xC000000000000001) != 0)
      {
        v11 = sub_1004BD484();
      }

      else
      {
        if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v11 = *(v10 + 32);
      }

      v12 = v11;

      v13 = [v12 text];
      if (!v13)
      {

        return;
      }

      v14 = v13;
      v15 = sub_1004BBE64();
      v17 = v16;

      a3(v15, v17);
      goto LABEL_14;
    }

LABEL_14:
  }
}

uint64_t sub_1000C9D04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [a1 text];
  if (v8)
  {
    v9 = v8;
    sub_1004BBE64();
  }

  v10 = objc_allocWithZone(NSString);
  v11 = sub_1004BBE24();

  v12 = [v10 initWithString:v11];

  v13 = sub_1004BBE24();
  v14 = [v12 stringByReplacingCharactersInRange:a2 withString:{a3, v13}];

  v15 = sub_1004BBE64();
  v17 = v16;

  v18 = String.trim()();

  v19 = v18._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v18._object & 0x2000000000000000) != 0)
  {
    v19 = (v18._object >> 56) & 0xF;
  }

  v20 = v19 != 0;
  v21 = *(v5 + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_configuration + 8);
  if (v21 == 1)
  {

    goto LABEL_14;
  }

  if (!v19)
  {
    goto LABEL_11;
  }

  if (v21)
  {
    if (v15 == *(v5 + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_configuration) && v21 == v17)
    {
LABEL_11:

      v20 = 0;
      goto LABEL_14;
    }

    v22 = sub_1004BD9C4();

    v20 = v22 ^ 1;
  }

  else
  {

    v20 = 1;
  }

LABEL_14:
  v23 = *(v5 + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_submitAction);
  if (v23)
  {
    [v23 setEnabled:v20 & 1];
  }

  return 1;
}

id DeviceCapabilitiesObjC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000CA100(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_1000CA124(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1000CA140(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1000CA188(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000CA224()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CA25C()
{

  if (*(v0 + 32) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000CA2D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000CA2E8()
{

  return swift_deallocObject();
}

unint64_t sub_1000CA364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100602C58[0];
  if (!qword_100602C58[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_100602C58);
  }

  return result;
}

uint64_t sub_1000CA3B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
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

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void *sub_1000CA40C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t ArtworkVideoReportingController.__allocating_init()()
{
  v0 = swift_allocObject();
  ArtworkVideoReportingController.init()();
  return v0;
}

uint64_t *ArtworkVideoReportingController.init()()
{
  v1 = *v0;
  *(v0 + 16) = 0;
  v0[3] = 0;
  v0[4] = 0;
  v2 = *(v1 + 80);
  swift_getTupleTypeMetadata2();
  v3 = sub_1004BC304();
  v4 = sub_1000CC72C(v3, v2, &type metadata for ComponentRenderEventSignposts, *(v1 + 88));

  v0[5] = v4;
  return v0;
}

uint64_t ArtworkVideoReportingController.isEnabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t BindingRequestResponseInvalidation.onInvalidation.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  sub_10002F518(v1, *(v0 + 32));
  return v1;
}

uint64_t BindingRequestResponseInvalidation.onInvalidation.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return sub_10003CC4C(v5, v6);
}

void ArtworkVideoReportingController.componentWillAppear(at:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v33 = *(v4 - 8);
  __chkstk_darwin();
  v35 = &v25[-v5];
  v6 = sub_1004B6CD4();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v10 = *(v3 + 88);

  v34 = a1;
  v32 = v10;
  sub_1004BBCA4();

  v11 = v36;
  if (v36 == 1)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v26 = 4;
LABEL_6:
    v17 = objc_opt_self();
    sub_1004B6CC4();
    isa = sub_1004B6C34().super.isa;
    (*(v7 + 8))(v9, v6);
    v19 = [v17 serverTimeFromDate:isa];

    (*(v33 + 16))(v35, v34, v4);
    v20 = v30;
    v21 = v31;
    v36 = v19;
    v37 = v30;
    v23 = v28;
    v22 = v29;
    v38 = v31;
    v39 = v29;
    v24 = v27;
    v40 = v28;
    v41 = v27;
    v42 = v26;
    swift_beginAccess();
    v34 = sub_1004BBC84();
    v11 = v19;
    v15 = v20;
    v16 = v21;
    v14 = v22;
    v12 = v23;
    v13 = v24;
    sub_1004BBCB4();
    swift_endAccess();
    goto LABEL_7;
  }

  v12 = v40;
  v13 = v41;
  v14 = v39;
  if (!v36)
  {
    v26 = v42;
    v30 = v37;
    v31 = v38;
    v28 = v40;
    v29 = v39;
    v27 = v41;
    goto LABEL_6;
  }

  v15 = v37;
  v16 = v38;
LABEL_7:
}

void ArtworkVideoReportingController.placeholderDidAppear(at:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v29[-v6];
  v8 = sub_1004B6CD4();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (v1[16] == 1)
  {
    swift_beginAccess();
    v12 = *(v3 + 88);

    v32 = v12;
    v33 = a1;
    sub_1004BBCA4();

    v13 = v37;
    if (v37 == 1)
    {
      v31 = v1;
      v35 = 0;
      v36 = 0;
      v34 = 0;
      v14 = 0;
      v13 = 0;
      v15 = 4;
    }

    else
    {
      v35 = v41;
      v36 = v42;
      v14 = v39;
      v34 = v40;
      v16 = v38;
      if (v38)
      {

        v17 = v36;
LABEL_8:

        return;
      }

      v31 = v1;
      v15 = v43;
    }

    v30 = v15;
    v18 = objc_opt_self();
    sub_1004B6CC4();
    isa = sub_1004B6C34().super.isa;
    (*(v9 + 8))(v11, v8);
    v20 = [v18 serverTimeFromDate:isa];

    (*(v5 + 16))(v7, v33, v4);
    v37 = v13;
    v38 = v20;
    v21 = v34;
    v22 = v35;
    v39 = v14;
    v40 = v34;
    v23 = v36;
    v41 = v35;
    v42 = v36;
    v43 = v30;
    swift_beginAccess();
    sub_1004BBC84();
    v17 = v13;
    v24 = v20;
    v25 = v14;
    v26 = v21;
    v27 = v22;
    v28 = v23;
    sub_1004BBCB4();
    swift_endAccess();

    goto LABEL_8;
  }
}

void ArtworkVideoReportingController.videoArtworkWasSelectedForPlayback(at:isReadyForDisplay:)(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 80);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v38 - v9;
  v11 = sub_1004B6CD4();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v3 + 16) == 1)
  {
    v39 = a2;
    swift_beginAccess();
    v15 = *(v6 + 88);

    v38[1] = v15;
    sub_1004BBCA4();

    v16 = v41;
    v40 = a1;
    if (v41 == 1)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0uLL;
      v20 = 4;
      v21 = 0uLL;
    }

    else
    {
      v20 = v45;
      v21 = v44;
      v19 = v43;
      v17 = v42;
      v18 = v43;
    }

    v46 = v16;
    v47 = v17;
    v48 = v19;
    v49 = v21;
    v50 = v20;
    v22 = objc_opt_self();
    sub_1004B6CC4();
    isa = sub_1004B6C34().super.isa;
    (*(v12 + 8))(v14, v11);
    v24 = [v22 serverTimeFromDate:isa];

    *&v48 = v24;
    sub_1000CB150(v39 & 1);
    (*(v8 + 16))(v10, v40, v7);
    v25 = v46;
    v26 = v47;
    v27 = v48;
    v28 = v49;
    v41 = v46;
    v42 = v47;
    v43 = v48;
    v44 = v49;
    v45 = v50;
    swift_beginAccess();
    sub_1004BBC84();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    v32 = *(&v27 + 1);
    v33 = v28;
    v34 = *(&v28 + 1);
    sub_1004BBCB4();
    swift_endAccess();
    v35 = v47;
    v36 = v48;
    v37 = v49;
  }
}

uint64_t sub_1000CB150(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + 48);
  if (v3 <= 2)
  {
    v4 = sub_1004BD9C4();

    if (v4)
    {
      return result;
    }
  }

  else if (v3 == 3)
  {
  }

  if (v2)
  {
    *(v1 + 48) = 0;
    return result;
  }

  if (*(v1 + 24))
  {
    v5 = 1;
  }

  else
  {
    if (!*(v1 + 8))
    {
      return result;
    }

    v5 = 2;
  }

  *(v1 + 48) = v5;
  return result;
}

void ArtworkVideoReportingController.videoArtworkWillBeginLoading(at:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v29 - v7;
  v9 = sub_1004B6CD4();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v2 + 16) == 1)
  {
    v35 = v8;
    swift_beginAccess();
    v13 = *(v4 + 88);

    v33 = v13;
    sub_1004BBCA4();

    v14 = v36;
    v34 = a1;
    if (v36 == 1)
    {
      v14 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v15 = 0;
    }

    else
    {
      v31 = v40;
      v32 = v41;
      v15 = v39;
      v30 = v38;
      v29 = v37;
    }

    v16 = objc_opt_self();
    sub_1004B6CC4();
    isa = sub_1004B6C34().super.isa;
    (*(v10 + 8))(v12, v9);
    v18 = [v16 serverTimeFromDate:isa];

    (*(v6 + 16))(v35, v34, v5);
    v19 = v29;
    v36 = v14;
    v37 = v29;
    v20 = v30;
    v38 = v30;
    v39 = v18;
    v21 = v31;
    v22 = v32;
    v40 = v31;
    v41 = v32;
    v42 = 4;
    swift_beginAccess();
    sub_1004BBC84();
    v23 = v14;
    v24 = v19;
    v25 = v20;
    v26 = v18;
    v27 = v21;
    v28 = v22;
    sub_1004BBCB4();
    swift_endAccess();
  }
}

void ArtworkVideoReportingController.videoArtworkDidCancelLoading(at:)(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v29 - v6;
  v8 = sub_1004B6CD4();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (v1[16] == 1)
  {
    swift_beginAccess();
    v12 = *(v3 + 88);

    v36 = v12;
    sub_1004BBCA4();

    v13 = v37;
    if (v37 != 1)
    {
      v34 = v43;
      v29[0] = v42;
      v32 = v40;
      v33 = v41;
      v31 = v39;
      v30 = v38;
      v14 = objc_opt_self();
      sub_1004B6CC4();
      v29[1] = v1;
      v15.super.isa = sub_1004B6C34().super.isa;
      v16 = a1;
      v35 = a1;
      isa = v15.super.isa;
      (*(v9 + 8))(v11, v8);
      v18 = [v14 serverTimeFromDate:isa];

      (*(v5 + 16))(v7, v16, v4);
      v19 = v30;
      v37 = v13;
      v38 = v30;
      v20 = v31;
      v22 = v32;
      v21 = v33;
      v39 = v31;
      v40 = v32;
      v41 = v33;
      v42 = v18;
      v43 = v34;
      swift_beginAccess();
      sub_1004BBC84();
      v36 = v13;
      v23 = v19;
      v24 = v20;
      v25 = v22;
      v26 = v21;
      v27 = v18;
      sub_1004BBCB4();
      swift_endAccess();
      v28 = v35;
      sub_1000CBCFC(v35);
      _s9MusicCore31ArtworkVideoReportingControllerC05videoC15DidStopPlayback2atyx_tF_0(v28);
    }
  }
}

void ArtworkVideoReportingController.videoArtworkDidStartPlayback(at:)(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v28 - v6;
  v8 = sub_1004B6CD4();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (v1[16] == 1)
  {
    swift_beginAccess();
    v12 = *(v3 + 88);

    v35 = v12;
    sub_1004BBCA4();

    v13 = v36;
    if (v36 != 1)
    {
      v33 = v42;
      v32 = v41;
      v28[0] = v40;
      v31 = v39;
      v30 = v38;
      v29 = v37;
      v14 = objc_opt_self();
      sub_1004B6CC4();
      v28[1] = v1;
      v15.super.isa = sub_1004B6C34().super.isa;
      v16 = a1;
      v34 = a1;
      isa = v15.super.isa;
      (*(v9 + 8))(v11, v8);
      v18 = [v14 serverTimeFromDate:isa];

      (*(v5 + 16))(v7, v16, v4);
      v19 = v29;
      v36 = v13;
      v37 = v29;
      v20 = v30;
      v22 = v31;
      v21 = v32;
      v38 = v30;
      v39 = v31;
      v40 = v18;
      v41 = v32;
      v42 = v33;
      swift_beginAccess();
      sub_1004BBC84();
      v35 = v13;
      v23 = v19;
      v24 = v20;
      v25 = v22;
      v26 = v18;
      v27 = v21;
      sub_1004BBCB4();
      swift_endAccess();
      sub_1000CBCFC(v34);
    }
  }
}

void sub_1000CBCFC(void *a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v52[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v52[-v7];
  swift_beginAccess();
  if (*(v1 + 16) == 1)
  {
    swift_beginAccess();

    sub_1004BBCA4();

    v9 = v81;
    if (v81 != 1)
    {
      v66 = a1;
      v59 = v6;
      v60 = v4;
      v64 = v8;
      v61 = v3;
      v10 = *(&v81 + 1);
      v11 = *(&v82 + 1);
      v12 = v82;
      v13 = *(&v83 + 1);
      v14 = v83;
      v15 = v84;
      v87[0] = v81;
      v87[1] = v82;
      v87[2] = v83;
      v88 = v84;
      swift_beginAccess();
      v16 = *(v1 + 24);
      if (v16)
      {
        v65 = v15;
        v17 = *(v1 + 32);

        v18 = v16(v66);
        v62 = v19;
        v63 = v18;
        v21 = v20;
        sub_10003CC4C(v16, v17);
        v22 = v13;
        v23 = v9;
        v24 = v10;
        v25 = v12;
        v26 = v11;
        v27 = v14;
        sub_1000CCB7C(v87, v63, v62, v21, &v77);
        v75 = v79;
        v76[0] = *v80;
        *(v76 + 9) = *&v80[9];
        v73 = v77;
        v74 = v78;
        v28 = *v80;
        if (*v80)
        {
          v81 = v77;
          v82 = v78;
          v83 = v79;
          v84 = *v80;
          v85 = *&v80[8];
          v86 = v80[24];
          if (*&v80[8])
          {
            v55 = v10;
            v56 = v12;
            v57 = v9;
            v58 = v11;
            v62 = v14;
            v63 = v13;
            v29 = *&v80[8];
            [v29 doubleValue];
            v31 = v30;
            [v28 doubleValue];
            v33 = v32;
            if (qword_1005FFF38 != -1)
            {
              swift_once();
            }

            v34 = sub_1004B80B4();
            sub_100007084(v34, static Logger.motion);
            v36 = v60;
            v35 = v61;
            v37 = *(v60 + 16);
            v38 = v64;
            v37(v64, v66, v61);
            v71[2] = v75;
            v72[0] = v76[0];
            *(v72 + 9) = *(v76 + 9);
            v71[0] = v73;
            v71[1] = v74;
            sub_1000CCE04(v71, v70);
            v39 = sub_1004B8094();
            v40 = sub_1004BC974();
            sub_1000CCD9C(&v77);
            if (os_log_type_enabled(v39, v40))
            {
              v41 = swift_slowAlloc();
              v66 = v29;
              v42 = v36;
              v43 = v41;
              v54 = swift_slowAlloc();
              v69 = v54;
              *v43 = 136315650;
              v70[0] = v81;
              v68 = v81;
              v53 = v40;
              sub_10000F778(v70, &v67, &unk_100606160, &qword_1004CAC60);
              sub_100003ABC(&unk_100606160, &qword_1004CAC60);
              v44 = sub_1004BBF04();
              v46 = sub_100012018(v44, v45, &v69);

              *(v43 + 4) = v46;
              *(v43 + 12) = 2080;
              v47 = v64;
              v37(v59, v64, v35);
              v48 = sub_1004BBF04();
              v50 = v49;
              (*(v42 + 8))(v47, v35);
              v51 = sub_100012018(v48, v50, &v69);

              *(v43 + 14) = v51;
              *(v43 + 22) = 2048;
              *(v43 + 24) = v31 - v33;
              _os_log_impl(&_mh_execute_header, v39, v53, "Item with id: %s at index: %s loaded enough data to start playback in %f ms.", v43, 0x20u);
              swift_arrayDestroy();
            }

            else
            {

              (*(v36 + 8))(v38, v35);
            }

            v14 = v62;
            v13 = v63;
            v9 = v57;
            v11 = v58;
            v10 = v55;
            v12 = v56;
          }

          if (qword_1005FFE00 != -1)
          {
            swift_once();
          }

          MetricsReportingController.recordComponentRenderEvent(_:)(&v81);
          sub_1000CCD9C(&v77);
        }
      }

      sub_1000CCD28(v9, v10, v12, v11, v14, v13);
    }
  }
}

void _s9MusicCore31ArtworkVideoReportingControllerC05videoC15DidStopPlayback2atyx_tF_0(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v16 - v5;
  swift_beginAccess();

  sub_1004BBCA4();

  v7 = v19;
  if (v19 != 1)
  {
    v17 = v20;
    v8 = v23;
    v18 = v22;
    v9 = v24;
    v10 = v25;

    if (v8)
    {

      v10 = 3;
    }

    (*(v4 + 16))(v6, a1, v3);
    v12 = v17;
    v11 = v18;
    v19 = v7;
    v20 = v17;
    v21 = 0;
    v22 = v18;
    v23 = 0;
    v24 = 0;
    v25 = v10;
    swift_beginAccess();
    sub_1004BBC84();
    v13 = v7;
    v14 = v12;
    v15 = v11;
    sub_1004BBCB4();
    swift_endAccess();
  }
}

uint64_t *ArtworkVideoReportingController.deinit()
{
  sub_10003CC4C(*(v0 + 24), *(v0 + 32));

  return v0;
}

uint64_t ArtworkVideoReportingController.__deallocating_deinit()
{
  sub_10003CC4C(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

unint64_t sub_1000CC548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004BBCD4();

  return sub_1000CC5A4(a1, v6, a2, a3);
}

unint64_t sub_1000CC5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = __chkstk_darwin();
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_1004BBD84();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

unint64_t sub_1000CC72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = v23 - v11;
  if (sub_1004BC344())
  {
    sub_1004BD704();
    v13 = sub_1004BD6F4();
  }

  else
  {
    v13 = _swiftEmptyDictionarySingleton;
  }

  result = sub_1004BC3A4();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1004BC324())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1004BD474();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1000CC548(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

__n128 sub_1000CCA90(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000CCAAC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1000CCB08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1000CCB7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v8 = a1[3];
  v43 = v8;
  if (v8)
  {
    v11 = *a1;
    v41 = a1[1];
    v42 = v11;
    v12 = a1[2];
    v13 = a1[5];
    v39 = a1[4];
    v40 = v12;
    v38 = v13;
    sub_10000F778(&v43, v29, &qword_100602CE8, &unk_1004CC760);
    sub_10000F778(&v42, v29, &qword_100602CE8, &unk_1004CC760);
    sub_10000F778(&v41, v29, &qword_100602CE8, &unk_1004CC760);
    sub_10000F778(&v40, v29, &qword_100602CE8, &unk_1004CC760);
    sub_10000F778(&v39, v29, &qword_100602CE8, &unk_1004CC760);
    sub_10000F778(&v38, v29, &qword_100602CE8, &unk_1004CC760);
    sub_1000CCE60(a1);
    v14 = *(a1 + 48);
    *&v23 = a2;
    *(&v23 + 1) = a3;
    LOBYTE(v24) = a4;
    *(&v24 + 1) = v42;
    *&v25 = v41;
    *(&v25 + 1) = v40;
    *&v26 = v8;
    *(&v26 + 1) = v39;
    v27 = v38;
    v28 = v14;
    v29[0] = a2;
    v29[1] = a3;
    v30 = a4;
    v31 = v42;
    v32 = v41;
    v33 = v40;
    v34 = v8;
    v35 = v39;
    v36 = v38;
    v37 = v14;
    sub_1000CCE04(&v23, &v22);
    result = sub_1000CCE90(v29);
    v16 = v23;
    v17 = v24;
    v18 = v25;
    v19 = v26;
    v20 = v27;
    v21 = v28;
  }

  else
  {

    result = sub_1000CCE60(a1);
    v20 = 0;
    v21 = 0;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
  }

  *a5 = v16;
  *(a5 + 16) = v17;
  *(a5 + 32) = v18;
  *(a5 + 48) = v19;
  *(a5 + 64) = v20;
  *(a5 + 72) = v21;
  return result;
}

void sub_1000CCD28(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1000CCD9C(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100602CE0, &unk_1004CC750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Library.Menu.Revision.selected.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t CarNowPlayingMetrics.Data.init(timePlayed:tracksPlayed:rangeStartTime:sharedSessionIds:sharedSessionMaxParticipants:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = a5;
  *(a4 + 8) = result;
  *(a4 + 16) = a6;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  return result;
}

uint64_t sub_1000CCFD0()
{
  v1 = *v0;
  v2 = 0x79616C50656D6974;
  v3 = 0x61745365676E6172;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C50736B63617274;
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

uint64_t sub_1000CD088@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000CECA4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000CD0BC(uint64_t a1)
{
  v2 = sub_1000CD38C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CD0F8(uint64_t a1)
{
  v2 = sub_1000CD38C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CarNowPlayingMetrics.Data.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100003ABC(&qword_100602CF0, &qword_1004CC770);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10[-v7];
  sub_100009178(a1, a1[3]);
  sub_1000CD38C();
  sub_1004BDC44();
  v14 = 0;
  sub_1004BD874();
  if (!v2)
  {
    v13 = 1;
    sub_1004BD884();
    v12 = 2;
    sub_1004BD874();
    v11 = *(v3 + 24);
    v10[15] = 3;
    sub_100003ABC(&qword_100602D00, &unk_1004CC778);
    sub_1000CF954(&qword_100602D08, &protocol witness table for String, &protocol conformance descriptor for <> Set<A>);
    sub_1004BD894();
    v10[14] = 4;
    sub_1004BD884();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1000CD38C()
{
  result = qword_100602CF8;
  if (!qword_100602CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100602CF8);
  }

  return result;
}

double CarNowPlayingMetrics.Data.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000CEE74(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

double static CarNowPlayingMetrics.persistedMetricsData(for:)@<D0>(uint64_t a2@<X8>)
{
  sub_1000CF100(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t Logger.carMetrics.unsafeMutableAddressor(uint64_t a1, uint64_t a2)
{
  if (qword_1005FFD58 != -1)
  {
    swift_once();
  }

  v2 = sub_1004B80B4();

  return sub_100007084(v2, static Logger.carMetrics);
}

void static CarNowPlayingMetrics.storeMetricsData(_:for:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 3))
  {
    sub_1004B6554();
    swift_allocObject();
    sub_1004B6544();
    sub_1000CF4A8();
    v4 = sub_1004B6534();
    v6 = v5;

    v7 = [objc_opt_self() standardUserDefaults];
    isa = sub_1004B6B64().super.isa;
    v9 = sub_1004BBE24();

    [v7 setValue:isa forKey:v9];

    sub_100004D90(v4, v6);
  }

  else
  {
    v3 = [objc_opt_self() standardUserDefaults];
    v10 = sub_1004BBE24();

    [v3 setValue:0 forKey:v10];
  }
}

void sub_1000CD8AC(int a1)
{
  v62 = *v1;
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v61 = &v58 - v3;
  v4 = sub_1004B6F34();
  v59 = *(v4 - 8);
  __chkstk_darwin();
  v63 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004B6CD4();
  v64 = *(v6 - 8);
  __chkstk_darwin();
  v60 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v58 - v8;
  if (qword_1005FFD58 != -1)
  {
    swift_once();
  }

  v10 = sub_1004B80B4();
  sub_100007084(v10, static Logger.carMetrics);
  v11 = sub_1004B8094();
  v12 = sub_1004BC9A4();
  v13 = os_log_type_enabled(v11, v12);
  v65 = a1;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v68 = v15;
    *v14 = 136446210;
    LOBYTE(v72[0]) = a1 & 1;
    v16 = sub_1004BBF04();
    v18 = v9;
    v19 = sub_100012018(v16, v17, &v68);

    *(v14 + 4) = v19;
    v9 = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "Reporting %{public}s playsSummary event if needed", v14, 0xCu);
    sub_100004C6C(v15);
  }

  if (qword_1005FFE00 != -1)
  {
    swift_once();
  }

  v20 = COERCE_DOUBLE(sub_1000DB55C());
  if (v21)
  {
    v22 = 86400000.0;
  }

  else
  {
    v22 = v20;
  }

  v23 = v65 & 1;
  sub_1000CF100(&v68);
  v24 = v70;
  if (v70)
  {
    v25 = v69;
    v26 = v71;
    *v72 = v68;
    sub_1004B6CA4();
    sub_1004B6C84();
    v28 = v27;
    v29 = *(v64 + 8);
    v29(v9, v6);
    v30 = (v28 - v25) * 1000.0;
    if (v22 < v30)
    {
      sub_1004B6CA4();
      sub_1004B6C84();
      v32 = v31;
      v29(v9, v6);
      v33 = v63;
      sub_1004B6EF4();
      v34 = v60;
      sub_1004B6CA4();
      sub_1004B6E94();
      v29(v34, v6);
      (*(v59 + 8))(v33, v4);
      sub_1004B6C84();
      v36 = v35;
      v29(v9, v6);
      v37 = sub_1004BC4B4();
      v38 = v61;
      (*(*(v37 - 8) + 56))(v61, 1, 1, v37);
      sub_1004BC474();
      v39 = sub_1004BC464();
      v40 = swift_allocObject();
      *(v40 + 16) = v39;
      *(v40 + 24) = &protocol witness table for MainActor;
      *(v40 + 32) = *v72;
      *(v40 + 48) = v25;
      *(v40 + 56) = v24;
      *(v40 + 64) = v26;
      *(v40 + 72) = v36;
      *(v40 + 80) = v23;
      *(v40 + 88) = v32;
      *(v40 + 96) = v62;
      sub_1000FD6BC(0, 0, v38, &unk_1004CC9D0, v40);

      return;
    }

    sub_100007214(&v68, &qword_100602DD8, &qword_1004CC9C0);
    v41 = sub_1004B8094();
    v53 = sub_1004BC9A4();
    if (os_log_type_enabled(v41, v53))
    {
      v54 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v67 = v44;
      *v54 = 136446722;
      v66 = v23;
      v55 = sub_1004BBF04();
      v57 = sub_100012018(v55, v56, &v67);

      *(v54 + 4) = v57;
      *(v54 + 12) = 2050;
      *(v54 + 14) = v30;
      *(v54 + 22) = 2050;
      *(v54 + 24) = v22;
      v48 = "❌ Failed to configure %{public}s playsSummary event: range=%{public}f ms isn't greater than post frequency=%{public}f ms";
      v49 = v53;
      v50 = v41;
      v51 = v54;
      v52 = 32;
      goto LABEL_17;
    }
  }

  else
  {
    v41 = sub_1004B8094();
    v42 = sub_1004BC9A4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v72[0] = v44;
      *v43 = 136446210;
      LOBYTE(v67) = v23;
      v45 = sub_1004BBF04();
      v47 = sub_100012018(v45, v46, v72);

      *(v43 + 4) = v47;
      v48 = "❌ Failed to configure %{public}s playsSummary event: no persisted metrics data";
      v49 = v42;
      v50 = v41;
      v51 = v43;
      v52 = 12;
LABEL_17:
      _os_log_impl(&_mh_execute_header, v50, v49, v48, v51, v52);
      sub_100004C6C(v44);
    }
  }
}

uint64_t sub_1000CDFB0(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 624) = a2;
  *(v7 + 688) = a7;
  *(v7 + 616) = a1;
  *(v7 + 608) = a6;
  v8 = sub_1004B6D14();
  *(v7 + 632) = v8;
  *(v7 + 640) = *(v8 - 8);
  *(v7 + 648) = swift_task_alloc();
  v9 = sub_1004BA994();
  *(v7 + 656) = v9;
  *(v7 + 664) = *(v9 - 8);
  *(v7 + 672) = swift_task_alloc();
  sub_1004BC474();
  *(v7 + 680) = sub_1004BC464();
  v11 = sub_1004BC3E4();

  return _swift_task_switch(sub_1000CE10C, v11, v10);
}

uint64_t sub_1000CE10C()
{

  if (qword_1005FFE00 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 672);
  v2 = *(v0 + 664);
  v3 = *(v0 + 656);
  v4 = *(v0 + 624);
  v5 = *(v0 + 688);
  v6 = *(v0 + 616);
  v7 = *(v0 + 608);
  v37 = static MetricsReportingController.shared;
  sub_100003ABC(&unk_100609360, &unk_1004CCAF0);
  inited = swift_initStackObject();
  v9 = inited;
  *(inited + 16) = xmmword_1004C5100;
  strcpy((inited + 32), "totalDuration");
  *(inited + 46) = -4864;
  *(inited + 48) = round(*v7 * 1000.0);
  *(inited + 72) = &type metadata for Double;
  *(inited + 80) = 0x6E756F4379616C70;
  *(inited + 88) = 0xE900000000000074;
  *(inited + 96) = *(v7 + 8);
  *(inited + 120) = &type metadata for Int;
  *(inited + 128) = 0x6D6954746E657665;
  *(inited + 136) = 0xE900000000000065;
  *(inited + 144) = round(v6 * 1000.0);
  *(inited + 168) = &type metadata for Double;
  *(inited + 176) = 0x707954746E657665;
  *(inited + 184) = 0xE900000000000065;
  strcpy((inited + 192), "playsSummary");
  *(inited + 205) = 0;
  *(inited + 206) = -5120;
  *(inited + 216) = &type metadata for String;
  *(inited + 224) = 0x6F436E6F69746361;
  v10 = v5 & 1;
  v11 = 0x79616C50726143;
  if (v10)
  {
    v11 = 0x746F6F7465756C62;
  }

  v12 = 0xE900000000000068;
  if (!v10)
  {
    v12 = 0xE700000000000000;
  }

  *(inited + 232) = 0xED0000747865746ELL;
  *(inited + 240) = v11;
  *(inited + 248) = v12;
  *(inited + 264) = &type metadata for String;
  strcpy((inited + 272), "rangeStartTime");
  *(inited + 287) = -18;
  *(inited + 288) = round(*(v7 + 16) * 1000.0);
  *(inited + 312) = &type metadata for Double;
  strcpy((inited + 320), "rangeEndTime");
  *(inited + 333) = 0;
  *(inited + 334) = -5120;
  *(inited + 336) = round(v4 * 1000.0);
  *(inited + 360) = &type metadata for Double;
  *(inited + 368) = 0xD000000000000013;
  *(inited + 376) = 0x80000001004FE090;
  *(inited + 384) = *(*(v7 + 24) + 16);
  *(inited + 408) = &type metadata for Int;
  *(inited + 416) = 0xD000000000000018;
  *(inited + 424) = 0x80000001004FE0B0;
  v13 = sub_1000DD178(*(v7 + 32));
  v9[57] = &type metadata for String;
  v9[54] = v13;
  v9[55] = v14;
  sub_10003C58C(v9);
  swift_setDeallocating();
  sub_100003ABC(&qword_100601C08, &qword_1004C95C0);
  swift_arrayDestroy();
  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  sub_10009F080(0, v16, v17);
  *v1 = sub_1004BCB44();
  (*(v2 + 104))(v1, enum case for DispatchPredicate.onQueue(_:), v3);
  v18 = sub_1004BA9C4();
  result = (*(v2 + 8))(v1, v3);
  if (v18)
  {
    v20 = *(v0 + 648);
    v21 = *(v0 + 640);
    v36 = *(v0 + 632);
    v22 = [objc_allocWithZone(SSMetricsCustomEvent) init];
    isa = sub_1004BBC24().super.isa;

    [v22 addPropertiesWithDictionary:isa];

    [v22 setShouldSuppressUserInfo:0];
    [v22 setShouldSuppressDSIDHeader:0];

    v24 = swift_initStackObject();
    *(v24 + 16) = xmmword_1004C50A0;
    strcpy((v24 + 32), "clientEventId");
    *(v24 + 46) = -4864;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v25 = sub_1004B6CE4();
    v27 = v26;
    (*(v21 + 8))(v20, v36);
    *(v24 + 72) = &type metadata for String;
    *(v24 + 48) = v25;
    *(v24 + 56) = v27;
    sub_10003C58C(v24);
    swift_setDeallocating();
    sub_100007214(v24 + 32, &qword_100601C08, &qword_1004C95C0);
    v28 = sub_1004BBC24().super.isa;

    [v22 addPropertiesWithDictionary:v28];

    v29 = *&v37[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    v30 = swift_allocObject();
    v30[2] = v22;
    v30[3] = 0xD000000000000014;
    v30[4] = 0x80000001004FE070;
    v30[5] = v37;
    v30[6] = sub_1000CF880;
    v30[7] = v15;
    *(v0 + 592) = sub_1000CF8D8;
    *(v0 + 600) = v30;
    *(v0 + 560) = _NSConcreteStackBlock;
    *(v0 + 568) = 1107296256;
    *(v0 + 576) = sub_1000D6C80;
    *(v0 + 584) = &unk_1005AEAF8;
    v31 = _Block_copy((v0 + 560));
    v32 = v29;
    v33 = v37;

    v34 = v22;

    [v34 setStandardPropertiesWith:v32 completionHandler:v31];
    _Block_release(v31);

    v35 = *(v0 + 8);

    return v35();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000CE7C4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1005FFD58 != -1)
    {
      swift_once();
    }

    v2 = sub_1004B80B4();
    sub_100007084(v2, static Logger.carMetrics);
    swift_errorRetain();
    v3 = sub_1004B8094();
    v4 = sub_1004BC984();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v5 = 136446466;
      v6 = sub_1004BBF04();
      v8 = sub_100012018(v6, v7, &v22);

      *(v5 + 4) = v8;
      *(v5 + 12) = 2082;
      swift_errorRetain();
      sub_100003ABC(&qword_100604C30, &qword_1004C8490);
      v9 = sub_1004BBF04();
      v11 = sub_100012018(v9, v10, &v22);

      *(v5 + 14) = v11;
      _os_log_impl(&_mh_execute_header, v3, v4, "❌ Failed to report %{public}s playsSummary event with error=%{public}s", v5, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (qword_1005FFD58 != -1)
    {
      swift_once();
    }

    v12 = sub_1004B80B4();
    sub_100007084(v12, static Logger.carMetrics);
    v13 = sub_1004B8094();
    v14 = sub_1004BC9A4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136446210;
      v17 = sub_1004BBF04();
      v19 = sub_100012018(v17, v18, &v22);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "✅ Reported %{public}s playsSummary event", v15, 0xCu);
      sub_100004C6C(v16);
    }

    v20 = [objc_opt_self() standardUserDefaults];
    v21 = sub_1004BBE24();

    [v20 setValue:0 forKey:v21];
  }
}

uint64_t sub_1000CEB80(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004B80B4();
  sub_100007108(v2, static Logger.carMetrics);
  sub_100007084(v2, static Logger.carMetrics);
  return sub_1004B80A4();
}

uint64_t static Logger.carMetrics.getter@<X0>(uint64_t a2@<X8>)
{
  if (qword_1005FFD58 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B80B4();
  v4 = sub_100007084(v3, static Logger.carMetrics);
  v5 = *(*(v3 - 8) + 16);

  return v5(a2, v4, v3);
}

uint64_t sub_1000CECA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79616C50656D6974 && a2 == 0xEA00000000006465;
  if (v4 || (sub_1004BD9C4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C50736B63617274 && a2 == 0xEC00000064657961 || (sub_1004BD9C4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61745365676E6172 && a2 == 0xEE00656D69547472 || (sub_1004BD9C4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004FE030 == a2 || (sub_1004BD9C4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001004FE050 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1004BD9C4();

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

uint64_t sub_1000CEE74@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_100003ABC(&qword_100602DE8, &unk_1004CC9E0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v17 - v7;
  sub_100009178(a1, a1[3]);
  sub_1000CD38C();
  sub_1004BDC34();
  if (v2)
  {
    return sub_100004C6C(a1);
  }

  v22 = 0;
  sub_1004BD7E4();
  v10 = v9;
  v21 = 1;
  v11 = sub_1004BD7F4();
  v20 = 2;
  sub_1004BD7E4();
  v13 = v12;
  sub_100003ABC(&qword_100602D00, &unk_1004CC778);
  v19 = 3;
  sub_1000CF954(&qword_100602DF0, &protocol witness table for String, &protocol conformance descriptor for <> Set<A>);
  sub_1004BD804();
  v14 = v17[1];
  v18 = 4;
  v15 = sub_1004BD7F4();
  (*(v6 + 8))(v8, v5);
  result = sub_100004C6C(a1);
  *a2 = v10;
  a2[1] = v11;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v15;
  return result;
}

uint64_t sub_1000CF100@<X0>(uint64_t a4@<X8>)
{
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = sub_1004BBE24();

  v7 = [v5 valueForKey:v6];

  if (v7)
  {
    sub_1004BD284();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v13 = v18;
  v14 = v19;
  if (!*(&v19 + 1))
  {
    result = sub_100007214(&v13, &qword_100605110, &unk_1004CD280);
    goto LABEL_8;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v9 = 0uLL;
    goto LABEL_9;
  }

  sub_1004B6524();
  swift_allocObject();
  sub_1004B6514();
  sub_1000CF900();
  sub_1004B6504();
  sub_100004D90(v16, v17);

  v9 = v13;
  v11 = *(&v14 + 1);
  v10 = v14;
  v12 = v15;
LABEL_9:
  *a4 = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
  *(a4 + 32) = v12;
  return result;
}

unint64_t sub_1000CF4A8()
{
  result = qword_100602D10;
  if (!qword_100602D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100602D10);
  }

  return result;
}

unint64_t sub_1000CF500()
{
  result = qword_100602D18;
  if (!qword_100602D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100602D18);
  }

  return result;
}

uint64_t sub_1000CF574(uint64_t a1, int a2)
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

uint64_t sub_1000CF5BC(uint64_t result, int a2, int a3)
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

unint64_t sub_1000CF64C()
{
  result = qword_100602DC0;
  if (!qword_100602DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100602DC0);
  }

  return result;
}

unint64_t sub_1000CF6A4()
{
  result = qword_100602DC8;
  if (!qword_100602DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100602DC8);
  }

  return result;
}

unint64_t sub_1000CF6FC()
{
  result = qword_100602DD0;
  if (!qword_100602DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100602DD0);
  }

  return result;
}

uint64_t sub_1000CF750()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000CF790(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000136EC;

  return sub_1000CDFB0(v6, v8, a1, v4, v5, v1 + 32, v7);
}

uint64_t sub_1000CF888()
{

  return swift_deallocObject();
}

uint64_t sub_1000CF8E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000CF900()
{
  result = qword_100602DE0;
  if (!qword_100602DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100602DE0);
  }

  return result;
}

uint64_t sub_1000CF954(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003B68(&qword_100602D00, &unk_1004CC778);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *MPModelObject.metricsDictionary.getter(uint64_t a1, uint64_t a2)
{
  objc_allocWithZone(type metadata accessor for ModelObjectBackedStoreItemMetadata(0, a2));
  v3 = v2;
  v5 = ModelObjectBackedStoreItemMetadata.init(modelObject:)(v3, v4);
  if (v5)
  {
    v6 = v5;
    v7 = [v5 effectiveStorePlatformDictionary];

    if (v7)
    {
      v8 = sub_1004BBC44();

      return v8;
    }
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = [v9 anyObject];
    goto LABEL_8;
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v10 = [v11 innerObject];
LABEL_8:
    v12 = v10;
    if (v12)
    {
      goto LABEL_10;
    }
  }

  v12 = v3;
LABEL_10:
  v13 = v12;
  ObjectType = swift_getObjectType();
  v15 = [v13 identifiers];
  v16 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(ObjectType, 2, 0, v15);
  v18 = v17;

  if (v18)
  {
    sub_100003ABC(&qword_100602DF8, &unk_1004CC9F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004C50A0;
    v33 = sub_1004BBE64();
    v34 = v20;
    sub_1004BD3A4();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v16;
    *(inited + 80) = v18;
    v8 = sub_10003D27C(inited);
    swift_setDeallocating();
    sub_1000D01C8(inited + 32);
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_1004BBE64();
      sub_1004BD3A4();
      v32 = &type metadata for String;
      *&v31 = sub_1004BBE64();
      *(&v31 + 1) = v21;
      sub_10003E13C(&v31, v30);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_10003841C(v30, &v33, isUniquelyReferenced_nonNull_native);
      sub_10003D090(&v33);
    }
  }

  else
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v23 = MPModelPropertyPlaylistType;
      v24 = v3;
      if ([v8 hasLoadedValueForKey:v23] && objc_msgSend(v8, "type") == 9)
      {
        sub_100003ABC(&qword_100602DF8, &unk_1004CC9F0);
        v25 = swift_initStackObject();
        *(v25 + 16) = xmmword_1004C50C0;
        sub_1004BBE64();
        sub_1004BD3A4();
        *(v25 + 96) = &type metadata for String;
        strcpy((v25 + 72), "FavoriteSongs");
        *(v25 + 86) = -4864;
        v33 = sub_1004BBE64();
        v34 = v26;
        sub_1004BD3A4();
        v27 = sub_1004BBE64();
        *(v25 + 168) = &type metadata for String;
        *(v25 + 144) = v27;
        *(v25 + 152) = v28;
        v8 = sub_10003D27C(v25);
        swift_setDeallocating();
        sub_100003ABC(&unk_100601C20, &qword_1004C95D8);
        swift_arrayDestroy();
      }

      else
      {

        return 0;
      }
    }
  }

  return v8;
}

id static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(uint64_t a1, uint64_t a2, unsigned __int8 a3, id a4)
{
  v5 = a2;
  if (a3 > 1u)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        result = [a4 library];
        if (!result)
        {
          return result;
        }

        v10 = result;
        if (![result persistentID])
        {
          goto LABEL_55;
        }

        [v10 persistentID];
        v11.super.super.isa = sub_1004BDB64().super.super.isa;
        v12 = MPStoreItemMetadataStringNormalizeStoreIDValue();
        goto LABEL_51;
      }

      sub_100009130(0, &qword_100602E00, MPModelPlaylist_ptr);
      if (swift_dynamicCastMetatype())
      {
        goto LABEL_27;
      }

      sub_100009130(0, &unk_100604030, MPModelSocialPerson_ptr);
      v8 = swift_dynamicCastMetatype();
      if (v8)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (a2)
      {
        result = [a4 personalizedStore];
        if (!result)
        {
          return result;
        }

        v13 = result;
        if (![result cloudID])
        {
          goto LABEL_55;
        }

        [v13 cloudID];
        v11.super.super.isa = sub_1004BDC14().super.super.isa;
        v12 = MPStoreItemMetadataStringNormalizeStoreIDValue();
        goto LABEL_51;
      }

      sub_100009130(0, &qword_100602E00, MPModelPlaylist_ptr);
      v8 = swift_dynamicCastMetatype();
      if (v8)
      {
        goto LABEL_27;
      }
    }

    sub_100009130(v8, qword_100602E08, MPModelRadioStation_ptr);
    if (!swift_dynamicCastMetatype())
    {
      return MPIdentifierSet.bestStoreIdentifier.getter();
    }

LABEL_43:
    result = [a4 radio];
    if (!result)
    {
      return result;
    }

    v23 = result;
    v24 = [result stationStringID];
    if (v24)
    {
      v25 = v24;
      v26 = sub_1004BBE64();
      v28 = v27;

      v29 = HIBYTE(v28) & 0xF;
      if ((v28 & 0x2000000000000000) == 0)
      {
        v29 = v26 & 0xFFFFFFFFFFFFLL;
      }

      if (v29)
      {
        goto LABEL_53;
      }
    }

    if (![v23 stationID])
    {
LABEL_55:
      swift_unknownObjectRelease();
      return 0;
    }

    [v23 stationID];
    v11.super.super.isa = sub_1004BDB64().super.super.isa;
    v12 = MPStoreItemMetadataStringNormalizeStoreIDValue();
LABEL_51:
    v30 = v12;

    if (v30)
    {
      v26 = sub_1004BBE64();

LABEL_53:
      swift_unknownObjectRelease();
      return v26;
    }

    goto LABEL_55;
  }

  sub_100009130(0, &qword_100602E00, MPModelPlaylist_ptr);
  if (!swift_dynamicCastMetatype())
  {
    sub_100009130(0, &unk_100604030, MPModelSocialPerson_ptr);
    if (swift_dynamicCastMetatype())
    {
      if (v5)
      {
        result = MPIdentifierSet.bestLibraryIdentifier.getter();
        if (v9)
        {
          return result;
        }
      }

      if ((v5 & 2) == 0)
      {
        return 0;
      }

LABEL_34:
      v17 = [a4 universalStore];
      if (v17)
      {
        v15 = [v17 socialProfileID];
LABEL_36:
        v18 = v15;
        swift_unknownObjectRelease();
        if (v18)
        {
          v19 = sub_1004BBE64();
          v21 = v20;

          v22 = HIBYTE(v21) & 0xF;
          if ((v21 & 0x2000000000000000) == 0)
          {
            v22 = v19 & 0xFFFFFFFFFFFFLL;
          }

          if (v22)
          {
            return v19;
          }
        }
      }

      return MPIdentifierSet.bestStoreIdentifier.getter();
    }

    sub_100009130(0, qword_100602E08, MPModelRadioStation_ptr);
    if (!swift_dynamicCastMetatype())
    {
      if ((v5 & 1) == 0 || (result = MPIdentifierSet.bestLibraryIdentifier.getter(), !v16))
      {
        if ((v5 & 2) == 0)
        {
          return 0;
        }

        return MPIdentifierSet.bestStoreIdentifier.getter();
      }

      return result;
    }

    if ((v5 & 2) == 0)
    {
      return 0;
    }

    goto LABEL_43;
  }

  if ((v5 & 1) == 0 || (result = MPIdentifierSet.bestLibraryIdentifier.getter(), !v7))
  {
    if ((v5 & 2) == 0)
    {
      return 0;
    }

LABEL_27:
    v14 = [a4 universalStore];
    if (v14)
    {
      v15 = [v14 globalPlaylistID];
      goto LABEL_36;
    }

    return MPIdentifierSet.bestStoreIdentifier.getter();
  }

  return result;
}

uint64_t sub_1000D01C8(uint64_t a1)
{
  v2 = sub_100003ABC(&unk_100601C20, &qword_1004C95D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000D0298()
{

  return swift_deallocClassInstance();
}

uint64_t MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:page:snapshotImpressions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, unsigned __int16 a12, uint64_t a13, uint64_t a14)
{
  v69 = a8;
  v64 = a6;
  v65 = a7;
  v61 = a5;
  v60 = a4;
  v63 = a12;
  v62 = a10;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  __chkstk_darwin();
  v67 = &v59[-v18];
  sub_100003ABC(&qword_1006014F8, &unk_1004C8AA0);
  __chkstk_darwin();
  v71 = &v59[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v70 = &v59[-v20];
  __chkstk_darwin();
  v68 = &v59[-v21];
  __chkstk_darwin();
  v66 = &v59[-v22];
  __chkstk_darwin();
  v24 = &v59[-v23];
  __chkstk_darwin();
  v26 = &v59[-v25];
  __chkstk_darwin();
  v28 = &v59[-v27];
  v29 = type metadata accessor for MetricsEvent.Click(0);
  *(a9 + v29[19]) = 0;
  v30 = (a9 + v29[20]);
  *v30 = 0;
  v30[1] = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = v60;
  sub_100025B04(v61, a9 + v29[7], &qword_100600DE0, &unk_1004C66D0);
  v31 = v65;
  *(a9 + v29[8]) = v64;
  v32 = (a9 + v29[9]);
  v33 = v69;
  *v32 = v31;
  v32[1] = v33;
  v34 = a9 + v29[10];
  *v34 = v62;
  *(v34 + 16) = a11;
  *(v34 + 24) = v63;
  v69 = a13;
  sub_10000F778(a13, v28, &qword_1006014F8, &unk_1004C8AA0);
  v35 = type metadata accessor for MetricsEvent.Page(0);
  v36 = *(*(v35 - 1) + 48);
  if (v36(v28, 1, v35) == 1)
  {
    sub_100007214(v28, &qword_1006014F8, &unk_1004C8AA0);
    v37 = 0;
    v38 = 0;
  }

  else
  {
    v37 = *v28;
    v38 = v28[1];

    sub_1000DD55C(v28, type metadata accessor for MetricsEvent.Page);
  }

  v39 = (a9 + v29[12]);
  *v39 = v37;
  v39[1] = v38;
  v40 = v69;
  sub_10000F778(v69, v26, &qword_1006014F8, &unk_1004C8AA0);
  if (v36(v26, 1, v35) == 1)
  {
    sub_100007214(v26, &qword_1006014F8, &unk_1004C8AA0);
    v41 = 0;
    v42 = 0;
  }

  else
  {
    v41 = *(v26 + 2);
    v42 = *(v26 + 3);

    sub_1000DD55C(v26, type metadata accessor for MetricsEvent.Page);
  }

  v43 = (a9 + v29[13]);
  *v43 = v41;
  v43[1] = v42;
  sub_10000F778(v40, v24, &qword_1006014F8, &unk_1004C8AA0);
  v44 = v36(v24, 1, v35);
  v45 = v67;
  if (v44 == 1)
  {
    sub_100007214(v24, &qword_1006014F8, &unk_1004C8AA0);
    v46 = sub_1004B6B04();
    (*(*(v46 - 8) + 56))(v45, 1, 1, v46);
  }

  else
  {
    sub_10000F778(v24 + v35[6], v67, &qword_100600DE0, &unk_1004C66D0);
    sub_1000DD55C(v24, type metadata accessor for MetricsEvent.Page);
  }

  v47 = v70;
  v48 = v68;
  sub_100025B04(v45, a9 + v29[14], &qword_100600DE0, &unk_1004C66D0);
  v49 = v66;
  sub_10000F778(v40, v66, &qword_1006014F8, &unk_1004C8AA0);
  if (v36(v49, 1, v35) == 1)
  {
    sub_100007214(v49, &qword_1006014F8, &unk_1004C8AA0);
    v50 = 0;
  }

  else
  {
    v50 = *(v49 + v35[7]);

    sub_1000DD55C(v49, type metadata accessor for MetricsEvent.Page);
  }

  *(a9 + v29[15]) = v50;
  sub_10000F778(v40, v48, &qword_1006014F8, &unk_1004C8AA0);
  if (v36(v48, 1, v35) == 1)
  {
    sub_100007214(v48, &qword_1006014F8, &unk_1004C8AA0);
    v51 = 1;
  }

  else
  {
    v51 = *(v48 + v35[9]);
    sub_1000DD55C(v48, type metadata accessor for MetricsEvent.Page);
  }

  *(a9 + v29[16]) = v51;
  sub_10000F778(v40, v47, &qword_1006014F8, &unk_1004C8AA0);
  if (v36(v47, 1, v35) == 1)
  {
    sub_100007214(v47, &qword_1006014F8, &unk_1004C8AA0);
    v52 = 0;
    v53 = 0;
  }

  else
  {
    v54 = (v47 + v35[8]);
    v52 = *v54;
    v53 = v54[1];

    sub_1000DD55C(v47, type metadata accessor for MetricsEvent.Page);
  }

  v55 = (a9 + v29[18]);
  *v55 = v52;
  v55[1] = v53;
  v56 = v71;
  sub_100025B04(v40, v71, &qword_1006014F8, &unk_1004C8AA0);
  if (v36(v56, 1, v35) == 1)
  {
    result = sub_100007214(v56, &qword_1006014F8, &unk_1004C8AA0);
    v58 = 2;
  }

  else
  {
    v58 = *(v56 + v35[11]);
    result = sub_1000DD55C(v56, type metadata accessor for MetricsEvent.Page);
  }

  *(a9 + v29[17]) = v58;
  *(a9 + v29[11]) = a14;
  return result;
}

uint64_t *MetricsReportingController.shared.unsafeMutableAddressor()
{
  if (qword_1005FFE00 != -1)
  {
    swift_once();
  }

  return &static MetricsReportingController.shared;
}

unint64_t MetricsEvent.Click.ActionContext.rawValue.getter(unint64_t a1, int64_t a2)
{
  if (a2 > 5)
  {
    if (a2 > 8)
    {
      switch(a2)
      {
        case 9:
          v2 = 0x6E654D6570697773;
          goto LABEL_27;
        case 10:
          v2 = 0xD000000000000010;
          goto LABEL_27;
        case 11:
          v2 = 0x6E65746E49707061;
          goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (a2 == 6)
    {
      v2 = 0xD000000000000010;
    }

    else if (a2 == 7)
    {
      v2 = 0xD000000000000015;
    }

    else
    {
      v2 = 0x6853686372616573;
    }
  }

  else
  {
    if (a2 <= 2)
    {
      switch(a2)
      {
        case 0:
          v2 = 0x6E6F74747562;
          goto LABEL_27;
        case 1:
          v2 = 0x6472616F6279656BLL;
          goto LABEL_27;
        case 2:
          v2 = 0x79726F7473;
          goto LABEL_27;
      }

LABEL_26:
      v2 = a1;
      goto LABEL_27;
    }

    if (a2 == 3)
    {
      v2 = 1701998445;
    }

    else if (a2 == 4)
    {
      v2 = 0x636972796CLL;
    }

    else
    {
      v2 = 0x6B63617274;
    }
  }

LABEL_27:
  sub_100024AF0(a1, a2);
  return v2;
}

__n128 MetricsEvent.ComponentRender.init(componentIdentifier:componentType:componentAppearTime:componentPlaceholderAppearTime:componentMotionActivationTime:componentRequestTime:componentEndTime:componentInterruptTime:preloadStatus:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  *&v15 = a1;
  *(&v15 + 1) = a2;
  v16.n128_u8[0] = a3;
  v16.n128_u64[1] = a4;
  *&v17 = a5;
  *(&v17 + 1) = a6;
  *v18 = a7;
  *&v18[8] = a8;
  *&v18[16] = a10;
  v18[24] = a11;
  v19[0] = a1;
  v19[1] = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v26 = a10;
  v27 = a11;
  sub_1000CCE04(&v15, &v14);
  sub_1000CCE90(v19);
  v12 = *v18;
  *(a9 + 32) = v17;
  *(a9 + 48) = v12;
  *(a9 + 57) = *&v18[9];
  result = v16;
  *a9 = v15;
  *(a9 + 16) = result;
  return result;
}

uint64_t sub_1000D0CF4()
{
  v1 = v0;
  sub_100003ABC(&qword_100603110, &qword_1004CD2B0);
  __chkstk_darwin();
  v37 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v36 - v3;
  __chkstk_darwin();
  v6 = &v36 - v5;
  v7 = sub_1004B6CD4();
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin();
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v36 - v10;
  __chkstk_darwin();
  v13 = &v36 - v12;
  __chkstk_darwin();
  v15 = &v36 - v14;
  swift_beginAccess();
  v16 = *(v0 + 16);
  v17 = sub_1000E296C();

  if (v17)
  {
    return 1;
  }

  v19 = sub_1000E2CC4();
  v18 = 1;
  if (v19)
  {
    v40 = 0.0;
    v41 = 1;
    v20 = v19;
    sub_1004BC5B4();

    if (v41 != 1)
    {
      v21 = v40;
      v22 = sub_1000E2788();
      if (v22)
      {
        v40 = 0.0;
        v41 = 1;
        v23 = v22;
        sub_1004BC5B4();

        if ((v41 & 1) == 0)
        {
          sub_1004B6CC4();
          v24 = *(v1 + 16);
          sub_1000E2A14(v4);
          sub_100025B04(v4, v6, &qword_100603110, &qword_1004CD2B0);

          v25 = v38;
          v26 = v39;
          if ((*(v38 + 48))(v6, 1, v39))
          {
            sub_100007214(v6, &qword_100603110, &qword_1004CD2B0);
            v27 = v26;
            v28 = v25;
          }

          else
          {
            (*(v25 + 16))(v9, v6, v26);
            sub_100007214(v6, &qword_100603110, &qword_1004CD2B0);
            sub_1004B6C24();
            v29 = v9;
            v30 = *(v25 + 8);
            v30(v29, v26);
            (*(v25 + 32))(v13, v11, v26);
            v31 = sub_1004B6C54();
            v30(v13, v26);
            v27 = v26;
            v28 = v25;
            if (v31)
            {
              v30(v15, v26);
              return 1;
            }
          }

          v32 = sub_1000DCF8C(0x20000000000001uLL);
          if (v32 == 0x20000000000000)
          {
            if (v21 >= 1.0)
            {
LABEL_17:
              (*(v28 + 16))(v4, v15, v27);
              v18 = 1;
              (*(v28 + 56))(v4, 0, 1, v27);
              swift_beginAccess();
              v34 = v37;
              sub_10000F778(v4, v37, &qword_100603110, &qword_1004CD2B0);
              sub_1000E2B30(v34);
              swift_endAccess();
              sub_100007214(v4, &qword_100603110, &qword_1004CD2B0);
              (*(v28 + 8))(v15, v27);
              return v18;
            }
          }

          else
          {
            v33 = vcvtd_n_f64_u64(v32, 0x35uLL);
            if (v33 > 0.0 && v33 <= v21)
            {
              goto LABEL_17;
            }
          }

          (*(v28 + 8))(v15, v27);
          return 0;
        }
      }
    }
  }

  return v18;
}

uint64_t sub_1000D11DC()
{
  v1 = v0;
  sub_100003ABC(&qword_100603110, &qword_1004CD2B0);
  __chkstk_darwin();
  v37 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v36 - v3;
  __chkstk_darwin();
  v6 = &v36 - v5;
  v7 = sub_1004B6CD4();
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin();
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v36 - v10;
  __chkstk_darwin();
  v13 = &v36 - v12;
  __chkstk_darwin();
  v15 = &v36 - v14;
  swift_beginAccess();
  v16 = *(v0 + 16);
  v17 = sub_1000E307C();

  if (v17)
  {
    return 1;
  }

  v19 = sub_1000DCEB0(0xD000000000000023, 0x80000001004FE570);
  v18 = 1;
  if (v19)
  {
    v40 = 0.0;
    v41 = 1;
    v20 = v19;
    sub_1004BC5B4();

    if (v41 != 1)
    {
      v21 = v40;
      v22 = sub_1000DCEB0(0xD00000000000001BLL, 0x80000001004FE5A0);
      if (v22)
      {
        v40 = 0.0;
        v41 = 1;
        v23 = v22;
        sub_1004BC5B4();

        if ((v41 & 1) == 0)
        {
          sub_1004B6CC4();
          v24 = *(v1 + 16);
          sub_1000E3124(v4);
          sub_100025B04(v4, v6, &qword_100603110, &qword_1004CD2B0);

          v25 = v38;
          v26 = v39;
          if ((*(v38 + 48))(v6, 1, v39))
          {
            sub_100007214(v6, &qword_100603110, &qword_1004CD2B0);
            v27 = v26;
            v28 = v25;
          }

          else
          {
            (*(v25 + 16))(v9, v6, v26);
            sub_100007214(v6, &qword_100603110, &qword_1004CD2B0);
            sub_1004B6C24();
            v29 = v9;
            v30 = *(v25 + 8);
            v30(v29, v26);
            (*(v25 + 32))(v13, v11, v26);
            v31 = sub_1004B6C54();
            v30(v13, v26);
            v27 = v26;
            v28 = v25;
            if (v31)
            {
              v30(v15, v26);
              return 1;
            }
          }

          v32 = sub_1000DCF8C(0x20000000000001uLL);
          if (v32 == 0x20000000000000)
          {
            if (v21 >= 1.0)
            {
LABEL_17:
              (*(v28 + 16))(v4, v15, v27);
              v18 = 1;
              (*(v28 + 56))(v4, 0, 1, v27);
              swift_beginAccess();
              v34 = v37;
              sub_10000F778(v4, v37, &qword_100603110, &qword_1004CD2B0);
              sub_1000E3240(v34);
              swift_endAccess();
              sub_100007214(v4, &qword_100603110, &qword_1004CD2B0);
              (*(v28 + 8))(v15, v27);
              return v18;
            }
          }

          else
          {
            v33 = vcvtd_n_f64_u64(v32, 0x35uLL);
            if (v33 > 0.0 && v33 <= v21)
            {
              goto LABEL_17;
            }
          }

          (*(v28 + 8))(v15, v27);
          return 0;
        }
      }
    }
  }

  return v18;
}

uint64_t MetricsEvent.TargetType.init(contentItem:)(void *a1)
{
  v2 = [a1 itemType];
  if (v2 > 3)
  {
    if (v2 != 4)
    {
      if (v2 == 7)
      {

        return 21;
      }

      goto LABEL_8;
    }

    return 17;
  }

  else
  {
    if (v2 != 1)
    {
      if (v2 == 2)
      {

        return 3;
      }

LABEL_8:
      v4 = sub_1004BC984();
      sub_100003ABC(&qword_100602E90, &qword_1004CCAD0);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1004C50A0;
      [a1 itemType];
      type metadata accessor for MPModelStoreBrowseContentItemType(0);
      v6 = sub_1004BBF04();
      v8 = v7;
      *(v5 + 56) = &type metadata for String;
      *(v5 + 64) = sub_1000D60C4();
      *(v5 + 32) = v6;
      *(v5 + 40) = v8;
      sub_100009130(0, &qword_1006090F0, OS_os_log_ptr);
      v9 = sub_1004BD144();
      sub_1004B7F84(v4, &_mh_execute_header, v9, "MPModelStoreBrowseContentItem.Kind.targetType: Returning nil for [targetType for this kind not yet implemented] self=%@", 119, 2, v5);

      return 27;
    }

    return 0;
  }
}

unint64_t MetricsEvent.TargetType.rawValue.getter(char a1)
{
  result = 0x6D75626C41;
  switch(a1)
  {
    case 1:
      result = 0x7465446D75626C41;
      break;
    case 2:
      result = 7368801;
      break;
    case 3:
      result = 0x747369747241;
      break;
    case 4:
      result = 0x72656E6E6162;
      break;
    case 5:
      result = 0x6E6F74747562;
      break;
    case 6:
      result = 0x6954656C62627562;
      break;
    case 7:
      result = 1685217603;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x7265746C6966;
      break;
    case 10:
      result = 0x7449726564616548;
      break;
    case 11:
      result = 0x7473694C746E6948;
      break;
    case 12:
      result = 7955819;
      break;
    case 13:
      result = 1802398060;
      break;
    case 14:
      result = 0x6E694C636972796CLL;
      break;
    case 15:
      result = 0x6D6574497473694CLL;
      break;
    case 16:
      result = 7235952;
      break;
    case 17:
    case 18:
      result = 0x7473696C79616C50;
      break;
    case 19:
      result = 0x4C746E65746E6F43;
      break;
    case 20:
      result = 0x726564696C73;
      break;
    case 21:
      result = 1735290707;
      break;
    case 22:
      result = 0x6974736567677573;
      break;
    case 23:
      result = 0x786F4274786574;
      break;
    case 24:
      result = 0x6C6C65737055;
      break;
    case 25:
      result = 0x657449666C656853;
      break;
    case 26:
      result = 0x6D65744964697247;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000D1BDC@<X0>(Swift::String *a1@<X0>, MusicCore::MetricsEvent::TargetType_optional *a2@<X8>)
{
  result = _s9MusicCore12MetricsEventV10TargetTypeO8rawValueAESgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t sub_1000D1C0C@<X0>(unint64_t *a1@<X8>)
{
  result = MetricsEvent.TargetType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, char a10, uint64_t a11, uint64_t a12, char a13)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  v18 = type metadata accessor for MetricsEvent.Page(0);
  result = sub_100025B04(a5, a9 + v18[6], &qword_100600DE0, &unk_1004C66D0);
  *(a9 + v18[7]) = a6;
  v20 = (a9 + v18[8]);
  *v20 = a7;
  v20[1] = a8;
  *(a9 + v18[9]) = a10 & 1;
  v21 = (a9 + v18[10]);
  *v21 = a11;
  v21[1] = a12;
  *(a9 + v18[11]) = a13;
  return result;
}

uint64_t static MetricsEvent.Page.contextualActionMenu(storeID:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  if (a2)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0xD000000000000014;
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0x80000001004FE1C0;
  }

  v6 = type metadata accessor for MetricsEvent.Page(0);
  v7 = v6[6];
  v8 = sub_1004B6B04();
  (*(*(v8 - 8) + 56))(&a3[v7], 1, 1, v8);
  *a3 = v4;
  *(a3 + 1) = v5;
  *(a3 + 2) = 0xD000000000000014;
  *(a3 + 3) = 0x80000001004FE1C0;
  *&a3[v6[7]] = 0;
  v9 = &a3[v6[8]];
  *v9 = 0;
  *(v9 + 1) = 0;
  a3[v6[9]] = 1;
  v10 = &a3[v6[10]];
  *v10 = 0;
  *(v10 + 1) = 0;
  a3[v6[11]] = 2;
}

uint64_t sub_1000D1E08()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100007108(v0, static MetricsEvent.Page.libraryLanding);
  v1 = sub_100007084(v0, static MetricsEvent.Page.libraryLanding);
  v2 = v0[6];
  v3 = sub_1004B6B04();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0x7972617262694CLL;
  *(v1 + 1) = 0xE700000000000000;
  *(v1 + 2) = 0x676E69646E614CLL;
  *(v1 + 3) = 0xE700000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1000D1F48()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100007108(v0, static MetricsEvent.Page.libraryMenuEdit);
  v1 = sub_100007084(v0, static MetricsEvent.Page.libraryMenuEdit);
  v2 = v0[6];
  v3 = sub_1004B6B04();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0x4D7972617262694CLL;
  *(v1 + 1) = 0xEF74696445756E65;
  *(v1 + 2) = 0x72656B636950;
  *(v1 + 3) = 0xE600000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1000D2070(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for MetricsEvent.Page(0);

  return sub_100007084(v4, a2);
}

uint64_t sub_1000D20E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for MetricsEvent.Page(0);
  v7 = sub_100007084(v6, a2);

  return sub_1000DD488(v7, a4);
}

uint64_t sub_1000D2148()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100007108(v0, static MetricsEvent.Page.libraryMadeForYou);
  v1 = sub_100007084(v0, static MetricsEvent.Page.libraryMadeForYou);
  v2 = v0[6];
  v3 = sub_1004B6B04();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0x59726F466564614DLL;
  *(v1 + 1) = 0xEA0000000000756FLL;
  *(v1 + 2) = 0x7972617262694CLL;
  *(v1 + 3) = 0xE700000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1000D2290()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100007108(v0, static MetricsEvent.Page.libraryAlbumsList);
  v1 = sub_100007084(v0, static MetricsEvent.Page.libraryAlbumsList);
  v2 = v0[6];
  v3 = sub_1004B6B04();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000011;
  *(v1 + 1) = 0x80000001004FE720;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1000D23D8()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100007108(v0, static MetricsEvent.Page.libraryArtistsList);
  v1 = sub_100007084(v0, static MetricsEvent.Page.libraryArtistsList);
  v2 = v0[6];
  v3 = sub_1004B6B04();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000012;
  *(v1 + 1) = 0x80000001004FE700;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1000D2520()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100007108(v0, static MetricsEvent.Page.libraryCompilationsList);
  v1 = sub_100007084(v0, static MetricsEvent.Page.libraryCompilationsList);
  v2 = v0[6];
  v3 = sub_1004B6B04();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000017;
  *(v1 + 1) = 0x80000001004FE6E0;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1000D2668()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100007108(v0, static MetricsEvent.Page.libraryComposersList);
  v1 = sub_100007084(v0, static MetricsEvent.Page.libraryComposersList);
  v2 = v0[6];
  v3 = sub_1004B6B04();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000014;
  *(v1 + 1) = 0x80000001004FE6C0;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1000D27B0()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100007108(v0, static MetricsEvent.Page.libraryGenresList);
  v1 = sub_100007084(v0, static MetricsEvent.Page.libraryGenresList);
  v2 = v0[6];
  v3 = sub_1004B6B04();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000011;
  *(v1 + 1) = 0x80000001004FE6A0;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1000D28F8()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100007108(v0, static MetricsEvent.Page.libraryMusicVideosList);
  v1 = sub_100007084(v0, static MetricsEvent.Page.libraryMusicVideosList);
  v2 = v0[6];
  v3 = sub_1004B6B04();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000016;
  *(v1 + 1) = 0x80000001004FE680;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1000D2A40()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100007108(v0, static MetricsEvent.Page.libraryPlaylistsList);
  v1 = sub_100007084(v0, static MetricsEvent.Page.libraryPlaylistsList);
  v2 = v0[6];
  v3 = sub_1004B6B04();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000014;
  *(v1 + 1) = 0x80000001004FE660;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1000D2B88()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100007108(v0, static MetricsEvent.Page.librarySongsList);
  v1 = sub_100007084(v0, static MetricsEvent.Page.librarySongsList);
  v2 = v0[6];
  v3 = sub_1004B6B04();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000010;
  *(v1 + 1) = 0x80000001004FE640;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1000D2CD0()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100007108(v0, static MetricsEvent.Page.libraryRecentlyAdded);
  v1 = sub_100007084(v0, static MetricsEvent.Page.libraryRecentlyAdded);
  v2 = v0[6];
  v3 = sub_1004B6B04();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000018;
  *(v1 + 1) = 0x80000001004FE620;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1000D2E18()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100007108(v0, static MetricsEvent.Page.libraryRecentlyDownloaded);
  v1 = sub_100007084(v0, static MetricsEvent.Page.libraryRecentlyDownloaded);
  v2 = v0[6];
  v3 = sub_1004B6B04();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD00000000000001DLL;
  *(v1 + 1) = 0x80000001004FE600;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1000D2F60()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100007108(v0, static MetricsEvent.Page.libraryAlbumDetail);
  v1 = sub_100007084(v0, static MetricsEvent.Page.libraryAlbumDetail);
  v2 = v0[6];
  v3 = sub_1004B6B04();
  result = (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  strcpy(v1, "LibraryAlbum");
  *(v1 + 13) = 0;
  *(v1 + 14) = -5120;
  *(v1 + 16) = 0x6D75626C41;
  *(v1 + 24) = 0xE500000000000000;
  *(v1 + v0[7]) = 0;
  v5 = (v1 + v0[8]);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + v0[9]) = 1;
  v6 = (v1 + v0[10]);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + v0[11]) = 2;
  return result;
}

uint64_t sub_1000D30A8()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100007108(v0, static MetricsEvent.Page.libraryArtistDetail);
  v1 = sub_100007084(v0, static MetricsEvent.Page.libraryArtistDetail);
  v2 = v0[6];
  v3 = sub_1004B6B04();
  result = (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  strcpy(v1, "LibraryArtist");
  *(v1 + 14) = -4864;
  *(v1 + 16) = 0x747369747241;
  *(v1 + 24) = 0xE600000000000000;
  *(v1 + v0[7]) = 0;
  v5 = (v1 + v0[8]);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + v0[9]) = 1;
  v6 = (v1 + v0[10]);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + v0[11]) = 2;
  return result;
}

uint64_t sub_1000D31F4()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100007108(v0, static MetricsEvent.Page.libraryPlaylistDetail);
  v1 = sub_100007084(v0, static MetricsEvent.Page.libraryPlaylistDetail);
  v2 = v0[6];
  v3 = sub_1004B6B04();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0x507972617262694CLL;
  *(v1 + 1) = 0xEF7473696C79616CLL;
  *(v1 + 2) = 0x7473696C79616C50;
  *(v1 + 3) = 0xE800000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1000D3344()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100007108(v0, static MetricsEvent.Page.libraryComposerDetail);
  v1 = sub_100007084(v0, static MetricsEvent.Page.libraryComposerDetail);
  v2 = v0[6];
  v3 = sub_1004B6B04();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0x437972617262694CLL;
  *(v1 + 1) = 0xEF7265736F706D6FLL;
  *(v1 + 2) = 0x747369747241;
  *(v1 + 3) = 0xE600000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1000D3490()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100007108(v0, static MetricsEvent.Page.libraryGenreDetail);
  v1 = sub_100007084(v0, static MetricsEvent.Page.libraryGenreDetail);
  v2 = v0[6];
  v3 = sub_1004B6B04();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000012;
  *(v1 + 1) = 0x80000001004FE5E0;
  *(v1 + 2) = 0x65726E6547;
  *(v1 + 3) = 0xE500000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1000D35DC()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100007108(v0, static MetricsEvent.Page.playlistCreation);
  v1 = sub_100007084(v0, static MetricsEvent.Page.playlistCreation);
  v2 = v0[6];
  v3 = sub_1004B6B04();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0x6C79616C5077654ELL;
  *(v1 + 1) = 0xEB00000000747369;
  *(v1 + 2) = 0x7473696C79616C50;
  *(v1 + 3) = 0xE800000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 0;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1000D3724()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100007108(v0, static MetricsEvent.Page.playlistPicker);
  v1 = sub_100007084(v0, static MetricsEvent.Page.playlistPicker);
  v2 = v0[6];
  v3 = sub_1004B6B04();
  result = (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  strcpy(v1, "PlaylistPicker");
  *(v1 + 15) = -18;
  *(v1 + 16) = 0x72656B636950;
  *(v1 + 24) = 0xE600000000000000;
  *(v1 + v0[7]) = 0;
  v5 = (v1 + v0[8]);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + v0[9]) = 0;
  v6 = (v1 + v0[10]);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + v0[11]) = 2;
  return result;
}

uint64_t MetricsEvent.Page.metricsPageProperties.getter@<X0>(char *a1@<X8>)
{
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  __chkstk_darwin();
  v4 = &v18 - v3;
  v5 = v1[1];
  v18 = *v1;
  v7 = v1[2];
  v6 = v1[3];
  v8 = type metadata accessor for MetricsEvent.Page(0);
  sub_10000F778(v1 + v8[6], v4, &qword_100600DE0, &unk_1004C66D0);
  v9 = *(v1 + v8[7]);
  v10 = (v1 + v8[10]);
  v11 = v10[1];
  v19 = *v10;
  v12 = type metadata accessor for MetricsPageProperties(0);
  v13 = v12[6];
  v14 = sub_1004B6B04();
  (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
  v15 = v12[7];
  v16 = &a1[v12[8]];
  *a1 = v18;
  *(a1 + 1) = v5;
  *(a1 + 2) = v7;
  *(a1 + 3) = v6;

  result = sub_1000DD4EC(v4, &a1[v13]);
  *&a1[v15] = v9;
  *v16 = v19;
  *(v16 + 1) = v11;
  return result;
}

BOOL MetricsEvent.Page.DisplayType.init(rawValue:)(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005A4190;
  v6._object = a2;
  v4 = sub_1004BD764(v3, v6);

  return v4 != 0;
}

Swift::Int sub_1000D3A4C()
{
  sub_1004BDBA4();
  sub_1004BBF84();
  return sub_1004BDBF4();
}

Swift::Int sub_1000D3AB8()
{
  sub_1004BDBA4();
  sub_1004BBF84();
  return sub_1004BDBF4();
}

uint64_t sub_1000D3B08@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1005A41C8;
  v7._object = v3;
  v5 = sub_1004BD764(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v29 = type metadata accessor for MetricsEvent.Click(0);
  *(a9 + v29[19]) = 0;
  v30 = (a9 + v29[20]);
  *v30 = 0;
  v30[1] = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  sub_100025B04(a5, a9 + v29[7], &qword_100600DE0, &unk_1004C66D0);
  *(a9 + v29[8]) = a6;
  v31 = (a9 + v29[9]);
  *v31 = a7;
  v31[1] = a8;
  v32 = a9 + v29[10];
  *v32 = a10;
  *(v32 + 16) = a11;
  *(v32 + 24) = a12;
  v33 = (a9 + v29[12]);
  *v33 = a13;
  v33[1] = a14;
  v34 = (a9 + v29[13]);
  *v34 = a15;
  v34[1] = a16;
  result = sub_100025B04(a17, a9 + v29[14], &qword_100600DE0, &unk_1004C66D0);
  *(a9 + v29[15]) = a18;
  *(a9 + v29[16]) = a19 & 1;
  *(a9 + v29[17]) = a20;
  *(a9 + v29[11]) = a21;
  v36 = (a9 + v29[18]);
  *v36 = a22;
  v36[1] = a23;
  return result;
}

__n128 MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:metricsPageProperties:snapshotImpressions:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10, unint64_t a11, unsigned __int16 a12, uint64_t *a13, uint64_t a14)
{
  v18 = a13[1];
  v33 = *a13;
  v19 = a13[3];
  v35 = a13[2];
  v20 = type metadata accessor for MetricsPageProperties(0);
  v21 = *(v20 + 24);
  v22 = type metadata accessor for MetricsEvent.Click(0);
  sub_10000F778(a13 + v21, a9 + v22[14], &qword_100600DE0, &unk_1004C66D0);
  v23 = *(a13 + *(v20 + 28));

  sub_1000DD55C(a13, type metadata accessor for MetricsPageProperties);
  *(a9 + v22[19]) = 0;
  v24 = (a9 + v22[20]);
  *v24 = 0;
  v24[1] = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  sub_100025B04(a5, a9 + v22[7], &qword_100600DE0, &unk_1004C66D0);
  *(a9 + v22[8]) = a6;
  v25 = (a9 + v22[9]);
  *v25 = a7;
  v25[1] = a8;
  v26 = (a9 + v22[10]);
  result = a10;
  *v26 = a10;
  v26[1].n128_u64[0] = a11;
  v26[1].n128_u16[4] = a12;
  v28 = (a9 + v22[12]);
  *v28 = v33;
  v28[1] = v18;
  v29 = (a9 + v22[13]);
  *v29 = v35;
  v29[1] = v19;
  *(a9 + v22[15]) = v23;
  *(a9 + v22[16]) = 1;
  *(a9 + v22[17]) = 2;
  *(a9 + v22[11]) = a14;
  v30 = (a9 + v22[18]);
  *v30 = 0;
  v30[1] = 0;
  return result;
}

uint64_t MetricsEvent.Click.isSharedContent.setter(char a1)
{
  result = type metadata accessor for MetricsEvent.Click(0);
  *(v1 + *(result + 76)) = a1;
  return result;
}

uint64_t MetricsEvent.Click.dataRecoDataSetId.getter()
{
  v1 = *(v0 + *(type metadata accessor for MetricsEvent.Click(0) + 80));

  return v1;
}

uint64_t MetricsEvent.Click.dataRecoDataSetId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MetricsEvent.Click(0) + 80));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MetricsEvent.Click.ActionType.rawValue.getter(char a1)
{
  result = 0x6E6F69746361;
  switch(a1)
  {
    case 1:
      return 0x68536E6F69746361;
    case 2:
      return 0x6574617669746361;
    case 3:
      return 6579297;
    case 4:
      return 0x73676E6F53646461;
    case 5:
      return 0x62694C6F54646461;
    case 6:
      return 0x6575516F54646461;
    case 7:
      return 0x7473756A6461;
    case 8:
      return 0x616C506E69676562;
    case 9:
      return 0x6C65636E6163;
    case 10:
      return 0x726F62616C6C6F63;
    case 11:
      return 0x657461657263;
    case 12:
      return 0x7453657461657263;
    case 13:
      v4 = 5;
      goto LABEL_64;
    case 14:
      return 0x64616F6C6E776F64;
    case 15:
      return 0x6176697463616564;
    case 16:
      return 0x6574656C6564;
    case 17:
      return 0x7463656C65736564;
    case 18:
      return 0x7470697263736564;
    case 19:
      return 0x7373696D736964;
    case 20:
      return 1953064037;
    case 21:
      return 0x65766F4374696465;
    case 22:
      return 0x657469726F766166;
    case 23:
      return 0x69726F7661666E75;
    case 24:
      return 1702125928;
    case 25:
      return 0x657461686E75;
    case 26:
      return 1953393000;
    case 27:
      return 0x7475706E69;
    case 28:
      return 0x657461676976616ELL;
    case 29:
      return 7235952;
    case 30:
      return 0x6E69706E75;
    case 31:
      return 2036427888;
    case 32:
      v3 = 0x664179616C70;
      goto LABEL_49;
    case 33:
      v3 = 0x614C79616C70;
LABEL_49:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6574000000000000;
      break;
    case 34:
      result = 0x7478654E79616C70;
      break;
    case 35:
      result = 0x7463616572;
      break;
    case 36:
      result = 1868850546;
      break;
    case 37:
      result = 0x6F4465766F6D6572;
      break;
    case 38:
      v4 = 11;
LABEL_64:
      result = v4 | 0xD000000000000010;
      break;
    case 39:
      result = 0xD000000000000012;
      break;
    case 40:
      result = 0x726564726F6572;
      break;
    case 41:
      result = 0x6F4374726F706572;
      break;
    case 42:
      result = 0x686372616573;
      break;
    case 43:
      result = 1801807219;
      break;
    case 44:
      result = 0x7463656C6573;
      break;
    case 45:
      result = 0xD000000000000010;
      break;
    case 46:
      result = 0xD000000000000013;
      break;
    case 47:
      result = 0xD000000000000010;
      break;
    case 48:
      result = 0x6572616873;
      break;
    case 49:
      result = 0x694C646572616873;
      break;
    case 50:
      result = 0x72794C6572616873;
      break;
    case 51:
      result = 0x6972794C776F6873;
      break;
    case 52:
      result = 0x72506E4F776F6873;
      break;
    case 53:
      result = 0x656C6666756873;
      break;
    case 54:
      result = 0x74696D627573;
      break;
    case 55:
      result = 0x656C67676F74;
      break;
    case 56:
      result = 1868852853;
      break;
    case 57:
      result = 0x75626C4177656976;
      break;
    case 58:
      result = 0x6974724177656976;
      break;
    case 59:
      result = 0x6465724377656976;
      break;
    case 60:
      result = 0x79616C5077656976;
      break;
    case 61:
      result = 0x77656976657270;
      break;
    case 62:
      result = 0x6573756170;
      break;
    case 63:
      result = 0x68736572666572;
      break;
    case 64:
      result = 1735289203;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000D47F8(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1004BD9C4();
  }

  return v12 & 1;
}

Swift::Int sub_1000D48A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  sub_1004BDBA4();
  a3(v5);
  sub_1004BBF84();

  return sub_1004BDBF4();
}

uint64_t sub_1000D4928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  sub_1004BBF84();
}

Swift::Int sub_1000D4998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  sub_1004BDBA4();
  a4(v6);
  sub_1004BBF84();

  return sub_1004BDBF4();
}

unint64_t sub_1000D4A00@<X0>(Swift::String *a1@<X0>, MusicCore::MetricsEvent::Click::ActionType_optional *a2@<X8>)
{
  result = _s9MusicCore12MetricsEventV5ClickV10ActionTypeO8rawValueAGSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_1000D4A30@<X0>(uint64_t *a1@<X8>)
{
  result = MetricsEvent.Click.ActionType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void MetricsEvent.Click.ActionContext.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 > 5)
  {
    if (a3 <= 8)
    {
      if (a3 == 6)
      {
        v3 = 6;
      }

      else if (a3 == 7)
      {
        v3 = 7;
      }

      else
      {
        v3 = 8;
      }

      goto LABEL_26;
    }

    switch(a3)
    {
      case 9:
        v3 = 9;
        goto LABEL_26;
      case 10:
        v3 = 11;
        goto LABEL_26;
      case 11:
        v3 = 12;
        goto LABEL_26;
    }
  }

  else
  {
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        v3 = 3;
      }

      else if (a3 == 4)
      {
        v3 = 4;
      }

      else
      {
        v3 = 5;
      }

      goto LABEL_26;
    }

    switch(a3)
    {
      case 0:
        v3 = 0;
        goto LABEL_26;
      case 1:
        v3 = 1;
        goto LABEL_26;
      case 2:
        v3 = 2;
LABEL_26:
        sub_1004BDBB4(v3);
        return;
    }
  }

  sub_1004BDBB4(0xAuLL);

  sub_1004BBF84();
}

Swift::Int MetricsEvent.Click.ActionContext.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1004BDBA4();
  MetricsEvent.Click.ActionContext.hash(into:)(v5, a1, a2);
  return sub_1004BDBF4();
}

Swift::Int sub_1000D4BE8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1004BDBA4();
  MetricsEvent.Click.ActionContext.hash(into:)(v4, v1, v2);
  return sub_1004BDBF4();
}

Swift::Int sub_1000D4C3C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1004BDBA4();
  MetricsEvent.Click.ActionContext.hash(into:)(v4, v1, v2);
  return sub_1004BDBF4();
}

void *MetricsEvent.Click.ActionDetails.dictionary.getter(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (BYTE1(a4) > 1u)
  {
    if (BYTE1(a4) == 2)
    {
      if (!a2)
      {
        return 0;
      }

      sub_100003ABC(&unk_100606150, &qword_1004CCAD8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004C50A0;
      strcpy((inited + 32), "searchPrefix");
      *(inited + 45) = 0;
      *(inited + 46) = -5120;
      *(inited + 48) = v4;
      *(inited + 56) = a2;
      sub_100025A94(v4, a2, a3, a4, 2);
      v4 = sub_10003C464(inited);
      swift_setDeallocating();
      v7 = (inited + 32);
    }

    else
    {
      if (BYTE1(a4) == 3)
      {

        return v4;
      }

      v4 = sub_10003C464(&off_1005A3918);
      v7 = &unk_1005A3938;
    }

LABEL_10:
    sub_100007214(v7, &qword_100602EA0, &qword_1004CCAE0);
    return v4;
  }

  if (!BYTE1(a4))
  {
    sub_100003ABC(&unk_100606150, &qword_1004CCAD8);
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_1004C50A0;
    strcpy((v5 + 32), "actionSubType");
    *(v5 + 46) = -4864;
    *(v5 + 48) = MetricsEvent.Click.ActionType.rawValue.getter(v4);
    *(v5 + 56) = v6;
    v4 = sub_10003C464(v5);
    swift_setDeallocating();
    v7 = (v5 + 32);
    goto LABEL_10;
  }

  v13 = a4;
  if (!a1)
  {
    v4 = sub_10003C464(&off_1005A38B8);
    sub_100003ABC(&qword_100602EA0, &qword_1004CCAE0);
    goto LABEL_37;
  }

  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      v21 = v20;

      v22 = [v21 artist];
      if (!v22)
      {
        goto LABEL_25;
      }
    }

    else
    {
      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();

      if (!v23)
      {
LABEL_26:
        v26 = 0;
        goto LABEL_27;
      }

      v22 = [v23 artist];
      if (!v22)
      {
LABEL_25:
        v23 = 0;
        goto LABEL_26;
      }
    }

    v24 = v22;
    v19 = [v22 name];

    if (v19)
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v17 = v16;

  v18 = [v17 name];
  if (!v18)
  {
    goto LABEL_25;
  }

  v19 = v18;
LABEL_24:
  v23 = sub_1004BBE64();
  v26 = v25;

LABEL_27:
  sub_100003ABC(&unk_100606150, &qword_1004CCAD8);
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_1004C5070;
  *(v27 + 32) = 1684957547;
  *(v27 + 40) = 0xE400000000000000;
  v28 = v4;
  v31 = sub_1000DFE8C(v28, v29, v30);
  *(v27 + 48) = MetricsContentType.rawValue.getter(v31);
  *(v27 + 56) = v32;
  *(v27 + 64) = 0x614E747369747261;
  *(v27 + 72) = 0xEA0000000000656DLL;
  v33 = 16718;
  if (v26)
  {
    v33 = v23;
  }

  v34 = 0xE200000000000000;
  if (v26)
  {
    v34 = v26;
  }

  *(v27 + 80) = v33;
  *(v27 + 88) = v34;
  strcpy((v27 + 96), "lyricSnippet");
  *(v27 + 109) = 0;
  *(v27 + 110) = -5120;
  if (a3)
  {
    v35 = a2;
  }

  else
  {
    v35 = 0;
  }

  v36 = 0xE000000000000000;
  if (a3)
  {
    v36 = a3;
  }

  *(v27 + 112) = v35;
  *(v27 + 120) = v36;
  v4 = sub_10003C464(v27);
  swift_setDeallocating();
  sub_100003ABC(&qword_100602EA0, &qword_1004CCAE0);
LABEL_37:
  swift_arrayDestroy();
  if (v13 != 65)
  {
    v38 = MetricsEvent.Click.ActionType.rawValue.getter(v13);
    v39 = v37;
    if (v38 == 0xD000000000000015 && 0x80000001004FB680 == v37)
    {
    }

    else
    {
      v40 = sub_1004BD9C4();

      if ((v40 & 1) == 0)
      {
        return v4;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100038120(v38, v39, 0x6E6F69746361, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  }

  return v4;
}

void __swiftcall MetricsEvent.Dialog.init(dialogID:dialogType:title:message:messageCode:options:subjectID:targetID:actionType:)(MusicCore::MetricsEvent::Dialog *__return_ptr retstr, Swift::String dialogID, MusicCore::MetricsEvent::Dialog::Type dialogType, Swift::String_optional title, Swift::String_optional message, Swift::String messageCode, Swift::OpaquePointer options, Swift::String_optional subjectID, Swift::String targetID, MusicCore::MetricsEvent::Dialog::ActionType actionType)
{
  v17 = dialogID;
  LOBYTE(v18) = dialogType & 1;
  *(&v18 + 1) = title.value._countAndFlagsBits;
  *&v19 = title.value._object;
  *(&v19 + 1) = message.value._countAndFlagsBits;
  *&v20 = message.value._object;
  *(&v20 + 1) = messageCode._countAndFlagsBits;
  *&v21 = messageCode._object;
  *(&v21 + 1) = options;
  v22 = subjectID;
  v23 = targetID;
  v24 = actionType & 1;
  v25 = dialogID;
  v26 = dialogType & 1;
  v27 = title;
  v28 = message;
  v29 = messageCode;
  rawValue = options._rawValue;
  v31 = subjectID;
  v32 = targetID;
  v33 = actionType & 1;
  sub_1000DD610(&v17, v16);
  sub_1000DD648(&v25);
  v11 = v22;
  v12 = v23;
  v13 = v20;
  *&retstr->messageCode._object = v21;
  retstr->subjectID = v11;
  retstr->targetID = v12;
  v14 = v18;
  v15 = v19;
  retstr->dialogID = v17;
  *&retstr->dialogType = v14;
  retstr->actionType = v24;
  *&retstr->title.value._object = v15;
  *&retstr->message.value._object = v13;
}

uint64_t MPCPlaybackIntent.PlayActivityInformation.featureName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ApplicationCapabilities.RatingWarning.message.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t MetricsEvent.Dialog.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}