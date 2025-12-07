uint64_t sub_10016D768()
{

  return _swift_task_switch(sub_10016D864, 0, 0);
}

uint64_t sub_10016D864()
{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10016D984()
{

  return _swift_task_switch(sub_10016DA80, 0, 0);
}

uint64_t sub_10016DA80()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10016DBA0()
{

  return _swift_task_switch(sub_10016DC9C, 0, 0);
}

uint64_t sub_10016DC9C()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10016DDBC()
{

  return _swift_task_switch(sub_10016DEB8, 0, 0);
}

uint64_t sub_10016DEB8()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10016DFD8()
{

  return _swift_task_switch(sub_10016E0D4, 0, 0);
}

uint64_t sub_10016E0D4()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10016E1F4()
{

  return _swift_task_switch(sub_10016E2F0, 0, 0);
}

uint64_t sub_10016E2F0()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t GenericMusicItem.failureMessage.getter()
{
  sub_10056CC38();
  __chkstk_darwin();
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v16[-v5];
  v7 = sub_10056D438();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin();
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 16))(v11, v0, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == enum case for GenericMusicItem.album(_:) || v12 == enum case for GenericMusicItem.artist(_:) || v12 == enum case for GenericMusicItem.composer(_:) || v12 == enum case for GenericMusicItem.curator(_:) || v12 == enum case for GenericMusicItem.genre(_:) || v12 == enum case for GenericMusicItem.musicMovie(_:) || v12 == enum case for GenericMusicItem.musicVideo(_:) || v12 == enum case for GenericMusicItem.playlist(_:) || v12 == enum case for GenericMusicItem.radioShow(_:) || v12 == enum case for GenericMusicItem.recordLabel(_:) || v12 == enum case for GenericMusicItem.socialProfile(_:) || v12 == enum case for GenericMusicItem.song(_:) || v12 == enum case for GenericMusicItem.station(_:) || v12 == enum case for GenericMusicItem.tvEpisode(_:) || v12 == enum case for GenericMusicItem.tvSeason(_:) || v12 == enum case for GenericMusicItem.tvShow(_:) || v12 == enum case for GenericMusicItem.uploadedAudio(_:) || v12 == enum case for GenericMusicItem.uploadedVideo(_:))
  {
    (*(v8 + 8))(v11, v7);
    sub_100572818();
    (*(v2 + 16))(v4, v6, v1);
    if (qword_1006E4C60 != -1)
    {
      swift_once();
    }

    v13 = qword_1006FC3B8;
    sub_10056CBC8();
    v14 = sub_100572948();
    (*(v2 + 8))(v6, v1);
  }

  else
  {
    v14 = GenericMusicItem.failureMessage.getter();
    (*(v8 + 8))(v11, v7);
  }

  return v14;
}

uint64_t sub_10016EAD4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000CB98;

  return GenericMusicItem.shareURL.getter(a1);
}

uint64_t sub_10016EB70(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100009DCC(&qword_1006E5D10, &unk_100583A20);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_10016EC0C, 0, 0);
}

uint64_t sub_10016EC0C()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10016ECAC;
  v2 = *(v0 + 32);

  return GenericMusicItem.shareURL.getter(v2);
}

uint64_t sub_10016ECAC()
{

  return _swift_task_switch(sub_10016EDA8, 0, 0);
}

uint64_t sub_10016EDA8()
{
  v1 = *(v0 + 32);
  v2 = sub_10056C8A8();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = 0;
  }

  else
  {
    sub_10056C7E8(v4);
    v5 = v6;
    (*(v3 + 8))(v1, v2);
  }

  [*(v0 + 40) setOriginalURL:v5];

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10016EECC()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, qword_1006E7618);
  sub_10000C49C(v0, qword_1006E7618);
  return sub_10056DF78();
}

uint64_t sub_10016F04C@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000C8CC(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_10016F0A4(uint64_t a1)
{
  result = sub_10016F414(&qword_1006E7870, &type metadata accessor for Composer, &protocol conformance descriptor for Composer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10016F0FC(uint64_t a1)
{
  result = sub_10016F414(&qword_1006E7878, &type metadata accessor for EditorialItem, &protocol conformance descriptor for EditorialItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10016F154(uint64_t a1)
{
  result = sub_10016F414(&qword_1006E7880, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10016F1AC(uint64_t a1)
{
  result = sub_10016F414(&qword_1006E7888, &type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10016F204(uint64_t a1)
{
  result = sub_10016F414(&qword_1006E7890, &type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10016F25C(uint64_t a1)
{
  result = sub_10016F414(&qword_1006E7898, &type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10016F2B4(uint64_t a1)
{
  result = sub_10016F414(&qword_1006E78A0, &type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10016F30C(uint64_t a1)
{
  result = sub_10016F414(&qword_1006E78A8, &type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10016F364(uint64_t a1)
{
  result = sub_10016F414(&qword_1006E78B0, &type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10016F3BC(uint64_t a1)
{
  result = sub_10016F414(&unk_1006EB0B0, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10016F414(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10016F46C(uint64_t *a1, int a2)
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

uint64_t sub_10016F4B4(uint64_t result, int a2, int a3)
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
  sub_100019B40(v49, v26 + v25, &qword_1006E7938, &qword_100589250);
  sub_10002EA74(v51, v26 + ((v25 + 103) & 0xFFFFFFFFFFFFFFF8));
  v31 = v46;
  v23(v46, v57, a10);
  v32 = *(sub_100009DCC(&qword_1006E6B80, &unk_100586B90) - 8);
  v33 = (*(v32 + 80) + 48) & ~*(v32 + 80);
  v34 = (*(v32 + 64) + v45 + v33) & ~v45;
  v35 = swift_allocObject();
  v36 = v56;
  *(v35 + 2) = a10;
  *(v35 + 3) = v36;
  v37 = v53;
  *(v35 + 4) = v52;
  *(v35 + 5) = v37;
  sub_100019B40(v54, v35 + v33, &qword_1006E6B80, &unk_100586B90);
  v23(v35 + v34, v31, a10);

  v39 = v55;
  v40 = v50;
  *v55 = sub_10017068C;
  v39[1] = v40;
  v39[2] = &unk_100589258;
  v39[3] = v26;
  v39[4] = &unk_100589268;
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
  sub_100019B40(v49, v26 + v25, &qword_1006E7938, &qword_100589250);
  sub_10002EA74(v51, v26 + ((v25 + 103) & 0xFFFFFFFFFFFFFFF8));
  v31 = v46;
  v23(v46, v57, a10);
  v32 = *(sub_100009DCC(&qword_1006E6B80, &unk_100586B90) - 8);
  v33 = (*(v32 + 80) + 48) & ~*(v32 + 80);
  v34 = (*(v32 + 64) + v45 + v33) & ~v45;
  v35 = swift_allocObject();
  v36 = v56;
  *(v35 + 2) = a10;
  *(v35 + 3) = v36;
  v37 = v53;
  *(v35 + 4) = v52;
  *(v35 + 5) = v37;
  sub_100019B40(v54, v35 + v33, &qword_1006E6B80, &unk_100586B90);
  v23(v35 + v34, v31, a10);

  v39 = v55;
  v40 = v50;
  *v55 = sub_1001733A8;
  v39[1] = v40;
  v39[2] = &unk_100589288;
  v39[3] = v26;
  v39[4] = &unk_100589298;
  v39[5] = v35;
  return result;
}

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
  v30 = *(sub_100009DCC(&qword_1006E6B80, &unk_100586B90) - 8);
  v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v32 = (*(v30 + 64) + v43 + v31) & ~v43;
  v33 = swift_allocObject();
  v34 = v41;
  *(v33 + 16) = a5;
  *(v33 + 24) = v34;
  sub_100019B40(v48, v33 + v31, &qword_1006E6B80, &unk_100586B90);
  v25(v33 + v32, v29, a5);

  v36 = v49;
  v37 = v47;
  *v49 = sub_100176CC4;
  v36[1] = v37;
  v36[2] = &unk_1005892B8;
  v36[3] = v23;
  v36[4] = &unk_1005892C8;
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
  sub_10001036C(v14, &qword_1006E6C10, &qword_100586D40);
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
  v24 = *(sub_100009DCC(&qword_1006E6B80, &unk_100586B90) - 8);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = (*(v24 + 64) + v36 + v25) & ~v36;
  v27 = swift_allocObject();
  *(v27 + 16) = a4;
  *(v27 + 24) = a5;
  sub_100019B40(v40, v27 + v25, &qword_1006E6B80, &unk_100586B90);
  v22((v27 + v26), v23, a4);

  v29 = v41;
  v30 = v38;
  *v41 = sub_100178A54;
  v29[1] = v30;
  v29[2] = &unk_1005892E8;
  v29[3] = v20;
  v29[4] = &unk_1005892F8;
  v29[5] = v27;
  return result;
}

uint64_t sub_1001704CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1005715F8();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009DCC(&qword_1006E79D8, &qword_100589468);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v14 - v10;
  sub_10056D538();
  sub_100571658();
  (*(v5 + 8))(v7, v4);
  v12 = sub_1001706A4();
  (*(v9 + 8))(v11, v8);
  return v12;
}

uint64_t sub_1001706A4()
{
  v1 = sub_1005715E8();
  v24 = *(v1 - 8);
  __chkstk_darwin();
  v21 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v21 - v3;
  __chkstk_darwin();
  v6 = &v21 - v5;
  v7 = sub_100009DCC(&qword_1006E79D8, &qword_100589468);
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
      sub_100573ED8(27);

      *&v33[0] = 0xD000000000000019;
      *(&v33[0] + 1) = 0x80000001005ADFC0;
      (v13)(v22, v23, v7);
      v34._countAndFlagsBits = sub_100572978();
      sub_100572A98(v34);

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
      if (qword_1006E4D40 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_10056E478();

      v33[4] = v29;
      v33[5] = v30;
      v33[6] = v31;
      v33[7] = v32;
      v33[0] = v25;
      v33[1] = v26;
      v33[2] = v27;
      v33[3] = v28;
      sub_100108D2C(v33);
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
          sub_100573ED8(17);

          *&v33[0] = 0x206E776F6E6B6E55;
          *(&v33[0] + 1) = 0xEF206E6F73616572;
          v16(v21, v6, v1);
          v35._countAndFlagsBits = sub_100572978();
          sub_100572A98(v35);

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

uint64_t sub_100170EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[54] = a6;
  v7[55] = a7;
  v7[52] = a4;
  v7[53] = a5;
  v7[50] = a2;
  v7[51] = a3;
  v7[49] = a1;
  v8 = sub_1005715E8();
  v7[56] = v8;
  v7[57] = *(v8 - 8);
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v7[60] = type metadata accessor for Notice.Variant(0);
  v7[61] = swift_task_alloc();
  v9 = sub_1005715F8();
  v7[62] = v9;
  v7[63] = *(v9 - 8);
  v7[64] = swift_task_alloc();
  v10 = sub_100009DCC(&qword_1006E79D8, &qword_100589468);
  v7[65] = v10;
  v7[66] = *(v10 - 8);
  v7[67] = swift_task_alloc();
  v7[68] = swift_task_alloc();

  return _swift_task_switch(sub_1001710C0, 0, 0);
}

uint64_t sub_1001710C0(uint64_t a1)
{
  v2 = v1[68];
  v3 = v1[66];
  v37 = v1[65];
  v38 = v1[67];
  v4 = v1[63];
  v5 = v1[64];
  v6 = v1[62];
  sub_10056D538();
  sub_100571658();
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
      sub_10000CC8C(v1[52], (v1 + 14), &qword_1006E7938, &qword_100589250);
      if (v1[22] != 1)
      {
        sub_1000FF9D0((v1 + 14), (v1 + 2));
        v1[81] = sub_100572F08();
        v1[82] = sub_100572EF8();
        v33 = sub_100572E78();
        v29 = v34;
        v1[83] = v33;
        v1[84] = v34;
        v27 = sub_100171D7C;
        v28 = v33;
        goto LABEL_14;
      }

      v14 = v1[53];
      sub_10001036C((v1 + 14), &qword_1006E7938, &qword_100589250);
      v15 = v14[3];
      v1[76] = v15;
      v1[77] = v14[4];
      v1[78] = sub_10000C8CC(v14, v15);
      sub_100572F08();
      v1[79] = sub_100572EF8();
      v16 = sub_100572E78();
      v18 = v17;
      v19 = sub_100171B48;
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
      v1[90] = sub_10000C8CC(v24, v25);
      sub_100572F08();
      v1[91] = sub_100572EF8();
      v16 = sub_100572E78();
      v18 = v26;
      v19 = sub_100172058;
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
  v20[1] = sub_100171588;
  v21 = v1[54];
  v22 = v1[55];
  v23 = v1[50];

  return MusicLibrary.favorite<A>(_:)(v23, v21, v22);
}

uint64_t sub_100171588()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_10017A9EC;
  }

  else
  {
    v2 = sub_10017169C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10017169C()
{
  sub_10000CC8C(v0[51], (v0 + 44), &qword_1006E6C10, &qword_100586D40);
  v1 = v0[47];
  v0[71] = v1;
  if (v1)
  {
    v0[72] = v0[48];
    v0[73] = sub_10000C8CC(v0 + 44, v1);
    swift_storeEnumTagMultiPayload();
    sub_100572F08();
    v0[74] = sub_100572EF8();
    v3 = sub_100572E78();

    return _swift_task_switch(sub_100171820, v3, v2);
  }

  else
  {
    sub_10001036C((v0 + 44), &qword_1006E6C10, &qword_100586D40);
    v4 = swift_task_alloc();
    v0[75] = v4;
    *v4 = v0;
    v4[1] = sub_100171980;
    v5 = v0[52];

    return sub_10034236C(v5);
  }
}

uint64_t sub_100171820()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[61];

  sub_1002EEC34(v3, 0, v2, v1);
  sub_10017A920(v3, type metadata accessor for Notice.Variant);

  return _swift_task_switch(sub_1001718D0, 0, 0);
}

uint64_t sub_1001718D0()
{
  sub_100010474(v0 + 44);
  v1 = swift_task_alloc();
  v0[75] = v1;
  *v1 = v0;
  v1[1] = sub_100171980;
  v2 = v0[52];

  return sub_10034236C(v2);
}

uint64_t sub_100171980()
{

  return _swift_task_switch(sub_100171A7C, 0, 0);
}

uint64_t sub_100171A7C()
{
  (*(v0[66] + 8))(v0[68], v0[65]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100171B48()
{
  v6 = v0[77];

  sub_1001CC3B0(5, (v0 + 35));
  v5 = (*(v6 + 8) + **(v6 + 8));
  v1 = swift_task_alloc();
  v0[80] = v1;
  *v1 = v0;
  v1[1] = sub_100171C78;
  v2 = v0[77];
  v3 = v0[76];

  return v5(v0 + 35, v3, v2);
}

uint64_t sub_100171C78()
{
  v1 = *v0;

  sub_100109250(v1 + 280);

  return _swift_task_switch(sub_10017A9F0, 0, 0);
}

uint64_t sub_100171D7C(uint64_t a1)
{
  v2 = sub_100572EF8();
  v1[85] = v2;
  v3 = swift_task_alloc();
  v1[86] = v3;
  *(v3 + 16) = 5;
  *(v3 + 24) = v1 + 2;
  *(v3 + 32) = 0;
  v4 = swift_task_alloc();
  v1[87] = v4;
  *v4 = v1;
  v4[1] = sub_100171E90;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 93, v2, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001005ACD10, sub_10017AA10, v3, &type metadata for Bool);
}

uint64_t sub_100171E90()
{
  v1 = *v0;

  v2 = *(v1 + 672);
  v3 = *(v1 + 664);

  return _swift_task_switch(sub_100171FF0, v3, v2);
}

uint64_t sub_100171FF0()
{

  return _swift_task_switch(sub_10017AA14, 0, 0);
}

uint64_t sub_100172058()
{
  v6 = v0[89];

  sub_1001CAB6C(0, (v0 + 26));
  v5 = (*(v6 + 8) + **(v6 + 8));
  v1 = swift_task_alloc();
  v0[92] = v1;
  *v1 = v0;
  v1[1] = sub_100172188;
  v2 = v0[89];
  v3 = v0[88];

  return v5(v0 + 26, v3, v2);
}

uint64_t sub_100172188()
{
  v1 = *v0;

  sub_100109250(v1 + 208);

  return _swift_task_switch(sub_10017A9F0, 0, 0);
}

uint64_t sub_10017228C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);
  v5 = (*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000116F0;

  return sub_100170EE8(v6, v0 + v4, v0 + v5, v0 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8), v0 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8), v2, v3);
}

uint64_t sub_1001723BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  sub_100009DCC(&qword_1006E6428, &unk_100585DF0);
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
  sub_100009DCC(&qword_1006E5D10, &unk_100583A20);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6B80, &unk_100586B90);
  v6[29] = swift_task_alloc();
  v7 = type metadata accessor for Actions.MetricsReportingContext(0);
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001725D4, 0, 0);
}

uint64_t sub_1001725D4()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v1(2);
  }

  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  sub_10000CC8C(*(v0 + 88), v4, &qword_1006E6B80, &unk_100586B90);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_10001036C(*(v0 + 232), &qword_1006E6B80, &unk_100586B90);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 224);
    v8 = *(v0 + 104);
    sub_10010911C(*(v0 + 232), *(v0 + 256), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 264) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 272) = v9;
    v10 = sub_10056C8A8();
    *(v0 + 280) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 288) = v12;
    *(v0 + 296) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v7, 1, 1, v10);
    sub_100009DCC(&qword_1006E6D88, &qword_1005876B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057B510;
    *(inited + 32) = MusicItem.metricsContentType.getter(v8);
    *(inited + 40) = v14;
    *(inited + 48) = 0;
    *(v0 + 304) = sub_1000E0568(inited);
    *(v0 + 312) = v15;
    *(v0 + 320) = v16;
    *(v0 + 336) = v17;
    swift_setDeallocating();
    sub_100114BA8(inited + 32);
    sub_100572F08();
    *(v0 + 328) = sub_100572EF8();
    v19 = sub_100572E78();

    return _swift_task_switch(sub_1001728E0, v19, v18);
  }
}

uint64_t sub_1001728E0()
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

  sub_10000CC8C(v3, v4, &qword_1006E5D10, &unk_100583A20);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_10000CC8C(v1 + v2[5], v7, &qword_1006E6428, &unk_100585DF0);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 5637;
  sub_100019B40(v4, v6 + v5[7], &qword_1006E5D10, &unk_100583A20);
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
  sub_10000CC8C(v7, v72, &qword_1006E6428, &unk_100585DF0);
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

    sub_1000DC030(v75, v77);

    sub_1000DCFE4(v19, v17, v18, v16, SBYTE1(v16));
    sub_10001036C(v20, &qword_1006E6428, &unk_100585DF0);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_1000DC030(v75, v77);

    sub_1000DCFE4(v19, v17, v18, v16, SBYTE1(v16));

    sub_10017A920(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 176);
  v24 = *(v0 + 160);
  v25 = (*(v0 + 192) + *(*(v0 + 184) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_10000CC8C(v23, v24, &qword_1006E6428, &unk_100585DF0);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 160);
  if (v26 == 1)
  {
    sub_10001036C(*(v0 + 160), &qword_1006E6428, &unk_100585DF0);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_10017A920(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 176);
  v31 = *(v0 + 152);
  v32 = (*(v0 + 192) + *(*(v0 + 184) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_10000CC8C(v30, v31, &qword_1006E6428, &unk_100585DF0);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 288);
    v34 = *(v0 + 280);
    v35 = *(v0 + 208);
    sub_10001036C(*(v0 + 152), &qword_1006E6428, &unk_100585DF0);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 152);
    sub_10000CC8C(v36 + v14[6], *(v0 + 208), &qword_1006E5D10, &unk_100583A20);
    sub_10017A920(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 176);
  v38 = *(v0 + 144);
  sub_100019B40(*(v0 + 208), *(v0 + 192) + *(*(v0 + 184) + 56), &qword_1006E5D10, &unk_100583A20);
  sub_10000CC8C(v37, v38, &qword_1006E6428, &unk_100585DF0);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 144);
  if (v39 == 1)
  {
    sub_10001036C(*(v0 + 144), &qword_1006E6428, &unk_100585DF0);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_10017A920(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 176);
  v43 = *(v0 + 136);
  *(*(v0 + 192) + *(*(v0 + 184) + 60)) = v41;
  sub_10000CC8C(v42, v43, &qword_1006E6428, &unk_100585DF0);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 136);
  if (v44 == 1)
  {
    sub_10001036C(v45, &qword_1006E6428, &unk_100585DF0);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_10017A920(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 176);
  v48 = *(v0 + 128);
  *(*(v0 + 192) + *(*(v0 + 184) + 64)) = v46;
  sub_10000CC8C(v47, v48, &qword_1006E6428, &unk_100585DF0);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 128);
  if (v49 == 1)
  {
    sub_10001036C(*(v0 + 128), &qword_1006E6428, &unk_100585DF0);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_10017A920(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 176);
  v55 = *(v0 + 120);
  v56 = (*(v0 + 192) + *(*(v0 + 184) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100019B40(v54, v55, &qword_1006E6428, &unk_100585DF0);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 120);
  if (v57 == 1)
  {
    sub_10001036C(v58, &qword_1006E6428, &unk_100585DF0);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_10017A920(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 192);
  v61 = *(v0 + 200);
  v62 = *(v0 + 184);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_10010911C(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1006E4D30 != -1)
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
  sub_100109184(v65, v64, v63, v70, SBYTE1(v70));
  sub_10017A920(v69, type metadata accessor for MetricsEvent.Click);
  sub_10001036C(v68, &qword_1006E5D10, &unk_100583A20);

  return _swift_task_switch(sub_10017A988, 0, 0);
}

uint64_t sub_100173094()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(sub_100009DCC(&qword_1006E6B80, &unk_100586B90) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = v0[4];
  v8 = v0[5];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1000116F0;

  return sub_1001723BC(v7, v8, v0 + v5, v0 + v6, v3, v2);
}

uint64_t sub_1001731EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_100571698();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009DCC(&qword_1006E79D0, &qword_100589418);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v14 - v10;
  sub_10056D4A8();
  sub_100571658();
  (*(v5 + 8))(v7, v4);
  v12 = sub_1001733C0();
  (*(v9 + 8))(v11, v8);
  return v12;
}

uint64_t sub_1001733C0()
{
  v1 = sub_100571688();
  v25 = *(v1 - 8);
  __chkstk_darwin();
  v22 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v22 - v3;
  __chkstk_darwin();
  v6 = &v22 - v5;
  v7 = sub_100009DCC(&qword_1006E79D0, &qword_100589418);
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
      sub_100573ED8(27);

      *&v34[0] = 0xD000000000000019;
      *(&v34[0] + 1) = 0x80000001005ADFC0;
      (v13)(v23, v24, v7);
      v35._countAndFlagsBits = sub_100572978();
      sub_100572A98(v35);

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
      if (qword_1006E4D40 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_10056E478();

      v34[4] = v30;
      v34[5] = v31;
      v34[6] = v32;
      v34[7] = v33;
      v34[0] = v26;
      v34[1] = v27;
      v34[2] = v28;
      v34[3] = v29;
      sub_100108D2C(v34);
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
        sub_100573ED8(17);

        *&v34[0] = 0x206E776F6E6B6E55;
        *(&v34[0] + 1) = 0xEF206E6F73616572;
        v16(v22, v18, v1);
        v36._countAndFlagsBits = sub_100572978();
        sub_100572A98(v36);

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

uint64_t sub_100173B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[54] = a6;
  v7[55] = a7;
  v7[52] = a4;
  v7[53] = a5;
  v7[50] = a2;
  v7[51] = a3;
  v7[49] = a1;
  v8 = sub_100571688();
  v7[56] = v8;
  v7[57] = *(v8 - 8);
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v7[60] = type metadata accessor for Notice.Variant(0);
  v7[61] = swift_task_alloc();
  v9 = sub_100571698();
  v7[62] = v9;
  v7[63] = *(v9 - 8);
  v7[64] = swift_task_alloc();
  v10 = sub_100009DCC(&qword_1006E79D0, &qword_100589418);
  v7[65] = v10;
  v7[66] = *(v10 - 8);
  v7[67] = swift_task_alloc();
  v7[68] = swift_task_alloc();

  return _swift_task_switch(sub_100173D68, 0, 0);
}

uint64_t sub_100173D68(uint64_t a1)
{
  v2 = v1[68];
  v3 = v1[66];
  v37 = v1[65];
  v38 = v1[67];
  v4 = v1[63];
  v5 = v1[64];
  v6 = v1[62];
  sub_10056D4A8();
  sub_100571658();
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
      sub_10000CC8C(v1[52], (v1 + 14), &qword_1006E7938, &qword_100589250);
      if (v1[22] != 1)
      {
        sub_1000FF9D0((v1 + 14), (v1 + 2));
        v1[80] = sub_100572F08();
        v1[81] = sub_100572EF8();
        v33 = sub_100572E78();
        v29 = v34;
        v1[82] = v33;
        v1[83] = v34;
        v27 = sub_1001748A4;
        v28 = v33;
        goto LABEL_14;
      }

      v14 = v1[53];
      sub_10001036C((v1 + 14), &qword_1006E7938, &qword_100589250);
      v15 = v14[3];
      v1[75] = v15;
      v1[76] = v14[4];
      v1[77] = sub_10000C8CC(v14, v15);
      sub_100572F08();
      v1[78] = sub_100572EF8();
      v16 = sub_100572E78();
      v18 = v17;
      v19 = sub_100174670;
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
      v1[89] = sub_10000C8CC(v24, v25);
      sub_100572F08();
      v1[90] = sub_100572EF8();
      v16 = sub_100572E78();
      v18 = v26;
      v19 = sub_100174C6C;
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
  v20[1] = sub_100174230;
  v21 = v1[54];
  v22 = v1[55];
  v23 = v1[50];

  return MusicLibrary.undoFavorite<A>(_:)(v23, v21, v22);
}

uint64_t sub_100174230()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_100174F84;
  }

  else
  {
    v2 = sub_100174344;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100174344()
{
  sub_10000CC8C(v0[51], (v0 + 44), &qword_1006E6C10, &qword_100586D40);
  v1 = v0[47];
  v0[71] = v1;
  if (v1)
  {
    v0[72] = v0[48];
    v0[73] = sub_10000C8CC(v0 + 44, v1);
    swift_storeEnumTagMultiPayload();
    sub_100572F08();
    v0[74] = sub_100572EF8();
    v3 = sub_100572E78();

    return _swift_task_switch(sub_1001744EC, v3, v2);
  }

  else
  {
    sub_10001036C((v0 + 44), &qword_1006E6C10, &qword_100586D40);
    (*(v0[66] + 8))(v0[68], v0[65]);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1001744EC()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[61];

  sub_1002EEC34(v3, 0, v2, v1);
  sub_10017A920(v3, type metadata accessor for Notice.Variant);

  return _swift_task_switch(sub_10017459C, 0, 0);
}

uint64_t sub_10017459C()
{
  sub_100010474(v0 + 44);
  (*(v0[66] + 8))(v0[68], v0[65]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100174670()
{
  v6 = v0[76];

  sub_1001CC3B0(5, (v0 + 35));
  v5 = (*(v6 + 8) + **(v6 + 8));
  v1 = swift_task_alloc();
  v0[79] = v1;
  *v1 = v0;
  v1[1] = sub_1001747A0;
  v2 = v0[76];
  v3 = v0[75];

  return v5(v0 + 35, v3, v2);
}

uint64_t sub_1001747A0()
{
  v1 = *v0;

  sub_100109250(v1 + 280);

  return _swift_task_switch(sub_10017A9F0, 0, 0);
}

uint64_t sub_1001748A4(uint64_t a1)
{
  v2 = sub_100572EF8();
  v1[84] = v2;
  v3 = swift_task_alloc();
  v1[85] = v3;
  *(v3 + 16) = 5;
  *(v3 + 24) = v1 + 2;
  *(v3 + 32) = 0;
  v4 = swift_task_alloc();
  v1[86] = v4;
  *v4 = v1;
  v4[1] = sub_1001749B8;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 92, v2, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001005ACD10, sub_1001093B0, v3, &type metadata for Bool);
}

uint64_t sub_1001749B8()
{
  v1 = *v0;

  v2 = *(v1 + 664);
  v3 = *(v1 + 656);

  return _swift_task_switch(sub_100174B18, v3, v2);
}

uint64_t sub_100174B18()
{

  return _swift_task_switch(sub_100174B80, 0, 0);
}

uint64_t sub_100174B80()
{
  sub_100112B40((v0 + 2));
  (*(v0[57] + 8))(v0[59], v0[56]);
  (*(v0[66] + 8))(v0[68], v0[65]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100174C6C()
{
  v6 = v0[88];

  sub_1001CAB6C(0, (v0 + 26));
  v5 = (*(v6 + 8) + **(v6 + 8));
  v1 = swift_task_alloc();
  v0[91] = v1;
  *v1 = v0;
  v1[1] = sub_100174D9C;
  v2 = v0[88];
  v3 = v0[87];

  return v5(v0 + 26, v3, v2);
}

uint64_t sub_100174D9C()
{
  v1 = *v0;

  sub_100109250(v1 + 208);

  return _swift_task_switch(sub_100174EA0, 0, 0);
}

uint64_t sub_100174EA0()
{
  (*(v0[57] + 8))(v0[59], v0[56]);
  (*(v0[66] + 8))(v0[68], v0[65]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100174F84()
{
  (*(v0[66] + 8))(v0[68], v0[65]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100175054()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4 + 24))
  {
    sub_100010474((v0 + v4));
  }

  v6 = v0 + v5;
  if (*(v0 + v5 + 64) != 1)
  {
    swift_unknownObjectWeakDestroy();
    v7 = *(v6 + 48);
    if (v7 != 255)
    {
      sub_1000FF9AC(*(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), v7);
    }

    if (*(v6 + 64))
    {
    }

    if (*(v6 + 80))
    {
    }
  }

  sub_100010474((v0 + ((v5 + 103) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1001751A0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);
  v5 = (*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000116F0;

  return sub_100173B90(v6, v0 + v4, v0 + v5, v0 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8), v0 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8), v2, v3);
}

uint64_t sub_1001752D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  sub_100009DCC(&qword_1006E6428, &unk_100585DF0);
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
  sub_100009DCC(&qword_1006E5D10, &unk_100583A20);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6B80, &unk_100586B90);
  v6[29] = swift_task_alloc();
  v7 = type metadata accessor for Actions.MetricsReportingContext(0);
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001754E8, 0, 0);
}

uint64_t sub_1001754E8()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v1(3);
  }

  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  sub_10000CC8C(*(v0 + 88), v4, &qword_1006E6B80, &unk_100586B90);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_10001036C(*(v0 + 232), &qword_1006E6B80, &unk_100586B90);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 224);
    v8 = *(v0 + 104);
    sub_10010911C(*(v0 + 232), *(v0 + 256), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 264) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 272) = v9;
    v10 = sub_10056C8A8();
    *(v0 + 280) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 288) = v12;
    *(v0 + 296) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v7, 1, 1, v10);
    sub_100009DCC(&qword_1006E6D88, &qword_1005876B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057B510;
    *(inited + 32) = MusicItem.metricsContentType.getter(v8);
    *(inited + 40) = v14;
    *(inited + 48) = 0;
    *(v0 + 304) = sub_1000E0568(inited);
    *(v0 + 312) = v15;
    *(v0 + 320) = v16;
    *(v0 + 336) = v17;
    swift_setDeallocating();
    sub_100114BA8(inited + 32);
    sub_100572F08();
    *(v0 + 328) = sub_100572EF8();
    v19 = sub_100572E78();

    return _swift_task_switch(sub_1001757F4, v19, v18);
  }
}

uint64_t sub_1001757F4()
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

  sub_10000CC8C(v3, v4, &qword_1006E5D10, &unk_100583A20);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_10000CC8C(v1 + v2[5], v7, &qword_1006E6428, &unk_100585DF0);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 5893;
  sub_100019B40(v4, v6 + v5[7], &qword_1006E5D10, &unk_100583A20);
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
  sub_10000CC8C(v7, v72, &qword_1006E6428, &unk_100585DF0);
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

    sub_1000DC030(v75, v77);

    sub_1000DCFE4(v19, v17, v18, v16, SBYTE1(v16));
    sub_10001036C(v20, &qword_1006E6428, &unk_100585DF0);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_1000DC030(v75, v77);

    sub_1000DCFE4(v19, v17, v18, v16, SBYTE1(v16));

    sub_10017A920(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 176);
  v24 = *(v0 + 160);
  v25 = (*(v0 + 192) + *(*(v0 + 184) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_10000CC8C(v23, v24, &qword_1006E6428, &unk_100585DF0);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 160);
  if (v26 == 1)
  {
    sub_10001036C(*(v0 + 160), &qword_1006E6428, &unk_100585DF0);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_10017A920(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 176);
  v31 = *(v0 + 152);
  v32 = (*(v0 + 192) + *(*(v0 + 184) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_10000CC8C(v30, v31, &qword_1006E6428, &unk_100585DF0);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 288);
    v34 = *(v0 + 280);
    v35 = *(v0 + 208);
    sub_10001036C(*(v0 + 152), &qword_1006E6428, &unk_100585DF0);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 152);
    sub_10000CC8C(v36 + v14[6], *(v0 + 208), &qword_1006E5D10, &unk_100583A20);
    sub_10017A920(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 176);
  v38 = *(v0 + 144);
  sub_100019B40(*(v0 + 208), *(v0 + 192) + *(*(v0 + 184) + 56), &qword_1006E5D10, &unk_100583A20);
  sub_10000CC8C(v37, v38, &qword_1006E6428, &unk_100585DF0);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 144);
  if (v39 == 1)
  {
    sub_10001036C(*(v0 + 144), &qword_1006E6428, &unk_100585DF0);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_10017A920(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 176);
  v43 = *(v0 + 136);
  *(*(v0 + 192) + *(*(v0 + 184) + 60)) = v41;
  sub_10000CC8C(v42, v43, &qword_1006E6428, &unk_100585DF0);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 136);
  if (v44 == 1)
  {
    sub_10001036C(v45, &qword_1006E6428, &unk_100585DF0);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_10017A920(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 176);
  v48 = *(v0 + 128);
  *(*(v0 + 192) + *(*(v0 + 184) + 64)) = v46;
  sub_10000CC8C(v47, v48, &qword_1006E6428, &unk_100585DF0);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 128);
  if (v49 == 1)
  {
    sub_10001036C(*(v0 + 128), &qword_1006E6428, &unk_100585DF0);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_10017A920(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 176);
  v55 = *(v0 + 120);
  v56 = (*(v0 + 192) + *(*(v0 + 184) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100019B40(v54, v55, &qword_1006E6428, &unk_100585DF0);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 120);
  if (v57 == 1)
  {
    sub_10001036C(v58, &qword_1006E6428, &unk_100585DF0);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_10017A920(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 192);
  v61 = *(v0 + 200);
  v62 = *(v0 + 184);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_10010911C(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1006E4D30 != -1)
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
  sub_100109184(v65, v64, v63, v70, SBYTE1(v70));
  sub_10017A920(v69, type metadata accessor for MetricsEvent.Click);
  sub_10001036C(v68, &qword_1006E5D10, &unk_100583A20);

  return _swift_task_switch(sub_100175FA8, 0, 0);
}

uint64_t sub_100175FA8()
{
  sub_10017A920(*(v0 + 256), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001760E4()
{
  v1 = *(v0 + 16);
  v2 = *(sub_100009DCC(&qword_1006E6B80, &unk_100586B90) - 8);
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
      v11 = sub_10056C8A8();
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

uint64_t sub_1001763B4()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(sub_100009DCC(&qword_1006E6B80, &unk_100586B90) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = v0[4];
  v8 = v0[5];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1000116F0;

  return sub_1001752D0(v7, v8, v0 + v5, v0 + v6, v3, v2);
}

uint64_t (*Actions.Favorite.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1918989427;
  *(v0 + 24) = 0xE400000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 1918989427;
  *(v1 + 24) = 0xE400000000000000;
  return sub_100108BF8;
}

uint64_t (*Actions.Favorite.Context.menuItemCompactStyleImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6C69662E72617473;
  *(v0 + 24) = 0xE90000000000006CLL;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6C69662E72617473;
  *(v1 + 24) = 0xE90000000000006CLL;
  return sub_100109428;
}

uint64_t (*sub_100176670())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1918989427;
  *(v0 + 24) = 0xE400000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 1918989427;
  *(v1 + 24) = 0xE400000000000000;
  return sub_100109428;
}

uint64_t (*sub_100176704())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6C69662E72617473;
  *(v0 + 24) = 0xE90000000000006CLL;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6C69662E72617473;
  *(v1 + 24) = 0xE90000000000006CLL;
  return sub_100109428;
}

uint64_t (*Actions.UndoFavorite.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x616C732E72617473;
  *(v0 + 24) = 0xEA00000000006873;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x616C732E72617473;
  *(v1 + 24) = 0xEA00000000006873;
  return sub_100109428;
}

uint64_t (*Actions.UndoFavorite.Context.menuItemCompactStyleImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x616C732E72617473;
  *(v0 + 24) = 0xEF6C6C69662E6873;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x616C732E72617473;
  *(v1 + 24) = 0xEF6C6C69662E6873;
  return sub_100109428;
}

uint64_t (*sub_100176938())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x616C732E72617473;
  *(v0 + 24) = 0xEA00000000006873;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x616C732E72617473;
  *(v1 + 24) = 0xEA00000000006873;
  return sub_100109428;
}

uint64_t (*sub_1001769D8())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x616C732E72617473;
  *(v0 + 24) = 0xEF6C6C69662E6873;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x616C732E72617473;
  *(v1 + 24) = 0xEF6C6C69662E6873;
  return sub_100109428;
}

uint64_t sub_100176B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_100571558();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009DCC(&qword_1006E79C8, &qword_100589410);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v14 - v10;
  sub_10056D518();
  sub_100571658();
  (*(v5 + 8))(v7, v4);
  v12 = sub_100176CDC();
  (*(v9 + 8))(v11, v8);
  return v12;
}

uint64_t sub_100176CDC()
{
  v1 = v0;
  v2 = sub_100571548();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009DCC(&qword_1006E79C8, &qword_100589410);
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
    v15 = sub_100178550(v5);
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
    sub_100573ED8(27);

    v17 = 0xD000000000000019;
    v18 = 0x80000001005ADFC0;
    (v13)(v9, v1, v6);
    v19._countAndFlagsBits = sub_100572978();
    sub_100572A98(v19);

    v15 = v17;
    (*(v7 + 8))(v12, v6);
  }

  return v15;
}

uint64_t sub_100176FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a3;
  v5[8] = type metadata accessor for Notice.Variant(0);
  v5[9] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[10] = v9;
  *v9 = v5;
  v9[1] = sub_100177090;

  return MusicLibrary.new_dislike<A>(_:)(a2, a4, a5);
}

uint64_t sub_100177090()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_1001771DC, 0, 0);
  }
}

uint64_t sub_1001771DC()
{
  sub_10000CC8C(v0[7], (v0 + 2), &qword_1006E6C10, &qword_100586D40);
  v1 = v0[5];
  v0[11] = v1;
  if (v1)
  {
    v0[12] = v0[6];
    v0[13] = sub_10000C8CC(v0 + 2, v1);
    swift_storeEnumTagMultiPayload();
    sub_100572F08();
    v0[14] = sub_100572EF8();
    v3 = sub_100572E78();

    return _swift_task_switch(sub_100177314, v3, v2);
  }

  else
  {
    sub_10001036C((v0 + 2), &qword_1006E6C10, &qword_100586D40);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100177314()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];

  sub_1002EEC34(v3, 0, v2, v1);
  sub_10017A920(v3, type metadata accessor for Notice.Variant);

  return _swift_task_switch(sub_1001773BC, 0, 0);
}

uint64_t sub_1001773BC()
{
  sub_100010474((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100177428()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4 + 24))
  {
    sub_100010474((v0 + v4));
  }

  return swift_deallocObject();
}

uint64_t sub_100177500()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);
  v5 = (*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10000CB98;

  return sub_100176FA4(v6, v0 + v4, v0 + v5, v2, v3);
}

uint64_t sub_100177610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  sub_100009DCC(&qword_1006E6428, &unk_100585DF0);
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
  sub_100009DCC(&qword_1006E5D10, &unk_100583A20);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6B80, &unk_100586B90);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext(0);
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_100177824, 0, 0);
}

uint64_t sub_100177824()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_10000CC8C(*(v0 + 72), v3, &qword_1006E6B80, &unk_100586B90);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001036C(*(v0 + 216), &qword_1006E6B80, &unk_100586B90);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 88);
    sub_10010911C(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 248) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 256) = v8;
    v9 = sub_10056C8A8();
    *(v0 + 264) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 272) = v11;
    *(v0 + 280) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_100009DCC(&qword_1006E6D88, &qword_1005876B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057B510;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 288) = sub_1000E0568(inited);
    *(v0 + 296) = v14;
    *(v0 + 304) = v15;
    *(v0 + 320) = v16;
    swift_setDeallocating();
    sub_100114BA8(inited + 32);
    sub_100572F08();
    *(v0 + 312) = sub_100572EF8();
    v18 = sub_100572E78();

    return _swift_task_switch(sub_100177B18, v18, v17);
  }
}

uint64_t sub_100177B18()
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

  sub_10000CC8C(v3, v4, &qword_1006E5D10, &unk_100583A20);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_10000CC8C(v1 + v2[5], v7, &qword_1006E6428, &unk_100585DF0);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 6149;
  sub_100019B40(v4, v6 + v5[7], &qword_1006E5D10, &unk_100583A20);
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
  sub_10000CC8C(v7, v72, &qword_1006E6428, &unk_100585DF0);
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

    sub_1000DC030(v75, v77);

    sub_1000DCFE4(v19, v17, v18, v16, SBYTE1(v16));
    sub_10001036C(v20, &qword_1006E6428, &unk_100585DF0);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_1000DC030(v75, v77);

    sub_1000DCFE4(v19, v17, v18, v16, SBYTE1(v16));

    sub_10017A920(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = (*(v0 + 176) + *(*(v0 + 168) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_10000CC8C(v23, v24, &qword_1006E6428, &unk_100585DF0);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 144);
  if (v26 == 1)
  {
    sub_10001036C(*(v0 + 144), &qword_1006E6428, &unk_100585DF0);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_10017A920(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = (*(v0 + 176) + *(*(v0 + 168) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_10000CC8C(v30, v31, &qword_1006E6428, &unk_100585DF0);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 192);
    sub_10001036C(*(v0 + 136), &qword_1006E6428, &unk_100585DF0);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 136);
    sub_10000CC8C(v36 + v14[6], *(v0 + 192), &qword_1006E5D10, &unk_100583A20);
    sub_10017A920(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  sub_100019B40(*(v0 + 192), *(v0 + 176) + *(*(v0 + 168) + 56), &qword_1006E5D10, &unk_100583A20);
  sub_10000CC8C(v37, v38, &qword_1006E6428, &unk_100585DF0);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 128);
  if (v39 == 1)
  {
    sub_10001036C(*(v0 + 128), &qword_1006E6428, &unk_100585DF0);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_10017A920(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 120);
  *(*(v0 + 176) + *(*(v0 + 168) + 60)) = v41;
  sub_10000CC8C(v42, v43, &qword_1006E6428, &unk_100585DF0);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 120);
  if (v44 == 1)
  {
    sub_10001036C(v45, &qword_1006E6428, &unk_100585DF0);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_10017A920(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  *(*(v0 + 176) + *(*(v0 + 168) + 64)) = v46;
  sub_10000CC8C(v47, v48, &qword_1006E6428, &unk_100585DF0);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 112);
  if (v49 == 1)
  {
    sub_10001036C(*(v0 + 112), &qword_1006E6428, &unk_100585DF0);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_10017A920(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 160);
  v55 = *(v0 + 104);
  v56 = (*(v0 + 176) + *(*(v0 + 168) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100019B40(v54, v55, &qword_1006E6428, &unk_100585DF0);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 104);
  if (v57 == 1)
  {
    sub_10001036C(v58, &qword_1006E6428, &unk_100585DF0);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_10017A920(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_10010911C(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1006E4D30 != -1)
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
  sub_100109184(v65, v64, v63, v70, SBYTE1(v70));
  sub_10017A920(v69, type metadata accessor for MetricsEvent.Click);
  sub_10001036C(v68, &qword_1006E5D10, &unk_100583A20);

  return _swift_task_switch(sub_1001782CC, 0, 0);
}

uint64_t sub_1001782CC()
{
  sub_10017A920(*(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100178408()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(sub_100009DCC(&qword_1006E6B80, &unk_100586B90) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000116F0;

  return sub_100177610(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_100178550(uint64_t a1)
{
  v2 = sub_100571548();
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
  sub_100573ED8(17);

  v14 = 0x206E776F6E6B6E55;
  v15 = 0xEF206E6F73616572;
  (v9)(v5, a1, v2);
  v16._countAndFlagsBits = sub_100572978();
  sub_100572A98(v16);

  v13 = v14;
  (*(v3 + 8))(v8, v2);
  return v13;
}

uint64_t sub_100178898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_100571678();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009DCC(&qword_1006E79C0, &qword_100589408);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v14 - v10;
  sub_10056D498();
  sub_100571658();
  (*(v5 + 8))(v7, v4);
  v12 = sub_100178AB4();
  (*(v9 + 8))(v11, v8);
  return v12;
}

uint64_t sub_100178AB4()
{
  v1 = sub_100571668();
  v19 = *(v1 - 8);
  __chkstk_darwin();
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v18 - v4;
  v6 = sub_100009DCC(&qword_1006E79C0, &qword_100589408);
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
    v16 = sub_100572978();
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
    sub_100573ED8(27);

    v20 = 0xD000000000000019;
    v21 = 0x80000001005ADFC0;
    (v13)(v9, v18, v6);
    v22._countAndFlagsBits = sub_100572978();
    sub_100572A98(v22);

    v16 = v20;
    (*(v7 + 8))(v12, v6);
  }

  return v16;
}

uint64_t sub_100178DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1000116F0;

  return MusicLibrary.new_undoDislike<A>(_:)(a2, a3, a4);
}

uint64_t sub_100178E7C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100178F38()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);
  v5 = v0[4];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000116F0;

  return sub_100178DC4(v5, v0 + v4, v2, v3);
}

uint64_t sub_10017901C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  sub_100009DCC(&qword_1006E6428, &unk_100585DF0);
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
  sub_100009DCC(&qword_1006E5D10, &unk_100583A20);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6B80, &unk_100586B90);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext(0);
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_100179230, 0, 0);
}

uint64_t sub_100179230()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_10000CC8C(*(v0 + 72), v3, &qword_1006E6B80, &unk_100586B90);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001036C(*(v0 + 216), &qword_1006E6B80, &unk_100586B90);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 88);
    sub_10010911C(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 248) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 256) = v8;
    v9 = sub_10056C8A8();
    *(v0 + 264) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 272) = v11;
    *(v0 + 280) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_100009DCC(&qword_1006E6D88, &qword_1005876B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057B510;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 288) = sub_1000E0568(inited);
    *(v0 + 296) = v14;
    *(v0 + 304) = v15;
    *(v0 + 320) = v16;
    swift_setDeallocating();
    sub_100114BA8(inited + 32);
    sub_100572F08();
    *(v0 + 312) = sub_100572EF8();
    v18 = sub_100572E78();

    return _swift_task_switch(sub_100179524, v18, v17);
  }
}

uint64_t sub_100179524()
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

  sub_10000CC8C(v3, v4, &qword_1006E5D10, &unk_100583A20);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_10000CC8C(v1 + v2[5], v7, &qword_1006E6428, &unk_100585DF0);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 6405;
  sub_100019B40(v4, v6 + v5[7], &qword_1006E5D10, &unk_100583A20);
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
  sub_10000CC8C(v7, v72, &qword_1006E6428, &unk_100585DF0);
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

    sub_1000DC030(v75, v77);

    sub_1000DCFE4(v19, v17, v18, v16, SBYTE1(v16));
    sub_10001036C(v20, &qword_1006E6428, &unk_100585DF0);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_1000DC030(v75, v77);

    sub_1000DCFE4(v19, v17, v18, v16, SBYTE1(v16));

    sub_10017A920(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = (*(v0 + 176) + *(*(v0 + 168) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_10000CC8C(v23, v24, &qword_1006E6428, &unk_100585DF0);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 144);
  if (v26 == 1)
  {
    sub_10001036C(*(v0 + 144), &qword_1006E6428, &unk_100585DF0);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_10017A920(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = (*(v0 + 176) + *(*(v0 + 168) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_10000CC8C(v30, v31, &qword_1006E6428, &unk_100585DF0);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 192);
    sub_10001036C(*(v0 + 136), &qword_1006E6428, &unk_100585DF0);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 136);
    sub_10000CC8C(v36 + v14[6], *(v0 + 192), &qword_1006E5D10, &unk_100583A20);
    sub_10017A920(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  sub_100019B40(*(v0 + 192), *(v0 + 176) + *(*(v0 + 168) + 56), &qword_1006E5D10, &unk_100583A20);
  sub_10000CC8C(v37, v38, &qword_1006E6428, &unk_100585DF0);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 128);
  if (v39 == 1)
  {
    sub_10001036C(*(v0 + 128), &qword_1006E6428, &unk_100585DF0);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_10017A920(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 120);
  *(*(v0 + 176) + *(*(v0 + 168) + 60)) = v41;
  sub_10000CC8C(v42, v43, &qword_1006E6428, &unk_100585DF0);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 120);
  if (v44 == 1)
  {
    sub_10001036C(v45, &qword_1006E6428, &unk_100585DF0);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_10017A920(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  *(*(v0 + 176) + *(*(v0 + 168) + 64)) = v46;
  sub_10000CC8C(v47, v48, &qword_1006E6428, &unk_100585DF0);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 112);
  if (v49 == 1)
  {
    sub_10001036C(*(v0 + 112), &qword_1006E6428, &unk_100585DF0);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_10017A920(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 160);
  v55 = *(v0 + 104);
  v56 = (*(v0 + 176) + *(*(v0 + 168) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100019B40(v54, v55, &qword_1006E6428, &unk_100585DF0);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 104);
  if (v57 == 1)
  {
    sub_10001036C(v58, &qword_1006E6428, &unk_100585DF0);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_10017A920(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_10010911C(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1006E4D30 != -1)
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
  sub_100109184(v65, v64, v63, v70, SBYTE1(v70));
  sub_10017A920(v69, type metadata accessor for MetricsEvent.Click);
  sub_10001036C(v68, &qword_1006E5D10, &unk_100583A20);

  return _swift_task_switch(sub_10017A98C, 0, 0);
}

uint64_t sub_100179CD8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(sub_100009DCC(&qword_1006E6B80, &unk_100586B90) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000116F0;

  return sub_10017901C(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_100179E40(uint64_t a1, uint64_t a2)
{
  sub_10056CC38();
  __chkstk_darwin();
  v2 = sub_100572888();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v11[-v6];
  sub_100572818();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
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
  return sub_100109428;
}

uint64_t sub_10017A0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10056CC38();
  __chkstk_darwin();
  v4 = sub_100572888();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v13[-v8];
  sub_100572818();
  (*(v5 + 16))(v7, v9, v4);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v10 = qword_1006FC3B8;
  sub_10056CBC8();
  v11 = sub_100572948();
  (*(v5 + 8))(v9, v4);
  return v11;
}

uint64_t (*sub_10017A2C8())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7568742E646E6168;
  *(v0 + 24) = 0xEF6E776F6473626DLL;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7568742E646E6168;
  *(v1 + 24) = 0xEF6E776F6473626DLL;
  return sub_100109428;
}

uint64_t (*Actions.UndoSuggestLess.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000015;
  *(v0 + 24) = 0x80000001005ADFE0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000015;
  *(v1 + 24) = 0x80000001005ADFE0;
  return sub_100109428;
}

uint64_t (*sub_10017A414())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000015;
  *(v0 + 24) = 0x80000001005ADFE0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000015;
  *(v1 + 24) = 0x80000001005ADFE0;
  return sub_100109428;
}

uint64_t _s9MusicCore7ActionsO15UndoSuggestLessO7ContextV13menuItemTitleSSvg_0()
{
  sub_10056CC38();
  __chkstk_darwin();
  v0 = sub_100572888();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  sub_100572818();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v6 = qword_1006FC3B8;
  sub_10056CBC8();
  v7 = sub_100572948();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t _s9MusicCore7ActionsO12UndoFavoriteO7ContextV25menuItemCompactStyleTitleSSSgvg_0()
{
  sub_10056CC38();
  __chkstk_darwin();
  v0 = sub_100572888();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  sub_100572818();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v6 = qword_1006FC3B8;
  sub_10056CBC8();
  v7 = sub_100572948();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t sub_10017A8E8()
{

  return swift_deallocObject();
}

uint64_t sub_10017A920(uint64_t a1, uint64_t (*a2)(void))
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
  sub_1000FF9D0(v34, &v22[(v21 + 15) & 0xFFFFFFFFFFFFFFF8]);

  return sub_10017B4B4;
}

uint64_t static Actions.RateSong.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 38;
  *(a5 + 40) = sub_1001024FC;
  *(a5 + 48) = 0;
  *(a5 + 56) = 0x4014000000000000;
  *(a5 + 64) = &unk_100589480;
  *(a5 + 72) = 0;
  *(a5 + 80) = &unk_100589488;
  *(a5 + 88) = 0;
}

uint64_t sub_10017ACC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = v2;
  *(a2 + 32) = 38;
  *(a2 + 40) = sub_1001024FC;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0x4014000000000000;
  *(a2 + 64) = &unk_100589480;
  *(a2 + 72) = 0;
  *(a2 + 80) = &unk_100589488;
  *(a2 + 88) = 0;
}

uint64_t Actions.RateSong.Context.menuItemTitle.getter()
{
  sub_10056CC38();
  __chkstk_darwin();
  v0 = sub_100572888();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  sub_100572818();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v6 = qword_1006FC3B8;
  sub_10056CBC8();
  v7 = sub_100572948();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t (*Actions.RateSong.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000017;
  *(v0 + 24) = 0x80000001005AE1A0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000017;
  *(v1 + 24) = 0x80000001005AE1A0;
  return sub_100108BF8;
}

uint64_t (*sub_10017AFE4())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000017;
  *(v0 + 24) = 0x80000001005AE1A0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000017;
  *(v1 + 24) = 0x80000001005AE1A0;
  return sub_100109428;
}

unint64_t sub_10017B084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[2] = a2;
  v22[3] = a3;
  v5 = sub_1005717A8();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100009DCC(&qword_1006E6D18, &qword_100586FC8);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v22 - v11;
  sub_100571898();
  sub_100571888();
  v13 = sub_1005716D8();

  if ((v13 & 1) == 0)
  {
    return 0xD00000000000001DLL;
  }

  v22[1] = a4;
  v14 = [objc_opt_self() standardUserDefaults];
  v15 = sub_100572898();
  v16 = [v14 BOOLForKey:v15];

  if (!v16)
  {
    return 0xD000000000000018;
  }

  sub_10056D4C8();
  sub_100571658();
  (*(v6 + 8))(v8, v5);
  if ((*(v10 + 88))(v12, v9) == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v10 + 96))(v12, v9);
    v17 = sub_100571798();
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

uint64_t sub_10017B3F8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

id NSUserDefaults.showStarRatings.getter()
{
  v1 = sub_100572898();
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

uint64_t sub_10017B558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  sub_10056CC38();
  v8[37] = swift_task_alloc();
  v10 = sub_100572888();
  v8[38] = v10;
  v8[39] = *(v10 - 8);
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  sub_100572F08();
  v8[42] = sub_100572EF8();
  v12 = sub_100572E78();

  return _swift_task_switch(sub_10017B6E4, v12, v11);
}

uint64_t sub_10017B6E4()
{
  v1 = v0[41];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];

  sub_100572818();
  v50 = *(v3 + 16);
  v50(v2, v1, v4);
  if (qword_1006E4C60 != -1)
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
  v8 = qword_1006FC3B8;
  v49 = *(v0 + 31);
  sub_10056CBC8();
  v9 = v8;
  sub_100572948();
  v10 = *(v7 + 8);
  v10(v5, v6);
  v11 = sub_100572898();

  v37 = [objc_opt_self() alertControllerWithTitle:v11 message:0 preferredStyle:1];

  sub_100572818();
  v50(v48, v5, v6);
  sub_10056CBC8();
  sub_100572948();
  v10(v5, v6);
  v12 = sub_100572898();

  v38 = objc_opt_self();
  v13 = [v38 actionWithTitle:v12 style:1 handler:0];

  v47 = v13;
  [v37 addAction:v13];
  v14 = v40(v39);
  v41 = v15;
  sub_100572818();
  v50(v48, v5, v6);
  sub_10056CBC8();
  sub_100572948();
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

  v19 = sub_100572898();

  v0[18] = sub_10017C424;
  v0[19] = v17;
  v0[14] = _NSConcreteStackBlock;
  v0[15] = 1107296256;
  v0[16] = sub_10017EDD8;
  v0[17] = &unk_10068D3B8;
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
    v24 = qword_1006E4FE8;

    if (v24 != -1)
    {
      swift_once();
    }

    v25 = sub_10056DF88();
    sub_10000C49C(v25, qword_1006ECA00);
    v26 = sub_10056DF68();
    v27 = sub_100573448();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Deferring presentation…", v28, 2u);
    }

    v29 = v0[30];

    v30 = objc_allocWithZone(MSVBlockGuard);
    v0[24] = sub_1002EC584;
    v0[25] = 0;
    v0[20] = _NSConcreteStackBlock;
    v0[21] = 1107296256;
    v0[22] = sub_1002ED584;
    v0[23] = &unk_10068D3E0;
    v31 = _Block_copy(v0 + 20);
    v32 = [v30 initWithTimeout:v31 interruptionHandler:10.0];
    _Block_release(v31);

    sub_1000FEAFC(v29, (v0 + 2));
    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    sub_1000FF9D0((v0 + 2), v33 + 24);
    *(v33 + 120) = v37;
    *(v33 + 128) = 257;
    *(v33 + 136) = 0;
    *(v33 + 144) = 0;
    v34 = v32;
    v22(v29, v37, sub_100109350, v33);
    sub_1000F3E14(v22, v23);
  }

  else
  {
    sub_1002EAA64(v37, 1, 1, 0, 0);
  }

  v35 = v0[1];

  return v35();
}

uint64_t sub_10017BE80()
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
    sub_1000FF9AC(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10017BFA8()
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
  v11[1] = sub_10000CB98;

  return sub_10017B558(v5, v9, v0 + v6, v10, v0 + v8, v2, v3, v4);
}

uint64_t sub_10017C104()
{

  return swift_deallocObject();
}

uint64_t sub_10017C13C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a7;
  v27 = a8;
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006E6420, &qword_100586E50);
  __chkstk_darwin();
  v17 = &v26 - v16;
  v18 = sub_100572F48();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v13 + 16))(v15, a5, a6);
  sub_100572F08();
  v19 = a2;

  v20 = sub_100572EF8();
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
  sub_1001B3FAC(0, 0, v17, &unk_100589528, v22);
}

uint64_t sub_10017C360()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10017C468(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10017C480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  sub_100572F08();
  v8[13] = sub_100572EF8();
  v10 = sub_100572E78();
  v8[14] = v10;
  v8[15] = v9;

  return _swift_task_switch(sub_10017C588, v10, v9);
}

uint64_t sub_10017C588()
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
  v6[1] = sub_10017C670;
  v8 = v0[9];
  v10 = v0[6];
  v9 = v0[7];
  v11.n128_f64[0] = v5;

  return MusicLibrary.setUserRating<A>(_:for:)(v10, v9, v7, v8, v11);
}

uint64_t sub_10017C670()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_10017C81C;
  }

  else
  {
    v5 = sub_10017C7AC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10017C7AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10017C81C()
{
  v31 = v0;

  if (qword_1006E4C68 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[10];
  v4 = v0[6];
  v3 = v0[7];
  v5 = sub_10056DF88();
  sub_10000C49C(v5, static Logger.actions);
  v6 = *(v2 + 16);
  v6(v1, v4, v3);
  swift_errorRetain();
  v7 = sub_10056DF68();
  v8 = sub_100573428();

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
    v17 = sub_100572978();
    v19 = v18;
    (*(v13 + 8))(v11, v14);
    v20 = sub_1000C9784(v17, v19, &v30);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2082;
    v0[2] = v10;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
    v21 = sub_100572978();
    v23 = sub_1000C9784(v21, v22, &v30);

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

uint64_t sub_10017CB14()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    sub_1000FF9AC(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
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

uint64_t sub_10017CBA8()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10017CC74(uint64_t a1)
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
  v10[1] = sub_10000CB98;

  return sub_10017C480(a1, v6, v7, v4, v8, v9, v1 + v5, v3);
}

uint64_t View.alertPresenting(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{

  sub_100009DCC(&qword_1006E7A00, qword_100589530);
  sub_100010BC0(&qword_1006E7A08, &qword_1006E7A00, qword_100589530, &protocol conformance descriptor for PresentedViewState<A>);
  sub_10056EA78();
  v7 = sub_10017CE8C();
  View.viewPresenting<A, B>(_:modifier:)(a1, a3, v7, x8_0);
}

unint64_t sub_10017CE8C()
{
  result = qword_1006E7A10;
  if (!qword_1006E7A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E7A10);
  }

  return result;
}

uint64_t sub_10017CEE0(void *a1)
{
  sub_10056ECA8();
  sub_100010324(&qword_1006E7A18, &qword_100589548);
  sub_10056ECA8();
  sub_10017CE8C();
  swift_getWitnessTable();
  sub_100010BC0(&qword_1006E7A20, &qword_1006E7A18, &qword_100589548, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  return swift_getWitnessTable();
}

uint64_t sub_10017CFF4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_100009DCC(&qword_1006E7A40, &qword_1005895E8);
  v56 = *(v5 - 8);
  __chkstk_darwin();
  v58 = &v44 - v6;
  v59 = sub_100009DCC(&qword_1006E7A48, &qword_1005895F0);
  __chkstk_darwin();
  v60 = &v44 - v7;
  v8 = sub_100009DCC(&qword_1006E7A50, &qword_1005895F8);
  v55 = *(v8 - 8);
  __chkstk_darwin();
  v57 = &v44 - v9;
  v10 = sub_100009DCC(&qword_1006E7A58, &qword_100589600);
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
  sub_10017E66C(v73, &v65);
  v20 = sub_1005704B8();
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

  sub_100009DCC(&qword_1006E7A00, qword_100589530);
  sub_100010BC0(&qword_1006E7A08, &qword_1006E7A00, qword_100589530, &protocol conformance descriptor for PresentedViewState<A>);
  sub_10056EA88();
  swift_getKeyPath();
  sub_10056EA98();

  if (v16)
  {
    v58 = &v44;
    LODWORD(v56) = v67;
    __chkstk_darwin();
    __chkstk_darwin();
    v23 = sub_100009DCC(&qword_1006E7A60, &qword_100589630);
    v24 = sub_100009DCC(&qword_1006E7A68, &qword_100589638);
    v45 = sub_1000C5FB8();
    v46 = sub_10017E724();
    v47 = sub_10017E818();
    v25 = v57;
    sub_100570198();

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
    sub_10056F5B8();

    sub_10001036C(v81, &qword_1006E7A90, &qword_10058D8D0);
    (*(v26 + 8))(v57, v27);
  }

  else
  {
    v57 = &v44;
    LODWORD(v55) = v67;
    __chkstk_darwin();
    __chkstk_darwin();
    v34 = sub_100009DCC(&qword_1006E7A60, &qword_100589630);
    v35 = sub_100009DCC(&qword_1006E7A68, &qword_100589638);
    v45 = sub_1000C5FB8();
    v46 = sub_10017E724();
    v47 = sub_10017E818();
    v36 = v35;
    v37 = v58;
    sub_100570288();

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
    sub_10056F5B8();

    sub_10001036C(v81, &qword_1006E7A90, &qword_10058D8D0);
    (*(v38 + 8))(v58, v39);
  }

  v43 = v54;
  sub_10017E894(v32, v54);
  return (*(v51 + 56))(v43, 0, 1, v52);
}

uint64_t sub_10017D99C@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  *a2 = v4;
  return result;
}

uint64_t sub_10017DA34(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10056E488();
}

uint64_t sub_10017DAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  sub_10017E66C(a1, v14);
  sub_100009DCC(&qword_1006E7A98, &qword_100589670);
  sub_100009DCC(&qword_1006E7AA0, &qword_100589678);
  sub_10017E984();
  v11 = sub_100010324(&qword_1006E7A78, &qword_100589640);
  v12 = sub_100010BC0(&qword_1006E7A80, &qword_1006E7A78, &qword_100589640, &protocol conformance descriptor for Button<A>);
  v14[0] = v11;
  v14[1] = v12;
  swift_getOpaqueTypeConformance2();
  return sub_1005708B8();
}

uint64_t sub_10017DC60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 24))
  {
    sub_1000C5FB8();

    result = sub_10056FF28();
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

uint64_t sub_10017DCE4@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a1;
  v28 = a4;
  sub_100009DCC(&qword_1006E7AC0, &qword_100589688);
  __chkstk_darwin();
  v7 = &v26 - v6;
  sub_100009DCC(&qword_1006E6860, &qword_100586438);
  __chkstk_darwin();
  v9 = &v26 - v8;
  v10 = sub_100009DCC(&qword_1006E7A78, &qword_100589640);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v26 - v12;
  v32 = a2[1];
  v30 = a2[1];
  v14 = *(a2 + 32);
  if (v14 == 2)
  {
    v15 = sub_10056E588();
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  }

  else
  {

    if (v14)
    {
      sub_10056E558();
    }

    else
    {
      sub_10056E578();
    }

    v16 = sub_10056E588();
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
  sub_1000CB298(&v32, v29);
  sub_1000CB298(&v31, v29);
  sub_1000E672C(v18, v17);
  sub_10017E66C(a3, v29);
  sub_1000C5FB8();
  sub_1005706F8();
  v23 = 1;
  if ((a3[3] & 1) == 0 && *(a3 + 5) == v27)
  {
    sub_10056ED18();
    v23 = 0;
  }

  v24 = sub_10056ED28();
  (*(*(v24 - 8) + 56))(v7, v23, 1, v24);
  sub_100010BC0(&qword_1006E7A80, &qword_1006E7A78, &qword_100589640, &protocol conformance descriptor for Button<A>);
  sub_100570138();
  sub_10001036C(v7, &qword_1006E7AC0, &qword_100589688);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_10017E0B0(__int128 *a1, __int128 *a2)
{
  sub_100009DCC(&qword_1006E6420, &qword_100586E50);
  __chkstk_darwin();
  v5 = &v17[-v4 - 8];
  v6 = sub_100572F48();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = *a1;
  v18 = a1[1];
  v19 = v7;
  v8 = *(a1 + 5);
  v9 = *(a1 + 6);
  sub_100572F08();
  sub_1000CB298(&v19, v17);
  sub_1000CB298(&v18, v17);
  sub_1000E672C(v8, v9);
  sub_10017E66C(a2, v17);
  v10 = sub_100572EF8();
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
  sub_1001B3FAC(0, 0, v5, &unk_100589698, v11);
}

uint64_t sub_10017E250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 48);
  *(v5 + 48) = *(a5 + 32);
  *(v5 + 64) = v7;
  *(v5 + 80) = *(a5 + 64);
  v8 = *(a5 + 16);
  *(v5 + 16) = *a5;
  *(v5 + 32) = v8;
  *(v5 + 88) = sub_100572F08();
  *(v5 + 96) = sub_100572EF8();
  v9 = *(a4 + 40);
  if (v9)
  {
    v14 = (v9 + *v9);
    v10 = swift_task_alloc();
    *(v5 + 104) = v10;
    *v10 = v5;
    v10[1] = sub_10017E3DC;

    return v14(a4, v5 + 16);
  }

  else
  {
    v13 = sub_100572E78();

    return _swift_task_switch(sub_10017E520, v13, v12);
  }
}

uint64_t sub_10017E3DC()
{

  v1 = sub_100572E78();

  return _swift_task_switch(sub_10017E520, v1, v0);
}

uint64_t sub_10017E520()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10017E580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 8);
  v6 = sub_1005709E8();
  v8 = v7;
  v9 = a2 + *(sub_100009DCC(&qword_1006E7A28, &qword_1005895D0) + 36);
  sub_10017CFF4(v5, v9);
  v10 = (v9 + *(sub_100009DCC(&qword_1006E7A30, &qword_1005895D8) + 36));
  *v10 = v6;
  v10[1] = v8;
  v11 = sub_100009DCC(&qword_1006E7A38, &qword_1005895E0);
  v12 = *(*(v11 - 8) + 16);

  return v12(a2, a1, v11);
}

unint64_t sub_10017E724()
{
  result = qword_1006E7A70;
  if (!qword_1006E7A70)
  {
    sub_100010324(&qword_1006E7A60, &qword_100589630);
    sub_100010324(&qword_1006E7A78, &qword_100589640);
    sub_100010BC0(&qword_1006E7A80, &qword_1006E7A78, &qword_100589640, &protocol conformance descriptor for Button<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E7A70);
  }

  return result;
}

unint64_t sub_10017E818()
{
  result = qword_1006E7A88;
  if (!qword_1006E7A88)
  {
    sub_100010324(&qword_1006E7A68, &qword_100589638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E7A88);
  }

  return result;
}

uint64_t sub_10017E894(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E7A58, &qword_100589600);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10017E984()
{
  result = qword_1006E7AA8;
  if (!qword_1006E7AA8)
  {
    sub_100010324(&qword_1006E7A98, &qword_100589670);
    sub_100010BC0(&qword_1006E7AB0, &qword_1006E7AB8, &qword_100589680, &protocol conformance descriptor for [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E7AA8);
  }

  return result;
}

uint64_t sub_10017EA34()
{

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10017EAB0()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10017EB28(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000CB98;

  return sub_10017E250(a1, v4, v5, v1 + 32, v1 + 88);
}

uint64_t sub_10017EBDC()
{

  return swift_deallocObject();
}

uint64_t sub_10017EC2C()
{

  return swift_deallocObject();
}

uint64_t sub_10017EC64(uint64_t *a1)
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

unint64_t sub_10017ECE0()
{
  result = qword_1006E7AC8;
  if (!qword_1006E7AC8)
  {
    sub_100010324(&qword_1006E7A28, &qword_1005895D0);
    sub_100010BC0(&qword_1006E7AD0, &qword_1006E7A38, &qword_1005895E0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100010BC0(&qword_1006E7AD8, &qword_1006E7A30, &qword_1005895D8, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E7AC8);
  }

  return result;
}

void sub_10017EDD8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10017EE54(uint64_t a1, __int128 *a2, __int128 *a3)
{
  sub_100009DCC(&qword_1006E6420, &qword_100586E50);
  __chkstk_darwin();
  v6 = &v18[-v5 - 8];
  v7 = sub_100572F48();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = *a2;
  v19 = a2[1];
  v20 = v8;
  v9 = *(a2 + 5);
  v10 = *(a2 + 6);
  sub_100572F08();
  sub_1000CB298(&v20, v18);
  sub_1000CB298(&v19, v18);
  sub_1000E672C(v9, v10);
  sub_10017E66C(a3, v18);
  v11 = sub_100572EF8();
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
  sub_1001B3FAC(0, 0, v6, &unk_100589708, v12);
}

id static UIAlertAction.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v40 = a7;
  v41 = a8;
  v42 = sub_10056C8A8();
  v15 = *(v42 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v38 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v39 = &v38 - v17;
  sub_100009DCC(&qword_1006E5D10, &unk_100583A20);
  __chkstk_darwin();
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v38 - v20;
  if (qword_1006E5608 != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    sub_1001FA980(a1, a2, a3, a4, a5, a6, v40, v41, v21, a9 & 1);
    sub_10017F84C(v21, v19);
    v22 = v42;
    if ((*(v15 + 48))(v19, 1, v42) == 1)
    {
      sub_1000C6EF4(v21);
      v23 = v19;
    }

    else
    {
      v24 = *(v15 + 32);
      v25 = v39;
      v24();
      v26 = [objc_opt_self() sharedApplication];
      sub_10056C7E8(v27);
      v29 = v28;
      v30 = [v26 canOpenURL:v28];

      if (v30)
      {
        v31 = v38;
        (*(v15 + 16))(v38, v25, v22);
        v32 = (*(v15 + 80) + 16) & ~*(v15 + 80);
        v33 = swift_allocObject();
        (v24)(v33 + v32, v31, v22);
        v34 = sub_100572898();
        aBlock[4] = sub_10017F944;
        aBlock[5] = v33;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10017EDD8;
        aBlock[3] = &unk_10068D5F0;
        v35 = _Block_copy(aBlock);

        v36 = [swift_getObjCClassFromMetadata() actionWithTitle:v34 style:0 handler:v35];
        _Block_release(v35);

        (*(v15 + 8))(v25, v22);
        sub_1000C6EF4(v21);
        return v36;
      }

      (*(v15 + 8))(v25, v22);
      v23 = v21;
    }

    sub_1000C6EF4(v23);
  }

  return 0;
}

void sub_10017F414()
{
  v0 = [objc_opt_self() sharedApplication];
  sub_10056C7E8(v1);
  v3 = v2;
  sub_1000F41C8(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_10017F9CC();
  isa = sub_100572688().super.isa;

  [v0 openURL:v3 options:isa completionHandler:0];
}

id sub_10017F500(__int128 *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    a2 = ~*(a1 + 32) & 1;
  }

  if (*(a1 + 1))
  {
    v5 = sub_100572898();
    if (*(a1 + 3))
    {
LABEL_5:
      v6 = sub_100572898();
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

      sub_1000E672C(v11, v22);

      sub_1000E672C(v11, v22);
      sub_10017E66C(a1, aBlock);
      v24 = sub_100572898();
      aBlock[4] = sub_10017FA94;
      aBlock[5] = v19;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10017EDD8;
      aBlock[3] = &unk_10068D640;
      v25 = _Block_copy(aBlock);

      v26 = [objc_opt_self() actionWithTitle:v24 style:v30 handler:v25];
      _Block_release(v25);

      [v29 addAction:v26];
      if (a1[3])
      {

        sub_1000F3E14(v11, v22);
        v10 = v31;
      }

      else
      {
        v10 = v31;
        if (v31 == *(a1 + 5))
        {
          [v29 setPreferredAction:v26];

          sub_1000F3E14(v23, v22);
        }

        else
        {

          sub_1000F3E14(v23, v22);
        }
      }

      v8 = v10 + 1;
      v9 += 7;
    }

    while (v28 != v8);
  }

  return v29;
}

uint64_t sub_10017F84C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E5D10, &unk_100583A20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10017F8BC()
{
  v1 = sub_10056C8A8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_10017F944()
{
  sub_10056C8A8();

  sub_10017F414();
}

uint64_t sub_10017F9B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10017F9CC()
{
  result = qword_1006E5F00;
  if (!qword_1006E5F00)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E5F00);
  }

  return result;
}

uint64_t sub_10017FA24()
{

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10017FAA0()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10017FB18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000CB98;

  return sub_10017E250(a1, v4, v5, v1 + 32, v1 + 88);
}

void Alert.Action.init(id:title:role:perform:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v22 = a7;
  v15 = sub_10056CAE8();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    a1 = sub_10056CAB8();
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
    v5[1] = sub_10000CB98;

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

unint64_t sub_10017FEA4()
{
  result = qword_1006E7AE0;
  if (!qword_1006E7AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E7AE0);
  }

  return result;
}

unint64_t sub_10017FEFC()
{
  result = qword_1006E7AE8;
  if (!qword_1006E7AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E7AE8);
  }

  return result;
}

uint64_t sub_10017FF50(uint64_t a1, int a2)
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

uint64_t sub_10017FF98(uint64_t result, int a2, int a3)
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

uint64_t sub_100180008(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

char *sub_10018004C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39 = a3;
  v38 = a2;
  ObjectType = swift_getObjectType();
  sub_10056CC38();
  __chkstk_darwin();
  v7 = sub_100572888();
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
  sub_100180E04(a1, v42);
  v41.receiver = v4;
  v41.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v41, "initWithNibName:bundle:", 0, 0);
  v17 = sub_100572898();
  [v16 setTitle:v17];

  if (*(a1 + 5))
  {

    v18 = sub_100572898();
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
  aBlock[4] = sub_100180EDC;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10017EDD8;
  aBlock[3] = &unk_10068D9A8;
  v24 = _Block_copy(aBlock);
  sub_100180E04(a1, v42);

  [v19 addTextFieldWithConfigurationHandler:v24];
  _Block_release(v24);
  sub_100572818();
  (*(v8 + 16))(v10, v12, v7);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v25 = qword_1006FC3B8;
  sub_10056CBC8();
  sub_100572948();
  (*(v8 + 8))(v12, v7);
  v26 = sub_100572898();

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

  v32 = sub_100572898();
  v42[4] = sub_100180F40;
  v42[5] = v30;
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 1107296256;
  v42[2] = sub_10017EDD8;
  v42[3] = &unk_10068D9F8;
  v33 = _Block_copy(v42);

  v34 = [v27 actionWithTitle:v32 style:0 handler:v33];
  _Block_release(v33);

  sub_100180F4C(a1);
  [v34 setEnabled:0];
  v35 = *(v19 + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_submitAction);
  *(v19 + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_submitAction) = v34;
  v36 = v34;

  [v19 addAction:v36];
  [v19 setPreferredAction:v36];

  return v19;
}

void sub_100180640(void *a1, uint64_t a2, uint64_t a3)
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

    v9 = sub_100572898();
    sub_1000CA864(v8, v7);
LABEL_6:
    [a1 setText:v9];
  }

  if (*(a3 + 56))
  {
    v10 = sub_100572898();
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

void sub_10018077C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
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

    v7 = v6;
    sub_100180F7C();
    v8 = sub_100572D28();

    if (v8 >> 62)
    {
      if (sub_100574178())
      {
        goto LABEL_5;
      }
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = sub_100573F58();
      }

      else
      {
        if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v9 = *(v8 + 32);
      }

      v10 = v9;

      v11 = [v10 text];
      if (!v11)
      {

        return;
      }

      v12 = v11;
      v13 = sub_1005728D8();
      v15 = v14;

      a3(v13, v15);
      goto LABEL_14;
    }

LABEL_14:
  }
}

uint64_t sub_10018091C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [a1 text];
  if (v8)
  {
    v9 = v8;
    sub_1005728D8();
  }

  v10 = objc_allocWithZone(NSString);
  v11 = sub_100572898();

  v12 = [v10 initWithString:v11];

  v13 = sub_100572898();
  v14 = [v12 stringByReplacingCharactersInRange:a2 withString:{a3, v13}];

  v15 = sub_1005728D8();
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

    v22 = sub_100574498();

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

uint64_t sub_100180D18(uint64_t a1)
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

__n128 sub_100180D3C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100180D58(uint64_t a1, int a2)
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

uint64_t sub_100180DA0(uint64_t result, int a2, int a3)
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

uint64_t sub_100180E3C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100180E74()
{

  if (*(v0 + 32) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100180EE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100180F00()
{

  return swift_deallocObject();
}

unint64_t sub_100180F7C()
{
  result = qword_1006E7B88[0];
  if (!qword_1006E7B88[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1006E7B88);
  }

  return result;
}

uint64_t sub_100180FC8(uint64_t a1, unsigned int a2)
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

void *sub_100181024(void *result, unsigned int a2)
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
  v3 = sub_100572D88();
  v4 = sub_100183344(v3, v2, &type metadata for ComponentRenderEventSignposts, *(v1 + 88));

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
  sub_1000E672C(v1, *(v0 + 32));
  return v1;
}

uint64_t BindingRequestResponseInvalidation.onInvalidation.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return sub_1000F3E14(v5, v6);
}

void ArtworkVideoReportingController.componentWillAppear(at:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v33 = *(v4 - 8);
  __chkstk_darwin();
  v35 = &v25[-v5];
  v6 = sub_10056CAA8();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v10 = *(v3 + 88);

  v34 = a1;
  v32 = v10;
  sub_100572708();

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
    sub_10056CA98();
    isa = sub_10056C9E8().super.isa;
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
    v34 = sub_1005726E8();
    v11 = v19;
    v15 = v20;
    v16 = v21;
    v14 = v22;
    v12 = v23;
    v13 = v24;
    sub_100572718();
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
  v8 = sub_10056CAA8();
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
    sub_100572708();

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
    sub_10056CA98();
    isa = sub_10056C9E8().super.isa;
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
    sub_1005726E8();
    v17 = v13;
    v24 = v20;
    v25 = v14;
    v26 = v21;
    v27 = v22;
    v28 = v23;
    sub_100572718();
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
  v11 = sub_10056CAA8();
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
    sub_100572708();

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
    sub_10056CA98();
    isa = sub_10056C9E8().super.isa;
    (*(v12 + 8))(v14, v11);
    v24 = [v22 serverTimeFromDate:isa];

    *&v48 = v24;
    sub_100181D68(v39 & 1);
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
    sub_1005726E8();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    v32 = *(&v27 + 1);
    v33 = v28;
    v34 = *(&v28 + 1);
    sub_100572718();
    swift_endAccess();
    v35 = v47;
    v36 = v48;
    v37 = v49;
  }
}

uint64_t sub_100181D68(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + 48);
  if (v3 <= 2)
  {
    v4 = sub_100574498();

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
  v9 = sub_10056CAA8();
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
    sub_100572708();

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
    sub_10056CA98();
    isa = sub_10056C9E8().super.isa;
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
    sub_1005726E8();
    v23 = v14;
    v24 = v19;
    v25 = v20;
    v26 = v18;
    v27 = v21;
    v28 = v22;
    sub_100572718();
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
  v8 = sub_10056CAA8();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (v1[16] == 1)
  {
    swift_beginAccess();
    v12 = *(v3 + 88);

    v36 = v12;
    sub_100572708();

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
      sub_10056CA98();
      v29[1] = v1;
      v15.super.isa = sub_10056C9E8().super.isa;
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
      sub_1005726E8();
      v36 = v13;
      v23 = v19;
      v24 = v20;
      v25 = v22;
      v26 = v21;
      v27 = v18;
      sub_100572718();
      swift_endAccess();
      v28 = v35;
      sub_100182914(v35);
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
  v8 = sub_10056CAA8();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (v1[16] == 1)
  {
    swift_beginAccess();
    v12 = *(v3 + 88);

    v35 = v12;
    sub_100572708();

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
      sub_10056CA98();
      v28[1] = v1;
      v15.super.isa = sub_10056C9E8().super.isa;
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
      sub_1005726E8();
      v35 = v13;
      v23 = v19;
      v24 = v20;
      v25 = v22;
      v26 = v18;
      v27 = v21;
      sub_100572718();
      swift_endAccess();
      sub_100182914(v34);
    }
  }
}

void sub_100182914(void *a1)
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

    sub_100572708();

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
        sub_1000F3E14(v16, v17);
        v22 = v13;
        v23 = v9;
        v24 = v10;
        v25 = v12;
        v26 = v11;
        v27 = v14;
        sub_100183794(v87, v63, v62, v21, &v77);
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
            if (qword_1006E4E68 != -1)
            {
              swift_once();
            }

            v34 = sub_10056DF88();
            sub_10000C49C(v34, static Logger.motion);
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
            sub_100183A1C(v71, v70);
            v39 = sub_10056DF68();
            v40 = sub_100573418();
            sub_1001839B4(&v77);
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
              sub_10000CC8C(v70, &v67, &unk_1006EB090, &qword_100587FB0);
              sub_100009DCC(&unk_1006EB090, &qword_100587FB0);
              v44 = sub_100572978();
              v46 = sub_1000C9784(v44, v45, &v69);

              *(v43 + 4) = v46;
              *(v43 + 12) = 2080;
              v47 = v64;
              v37(v59, v64, v35);
              v48 = sub_100572978();
              v50 = v49;
              (*(v42 + 8))(v47, v35);
              v51 = sub_1000C9784(v48, v50, &v69);

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

          if (qword_1006E4D30 != -1)
          {
            swift_once();
          }

          MetricsReportingController.recordComponentRenderEvent(_:)(&v81);
          sub_1001839B4(&v77);
        }
      }

      sub_100183940(v9, v10, v12, v11, v14, v13);
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

  sub_100572708();

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
    sub_1005726E8();
    v13 = v7;
    v14 = v12;
    v15 = v11;
    sub_100572718();
    swift_endAccess();
  }
}

uint64_t *ArtworkVideoReportingController.deinit()
{
  sub_1000F3E14(*(v0 + 24), *(v0 + 32));

  return v0;
}

uint64_t ArtworkVideoReportingController.__deallocating_deinit()
{
  sub_1000F3E14(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

unint64_t sub_100183160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100572738();

  return sub_1001831BC(a1, v6, a2, a3);
}

unint64_t sub_1001831BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v20 = sub_1005727E8();
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

unint64_t sub_100183344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = v23 - v11;
  if (sub_100572DC8())
  {
    sub_1005741D8();
    v13 = sub_1005741C8();
  }

  else
  {
    v13 = _swiftEmptyDictionarySingleton;
  }

  result = sub_100572E28();
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
        if (sub_100572DA8())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_100573F48();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_100183160(v12, a2, v27);
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

__n128 sub_1001836A8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1001836C4(uint64_t *a1, unsigned int a2)
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

uint64_t sub_100183720(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100183794@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
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
    sub_10000CC8C(&v43, v29, &qword_1006E7C18, &unk_100589AB0);
    sub_10000CC8C(&v42, v29, &qword_1006E7C18, &unk_100589AB0);
    sub_10000CC8C(&v41, v29, &qword_1006E7C18, &unk_100589AB0);
    sub_10000CC8C(&v40, v29, &qword_1006E7C18, &unk_100589AB0);
    sub_10000CC8C(&v39, v29, &qword_1006E7C18, &unk_100589AB0);
    sub_10000CC8C(&v38, v29, &qword_1006E7C18, &unk_100589AB0);
    sub_100183A78(a1);
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
    sub_100183A1C(&v23, &v22);
    result = sub_100183AA8(v29);
    v16 = v23;
    v17 = v24;
    v18 = v25;
    v19 = v26;
    v20 = v27;
    v21 = v28;
  }

  else
  {

    result = sub_100183A78(a1);
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

void sub_100183940(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1001839B4(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006E7C10, &unk_100589AA0);
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

uint64_t sub_100183BE8()
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

uint64_t sub_100183CA0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001858B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100183CC8(uint64_t a1)
{
  v2 = sub_100183F98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100183D04(uint64_t a1)
{
  v2 = sub_100183F98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CarNowPlayingMetrics.Data.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100009DCC(&qword_1006E7C20, &qword_100589AC0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10[-v7];
  sub_10000C8CC(a1, a1[3]);
  sub_100183F98();
  sub_100574718();
  v14 = 0;
  sub_100574348();
  if (!v2)
  {
    v13 = 1;
    sub_100574358();
    v12 = 2;
    sub_100574348();
    v11 = *(v3 + 24);
    v10[15] = 3;
    sub_100009DCC(&qword_1006E7C30, &unk_100589AC8);
    sub_100186560(&qword_1006E7C38, &protocol witness table for String, &protocol conformance descriptor for <> Set<A>);
    sub_100574368();
    v10[14] = 4;
    sub_100574358();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100183F98()
{
  result = qword_1006E7C28;
  if (!qword_1006E7C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E7C28);
  }

  return result;
}

double CarNowPlayingMetrics.Data.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100185A80(a2, v6);
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
  sub_100185D0C(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t Logger.carMetrics.unsafeMutableAddressor()
{
  if (qword_1006E4C88 != -1)
  {
    swift_once();
  }

  v0 = sub_10056DF88();

  return sub_10000C49C(v0, static Logger.carMetrics);
}

void static CarNowPlayingMetrics.storeMetricsData(_:for:)(__int128 *a1, char a2)
{
  if (*(a1 + 3))
  {
    sub_10056C2C8();
    swift_allocObject();
    sub_10056C2B8();
    sub_1001860B4();
    v3 = sub_10056C2A8();
    v5 = v4;

    v6 = [objc_opt_self() standardUserDefaults];
    isa = sub_10056C908().super.isa;
    v8 = sub_100572898();

    [v6 setValue:isa forKey:v8];

    sub_10008246C(v3, v5);
  }

  else
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v9 = sub_100572898();

    [v2 setValue:0 forKey:v9];
  }
}

void sub_1001844B8(int a1)
{
  v62 = *v1;
  sub_100009DCC(&qword_1006E6420, &qword_100586E50);
  __chkstk_darwin();
  v61 = &v58 - v3;
  v4 = sub_10056CD08();
  v59 = *(v4 - 8);
  __chkstk_darwin();
  v63 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10056CAA8();
  v64 = *(v6 - 8);
  __chkstk_darwin();
  v60 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v58 - v8;
  if (qword_1006E4C88 != -1)
  {
    swift_once();
  }

  v10 = sub_10056DF88();
  sub_10000C49C(v10, static Logger.carMetrics);
  v11 = sub_10056DF68();
  v12 = sub_100573448();
  v13 = os_log_type_enabled(v11, v12);
  v65 = a1;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v68 = v15;
    *v14 = 136446210;
    LOBYTE(v72[0]) = a1 & 1;
    v16 = sub_100572978();
    v18 = v9;
    v19 = sub_1000C9784(v16, v17, &v68);

    *(v14 + 4) = v19;
    v9 = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "Reporting %{public}s playsSummary event if needed", v14, 0xCu);
    sub_100010474(v15);
  }

  if (qword_1006E4D30 != -1)
  {
    swift_once();
  }

  v20 = COERCE_DOUBLE(sub_100192124());
  if (v21)
  {
    v22 = 86400000.0;
  }

  else
  {
    v22 = v20;
  }

  v23 = v65 & 1;
  sub_100185D0C(&v68);
  v24 = v70;
  if (v70)
  {
    v25 = v69;
    v26 = v71;
    *v72 = v68;
    sub_10056CA68();
    sub_10056CA38();
    v28 = v27;
    v29 = *(v64 + 8);
    v29(v9, v6);
    v30 = (v28 - v25) * 1000.0;
    if (v22 < v30)
    {
      sub_10056CA68();
      sub_10056CA38();
      v32 = v31;
      v29(v9, v6);
      v33 = v63;
      sub_10056CCC8();
      v34 = v60;
      sub_10056CA68();
      sub_10056CC68();
      v29(v34, v6);
      (*(v59 + 8))(v33, v4);
      sub_10056CA38();
      v36 = v35;
      v29(v9, v6);
      v37 = sub_100572F48();
      v38 = v61;
      (*(*(v37 - 8) + 56))(v61, 1, 1, v37);
      sub_100572F08();
      v39 = sub_100572EF8();
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
      sub_1001B3FAC(0, 0, v38, &unk_100589D20, v40);

      return;
    }

    sub_10001036C(&v68, &qword_1006E7D08, &qword_100589D10);
    v41 = sub_10056DF68();
    v53 = sub_100573448();
    if (os_log_type_enabled(v41, v53))
    {
      v54 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v67 = v44;
      *v54 = 136446722;
      v66 = v23;
      v55 = sub_100572978();
      v57 = sub_1000C9784(v55, v56, &v67);

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
    v41 = sub_10056DF68();
    v42 = sub_100573448();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v72[0] = v44;
      *v43 = 136446210;
      LOBYTE(v67) = v23;
      v45 = sub_100572978();
      v47 = sub_1000C9784(v45, v46, v72);

      *(v43 + 4) = v47;
      v48 = "❌ Failed to configure %{public}s playsSummary event: no persisted metrics data";
      v49 = v42;
      v50 = v41;
      v51 = v43;
      v52 = 12;
LABEL_17:
      _os_log_impl(&_mh_execute_header, v50, v49, v48, v51, v52);
      sub_100010474(v44);
    }
  }
}

uint64_t sub_100184BBC(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 624) = a2;
  *(v7 + 688) = a7;
  *(v7 + 616) = a1;
  *(v7 + 608) = a6;
  v8 = sub_10056CAE8();
  *(v7 + 632) = v8;
  *(v7 + 640) = *(v8 - 8);
  *(v7 + 648) = swift_task_alloc();
  v9 = sub_100570C38();
  *(v7 + 656) = v9;
  *(v7 + 664) = *(v9 - 8);
  *(v7 + 672) = swift_task_alloc();
  sub_100572F08();
  *(v7 + 680) = sub_100572EF8();
  v11 = sub_100572E78();

  return _swift_task_switch(sub_100184D18, v11, v10);
}

uint64_t sub_100184D18()
{

  if (qword_1006E4D30 != -1)
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
  v35 = static MetricsReportingController.shared;
  sub_100009DCC(&unk_1006EE290, &unk_100589E40);
  inited = swift_initStackObject();
  v9 = inited;
  *(inited + 16) = xmmword_100582460;
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
  *(inited + 376) = 0x80000001005AE490;
  *(inited + 384) = *(*(v7 + 24) + 16);
  *(inited + 408) = &type metadata for Int;
  *(inited + 416) = 0xD000000000000018;
  *(inited + 424) = 0x80000001005AE4B0;
  v13 = sub_100193D40(*(v7 + 32));
  v9[57] = &type metadata for String;
  v9[54] = v13;
  v9[55] = v14;
  sub_1000F3754(v9);
  swift_setDeallocating();
  sub_100009DCC(&qword_1006E6B38, &qword_100586910);
  swift_arrayDestroy();
  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  sub_100155E5C();
  *v1 = sub_1005735E8();
  (*(v2 + 104))(v1, enum case for DispatchPredicate.onQueue(_:), v3);
  v16 = sub_100570C68();
  result = (*(v2 + 8))(v1, v3);
  if (v16)
  {
    v18 = *(v0 + 648);
    v19 = *(v0 + 640);
    v34 = *(v0 + 632);
    v20 = [objc_allocWithZone(SSMetricsCustomEvent) init];
    isa = sub_100572688().super.isa;

    [v20 addPropertiesWithDictionary:isa];

    [v20 setShouldSuppressUserInfo:0];
    [v20 setShouldSuppressDSIDHeader:0];

    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_10057B510;
    strcpy((v22 + 32), "clientEventId");
    *(v22 + 46) = -4864;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v23 = sub_10056CAB8();
    v25 = v24;
    (*(v19 + 8))(v18, v34);
    *(v22 + 72) = &type metadata for String;
    *(v22 + 48) = v23;
    *(v22 + 56) = v25;
    sub_1000F3754(v22);
    swift_setDeallocating();
    sub_10001036C(v22 + 32, &qword_1006E6B38, &qword_100586910);
    v26 = sub_100572688().super.isa;

    [v20 addPropertiesWithDictionary:v26];

    v27 = *&v35[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    v28 = swift_allocObject();
    v28[2] = v20;
    v28[3] = 0xD000000000000014;
    v28[4] = 0x80000001005AE470;
    v28[5] = v35;
    v28[6] = sub_10018648C;
    v28[7] = v15;
    *(v0 + 592) = sub_1001864E4;
    *(v0 + 600) = v28;
    *(v0 + 560) = _NSConcreteStackBlock;
    *(v0 + 568) = 1107296256;
    *(v0 + 576) = sub_10007885C;
    *(v0 + 584) = &unk_10068DE70;
    v29 = _Block_copy((v0 + 560));
    v30 = v27;
    v31 = v35;

    v32 = v20;

    [v32 setStandardPropertiesWith:v30 completionHandler:v29];
    _Block_release(v29);

    v33 = *(v0 + 8);

    return v33();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001853D0(uint64_t a1, char a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1006E4C88 != -1)
    {
      swift_once();
    }

    v2 = sub_10056DF88();
    sub_10000C49C(v2, static Logger.carMetrics);
    swift_errorRetain();
    v3 = sub_10056DF68();
    v4 = sub_100573428();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v5 = 136446466;
      v6 = sub_100572978();
      v8 = sub_1000C9784(v6, v7, &v22);

      *(v5 + 4) = v8;
      *(v5 + 12) = 2082;
      swift_errorRetain();
      sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
      v9 = sub_100572978();
      v11 = sub_1000C9784(v9, v10, &v22);

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
    if (qword_1006E4C88 != -1)
    {
      swift_once();
    }

    v12 = sub_10056DF88();
    sub_10000C49C(v12, static Logger.carMetrics);
    v13 = sub_10056DF68();
    v14 = sub_100573448();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136446210;
      v17 = sub_100572978();
      v19 = sub_1000C9784(v17, v18, &v22);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "✅ Reported %{public}s playsSummary event", v15, 0xCu);
      sub_100010474(v16);
    }

    v20 = [objc_opt_self() standardUserDefaults];
    v21 = sub_100572898();

    [v20 setValue:0 forKey:v21];
  }
}

uint64_t sub_10018578C()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, static Logger.carMetrics);
  sub_10000C49C(v0, static Logger.carMetrics);
  return sub_10056DF78();
}

uint64_t static Logger.carMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006E4C88 != -1)
  {
    swift_once();
  }

  v2 = sub_10056DF88();
  v3 = sub_10000C49C(v2, static Logger.carMetrics);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1001858B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79616C50656D6974 && a2 == 0xEA00000000006465;
  if (v4 || (sub_100574498() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C50736B63617274 && a2 == 0xEC00000064657961 || (sub_100574498() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61745365676E6172 && a2 == 0xEE00656D69547472 || (sub_100574498() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001005AE430 == a2 || (sub_100574498() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001005AE450 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_100574498();

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

uint64_t sub_100185A80@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_100009DCC(&qword_1006E7D18, &unk_100589D30);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v17 - v7;
  sub_10000C8CC(a1, a1[3]);
  sub_100183F98();
  sub_100574708();
  if (v2)
  {
    return sub_100010474(a1);
  }

  v22 = 0;
  sub_1005742B8();
  v10 = v9;
  v21 = 1;
  v11 = sub_1005742C8();
  v20 = 2;
  sub_1005742B8();
  v13 = v12;
  sub_100009DCC(&qword_1006E7C30, &unk_100589AC8);
  v19 = 3;
  sub_100186560(&qword_1006E7D20, &protocol witness table for String, &protocol conformance descriptor for <> Set<A>);
  sub_1005742D8();
  v14 = v17[1];
  v18 = 4;
  v15 = sub_1005742C8();
  (*(v6 + 8))(v8, v5);
  result = sub_100010474(a1);
  *a2 = v10;
  a2[1] = v11;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v15;
  return result;
}

uint64_t sub_100185D0C@<X0>(uint64_t a2@<X8>)
{
  v3 = [objc_opt_self() standardUserDefaults];
  v4 = sub_100572898();

  v5 = [v3 valueForKey:v4];

  if (v5)
  {
    sub_100573D58();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v11 = v16;
  v12 = v17;
  if (!*(&v17 + 1))
  {
    result = sub_10001036C(&v11, &qword_1006EA040, &unk_10058A5D0);
    goto LABEL_8;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v7 = 0uLL;
    goto LABEL_9;
  }

  sub_10056C298();
  swift_allocObject();
  sub_10056C288();
  sub_10018650C();
  sub_10056C278();
  sub_10008246C(v14, v15);

  v7 = v11;
  v9 = *(&v12 + 1);
  v8 = v12;
  v10 = v13;
LABEL_9:
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  return result;
}

unint64_t sub_1001860B4()
{
  result = qword_1006E7C40;
  if (!qword_1006E7C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E7C40);
  }

  return result;
}

unint64_t sub_10018610C()
{
  result = qword_1006E7C48;
  if (!qword_1006E7C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E7C48);
  }

  return result;
}

uint64_t sub_100186180(uint64_t a1, int a2)
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

uint64_t sub_1001861C8(uint64_t result, int a2, int a3)
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

unint64_t sub_100186258()
{
  result = qword_1006E7CF0;
  if (!qword_1006E7CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E7CF0);
  }

  return result;
}

unint64_t sub_1001862B0()
{
  result = qword_1006E7CF8;
  if (!qword_1006E7CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E7CF8);
  }

  return result;
}

unint64_t sub_100186308()
{
  result = qword_1006E7D00;
  if (!qword_1006E7D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E7D00);
  }

  return result;
}

uint64_t sub_10018635C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10018639C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000CB98;

  return sub_100184BBC(v6, v8, a1, v4, v5, v1 + 32, v7);
}

uint64_t sub_100186494()
{

  return swift_deallocObject();
}

uint64_t sub_1001864F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10018650C()
{
  result = qword_1006E7D10;
  if (!qword_1006E7D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E7D10);
  }

  return result;
}

uint64_t sub_100186560(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100010324(&qword_1006E7C30, &unk_100589AC8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *MPModelObject.metricsDictionary.getter()
{
  objc_allocWithZone(type metadata accessor for ModelObjectBackedStoreItemMetadata());
  v1 = v0;
  v2 = ModelObjectBackedStoreItemMetadata.init(modelObject:)(v1);
  if (v2)
  {
    v3 = v2;
    v4 = [v2 effectiveStorePlatformDictionary];

    if (v4)
    {
      v5 = sub_1005726A8();

      return v5;
    }
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = [v6 anyObject];
    goto LABEL_8;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v7 = [v8 innerObject];
LABEL_8:
    v9 = v7;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  v9 = v1;
LABEL_10:
  v10 = v9;
  ObjectType = swift_getObjectType();
  v12 = [v10 identifiers];
  v13 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(ObjectType, 2, 0, v12);
  v15 = v14;

  if (v15)
  {
    sub_100009DCC(&qword_1006E7D28, &unk_100589D40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057B510;
    v30 = sub_1005728D8();
    v31 = v17;
    sub_100573E78();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v13;
    *(inited + 80) = v15;
    v5 = sub_1000F431C(inited);
    swift_setDeallocating();
    sub_100186DD4(inited + 32);
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_1005728D8();
      sub_100573E78();
      v29 = &type metadata for String;
      *&v28 = sub_1005728D8();
      *(&v28 + 1) = v18;
      sub_1000F51DC(&v28, v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1000EF5E4(v27, &v30, isUniquelyReferenced_nonNull_native);
      sub_1000F4130(&v30);
    }
  }

  else
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v20 = MPModelPropertyPlaylistType;
      v21 = v1;
      if ([v5 hasLoadedValueForKey:v20] && objc_msgSend(v5, "type") == 9)
      {
        sub_100009DCC(&qword_1006E7D28, &unk_100589D40);
        v22 = swift_initStackObject();
        *(v22 + 16) = xmmword_10057B500;
        sub_1005728D8();
        sub_100573E78();
        *(v22 + 96) = &type metadata for String;
        strcpy((v22 + 72), "FavoriteSongs");
        *(v22 + 86) = -4864;
        v30 = sub_1005728D8();
        v31 = v23;
        sub_100573E78();
        v24 = sub_1005728D8();
        *(v22 + 168) = &type metadata for String;
        *(v22 + 144) = v24;
        *(v22 + 152) = v25;
        v5 = sub_1000F431C(v22);
        swift_setDeallocating();
        sub_100009DCC(&unk_1006E6B50, &qword_100586928);
        swift_arrayDestroy();
      }

      else
      {

        return 0;
      }
    }
  }

  return v5;
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
        v11.super.super.isa = sub_100574638().super.super.isa;
        v12 = MPStoreItemMetadataStringNormalizeStoreIDValue();
        goto LABEL_51;
      }

      sub_1000D3B98(0, &qword_1006E7D30, MPModelPlaylist_ptr);
      if (swift_dynamicCastMetatype())
      {
        goto LABEL_27;
      }

      sub_1000D3B98(0, &unk_1006E8F60, MPModelSocialPerson_ptr);
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
        v11.super.super.isa = sub_1005746E8().super.super.isa;
        v12 = MPStoreItemMetadataStringNormalizeStoreIDValue();
        goto LABEL_51;
      }

      sub_1000D3B98(0, &qword_1006E7D30, MPModelPlaylist_ptr);
      v8 = swift_dynamicCastMetatype();
      if (v8)
      {
        goto LABEL_27;
      }
    }

    sub_1000D3B98(v8, qword_1006E7D38, MPModelRadioStation_ptr);
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
      v26 = sub_1005728D8();
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
    v11.super.super.isa = sub_100574638().super.super.isa;
    v12 = MPStoreItemMetadataStringNormalizeStoreIDValue();
LABEL_51:
    v30 = v12;

    if (v30)
    {
      v26 = sub_1005728D8();

LABEL_53:
      swift_unknownObjectRelease();
      return v26;
    }

    goto LABEL_55;
  }

  sub_1000D3B98(0, &qword_1006E7D30, MPModelPlaylist_ptr);
  if (!swift_dynamicCastMetatype())
  {
    sub_1000D3B98(0, &unk_1006E8F60, MPModelSocialPerson_ptr);
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
          v19 = sub_1005728D8();
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

    sub_1000D3B98(0, qword_1006E7D38, MPModelRadioStation_ptr);
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

uint64_t sub_100186DD4(uint64_t a1)
{
  v2 = sub_100009DCC(&unk_1006E6B50, &qword_100586928);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100186EA4()
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
  sub_100009DCC(&qword_1006E5D10, &unk_100583A20);
  __chkstk_darwin();
  v67 = &v59[-v18];
  sub_100009DCC(&qword_1006E6428, &unk_100585DF0);
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
  sub_100019B40(v61, a9 + v29[7], &qword_1006E5D10, &unk_100583A20);
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
  sub_10000CC8C(a13, v28, &qword_1006E6428, &unk_100585DF0);
  v35 = type metadata accessor for MetricsEvent.Page(0);
  v36 = *(*(v35 - 1) + 48);
  if (v36(v28, 1, v35) == 1)
  {
    sub_10001036C(v28, &qword_1006E6428, &unk_100585DF0);
    v37 = 0;
    v38 = 0;
  }

  else
  {
    v37 = *v28;
    v38 = v28[1];

    sub_100194124(v28, type metadata accessor for MetricsEvent.Page);
  }

  v39 = (a9 + v29[12]);
  *v39 = v37;
  v39[1] = v38;
  v40 = v69;
  sub_10000CC8C(v69, v26, &qword_1006E6428, &unk_100585DF0);
  if (v36(v26, 1, v35) == 1)
  {
    sub_10001036C(v26, &qword_1006E6428, &unk_100585DF0);
    v41 = 0;
    v42 = 0;
  }

  else
  {
    v41 = *(v26 + 2);
    v42 = *(v26 + 3);

    sub_100194124(v26, type metadata accessor for MetricsEvent.Page);
  }

  v43 = (a9 + v29[13]);
  *v43 = v41;
  v43[1] = v42;
  sub_10000CC8C(v40, v24, &qword_1006E6428, &unk_100585DF0);
  v44 = v36(v24, 1, v35);
  v45 = v67;
  if (v44 == 1)
  {
    sub_10001036C(v24, &qword_1006E6428, &unk_100585DF0);
    v46 = sub_10056C8A8();
    (*(*(v46 - 8) + 56))(v45, 1, 1, v46);
  }

  else
  {
    sub_10000CC8C(v24 + v35[6], v67, &qword_1006E5D10, &unk_100583A20);
    sub_100194124(v24, type metadata accessor for MetricsEvent.Page);
  }

  v47 = v70;
  v48 = v68;
  sub_100019B40(v45, a9 + v29[14], &qword_1006E5D10, &unk_100583A20);
  v49 = v66;
  sub_10000CC8C(v40, v66, &qword_1006E6428, &unk_100585DF0);
  if (v36(v49, 1, v35) == 1)
  {
    sub_10001036C(v49, &qword_1006E6428, &unk_100585DF0);
    v50 = 0;
  }

  else
  {
    v50 = *(v49 + v35[7]);

    sub_100194124(v49, type metadata accessor for MetricsEvent.Page);
  }

  *(a9 + v29[15]) = v50;
  sub_10000CC8C(v40, v48, &qword_1006E6428, &unk_100585DF0);
  if (v36(v48, 1, v35) == 1)
  {
    sub_10001036C(v48, &qword_1006E6428, &unk_100585DF0);
    v51 = 1;
  }

  else
  {
    v51 = *(v48 + v35[9]);
    sub_100194124(v48, type metadata accessor for MetricsEvent.Page);
  }

  *(a9 + v29[16]) = v51;
  sub_10000CC8C(v40, v47, &qword_1006E6428, &unk_100585DF0);
  if (v36(v47, 1, v35) == 1)
  {
    sub_10001036C(v47, &qword_1006E6428, &unk_100585DF0);
    v52 = 0;
    v53 = 0;
  }

  else
  {
    v54 = (v47 + v35[8]);
    v52 = *v54;
    v53 = v54[1];

    sub_100194124(v47, type metadata accessor for MetricsEvent.Page);
  }

  v55 = (a9 + v29[18]);
  *v55 = v52;
  v55[1] = v53;
  v56 = v71;
  sub_100019B40(v40, v71, &qword_1006E6428, &unk_100585DF0);
  if (v36(v56, 1, v35) == 1)
  {
    result = sub_10001036C(v56, &qword_1006E6428, &unk_100585DF0);
    v58 = 2;
  }

  else
  {
    v58 = *(v56 + v35[11]);
    result = sub_100194124(v56, type metadata accessor for MetricsEvent.Page);
  }

  *(a9 + v29[17]) = v58;
  *(a9 + v29[11]) = a14;
  return result;
}

uint64_t *MetricsReportingController.shared.unsafeMutableAddressor()
{
  if (qword_1006E4D30 != -1)
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
  sub_1000DC040(a1, a2);
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
  sub_100183A1C(&v15, &v14);
  sub_100183AA8(v19);
  v12 = *v18;
  *(a9 + 32) = v17;
  *(a9 + 48) = v12;
  *(a9 + 57) = *&v18[9];
  result = v16;
  *a9 = v15;
  *(a9 + 16) = result;
  return result;
}

uint64_t sub_100187900()
{
  v1 = v0;
  sub_100009DCC(&qword_1006E8040, &qword_10058A600);
  __chkstk_darwin();
  v37 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v36 - v3;
  __chkstk_darwin();
  v6 = &v36 - v5;
  v7 = sub_10056CAA8();
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
  v17 = sub_1001994A8();

  if (v17)
  {
    return 1;
  }

  v19 = sub_100199800();
  v18 = 1;
  if (v19)
  {
    v40 = 0.0;
    v41 = 1;
    v20 = v19;
    sub_100573048();

    if (v41 != 1)
    {
      v21 = v40;
      v22 = sub_1001992C4();
      if (v22)
      {
        v40 = 0.0;
        v41 = 1;
        v23 = v22;
        sub_100573048();

        if ((v41 & 1) == 0)
        {
          sub_10056CA98();
          v24 = *(v1 + 16);
          sub_100199550(v4);
          sub_100019B40(v4, v6, &qword_1006E8040, &qword_10058A600);

          v25 = v38;
          v26 = v39;
          if ((*(v38 + 48))(v6, 1, v39))
          {
            sub_10001036C(v6, &qword_1006E8040, &qword_10058A600);
            v27 = v26;
            v28 = v25;
          }

          else
          {
            (*(v25 + 16))(v9, v6, v26);
            sub_10001036C(v6, &qword_1006E8040, &qword_10058A600);
            sub_10056C9D8();
            v29 = v9;
            v30 = *(v25 + 8);
            v30(v29, v26);
            (*(v25 + 32))(v13, v11, v26);
            v31 = sub_10056CA08();
            v30(v13, v26);
            v27 = v26;
            v28 = v25;
            if (v31)
            {
              v30(v15, v26);
              return 1;
            }
          }

          v32 = sub_100193B54(0x20000000000001uLL);
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
              sub_10000CC8C(v4, v37, &qword_1006E8040, &qword_10058A600);
              sub_10019966C(v34);
              swift_endAccess();
              sub_10001036C(v4, &qword_1006E8040, &qword_10058A600);
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

uint64_t sub_100187DE8()
{
  v1 = v0;
  sub_100009DCC(&qword_1006E8040, &qword_10058A600);
  __chkstk_darwin();
  v37 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v36 - v3;
  __chkstk_darwin();
  v6 = &v36 - v5;
  v7 = sub_10056CAA8();
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
  v17 = sub_100199BB8();

  if (v17)
  {
    return 1;
  }

  v19 = sub_100193A78(0xD000000000000023, 0x80000001005AE970);
  v18 = 1;
  if (v19)
  {
    v40 = 0.0;
    v41 = 1;
    v20 = v19;
    sub_100573048();

    if (v41 != 1)
    {
      v21 = v40;
      v22 = sub_100193A78(0xD00000000000001BLL, 0x80000001005AE9A0);
      if (v22)
      {
        v40 = 0.0;
        v41 = 1;
        v23 = v22;
        sub_100573048();

        if ((v41 & 1) == 0)
        {
          sub_10056CA98();
          v24 = *(v1 + 16);
          sub_100199C60(v4);
          sub_100019B40(v4, v6, &qword_1006E8040, &qword_10058A600);

          v25 = v38;
          v26 = v39;
          if ((*(v38 + 48))(v6, 1, v39))
          {
            sub_10001036C(v6, &qword_1006E8040, &qword_10058A600);
            v27 = v26;
            v28 = v25;
          }

          else
          {
            (*(v25 + 16))(v9, v6, v26);
            sub_10001036C(v6, &qword_1006E8040, &qword_10058A600);
            sub_10056C9D8();
            v29 = v9;
            v30 = *(v25 + 8);
            v30(v29, v26);
            (*(v25 + 32))(v13, v11, v26);
            v31 = sub_10056CA08();
            v30(v13, v26);
            v27 = v26;
            v28 = v25;
            if (v31)
            {
              v30(v15, v26);
              return 1;
            }
          }

          v32 = sub_100193B54(0x20000000000001uLL);
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
              sub_10000CC8C(v4, v37, &qword_1006E8040, &qword_10058A600);
              sub_100199D7C(v34);
              swift_endAccess();
              sub_10001036C(v4, &qword_1006E8040, &qword_10058A600);
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
      v4 = sub_100573428();
      sub_100009DCC(&qword_1006E7DC0, &qword_100589E20);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_10057B510;
      [a1 itemType];
      type metadata accessor for MPModelStoreBrowseContentItemType(0);
      v6 = sub_100572978();
      v8 = v7;
      *(v5 + 56) = &type metadata for String;
      *(v5 + 64) = sub_10018CCD0();
      *(v5 + 32) = v6;
      *(v5 + 40) = v8;
      sub_1000D3B98(0, &qword_1006EE020, OS_os_log_ptr);
      v9 = sub_100573BF8();
      sub_10056DE58(v4, &_mh_execute_header, v9, "MPModelStoreBrowseContentItem.Kind.targetType: Returning nil for [targetType for this kind not yet implemented] self=%@", 119, 2, v5);

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

unint64_t sub_1001887E8@<X0>(Swift::String *a1@<X0>, MusicCore::MetricsEvent::TargetType_optional *a2@<X8>)
{
  result = _s9MusicCore12MetricsEventV10TargetTypeO8rawValueAESgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t sub_100188818@<X0>(unint64_t *a1@<X8>)
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
  result = sub_100019B40(a5, a9 + v18[6], &qword_1006E5D10, &unk_100583A20);
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
    v5 = 0x80000001005AE5C0;
  }

  v6 = type metadata accessor for MetricsEvent.Page(0);
  v7 = v6[6];
  v8 = sub_10056C8A8();
  (*(*(v8 - 8) + 56))(&a3[v7], 1, 1, v8);
  *a3 = v4;
  *(a3 + 1) = v5;
  *(a3 + 2) = 0xD000000000000014;
  *(a3 + 3) = 0x80000001005AE5C0;
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

uint64_t sub_100188A14()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_10000C910(v0, static MetricsEvent.Page.libraryLanding);
  v1 = sub_10000C49C(v0, static MetricsEvent.Page.libraryLanding);
  v2 = v0[6];
  v3 = sub_10056C8A8();
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

uint64_t sub_100188B54()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_10000C910(v0, static MetricsEvent.Page.libraryMenuEdit);
  v1 = sub_10000C49C(v0, static MetricsEvent.Page.libraryMenuEdit);
  v2 = v0[6];
  v3 = sub_10056C8A8();
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

uint64_t sub_100188C7C(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for MetricsEvent.Page(0);

  return sub_10000C49C(v4, a2);
}

uint64_t sub_100188CF4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for MetricsEvent.Page(0);
  v7 = sub_10000C49C(v6, a2);

  return sub_100194050(v7, a4);
}

uint64_t sub_100188D54()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_10000C910(v0, static MetricsEvent.Page.libraryMadeForYou);
  v1 = sub_10000C49C(v0, static MetricsEvent.Page.libraryMadeForYou);
  v2 = v0[6];
  v3 = sub_10056C8A8();
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

uint64_t sub_100188E9C()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_10000C910(v0, static MetricsEvent.Page.libraryAlbumsList);
  v1 = sub_10000C49C(v0, static MetricsEvent.Page.libraryAlbumsList);
  v2 = v0[6];
  v3 = sub_10056C8A8();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000011;
  *(v1 + 1) = 0x80000001005AEB20;
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

uint64_t sub_100188FE4()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_10000C910(v0, static MetricsEvent.Page.libraryArtistsList);
  v1 = sub_10000C49C(v0, static MetricsEvent.Page.libraryArtistsList);
  v2 = v0[6];
  v3 = sub_10056C8A8();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000012;
  *(v1 + 1) = 0x80000001005AEB00;
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

uint64_t sub_10018912C()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_10000C910(v0, static MetricsEvent.Page.libraryCompilationsList);
  v1 = sub_10000C49C(v0, static MetricsEvent.Page.libraryCompilationsList);
  v2 = v0[6];
  v3 = sub_10056C8A8();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000017;
  *(v1 + 1) = 0x80000001005AEAE0;
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

uint64_t sub_100189274()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_10000C910(v0, static MetricsEvent.Page.libraryComposersList);
  v1 = sub_10000C49C(v0, static MetricsEvent.Page.libraryComposersList);
  v2 = v0[6];
  v3 = sub_10056C8A8();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000014;
  *(v1 + 1) = 0x80000001005AEAC0;
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

uint64_t sub_1001893BC()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_10000C910(v0, static MetricsEvent.Page.libraryGenresList);
  v1 = sub_10000C49C(v0, static MetricsEvent.Page.libraryGenresList);
  v2 = v0[6];
  v3 = sub_10056C8A8();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000011;
  *(v1 + 1) = 0x80000001005AEAA0;
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

uint64_t sub_100189504()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_10000C910(v0, static MetricsEvent.Page.libraryMusicVideosList);
  v1 = sub_10000C49C(v0, static MetricsEvent.Page.libraryMusicVideosList);
  v2 = v0[6];
  v3 = sub_10056C8A8();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000016;
  *(v1 + 1) = 0x80000001005AEA80;
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

uint64_t sub_10018964C()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_10000C910(v0, static MetricsEvent.Page.libraryPlaylistsList);
  v1 = sub_10000C49C(v0, static MetricsEvent.Page.libraryPlaylistsList);
  v2 = v0[6];
  v3 = sub_10056C8A8();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000014;
  *(v1 + 1) = 0x80000001005AEA60;
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

uint64_t sub_100189794()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_10000C910(v0, static MetricsEvent.Page.librarySongsList);
  v1 = sub_10000C49C(v0, static MetricsEvent.Page.librarySongsList);
  v2 = v0[6];
  v3 = sub_10056C8A8();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000010;
  *(v1 + 1) = 0x80000001005AEA40;
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

uint64_t sub_1001898DC()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_10000C910(v0, static MetricsEvent.Page.libraryRecentlyAdded);
  v1 = sub_10000C49C(v0, static MetricsEvent.Page.libraryRecentlyAdded);
  v2 = v0[6];
  v3 = sub_10056C8A8();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000018;
  *(v1 + 1) = 0x80000001005AEA20;
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

uint64_t sub_100189A24()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_10000C910(v0, static MetricsEvent.Page.libraryRecentlyDownloaded);
  v1 = sub_10000C49C(v0, static MetricsEvent.Page.libraryRecentlyDownloaded);
  v2 = v0[6];
  v3 = sub_10056C8A8();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD00000000000001DLL;
  *(v1 + 1) = 0x80000001005AEA00;
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

uint64_t sub_100189B6C()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_10000C910(v0, static MetricsEvent.Page.libraryAlbumDetail);
  v1 = sub_10000C49C(v0, static MetricsEvent.Page.libraryAlbumDetail);
  v2 = v0[6];
  v3 = sub_10056C8A8();
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

uint64_t sub_100189CB4()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_10000C910(v0, static MetricsEvent.Page.libraryArtistDetail);
  v1 = sub_10000C49C(v0, static MetricsEvent.Page.libraryArtistDetail);
  v2 = v0[6];
  v3 = sub_10056C8A8();
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

uint64_t sub_100189E00()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_10000C910(v0, static MetricsEvent.Page.libraryPlaylistDetail);
  v1 = sub_10000C49C(v0, static MetricsEvent.Page.libraryPlaylistDetail);
  v2 = v0[6];
  v3 = sub_10056C8A8();
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

uint64_t sub_100189F50()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_10000C910(v0, static MetricsEvent.Page.libraryComposerDetail);
  v1 = sub_10000C49C(v0, static MetricsEvent.Page.libraryComposerDetail);
  v2 = v0[6];
  v3 = sub_10056C8A8();
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

uint64_t sub_10018A09C()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_10000C910(v0, static MetricsEvent.Page.libraryGenreDetail);
  v1 = sub_10000C49C(v0, static MetricsEvent.Page.libraryGenreDetail);
  v2 = v0[6];
  v3 = sub_10056C8A8();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000012;
  *(v1 + 1) = 0x80000001005AE9E0;
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

uint64_t sub_10018A1E8()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_10000C910(v0, static MetricsEvent.Page.playlistCreation);
  v1 = sub_10000C49C(v0, static MetricsEvent.Page.playlistCreation);
  v2 = v0[6];
  v3 = sub_10056C8A8();
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

uint64_t sub_10018A330()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_10000C910(v0, static MetricsEvent.Page.playlistPicker);
  v1 = sub_10000C49C(v0, static MetricsEvent.Page.playlistPicker);
  v2 = v0[6];
  v3 = sub_10056C8A8();
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
  sub_100009DCC(&qword_1006E5D10, &unk_100583A20);
  __chkstk_darwin();
  v4 = &v18 - v3;
  v5 = v1[1];
  v18 = *v1;
  v7 = v1[2];
  v6 = v1[3];
  v8 = type metadata accessor for MetricsEvent.Page(0);
  sub_10000CC8C(v1 + v8[6], v4, &qword_1006E5D10, &unk_100583A20);
  v9 = *(v1 + v8[7]);
  v10 = (v1 + v8[10]);
  v11 = v10[1];
  v19 = *v10;
  v12 = type metadata accessor for MetricsPageProperties(0);
  v13 = v12[6];
  v14 = sub_10056C8A8();
  (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
  v15 = v12[7];
  v16 = &a1[v12[8]];
  *a1 = v18;
  *(a1 + 1) = v5;
  *(a1 + 2) = v7;
  *(a1 + 3) = v6;

  result = sub_1001940B4(v4, &a1[v13]);
  *&a1[v15] = v9;
  *v16 = v19;
  *(v16 + 1) = v11;
  return result;
}

BOOL MetricsEvent.Page.DisplayType.init(rawValue:)(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100683508;
  v6._object = a2;
  v4 = sub_100574238(v3, v6);

  return v4 != 0;
}

Swift::Int sub_10018A658()
{
  sub_100574678();
  sub_1005729F8();
  return sub_1005746C8();
}

Swift::Int sub_10018A6C4(uint64_t a1)
{
  sub_100574678();
  sub_1005729F8();
  return sub_1005746C8();
}

uint64_t sub_10018A714@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100683540;
  v7._object = v3;
  v5 = sub_100574238(v4, v7);

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
  sub_100019B40(a5, a9 + v29[7], &qword_1006E5D10, &unk_100583A20);
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
  result = sub_100019B40(a17, a9 + v29[14], &qword_1006E5D10, &unk_100583A20);
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
  sub_10000CC8C(a13 + v21, a9 + v22[14], &qword_1006E5D10, &unk_100583A20);
  v23 = *(a13 + *(v20 + 28));

  sub_100194124(a13, type metadata accessor for MetricsPageProperties);
  *(a9 + v22[19]) = 0;
  v24 = (a9 + v22[20]);
  *v24 = 0;
  v24[1] = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  sub_100019B40(a5, a9 + v22[7], &qword_1006E5D10, &unk_100583A20);
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