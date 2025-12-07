uint64_t sub_10003C4A8()
{
  v1 = v0[60];
  v2 = v0[58];
  v3 = v0[57];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10003C5C4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000035C4(&qword_10006A7B8, &qword_100054AB0);
  __chkstk_darwin(v4 - 8);
  v6 = v33 - v5;
  v7 = sub_10004FE78();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v37 = v10;
  v38 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v33 - v11;
  if (qword_100069EF8 != -1)
  {
    swift_once();
  }

  v13 = sub_100050268();
  sub_100008BA0(v13, qword_10006E030);
  v35 = *(v8 + 16);
  v36 = v8 + 16;
  v35(v12, a1, v7);
  v14 = sub_100050248();
  v15 = sub_100051348();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v34 = v6;
    v17 = v16;
    v18 = swift_slowAlloc();
    v39 = v18;
    *v17 = 136446210;
    v19 = sub_10004FE68();
    v33[1] = v2;
    v20 = a1;
    v22 = v21;
    (*(v8 + 8))(v12, v7);
    v23 = sub_100008C04(v19, v22, &v39);
    a1 = v20;

    *(v17 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "Download language pair: %{public}s", v17, 0xCu);
    sub_100009F78(v18);

    v6 = v34;
  }

  else
  {

    (*(v8 + 8))(v12, v7);
  }

  type metadata accessor for TranslationModel.TranslationError(0);
  sub_100042294(&qword_10006BC80, type metadata accessor for TranslationModel.TranslationError, &unk_100054F5C);
  v24 = swift_allocError();
  *v25 = 0;
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  swift_getKeyPath();
  v39 = v24;

  sub_100050308();
  v26 = sub_1000512F8();
  (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = v38;
  v35(v38, a1, v7);
  sub_1000512D8();

  v29 = sub_1000512C8();
  v30 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v31 = swift_allocObject();
  *(v31 + 2) = v29;
  *(v31 + 3) = &protocol witness table for MainActor;
  *(v31 + 4) = v27;
  (*(v8 + 32))(&v31[v30], v28, v7);

  sub_10002EA44(0, 0, v6, &unk_100054E58, v31);
}

uint64_t sub_10003CA60(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void *a8)
{
  v46 = a8;
  v52 = a7;
  v51 = a3;
  v53 = a2;
  v11 = sub_10004FDB8();
  v48 = *(v11 - 8);
  v12 = *(v48 + 64);
  v13 = __chkstk_darwin(v11);
  __chkstk_darwin(v13);
  v15 = &v41 - v14;
  sub_1000035C4(&qword_10006A7B8, &qword_100054AB0);
  v16 = __chkstk_darwin(a1);
  v18 = &v41 - v17;
  if (v16)
  {
    v19 = [v16 string];
    v20 = sub_100051158();
    v49 = v21;
    v50 = v20;
  }

  else
  {
    v49 = 0;
    v50 = 0;
  }

  v22 = sub_1000512F8();
  (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
  v23 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  v45 = v23;
  swift_weakInit();

  v47 = v18;
  v24 = v48;
  v25 = *(v48 + 16);
  v25(v15, a5, v11);
  v25(&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v11);
  sub_1000512D8();

  v26 = v51;
  swift_errorRetain();
  v27 = v53;
  v46 = v46;
  v28 = sub_1000512C8();
  v29 = *(v24 + 80);
  v42 = v15;
  v43 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v26;
  v31 = v11;
  v32 = (v29 + 48) & ~v29;
  v33 = v24;
  v34 = (v12 + v29 + v32) & ~v29;
  v35 = (v12 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 2) = v28;
  *(v36 + 3) = &protocol witness table for MainActor;
  *(v36 + 4) = v45;
  *(v36 + 5) = v30;
  v37 = *(v33 + 32);
  v37(&v36[v32], v42, v31);
  v37(&v36[v34], v43, v31);
  *&v36[v35] = v53;
  v38 = &v36[v44];
  v39 = v49;
  *v38 = v50;
  *(v38 + 1) = v39;
  v38[16] = v52 & 1;
  *&v36[(v35 + 39) & 0xFFFFFFFFFFFFFFF8] = v46;

  sub_10002EA44(0, 0, v47, &unk_100054EB0, v36);
}

uint64_t sub_10003CDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v17;
  *(v8 + 281) = v16;
  *(v8 + 136) = v15;
  *(v8 + 120) = a7;
  *(v8 + 128) = a8;
  *(v8 + 104) = a5;
  *(v8 + 112) = a6;
  *(v8 + 96) = a4;
  sub_1000035C4(&qword_10006A478, &qword_100052B80);
  *(v8 + 160) = swift_task_alloc();
  v9 = sub_100050228();
  *(v8 + 168) = v9;
  *(v8 + 176) = *(v9 - 8);
  *(v8 + 184) = swift_task_alloc();
  v10 = sub_10004FC38();
  *(v8 + 192) = v10;
  *(v8 + 200) = *(v10 - 8);
  *(v8 + 208) = swift_task_alloc();
  sub_1000035C4(&qword_10006BC08, &qword_100054A80);
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  sub_1000512D8();
  *(v8 + 240) = sub_1000512C8();
  v12 = sub_1000512B8();
  *(v8 + 248) = v12;
  *(v8 + 256) = v11;

  return _swift_task_switch(sub_10003CFF0, v12, v11);
}

uint64_t sub_10003CFF0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 264) = Strong;
  if (!Strong)
  {

LABEL_25:

    v45 = *(v0 + 8);

    return v45();
  }

  v2 = Strong;
  v3 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel_inProgressRequest;
  v4 = *(Strong + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_inProgressRequest);
  if (v4 && (v5 = [v4 qssSessionID]) != 0)
  {
    v6 = v5;
    sub_100051158();

    sub_10004FCC8();
  }

  else
  {
    v7 = *(v0 + 232);
    v8 = sub_10004FD08();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  }

  v9 = *(v0 + 104);
  v10 = *(v2 + v3);
  *(v2 + v3) = 0;

  if (v9)
  {
    swift_errorRetain();

    if (qword_100069F18 != -1)
    {
      swift_once();
    }

    v11 = sub_100050268();
    sub_100008BA0(v11, qword_10006E090);
    swift_errorRetain();
    v12 = sub_100050248();
    v13 = sub_100051358();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = sub_10004FC78();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to translate: %@", v14, 0xCu);
      sub_100004444(v15, &qword_10006AB78, &unk_100053370);
    }

    v17 = *(v0 + 104);

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 88) = v17;
    swift_errorRetain();

    sub_100050308();
    v18 = objc_allocWithZone(_LTLocalePair);
    isa = sub_10004FD88().super.isa;
    v20 = sub_10004FD88().super.isa;
    v21 = [v18 initWithSourceLocale:isa targetLocale:v20];

    v22 = *(v2 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_selfInvocation);
    v23 = *(v0 + 232);
    if (v22)
    {
      v24 = *(v0 + 224);
      v25 = v22;
      v26 = sub_10004FC78();
      sub_10000A00C(v23, v24, &qword_10006BC08, &qword_100054A80);
      v27 = sub_10004FD08();
      v28 = *(v27 - 8);
      LODWORD(v24) = (*(v28 + 48))(v24, 1, v27);
      v29 = v21;
      v30 = 0;
      if (v24 != 1)
      {
        v31 = *(v0 + 224);
        v30 = sub_10004FCE8().super.isa;
        (*(v28 + 8))(v31, v27);
      }

      v32 = *(v0 + 232);
      [v25 endWithError:v26 localePair:v29 qssSessionId:v30];

      v33 = v32;
    }

    else
    {

      v33 = v23;
    }

    sub_100004444(v33, &qword_10006BC08, &qword_100054A80);
    goto LABEL_25;
  }

  v34 = *(v0 + 128);
  if (v34)
  {
    v35 = *(v2 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_translationResult);
    *(v2 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_translationResult) = v34;
    v36 = v34;

    sub_10002F458();
    v38 = *(v37 + 16);

    if (v38 > 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 80) = 0;

      sub_100050308();
    }

    if (qword_100069F18 != -1)
    {
      swift_once();
    }

    v39 = sub_100050268();
    sub_100008BA0(v39, qword_10006E090);
    swift_retain_n();
    v40 = sub_100050248();
    v41 = sub_100051348();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 134217984;
      sub_10002F458();
      v44 = *(v43 + 16);

      *(v42 + 4) = v44;

      _os_log_impl(&_mh_execute_header, v40, v41, "Disambiguation items: %ld", v42, 0xCu);
    }

    else
    {
    }

    v47 = [v36 translations];
    sub_100009FC4(0, &qword_10006BC68, _LTTranslationCandidate_ptr);
    v48 = sub_100051248();

    if (v48 >> 62)
    {
      result = sub_100051608();
      if (result)
      {
        goto LABEL_31;
      }
    }

    else
    {
      result = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_31:
        if ((v48 & 0xC000000000000001) != 0)
        {
          v49 = sub_1000515D8();
        }

        else
        {
          if (!*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v49 = *(v48 + 32);
        }

        v50 = v49;

        if ([v50 isLowConfidence])
        {
          swift_getKeyPath();
          swift_getKeyPath();
          *(v0 + 280) = 0;

          sub_100050308();

          v51 = *(v0 + 144);
          if (!v51)
          {
            goto LABEL_44;
          }

          goto LABEL_39;
        }

        goto LABEL_38;
      }
    }

    v51 = *(v0 + 144);
    if (!v51)
    {
      goto LABEL_44;
    }

    goto LABEL_39;
  }

LABEL_38:
  v51 = *(v0 + 144);
  if (!v51)
  {
LABEL_44:
    v52 = *(v0 + 136);
    goto LABEL_45;
  }

LABEL_39:
  if (*(v0 + 281) != 1)
  {

    goto LABEL_44;
  }

  v69 = *(v0 + 136);

  v71._countAndFlagsBits = 10911970;
  v71._object = 0xA300000000000000;
  sub_1000511E8(v71);
  v52 = v69;
LABEL_45:
  v53 = *(v0 + 176);
  v67 = *(v0 + 160);
  v68 = *(v0 + 168);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 64) = v52;
  *(v0 + 72) = v51;

  sub_100050308();
  sub_100037E54();
  sub_1000035C4(&qword_10006A7F0, &qword_100053050);
  sub_10004FBD8();
  *(swift_allocObject() + 16) = xmmword_1000541F0;
  sub_10004FD28();
  sub_10004FBC8();

  sub_10004FD28();
  sub_10004FBC8();

  sub_10004FC28();
  sub_10004FBE8();
  v54 = sub_10004FBF8();
  if (v55)
  {
    v56 = v54;
  }

  else
  {
    v56 = 0;
  }

  if (v55)
  {
    v57 = v55;
  }

  else
  {
    v57 = 0xE000000000000000;
  }

  v58 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel_cplIntervalID;
  swift_beginAccess();
  sub_10000A00C(v2 + v58, v67, &qword_10006A478, &qword_100052B80);
  if ((*(v53 + 48))(v67, 1, v68) == 1)
  {
    v59 = *(v0 + 160);

    sub_100004444(v59, &qword_10006A478, &qword_100052B80);
  }

  else
  {
    (*(*(v0 + 176) + 32))(*(v0 + 184), *(v0 + 160), *(v0 + 168));
    v60 = sub_100051428();
    if (qword_100069F28 != -1)
    {
      swift_once();
    }

    v62 = *(v0 + 176);
    v61 = *(v0 + 184);
    v63 = *(v0 + 168);
    v64 = qword_10006E0C0;
    sub_1000035C4(&qword_10006A9E8, &unk_100053E60);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_1000530B0;
    *(v65 + 56) = &type metadata for String;
    *(v65 + 64) = sub_1000105AC();
    *(v65 + 32) = v56;
    *(v65 + 40) = v57;
    sub_100050218(v60, &_mh_execute_header, v64, "CPL", 3, 2, v61, "Locales=%{public,signpost.telemetry:string1}@", 45, 2, v65);

    (*(v62 + 8))(v61, v63);
  }

  v66 = swift_task_alloc();
  *(v0 + 272) = v66;
  *v66 = v0;
  v66[1] = sub_10003DB3C;

  return sub_10003DE38();
}

uint64_t sub_10003DB3C()
{
  v1 = *v0;

  v2 = *(v1 + 256);
  v3 = *(v1 + 248);

  return _swift_task_switch(sub_10003DC5C, v3, v2);
}

uint64_t sub_10003DC5C()
{
  v1 = v0[33];

  v2 = *(v1 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_selfInvocation);
  if (v2)
  {
    v3 = v0[27];
    sub_10000A00C(v0[29], v3, &qword_10006BC08, &qword_100054A80);
    v4 = sub_10004FD08();
    v5 = *(v4 - 8);
    v6 = (*(v5 + 48))(v3, 1, v4);
    v7 = v2;
    isa = 0;
    if (v6 != 1)
    {
      v9 = v0[27];
      isa = sub_10004FCE8().super.isa;
      (*(v5 + 8))(v9, v4);
    }

    [v7 endSuccessfullyWithQSSSessionId:isa localePair:v0[19]];
  }

  v10 = v0[29];
  (*(v0[25] + 8))(v0[26], v0[24]);
  sub_100004444(v10, &qword_10006BC08, &qword_100054A80);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10003DE38()
{
  v1[2] = v0;
  sub_1000035C4(&qword_10006BCD0, &qword_100054ED8);
  v1[3] = swift_task_alloc();
  v2 = sub_100050048();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  sub_1000512D8();
  v1[7] = sub_1000512C8();
  v4 = sub_1000512B8();

  return _swift_task_switch(sub_10003DF64, v4, v3);
}

uint64_t sub_10003DF64()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);

  sub_10003E53C(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100004444(*(v0 + 24), &qword_10006BCD0, &qword_100054ED8);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 64) = 0;

    sub_100050308();
  }

  else
  {
    (*(*(v0 + 40) + 32))(*(v0 + 48), *(v0 + 24), *(v0 + 32));
    v4 = sub_1000312B0();
    v5 = sub_100050058();

    if (qword_100069F00 != -1)
    {
      swift_once();
    }

    v6 = sub_100050268();
    sub_100008BA0(v6, qword_10006E048);
    v7 = sub_100050248();
    v8 = sub_100051348();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 4) = v5 & 1;
      _os_log_impl(&_mh_execute_header, v7, v8, "TranslationModel isFavorite: %{BOOL}d", v9, 8u);
    }

    v11 = *(v0 + 40);
    v10 = *(v0 + 48);
    v12 = *(v0 + 32);

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 65) = v5 & 1;

    sub_100050308();
    (*(v11 + 8))(v10, v12);
  }

  v13 = *(v0 + 8);

  return v13();
}

void sub_10003E1E8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_10003E290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000035C4(&qword_10006A7B8, &qword_100054AB0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10000A00C(a3, v22 - v9, &qword_10006A7B8, &qword_100054AB0);
  v11 = sub_1000512F8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100004444(v10, &qword_10006A7B8, &qword_100054AB0);
  }

  else
  {
    sub_1000512E8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1000512B8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_100051198() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100004444(a3, &qword_10006A7B8, &qword_100054AB0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100004444(a3, &qword_10006A7B8, &qword_100054AB0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10003E53C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v31 - v8;
  v10 = sub_10004FDB8();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v35 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v34 = &v31 - v15;
  v16 = __chkstk_darwin(v14);
  v36 = &v31 - v17;
  __chkstk_darwin(v16);
  v19 = &v31 - v18;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  v20 = *(v11 + 48);
  if (v20(v9, 1, v10) != 1)
  {
    v33 = a1;
    v31 = *(v11 + 32);
    v31(v19, v9, v10);
    swift_getKeyPath();
    swift_getKeyPath();
    v32 = v2;
    sub_1000502F8();

    if (v20(v7, 1, v10) == 1)
    {
      (*(v11 + 8))(v19, v10);
      sub_100004444(v7, &qword_10006A2A0, &qword_1000528E0);
    }

    else
    {
      v22 = v11;
      v23 = v19;
      v24 = v36;
      v31(v36, v7, v10);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000502F8();

      if (v38)
      {
        v25 = v37;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1000502F8();

        if (v38)
        {
          v31 = v25;
          v32 = v37;
          v26 = *(v22 + 16);
          v26(v34, v23, v10);
          v26(v35, v24, v10);
          a1 = v33;
          sub_100050038();
          v27 = *(v22 + 8);
          v27(v24, v10);
          v27(v23, v10);
          v21 = 0;
          goto LABEL_11;
        }
      }

      v28 = *(v22 + 8);
      v28(v24, v10);
      v28(v23, v10);
    }

    v21 = 1;
    a1 = v33;
    goto LABEL_11;
  }

  sub_100004444(v9, &qword_10006A2A0, &qword_1000528E0);
  v21 = 1;
LABEL_11:
  v29 = sub_100050048();
  return (*(*(v29 - 8) + 56))(a1, v21, 1, v29);
}

uint64_t sub_10003EA14()
{
  v1 = v0;
  v2 = sub_1000035C4(&qword_10006BCD0, &qword_100054ED8);
  __chkstk_darwin(v2 - 8);
  v4 = &v20[-v3 - 8];
  v5 = sub_100050048();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10003E53C(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_100004444(v4, &qword_10006BCD0, &qword_100054ED8);
  }

  (*(v6 + 32))(v8, v4, v5);
  v10 = sub_1000312B0();
  v11 = sub_100050058();

  if (v11)
  {
    if (qword_100069F00 != -1)
    {
      swift_once();
    }

    v12 = sub_100050268();
    sub_100008BA0(v12, qword_10006E048);
    v13 = sub_100050248();
    v14 = sub_100051348();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Skip adding to favorite, already done so", v15, 2u);
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v20[0] = 1;

    sub_100050308();
    v16 = *(v1 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel____lazy_storage___sharedFavorites);
    sub_100050028();

    v20[0] = 2;
    v21 = 0x6D6574737973;
    v22 = 0xE600000000000000;
    v23 = 0;
    v24 = 0;
    v17 = sub_100051128();
    sub_10004DA5C();
    sub_100009FC4(0, &qword_10006A480, NSObject_ptr);
    isa = sub_1000510D8().super.isa;

    AnalyticsSendEvent();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10003ED70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = sub_10004FF08();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  sub_1000035C4(&qword_10006AE60, &qword_1000538C0);
  v5[18] = swift_task_alloc();
  v7 = sub_1000035C4(&qword_10006BCB0, &qword_100054E68);
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();
  v8 = sub_1000035C4(&qword_10006BCB8, &unk_100054E70);
  v5[22] = v8;
  v5[23] = *(v8 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = sub_1000512D8();
  v5[26] = sub_1000512C8();
  v10 = sub_1000512B8();
  v5[27] = v10;
  v5[28] = v9;

  return _swift_task_switch(sub_10003EF88, v10, v9);
}

uint64_t sub_10003EF88()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 232) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 160);
    v2 = *(v0 + 168);
    v4 = *(v0 + 152);
    sub_1000500B8();
    sub_100051308();
    (*(v3 + 8))(v2, v4);
    *(v0 + 272) = enum case for LanguageState.downloading(_:);
    *(v0 + 276) = enum case for LanguageState.installed(_:);
    *(v0 + 280) = enum case for LanguageState.availableForDownload(_:);
    v5 = sub_1000512C8();
    *(v0 + 240) = v5;
    v6 = swift_task_alloc();
    *(v0 + 248) = v6;
    *v6 = v0;
    v6[1] = sub_10003F170;
    v7 = *(v0 + 176);
    v8 = *(v0 + 144);

    return _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v8, v5, &protocol witness table for MainActor, v7, v0 + 40);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_10003F170()
{
  v2 = *v1;

  v3 = *(v2 + 216);
  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = sub_10003FC1C;
  }

  else
  {
    v5 = sub_10003F290;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10003F290()
{
  v58 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));

    if (qword_100069EF8 != -1)
    {
      swift_once();
    }

    v4 = sub_100050268();
    sub_100008BA0(v4, qword_10006E030);
    v5 = sub_100050248();
    v6 = sub_100051338();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Download language pair finish", v7, 2u);
    }

    v8 = *(v0 + 8);

    return v8();
  }

  (*(v3 + 32))(*(v0 + 136), v1, v2);
  if (qword_100069EF8 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 128);
  v11 = *(v0 + 136);
  v12 = *(v0 + 104);
  v13 = *(v0 + 112);
  v14 = sub_100050268();
  sub_100008BA0(v14, qword_10006E030);
  v15 = *(v13 + 16);
  v15(v10, v11, v12);
  v16 = sub_100050248();
  v17 = sub_100051338();
  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v0 + 128);
  v20 = *(v0 + 104);
  v21 = *(v0 + 112);
  if (v18)
  {
    v22 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v57 = v55;
    *v22 = 136446210;
    v54 = sub_10004FEE8();
    v56 = v15;
    v24 = v23;
    v25 = *(v21 + 8);
    v25(v19, v20);
    v26 = sub_100008C04(v54, v24, &v57);
    v15 = v56;

    *(v22 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "Download language yield: %{public}s", v22, 0xCu);
    sub_100009F78(v55);
  }

  else
  {

    v25 = *(v21 + 8);
    v25(v19, v20);
  }

  *(v0 + 256) = v25;
  v27 = *(v0 + 272);
  v29 = *(v0 + 112);
  v28 = *(v0 + 120);
  v30 = *(v0 + 104);
  v15(v28, *(v0 + 136), v30);
  v31 = (*(v29 + 88))(v28, v30);
  if (v31 == v27)
  {
    v32 = *(v0 + 136);
    v33 = *(v0 + 120);
    v34 = *(v0 + 104);
    (*(*(v0 + 112) + 96))(v33, v34);
    v35 = *v33;
    type metadata accessor for TranslationModel.TranslationError(0);
    sub_100042294(&qword_10006BC80, type metadata accessor for TranslationModel.TranslationError, &unk_100054F5C);
    v36 = swift_allocError();
    *v37 = v35;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 72) = v36;

    sub_100050308();
    v38 = v32;
    v39 = v34;
    goto LABEL_16;
  }

  if (v31 != *(v0 + 276))
  {
    v46 = *(v0 + 280);
    v47 = v31;
    type metadata accessor for TranslationModel.TranslationError(0);
    sub_100042294(&qword_10006BC80, type metadata accessor for TranslationModel.TranslationError, &unk_100054F5C);
    v49 = swift_allocError();
    v50 = *(v0 + 136);
    if (v47 != v46)
    {
      v52 = *(v0 + 120);
      v53 = *(v0 + 104);
      swift_storeEnumTagMultiPayload();
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 56) = v49;

      sub_100050308();
      v25(v50, v53);
      v25(v52, v53);
      goto LABEL_17;
    }

    v51 = *(v0 + 104);
    *v48 = 0;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 80) = v49;

    sub_100050308();
    v38 = v50;
    v39 = v51;
LABEL_16:
    v25(v38, v39);
LABEL_17:
    v40 = sub_1000512C8();
    *(v0 + 240) = v40;
    v41 = swift_task_alloc();
    *(v0 + 248) = v41;
    *v41 = v0;
    v41[1] = sub_10003F170;
    v42 = *(v0 + 176);
    v43 = *(v0 + 144);

    return _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v43, v40, &protocol witness table for MainActor, v42, v0 + 40);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 64) = 0;

  sub_100050308();
  v44 = swift_task_alloc();
  *(v0 + 264) = v44;
  *v44 = v0;
  v44[1] = sub_10003FA20;
  v45 = *(v0 + 96);

  return sub_10003FE38(v45);
}

uint64_t sub_10003FA20()
{
  v1 = *v0;

  v2 = *(v1 + 224);
  v3 = *(v1 + 216);

  return _swift_task_switch(sub_10003FB40, v3, v2);
}

uint64_t sub_10003FB40()
{
  (*(v0 + 256))(*(v0 + 136), *(v0 + 104));
  v1 = sub_1000512C8();
  *(v0 + 240) = v1;
  v2 = swift_task_alloc();
  *(v0 + 248) = v2;
  *v2 = v0;
  v2[1] = sub_10003F170;
  v3 = *(v0 + 176);
  v4 = *(v0 + 144);

  return _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v4, v1, &protocol witness table for MainActor, v3, v0 + 40);
}

uint64_t sub_10003FC1C()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];

  (*(v2 + 8))(v1, v3);
  v4 = v0[5];
  if (qword_100069EF8 != -1)
  {
    swift_once();
  }

  v5 = sub_100050268();
  sub_100008BA0(v5, qword_10006E030);
  swift_errorRetain();
  v6 = sub_100050248();
  v7 = sub_100051358();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = sub_10004FC78();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Download language pair failure: %@", v8, 0xCu);
    sub_100004444(v9, &qword_10006AB78, &unk_100053370);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v0[6] = v4;
  sub_100050308();

  v11 = v0[1];

  return v11();
}

uint64_t sub_10003FE38(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  sub_1000035C4(&qword_10006A7B8, &qword_100054AB0);
  v2[5] = swift_task_alloc();
  sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v3 = sub_10004FE78();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = sub_1000512D8();
  v2[12] = sub_1000512C8();
  v5 = sub_1000512B8();

  return _swift_task_switch(sub_10003FFAC, v5, v4);
}

uint64_t sub_10003FFAC()
{
  v30 = v0;

  if (qword_100069EF8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 24);
  v5 = sub_100050268();
  sub_100008BA0(v5, qword_10006E030);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_100050248();
  v7 = sub_100051338();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 72);
  v9 = *(v0 + 80);
  v11 = *(v0 + 64);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136446210;
    v14 = sub_10004FE68();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_100008C04(v14, v16, &v29);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Complete download for pair: %{public}s", v12, 0xCu);
    sub_100009F78(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = *(v0 + 48);
  v19 = *(v0 + 56);
  v28 = *(v0 + 40);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 16) = 0;

  sub_100050308();
  sub_10004FE58();
  v20 = sub_10004FDB8();
  v27 = *(*(v20 - 8) + 56);
  v27(v19, 0, 1, v20);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10000A00C(v19, v18, &qword_10006A2A0, &qword_1000528E0);

  sub_100050308();
  sub_100004444(v19, &qword_10006A2A0, &qword_1000528E0);
  sub_10004FE48();
  v27(v19, 0, 1, v20);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10000A00C(v19, v18, &qword_10006A2A0, &qword_1000528E0);

  sub_100050308();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 104) = 0;

  sub_100050308();
  sub_100004444(v19, &qword_10006A2A0, &qword_1000528E0);
  v21 = sub_1000512F8();
  (*(*(v21 - 8) + 56))(v28, 1, 1, v21);
  v22 = swift_allocObject();
  swift_weakInit();

  v23 = sub_1000512C8();
  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = &protocol witness table for MainActor;
  v24[4] = v22;

  sub_10002ED44(0, 0, v28, &unk_100054E90, v24);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100040498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a1;
  v4[12] = a4;
  sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  sub_1000512D8();
  v4[15] = sub_1000512C8();
  v6 = sub_1000512B8();

  return _swift_task_switch(sub_100040574, v6, v5);
}

uint64_t sub_100040574()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    swift_beginAccess();
    v2 = swift_weakLoadStrong();
    v3 = *(v0 + 112);
    if (v2)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000502F8();
    }

    else
    {
      v4 = sub_10004FDB8();
      (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    }

    swift_beginAccess();
    v5 = swift_weakLoadStrong();
    v6 = *(v0 + 104);
    if (v5)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000502F8();
    }

    else
    {
      v7 = sub_10004FDB8();
      (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    }

    v9 = *(v0 + 104);
    v8 = *(v0 + 112);
    sub_100036318(v8, v9);

    sub_100004444(v9, &qword_10006A2A0, &qword_1000528E0);
    sub_100004444(v8, &qword_10006A2A0, &qword_1000528E0);
  }

  **(v0 + 88) = Strong == 0;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1000407E4()
{
  v1 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel__suggestedLocales;
  v2 = sub_1000035C4(&qword_10006BBD0, &qword_1000549F0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel__lowConfidenceLocales, v2);
  v4 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel__error;
  v5 = sub_1000035C4(&qword_10006BBD8, &qword_1000549F8);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v6 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel__sourceLocale;
  v7 = sub_1000035C4(&qword_10006BBE0, &qword_100054A00);
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v6, v7);
  v9 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel__sourceText;
  v10 = sub_1000035C4(&qword_10006BBE8, &unk_100054A08);
  v11 = *(*(v10 - 8) + 8);
  v11(v0 + v9, v10);
  v12 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel__sourceLocaleWasDetected;
  v13 = sub_1000035C4(&qword_10006AC10, &qword_1000536D0);
  v14 = *(*(v13 - 8) + 8);
  v15 = v0 + v12;
  v16 = v13;
  (v14)(v15);
  v8(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel__targetLocale, v7);
  v11(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel__targetText, v10);
  sub_100009F24(*(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_consentHandler), *(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_consentHandler + 8));
  v17 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel__translationAnnotation;
  v18 = sub_1000035C4(&qword_10006BBF0, &qword_100054A18);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel__availableLocales;
  v20 = sub_1000035C4(&qword_10006BBF8, &qword_100054A20);
  (*(*(v20 - 8) + 8))(v0 + v19, v20);
  v14(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel__replacementAvailable, v16);

  v14(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel__firstUseConsent, v16);

  v21 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel__selectedDisambiguation;
  v22 = sub_1000035C4(&qword_10006BC00, &unk_100054A28);
  (*(*(v22 - 8) + 8))(v0 + v21, v22);
  sub_100004444(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_cplIntervalID, &qword_10006A478, &qword_100052B80);

  v14(v0 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel__isFavorite, v16);

  return v0;
}

uint64_t sub_100040C24()
{
  sub_1000407E4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_100040CA4(uint64_t a1)
{
  sub_100041060(319, &qword_10006BA18, &qword_10006AE48, &qword_100053898);
  if (v1 <= 0x3F)
  {
    sub_100041060(319, &qword_10006BA20, &qword_10006BA28, &qword_1000547E0);
    if (v2 <= 0x3F)
    {
      sub_100041060(319, &qword_10006BA30, &qword_10006A2A0, &qword_1000528E0);
      if (v3 <= 0x3F)
      {
        sub_100041060(319, &qword_10006BA38, &qword_10006A2B8, &qword_100052930);
        if (v4 <= 0x3F)
        {
          sub_1000445DC(319, &qword_10006B878, &type metadata for Bool, &type metadata accessor for Published);
          if (v5 <= 0x3F)
          {
            sub_100041060(319, &qword_10006BA40, &qword_10006BA48, &unk_100054818);
            if (v6 <= 0x3F)
            {
              sub_100041060(319, &qword_10006BA50, &unk_10006B420, "$J");
              if (v7 <= 0x3F)
              {
                sub_1000445DC(319, &qword_10006BA58, &type metadata for Int, &type metadata accessor for Published);
                if (v8 <= 0x3F)
                {
                  sub_1000410B4(319);
                  if (v9 <= 0x3F)
                  {
                    swift_updateClassMetadata2();
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

void sub_100041060(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000372C(a3, a4);
    v5 = sub_100050318();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1000410B4(uint64_t a1)
{
  if (!qword_10006BA60)
  {
    sub_100050228();
    v1 = sub_1000514E8();
    if (!v2)
    {
      atomic_store(v1, &qword_10006BA60);
    }
  }
}

unint64_t sub_100041134()
{
  result = qword_10006BBC8;
  if (!qword_10006BBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006BBC8);
  }

  return result;
}

uint64_t sub_100041188@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1000502B8();
  *a2 = result;
  return result;
}

uint64_t sub_1000411FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100044974;

  return sub_1000335F4(a1, v4, v5, v6);
}

uint64_t sub_1000412B0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000412F8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_1000035C4(&qword_10006A298, &qword_100054E10);
  return v3(a1, a1 + *(v4 + 48));
}

uint64_t sub_100041384@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  *a2 = v4;
  return result;
}

uint64_t sub_100041404(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100050308();
}

uint64_t sub_100041494(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  swift_errorRetain();
  return sub_100050308();
}

uint64_t sub_100041524@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  *a4 = v6;
  return result;
}

uint64_t sub_1000415B4(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100050308();
}

uint64_t sub_100041638@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  *a4 = v6;
  return result;
}

uint64_t sub_1000416B4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100050308();
}

uint64_t sub_100041734(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100044974;

  return sub_100037534(a1, v4, v5, v7, v6);
}

uint64_t sub_1000417F4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000418EC;

  return v6(a1);
}

uint64_t sub_1000418EC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000419E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100044974;

  return sub_1000417F4(a1, v4);
}

uint64_t sub_100041B3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100041BAC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100041BEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100044974;

  return sub_100036BB4(a1, v4, v5, v6, v7);
}

uint64_t sub_100041D00()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100041D48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100044974;

  return sub_100038D64(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100041E10()
{
  v1 = sub_10004FDB8();
  v2 = *(v1 - 8);
  v18 = *(v2 + 80);
  v3 = (v18 + 40) & ~v18;
  v4 = *(v2 + 64);
  v5 = type metadata accessor for TranslationRequestContext(0);
  v6 = *(*(v5 - 1) + 80);
  v16 = *(*(v5 - 1) + 64);
  swift_unknownObjectRelease();

  v15 = *(v2 + 8);
  v15(v0 + v3, v1);
  v17 = (v3 + v4 + v6) & ~v6;
  v7 = v0 + v17;

  v8 = v5[8];
  v9 = sub_100050228();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v17 + v8, 1, v9))
  {
    (*(v10 + 8))(v7 + v8, v9);
  }

  v11 = v5[12];
  v12 = *(v2 + 48);
  if (!v12(v7 + v11, 1, v1))
  {
    v15(v7 + v11, v1);
  }

  v13 = v5[13];
  if (!v12(v7 + v13, 1, v1))
  {
    v15(v7 + v13, v1);
  }

  return _swift_deallocObject(v0, v17 + v16, v18 | v6 | 7);
}

uint64_t sub_100042080(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004FDB8() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for TranslationRequestContext(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100044974;

  return sub_100038AE4(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_1000421E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100044974;

  return sub_100038900(a1, v4, v5, v6);
}

uint64_t sub_100042294(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000422DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_1000035C4(&qword_10006BC88, &qword_100054D30);
      v7 = *(sub_10004FDB8() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        sub_10004FDB8();
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_10004247C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_10004FDB8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100042294(&qword_10006BCF0, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
  v33 = a2;
  v11 = sub_1000510F8();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100042294(&qword_10006A2B0, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
      v21 = sub_100051118();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100042AB8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10004275C(uint64_t a1)
{
  v2 = v1;
  v36 = sub_10004FDB8();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1000035C4(&qword_10006BCF8, &unk_100054F10);
  result = sub_1000515A8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_100042294(&qword_10006BCF0, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
      result = sub_1000510F8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_100042AB8(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_10004FDB8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10004275C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100042D5C();
      goto LABEL_12;
    }

    sub_100042F94(v10 + 1);
  }

  v12 = *v3;
  sub_100042294(&qword_10006BCF0, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
  v13 = sub_1000510F8();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_100042294(&qword_10006A2B0, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
      v21 = sub_100051118();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_100051678();
  __break(1u);
  return result;
}

void *sub_100042D5C()
{
  v1 = v0;
  v2 = sub_10004FDB8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035C4(&qword_10006BCF8, &unk_100054F10);
  v6 = *v0;
  v7 = sub_100051598();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_100042F94(uint64_t a1)
{
  v2 = v1;
  v33 = sub_10004FDB8();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1000035C4(&qword_10006BCF8, &unk_100054F10);
  v7 = sub_1000515A8();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_100042294(&qword_10006BCF0, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
      result = sub_1000510F8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1000432B0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1000433A4;

  return v5(v2 + 32);
}

uint64_t sub_1000433A4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1000434B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100044974;

  return sub_1000432B0(a1, v4);
}

_OWORD *sub_1000435DC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100043678()
{
  v1 = *(sub_1000035C4(&qword_10006A2A0, &qword_1000528E0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 40) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  swift_unknownObjectRelease();

  v6 = sub_10004FDB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v4, 1, v6))
  {
    (*(v7 + 8))(v0 + v4, v6);
  }

  if (!v8(v0 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v5, v6);
  }

  return _swift_deallocObject(v0, v5 + v3, v2 | 7);
}

uint64_t sub_1000437F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100043864(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000035C4(&qword_10006A2A0, &qword_1000528E0) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 40) & ~v6;
  v8 = (*(v5 + 64) + v6 + v7) & ~v6;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100044974;

  return sub_100034D98(a1, v9, v10, v11, v1 + v7, v1 + v8);
}

uint64_t sub_1000439A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100043A00()
{
  v1 = sub_10004FDB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v9 = *(v2 + 8);
  v9(v0 + v4, v1);
  v9(v0 + v6, v1);

  return _swift_deallocObject(v0, v8 + 8, v3 | 7);
}

uint64_t sub_100043B30(uint64_t a1)
{
  v3 = *(sub_10004FDB8() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_10000DA74;

  return sub_10003A268(a1, v9, v10, v11, v1 + v5, v1 + v7, v12, v13);
}

uint64_t sub_100043CA0()
{
  v1 = sub_10004FDB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return _swift_deallocObject(v0, v7 + 16, v3 | 7);
}

uint64_t sub_100043DA0(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(sub_10004FDB8() - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 24) & ~v8;
  v10 = *(v7 + 64);
  v11 = (v10 + v8 + v9) & ~v8;
  v12 = v11 + v10;
  v13 = *(v3 + 16);
  v14 = *(v3 + v12);
  v15 = *(v3 + (v12 & 0xFFFFFFFFFFFFFFF8) + 8);

  return sub_10003CA60(a1, a2, a3, v13, v3 + v9, v3 + v11, v14, v15);
}

uint64_t sub_100043E6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100043E84()
{
  v1 = sub_10004FE78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100043F50(uint64_t a1)
{
  v4 = *(sub_10004FE78() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100044974;

  return sub_10003ED70(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100044048(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100044974;

  return sub_100040498(a1, v4, v5, v6);
}

uint64_t sub_1000440FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100044134()
{
  v1 = sub_10004FDB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v9 = *(v2 + 8);
  v9(v0 + v4, v1);
  v9(v0 + v6, v1);

  return _swift_deallocObject(v0, v8 + 8, v3 | 7);
}

uint64_t sub_100044270(uint64_t a1)
{
  v3 = *(sub_10004FDB8() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v14 = v1[2];
  v13 = v1[3];
  v8 = v1[5];
  v12 = v1[4];
  v9 = *(v1 + ((v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000DA74;

  return sub_10003CDF4(a1, v14, v13, v12, v8, v1 + v5, v1 + v7, v9);
}

uint64_t sub_1000443F8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100044438(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100044974;

  return sub_100033DE8(a1, v4, v5, v6);
}

void sub_10004453C(uint64_t a1)
{
  sub_1000445DC(319, &qword_10006B2E8, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10004FE78();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1000445DC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_10004462C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000446B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100044730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004FDB8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
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
}

uint64_t sub_100044810(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10004FDB8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1000448C8(uint64_t a1)
{
  result = sub_10004FDB8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10004498C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000035C4(&qword_10006A478, &qword_100052B80);
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
      v13 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100044ADC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1000035C4(&qword_10006A478, &qword_100052B80);
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
      v13 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for TranslationRequestContext(uint64_t a1)
{
  result = qword_10006BE98;
  if (!qword_10006BE98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100044C64(uint64_t a1)
{
  sub_100009FC4(319, &qword_10006ABD0, NSAttributedString_ptr);
  if (v1 <= 0x3F)
  {
    sub_100044E38(319, &unk_10006BEA8, type metadata accessor for Key, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_100044E38(319, &qword_10006BA60, &type metadata accessor for OSSignpostID, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100044DE8();
        if (v4 <= 0x3F)
        {
          sub_100044E38(319, &qword_10006B2E0, &type metadata accessor for Locale, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100044DE8()
{
  if (!qword_10006B2E8)
  {
    v0 = sub_1000514E8();
    if (!v1)
    {
      atomic_store(v0, &qword_10006B2E8);
    }
  }
}

void sub_100044E38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for TranslationRequestContext.Origin(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TranslationRequestContext.Origin(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100044FF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TranslationRequestContext(0);
  v5 = *(v4 - 1);
  __chkstk_darwin(v4);
  v7 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_12;
  }

  v8 = [a1 inputItems];
  v9 = sub_100051248();

  if (!*(v9 + 16))
  {

    goto LABEL_11;
  }

  sub_1000091AC(v9 + 32, &v94);

  sub_100009FC4(0, &qword_10006A450, NSExtensionItem_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  v10 = v95;
  v11 = [v95 userInfo];
  if (!v11)
  {
LABEL_15:
    v95 = 0u;
    v96 = 0u;
    goto LABEL_16;
  }

  v12 = v11;
  v13 = sub_1000510E8();

  *&v95 = sub_100051158();
  *(&v95 + 1) = v14;
  sub_100051588();
  if (!*(v13 + 16) || (v15 = sub_10004DD84(&v94), (v16 & 1) == 0))
  {

    sub_100045DE0(&v94);
    goto LABEL_15;
  }

  sub_1000091AC(*(v13 + 56) + 32 * v15, &v95);
  sub_100045DE0(&v94);

  if (!*(&v96 + 1))
  {
LABEL_16:
    sub_10000E6E8(&v95);
    goto LABEL_17;
  }

  if (!swift_dynamicCast())
  {
LABEL_17:
    v17 = 0;
    goto LABEL_18;
  }

  v17 = v94;
LABEL_18:
  v7[8] = v17;
  v20 = [v10 attributedContentText];
  if (v20)
  {
    goto LABEL_19;
  }

  if (v17)
  {
    v28 = objc_allocWithZone(NSAttributedString);
    v29 = sub_100051128();
    v30 = [v28 initWithString:v29];

    if (v30)
    {
      v20 = v30;
LABEL_19:
      *v7 = v20;
      v21 = [v10 userInfo];
      if (v21)
      {
        v22 = v21;
        v23 = sub_1000510E8();

        *&v95 = sub_100051158();
        *(&v95 + 1) = v24;
        sub_100051588();
        if (*(v23 + 16))
        {
          v25 = sub_10004DD84(&v94);
          if (v26)
          {
            sub_1000091AC(*(v23 + 56) + 32 * v25, &v95);
            sub_100045DE0(&v94);

            if (*(&v96 + 1))
            {
              if (swift_dynamicCast())
              {
                v27 = v94;
                goto LABEL_32;
              }

LABEL_31:
              v27 = 0;
LABEL_32:
              v7[9] = v27;
              v31 = [v10 userInfo];
              if (v31)
              {
                v32 = v31;
                v33 = sub_1000510E8();

                v92 = sub_100051158();
                v93 = v34;
                sub_100051588();
                if (*(v33 + 16))
                {
                  v35 = sub_10004DD84(&v94);
                  if (v36)
                  {
                    sub_1000091AC(*(v33 + 56) + 32 * v35, &v95);
                    sub_100045DE0(&v94);

                    if (*(&v96 + 1))
                    {
                      sub_1000035C4(&qword_10006BF08, &qword_100055088);
                      if (swift_dynamicCast())
                      {
                        v37 = v94;
                        goto LABEL_42;
                      }

LABEL_41:
                      v37 = _swiftEmptyArrayStorage;
LABEL_42:
                      *(v7 + 2) = v37;
                      v38 = [v10 userInfo];
                      if (v38)
                      {
                        v39 = v38;
                        v40 = sub_1000510E8();

                        v92 = sub_100051158();
                        v93 = v41;
                        sub_100051588();
                        if (*(v40 + 16))
                        {
                          v42 = sub_10004DD84(&v94);
                          if (v43)
                          {
                            sub_1000091AC(*(v40 + 56) + 32 * v42, &v95);
                            sub_100045DE0(&v94);

                            if (*(&v96 + 1))
                            {
                              if (swift_dynamicCast())
                              {
                                v44 = v4[8];
                                sub_100050238();
                                v45 = sub_100050228();
                                (*(*(v45 - 8) + 56))(&v7[v44], 0, 1, v45);
                                goto LABEL_52;
                              }

LABEL_51:
                              v46 = v4[8];
                              v47 = sub_100050228();
                              (*(*(v47 - 8) + 56))(&v7[v46], 1, 1, v47);
LABEL_52:
                              v48 = [v10 userInfo];
                              if (v48)
                              {
                                v49 = v48;
                                v50 = sub_1000510E8();

                                *&v95 = sub_100051158();
                                *(&v95 + 1) = v51;
                                sub_100051588();
                                if (*(v50 + 16))
                                {
                                  v52 = sub_10004DD84(&v94);
                                  if (v53)
                                  {
                                    sub_1000091AC(*(v50 + 56) + 32 * v52, &v95);
                                    sub_100045DE0(&v94);

                                    if (*(&v96 + 1))
                                    {
                                      if (swift_dynamicCast())
                                      {
                                        v54 = v94;
                                        goto LABEL_62;
                                      }

LABEL_61:
                                      v54 = 0;
LABEL_62:
                                      v7[v4[9]] = v54;
                                      v55 = [v10 userInfo];
                                      if (v55)
                                      {
                                        v56 = v55;
                                        v57 = sub_1000510E8();

                                        v92 = sub_100051158();
                                        v93 = v58;
                                        sub_100051588();
                                        if (*(v57 + 16))
                                        {
                                          v59 = sub_10004DD84(&v94);
                                          if (v60)
                                          {
                                            sub_1000091AC(*(v57 + 56) + 32 * v59, &v95);
                                            sub_100045DE0(&v94);

                                            if (*(&v96 + 1))
                                            {
                                              sub_1000035C4(&qword_10006BF00, &qword_100055080);
                                              if (swift_dynamicCast())
                                              {
                                                v61 = v94;
                                                if (v94)
                                                {
                                                  v62 = v94[2];
                                                  if (v62)
                                                  {

                                                    v63 = sub_10004DD0C(0x747865746E6F63, 0xE700000000000000);
                                                    if (v64)
                                                    {
                                                      sub_1000091AC(v61[7] + 32 * v63, &v94);

                                                      if (swift_dynamicCast())
                                                      {
                                                        v65 = *(&v95 + 1);
                                                        v62 = v95;
LABEL_104:
                                                        v88 = &v7[v4[10]];
                                                        *v88 = v62;
                                                        *(v88 + 1) = v65;
                                                        if (v61[2] && (v89 = sub_10004DD0C(0x6E696769726FLL, 0xE600000000000000), (v90 & 1) != 0))
                                                        {
                                                          sub_1000091AC(v61[7] + 32 * v89, &v94);

                                                          if (swift_dynamicCast())
                                                          {
                                                            if (v95 == 2)
                                                            {
                                                              v67 = 2;
                                                            }

                                                            else
                                                            {
                                                              v67 = v95 == 1;
                                                            }

LABEL_77:
                                                            v7[v4[11]] = v67;
                                                            v68 = [v10 userInfo];
                                                            if (v68)
                                                            {
                                                              v69 = v68;
                                                              v70 = sub_1000510E8();

                                                              v92 = sub_100051158();
                                                              v93 = v71;
                                                              sub_100051588();
                                                              if (*(v70 + 16))
                                                              {
                                                                v72 = sub_10004DD84(&v94);
                                                                if (v73)
                                                                {
                                                                  sub_1000091AC(*(v70 + 56) + 32 * v72, &v95);
                                                                  sub_100045DE0(&v94);

                                                                  if (*(&v96 + 1))
                                                                  {
                                                                    if (swift_dynamicCast())
                                                                    {
                                                                      v74 = v4[12];
                                                                      sub_10004FD18();
                                                                      v75 = sub_10004FDB8();
                                                                      (*(*(v75 - 8) + 56))(&v7[v74], 0, 1, v75);
                                                                      goto LABEL_87;
                                                                    }

LABEL_86:
                                                                    v76 = v4[12];
                                                                    v77 = sub_10004FDB8();
                                                                    (*(*(v77 - 8) + 56))(&v7[v76], 1, 1, v77);
LABEL_87:
                                                                    v78 = [v10 userInfo];
                                                                    if (v78)
                                                                    {
                                                                      v79 = v78;
                                                                      v80 = sub_1000510E8();

                                                                      v92 = sub_100051158();
                                                                      v93 = v81;
                                                                      sub_100051588();
                                                                      if (*(v80 + 16) && (v82 = sub_10004DD84(&v94), (v83 & 1) != 0))
                                                                      {
                                                                        sub_1000091AC(*(v80 + 56) + 32 * v82, &v95);
                                                                        sub_100045DE0(&v94);

                                                                        if (*(&v96 + 1))
                                                                        {
                                                                          if (swift_dynamicCast())
                                                                          {
                                                                            v84 = v4[13];
                                                                            sub_10004FD18();

                                                                            v85 = sub_10004FDB8();
                                                                            (*(*(v85 - 8) + 56))(&v7[v84], 0, 1, v85);
LABEL_98:
                                                                            sub_100009D80(v7, a2);
                                                                            v18 = 0;
                                                                            return (*(v5 + 56))(a2, v18, 1, v4);
                                                                          }

LABEL_97:
                                                                          v86 = v4[13];
                                                                          v87 = sub_10004FDB8();
                                                                          (*(*(v87 - 8) + 56))(&v7[v86], 1, 1, v87);
                                                                          goto LABEL_98;
                                                                        }
                                                                      }

                                                                      else
                                                                      {

                                                                        sub_100045DE0(&v94);
                                                                        v95 = 0u;
                                                                        v96 = 0u;
                                                                      }
                                                                    }

                                                                    else
                                                                    {

                                                                      v95 = 0u;
                                                                      v96 = 0u;
                                                                    }

                                                                    sub_10000E6E8(&v95);
                                                                    goto LABEL_97;
                                                                  }

LABEL_85:
                                                                  sub_10000E6E8(&v95);
                                                                  goto LABEL_86;
                                                                }
                                                              }

                                                              sub_100045DE0(&v94);
                                                            }

                                                            v95 = 0u;
                                                            v96 = 0u;
                                                            goto LABEL_85;
                                                          }
                                                        }

                                                        else
                                                        {
                                                        }

LABEL_76:
                                                        v67 = 0;
                                                        goto LABEL_77;
                                                      }
                                                    }

                                                    else
                                                    {
                                                    }

                                                    v62 = 0;
                                                  }

                                                  v65 = 0;
                                                  goto LABEL_104;
                                                }
                                              }

LABEL_75:
                                              v66 = &v7[v4[10]];
                                              *v66 = 0;
                                              *(v66 + 1) = 0;
                                              goto LABEL_76;
                                            }

LABEL_74:
                                            sub_10000E6E8(&v95);
                                            goto LABEL_75;
                                          }
                                        }

                                        sub_100045DE0(&v94);
                                      }

                                      v95 = 0u;
                                      v96 = 0u;
                                      goto LABEL_74;
                                    }

LABEL_60:
                                    sub_10000E6E8(&v95);
                                    goto LABEL_61;
                                  }
                                }

                                sub_100045DE0(&v94);
                              }

                              v95 = 0u;
                              v96 = 0u;
                              goto LABEL_60;
                            }

LABEL_50:
                            sub_10000E6E8(&v95);
                            goto LABEL_51;
                          }
                        }

                        sub_100045DE0(&v94);
                      }

                      v95 = 0u;
                      v96 = 0u;
                      goto LABEL_50;
                    }

LABEL_40:
                    sub_10000E6E8(&v95);
                    goto LABEL_41;
                  }
                }

                sub_100045DE0(&v94);
              }

              v95 = 0u;
              v96 = 0u;
              goto LABEL_40;
            }

LABEL_30:
            sub_10000E6E8(&v95);
            goto LABEL_31;
          }
        }

        sub_100045DE0(&v94);
      }

      v95 = 0u;
      v96 = 0u;
      goto LABEL_30;
    }
  }

LABEL_12:
  v18 = 1;
  return (*(v5 + 56))(a2, v18, 1, v4);
}

Swift::Int sub_100045CAC()
{
  v1 = *v0;
  sub_1000516C8();
  sub_1000516E8(v1);
  return sub_1000516F8();
}

Swift::Int sub_100045D20(uint64_t a1)
{
  v2 = *v1;
  sub_1000516C8();
  sub_1000516E8(v2);
  return sub_1000516F8();
}

unint64_t *sub_100045D64@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_100045D8C()
{
  result = qword_10006BEF8;
  if (!qword_10006BEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006BEF8);
  }

  return result;
}

__n128 sub_100045E40(uint64_t a1, uint64_t a2)
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

uint64_t sub_100045E5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_100045EA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100045F20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = sub_100050078();
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v37 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000035C4(&qword_10006BF10, &qword_100055178);
  __chkstk_darwin(v5);
  v7 = v33 - v6;
  v8 = sub_1000035C4(&qword_10006BF18, &qword_100055180);
  v34 = *(v8 - 8);
  v35 = v8;
  __chkstk_darwin(v8);
  v10 = v33 - v9;
  v36 = sub_1000035C4(&qword_10006BF20, &qword_100055188);
  __chkstk_darwin(v36);
  v12 = v33 - v11;
  *v7 = sub_100050888();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v13 = sub_1000035C4(&qword_10006BF28, &qword_100055190);
  sub_1000464C8(v1, &v7[*(v13 + 44)]);
  v14 = sub_100051078();
  v16 = v15;
  v33[1] = v5;
  v17 = &v7[*(v5 + 36)];
  v18 = sub_100050E58();
  v19 = v17 + *(sub_1000035C4(&qword_10006AD38, &qword_100053758) + 36);
  sub_100051048();
  LOBYTE(v5) = sub_100050A88();
  v19[*(sub_1000035C4(&qword_10006AD40, &qword_100053760) + 36)] = v5;
  *v17 = v18;
  v20 = sub_1000504E8();
  LOBYTE(v18) = sub_100050A88();
  v21 = v17 + *(sub_1000035C4(&qword_10006AD48, &qword_100053768) + 36);
  *v21 = v20;
  v21[8] = v18;
  v22 = (v17 + *(sub_1000035C4(&qword_10006AD50, &qword_100053770) + 36));
  *v22 = v14;
  v22[1] = v16;
  v45 = *v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  if ((v42 & 1) == 0)
  {
    sub_10000D074();
    v23 = sub_100051388();
    sub_100051398();
  }

  sub_100050808();
  sub_1000485F0();
  sub_100050D28();

  sub_100004444(v7, &qword_10006BF10, &qword_100055178);
  v24 = sub_1000504F8();
  v25 = sub_100050A88();
  (*(v34 + 32))(v12, v10, v35);
  v26 = v37;
  v27 = &v12[*(v36 + 36)];
  *v27 = v24;
  v27[8] = v25;
  v29 = v39;
  v28 = v40;
  (*(v39 + 104))(v26, enum case for CloseButtonPosition.right(_:), v40);
  v44 = *(v2 + 1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  v42 = *(v2 + 2);
  v43 = *(v2 + 48);
  v30 = swift_allocObject();
  v31 = *(v2 + 1);
  *(v30 + 16) = *v2;
  *(v30 + 32) = v31;
  *(v30 + 48) = *(v2 + 2);
  *(v30 + 64) = *(v2 + 48);
  sub_10000A00C(&v45, v41, &qword_10006BF48, &qword_100055230);
  sub_10000A00C(&v44, v41, &qword_10006BF50, &qword_100055238);
  sub_10000A00C(&v42, v41, &qword_10006BF58, &qword_100055240);
  sub_1000486E8();
  sub_100050C58();

  (*(v29 + 8))(v26, v28);
  return sub_100004444(v12, &qword_10006BF20, &qword_100055188);
}

uint64_t sub_1000464C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a2;
  v130 = type metadata accessor for TranslationView(0);
  __chkstk_darwin(v130);
  v4 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_1000035C4(&qword_10006BF68, &qword_100055248);
  v110 = *(v131 - 8);
  __chkstk_darwin(v131);
  v6 = &v94 - v5;
  v126 = sub_1000035C4(&qword_10006BF70, &qword_100055250);
  v116 = *(v126 - 8);
  __chkstk_darwin(v126);
  v8 = &v94 - v7;
  v127 = sub_1000035C4(&qword_10006BF78, &qword_100055258);
  __chkstk_darwin(v127);
  v129 = &v94 - v9;
  v123 = sub_1000035C4(&qword_10006BF80, &qword_100055260);
  __chkstk_darwin(v123);
  v124 = &v94 - v10;
  v128 = sub_1000035C4(&qword_10006BF88, &qword_100055268);
  __chkstk_darwin(v128);
  v125 = &v94 - v11;
  v109 = sub_100050098();
  v97 = *(v109 - 8);
  __chkstk_darwin(v109);
  v96 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1000035C4(&qword_10006BF90, &qword_100055270);
  __chkstk_darwin(v105);
  v107 = &v94 - v13;
  v114 = sub_1000035C4(&qword_10006BF98, &qword_100055278);
  __chkstk_darwin(v114);
  v108 = &v94 - v14;
  v106 = sub_1000035C4(&qword_10006BFA0, &qword_100055280);
  __chkstk_darwin(v106);
  v95 = &v94 - v15;
  v104 = sub_10004FE78();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1000035C4(&qword_10006BFA8, &qword_100055288);
  __chkstk_darwin(v119);
  v120 = (&v94 - v17);
  v111 = sub_1000035C4(&qword_10006BFB0, &qword_100055290);
  __chkstk_darwin(v111);
  v113 = &v94 - v18;
  v98 = sub_1000035C4(&qword_10006BFB8, &qword_100055298);
  __chkstk_darwin(v98);
  v99 = &v94 - v19;
  v112 = sub_1000035C4(&qword_10006BFC0, &qword_1000552A0);
  __chkstk_darwin(v112);
  v100 = &v94 - v20;
  v118 = sub_1000035C4(&qword_10006BFC8, &qword_1000552A8);
  __chkstk_darwin(v118);
  v115 = &v94 - v21;
  v22 = type metadata accessor for LIDResolutionView(0);
  __chkstk_darwin(v22);
  v101 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for TranslationModel.TranslationError(0);
  __chkstk_darwin(v24);
  v26 = (&v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v122 = sub_1000035C4(&qword_10006BFD0, &qword_1000552B0);
  __chkstk_darwin(v122);
  v121 = &v94 - v27;
  v28 = a1[1];
  v117 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000502F8();

  v29 = v134;
  if (v134)
  {

    v133 = v29;
    swift_errorRetain();
    sub_1000035C4(&qword_10006BC90, &qword_100054E28);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_15:

      *v120 = v29;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      sub_100048898();
      sub_100048B7C();
      v65 = v121;
      sub_1000508A8();
LABEL_21:
      sub_10000A00C(v65, v124, &qword_10006BFD0, &qword_1000552B0);
      swift_storeEnumTagMultiPayload();
      sub_10004880C();
      v91 = sub_1000487B8();
      v138 = &type metadata for FirstUseExperienceView;
      v139 = v91;
      swift_getOpaqueTypeConformance2();
      v92 = v125;
      sub_1000508A8();
      sub_100048BD0(v92, v129);
      swift_storeEnumTagMultiPayload();
      sub_100048C40();
      v93 = sub_100048F2C(&qword_10006C040, type metadata accessor for TranslationView, &unk_1000554C8);
      v138 = v130;
      v139 = v93;
      swift_getOpaqueTypeConformance2();
      sub_1000508A8();

      sub_100004444(v92, &qword_10006BF88, &qword_100055268);
      return sub_100004444(v65, &qword_10006BFD0, &qword_1000552B0);
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        (*(v103 + 32))(v102, v26, v104);
        v80 = v95;
        sub_10004FE48();
        v81 = type metadata accessor for DownloadSelectionView(0);
        sub_10004FE58();
        v82 = *(a1 + 2);
        v141 = *(a1 + 1);
        v83 = *(&v141 + 1);
        v134 = v82;
        LOBYTE(v135) = *(a1 + 48);
        v84 = swift_allocObject();
        v85 = *(a1 + 1);
        *(v84 + 16) = *a1;
        *(v84 + 32) = v85;
        *(v84 + 48) = *(a1 + 2);
        *(v84 + 64) = *(a1 + 48);
        v86 = (v80 + *(v81 + 24));
        *v86 = sub_100048F24;
        v86[1] = v84;
        type metadata accessor for TranslationContext(0);

        sub_10000A00C(&v141, &v138, &qword_10006BF50, &qword_100055238);
        sub_10000A00C(&v134, &v138, &qword_10006BF58, &qword_100055240);
        sub_100048F2C(&qword_10006A348, type metadata accessor for TranslationContext, &unk_100054714);
        v87 = sub_1000502A8();
        v88 = (v80 + *(v106 + 36));
        *v88 = v87;
        v88[1] = v83;
        sub_10000A00C(v80, v107, &qword_10006BFA0, &qword_100055280);
        swift_storeEnumTagMultiPayload();
        sub_100048A94();
        sub_100048F2C(&qword_10006C028, &type metadata accessor for LanguagesProgressView, &protocol conformance descriptor for LanguagesProgressView);

        v89 = v108;
        sub_1000508A8();
        sub_10000A00C(v89, v113, &qword_10006BF98, &qword_100055278);
        swift_storeEnumTagMultiPayload();
        sub_100048924();
        sub_1000489D8();
        v90 = v115;
        sub_1000508A8();
        sub_100004444(v89, &qword_10006BF98, &qword_100055278);
        sub_10000A00C(v90, v120, &qword_10006BFC8, &qword_1000552A8);
        swift_storeEnumTagMultiPayload();
        sub_100048898();
        sub_100048B7C();
        v65 = v121;
        sub_1000508A8();
        sub_100004444(v90, &qword_10006BFC8, &qword_1000552A8);
        sub_100004444(v80, &qword_10006BFA0, &qword_100055280);
        (*(v103 + 8))(v102, v104);
        goto LABEL_20;
      }

      v59 = v26[1];
      if (!v59)
      {
        goto LABEL_15;
      }

      v116 = *v26;
      type metadata accessor for TranslationModel(0);
      sub_100048F2C(&qword_10006A340, type metadata accessor for TranslationModel, &unk_1000548E0);
      sub_100050498();
      swift_getKeyPath();
      v60 = v101;
      sub_1000504A8();

      sub_100050498();
      swift_getKeyPath();
      sub_1000504A8();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000502F8();

      v61 = v134;
      *v60 = v116;
      v60[1] = v59;
      v60[2] = _swiftEmptyArrayStorage;
      *(v60 + v22[8]) = v61;
      v62 = v60 + v22[9];
      LOBYTE(v138) = 0;
      sub_100050F08();
      v63 = *(&v134 + 1);
      *v62 = v134;
      *(v62 + 1) = v63;
      v64 = v22[10];
      v138 = 0;
      sub_100050F08();
      *(v60 + v64) = v134;
      sub_1000264A8(v60, v99);
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        v66 = *(a1 + 2);
        v141 = *(a1 + 1);
        v134 = v66;
        LOBYTE(v135) = *(a1 + 48);
        v67 = swift_allocObject();
        v68 = *(a1 + 1);
        *(v67 + 16) = *a1;
        *(v67 + 32) = v68;
        *(v67 + 48) = *(a1 + 2);
        *(v67 + 64) = *(a1 + 48);

        sub_10000A00C(&v141, &v138, &qword_10006BF50, &qword_100055238);
        sub_10000A00C(&v134, &v138, &qword_10006BF58, &qword_100055240);
        v69 = v96;
        sub_100050088();
        v70 = v97;
        v71 = v109;
        (*(v97 + 16))(v107, v69, v109);
        swift_storeEnumTagMultiPayload();
        sub_100048A94();
        sub_100048F2C(&qword_10006C028, &type metadata accessor for LanguagesProgressView, &protocol conformance descriptor for LanguagesProgressView);
        v72 = v108;
        sub_1000508A8();
        sub_10000A00C(v72, v113, &qword_10006BF98, &qword_100055278);
        swift_storeEnumTagMultiPayload();
        sub_100048924();
        sub_1000489D8();
        v73 = v115;
        sub_1000508A8();
        sub_100004444(v72, &qword_10006BF98, &qword_100055278);
        sub_10000A00C(v73, v120, &qword_10006BFC8, &qword_1000552A8);
        swift_storeEnumTagMultiPayload();
        sub_100048898();
        sub_100048B7C();
        v65 = v121;
        sub_1000508A8();
        sub_100004444(v73, &qword_10006BFC8, &qword_1000552A8);
        (*(v70 + 8))(v69, v71);
LABEL_20:

        goto LABEL_21;
      }

      if (EnumCaseMultiPayload == 3)
      {
        sub_100048F8C(v26, type metadata accessor for TranslationModel.TranslationError);
        goto LABEL_15;
      }

      type metadata accessor for TranslationModel(0);
      sub_100048F2C(&qword_10006A340, type metadata accessor for TranslationModel, &unk_1000548E0);
      sub_100050498();
      swift_getKeyPath();
      v60 = v101;
      sub_1000504A8();

      sub_100050498();
      swift_getKeyPath();
      sub_1000504A8();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000502F8();

      v74 = v134;
      *v60 = 0;
      v60[1] = 0;
      v60[2] = _swiftEmptyArrayStorage;
      *(v60 + v22[8]) = v74;
      v75 = v60 + v22[9];
      LOBYTE(v138) = 0;
      sub_100050F08();
      v76 = *(&v134 + 1);
      *v75 = v134;
      *(v75 + 1) = v76;
      v77 = v22[10];
      v138 = 0;
      sub_100050F08();
      *(v60 + v77) = v134;
      sub_1000264A8(v60, v99);
    }

    swift_storeEnumTagMultiPayload();
    sub_100048F2C(&qword_10006BFF8, type metadata accessor for LIDResolutionView, &unk_100053F48);
    v78 = v100;
    sub_1000508A8();
    sub_10000A00C(v78, v113, &qword_10006BFC0, &qword_1000552A0);
    swift_storeEnumTagMultiPayload();
    sub_100048924();
    sub_1000489D8();
    v79 = v115;
    sub_1000508A8();
    sub_100004444(v78, &qword_10006BFC0, &qword_1000552A0);
    sub_10000A00C(v79, v120, &qword_10006BFC8, &qword_1000552A8);
    swift_storeEnumTagMultiPayload();
    sub_100048898();
    sub_100048B7C();
    v65 = v121;
    sub_1000508A8();
    sub_100004444(v79, &qword_10006BFC8, &qword_1000552A8);
    sub_100048F8C(v60, type metadata accessor for LIDResolutionView);
    goto LABEL_20;
  }

  v121 = v6;
  if (*(v28 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_showConsentOnly) & 1) == 0 && ((swift_getKeyPath(), swift_getKeyPath(), sub_1000502F8(), , , (v134) || (sub_10000D074(), v42 = sub_100051388(), v43 = sub_100051398(), v42, (v43)))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000502F8();

    v44 = v134;
    KeyPath = swift_getKeyPath();
    v46 = swift_getKeyPath();
    v47 = swift_getKeyPath();
    v48 = swift_getKeyPath();
    v49 = v130;
    *&v4[*(v130 + 36)] = v48;
    sub_1000035C4(&qword_10006A7D8, &unk_100053038);
    swift_storeEnumTagMultiPayload();
    *&v4[v49[10]] = swift_getKeyPath();
    sub_1000035C4(&qword_10006C048, &unk_1000553F0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for TranslationModel(0);
    sub_100048F2C(&qword_10006A340, type metadata accessor for TranslationModel, &unk_1000548E0);
    *v4 = sub_100050488();
    *(v4 + 1) = v50;
    v4[16] = v44;
    *(v4 + 3) = KeyPath;
    *(v4 + 4) = 0;
    v4[40] = 0;
    *(v4 + 6) = v46;
    *(v4 + 7) = 0;
    v4[64] = 0;
    *(v4 + 9) = v47;
    *(v4 + 10) = 0;
    v4[88] = 0;
    v51 = &v4[v49[11]];
    LOBYTE(v138) = 0;
    sub_100050F08();
    v52 = *(&v134 + 1);
    *v51 = v134;
    *(v51 + 1) = v52;
    v53 = &v4[v49[12]];
    LOBYTE(v138) = 0;
    sub_100050F08();
    v54 = *(&v134 + 1);
    *v53 = v134;
    *(v53 + 1) = v54;
    v55 = sub_100048F2C(&qword_10006C040, type metadata accessor for TranslationView, &unk_1000554C8);
    v56 = v121;
    sub_100050D68();
    sub_100048F8C(v4, type metadata accessor for TranslationView);
    v57 = v110;
    v58 = v131;
    (*(v110 + 16))(v129, v56, v131);
    swift_storeEnumTagMultiPayload();
    sub_100048C40();
    *&v134 = v49;
    *(&v134 + 1) = v55;
    swift_getOpaqueTypeConformance2();
    sub_1000508A8();
    return (*(v57 + 8))(v56, v58);
  }

  else
  {

    type metadata accessor for TranslationModel(0);
    sub_100048F2C(&qword_10006A340, type metadata accessor for TranslationModel, &unk_1000548E0);
    sub_100050498();
    swift_getKeyPath();
    sub_1000504A8();

    v31 = v138;
    v32 = v139;
    v33 = v140;
    type metadata accessor for CGSize(0);
    v141 = 0uLL;
    sub_100050F08();
    v34 = v135;
    v35 = v134;
    *&v134 = v31;
    *(&v134 + 1) = v32;
    LOBYTE(v135) = v33;
    v136 = v35;
    v137 = v34;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000502F8();

    v36 = sub_1000487B8();
    sub_100050D68();

    v37 = v116;
    v38 = v126;
    (*(v116 + 16))(v124, v8, v126);
    swift_storeEnumTagMultiPayload();
    sub_10004880C();
    *&v134 = &type metadata for FirstUseExperienceView;
    *(&v134 + 1) = v36;
    swift_getOpaqueTypeConformance2();
    v39 = v125;
    sub_1000508A8();
    sub_100048BD0(v39, v129);
    swift_storeEnumTagMultiPayload();
    sub_100048C40();
    v40 = sub_100048F2C(&qword_10006C040, type metadata accessor for TranslationView, &unk_1000554C8);
    *&v134 = v130;
    *(&v134 + 1) = v40;
    swift_getOpaqueTypeConformance2();
    sub_1000508A8();
    sub_100004444(v39, &qword_10006BF88, &qword_100055268);
    return (*(v37 + 8))(v8, v38);
  }
}

uint64_t sub_1000480BC(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v3 = sub_10004FDB8();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = sub_10004FE78();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + 16);
  v14(v9, a1, v3);
  v14(v7, v17, v3);
  sub_10004FE38();
  sub_10003C5C4(v13);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_100048284(uint64_t a1)
{
  v2 = sub_100050748();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100030318();
  sub_10004FF58();

  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v6 = v11;
  if (v12 == 1)
  {
  }

  else
  {

    sub_100051368();
    v8 = sub_100050A58();
    sub_100050208();

    sub_100050738();
    swift_getAtKeyPath();
    sub_100004444(&v11, &qword_10006BF58, &qword_100055240);
    v7 = (*(v3 + 8))(v5, v2);
    v6 = v10;
  }

  v6(v7);
}

uint64_t sub_100048420(uint64_t a1)
{
  v2 = sub_100050748();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 48);
  v11 = *(a1 + 32);
  v6 = v11;
  if (v12 == 1)
  {
  }

  else
  {

    sub_100051368();
    v8 = sub_100050A58();
    sub_100050208();

    sub_100050738();
    swift_getAtKeyPath();
    sub_100004444(&v11, &qword_10006BF58, &qword_100055240);
    v7 = (*(v3 + 8))(v5, v2);
    v6 = v10;
  }

  v6(v7);
}

unint64_t sub_1000485F0()
{
  result = qword_10006BF30;
  if (!qword_10006BF30)
  {
    sub_10000372C(&qword_10006BF10, &qword_100055178);
    sub_1000044E8(&qword_10006BF38, &qword_10006BF40, &qword_1000551E0, &protocol conformance descriptor for VStack<A>);
    sub_1000044E8(&unk_10006AD70, &qword_10006AD50, &qword_100053770, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006BF30);
  }

  return result;
}

unint64_t sub_1000486E8()
{
  result = qword_10006BF60;
  if (!qword_10006BF60)
  {
    sub_10000372C(&qword_10006BF20, &qword_100055188);
    sub_10000372C(&qword_10006BF10, &qword_100055178);
    sub_1000485F0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006BF60);
  }

  return result;
}

unint64_t sub_1000487B8()
{
  result = qword_10006BFD8;
  if (!qword_10006BFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006BFD8);
  }

  return result;
}

unint64_t sub_10004880C()
{
  result = qword_10006BFE0;
  if (!qword_10006BFE0)
  {
    sub_10000372C(&qword_10006BFD0, &qword_1000552B0);
    sub_100048898();
    sub_100048B7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006BFE0);
  }

  return result;
}

unint64_t sub_100048898()
{
  result = qword_10006BFE8;
  if (!qword_10006BFE8)
  {
    sub_10000372C(&qword_10006BFC8, &qword_1000552A8);
    sub_100048924();
    sub_1000489D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006BFE8);
  }

  return result;
}

unint64_t sub_100048924()
{
  result = qword_10006BFF0;
  if (!qword_10006BFF0)
  {
    sub_10000372C(&qword_10006BFC0, &qword_1000552A0);
    sub_100048F2C(&qword_10006BFF8, type metadata accessor for LIDResolutionView, &unk_100053F48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006BFF0);
  }

  return result;
}

unint64_t sub_1000489D8()
{
  result = qword_10006C000;
  if (!qword_10006C000)
  {
    sub_10000372C(&qword_10006BF98, &qword_100055278);
    sub_100048A94();
    sub_100048F2C(&qword_10006C028, &type metadata accessor for LanguagesProgressView, &protocol conformance descriptor for LanguagesProgressView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C000);
  }

  return result;
}

unint64_t sub_100048A94()
{
  result = qword_10006C008;
  if (!qword_10006C008)
  {
    sub_10000372C(&qword_10006BFA0, &qword_100055280);
    sub_100048F2C(&qword_10006C010, type metadata accessor for DownloadSelectionView, &unk_100053848);
    sub_1000044E8(&qword_10006C018, &qword_10006C020, &qword_100055300, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C008);
  }

  return result;
}

unint64_t sub_100048B7C()
{
  result = qword_10006C030;
  if (!qword_10006C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C030);
  }

  return result;
}

uint64_t sub_100048BD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035C4(&qword_10006BF88, &qword_100055268);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100048C40()
{
  result = qword_10006C038;
  if (!qword_10006C038)
  {
    sub_10000372C(&qword_10006BF88, &qword_100055268);
    sub_10004880C();
    sub_1000487B8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C038);
  }

  return result;
}

uint64_t sub_100048D34(uint64_t a1)
{
  v2 = sub_100050428();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_100050588();
}

uint64_t sub_100048E24(uint64_t a1)
{
  v2 = sub_1000035C4(&qword_10006C050, &qword_1000554C0);
  __chkstk_darwin(v2 - 8);
  sub_10000A00C(a1, &v5 - v3, &qword_10006C050, &qword_1000554C0);
  return sub_100050668();
}

uint64_t sub_100048ED8()
{

  sub_10001051C(*(v0 + 48), *(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_100048F2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100048F8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100048FEC()
{
  sub_10000372C(&qword_10006BF20, &qword_100055188);
  sub_1000486E8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10004906C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000035C4(&qword_10006A8A8, &unk_1000530C0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000035C4(&qword_10006C058, &qword_100055498);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000491BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1000035C4(&qword_10006A8A8, &unk_1000530C0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000035C4(&qword_10006C058, &qword_100055498);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for TranslationView(uint64_t a1)
{
  result = qword_10006C0B8;
  if (!qword_10006C0B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100049344(uint64_t a1)
{
  sub_1000278E8(319);
  if (v1 <= 0x3F)
  {
    sub_100049538(319, &unk_10006ACB8, &type metadata for ReplaceAction, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100049538(319, &unk_10006A928, &type metadata for DismissAction, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_1000494E4(319, &qword_10006C0C8, &unk_10006A670, &unk_100052D40);
        if (v4 <= 0x3F)
        {
          sub_10000EA64(319);
          if (v5 <= 0x3F)
          {
            sub_1000494E4(319, &unk_10006C0D0, &qword_10006C050, &qword_1000554C0);
            if (v6 <= 0x3F)
            {
              sub_100049538(319, &qword_10006AEF8, &type metadata for Bool, &type metadata accessor for State);
              if (v7 <= 0x3F)
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

void sub_1000494E4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000372C(a3, a4);
    v5 = sub_1000503B8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100049538(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1000495A4()
{
  v1 = sub_100050748();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  if (*(v0 + 40) == 1)
  {
  }

  else
  {

    sub_100051368();
    v7 = sub_100050A58();
    sub_100050208();

    sub_100050738();
    swift_getAtKeyPath();
    sub_10001051C(v6, v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9;
  }

  return v6;
}

uint64_t sub_100049708()
{
  v1 = sub_100050748();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  if (*(v0 + 64) == 1)
  {
  }

  else
  {

    sub_100051368();
    v7 = sub_100050A58();
    sub_100050208();

    sub_100050738();
    swift_getAtKeyPath();
    sub_10001051C(v6, v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9;
  }

  return v6;
}

uint64_t sub_10004986C@<X0>(void *a1@<X8>)
{
  v3 = sub_100050748();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000035C4(&qword_10006A7D8, &unk_100053038);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TranslationView(0);
  sub_10000A00C(v1 + *(v10 + 36), v9, &qword_10006A7D8, &unk_100053038);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100050428();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_100051368();
    v13 = sub_100050A58();
    sub_100050208();

    sub_100050738();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100049A74@<X0>(void *a1@<X8>)
{
  v3 = sub_100050748();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000035C4(&qword_10006C048, &unk_1000553F0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for TranslationView(0);
  sub_10000A00C(v1 + *(v10 + 40), v9, &qword_10006C048, &unk_1000553F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10000360C(v9, a1, &qword_10006C050, &qword_1000554C0);
  }

  sub_100051368();
  v12 = sub_100050A58();
  sub_100050208();

  sub_100050738();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100049C5C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v93 = a1;
  v89 = sub_100050918();
  v90 = *(v89 - 8);
  __chkstk_darwin(v89);
  v70 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1000035C4(&qword_10006C120, &qword_100055518) - 8;
  __chkstk_darwin(v92);
  v86 = &v69 - v4;
  v5 = sub_1000035C4(&qword_10006C050, &qword_1000554C0);
  v6 = __chkstk_darwin(v5 - 8);
  v71 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v91 = &v69 - v9;
  __chkstk_darwin(v8);
  v94 = (&v69 - v10);
  v87 = sub_1000508C8();
  v88 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1000508E8();
  v82 = *(v84 - 8);
  __chkstk_darwin(v84);
  v76 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000507B8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000035C4(&qword_10006C128, &qword_100055520);
  __chkstk_darwin(v17);
  v19 = &v69 - v18;
  v75 = sub_1000035C4(&qword_10006C130, &qword_100055528);
  v78 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v69 - v20;
  v79 = sub_1000035C4(&qword_10006C138, &qword_100055530);
  v80 = *(v79 - 8);
  __chkstk_darwin(v79);
  v73 = &v69 - v21;
  v83 = sub_1000035C4(&qword_10006C140, &qword_100055538);
  v81 = *(v83 - 8);
  __chkstk_darwin(v83);
  v74 = &v69 - v22;
  v77 = sub_1000035C4(&qword_10006C148, &qword_100055540) - 8;
  __chkstk_darwin(v77);
  v95 = &v69 - v23;
  v96 = v2;
  sub_1000035C4(&qword_10006C150, &qword_100055548);
  sub_1000044E8(&qword_10006C158, &qword_10006C150, &qword_100055548, &protocol conformance descriptor for TupleView<A>);
  sub_100050B78();
  sub_1000507A8();
  v24 = *(sub_1000035C4(&qword_10006C160, &qword_100055550) + 36);
  (*(v14 + 16))(&v19[v24], v16, v13);
  v25 = *(v14 + 56);
  v25(&v19[v24], 0, 1, v13);
  KeyPath = swift_getKeyPath();
  v27 = &v19[*(v17 + 36)];
  v28 = *(sub_1000035C4(&qword_10006C168, &qword_100055588) + 28);
  (*(v14 + 32))(v27 + v28, v16, v13);
  v29 = v94;
  v25(v27 + v28, 0, 1, v13);
  v30 = v90;
  *v27 = KeyPath;
  sub_100050A98();
  v31 = v76;
  sub_1000508D8();
  v32 = sub_10004D00C();
  v33 = v72;
  sub_100050D18();
  (*(v82 + 8))(v31, v84);
  sub_100004444(v19, &qword_10006C128, &qword_100055520);
  v34 = v85;
  sub_1000508B8();
  *&v97 = v17;
  *(&v97 + 1) = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v73;
  v37 = v75;
  v38 = v87;
  sub_100050DF8();
  (*(v88 + 8))(v34, v38);
  (*(v78 + 8))(v33, v37);
  *&v97 = v37;
  *(&v97 + 1) = v38;
  *&v98 = OpaqueTypeConformance2;
  *(&v98 + 1) = &protocol witness table for InsetGroupedListStyle;
  v39 = v91;
  swift_getOpaqueTypeConformance2();
  v40 = v74;
  v41 = v79;
  sub_100050D98();
  (*(v80 + 8))(v36, v41);
  sub_100051058();
  sub_100050538();
  v42 = v95;
  (*(v81 + 32))(v95, v40, v83);
  v43 = (v42 + *(v77 + 44));
  v44 = v102;
  v43[4] = v101;
  v43[5] = v44;
  v43[6] = v103;
  v45 = v98;
  *v43 = v97;
  v43[1] = v45;
  v46 = v100;
  v43[2] = v99;
  v43[3] = v46;
  LODWORD(v88) = sub_100050AC8();
  v47 = v29;
  sub_100049A74(v29);
  v48 = v89;
  (*(v30 + 104))(v39, enum case for UserInterfaceSizeClass.compact(_:), v89);
  (*(v30 + 56))(v39, 0, 1, v48);
  v49 = *(v92 + 56);
  v50 = v86;
  sub_10000A00C(v47, v86, &qword_10006C050, &qword_1000554C0);
  sub_10000A00C(v39, v50 + v49, &qword_10006C050, &qword_1000554C0);
  v51 = v30;
  v52 = *(v30 + 48);
  if (v52(v50, 1, v48) != 1)
  {
    v53 = v71;
    sub_10000A00C(v50, v71, &qword_10006C050, &qword_1000554C0);
    if (v52(v50 + v49, 1, v48) != 1)
    {
      v54 = v51;
      v55 = *(v51 + 32);
      v56 = v70;
      v55(v70, v50 + v49, v48);
      sub_10004D280(&qword_10006C1B0, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
      sub_100051118();
      v57 = *(v54 + 8);
      v57(v56, v48);
      sub_100004444(v39, &qword_10006C050, &qword_1000554C0);
      sub_100004444(v94, &qword_10006C050, &qword_1000554C0);
      v57(v53, v48);
      sub_100004444(v50, &qword_10006C050, &qword_1000554C0);
      goto LABEL_8;
    }

    sub_100004444(v39, &qword_10006C050, &qword_1000554C0);
    sub_100004444(v94, &qword_10006C050, &qword_1000554C0);
    (*(v51 + 8))(v53, v48);
    goto LABEL_6;
  }

  sub_100004444(v39, &qword_10006C050, &qword_1000554C0);
  sub_100004444(v47, &qword_10006C050, &qword_1000554C0);
  if (v52(v50 + v49, 1, v48) != 1)
  {
LABEL_6:
    sub_100004444(v50, &qword_10006C120, &qword_100055518);
    goto LABEL_8;
  }

  sub_100004444(v50, &qword_10006C050, &qword_1000554C0);
LABEL_8:
  sub_100050368();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v66 = v93;
  sub_10004D1A8(v95, v93);
  result = sub_1000035C4(&qword_10006C1A8, &unk_1000555A0);
  v68 = v66 + *(result + 36);
  *v68 = v88;
  *(v68 + 8) = v59;
  *(v68 + 16) = v61;
  *(v68 + 24) = v63;
  *(v68 + 32) = v65;
  *(v68 + 40) = 0;
  return result;
}

id sub_10004A970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = sub_1000035C4(&qword_10006C1C0, &qword_1000555B8);
  v4 = __chkstk_darwin(v68);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v70 = &v60 - v7;
  v8 = sub_1000035C4(&qword_10006C1C8, &qword_1000555C0);
  v64 = *(v8 - 8);
  v65 = v8;
  __chkstk_darwin(v8);
  v10 = &v60 - v9;
  v11 = sub_1000035C4(&qword_10006C1D0, &qword_1000555C8);
  v12 = __chkstk_darwin(v11 - 8);
  v72 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v73 = &v60 - v14;
  v15 = sub_1000035C4(&qword_10006C1D8, &qword_1000555D0);
  v16 = v15 - 8;
  v17 = __chkstk_darwin(v15);
  v71 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v60 - v19;
  v21 = type metadata accessor for TranslationCardView(0);
  v22 = __chkstk_darwin(v21 - 8);
  v69 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = (&v60 - v24);

  v66 = v25;
  sub_100027490(v25);
  v26 = a1;
  v74 = a1;
  sub_1000035C4(&qword_10006C1E0, &qword_1000555D8);
  sub_1000044E8(&qword_10006C1E8, &qword_10006C1E0, &qword_1000555D8, &protocol conformance descriptor for TupleView<A>);
  sub_100050FE8();
  sub_100050E78();
  v27 = *(sub_1000035C4(&qword_10006C1F0, &qword_1000555E0) + 36);
  sub_1000503D8();

  v28 = sub_1000503E8();
  v63 = *(*(v28 - 8) + 56);
  v63(&v20[v27], 0, 1, v28);
  v29 = sub_100050E78();
  KeyPath = swift_getKeyPath();
  v31 = *(v16 + 44);
  v67 = v20;
  v32 = &v20[v31];
  *v32 = KeyPath;
  v32[1] = v29;
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v34 = result;
    v61 = a2;
    v62 = v6;
    v35 = sub_100051128();
    v36 = [v34 applicationIsInstalled:v35];

    if (v36)
    {
      __chkstk_darwin(v37);
      *(&v60 - 2) = v26;
      sub_1000035C4(&qword_10006C208, &qword_100055628);
      sub_1000044E8(&qword_10006C210, &qword_10006C208, &qword_100055628, &protocol conformance descriptor for TupleView<A>);
      sub_100050FE8();
      sub_100050E78();
      v38 = *(sub_1000035C4(&qword_10006C218, &qword_100055630) + 36);
      sub_1000503D8();

      v39 = v63;
      v63(&v10[v38], 0, 1, v28);
      v40 = sub_100050E78();
      v41 = swift_getKeyPath();
      v42 = v65;
      v43 = &v10[*(v65 + 36)];
      *v43 = v41;
      v43[1] = v40;
      v44 = v73;
      sub_10000360C(v10, v73, &qword_10006C1C8, &qword_1000555C0);
      v45 = 0;
    }

    else
    {
      v45 = 1;
      v44 = v73;
      v42 = v65;
      v39 = v63;
    }

    v46 = (*(v64 + 56))(v44, v45, 1, v42);
    __chkstk_darwin(v46);
    *(&v60 - 2) = v26;
    sub_1000035C4(&qword_10006B550, &qword_1000540E8);
    sub_10002636C();
    v47 = v70;
    sub_100050FE8();
    sub_100050E78();
    v48 = *(sub_1000035C4(&qword_10006C1F8, &qword_100055618) + 36);
    sub_1000503D8();

    v39(v47 + v48, 0, 1, v28);
    v49 = sub_100050E78();
    v50 = swift_getKeyPath();
    v51 = v69;
    v52 = (v47 + *(v68 + 36));
    *v52 = v50;
    v52[1] = v49;
    v53 = v66;
    sub_10004D32C(v66, v51, type metadata accessor for TranslationCardView);
    v54 = v67;
    v55 = v71;
    sub_10000A00C(v67, v71, &qword_10006C1D8, &qword_1000555D0);
    v56 = v72;
    sub_10000A00C(v44, v72, &qword_10006C1D0, &qword_1000555C8);
    v57 = v62;
    sub_10000A00C(v47, v62, &qword_10006C1C0, &qword_1000555B8);
    v58 = v61;
    sub_10004D32C(v51, v61, type metadata accessor for TranslationCardView);
    v59 = sub_1000035C4(&qword_10006C200, &qword_100055620);
    sub_10000A00C(v55, v58 + v59[12], &qword_10006C1D8, &qword_1000555D0);
    sub_10000A00C(v56, v58 + v59[16], &qword_10006C1D0, &qword_1000555C8);
    sub_10000A00C(v57, v58 + v59[20], &qword_10006C1C0, &qword_1000555B8);
    sub_100004444(v47, &qword_10006C1C0, &qword_1000555B8);
    sub_100004444(v73, &qword_10006C1D0, &qword_1000555C8);
    sub_100004444(v54, &qword_10006C1D8, &qword_1000555D0);
    sub_10004D2C8(v53);
    sub_100004444(v57, &qword_10006C1C0, &qword_1000555B8);
    sub_100004444(v56, &qword_10006C1D0, &qword_1000555C8);
    sub_100004444(v55, &qword_10006C1D8, &qword_1000555D0);
    return sub_10004D2C8(v51);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004B1B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = type metadata accessor for TranslationView(0);
  v73 = *(v3 - 8);
  v4 = *(v73 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_1000035C4(&qword_10006B568, &unk_1000540F0);
  v74 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v56 - v6;
  v8 = sub_1000035C4(&qword_10006B550, &qword_1000540E8);
  v9 = __chkstk_darwin(v8 - 8);
  v70 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v58 = &v56 - v11;
  v68 = sub_1000035C4(&qword_10006C238, &qword_100055720);
  v60 = *(v68 - 8);
  v12 = __chkstk_darwin(v68);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v66 = &v56 - v16;
  v17 = __chkstk_darwin(v15);
  v71 = &v56 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v56 - v20;
  __chkstk_darwin(v19);
  v59 = &v56 - v22;
  v23 = sub_1000035C4(&qword_10006C240, &qword_100055728);
  v24 = __chkstk_darwin(v23 - 8);
  v69 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v63 = &v56 - v26;
  v27 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  v67 = v5;
  v64 = v4;
  v65 = a1;
  v61 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v27;
  if (v75 == 1)
  {
    v57 = v14;
    sub_10004D32C(a1, &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TranslationView);
    v28 = (*(v73 + 80) + 16) & ~*(v73 + 80);
    v29 = swift_allocObject();
    sub_10004D398(&v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
    sub_1000035C4(&qword_10006B5B0, &qword_100055650);
    sub_1000044E8(&qword_10006B5B8, &qword_10006B5B0, &qword_100055650, &protocol conformance descriptor for Label<A, B>);
    sub_100050F58();
    sub_1000044E8(&qword_10006B560, &qword_10006B568, &unk_1000540F0, &protocol conformance descriptor for Button<A>);
    v30 = v58;
    sub_100050CE8();
    (*(v74 + 8))(v7, v5);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000502F8();

    v31 = v76;
    if (v76)
    {
    }

    v32 = v31 == 0;
    KeyPath = swift_getKeyPath();
    v34 = swift_allocObject();
    *(v34 + 16) = v32;
    sub_10000360C(v30, v21, &qword_10006B550, &qword_1000540E8);
    v35 = v68;
    v36 = &v21[*(v68 + 36)];
    *v36 = KeyPath;
    v36[1] = sub_10004DA58;
    v36[2] = v34;
    v37 = v59;
    sub_10000360C(v21, v59, &qword_10006C238, &qword_100055720);
    v38 = v63;
    sub_10000360C(v37, v63, &qword_10006C238, &qword_100055720);
    v39 = 0;
    v40 = v72;
    v14 = v57;
  }

  else
  {
    v39 = 1;
    v35 = v68;
    v40 = v72;
    v38 = v63;
  }

  (*(v60 + 56))(v38, v39, 1, v35);
  v41 = v61;
  sub_10004D32C(v65, v61, type metadata accessor for TranslationView);
  v42 = (*(v73 + 80) + 16) & ~*(v73 + 80);
  v43 = swift_allocObject();
  sub_10004D398(v41, v43 + v42);
  sub_1000035C4(&qword_10006B5B0, &qword_100055650);
  sub_1000044E8(&qword_10006B5B8, &qword_10006B5B0, &qword_100055650, &protocol conformance descriptor for Label<A, B>);
  sub_100050F58();
  sub_1000044E8(&qword_10006B560, &qword_10006B568, &unk_1000540F0, &protocol conformance descriptor for Button<A>);
  v44 = v70;
  v45 = v67;
  sub_100050CE8();
  (*(v74 + 8))(v7, v45);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  v46 = v76;
  if (v76)
  {
  }

  v47 = v46 == 0;
  v48 = swift_getKeyPath();
  v49 = swift_allocObject();
  *(v49 + 16) = v47;
  v50 = v66;
  sub_10000360C(v44, v66, &qword_10006B550, &qword_1000540E8);
  v51 = (v50 + *(v35 + 36));
  *v51 = v48;
  v51[1] = sub_10004DA58;
  v51[2] = v49;
  v52 = v71;
  sub_10000360C(v50, v71, &qword_10006C238, &qword_100055720);
  v53 = v69;
  sub_10000A00C(v38, v69, &qword_10006C240, &qword_100055728);
  sub_10000A00C(v52, v14, &qword_10006C238, &qword_100055720);
  sub_10000A00C(v53, v40, &qword_10006C240, &qword_100055728);
  v54 = sub_1000035C4(&qword_10006C248, &qword_100055778);
  sub_10000A00C(v14, v40 + *(v54 + 48), &qword_10006C238, &qword_100055720);
  sub_100004444(v52, &qword_10006C238, &qword_100055720);
  sub_100004444(v38, &qword_10006C240, &qword_100055728);
  sub_100004444(v14, &qword_10006C238, &qword_100055720);
  return sub_100004444(v53, &qword_10006C240, &qword_100055728);
}

void sub_10004BB00(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  if (v5)
  {
    v1 = sub_1000495A4();
    v2 = objc_allocWithZone(NSAttributedString);
    v3 = sub_100051128();

    v4 = [v2 initWithString:v3];

    v1(v4);
  }
}

uint64_t sub_10004BBF4()
{
  sub_100050808();

  return sub_100050EF8();
}

uint64_t sub_10004BC64()
{
  if (qword_100069F18 != -1)
  {
    swift_once();
  }

  v0 = sub_100050268();
  sub_100008BA0(v0, qword_10006E090);
  v1 = sub_100050248();
  v2 = sub_100051348();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Copy translation", v3, 2u);
  }

  v4 = [objc_opt_self() generalPasteboard];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  if (v8)
  {
    v5 = sub_100051128();
  }

  else
  {
    v5 = 0;
  }

  [v4 setString:v5];

  v6 = sub_100049708();
  v6();
}

uint64_t sub_10004BE1C()
{
  sub_100050808();

  return sub_100050EF8();
}

uint64_t sub_10004BE88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_1000035C4(&qword_10006C220, &qword_100055638);
  v4 = __chkstk_darwin(v3 - 8);
  v56 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v54 = v47 - v6;
  v7 = type metadata accessor for TranslationView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000035C4(&qword_10006B568, &unk_1000540F0);
  v12 = *(v11 - 8);
  v57 = v11;
  v58 = v12;
  v13 = __chkstk_darwin(v11);
  v48 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = v47 - v15;
  v51 = sub_1000035C4(&qword_10006C228, &unk_100055640);
  v17 = __chkstk_darwin(v51);
  v53 = v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = v47 - v20;
  __chkstk_darwin(v19);
  v52 = v47 - v22;
  sub_10004D32C(a1, v10, type metadata accessor for TranslationView);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v49 = v9;
  v24 = swift_allocObject();
  sub_10004D398(v10, v24 + v23);
  v59 = a1;
  v25 = sub_1000035C4(&qword_10006B5B0, &qword_100055650);
  v47[1] = sub_1000044E8(&qword_10006B5B8, &qword_10006B5B0, &qword_100055650, &protocol conformance descriptor for Label<A, B>);
  v47[2] = v25;
  sub_100050F58();
  v50 = a1;
  v26 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  v27 = v60;
  if (v60)
  {
  }

  v28 = v27 == 0;
  KeyPath = swift_getKeyPath();
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  v31 = *(v58 + 32);
  v32 = v16;
  v33 = v57;
  v31(v21, v32, v57);
  v34 = &v21[*(v51 + 36)];
  *v34 = KeyPath;
  v34[1] = sub_10004D4D4;
  v34[2] = v30;
  v35 = v21;
  v36 = v52;
  sub_10000360C(v35, v52, &qword_10006C228, &unk_100055640);
  v37 = *(v26 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_hostBundleIdentifier + 8);
  if (v37 && (*(v26 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_hostBundleIdentifier) == 0xD000000000000013 && v37 == 0x800000010005EE00 || (sub_100051658() & 1) != 0))
  {
    v38 = 1;
    v39 = v54;
  }

  else
  {
    sub_10004D32C(v50, v10, type metadata accessor for TranslationView);
    v40 = swift_allocObject();
    sub_10004D398(v10, v40 + v23);
    v41 = v48;
    v33 = v57;
    sub_100050F58();
    v39 = v54;
    v31(v54, v41, v33);
    v38 = 0;
  }

  (*(v58 + 56))(v39, v38, 1, v33);
  v42 = v53;
  sub_10000A00C(v36, v53, &qword_10006C228, &unk_100055640);
  v43 = v56;
  sub_10000A00C(v39, v56, &qword_10006C220, &qword_100055638);
  v44 = v55;
  sub_10000A00C(v42, v55, &qword_10006C228, &unk_100055640);
  v45 = sub_1000035C4(&qword_10006C230, &qword_1000556D0);
  sub_10000A00C(v43, v44 + *(v45 + 48), &qword_10006C220, &qword_100055638);
  sub_100004444(v39, &qword_10006C220, &qword_100055638);
  sub_100004444(v36, &qword_10006C228, &unk_100055640);
  sub_100004444(v43, &qword_10006C220, &qword_100055638);
  return sub_100004444(v42, &qword_10006C228, &unk_100055640);
}

uint64_t sub_10004C4E0(uint64_t a1)
{
  sub_100050808();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  return sub_100050EF8();
}

uint64_t sub_10004C5EC()
{
  v0 = sub_10004FCB8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_100050428();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11[8] = 3;
  v12 = 0x6D6574737973;
  v13 = 0xE600000000000000;
  v14 = 0;
  v15 = 0;
  v8 = sub_100051128();
  sub_10004DA5C();
  sub_100021288();
  isa = sub_1000510D8().super.isa;

  AnalyticsSendEvent();

  sub_10004986C(v7);
  sub_100031320(v3);
  sub_100050418();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10004C808()
{
  sub_100050808();

  return sub_100050EF8();
}

uint64_t sub_10004C87C(uint64_t a1)
{
  v2 = type metadata accessor for TranslationView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_1000035C4(&qword_10006B568, &unk_1000540F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_10004D32C(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TranslationView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_10004D398(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_1000035C4(&qword_10006B5B0, &qword_100055650);
  sub_1000044E8(&qword_10006B5B8, &qword_10006B5B0, &qword_100055650, &protocol conformance descriptor for Label<A, B>);
  sub_100050F58();
  sub_1000044E8(&qword_10006B560, &qword_10006B568, &unk_1000540F0, &protocol conformance descriptor for Button<A>);
  sub_100050D88();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10004CB00()
{
  v0 = sub_10004FCB8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100050428();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10004986C(v7);
  sub_10004FC98();
  sub_100050418();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10004CC78()
{
  sub_100050808();

  return sub_100050EF8();
}

uint64_t sub_10004CCE4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100050748();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000035C4(&qword_10006A7D8, &unk_100053038);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_10000A00C(v2, &v14 - v9, &qword_10006A7D8, &unk_100053038);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100050428();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_100051368();
    v13 = sub_100050A58();
    sub_100050208();

    sub_100050738();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10004CEE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100050718();
  *a1 = result;
  return result;
}

uint64_t sub_10004CF60(uint64_t a1)
{
  v2 = sub_1000035C4(&qword_10006C1B8, &qword_1000555B0);
  __chkstk_darwin(v2 - 8);
  sub_10000A00C(a1, &v5 - v3, &qword_10006C1B8, &qword_1000555B0);
  return sub_100050648();
}

unint64_t sub_10004D00C()
{
  result = qword_10006C170;
  if (!qword_10006C170)
  {
    sub_10000372C(&qword_10006C128, &qword_100055520);
    sub_10004D0C4();
    sub_1000044E8(&qword_10006C1A0, &qword_10006C168, &qword_100055588, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C170);
  }

  return result;
}

unint64_t sub_10004D0C4()
{
  result = qword_10006C178;
  if (!qword_10006C178)
  {
    sub_10000372C(&qword_10006C160, &qword_100055550);
    sub_1000044E8(&qword_10006C180, &qword_10006C188, &qword_100055590, &protocol conformance descriptor for List<A, B>);
    sub_1000044E8(&qword_10006C190, &qword_10006C198, &qword_100055598, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C178);
  }

  return result;
}

uint64_t sub_10004D1A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035C4(&qword_10006C148, &qword_100055540);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004D220@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100050718();
  *a1 = result;
  return result;
}

uint64_t sub_10004D280(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10004D2C8(uint64_t a1)
{
  v2 = type metadata accessor for TranslationCardView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004D32C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004D398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslationView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004D46C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000506F8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10004D588()
{
  v1 = type metadata accessor for TranslationView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  sub_10001051C(*(v5 + 24), *(v5 + 32), *(v5 + 40));
  sub_10001051C(*(v5 + 48), *(v5 + 56), *(v5 + 64));
  sub_10001051C(*(v5 + 72), *(v5 + 80), *(v5 + 88));
  v6 = *(v1 + 36);
  sub_1000035C4(&qword_10006A7D8, &unk_100053038);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_100050428();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 40);
  sub_1000035C4(&qword_10006C048, &unk_1000553F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_100050918();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004D7D4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TranslationView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_10004D84C()
{
  result = qword_10006C250;
  if (!qword_10006C250)
  {
    sub_10000372C(&qword_10006C1A8, &unk_1000555A0);
    sub_10004D8D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C250);
  }

  return result;
}

unint64_t sub_10004D8D8()
{
  result = qword_10006C258;
  if (!qword_10006C258)
  {
    sub_10000372C(&qword_10006C148, &qword_100055540);
    sub_10000372C(&qword_10006C138, &qword_100055530);
    sub_10000372C(&qword_10006C130, &qword_100055528);
    sub_1000508C8();
    sub_10000372C(&qword_10006C128, &qword_100055520);
    sub_10004D00C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C258);
  }

  return result;
}

unint64_t sub_10004DA5C()
{
  if (!*(v0 + 32))
  {
    v1 = [objc_opt_self() mainBundle];
    v2 = [v1 bundleIdentifier];

    if (!v2)
    {
      v3 = [objc_opt_self() processInfo];
      v2 = [v3 processName];
    }

    sub_100051158();
  }

  sub_1000035C4(&qword_10006A488, &unk_100052BD0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6D614E746E657665;
  *(inited + 16) = xmmword_100055780;
  *(inited + 40) = 0xE900000000000065;
  v5 = inited;

  v6 = sub_100051128();

  v5[6] = v6;
  v5[7] = 0x4E737365636F7270;
  v5[8] = 0xEB00000000656D61;
  v7 = sub_100051128();

  v5[9] = v7;
  v5[10] = 0x6E6F697461636F6CLL;
  v5[11] = 0xE800000000000000;
  v5[12] = sub_100051128();
  v8 = sub_10004DF48(v5);
  swift_setDeallocating();
  sub_1000035C4(&qword_10006A498, &qword_1000557B0);
  swift_arrayDestroy();
  return v8;
}

unint64_t sub_10004DD0C(uint64_t a1, uint64_t a2)
{
  sub_1000516C8();
  sub_1000511C8();
  v4 = sub_1000516F8();

  return sub_10004DDC8(a1, a2, v4);
}

unint64_t sub_10004DD84(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100051568(*(v2 + 40));

  return sub_10004DE80(a1, v4);
}

unint64_t sub_10004DDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100051658())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10004DE80(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10004E1CC(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100051578();
      sub_100045DE0(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10004DF48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000035C4(&qword_10006C260, &qword_1000557B8);
    v3 = sub_100051618();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10004DD0C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10004E04C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000035C4(&qword_10006C268, &qword_1000557C0);
    v3 = sub_100051618();
    v4 = a1 + 32;

    while (1)
    {
      sub_10004E15C(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_10004DD0C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000435DC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10004E15C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035C4(&qword_10006BCA0, &qword_100054E48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004E228(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10004E26C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  return v1;
}

void sub_10004E2E0()
{
  v1 = v0;
  v2 = sub_10004FFC8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v59 - v7;
  v65 = sub_10004FDB8();
  v9 = *(v65 - 8);
  __chkstk_darwin(v65);
  v64 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100069F20 != -1)
  {
    swift_once();
  }

  v11 = sub_100050268();
  v12 = sub_100008BA0(v11, qword_10006E0A8);
  v13 = sub_100050248();
  v14 = sub_100051338();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Requested voice playback", v15, 2u);
  }

  v16 = [objc_opt_self() sharedInstance];
  if (*(v1 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_text + 8))
  {
    v61 = v12;
    v62 = v3;
    v63 = v16;
    v17 = OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_locale;
    swift_beginAccess();
    sub_10004FA04(v1 + v17, v8);
    v18 = v65;
    if ((*(v9 + 48))(v8, 1, v65) == 1)
    {

      sub_100004444(v8, &qword_10006A2A0, &qword_1000528E0);
    }

    else
    {
      v60 = v9;
      (*(v9 + 32))(v64, v8, v18);
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(aBlock) = 1;

      sub_100050308();
      v19 = objc_allocWithZone(_LTLocalePair);
      isa = sub_10004FD88().super.isa;
      v21 = sub_10004FD88().super.isa;
      v22 = [v19 initWithSourceLocale:isa targetLocale:v21];

      v23 = [objc_allocWithZone(_LTSpeakRequest) initWithLocalePair:v22];
      v24 = sub_100051128();

      [v23 setText:v24];

      v25 = v23;
      v26 = [v25 uniqueID];
      v27 = sub_100051158();
      v29 = v28;

      v30 = (v1 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_requestID);
      *v30 = v27;
      v30[1] = v29;

      sub_100009FC4(0, &qword_10006A2A8, NSUserDefaults_ptr);
      v31 = sub_100051388();
      LOBYTE(v26) = sub_100051398();

      [v25 setForcedOfflineTranslation:v26 & 1];
      v32 = v62;
      (*(v62 + 104))(v5, enum case for TranslateFeatures.onDeviceFirst(_:), v2);
      LOBYTE(v26) = sub_10004FFB8();
      (*(v32 + 8))(v5, v2);
      if (v26)
      {
        [v25 setPreferOnDeviceIfAvailable:1];
      }

      v33 = swift_allocObject();
      *(v33 + 16) = v1;
      *(v33 + 24) = v25;
      v70 = sub_10004FA78;
      v71 = v33;
      aBlock = _NSConcreteStackBlock;
      v67 = 1107296256;
      v68 = sub_10004F008;
      v69 = &unk_100067818;
      v34 = _Block_copy(&aBlock);

      v35 = v25;

      [v35 setCompletionHandler:v34];
      _Block_release(v34);
      aBlock = 0;
      v36 = [v63 setCategory:AVAudioSessionCategoryPlayback withOptions:40 error:&aBlock];
      v37 = aBlock;
      if (v36 && (aBlock = 0, v38 = v37, v39 = [v63 setActive:1 withOptions:0 error:&aBlock], v37 = aBlock, v39))
      {
        v40 = aBlock;
      }

      else
      {
        v41 = v37;
        sub_10004FC88();

        swift_willThrow();
        swift_errorRetain();
        v42 = sub_100050248();
        v43 = sub_100051358();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          *v44 = 138412290;
          v46 = sub_10004FC78();
          *(v44 + 4) = v46;
          *v45 = v46;
          _os_log_impl(&_mh_execute_header, v42, v43, "Failed to change audio category: %@", v44, 0xCu);
          sub_100004444(v45, &qword_10006AB78, &unk_100053370);
        }

        else
        {
        }
      }

      v47 = [objc_allocWithZone(_LTTranslator) init];
      [v47 translate:v35];

      v48 = sub_10004FD28();
      v50 = v49;
      if (*(v1 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_loggingLocation + 8))
      {
        v51 = *(v1 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_loggingLocation);
        v52 = *(v1 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_loggingLocation + 8);
      }

      else
      {
        v52 = 0xE700000000000000;
        v51 = 0x6E776F6E6B6E75;
      }

      aBlock = 0x2F6D6574737973;
      v67 = 0xE700000000000000;

      v73._countAndFlagsBits = v48;
      v73._object = v50;
      sub_1000511E8(v73);

      v74._countAndFlagsBits = 47;
      v74._object = 0xE100000000000000;
      sub_1000511E8(v74);
      v75._countAndFlagsBits = v51;
      v75._object = v52;
      sub_1000511E8(v75);

      v53 = aBlock;
      v54 = v67;
      v55 = *(v1 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_processBundleIdentifier);
      v56 = *(v1 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_processBundleIdentifier + 8);
      LOBYTE(aBlock) = 0;
      v67 = v53;
      v68 = v54;
      v69 = v55;
      v70 = v56;

      v57 = sub_100051128();
      sub_10004DA5C();

      sub_100009FC4(0, &qword_10006A480, NSObject_ptr);
      v58 = sub_1000510D8().super.isa;

      AnalyticsSendEvent();

      (*(v60 + 8))(v64, v65);
    }
  }

  else
  {
  }
}

uint64_t sub_10004EC10(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1000510A8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000510C8();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009FC4(0, &qword_10006B0B8, OS_dispatch_queue_ptr);
  v12 = sub_1000513E8();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  aBlock[4] = sub_10004FAD8;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004E228;
  aBlock[3] = &unk_100067868;
  v14 = _Block_copy(aBlock);

  v15 = a3;

  sub_1000510B8();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10004FAE0();
  sub_1000035C4(&qword_10006B0C8, &qword_100055880);
  sub_10004FB38();
  sub_100051528();
  sub_1000513F8();
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v18);
}

uint64_t sub_10004EEB0(uint64_t a1, void *a2)
{
  v3 = (a1 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_requestID);
  v5 = *(a1 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_requestID);
  v4 = *(a1 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_requestID + 8);

  v6 = [a2 uniqueID];
  v7 = sub_100051158();
  v9 = v8;

  if (v4)
  {
    if (v5 == v7 && v4 == v9)
    {
    }

    else
    {
      v11 = sub_100051658();

      if ((v11 & 1) == 0)
      {
        return result;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();

    sub_100050308();
    *v3 = 0;
    v3[1] = 0;
  }
}

void sub_10004F008(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_10004F074()
{
  v1 = v0;
  v2 = sub_10004FDB8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v27[-v7];
  if (qword_100069F20 != -1)
  {
    swift_once();
  }

  v9 = sub_100050268();
  sub_100008BA0(v9, qword_10006E0A8);
  v10 = sub_100050248();
  v11 = sub_100051338();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Pausing voice playback", v12, 2u);
  }

  v13 = 0x6E776F6E6B6E75;

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v28) = 0;

  sub_100050308();
  v14 = (v1 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_requestID);
  *v14 = 0;
  v14[1] = 0;

  v15 = [objc_allocWithZone(_LTTranslator) init];
  [v15 cleanup];

  v16 = OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_locale;
  swift_beginAccess();
  sub_10004FA04(v1 + v16, v8);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_100004444(v8, &qword_10006A2A0, &qword_1000528E0);
    v17 = 0xE700000000000000;
    v18 = 0x6E776F6E6B6E75;
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_100004444(v8, &qword_10006A2A0, &qword_1000528E0);
    v18 = sub_10004FD28();
    v17 = v19;
    (*(v3 + 8))(v5, v2);
  }

  if (*(v1 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_loggingLocation + 8))
  {
    v13 = *(v1 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_loggingLocation);
    v20 = *(v1 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_loggingLocation + 8);
  }

  else
  {
    v20 = 0xE700000000000000;
  }

  v28 = 0x2F6D6574737973;
  v29 = 0xE700000000000000;

  v33._countAndFlagsBits = v18;
  v33._object = v17;
  sub_1000511E8(v33);

  v34._countAndFlagsBits = 47;
  v34._object = 0xE100000000000000;
  sub_1000511E8(v34);
  v35._countAndFlagsBits = v13;
  v35._object = v20;
  sub_1000511E8(v35);

  v21 = v28;
  v22 = v29;
  v23 = *(v1 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_processBundleIdentifier);
  v24 = *(v1 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_processBundleIdentifier + 8);
  LOBYTE(v28) = 1;
  v29 = v21;
  v30 = v22;
  v31 = v23;
  v32 = v24;

  v25 = sub_100051128();
  sub_10004DA5C();

  sub_100009FC4(0, &qword_10006A480, NSObject_ptr);
  isa = sub_1000510D8().super.isa;

  AnalyticsSendEvent();
}

void sub_10004F4C4()
{
  if (qword_100069F20 != -1)
  {
    swift_once();
  }

  v0 = sub_100050268();
  sub_100008BA0(v0, qword_10006E0A8);

  v1 = sub_100050248();
  v2 = sub_100051338();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 67240192;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000502F8();

    *(v3 + 4) = v4;

    _os_log_impl(&_mh_execute_header, v1, v2, "Requested toggling voice playback; previously playing: %{BOOL,public}d", v3, 8u);
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  if (v5 == 1)
  {
    sub_10004F074();
  }

  else
  {
    sub_10004E2E0();
  }
}

uint64_t sub_10004F684()
{
  v1 = OBJC_IVAR____TtC20TranslationUIService13VoicePlayback__isPlaying;
  v2 = sub_1000035C4(&qword_10006AC10, &qword_1000536D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100004444(v0 + OBJC_IVAR____TtC20TranslationUIService13VoicePlayback_locale, &qword_10006A2A0, &qword_1000528E0);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for VoicePlayback(uint64_t a1)
{
  result = qword_10006C2B8;
  if (!qword_10006C2B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004F7F0(uint64_t a1)
{
  sub_10002D1EC();
  if (v1 <= 0x3F)
  {
    sub_100021B78(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10004F8C8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for VoicePlayback(0);
  result = sub_1000502B8();
  *a2 = result;
  return result;
}

uint64_t sub_10004F908@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  *a2 = v4;
  return result;
}

uint64_t sub_10004F988(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100050308();
}

uint64_t sub_10004FA04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004FA80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004FA98()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10004FAE0()
{
  result = qword_10006B0C0;
  if (!qword_10006B0C0)
  {
    sub_1000510A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B0C0);
  }

  return result;
}

unint64_t sub_10004FB38()
{
  result = qword_10006B0D0;
  if (!qword_10006B0D0)
  {
    sub_10000372C(&qword_10006B0C8, &qword_100055880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B0D0);
  }

  return result;
}