void sub_1A4044(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v63 = a4;
  v64 = a3;
  v6 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  __chkstk_darwin(v6 - 8);
  v59 = &v57 - v7;
  v8 = sub_2C8EC0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD00000000000001BLL;
  v62 = inited + 32;
  *(inited + 16) = xmmword_2D5FB0;
  *(inited + 40) = 0x80000000002DE780;
  *(inited + 48) = [a2 playbackQueueLocation] == &dword_0 + 2;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0xD00000000000001CLL;
  *(inited + 88) = 0x80000000002DE7A0;
  *(inited + 96) = [a2 playbackQueueLocation] == &dword_0 + 3;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0xD000000000000010;
  *(inited + 136) = 0x80000000002DE8A0;
  v13 = sub_1D05D8();
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  v16 = 0xE000000000000000;
  if (v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  *(inited + 144) = v15;
  *(inited + 152) = v17;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0xD000000000000016;
  v61 = inited;
  *(inited + 184) = 0x80000000002DE8C0;
  v18 = sub_1D05D8();
  if (v19)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  if (v19)
  {
    v16 = v19;
  }

  sub_2CB570();
  v21 = sub_2C8EB0();
  v23 = v22;
  (*(v9 + 8))(v11, v8);
  if (!v23)
  {
    v24 = a1;
    v25 = v20;
    v26 = v16;
    v27 = v59;
    v28 = v60;
    v29 = v64;
    goto LABEL_36;
  }

  v65 = v20;
  v66 = v16;
  if (v21 != 28261 || v23 != 0xE200000000000000)
  {
    v30 = sub_2CEEA0();

    v29 = v64;
    if (v30)
    {
      goto LABEL_18;
    }

    v24 = a1;
    v25 = v65;
    v26 = v66;
LABEL_35:
    v27 = v59;
    v28 = v60;
LABEL_36:
    v43 = v61;
    *(v61 + 192) = v25;
    *(v43 + 200) = v26;
    v44 = v43;
    *(v43 + 216) = &type metadata for String;
    *(v43 + 224) = 0xD000000000000011;
    *(v43 + 232) = 0x80000000002DE8E0;
    *(v43 + 240) = _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(a2, &off_330260);
    *(v44 + 264) = &type metadata for Bool;
    strcpy((v44 + 272), "providerName");
    *(v44 + 285) = 0;
    *(v44 + 286) = -5120;
    v45 = sub_1D14A0();
    if (v46)
    {
      v47 = v45;
    }

    else
    {
      v47 = 0;
    }

    if (v46)
    {
      v48 = v46;
    }

    else
    {
      v48 = 0xE000000000000000;
    }

    *(v44 + 288) = v47;
    *(v44 + 296) = v48;
    *(v44 + 312) = &type metadata for String;
    *(v44 + 320) = 0x65726E6567;
    *(v44 + 328) = 0xE500000000000000;
    v49 = sub_1D15EC();
    if (v50)
    {
      v51 = v49;
    }

    else
    {
      v51 = 0;
    }

    if (v50)
    {
      v52 = v50;
    }

    else
    {
      v52 = 0xE000000000000000;
    }

    *(v44 + 336) = v51;
    *(v44 + 344) = v52;
    *(v44 + 360) = &type metadata for String;
    strcpy((v44 + 368), "isAppSpecified");
    *(v44 + 383) = -18;
    sub_2CC0E0();
    if (sub_2CC0D0())
    {
      sub_2CC0B0();
    }

    else
    {
      v53 = sub_2CBF80();
      (*(*(v53 - 8) + 56))(v27, 1, 1, v53);
    }

    v54 = sub_197DC8(v24, a2, (v28 + 128), v27);
    sub_30B8(v27, &qword_34DD30, &unk_2D1BC0);
    *(v44 + 408) = &type metadata for Bool;
    *(v44 + 384) = v54 & 1;
    v55 = sub_112C0(v44);
    swift_setDeallocating();
    sub_20410(&qword_34CBA0, &unk_2D0FE0);
    swift_arrayDestroy();
    v71[3] = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v71[4] = &off_3381B8;
    v71[0] = a2;
    v56 = a2;
    sub_239FD4(v55, v24, v71, v29, v63);

    sub_30B8(v71, &qword_34C6C0, &qword_2D0710);
    return;
  }

LABEL_18:
  v57 = a2;
  v58 = a1;
  v31 = v66;

  v32 = 0;
  v33 = v65;
  v25 = v65;
  v26 = v31;
LABEL_19:
  v35 = v25 == v33 && v26 == v31;
  v36 = 3;
  if (v32 > 3)
  {
    v36 = v32;
  }

  v37 = ~v36;
  v38 = v32 + 1;
  v39 = (&off_330210 + 2 * v32 + 5);
  while (1)
  {
    if (v38 == 4)
    {
      swift_arrayDestroy();

      v29 = v64;
      a2 = v57;
      v24 = v58;
      goto LABEL_35;
    }

    v32 = v38++;
    if (v37 + v38 == 1)
    {
      break;
    }

    v41 = *(v39 - 1);
    v40 = *v39;
    if (!v35)
    {
      v39 += 2;
      if ((sub_2CEEA0() & 1) == 0)
      {
        continue;
      }
    }

    v33 = v65;
    v31 = v66;
    v71[0] = v65;
    v71[1] = v66;
    v69 = v41;
    v70 = v40;
    v67 = 0x33245F32245F3124;
    v68 = 0xE800000000000000;
    sub_B96A0();
    v25 = sub_2CEBD0();
    v26 = v42;

    goto LABEL_19;
  }

  __break(1u);
}

uint64_t sub_1A46BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v7 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v27 - v8;
  sub_2CC0E0();
  if (sub_2CC0D0())
  {
    sub_2CC0B0();
  }

  else
  {
    v10 = sub_2CBF80();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  }

  v11 = sub_197DC8(a1, a2, (v4 + 128), v9);
  sub_30B8(v9, &qword_34DD30, &unk_2D1BC0);
  v12 = sub_1D05D8();
  v14 = v13;
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  v16 = inited;
  *(inited + 16) = xmmword_2D5F90;
  *(inited + 32) = 0x747369747261;
  v17 = 0xE000000000000000;
  if (v14)
  {
    v17 = v14;
    v18 = v12;
  }

  else
  {
    v18 = 0;
  }

  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v18;
  *(inited + 56) = v17;
  *(inited + 72) = &type metadata for String;
  strcpy((inited + 80), "isAppSpecified");
  *(inited + 95) = -18;
  *(inited + 96) = v11 & 1;
  *(inited + 120) = &type metadata for Bool;
  strcpy((inited + 128), "isPersonalized");
  *(inited + 143) = -18;
  v19 = [a2 privatePlayMediaIntentData];
  v20 = [v19 isPersonalizedRequest];

  sub_334A0(0, &qword_353110, NSNumber_ptr);
  v21.super.super.isa = sub_2CEB10(1).super.super.isa;
  if (v20)
  {
    v22 = sub_2CEB30();

    v21.super.super.isa = v20;
  }

  else
  {
    v22 = 0;
  }

  *(v16 + 144) = v22 & 1;
  *(v16 + 168) = &type metadata for Bool;
  *(v16 + 176) = 0xD00000000000001BLL;
  *(v16 + 184) = 0x80000000002DE780;
  *(v16 + 192) = [a2 playbackQueueLocation] == &dword_0 + 2;
  *(v16 + 216) = &type metadata for Bool;
  *(v16 + 224) = 0xD00000000000001CLL;
  *(v16 + 232) = 0x80000000002DE7A0;
  v23 = [a2 playbackQueueLocation] == &dword_0 + 3;
  *(v16 + 264) = &type metadata for Bool;
  *(v16 + 240) = v23;
  v24 = sub_112C0(v16);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v29[3] = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v29[4] = &off_3381B8;
  v29[0] = a2;
  v25 = a2;
  sub_240574(v24, a1, v29, v27, v28);

  return sub_30B8(v29, &qword_34C6C0, &qword_2D0710);
}

double sub_1A4A6C(int a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(uint64_t, void), void (*a7)(char *, unint64_t), uint64_t a8)
{
  v442 = a2;
  LODWORD(v433) = a1;
  v14 = sub_20410(&qword_353C88, &unk_2D6070);
  v15 = __chkstk_darwin(v14 - 8);
  v421 = &v399 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v426 = &v399 - v17;
  v428 = sub_2CBF80();
  v435 = *(v428 - 8);
  __chkstk_darwin(v428);
  v423 = &v399 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  v20 = __chkstk_darwin(v19 - 8);
  v403 = &v399 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v434 = &v399 - v22;
  v437 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v437);
  v438 = (&v399 - v23);
  v24 = sub_2CE000();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v429 = &v399 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v424 = &v399 - v29;
  v30 = __chkstk_darwin(v28);
  v411 = &v399 - v31;
  v32 = __chkstk_darwin(v30);
  v408 = &v399 - v33;
  v34 = __chkstk_darwin(v32);
  v401 = &v399 - v35;
  v36 = __chkstk_darwin(v34);
  v402 = &v399 - v37;
  v38 = __chkstk_darwin(v36);
  v404 = &v399 - v39;
  v40 = __chkstk_darwin(v38);
  v405 = &v399 - v41;
  v42 = __chkstk_darwin(v40);
  v406 = &v399 - v43;
  v44 = __chkstk_darwin(v42);
  v407 = &v399 - v45;
  v46 = __chkstk_darwin(v44);
  v409 = &v399 - v47;
  v48 = __chkstk_darwin(v46);
  v410 = &v399 - v49;
  v50 = __chkstk_darwin(v48);
  v412 = &v399 - v51;
  v52 = __chkstk_darwin(v50);
  v413 = &v399 - v53;
  v54 = __chkstk_darwin(v52);
  v415 = &v399 - v55;
  v56 = __chkstk_darwin(v54);
  v420 = &v399 - v57;
  v58 = __chkstk_darwin(v56);
  v425 = &v399 - v59;
  v60 = __chkstk_darwin(v58);
  v414 = &v399 - v61;
  v62 = __chkstk_darwin(v60);
  v416 = &v399 - v63;
  v64 = __chkstk_darwin(v62);
  v419 = &v399 - v65;
  v66 = __chkstk_darwin(v64);
  v422 = &v399 - v67;
  v68 = __chkstk_darwin(v66);
  v417 = &v399 - v69;
  v70 = __chkstk_darwin(v68);
  v427 = &v399 - v71;
  v72 = __chkstk_darwin(v70);
  v418 = &v399 - v73;
  v74 = __chkstk_darwin(v72);
  v431 = &v399 - v75;
  v76 = __chkstk_darwin(v74);
  v432 = &v399 - v77;
  __chkstk_darwin(v76);
  v79 = &v399 - v78;
  v80 = swift_allocObject();
  v80[2] = a5;
  v80[3] = a6;
  v439 = a6;
  v80[4] = a7;
  v80[5] = a8;
  v81 = v80;
  v82 = qword_34BF58;
  v436 = a5;
  v440 = a7;

  *&v441 = a8;

  if (v82 != -1)
  {
    swift_once();
  }

  v83 = sub_3ED0(v24, static Logger.default);
  swift_beginAccess();
  v84 = *(v25 + 16);
  v443 = v83;
  v444 = v84;
  v445 = v25 + 16;
  v84(v79, v83, v24);
  v85 = a3;
  v86 = sub_2CDFE0();
  v87 = sub_2CE670();

  v88 = os_log_type_enabled(v86, v87);
  v446 = v25;
  v447 = v24;
  v89 = a4;
  if (!v88)
  {

    v95 = *(v25 + 8);
    v95(v79, v24);
    goto LABEL_25;
  }

  v430 = v81;
  v81 = swift_slowAlloc();
  v400 = swift_slowAlloc();
  *&v449 = v400;
  *v81 = 136315394;
  v90 = [v85 privatePlayMediaIntentData];
  if (v90 && (v91 = v90, v92 = [v90 internalSignals], v91, v92))
  {
    v93 = v89;
    v94 = sub_2CE410();
  }

  else
  {
    v93 = v89;
    v94 = 0;
  }

  *&v448[0] = v94;
  v96 = sub_20410(&qword_353C98, &unk_2D6A00);
  v97 = sub_2CE2A0();
  v99 = sub_3F08(v97, v98, &v449);

  *(v81 + 4) = v99;
  *(v81 + 12) = 2080;
  v100 = [v85 mediaItems];
  if (v100)
  {
    sub_334A0(0, &qword_356F50, INMediaItem_ptr);
    v101 = sub_2CE410();

    if (v101 >> 62)
    {
      v102 = sub_2CEDA0();
    }

    else
    {
      v102 = *(&dword_10 + (v101 & 0xFFFFFFFFFFFFFF8));
    }

    v89 = v93;
    v103 = v447;
    if (!v102)
    {

LABEL_21:
      v100 = 0;
      v25 = v446;
      goto LABEL_24;
    }

    if ((v101 & 0xC000000000000001) != 0)
    {
      v104 = sub_2CECD0();
LABEL_16:
      v105 = v104;

      v106 = [v105 privateMediaItemValueData];

      if (v106)
      {
        v107 = v85;
        v108 = v89;
        v109 = [v106 internalSignals];

        if (v109)
        {
          v100 = sub_2CE410();
        }

        else
        {
          v100 = 0;
        }

        v89 = v108;
        v85 = v107;
        v25 = v446;
        v103 = v447;
        goto LABEL_24;
      }

      goto LABEL_21;
    }

    if (*(&dword_10 + (v101 & 0xFFFFFFFFFFFFFF8)))
    {
      v104 = *(v101 + 32);
      goto LABEL_16;
    }

    __break(1u);
LABEL_170:
    v320 = v101;
    v321 = v440;
    v430 = v81;

    v322 = [v85 mediaSearch];
    if (v322)
    {
      v323 = v322;
      v324 = [v322 sortOrder];

      if (v324 == &dword_8)
      {
        v325 = [v441 mediaSearch];
        if (v325)
        {
          v326 = v325;
          v327 = [v325 mediaName];

          if (v327)
          {

            v328 = [v441 mediaSearch];
            if (!v328 || (v329 = v328, v330 = [v328 reference], v329, v330 != &dword_0 + 1))
            {

              v444(v401, v443, v447);
              v388 = sub_2CDFE0();
              v389 = sub_2CE660();
              if (os_log_type_enabled(v388, v389))
              {
                v390 = swift_slowAlloc();
                *v390 = 0;
                _os_log_impl(&dword_0, v388, v389, "PlayMediaDialogProvider going to makePlayMusicLikeArtist", v390, 2u);
              }

              v321(v401, v447);
              sub_1A46BC(v442, v441, sub_1B7EF8, v430);
              goto LABEL_163;
            }
          }
        }
      }
    }

    v331 = &qword_330350;
    v332 = 2;
    do
    {
      v333 = v332;
      if (v332-- == 0)
      {
        break;
      }

      v335 = *v331++;
    }

    while (v335 != v434);
    v336 = [v441 mediaSearch];
    if (v336 && (v337 = v336, v338 = [v336 sortOrder], v337, v338 == &dword_0 + 3))
    {
      if (!v333)
      {
        goto LABEL_190;
      }
    }

    else
    {
      v339 = [v441 mediaSearch];
      if (!v339 || (v340 = v339, v341 = [v339 sortOrder], v340, !v333) || v341 != &dword_4)
      {
LABEL_190:
        v345 = sub_1D14A0();
        if (v346)
        {
          v347 = v345;
          v348 = v346;

          v349 = HIBYTE(v348) & 0xF;
          if ((v348 & 0x2000000000000000) == 0)
          {
            v349 = v347 & 0xFFFFFFFFFFFFLL;
          }

          v350 = v349 == 0;
        }

        else
        {
          v350 = 1;
        }

        LODWORD(v438) = v350;
        v351 = sub_1D15EC();
        if (v352)
        {
          v353 = v351 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v353 = 0;
        }

        if (v352)
        {
          v354 = v352;
        }

        else
        {
          v354 = 0xE000000000000000;
        }

        if ((v354 & 0x2000000000000000) != 0)
        {
          v355 = HIBYTE(v354) & 0xF;
        }

        else
        {
          v355 = v353;
        }

        if (v355)
        {
          v356 = sub_2CCF90();
          v358 = v357;
          v359 = sub_2CBE10();
          if (!v358)
          {

            goto LABEL_216;
          }

          if (v356 == v359 && v358 == v360)
          {
          }

          else
          {
            v361 = sub_2CEEA0();

            if ((v361 & 1) == 0)
            {
              goto LABEL_216;
            }
          }

          if (!v438 || _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v441, &off_330360))
          {

            v444(v402, v443, v447);
            v362 = sub_2CDFE0();
            v363 = sub_2CE660();
            if (os_log_type_enabled(v362, v363))
            {
              v364 = swift_slowAlloc();
              *v364 = 0;
              _os_log_impl(&dword_0, v362, v363, "PlayMediaDialogProvider going to nonSubscriberRadioFallback for genre query with broadcast radio result", v364, 2u);
            }

            v321(v402, v447);
            sub_1A4044(v442, v441, sub_1B7EF8, v430);
            goto LABEL_163;
          }
        }

LABEL_216:
        v365 = sub_2CE710();
        v366 = v438;
        if (v365 != 5)
        {
          v366 = (sub_2CE710() == 19) & v438;
        }

        if (sub_2CE710() == 16)
        {
          if ((v366 | v438))
          {
            goto LABEL_225;
          }
        }

        else if (v366)
        {
LABEL_225:

          v444(v404, v443, v447);
          v370 = sub_2CDFE0();
          v371 = sub_2CE660();
          if (os_log_type_enabled(v370, v371))
          {
            v372 = swift_slowAlloc();
            *v372 = 0;
            _os_log_impl(&dword_0, v370, v371, "PlayMediaDialogProvider going to makeEditorialPlaylist for playlist/radio", v372, 2u);
          }

          v321(v404, v447);
          sub_1A39E0(v442, v441, sub_1B7EF8, v430);
          goto LABEL_163;
        }

        if (!v355 || (v367 = [v441 mediaSearch]) == 0 || (v368 = v367, v369 = objc_msgSend(v367, "sortOrder"), v368, v369 != &dword_4 + 1))
        {
          v373 = v438 ^ 1;
          if (v434 != &dword_0 + 3 || !v100)
          {
            goto LABEL_234;
          }

          v374 = HIBYTE(v100) & 0xF;
          if ((v100 & 0x2000000000000000) == 0)
          {
            v374 = v96 & 0xFFFFFFFFFFFFLL;
          }

          if (v374)
          {

            v375 = 0;
            v376 = 0xE000000000000000;
          }

          else
          {
LABEL_234:
            v375 = v96;
            v376 = v100;
            v96 = v320;
            v100 = v103;
          }

          sub_20410(&unk_353120, &unk_2D0B50);
          v377 = swift_allocObject();
          v378 = v377;
          *(v377 + 16) = xmmword_2D5FC0;
          *(v377 + 32) = 0x656C746974;
          if (v100)
          {
            v379 = v96;
          }

          else
          {
            v379 = 0;
          }

          v380 = 0xE000000000000000;
          if (v100)
          {
            v381 = v100;
          }

          else
          {
            v381 = 0xE000000000000000;
          }

          *(v377 + 40) = 0xE500000000000000;
          *(v377 + 48) = v379;
          *(v377 + 56) = v381;
          *(v377 + 72) = &type metadata for String;
          *(v377 + 80) = 0x747369747261;
          if (v376)
          {
            v382 = v375;
          }

          else
          {
            v382 = 0;
          }

          if (v376)
          {
            v380 = v376;
          }

          *(v377 + 88) = 0xE600000000000000;
          *(v377 + 96) = v382;
          *(v377 + 104) = v380;
          *(v377 + 120) = &type metadata for String;
          *(v377 + 128) = 0x61526576694C7369;
          *(v377 + 136) = 0xEB000000006F6964;
          *(v377 + 144) = v373;
          *(v377 + 168) = &type metadata for Bool;
          *(v377 + 176) = 0xD00000000000001BLL;
          *(v377 + 184) = 0x80000000002DE780;

          v383 = v441;
          *(v378 + 192) = [v441 playbackQueueLocation] == &dword_0 + 2;
          *(v378 + 216) = &type metadata for Bool;
          *(v378 + 224) = 0xD00000000000001CLL;
          *(v378 + 232) = 0x80000000002DE7A0;
          *(v378 + 240) = [v383 playbackQueueLocation] == &dword_0 + 3;
          *(v378 + 264) = &type metadata for Bool;
          *(v378 + 272) = 0x667568536E4F7369;
          *(v378 + 280) = 0xEB00000000656C66;
          v384 = [v383 backingStore];
          objc_opt_self();
          v385 = swift_dynamicCastObjCClass();
          if (v385)
          {
            v386 = [v385 playShuffled];

            v387 = v386 & v438;
          }

          else
          {

            v387 = 0;
          }

          *(v378 + 288) = v387;
          *(v378 + 312) = &type metadata for Bool;
          *(v378 + 320) = 0x657065526E4F7369;
          *(v378 + 328) = 0xEA00000000007461;
          v391 = [v441 playbackRepeatMode] == &dword_0 + 2 || objc_msgSend(v441, "playbackRepeatMode") == &dword_0 + 3;
          *(v378 + 336) = v391;
          *(v378 + 360) = &type metadata for Bool;
          strcpy((v378 + 368), "isAppSpecified");
          *(v378 + 383) = -18;
          if (sub_2CC0D0())
          {
            sub_2CC0B0();
          }

          else
          {
            (*(v435 + 56))(v403, 1, 1, v428);
          }

          v392 = v442;
          v393 = v441;
          v394 = v403;
          v395 = sub_197DC8(v442, v441, (v439 + 128), v403);
          sub_30B8(v394, &qword_34DD30, &unk_2D1BC0);
          *(v378 + 384) = v395 & 1;
          *(v378 + 408) = &type metadata for Bool;
          strcpy((v378 + 416), "isPersonalized");
          *(v378 + 431) = -18;
          v396 = sub_1D16A0();
          *(v378 + 456) = &type metadata for Bool;
          *(v378 + 432) = v396 & 1;
          v397 = sub_112C0(v378);
          swift_setDeallocating();
          sub_20410(&qword_34CBA0, &unk_2D0FE0);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          *(&v450 + 1) = v432;
          *&v451 = &off_3381B8;
          *&v449 = v393;
          v398 = v393;
          sub_239644(v397, v392, &v449, sub_1B7EF8, v430);

          sub_30B8(&v449, &qword_34C6C0, &qword_2D0710);
          goto LABEL_53;
        }

        goto LABEL_225;
      }
    }

    v444(v405, v443, v447);
    v342 = sub_2CDFE0();
    v343 = sub_2CE660();
    if (os_log_type_enabled(v342, v343))
    {
      v344 = swift_slowAlloc();
      *v344 = 0;
      _os_log_impl(&dword_0, v342, v343, "PlayMediaDialogProvider going to makeBestWorst for non-empty best or worst", v344, 2u);
    }

    v321(v405, v447);
    sub_1A32FC(v442, v441, sub_1B7EF8, v430);
    goto LABEL_163;
  }

  v89 = v93;
  v103 = v447;
LABEL_24:
  *&v448[0] = v100;
  v110 = sub_2CE2A0();
  v112 = sub_3F08(v110, v111, &v449);

  *(v81 + 14) = v112;
  _os_log_impl(&dword_0, v86, v87, "PlayMediaDialogProvider: makePlayDialog with intent internal signals: %s and first media item signals: %s", v81, 0x16u);
  swift_arrayDestroy();

  v95 = *(v25 + 8);
  v95(v79, v103);
  v81 = v430;
LABEL_25:
  v113 = v442;
  v114 = sub_2CCF90();
  if (!v115)
  {
    v123 = v432;
    v124 = v447;
    v444(v432, v443, v447);
    v125 = sub_2CDFE0();
    v126 = sub_2CE680();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      *v127 = 0;
      _os_log_impl(&dword_0, v125, v126, "Missing app bundle identifier", v127, 2u);
    }

    v95(v123, v124);
    sub_10C40();
    v128 = swift_allocError();
    *v129 = 0xD00000000000001DLL;
    v129[1] = 0x80000000002DD6F0;
    v130 = v438;
    *v438 = v128;
    swift_storeEnumTagMultiPayload();
    sub_11E134(v130, v436, v439, v440, v441);
    v131 = &unk_3519A0;
    v132 = &qword_2D0980;
    v133 = v130;
    goto LABEL_52;
  }

  v116 = v114;
  v117 = v115;
  v118 = sub_2CCF90();
  v120 = v119;
  v121 = sub_2CBE10();
  if (v120)
  {
    if (v118 == v121 && v120 == v122)
    {

LABEL_37:

      goto LABEL_38;
    }

    v134 = sub_2CEEA0();

    if (v134)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  if (v116 == sub_2CBE30() && v117 == v135)
  {
    goto LABEL_37;
  }

  v142 = sub_2CEEA0();

  if ((v142 & 1) == 0)
  {
    v137 = v435;
    v138 = v434;
    if (v433)
    {
      goto LABEL_42;
    }

LABEL_47:
    v139 = 0;
    goto LABEL_48;
  }

LABEL_38:
  v136 = sub_2CE830();
  if ((v433 & 1) == 0)
  {
    v137 = v435;
    v138 = v434;
    if (v136)
    {
      goto LABEL_42;
    }

    goto LABEL_47;
  }

  v137 = v435;
  v138 = v434;
  if (v136)
  {
    v139 = 1;
LABEL_48:

    v143 = v431;
    v444(v431, v443, v447);
    v144 = sub_2CDFE0();
    v145 = sub_2CE660();
    if (os_log_type_enabled(v144, v145))
    {
      v146 = swift_slowAlloc();
      *v146 = 67109376;
      *(v146 + 4) = v139;
      *(v146 + 8) = 1024;
      *(v146 + 10) = v139;
      _os_log_impl(&dword_0, v144, v145, "PlayMediaDialogProvider suppressing dialog: interstitial?:%{BOOL}d renderInHandle: %{BOOL}d", v146, 0xEu);
    }

    v95(v143, v447);
LABEL_51:
    v147 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) + 48);
    v148 = v438;
    *(v148 + v147) = sub_196098();
    swift_storeEnumTagMultiPayload();
    sub_11E134(v148, v436, v439, v440, v441);
    v131 = &unk_3519A0;
    v132 = &qword_2D0980;
    v133 = v148;
LABEL_52:
    sub_30B8(v133, v131, v132);
LABEL_53:

    return result;
  }

LABEL_42:
  *&v449 = v85;
  v140 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v434 = sub_2CBFA0();
  v433 = sub_2CC0E0();
  if (sub_2CC0D0())
  {
    sub_2CC0B0();

    v141 = v428;
    if ((*(v137 + 48))(v138, 1, v428))
    {
      sub_30B8(v138, &qword_34DD30, &unk_2D1BC0);
    }

    else
    {
      v150 = *(v137 + 16);
      v432 = v117;
      v151 = v85;
      v152 = v89;
      v153 = v113;
      v154 = v95;
      v155 = v81;
      v156 = v423;
      v150(v423, v138, v141);
      sub_30B8(v138, &qword_34DD30, &unk_2D1BC0);
      v157 = v141;
      v158 = sub_2CBF50();
      v159 = v156;
      v81 = v155;
      v95 = v154;
      v113 = v153;
      v89 = v152;
      v85 = v151;
      (*(v137 + 8))(v159, v157);
      if (v158)
      {

        v160 = v418;
        v161 = v447;
        v444(v418, v443, v447);
        v162 = sub_2CDFE0();
        v163 = sub_2CE690();
        if (os_log_type_enabled(v162, v163))
        {
          v164 = swift_slowAlloc();
          *v164 = 0;
          _os_log_impl(&dword_0, v162, v163, "PlayMediaDialogProvider#makePlayDialog first successful prediction special-case dialog", v164, 2u);
        }

        v95(v160, v161);
        sub_1A0698(v113, v85, sub_1B7EF8, v81);
        goto LABEL_53;
      }
    }
  }

  sub_35E0((v89 + 128), *(v89 + 152));
  v165 = sub_2CC430();
  v432 = v140;
  if ((v165 & 1) == 0 || !sub_2CE810())
  {
    v176 = v429;
    v444(v429, v443, v447);
    v177 = sub_2CDFE0();
    v178 = sub_2CE690();
    if (os_log_type_enabled(v177, v178))
    {
      v179 = swift_slowAlloc();
      *v179 = 0;
      v180 = "PlayMediaDialogProvider#makePlayDialog pym not enabled";
      goto LABEL_71;
    }

LABEL_73:
    v185 = v447;

    v95(v176, v185);
    goto LABEL_74;
  }

  v166 = v447;
  v444(v427, v443, v447);
  v167 = sub_2CDFE0();
  v168 = sub_2CE690();
  if (os_log_type_enabled(v167, v168))
  {
    v169 = swift_slowAlloc();
    *v169 = 0;
    _os_log_impl(&dword_0, v167, v168, "PlayMediaDialogProvider#makePlayDialog pym enabled", v169, 2u);
    v166 = v447;
  }

  v95(v427, v166);
  if ((v434 - 1) >= 2)
  {
    v176 = v417;
    v444(v417, v443, v166);
    v177 = sub_2CDFE0();
    v207 = sub_2CE690();
    if (!os_log_type_enabled(v177, v207))
    {
      goto LABEL_73;
    }

    v208 = swift_slowAlloc();
    *v208 = 134217984;
    *(v208 + 4) = v434;
    v180 = "PlayMediaDialogProvider#makePlayDialog pym first item type: %ld not supported for speak suppression";
    v181 = v207;
    v182 = v177;
    v183 = v208;
    v184 = 12;
    goto LABEL_72;
  }

  v444(v422, v443, v166);
  v170 = sub_2CDFE0();
  v171 = sub_2CE690();
  if (os_log_type_enabled(v170, v171))
  {
    v172 = swift_slowAlloc();
    *v172 = 0;
    _os_log_impl(&dword_0, v170, v171, "PlayMediaDialogProvider#makePlayDialog pym found song/album resolved item", v172, 2u);
    v166 = v447;
  }

  v95(v422, v166);
  v173 = [v85 mediaSearch];
  if (v173)
  {
    v174 = v173;
    v175 = [v173 sortOrder];

    if (v175)
    {
      v176 = v416;
      v444(v416, v443, v166);
      v177 = sub_2CDFE0();
      v178 = sub_2CE690();
      if (os_log_type_enabled(v177, v178))
      {
        v179 = swift_slowAlloc();
        *v179 = 0;
        v180 = "PlayMediaDialogProvider#makePlayDialog pym found sort order present -- not supported for speak suppression";
LABEL_71:
        v181 = v178;
        v182 = v177;
        v183 = v179;
        v184 = 2;
LABEL_72:
        _os_log_impl(&dword_0, v182, v181, v180, v183, v184);

        goto LABEL_73;
      }

      goto LABEL_73;
    }
  }

  v444(v419, v443, v166);
  v209 = sub_2CDFE0();
  v210 = sub_2CE670();
  if (os_log_type_enabled(v209, v210))
  {
    v211 = swift_slowAlloc();
    *v211 = 0;
    _os_log_impl(&dword_0, v209, v210, "PlayMediaDialogProvider#makePlayDialog pym sort order unknown", v211, 2u);
    v166 = v447;
  }

  v95(v419, v166);
  sub_2CBC60();
  sub_35E0(&v449, *(&v450 + 1));
  v212 = sub_2CBE50();
  sub_306C(&v449);
  if ((v212 & 1) == 0)
  {
    v213 = v95;

    v214 = v414;
    v215 = v447;
    v444(v414, v443, v447);
    v216 = sub_2CDFE0();
    v217 = sub_2CE690();
    if (os_log_type_enabled(v216, v217))
    {
      v218 = swift_slowAlloc();
      *v218 = 0;
      _os_log_impl(&dword_0, v216, v217, "PlayMediaDialogProvider#makePlayDialog suppressing dialog pym short-circuiting dialog evaluation in display-driven mode", v218, 2u);
    }

    v213(v214, v215);
    goto LABEL_51;
  }

LABEL_74:
  sub_20410(&qword_353C90, &unk_2D6080);
  v186 = swift_allocObject();
  v441 = xmmword_2D0090;
  *(v186 + 16) = xmmword_2D0090;
  sub_EEAC(v89 + 168, v186 + 40);
  *(v186 + 32) = 4;
  sub_1B7DE4(v186 + 32, v448);
  if (sub_1A0B34())
  {
    v430 = v81;

    v449 = v448[0];
    v450 = v448[1];
    v451 = v448[2];
    v187 = *(v89 + 120);
    v188 = v424;
    v189 = v447;
    v444(v424, v443, v447);
    v190 = sub_2CDFE0();
    v191 = sub_2CE690();
    if (os_log_type_enabled(v190, v191))
    {
      v192 = swift_slowAlloc();
      v193 = swift_slowAlloc();
      *&v448[0] = v193;
      *v192 = 136315138;
      *(v192 + 4) = sub_3F08(0xD00000000000001ALL, 0x80000000002DA500, v448);
      _os_log_impl(&dword_0, v190, v191, "DialogMemoryUseCase#%s#execute Executing...", v192, 0xCu);
      sub_306C(v193);
    }

    v95(v188, v189);
    sub_280EB4(v113, v85, v187, sub_1B7EF8, v430);
    sub_35E0(&v449 + 1, v451);
    sub_281390();
    sub_1B7E40(&v449);
    goto LABEL_53;
  }

  sub_1B7E40(v448);
  swift_setDeallocating();
  sub_1B7E40(v186 + 32);
  swift_deallocClassInstance();
  if (sub_1D0718(v113))
  {

    v194 = [v85 privatePlayMediaIntentData];
    if (v194)
    {
      v195 = v194;
      v196 = [v194 pegasusMetaData];

      v197 = v421;
      if (v196)
      {
        v198 = sub_2C8DC0();
        v200 = v199;
      }

      else
      {
        v198 = 0;
        v200 = 0xF000000000000000;
      }
    }

    else
    {
      v198 = 0;
      v200 = 0xF000000000000000;
      v197 = v421;
    }

    v230 = v426;
    sub_2C9210();
    sub_5267C(v198, v200);
    sub_F3F4(v230, v197, &qword_353C88, &unk_2D6070);
    v231 = sub_2C9240();
    v232 = *(v231 - 8);
    if ((*(v232 + 48))(v197, 1, v231) == 1)
    {
      sub_30B8(v197, &qword_353C88, &unk_2D6070);
      v233 = 0;
      v234 = 0;
    }

    else
    {
      v235 = sub_2C9220();
      v236 = v197;
      v233 = v235;
      v234 = v237;
      (*(v232 + 8))(v236, v231);
    }

    v444(v425, v443, v447);

    v238 = sub_2CDFE0();
    v239 = sub_2CE660();

    if (os_log_type_enabled(v238, v239))
    {
      v440 = v95;
      *&v441 = v85;
      v240 = swift_slowAlloc();
      v241 = swift_slowAlloc();
      *v240 = 138412290;
      if (v234)
      {
        sub_10C40();
        swift_allocError();
        *v242 = v233;
        v242[1] = v234;
        v243 = _swift_stdlib_bridgeErrorToNSError();
        v244 = v243;
      }

      else
      {
        v243 = 0;
        v244 = 0;
      }

      v245 = v447;
      *(v240 + 4) = v243;
      *v241 = v244;
      _os_log_impl(&dword_0, v238, v239, "PlayMediaDialogProvider going to makeNlsContainer for %@", v240, 0xCu);
      sub_30B8(v241, &unk_34FC00, &unk_2D0150);

      v85 = v441;
      v95 = v440;
    }

    else
    {

      v245 = v447;
    }

    v95(v425, v245);
    sub_1A0DE4(v113, v85, sub_1B7EF8, v81);
    v131 = &qword_353C88;
    v132 = &unk_2D6070;
    v133 = v426;
    goto LABEL_52;
  }

  v201 = sub_1D2364(&off_32FF60);
  sub_F1954(&unk_32FF80);
  if ((v201 & 1) != 0 || _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v85, &off_32FF90))
  {

    v202 = v420;
    v203 = v447;
    v444(v420, v443, v447);
    v204 = sub_2CDFE0();
    v205 = sub_2CE660();
    if (os_log_type_enabled(v204, v205))
    {
      v206 = swift_slowAlloc();
      *v206 = 0;
      _os_log_impl(&dword_0, v204, v205, "PlayMediaDialogProvider going to isPodcastPromotion for storytelling", v206, 2u);
    }

    v95(v202, v203);
    sub_1A0F78(v113, v85, sub_1B7EF8, v81);
    goto LABEL_53;
  }

  sub_334A0(0, &qword_353110, NSNumber_ptr);
  v219 = sub_2CE720();
  isa = [v219 isAppCorrection];

  if (!isa)
  {
    isa = sub_2CEB10(0).super.super.isa;
  }

  v221 = sub_2CEB10(0).super.super.isa;
  v222 = sub_2CEB30();

  if ((v222 & 1) == 0)
  {

    v246 = v415;
    v247 = v447;
    v444(v415, v443, v447);
    v248 = sub_2CDFE0();
    v249 = sub_2CE660();
    v250 = os_log_type_enabled(v248, v249);
    v251 = v432;
    if (v250)
    {
      v252 = swift_slowAlloc();
      *v252 = 0;
      _os_log_impl(&dword_0, v248, v249, "PlayMediaDialogProvider going to makePlayWithAppCorrection for app correction", v252, 2u);
      v246 = v415;
    }

    v95(v246, v247);
    v253 = sub_112C0(_swiftEmptyArrayStorage);
    *(&v450 + 1) = v251;
    *&v451 = &off_3381B8;
    *&v449 = v85;
    v254 = v85;
    sub_240C20(v253, v113, &v449, sub_1B7EF8, v81);
    goto LABEL_117;
  }

  v223 = sub_1D0CF0();
  v224 = v432;
  if (v223)
  {

    v225 = v413;
    v226 = v447;
    v444(v413, v443, v447);
    v227 = sub_2CDFE0();
    v228 = sub_2CE660();
    if (os_log_type_enabled(v227, v228))
    {
      v229 = swift_slowAlloc();
      *v229 = 0;
      _os_log_impl(&dword_0, v227, v228, "PlayMediaDialogProvider going to makeWholeLibrary when playback item identifier is to play whole library", v229, 2u);
    }

    v95(v225, v226);
    sub_1A1C48(v113, v85, sub_1B7EF8, v81);
    goto LABEL_53;
  }

  v440 = v95;
  v439 = v89;
  v101 = sub_1D1060();
  v103 = v255;
  v96 = sub_1D119C();
  v100 = v256;
  v257 = sub_2CE8E0() && sub_2CE840();
  if (!(v103 | v100))
  {
    v258 = [v85 mediaSearch];
    if (v258)
    {
      v259 = v258;
      v260 = v85;
      v261 = [v258 reference];

      v262 = v261 == &dword_0 + 1;
      v85 = v260;
      v224 = v432;
      v263 = v262;
      if ((v263 | v257))
      {
        goto LABEL_127;
      }
    }

    else if (v257)
    {
      goto LABEL_127;
    }

    v292 = v411;
    v293 = v447;
    v444(v411, v443, v447);
    v294 = sub_2CDFE0();
    v295 = sub_2CE660();
    if (os_log_type_enabled(v294, v295))
    {
      v296 = swift_slowAlloc();
      *v296 = 0;
      _os_log_impl(&dword_0, v294, v295, "PlayMediaDialogProvider going to makePlayDialogEmptyContentTitle for empty title and artist", v296, 2u);
    }

    v440(v292, v293);
    v297 = [v85 playbackQueueLocation] == &dword_0 + 2;
    v298 = [v85 playbackQueueLocation] == &dword_0 + 3;
    sub_20410(&unk_353120, &unk_2D0B50);
    v299 = swift_allocObject();
    *(v299 + 32) = 0xD00000000000001BLL;
    *(v299 + 40) = 0x80000000002DE780;
    *(v299 + 16) = xmmword_2D0E40;
    *(v299 + 48) = v297;
    *(v299 + 72) = &type metadata for Bool;
    *(v299 + 80) = 0xD00000000000001CLL;
    *(v299 + 88) = 0x80000000002DE7A0;
    *(v299 + 120) = &type metadata for Bool;
    *(v299 + 96) = v298;
    v300 = sub_112C0(v299);
    swift_setDeallocating();
    sub_20410(&qword_34CBA0, &unk_2D0FE0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(&v450 + 1) = v224;
    *&v451 = &off_3381B8;
    *&v449 = v85;
    v301 = v85;
    sub_23A7A4(v300, v442, &v449, sub_1B7EF8, v81);

    goto LABEL_117;
  }

LABEL_127:
  sub_1D04A0();
  if (v264)
  {

    v265 = v412;
    v266 = v447;
    v444(v412, v443, v447);
    v267 = sub_2CDFE0();
    v268 = sub_2CE660();
    if (os_log_type_enabled(v267, v268))
    {
      v269 = swift_slowAlloc();
      *v269 = 0;
      _os_log_impl(&dword_0, v267, v268, "PlayMediaDialogProvider going to makeNewsPodcast for news request", v269, 2u);
      v266 = v447;
    }

    v440(v265, v266);
    v270 = sub_1D05E4();
    v272 = v271;
    sub_20410(&unk_353120, &unk_2D0B50);
    v273 = swift_allocObject();
    *(v273 + 16) = v441;
    *(v273 + 32) = 0xD000000000000016;
    v274 = v273 + 32;
    *(v273 + 72) = &type metadata for String;
    if (v272)
    {
      v275 = v270;
    }

    else
    {
      v275 = 0;
    }

    v276 = 0xE000000000000000;
    if (v272)
    {
      v276 = v272;
    }

    *(v273 + 40) = 0x80000000002DE7C0;
    *(v273 + 48) = v275;
    *(v273 + 56) = v276;
    v277 = sub_112C0(v273);
    swift_setDeallocating();
    sub_30B8(v274, &qword_34CBA0, &unk_2D0FE0);
    swift_deallocClassInstance();
    *(&v450 + 1) = v432;
    *&v451 = &off_3381B8;
    *&v449 = v85;
    v278 = v85;
    sub_23C944(v277, v442, &v449, sub_1B7EF8, v81);

LABEL_117:

    v131 = &qword_34C6C0;
    v132 = &qword_2D0710;
    v133 = &v449;
    goto LABEL_52;
  }

  if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v85, &off_330290) && v434 == &dword_4 + 2)
  {

    v279 = v410;
    v280 = v447;
    v444(v410, v443, v447);
    v281 = sub_2CDFE0();
    v282 = sub_2CE660();
    if (os_log_type_enabled(v281, v282))
    {
      v283 = swift_slowAlloc();
      *v283 = 0;
      _os_log_impl(&dword_0, v281, v282, "PlayMediaDialogProvider going to makeNewsPodcast for news request", v283, 2u);
      v280 = v447;
    }

    v440(v279, v280);
    sub_1A1FBC(v442, v85, sub_1B7EF8, v81);
LABEL_163:

    return result;
  }

  v284 = &qword_3302E0;
  v285 = 4;
  while (v285)
  {
    v286 = *v284++;
    --v285;
    if (v286 == v434)
    {

      v287 = v409;
      v288 = v447;
      v444(v409, v443, v447);
      v289 = sub_2CDFE0();
      v290 = sub_2CE660();
      if (os_log_type_enabled(v289, v290))
      {
        v291 = swift_slowAlloc();
        *v291 = 0;
        _os_log_impl(&dword_0, v289, v290, "PlayMediaDialogProvider going to makePodcast", v291, 2u);
        v288 = v447;
      }

      v440(v287, v288);
      sub_1A2614(v442, v85, sub_1B7EF8, v81);
      goto LABEL_163;
    }
  }

  *&v441 = v85;
  v302 = sub_1D2364(&off_330300);
  v85 = v441;
  sub_F1954(&unk_330320);
  if (v302)
  {
    v303 = [v85 mediaSearch];
    if (!v303 || (v304 = v303, v305 = [v303 sortOrder], v304, v262 = v305 == &dword_0 + 1, v85 = v441, !v262))
    {

      v311 = v408;
      v312 = v447;
      v444(v408, v443, v447);
      v313 = sub_2CDFE0();
      v314 = sub_2CE660();
      if (os_log_type_enabled(v313, v314))
      {
        v315 = swift_slowAlloc();
        *v315 = 0;
        _os_log_impl(&dword_0, v313, v314, "PlayMediaDialogProvider going to makePlaySomething for play some music request", v315, 2u);
        v312 = v447;
      }

      v440(v311, v312);
      sub_1A1C48(v442, v85, sub_1B7EF8, v81);
      goto LABEL_163;
    }
  }

  if (sub_1D1380())
  {

    v306 = v407;
    v307 = v447;
    v444(v407, v443, v447);
    v308 = sub_2CDFE0();
    v309 = sub_2CE660();
    if (os_log_type_enabled(v308, v309))
    {
      v310 = swift_slowAlloc();
      *v310 = 0;
      _os_log_impl(&dword_0, v308, v309, "PlayMediaDialogProvider going to makePlaySomethingNew for play some new music request", v310, 2u);
      v307 = v447;
    }

    v440(v306, v307);
    sub_1A29E8(v442, v85, sub_1B7EF8, v81);
    goto LABEL_163;
  }

  if (!sub_2CE890() && !v257)
  {
    goto LABEL_170;
  }

  v316 = v406;
  v444(v406, v443, v447);
  v317 = sub_2CDFE0();
  v318 = sub_2CE660();
  if (os_log_type_enabled(v317, v318))
  {
    v319 = swift_slowAlloc();
    *v319 = 0;
    _os_log_impl(&dword_0, v317, v318, "PlayMediaDialogProvider going to makeCreateRadio", v319, 2u);
  }

  v440(v316, v447);
  sub_1A2E08(v442, v101, v103, v85, sub_1B7EF8, v81);

  return result;
}

double sub_1A8030(int a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, void (*a8)(__int128 *), uint64_t a9, void (*a10)(char *, uint64_t))
{
  v415 = a4;
  *&v425 = a3;
  v430 = a2;
  LODWORD(v413) = a1;
  v14 = sub_20410(&qword_353C88, &unk_2D6070);
  v15 = __chkstk_darwin(v14 - 8);
  v402 = &v381 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v407 = &v381 - v17;
  v409 = sub_2CBF80();
  v414 = *(v409 - 8);
  __chkstk_darwin(v409);
  v403 = &v381 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  v20 = __chkstk_darwin(v19 - 8);
  v383 = &v381 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v408 = &v381 - v22;
  v417 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v417);
  v418 = (&v381 - v23);
  v24 = sub_2CE000();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v410 = &v381 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v405 = &v381 - v29;
  v30 = __chkstk_darwin(v28);
  v391 = &v381 - v31;
  v32 = __chkstk_darwin(v30);
  v388 = &v381 - v33;
  v34 = __chkstk_darwin(v32);
  v381 = &v381 - v35;
  v36 = __chkstk_darwin(v34);
  v382 = &v381 - v37;
  v38 = __chkstk_darwin(v36);
  v384 = &v381 - v39;
  v40 = __chkstk_darwin(v38);
  v385 = &v381 - v41;
  v42 = __chkstk_darwin(v40);
  v386 = &v381 - v43;
  v44 = __chkstk_darwin(v42);
  v387 = &v381 - v45;
  v46 = __chkstk_darwin(v44);
  v389 = &v381 - v47;
  v48 = __chkstk_darwin(v46);
  v390 = &v381 - v49;
  v50 = __chkstk_darwin(v48);
  v392 = &v381 - v51;
  v52 = __chkstk_darwin(v50);
  v393 = &v381 - v53;
  v54 = __chkstk_darwin(v52);
  v395 = &v381 - v55;
  v56 = __chkstk_darwin(v54);
  v400 = &v381 - v57;
  v58 = __chkstk_darwin(v56);
  v406 = &v381 - v59;
  v60 = __chkstk_darwin(v58);
  v394 = &v381 - v61;
  v62 = __chkstk_darwin(v60);
  v396 = &v381 - v63;
  v64 = __chkstk_darwin(v62);
  v399 = &v381 - v65;
  v66 = __chkstk_darwin(v64);
  v401 = &v381 - v67;
  v68 = __chkstk_darwin(v66);
  v397 = &v381 - v69;
  v70 = __chkstk_darwin(v68);
  v404 = &v381 - v71;
  v72 = __chkstk_darwin(v70);
  v398 = &v381 - v73;
  v74 = __chkstk_darwin(v72);
  v411 = &v381 - v75;
  v76 = __chkstk_darwin(v74);
  v412 = &v381 - v77;
  __chkstk_darwin(v76);
  v79 = &v381 - v78;
  v80 = swift_allocObject();
  v80[2] = a5;
  v80[3] = a6;
  v80[4] = a7;
  v80[5] = a8;
  v423 = a8;
  v80[6] = a9;
  v80[7] = a10;
  v81 = v80;
  v82 = qword_34BF58;
  v419 = a5;

  v420 = a6;

  v416 = a7;
  v421 = a9;

  v422 = a10;

  if (v82 != -1)
  {
    swift_once();
  }

  v83 = sub_3ED0(v24, static Logger.default);
  swift_beginAccess();
  v84 = *(v25 + 16);
  v426 = v83;
  v427 = v84;
  v428 = v25 + 16;
  v84(v79, v83, v24);
  v85 = v425;
  v86 = sub_2CDFE0();
  v87 = sub_2CE670();

  v88 = os_log_type_enabled(v86, v87);
  v424 = v81;
  v429 = v25;
  if (!v88)
  {

    v96 = *(v25 + 8);
    v89 = v24;
    v96(v79, v24);
    goto LABEL_22;
  }

  v89 = v24;
  v90 = v85;
  v91 = swift_slowAlloc();
  *&v432 = swift_slowAlloc();
  *v91 = 136315394;
  *&v425 = v90;
  v92 = [v90 privatePlayMediaIntentData];
  if (v92 && (v93 = v92, v94 = [v92 internalSignals], v93, v94))
  {
    v95 = sub_2CE410();
  }

  else
  {
    v95 = 0;
  }

  *&v431[0] = v95;
  sub_20410(&qword_353C98, &unk_2D6A00);
  v97 = sub_2CE2A0();
  v99 = sub_3F08(v97, v98, &v432);

  *(v91 + 4) = v99;
  *(v91 + 12) = 2080;
  v100 = [v425 mediaItems];
  if (!v100)
  {
    goto LABEL_20;
  }

  v101 = v100;
  sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v102 = sub_2CE410();

  if (!(v102 >> 62))
  {
    if (*(&dword_10 + (v102 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_12;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (!sub_2CEDA0())
  {
    goto LABEL_19;
  }

LABEL_12:
  if ((v102 & 0xC000000000000001) == 0)
  {
    if (*(&dword_10 + (v102 & 0xFFFFFFFFFFFFFF8)))
    {
      v103 = *(v102 + 32);
      goto LABEL_15;
    }

    __break(1u);
LABEL_163:
    v302 = v87;
    v303 = v422;

    v304 = [v425 mediaSearch];
    if (v304)
    {
      v305 = v304;
      v306 = [v304 sortOrder];

      if (v306 == &dword_8)
      {
        v307 = [v425 mediaSearch];
        if (v307)
        {
          v308 = v307;
          v309 = [v307 mediaName];

          if (v309)
          {

            v310 = [v425 mediaSearch];
            if (!v310 || (v311 = v310, v312 = [v310 reference], v311, v312 != &dword_0 + 1))
            {

              v427(v381, v426, v423);
              v370 = sub_2CDFE0();
              v371 = sub_2CE660();
              if (os_log_type_enabled(v370, v371))
              {
                v372 = swift_slowAlloc();
                *v372 = 0;
                _os_log_impl(&dword_0, v370, v371, "PlayMediaDialogProvider going to makePlayMusicLikeArtist", v372, 2u);
              }

              v303(v381, v423);
              sub_1A46BC(v430, v425, sub_1B7F04, v424);
              goto LABEL_156;
            }
          }
        }
      }
    }

    v313 = &qword_330570;
    v314 = 2;
    do
    {
      v315 = v314;
      if (v314-- == 0)
      {
        break;
      }

      v317 = *v313++;
    }

    while (v317 != v413);
    v318 = [v425 mediaSearch];
    if (v318 && (v319 = v318, v320 = [v318 sortOrder], v319, v320 == &dword_0 + 3))
    {
      if (!v315)
      {
        goto LABEL_183;
      }
    }

    else
    {
      v321 = [v425 mediaSearch];
      if (!v321 || (v322 = v321, v323 = [v321 sortOrder], v322, !v315) || v323 != &dword_4)
      {
LABEL_183:
        v327 = sub_1D14A0();
        if (v328)
        {
          v329 = v327;
          v330 = v328;

          v331 = HIBYTE(v330) & 0xF;
          if ((v330 & 0x2000000000000000) == 0)
          {
            v331 = v329 & 0xFFFFFFFFFFFFLL;
          }

          v332 = v331 == 0;
        }

        else
        {
          v332 = 1;
        }

        LODWORD(v421) = v332;
        v333 = sub_1D15EC();
        if (v334)
        {
          v335 = v333 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v335 = 0;
        }

        if (v334)
        {
          v336 = v334;
        }

        else
        {
          v336 = 0xE000000000000000;
        }

        if ((v336 & 0x2000000000000000) != 0)
        {
          v337 = HIBYTE(v336) & 0xF;
        }

        else
        {
          v337 = v335;
        }

        if (v337)
        {
          v338 = sub_2CCF90();
          v340 = v339;
          v341 = sub_2CBE10();
          if (!v340)
          {

            goto LABEL_209;
          }

          if (v338 == v341 && v340 == v342)
          {
          }

          else
          {
            v343 = sub_2CEEA0();

            if ((v343 & 1) == 0)
            {
              goto LABEL_209;
            }
          }

          if (!v421 || _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v425, &off_330580))
          {

            v427(v382, v426, v423);
            v344 = sub_2CDFE0();
            v345 = sub_2CE660();
            if (os_log_type_enabled(v344, v345))
            {
              v346 = swift_slowAlloc();
              *v346 = 0;
              _os_log_impl(&dword_0, v344, v345, "PlayMediaDialogProvider going to nonSubscriberRadioFallback for genre query with broadcast radio result", v346, 2u);
            }

            v303(v382, v423);
            sub_1A4044(v430, v425, sub_1B7F04, v424);
            goto LABEL_156;
          }
        }

LABEL_209:
        v347 = sub_2CE710();
        v348 = v421;
        if (v347 != 5)
        {
          v348 = (sub_2CE710() == 19) & v421;
        }

        if (sub_2CE710() == 16)
        {
          if ((v348 | v421))
          {
            goto LABEL_218;
          }
        }

        else if (v348)
        {
LABEL_218:

          v427(v384, v426, v423);
          v352 = sub_2CDFE0();
          v353 = sub_2CE660();
          if (os_log_type_enabled(v352, v353))
          {
            v354 = swift_slowAlloc();
            *v354 = 0;
            _os_log_impl(&dword_0, v352, v353, "PlayMediaDialogProvider going to makeEditorialPlaylist for playlist/radio", v354, 2u);
          }

          v303(v384, v423);
          sub_1A39E0(v430, v425, sub_1B7F04, v424);
          goto LABEL_156;
        }

        if (!v337 || (v349 = [v425 mediaSearch]) == 0 || (v350 = v349, v351 = objc_msgSend(v349, "sortOrder"), v350, v351 != &dword_4 + 1))
        {
          v355 = v421 ^ 1;
          if (v413 != 3 || !a5)
          {
            goto LABEL_227;
          }

          v356 = HIBYTE(a5) & 0xF;
          if ((a5 & 0x2000000000000000) == 0)
          {
            v356 = v91 & 0xFFFFFFFFFFFFLL;
          }

          if (v356)
          {

            v357 = 0;
            v358 = 0xE000000000000000;
          }

          else
          {
LABEL_227:
            v357 = v91;
            v358 = a5;
            v91 = v302;
            a5 = v102;
          }

          sub_20410(&unk_353120, &unk_2D0B50);
          v359 = swift_allocObject();
          v360 = v359;
          *(v359 + 16) = xmmword_2D5FC0;
          *(v359 + 32) = 0x656C746974;
          if (a5)
          {
            v361 = v91;
          }

          else
          {
            v361 = 0;
          }

          v362 = 0xE000000000000000;
          if (a5)
          {
            v363 = a5;
          }

          else
          {
            v363 = 0xE000000000000000;
          }

          *(v359 + 40) = 0xE500000000000000;
          *(v359 + 48) = v361;
          *(v359 + 56) = v363;
          *(v359 + 72) = &type metadata for String;
          *(v359 + 80) = 0x747369747261;
          if (v358)
          {
            v364 = v357;
          }

          else
          {
            v364 = 0;
          }

          if (v358)
          {
            v362 = v358;
          }

          *(v359 + 88) = 0xE600000000000000;
          *(v359 + 96) = v364;
          *(v359 + 104) = v362;
          *(v359 + 120) = &type metadata for String;
          *(v359 + 128) = 0x61526576694C7369;
          *(v359 + 136) = 0xEB000000006F6964;
          *(v359 + 144) = v355;
          *(v359 + 168) = &type metadata for Bool;
          *(v359 + 176) = 0xD00000000000001BLL;
          *(v359 + 184) = 0x80000000002DE780;

          v365 = v425;
          *(v360 + 192) = [v425 playbackQueueLocation] == &dword_0 + 2;
          *(v360 + 216) = &type metadata for Bool;
          *(v360 + 224) = 0xD00000000000001CLL;
          *(v360 + 232) = 0x80000000002DE7A0;
          *(v360 + 240) = [v365 playbackQueueLocation] == &dword_0 + 3;
          *(v360 + 264) = &type metadata for Bool;
          *(v360 + 272) = 0x667568536E4F7369;
          *(v360 + 280) = 0xEB00000000656C66;
          v366 = [v365 backingStore];
          objc_opt_self();
          v367 = swift_dynamicCastObjCClass();
          if (v367)
          {
            v368 = [v367 playShuffled];

            v369 = v368 & v421;
          }

          else
          {

            v369 = 0;
          }

          *(v360 + 288) = v369;
          *(v360 + 312) = &type metadata for Bool;
          *(v360 + 320) = 0x657065526E4F7369;
          *(v360 + 328) = 0xEA00000000007461;
          v373 = [v425 playbackRepeatMode] == &dword_0 + 2 || objc_msgSend(v425, "playbackRepeatMode") == &dword_0 + 3;
          *(v360 + 336) = v373;
          *(v360 + 360) = &type metadata for Bool;
          strcpy((v360 + 368), "isAppSpecified");
          *(v360 + 383) = -18;
          if (sub_2CC0D0())
          {
            sub_2CC0B0();
          }

          else
          {
            (*(v414 + 56))(v383, 1, 1, v409);
          }

          v374 = v430;
          v375 = v425;
          v376 = v383;
          v377 = sub_197DC8(v430, v425, (v415 + 128), v383);
          sub_30B8(v376, &qword_34DD30, &unk_2D1BC0);
          *(v360 + 384) = v377 & 1;
          *(v360 + 408) = &type metadata for Bool;
          strcpy((v360 + 416), "isPersonalized");
          *(v360 + 431) = -18;
          v378 = sub_1D16A0();
          *(v360 + 456) = &type metadata for Bool;
          *(v360 + 432) = v378 & 1;
          v379 = sub_112C0(v360);
          swift_setDeallocating();
          sub_20410(&qword_34CBA0, &unk_2D0FE0);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          *(&v433 + 1) = v412;
          *&v434 = &off_3381B8;
          *&v432 = v375;
          v380 = v375;
          sub_239644(v379, v374, &v432, sub_1B7F04, v424);

          goto LABEL_130;
        }

        goto LABEL_218;
      }
    }

    v427(v385, v426, v423);
    v324 = sub_2CDFE0();
    v325 = sub_2CE660();
    if (os_log_type_enabled(v324, v325))
    {
      v326 = swift_slowAlloc();
      *v326 = 0;
      _os_log_impl(&dword_0, v324, v325, "PlayMediaDialogProvider going to makeBestWorst for non-empty best or worst", v326, 2u);
    }

    v303(v385, v423);
    sub_1A32FC(v430, v425, sub_1B7F04, v424);
    goto LABEL_156;
  }

  v103 = sub_2CECD0();
LABEL_15:
  v104 = v103;

  v105 = [v104 privateMediaItemValueData];

  if (v105)
  {
    v106 = [v105 internalSignals];

    if (v106)
    {
      v105 = sub_2CE410();

      goto LABEL_21;
    }

LABEL_20:
    v105 = 0;
  }

LABEL_21:
  *&v431[0] = v105;
  v107 = sub_2CE2A0();
  v109 = sub_3F08(v107, v108, &v432);

  *(v91 + 14) = v109;
  _os_log_impl(&dword_0, v86, v87, "PlayMediaDialogProvider: makePlayDialog with intent internal signals: %s and first media item signals: %s", v91, 0x16u);
  swift_arrayDestroy();

  v96 = *(v429 + 8);
  v96(v79, v24);
  v85 = v425;
LABEL_22:
  v110 = sub_2CCF90();
  if (!v111)
  {
    v119 = v412;
    v427(v412, v426, v89);
    v120 = sub_2CDFE0();
    v121 = sub_2CE680();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      *v122 = 0;
      _os_log_impl(&dword_0, v120, v121, "Missing app bundle identifier", v122, 2u);
    }

    v96(v119, v89);
    sub_10C40();
    v123 = swift_allocError();
    *v124 = 0xD00000000000001DLL;
    v124[1] = 0x80000000002DD6F0;
    v125 = v418;
    *v418 = v123;
    swift_storeEnumTagMultiPayload();
    sub_291AC8(v125, v419, v420, v416, v423, v421, v422);
    v126 = &unk_3519A0;
    v127 = &qword_2D0980;
    v128 = v125;
    goto LABEL_49;
  }

  v112 = v110;
  v113 = v111;
  v114 = sub_2CCF90();
  v116 = v115;
  v117 = sub_2CBE10();
  if (v116)
  {
    if (v114 == v117 && v116 == v118)
    {

LABEL_34:

      goto LABEL_35;
    }

    v129 = sub_2CEEA0();

    if (v129)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  if (v112 == sub_2CBE30() && v113 == v130)
  {
    goto LABEL_34;
  }

  v137 = sub_2CEEA0();

  if ((v137 & 1) == 0)
  {
    v132 = v89;
    v133 = v414;
    if (v413)
    {
      goto LABEL_39;
    }

LABEL_44:
    v134 = 0;
    goto LABEL_45;
  }

LABEL_35:
  v131 = sub_2CE830();
  if ((v413 & 1) == 0)
  {
    v132 = v89;
    v133 = v414;
    if (v131)
    {
      goto LABEL_39;
    }

    goto LABEL_44;
  }

  v132 = v89;
  v133 = v414;
  if (v131)
  {
    v134 = 1;
LABEL_45:

    v138 = v411;
    v427(v411, v426, v132);
    v139 = sub_2CDFE0();
    v140 = sub_2CE660();
    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      *v141 = 67109376;
      *(v141 + 4) = v134;
      *(v141 + 8) = 1024;
      *(v141 + 10) = v134;
      _os_log_impl(&dword_0, v139, v140, "PlayMediaDialogProvider suppressing dialog: interstitial?:%{BOOL}d renderInHandle: %{BOOL}d", v141, 0xEu);
    }

    v96(v138, v132);
LABEL_48:
    v142 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) + 48);
    v143 = v418;
    *(v143 + v142) = sub_196098();
    swift_storeEnumTagMultiPayload();
    sub_291AC8(v143, v419, v420, v416, v423, v421, v422);
    v126 = &unk_3519A0;
    v127 = &qword_2D0980;
    v128 = v143;
LABEL_49:
    sub_30B8(v128, v126, v127);
LABEL_50:

    return result;
  }

LABEL_39:
  *&v432 = v85;
  v412 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v413 = sub_2CBFA0();
  v411 = sub_2CC0E0();
  if (sub_2CC0D0())
  {
    v135 = v408;
    sub_2CC0B0();

    v136 = v409;
    if ((*(v133 + 48))(v135, 1, v409))
    {
      sub_30B8(v135, &qword_34DD30, &unk_2D1BC0);
    }

    else
    {
      v145 = v403;
      (*(v133 + 16))(v403, v135, v136);
      sub_30B8(v135, &qword_34DD30, &unk_2D1BC0);
      v146 = v136;
      v147 = sub_2CBF50();
      (*(v133 + 8))(v145, v146);
      if (v147)
      {

        v148 = v398;
        v427(v398, v426, v132);
        v149 = sub_2CDFE0();
        v150 = sub_2CE690();
        if (os_log_type_enabled(v149, v150))
        {
          v151 = swift_slowAlloc();
          *v151 = 0;
          _os_log_impl(&dword_0, v149, v150, "PlayMediaDialogProvider#makePlayDialog first successful prediction special-case dialog", v151, 2u);
        }

        v96(v148, v132);
        sub_1A0698(v430, v85, sub_1B7F04, v424);
        goto LABEL_50;
      }
    }
  }

  sub_35E0((v415 + 128), *(v415 + 152));
  if ((sub_2CC430() & 1) == 0 || !sub_2CE810())
  {
    v164 = v410;
    v427(v410, v426, v132);
    v165 = sub_2CDFE0();
    v173 = sub_2CE690();
    if (!os_log_type_enabled(v165, v173))
    {
LABEL_69:

      v153 = v132;
      v96(v164, v132);
      goto LABEL_70;
    }

    v174 = swift_slowAlloc();
    *v174 = 0;
    _os_log_impl(&dword_0, v165, v173, "PlayMediaDialogProvider#makePlayDialog pym not enabled", v174, 2u);
LABEL_68:

    goto LABEL_69;
  }

  v152 = v404;
  v153 = v132;
  v427(v404, v426, v132);
  v154 = sub_2CDFE0();
  v155 = sub_2CE690();
  if (os_log_type_enabled(v154, v155))
  {
    v156 = swift_slowAlloc();
    *v156 = 0;
    _os_log_impl(&dword_0, v154, v155, "PlayMediaDialogProvider#makePlayDialog pym enabled", v156, 2u);
    v152 = v404;
  }

  v96(v152, v132);
  if ((v413 - 1) >= 2)
  {
    v164 = v397;
    v427(v397, v426, v132);
    v165 = sub_2CDFE0();
    v195 = sub_2CE690();
    if (!os_log_type_enabled(v165, v195))
    {
      goto LABEL_69;
    }

    v196 = swift_slowAlloc();
    *v196 = 134217984;
    *(v196 + 4) = v413;
    v168 = "PlayMediaDialogProvider#makePlayDialog pym first item type: %ld not supported for speak suppression";
    v169 = v195;
    v170 = v165;
    v171 = v196;
    v172 = 12;
LABEL_85:
    _os_log_impl(&dword_0, v170, v169, v168, v171, v172);
    goto LABEL_68;
  }

  v157 = v401;
  v427(v401, v426, v132);
  v158 = sub_2CDFE0();
  v159 = sub_2CE690();
  if (os_log_type_enabled(v158, v159))
  {
    v160 = swift_slowAlloc();
    *v160 = 0;
    _os_log_impl(&dword_0, v158, v159, "PlayMediaDialogProvider#makePlayDialog pym found song/album resolved item", v160, 2u);
    v157 = v401;
  }

  v96(v157, v132);
  v161 = [v85 mediaSearch];
  if (v161)
  {
    v162 = v161;
    v163 = [v161 sortOrder];

    if (v163)
    {
      v164 = v396;
      v427(v396, v426, v132);
      v165 = sub_2CDFE0();
      v166 = sub_2CE690();
      if (!os_log_type_enabled(v165, v166))
      {
        goto LABEL_69;
      }

      v167 = swift_slowAlloc();
      *v167 = 0;
      v168 = "PlayMediaDialogProvider#makePlayDialog pym found sort order present -- not supported for speak suppression";
      v169 = v166;
      v170 = v165;
      v171 = v167;
      v172 = 2;
      goto LABEL_85;
    }
  }

  v427(v399, v426, v132);
  v197 = sub_2CDFE0();
  v198 = sub_2CE670();
  if (os_log_type_enabled(v197, v198))
  {
    v199 = swift_slowAlloc();
    *v199 = 0;
    _os_log_impl(&dword_0, v197, v198, "PlayMediaDialogProvider#makePlayDialog pym sort order unknown", v199, 2u);
  }

  v96(v399, v132);
  sub_2CBC60();
  sub_35E0(&v432, *(&v433 + 1));
  v200 = sub_2CBE50();
  sub_306C(&v432);
  if ((v200 & 1) == 0)
  {

    v201 = v394;
    v427(v394, v426, v132);
    v202 = sub_2CDFE0();
    v203 = sub_2CE690();
    if (os_log_type_enabled(v202, v203))
    {
      v204 = swift_slowAlloc();
      *v204 = 0;
      _os_log_impl(&dword_0, v202, v203, "PlayMediaDialogProvider#makePlayDialog suppressing dialog pym short-circuiting dialog evaluation in display-driven mode", v204, 2u);
    }

    v96(v201, v132);
    goto LABEL_48;
  }

LABEL_70:
  sub_20410(&qword_353C90, &unk_2D6080);
  v175 = swift_allocObject();
  v425 = xmmword_2D0090;
  *(v175 + 16) = xmmword_2D0090;
  v176 = v415;
  sub_EEAC(v415 + 168, v175 + 40);
  *(v175 + 32) = 4;
  sub_1B7DE4(v175 + 32, v431);
  if (sub_1A0B34())
  {

    v432 = v431[0];
    v433 = v431[1];
    v434 = v431[2];
    v177 = *(v176 + 120);
    v178 = v405;
    v427(v405, v426, v153);
    v179 = sub_2CDFE0();
    v180 = sub_2CE690();
    if (os_log_type_enabled(v179, v180))
    {
      v181 = swift_slowAlloc();
      v182 = swift_slowAlloc();
      *&v431[0] = v182;
      *v181 = 136315138;
      *(v181 + 4) = sub_3F08(0xD00000000000001ALL, 0x80000000002DA500, v431);
      _os_log_impl(&dword_0, v179, v180, "DialogMemoryUseCase#%s#execute Executing...", v181, 0xCu);
      sub_306C(v182);
    }

    v96(v178, v153);
    sub_280EB4(v430, v85, v177, sub_1B7F04, v424);
    sub_35E0(&v432 + 1, v434);
    sub_281390();
    sub_1B7E40(&v432);
    goto LABEL_50;
  }

  sub_1B7E40(v431);
  swift_setDeallocating();
  sub_1B7E40(v175 + 32);
  swift_deallocClassInstance();
  if (sub_1D0718(v430))
  {

    v183 = [v85 privatePlayMediaIntentData];
    if (v183)
    {
      v184 = v183;
      v185 = [v183 pegasusMetaData];

      v186 = v402;
      if (v185)
      {
        v187 = sub_2C8DC0();
        v189 = v188;
      }

      else
      {
        v187 = 0;
        v189 = 0xF000000000000000;
      }
    }

    else
    {
      v187 = 0;
      v189 = 0xF000000000000000;
      v186 = v402;
    }

    v215 = v407;
    sub_2C9210();
    sub_5267C(v187, v189);
    sub_F3F4(v215, v186, &qword_353C88, &unk_2D6070);
    v216 = sub_2C9240();
    v217 = *(v216 - 8);
    if ((*(v217 + 48))(v186, 1, v216) == 1)
    {
      sub_30B8(v186, &qword_353C88, &unk_2D6070);
      v218 = 0;
      v219 = 0;
    }

    else
    {
      v220 = sub_2C9220();
      v221 = v186;
      v218 = v220;
      v219 = v222;
      (*(v217 + 8))(v221, v216);
    }

    v427(v406, v426, v153);

    v223 = sub_2CDFE0();
    v224 = sub_2CE660();

    if (os_log_type_enabled(v223, v224))
    {
      *&v425 = v85;
      v225 = swift_slowAlloc();
      v226 = swift_slowAlloc();
      *v225 = 138412290;
      if (v219)
      {
        sub_10C40();
        swift_allocError();
        *v227 = v218;
        v227[1] = v219;
        v228 = _swift_stdlib_bridgeErrorToNSError();
        v229 = v228;
      }

      else
      {
        v228 = 0;
        v229 = 0;
      }

      *(v225 + 4) = v228;
      *v226 = v229;
      _os_log_impl(&dword_0, v223, v224, "PlayMediaDialogProvider going to makeNlsContainer for %@", v225, 0xCu);
      sub_30B8(v226, &unk_34FC00, &unk_2D0150);

      v85 = v425;
    }

    else
    {
    }

    v96(v406, v153);
    sub_1A0DE4(v430, v85, sub_1B7F04, v424);
    v126 = &qword_353C88;
    v127 = &unk_2D6070;
    v128 = v407;
    goto LABEL_49;
  }

  v190 = sub_1D2364(&off_32FF60);
  sub_F1954(&unk_32FF80);
  if ((v190 & 1) != 0 || _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v85, &off_32FF90))
  {

    v191 = v400;
    v427(v400, v426, v153);
    v192 = sub_2CDFE0();
    v193 = sub_2CE660();
    if (os_log_type_enabled(v192, v193))
    {
      v194 = swift_slowAlloc();
      *v194 = 0;
      _os_log_impl(&dword_0, v192, v193, "PlayMediaDialogProvider going to isPodcastPromotion for storytelling", v194, 2u);
    }

    v96(v191, v153);
    sub_1A0F78(v430, v85, sub_1B7F04, v424);
    goto LABEL_50;
  }

  v423 = v153;
  sub_334A0(0, &qword_353110, NSNumber_ptr);
  v205 = sub_2CE720();
  isa = [v205 isAppCorrection];

  if (!isa)
  {
    isa = sub_2CEB10(0).super.super.isa;
  }

  v207 = sub_2CEB10(0).super.super.isa;
  v208 = sub_2CEB30();

  if ((v208 & 1) == 0)
  {

    v230 = v395;
    v231 = v423;
    v427(v395, v426, v423);
    v232 = sub_2CDFE0();
    v233 = sub_2CE660();
    if (os_log_type_enabled(v232, v233))
    {
      v234 = swift_slowAlloc();
      *v234 = 0;
      _os_log_impl(&dword_0, v232, v233, "PlayMediaDialogProvider going to makePlayWithAppCorrection for app correction", v234, 2u);
      v230 = v395;
    }

    v96(v230, v231);
    v235 = sub_112C0(_swiftEmptyArrayStorage);
    *(&v433 + 1) = v412;
    *&v434 = &off_3381B8;
    *&v432 = v85;
    v236 = v85;
    sub_240C20(v235, v430, &v432, sub_1B7F04, v424);

    sub_30B8(&v432, &qword_34C6C0, &qword_2D0710);
    goto LABEL_50;
  }

  v209 = sub_1D0CF0();
  v210 = v423;
  if (v209)
  {

    v211 = v393;
    v427(v393, v426, v210);
    v212 = sub_2CDFE0();
    v213 = sub_2CE660();
    if (os_log_type_enabled(v212, v213))
    {
      v214 = swift_slowAlloc();
      *v214 = 0;
      _os_log_impl(&dword_0, v212, v213, "PlayMediaDialogProvider going to makeWholeLibrary when playback item identifier is to play whole library", v214, 2u);
      v211 = v393;
    }

    v96(v211, v210);
    sub_1A1C48(v430, v85, sub_1B7F04, v424);
    goto LABEL_50;
  }

  v422 = v96;
  v237 = v85;
  v87 = sub_1D1060();
  v102 = v238;
  v91 = sub_1D119C();
  a5 = v239;
  v240 = v237;
  v241 = sub_2CE8E0() && sub_2CE840();
  if (!(v102 | a5))
  {
    v242 = [v237 mediaSearch];
    if (v242)
    {
      v243 = v242;
      v244 = [v242 reference];

      if (v244 == &dword_0 + 1 || v241)
      {
        goto LABEL_121;
      }

LABEL_143:

      v274 = v391;
      v427(v391, v426, v423);
      v275 = sub_2CDFE0();
      v276 = sub_2CE660();
      if (os_log_type_enabled(v275, v276))
      {
        v277 = swift_slowAlloc();
        *v277 = 0;
        _os_log_impl(&dword_0, v275, v276, "PlayMediaDialogProvider going to makePlayDialogEmptyContentTitle for empty title and artist", v277, 2u);
      }

      v422(v274, v423);
      v278 = [v240 playbackQueueLocation] == &dword_0 + 2;
      v279 = [v240 playbackQueueLocation] == &dword_0 + 3;
      sub_20410(&unk_353120, &unk_2D0B50);
      v280 = swift_allocObject();
      *(v280 + 32) = 0xD00000000000001BLL;
      *(v280 + 40) = 0x80000000002DE780;
      *(v280 + 16) = xmmword_2D0E40;
      *(v280 + 48) = v278;
      *(v280 + 72) = &type metadata for Bool;
      *(v280 + 80) = 0xD00000000000001CLL;
      *(v280 + 88) = 0x80000000002DE7A0;
      *(v280 + 120) = &type metadata for Bool;
      *(v280 + 96) = v279;
      v281 = sub_112C0(v280);
      swift_setDeallocating();
      sub_20410(&qword_34CBA0, &unk_2D0FE0);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *(&v433 + 1) = v412;
      *&v434 = &off_3381B8;
      *&v432 = v240;
      v282 = v240;
      sub_23A7A4(v281, v430, &v432, sub_1B7F04, v424);

      v126 = &qword_34C6C0;
      v127 = &qword_2D0710;
      v128 = &v432;
      goto LABEL_49;
    }

    if (!v241)
    {
      goto LABEL_143;
    }
  }

LABEL_121:
  sub_1D04A0();
  if (v245)
  {
    v246 = v240;

    v247 = v392;
    v248 = v423;
    v427(v392, v426, v423);
    v249 = sub_2CDFE0();
    v250 = sub_2CE660();
    if (os_log_type_enabled(v249, v250))
    {
      v251 = swift_slowAlloc();
      *v251 = 0;
      _os_log_impl(&dword_0, v249, v250, "PlayMediaDialogProvider going to makeNewsPodcast for news request", v251, 2u);
    }

    v422(v247, v248);
    v252 = sub_1D05E4();
    v254 = v253;
    sub_20410(&unk_353120, &unk_2D0B50);
    v255 = swift_allocObject();
    *(v255 + 16) = v425;
    *(v255 + 32) = 0xD000000000000016;
    v256 = v255 + 32;
    *(v255 + 72) = &type metadata for String;
    if (v254)
    {
      v257 = v252;
    }

    else
    {
      v257 = 0;
    }

    v258 = 0xE000000000000000;
    if (v254)
    {
      v258 = v254;
    }

    *(v255 + 40) = 0x80000000002DE7C0;
    *(v255 + 48) = v257;
    *(v255 + 56) = v258;
    v259 = sub_112C0(v255);
    swift_setDeallocating();
    sub_30B8(v256, &qword_34CBA0, &unk_2D0FE0);
    swift_deallocClassInstance();
    *(&v433 + 1) = v412;
    *&v434 = &off_3381B8;
    *&v432 = v246;
    v260 = v246;
    sub_23C944(v259, v430, &v432, sub_1B7F04, v424);

LABEL_130:

    sub_30B8(&v432, &qword_34C6C0, &qword_2D0710);
    goto LABEL_50;
  }

  *&v425 = v240;
  v261 = _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v240, &off_3304B0);
  v262 = v423;
  if (v261 && v413 == 6)
  {

    v263 = v390;
    v427(v390, v426, v262);
    v264 = sub_2CDFE0();
    v265 = sub_2CE660();
    if (os_log_type_enabled(v264, v265))
    {
      v266 = swift_slowAlloc();
      *v266 = 0;
      _os_log_impl(&dword_0, v264, v265, "PlayMediaDialogProvider going to makeNewsPodcast for news request", v266, 2u);
    }

    v422(v263, v262);
    sub_1A1FBC(v430, v425, sub_1B7F04, v424);
LABEL_156:

    return result;
  }

  v267 = &qword_330500;
  v268 = 4;
  while (v268)
  {
    v269 = *v267++;
    --v268;
    if (v269 == v413)
    {

      v270 = v389;
      v427(v389, v426, v262);
      v271 = sub_2CDFE0();
      v272 = sub_2CE660();
      if (os_log_type_enabled(v271, v272))
      {
        v273 = swift_slowAlloc();
        *v273 = 0;
        _os_log_impl(&dword_0, v271, v272, "PlayMediaDialogProvider going to makePodcast", v273, 2u);
      }

      v422(v270, v262);
      sub_1A2614(v430, v425, sub_1B7F04, v424);
      goto LABEL_156;
    }
  }

  v283 = v425;
  v284 = sub_1D2364(&off_330520);
  sub_F1954(&unk_330540);
  if (v284)
  {
    v285 = [v283 mediaSearch];
    if (!v285 || (v286 = v285, v287 = [v285 sortOrder], v286, v287 != &dword_0 + 1))
    {

      v292 = v388;
      v293 = v423;
      v427(v388, v426, v423);
      v294 = sub_2CDFE0();
      v295 = sub_2CE660();
      if (os_log_type_enabled(v294, v295))
      {
        v296 = swift_slowAlloc();
        *v296 = 0;
        _os_log_impl(&dword_0, v294, v295, "PlayMediaDialogProvider going to makePlaySomething for play some music request", v296, 2u);
      }

      v422(v292, v293);
      sub_1A1C48(v430, v425, sub_1B7F04, v424);
      goto LABEL_156;
    }
  }

  if (sub_1D1380())
  {

    v288 = v387;
    v427(v387, v426, v423);
    v289 = sub_2CDFE0();
    v290 = sub_2CE660();
    if (os_log_type_enabled(v289, v290))
    {
      v291 = swift_slowAlloc();
      *v291 = 0;
      _os_log_impl(&dword_0, v289, v290, "PlayMediaDialogProvider going to makePlaySomethingNew for play some new music request", v291, 2u);
    }

    v422(v288, v423);
    sub_1A29E8(v430, v425, sub_1B7F04, v424);
    goto LABEL_156;
  }

  if (!sub_2CE890() && !v241)
  {
    goto LABEL_163;
  }

  v297 = v386;
  v298 = v423;
  v427(v386, v426, v423);
  v299 = sub_2CDFE0();
  v300 = sub_2CE660();
  if (os_log_type_enabled(v299, v300))
  {
    v301 = swift_slowAlloc();
    *v301 = 0;
    _os_log_impl(&dword_0, v299, v300, "PlayMediaDialogProvider going to makeCreateRadio", v301, 2u);
  }

  v422(v297, v298);
  sub_1A2E08(v430, v87, v102, v425, sub_1B7F04, v424);

  return result;
}

uint64_t sub_1AB6D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void (*a7)(__int128 *), uint64_t a8, void (*a9)(char *, uint64_t))
{
  v82 = a7;
  v87 = a2;
  v75 = a1;
  v78 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v78);
  v79 = &v72 - v14;
  v15 = sub_2CE000();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v72 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v73 = &v72 - v20;
  v21 = __chkstk_darwin(v19);
  v76 = &v72 - v22;
  v23 = __chkstk_darwin(v21);
  v74 = &v72 - v24;
  v25 = __chkstk_darwin(v23);
  v77 = &v72 - v26;
  __chkstk_darwin(v25);
  v28 = &v72 - v27;
  v29 = qword_34BF58;
  v86 = a4;

  v85 = a5;

  v81 = a6;
  v84 = a8;

  v83 = a9;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = sub_3ED0(v15, static Logger.default);
  swift_beginAccess();
  v31 = v15;
  v80 = *(v16 + 16);
  v80(v28, v30, v15);
  v32 = sub_2CDFE0();
  v33 = sub_2CE670();
  v34 = v16;
  if (os_log_type_enabled(v32, v33))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_0, v32, v33, "PlayMediaDialogProvider#makeInterstitialDialog", v35, 2u);
    v34 = v16;
  }

  v36 = *(v34 + 8);
  v36(v28, v15);
  sub_35E0(a3 + 16, a3[19]);
  v37 = sub_2CC430();
  v38 = v87;
  if ((v37 & 1) != 0 && (sub_2CB640() & 1) == 0 && sub_2CE810())
  {
    sub_35E0(a3 + 26, a3[29]);
    if ((sub_2CBE50() & 1) == 0)
    {
      v39 = v72;
      v40 = v31;
      v80(v72, v30, v31);
      v41 = sub_2CDFE0();
      v42 = sub_2CE690();
      if (!os_log_type_enabled(v41, v42))
      {
        goto LABEL_13;
      }

      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = "PlayMediaDialogProvider#makeInterstitialDialog suppressing dialog: pym enabled, not-CarPlay, and new playback producing but mode does not require dialoging - no templating dialog";
      goto LABEL_12;
    }
  }

  v89 = v38;
  sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  if (sub_2CC120())
  {
    v39 = v77;
    v40 = v31;
    v80(v77, v30, v31);
    v41 = sub_2CDFE0();
    v42 = sub_2CE690();
    if (!os_log_type_enabled(v41, v42))
    {
LABEL_13:

      v45 = v39;
      v46 = v40;
LABEL_22:
      v36(v45, v46);
      v51 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) + 48);
      v52 = v79;
      *(v52 + v51) = sub_196098();
      swift_storeEnumTagMultiPayload();
      v53 = v81;
      sub_291AC8(v52, v86, v85, v81, v82, v84, v83);
      sub_30B8(v52, &unk_3519A0, &qword_2D0980);
    }

    v43 = swift_slowAlloc();
    *v43 = 0;
    v44 = "PlayMediaDialogProvider#makeIntentHandledDialog suppressing dialog: User just accepted TCC initiated from the HomePod for an SFA request. Skipping dialog in makePreHandleIntentDialog and producing it in makePostHandleIntentDialog";
LABEL_12:
    _os_log_impl(&dword_0, v41, v42, v44, v43, 2u);

    goto LABEL_13;
  }

  sub_35E0(a3 + 16, a3[19]);
  if (sub_2CC4B0() & 1) == 0 && (sub_2CB630())
  {
    v39 = v73;
    v40 = v31;
    v80(v73, v30, v31);
    v41 = sub_2CDFE0();
    v42 = sub_2CE690();
    if (!os_log_type_enabled(v41, v42))
    {
      goto LABEL_13;
    }

    v43 = swift_slowAlloc();
    *v43 = 0;
    v44 = "PlayMediaDialogProvider#makeInterstitialDialog suppressing dialog: skipping interstitial for ATV";
    goto LABEL_12;
  }

  sub_35E0(a3 + 16, a3[19]);
  if (sub_2CC510())
  {
    v47 = v74;
    v80(v74, v30, v31);
    v48 = sub_2CDFE0();
    v49 = sub_2CE690();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_0, v48, v49, "PlayMediaDialogProvider#makeInterstitialDialog suppressing dialog evaluation due to defaults override", v50, 2u);
    }

    v45 = v47;
    v46 = v31;
    goto LABEL_22;
  }

  v55 = v76;
  v56 = v31;
  v80(v76, v30, v31);
  v57 = v75;

  v58 = sub_2CDFE0();
  v59 = sub_2CE690();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v88 = v57;
    v89 = v61;
    *v60 = 136315138;
    sub_2CCFB0();
    v80 = v56;
    sub_1B7EB0(&qword_34C170, &type metadata accessor for App, &protocol conformance descriptor for App);
    v62 = sub_2CEE70();
    v64 = sub_3F08(v62, v63, &v89);

    *(v60 + 4) = v64;
    _os_log_impl(&dword_0, v58, v59, "PlayMediaDialogProvider#makeInterstitialDialog for app: %s", v60, 0xCu);
    sub_306C(v61);

    v65 = v76;
    v66 = v80;
  }

  else
  {

    v65 = v55;
    v66 = v56;
  }

  v36(v65, v66);
  v67 = v86;

  v68 = v85;

  v69 = v81;
  v70 = v84;

  v71 = v83;

  sub_1A8030(1, v57, v87, a3, v67, v68, v69, v82, v70, v71);

  return swift_bridgeObjectRelease_n();
}

double sub_1ABFB8(int a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  v413 = a2;
  LODWORD(v405) = a1;
  v12 = sub_20410(&qword_353C88, &unk_2D6070);
  v13 = __chkstk_darwin(v12 - 8);
  v395 = &v373 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v400 = &v373 - v15;
  v402 = sub_2CBF80();
  v401 = *(v402 - 8);
  __chkstk_darwin(v402);
  v396 = &v373 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  v18 = __chkstk_darwin(v17 - 8);
  v376 = &v373 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v406 = &v373 - v20;
  v407 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v407);
  v408 = (&v373 - v21);
  v22 = sub_2CE000();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v403 = &v373 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v398 = &v373 - v27;
  v28 = __chkstk_darwin(v26);
  v384 = &v373 - v29;
  v30 = __chkstk_darwin(v28);
  v381 = &v373 - v31;
  v32 = __chkstk_darwin(v30);
  v374 = &v373 - v33;
  v34 = __chkstk_darwin(v32);
  v375 = &v373 - v35;
  v36 = __chkstk_darwin(v34);
  v377 = &v373 - v37;
  v38 = __chkstk_darwin(v36);
  v378 = &v373 - v39;
  v40 = __chkstk_darwin(v38);
  v379 = &v373 - v41;
  v42 = __chkstk_darwin(v40);
  v380 = &v373 - v43;
  v44 = __chkstk_darwin(v42);
  v382 = &v373 - v45;
  v46 = __chkstk_darwin(v44);
  v383 = &v373 - v47;
  v48 = __chkstk_darwin(v46);
  v385 = &v373 - v49;
  v50 = __chkstk_darwin(v48);
  v386 = &v373 - v51;
  v52 = __chkstk_darwin(v50);
  v387 = &v373 - v53;
  v54 = __chkstk_darwin(v52);
  v393 = &v373 - v55;
  v56 = __chkstk_darwin(v54);
  v399 = &v373 - v57;
  v58 = __chkstk_darwin(v56);
  v388 = &v373 - v59;
  v60 = __chkstk_darwin(v58);
  v389 = &v373 - v61;
  v62 = __chkstk_darwin(v60);
  v392 = &v373 - v63;
  v64 = __chkstk_darwin(v62);
  v394 = &v373 - v65;
  v66 = __chkstk_darwin(v64);
  v390 = &v373 - v67;
  v68 = __chkstk_darwin(v66);
  v397 = &v373 - v69;
  v70 = __chkstk_darwin(v68);
  v391 = &v373 - v71;
  v72 = __chkstk_darwin(v70);
  v404 = &v373 - v73;
  v74 = __chkstk_darwin(v72);
  v76 = &v373 - v75;
  __chkstk_darwin(v74);
  v78 = &v373 - v77;
  v79 = swift_allocObject();
  v409 = a5;
  v79[2] = a5;
  v79[3] = a6;
  v80 = v79;
  v79[4] = a7;
  v81 = qword_34BF58;
  v410 = a6;

  *&v411 = a7;

  if (v81 != -1)
  {
    swift_once();
  }

  v82 = sub_3ED0(v22, static Logger.default);
  swift_beginAccess();
  v83 = *(v23 + 16);
  v415 = v82;
  v416 = v83;
  v417 = v23 + 16;
  v83(v78, v82, v22);
  v84 = v22;
  v85 = a3;
  v86 = sub_2CDFE0();
  v87 = sub_2CE670();

  v88 = os_log_type_enabled(v86, v87);
  v419 = v84;
  v89 = a4;
  v412 = v80;
  v414 = v85;
  v418 = v23;
  if (!v88)
  {

    v91 = *(v23 + 8);
    v91(v78, v84);
    v97 = v84;
    goto LABEL_23;
  }

  v90 = swift_slowAlloc();
  v91 = swift_slowAlloc();
  *&v421 = v91;
  *v90 = 136315394;
  v92 = [v85 privatePlayMediaIntentData];
  if (v92 && (v93 = v92, v94 = [v92 internalSignals], v93, v94))
  {
    v95 = v89;
    v96 = sub_2CE410();
  }

  else
  {
    v95 = v89;
    v96 = 0;
  }

  *&v420[0] = v96;
  sub_20410(&qword_353C98, &unk_2D6A00);
  v98 = sub_2CE2A0();
  v100 = sub_3F08(v98, v99, &v421);

  *(v90 + 4) = v100;
  *(v90 + 12) = 2080;
  v101 = [v414 mediaItems];
  if (!v101)
  {
    goto LABEL_19;
  }

  v102 = v101;
  sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v103 = sub_2CE410();

  if (v103 >> 62)
  {
    v104 = sub_2CEDA0();
  }

  else
  {
    v104 = *(&dword_10 + (v103 & 0xFFFFFFFFFFFFFF8));
  }

  v89 = v95;
  v97 = v419;
  if (!v104)
  {

    v107 = 0;
    goto LABEL_22;
  }

  if ((v103 & 0xC000000000000001) == 0)
  {
    if (*(&dword_10 + (v103 & 0xFFFFFFFFFFFFFF8)))
    {
      v95 = v89;
      v105 = *(v103 + 32);
      goto LABEL_16;
    }

    __break(1u);
LABEL_166:
    v408 = v90;

    v298 = [v103 mediaSearch];
    if (v298)
    {
      v299 = v298;
      v300 = [v298 sortOrder];

      if (v300 == &dword_8)
      {
        v301 = [v87 mediaSearch];
        if (v301)
        {
          v302 = v301;
          v303 = [v301 mediaName];

          if (v303)
          {

            v304 = [v87 mediaSearch];
            if (!v304 || (v305 = v304, v306 = [v304 reference], v305, v306 != &dword_0 + 1))
            {

              v416(v374, v415, v419);
              v363 = sub_2CDFE0();
              v364 = sub_2CE660();
              if (os_log_type_enabled(v363, v364))
              {
                v365 = swift_slowAlloc();
                *v365 = 0;
                _os_log_impl(&dword_0, v363, v364, "PlayMediaDialogProvider going to makePlayMusicLikeArtist", v365, 2u);
              }

              v91(v374, v419);
              sub_1A46BC(v413, v87, sub_1B7E94, v412);
              goto LABEL_159;
            }
          }
        }
      }
    }

    v307 = &qword_330670;
    v308 = 2;
    do
    {
      v309 = v308;
      if (v308-- == 0)
      {
        break;
      }

      v311 = *v307++;
    }

    while (v311 != v406);
    v312 = [v87 mediaSearch];
    if (v312 && (v313 = v312, v314 = [v312 sortOrder], v313, v314 == &dword_0 + 3))
    {
      if (!v309)
      {
        goto LABEL_186;
      }
    }

    else
    {
      v315 = [v87 mediaSearch];
      if (!v315 || (v316 = v315, v317 = [v315 sortOrder], v316, !v309) || v317 != &dword_4)
      {
LABEL_186:
        v321 = sub_1D14A0();
        if (v322)
        {
          v323 = v321;
          v324 = v322;

          v325 = HIBYTE(v324) & 0xF;
          if ((v324 & 0x2000000000000000) == 0)
          {
            v325 = v323 & 0xFFFFFFFFFFFFLL;
          }

          v326 = v325 == 0;
        }

        else
        {
          v326 = 1;
        }

        LODWORD(v409) = v326;
        v327 = sub_1D15EC();
        if (v328)
        {
          v329 = v327 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v329 = 0;
        }

        if (v328)
        {
          v330 = v328;
        }

        else
        {
          v330 = 0xE000000000000000;
        }

        if ((v330 & 0x2000000000000000) != 0)
        {
          v331 = HIBYTE(v330) & 0xF;
        }

        else
        {
          v331 = v329;
        }

        if (v331)
        {
          v332 = sub_2CCF90();
          v334 = v333;
          v335 = sub_2CBE10();
          if (!v334)
          {

            goto LABEL_212;
          }

          if (v332 == v335 && v334 == v336)
          {
          }

          else
          {
            v337 = sub_2CEEA0();

            if ((v337 & 1) == 0)
            {
              goto LABEL_212;
            }
          }

          if (!v409 || _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v87, &off_330680))
          {

            v416(v375, v415, v419);
            v338 = sub_2CDFE0();
            v339 = sub_2CE660();
            if (os_log_type_enabled(v338, v339))
            {
              v340 = swift_slowAlloc();
              *v340 = 0;
              _os_log_impl(&dword_0, v338, v339, "PlayMediaDialogProvider going to nonSubscriberRadioFallback for genre query with broadcast radio result", v340, 2u);
            }

            v91(v375, v419);
            sub_1A4044(v413, v87, sub_1B7E94, v412);
            goto LABEL_159;
          }
        }

LABEL_212:
        v341 = sub_2CE710();
        v342 = v409;
        if (v341 != 5)
        {
          v342 = (sub_2CE710() == 19) & v409;
        }

        if (sub_2CE710() == 16)
        {
          if ((v342 | v409))
          {
            goto LABEL_221;
          }
        }

        else if (v342)
        {
          goto LABEL_221;
        }

        if (!v331 || (v343 = [v87 mediaSearch]) == 0 || (v344 = v343, v345 = objc_msgSend(v343, "sortOrder"), v344, v345 != &dword_4 + 1))
        {
          v349 = v409 ^ 1;
          if (v406 != &dword_0 + 3 || !v76)
          {
            goto LABEL_230;
          }

          v350 = HIBYTE(v76) & 0xF;
          if ((v76 & 0x2000000000000000) == 0)
          {
            v350 = v410 & 0xFFFFFFFFFFFFLL;
          }

          if (v350)
          {

            v351 = 0;
            v352 = 0xE000000000000000;
          }

          else
          {
LABEL_230:
            v351 = v410;
            v352 = v76;
            v410 = v408;
            v76 = v97;
          }

          sub_20410(&unk_353120, &unk_2D0B50);
          v353 = swift_allocObject();
          v354 = v353;
          *(v353 + 16) = xmmword_2D5FC0;
          *(v353 + 32) = 0x656C746974;
          v355 = v410;
          if (!v76)
          {
            v355 = 0;
          }

          v356 = 0xE000000000000000;
          if (v76)
          {
            v357 = v76;
          }

          else
          {
            v357 = 0xE000000000000000;
          }

          *(v353 + 40) = 0xE500000000000000;
          *(v353 + 48) = v355;
          *(v353 + 56) = v357;
          *(v353 + 72) = &type metadata for String;
          *(v353 + 80) = 0x747369747261;
          if (v352)
          {
            v358 = v351;
          }

          else
          {
            v358 = 0;
          }

          if (v352)
          {
            v356 = v352;
          }

          *(v353 + 88) = 0xE600000000000000;
          *(v353 + 96) = v358;
          *(v353 + 104) = v356;
          *(v353 + 120) = &type metadata for String;
          *(v353 + 128) = 0x61526576694C7369;
          *(v353 + 136) = 0xEB000000006F6964;
          *(v353 + 144) = v349;
          *(v353 + 168) = &type metadata for Bool;
          *(v353 + 176) = 0xD00000000000001BLL;
          *(v353 + 184) = 0x80000000002DE780;

          *(v354 + 192) = [v87 playbackQueueLocation] == &dword_0 + 2;
          *(v354 + 216) = &type metadata for Bool;
          *(v354 + 224) = 0xD00000000000001CLL;
          *(v354 + 232) = 0x80000000002DE7A0;
          *(v354 + 240) = [v87 playbackQueueLocation] == &dword_0 + 3;
          *(v354 + 264) = &type metadata for Bool;
          *(v354 + 272) = 0x667568536E4F7369;
          *(v354 + 280) = 0xEB00000000656C66;
          v359 = [v87 backingStore];
          objc_opt_self();
          v360 = swift_dynamicCastObjCClass();
          if (v360)
          {
            v361 = [v360 playShuffled];

            v362 = v361 & v409;
          }

          else
          {

            v362 = 0;
          }

          *(v354 + 288) = v362;
          *(v354 + 312) = &type metadata for Bool;
          *(v354 + 320) = 0x657065526E4F7369;
          *(v354 + 328) = 0xEA00000000007461;
          v366 = [v87 playbackRepeatMode] == &dword_0 + 2 || objc_msgSend(v87, "playbackRepeatMode") == &dword_0 + 3;
          *(v354 + 336) = v366;
          *(v354 + 360) = &type metadata for Bool;
          strcpy((v354 + 368), "isAppSpecified");
          *(v354 + 383) = -18;
          if (sub_2CC0D0())
          {
            sub_2CC0B0();
          }

          else
          {
            (*(v401 + 56))(v376, 1, 1, v402);
          }

          v367 = v413;
          v368 = v376;
          v369 = sub_197DC8(v413, v87, (v411 + 128), v376);
          sub_30B8(v368, &qword_34DD30, &unk_2D1BC0);
          *(v354 + 384) = v369 & 1;
          *(v354 + 408) = &type metadata for Bool;
          strcpy((v354 + 416), "isPersonalized");
          *(v354 + 431) = -18;
          v370 = sub_1D16A0();
          *(v354 + 456) = &type metadata for Bool;
          *(v354 + 432) = v370 & 1;
          v371 = sub_112C0(v354);
          swift_setDeallocating();
          sub_20410(&qword_34CBA0, &unk_2D0FE0);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          *(&v422 + 1) = v404;
          *&v423 = &off_3381B8;
          *&v421 = v87;
          v372 = v87;
          sub_239644(v371, v367, &v421, sub_1B7E94, v412);

          goto LABEL_147;
        }

LABEL_221:

        v416(v377, v415, v419);
        v346 = sub_2CDFE0();
        v347 = sub_2CE660();
        if (os_log_type_enabled(v346, v347))
        {
          v348 = swift_slowAlloc();
          *v348 = 0;
          _os_log_impl(&dword_0, v346, v347, "PlayMediaDialogProvider going to makeEditorialPlaylist for playlist/radio", v348, 2u);
        }

        v91(v377, v419);
        sub_1A39E0(v413, v87, sub_1B7E94, v412);
        goto LABEL_159;
      }
    }

    v416(v378, v415, v419);
    v318 = sub_2CDFE0();
    v319 = sub_2CE660();
    if (os_log_type_enabled(v318, v319))
    {
      v320 = swift_slowAlloc();
      *v320 = 0;
      _os_log_impl(&dword_0, v318, v319, "PlayMediaDialogProvider going to makeBestWorst for non-empty best or worst", v320, 2u);
    }

    v91(v378, v419);
    sub_1A32FC(v413, v87, sub_1B7E94, v412);
    goto LABEL_159;
  }

  v95 = v89;
  v105 = sub_2CECD0();
LABEL_16:
  v106 = v105;

  v107 = [v106 privateMediaItemValueData];

  if (v107)
  {
    v108 = [v107 internalSignals];

    if (v108)
    {
      v107 = sub_2CE410();

      goto LABEL_20;
    }

LABEL_19:
    v107 = 0;
  }

LABEL_20:
  v89 = v95;
  v97 = v419;
LABEL_22:
  *&v420[0] = v107;
  v109 = sub_2CE2A0();
  v111 = sub_3F08(v109, v110, &v421);

  *(v90 + 14) = v111;
  _os_log_impl(&dword_0, v86, v87, "PlayMediaDialogProvider: makePlayDialog with intent internal signals: %s and first media item signals: %s", v90, 0x16u);
  swift_arrayDestroy();

  v91 = *(v418 + 8);
  v91(v78, v97);
LABEL_23:
  v112 = v413;
  v113 = sub_2CCF90();
  if (!v114)
  {
    v416(v76, v415, v97);
    v122 = sub_2CDFE0();
    v123 = sub_2CE680();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      *v124 = 0;
      _os_log_impl(&dword_0, v122, v123, "Missing app bundle identifier", v124, 2u);
    }

    v91(v76, v419);
    sub_10C40();
    v125 = swift_allocError();
    *v126 = 0xD00000000000001DLL;
    v126[1] = 0x80000000002DD6F0;
    v127 = v408;
    *v408 = v125;
    swift_storeEnumTagMultiPayload();
    sub_29A218(v127, v409, v410, v411);
    v128 = &unk_3519A0;
    v129 = &qword_2D0980;
    v130 = v127;
    goto LABEL_50;
  }

  v115 = v113;
  v116 = v114;
  v117 = sub_2CCF90();
  v119 = v118;
  v120 = sub_2CBE10();
  if (v119)
  {
    if (v117 == v120 && v119 == v121)
    {

LABEL_35:

      goto LABEL_36;
    }

    v131 = sub_2CEEA0();

    if (v131)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  if (v115 == sub_2CBE30() && v116 == v132)
  {
    goto LABEL_35;
  }

  v139 = sub_2CEEA0();

  if ((v139 & 1) == 0)
  {
    v87 = v414;
    v134 = v406;
    if (v405)
    {
      goto LABEL_40;
    }

LABEL_45:
    v135 = 0;
    goto LABEL_46;
  }

LABEL_36:
  v87 = v414;
  v133 = sub_2CE830();
  if ((v405 & 1) == 0)
  {
    v134 = v406;
    if (v133)
    {
      goto LABEL_40;
    }

    goto LABEL_45;
  }

  v134 = v406;
  if (v133)
  {
    v135 = 1;
LABEL_46:

    v140 = v404;
    v416(v404, v415, v97);
    v141 = sub_2CDFE0();
    v142 = sub_2CE660();
    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      *v143 = 67109376;
      *(v143 + 4) = v135;
      *(v143 + 8) = 1024;
      *(v143 + 10) = v135;
      _os_log_impl(&dword_0, v141, v142, "PlayMediaDialogProvider suppressing dialog: interstitial?:%{BOOL}d renderInHandle: %{BOOL}d", v143, 0xEu);
    }

    v91(v140, v97);
LABEL_49:
    v144 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) + 48);
    v145 = v408;
    *(v145 + v144) = sub_196098();
    swift_storeEnumTagMultiPayload();
    sub_29A218(v145, v409, v410, v411);
    v128 = &unk_3519A0;
    v129 = &qword_2D0980;
    v130 = v145;
LABEL_50:
    sub_30B8(v130, v128, v129);
LABEL_51:

    return result;
  }

LABEL_40:
  *&v421 = v87;
  v136 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v406 = sub_2CBFA0();
  v405 = sub_2CC0E0();
  if (sub_2CC0D0())
  {
    sub_2CC0B0();

    v137 = v401;
    v138 = v402;
    if ((*(v401 + 48))(v134, 1, v402))
    {
      sub_30B8(v134, &qword_34DD30, &unk_2D1BC0);
    }

    else
    {
      v147 = v396;
      (*(v137 + 16))(v396, v134, v138);
      sub_30B8(v134, &qword_34DD30, &unk_2D1BC0);
      v148 = sub_2CBF50();
      v149 = v138;
      v150 = v148;
      (*(v137 + 8))(v147, v149);
      if (v150)
      {

        v151 = v391;
        v416(v391, v415, v419);
        v152 = sub_2CDFE0();
        v153 = sub_2CE690();
        if (os_log_type_enabled(v152, v153))
        {
          v154 = swift_slowAlloc();
          *v154 = 0;
          _os_log_impl(&dword_0, v152, v153, "PlayMediaDialogProvider#makePlayDialog first successful prediction special-case dialog", v154, 2u);
        }

        v91(v151, v419);
        sub_1A0698(v112, v87, sub_1B7E94, v412);
        goto LABEL_51;
      }
    }
  }

  sub_35E0(v89 + 16, v89[19]);
  v155 = sub_2CC430();
  v404 = v136;
  if ((v155 & 1) == 0 || !sub_2CE810())
  {
    v169 = v403;
    v416(v403, v415, v419);
    v170 = sub_2CDFE0();
    v171 = sub_2CE690();
    if (os_log_type_enabled(v170, v171))
    {
      v172 = swift_slowAlloc();
      *v172 = 0;
      v173 = "PlayMediaDialogProvider#makePlayDialog pym not enabled";
      goto LABEL_69;
    }

LABEL_71:

    v91(v169, v419);
    goto LABEL_72;
  }

  v156 = v397;
  v416(v397, v415, v419);
  v157 = sub_2CDFE0();
  v158 = sub_2CE690();
  if (os_log_type_enabled(v157, v158))
  {
    v159 = swift_slowAlloc();
    *v159 = 0;
    _os_log_impl(&dword_0, v157, v158, "PlayMediaDialogProvider#makePlayDialog pym enabled", v159, 2u);
    v156 = v397;
  }

  v160 = v419;
  v91(v156, v419);
  if ((v406 - 1) >= 2)
  {
    v169 = v390;
    v416(v390, v415, v160);
    v170 = sub_2CDFE0();
    v206 = sub_2CE690();
    if (!os_log_type_enabled(v170, v206))
    {
      goto LABEL_71;
    }

    v207 = swift_slowAlloc();
    *v207 = 134217984;
    *(v207 + 4) = v406;
    v173 = "PlayMediaDialogProvider#makePlayDialog pym first item type: %ld not supported for speak suppression";
    v174 = v206;
    v175 = v170;
    v176 = v207;
    v177 = 12;
    goto LABEL_70;
  }

  v161 = v394;
  v416(v394, v415, v160);
  v162 = sub_2CDFE0();
  v163 = sub_2CE690();
  if (os_log_type_enabled(v162, v163))
  {
    v164 = swift_slowAlloc();
    *v164 = 0;
    _os_log_impl(&dword_0, v162, v163, "PlayMediaDialogProvider#makePlayDialog pym found song/album resolved item", v164, 2u);
    v161 = v394;
  }

  v165 = v419;
  v91(v161, v419);
  v166 = [v87 mediaSearch];
  if (v166)
  {
    v167 = v166;
    v168 = [v166 sortOrder];

    v165 = v419;
    if (v168)
    {
      v169 = v389;
      v416(v389, v415, v419);
      v170 = sub_2CDFE0();
      v171 = sub_2CE690();
      if (os_log_type_enabled(v170, v171))
      {
        v172 = swift_slowAlloc();
        *v172 = 0;
        v173 = "PlayMediaDialogProvider#makePlayDialog pym found sort order present -- not supported for speak suppression";
LABEL_69:
        v174 = v171;
        v175 = v170;
        v176 = v172;
        v177 = 2;
LABEL_70:
        _os_log_impl(&dword_0, v175, v174, v173, v176, v177);

        goto LABEL_71;
      }

      goto LABEL_71;
    }
  }

  v416(v392, v415, v165);
  v216 = sub_2CDFE0();
  v217 = sub_2CE670();
  if (os_log_type_enabled(v216, v217))
  {
    v218 = swift_slowAlloc();
    *v218 = 0;
    _os_log_impl(&dword_0, v216, v217, "PlayMediaDialogProvider#makePlayDialog pym sort order unknown", v218, 2u);
  }

  v91(v392, v419);
  sub_2CBC60();
  sub_35E0(&v421, *(&v422 + 1));
  v219 = sub_2CBE50();
  sub_306C(&v421);
  if ((v219 & 1) == 0)
  {

    v220 = v388;
    v416(v388, v415, v419);
    v221 = sub_2CDFE0();
    v222 = sub_2CE690();
    if (os_log_type_enabled(v221, v222))
    {
      v223 = swift_slowAlloc();
      *v223 = 0;
      _os_log_impl(&dword_0, v221, v222, "PlayMediaDialogProvider#makePlayDialog suppressing dialog pym short-circuiting dialog evaluation in display-driven mode", v223, 2u);
    }

    v91(v220, v419);
    goto LABEL_49;
  }

LABEL_72:
  sub_20410(&qword_353C90, &unk_2D6080);
  v178 = swift_allocObject();
  v411 = xmmword_2D0090;
  *(v178 + 16) = xmmword_2D0090;
  sub_EEAC((v89 + 21), v178 + 40);
  *(v178 + 32) = 4;
  sub_1B7DE4(v178 + 32, v420);
  v179 = v87;
  if (sub_1A0B34())
  {

    v421 = v420[0];
    v422 = v420[1];
    v423 = v420[2];
    v180 = v89[15];
    v181 = v398;
    v182 = v419;
    v416(v398, v415, v419);
    v183 = sub_2CDFE0();
    v184 = sub_2CE690();
    if (os_log_type_enabled(v183, v184))
    {
      v185 = v87;
      v186 = swift_slowAlloc();
      v187 = swift_slowAlloc();
      *&v420[0] = v187;
      *v186 = 136315138;
      *(v186 + 4) = sub_3F08(0xD00000000000001ALL, 0x80000000002DA500, v420);
      _os_log_impl(&dword_0, v183, v184, "DialogMemoryUseCase#%s#execute Executing...", v186, 0xCu);
      sub_306C(v187);

      v179 = v185;
    }

    v91(v181, v182);
    sub_280EB4(v112, v179, v180, sub_1B7E94, v412);
    sub_35E0(&v421 + 1, v423);
    sub_281390();
    sub_1B7E40(&v421);
    goto LABEL_51;
  }

  sub_1B7E40(v420);
  swift_setDeallocating();
  sub_1B7E40(v178 + 32);
  swift_deallocClassInstance();
  if (sub_1D0718(v112))
  {

    v188 = [v87 privatePlayMediaIntentData];
    if (v188 && (v189 = v188, v190 = [v188 pegasusMetaData], v189, v190))
    {
      v191 = sub_2C8DC0();
      v193 = v192;
    }

    else
    {
      v191 = 0;
      v193 = 0xF000000000000000;
    }

    v199 = v87;
    v200 = v400;
    sub_2C9210();
    sub_5267C(v191, v193);
    v201 = v395;
    sub_F3F4(v200, v395, &qword_353C88, &unk_2D6070);
    v202 = sub_2C9240();
    v203 = *(v202 - 8);
    if ((*(v203 + 48))(v201, 1, v202) == 1)
    {
      sub_30B8(v201, &qword_353C88, &unk_2D6070);
      v204 = 0;
      v205 = 0;
    }

    else
    {
      v204 = sub_2C9220();
      v205 = v208;
      (*(v203 + 8))(v201, v202);
    }

    v416(v399, v415, v419);

    v209 = sub_2CDFE0();
    v210 = sub_2CE660();

    if (os_log_type_enabled(v209, v210))
    {
      v211 = swift_slowAlloc();
      v212 = swift_slowAlloc();
      *v211 = 138412290;
      if (v205)
      {
        sub_10C40();
        swift_allocError();
        *v213 = v204;
        v213[1] = v205;
        v214 = _swift_stdlib_bridgeErrorToNSError();
        v215 = v214;
      }

      else
      {
        v214 = 0;
        v215 = 0;
      }

      *(v211 + 4) = v214;
      *v212 = v215;
      _os_log_impl(&dword_0, v209, v210, "PlayMediaDialogProvider going to makeNlsContainer for %@", v211, 0xCu);
      sub_30B8(v212, &unk_34FC00, &unk_2D0150);

      v112 = v413;
    }

    else
    {
    }

    v91(v399, v419);
    sub_1A0DE4(v112, v199, sub_1B7E94, v412);
    v128 = &qword_353C88;
    v129 = &unk_2D6070;
    v130 = v400;
    goto LABEL_50;
  }

  v194 = sub_1D2364(&off_32FF60);
  sub_F1954(&unk_32FF80);
  if ((v194 & 1) != 0 || _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v87, &off_32FF90))
  {

    v195 = v393;
    v416(v393, v415, v419);
    v196 = sub_2CDFE0();
    v197 = sub_2CE660();
    if (os_log_type_enabled(v196, v197))
    {
      v198 = swift_slowAlloc();
      *v198 = 0;
      _os_log_impl(&dword_0, v196, v197, "PlayMediaDialogProvider going to isPodcastPromotion for storytelling", v198, 2u);
    }

    v91(v195, v419);
    sub_1A0F78(v112, v179, sub_1B7E94, v412);
    goto LABEL_51;
  }

  sub_334A0(0, &qword_353110, NSNumber_ptr);
  v224 = sub_2CE720();
  isa = [v224 isAppCorrection];

  if (!isa)
  {
    isa = sub_2CEB10(0).super.super.isa;
  }

  v226 = sub_2CEB10(0).super.super.isa;
  v227 = sub_2CEB30();

  if ((v227 & 1) == 0)
  {

    v232 = v387;
    v416(v387, v415, v419);
    v233 = sub_2CDFE0();
    v234 = sub_2CE660();
    if (os_log_type_enabled(v233, v234))
    {
      v235 = swift_slowAlloc();
      *v235 = 0;
      _os_log_impl(&dword_0, v233, v234, "PlayMediaDialogProvider going to makePlayWithAppCorrection for app correction", v235, 2u);
    }

    v91(v232, v419);
    v236 = sub_112C0(_swiftEmptyArrayStorage);
    *(&v422 + 1) = v404;
    *&v423 = &off_3381B8;
    *&v421 = v87;
    v237 = v87;
    sub_240C20(v236, v112, &v421, sub_1B7E94, v412);

    sub_30B8(&v421, &qword_34C6C0, &qword_2D0710);
    goto LABEL_51;
  }

  v103 = v87;
  if (sub_1D0CF0())
  {

    v228 = v386;
    v416(v386, v415, v419);
    v229 = sub_2CDFE0();
    v230 = sub_2CE660();
    if (os_log_type_enabled(v229, v230))
    {
      v231 = swift_slowAlloc();
      *v231 = 0;
      _os_log_impl(&dword_0, v229, v230, "PlayMediaDialogProvider going to makeWholeLibrary when playback item identifier is to play whole library", v231, 2u);
    }

    v91(v228, v419);
    sub_1A1C48(v112, v103, sub_1B7E94, v412);
    goto LABEL_51;
  }

  v90 = sub_1D1060();
  v97 = v238;
  v410 = sub_1D119C();
  v76 = v239;
  v240 = sub_2CE8E0() && sub_2CE840();
  if (!(v97 | v76))
  {
    v241 = [v87 mediaSearch];
    if (v241)
    {
      v242 = v241;
      v243 = v89;
      v244 = [v241 reference];

      v245 = v244 == &dword_0 + 1;
      v89 = v243;
      v103 = v87;
      v246 = v245;
      if ((v246 | v240))
      {
        goto LABEL_123;
      }
    }

    else if (v240)
    {
      goto LABEL_123;
    }

    v272 = v384;
    v416(v384, v415, v419);
    v273 = sub_2CDFE0();
    v274 = sub_2CE660();
    if (os_log_type_enabled(v273, v274))
    {
      v275 = swift_slowAlloc();
      *v275 = 0;
      _os_log_impl(&dword_0, v273, v274, "PlayMediaDialogProvider going to makePlayDialogEmptyContentTitle for empty title and artist", v275, 2u);
    }

    v91(v272, v419);
    v276 = [v103 playbackQueueLocation] == &dword_0 + 2;
    v277 = v103;
    v278 = [v103 playbackQueueLocation] == &dword_0 + 3;
    sub_20410(&unk_353120, &unk_2D0B50);
    v279 = swift_allocObject();
    *(v279 + 32) = 0xD00000000000001BLL;
    *(v279 + 40) = 0x80000000002DE780;
    *(v279 + 16) = xmmword_2D0E40;
    *(v279 + 48) = v276;
    *(v279 + 72) = &type metadata for Bool;
    *(v279 + 80) = 0xD00000000000001CLL;
    *(v279 + 88) = 0x80000000002DE7A0;
    *(v279 + 120) = &type metadata for Bool;
    *(v279 + 96) = v278;
    v280 = sub_112C0(v279);
    swift_setDeallocating();
    sub_20410(&qword_34CBA0, &unk_2D0FE0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(&v422 + 1) = v404;
    *&v423 = &off_3381B8;
    *&v421 = v277;
    v281 = v277;
    sub_23A7A4(v280, v413, &v421, sub_1B7E94, v412);

LABEL_147:

    v128 = &qword_34C6C0;
    v129 = &qword_2D0710;
    v130 = &v421;
    goto LABEL_50;
  }

LABEL_123:
  sub_1D04A0();
  if (v247)
  {

    v248 = v385;
    v416(v385, v415, v419);
    v249 = sub_2CDFE0();
    v250 = sub_2CE660();
    if (os_log_type_enabled(v249, v250))
    {
      v251 = swift_slowAlloc();
      *v251 = 0;
      _os_log_impl(&dword_0, v249, v250, "PlayMediaDialogProvider going to makeNewsPodcast for news request", v251, 2u);
      v103 = v87;
    }

    v91(v248, v419);
    v252 = sub_1D05E4();
    v254 = v253;
    sub_20410(&unk_353120, &unk_2D0B50);
    v255 = swift_allocObject();
    *(v255 + 16) = v411;
    *(v255 + 32) = 0xD000000000000016;
    v256 = v255 + 32;
    *(v255 + 72) = &type metadata for String;
    if (v254)
    {
      v257 = v252;
    }

    else
    {
      v257 = 0;
    }

    v258 = 0xE000000000000000;
    if (v254)
    {
      v258 = v254;
    }

    *(v255 + 40) = 0x80000000002DE7C0;
    *(v255 + 48) = v257;
    *(v255 + 56) = v258;
    v259 = sub_112C0(v255);
    swift_setDeallocating();
    sub_30B8(v256, &qword_34CBA0, &unk_2D0FE0);
    swift_deallocClassInstance();
    *(&v422 + 1) = v404;
    *&v423 = &off_3381B8;
    *&v421 = v103;
    v260 = v103;
    sub_23C944(v259, v413, &v421, sub_1B7E94, v412);

    sub_30B8(&v421, &qword_34C6C0, &qword_2D0710);
    goto LABEL_51;
  }

  if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v103, &off_3305B0) && v406 == &dword_4 + 2)
  {

    v261 = v383;
    v416(v383, v415, v419);
    v262 = sub_2CDFE0();
    v263 = sub_2CE660();
    if (os_log_type_enabled(v262, v263))
    {
      v264 = swift_slowAlloc();
      *v264 = 0;
      _os_log_impl(&dword_0, v262, v263, "PlayMediaDialogProvider going to makeNewsPodcast for news request", v264, 2u);
      v103 = v87;
    }

    v91(v261, v419);
    sub_1A1FBC(v413, v103, sub_1B7E94, v412);
LABEL_159:

    return result;
  }

  v265 = &qword_330600;
  v266 = 4;
  while (v266)
  {
    v267 = *v265++;
    --v266;
    if (v267 == v406)
    {

      v268 = v382;
      v416(v382, v415, v419);
      v269 = sub_2CDFE0();
      v270 = sub_2CE660();
      if (os_log_type_enabled(v269, v270))
      {
        v271 = swift_slowAlloc();
        *v271 = 0;
        _os_log_impl(&dword_0, v269, v270, "PlayMediaDialogProvider going to makePodcast", v271, 2u);
        v103 = v87;
      }

      v91(v268, v419);
      sub_1A2614(v413, v103, sub_1B7E94, v412);
      goto LABEL_159;
    }
  }

  *&v411 = v89;
  v282 = sub_1D2364(&off_330620);
  sub_F1954(&unk_330640);
  if (v282)
  {
    v283 = [v103 mediaSearch];
    if (!v283 || (v284 = v283, v285 = [v283 sortOrder], v284, v285 != &dword_0 + 1))
    {

      v290 = v381;
      v416(v381, v415, v419);
      v291 = sub_2CDFE0();
      v292 = sub_2CE660();
      if (os_log_type_enabled(v291, v292))
      {
        v293 = swift_slowAlloc();
        *v293 = 0;
        _os_log_impl(&dword_0, v291, v292, "PlayMediaDialogProvider going to makePlaySomething for play some music request", v293, 2u);
        v103 = v87;
      }

      v91(v290, v419);
      sub_1A1C48(v413, v103, sub_1B7E94, v412);
      goto LABEL_159;
    }
  }

  if (sub_1D1380())
  {

    v286 = v380;
    v416(v380, v415, v419);
    v287 = sub_2CDFE0();
    v288 = sub_2CE660();
    if (os_log_type_enabled(v287, v288))
    {
      v289 = swift_slowAlloc();
      *v289 = 0;
      _os_log_impl(&dword_0, v287, v288, "PlayMediaDialogProvider going to makePlaySomethingNew for play some new music request", v289, 2u);
      v103 = v87;
    }

    v91(v286, v419);
    sub_1A29E8(v413, v103, sub_1B7E94, v412);
    goto LABEL_159;
  }

  if (!sub_2CE890() && !v240)
  {
    goto LABEL_166;
  }

  v294 = v379;
  v416(v379, v415, v419);
  v295 = sub_2CDFE0();
  v296 = sub_2CE660();
  if (os_log_type_enabled(v295, v296))
  {
    v297 = swift_slowAlloc();
    *v297 = 0;
    _os_log_impl(&dword_0, v295, v296, "PlayMediaDialogProvider going to makeCreateRadio", v297, 2u);
  }

  v91(v294, v419);
  sub_1A2E08(v413, v90, v97, v103, sub_1B7E94, v412);

  return result;
}

uint64_t sub_1AF478(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v75 = a4;
  v78 = a2;
  v70 = a1;
  v72 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v72);
  v73 = &v66 - v9;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v66 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v67 = &v66 - v15;
  v16 = __chkstk_darwin(v14);
  v69 = &v66 - v17;
  v18 = __chkstk_darwin(v16);
  v68 = &v66 - v19;
  v20 = __chkstk_darwin(v18);
  v71 = &v66 - v21;
  __chkstk_darwin(v20);
  v23 = &v66 - v22;
  v24 = qword_34BF58;
  v76 = a5;

  v77 = a6;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  v26 = v11;
  v27 = *(v11 + 16);
  v28 = v10;
  v27(v23, v25, v10);
  v29 = sub_2CDFE0();
  v30 = sub_2CE670();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_0, v29, v30, "PlayMediaDialogProvider#makeInterstitialDialog", v31, 2u);
  }

  v32 = *(v26 + 8);
  v74 = v26 + 8;
  v32(v23, v28);
  sub_35E0(a3 + 16, a3[19]);
  if ((sub_2CC430() & 1) != 0 && (sub_2CB640() & 1) == 0 && sub_2CE810())
  {
    sub_35E0(a3 + 26, a3[29]);
    if ((sub_2CBE50() & 1) == 0)
    {
      v62 = v66;
      v27(v66, v25, v28);
      v63 = sub_2CDFE0();
      v64 = sub_2CE690();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_0, v63, v64, "PlayMediaDialogProvider#makeInterstitialDialog suppressing dialog: pym enabled, not-CarPlay, and new playback producing but mode does not require dialoging - no templating dialog", v65, 2u);
      }

      v37 = v62;
      goto LABEL_13;
    }
  }

  v80 = v78;
  sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  if (sub_2CC120())
  {
    v33 = v71;
    v27(v71, v25, v28);
    v34 = sub_2CDFE0();
    v35 = sub_2CE690();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_0, v34, v35, "PlayMediaDialogProvider#makeIntentHandledDialog suppressing dialog: User just accepted TCC initiated from the HomePod for an SFA request. Skipping dialog in makePreHandleIntentDialog and producing it in makePostHandleIntentDialog", v36, 2u);
    }

    v37 = v33;
LABEL_13:
    v38 = v28;
LABEL_23:
    v32(v37, v38);
    v45 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) + 48);
    v46 = v73;
    *(v46 + v45) = sub_196098();
    swift_storeEnumTagMultiPayload();
    sub_29A218(v46, v75, v76, v77);
    sub_30B8(v46, &unk_3519A0, &qword_2D0980);
    goto LABEL_24;
  }

  sub_35E0(a3 + 16, a3[19]);
  v39 = v28;
  if (sub_2CC4B0() & 1) == 0 && (sub_2CB630())
  {
    v40 = v67;
    v27(v67, v25, v28);
    v41 = sub_2CDFE0();
    v42 = sub_2CE690();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = "PlayMediaDialogProvider#makeInterstitialDialog suppressing dialog: skipping interstitial for ATV";
LABEL_21:
      _os_log_impl(&dword_0, v41, v42, v44, v43, 2u);

      goto LABEL_22;
    }

    goto LABEL_22;
  }

  sub_35E0(a3 + 16, a3[19]);
  if (sub_2CC510())
  {
    v40 = v68;
    v27(v68, v25, v28);
    v41 = sub_2CDFE0();
    v42 = sub_2CE690();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = "PlayMediaDialogProvider#makeInterstitialDialog suppressing dialog evaluation due to defaults override";
      goto LABEL_21;
    }

LABEL_22:

    v37 = v40;
    v38 = v28;
    goto LABEL_23;
  }

  v48 = v69;
  v27(v69, v25, v28);
  v49 = v70;

  v50 = sub_2CDFE0();
  v51 = sub_2CE690();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v73 = v39;
    v54 = v53;
    v79 = v49;
    v80 = v53;
    *v52 = 136315138;
    sub_2CCFB0();
    sub_1B7EB0(&qword_34C170, &type metadata accessor for App, &protocol conformance descriptor for App);
    v55 = sub_2CEE70();
    v57 = sub_3F08(v55, v56, &v80);

    *(v52 + 4) = v57;
    _os_log_impl(&dword_0, v50, v51, "PlayMediaDialogProvider#makeInterstitialDialog for app: %s", v52, 0xCu);
    sub_306C(v54);

    v58 = v48;
    v59 = v73;
  }

  else
  {

    v58 = v48;
    v59 = v39;
  }

  v32(v58, v59);
  v60 = v76;

  v61 = v77;

  sub_1ABFB8(1, v49, v78, a3, v75, v60, v61);

LABEL_24:
}

uint64_t sub_1AFCC0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v179 = a6;
  v180 = a5;
  v186 = a4;
  v187 = a3;
  v185 = a2;
  v183 = a1;
  v190 = sub_2CA130();
  v192 = *(v190 - 8);
  __chkstk_darwin(v190);
  v177 = &v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CE000();
  v188 = *(v7 - 8);
  v189 = v7;
  v8 = __chkstk_darwin(v7);
  v173 = &v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v174 = &v158 - v10;
  v11 = sub_2C98F0();
  v193 = *(v11 - 1);
  v194 = v11;
  v12 = __chkstk_darwin(v11);
  v184 = &v158 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v167 = &v158 - v14;
  v15 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v16 = __chkstk_darwin(v15 - 8);
  v168 = &v158 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v169 = &v158 - v18;
  v19 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v20 = __chkstk_darwin(v19 - 8);
  v165 = &v158 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v166 = &v158 - v22;
  v23 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v24 = __chkstk_darwin(v23 - 8);
  v164 = &v158 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v163 = &v158 - v26;
  v162 = sub_2CCB20();
  v161 = *(v162 - 8);
  __chkstk_darwin(v162);
  v28 = &v158 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_2CCB30();
  v29 = *(v182 - 8);
  __chkstk_darwin(v182);
  v31 = &v158 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_2CCAC0();
  v32 = *(v181 - 8);
  __chkstk_darwin(v181);
  v34 = &v158 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v35 = __chkstk_darwin(v191);
  v175 = &v158 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v172 = &v158 - v38;
  v39 = __chkstk_darwin(v37);
  v171 = &v158 - v40;
  v41 = __chkstk_darwin(v39);
  v170 = &v158 - v42;
  v43 = __chkstk_darwin(v41);
  v159 = &v158 - v44;
  v45 = __chkstk_darwin(v43);
  v176 = &v158 - v46;
  v47 = __chkstk_darwin(v45);
  v160 = &v158 - v48;
  __chkstk_darwin(v47);
  v50 = &v158 - v49;
  v51 = sub_20410(&unk_3519A0, &qword_2D0980);
  v52 = __chkstk_darwin(v51);
  v178 = (&v158 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v52);
  v55 = (&v158 - v54);
  sub_F3F4(v183, &v158 - v54, &unk_3519A0, &qword_2D0980);
  v183 = v51;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v56 = *v55;
    v57 = v181;
    (*(v32 + 104))(v34, enum case for AdditionalMetricsDescription.ModuleName.pmdp(_:), v181);
    v58 = v182;
    (*(v29 + 104))(v31, enum case for AdditionalMetricsDescription.SourceFunction.postHandleDlg(_:), v182);
    swift_getErrorValue();
    sub_2CEEF0();
    v191 = sub_2CCAE0();

    (*(v29 + 8))(v31, v58);
    (*(v32 + 8))(v34, v57);
    v59 = v185[34];
    v182 = v185[35];
    v185 = sub_35E0(v185 + 31, v59);
    v60 = enum case for ActivityType.failed(_:);
    v61 = sub_2C9C20();
    v62 = *(v61 - 8);
    v63 = v164;
    (*(v62 + 104))(v164, v60, v61);
    v64 = v63;
    (*(v62 + 56))(v63, 0, 1, v61);
    v65 = v165;
    (*(v192 + 56))();
    v66 = *(v193 + 104);
    v66(v184, enum case for SiriKitReliabilityCodes.renderingError(_:), v194);
    if (sub_2CE740())
    {
      v67 = v194;
      (*(v193 + 8))(v184, v194);
      v68 = v168;
      v66(v168, enum case for SiriKitReliabilityCodes.ampServerError(_:), v67);
    }

    else
    {
      v68 = v168;
      (*(v193 + 32))(v168, v184, v194);
    }

    v90 = v188;
    (*(v193 + 56))(v68, 0, 1, v194);
    sub_2CE710();
    sub_2CB4E0();

    sub_30B8(v68, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v65, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v64, &qword_34CB88, &unk_2D0D90);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v91 = v189;
    v92 = sub_3ED0(v189, static Logger.default);
    swift_beginAccess();
    v93 = v173;
    (*(v90 + 16))(v173, v92, v91);
    swift_errorRetain();
    v94 = sub_2CDFE0();
    v95 = sub_2CE680();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = v90;
      v98 = swift_slowAlloc();
      v195 = v98;
      *v96 = 136315138;
      swift_getErrorValue();
      v99 = sub_2CEEF0();
      v101 = sub_3F08(v99, v100, &v195);

      *(v96 + 4) = v101;
      _os_log_impl(&dword_0, v94, v95, "PlayMediaDialogProvider#makeIntentHandledDialog failure: %s", v96, 0xCu);
      sub_306C(v98);

      (*(v97 + 8))(v93, v91);
    }

    else
    {

      (*(v90 + 8))(v93, v91);
    }

    v121 = v178;
    *v178 = v56;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v180(v121);

    v122 = &unk_3519A0;
    v123 = &qword_2D0980;
    v124 = v121;
    return sub_30B8(v124, v122, v123);
  }

  sub_24BE0(v55, v50);
  v69 = v181;
  (*(v32 + 104))(v34, enum case for AdditionalMetricsDescription.ModuleName.pmdp(_:), v181);
  v70 = v182;
  (*(v29 + 104))(v31, enum case for AdditionalMetricsDescription.SourceFunction.postHandleDlg(_:), v182);
  v71 = v161;
  v72 = v162;
  (*(v161 + 104))(v28, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v162);
  v173 = sub_2CCAD0();
  v184 = v73;
  (*(v71 + 8))(v28, v72);
  (*(v29 + 8))(v31, v70);
  (*(v32 + 8))(v34, v69);
  sub_35E0(v185 + 31, v185[34]);
  v74 = enum case for ActivityType.completed(_:);
  v75 = sub_2C9C20();
  v76 = *(v75 - 8);
  v77 = v163;
  (*(v76 + 104))(v163, v74, v75);
  v78 = v77;
  (*(v76 + 56))(v77, 0, 1, v75);
  v185 = v50;
  v79 = v160;
  sub_F3F4(v50, v160, &qword_34C6E8, &unk_2D0FF0);

  v80 = v192;
  v81 = v166;
  v82 = v190;
  (*(v192 + 32))(v166, v79, v190);
  (*(v80 + 56))(v81, 0, 1, v82);
  v83 = *(v193 + 104);
  v84 = v167;
  v83(v167, enum case for SiriKitReliabilityCodes.success(_:), v194);
  if (sub_2CE740())
  {
    v85 = v81;
    v86 = v194;
    (*(v193 + 8))(v84, v194);
    v87 = v169;
    v88 = v86;
    v81 = v85;
    v83(v169, enum case for SiriKitReliabilityCodes.ampServerError(_:), v88);
    v89 = v87;
  }

  else
  {
    v89 = v169;
    (*(v193 + 32))(v169, v84, v194);
  }

  v102 = v189;
  v103 = v176;
  (*(v193 + 56))(v89, 0, 1, v194);
  sub_2CE710();
  sub_2CB4E0();

  sub_30B8(v89, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v81, &qword_34CB80, &unk_2D0B30);
  sub_30B8(v78, &qword_34CB88, &unk_2D0D90);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v104 = sub_3ED0(v102, static Logger.default);
  swift_beginAccess();
  v105 = v188;
  v106 = v174;
  (*(v188 + 16))(v174, v104, v102);
  v107 = v185;
  sub_F3F4(v185, v103, &qword_34C6E8, &unk_2D0FF0);
  v108 = sub_2CDFE0();
  v109 = sub_2CE670();
  if (!os_log_type_enabled(v108, v109))
  {
    sub_30B8(v103, &qword_34C6E8, &unk_2D0FF0);
    v114 = v190;
    goto LABEL_26;
  }

  v110 = swift_slowAlloc();
  *v110 = 67109120;
  v111 = v159;
  sub_F3F4(v103, v159, &qword_34C6E8, &unk_2D0FF0);

  v112 = sub_2CA110();
  v113 = v111;
  v114 = v190;
  (*(v192 + 8))(v113, v190);
  v115 = v112;
  if (!*(v112 + 16))
  {

LABEL_24:
    v120 = 0;
    goto LABEL_25;
  }

  v116 = *(v112 + 32);
  v117 = *(v115 + 40);

  v118 = HIBYTE(v117) & 0xF;
  v119 = (v117 & 0x2000000000000000) == 0;
  v103 = v176;
  if (v119)
  {
    v118 = v116 & 0xFFFFFFFFFFFFLL;
  }

  if (!v118)
  {
    goto LABEL_24;
  }

  v120 = 1;
LABEL_25:
  sub_30B8(v103, &qword_34C6E8, &unk_2D0FF0);
  *(v110 + 4) = v120;
  _os_log_impl(&dword_0, v108, v109, "PlayMediaDialogProvider#makeIntentHandledDialog for app returned speakable dialog?: %{BOOL}d", v110, 8u);

LABEL_26:

  (*(v105 + 8))(v106, v102);
  v125 = v170;
  sub_F3F4(v107, v170, &qword_34C6E8, &unk_2D0FF0);
  v126 = v191;

  sub_2CA0D0();
  v127 = *(v192 + 8);
  v127(v125, v114);
  v128 = v171;
  sub_F3F4(v107, v171, &qword_34C6E8, &unk_2D0FF0);

  sub_2CA100();
  v129 = v114;
  v127(v128, v114);
  v130 = v126;
  sub_2CA0C0();
  v131 = [objc_allocWithZone(DialogExecutionResult) init];
  v132 = v172;
  sub_F3F4(v107, v172, &qword_34C6E8, &unk_2D0FF0);
  v133 = *(v132 + *(v126 + 48));
  v134 = [v133 catId];

  if (!v134)
  {
    sub_2CE270();
    v134 = sub_2CE260();
  }

  v194 = v131;
  [v131 setCatId:v134];

  v135 = v127;
  v127(v132, v129);
  v136 = [objc_allocWithZone(DialogElement) init];
  v137 = v107;
  v138 = v175;
  sub_F3F4(v137, v175, &qword_34C6E8, &unk_2D0FF0);
  v139 = v130;
  v140 = *(v138 + *(v130 + 48));
  v141 = [v140 dialog];

  sub_334A0(0, &qword_34C6D8, DialogElement_ptr);
  v142 = sub_2CE410();

  v143 = v129;
  if (!(v142 >> 62))
  {
    result = *(&dword_10 + (v142 & 0xFFFFFFFFFFFFFF8));
    v145 = v135;
    if (result)
    {
      goto LABEL_30;
    }

LABEL_35:

    goto LABEL_36;
  }

  result = sub_2CEDA0();
  v145 = v135;
  if (!result)
  {
    goto LABEL_35;
  }

LABEL_30:
  if ((v142 & 0xC000000000000001) != 0)
  {
    v146 = sub_2CECD0();
    goto LABEL_33;
  }

  if (*(&dword_10 + (v142 & 0xFFFFFFFFFFFFFF8)))
  {
    v146 = *(v142 + 32);
LABEL_33:
    v147 = v146;

    v148 = [v147 fullPrint];

    sub_2CE270();
    v139 = v191;
LABEL_36:
    v145(v138, v143);
    v149 = sub_2CE260();

    [v136 setFullPrint:v149];

    sub_20410(&unk_351900, &unk_2D0960);
    v150 = swift_allocObject();
    *(v150 + 16) = xmmword_2D0770;
    *(v150 + 32) = v136;
    v151 = v136;
    isa = sub_2CE400().super.isa;

    v153 = v194;
    [v194 setDialog:isa];

    v154 = *(v139 + 48);
    v155 = v178;
    v156 = v177;
    (*(v192 + 16))(v178, v177, v143);
    *(v155 + v154) = v153;
    swift_storeEnumTagMultiPayload();
    v157 = v153;
    v180(v155);

    sub_30B8(v155, &unk_3519A0, &qword_2D0980);
    v145(v156, v143);
    v122 = &qword_34C6E8;
    v123 = &unk_2D0FF0;
    v124 = v185;
    return sub_30B8(v124, v122, v123);
  }

  __break(1u);
  return result;
}

double sub_1B137C(int a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v418 = a4;
  v426 = a2;
  v427 = a3;
  LODWORD(v416) = a1;
  v14 = sub_20410(&qword_353C88, &unk_2D6070);
  v15 = __chkstk_darwin(v14 - 8);
  v404 = &v383 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v410 = &v383 - v17;
  v412 = sub_2CBF80();
  v411 = *(v412 - 8);
  __chkstk_darwin(v412);
  v406 = &v383 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  v20 = __chkstk_darwin(v19 - 8);
  v385 = &v383 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v417 = &v383 - v22;
  v420 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v420);
  v421 = (&v383 - v23);
  v24 = sub_2CE000();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v413 = &v383 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v408 = &v383 - v29;
  v30 = __chkstk_darwin(v28);
  v394 = &v383 - v31;
  v32 = __chkstk_darwin(v30);
  v391 = &v383 - v33;
  v34 = __chkstk_darwin(v32);
  v383 = &v383 - v35;
  v36 = __chkstk_darwin(v34);
  v384 = &v383 - v37;
  v38 = __chkstk_darwin(v36);
  v387 = &v383 - v39;
  v40 = __chkstk_darwin(v38);
  v388 = &v383 - v41;
  v42 = __chkstk_darwin(v40);
  v389 = &v383 - v43;
  v44 = __chkstk_darwin(v42);
  v390 = &v383 - v45;
  v46 = __chkstk_darwin(v44);
  v392 = &v383 - v47;
  v48 = __chkstk_darwin(v46);
  v393 = &v383 - v49;
  v50 = __chkstk_darwin(v48);
  v395 = &v383 - v51;
  v52 = __chkstk_darwin(v50);
  v396 = &v383 - v53;
  v54 = __chkstk_darwin(v52);
  v397 = &v383 - v55;
  v56 = __chkstk_darwin(v54);
  v403 = &v383 - v57;
  v58 = __chkstk_darwin(v56);
  v409 = &v383 - v59;
  v60 = __chkstk_darwin(v58);
  v398 = &v383 - v61;
  v62 = __chkstk_darwin(v60);
  v399 = &v383 - v63;
  v64 = __chkstk_darwin(v62);
  v402 = &v383 - v65;
  v66 = __chkstk_darwin(v64);
  v405 = &v383 - v67;
  v68 = __chkstk_darwin(v66);
  v400 = &v383 - v69;
  v70 = __chkstk_darwin(v68);
  v407 = &v383 - v71;
  v72 = __chkstk_darwin(v70);
  v401 = &v383 - v73;
  v74 = __chkstk_darwin(v72);
  v414 = &v383 - v75;
  v76 = __chkstk_darwin(v74);
  v415 = &v383 - v77;
  __chkstk_darwin(v76);
  v79 = &v383 - v78;
  v80 = swift_allocObject();
  v80[2] = a5;
  v80[3] = a6;
  v80[4] = a7;
  v80[5] = a8;
  *&v425 = a8;
  v80[6] = a9;
  v80[7] = a10;
  v81 = v80;
  v82 = qword_34BF58;
  v422 = a5;

  v423 = a6;

  v419 = a7;
  v424 = a9;

  if (v82 != -1)
  {
    swift_once();
  }

  v83 = sub_3ED0(v24, static Logger.default);
  swift_beginAccess();
  v84 = *(v25 + 16);
  v428 = v83;
  v429 = v84;
  v430 = v25 + 16;
  (v84)(v79, v83, v24);
  v85 = v427;
  v86 = sub_2CDFE0();
  v87 = sub_2CE670();

  v88 = os_log_type_enabled(v86, v87);
  v89 = v24;
  v431 = v25;
  if (!v88)
  {
    v92 = v85;

    v90 = v89;
    v427 = *(v25 + 8);
    (v427)(v79, v89);
    goto LABEL_22;
  }

  v90 = v24;
  v91 = swift_slowAlloc();
  *&v433 = swift_slowAlloc();
  *v91 = 136315394;
  v92 = v85;
  v93 = [v85 privatePlayMediaIntentData];
  v386 = v81;
  if (v93 && (v94 = v93, v95 = [v93 internalSignals], v94, v95))
  {
    v96 = sub_2CE410();
  }

  else
  {
    v96 = 0;
  }

  *&v432[0] = v96;
  v81 = sub_20410(&qword_353C98, &unk_2D6A00);
  v97 = sub_2CE2A0();
  v99 = sub_3F08(v97, v98, &v433);

  *(v91 + 4) = v99;
  *(v91 + 12) = 2080;
  v100 = [v92 mediaItems];
  if (!v100)
  {
    goto LABEL_20;
  }

  v101 = v100;
  sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v102 = sub_2CE410();

  if (!(v102 >> 62))
  {
    if (*(&dword_10 + (v102 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_12;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (!sub_2CEDA0())
  {
    goto LABEL_19;
  }

LABEL_12:
  if ((v102 & 0xC000000000000001) == 0)
  {
    if (*(&dword_10 + (v102 & 0xFFFFFFFFFFFFFF8)))
    {
      v103 = *(v102 + 32);
      goto LABEL_15;
    }

    __break(1u);
LABEL_164:
    v386 = v81;

    v308 = [v425 mediaSearch];
    if (v308)
    {
      v309 = v308;
      v310 = [v308 sortOrder];

      if (v310 == &dword_8)
      {
        v311 = [v425 mediaSearch];
        if (v311)
        {
          v312 = v311;
          v313 = [v311 mediaName];

          if (v313)
          {

            v314 = [v425 mediaSearch];
            if (!v314 || (v315 = v314, v316 = [v314 reference], v315, v316 != &dword_0 + 1))
            {

              (v429)(v383, v428, v424);
              v372 = sub_2CDFE0();
              v373 = sub_2CE660();
              if (os_log_type_enabled(v372, v373))
              {
                v374 = swift_slowAlloc();
                *v374 = 0;
                _os_log_impl(&dword_0, v372, v373, "PlayMediaDialogProvider going to makePlayMusicLikeArtist", v374, 2u);
              }

              (v427)(v383, v424);
              sub_1A46BC(v426, v425, sub_1B7EA0, v386);
              goto LABEL_157;
            }
          }
        }
      }
    }

    v317 = &qword_330770;
    v318 = 2;
    do
    {
      v319 = v318;
      if (v318-- == 0)
      {
        break;
      }

      v321 = *v317++;
    }

    while (v321 != v417);
    v322 = [v425 mediaSearch];
    if (v322 && (v323 = v322, v324 = [v322 sortOrder], v323, v324 == &dword_0 + 3))
    {
      if (!v319)
      {
        goto LABEL_184;
      }
    }

    else
    {
      v325 = [v425 mediaSearch];
      if (!v325 || (v326 = v325, v327 = [v325 sortOrder], v326, !v319) || v327 != &dword_4)
      {
LABEL_184:
        v331 = sub_1D14A0();
        if (v332)
        {
          v333 = v331;
          v334 = v332;

          v335 = HIBYTE(v334) & 0xF;
          if ((v334 & 0x2000000000000000) == 0)
          {
            v335 = v333 & 0xFFFFFFFFFFFFLL;
          }

          v336 = v335 == 0;
        }

        else
        {
          v336 = 1;
        }

        v337 = sub_1D15EC();
        if (v338)
        {
          v339 = v337 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v339 = 0;
        }

        if (v338)
        {
          v340 = v338;
        }

        else
        {
          v340 = 0xE000000000000000;
        }

        if ((v340 & 0x2000000000000000) != 0)
        {
          v341 = HIBYTE(v340) & 0xF;
        }

        else
        {
          v341 = v339;
        }

        if (v341)
        {
          v342 = sub_2CCF90();
          v344 = v343;
          v345 = sub_2CBE10();
          if (!v344)
          {

            goto LABEL_210;
          }

          if (v342 == v345 && v344 == v346)
          {
          }

          else
          {
            v347 = sub_2CEEA0();

            if ((v347 & 1) == 0)
            {
              goto LABEL_210;
            }
          }

          if (!v336 || _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v425, &off_330780))
          {

            (v429)(v384, v428, v424);
            v348 = sub_2CDFE0();
            v349 = sub_2CE660();
            if (os_log_type_enabled(v348, v349))
            {
              v350 = swift_slowAlloc();
              *v350 = 0;
              _os_log_impl(&dword_0, v348, v349, "PlayMediaDialogProvider going to nonSubscriberRadioFallback for genre query with broadcast radio result", v350, 2u);
            }

            (v427)(v384, v424);
            sub_1A4044(v426, v425, sub_1B7EA0, v386);
            goto LABEL_157;
          }
        }

LABEL_210:
        v351 = v336;
        if (sub_2CE710() != 5)
        {
          v351 = sub_2CE710() == 19 && v336;
        }

        if (sub_2CE710() == 16)
        {
          if ((v351 | v336))
          {
            goto LABEL_219;
          }
        }

        else if (v351)
        {
LABEL_219:

          (v429)(v387, v428, v424);
          v355 = sub_2CDFE0();
          v356 = sub_2CE660();
          if (os_log_type_enabled(v355, v356))
          {
            v357 = swift_slowAlloc();
            *v357 = 0;
            _os_log_impl(&dword_0, v355, v356, "PlayMediaDialogProvider going to makeEditorialPlaylist for playlist/radio", v357, 2u);
          }

          (v427)(v387, v424);
          sub_1A39E0(v426, v425, sub_1B7EA0, v386);
          goto LABEL_157;
        }

        if (!v341 || (v352 = [v425 mediaSearch]) == 0 || (v353 = v352, v354 = objc_msgSend(v352, "sortOrder"), v353, v354 != &dword_4 + 1))
        {
          if (v417 != &dword_0 + 3 || !v91)
          {
            goto LABEL_228;
          }

          v358 = HIBYTE(v91) & 0xF;
          if ((v91 & 0x2000000000000000) == 0)
          {
            v358 = v422 & 0xFFFFFFFFFFFFLL;
          }

          if (v358)
          {

            v359 = 0;
            v360 = 0xE000000000000000;
          }

          else
          {
LABEL_228:
            v359 = v422;
            v360 = v91;
            v422 = v423;
            v91 = v102;
          }

          sub_20410(&unk_353120, &unk_2D0B50);
          v361 = swift_allocObject();
          v362 = v361;
          *(v361 + 16) = xmmword_2D5FC0;
          *(v361 + 32) = 0x656C746974;
          v363 = v422;
          if (!v91)
          {
            v363 = 0;
          }

          v364 = 0xE000000000000000;
          if (v91)
          {
            v365 = v91;
          }

          else
          {
            v365 = 0xE000000000000000;
          }

          *(v361 + 40) = 0xE500000000000000;
          *(v361 + 48) = v363;
          *(v361 + 56) = v365;
          *(v361 + 72) = &type metadata for String;
          *(v361 + 80) = 0x747369747261;
          if (v360)
          {
            v366 = v359;
          }

          else
          {
            v366 = 0;
          }

          if (v360)
          {
            v364 = v360;
          }

          *(v361 + 88) = 0xE600000000000000;
          *(v361 + 96) = v366;
          *(v361 + 104) = v364;
          *(v361 + 120) = &type metadata for String;
          *(v361 + 128) = 0x61526576694C7369;
          *(v361 + 136) = 0xEB000000006F6964;
          *(v361 + 144) = !v336;
          *(v361 + 168) = &type metadata for Bool;
          *(v361 + 176) = 0xD00000000000001BLL;
          *(v361 + 184) = 0x80000000002DE780;

          v367 = v425;
          *(v362 + 192) = [v425 playbackQueueLocation] == &dword_0 + 2;
          *(v362 + 216) = &type metadata for Bool;
          *(v362 + 224) = 0xD00000000000001CLL;
          *(v362 + 232) = 0x80000000002DE7A0;
          *(v362 + 240) = [v367 playbackQueueLocation] == &dword_0 + 3;
          *(v362 + 264) = &type metadata for Bool;
          *(v362 + 272) = 0x667568536E4F7369;
          *(v362 + 280) = 0xEB00000000656C66;
          v368 = [v367 backingStore];
          objc_opt_self();
          v369 = swift_dynamicCastObjCClass();
          if (v369)
          {
            v370 = [v369 playShuffled];

            v371 = v370 & v336;
          }

          else
          {

            v371 = 0;
          }

          *(v362 + 288) = v371;
          *(v362 + 312) = &type metadata for Bool;
          *(v362 + 320) = 0x657065526E4F7369;
          *(v362 + 328) = 0xEA00000000007461;
          v375 = [v425 playbackRepeatMode] == &dword_0 + 2 || objc_msgSend(v425, "playbackRepeatMode") == &dword_0 + 3;
          *(v362 + 336) = v375;
          *(v362 + 360) = &type metadata for Bool;
          strcpy((v362 + 368), "isAppSpecified");
          *(v362 + 383) = -18;
          if (sub_2CC0D0())
          {
            sub_2CC0B0();
          }

          else
          {
            (*(v411 + 56))(v385, 1, 1, v412);
          }

          v376 = v426;
          v377 = v425;
          v378 = v385;
          v379 = sub_197DC8(v426, v425, (v418 + 128), v385);
          sub_30B8(v378, &qword_34DD30, &unk_2D1BC0);
          *(v362 + 384) = v379 & 1;
          *(v362 + 408) = &type metadata for Bool;
          strcpy((v362 + 416), "isPersonalized");
          *(v362 + 431) = -18;
          v380 = sub_1D16A0();
          *(v362 + 456) = &type metadata for Bool;
          *(v362 + 432) = v380 & 1;
          v381 = sub_112C0(v362);
          swift_setDeallocating();
          sub_20410(&qword_34CBA0, &unk_2D0FE0);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          *(&v434 + 1) = v415;
          *&v435 = &off_3381B8;
          *&v433 = v377;
          v382 = v377;
          sub_239644(v381, v376, &v433, sub_1B7EA0, v386);

          sub_30B8(&v433, &qword_34C6C0, &qword_2D0710);
          goto LABEL_49;
        }

        goto LABEL_219;
      }
    }

    (v429)(v388, v428, v424);
    v328 = sub_2CDFE0();
    v329 = sub_2CE660();
    if (os_log_type_enabled(v328, v329))
    {
      v330 = swift_slowAlloc();
      *v330 = 0;
      _os_log_impl(&dword_0, v328, v329, "PlayMediaDialogProvider going to makeBestWorst for non-empty best or worst", v330, 2u);
    }

    (v427)(v388, v424);
    sub_1A32FC(v426, v425, sub_1B7EA0, v386);
    goto LABEL_157;
  }

  v103 = sub_2CECD0();
LABEL_15:
  v104 = v103;

  v105 = [v104 privateMediaItemValueData];

  if (v105)
  {
    v106 = [v105 internalSignals];

    if (v106)
    {
      v105 = sub_2CE410();

      goto LABEL_21;
    }

LABEL_20:
    v105 = 0;
  }

LABEL_21:
  *&v432[0] = v105;
  v107 = sub_2CE2A0();
  v109 = sub_3F08(v107, v108, &v433);

  *(v91 + 14) = v109;
  _os_log_impl(&dword_0, v86, v87, "PlayMediaDialogProvider: makePlayDialog with intent internal signals: %s and first media item signals: %s", v91, 0x16u);
  swift_arrayDestroy();

  v427 = *(v431 + 8);
  (v427)(v79, v90);
  v81 = v386;
LABEL_22:
  v110 = v426;
  v111 = sub_2CCF90();
  if (!v112)
  {
    v122 = v415;
    (v429)(v415, v428, v90);
    v123 = sub_2CDFE0();
    v124 = sub_2CE680();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      *v125 = 0;
      _os_log_impl(&dword_0, v123, v124, "Missing app bundle identifier", v125, 2u);
    }

    (v427)(v122, v90);
    sub_10C40();
    v126 = swift_allocError();
    *v127 = 0xD00000000000001DLL;
    v127[1] = 0x80000000002DD6F0;
    v128 = v421;
    *v421 = v126;
    swift_storeEnumTagMultiPayload();
    sub_1AFCC0(v128, v422, v423, v419, v425, v424);
    v129 = &unk_3519A0;
    v130 = &qword_2D0980;
    v131 = v128;
    goto LABEL_48;
  }

  v113 = v111;
  v114 = v112;
  v115 = v92;
  v116 = sub_2CCF90();
  v118 = v117;
  v119 = sub_2CBE10();
  v121 = v90;
  if (v118)
  {
    if (v116 == v119 && v118 == v120)
    {

LABEL_34:

      goto LABEL_35;
    }

    v132 = sub_2CEEA0();

    if (v132)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  if (v113 == sub_2CBE30() && v114 == v133)
  {
    goto LABEL_34;
  }

  v141 = sub_2CEEA0();

  if ((v141 & 1) == 0)
  {
    v135 = v418;
    v136 = v417;
    if (v416)
    {
      goto LABEL_39;
    }

LABEL_44:
    v137 = 0;
LABEL_45:

    v142 = v414;
    (v429)(v414, v428, v90);
    v143 = sub_2CDFE0();
    v144 = sub_2CE660();
    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      *v145 = 67109376;
      *(v145 + 4) = v137;
      *(v145 + 8) = 1024;
      *(v145 + 10) = v137;
      _os_log_impl(&dword_0, v143, v144, "PlayMediaDialogProvider suppressing dialog: interstitial?:%{BOOL}d renderInHandle: %{BOOL}d", v145, 0xEu);
    }

LABEL_47:

    (v427)(v142, v90);
    v146 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) + 48);
    v147 = v421;
    *(v147 + v146) = sub_196098();
    swift_storeEnumTagMultiPayload();
    sub_1AFCC0(v147, v422, v423, v419, v425, v424);
    v129 = &unk_3519A0;
    v130 = &qword_2D0980;
    v131 = v147;
LABEL_48:
    sub_30B8(v131, v129, v130);
LABEL_49:

    return result;
  }

LABEL_35:
  v134 = sub_2CE830();
  if ((v416 & 1) == 0)
  {
    v135 = v418;
    v136 = v417;
    if (v134)
    {
      goto LABEL_39;
    }

    goto LABEL_44;
  }

  v135 = v418;
  v136 = v417;
  if (v134)
  {
    v137 = 1;
    goto LABEL_45;
  }

LABEL_39:
  *&v433 = v115;
  v138 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v417 = sub_2CBFA0();
  v416 = sub_2CC0E0();
  if (sub_2CC0D0())
  {
    sub_2CC0B0();

    v139 = v411;
    v140 = v412;
    if ((*(v411 + 48))(v136, 1, v412))
    {
      sub_30B8(v136, &qword_34DD30, &unk_2D1BC0);
    }

    else
    {
      v149 = *(v139 + 16);
      v414 = v114;
      v150 = v115;
      v151 = v135;
      v152 = v110;
      v153 = v81;
      v154 = v406;
      v149(v406, v136, v140);
      sub_30B8(v136, &qword_34DD30, &unk_2D1BC0);
      v155 = sub_2CBF50();
      v156 = v140;
      v157 = v155;
      v158 = v154;
      v81 = v153;
      v110 = v152;
      v135 = v151;
      v115 = v150;
      (*(v139 + 8))(v158, v156);
      if (v157)
      {

        v159 = v401;
        (v429)(v401, v428, v121);
        v160 = sub_2CDFE0();
        v161 = sub_2CE690();
        if (os_log_type_enabled(v160, v161))
        {
          v162 = swift_slowAlloc();
          *v162 = 0;
          _os_log_impl(&dword_0, v160, v161, "PlayMediaDialogProvider#makePlayDialog first successful prediction special-case dialog", v162, 2u);
        }

        (v427)(v159, v121);
        sub_1A0698(v110, v115, sub_1B7EA0, v81);
        goto LABEL_49;
      }
    }
  }

  sub_35E0(v135 + 16, v135[19]);
  v163 = sub_2CC430();
  v415 = v138;
  if ((v163 & 1) == 0 || !sub_2CE810())
  {
    v174 = v413;
    (v429)(v413, v428, v121);
    v175 = sub_2CDFE0();
    v176 = sub_2CE690();
    if (os_log_type_enabled(v175, v176))
    {
      v177 = swift_slowAlloc();
      *v177 = 0;
      v178 = "PlayMediaDialogProvider#makePlayDialog pym not enabled";
      goto LABEL_67;
    }

LABEL_69:

    v90 = v121;
    (v427)(v174, v121);
    goto LABEL_70;
  }

  v164 = v407;
  v90 = v121;
  (v429)(v407, v428, v121);
  v165 = sub_2CDFE0();
  v166 = sub_2CE690();
  if (os_log_type_enabled(v165, v166))
  {
    v167 = swift_slowAlloc();
    *v167 = 0;
    _os_log_impl(&dword_0, v165, v166, "PlayMediaDialogProvider#makePlayDialog pym enabled", v167, 2u);
    v164 = v407;
  }

  (v427)(v164, v121);
  if ((v417 - 1) >= 2)
  {
    v174 = v400;
    (v429)(v400, v428, v121);
    v175 = sub_2CDFE0();
    v202 = sub_2CE690();
    if (!os_log_type_enabled(v175, v202))
    {
      goto LABEL_69;
    }

    v203 = swift_slowAlloc();
    *v203 = 134217984;
    *(v203 + 4) = v417;
    v178 = "PlayMediaDialogProvider#makePlayDialog pym first item type: %ld not supported for speak suppression";
    v179 = v202;
    v180 = v175;
    v181 = v203;
    v182 = 12;
    goto LABEL_68;
  }

  (v429)(v405, v428, v121);
  v168 = sub_2CDFE0();
  v169 = sub_2CE690();
  if (os_log_type_enabled(v168, v169))
  {
    v170 = swift_slowAlloc();
    *v170 = 0;
    _os_log_impl(&dword_0, v168, v169, "PlayMediaDialogProvider#makePlayDialog pym found song/album resolved item", v170, 2u);
  }

  (v427)(v405, v121);
  v171 = [v115 mediaSearch];
  if (v171)
  {
    v172 = v171;
    v173 = [v171 sortOrder];

    if (v173)
    {
      v174 = v399;
      v429();
      v175 = sub_2CDFE0();
      v176 = sub_2CE690();
      if (os_log_type_enabled(v175, v176))
      {
        v177 = swift_slowAlloc();
        *v177 = 0;
        v178 = "PlayMediaDialogProvider#makePlayDialog pym found sort order present -- not supported for speak suppression";
LABEL_67:
        v179 = v176;
        v180 = v175;
        v181 = v177;
        v182 = 2;
LABEL_68:
        _os_log_impl(&dword_0, v180, v179, v178, v181, v182);

        goto LABEL_69;
      }

      goto LABEL_69;
    }
  }

  (v429)(v402, v428, v121);
  v204 = sub_2CDFE0();
  v205 = sub_2CE670();
  if (os_log_type_enabled(v204, v205))
  {
    v206 = swift_slowAlloc();
    *v206 = 0;
    _os_log_impl(&dword_0, v204, v205, "PlayMediaDialogProvider#makePlayDialog pym sort order unknown", v206, 2u);
  }

  (v427)(v402, v121);
  sub_2CBC60();
  sub_35E0(&v433, *(&v434 + 1));
  v207 = sub_2CBE50();
  sub_306C(&v433);
  if ((v207 & 1) == 0)
  {

    v142 = v398;
    (v429)(v398, v428, v121);
    v143 = sub_2CDFE0();
    v208 = sub_2CE690();
    if (os_log_type_enabled(v143, v208))
    {
      v209 = swift_slowAlloc();
      *v209 = 0;
      _os_log_impl(&dword_0, v143, v208, "PlayMediaDialogProvider#makePlayDialog suppressing dialog pym short-circuiting dialog evaluation in display-driven mode", v209, 2u);
    }

    goto LABEL_47;
  }

LABEL_70:
  sub_20410(&qword_353C90, &unk_2D6080);
  v183 = swift_allocObject();
  v425 = xmmword_2D0090;
  *(v183 + 16) = xmmword_2D0090;
  sub_EEAC((v135 + 21), v183 + 40);
  *(v183 + 32) = 4;
  sub_1B7DE4(v183 + 32, v432);
  if (sub_1A0B34())
  {

    v433 = v432[0];
    v434 = v432[1];
    v435 = v432[2];
    v184 = v135[15];
    v185 = v408;
    (v429)(v408, v428, v90);
    v186 = sub_2CDFE0();
    v187 = sub_2CE690();
    if (os_log_type_enabled(v186, v187))
    {
      v188 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      *&v432[0] = v189;
      *v188 = 136315138;
      *(v188 + 4) = sub_3F08(0xD00000000000001ALL, 0x80000000002DA500, v432);
      _os_log_impl(&dword_0, v186, v187, "DialogMemoryUseCase#%s#execute Executing...", v188, 0xCu);
      sub_306C(v189);
    }

    (v427)(v185, v90);
    sub_280EB4(v110, v115, v184, sub_1B7EA0, v81);
    sub_35E0(&v433 + 1, v435);
    sub_281390();
    sub_1B7E40(&v433);
    goto LABEL_49;
  }

  sub_1B7E40(v432);
  swift_setDeallocating();
  sub_1B7E40(v183 + 32);
  swift_deallocClassInstance();
  if (sub_1D0718(v110))
  {

    v190 = [v115 privatePlayMediaIntentData];
    if (v190)
    {
      v191 = v190;
      v192 = [v190 pegasusMetaData];

      v193 = v404;
      if (v192)
      {
        v194 = sub_2C8DC0();
        v196 = v195;
      }

      else
      {
        v194 = 0;
        v196 = 0xF000000000000000;
      }
    }

    else
    {
      v194 = 0;
      v196 = 0xF000000000000000;
      v193 = v404;
    }

    v221 = v410;
    sub_2C9210();
    sub_5267C(v194, v196);
    sub_F3F4(v221, v193, &qword_353C88, &unk_2D6070);
    v222 = sub_2C9240();
    v223 = *(v222 - 8);
    if ((*(v223 + 48))(v193, 1, v222) == 1)
    {
      sub_30B8(v193, &qword_353C88, &unk_2D6070);
      v224 = 0;
      v225 = 0;
    }

    else
    {
      v226 = sub_2C9220();
      v227 = v193;
      v224 = v226;
      v225 = v228;
      (*(v223 + 8))(v227, v222);
    }

    (v429)(v409, v428, v90);

    v229 = sub_2CDFE0();
    v230 = sub_2CE660();

    if (os_log_type_enabled(v229, v230))
    {
      v231 = swift_slowAlloc();
      v232 = swift_slowAlloc();
      *v231 = 138412290;
      if (v225)
      {
        sub_10C40();
        swift_allocError();
        *v233 = v224;
        v233[1] = v225;
        v234 = _swift_stdlib_bridgeErrorToNSError();
        v235 = v234;
      }

      else
      {
        v234 = 0;
        v235 = 0;
      }

      *(v231 + 4) = v234;
      *v232 = v235;
      _os_log_impl(&dword_0, v229, v230, "PlayMediaDialogProvider going to makeNlsContainer for %@", v231, 0xCu);
      sub_30B8(v232, &unk_34FC00, &unk_2D0150);
    }

    else
    {
    }

    (v427)(v409, v90);
    sub_1A0DE4(v110, v115, sub_1B7EA0, v81);
    v129 = &qword_353C88;
    v130 = &unk_2D6070;
    v131 = v410;
    goto LABEL_48;
  }

  v197 = sub_1D2364(&off_32FF60);
  sub_F1954(&unk_32FF80);
  if ((v197 & 1) != 0 || _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v115, &off_32FF90))
  {

    v198 = v403;
    (v429)(v403, v428, v90);
    v199 = sub_2CDFE0();
    v200 = sub_2CE660();
    if (os_log_type_enabled(v199, v200))
    {
      v201 = swift_slowAlloc();
      *v201 = 0;
      _os_log_impl(&dword_0, v199, v200, "PlayMediaDialogProvider going to isPodcastPromotion for storytelling", v201, 2u);
    }

    (v427)(v198, v90);
    sub_1A0F78(v110, v115, sub_1B7EA0, v81);
    goto LABEL_49;
  }

  v424 = v90;
  sub_334A0(0, &qword_353110, NSNumber_ptr);
  v210 = sub_2CE720();
  isa = [v210 isAppCorrection];

  if (!isa)
  {
    isa = sub_2CEB10(0).super.super.isa;
  }

  v212 = sub_2CEB10(0).super.super.isa;
  v213 = sub_2CEB30();

  v214 = v415;
  if ((v213 & 1) == 0)
  {

    v236 = v397;
    v237 = v424;
    (v429)(v397, v428, v424);
    v238 = sub_2CDFE0();
    v239 = sub_2CE660();
    if (os_log_type_enabled(v238, v239))
    {
      v240 = swift_slowAlloc();
      *v240 = 0;
      _os_log_impl(&dword_0, v238, v239, "PlayMediaDialogProvider going to makePlayWithAppCorrection for app correction", v240, 2u);
    }

    (v427)(v236, v237);
    v241 = sub_112C0(_swiftEmptyArrayStorage);
    *(&v434 + 1) = v214;
    *&v435 = &off_3381B8;
    *&v433 = v115;
    v242 = v115;
    sub_240C20(v241, v110, &v433, sub_1B7EA0, v81);
    goto LABEL_113;
  }

  v215 = sub_1D0CF0();
  v216 = v424;
  if (v215)
  {

    v217 = v396;
    (v429)(v396, v428, v216);
    v218 = sub_2CDFE0();
    v219 = sub_2CE660();
    if (os_log_type_enabled(v218, v219))
    {
      v220 = swift_slowAlloc();
      *v220 = 0;
      _os_log_impl(&dword_0, v218, v219, "PlayMediaDialogProvider going to makeWholeLibrary when playback item identifier is to play whole library", v220, 2u);
    }

    (v427)(v217, v216);
    sub_1A1C48(v110, v115, sub_1B7EA0, v81);
    goto LABEL_49;
  }

  v423 = sub_1D1060();
  v102 = v243;
  v422 = sub_1D119C();
  v91 = v244;
  v245 = v115;
  v246 = sub_2CE8E0() && sub_2CE840();
  if (!(v102 | v91))
  {
    v247 = [v245 mediaSearch];
    if (v247)
    {
      v248 = v247;
      v249 = v110;
      v250 = [v247 reference];

      v251 = v250 == &dword_0 + 1;
      v110 = v249;
      v216 = v424;
      v252 = v251;
      if ((v252 | v246))
      {
        goto LABEL_123;
      }
    }

    else if (v246)
    {
      goto LABEL_123;
    }

    v278 = v394;
    (v429)(v394, v428, v216);
    v279 = sub_2CDFE0();
    v280 = sub_2CE660();
    if (os_log_type_enabled(v279, v280))
    {
      v281 = swift_slowAlloc();
      *v281 = 0;
      _os_log_impl(&dword_0, v279, v280, "PlayMediaDialogProvider going to makePlayDialogEmptyContentTitle for empty title and artist", v281, 2u);
    }

    (v427)(v278, v216);
    v282 = [v245 playbackQueueLocation] == &dword_0 + 2;
    v283 = [v245 playbackQueueLocation] == &dword_0 + 3;
    sub_20410(&unk_353120, &unk_2D0B50);
    v284 = swift_allocObject();
    *(v284 + 32) = 0xD00000000000001BLL;
    *(v284 + 40) = 0x80000000002DE780;
    *(v284 + 16) = xmmword_2D0E40;
    *(v284 + 48) = v282;
    *(v284 + 72) = &type metadata for Bool;
    *(v284 + 80) = 0xD00000000000001CLL;
    *(v284 + 88) = 0x80000000002DE7A0;
    *(v284 + 120) = &type metadata for Bool;
    *(v284 + 96) = v283;
    v285 = sub_112C0(v284);
    swift_setDeallocating();
    sub_20410(&qword_34CBA0, &unk_2D0FE0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(&v434 + 1) = v214;
    *&v435 = &off_3381B8;
    *&v433 = v245;
    v286 = v245;
    sub_23A7A4(v285, v110, &v433, sub_1B7EA0, v81);

    goto LABEL_113;
  }

LABEL_123:
  sub_1D04A0();
  if (v253)
  {

    v254 = v395;
    (v429)(v395, v428, v216);
    v255 = sub_2CDFE0();
    v256 = sub_2CE660();
    if (os_log_type_enabled(v255, v256))
    {
      v257 = swift_slowAlloc();
      *v257 = 0;
      _os_log_impl(&dword_0, v255, v256, "PlayMediaDialogProvider going to makeNewsPodcast for news request", v257, 2u);
    }

    (v427)(v254, v216);
    v258 = sub_1D05E4();
    v260 = v259;
    sub_20410(&unk_353120, &unk_2D0B50);
    v261 = swift_allocObject();
    *(v261 + 16) = v425;
    *(v261 + 32) = 0xD000000000000016;
    v262 = v261 + 32;
    *(v261 + 72) = &type metadata for String;
    if (v260)
    {
      v263 = v258;
    }

    else
    {
      v263 = 0;
    }

    v264 = 0xE000000000000000;
    if (v260)
    {
      v264 = v260;
    }

    *(v261 + 40) = 0x80000000002DE7C0;
    *(v261 + 48) = v263;
    *(v261 + 56) = v264;
    v265 = sub_112C0(v261);
    swift_setDeallocating();
    sub_30B8(v262, &qword_34CBA0, &unk_2D0FE0);
    swift_deallocClassInstance();
    *(&v434 + 1) = v214;
    *&v435 = &off_3381B8;
    *&v433 = v245;
    v266 = v245;
    sub_23C944(v265, v110, &v433, sub_1B7EA0, v81);

LABEL_113:

    v129 = &qword_34C6C0;
    v130 = &qword_2D0710;
    v131 = &v433;
    goto LABEL_48;
  }

  *&v425 = v245;
  if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v245, &off_3306B0) && v417 == &dword_4 + 2)
  {

    v267 = v393;
    (v429)(v393, v428, v216);
    v268 = sub_2CDFE0();
    v269 = sub_2CE660();
    if (os_log_type_enabled(v268, v269))
    {
      v270 = swift_slowAlloc();
      *v270 = 0;
      _os_log_impl(&dword_0, v268, v269, "PlayMediaDialogProvider going to makeNewsPodcast for news request", v270, 2u);
    }

    (v427)(v267, v216);
    sub_1A1FBC(v110, v425, sub_1B7EA0, v81);
LABEL_157:

    return result;
  }

  v271 = &qword_330700;
  v272 = 4;
  while (v272)
  {
    v273 = *v271++;
    --v272;
    if (v273 == v417)
    {

      v274 = v392;
      (v429)(v392, v428, v216);
      v275 = sub_2CDFE0();
      v276 = sub_2CE660();
      if (os_log_type_enabled(v275, v276))
      {
        v277 = swift_slowAlloc();
        *v277 = 0;
        _os_log_impl(&dword_0, v275, v276, "PlayMediaDialogProvider going to makePodcast", v277, 2u);
      }

      (v427)(v274, v216);
      sub_1A2614(v110, v425, sub_1B7EA0, v81);
      goto LABEL_157;
    }
  }

  v287 = v425;
  v288 = sub_1D2364(&off_330720);
  sub_F1954(&unk_330740);
  if (v288)
  {
    v289 = [v287 mediaSearch];
    if (!v289 || (v290 = v289, v291 = [v289 sortOrder], v290, v291 != &dword_0 + 1))
    {

      v298 = v391;
      v299 = v424;
      (v429)(v391, v428, v424);
      v300 = sub_2CDFE0();
      v301 = sub_2CE660();
      if (os_log_type_enabled(v300, v301))
      {
        v302 = swift_slowAlloc();
        *v302 = 0;
        _os_log_impl(&dword_0, v300, v301, "PlayMediaDialogProvider going to makePlaySomething for play some music request", v302, 2u);
      }

      (v427)(v298, v299);
      sub_1A1C48(v426, v425, sub_1B7EA0, v81);
      goto LABEL_157;
    }
  }

  if (sub_1D1380())
  {

    v292 = v390;
    (v429)(v390, v428, v424);
    v293 = sub_2CDFE0();
    v294 = sub_2CE660();
    v295 = os_log_type_enabled(v293, v294);
    v296 = v426;
    if (v295)
    {
      v297 = swift_slowAlloc();
      *v297 = 0;
      _os_log_impl(&dword_0, v293, v294, "PlayMediaDialogProvider going to makePlaySomethingNew for play some new music request", v297, 2u);
    }

    (v427)(v292, v424);
    sub_1A29E8(v296, v425, sub_1B7EA0, v81);
    goto LABEL_157;
  }

  if (!sub_2CE890() && !v246)
  {
    goto LABEL_164;
  }

  v303 = v389;
  v304 = v424;
  (v429)(v389, v428, v424);
  v305 = sub_2CDFE0();
  v306 = sub_2CE660();
  if (os_log_type_enabled(v305, v306))
  {
    v307 = swift_slowAlloc();
    *v307 = 0;
    _os_log_impl(&dword_0, v305, v306, "PlayMediaDialogProvider going to makeCreateRadio", v307, 2u);
  }

  (v427)(v303, v304);
  sub_1A2E08(v426, v423, v102, v425, sub_1B7EA0, v81);

  return result;
}

double sub_1B4918(int a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(uint64_t, __n128), uint64_t a6, uint64_t a7)
{
  v413 = a2;
  LODWORD(v405) = a1;
  v12 = sub_20410(&qword_353C88, &unk_2D6070);
  v13 = __chkstk_darwin(v12 - 8);
  v395 = &v373 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v400 = &v373 - v15;
  v402 = sub_2CBF80();
  v401 = *(v402 - 8);
  __chkstk_darwin(v402);
  v396 = &v373 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  v18 = __chkstk_darwin(v17 - 8);
  v376 = &v373 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v406 = &v373 - v20;
  v407 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v407);
  v408 = (&v373 - v21);
  v22 = sub_2CE000();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v403 = &v373 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v398 = &v373 - v27;
  v28 = __chkstk_darwin(v26);
  v384 = &v373 - v29;
  v30 = __chkstk_darwin(v28);
  v381 = &v373 - v31;
  v32 = __chkstk_darwin(v30);
  v374 = &v373 - v33;
  v34 = __chkstk_darwin(v32);
  v375 = &v373 - v35;
  v36 = __chkstk_darwin(v34);
  v377 = &v373 - v37;
  v38 = __chkstk_darwin(v36);
  v378 = &v373 - v39;
  v40 = __chkstk_darwin(v38);
  v379 = &v373 - v41;
  v42 = __chkstk_darwin(v40);
  v380 = &v373 - v43;
  v44 = __chkstk_darwin(v42);
  v382 = &v373 - v45;
  v46 = __chkstk_darwin(v44);
  v383 = &v373 - v47;
  v48 = __chkstk_darwin(v46);
  v385 = &v373 - v49;
  v50 = __chkstk_darwin(v48);
  v386 = &v373 - v51;
  v52 = __chkstk_darwin(v50);
  v387 = &v373 - v53;
  v54 = __chkstk_darwin(v52);
  v393 = &v373 - v55;
  v56 = __chkstk_darwin(v54);
  v399 = &v373 - v57;
  v58 = __chkstk_darwin(v56);
  v388 = &v373 - v59;
  v60 = __chkstk_darwin(v58);
  v389 = &v373 - v61;
  v62 = __chkstk_darwin(v60);
  v392 = &v373 - v63;
  v64 = __chkstk_darwin(v62);
  v394 = &v373 - v65;
  v66 = __chkstk_darwin(v64);
  v390 = &v373 - v67;
  v68 = __chkstk_darwin(v66);
  v397 = &v373 - v69;
  v70 = __chkstk_darwin(v68);
  v391 = &v373 - v71;
  v72 = __chkstk_darwin(v70);
  v404 = &v373 - v73;
  v74 = __chkstk_darwin(v72);
  v76 = &v373 - v75;
  __chkstk_darwin(v74);
  v78 = &v373 - v77;
  v79 = swift_allocObject();
  v409 = a5;
  v79[2] = a5;
  v79[3] = a6;
  v80 = v79;
  v79[4] = a7;
  v81 = qword_34BF58;
  v410 = a6;

  *&v411 = a7;

  if (v81 != -1)
  {
    swift_once();
  }

  v82 = sub_3ED0(v22, static Logger.default);
  swift_beginAccess();
  v83 = *(v23 + 16);
  v415 = v82;
  v416 = v83;
  v417 = v23 + 16;
  v83(v78, v82, v22);
  v84 = v22;
  v85 = a3;
  v86 = sub_2CDFE0();
  v87 = sub_2CE670();

  v88 = os_log_type_enabled(v86, v87);
  v419 = v84;
  v89 = a4;
  v412 = v80;
  v414 = v85;
  v418 = v23;
  if (!v88)
  {

    v91 = *(v23 + 8);
    v91(v78, v84);
    v97 = v84;
    goto LABEL_23;
  }

  v90 = swift_slowAlloc();
  v91 = swift_slowAlloc();
  *&v421 = v91;
  *v90 = 136315394;
  v92 = [v85 privatePlayMediaIntentData];
  if (v92 && (v93 = v92, v94 = [v92 internalSignals], v93, v94))
  {
    v95 = v89;
    v96 = sub_2CE410();
  }

  else
  {
    v95 = v89;
    v96 = 0;
  }

  *&v420[0] = v96;
  sub_20410(&qword_353C98, &unk_2D6A00);
  v98 = sub_2CE2A0();
  v100 = sub_3F08(v98, v99, &v421);

  *(v90 + 4) = v100;
  *(v90 + 12) = 2080;
  v101 = [v414 mediaItems];
  if (!v101)
  {
    goto LABEL_19;
  }

  v102 = v101;
  sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v103 = sub_2CE410();

  if (v103 >> 62)
  {
    v104 = sub_2CEDA0();
  }

  else
  {
    v104 = *(&dword_10 + (v103 & 0xFFFFFFFFFFFFFF8));
  }

  v89 = v95;
  v97 = v419;
  if (!v104)
  {

    v107 = 0;
    goto LABEL_22;
  }

  if ((v103 & 0xC000000000000001) == 0)
  {
    if (*(&dword_10 + (v103 & 0xFFFFFFFFFFFFFF8)))
    {
      v95 = v89;
      v105 = *(v103 + 32);
      goto LABEL_16;
    }

    __break(1u);
LABEL_166:
    v408 = v90;

    v298 = [v103 mediaSearch];
    if (v298)
    {
      v299 = v298;
      v300 = [v298 sortOrder];

      if (v300 == &dword_8)
      {
        v301 = [v87 mediaSearch];
        if (v301)
        {
          v302 = v301;
          v303 = [v301 mediaName];

          if (v303)
          {

            v304 = [v87 mediaSearch];
            if (!v304 || (v305 = v304, v306 = [v304 reference], v305, v306 != &dword_0 + 1))
            {

              v416(v374, v415, v419);
              v363 = sub_2CDFE0();
              v364 = sub_2CE660();
              if (os_log_type_enabled(v363, v364))
              {
                v365 = swift_slowAlloc();
                *v365 = 0;
                _os_log_impl(&dword_0, v363, v364, "PlayMediaDialogProvider going to makePlayMusicLikeArtist", v365, 2u);
              }

              v91(v374, v419);
              sub_1A46BC(v413, v87, sub_1B7DD8, v412);
              goto LABEL_159;
            }
          }
        }
      }
    }

    v307 = &qword_330870;
    v308 = 2;
    do
    {
      v309 = v308;
      if (v308-- == 0)
      {
        break;
      }

      v311 = *v307++;
    }

    while (v311 != v406);
    v312 = [v87 mediaSearch];
    if (v312 && (v313 = v312, v314 = [v312 sortOrder], v313, v314 == &dword_0 + 3))
    {
      if (!v309)
      {
        goto LABEL_186;
      }
    }

    else
    {
      v315 = [v87 mediaSearch];
      if (!v315 || (v316 = v315, v317 = [v315 sortOrder], v316, !v309) || v317 != &dword_4)
      {
LABEL_186:
        v321 = sub_1D14A0();
        if (v322)
        {
          v323 = v321;
          v324 = v322;

          v325 = HIBYTE(v324) & 0xF;
          if ((v324 & 0x2000000000000000) == 0)
          {
            v325 = v323 & 0xFFFFFFFFFFFFLL;
          }

          v326 = v325 == 0;
        }

        else
        {
          v326 = 1;
        }

        LODWORD(v409) = v326;
        v327 = sub_1D15EC();
        if (v328)
        {
          v329 = v327 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v329 = 0;
        }

        if (v328)
        {
          v330 = v328;
        }

        else
        {
          v330 = 0xE000000000000000;
        }

        if ((v330 & 0x2000000000000000) != 0)
        {
          v331 = HIBYTE(v330) & 0xF;
        }

        else
        {
          v331 = v329;
        }

        if (v331)
        {
          v332 = sub_2CCF90();
          v334 = v333;
          v335 = sub_2CBE10();
          if (!v334)
          {

            goto LABEL_212;
          }

          if (v332 == v335 && v334 == v336)
          {
          }

          else
          {
            v337 = sub_2CEEA0();

            if ((v337 & 1) == 0)
            {
              goto LABEL_212;
            }
          }

          if (!v409 || _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v87, &off_330880))
          {

            v416(v375, v415, v419);
            v338 = sub_2CDFE0();
            v339 = sub_2CE660();
            if (os_log_type_enabled(v338, v339))
            {
              v340 = swift_slowAlloc();
              *v340 = 0;
              _os_log_impl(&dword_0, v338, v339, "PlayMediaDialogProvider going to nonSubscriberRadioFallback for genre query with broadcast radio result", v340, 2u);
            }

            v91(v375, v419);
            sub_1A4044(v413, v87, sub_1B7DD8, v412);
            goto LABEL_159;
          }
        }

LABEL_212:
        v341 = sub_2CE710();
        v342 = v409;
        if (v341 != 5)
        {
          v342 = (sub_2CE710() == 19) & v409;
        }

        if (sub_2CE710() == 16)
        {
          if ((v342 | v409))
          {
            goto LABEL_221;
          }
        }

        else if (v342)
        {
          goto LABEL_221;
        }

        if (!v331 || (v343 = [v87 mediaSearch]) == 0 || (v344 = v343, v345 = objc_msgSend(v343, "sortOrder"), v344, v345 != &dword_4 + 1))
        {
          v349 = v409 ^ 1;
          if (v406 != &dword_0 + 3 || !v76)
          {
            goto LABEL_230;
          }

          v350 = HIBYTE(v76) & 0xF;
          if ((v76 & 0x2000000000000000) == 0)
          {
            v350 = v410 & 0xFFFFFFFFFFFFLL;
          }

          if (v350)
          {

            v351 = 0;
            v352 = 0xE000000000000000;
          }

          else
          {
LABEL_230:
            v351 = v410;
            v352 = v76;
            v410 = v408;
            v76 = v97;
          }

          sub_20410(&unk_353120, &unk_2D0B50);
          v353 = swift_allocObject();
          v354 = v353;
          *(v353 + 16) = xmmword_2D5FC0;
          *(v353 + 32) = 0x656C746974;
          v355 = v410;
          if (!v76)
          {
            v355 = 0;
          }

          v356 = 0xE000000000000000;
          if (v76)
          {
            v357 = v76;
          }

          else
          {
            v357 = 0xE000000000000000;
          }

          *(v353 + 40) = 0xE500000000000000;
          *(v353 + 48) = v355;
          *(v353 + 56) = v357;
          *(v353 + 72) = &type metadata for String;
          *(v353 + 80) = 0x747369747261;
          if (v352)
          {
            v358 = v351;
          }

          else
          {
            v358 = 0;
          }

          if (v352)
          {
            v356 = v352;
          }

          *(v353 + 88) = 0xE600000000000000;
          *(v353 + 96) = v358;
          *(v353 + 104) = v356;
          *(v353 + 120) = &type metadata for String;
          *(v353 + 128) = 0x61526576694C7369;
          *(v353 + 136) = 0xEB000000006F6964;
          *(v353 + 144) = v349;
          *(v353 + 168) = &type metadata for Bool;
          *(v353 + 176) = 0xD00000000000001BLL;
          *(v353 + 184) = 0x80000000002DE780;

          *(v354 + 192) = [v87 playbackQueueLocation] == &dword_0 + 2;
          *(v354 + 216) = &type metadata for Bool;
          *(v354 + 224) = 0xD00000000000001CLL;
          *(v354 + 232) = 0x80000000002DE7A0;
          *(v354 + 240) = [v87 playbackQueueLocation] == &dword_0 + 3;
          *(v354 + 264) = &type metadata for Bool;
          *(v354 + 272) = 0x667568536E4F7369;
          *(v354 + 280) = 0xEB00000000656C66;
          v359 = [v87 backingStore];
          objc_opt_self();
          v360 = swift_dynamicCastObjCClass();
          if (v360)
          {
            v361 = [v360 playShuffled];

            v362 = v361 & v409;
          }

          else
          {

            v362 = 0;
          }

          *(v354 + 288) = v362;
          *(v354 + 312) = &type metadata for Bool;
          *(v354 + 320) = 0x657065526E4F7369;
          *(v354 + 328) = 0xEA00000000007461;
          v366 = [v87 playbackRepeatMode] == &dword_0 + 2 || objc_msgSend(v87, "playbackRepeatMode") == &dword_0 + 3;
          *(v354 + 336) = v366;
          *(v354 + 360) = &type metadata for Bool;
          strcpy((v354 + 368), "isAppSpecified");
          *(v354 + 383) = -18;
          if (sub_2CC0D0())
          {
            sub_2CC0B0();
          }

          else
          {
            (*(v401 + 56))(v376, 1, 1, v402);
          }

          v367 = v413;
          v368 = v376;
          v369 = sub_197DC8(v413, v87, (v411 + 128), v376);
          sub_30B8(v368, &qword_34DD30, &unk_2D1BC0);
          *(v354 + 384) = v369 & 1;
          *(v354 + 408) = &type metadata for Bool;
          strcpy((v354 + 416), "isPersonalized");
          *(v354 + 431) = -18;
          v370 = sub_1D16A0();
          *(v354 + 456) = &type metadata for Bool;
          *(v354 + 432) = v370 & 1;
          v371 = sub_112C0(v354);
          swift_setDeallocating();
          sub_20410(&qword_34CBA0, &unk_2D0FE0);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          *(&v422 + 1) = v404;
          *&v423 = &off_3381B8;
          *&v421 = v87;
          v372 = v87;
          sub_239644(v371, v367, &v421, sub_1B7DD8, v412);

          goto LABEL_147;
        }

LABEL_221:

        v416(v377, v415, v419);
        v346 = sub_2CDFE0();
        v347 = sub_2CE660();
        if (os_log_type_enabled(v346, v347))
        {
          v348 = swift_slowAlloc();
          *v348 = 0;
          _os_log_impl(&dword_0, v346, v347, "PlayMediaDialogProvider going to makeEditorialPlaylist for playlist/radio", v348, 2u);
        }

        v91(v377, v419);
        sub_1A39E0(v413, v87, sub_1B7DD8, v412);
        goto LABEL_159;
      }
    }

    v416(v378, v415, v419);
    v318 = sub_2CDFE0();
    v319 = sub_2CE660();
    if (os_log_type_enabled(v318, v319))
    {
      v320 = swift_slowAlloc();
      *v320 = 0;
      _os_log_impl(&dword_0, v318, v319, "PlayMediaDialogProvider going to makeBestWorst for non-empty best or worst", v320, 2u);
    }

    v91(v378, v419);
    sub_1A32FC(v413, v87, sub_1B7DD8, v412);
    goto LABEL_159;
  }

  v95 = v89;
  v105 = sub_2CECD0();
LABEL_16:
  v106 = v105;

  v107 = [v106 privateMediaItemValueData];

  if (v107)
  {
    v108 = [v107 internalSignals];

    if (v108)
    {
      v107 = sub_2CE410();

      goto LABEL_20;
    }

LABEL_19:
    v107 = 0;
  }

LABEL_20:
  v89 = v95;
  v97 = v419;
LABEL_22:
  *&v420[0] = v107;
  v109 = sub_2CE2A0();
  v111 = sub_3F08(v109, v110, &v421);

  *(v90 + 14) = v111;
  _os_log_impl(&dword_0, v86, v87, "PlayMediaDialogProvider: makePlayDialog with intent internal signals: %s and first media item signals: %s", v90, 0x16u);
  swift_arrayDestroy();

  v91 = *(v418 + 8);
  v91(v78, v97);
LABEL_23:
  v112 = v413;
  v113 = sub_2CCF90();
  if (!v114)
  {
    v416(v76, v415, v97);
    v122 = sub_2CDFE0();
    v123 = sub_2CE680();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      *v124 = 0;
      _os_log_impl(&dword_0, v122, v123, "Missing app bundle identifier", v124, 2u);
    }

    v91(v76, v419);
    sub_10C40();
    v125 = swift_allocError();
    *v126 = 0xD00000000000001DLL;
    v126[1] = 0x80000000002DD6F0;
    v127 = v408;
    *v408 = v125;
    swift_storeEnumTagMultiPayload();
    sub_2BE324(v127, v409, v410, v411);
    v128 = &unk_3519A0;
    v129 = &qword_2D0980;
    v130 = v127;
    goto LABEL_50;
  }

  v115 = v113;
  v116 = v114;
  v117 = sub_2CCF90();
  v119 = v118;
  v120 = sub_2CBE10();
  if (v119)
  {
    if (v117 == v120 && v119 == v121)
    {

LABEL_35:

      goto LABEL_36;
    }

    v131 = sub_2CEEA0();

    if (v131)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  if (v115 == sub_2CBE30() && v116 == v132)
  {
    goto LABEL_35;
  }

  v139 = sub_2CEEA0();

  if ((v139 & 1) == 0)
  {
    v87 = v414;
    v134 = v406;
    if (v405)
    {
      goto LABEL_40;
    }

LABEL_45:
    v135 = 0;
    goto LABEL_46;
  }

LABEL_36:
  v87 = v414;
  v133 = sub_2CE830();
  if ((v405 & 1) == 0)
  {
    v134 = v406;
    if (v133)
    {
      goto LABEL_40;
    }

    goto LABEL_45;
  }

  v134 = v406;
  if (v133)
  {
    v135 = 1;
LABEL_46:

    v140 = v404;
    v416(v404, v415, v97);
    v141 = sub_2CDFE0();
    v142 = sub_2CE660();
    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      *v143 = 67109376;
      *(v143 + 4) = v135;
      *(v143 + 8) = 1024;
      *(v143 + 10) = v135;
      _os_log_impl(&dword_0, v141, v142, "PlayMediaDialogProvider suppressing dialog: interstitial?:%{BOOL}d renderInHandle: %{BOOL}d", v143, 0xEu);
    }

    v91(v140, v97);
LABEL_49:
    v144 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) + 48);
    v145 = v408;
    *(v145 + v144) = sub_196098();
    swift_storeEnumTagMultiPayload();
    sub_2BE324(v145, v409, v410, v411);
    v128 = &unk_3519A0;
    v129 = &qword_2D0980;
    v130 = v145;
LABEL_50:
    sub_30B8(v130, v128, v129);
LABEL_51:

    return result;
  }

LABEL_40:
  *&v421 = v87;
  v136 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v406 = sub_2CBFA0();
  v405 = sub_2CC0E0();
  if (sub_2CC0D0())
  {
    sub_2CC0B0();

    v137 = v401;
    v138 = v402;
    if ((*(v401 + 48))(v134, 1, v402))
    {
      sub_30B8(v134, &qword_34DD30, &unk_2D1BC0);
    }

    else
    {
      v147 = v396;
      (*(v137 + 16))(v396, v134, v138);
      sub_30B8(v134, &qword_34DD30, &unk_2D1BC0);
      v148 = sub_2CBF50();
      v149 = v138;
      v150 = v148;
      (*(v137 + 8))(v147, v149);
      if (v150)
      {

        v151 = v391;
        v416(v391, v415, v419);
        v152 = sub_2CDFE0();
        v153 = sub_2CE690();
        if (os_log_type_enabled(v152, v153))
        {
          v154 = swift_slowAlloc();
          *v154 = 0;
          _os_log_impl(&dword_0, v152, v153, "PlayMediaDialogProvider#makePlayDialog first successful prediction special-case dialog", v154, 2u);
        }

        v91(v151, v419);
        sub_1A0698(v112, v87, sub_1B7DD8, v412);
        goto LABEL_51;
      }
    }
  }

  sub_35E0(v89 + 16, v89[19]);
  v155 = sub_2CC430();
  v404 = v136;
  if ((v155 & 1) == 0 || !sub_2CE810())
  {
    v169 = v403;
    v416(v403, v415, v419);
    v170 = sub_2CDFE0();
    v171 = sub_2CE690();
    if (os_log_type_enabled(v170, v171))
    {
      v172 = swift_slowAlloc();
      *v172 = 0;
      v173 = "PlayMediaDialogProvider#makePlayDialog pym not enabled";
      goto LABEL_69;
    }

LABEL_71:

    v91(v169, v419);
    goto LABEL_72;
  }

  v156 = v397;
  v416(v397, v415, v419);
  v157 = sub_2CDFE0();
  v158 = sub_2CE690();
  if (os_log_type_enabled(v157, v158))
  {
    v159 = swift_slowAlloc();
    *v159 = 0;
    _os_log_impl(&dword_0, v157, v158, "PlayMediaDialogProvider#makePlayDialog pym enabled", v159, 2u);
    v156 = v397;
  }

  v160 = v419;
  v91(v156, v419);
  if ((v406 - 1) >= 2)
  {
    v169 = v390;
    v416(v390, v415, v160);
    v170 = sub_2CDFE0();
    v206 = sub_2CE690();
    if (!os_log_type_enabled(v170, v206))
    {
      goto LABEL_71;
    }

    v207 = swift_slowAlloc();
    *v207 = 134217984;
    *(v207 + 4) = v406;
    v173 = "PlayMediaDialogProvider#makePlayDialog pym first item type: %ld not supported for speak suppression";
    v174 = v206;
    v175 = v170;
    v176 = v207;
    v177 = 12;
    goto LABEL_70;
  }

  v161 = v394;
  v416(v394, v415, v160);
  v162 = sub_2CDFE0();
  v163 = sub_2CE690();
  if (os_log_type_enabled(v162, v163))
  {
    v164 = swift_slowAlloc();
    *v164 = 0;
    _os_log_impl(&dword_0, v162, v163, "PlayMediaDialogProvider#makePlayDialog pym found song/album resolved item", v164, 2u);
    v161 = v394;
  }

  v165 = v419;
  v91(v161, v419);
  v166 = [v87 mediaSearch];
  if (v166)
  {
    v167 = v166;
    v168 = [v166 sortOrder];

    v165 = v419;
    if (v168)
    {
      v169 = v389;
      v416(v389, v415, v419);
      v170 = sub_2CDFE0();
      v171 = sub_2CE690();
      if (os_log_type_enabled(v170, v171))
      {
        v172 = swift_slowAlloc();
        *v172 = 0;
        v173 = "PlayMediaDialogProvider#makePlayDialog pym found sort order present -- not supported for speak suppression";
LABEL_69:
        v174 = v171;
        v175 = v170;
        v176 = v172;
        v177 = 2;
LABEL_70:
        _os_log_impl(&dword_0, v175, v174, v173, v176, v177);

        goto LABEL_71;
      }

      goto LABEL_71;
    }
  }

  v416(v392, v415, v165);
  v216 = sub_2CDFE0();
  v217 = sub_2CE670();
  if (os_log_type_enabled(v216, v217))
  {
    v218 = swift_slowAlloc();
    *v218 = 0;
    _os_log_impl(&dword_0, v216, v217, "PlayMediaDialogProvider#makePlayDialog pym sort order unknown", v218, 2u);
  }

  v91(v392, v419);
  sub_2CBC60();
  sub_35E0(&v421, *(&v422 + 1));
  v219 = sub_2CBE50();
  sub_306C(&v421);
  if ((v219 & 1) == 0)
  {

    v220 = v388;
    v416(v388, v415, v419);
    v221 = sub_2CDFE0();
    v222 = sub_2CE690();
    if (os_log_type_enabled(v221, v222))
    {
      v223 = swift_slowAlloc();
      *v223 = 0;
      _os_log_impl(&dword_0, v221, v222, "PlayMediaDialogProvider#makePlayDialog suppressing dialog pym short-circuiting dialog evaluation in display-driven mode", v223, 2u);
    }

    v91(v220, v419);
    goto LABEL_49;
  }

LABEL_72:
  sub_20410(&qword_353C90, &unk_2D6080);
  v178 = swift_allocObject();
  v411 = xmmword_2D0090;
  *(v178 + 16) = xmmword_2D0090;
  sub_EEAC((v89 + 21), v178 + 40);
  *(v178 + 32) = 4;
  sub_1B7DE4(v178 + 32, v420);
  v179 = v87;
  if (sub_1A0B34())
  {

    v421 = v420[0];
    v422 = v420[1];
    v423 = v420[2];
    v180 = v89[15];
    v181 = v398;
    v182 = v419;
    v416(v398, v415, v419);
    v183 = sub_2CDFE0();
    v184 = sub_2CE690();
    if (os_log_type_enabled(v183, v184))
    {
      v185 = v87;
      v186 = swift_slowAlloc();
      v187 = swift_slowAlloc();
      *&v420[0] = v187;
      *v186 = 136315138;
      *(v186 + 4) = sub_3F08(0xD00000000000001ALL, 0x80000000002DA500, v420);
      _os_log_impl(&dword_0, v183, v184, "DialogMemoryUseCase#%s#execute Executing...", v186, 0xCu);
      sub_306C(v187);

      v179 = v185;
    }

    v91(v181, v182);
    sub_280EB4(v112, v179, v180, sub_1B7DD8, v412);
    sub_35E0(&v421 + 1, v423);
    sub_281390();
    sub_1B7E40(&v421);
    goto LABEL_51;
  }

  sub_1B7E40(v420);
  swift_setDeallocating();
  sub_1B7E40(v178 + 32);
  swift_deallocClassInstance();
  if (sub_1D0718(v112))
  {

    v188 = [v87 privatePlayMediaIntentData];
    if (v188 && (v189 = v188, v190 = [v188 pegasusMetaData], v189, v190))
    {
      v191 = sub_2C8DC0();
      v193 = v192;
    }

    else
    {
      v191 = 0;
      v193 = 0xF000000000000000;
    }

    v199 = v87;
    v200 = v400;
    sub_2C9210();
    sub_5267C(v191, v193);
    v201 = v395;
    sub_F3F4(v200, v395, &qword_353C88, &unk_2D6070);
    v202 = sub_2C9240();
    v203 = *(v202 - 8);
    if ((*(v203 + 48))(v201, 1, v202) == 1)
    {
      sub_30B8(v201, &qword_353C88, &unk_2D6070);
      v204 = 0;
      v205 = 0;
    }

    else
    {
      v204 = sub_2C9220();
      v205 = v208;
      (*(v203 + 8))(v201, v202);
    }

    v416(v399, v415, v419);

    v209 = sub_2CDFE0();
    v210 = sub_2CE660();

    if (os_log_type_enabled(v209, v210))
    {
      v211 = swift_slowAlloc();
      v212 = swift_slowAlloc();
      *v211 = 138412290;
      if (v205)
      {
        sub_10C40();
        swift_allocError();
        *v213 = v204;
        v213[1] = v205;
        v214 = _swift_stdlib_bridgeErrorToNSError();
        v215 = v214;
      }

      else
      {
        v214 = 0;
        v215 = 0;
      }

      *(v211 + 4) = v214;
      *v212 = v215;
      _os_log_impl(&dword_0, v209, v210, "PlayMediaDialogProvider going to makeNlsContainer for %@", v211, 0xCu);
      sub_30B8(v212, &unk_34FC00, &unk_2D0150);

      v112 = v413;
    }

    else
    {
    }

    v91(v399, v419);
    sub_1A0DE4(v112, v199, sub_1B7DD8, v412);
    v128 = &qword_353C88;
    v129 = &unk_2D6070;
    v130 = v400;
    goto LABEL_50;
  }

  v194 = sub_1D2364(&off_32FF60);
  sub_F1954(&unk_32FF80);
  if ((v194 & 1) != 0 || _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v87, &off_32FF90))
  {

    v195 = v393;
    v416(v393, v415, v419);
    v196 = sub_2CDFE0();
    v197 = sub_2CE660();
    if (os_log_type_enabled(v196, v197))
    {
      v198 = swift_slowAlloc();
      *v198 = 0;
      _os_log_impl(&dword_0, v196, v197, "PlayMediaDialogProvider going to isPodcastPromotion for storytelling", v198, 2u);
    }

    v91(v195, v419);
    sub_1A0F78(v112, v179, sub_1B7DD8, v412);
    goto LABEL_51;
  }

  sub_334A0(0, &qword_353110, NSNumber_ptr);
  v224 = sub_2CE720();
  isa = [v224 isAppCorrection];

  if (!isa)
  {
    isa = sub_2CEB10(0).super.super.isa;
  }

  v226 = sub_2CEB10(0).super.super.isa;
  v227 = sub_2CEB30();

  if ((v227 & 1) == 0)
  {

    v232 = v387;
    v416(v387, v415, v419);
    v233 = sub_2CDFE0();
    v234 = sub_2CE660();
    if (os_log_type_enabled(v233, v234))
    {
      v235 = swift_slowAlloc();
      *v235 = 0;
      _os_log_impl(&dword_0, v233, v234, "PlayMediaDialogProvider going to makePlayWithAppCorrection for app correction", v235, 2u);
    }

    v91(v232, v419);
    v236 = sub_112C0(_swiftEmptyArrayStorage);
    *(&v422 + 1) = v404;
    *&v423 = &off_3381B8;
    *&v421 = v87;
    v237 = v87;
    sub_240C20(v236, v112, &v421, sub_1B7DD8, v412);

    sub_30B8(&v421, &qword_34C6C0, &qword_2D0710);
    goto LABEL_51;
  }

  v103 = v87;
  if (sub_1D0CF0())
  {

    v228 = v386;
    v416(v386, v415, v419);
    v229 = sub_2CDFE0();
    v230 = sub_2CE660();
    if (os_log_type_enabled(v229, v230))
    {
      v231 = swift_slowAlloc();
      *v231 = 0;
      _os_log_impl(&dword_0, v229, v230, "PlayMediaDialogProvider going to makeWholeLibrary when playback item identifier is to play whole library", v231, 2u);
    }

    v91(v228, v419);
    sub_1A1C48(v112, v103, sub_1B7DD8, v412);
    goto LABEL_51;
  }

  v90 = sub_1D1060();
  v97 = v238;
  v410 = sub_1D119C();
  v76 = v239;
  v240 = sub_2CE8E0() && sub_2CE840();
  if (!(v97 | v76))
  {
    v241 = [v87 mediaSearch];
    if (v241)
    {
      v242 = v241;
      v243 = v89;
      v244 = [v241 reference];

      v245 = v244 == &dword_0 + 1;
      v89 = v243;
      v103 = v87;
      v246 = v245;
      if ((v246 | v240))
      {
        goto LABEL_123;
      }
    }

    else if (v240)
    {
      goto LABEL_123;
    }

    v272 = v384;
    v416(v384, v415, v419);
    v273 = sub_2CDFE0();
    v274 = sub_2CE660();
    if (os_log_type_enabled(v273, v274))
    {
      v275 = swift_slowAlloc();
      *v275 = 0;
      _os_log_impl(&dword_0, v273, v274, "PlayMediaDialogProvider going to makePlayDialogEmptyContentTitle for empty title and artist", v275, 2u);
    }

    v91(v272, v419);
    v276 = [v103 playbackQueueLocation] == &dword_0 + 2;
    v277 = v103;
    v278 = [v103 playbackQueueLocation] == &dword_0 + 3;
    sub_20410(&unk_353120, &unk_2D0B50);
    v279 = swift_allocObject();
    *(v279 + 32) = 0xD00000000000001BLL;
    *(v279 + 40) = 0x80000000002DE780;
    *(v279 + 16) = xmmword_2D0E40;
    *(v279 + 48) = v276;
    *(v279 + 72) = &type metadata for Bool;
    *(v279 + 80) = 0xD00000000000001CLL;
    *(v279 + 88) = 0x80000000002DE7A0;
    *(v279 + 120) = &type metadata for Bool;
    *(v279 + 96) = v278;
    v280 = sub_112C0(v279);
    swift_setDeallocating();
    sub_20410(&qword_34CBA0, &unk_2D0FE0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(&v422 + 1) = v404;
    *&v423 = &off_3381B8;
    *&v421 = v277;
    v281 = v277;
    sub_23A7A4(v280, v413, &v421, sub_1B7DD8, v412);

LABEL_147:

    v128 = &qword_34C6C0;
    v129 = &qword_2D0710;
    v130 = &v421;
    goto LABEL_50;
  }

LABEL_123:
  sub_1D04A0();
  if (v247)
  {

    v248 = v385;
    v416(v385, v415, v419);
    v249 = sub_2CDFE0();
    v250 = sub_2CE660();
    if (os_log_type_enabled(v249, v250))
    {
      v251 = swift_slowAlloc();
      *v251 = 0;
      _os_log_impl(&dword_0, v249, v250, "PlayMediaDialogProvider going to makeNewsPodcast for news request", v251, 2u);
      v103 = v87;
    }

    v91(v248, v419);
    v252 = sub_1D05E4();
    v254 = v253;
    sub_20410(&unk_353120, &unk_2D0B50);
    v255 = swift_allocObject();
    *(v255 + 16) = v411;
    *(v255 + 32) = 0xD000000000000016;
    v256 = v255 + 32;
    *(v255 + 72) = &type metadata for String;
    if (v254)
    {
      v257 = v252;
    }

    else
    {
      v257 = 0;
    }

    v258 = 0xE000000000000000;
    if (v254)
    {
      v258 = v254;
    }

    *(v255 + 40) = 0x80000000002DE7C0;
    *(v255 + 48) = v257;
    *(v255 + 56) = v258;
    v259 = sub_112C0(v255);
    swift_setDeallocating();
    sub_30B8(v256, &qword_34CBA0, &unk_2D0FE0);
    swift_deallocClassInstance();
    *(&v422 + 1) = v404;
    *&v423 = &off_3381B8;
    *&v421 = v103;
    v260 = v103;
    sub_23C944(v259, v413, &v421, sub_1B7DD8, v412);

    sub_30B8(&v421, &qword_34C6C0, &qword_2D0710);
    goto LABEL_51;
  }

  if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v103, &off_3307B0) && v406 == &dword_4 + 2)
  {

    v261 = v383;
    v416(v383, v415, v419);
    v262 = sub_2CDFE0();
    v263 = sub_2CE660();
    if (os_log_type_enabled(v262, v263))
    {
      v264 = swift_slowAlloc();
      *v264 = 0;
      _os_log_impl(&dword_0, v262, v263, "PlayMediaDialogProvider going to makeNewsPodcast for news request", v264, 2u);
      v103 = v87;
    }

    v91(v261, v419);
    sub_1A1FBC(v413, v103, sub_1B7DD8, v412);
LABEL_159:

    return result;
  }

  v265 = &qword_330800;
  v266 = 4;
  while (v266)
  {
    v267 = *v265++;
    --v266;
    if (v267 == v406)
    {

      v268 = v382;
      v416(v382, v415, v419);
      v269 = sub_2CDFE0();
      v270 = sub_2CE660();
      if (os_log_type_enabled(v269, v270))
      {
        v271 = swift_slowAlloc();
        *v271 = 0;
        _os_log_impl(&dword_0, v269, v270, "PlayMediaDialogProvider going to makePodcast", v271, 2u);
        v103 = v87;
      }

      v91(v268, v419);
      sub_1A2614(v413, v103, sub_1B7DD8, v412);
      goto LABEL_159;
    }
  }

  *&v411 = v89;
  v282 = sub_1D2364(&off_330820);
  sub_F1954(&unk_330840);
  if (v282)
  {
    v283 = [v103 mediaSearch];
    if (!v283 || (v284 = v283, v285 = [v283 sortOrder], v284, v285 != &dword_0 + 1))
    {

      v290 = v381;
      v416(v381, v415, v419);
      v291 = sub_2CDFE0();
      v292 = sub_2CE660();
      if (os_log_type_enabled(v291, v292))
      {
        v293 = swift_slowAlloc();
        *v293 = 0;
        _os_log_impl(&dword_0, v291, v292, "PlayMediaDialogProvider going to makePlaySomething for play some music request", v293, 2u);
        v103 = v87;
      }

      v91(v290, v419);
      sub_1A1C48(v413, v103, sub_1B7DD8, v412);
      goto LABEL_159;
    }
  }

  if (sub_1D1380())
  {

    v286 = v380;
    v416(v380, v415, v419);
    v287 = sub_2CDFE0();
    v288 = sub_2CE660();
    if (os_log_type_enabled(v287, v288))
    {
      v289 = swift_slowAlloc();
      *v289 = 0;
      _os_log_impl(&dword_0, v287, v288, "PlayMediaDialogProvider going to makePlaySomethingNew for play some new music request", v289, 2u);
      v103 = v87;
    }

    v91(v286, v419);
    sub_1A29E8(v413, v103, sub_1B7DD8, v412);
    goto LABEL_159;
  }

  if (!sub_2CE890() && !v240)
  {
    goto LABEL_166;
  }

  v294 = v379;
  v416(v379, v415, v419);
  v295 = sub_2CDFE0();
  v296 = sub_2CE660();
  if (os_log_type_enabled(v295, v296))
  {
    v297 = swift_slowAlloc();
    *v297 = 0;
    _os_log_impl(&dword_0, v295, v296, "PlayMediaDialogProvider going to makeCreateRadio", v297, 2u);
  }

  v91(v294, v419);
  sub_1A2E08(v413, v90, v97, v103, sub_1B7DD8, v412);

  return result;
}

uint64_t sub_1B7EB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B7F14()
{
  v0 = sub_2CDAD0();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8)); i; i = sub_2CEDA0())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_2CECD0();
      }

      else
      {
        if (v3 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_14;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      sub_2CDB90();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = v7;

        return v8;
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

id sub_1B8014()
{
  v0 = sub_1B7F14();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [objc_allocWithZone(INPlayMediaIntent) init];
  sub_2CDAE0();
  sub_2CDBC0();
  sub_2CDBB0();
  sub_2CDBA0();

  v3 = sub_2CDBD0();
  v4 = sub_1BA200(v1, v3, 0, 0);

  return v4;
}

Swift::String_optional __swiftcall AudioUsoIntent.haHomeName()()
{
  v0 = sub_1B8258(&ControlsUsoTask.haHomeName());
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

void *sub_1B819C(uint64_t (*a1)(uint64_t, void *))
{
  if (!sub_2CD6D0())
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = sub_2CAFC0();
  v3 = a1(v2, &protocol witness table for UsoTask);

  return v3;
}

Swift::String_optional __swiftcall AudioUsoIntent.haDestinationDeviceId()()
{
  v0 = sub_1B8258(&ControlsUsoTask.haDestinationDeviceId());
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_1B8258(uint64_t (*a1)(uint64_t, void *))
{
  if (!sub_2CD6D0())
  {
    return 0;
  }

  v2 = sub_2CAFC0();
  v3 = a1(v2, &protocol witness table for UsoTask);

  return v3;
}

uint64_t sub_1B835C@<X0>(void (*a1)(uint64_t, void *)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  if (sub_2CD6D0())
  {
    v6 = sub_2CAFC0();
    a1(v6, &protocol witness table for UsoTask);
  }

  else
  {
    v8 = a2();
    v9 = *(*(v8 - 8) + 56);

    return v9(a3, 1, 1, v8);
  }
}

void *sub_1B84D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!sub_2CD6D0())
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = sub_2CAFC0();
  v5 = a3(v4, &protocol witness table for UsoTask);

  return v5;
}

uint64_t sub_1B8594(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!sub_2CD6D0())
  {
    return 0;
  }

  v4 = sub_2CAFC0();
  v5 = a3(v4, &protocol witness table for UsoTask);

  return v5;
}

uint64_t sub_1B869C@<X0>(uint64_t (*a1)(void)@<X2>, void (*a2)(uint64_t, void *)@<X3>, uint64_t a3@<X8>)
{
  if (sub_2CD6D0())
  {
    v6 = sub_2CAFC0();
    a2(v6, &protocol witness table for UsoTask);
  }

  else
  {
    v8 = a1();
    v9 = *(*(v8 - 8) + 56);

    return v9(a3, 1, 1, v8);
  }
}

uint64_t sub_1B8770@<X0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v55 = a1;
  v56 = a2;
  v48 = sub_2CD4C0();
  v54 = *(v48 - 8);
  __chkstk_darwin(v48);
  v44 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  __chkstk_darwin(v46);
  v57 = &v44 - v3;
  v4 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v5 = __chkstk_darwin(v4 - 8);
  v45 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v47 = &v44 - v8;
  __chkstk_darwin(v7);
  v10 = &v44 - v9;
  v11 = sub_2CA870();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2CE000();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v53 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v44 - v19;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v21 = sub_3ED0(v15, static Logger.default);
  swift_beginAccess();
  v22 = *(v16 + 16);
  v52 = v21;
  v51 = v16 + 16;
  v50 = v22;
  v22(v20, v21, v15);
  v23 = sub_2CDFE0();
  v24 = sub_2CE690();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_0, v23, v24, "SearchForMediaFlowStrategy#actionForInput", v25, 2u);
  }

  v49 = *(v16 + 8);
  v49(v20, v15);
  sub_2CA790();
  v26 = sub_D2F98(v14, &v58);
  (*(v12 + 8))(v14, v11, v26);
  if (v59)
  {
    sub_420A4(&v58, &v60);
    sub_35E0(&v60, v61);
    sub_2CD840();
    v27 = v54;
    v28 = v47;
    v29 = v48;
    (*(v54 + 104))(v47, enum case for CommonAudio.Verb.summarise(_:), v48);
    (*(v27 + 56))(v28, 0, 1, v29);
    v30 = *(v46 + 48);
    v31 = v57;
    sub_F7598(v10, v57);
    sub_F7598(v28, v31 + v30);
    v32 = *(v27 + 48);
    if (v32(v31, 1, v29) == 1)
    {
      sub_30B8(v28, &qword_34D6B8, &qword_2D15B0);
      v33 = v57;
      sub_30B8(v10, &qword_34D6B8, &qword_2D15B0);
      if (v32(v33 + v30, 1, v29) == 1)
      {
        sub_30B8(v33, &qword_34D6B8, &qword_2D15B0);
LABEL_18:
        sub_2C9CE0();
        return sub_306C(&v60);
      }
    }

    else
    {
      v55 = v10;
      v34 = v45;
      sub_F7598(v31, v45);
      if (v32(v31 + v30, 1, v29) != 1)
      {
        v40 = v54;
        v41 = v44;
        (*(v54 + 32))(v44, v31 + v30, v29);
        sub_F7608(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
        v42 = sub_2CE250();
        v43 = *(v40 + 8);
        v43(v41, v29);
        sub_30B8(v28, &qword_34D6B8, &qword_2D15B0);
        sub_30B8(v55, &qword_34D6B8, &qword_2D15B0);
        v43(v34, v29);
        sub_30B8(v57, &qword_34D6B8, &qword_2D15B0);
        if (v42)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }

      sub_30B8(v28, &qword_34D6B8, &qword_2D15B0);
      v33 = v57;
      sub_30B8(v55, &qword_34D6B8, &qword_2D15B0);
      (*(v54 + 8))(v34, v29);
    }

    sub_30B8(v33, &qword_34D6B0, &unk_2D4FC0);
LABEL_13:
    sub_306C(&v60);
    goto LABEL_14;
  }

  sub_30B8(&v58, &qword_34CF98, &unk_2D1A40);
LABEL_14:
  v35 = v53;
  v50(v53, v52, v15);
  v36 = sub_2CDFE0();
  v37 = sub_2CE680();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_0, v36, v37, "SearchForMediaFlowStrategy#actionForInput received unsupported pommesResponse", v38, 2u);
  }

  v49(v35, v15);
  return sub_2C9CF0();
}

uint64_t type metadata accessor for SearchForMediaFlowStrategy(uint64_t a1)
{
  result = qword_353D18;
  if (!qword_353D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B8FC0(void *a1, void (*a2)(id, uint64_t), uint64_t a3)
{
  v56 = a3;
  v57 = a2;
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v54 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v55 = &v52 - v9;
  __chkstk_darwin(v8);
  v11 = &v52 - v10;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v12 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  v13 = *(v5 + 16);
  v13(v11, v12, v4);
  v14 = sub_2CDFE0();
  v15 = sub_2CE690();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "SearchForMediaFlowStrategy#makeIntentFrom", v16, 2u);
  }

  v19 = *(v5 + 8);
  v17 = (v5 + 8);
  v18 = v19;
  v19(v11, v4);
  v20 = sub_1B7F14();
  if (v20)
  {
    v21 = v20;
    v53 = v18;
    v54 = v17;
    v22 = [objc_allocWithZone(INSearchForMediaIntent) init];
    v23 = sub_2CDAE0();
    v24 = sub_1CFB70(v21, v23);

    v25 = v55;
    v13(v55, v12, v4);
    v26 = v24;
    v27 = sub_2CDFE0();
    v28 = sub_2CE670();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v58 = v30;
      *v29 = 136315138;
      v31 = v26;
      v32 = [v31 description];
      v33 = sub_2CE270();
      v35 = v34;

      v36 = sub_3F08(v33, v35, &v58);

      *(v29 + 4) = v36;
      _os_log_impl(&dword_0, v27, v28, "SearchForMediaFlowStrategy#makeIntentFromParse converted pommesResponse to intent: %s", v29, 0xCu);
      sub_306C(v30);

      v37 = v55;
    }

    else
    {

      v37 = v25;
    }

    v53(v37, v4);
    v48 = v26;
    v57(v26, 0);
  }

  else
  {
    v38 = v54;
    v13(v54, v12, v4);
    v39 = a1;
    v40 = sub_2CDFE0();
    v41 = sub_2CE680();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v58 = v43;
      *v42 = 136315138;
      sub_2CDAD0();
      sub_2CDA50();
      v44 = sub_2CE420();
      v46 = v45;

      v47 = sub_3F08(v44, v46, &v58);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_0, v40, v41, "SearchForMediaFlowStrategy#makeIntentFromParse pommesResponse doesn't contain audioExperience %s", v42, 0xCu);
      sub_306C(v43);

      v18(v54, v4);
    }

    else
    {

      v18(v38, v4);
    }

    v49 = sub_2CB850();
    sub_F7608(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
    v50 = swift_allocError();
    (*(*(v49 - 8) + 104))(v51, enum case for PlaybackCode.ceGE82(_:), v49);
    v57(v50, 1);
  }
}

uint64_t INPlayMediaIntent.toServerConversionParse()@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v74 = sub_2CA870();
  v72 = *(v74 - 8);
  v1 = __chkstk_darwin(v74);
  v71 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v70 = &v64 - v3;
  v4 = sub_2CE000();
  v75 = *(v4 - 8);
  v76 = v4;
  v5 = __chkstk_darwin(v4);
  v80 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v78 = &v64 - v7;
  v68 = sub_2C9900();
  v67 = *(v68 - 1);
  __chkstk_darwin(v68);
  v66 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20410(&qword_34D658, &qword_2D1530);
  __chkstk_darwin(v9 - 8);
  v65 = (&v64 - v10);
  v11 = sub_20410(&qword_34D660, &qword_2D1538);
  __chkstk_darwin(v11 - 8);
  v64 = &v64 - v12;
  v13 = sub_20410(&qword_34D668, &qword_2D1540);
  __chkstk_darwin(v13 - 8);
  v15 = &v64 - v14;
  v79 = sub_2CAFE0();
  v81 = *(v79 - 8);
  v16 = __chkstk_darwin(v79);
  v77 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v64 - v18;
  sub_20410(&qword_34D670, &qword_2D1548);
  v20 = swift_allocObject();
  v82 = xmmword_2D0090;
  *(v20 + 16) = xmmword_2D0090;
  v21 = swift_allocObject();
  *(v21 + 16) = v82;
  v22 = swift_allocObject();
  *(v22 + 16) = v82;
  v23 = swift_allocObject();
  *(v23 + 16) = v82;
  v24 = swift_allocObject();
  *(v24 + 16) = v82;
  sub_2CABB0();
  v25 = enum case for TerminalElement.Value.semantic(_:);
  v26 = sub_2CABD0();
  v27 = *(v26 - 8);
  (*(v27 + 104))(v15, v25, v26);
  (*(v27 + 56))(v15, 0, 1, v26);
  *(v24 + 56) = sub_2CAC70();
  *(v24 + 64) = &protocol witness table for TerminalIntentNode;
  sub_F390((v24 + 32));
  sub_2CAC50();
  v28 = sub_2CACD0();
  *(v23 + 56) = v28;
  *(v23 + 64) = &protocol witness table for NonTerminalIntentNode;
  sub_F390((v23 + 32));
  sub_2CACC0();
  *(v22 + 56) = v28;
  *(v22 + 64) = &protocol witness table for NonTerminalIntentNode;
  sub_F390((v22 + 32));
  sub_2CACC0();
  *(v21 + 56) = v28;
  *(v21 + 64) = &protocol witness table for NonTerminalIntentNode;
  sub_F390((v21 + 32));
  sub_2CACC0();
  *(v20 + 56) = v28;
  *(v20 + 64) = &protocol witness table for NonTerminalIntentNode;
  sub_F390((v20 + 32));
  sub_2CACC0();
  v85 = v28;
  v86 = &protocol witness table for NonTerminalIntentNode;
  sub_F390(v84);
  sub_2CACC0();
  v29 = sub_2CAFB0();
  (*(*(v29 - 8) + 56))(v64, 1, 1, v29);
  v30 = sub_2CACE0();
  (*(*(v30 - 8) + 56))(v65, 1, 1, v30);
  sub_2CAFD0();
  (*(v67 + 104))(v66, enum case for SiriKitConfirmationState.unset(_:), v68);
  v85 = sub_2CCFE0();
  v86 = &protocol witness table for AppResolutionStateProvider;
  sub_F390(v84);
  sub_2CCFD0();
  sub_2CA860();
  swift_allocObject();
  v31 = v69;
  v69 = sub_2CA820();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v32 = v76;
  v33 = sub_3ED0(v76, static Logger.default);
  swift_beginAccess();
  v34 = v75;
  v35 = *(v75 + 16);
  v67 = v33;
  v66 = v35;
  (v35)(v78, v33, v32);
  v36 = *(v81 + 16);
  *&v82 = v19;
  v37 = v79;
  v68 = v36;
  (v36)(v77, v19, v79);
  v38 = sub_2CDFE0();
  v39 = sub_2CE670();
  v40 = v34;
  v41 = v37;
  if (os_log_type_enabled(v38, v39))
  {
    v42 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v83 = v65;
    *v42 = 136315138;
    sub_E0318();
    v43 = v77;
    v44 = sub_2CEE70();
    v45 = v37;
    v47 = v46;
    v48 = *(v81 + 8);
    v48(v43, v45);
    v49 = sub_3F08(v44, v47, &v83);

    *(v42 + 4) = v49;
    _os_log_impl(&dword_0, v38, v39, "INPlayMediaIntent#toServerConversionParse nlIntent:%s", v42, 0xCu);
    sub_306C(v65);
    v32 = v76;

    v40 = v75;
  }

  else
  {

    v48 = *(v81 + 8);
    v48(v77, v41);
  }

  v50 = *(v40 + 8);
  v50(v78, v32);
  (v66)(v80, v67, v32);
  v51 = v31;
  v52 = sub_2CDFE0();
  v53 = sub_2CE670();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v54 = 138412290;
    *(v54 + 4) = v51;
    *v55 = v51;
    v56 = v51;
    _os_log_impl(&dword_0, v52, v53, "INPlayMediaIntent#toServerConversionParse sirikitIntent:%@", v54, 0xCu);
    sub_212CC(v55);
  }

  v50(v80, v32);
  v57 = *(sub_20410(&qword_353070, &unk_2D0FB0) + 48);
  v58 = v70;
  v59 = v82;
  v60 = v79;
  (v68)(v70, v82, v79);
  *&v58[v57] = v69;
  v61 = v72;
  v62 = v74;
  (*(v72 + 104))(v58, enum case for Parse.NLv3IntentPlusServerConversion(_:), v74);
  (*(v61 + 16))(v71, v58, v62);
  sub_2CA7A0();
  (*(v61 + 8))(v58, v62);
  return (v48)(v59, v60);
}

void sub_1BA18C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

id sub_1BA200(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v106 = a4;
  v97 = a3;
  v105 = a2;
  v5 = sub_2CAA00();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v96 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CE000();
  v94 = *(v8 - 8);
  v95 = v8;
  __chkstk_darwin(v8);
  v98 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2C9270();
  v101 = *(v10 - 8);
  v102 = v10;
  v11 = __chkstk_darwin(v10);
  v100 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v99 = &v93 - v13;
  v14 = sub_2C91A0();
  v103 = *(v14 - 8);
  v104 = v14;
  __chkstk_darwin(v14);
  v16 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2C92A0();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20410(&qword_34CC90, qword_2D40E0);
  __chkstk_darwin(v21 - 8);
  v23 = &v93 - v22;
  sub_2CD700();
  sub_2CDA40();
  (*(v6 + 56))(v23, 0, 1, v5);
  v24 = sub_2CD600();
  if (v24)
  {
    v25 = v24;
    sub_2CDB50();
    v26 = sub_2C9280();
    v28 = v27;
    (*(v18 + 8))(v20, v17);
    v98 = v25;
    v29 = sub_62CF4(v25, v26, v28);

    v30 = v107;
    v31 = [v107 backingStore];
    objc_opt_self();
    v32 = swift_dynamicCastObjCClass();
    if (v32)
    {
      v33 = v32;
      v34 = INIntentSlotValueTransformToMediaSearch();
      [v33 setMediaSearch:v34];
    }

    else
    {
      v34 = v29;
      v29 = v31;
    }

    sub_2CDB10();
    v49 = sub_2C9150();
    v50 = v104;
    v51 = *(v103 + 8);
    v51(v16, v104);
    v52 = [v30 backingStore];
    objc_opt_self();
    v53 = swift_dynamicCastObjCClass();
    if (!v53)
    {
    }

    [v53 setPlayShuffled:v49 & 1];

    sub_2CDB10();
    v54 = v99;
    sub_2C9180();
    v51(v16, v50);
    v56 = v100;
    v55 = v101;
    v57 = v54;
    v58 = v102;
    (*(v101 + 32))(v100, v57, v102);
    v59 = (*(v55 + 88))(v56, v58);
    if (v59 != enum case for Apple_Parsec_Siri_V2alpha_PlaybackRepeatMode.all(_:) && v59 != enum case for Apple_Parsec_Siri_V2alpha_PlaybackRepeatMode.one(_:))
    {
      (*(v55 + 8))(v56, v58);
    }

    v61 = [v107 backingStore];
    objc_opt_self();
    v62 = swift_dynamicCastObjCClass();
    if (v62)
    {
      [v62 setPlaybackRepeatMode:INPlaybackRepeatModeGetBackingType()];
    }

    sub_2CDB10();
    v63 = sub_2C9140();
    v51(v16, v50);
    v64 = [v107 backingStore];
    objc_opt_self();
    v65 = swift_dynamicCastObjCClass();
    if (!v65)
    {
    }

    [v65 setResumePlayback:v63 & 1];

    sub_2CDB10();
    sub_2C9160();
    v67 = v66;
    v51(v16, v50);
    v68 = v106;
    v60 = v107;
    if (v67 != -1.0)
    {
      v69 = v67;
      v70 = [v107 backingStore];
      objc_opt_self();
      v71 = swift_dynamicCastObjCClass();
      if (!v71)
      {
      }

      [v71 setPlaybackSpeed:v69];
    }

    sub_230064();
    v72 = [v60 backingStore];
    objc_opt_self();
    v73 = swift_dynamicCastObjCClass();
    if (v73)
    {
      [v73 setPlaybackQueueLocation:INPlaybackQueueLocationGetBackingType()];
    }

    v74 = sub_2303EC(a1, v105, 2 * (v68 == 0));
    v75 = [v60 backingStore];
    objc_opt_self();
    v76 = swift_dynamicCastObjCClass();
    if (v76)
    {
      v77 = v76;
      v78 = INIntentSlotValueTransformToPrivatePlayMediaIntentData();
      [v77 setPrivatePlayMediaIntentData:v78];
    }

    else
    {
      v78 = v74;
      v74 = v75;
    }

    if (v68)
    {
      v79 = v68;
      v80 = v97;
    }

    else
    {
      v80 = sub_2CDB80();
      v79 = v81;
    }

    v82 = sub_2CDB60();
    v84 = sub_230B38(v80, v79, v82, v83);

    v85 = [v60 backingStore];
    objc_opt_self();
    v86 = swift_dynamicCastObjCClass();
    if (!v86)
    {
    }

    [v86 setIntentMetadata:v84];

    v87 = sub_2310A0(v98);
    v88 = [v60 backingStore];
    objc_opt_self();
    v89 = swift_dynamicCastObjCClass();
    if (v89)
    {
      v90 = v89;
      v91 = INIntentSlotValueTransformToMediaItemValue();
      [v90 setMediaContainer:v91];
    }

    else
    {
    }
  }

  else
  {
    v35 = v95;
    v106 = v5;
    v36 = v98;
    v37 = v94;
    v38 = a1;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v39 = sub_3ED0(v35, static Logger.default);
    swift_beginAccess();
    v40 = v36;
    (*(v37 + 16))(v36, v39, v35);
    v41 = v38;
    v42 = sub_2CDFE0();
    v43 = sub_2CE680();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v108 = v45;
      *v44 = 136315138;
      sub_2CDA40();
      v46 = sub_2CE2A0();
      v48 = sub_3F08(v46, v47, &v108);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_0, v42, v43, "INPlayMediaIntent#amend unable to construct AudioUsoIntent from userDialogAct: %s", v44, 0xCu);
      sub_306C(v45);

      (*(v37 + 8))(v98, v35);
    }

    else
    {

      (*(v37 + 8))(v40, v35);
    }

    return v107;
  }

  return v60;
}

uint64_t _s21ConfirmIntentStrategyCMa_0(uint64_t a1)
{
  result = qword_353EB8;
  if (!qword_353EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BAD2C()
{
  v1[11] = v0;
  v2 = sub_2CB260();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v3 = sub_2CE000();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v4 = sub_2CDFD0();
  v1[19] = v4;
  v1[20] = *(v4 - 8);
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_1BAEB0, 0, 0);
}

uint64_t sub_1BAEB0()
{
  v46 = v0;
  v1 = *(v0 + 88);
  v43 = v1[4];
  *(v0 + 176) = v43;
  v3 = v1[5];
  v2 = v1[6];
  *(v0 + 16) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  v42 = sub_112C0(_swiftEmptyArrayStorage);
  *(v0 + 184) = v42;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v4 = qword_35F760;
  *(v0 + 192) = qword_35F760;
  v5 = v4;
  sub_2CDFB0();
  sub_2CE9E0();
  sub_2CDFA0();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 144);
  v7 = *(v0 + 120);
  v8 = *(v0 + 128);
  v9 = sub_3ED0(v7, static Logger.default);
  swift_beginAccess();
  v40 = *(v8 + 16);
  v40(v6, v9, v7);

  v10 = sub_2CDFE0();
  v11 = sub_2CE660();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 128);
  v38 = *(v0 + 120);
  v39 = *(v0 + 144);
  if (v12)
  {
    v14 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_3F08(v3, v2, &v44);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_3F08(0x45636972656E6547, 0xEC000000726F7272, &v44);
    _os_log_impl(&dword_0, v10, v11, "CatService#executeDialogResult Evaluating CAT family:%s id:%s...", v14, 0x16u);
    swift_arrayDestroy();
  }

  v15 = *(v13 + 8);
  v15(v39, v38);
  v16 = *(v0 + 136);
  v17 = *(v0 + 120);
  v44 = v3;
  v45 = v2;

  v48._countAndFlagsBits = 35;
  v48._object = 0xE100000000000000;
  sub_2CE350(v48);
  v49._countAndFlagsBits = 0x45636972656E6547;
  v49._object = 0xEC000000726F7272;
  sub_2CE350(v49);
  v18 = v45;
  *(v0 + 200) = v44;
  *(v0 + 208) = v18;
  v40(v16, v9, v17);
  v19 = sub_2CDFE0();
  v20 = sub_2CE660();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = v15;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    sub_2CB180();
    v24 = sub_2CB150();
    if (v24)
    {
      v26 = *(v0 + 104);
      v25 = *(v0 + 112);
      v41 = *(v0 + 96);
      sub_2CB130();

      sub_2CD3C0();

      v27 = sub_2CB200();
      v29 = v28;
      (*(v26 + 8))(v25, v41);
      sub_10C40();
      swift_allocError();
      *v30 = v27;
      v30[1] = v29;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      v31 = v24;
    }

    else
    {
      v31 = 0;
    }

    *(v22 + 4) = v24;
    *v23 = v31;
    _os_log_impl(&dword_0, v19, v20, "CatService#executeDialogResult is creating dialog with responseMode = %@", v22, 0xCu);
    sub_30B8(v23, &unk_34FC00, &unk_2D0150);

    v15 = v21;
  }

  v32 = *(v0 + 136);
  v33 = *(v0 + 120);

  v15(v32, v33);
  v34 = swift_task_alloc();
  *(v0 + 216) = v34;
  v34[2] = v43;
  v34[3] = v42;
  v34[4] = 0;
  v34[5] = v0 + 16;
  v35 = swift_task_alloc();
  *(v0 + 224) = v35;
  v36 = sub_20410(&qword_34CCD8, &unk_2D10D0);
  *v35 = v0;
  v35[1] = sub_1BB41C;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 80, 0, 0, 0xD000000000000043, 0x80000000002DEB70, sub_1BCEE0, v34, v36);
}

uint64_t sub_1BB41C()
{

  return _swift_task_switch(sub_1BB550, 0, 0);
}

uint64_t sub_1BB550()
{
  v1 = v0[10];
  v0[29] = v1;
  if (qword_34C008 != -1)
  {
    swift_once();
  }

  v2 = qword_35F848;
  v0[30] = qword_35F848;
  v3 = v2;
  v4 = sub_3128((v0 + 2));
  v0[31] = v4;
  v5 = swift_task_alloc();
  v0[32] = v5;
  *v5 = v0;
  v5[1] = sub_1BB65C;
  v7 = v0[25];
  v6 = v0[26];

  return CatService.executeDialog(for:parameters:bundle:globals:)(v7, v6, v1, v3, v4);
}

uint64_t sub_1BB65C(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 264) = a1;
  *(v3 + 272) = a2;

  return _swift_task_switch(sub_1BB79C, 0, 0);
}

uint64_t sub_1BB79C()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 240);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 152);

  sub_2CE9D0();
  sub_2CDFA0();
  (*(v4 + 8))(v3, v5);
  sub_30B8(v0 + 16, &qword_34C6C0, &qword_2D0710);

  v6 = *(v0 + 8);
  v7 = *(v0 + 264);

  return v6(v7, v1 & 1);
}

uint64_t sub_1BB8B8(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = sub_2CB260();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v5 = sub_2CE000();
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v6 = sub_2CDFD0();
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();

  return _swift_task_switch(sub_1BBA40, 0, 0);
}

uint64_t sub_1BBA40()
{
  v49 = v0;
  v1 = *(v0 + 104);
  v2 = v1[4];
  *(v0 + 192) = v2;
  v4 = v1[5];
  v3 = v1[6];
  *(v0 + 16) = 0u;
  v45 = *(v0 + 88);
  v46 = v2;
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v5 = qword_35F760;
  *(v0 + 200) = qword_35F760;
  v6 = v5;
  sub_2CDFB0();
  sub_2CE9E0();
  sub_2CDFA0();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 160);
  v9 = *(v0 + 136);
  v8 = *(v0 + 144);
  v10 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  v43 = *(v8 + 16);
  v43(v7, v10, v9);

  v11 = sub_2CDFE0();
  v12 = sub_2CE660();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 160);
  v15 = *(v0 + 144);
  v42 = *(v0 + 136);
  if (v13)
  {
    v41 = *(v0 + 160);
    v16 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_3F08(v4, v3, &v47);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_3F08(0x46746F4E6D657449, 0xEC000000646E756FLL, &v47);
    _os_log_impl(&dword_0, v11, v12, "CatService#executeDialogResult Evaluating CAT family:%s id:%s...", v16, 0x16u);
    swift_arrayDestroy();

    v17 = *(v15 + 8);
    v17(v41, v42);
  }

  else
  {

    v17 = *(v15 + 8);
    v17(v14, v42);
  }

  v18 = *(v0 + 152);
  v19 = *(v0 + 136);
  v47 = v4;
  v48 = v3;

  v51._countAndFlagsBits = 35;
  v51._object = 0xE100000000000000;
  sub_2CE350(v51);
  v52._countAndFlagsBits = 0x46746F4E6D657449;
  v52._object = 0xEC000000646E756FLL;
  sub_2CE350(v52);
  v20 = v48;
  *(v0 + 208) = v47;
  *(v0 + 216) = v20;
  v43(v18, v10, v19);
  v21 = sub_2CDFE0();
  v22 = sub_2CE660();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    sub_2CB180();
    v25 = sub_2CB150();
    if (v25)
    {
      v26 = v17;
      v28 = *(v0 + 120);
      v27 = *(v0 + 128);
      v44 = *(v0 + 112);
      sub_2CB130();

      sub_2CD3C0();

      v29 = sub_2CB200();
      v31 = v30;
      (*(v28 + 8))(v27, v44);
      v17 = v26;
      sub_10C40();
      swift_allocError();
      *v32 = v29;
      v32[1] = v31;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      v33 = v25;
    }

    else
    {
      v33 = 0;
    }

    *(v23 + 4) = v25;
    *v24 = v33;
    _os_log_impl(&dword_0, v21, v22, "CatService#executeDialogResult is creating dialog with responseMode = %@", v23, 0xCu);
    sub_30B8(v24, &unk_34FC00, &unk_2D0150);
  }

  v34 = *(v0 + 152);
  v35 = *(v0 + 136);
  v36 = *(v0 + 96);

  v17(v34, v35);
  v37 = swift_task_alloc();
  *(v0 + 224) = v37;
  v37[2] = v46;
  v37[3] = v36;
  v37[4] = v45;
  v37[5] = v0 + 16;
  v38 = swift_task_alloc();
  *(v0 + 232) = v38;
  v39 = sub_20410(&qword_34CCD8, &unk_2D10D0);
  *v38 = v0;
  v38[1] = sub_1BBFB8;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 80, 0, 0, 0xD000000000000043, 0x80000000002DEB70, sub_1BCEE0, v37, v39);
}

uint64_t sub_1BBFB8()
{

  return _swift_task_switch(sub_1BC0D0, 0, 0);
}

uint64_t sub_1BC0D0()
{
  v1 = v0[10];
  v0[30] = v1;
  if (qword_34C008 != -1)
  {
    swift_once();
  }

  v2 = qword_35F848;
  v0[31] = qword_35F848;
  v3 = v2;
  v4 = sub_3128((v0 + 2));
  v0[32] = v4;
  v5 = swift_task_alloc();
  v0[33] = v5;
  *v5 = v0;
  v5[1] = sub_1BC1DC;
  v7 = v0[26];
  v6 = v0[27];

  return CatService.executeDialog(for:parameters:bundle:globals:)(v7, v6, v1, v3, v4);
}

uint64_t sub_1BC1DC(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = a2;

  return _swift_task_switch(sub_1BCEE4, 0, 0);
}

uint64_t sub_1BC31C(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = sub_2CB260();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v5 = sub_2CE000();
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v6 = sub_2CDFD0();
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();

  return _swift_task_switch(sub_1BC4A4, 0, 0);
}

uint64_t sub_1BC4A4()
{
  v52 = v0;
  v1 = *(v0 + 104);
  v2 = v1[4];
  *(v0 + 192) = v2;
  v4 = v1[5];
  v3 = v1[6];
  *(v0 + 16) = 0u;
  v48 = *(v0 + 88);
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v47 = v4;
  v5 = qword_35F760;
  *(v0 + 200) = qword_35F760;
  v6 = v5;
  sub_2CDFB0();
  sub_2CE9E0();
  sub_2CDFA0();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 160);
  v9 = *(v0 + 136);
  v8 = *(v0 + 144);
  v10 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  v45 = *(v8 + 16);
  v46 = v10;
  v45(v7, v10, v9);

  v11 = sub_2CDFE0();
  v12 = sub_2CE660();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 160);
  v16 = *(v0 + 136);
  v15 = *(v0 + 144);
  if (v13)
  {
    v43 = v2;
    v17 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v17 = 136315394;
    v42 = v14;
    v18 = v47;
    *(v17 + 4) = sub_3F08(v47, v3, &v50);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_3F08(0xD000000000000010, 0x80000000002DEB50, &v50);
    _os_log_impl(&dword_0, v11, v12, "CatService#executeDialogResult Evaluating CAT family:%s id:%s...", v17, 0x16u);
    swift_arrayDestroy();

    v2 = v43;

    v19 = *(v15 + 8);
    v19(v42, v16);
  }

  else
  {

    v19 = *(v15 + 8);
    v19(v14, v16);
    v18 = v47;
  }

  v20 = *(v0 + 152);
  v21 = *(v0 + 136);
  v50 = v18;
  v51 = v3;

  v54._countAndFlagsBits = 35;
  v54._object = 0xE100000000000000;
  sub_2CE350(v54);
  v55._object = 0x80000000002DEB50;
  v55._countAndFlagsBits = 0xD000000000000010;
  sub_2CE350(v55);
  v22 = v51;
  *(v0 + 208) = v50;
  *(v0 + 216) = v22;
  v45(v20, v46, v21);
  v23 = sub_2CDFE0();
  v24 = sub_2CE660();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    sub_2CB180();
    v27 = sub_2CB150();
    if (v27)
    {
      v29 = *(v0 + 120);
      v28 = *(v0 + 128);
      v49 = *(v0 + 112);
      sub_2CB130();
      v44 = v2;

      sub_2CD3C0();

      v30 = sub_2CB200();
      v32 = v31;
      (*(v29 + 8))(v28, v49);
      sub_10C40();
      swift_allocError();
      *v33 = v30;
      v33[1] = v32;
      v2 = v44;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      v34 = v27;
    }

    else
    {
      v34 = 0;
    }

    *(v25 + 4) = v27;
    *v26 = v34;
    _os_log_impl(&dword_0, v23, v24, "CatService#executeDialogResult is creating dialog with responseMode = %@", v25, 0xCu);
    sub_30B8(v26, &unk_34FC00, &unk_2D0150);
  }

  v35 = *(v0 + 152);
  v36 = *(v0 + 136);
  v37 = *(v0 + 96);

  v19(v35, v36);
  v38 = swift_task_alloc();
  *(v0 + 224) = v38;
  v38[2] = v2;
  v38[3] = v37;
  v38[4] = v48;
  v38[5] = v0 + 16;
  v39 = swift_task_alloc();
  *(v0 + 232) = v39;
  v40 = sub_20410(&qword_34CCD8, &unk_2D10D0);
  *v39 = v0;
  v39[1] = sub_1BCA30;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 80, 0, 0, 0xD000000000000043, 0x80000000002DEB70, sub_1BCED4, v38, v40);
}

uint64_t sub_1BCA30()
{

  return _swift_task_switch(sub_1BCB48, 0, 0);
}

uint64_t sub_1BCB48()
{
  v1 = v0[10];
  v0[30] = v1;
  if (qword_34C008 != -1)
  {
    swift_once();
  }

  v2 = qword_35F848;
  v0[31] = qword_35F848;
  v3 = v2;
  v4 = sub_3128((v0 + 2));
  v0[32] = v4;
  v5 = swift_task_alloc();
  v0[33] = v5;
  *v5 = v0;
  v5[1] = sub_1BCC54;
  v7 = v0[26];
  v6 = v0[27];

  return CatService.executeDialog(for:parameters:bundle:globals:)(v7, v6, v1, v3, v4);
}

uint64_t sub_1BCC54(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = a2;

  return _swift_task_switch(sub_1BCD94, 0, 0);
}

uint64_t sub_1BCD94()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 248);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 168);

  sub_2CE9D0();
  sub_2CDFA0();
  (*(v4 + 8))(v3, v5);
  sub_30B8(v0 + 16, &qword_34C6C0, &qword_2D0710);

  v6 = *(v0 + 8);
  v7 = *(v0 + 272);

  return v6(v7, v1 & 1);
}

BOOL sub_1BCEE8(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_2CDE80() + 16);

  if (v2)
  {
    return 1;
  }

  sub_2CDE50();
  if (v4)
  {

    return 1;
  }

  else
  {
    v5 = *(sub_2CDE90() + 16);

    if (v5)
    {
      return 1;
    }

    v6 = *(sub_2CDEE0() + 16);

    if (v6)
    {
      return 1;
    }

    v7 = *(sub_2CDEC0() + 16);

    if (v7)
    {
      return 1;
    }

    v8 = *(sub_2CDED0() + 16);

    if (v8)
    {
      return 1;
    }

    v9 = *(sub_2CDEB0() + 16);

    return v9 != 0;
  }
}

uint64_t sub_1BCFC8(uint64_t a1, uint64_t a2)
{
  v99 = a2;
  v4 = sub_2CE000();
  v96 = *(v4 - 8);
  v97 = v4;
  __chkstk_darwin(v4);
  v95 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_2CDF70();
  v88 = *(v85 - 8);
  __chkstk_darwin(v85);
  v80 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_20410(&qword_354158, &unk_2D6BC0);
  __chkstk_darwin(v84);
  v89 = &v80 - v7;
  v8 = sub_20410(&qword_34DA18, &qword_2D18F8);
  v9 = __chkstk_darwin(v8 - 8);
  v82 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v86 = &v80 - v12;
  __chkstk_darwin(v11);
  v87 = &v80 - v13;
  v93 = sub_20410(&qword_34DA20, &qword_2D1900);
  v90 = *(v93 - 8);
  v14 = __chkstk_darwin(v93);
  v92 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v83 = &v80 - v16;
  v17 = sub_2CDDD0();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v81 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20410(&qword_354160, &unk_2D6BB0);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = &v80 - v22;
  v24 = sub_20410(&qword_34DA28, qword_2D1908);
  v25 = __chkstk_darwin(v24 - 8);
  v91 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v29 = &v80 - v28;
  __chkstk_darwin(v27);
  v31 = &v80 - v30;
  v98 = v2;
  v94 = a1;
  sub_2CDEF0();
  (*(v18 + 104))(v29, enum case for DeviceQuantifier.all(_:), v17);
  (*(v18 + 56))(v29, 0, 1, v17);
  v32 = *(v21 + 56);
  sub_F3F4(v31, v23, &qword_34DA28, qword_2D1908);
  sub_F3F4(v29, &v23[v32], &qword_34DA28, qword_2D1908);
  v33 = *(v18 + 48);
  if (v33(v23, 1, v17) != 1)
  {
    sub_F3F4(v23, v91, &qword_34DA28, qword_2D1908);
    if (v33(&v23[v32], 1, v17) != 1)
    {
      v37 = &v23[v32];
      v38 = v81;
      (*(v18 + 32))(v81, v37, v17);
      sub_1BE508(&qword_354170, &type metadata accessor for DeviceQuantifier, &protocol conformance descriptor for DeviceQuantifier);
      v39 = v91;
      v40 = sub_2CE250();
      v41 = *(v18 + 8);
      v41(v38, v17);
      sub_30B8(v29, &qword_34DA28, qword_2D1908);
      sub_30B8(v31, &qword_34DA28, qword_2D1908);
      v41(v39, v17);
      sub_30B8(v23, &qword_34DA28, qword_2D1908);
      v35 = v99;
      if (v40)
      {
        goto LABEL_9;
      }

LABEL_7:
      LODWORD(v91) = 0;
      v36 = v94;
      goto LABEL_10;
    }

    sub_30B8(v29, &qword_34DA28, qword_2D1908);
    sub_30B8(v31, &qword_34DA28, qword_2D1908);
    (*(v18 + 8))(v91, v17);
    v35 = v99;
LABEL_6:
    sub_30B8(v23, &qword_354160, &unk_2D6BB0);
    goto LABEL_7;
  }

  sub_30B8(v29, &qword_34DA28, qword_2D1908);
  sub_30B8(v31, &qword_34DA28, qword_2D1908);
  v34 = v33(&v23[v32], 1, v17);
  v35 = v99;
  if (v34 != 1)
  {
    goto LABEL_6;
  }

  sub_30B8(v23, &qword_34DA28, qword_2D1908);
LABEL_9:
  v42 = v83;
  v36 = v94;
  sub_2CDEA0();
  v43 = sub_2CDD00();
  LODWORD(v91) = (*(*(v43 - 8) + 48))(v42, 1, v43) == 1;
  sub_30B8(v42, &qword_34DA20, &qword_2D1900);
LABEL_10:
  sub_20410(&qword_354150, &qword_2D6298);
  v44 = *(v90 + 72);
  v45 = (*(v90 + 80) + 32) & ~*(v90 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_2D0E40;
  v47 = v46 + v45;
  v48 = enum case for DeviceType.television(_:);
  v49 = sub_2CDD00();
  v50 = *(v49 - 8);
  v51 = *(v50 + 104);
  v51(v47, v48, v49);
  v52 = *(v50 + 56);
  v52(v47, 0, 1, v49);
  v51(v47 + v44, enum case for DeviceType.appleTv(_:), v49);
  v52(v47 + v44, 0, 1, v49);
  v53 = v92;
  sub_2CDEA0();
  v54 = sub_1955C0(v53, v46);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_30B8(v53, &qword_34DA20, &qword_2D1900);
  v55 = sub_1BCEE8(v36, v35);
  v56 = 0;
  v58 = v96;
  v57 = v97;
  if (!v55)
  {
    goto LABEL_19;
  }

  LODWORD(v99) = v54;
  v59 = v87;
  sub_2CDE60();
  v60 = v88;
  v61 = v85;
  v62 = v86;
  (*(v88 + 104))(v86, enum case for PlaceHint.house(_:), v85);
  (*(v60 + 56))(v62, 0, 1, v61);
  v63 = *(v84 + 48);
  v64 = v89;
  sub_F3F4(v59, v89, &qword_34DA18, &qword_2D18F8);
  sub_F3F4(v62, v64 + v63, &qword_34DA18, &qword_2D18F8);
  v65 = *(v60 + 48);
  if (v65(v64, 1, v61) != 1)
  {
    v66 = v82;
    sub_F3F4(v64, v82, &qword_34DA18, &qword_2D18F8);
    if (v65(v64 + v63, 1, v61) != 1)
    {
      v67 = v88;
      v68 = v64 + v63;
      v69 = v80;
      (*(v88 + 32))(v80, v68, v61);
      sub_1BE508(&qword_354168, &type metadata accessor for PlaceHint, &protocol conformance descriptor for PlaceHint);
      v56 = sub_2CE250();
      v70 = *(v67 + 8);
      v70(v69, v61);
      sub_30B8(v86, &qword_34DA18, &qword_2D18F8);
      sub_30B8(v87, &qword_34DA18, &qword_2D18F8);
      v70(v66, v61);
      sub_30B8(v64, &qword_34DA18, &qword_2D18F8);
      goto LABEL_18;
    }

    sub_30B8(v86, &qword_34DA18, &qword_2D18F8);
    sub_30B8(v87, &qword_34DA18, &qword_2D18F8);
    (*(v88 + 8))(v66, v61);
    goto LABEL_16;
  }

  sub_30B8(v62, &qword_34DA18, &qword_2D18F8);
  v64 = v89;
  sub_30B8(v59, &qword_34DA18, &qword_2D18F8);
  if (v65(v64 + v63, 1, v61) != 1)
  {
LABEL_16:
    sub_30B8(v64, &qword_354158, &unk_2D6BC0);
    v56 = 0;
    goto LABEL_18;
  }

  sub_30B8(v64, &qword_34DA18, &qword_2D18F8);
  v56 = 1;
LABEL_18:
  LOBYTE(v54) = v99;
LABEL_19:
  v71 = v91;
  v72 = v91 | v54;
  v73 = v95;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v74 = v72 | v56;
  v75 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  (*(v58 + 16))(v73, v75, v57);
  v76 = sub_2CDFE0();
  v77 = sub_2CE690();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    *v78 = 67109888;
    *(v78 + 4) = v71;
    *(v78 + 8) = 1024;
    *(v78 + 10) = v54 & 1;
    *(v78 + 14) = 1024;
    *(v78 + 16) = v56 & 1;
    *(v78 + 20) = 1024;
    *(v78 + 22) = v74 & 1;
    _os_log_impl(&dword_0, v76, v77, "HomeAutomationEntityProviding#shouldIncludeTVs allDevices: %{BOOL}d, targetsTVs: %{BOOL}d, everywhereInRoom: %{BOOL}d, includeTVs: %{BOOL}d", v78, 0x1Au);
  }

  (*(v58 + 8))(v73, v57);
  return v74 & 1;
}