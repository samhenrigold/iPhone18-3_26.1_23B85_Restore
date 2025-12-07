BOOL sub_100095D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a2;
  v54 = a1;
  v4 = sub_1004B7994();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin();
  v38 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1004B79E4();
  v40 = *(v45 - 8);
  __chkstk_darwin();
  v39 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v44 = &v37 - v7;
  v48 = sub_1004BB744();
  v43 = *(v48 - 8);
  __chkstk_darwin();
  v47 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1004BB384();
  v46 = *(v51 - 8);
  __chkstk_darwin();
  v50 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004BAD04();
  v49 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004BBA84();
  v53 = *(v13 - 8);
  __chkstk_darwin();
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004BB434();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a3 - 8);
  v21 = __chkstk_darwin();
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, v54, a3, v21);
  if (swift_dynamicCast())
  {
    (*(v17 + 8))(v19, v16);
LABEL_5:
    (*(v20 + 8))(v23, a3);
    return 1;
  }

  if (swift_dynamicCast())
  {
    (*(v53 + 8))(v15, v13);
    goto LABEL_5;
  }

  if (!swift_dynamicCast())
  {
    v26 = v50;
    v25 = v51;
    if (swift_dynamicCast())
    {
      v27 = v46;
LABEL_12:
      (*(v27 + 8))(v26, v25);
      goto LABEL_13;
    }

    v26 = v47;
    v25 = v48;
    if (swift_dynamicCast())
    {
      v27 = v43;
      goto LABEL_12;
    }

    v28 = v44;
    v29 = v45;
    if (swift_dynamicCast())
    {
      v31 = v39;
      v30 = v40;
      (*(v40 + 32))(v39, v28, v29);
      v32 = v38;
      sub_1004B79A4();
      v34 = v41;
      v33 = v42;
      v35 = (*(v41 + 88))(v32, v42);
      if (v35 == enum case for MusicPin.Item.album(_:) || v35 == enum case for MusicPin.Item.artist(_:))
      {
        goto LABEL_21;
      }

      if (v35 == enum case for MusicPin.Item.musicVideo(_:))
      {
LABEL_19:
        (*(v34 + 8))(v32, v33);
        v36 = v52 == 0;
        (*(v30 + 8))(v31, v29);
        (*(v20 + 8))(v23, a3);
        return v36;
      }

      if (v35 == enum case for MusicPin.Item.playlist(_:))
      {
LABEL_21:
        (*(v34 + 8))(v32, v33);
        (*(v30 + 8))(v31, v29);
        goto LABEL_5;
      }

      if (v35 == enum case for MusicPin.Item.song(_:))
      {
        goto LABEL_19;
      }

      (*(v34 + 8))(v32, v33);
      (*(v30 + 8))(v31, v29);
    }

    (*(v20 + 8))(v23, a3);
    return 0;
  }

  (*(v49 + 8))(v12, v10);
LABEL_13:
  (*(v20 + 8))(v23, a3);
  return v52 == 0;
}

uint64_t sub_1000964E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[33] = a5;
  v6[34] = a6;
  v6[31] = a3;
  v6[32] = a4;
  v6[29] = a1;
  v6[30] = a2;
  v8 = sub_1004B8104();
  v6[35] = v8;
  v6[36] = *(v8 - 8);
  v6[37] = swift_task_alloc();
  v6[38] = type metadata accessor for PlaybackIntentDescriptor(0);
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  sub_100003ABC(&qword_100601C40, &unk_1004C9830);
  v6[41] = swift_task_alloc();
  v9 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v6[42] = v9;
  v6[43] = *(v9 - 8);
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v10 = sub_1004B7994();
  v6[48] = v10;
  v6[49] = *(v10 - 8);
  v6[50] = swift_task_alloc();
  v6[51] = *(a5 - 8);
  v6[52] = swift_task_alloc();
  sub_100003ABC(&qword_100602678, &qword_1004CB290);
  v6[53] = swift_task_alloc();
  v11 = sub_1004BAD54();
  v6[54] = v11;
  v6[55] = *(v11 - 8);
  v6[56] = swift_task_alloc();
  v6[57] = sub_100003ABC(&qword_100602680, &qword_1004CB298);
  v6[58] = swift_task_alloc();
  sub_100003ABC(&qword_1006025F0, &qword_1004CB0F0);
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();

  return _swift_task_switch(sub_100096864, 0, 0);
}

uint64_t sub_100096864()
{
  v1 = *(v0 + 480);
  v3 = *(v0 + 456);
  v2 = *(v0 + 464);
  v4 = *(v0 + 432);
  v5 = *(v0 + 440);
  v6 = *(v0 + 232);
  (*(v5 + 104))(v1, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v7 = *(v3 + 48);
  sub_10000F778(v6, v2, &qword_1006025F0, &qword_1004CB0F0);
  sub_10000F778(v1, v2 + v7, &qword_1006025F0, &qword_1004CB0F0);
  v8 = *(v5 + 48);
  if (v8(v2, 1, v4) == 1)
  {
    v9 = *(v0 + 432);
    sub_100007214(*(v0 + 480), &qword_1006025F0, &qword_1004CB0F0);
    if (v8(v2 + v7, 1, v9) == 1)
    {
      sub_100007214(*(v0 + 464), &qword_1006025F0, &qword_1004CB0F0);
      goto LABEL_14;
    }
  }

  else
  {
    v10 = *(v0 + 432);
    sub_10000F778(*(v0 + 464), *(v0 + 472), &qword_1006025F0, &qword_1004CB0F0);
    v11 = v8(v2 + v7, 1, v10);
    v12 = *(v0 + 472);
    v13 = *(v0 + 480);
    if (v11 != 1)
    {
      v32 = *(v0 + 464);
      v34 = *(v0 + 440);
      v33 = *(v0 + 448);
      v35 = *(v0 + 432);
      (*(v34 + 32))(v33, v2 + v7, v35);
      sub_10009F0CC(&qword_100602690, &type metadata accessor for MusicPlayer.PlayabilityStatus, &protocol conformance descriptor for MusicPlayer.PlayabilityStatus);
      v36 = sub_1004BBD84();
      v37 = *(v34 + 8);
      v37(v33, v35);
      sub_100007214(v13, &qword_1006025F0, &qword_1004CB0F0);
      v37(v12, v35);
      sub_100007214(v32, &qword_1006025F0, &qword_1004CB0F0);
      if (v36)
      {
        goto LABEL_14;
      }

      goto LABEL_7;
    }

    v14 = *(v0 + 432);
    v15 = *(v0 + 440);
    sub_100007214(*(v0 + 480), &qword_1006025F0, &qword_1004CB0F0);
    (*(v15 + 8))(v12, v14);
  }

  sub_100007214(*(v0 + 464), &qword_100602680, &qword_1004CB298);
LABEL_7:
  v16 = *(*(v0 + 408) + 16);
  v16(*(v0 + 416), *(v0 + 240), *(v0 + 264));
  v17 = sub_1004B79E4();
  v18 = swift_dynamicCast();
  v19 = *(*(v17 - 8) + 56);
  v20 = *(v0 + 424);
  if (!v18)
  {
    v19(*(v0 + 424), 1, 1, v17);
    sub_100007214(v20, &qword_100602678, &qword_1004CB290);
LABEL_12:
    v29 = *(v0 + 264);
    v28 = *(v0 + 272);
    v30 = *(v0 + 240);
    *(v0 + 40) = v29;
    *(v0 + 48) = *(v28 + 8);
    v31 = sub_1000133B0((v0 + 16));
    v16(v31, v30, v29);
    *(v0 + 56) = 0;
    _s9MusicCore27SubscriptionUpsellPresenterV7present3foryAC9PlacementO_tFZ_0(v0 + 16);
    sub_100052188(v0 + 16);
LABEL_16:

    v43 = *(v0 + 8);

    return v43();
  }

  v21 = *(v17 - 8);
  v23 = *(v0 + 392);
  v22 = *(v0 + 400);
  v24 = *(v0 + 384);
  v19(*(v0 + 424), 0, 1, v17);
  sub_1004B79A4();
  v82 = v16;
  v25 = (*(v23 + 88))(v22, v24);
  v26 = enum case for MusicPin.Item.artist(_:);
  (*(v23 + 8))(v22, v24);
  (*(v21 + 8))(v20, v17);
  v27 = v25 == v26;
  v16 = v82;
  if (!v27)
  {
    goto LABEL_12;
  }

LABEL_14:
  v38 = *(v0 + 336);
  v39 = *(v0 + 344);
  v40 = *(v0 + 328);
  v41 = *(v0 + 248);
  v42 = type metadata accessor for Actions.PlaybackContext(0);
  sub_10000F778(v41 + *(v42 + 20), v40, &qword_100601C40, &unk_1004C9830);
  if ((*(v39 + 48))(v40, 1, v38) == 1)
  {
    sub_100007214(*(v0 + 328), &qword_100601C40, &unk_1004C9830);
    goto LABEL_16;
  }

  v45 = *(v0 + 408);
  v47 = *(v0 + 368);
  v46 = *(v0 + 376);
  v81 = *(v0 + 360);
  v48 = *(v0 + 304);
  v49 = *(v0 + 312);
  v51 = *(v0 + 264);
  v50 = *(v0 + 272);
  v79 = *(v0 + 240);
  v80 = *(v0 + 248);
  sub_10009EF7C(*(v0 + 328), v46, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  sub_10009EE34(v46, v47, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  *(v0 + 88) = v51;
  *(v0 + 96) = *(v50 + 8);
  v52 = sub_1000133B0((v0 + 64));
  (*(v45 + 16))(v52, v79, v51);
  sub_10000F778(v80 + *(v42 + 28), v0 + 104, &qword_100601C48, &unk_1004D50E0);
  v53 = v49 + v48[7];
  *(v53 + 32) = 0;
  *v53 = 0u;
  *(v53 + 16) = 0u;
  v54 = v49 + v48[8];
  *(v54 + 32) = 0;
  *v54 = 0u;
  *(v54 + 16) = 0u;
  *(v49 + v48[9]) = 0;
  *(v49 + v48[10]) = 0;
  *(v49 + v48[11]) = 0;
  sub_10009EE34(v47, v49, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  sub_10009EE34(v49, v81, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v56 = *(v0 + 360);
  if (EnumCaseMultiPayload == 1)
  {
    v58 = *(v0 + 288);
    v57 = *(v0 + 296);
    v59 = *(v0 + 280);
    v60 = *(v0 + 256);
    (*(v58 + 32))(v57, v56, v59);
    v61 = sub_1004B80D4();
    [v61 setShuffleMode:v60];

    (*(v58 + 8))(v57, v59);
  }

  else
  {
    v62 = *v56;
    [*v56 setShuffleMode:*(v0 + 256)];
  }

  sub_10009EE34(*(v0 + 312), *(v0 + 352), type metadata accessor for PlaybackIntentDescriptor.IntentType);
  v63 = swift_getEnumCaseMultiPayload();
  v64 = *(v0 + 352);
  if (v63 == 1)
  {
    v66 = *(v0 + 288);
    v65 = *(v0 + 296);
    v67 = *(v0 + 280);
    (*(v66 + 32))(v65, v64, v67);
    v68 = sub_1004B80D4();
    [v68 setRepeatMode:0];

    (*(v66 + 8))(v65, v67);
  }

  else
  {
    v69 = *v64;
    [*v64 setRepeatMode:0];
  }

  v71 = *(v0 + 304);
  v70 = *(v0 + 312);
  sub_10009EE9C(v0 + 64, v53);
  *(v70 + *(v71 + 20)) = 2;
  *(v70 + *(v71 + 24)) = 0;
  sub_10000F778(v0 + 104, v0 + 184, &qword_100601C48, &unk_1004D50E0);
  if (*(v0 + 208))
  {
    sub_100013414((v0 + 184), v0 + 144);
  }

  else
  {
    *(v0 + 224) = 0;
    sub_100003ABC(&qword_100602688, &unk_1004D3380);
    v72 = sub_1004BBF34();
    *(v0 + 168) = &type metadata for Player.CommandIssuerIdentity;
    *(v0 + 176) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v0 + 144) = v72;
    *(v0 + 152) = v73;
    if (*(v0 + 208))
    {
      sub_100007214(v0 + 184, &qword_100601C48, &unk_1004D50E0);
    }
  }

  v74 = *(v0 + 368);
  v76 = *(v0 + 312);
  v75 = *(v0 + 320);
  sub_10009EF0C(v0 + 144, v54);
  sub_100007214(v0 + 104, &qword_100601C48, &unk_1004D50E0);
  sub_10009EFE4(v74, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  sub_100007214(v0 + 64, &qword_100606290, &qword_1004D3280);
  sub_10009EF7C(v76, v75, type metadata accessor for PlaybackIntentDescriptor);
  v77 = swift_task_alloc();
  *(v0 + 488) = v77;
  *v77 = v0;
  v77[1] = sub_100097234;
  v78 = *(v0 + 320);

  return PlaybackController.add(_:route:)(v78, 0);
}

uint64_t sub_100097234()
{

  if (v0)
  {

    v1 = sub_10009F21C;
  }

  else
  {
    v1 = sub_10009734C;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10009734C()
{
  v1 = v0[47];
  sub_10009EFE4(v0[40], type metadata accessor for PlaybackIntentDescriptor);
  sub_10009EFE4(v1, type metadata accessor for PlaybackIntentDescriptor.IntentType);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000974AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  sub_100003ABC(&qword_1006014F8, &unk_1004C8AA0);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = type metadata accessor for MetricsEvent.Click(0);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  sub_100003ABC(&qword_100601C50, &unk_1004C9840);
  v5[28] = swift_task_alloc();
  v6 = type metadata accessor for Actions.MetricsReportingContext(0);
  v5[29] = v6;
  v5[30] = *(v6 - 8);
  v5[31] = swift_task_alloc();

  return _swift_task_switch(sub_1000976C4, 0, 0);
}

uint64_t sub_1000976C4()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  sub_10000F778(*(v0 + 72), v3, &qword_100601C50, &unk_1004C9840);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100007214(*(v0 + 224), &qword_100601C50, &unk_1004C9840);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 216);
    v7 = *(v0 + 96);
    sub_10009EF7C(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 256) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 264) = v8;
    v9 = sub_1004B6B04();
    *(v0 + 272) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 280) = v11;
    *(v0 + 288) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_100003ABC(&qword_100601E58, &qword_1004CA360);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004C50A0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 296) = sub_100029080(inited);
    *(v0 + 304) = v14;
    *(v0 + 312) = v15;
    *(v0 + 328) = v16;
    swift_setDeallocating();
    sub_10005DC68(inited + 32);
    sub_1004BC474();
    *(v0 + 320) = sub_1004BC464();
    v18 = sub_1004BC3E4();

    return _swift_task_switch(sub_1000979B4, v18, v17);
  }
}

uint64_t sub_1000979B4()
{
  v83 = *(v0 + 328);
  v76 = *(v0 + 296);
  v79 = *(v0 + 264);
  v81 = *(v0 + 312);
  v77 = *(v0 + 256);
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v75 = *(v0 + 160);
  v8 = *(v0 + 88);

  if (v8)
  {
    v9 = 53;
  }

  else
  {
    v9 = 31;
  }

  v74 = v9;
  sub_10000F778(v3, v4, &qword_100600DE0, &unk_1004C66D0);
  v10 = *(v1 + v2[7]);
  v11 = *v1;
  v12 = v1[1];
  sub_10000F778(v1 + v2[5], v7, &qword_1006014F8, &unk_1004C8AA0);
  v84 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v13 = (v6 + v5[20]);
  *v13 = 0;
  v13[1] = 0;
  *v6 = v77;
  *(v6 + 8) = v79;
  *(v6 + 16) = 5;
  *(v6 + 17) = v74;
  sub_100025B04(v4, v6 + v5[7], &qword_100600DE0, &unk_1004C66D0);
  *(v6 + v5[8]) = v10;
  v14 = (v6 + v5[9]);
  v78 = v11;
  v80 = v12;
  *v14 = v11;
  v14[1] = v12;
  v15 = v6 + v5[10];
  *v15 = v76;
  *(v15 + 16) = v81;
  *(v15 + 24) = v83;
  sub_10000F778(v7, v75, &qword_1006014F8, &unk_1004C8AA0);
  v16 = type metadata accessor for MetricsEvent.Page(0);
  v82 = *(*(v16 - 1) + 48);
  v17 = v82(v75, 1, v16);
  v18 = *(v0 + 328);
  v19 = *(v0 + 304);
  v20 = *(v0 + 312);
  v21 = *(v0 + 296);
  v22 = *(v0 + 160);
  if (v17 == 1)
  {

    sub_100024AE0(v78, v80);

    sub_100025A94(v21, v19, v20, v18, SBYTE1(v18));
    sub_100007214(v22, &qword_1006014F8, &unk_1004C8AA0);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v23 = *v22;
    v24 = v22[1];

    sub_100024AE0(v78, v80);

    sub_100025A94(v21, v19, v20, v18, SBYTE1(v18));

    sub_10009EFE4(v22, type metadata accessor for MetricsEvent.Page);
  }

  v25 = *(v0 + 168);
  v26 = *(v0 + 152);
  v27 = (*(v0 + 184) + *(*(v0 + 176) + 48));
  *v27 = v23;
  v27[1] = v24;
  sub_10000F778(v25, v26, &qword_1006014F8, &unk_1004C8AA0);
  v28 = v82(v26, 1, v16);
  v29 = *(v0 + 152);
  if (v28 == 1)
  {
    sub_100007214(*(v0 + 152), &qword_1006014F8, &unk_1004C8AA0);
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v30 = *(v29 + 16);
    v31 = *(v29 + 24);

    sub_10009EFE4(v29, type metadata accessor for MetricsEvent.Page);
  }

  v32 = *(v0 + 168);
  v33 = *(v0 + 144);
  v34 = (*(v0 + 184) + *(*(v0 + 176) + 52));
  *v34 = v30;
  v34[1] = v31;
  sub_10000F778(v32, v33, &qword_1006014F8, &unk_1004C8AA0);
  if (v82(v33, 1, v16) == 1)
  {
    v35 = *(v0 + 280);
    v36 = *(v0 + 272);
    v37 = *(v0 + 200);
    sub_100007214(*(v0 + 144), &qword_1006014F8, &unk_1004C8AA0);
    v35(v37, 1, 1, v36);
  }

  else
  {
    v38 = *(v0 + 144);
    sub_10000F778(v38 + v16[6], *(v0 + 200), &qword_100600DE0, &unk_1004C66D0);
    sub_10009EFE4(v38, type metadata accessor for MetricsEvent.Page);
  }

  v39 = *(v0 + 168);
  v40 = *(v0 + 136);
  sub_100025B04(*(v0 + 200), *(v0 + 184) + *(*(v0 + 176) + 56), &qword_100600DE0, &unk_1004C66D0);
  sub_10000F778(v39, v40, &qword_1006014F8, &unk_1004C8AA0);
  v41 = v82(v40, 1, v16);
  v42 = *(v0 + 136);
  if (v41 == 1)
  {
    sub_100007214(*(v0 + 136), &qword_1006014F8, &unk_1004C8AA0);
    v43 = 0;
  }

  else
  {
    v43 = *(v42 + v16[7]);

    sub_10009EFE4(v42, type metadata accessor for MetricsEvent.Page);
  }

  v44 = *(v0 + 168);
  v45 = *(v0 + 128);
  *(*(v0 + 184) + *(*(v0 + 176) + 60)) = v43;
  sub_10000F778(v44, v45, &qword_1006014F8, &unk_1004C8AA0);
  v46 = v82(v45, 1, v16);
  v47 = *(v0 + 128);
  if (v46 == 1)
  {
    sub_100007214(v47, &qword_1006014F8, &unk_1004C8AA0);
    v48 = 1;
  }

  else
  {
    v48 = *(v47 + v16[9]);
    sub_10009EFE4(v47, type metadata accessor for MetricsEvent.Page);
  }

  v49 = *(v0 + 168);
  v50 = *(v0 + 120);
  *(*(v0 + 184) + *(*(v0 + 176) + 64)) = v48;
  sub_10000F778(v49, v50, &qword_1006014F8, &unk_1004C8AA0);
  v51 = v82(v50, 1, v16);
  v52 = *(v0 + 120);
  if (v51 == 1)
  {
    sub_100007214(*(v0 + 120), &qword_1006014F8, &unk_1004C8AA0);
    v53 = 0;
    v54 = 0;
  }

  else
  {
    v55 = (v52 + v16[8]);
    v53 = *v55;
    v54 = v55[1];

    sub_10009EFE4(v52, type metadata accessor for MetricsEvent.Page);
  }

  v56 = *(v0 + 168);
  v57 = *(v0 + 112);
  v58 = (*(v0 + 184) + *(*(v0 + 176) + 72));
  *v58 = v53;
  v58[1] = v54;
  sub_100025B04(v56, v57, &qword_1006014F8, &unk_1004C8AA0);
  v59 = v82(v57, 1, v16);
  v60 = *(v0 + 112);
  if (v59 == 1)
  {
    sub_100007214(v60, &qword_1006014F8, &unk_1004C8AA0);
    v61 = 2;
  }

  else
  {
    v61 = *(v60 + v16[11]);
    sub_10009EFE4(v60, type metadata accessor for MetricsEvent.Page);
  }

  v62 = *(v0 + 184);
  v63 = *(v0 + 192);
  v64 = *(v0 + 176);
  *(v62 + *(v64 + 68)) = v61;
  *(v62 + *(v64 + 44)) = v84;
  sub_10009EF7C(v62, v63, type metadata accessor for MetricsEvent.Click);
  if (qword_1005FFE00 != -1)
  {
    swift_once();
  }

  v66 = *(v0 + 304);
  v65 = *(v0 + 312);
  v67 = *(v0 + 296);
  v68 = *(v0 + 248);
  v69 = *(v0 + 232);
  v70 = *(v0 + 216);
  v71 = *(v0 + 192);
  v72 = *(v0 + 328);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v71, *(v68 + *(v69 + 24)), *(v68 + *(v69 + 24) + 8), *(v68 + *(v69 + 36)), *(v68 + *(v69 + 36) + 8), *(v68 + *(v69 + 36) + 16));
  sub_100052244(v67, v66, v65, v72, SBYTE1(v72));
  sub_10009EFE4(v71, type metadata accessor for MetricsEvent.Click);
  sub_100007214(v70, &qword_100600DE0, &unk_1004C66D0);

  return _swift_task_switch(sub_10009F218, 0, 0);
}

uint64_t sub_10009818C(uint64_t *a1, void (*a2)(char *, uint64_t, uint64_t), void *a3, uint64_t a4, uint64_t a5)
{
  v32 = a5;
  v37 = a2;
  v38 = a4;
  v36 = a3;
  v6 = sub_1004BAD54();
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin();
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004B8104();
  v31 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100601C40, &unk_1004C9830);
  __chkstk_darwin();
  v12 = &v31 - v11;
  v13 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v18 = &v31 - v17;
  v19 = type metadata accessor for Actions.PlaybackContext(0);
  sub_10000F778(a1 + *(v19 + 20), v12, &qword_100601C40, &unk_1004C9830);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    sub_10009EF7C(v12, v18, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    v21 = *a1;
    v22 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
    swift_beginAccess();
    v23 = *(v21 + v22);
    if (v23)
    {
      sub_10009EE34(v18, v16, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v24 = v31;
        (*(v31 + 32))(v10, v16, v8);

        v25 = sub_1004B80D4();
        (*(v24 + 8))(v10, v8);
      }

      else
      {
        v25 = *v16;
      }

      v26 = v36;
      sub_10004AF8C(v36);
      v27 = v25;
      v28 = sub_1001F2420(v27, v26, v23);

      if (v28)
      {
        Player.state<A>(for:)(v37, v38, v32);
        v29 = v33;
        MusicItemState.playabilityStatus.getter();

        v20 = sub_1000911B8();

        sub_10009F1AC(v26);
        (*(v34 + 8))(v29, v35);
LABEL_12:
        sub_10009EFE4(v18, type metadata accessor for PlaybackIntentDescriptor.IntentType);
        return v20;
      }

      v40 = 0;
      v41 = 0xE000000000000000;
      sub_1004BD404(34);
      v43._countAndFlagsBits = 0xD000000000000020;
      v43._object = 0x80000001004FD920;
      sub_1004BC024(v43);
      v39 = v26;
      sub_1004BD5C4();

      sub_10009F1AC(v26);
    }

    else
    {
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_1004BD404(39);
      v42._countAndFlagsBits = 0xD000000000000025;
      v42._object = 0x80000001004FD8F0;
      sub_1004BC024(v42);
      sub_1004BD964();
    }

    v20 = v40;
    goto LABEL_12;
  }

  v20 = 0xD000000000000012;
  sub_100007214(v12, &qword_100601C40, &unk_1004C9830);
  return v20;
}

uint64_t sub_10009868C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  type metadata accessor for Notice(0);
  v3[11] = swift_task_alloc();
  v4 = sub_1004B8104();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  sub_100003ABC(&qword_100601C40, &unk_1004C9830);
  v3[15] = swift_task_alloc();
  v5 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_10009881C, 0, 0);
}

uint64_t sub_10009881C()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[8];
  v5 = type metadata accessor for Actions.PlaybackContext(0);
  sub_10000F778(v4 + *(v5 + 20), v3, &qword_100601C40, &unk_1004C9830);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100007214(v0[15], &qword_100601C40, &unk_1004C9830);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v9 = v0[18];
    v8 = v0[19];
    sub_10009EF7C(v0[15], v8, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    sub_10009EE34(v8, v9, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v11 = v0[18];
    if (EnumCaseMultiPayload == 1)
    {
      v13 = v0[13];
      v12 = v0[14];
      v14 = v0[12];
      (*(v13 + 32))(v12, v11, v14);
      v15 = sub_1004B80D4();
      (*(v13 + 8))(v12, v14);
    }

    else
    {
      v15 = *v11;
    }

    v0[20] = v15;
    v16 = v0[8];
    v17 = *(v5 + 28);
    v18 = swift_task_alloc();
    v0[21] = v18;
    *v18 = v0;
    v18[1] = sub_100098A6C;
    v19 = v0[9];

    return PlaybackController.insert(_:location:issuer:)(v15, v19, v16 + v17);
  }
}

uint64_t sub_100098A6C()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_100098E28;
  }

  else
  {

    v3 = sub_100098B88;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100098B88()
{
  Player.InsertCommand.Location.notice.getter(*(v0 + 88));
  sub_1004BC474();
  *(v0 + 184) = sub_1004BC464();
  v2 = sub_1004BC3E4();

  return _swift_task_switch(sub_100098C28, v2, v1);
}

uint64_t sub_100098C28()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100238978((v0 + 2));

    v3 = v0[5];
    v4 = v0[11];
    if (v3)
    {
      v5 = v0[6];
      sub_100009178(v0 + 2, v0[5]);
      (*(v5 + 8))(v4, 0, v3, v5);
      sub_10009EFE4(v4, type metadata accessor for Notice);
      sub_100004C6C(v0 + 2);
    }

    else
    {
      sub_10009EFE4(v0[11], type metadata accessor for Notice);
      sub_100007214((v0 + 2), &qword_100601CE0, &qword_1004C99F0);
    }
  }

  else
  {
    sub_10009EFE4(v0[11], type metadata accessor for Notice);
  }

  return _swift_task_switch(sub_100098D78, 0, 0);
}

uint64_t sub_100098D78()
{
  sub_10009EFE4(*(v0 + 152), type metadata accessor for PlaybackIntentDescriptor.IntentType);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100098E28()
{
  v15 = v0;

  if (qword_1005FFD38 != -1)
  {
    swift_once();
  }

  v1 = sub_1004B80B4();
  sub_100007084(v1, static Logger.actions);
  swift_errorRetain();
  v2 = sub_1004B8094();
  v3 = sub_1004BC984();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 176);
  v6 = *(v0 + 152);
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    *(v0 + 56) = v5;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v9 = sub_1004BBF04();
    v11 = sub_100012018(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to perform add to queue with error=%{public}s", v7, 0xCu);
    sub_100004C6C(v8);
  }

  else
  {
  }

  sub_10009EFE4(v6, type metadata accessor for PlaybackIntentDescriptor.IntentType);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t Player.InsertCommand.Location.notice.getter@<X0>(void *x8_0@<X8>)
{
  type metadata accessor for Notice.Variant(0);
  __chkstk_darwin();
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  static Notice.variant(_:)(v4, x8_0);
  return sub_10009EFE4(v4, type metadata accessor for Notice.Variant);
}

uint64_t sub_10009911C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  sub_100003ABC(&qword_1006014F8, &unk_1004C8AA0);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = type metadata accessor for MetricsEvent.Click(0);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  sub_100003ABC(&qword_100601C50, &unk_1004C9840);
  v5[28] = swift_task_alloc();
  v6 = type metadata accessor for Actions.MetricsReportingContext(0);
  v5[29] = v6;
  v5[30] = *(v6 - 8);
  v5[31] = swift_task_alloc();

  return _swift_task_switch(sub_100099334, 0, 0);
}

uint64_t sub_100099334()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  sub_10000F778(*(v0 + 72), v3, &qword_100601C50, &unk_1004C9840);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100007214(*(v0 + 224), &qword_100601C50, &unk_1004C9840);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 96);
    v7 = *(v0 + 88);
    sub_10009EF7C(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 256) = MusicItem.metricsTargetIdentifier.getter(v6);
    *(v0 + 264) = v8;
    if (v7 >= 4)
    {
      return sub_1004BD624();
    }

    else
    {
      *(v0 + 330) = 0x20062122u >> (8 * v7);
      v9 = *(v0 + 216);
      v10 = *(v0 + 96);
      v11 = sub_1004B6B04();
      *(v0 + 272) = v11;
      v12 = *(v11 - 8);
      v13 = *(v12 + 56);
      *(v0 + 280) = v13;
      *(v0 + 288) = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v13(v9, 1, 1, v11);
      sub_100003ABC(&qword_100601E58, &qword_1004CA360);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004C50A0;
      *(inited + 32) = MusicItem.metricsContentType.getter(v10);
      *(inited + 40) = v15;
      *(inited + 48) = 0;
      *(v0 + 296) = sub_100029080(inited);
      *(v0 + 304) = v16;
      *(v0 + 312) = v17;
      *(v0 + 328) = v18;
      swift_setDeallocating();
      sub_10005DC68(inited + 32);
      sub_1004BC474();
      *(v0 + 320) = sub_1004BC464();
      v20 = sub_1004BC3E4();

      return _swift_task_switch(sub_1000996B4, v20, v19);
    }
  }
}

uint64_t sub_1000996B4()
{
  v83 = *(v0 + 328);
  v76 = *(v0 + 296);
  v81 = *(v0 + 330);
  v79 = *(v0 + 264);
  v77 = *(v0 + 312);
  v78 = *(v0 + 256);
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v75 = *(v0 + 160);

  sub_10000F778(v3, v4, &qword_100600DE0, &unk_1004C66D0);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_10000F778(v1 + v2[5], v7, &qword_1006014F8, &unk_1004C8AA0);
  v11 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v12 = (v6 + v5[20]);
  *v12 = 0;
  v12[1] = 0;
  *v6 = v78;
  *(v6 + 8) = v79;
  *(v6 + 16) = 5;
  *(v6 + 17) = v81;
  sub_100025B04(v4, v6 + v5[7], &qword_100600DE0, &unk_1004C66D0);
  v80 = v10;
  *(v6 + v5[8]) = v8;
  v13 = (v6 + v5[9]);
  v82 = v9;
  *v13 = v9;
  v13[1] = v10;
  v14 = v6 + v5[10];
  *v14 = v76;
  *(v14 + 16) = v77;
  *(v14 + 24) = v83;
  sub_10000F778(v7, v75, &qword_1006014F8, &unk_1004C8AA0);
  v15 = type metadata accessor for MetricsEvent.Page(0);
  v16 = *(*(v15 - 1) + 48);
  v17 = v16(v75, 1, v15);
  v18 = *(v0 + 328);
  v19 = *(v0 + 304);
  v20 = *(v0 + 312);
  v21 = *(v0 + 296);
  v22 = *(v0 + 160);
  v84 = v11;
  if (v17 == 1)
  {

    sub_100024AE0(v82, v80);

    sub_100025A94(v21, v19, v20, v18, SBYTE1(v18));
    sub_100007214(v22, &qword_1006014F8, &unk_1004C8AA0);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v23 = *v22;
    v24 = v22[1];

    sub_100024AE0(v82, v80);

    sub_100025A94(v21, v19, v20, v18, SBYTE1(v18));

    sub_10009EFE4(v22, type metadata accessor for MetricsEvent.Page);
  }

  v25 = *(v0 + 168);
  v26 = *(v0 + 152);
  v27 = (*(v0 + 184) + *(*(v0 + 176) + 48));
  *v27 = v23;
  v27[1] = v24;
  sub_10000F778(v25, v26, &qword_1006014F8, &unk_1004C8AA0);
  v28 = v16(v26, 1, v15);
  v29 = *(v0 + 152);
  if (v28 == 1)
  {
    sub_100007214(*(v0 + 152), &qword_1006014F8, &unk_1004C8AA0);
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v30 = *(v29 + 16);
    v31 = *(v29 + 24);

    sub_10009EFE4(v29, type metadata accessor for MetricsEvent.Page);
  }

  v32 = *(v0 + 168);
  v33 = *(v0 + 144);
  v34 = (*(v0 + 184) + *(*(v0 + 176) + 52));
  *v34 = v30;
  v34[1] = v31;
  sub_10000F778(v32, v33, &qword_1006014F8, &unk_1004C8AA0);
  if (v16(v33, 1, v15) == 1)
  {
    v35 = v16;
    v36 = *(v0 + 280);
    v37 = *(v0 + 272);
    v38 = *(v0 + 200);
    sub_100007214(*(v0 + 144), &qword_1006014F8, &unk_1004C8AA0);
    v36(v38, 1, 1, v37);
    v16 = v35;
  }

  else
  {
    v39 = *(v0 + 144);
    sub_10000F778(v39 + v15[6], *(v0 + 200), &qword_100600DE0, &unk_1004C66D0);
    sub_10009EFE4(v39, type metadata accessor for MetricsEvent.Page);
  }

  v40 = *(v0 + 168);
  v41 = *(v0 + 136);
  sub_100025B04(*(v0 + 200), *(v0 + 184) + *(*(v0 + 176) + 56), &qword_100600DE0, &unk_1004C66D0);
  sub_10000F778(v40, v41, &qword_1006014F8, &unk_1004C8AA0);
  v42 = v16(v41, 1, v15);
  v43 = *(v0 + 136);
  if (v42 == 1)
  {
    sub_100007214(*(v0 + 136), &qword_1006014F8, &unk_1004C8AA0);
    v44 = 0;
  }

  else
  {
    v44 = *(v43 + v15[7]);

    sub_10009EFE4(v43, type metadata accessor for MetricsEvent.Page);
  }

  v45 = *(v0 + 168);
  v46 = *(v0 + 128);
  *(*(v0 + 184) + *(*(v0 + 176) + 60)) = v44;
  sub_10000F778(v45, v46, &qword_1006014F8, &unk_1004C8AA0);
  v47 = v16(v46, 1, v15);
  v48 = *(v0 + 128);
  if (v47 == 1)
  {
    sub_100007214(v48, &qword_1006014F8, &unk_1004C8AA0);
    v49 = 1;
  }

  else
  {
    v49 = *(v48 + v15[9]);
    sub_10009EFE4(v48, type metadata accessor for MetricsEvent.Page);
  }

  v50 = *(v0 + 168);
  v51 = *(v0 + 120);
  *(*(v0 + 184) + *(*(v0 + 176) + 64)) = v49;
  sub_10000F778(v50, v51, &qword_1006014F8, &unk_1004C8AA0);
  v52 = v16(v51, 1, v15);
  v53 = *(v0 + 120);
  if (v52 == 1)
  {
    sub_100007214(*(v0 + 120), &qword_1006014F8, &unk_1004C8AA0);
    v54 = 0;
    v55 = 0;
  }

  else
  {
    v56 = (v53 + v15[8]);
    v54 = *v56;
    v55 = v56[1];

    sub_10009EFE4(v53, type metadata accessor for MetricsEvent.Page);
  }

  v57 = *(v0 + 168);
  v58 = *(v0 + 112);
  v59 = (*(v0 + 184) + *(*(v0 + 176) + 72));
  *v59 = v54;
  v59[1] = v55;
  sub_100025B04(v57, v58, &qword_1006014F8, &unk_1004C8AA0);
  v60 = v16(v58, 1, v15);
  v61 = *(v0 + 112);
  if (v60 == 1)
  {
    sub_100007214(v61, &qword_1006014F8, &unk_1004C8AA0);
    v62 = 2;
  }

  else
  {
    v62 = *(v61 + v15[11]);
    sub_10009EFE4(v61, type metadata accessor for MetricsEvent.Page);
  }

  v63 = *(v0 + 184);
  v64 = *(v0 + 192);
  v65 = *(v0 + 176);
  *(v63 + *(v65 + 68)) = v62;
  *(v63 + *(v65 + 44)) = v84;
  sub_10009EF7C(v63, v64, type metadata accessor for MetricsEvent.Click);
  if (qword_1005FFE00 != -1)
  {
    swift_once();
  }

  v67 = *(v0 + 304);
  v66 = *(v0 + 312);
  v68 = *(v0 + 296);
  v69 = *(v0 + 248);
  v70 = *(v0 + 232);
  v71 = *(v0 + 216);
  v72 = *(v0 + 192);
  v73 = *(v0 + 328);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v72, *(v69 + *(v70 + 24)), *(v69 + *(v70 + 24) + 8), *(v69 + *(v70 + 36)), *(v69 + *(v70 + 36) + 8), *(v69 + *(v70 + 36) + 16));
  sub_100052244(v68, v67, v66, v73, SBYTE1(v73));
  sub_10009EFE4(v72, type metadata accessor for MetricsEvent.Click);
  sub_100007214(v71, &qword_100600DE0, &unk_1004C66D0);

  return _swift_task_switch(sub_100099E98, 0, 0);
}

uint64_t sub_100099E98()
{
  sub_10009EFE4(*(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*Actions.Playback.Context.menuItemImage.getter())()
{
  if (*v0)
  {
    v1 = 0x656C6666756873;
  }

  else
  {
    v1 = 2036427888;
  }

  if (*v0)
  {
    v2 = 0xE700000000000000;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  return sub_1000524E8;
}

uint64_t (*sub_10009A0E4())()
{
  if (*v0)
  {
    v1 = 0x656C6666756873;
  }

  else
  {
    v1 = 2036427888;
  }

  if (*v0)
  {
    v2 = 0xE700000000000000;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  return sub_1000524E8;
}

uint64_t Actions.Queue.Context.menuItemSubtitle.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t (*Actions.Queue.Context.menuItemImage.getter())()
{
  if (*v0)
  {
    v1 = 0xD000000000000028;
  }

  else
  {
    v1 = 0xD000000000000029;
  }

  if (*v0)
  {
    v2 = "badge.plus.radiowaves.right";
  }

  else
  {
    v2 = "nd.arrowtriangle.forward";
  }

  v3 = v2 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;

  return sub_1000524E8;
}

uint64_t (*sub_10009A300())()
{
  if (*v0)
  {
    v1 = 0xD000000000000028;
  }

  else
  {
    v1 = 0xD000000000000029;
  }

  if (*v0)
  {
    v2 = "badge.plus.radiowaves.right";
  }

  else
  {
    v2 = "nd.arrowtriangle.forward";
  }

  v3 = v2 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;

  return sub_1000524E8;
}

uint64_t sub_10009A3D8@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  *a2 = v4;
  return result;
}

uint64_t sub_10009A458(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_1004B85B4();
}

uint64_t sub_10009A4D8()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for Actions.PlaybackContext(0);
  v3 = (*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80);
  v16 = v1;
  v4 = *(v1 - 8);
  v5 = (v3 + *(*(v2 - 1) + 64) + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64) + v5 + 7;
  v7 = v0 + v3;

  v8 = v2[5];
  v9 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v9 - 8) + 48))(v7 + v8, 1, v9))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = sub_1004B8104();
      (*(*(v10 - 8) + 8))(v7 + v8, v10);
    }

    else
    {
    }
  }

  v11 = (v7 + v2[6]);
  if (v11[1])
  {

    v12 = v11[3];
    if (v12 >> 60 != 15)
    {
      sub_100004D90(v11[2], v12);
    }
  }

  v13 = (v7 + v2[7]);
  if (v13[3])
  {
    sub_100004C6C(v13);
  }

  (*(v4 + 8))(v0 + v5, v16);
  v14 = *(v0 + (v6 & 0xFFFFFFFFFFFFFFF8));
  if (v14 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10009A714()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for Actions.PlaybackContext(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (v4 + *(v3 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  v6 = *(v0 + ((*(*(v1 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10009818C((v0 + v4), (v0 + v5), v6, v1, v2);
}

uint64_t sub_10009A810()
{
  v1 = type metadata accessor for Actions.PlaybackContext(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64) + v2 + 7;
  v4 = v0 + v2;

  v5 = v1[5];
  v6 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v6 - 8) + 48))(v4 + v5, 1, v6))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = sub_1004B8104();
      (*(*(v7 - 8) + 8))(v4 + v5, v7);
    }

    else
    {
    }
  }

  v8 = v3 & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v1[6]);
  if (v9[1])
  {

    v10 = v9[3];
    if (v10 >> 60 != 15)
    {
      sub_100004D90(v9[2], v10);
    }
  }

  v11 = (v4 + v1[7]);
  if (v11[3])
  {
    sub_100004C6C(v11);
  }

  v12 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + v8);
  if (v13 >= 4)
  {
  }

  v14 = v0 + v12;
  swift_unknownObjectWeakDestroy();
  v15 = *(v0 + v12 + 48);
  if (v15 != 255)
  {
    sub_100048974(*(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32), *(v14 + 40), v15);
  }

  if (*(v14 + 64))
  {
  }

  if (*(v14 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10009AA14()
{
  v2 = *(type metadata accessor for Actions.PlaybackContext(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10001384C;

  return sub_10009868C(v0 + v3, v6, v0 + v5);
}

uint64_t sub_10009AB24()
{
  v1 = *(v0 + 16);
  v2 = *(sub_100003ABC(&qword_100601C50, &unk_1004C9840) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0 + v3;
  v8 = type metadata accessor for Actions.MetricsReportingContext(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v17 = v1;
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v16 = *(v10 + 24);
      v11 = sub_1004B6B04();
      v14 = *(v11 - 8);
      v15 = v11;
      if (!(*(v14 + 48))(v9 + v16, 1))
      {
        (*(v14 + 8))(v9 + v16, v15);
      }
    }

    v1 = v17;
  }

  (*(v4 + 8))(v0 + v5, v1);
  v12 = *(v0 + v6);
  if (v12 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10009AE00()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(sub_100003ABC(&qword_100601C50, &unk_1004C9840) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = *(v0 + ((*(*(v3 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10001384C;

  return sub_10009911C(v0 + v5, v0 + v6, v7, v3, v2);
}

uint64_t sub_10009AF78(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10009B1BC();
  }

  return result;
}

uint64_t sub_10009AFD0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004BAD74();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v10 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1004BADA4();
    __chkstk_darwin();
    v9 = sub_1004BB384();
    *(&v10 - 2) = v9;
    *(&v10 - 1) = &protocol witness table for Song;
    swift_getKeyPath();
    __chkstk_darwin();
    *(&v10 - 2) = v9;
    *(&v10 - 1) = &protocol witness table for Song;
    swift_getKeyPath();
    (*(v3 + 16))(v5, v7, v2);
    sub_1004B85B4();
    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

uint64_t sub_10009B1BC()
{
  v62 = sub_1004BB384();
  v59 = *(v62 - 8);
  __chkstk_darwin();
  v58 = &v56 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1004BAD44();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v56 - v6;
  v8 = sub_1004BAD54();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v63 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v61 = &v56 - v11;
  __chkstk_darwin();
  v13 = &v56 - v12;
  __chkstk_darwin();
  v15 = &v56 - v14;
  v66 = v0;

  sub_1004BAD84();

  v16 = *(v9 + 16);
  v64 = v15;
  v60 = v9 + 16;
  v16(v13, v15, v8);
  v65 = v9;
  v17 = (*(v9 + 88))(v13, v8);
  v18 = enum case for MusicPlayer.PlayabilityStatus.unplayable(_:);
  if (v17 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v65 + 96))(v13, v8);
    (*(v3 + 32))(v7, v13, v2);
    (*(v3 + 104))(v5, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:), v2);
    v57 = v7;
    v19 = sub_1004BAD34();
    v20 = *(v3 + 8);
    v58 = (v3 + 8);
    v59 = v2;
    v20(v5, v2);
    if ((v19 & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), , sub_1004B85A4(), , , , v67[0]))
    {

      v21 = v65;
      v22 = v61;
      (*(v65 + 104))(v61, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v8);
      __chkstk_darwin();
      v23 = v62;
      *(&v56 - 2) = v62;
      *(&v56 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      __chkstk_darwin();
      *(&v56 - 2) = v23;
      *(&v56 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      v16(v63, v22, v8);

      sub_1004B85B4();
      v24 = *(v21 + 8);
      v24(v22, v8);
      v20(v57, v59);
    }

    else
    {
      v33 = v61;
      v16(v61, v64, v8);
      __chkstk_darwin();
      v34 = v65;
      v56 = v20;
      v35 = v62;
      *(&v56 - 2) = v62;
      *(&v56 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      __chkstk_darwin();
      *(&v56 - 2) = v35;
      *(&v56 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      v16(v63, v33, v8);

      sub_1004B85B4();
      v24 = *(v34 + 8);
      v24(v33, v8);
      v56(v57, v59);
    }

    return (v24)(v64, v8);
  }

  v25 = v17;
  if (v17 == enum case for MusicPlayer.PlayabilityStatus.playable(_:))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1004B85A4();

    if (!v67[0] || (v67[0], swift_getKeyPath(), swift_getKeyPath(), , sub_1004B85A4(), , , , (v67[0] & 1) != 0) || (, v26 = Player.supportsDelegation.getter(), , (v26 & 1) != 0))
    {
      v27 = v61;
      v28 = v64;
      v16(v61, v64, v8);
      __chkstk_darwin();
      v29 = v16;
      v30 = v62;
      *(&v56 - 2) = v62;
      *(&v56 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      __chkstk_darwin();
      *(&v56 - 2) = v30;
      *(&v56 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      v29(v63, v27, v8);

      sub_1004B85B4();
      v31 = *(v65 + 8);
      v31(v27, v8);
      return (v31)(v28, v8);
    }

    v41 = v66;
    v42 = *(*v66 + 120);
    swift_beginAccess();
    v44 = v58;
    v43 = v59;
    v45 = v41 + v42;
    v46 = v62;
    (*(v59 + 16))(v58, v45, v62);
    sub_1004BB2B4();
    v48 = v47;
    (*(v43 + 8))(v44, v46);
    if (!v48)
    {
      v53 = v61;
      (*(v3 + 104))(v61, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.contentUnavailable(_:), v2);
      v54 = v65;
      (*(v65 + 104))(v53, v18, v8);
      __chkstk_darwin();
      *(&v56 - 2) = v46;
      *(&v56 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      __chkstk_darwin();
      *(&v56 - 2) = v55;
      *(&v56 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      v16(v63, v53, v8);

      sub_1004B85B4();
      v24 = *(v54 + 8);
      v24(v53, v8);
      return (v24)(v64, v8);
    }

    v49 = v65;
    v50 = v61;
    (*(v65 + 104))(v61, v25, v8);
    __chkstk_darwin();
    *(&v56 - 2) = v46;
    *(&v56 - 1) = &protocol witness table for Song;
    swift_getKeyPath();
    __chkstk_darwin();
    *(&v56 - 2) = v51;
    *(&v56 - 1) = &protocol witness table for Song;
    swift_getKeyPath();
    v16(v63, v50, v8);

    sub_1004B85B4();
    v52 = *(v49 + 8);
    v52(v50, v8);
    return (v52)(v64, v8);
  }

  else
  {
    v36 = v16;
    v37 = v61;
    v38 = v64;
    v36(v61, v64, v8);
    __chkstk_darwin();
    v39 = v62;
    *(&v56 - 2) = v62;
    *(&v56 - 1) = &protocol witness table for Song;
    swift_getKeyPath();
    __chkstk_darwin();
    *(&v56 - 2) = v39;
    *(&v56 - 1) = &protocol witness table for Song;
    swift_getKeyPath();
    v36(v63, v37, v8);

    sub_1004B85B4();
    v40 = *(v65 + 8);
    v40(v37, v8);
    v40(v38, v8);
    return (v40)(v13, v8);
  }
}

uint64_t sub_10009BDC4(uint64_t a1)
{
  sub_1004B6E64();
  __chkstk_darwin();
  v1 = sub_1004BBE14();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v10[-v5];
  sub_1004BBDA4();
  (*(v2 + 16))(v4, v6, v1);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v7 = qword_100617118;
  sub_1004B6DF4();
  v8 = sub_1004BBED4();
  (*(v2 + 8))(v6, v1);
  return v8;
}

uint64_t _s9MusicCore7ActionsO7PreviewO7ContextV13menuItemTitleSSvg_0()
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

uint64_t sub_10009C1FC(uint64_t a1)
{
  sub_1004B6E64();
  __chkstk_darwin();
  v1 = sub_1004BBE14();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v10[-v5];
  sub_1004BBDA4();
  (*(v2 + 16))(v4, v6, v1);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v7 = qword_100617118;
  sub_1004B6DF4();
  v8 = sub_1004BBED4();
  (*(v2 + 8))(v6, v1);
  return v8;
}

uint64_t sub_10009C3FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v11 = v3;
  if (v3 >= 4)
  {
    result = sub_1004BD624();
    __break(1u);
  }

  else
  {
    v5 = 0x19171816u >> (8 * v3);
    v10 = *(a1 + 8);
    sub_10009F1BC(&v11, v9);
    sub_10000F778(&v10, v9, &unk_100606160, &qword_1004CAC60);
    v6 = *(a1 + 48);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 48) = v6;
    *(a2 + 64) = *(a1 + 64);
    v7 = *(a1 + 16);
    *a2 = *a1;
    *(a2 + 16) = v7;
    *(a2 + 72) = v5;
    *(a2 + 80) = sub_100094914;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0x4014000000000000;
    *(a2 + 104) = &unk_1004CB478;
    *(a2 + 112) = 0;
    *(a2 + 120) = &unk_1004CB480;
    *(a2 + 128) = 0;
  }

  return result;
}

uint64_t sub_10009C558()
{

  return swift_deallocObject();
}

uint64_t sub_10009C594()
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

  return sub_10008EAB8(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_10009C6DC()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for Actions.PlaybackContext(0);
  v14 = *(*(v2 - 1) + 64);
  v3 = (*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80);
  v4 = *(v1 - 8);
  v5 = *(v4 + 80);
  v6 = v0 + v3;

  v7 = v2[5];
  v8 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v8 - 8) + 48))(v0 + v3 + v7, 1, v8))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = sub_1004B8104();
      (*(*(v9 - 8) + 8))(v6 + v7, v9);
    }

    else
    {
    }
  }

  v10 = (v6 + v2[6]);
  if (v10[1])
  {

    v11 = v10[3];
    if (v11 >> 60 != 15)
    {
      sub_100004D90(v10[2], v11);
    }
  }

  v12 = (v6 + v2[7]);
  if (v12[3])
  {
    sub_100004C6C(v12);
  }

  (*(v4 + 8))(v0 + ((v3 + v14 + v5) & ~v5), v1);

  return swift_deallocObject();
}

uint64_t sub_10009C908()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for Actions.PlaybackContext(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v0 + ((v3 + *(v2 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80));

  return sub_100090888((v0 + v3), v4, v1);
}

uint64_t sub_10009C9D8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Actions.PlaybackContext(0);
  v6 = (v3 + v4 + *(*(v5 - 1) + 80)) & ~*(*(v5 - 1) + 80);
  v7 = *(*(v5 - 1) + 64);
  v8 = *(sub_100003ABC(&qword_100601C50, &unk_1004C9840) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v11 = v0 + v6;

  v12 = v5[5];
  v13 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v13 - 8) + 48))(v0 + v6 + v12, 1, v13))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = sub_1004B8104();
      (*(*(v14 - 8) + 8))(v11 + v12, v14);
    }

    else
    {
    }
  }

  v15 = v10 + v9;
  v16 = (v11 + v5[6]);
  if (v16[1])
  {

    v17 = v16[3];
    if (v17 >> 60 != 15)
    {
      sub_100004D90(v16[2], v17);
    }
  }

  v18 = v15 + 7;
  v19 = (v11 + v5[7]);
  if (v19[3])
  {
    sub_100004C6C(v19);
  }

  v20 = v18 & 0xFFFFFFFFFFFFFFF8;
  v21 = v0 + v9;
  v22 = type metadata accessor for Actions.MetricsReportingContext(0);
  if (!(*(*(v22 - 8) + 48))(v0 + v9, 1, v22))
  {
    if (*(v21 + 8) >= 0xDuLL)
    {
    }

    v23 = v21 + *(v22 + 20);
    v24 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v24 - 8) + 48))(v23, 1, v24))
    {

      v25 = *(v24 + 24);
      v26 = sub_1004B6B04();
      v27 = *(v26 - 8);
      v31 = v26;
      if (!(*(v27 + 48))(v23 + v25, 1))
      {
        (*(v27 + 8))(v23 + v25, v31);
      }
    }
  }

  v28 = v0 + v20;
  swift_unknownObjectWeakDestroy();
  v29 = *(v0 + v20 + 48);
  if (v29 != 255)
  {
    sub_100048974(*(v28 + 8), *(v28 + 16), *(v28 + 24), *(v28 + 32), *(v28 + 40), v29);
  }

  if (*(v28 + 64))
  {
  }

  if (*(v28 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10009CE34()
{
  v2 = *(v0 + 16);
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v4 = *(*(v2 - 8) + 64);
  v5 = *(type metadata accessor for Actions.PlaybackContext(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_100003ABC(&qword_100601C50, &unk_1004C9840) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1000136EC;

  return sub_1000914D8(v0 + v3, v0 + v6, v0 + v9, v0 + v10, v2);
}

uint64_t sub_10009D00C()
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

  return sub_100093614(v0 + v5, v0 + v6, v2, v3);
}

char *sub_10009D154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v74 = a3;
  v82 = a2;
  v83 = a1;
  v5 = sub_100003ABC(&qword_100606770, &qword_1004CB370);
  v76 = *(v5 - 8);
  v77 = v5;
  __chkstk_darwin();
  v75 = &v60 - v6;
  v7 = sub_100003ABC(&qword_1006026B8, &unk_1004D4040);
  v79 = *(v7 - 8);
  v80 = v7;
  __chkstk_darwin();
  v78 = &v60 - v8;
  sub_100003ABC(&qword_1006026C0, &qword_1004CB378);
  __chkstk_darwin();
  v81 = &v60 - v9;
  v69 = sub_100003ABC(&unk_100606760, &qword_1004CB380);
  v70 = *(v69 - 8);
  __chkstk_darwin();
  v67 = &v60 - v10;
  v71 = sub_100003ABC(&unk_100607020, &qword_1004CB388);
  v73 = *(v71 - 8);
  __chkstk_darwin();
  v68 = &v60 - v11;
  v72 = sub_100003ABC(&qword_1006026C8, &unk_1004D3B40);
  v65 = *(v72 - 8);
  __chkstk_darwin();
  v64 = &v60 - v12;
  v63 = sub_1004BAD74();
  v62 = *(v63 - 8);
  __chkstk_darwin();
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v60 - v15;
  v61 = sub_100003ABC(&qword_1006026D0, &unk_1004D3B30);
  v17 = *(v61 - 1);
  __chkstk_darwin();
  v19 = &v60 - v18;
  v20 = sub_1004BAD54();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin();
  v26 = &v60 - v25;
  *(v4 + 4) = _swiftEmptyArrayStorage;
  v66 = v4 + 32;
  v27 = *(*v4 + 128);
  (*(v21 + 104))(&v60 - v25, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v20, v24);
  (*(v21 + 16))(v23, v26, v20);
  sub_1004B8564();
  (*(v21 + 8))(v26, v20);
  (*(v17 + 32))(&v4[v27], v19, v61);
  v28 = *(*v4 + 136);
  v29 = enum case for MusicPlayer.PreviewCapabilityStatus.UnpreviewableReason.notSupported(_:);
  v30 = sub_1004BAD64();
  (*(*(v30 - 8) + 104))(v16, v29, v30);
  v31 = v62;
  v32 = v63;
  (*(v62 + 104))(v16, enum case for MusicPlayer.PreviewCapabilityStatus.unpreviewable(_:), v63);
  v61 = *(v31 + 16);
  v61(v14, v16, v32);
  v33 = v64;
  sub_1004B8564();
  v62 = *(v31 + 8);
  (v62)(v16, v32);
  (*(v65 + 32))(&v4[v28], v33, v72);
  v34 = *(*v4 + 120);
  v35 = sub_1004BB384();
  v72 = *(v35 - 8);
  (*(v72 + 16))(&v4[v34], v83, v35);
  v36 = v74;
  *(v4 + 2) = v82;
  *(v4 + 3) = v36;

  sub_10009B1BC();
  sub_1004BADA4();
  v86 = v35;
  v87 = &protocol witness table for Song;
  swift_getKeyPath();
  v74 = v35;
  v84 = v35;
  v85 = &protocol witness table for Song;
  swift_getKeyPath();
  v61(v14, v16, v32);

  sub_1004B85B4();
  (v62)(v16, v32);
  v37 = v67;
  sub_1004BAD94();
  sub_10009F080(0, v38, v39);
  v40 = sub_1004BCB44();
  v88 = v40;
  v41 = sub_1004BCB24();
  v42 = *(v41 - 8);
  v43 = v81;
  v65 = *(v42 + 56);
  v64 = (v42 + 56);
  (v65)(v81, 1, 1, v41);
  sub_1000206D4(&qword_1006026D8, &unk_100606760, &qword_1004CB380, &protocol conformance descriptor for Published<A>.Publisher);
  v44 = sub_10009F0CC(&qword_1006066F0, sub_10009F080, &protocol conformance descriptor for OS_dispatch_queue);
  v45 = v68;
  v46 = v43;
  v47 = v69;
  v63 = v44;
  sub_1004B8614();
  sub_100007214(v46, &qword_1006026C0, &qword_1004CB378);

  (*(v70 + 8))(v37, v47);
  swift_allocObject();
  swift_weakInit();
  sub_1000206D4(&unk_100607030, &unk_100607020, &qword_1004CB388, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v48 = v71;
  sub_1004B8644();

  v49 = v66;
  (*(v73 + 8))(v45, v48);
  swift_beginAccess();
  sub_1004BC274();
  if (*((*v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1004BC2E4();
  }

  sub_1004BC334();
  swift_endAccess();
  v50 = v75;
  v51 = v82;
  sub_1004BADB4();
  v52 = sub_1004BCB44();
  v88 = v52;
  v53 = v81;
  (v65)(v81, 1, 1, v41);
  sub_1000206D4(&qword_1006026E0, &qword_100606770, &qword_1004CB370, &protocol conformance descriptor for Published<A>.Publisher);
  v54 = v77;
  v55 = v78;
  sub_1004B8614();
  sub_100007214(v53, &qword_1006026C0, &qword_1004CB378);

  (*(v76 + 8))(v50, v54);
  v56 = swift_allocObject();
  swift_weakInit();

  v57 = swift_allocObject();
  *(v57 + 16) = v56;
  *(v57 + 24) = v51;
  sub_1000206D4(qword_100607040, &qword_1006026B8, &unk_1004D4040, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v58 = v80;
  sub_1004B8644();

  (*(v79 + 8))(v55, v58);
  swift_beginAccess();
  sub_1004BC274();
  if (*((*(v4 + 4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + 4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1004BC2E4();
  }

  sub_1004BC334();
  swift_endAccess();
  (*(v72 + 8))(v83, v74);
  return v4;
}

uint64_t sub_10009DE30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    v2 = 6;
  }

  else
  {
    v2 = 5;
  }

  v3 = a1[6];
  v4 = *(a1 + 1);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = *(a1 + 2);
  *(a2 + 48) = v3;
  *(a2 + 56) = v2;
  *(a2 + 64) = sub_10008C850;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0x4014000000000000;
  *(a2 + 88) = &unk_1004CB2A0;
  *(a2 + 96) = 0;
  *(a2 + 104) = &unk_1004CB2A8;
  *(a2 + 112) = 0;
}

uint64_t sub_10009DEE8()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for Actions.PlaybackContext(0);
  v3 = (*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80);
  v4 = v3 + *(*(v2 - 1) + 64);
  v5 = *(sub_100003ABC(&qword_1006025F0, &qword_1004CB0F0) - 8);
  v6 = *(v5 + 80);
  v20 = *(v5 + 64);
  v21 = v1;
  v7 = *(v1 - 8);
  v8 = *(v7 + 80);
  v9 = v0 + v3;

  v10 = v2[5];
  v11 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v11 - 8) + 48))(v9 + v10, 1, v11))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = sub_1004B8104();
      (*(*(v12 - 8) + 8))(v9 + v10, v12);
    }

    else
    {
    }
  }

  v13 = (v9 + v2[6]);
  if (v13[1])
  {

    v14 = v13[3];
    if (v14 >> 60 != 15)
    {
      sub_100004D90(v13[2], v14);
    }
  }

  v15 = (v4 + v6) & ~v6;
  v16 = (v9 + v2[7]);
  if (v16[3])
  {
    sub_100004C6C(v16);
  }

  v17 = sub_1004BAD54();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v0 + v15, 1, v17))
  {
    (*(v18 + 8))(v0 + v15, v17);
  }

  (*(v7 + 8))(v0 + ((v15 + v20 + v8) & ~v8), v21);

  return swift_deallocObject();
}

unint64_t sub_10009E208()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for Actions.PlaybackContext(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_100003ABC(&qword_1006025F0, &qword_1004CB0F0) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (v7 + *(v6 + 64) + *(*(v1 - 1) + 80)) & ~*(*(v1 - 1) + 80);
  v9 = *(v0 + ((*(*(v1 - 1) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000952CC(v0 + v4, v0 + v7, v0 + v8, v9, v1, v2);
}

uint64_t sub_10009E374()
{
  v1 = *(v0 + 16);
  v2 = *(sub_100003ABC(&qword_1006025F0, &qword_1004CB0F0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = type metadata accessor for Actions.PlaybackContext(0);
  v8 = (v5 + v6 + *(*(v7 - 1) + 80)) & ~*(*(v7 - 1) + 80);
  v9 = sub_1004BAD54();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  (*(v4 + 8))(v0 + v5, v1);
  v11 = v0 + v8;

  v12 = v7[5];
  v13 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v13 - 8) + 48))(v0 + v8 + v12, 1, v13))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = sub_1004B8104();
      (*(*(v14 - 8) + 8))(v11 + v12, v14);
    }

    else
    {
    }
  }

  v15 = (v11 + v7[6]);
  if (v15[1])
  {

    v16 = v15[3];
    if (v16 >> 60 != 15)
    {
      sub_100004D90(v15[2], v16);
    }
  }

  v17 = (v11 + v7[7]);
  if (v17[3])
  {
    sub_100004C6C(v17);
  }

  return swift_deallocObject();
}

uint64_t sub_10009E688()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(sub_100003ABC(&qword_1006025F0, &qword_1004CB0F0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = *(*(v3 - 8) + 64);
  v8 = *(type metadata accessor for Actions.PlaybackContext(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v0 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_10001384C;

  return sub_1000964E4(v0 + v5, v0 + v6, v0 + v9, v10, v3, v2);
}

uint64_t sub_10009E864()
{
  v1 = *(v0 + 16);
  v2 = *(sub_100003ABC(&qword_100601C50, &unk_1004C9840) - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
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

uint64_t sub_10009EB30()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(sub_100003ABC(&qword_100601C50, &unk_1004C9840) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = *(v0 + ((*(*(v3 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10001384C;

  return sub_1000974AC(v0 + v5, v0 + v6, v7, v3, v2);
}

uint64_t sub_10009ED18(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10009ED30(uint64_t a1, uint64_t a2)
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

uint64_t sub_10009ED54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_10009ED9C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_10009EDFC()
{

  return swift_deallocObject();
}

uint64_t sub_10009EE34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10009EE9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100606290, &qword_1004D3280);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009EF0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100601C48, &unk_1004D50E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009EF7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10009EFE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_10009F060(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_10009F080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100603570;
  if (!qword_100603570)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100603570);
  }

  return result;
}

uint64_t sub_10009F0CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10009F114()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10009F154()
{

  return swift_deallocObject();
}

void sub_10009F1AC(id a1)
{
  if (a1 >= 4)
  {
  }
}

uint64_t sub_10009F2A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  sub_100003ABC(a1, a2);
  sub_1000B882C(a3, a1, a2);
  sub_1004BC724();
  sub_1004BC764();
  if (v17[4] == v17[0])
  {
    v10 = a4(0);
    return (*(*(v10 - 8) + 56))(a5, 1, 1, v10);
  }

  else
  {
    v12 = sub_1004BC844();
    v14 = v13;
    v15 = a4(0);
    v16 = *(v15 - 8);
    (*(v16 + 16))(a5, v14, v15);
    v12(v17, 0);
    return (*(v16 + 56))(a5, 0, 1, v15);
  }
}

uint64_t Actions.Share.Context.menuItemTitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t Actions.Share.Context.menuItemTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

__n128 static Actions.Share.action(context:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *(a1 + 48);

  sub_100013D04(&v8, &v7);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  *(a2 + 64) = 4;
  *(a2 + 72) = sub_10004B4C4;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0x4014000000000000;
  *(a2 + 96) = &unk_1004CB490;
  *(a2 + 104) = 0;
  *(a2 + 112) = &unk_1004CB498;
  *(a2 + 120) = 0;
  return result;
}

uint64_t sub_10009F5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(a1 + 56);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v3;
  *(a2 + 48) = v2;
  *(a2 + 56) = v4;
  *(a2 + 64) = 4;
  *(a2 + 72) = sub_10004B4C4;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0x4014000000000000;
  *(a2 + 96) = &unk_1004CB490;
  *(a2 + 104) = 0;
  *(a2 + 112) = &unk_1004CB498;
  *(a2 + 120) = 0;
}

uint64_t (*Actions.Share.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000013;
  *(v0 + 24) = 0x80000001004FD950;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000013;
  *(v1 + 24) = 0x80000001004FD950;
  return sub_100051CB8;
}

uint64_t sub_10009F74C()
{

  return swift_deallocObject();
}

uint64_t (*Actions.Share.Context.menuItemCompactStyleImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000018;
  *(v0 + 24) = 0x80000001004FD970;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000018;
  *(v1 + 24) = 0x80000001004FD970;
  return sub_1000524E8;
}

uint64_t (*sub_10009F824())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000013;
  *(v0 + 24) = 0x80000001004FD950;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000013;
  *(v1 + 24) = 0x80000001004FD950;
  return sub_1000524E8;
}

uint64_t (*sub_10009F8C4())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000018;
  *(v0 + 24) = 0x80000001004FD970;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000018;
  *(v1 + 24) = 0x80000001004FD970;
  return sub_1000524E8;
}

uint64_t Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t (**a7)()@<X8>)
{
  v42 = a6;
  v34 = a5;
  v37 = a4;
  v38 = a2;
  v39 = a3;
  sub_1004B6E64();
  __chkstk_darwin();
  v36 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004BBE14();
  v40 = *(v12 - 8);
  v41 = v12;
  __chkstk_darwin();
  v33 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v31 - v14;
  v32 = *(sub_100003ABC(&qword_100601C50, &unk_1004C9840) - 8);
  v16 = *(v32 + 64);
  __chkstk_darwin();
  v18 = &v31 - v17;
  sub_10001342C(a1, v44);
  v19 = swift_allocObject();
  sub_100013414(v44, v19 + 16);
  *(v19 + 56) = a2;
  *(v19 + 64) = a3;
  v20 = swift_allocObject();
  v21 = v34;
  v35 = v20;
  *(v20 + 16) = v37;
  *(v20 + 24) = v21;
  sub_10000F778(v42, v18, &qword_100601C50, &unk_1004C9840);
  v37 = a1;
  sub_10001342C(a1, v43);
  v22 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v23 = (v16 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  sub_100025B04(v18, v24 + v22, &qword_100601C50, &unk_1004C9840);
  sub_100013414(v43, v24 + v23);

  sub_1004BBDA4();
  (*(v40 + 16))();
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v25 = qword_100617118;
  sub_1004B6DF4();
  v26 = sub_1004BBED4();
  v28 = v27;

  sub_100007214(v42, &qword_100601C50, &unk_1004C9840);
  sub_100004C6C(v37);
  result = (*(v40 + 8))(v15, v41);
  *a7 = sub_1000A0254;
  a7[1] = v19;
  v30 = v35;
  a7[2] = &unk_1004CB4B0;
  a7[3] = v30;
  a7[4] = &unk_1004CB4C0;
  a7[5] = v24;
  a7[6] = v26;
  a7[7] = v28;
  return result;
}

unint64_t sub_10009FD5C(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  __chkstk_darwin();
  v5 = &v23 - v4;
  v6 = sub_1004BAE04();
  v24 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003ABC(&qword_1006029E8, &qword_1004CBE90);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v23 - v11;
  sub_10001342C(a1, v38);
  sub_100003ABC(&qword_1006029F0, &qword_1004CBE98);
  sub_100003ABC(&qword_1006029F8, &qword_1004CBEA0);
  if (swift_dynamicCast())
  {
    sub_100013414(v36, v39);
    sub_100009178(v39, v39[3]);
    sub_1004B76D4();
    sub_1004BAF94();
    (*(v24 + 8))(v8, v6);
    v13 = sub_1000A0260();
    (*(v10 + 8))(v12, v9);
    sub_100004C6C(v39);
    return v13;
  }

  memset(v36, 0, sizeof(v36));
  v37 = 0;
  sub_100007214(v36, &qword_100602A00, &qword_1004CBEA8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v35[4] = v31;
  v35[5] = v32;
  v35[6] = v33;
  v35[7] = v34;
  v35[0] = v27;
  v35[1] = v28;
  v35[2] = v29;
  v35[3] = v30;
  sub_100051DEC(v35);
  if ((BYTE1(v35[0]) & 1) == 0)
  {
    return 0xD000000000000010;
  }

  v15 = a1[3];
  v16 = a1[4];
  sub_100009178(a1, v15);
  (*(v16 + 16))(v15, v16);
  v17 = sub_1004B6B04();
  v18 = (*(*(v17 - 8) + 48))(v5, 1, v17);
  sub_100007214(v5, &qword_100600DE0, &unk_1004C66D0);
  if (v18 != 1)
  {
    return 0;
  }

  sub_10001342C(a1, &v26);
  sub_100003ABC(&qword_100601518, &unk_1004C8AC0);
  if (swift_dynamicCast())
  {
    v19 = *(&v28 + 1);
    v20 = v29;
    sub_100009178(&v27, *(&v28 + 1));
    (*(v20 + 8))(v19, v20);
    v22 = v21;
    sub_100004C6C(&v27);
    if (v22)
    {

      return 0;
    }
  }

  else
  {
    *&v29 = 0;
    v27 = 0u;
    v28 = 0u;
    sub_100007214(&v27, &unk_100606F20, &qword_1004CAC90);
  }

  return 0xD00000000000001DLL;
}

uint64_t sub_1000A020C()
{
  sub_100004C6C((v0 + 16));

  return swift_deallocObject();
}

unint64_t sub_1000A0260()
{
  v1 = sub_1004BADF4();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v23 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = &v22 - v4;
  __chkstk_darwin();
  v6 = &v22 - v5;
  v7 = sub_100003ABC(&qword_1006029E8, &qword_1004CBE90);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin();
  v13 = &v22 - v12;
  v14 = *(v8 + 16);
  v24 = v0;
  v14(&v22 - v12, v0, v7, v11);
  v15 = (*(v8 + 88))(v13, v7);
  if (v15 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v8 + 96))(v13, v7);
    (*(v2 + 32))(v6, v13, v1);
    v16 = *(v2 + 16);
    v17 = v25;
    v16(v25, v6, v1);
    v18 = (*(v2 + 88))(v17, v1);
    if (v18 == enum case for MusicLibrary.ShareAction.UnsupportedReason.unsupportedType(_:))
    {
      v19 = 0xD000000000000010;
LABEL_8:
      (*(v2 + 8))(v6, v1);
      return v19;
    }

    if (v18 == enum case for MusicLibrary.ShareAction.UnsupportedReason.unsupportedItem(_:))
    {
      v19 = 0xD000000000000010;
      goto LABEL_8;
    }

    if (v18 != enum case for MusicLibrary.ShareAction.UnsupportedReason.canBecomeShareableOncePublic(_:))
    {
      if (v18 != enum case for MusicLibrary.ShareAction.UnsupportedReason.networkRequired(_:))
      {
        v26 = 0;
        v27 = 0xE000000000000000;
        sub_1004BD404(17);

        v26 = 0x206E776F6E6B6E55;
        v27 = 0xEF206E6F73616572;
        v16(v23, v6, v1);
        v29._countAndFlagsBits = sub_1004BBF04();
        sub_1004BC024(v29);

        v19 = v26;
        v21 = *(v2 + 8);
        v21(v6, v1);
        v21(v25, v1);
        return v19;
      }

      v19 = 0xD000000000000010;
      goto LABEL_8;
    }

    (*(v2 + 8))(v6, v1);
  }

  else if (v15 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1004BD404(27);

    v26 = 0xD000000000000019;
    v27 = 0x80000001004FDBC0;
    (v14)(v10, v24, v7);
    v28._countAndFlagsBits = sub_1004BBF04();
    sub_1004BC024(v28);

    v19 = v26;
    (*(v8 + 8))(v13, v7);
    return v19;
  }

  return 0;
}

uint64_t sub_1000A0704(int *a1)
{
  v1[2] = sub_1004BC474();
  v1[3] = sub_1004BC464();
  v5 = (a1 + *a1);
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_100030D24;

  return v5();
}

uint64_t sub_1000A0814()
{

  return swift_deallocObject();
}

uint64_t sub_1000A084C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001384C;

  return sub_1000A0704(v2);
}

uint64_t sub_1000A08E4(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  sub_100003ABC(&qword_1006014F8, &unk_1004C8AA0);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = type metadata accessor for MetricsEvent.Click(0);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  sub_100003ABC(&qword_100601C50, &unk_1004C9840);
  v2[25] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext(0);
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_1000A0AF4, 0, 0);
}

uint64_t sub_1000A0AF4()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  sub_10000F778(*(v0 + 72), v3, &qword_100601C50, &unk_1004C9840);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100007214(*(v0 + 200), &qword_100601C50, &unk_1004C9840);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 192);
    v7 = *(v0 + 80);
    sub_1000521DC(*(v0 + 200), *(v0 + 224), type metadata accessor for Actions.MetricsReportingContext);
    v8 = v7[3];
    sub_100009178(v7, v8);
    *(v0 + 232) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 240) = v9;
    v10 = sub_1004B6B04();
    *(v0 + 248) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 256) = v12;
    *(v0 + 264) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v6, 1, 1, v10);
    sub_100003ABC(&qword_100601E58, &qword_1004CA360);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004C50A0;
    v14 = v7[3];
    sub_100009178(v7, v14);
    *(inited + 32) = MusicItem.metricsContentType.getter(v14);
    *(inited + 40) = v15;
    *(inited + 48) = 0;
    *(v0 + 272) = sub_100029080(inited);
    *(v0 + 280) = v16;
    *(v0 + 288) = v17;
    *(v0 + 304) = v18;
    swift_setDeallocating();
    sub_10005DC68(inited + 32);
    sub_1004BC474();
    *(v0 + 296) = sub_1004BC464();
    v20 = sub_1004BC3E4();

    return _swift_task_switch(sub_1000A0E0C, v20, v19);
  }
}

uint64_t sub_1000A0E0C()
{
  v80 = *(v0 + 304);
  v73 = *(v0 + 272);
  v76 = *(v0 + 240);
  v78 = *(v0 + 288);
  v74 = *(v0 + 232);
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v7 = *(v0 + 144);
  v72 = *(v0 + 136);

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
  *(v6 + 16) = 12293;
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
  v16 = *(v0 + 304);
  v17 = *(v0 + 280);
  v18 = *(v0 + 288);
  v19 = *(v0 + 272);
  v20 = *(v0 + 136);
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

    sub_10005BAA4(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 144);
  v24 = *(v0 + 128);
  v25 = (*(v0 + 160) + *(*(v0 + 152) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_10000F778(v23, v24, &qword_1006014F8, &unk_1004C8AA0);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 128);
  if (v26 == 1)
  {
    sub_100007214(*(v0 + 128), &qword_1006014F8, &unk_1004C8AA0);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_10005BAA4(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 144);
  v31 = *(v0 + 120);
  v32 = (*(v0 + 160) + *(*(v0 + 152) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_10000F778(v30, v31, &qword_1006014F8, &unk_1004C8AA0);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 256);
    v34 = *(v0 + 248);
    v35 = *(v0 + 176);
    sub_100007214(*(v0 + 120), &qword_1006014F8, &unk_1004C8AA0);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 120);
    sub_10000F778(v36 + v14[6], *(v0 + 176), &qword_100600DE0, &unk_1004C66D0);
    sub_10005BAA4(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 144);
  v38 = *(v0 + 112);
  sub_100025B04(*(v0 + 176), *(v0 + 160) + *(*(v0 + 152) + 56), &qword_100600DE0, &unk_1004C66D0);
  sub_10000F778(v37, v38, &qword_1006014F8, &unk_1004C8AA0);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 112);
  if (v39 == 1)
  {
    sub_100007214(*(v0 + 112), &qword_1006014F8, &unk_1004C8AA0);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_10005BAA4(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 144);
  v43 = *(v0 + 104);
  *(*(v0 + 160) + *(*(v0 + 152) + 60)) = v41;
  sub_10000F778(v42, v43, &qword_1006014F8, &unk_1004C8AA0);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 104);
  if (v44 == 1)
  {
    sub_100007214(v45, &qword_1006014F8, &unk_1004C8AA0);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_10005BAA4(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 144);
  v48 = *(v0 + 96);
  *(*(v0 + 160) + *(*(v0 + 152) + 64)) = v46;
  sub_10000F778(v47, v48, &qword_1006014F8, &unk_1004C8AA0);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 96);
  if (v49 == 1)
  {
    sub_100007214(*(v0 + 96), &qword_1006014F8, &unk_1004C8AA0);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_10005BAA4(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 144);
  v55 = *(v0 + 88);
  v56 = (*(v0 + 160) + *(*(v0 + 152) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100025B04(v54, v55, &qword_1006014F8, &unk_1004C8AA0);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 88);
  if (v57 == 1)
  {
    sub_100007214(v58, &qword_1006014F8, &unk_1004C8AA0);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_10005BAA4(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 160);
  v61 = *(v0 + 168);
  v62 = *(v0 + 152);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_1000521DC(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1005FFE00 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 280);
  v63 = *(v0 + 288);
  v65 = *(v0 + 272);
  v66 = *(v0 + 224);
  v67 = *(v0 + 208);
  v68 = *(v0 + 192);
  v69 = *(v0 + 168);
  v70 = *(v0 + 304);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100052244(v65, v64, v63, v70, SBYTE1(v70));
  sub_10005BAA4(v69, type metadata accessor for MetricsEvent.Click);
  sub_100007214(v68, &qword_100600DE0, &unk_1004C66D0);

  return _swift_task_switch(sub_1000B8888, 0, 0);
}

uint64_t sub_1000A15C4()
{
  v2 = *(sub_100003ABC(&qword_100601C50, &unk_1004C9840) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001384C;

  return sub_1000A08E4(v0 + v3, v0 + v4);
}

uint64_t static Actions.ShareLyrics.action(context:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 34;
  *(a2 + 56) = sub_10004B4C4;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_1004CB4C8;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_1004CB4D0;
  *(a2 + 104) = 0;
}

uint64_t sub_1000A1778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 34;
  *(a2 + 56) = sub_10004B4C4;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_1004CB4C8;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_1004CB4D0;
  *(a2 + 104) = 0;
}

uint64_t Actions.ShareLyrics.Context.init(item:canShareLyrics:shareLyrics:metricsReportingContext:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = *(sub_100003ABC(&qword_100601C50, &unk_1004C9840) - 8);
  v15 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v16 = (*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  sub_100025B04(a6, v17 + v15, &qword_100601C50, &unk_1004C9840);
  result = sub_100013414(a1, v17 + v16);
  *a7 = a2;
  a7[1] = a3;
  a7[2] = a4;
  a7[3] = a5;
  a7[4] = &unk_1004CB4E0;
  a7[5] = v17;
  return result;
}

uint64_t sub_1000A1954(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  sub_100003ABC(&qword_1006014F8, &unk_1004C8AA0);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = type metadata accessor for MetricsEvent.Click(0);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  sub_100003ABC(&qword_100601C50, &unk_1004C9840);
  v2[25] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext(0);
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_1000A1B64, 0, 0);
}

uint64_t sub_1000A1B64()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  sub_10000F778(*(v0 + 72), v3, &qword_100601C50, &unk_1004C9840);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100007214(*(v0 + 200), &qword_100601C50, &unk_1004C9840);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 192);
    v7 = *(v0 + 80);
    sub_1000521DC(*(v0 + 200), *(v0 + 224), type metadata accessor for Actions.MetricsReportingContext);
    v8 = v7[3];
    sub_100009178(v7, v8);
    *(v0 + 232) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 240) = v9;
    v10 = sub_1004B6B04();
    *(v0 + 248) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 256) = v12;
    *(v0 + 264) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v6, 1, 1, v10);
    sub_100003ABC(&qword_100601E58, &qword_1004CA360);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004C50A0;
    v14 = v7[3];
    sub_100009178(v7, v14);
    *(inited + 32) = MusicItem.metricsContentType.getter(v14);
    *(inited + 40) = v15;
    *(inited + 48) = 0;
    *(v0 + 272) = sub_100029080(inited);
    *(v0 + 280) = v16;
    *(v0 + 288) = v17;
    *(v0 + 304) = v18;
    swift_setDeallocating();
    sub_10005DC68(inited + 32);
    sub_1004BC474();
    *(v0 + 296) = sub_1004BC464();
    v20 = sub_1004BC3E4();

    return _swift_task_switch(sub_1000A1E7C, v20, v19);
  }
}

uint64_t sub_1000A1E7C()
{
  v80 = *(v0 + 304);
  v73 = *(v0 + 272);
  v76 = *(v0 + 240);
  v78 = *(v0 + 288);
  v74 = *(v0 + 232);
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v7 = *(v0 + 144);
  v72 = *(v0 + 136);

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
  *(v6 + 16) = 12805;
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
  v16 = *(v0 + 304);
  v17 = *(v0 + 280);
  v18 = *(v0 + 288);
  v19 = *(v0 + 272);
  v20 = *(v0 + 136);
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

    sub_10005BAA4(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 144);
  v24 = *(v0 + 128);
  v25 = (*(v0 + 160) + *(*(v0 + 152) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_10000F778(v23, v24, &qword_1006014F8, &unk_1004C8AA0);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 128);
  if (v26 == 1)
  {
    sub_100007214(*(v0 + 128), &qword_1006014F8, &unk_1004C8AA0);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_10005BAA4(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 144);
  v31 = *(v0 + 120);
  v32 = (*(v0 + 160) + *(*(v0 + 152) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_10000F778(v30, v31, &qword_1006014F8, &unk_1004C8AA0);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 256);
    v34 = *(v0 + 248);
    v35 = *(v0 + 176);
    sub_100007214(*(v0 + 120), &qword_1006014F8, &unk_1004C8AA0);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 120);
    sub_10000F778(v36 + v14[6], *(v0 + 176), &qword_100600DE0, &unk_1004C66D0);
    sub_10005BAA4(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 144);
  v38 = *(v0 + 112);
  sub_100025B04(*(v0 + 176), *(v0 + 160) + *(*(v0 + 152) + 56), &qword_100600DE0, &unk_1004C66D0);
  sub_10000F778(v37, v38, &qword_1006014F8, &unk_1004C8AA0);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 112);
  if (v39 == 1)
  {
    sub_100007214(*(v0 + 112), &qword_1006014F8, &unk_1004C8AA0);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_10005BAA4(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 144);
  v43 = *(v0 + 104);
  *(*(v0 + 160) + *(*(v0 + 152) + 60)) = v41;
  sub_10000F778(v42, v43, &qword_1006014F8, &unk_1004C8AA0);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 104);
  if (v44 == 1)
  {
    sub_100007214(v45, &qword_1006014F8, &unk_1004C8AA0);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_10005BAA4(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 144);
  v48 = *(v0 + 96);
  *(*(v0 + 160) + *(*(v0 + 152) + 64)) = v46;
  sub_10000F778(v47, v48, &qword_1006014F8, &unk_1004C8AA0);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 96);
  if (v49 == 1)
  {
    sub_100007214(*(v0 + 96), &qword_1006014F8, &unk_1004C8AA0);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_10005BAA4(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 144);
  v55 = *(v0 + 88);
  v56 = (*(v0 + 160) + *(*(v0 + 152) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100025B04(v54, v55, &qword_1006014F8, &unk_1004C8AA0);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 88);
  if (v57 == 1)
  {
    sub_100007214(v58, &qword_1006014F8, &unk_1004C8AA0);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_10005BAA4(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 160);
  v61 = *(v0 + 168);
  v62 = *(v0 + 152);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_1000521DC(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1005FFE00 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 280);
  v63 = *(v0 + 288);
  v65 = *(v0 + 272);
  v66 = *(v0 + 224);
  v67 = *(v0 + 208);
  v68 = *(v0 + 192);
  v69 = *(v0 + 168);
  v70 = *(v0 + 304);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100052244(v65, v64, v63, v70, SBYTE1(v70));
  sub_10005BAA4(v69, type metadata accessor for MetricsEvent.Click);
  sub_100007214(v68, &qword_100600DE0, &unk_1004C66D0);

  return _swift_task_switch(sub_1000A2630, 0, 0);
}

uint64_t sub_1000A2630()
{
  sub_10005BAA4(*(v0 + 224), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A2768()
{
  v1 = *(sub_100003ABC(&qword_100601C50, &unk_1004C9840) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = v0 + v2;
  v5 = type metadata accessor for Actions.MetricsReportingContext(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v2, 1, v5))
  {
    if (*(v4 + 8) >= 0xDuLL)
    {
    }

    v6 = v4 + *(v5 + 20);
    v7 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {

      v8 = *(v7 + 24);
      v9 = sub_1004B6B04();
      v10 = *(v9 - 8);
      v14 = v8;
      v11 = v6 + v8;
      v12 = v9;
      if (!(*(v10 + 48))(v11, 1, v9))
      {
        (*(v10 + 8))(v6 + v14, v12);
      }
    }
  }

  sub_100004C6C((v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1000A29C4()
{
  v2 = *(sub_100003ABC(&qword_100601C50, &unk_1004C9840) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000136EC;

  return sub_1000A1954(v0 + v3, v0 + v4);
}

uint64_t Actions.ShareLyrics.Context.menuItemTitle.getter()
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

id sub_1000A2CE8()
{
  v0 = sub_1004BBE24();
  v1 = [objc_opt_self() imageNamed:v0];

  return v1;
}

uint64_t ShareableMusicItem.failureMessage.getter()
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

uint64_t ShareableMusicItem.shareURL.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1000A2F58, 0, 0);
}

uint64_t sub_1000A2F58()
{
  (*(v0[4] + 16))(v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1000A2FCC(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000A3068, 0, 0);
}

uint64_t sub_1000A3068(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = **(v2 + 16);
  v5 = sub_1004B6B04();
  v6 = *(v5 - 8);
  (*(v6 + 56))(v3, 1, 1, v5);
  v7 = (*(v6 + 48))(v3, 1, v5);
  v9 = 0;
  if (v7 != 1)
  {
    v10 = *(v2 + 24);
    sub_1004B6A44(v8);
    v9 = v11;
    (*(v6 + 8))(v10, v5);
  }

  [v4 setOriginalURL:v9];

  v12 = *(v2 + 8);

  return v12();
}

uint64_t sub_1000A31C0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000A325C, 0, 0);
}

uint64_t sub_1000A325C()
{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  sub_1004BB6D4();
  v3 = sub_1004B6B04();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    sub_1004B6A44(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000A3384(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000A3420, 0, 0);
}

uint64_t sub_1000A3420()
{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  sub_1004B7AB4();
  v3 = sub_1004B6B04();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    sub_1004B6A44(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000A3548(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000A35E4, 0, 0);
}

uint64_t sub_1000A35E4()
{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  sub_1004BB444();
  v3 = sub_1004B6B04();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    sub_1004B6A44(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000A370C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000A37A8, 0, 0);
}

uint64_t sub_1000A37A8()
{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  sub_1004BBA94();
  v3 = sub_1004B6B04();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    sub_1004B6A44(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000A38D0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000A396C, 0, 0);
}

uint64_t sub_1000A396C()
{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  sub_1004BB1E4();
  v3 = sub_1004B6B04();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    sub_1004B6A44(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000A3A94(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000A3B30, 0, 0);
}

uint64_t sub_1000A3B30()
{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  sub_1004B7AF4();
  v3 = sub_1004B6B04();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    sub_1004B6A44(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t ShareableMusicItem.augmentMetadata(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000A3CF8, 0, 0);
}

uint64_t sub_1000A3CF8()
{
  v1 = *(v0 + 32);
  *(v0 + 56) = **(v0 + 16);
  v7 = (*(v1 + 24) + **(v1 + 24));
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1000A3E10;
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);

  return v7(v3, v4, v5);
}

uint64_t sub_1000A3E10()
{

  return _swift_task_switch(sub_1000A3F0C, 0, 0);
}

uint64_t sub_1000A3F0C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = sub_1004B6B04();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v7 = 0;
  }

  else
  {
    sub_1004B6A44(v6);
    v7 = v8;
    (*(v5 + 8))(v3, v4);
  }

  [*(v2 + 56) setOriginalURL:v7];

  v9 = *(v2 + 8);

  return v9();
}

uint64_t Album.failureMessage.getter()
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

uint64_t Album.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100003ABC(&qword_100602598, &qword_1004CAEF0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_100003ABC(&qword_100601E48, &qword_1004C9DA0);
  v2[9] = swift_task_alloc();
  v4 = sub_100003ABC(&qword_100602700, &qword_1004CB508);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_100003ABC(&qword_100602708, &qword_1004CB510);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000A441C, 0, 0);
}

uint64_t sub_1000A441C()
{
  v1 = v0[16];
  sub_1004BB404();
  v2 = sub_1004B6B04();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100007214(v0[16], &qword_100600DE0, &unk_1004C66D0);
    v4 = sub_1004BB3D4();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_1004BB434();
      sub_1000B870C(&qword_100601EC0, &type metadata accessor for Album, &protocol conformance descriptor for Album);

      sub_1004BABD4();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_1000A46BC;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000A46BC()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1000A4A1C;
  }

  else
  {

    v2 = sub_1000A47D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000A47D8()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_1004BAC04();
  sub_10009F2A4(&qword_100602598, &qword_1004CAEF0, &qword_1006029E0, &type metadata accessor for Album, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_100007214(v12, &qword_100601E48, &qword_1004C9DA0);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    sub_1004BB404();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000A4A1C(uint64_t a1, uint64_t a2)
{
  v23 = v2;
  if (qword_1005FFD50 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B80B4();
  sub_100007084(v3, qword_1006026E8);

  swift_errorRetain();
  v4 = sub_1004B8094();
  v5 = sub_1004BC984();

  if (os_log_type_enabled(v4, v5))
  {
    v19 = v2[14];
    v20 = v2[13];
    v21 = v2[15];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v6 = 136446466;
    v9 = sub_1004BAD14();
    v11 = v10;

    v12 = sub_100012018(v9, v11, &v22);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to get share URL for album catalogID: %{public}s: %{public}@", v6, 0x16u);
    sub_100007214(v7, &qword_100602710, &qword_1004CB540);

    sub_100004C6C(v8);

    (*(v19 + 8))(v21, v20);
  }

  else
  {
    v15 = v2[14];
    v14 = v2[15];
    v16 = v2[13];

    (*(v15 + 8))(v14, v16);
  }

  (*(v2[18] + 56))(v2[4], 1, 1, v2[17]);

  v17 = v2[1];

  return v17();
}

uint64_t Album.augmentMetadata(_:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_1004B7A54();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_1004B7A74();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v2[12] = swift_task_alloc();
  v5 = sub_100003ABC(&qword_100602598, &qword_1004CAEF0);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_100003ABC(&qword_100601E48, &qword_1004C9DA0);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v6 = sub_100003ABC(&qword_100602700, &qword_1004CB508);
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v7 = sub_100003ABC(&qword_100602708, &qword_1004CB510);
  v2[22] = v7;
  v2[23] = *(v7 - 8);
  v2[24] = swift_task_alloc();

  return _swift_task_switch(sub_1000A4FF0, 0, 0);
}

uint64_t sub_1000A4FF0(uint64_t a1)
{
  v2 = sub_1004BB3D4();
  *(v1 + 200) = v2;
  *(v1 + 208) = v3;
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = **(v1 + 32);
    *(v1 + 216) = v6;
    v7 = [v6 specialization];
    *(v1 + 224) = v7;
    if (v7)
    {
      v8 = v7;
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      *(v1 + 232) = v9;
      if (v9)
      {
        swift_getKeyPath();
        *(v1 + 16) = v4;
        *(v1 + 24) = v5;
        *(v1 + 240) = sub_1004BB434();
        sub_1000B870C(&qword_100601EC0, &type metadata accessor for Album, &protocol conformance descriptor for Album);

        sub_1004BABD4();
        sub_100003ABC(&qword_100603C50, &unk_1004CB550);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_1004C4D40;
        sub_100003ABC(&qword_100601EB8, &qword_1004C9E50);
        *(v10 + 32) = sub_1004BA9F4();
        sub_1004BABC4();
        v11 = swift_task_alloc();
        *(v1 + 248) = v11;
        *v11 = v1;
        v11[1] = sub_1000A52A0;
        v12 = *(v1 + 168);
        v13 = *(v1 + 176);

        return MusicCatalogResourceRequest.response()(v12, v13);
      }
    }
  }

  v14 = *(v1 + 8);

  return v14();
}

uint64_t sub_1000A52A0()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_1000A5920;
  }

  else
  {

    v2 = sub_1000A53BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000A53BC()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 144);
  v3 = *(v0 + 136);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 104);
  sub_1004BAC04();
  sub_10009F2A4(&qword_100602598, &qword_1004CAEF0, &qword_1006029E0, &type metadata accessor for Album, v2);
  (*(v5 + 8))(v4, v6);
  sub_10000F778(v2, v3, &qword_100601E48, &qword_1004C9DA0);
  v7 = *(v1 - 8);
  v8 = *(v7 + 48);
  if (v8(v3, 1, v1) == 1)
  {
    v9 = *(v0 + 96);
    sub_100007214(*(v0 + 136), &qword_100601E48, &qword_1004C9DA0);
    v10 = sub_1004B6B04();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = 0;
  }

  else
  {
    v12 = *(v0 + 240);
    v13 = *(v0 + 136);
    v14 = *(v0 + 96);
    sub_1004BB404();
    (*(v7 + 8))(v13, v12);
    v15 = sub_1004B6B04();
    v16 = *(v15 - 8);
    v11 = 0;
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      v18 = *(v0 + 96);
      sub_1004B6A44(v17);
      v11 = v19;
      (*(v16 + 8))(v18, v15);
    }
  }

  v20 = *(v0 + 240);
  v21 = *(v0 + 144);
  v22 = *(v0 + 128);
  [*(v0 + 216) setOriginalURL:v11];

  sub_10000F778(v21, v22, &qword_100601E48, &qword_1004C9DA0);
  if (v8(v22, 1, v20) == 1)
  {
    sub_100007214(*(v0 + 128), &qword_100601E48, &qword_1004C9DA0);
    isa = 0;
  }

  else
  {
    v24 = *(v0 + 240);
    v25 = *(v0 + 128);
    v26 = sub_1004BB3C4();
    (*(v7 + 8))(v25, v24);
    if (v26)
    {
      v27 = *(v26 + 16);
      if (v27)
      {
        v28 = *(v0 + 80);
        v29 = *(v0 + 56);
        sub_100015080(0, v27, 0);
        v30 = *(v28 + 16);
        v28 += 16;
        v31 = v26 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
        v54 = *(v28 + 56);
        v55 = v30;
        v56 = v0;
        v52 = (v28 - 8);
        v53 = (v29 + 8);
        do
        {
          v32 = *(v0 + 88);
          v33 = *(v0 + 64);
          v34 = *(v0 + 72);
          v35 = *(v0 + 48);
          v55(v32, v31, v34);
          sub_1004B7A64();
          v36 = sub_1004B7A44();
          v38 = v37;
          (*v53)(v33, v35);
          (*v52)(v32, v34);
          v40 = _swiftEmptyArrayStorage[2];
          v39 = _swiftEmptyArrayStorage[3];
          if (v40 >= v39 >> 1)
          {
            sub_100015080((v39 > 1), v40 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v40 + 1;
          v41 = &_swiftEmptyArrayStorage[2 * v40];
          v41[4] = v36;
          v41[5] = v38;
          v31 += v54;
          --v27;
          v0 = v56;
        }

        while (v27);
      }

      isa = sub_1004BC284().super.isa;
    }

    else
    {
      isa = 0;
    }
  }

  v42 = *(v0 + 224);
  v43 = *(v0 + 184);
  v44 = *(v0 + 192);
  v46 = *(v0 + 168);
  v45 = *(v0 + 176);
  v47 = *(v0 + 152);
  v48 = *(v0 + 160);
  v49 = *(v0 + 144);
  [*(v0 + 232) setOffers:isa];

  sub_100007214(v49, &qword_100601E48, &qword_1004C9DA0);
  (*(v48 + 8))(v46, v47);
  (*(v43 + 8))(v44, v45);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_1000A5920(uint64_t a1, uint64_t a2)
{
  v24 = v2;
  if (qword_1005FFD50 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B80B4();
  sub_100007084(v3, qword_1006026E8);

  swift_errorRetain();
  v4 = sub_1004B8094();
  v5 = sub_1004BC984();

  if (os_log_type_enabled(v4, v5))
  {
    v19 = *(v2 + 224);
    v20 = *(v2 + 184);
    v21 = *(v2 + 176);
    v22 = *(v2 + 192);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v6 = 136446466;
    v9 = sub_1004BAD14();
    v11 = v10;

    v12 = sub_100012018(v9, v11, &v23);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to get share URL and offers for album catalogID: %{public}s: %{public}@", v6, 0x16u);
    sub_100007214(v7, &qword_100602710, &qword_1004CB540);

    sub_100004C6C(v8);

    (*(v20 + 8))(v22, v21);
  }

  else
  {
    v15 = *(v2 + 184);
    v14 = *(v2 + 192);
    v16 = *(v2 + 176);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v2 + 8);

  return v17();
}

uint64_t sub_1000A5C1C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001384C;

  return Album.shareURL.getter(a1);
}

uint64_t sub_1000A5CCC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001384C;

  return Album.augmentMetadata(_:)(a1);
}

uint64_t Artist.failureMessage.getter()
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

uint64_t Artist.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100003ABC(&qword_100602718, &qword_1004CB568);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_100003ABC(&qword_100602720, &qword_1004CB570);
  v2[9] = swift_task_alloc();
  v4 = sub_100003ABC(&qword_100602728, &qword_1004CB578);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_100003ABC(&qword_100602730, &qword_1004CB580);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000A6150, 0, 0);
}

uint64_t sub_1000A6150()
{
  v1 = v0[16];
  sub_1004BB544();
  v2 = sub_1004B6B04();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100007214(v0[16], &qword_100600DE0, &unk_1004C66D0);
    v4 = sub_1004BB534();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_1004BB564();
      sub_1000B870C(&qword_100602738, &type metadata accessor for Artist, &protocol conformance descriptor for Artist);

      sub_1004BABD4();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_1000A63F0;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000A63F0()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1000A6750;
  }

  else
  {

    v2 = sub_1000A650C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000A650C()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_1004BAC04();
  sub_10009F2A4(&qword_100602718, &qword_1004CB568, &qword_1006029D8, &type metadata accessor for Artist, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_100007214(v12, &qword_100602720, &qword_1004CB570);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    sub_1004BB544();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000A6750(uint64_t a1, uint64_t a2)
{
  v23 = v2;
  if (qword_1005FFD50 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B80B4();
  sub_100007084(v3, qword_1006026E8);

  swift_errorRetain();
  v4 = sub_1004B8094();
  v5 = sub_1004BC984();

  if (os_log_type_enabled(v4, v5))
  {
    v19 = v2[14];
    v20 = v2[13];
    v21 = v2[15];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v6 = 136446466;
    v9 = sub_1004BAD14();
    v11 = v10;

    v12 = sub_100012018(v9, v11, &v22);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to get share URL for artist catalogID: %{public}s: %{public}@", v6, 0x16u);
    sub_100007214(v7, &qword_100602710, &qword_1004CB540);

    sub_100004C6C(v8);

    (*(v19 + 8))(v21, v20);
  }

  else
  {
    v15 = v2[14];
    v14 = v2[15];
    v16 = v2[13];

    (*(v15 + 8))(v14, v16);
  }

  (*(v2[18] + 56))(v2[4], 1, 1, v2[17]);

  v17 = v2[1];

  return v17();
}

uint64_t sub_1000A6A34(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001384C;

  return Artist.shareURL.getter(a1);
}

uint64_t sub_1000A6AE4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000A6B80, 0, 0);
}

uint64_t sub_1000A6B80()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1000A6C20;
  v2 = *(v0 + 32);

  return Artist.shareURL.getter(v2);
}

uint64_t sub_1000A6C20()
{

  return _swift_task_switch(sub_1000B88A8, 0, 0);
}

uint64_t Composer.url.getter@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1004B6B04();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t Composer.failureMessage.getter()
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

uint64_t sub_1000A6F8C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_1004B6B04();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = *(v2 + 8);

  return v5();
}

uint64_t sub_1000A7040(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001384C;

  return sub_1000A2FCC(a1);
}

uint64_t Curator.failureMessage.getter()
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

uint64_t sub_1000A72D0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000A72F0, 0, 0);
}

uint64_t sub_1000A72F0()
{
  sub_1004BB6D4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A7368(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001384C;

  return sub_1000A31C0(a1);
}

uint64_t sub_1000A7418(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000A7438, 0, 0);
}

uint64_t sub_1000A7438()
{
  sub_1004B7AB4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A74B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001384C;

  return sub_1000A3384(a1);
}

uint64_t Genre.failureMessage.getter()
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

uint64_t sub_1000A7740(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000A7760, 0, 0);
}

uint64_t sub_1000A7760()
{
  sub_1004BB444();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A77D8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001384C;

  return sub_1000A3548(a1);
}

uint64_t MusicMovie.failureMessage.getter()
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

uint64_t MusicMovie.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100003ABC(&qword_100602740, &qword_1004CB5B8);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_100003ABC(&qword_100602748, &qword_1004CB5C0);
  v2[9] = swift_task_alloc();
  v4 = sub_100003ABC(&qword_100602750, &qword_1004CB5C8);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_100003ABC(&qword_100602758, &qword_1004CB5D0);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000A7C70, 0, 0);
}

uint64_t sub_1000A7C70()
{
  v1 = v0[16];
  sub_1004B7A04();
  v2 = sub_1004B6B04();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100007214(v0[16], &qword_100600DE0, &unk_1004C66D0);
    v4 = sub_1004B7A24();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_1004B7A34();
      sub_1000B870C(&qword_100602760, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
      sub_1000B870C(&qword_100602768, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);

      sub_1004BABD4();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_1000A7F44;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000A7F44()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1000A82A4;
  }

  else
  {

    v2 = sub_1000A8060;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000A8060()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_1004BAC04();
  sub_10009F2A4(&qword_100602740, &qword_1004CB5B8, &qword_1006029D0, &type metadata accessor for MusicMovie, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_100007214(v12, &qword_100602748, &qword_1004CB5C0);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    sub_1004B7A04();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000A82A4(uint64_t a1, uint64_t a2)
{
  v23 = v2;
  if (qword_1005FFD50 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B80B4();
  sub_100007084(v3, qword_1006026E8);

  swift_errorRetain();
  v4 = sub_1004B8094();
  v5 = sub_1004BC984();

  if (os_log_type_enabled(v4, v5))
  {
    v19 = v2[14];
    v20 = v2[13];
    v21 = v2[15];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v6 = 136446466;
    v9 = sub_1004BAD14();
    v11 = v10;

    v12 = sub_100012018(v9, v11, &v22);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to get share URL for music movie catalogID: %{public}s: %{public}@", v6, 0x16u);
    sub_100007214(v7, &qword_100602710, &qword_1004CB540);

    sub_100004C6C(v8);

    (*(v19 + 8))(v21, v20);
  }

  else
  {
    v15 = v2[14];
    v14 = v2[15];
    v16 = v2[13];

    (*(v15 + 8))(v14, v16);
  }

  (*(v2[18] + 56))(v2[4], 1, 1, v2[17]);

  v17 = v2[1];

  return v17();
}

uint64_t sub_1000A8588(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001384C;

  return MusicMovie.shareURL.getter(a1);
}

uint64_t sub_1000A8638(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000A86D4, 0, 0);
}

uint64_t sub_1000A86D4()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1000A6C20;
  v2 = *(v0 + 32);

  return MusicMovie.shareURL.getter(v2);
}

uint64_t MusicVideo.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100003ABC(&qword_100602770, &qword_1004CB608);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_100003ABC(&qword_100601E88, &qword_1004CB610);
  v2[9] = swift_task_alloc();
  v4 = sub_100003ABC(&qword_100602778, &qword_1004CB618);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_100003ABC(&qword_100602780, &qword_1004CB620);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000A8984, 0, 0);
}

uint64_t sub_1000A8984()
{
  v1 = v0[16];
  sub_1004BACD4();
  v2 = sub_1004B6B04();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100007214(v0[16], &qword_100600DE0, &unk_1004C66D0);
    v4 = sub_1004BACB4();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_1004BAD04();
      sub_1000B870C(&qword_100602788, &type metadata accessor for MusicVideo, &protocol conformance descriptor for MusicVideo);

      sub_1004BABD4();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_1000A8C24;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000A8C24()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1000A8F84;
  }

  else
  {

    v2 = sub_1000A8D40;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000A8D40()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_1004BAC04();
  sub_10009F2A4(&qword_100602770, &qword_1004CB608, &qword_1006029C8, &type metadata accessor for MusicVideo, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_100007214(v12, &qword_100601E88, &qword_1004CB610);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    sub_1004BACD4();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000A8F84(uint64_t a1, uint64_t a2)
{
  v23 = v2;
  if (qword_1005FFD50 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B80B4();
  sub_100007084(v3, qword_1006026E8);

  swift_errorRetain();
  v4 = sub_1004B8094();
  v5 = sub_1004BC984();

  if (os_log_type_enabled(v4, v5))
  {
    v19 = v2[14];
    v20 = v2[13];
    v21 = v2[15];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v6 = 136446466;
    v9 = sub_1004BAD14();
    v11 = v10;

    v12 = sub_100012018(v9, v11, &v22);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to get share URL for music video catalogID: %{public}s: %{public}@", v6, 0x16u);
    sub_100007214(v7, &qword_100602710, &qword_1004CB540);

    sub_100004C6C(v8);

    (*(v19 + 8))(v21, v20);
  }

  else
  {
    v15 = v2[14];
    v14 = v2[15];
    v16 = v2[13];

    (*(v15 + 8))(v14, v16);
  }

  (*(v2[18] + 56))(v2[4], 1, 1, v2[17]);

  v17 = v2[1];

  return v17();
}

uint64_t sub_1000A9280(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001384C;

  return MusicVideo.shareURL.getter(a1);
}

uint64_t sub_1000A9318(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000A93B4, 0, 0);
}

uint64_t sub_1000A93B4()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1000A6C20;
  v2 = *(v0 + 32);

  return MusicVideo.shareURL.getter(v2);
}

uint64_t Playlist.failureMessage.getter()
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

uint64_t Playlist.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100003ABC(&qword_100602790, &qword_1004CB658);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_100003ABC(&qword_100603CB0, &qword_1004CB660);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = sub_100003ABC(&qword_100602798, &qword_1004CB668);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = sub_100003ABC(&qword_1006027A0, &qword_1004CB670);
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_1000A9850, 0, 0);
}

uint64_t sub_1000A9850()
{
  v1 = v0[17];
  sub_1004BB984();
  v2 = sub_1004B6B04();
  v0[18] = v2;
  v3 = *(v2 - 8);
  v0[19] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100007214(v0[17], &qword_100600DE0, &unk_1004C66D0);
    v4 = sub_1004BB944();
    v0[20] = v4;
    v0[21] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[22] = sub_1004BBA84();
      sub_1000B870C(&qword_1006027A8, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);

      sub_1004BABD4();
      v8 = swift_task_alloc();
      v0[23] = v8;
      *v8 = v0;
      v8[1] = sub_1000A9B64;
      v9 = v0[13];
      v10 = v0[14];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    else
    {
      v13 = swift_task_alloc();
      v0[25] = v13;
      *v13 = v0;
      v13[1] = sub_1000A9ED0;
      v14 = v0[9];

      return Playlist.publish()(v14);
    }
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[17], v2);
    (*(v3 + 56))(v11, 0, 1, v2);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1000A9B64()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1000AA14C;
  }

  else
  {

    v2 = sub_1000A9C80;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000A9C80()
{
  v1 = v0[22];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_1004BAC04();
  sub_10009F2A4(&qword_100602790, &qword_1004CB658, &qword_1006029C0, &type metadata accessor for Playlist, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[18];
    v8 = v0[19];
    v10 = v0[15];
    v9 = v0[16];
    v11 = v0[14];
    v12 = v0[10];
    v13 = v0[4];
    (*(v0[12] + 8))(v0[13], v0[11]);
    (*(v10 + 8))(v9, v11);
    sub_100007214(v12, &qword_100603CB0, &qword_1004CB660);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[22];
    v16 = v0[15];
    v15 = v0[16];
    v18 = v0[13];
    v17 = v0[14];
    v19 = v0[11];
    v20 = v0[12];
    v21 = v0[10];
    sub_1004BB984();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000A9ED0()
{

  return _swift_task_switch(sub_1000A9FCC, 0, 0);
}

uint64_t sub_1000A9FCC()
{
  v1 = v0[9];
  v2 = sub_1004BBA84();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[18];
    v5 = v0[19];
    v6 = v0[4];
    sub_100007214(v1, &qword_100603CB0, &qword_1004CB660);
    (*(v5 + 56))(v6, 1, 1, v4);
  }

  else
  {
    sub_1004BB984();
    (*(v3 + 8))(v1, v2);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000AA14C(uint64_t a1, uint64_t a2)
{
  v23 = v2;
  if (qword_1005FFD50 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B80B4();
  sub_100007084(v3, qword_1006026E8);

  swift_errorRetain();
  v4 = sub_1004B8094();
  v5 = sub_1004BC984();

  if (os_log_type_enabled(v4, v5))
  {
    v19 = v2[15];
    v20 = v2[14];
    v21 = v2[16];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v6 = 136446466;
    v9 = sub_1004BAD14();
    v11 = v10;

    v12 = sub_100012018(v9, v11, &v22);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to get share URL for playlist catalogID: %{public}s: %{public}@", v6, 0x16u);
    sub_100007214(v7, &qword_100602710, &qword_1004CB540);

    sub_100004C6C(v8);

    (*(v19 + 8))(v21, v20);
  }

  else
  {
    v15 = v2[15];
    v14 = v2[16];
    v16 = v2[14];

    (*(v15 + 8))(v14, v16);
  }

  (*(v2[19] + 56))(v2[4], 1, 1, v2[18]);

  v17 = v2[1];

  return v17();
}

uint64_t Playlist.publish()(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1004BBA84();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_100003ABC(&qword_1006027B0, &qword_1004CB6A8);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_100003ABC(&qword_1006027B8, &qword_1004CB6B0);
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  sub_100003ABC(&qword_1006027C0, &qword_1004CB6B8);
  v2[14] = swift_task_alloc();
  v6 = sub_100003ABC(&qword_100603CE0, &unk_1004CB6C0);
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_1000AA668, 0, 0);
}

uint64_t sub_1000AA668()
{
  v1 = v0[14];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = sub_1004BB6F4();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_1004B7944();
  sub_100007214(v1, &qword_1006027C0, &qword_1004CB6B8);
  (*(v3 + 104))(v2, enum case for MusicLibraryPlaylistRequest.CompletionPolicy.afterCloudLibraryChanges<A>(_:), v4);
  sub_1004B7934();
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_1000AA7E4;
  v7 = v0[10];

  return MusicLibraryPlaylistRequest.response<>()(v7);
}

uint64_t sub_1000AA7E4()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1000AAA18;
  }

  else
  {
    v2 = sub_1000AA8F8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000AA8F8()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  sub_1004B7984();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  (*(v8 + 56))(v9, 0, 1, v7);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000AAA18(uint64_t a1, uint64_t a2)
{
  v32 = v2;
  if (qword_1005FFD50 != -1)
  {
    swift_once();
  }

  v4 = v2[6];
  v3 = v2[7];
  v6 = v2[4];
  v5 = v2[5];
  v7 = sub_1004B80B4();
  sub_100007084(v7, qword_1006026E8);
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v8 = sub_1004B8094();
  v9 = sub_1004BC984();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v2[19];
  v13 = v2[16];
  v12 = v2[17];
  v14 = v2[15];
  v16 = v2[6];
  v15 = v2[7];
  v17 = v2[5];
  if (v10)
  {
    v28 = v9;
    v18 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v18 = 136446466;
    sub_1000B870C(&qword_100603C30, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    v29 = v14;
    v30 = v12;
    v19 = sub_1004BD934();
    v21 = v20;
    (*(v16 + 8))(v15, v17);
    v22 = sub_100012018(v19, v21, &v31);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    v2[2] = v11;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v23 = sub_1004BBF04();
    v25 = sub_100012018(v23, v24, &v31);

    *(v18 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v8, v28, "Failed to make playlist=%{public}s public with error=%{public}s", v18, 0x16u);
    swift_arrayDestroy();

    (*(v13 + 8))(v30, v29);
  }

  else
  {

    (*(v16 + 8))(v15, v17);
    (*(v13 + 8))(v12, v14);
  }

  (*(v2[6] + 56))(v2[3], 1, 1, v2[5]);

  v26 = v2[1];

  return v26();
}

uint64_t sub_1000AAD60(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001384C;

  return Playlist.shareURL.getter(a1);
}

uint64_t sub_1000AAE10(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000AAEAC, 0, 0);
}

uint64_t sub_1000AAEAC()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1000A6C20;
  v2 = *(v0 + 32);

  return Playlist.shareURL.getter(v2);
}

uint64_t sub_1000AAF58(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000AAF78, 0, 0);
}

uint64_t sub_1000AAF78()
{
  sub_1004BBA94();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000AAFD8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001384C;

  return sub_1000A370C(a1);
}

uint64_t RecordLabel.failureMessage.getter()
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

uint64_t sub_1000AB268(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000AB288, 0, 0);
}

uint64_t sub_1000AB288()
{
  sub_1004BB1E4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000AB300(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001384C;

  return sub_1000A38D0(a1);
}

uint64_t SocialProfile.failureMessage.getter()
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

uint64_t sub_1000AB590(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000AB5B0, 0, 0);
}

uint64_t sub_1000AB5B0()
{
  sub_1004B7AF4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000AB628(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001384C;

  return sub_1000A3A94(a1);
}

uint64_t Song.failureMessage.getter()
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

uint64_t Song.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100003ABC(&qword_1006027C8, &qword_1004CB6D8);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_100003ABC(&qword_100601E90, &qword_1004CB6E0);
  v2[9] = swift_task_alloc();
  v4 = sub_100003ABC(&qword_1006027D0, &qword_1004CB6E8);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_100003ABC(&qword_1006027D8, &qword_1004CB6F0);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000ABAC0, 0, 0);
}

uint64_t sub_1000ABAC0()
{
  v1 = v0[16];
  sub_1004BB334();
  v2 = sub_1004B6B04();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100007214(v0[16], &qword_100600DE0, &unk_1004C66D0);
    v4 = sub_1004BB2B4();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_1004BB384();
      sub_1000B870C(&qword_1006027E0, &type metadata accessor for Song, &protocol conformance descriptor for Song);

      sub_1004BABD4();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_1000ABD60;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000ABD60()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1000AC0C0;
  }

  else
  {

    v2 = sub_1000ABE7C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000ABE7C()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_1004BAC04();
  sub_10009F2A4(&qword_1006027C8, &qword_1004CB6D8, &qword_1006029B8, &type metadata accessor for Song, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_100007214(v12, &qword_100601E90, &qword_1004CB6E0);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    sub_1004BB334();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000AC0C0(uint64_t a1, uint64_t a2)
{
  v23 = v2;
  if (qword_1005FFD50 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B80B4();
  sub_100007084(v3, qword_1006026E8);

  swift_errorRetain();
  v4 = sub_1004B8094();
  v5 = sub_1004BC984();

  if (os_log_type_enabled(v4, v5))
  {
    v19 = v2[14];
    v20 = v2[13];
    v21 = v2[15];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v6 = 136446466;
    v9 = sub_1004BAD14();
    v11 = v10;

    v12 = sub_100012018(v9, v11, &v22);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to get share URL for song catalogID: %{public}s: %{public}@", v6, 0x16u);
    sub_100007214(v7, &qword_100602710, &qword_1004CB540);

    sub_100004C6C(v8);

    (*(v19 + 8))(v21, v20);
  }

  else
  {
    v15 = v2[14];
    v14 = v2[15];
    v16 = v2[13];

    (*(v15 + 8))(v14, v16);
  }

  (*(v2[18] + 56))(v2[4], 1, 1, v2[17]);

  v17 = v2[1];

  return v17();
}

uint64_t sub_1000AC3B8@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_100009178(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t Song.augmentMetadata(_:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_1004BB234();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_1004B7A54();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_1004B7A74();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v6 = sub_100003ABC(&qword_1006027C8, &qword_1004CB6D8);
  v2[17] = v6;
  v2[18] = *(v6 - 8);
  v2[19] = swift_task_alloc();
  sub_100003ABC(&qword_100601E90, &qword_1004CB6E0);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v7 = sub_100003ABC(&qword_1006027D0, &qword_1004CB6E8);
  v2[24] = v7;
  v2[25] = *(v7 - 8);
  v2[26] = swift_task_alloc();
  v8 = sub_100003ABC(&qword_1006027D8, &qword_1004CB6F0);
  v2[27] = v8;
  v2[28] = *(v8 - 8);
  v2[29] = swift_task_alloc();

  return _swift_task_switch(sub_1000AC760, 0, 0);
}

uint64_t sub_1000AC760(uint64_t a1)
{
  v2 = sub_1004BB2B4();
  *(v1 + 240) = v2;
  *(v1 + 248) = v3;
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = **(v1 + 32);
    *(v1 + 256) = v6;
    v7 = [v6 specialization];
    *(v1 + 264) = v7;
    if (v7)
    {
      v8 = v7;
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      *(v1 + 272) = v9;
      if (v9)
      {
        swift_getKeyPath();
        *(v1 + 16) = v4;
        *(v1 + 24) = v5;
        *(v1 + 280) = sub_1004BB384();
        sub_1000B870C(&qword_1006027E0, &type metadata accessor for Song, &protocol conformance descriptor for Song);

        sub_1004BABD4();
        sub_100003ABC(&qword_100603C50, &unk_1004CB550);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_1004C4D40;
        sub_100003ABC(&qword_1006027E8, &qword_1004CB728);
        *(v10 + 32) = sub_1004BA9E4();
        sub_1004BABC4();
        v11 = swift_task_alloc();
        *(v1 + 288) = v11;
        *v11 = v1;
        v11[1] = sub_1000ACA44;
        v12 = *(v1 + 208);
        v13 = *(v1 + 216);

        return MusicCatalogResourceRequest.response()(v12, v13);
      }
    }
  }

  v14 = *(v1 + 8);

  return v14();
}

uint64_t sub_1000ACA44()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_1000AD2F0;
  }

  else
  {

    v2 = sub_1000ACB60;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000ACB60()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 184);
  v3 = *(v0 + 176);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 136);
  sub_1004BAC04();
  sub_10009F2A4(&qword_1006027C8, &qword_1004CB6D8, &qword_1006029B8, &type metadata accessor for Song, v2);
  (*(v5 + 8))(v4, v6);
  sub_10000F778(v2, v3, &qword_100601E90, &qword_1004CB6E0);
  v7 = *(v1 - 8);
  v8 = *(v7 + 48);
  if (v8(v3, 1, v1) == 1)
  {
    v9 = *(v0 + 128);
    sub_100007214(*(v0 + 176), &qword_100601E90, &qword_1004CB6E0);
    v10 = sub_1004B6B04();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = 0;
  }

  else
  {
    v12 = *(v0 + 280);
    v13 = *(v0 + 176);
    v14 = *(v0 + 128);
    sub_1004BB334();
    (*(v7 + 8))(v13, v12);
    v15 = sub_1004B6B04();
    v16 = *(v15 - 8);
    v11 = 0;
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      v18 = *(v0 + 128);
      sub_1004B6A44(v17);
      v11 = v19;
      (*(v16 + 8))(v18, v15);
    }
  }

  v20 = *(v0 + 280);
  v21 = *(v0 + 184);
  v22 = *(v0 + 168);
  [*(v0 + 256) setOriginalURL:v11];

  sub_10000F778(v21, v22, &qword_100601E90, &qword_1004CB6E0);
  if (v8(v22, 1, v20) == 1)
  {
    sub_100007214(*(v0 + 168), &qword_100601E90, &qword_1004CB6E0);
    isa = 0;
  }

  else
  {
    v24 = *(v0 + 280);
    v25 = *(v0 + 168);
    v26 = sub_1004BB2A4();
    (*(v7 + 8))(v25, v24);
    if (v26)
    {
      v27 = *(v26 + 16);
      if (v27)
      {
        v71 = v8;
        v72 = v7;
        v28 = *(v0 + 104);
        v29 = *(v0 + 80);
        sub_100015080(0, v27, 0);
        v30 = *(v28 + 16);
        v28 += 16;
        v70 = v26;
        v31 = v26 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
        v75 = *(v28 + 56);
        v76 = v30;
        v77 = v0;
        v73 = (v28 - 8);
        v74 = (v29 + 8);
        do
        {
          v32 = *(v0 + 112);
          v33 = *(v0 + 88);
          v34 = *(v0 + 96);
          v35 = *(v0 + 72);
          v76(v32, v31, v34);
          sub_1004B7A64();
          v36 = sub_1004B7A44();
          v38 = v37;
          (*v74)(v33, v35);
          (*v73)(v32, v34);
          v40 = _swiftEmptyArrayStorage[2];
          v39 = _swiftEmptyArrayStorage[3];
          if (v40 >= v39 >> 1)
          {
            sub_100015080((v39 > 1), v40 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v40 + 1;
          v41 = &_swiftEmptyArrayStorage[2 * v40];
          v41[4] = v36;
          v41[5] = v38;
          v31 += v75;
          --v27;
          v0 = v77;
        }

        while (v27);

        v7 = v72;
        v8 = v71;
      }

      else
      {
      }

      isa = sub_1004BC284().super.isa;
    }

    else
    {
      isa = 0;
    }
  }

  v42 = *(v0 + 280);
  v43 = *(v0 + 184);
  v44 = *(v0 + 160);
  [*(v0 + 272) setOffers:{isa, v70}];

  sub_10000F778(v43, v44, &qword_100601E90, &qword_1004CB6E0);
  if (v8(v44, 1, v42) == 1)
  {
    sub_100007214(*(v0 + 160), &qword_100601E90, &qword_1004CB6E0);
LABEL_24:
    v58 = *(v0 + 120);
    v59 = sub_1004B6B04();
    (*(*(v59 - 8) + 56))(v58, 1, 1, v59);
    v55 = 0;
    goto LABEL_25;
  }

  v45 = *(v0 + 280);
  v46 = *(v0 + 160);
  v47 = sub_1004BB304();
  (*(v7 + 8))(v46, v45);
  if (!v47)
  {
    goto LABEL_24;
  }

  if (!*(v47 + 16))
  {

    goto LABEL_24;
  }

  v48 = *(v0 + 120);
  v50 = *(v0 + 56);
  v49 = *(v0 + 64);
  v51 = *(v0 + 48);
  (*(v50 + 16))(v49, v47 + ((*(v50 + 80) + 32) & ~*(v50 + 80)), v51);

  sub_1004BB224();
  (*(v50 + 8))(v49, v51);
  v52 = sub_1004B6B04();
  v53 = *(v52 - 8);
  v55 = 0;
  if ((*(v53 + 48))(v48, 1, v52) != 1)
  {
    v56 = *(v0 + 120);
    sub_1004B6A44(v54);
    v55 = v57;
    (*(v53 + 8))(v56, v52);
  }

LABEL_25:
  v60 = *(v0 + 264);
  v61 = *(v0 + 224);
  v62 = *(v0 + 232);
  v64 = *(v0 + 208);
  v63 = *(v0 + 216);
  v65 = *(v0 + 192);
  v66 = *(v0 + 200);
  v67 = *(v0 + 184);
  [*(v0 + 272) setPreviewURL:v55];

  sub_100007214(v67, &qword_100601E90, &qword_1004CB6E0);
  (*(v66 + 8))(v64, v65);
  (*(v61 + 8))(v62, v63);

  v68 = *(v0 + 8);

  return v68();
}

uint64_t sub_1000AD2F0(uint64_t a1, uint64_t a2)
{
  v24 = v2;
  if (qword_1005FFD50 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B80B4();
  sub_100007084(v3, qword_1006026E8);

  swift_errorRetain();
  v4 = sub_1004B8094();
  v5 = sub_1004BC984();

  if (os_log_type_enabled(v4, v5))
  {
    v19 = *(v2 + 264);
    v20 = *(v2 + 224);
    v21 = *(v2 + 216);
    v22 = *(v2 + 232);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v6 = 136446466;
    v9 = sub_1004BAD14();
    v11 = v10;

    v12 = sub_100012018(v9, v11, &v23);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to get share URL and offers for song catalogID: %{public}s: %{public}@", v6, 0x16u);
    sub_100007214(v7, &qword_100602710, &qword_1004CB540);

    sub_100004C6C(v8);

    (*(v20 + 8))(v22, v21);
  }

  else
  {
    v15 = *(v2 + 224);
    v14 = *(v2 + 232);
    v16 = *(v2 + 216);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v2 + 8);

  return v17();
}

uint64_t sub_1000AD614(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001384C;

  return Song.shareURL.getter(a1);
}

uint64_t sub_1000AD6C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001384C;

  return Song.augmentMetadata(_:)(a1);
}

uint64_t Station.failureMessage.getter()
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

uint64_t Station.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100003ABC(&qword_1006027F0, &qword_1004CB738);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_100003ABC(&unk_100606170, &qword_1004CB740);
  v2[9] = swift_task_alloc();
  v4 = sub_100003ABC(&qword_1006027F8, &qword_1004CB748);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_100003ABC(&qword_100602800, &qword_1004CB750);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000ADB4C, 0, 0);
}

uint64_t sub_1000ADB4C()
{
  v1 = v0[16];
  sub_1004BB724();
  v2 = sub_1004B6B04();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100007214(v0[16], &qword_100600DE0, &unk_1004C66D0);
    v4 = _s8MusicKit7StationV0A4CoreE9catalogIDAA0a4ItemF0VSgvg_0();
    v6 = v5;
    v0[19] = v4;
    v0[20] = v5;
    swift_getKeyPath();
    v0[2] = v4;
    v0[3] = v6;
    v0[21] = sub_1004BB744();
    sub_1000B870C(&qword_100602808, &type metadata accessor for Station, &protocol conformance descriptor for Station);

    sub_1004BABD4();
    v7 = swift_task_alloc();
    v0[22] = v7;
    *v7 = v0;
    v7[1] = sub_1000ADDD0;
    v8 = v0[12];
    v9 = v0[13];

    return MusicCatalogResourceRequest.response()(v8, v9);
  }

  else
  {
    v10 = v0[4];
    (*(v3 + 32))(v10, v0[16], v2);
    (*(v3 + 56))(v10, 0, 1, v2);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1000ADDD0()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1000AE130;
  }

  else
  {

    v2 = sub_1000ADEEC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000ADEEC()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_1004BAC04();
  sub_10009F2A4(&qword_1006027F0, &qword_1004CB738, &qword_1006029B0, &type metadata accessor for Station, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_100007214(v12, &unk_100606170, &qword_1004CB740);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    sub_1004BB724();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000AE130(uint64_t a1, uint64_t a2)
{
  v23 = v2;
  if (qword_1005FFD50 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B80B4();
  sub_100007084(v3, qword_1006026E8);

  swift_errorRetain();
  v4 = sub_1004B8094();
  v5 = sub_1004BC984();

  if (os_log_type_enabled(v4, v5))
  {
    v19 = v2[14];
    v20 = v2[13];
    v21 = v2[15];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v6 = 136446466;
    v9 = sub_1004BAD14();
    v11 = v10;

    v12 = sub_100012018(v9, v11, &v22);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to get share URL for station catalogID: %{public}s: %{public}@", v6, 0x16u);
    sub_100007214(v7, &qword_100602710, &qword_1004CB540);

    sub_100004C6C(v8);

    (*(v19 + 8))(v21, v20);
  }

  else
  {
    v15 = v2[14];
    v14 = v2[15];
    v16 = v2[13];

    (*(v15 + 8))(v14, v16);
  }

  (*(v2[18] + 56))(v2[4], 1, 1, v2[17]);

  v17 = v2[1];

  return v17();
}

uint64_t sub_1000AE414(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001384C;

  return Station.shareURL.getter(a1);
}

uint64_t sub_1000AE4C4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000AE560, 0, 0);
}

uint64_t sub_1000AE560()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1000A6C20;
  v2 = *(v0 + 32);

  return Station.shareURL.getter(v2);
}

uint64_t Track.failureMessage.getter()
{
  sub_1004B6E64();
  __chkstk_darwin();
  v1 = sub_1004BBE14();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v16[-v5];
  v7 = sub_1004BB4D4();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin();
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 16))(v11, v0, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == enum case for Track.song(_:) || v12 == enum case for Track.musicVideo(_:))
  {
    (*(v8 + 8))(v11, v7);
    sub_1004BBDA4();
    (*(v2 + 16))(v4, v6, v1);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v13 = qword_100617118;
    sub_1004B6DF4();
    v14 = sub_1004BBED4();
    (*(v2 + 8))(v6, v1);
  }

  else
  {
    v14 = Track.failureMessage.getter();
    (*(v8 + 8))(v11, v7);
  }

  return v14;
}

uint64_t Track.shareURL.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1004BB384();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_1004BAD04();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_1004BB4D4();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000AEAC0, 0, 0);
}

uint64_t sub_1000AEAC0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for Track.song(_:))
  {
    v5 = v0[12];
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[4];
    (*(v0[11] + 96))(v5, v0[10]);
    (*(v7 + 32))(v6, v5, v8);
    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v9[1] = sub_1000AEEFC;
    v10 = v0[2];

    return Song.shareURL.getter(v10);
  }

  else if (v4 == enum case for Track.musicVideo(_:))
  {
    v12 = v0[12];
    v13 = v0[9];
    v14 = v0[7];
    v15 = v0[8];
    (*(v0[11] + 96))(v12, v0[10]);
    (*(v15 + 32))(v13, v12, v14);
    v16 = swift_task_alloc();
    v0[13] = v16;
    *v16 = v0;
    v16[1] = sub_1000AED68;
    v17 = v0[2];

    return MusicVideo.shareURL.getter(v17);
  }

  else
  {
    v18 = v0[2];
    v19 = sub_1004B6B04();
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    (*(v0[11] + 8))(v0[12], v0[10]);

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_1000AED68()
{

  return _swift_task_switch(sub_1000AEE64, 0, 0);
}

uint64_t sub_1000AEE64()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000AEEFC()
{

  return _swift_task_switch(sub_1000AEFF8, 0, 0);
}

uint64_t sub_1000AEFF8()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000AF098(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001384C;

  return Track.shareURL.getter(a1);
}

uint64_t sub_1000AF134(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000AF1D0, 0, 0);
}

uint64_t sub_1000AF1D0()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1000A6C20;
  v2 = *(v0 + 32);

  return Track.shareURL.getter(v2);
}

uint64_t TVEpisode.failureMessage.getter()
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

uint64_t TVEpisode.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100003ABC(&qword_100602810, &qword_1004CB790);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_100003ABC(&qword_100602818, &qword_1004CB798);
  v2[9] = swift_task_alloc();
  v4 = sub_100003ABC(&qword_100602820, &qword_1004CB7A0);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_100003ABC(&qword_100602828, &qword_1004CB7A8);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000AF660, 0, 0);
}

uint64_t sub_1000AF660()
{
  v1 = v0[16];
  sub_1004B7CC4();
  v2 = sub_1004B6B04();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100007214(v0[16], &qword_100600DE0, &unk_1004C66D0);
    v4 = sub_1004B7CE4();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_1004B7CF4();
      sub_1000B870C(&qword_100602830, &type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
      sub_1000B870C(&qword_100602838, &type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);

      sub_1004BABD4();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_1000AF934;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000AF934()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1000AFC94;
  }

  else
  {

    v2 = sub_1000AFA50;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000AFA50()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_1004BAC04();
  sub_10009F2A4(&qword_100602810, &qword_1004CB790, &qword_1006029A8, &type metadata accessor for TVEpisode, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_100007214(v12, &qword_100602818, &qword_1004CB798);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    sub_1004B7CC4();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000AFC94(uint64_t a1, uint64_t a2)
{
  v23 = v2;
  if (qword_1005FFD50 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B80B4();
  sub_100007084(v3, qword_1006026E8);

  swift_errorRetain();
  v4 = sub_1004B8094();
  v5 = sub_1004BC984();

  if (os_log_type_enabled(v4, v5))
  {
    v19 = v2[14];
    v20 = v2[13];
    v21 = v2[15];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v6 = 136446466;
    v9 = sub_1004BAD14();
    v11 = v10;

    v12 = sub_100012018(v9, v11, &v22);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to get share URL for TVEpisode catalogID: %{public}s: %{public}@", v6, 0x16u);
    sub_100007214(v7, &qword_100602710, &qword_1004CB540);

    sub_100004C6C(v8);

    (*(v19 + 8))(v21, v20);
  }

  else
  {
    v15 = v2[14];
    v14 = v2[15];
    v16 = v2[13];

    (*(v15 + 8))(v14, v16);
  }

  (*(v2[18] + 56))(v2[4], 1, 1, v2[17]);

  v17 = v2[1];

  return v17();
}

uint64_t sub_1000AFF78(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001384C;

  return TVEpisode.shareURL.getter(a1);
}

uint64_t sub_1000B0028(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000B00C4, 0, 0);
}

uint64_t sub_1000B00C4()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1000A6C20;
  v2 = *(v0 + 32);

  return TVEpisode.shareURL.getter(v2);
}

uint64_t TVSeason.failureMessage.getter()
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

uint64_t TVSeason.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100003ABC(&qword_100602840, &qword_1004CB7E0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_100003ABC(&qword_100602848, &qword_1004CB7E8);
  v2[9] = swift_task_alloc();
  v4 = sub_100003ABC(&qword_100602850, &qword_1004CB7F0);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_100003ABC(&qword_100602858, &qword_1004CB7F8);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000B0554, 0, 0);
}

uint64_t sub_1000B0554()
{
  v1 = v0[16];
  sub_1004B7C64();
  v2 = sub_1004B6B04();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100007214(v0[16], &qword_100600DE0, &unk_1004C66D0);
    v4 = sub_1004B7C84();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_1004B7C94();
      sub_1000B870C(&qword_100602860, &type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
      sub_1000B870C(&qword_100602868, &type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);

      sub_1004BABD4();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_1000B0828;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000B0828()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1000B0B88;
  }

  else
  {

    v2 = sub_1000B0944;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000B0944()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_1004BAC04();
  sub_10009F2A4(&qword_100602840, &qword_1004CB7E0, &qword_1006029A0, &type metadata accessor for TVSeason, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_100007214(v12, &qword_100602848, &qword_1004CB7E8);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    sub_1004B7C64();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000B0B88(uint64_t a1, uint64_t a2)
{
  v23 = v2;
  if (qword_1005FFD50 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B80B4();
  sub_100007084(v3, qword_1006026E8);

  swift_errorRetain();
  v4 = sub_1004B8094();
  v5 = sub_1004BC984();

  if (os_log_type_enabled(v4, v5))
  {
    v19 = v2[14];
    v20 = v2[13];
    v21 = v2[15];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v6 = 136446466;
    v9 = sub_1004BAD14();
    v11 = v10;

    v12 = sub_100012018(v9, v11, &v22);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to get share URL for TVSeason catalogID: %{public}s: %{public}@", v6, 0x16u);
    sub_100007214(v7, &qword_100602710, &qword_1004CB540);

    sub_100004C6C(v8);

    (*(v19 + 8))(v21, v20);
  }

  else
  {
    v15 = v2[14];
    v14 = v2[15];
    v16 = v2[13];

    (*(v15 + 8))(v14, v16);
  }

  (*(v2[18] + 56))(v2[4], 1, 1, v2[17]);

  v17 = v2[1];

  return v17();
}

uint64_t sub_1000B0E6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001384C;

  return TVSeason.shareURL.getter(a1);
}

uint64_t sub_1000B0F1C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000B0FB8, 0, 0);
}

uint64_t sub_1000B0FB8()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1000A6C20;
  v2 = *(v0 + 32);

  return TVSeason.shareURL.getter(v2);
}

uint64_t sub_1000B1060()
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

uint64_t TVShow.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100003ABC(&qword_100602870, &unk_1004CB830);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_100003ABC(&qword_100602878, &unk_1004D0B00);
  v2[9] = swift_task_alloc();
  v4 = sub_100003ABC(&qword_100602880, &qword_1004CB840);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_100003ABC(&qword_100602888, &qword_1004CB848);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000B144C, 0, 0);
}

uint64_t sub_1000B144C()
{
  v1 = v0[16];
  sub_1004B7C04();
  v2 = sub_1004B6B04();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100007214(v0[16], &qword_100600DE0, &unk_1004C66D0);
    v4 = sub_1004B7C24();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_1004B7C34();
      sub_1000B870C(&qword_100602890, &type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
      sub_1000B870C(&qword_100602898, &type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);

      sub_1004BABD4();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_1000B1720;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000B1720()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1000B1A80;
  }

  else
  {

    v2 = sub_1000B183C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000B183C()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_1004BAC04();
  sub_10009F2A4(&qword_100602870, &unk_1004CB830, &qword_100602998, &type metadata accessor for TVShow, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_100007214(v12, &qword_100602878, &unk_1004D0B00);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    sub_1004B7C04();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000B1A80(uint64_t a1, uint64_t a2)
{
  v23 = v2;
  if (qword_1005FFD50 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B80B4();
  sub_100007084(v3, qword_1006026E8);

  swift_errorRetain();
  v4 = sub_1004B8094();
  v5 = sub_1004BC984();

  if (os_log_type_enabled(v4, v5))
  {
    v19 = v2[14];
    v20 = v2[13];
    v21 = v2[15];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v6 = 136446466;
    v9 = sub_1004BAD14();
    v11 = v10;

    v12 = sub_100012018(v9, v11, &v22);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to get share URL for TVShow catalogID: %{public}s: %{public}@", v6, 0x16u);
    sub_100007214(v7, &qword_100602710, &qword_1004CB540);

    sub_100004C6C(v8);

    (*(v19 + 8))(v21, v20);
  }

  else
  {
    v15 = v2[14];
    v14 = v2[15];
    v16 = v2[13];

    (*(v15 + 8))(v14, v16);
  }

  (*(v2[18] + 56))(v2[4], 1, 1, v2[17]);

  v17 = v2[1];

  return v17();
}

uint64_t sub_1000B1D64(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001384C;

  return TVShow.shareURL.getter(a1);
}

uint64_t sub_1000B1E14(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000B1EB0, 0, 0);
}

uint64_t sub_1000B1EB0()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1000A6C20;
  v2 = *(v0 + 32);

  return TVShow.shareURL.getter(v2);
}

uint64_t UploadedAudio.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100003ABC(&qword_1006028A0, &qword_1004CB880);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_100003ABC(&qword_1006028A8, &qword_1004CB888);
  v2[9] = swift_task_alloc();
  v4 = sub_100003ABC(&qword_1006028B0, &qword_1004CB890);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_100003ABC(&qword_1006028B8, &qword_1004CB898);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000B2160, 0, 0);
}

uint64_t sub_1000B2160()
{
  v1 = v0[16];
  _s16MusicKitInternal13UploadedAudioV0A4CoreE3url10Foundation3URLVSgvg_0();
  v2 = sub_1004B6B04();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100007214(v0[16], &qword_100600DE0, &unk_1004C66D0);
    v4 = sub_1004B7B54();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_1004B7B64();
      sub_1000B870C(&qword_1006028C0, &type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
      sub_1000B870C(&qword_1006028C8, &type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);

      sub_1004BABD4();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_1000B2434;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000B2434()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1000B2794;
  }

  else
  {

    v2 = sub_1000B2550;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000B2550()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_1004BAC04();
  sub_10009F2A4(&qword_1006028A0, &qword_1004CB880, &qword_100602990, &type metadata accessor for UploadedAudio, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_100007214(v12, &qword_1006028A8, &qword_1004CB888);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    _s16MusicKitInternal13UploadedAudioV0A4CoreE3url10Foundation3URLVSgvg_0();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000B2794(uint64_t a1, uint64_t a2)
{
  v23 = v2;
  if (qword_1005FFD50 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B80B4();
  sub_100007084(v3, qword_1006026E8);

  swift_errorRetain();
  v4 = sub_1004B8094();
  v5 = sub_1004BC984();

  if (os_log_type_enabled(v4, v5))
  {
    v19 = v2[14];
    v20 = v2[13];
    v21 = v2[15];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v6 = 136446466;
    v9 = sub_1004BAD14();
    v11 = v10;

    v12 = sub_100012018(v9, v11, &v22);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to get share URL for uploaded audio catalogID: %{public}s: %{public}@", v6, 0x16u);
    sub_100007214(v7, &qword_100602710, &qword_1004CB540);

    sub_100004C6C(v8);

    (*(v19 + 8))(v21, v20);
  }

  else
  {
    v15 = v2[14];
    v14 = v2[15];
    v16 = v2[13];

    (*(v15 + 8))(v14, v16);
  }

  (*(v2[18] + 56))(v2[4], 1, 1, v2[17]);

  v17 = v2[1];

  return v17();
}

uint64_t sub_1000B2A78(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001384C;

  return UploadedAudio.shareURL.getter(a1);
}

uint64_t sub_1000B2B10(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000B2BAC, 0, 0);
}

uint64_t sub_1000B2BAC()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1000A6C20;
  v2 = *(v0 + 32);

  return UploadedAudio.shareURL.getter(v2);
}

uint64_t sub_1000B2C54()
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

uint64_t UploadedVideo.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100003ABC(&qword_1006028D0, &qword_1004CB8D0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_100003ABC(&qword_1006028D8, &qword_1004CB8D8);
  v2[9] = swift_task_alloc();
  v4 = sub_100003ABC(&qword_1006028E0, &qword_1004CB8E0);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_100003ABC(&qword_1006028E8, &qword_1004CB8E8);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000B3040, 0, 0);
}

uint64_t sub_1000B3040()
{
  v1 = v0[16];
  _s16MusicKitInternal13UploadedVideoV0A4CoreE3url10Foundation3URLVSgvg_0();
  v2 = sub_1004B6B04();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100007214(v0[16], &qword_100600DE0, &unk_1004C66D0);
    v4 = sub_1004B7BA4();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_1004B7BB4();
      sub_1000B870C(&qword_1006028F0, &type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
      sub_1000B870C(&qword_1006028F8, &type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);

      sub_1004BABD4();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_1000B3314;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000B3314()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1000B3674;
  }

  else
  {

    v2 = sub_1000B3430;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000B3430()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_1004BAC04();
  sub_10009F2A4(&qword_1006028D0, &qword_1004CB8D0, &qword_100602988, &type metadata accessor for UploadedVideo, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_100007214(v12, &qword_1006028D8, &qword_1004CB8D8);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    _s16MusicKitInternal13UploadedVideoV0A4CoreE3url10Foundation3URLVSgvg_0();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000B3674(uint64_t a1, uint64_t a2)
{
  v23 = v2;
  if (qword_1005FFD50 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B80B4();
  sub_100007084(v3, qword_1006026E8);

  swift_errorRetain();
  v4 = sub_1004B8094();
  v5 = sub_1004BC984();

  if (os_log_type_enabled(v4, v5))
  {
    v19 = v2[14];
    v20 = v2[13];
    v21 = v2[15];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v6 = 136446466;
    v9 = sub_1004BAD14();
    v11 = v10;

    v12 = sub_100012018(v9, v11, &v22);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to get share URL for uploaded video catalogID: %{public}s: %{public}@", v6, 0x16u);
    sub_100007214(v7, &qword_100602710, &qword_1004CB540);

    sub_100004C6C(v8);

    (*(v19 + 8))(v21, v20);
  }

  else
  {
    v15 = v2[14];
    v14 = v2[15];
    v16 = v2[13];

    (*(v15 + 8))(v14, v16);
  }

  (*(v2[18] + 56))(v2[4], 1, 1, v2[17]);

  v17 = v2[1];

  return v17();
}

uint64_t sub_1000B3958(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001384C;

  return UploadedVideo.shareURL.getter(a1);
}

uint64_t sub_1000B3A08(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000B3AA4, 0, 0);
}

uint64_t sub_1000B3AA4()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1000A6C20;
  v2 = *(v0 + 32);

  return UploadedVideo.shareURL.getter(v2);
}

uint64_t GenericMusicItem.url.getter@<X0>(uint64_t a1@<X8>)
{
  v101 = a1;
  v55 = sub_1004B7BB4();
  v54 = *(v55 - 8);
  __chkstk_darwin();
  v53 = &v53 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1004B7B64();
  v57 = *(v58 - 8);
  __chkstk_darwin();
  v56 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1004B7C34();
  v60 = *(v61 - 8);
  __chkstk_darwin();
  v59 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1004B7C94();
  v63 = *(v64 - 8);
  __chkstk_darwin();
  v62 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1004B7CF4();
  v66 = *(v67 - 8);
  __chkstk_darwin();
  v65 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1004BB744();
  v69 = *(v70 - 8);
  __chkstk_darwin();
  v68 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1004BB384();
  v72 = *(v73 - 8);
  __chkstk_darwin();
  v71 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1004B7B14();
  v75 = *(v76 - 8);
  __chkstk_darwin();
  v74 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1004BB204();
  v78 = *(v79 - 8);
  __chkstk_darwin();
  v77 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004BBAB4();
  v81 = *(v10 - 8);
  v82 = v10;
  __chkstk_darwin();
  v80 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004BBA84();
  v84 = *(v12 - 8);
  v85 = v12;
  __chkstk_darwin();
  v83 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004BAD04();
  v87 = *(v14 - 8);
  v88 = v14;
  __chkstk_darwin();
  v86 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004B7A34();
  v90 = *(v16 - 8);
  v91 = v16;
  __chkstk_darwin();
  v89 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1004BB464();
  v93 = *(v18 - 8);
  v94 = v18;
  __chkstk_darwin();
  v92 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1004B7AD4();
  v96 = *(v20 - 8);
  v97 = v20;
  __chkstk_darwin();
  v95 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1004BB6F4();
  v98 = *(v22 - 8);
  v99 = v22;
  __chkstk_darwin();
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1004BB564();
  v26 = *(v25 - 8);
  __chkstk_darwin();
  v28 = &v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1004BB434();
  v30 = *(v29 - 8);
  __chkstk_darwin();
  v32 = &v53 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1004B7644();
  v34 = *(v33 - 8);
  v35 = __chkstk_darwin();
  v37 = &v53 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v37, v100, v33, v35);
  v38 = (*(v34 + 88))(v37, v33);
  if (v38 == enum case for GenericMusicItem.album(_:))
  {
    (*(v34 + 96))(v37, v33);
    (*(v30 + 32))(v32, v37, v29);
    sub_1004BB404();
    return (*(v30 + 8))(v32, v29);
  }

  v40 = v101;
  if (v38 == enum case for GenericMusicItem.artist(_:))
  {
    (*(v34 + 96))(v37, v33);
    (*(v26 + 32))(v28, v37, v25);
    sub_1004BB544();
    return (*(v26 + 8))(v28, v25);
  }

  if (v38 == enum case for GenericMusicItem.composer(_:))
  {
    (*(v34 + 8))(v37, v33);
    v41 = sub_1004B6B04();
    return (*(*(v41 - 8) + 56))(v40, 1, 1, v41);
  }

  v42 = v101;
  if (v38 == enum case for GenericMusicItem.creditArtist(_:))
  {
    goto LABEL_8;
  }

  if (v38 == enum case for GenericMusicItem.curator(_:))
  {
    (*(v34 + 96))(v37, v33);
    v45 = v98;
    v44 = v99;
    (*(v98 + 32))(v24, v37, v99);
    sub_1004BB6D4();
    return (*(v45 + 8))(v24, v44);
  }

  if (v38 == enum case for GenericMusicItem.editorialItem(_:))
  {
    (*(v34 + 96))(v37, v33);
    v46 = v95;
    v47 = v96;
    v48 = v97;
    (*(v96 + 32))(v95, v37, v97);
    sub_1004B7AB4();
  }

  else if (v38 == enum case for GenericMusicItem.genre(_:))
  {
    (*(v34 + 96))(v37, v33);
    v46 = v92;
    v47 = v93;
    v48 = v94;
    (*(v93 + 32))(v92, v37, v94);
    sub_1004BB444();
  }

  else if (v38 == enum case for GenericMusicItem.musicMovie(_:))
  {
    (*(v34 + 96))(v37, v33);
    v46 = v89;
    v47 = v90;
    v48 = v91;
    (*(v90 + 32))(v89, v37, v91);
    sub_1004B7A04();
  }

  else if (v38 == enum case for GenericMusicItem.musicVideo(_:))
  {
    (*(v34 + 96))(v37, v33);
    v46 = v86;
    v47 = v87;
    v48 = v88;
    (*(v87 + 32))(v86, v37, v88);
    sub_1004BACD4();
  }

  else if (v38 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v34 + 96))(v37, v33);
    v46 = v83;
    v47 = v84;
    v48 = v85;
    (*(v84 + 32))(v83, v37, v85);
    sub_1004BB984();
  }

  else
  {
    if (v38 == enum case for GenericMusicItem.playlistFolder(_:))
    {
LABEL_8:
      (*(v34 + 8))(v37, v33);
      v43 = sub_1004B6B04();
      return (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
    }

    if (v38 == enum case for GenericMusicItem.radioShow(_:))
    {
      (*(v34 + 96))(v37, v33);
      v47 = v81;
      v48 = v82;
      v46 = v80;
      (*(v81 + 32))(v80, v37, v82);
      sub_1004BBA94();
    }

    else if (v38 == enum case for GenericMusicItem.recordLabel(_:))
    {
      (*(v34 + 96))(v37, v33);
      v47 = v78;
      v46 = v77;
      v48 = v79;
      (*(v78 + 32))(v77, v37, v79);
      sub_1004BB1E4();
    }

    else
    {
      if (v38 != enum case for GenericMusicItem.socialProfile(_:))
      {
        if (v38 == enum case for GenericMusicItem.song(_:))
        {
          (*(v34 + 96))(v37, v33);
          v49 = v72;
          v50 = v71;
          v51 = v73;
          (*(v72 + 32))(v71, v37, v73);
          sub_1004BB334();
        }

        else if (v38 == enum case for GenericMusicItem.station(_:))
        {
          (*(v34 + 96))(v37, v33);
          v49 = v69;
          v50 = v68;
          v51 = v70;
          (*(v69 + 32))(v68, v37, v70);
          sub_1004BB724();
        }

        else if (v38 == enum case for GenericMusicItem.tvEpisode(_:))
        {
          (*(v34 + 96))(v37, v33);
          v49 = v66;
          v50 = v65;
          v51 = v67;
          (*(v66 + 32))(v65, v37, v67);
          sub_1004B7CC4();
        }

        else if (v38 == enum case for GenericMusicItem.tvSeason(_:))
        {
          (*(v34 + 96))(v37, v33);
          v49 = v63;
          v50 = v62;
          v51 = v64;
          (*(v63 + 32))(v62, v37, v64);
          sub_1004B7C64();
        }

        else if (v38 == enum case for GenericMusicItem.tvShow(_:))
        {
          (*(v34 + 96))(v37, v33);
          v49 = v60;
          v50 = v59;
          v51 = v61;
          (*(v60 + 32))(v59, v37, v61);
          sub_1004B7C04();
        }

        else if (v38 == enum case for GenericMusicItem.uploadedAudio(_:))
        {
          (*(v34 + 96))(v37, v33);
          v49 = v57;
          v50 = v56;
          v51 = v58;
          (*(v57 + 32))(v56, v37, v58);
          _s16MusicKitInternal13UploadedAudioV0A4CoreE3url10Foundation3URLVSgvg_0();
        }

        else
        {
          if (v38 != enum case for GenericMusicItem.uploadedVideo(_:))
          {
            v42 = v101;
            if (v38 != enum case for GenericMusicItem.other(_:))
            {
              v52 = sub_1004B6B04();
              (*(*(v52 - 8) + 56))(v40, 1, 1, v52);
              return (*(v34 + 8))(v37, v33);
            }

            goto LABEL_8;
          }

          (*(v34 + 96))(v37, v33);
          v49 = v54;
          v50 = v53;
          v51 = v55;
          (*(v54 + 32))(v53, v37, v55);
          _s16MusicKitInternal13UploadedVideoV0A4CoreE3url10Foundation3URLVSgvg_0();
        }

        return (*(v49 + 8))(v50, v51);
      }

      (*(v34 + 96))(v37, v33);
      v47 = v75;
      v46 = v74;
      v48 = v76;
      (*(v75 + 32))(v74, v37, v76);
      sub_1004B7AF4();
    }
  }

  return (*(v47 + 8))(v46, v48);
}

uint64_t GenericMusicItem.shareURL.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1004B7BB4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_1004B7B64();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_1004B7C34();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = sub_1004B7C94();
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  v7 = sub_1004B7CF4();
  v2[16] = v7;
  v2[17] = *(v7 - 8);
  v2[18] = swift_task_alloc();
  v8 = sub_1004BB384();
  v2[19] = v8;
  v2[20] = *(v8 - 8);
  v2[21] = swift_task_alloc();
  v9 = sub_1004BBA84();
  v2[22] = v9;
  v2[23] = *(v9 - 8);
  v2[24] = swift_task_alloc();
  v10 = sub_1004BAD04();
  v2[25] = v10;
  v2[26] = *(v10 - 8);
  v2[27] = swift_task_alloc();
  v11 = sub_1004B7A34();
  v2[28] = v11;
  v2[29] = *(v11 - 8);
  v2[30] = swift_task_alloc();
  v12 = sub_1004BB564();
  v2[31] = v12;
  v2[32] = *(v12 - 8);
  v2[33] = swift_task_alloc();
  v13 = sub_1004BB434();
  v2[34] = v13;
  v2[35] = *(v13 - 8);
  v2[36] = swift_task_alloc();
  v14 = sub_1004B7644();
  v2[37] = v14;
  v2[38] = *(v14 - 8);
  v2[39] = swift_task_alloc();

  return _swift_task_switch(sub_1000B531C, 0, 0);
}

uint64_t sub_1000B531C()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for GenericMusicItem.album(_:))
  {
    v5 = v0[39];
    v6 = v0[36];
    v7 = v0[34];
    v8 = v0[35];
    (*(v0[38] + 96))(v5, v0[37]);
    (*(v8 + 32))(v6, v5, v7);
    v9 = swift_task_alloc();
    v0[40] = v9;
    *v9 = v0;
    v9[1] = sub_1000B5F00;
    v10 = v0[2];

    return Album.shareURL.getter(v10);
  }

  if (v4 == enum case for GenericMusicItem.artist(_:))
  {
    v12 = v0[39];
    v14 = v0[32];
    v13 = v0[33];
    v15 = v0[31];
    (*(v0[38] + 96))(v12, v0[37]);
    (*(v14 + 32))(v13, v12, v15);
    v16 = swift_task_alloc();
    v0[41] = v16;
    *v16 = v0;
    v16[1] = sub_1000B611C;
    v17 = v0[2];

    return Artist.shareURL.getter(v17);
  }

  if (v4 == enum case for GenericMusicItem.composer(_:))
  {
    goto LABEL_10;
  }

  if (v4 == enum case for GenericMusicItem.creditArtist(_:))
  {
LABEL_12:
    v19 = v0[2];
    (*(v0[38] + 8))(v0[39], v0[37]);
    v20 = sub_1004B6B04();
    (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
    goto LABEL_13;
  }

  if (v4 == enum case for GenericMusicItem.curator(_:) || v4 == enum case for GenericMusicItem.editorialItem(_:) || v4 == enum case for GenericMusicItem.genre(_:))
  {
    goto LABEL_10;
  }

  if (v4 == enum case for GenericMusicItem.musicMovie(_:))
  {
    v24 = v0[39];
    v26 = v0[29];
    v25 = v0[30];
    v27 = v0[28];
    (*(v0[38] + 96))(v24, v0[37]);
    (*(v26 + 32))(v25, v24, v27);
    v28 = swift_task_alloc();
    v0[42] = v28;
    *v28 = v0;
    v28[1] = sub_1000B6338;
    v29 = v0[2];

    return MusicMovie.shareURL.getter(v29);
  }

  if (v4 == enum case for GenericMusicItem.musicVideo(_:))
  {
    v30 = v0[39];
    v32 = v0[26];
    v31 = v0[27];
    v33 = v0[25];
    (*(v0[38] + 96))(v30, v0[37]);
    (*(v32 + 32))(v31, v30, v33);
    v34 = swift_task_alloc();
    v0[43] = v34;
    *v34 = v0;
    v34[1] = sub_1000B6554;
    v35 = v0[2];

    return MusicVideo.shareURL.getter(v35);
  }

  if (v4 == enum case for GenericMusicItem.playlist(_:))
  {
    v36 = v0[39];
    v38 = v0[23];
    v37 = v0[24];
    v39 = v0[22];
    (*(v0[38] + 96))(v36, v0[37]);
    (*(v38 + 32))(v37, v36, v39);
    v40 = swift_task_alloc();
    v0[44] = v40;
    *v40 = v0;
    v40[1] = sub_1000B6770;
    v41 = v0[2];

    return Playlist.shareURL.getter(v41);
  }

  if (v4 == enum case for GenericMusicItem.playlistFolder(_:))
  {
    goto LABEL_12;
  }

  if (v4 == enum case for GenericMusicItem.radioShow(_:) || v4 == enum case for GenericMusicItem.recordLabel(_:) || v4 == enum case for GenericMusicItem.socialProfile(_:))
  {
    goto LABEL_10;
  }

  if (v4 == enum case for GenericMusicItem.song(_:))
  {
    v42 = v0[39];
    v44 = v0[20];
    v43 = v0[21];
    v45 = v0[19];
    (*(v0[38] + 96))(v42, v0[37]);
    (*(v44 + 32))(v43, v42, v45);
    v46 = swift_task_alloc();
    v0[45] = v46;
    *v46 = v0;
    v46[1] = sub_1000B698C;
    v47 = v0[2];

    return Song.shareURL.getter(v47);
  }

  if (v4 == enum case for GenericMusicItem.station(_:))
  {
LABEL_10:
    v18 = v0[2];
    (*(v0[38] + 8))(v0[39], v0[37]);
    GenericMusicItem.url.getter(v18);
LABEL_13:

    v21 = v0[1];

    return v21();
  }

  if (v4 == enum case for GenericMusicItem.tvEpisode(_:))
  {
    v48 = v0[39];
    v50 = v0[17];
    v49 = v0[18];
    v51 = v0[16];
    (*(v0[38] + 96))(v48, v0[37]);
    (*(v50 + 32))(v49, v48, v51);
    v52 = swift_task_alloc();
    v0[46] = v52;
    *v52 = v0;
    v52[1] = sub_1000B6BA8;
    v53 = v0[2];

    return TVEpisode.shareURL.getter(v53);
  }

  else if (v4 == enum case for GenericMusicItem.tvSeason(_:))
  {
    v54 = v0[39];
    v56 = v0[14];
    v55 = v0[15];
    v57 = v0[13];
    (*(v0[38] + 96))(v54, v0[37]);
    (*(v56 + 32))(v55, v54, v57);
    v58 = swift_task_alloc();
    v0[47] = v58;
    *v58 = v0;
    v58[1] = sub_1000B6DC4;
    v59 = v0[2];

    return TVSeason.shareURL.getter(v59);
  }

  else if (v4 == enum case for GenericMusicItem.tvShow(_:))
  {
    v60 = v0[39];
    v62 = v0[11];
    v61 = v0[12];
    v63 = v0[10];
    (*(v0[38] + 96))(v60, v0[37]);
    (*(v62 + 32))(v61, v60, v63);
    v64 = swift_task_alloc();
    v0[48] = v64;
    *v64 = v0;
    v64[1] = sub_1000B6FE0;
    v65 = v0[2];

    return TVShow.shareURL.getter(v65);
  }

  else if (v4 == enum case for GenericMusicItem.uploadedAudio(_:))
  {
    v66 = v0[39];
    v68 = v0[8];
    v67 = v0[9];
    v69 = v0[7];
    (*(v0[38] + 96))(v66, v0[37]);
    (*(v68 + 32))(v67, v66, v69);
    v70 = swift_task_alloc();
    v0[49] = v70;
    *v70 = v0;
    v70[1] = sub_1000B71FC;
    v71 = v0[2];

    return UploadedAudio.shareURL.getter(v71);
  }

  else
  {
    if (v4 != enum case for GenericMusicItem.uploadedVideo(_:))
    {
      if (v4 != enum case for GenericMusicItem.other(_:))
      {
        v79 = v0[38];
        v78 = v0[39];
        v80 = v0[37];
        GenericMusicItem.url.getter(v0[2]);
        (*(v79 + 8))(v78, v80);
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v72 = v0[39];
    v74 = v0[5];
    v73 = v0[6];
    v75 = v0[4];
    (*(v0[38] + 96))(v72, v0[37]);
    (*(v74 + 32))(v73, v72, v75);
    v76 = swift_task_alloc();
    v0[50] = v76;
    *v76 = v0;
    v76[1] = sub_1000B7418;
    v77 = v0[2];

    return UploadedVideo.shareURL.getter(v77);
  }
}

uint64_t sub_1000B5F00()
{

  return _swift_task_switch(sub_1000B5FFC, 0, 0);
}

uint64_t sub_1000B5FFC()
{
  (*(v0[35] + 8))(v0[36], v0[34]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000B611C()
{

  return _swift_task_switch(sub_1000B6218, 0, 0);
}

uint64_t sub_1000B6218()
{
  (*(v0[32] + 8))(v0[33], v0[31]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000B6338()
{

  return _swift_task_switch(sub_1000B6434, 0, 0);
}

uint64_t sub_1000B6434()
{
  (*(v0[29] + 8))(v0[30], v0[28]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000B6554()
{

  return _swift_task_switch(sub_1000B6650, 0, 0);
}

uint64_t sub_1000B6650()
{
  (*(v0[26] + 8))(v0[27], v0[25]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000B6770()
{

  return _swift_task_switch(sub_1000B686C, 0, 0);
}

uint64_t sub_1000B686C()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000B698C()
{

  return _swift_task_switch(sub_1000B6A88, 0, 0);
}

uint64_t sub_1000B6A88()
{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000B6BA8()
{

  return _swift_task_switch(sub_1000B6CA4, 0, 0);
}

uint64_t sub_1000B6CA4()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000B6DC4()
{

  return _swift_task_switch(sub_1000B6EC0, 0, 0);
}

uint64_t sub_1000B6EC0()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000B6FE0()
{

  return _swift_task_switch(sub_1000B70DC, 0, 0);
}

uint64_t sub_1000B70DC()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000B71FC()
{

  return _swift_task_switch(sub_1000B72F8, 0, 0);
}

uint64_t sub_1000B72F8()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000B7418()
{

  return _swift_task_switch(sub_1000B7514, 0, 0);
}

uint64_t sub_1000B7514()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t GenericMusicItem.failureMessage.getter()
{
  sub_1004B6E64();
  __chkstk_darwin();
  v1 = sub_1004BBE14();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v16[-v5];
  v7 = sub_1004B7644();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin();
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 16))(v11, v0, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == enum case for GenericMusicItem.album(_:) || v12 == enum case for GenericMusicItem.artist(_:) || v12 == enum case for GenericMusicItem.composer(_:) || v12 == enum case for GenericMusicItem.curator(_:) || v12 == enum case for GenericMusicItem.genre(_:) || v12 == enum case for GenericMusicItem.musicMovie(_:) || v12 == enum case for GenericMusicItem.musicVideo(_:) || v12 == enum case for GenericMusicItem.playlist(_:) || v12 == enum case for GenericMusicItem.radioShow(_:) || v12 == enum case for GenericMusicItem.recordLabel(_:) || v12 == enum case for GenericMusicItem.socialProfile(_:) || v12 == enum case for GenericMusicItem.song(_:) || v12 == enum case for GenericMusicItem.station(_:) || v12 == enum case for GenericMusicItem.tvEpisode(_:) || v12 == enum case for GenericMusicItem.tvSeason(_:) || v12 == enum case for GenericMusicItem.tvShow(_:) || v12 == enum case for GenericMusicItem.uploadedAudio(_:) || v12 == enum case for GenericMusicItem.uploadedVideo(_:))
  {
    (*(v8 + 8))(v11, v7);
    sub_1004BBDA4();
    (*(v2 + 16))(v4, v6, v1);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v13 = qword_100617118;
    sub_1004B6DF4();
    v14 = sub_1004BBED4();
    (*(v2 + 8))(v6, v1);
  }

  else
  {
    v14 = GenericMusicItem.failureMessage.getter();
    (*(v8 + 8))(v11, v7);
  }

  return v14;
}

uint64_t sub_1000B7CF8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000136EC;

  return GenericMusicItem.shareURL.getter(a1);
}

uint64_t sub_1000B7D94(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000B7E30, 0, 0);
}

uint64_t sub_1000B7E30()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1000B7ED0;
  v2 = *(v0 + 32);

  return GenericMusicItem.shareURL.getter(v2);
}

uint64_t sub_1000B7ED0()
{

  return _swift_task_switch(sub_1000B7FCC, 0, 0);
}

uint64_t sub_1000B7FCC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = sub_1004B6B04();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v7 = 0;
  }

  else
  {
    sub_1004B6A44(v6);
    v7 = v8;
    (*(v5 + 8))(v3, v4);
  }

  [*(v2 + 40) setOriginalURL:v7];

  v9 = *(v2 + 8);

  return v9();
}

uint64_t sub_1000B80F0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004B80B4();
  sub_100007108(v2, qword_1006026E8);
  sub_100007084(v2, qword_1006026E8);
  return sub_1004B80A4();
}

uint64_t sub_1000B8168(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_1000B81C8(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1000B8344@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_100009178(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_1000B839C(uint64_t a1)
{
  result = sub_1000B870C(&qword_100602940, &type metadata accessor for Composer, &protocol conformance descriptor for Composer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B83F4(uint64_t a1)
{
  result = sub_1000B870C(&qword_100602948, &type metadata accessor for EditorialItem, &protocol conformance descriptor for EditorialItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B844C(uint64_t a1)
{
  result = sub_1000B870C(&qword_100602950, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B84A4(uint64_t a1)
{
  result = sub_1000B870C(&qword_100602958, &type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B84FC(uint64_t a1)
{
  result = sub_1000B870C(&qword_100602960, &type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B8554(uint64_t a1)
{
  result = sub_1000B870C(&qword_100602968, &type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B85AC(uint64_t a1)
{
  result = sub_1000B870C(&qword_100602970, &type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B8604(uint64_t a1)
{
  result = sub_1000B870C(&qword_100602978, &type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B865C(uint64_t a1)
{
  result = sub_1000B870C(&qword_100602980, &type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B86B4(uint64_t a1)
{
  result = sub_1000B870C(&unk_100606180, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B870C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000B8764(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1000B87AC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1000B882C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003B68(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)()@<X8>, uint64_t a10, uint64_t a11)
{
  v52 = a7;
  v53 = a8;
  v54 = a6;
  v55 = a9;
  v49 = a5;
  v47 = a4;
  v51 = a3;
  v12 = *(a10 - 8);
  v13 = v12;
  v57 = a1;
  v58 = v12;
  v14 = *(v12 + 64);
  v56 = a11;
  __chkstk_darwin();
  v46 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v41 - v15;
  v48 = v14;
  v17 = __chkstk_darwin();
  v19 = &v41 - v18;
  v42 = *(v13 + 16);
  v42(&v41 - v18, v17);
  v45 = *(v13 + 80);
  v20 = (v45 + 40) & ~v45;
  v21 = v20 + v14;
  v43 = v45 | 7;
  v22 = swift_allocObject();
  v50 = v22;
  *(v22 + 2) = a10;
  *(v22 + 3) = a11;
  v44 = a2;
  *(v22 + 4) = a2;
  v23 = *(v58 + 32);
  v58 += 32;
  v23(v22 + v20, v19, a10);
  (v42)(v16, v57, a10);
  v24 = (v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 47) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = v56;
  *(v26 + 2) = a10;
  *(v26 + 3) = v27;
  *(v26 + 4) = a2;
  v23(v26 + v20, v16, a10);
  v28 = v26 + v24;
  v29 = v47;
  v30 = v47[1];
  *v28 = *v47;
  *(v28 + 1) = v30;
  *(v28 + 4) = *(v29 + 4);
  sub_100025B04(v49, v26 + v25, &qword_100602A08, &qword_1004CBF00);
  sub_100013414(v51, v26 + ((v25 + 103) & 0xFFFFFFFFFFFFFFF8));
  v31 = v46;
  v23(v46, v57, a10);
  v32 = *(sub_100003ABC(&qword_100601C50, &unk_1004C9840) - 8);
  v33 = (*(v32 + 80) + 48) & ~*(v32 + 80);
  v34 = (*(v32 + 64) + v45 + v33) & ~v45;
  v35 = swift_allocObject();
  v36 = v56;
  *(v35 + 2) = a10;
  *(v35 + 3) = v36;
  v37 = v53;
  *(v35 + 4) = v52;
  *(v35 + 5) = v37;
  sub_100025B04(v54, v35 + v33, &qword_100601C50, &unk_1004C9840);
  v23(v35 + v34, v31, a10);

  v39 = v55;
  v40 = v50;
  *v55 = sub_1000B99D8;
  v39[1] = v40;
  v39[2] = &unk_1004CBF08;
  v39[3] = v26;
  v39[4] = &unk_1004CBF18;
  v39[5] = v35;
  return result;
}

uint64_t Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)()@<X8>, uint64_t a10, uint64_t a11)
{
  v52 = a7;
  v53 = a8;
  v54 = a6;
  v55 = a9;
  v49 = a5;
  v47 = a4;
  v51 = a3;
  v12 = *(a10 - 8);
  v13 = v12;
  v57 = a1;
  v58 = v12;
  v14 = *(v12 + 64);
  v56 = a11;
  __chkstk_darwin();
  v46 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v41 - v15;
  v48 = v14;
  v17 = __chkstk_darwin();
  v19 = &v41 - v18;
  v42 = *(v13 + 16);
  v42(&v41 - v18, v17);
  v45 = *(v13 + 80);
  v20 = (v45 + 40) & ~v45;
  v21 = v20 + v14;
  v43 = v45 | 7;
  v22 = swift_allocObject();
  v50 = v22;
  *(v22 + 2) = a10;
  *(v22 + 3) = a11;
  v44 = a2;
  *(v22 + 4) = a2;
  v23 = *(v58 + 32);
  v58 += 32;
  v23(v22 + v20, v19, a10);
  (v42)(v16, v57, a10);
  v24 = (v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 47) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = v56;
  *(v26 + 2) = a10;
  *(v26 + 3) = v27;
  *(v26 + 4) = a2;
  v23(v26 + v20, v16, a10);
  v28 = v26 + v24;
  v29 = v47;
  v30 = v47[1];
  *v28 = *v47;
  *(v28 + 1) = v30;
  *(v28 + 4) = *(v29 + 4);
  sub_100025B04(v49, v26 + v25, &qword_100602A08, &qword_1004CBF00);
  sub_100013414(v51, v26 + ((v25 + 103) & 0xFFFFFFFFFFFFFFF8));
  v31 = v46;
  v23(v46, v57, a10);
  v32 = *(sub_100003ABC(&qword_100601C50, &unk_1004C9840) - 8);
  v33 = (*(v32 + 80) + 48) & ~*(v32 + 80);
  v34 = (*(v32 + 64) + v45 + v33) & ~v45;
  v35 = swift_allocObject();
  v36 = v56;
  *(v35 + 2) = a10;
  *(v35 + 3) = v36;
  v37 = v53;
  *(v35 + 4) = v52;
  *(v35 + 5) = v37;
  sub_100025B04(v54, v35 + v33, &qword_100601C50, &unk_1004C9840);
  v23(v35 + v34, v31, a10);

  v39 = v55;
  v40 = v50;
  *v55 = sub_1000BC6F4;
  v39[1] = v40;
  v39[2] = &unk_1004CBF38;
  v39[3] = v26;
  v39[4] = &unk_1004CBF48;
  v39[5] = v35;
  return result;
}