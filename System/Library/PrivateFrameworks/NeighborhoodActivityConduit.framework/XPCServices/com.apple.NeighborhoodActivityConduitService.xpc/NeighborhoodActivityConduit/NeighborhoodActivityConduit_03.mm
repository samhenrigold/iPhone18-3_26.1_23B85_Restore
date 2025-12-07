uint64_t sub_100048578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 392) = a8;
  *(v8 + 400) = v13;
  *(v8 + 376) = a5;
  *(v8 + 384) = a7;
  *(v8 + 448) = a6;
  *(v8 + 368) = a4;
  sub_1000E0E08();
  *(v8 + 408) = swift_task_alloc();
  sub_10000ADE4(&qword_10011F608, &qword_1000F1CD0);
  *(v8 + 416) = swift_task_alloc();
  v9 = sub_1000E12B8();
  *(v8 + 424) = v9;
  *(v8 + 432) = *(v9 - 8);
  *(v8 + 440) = swift_task_alloc();
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v10 = qword_1001230E0;

  return _swift_task_switch(sub_1000486E4, v10, 0);
}

uint64_t sub_1000486E4()
{
  v75 = v0;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = *(v0 + 376);
    if (v1)
    {
      *(v0 + 256) = sub_1000E2338();
      *(v0 + 264) = v2;
      sub_1000E2A08();
      if (*(v1 + 16) && (v3 = sub_10000B3E0(v0 + 16), (v4 & 1) != 0))
      {
        sub_1000153C0(*(v1 + 56) + 32 * v3, v0 + 136);
        sub_10000C1C0(v0 + 16);
        if (swift_dynamicCast())
        {
          v5 = sub_1000449DC(*(v0 + 272), *(v0 + 280), 0);

          if (v5)
          {
            v6 = v5;
            goto LABEL_8;
          }

          *(v0 + 288) = sub_1000E2338();
          *(v0 + 296) = v42;
          sub_1000E2A08();
          if (*(v1 + 16) && (v43 = sub_10000B3E0(v0 + 56), (v44 & 1) != 0))
          {
            sub_1000153C0(*(v1 + 56) + 32 * v43, v0 + 168);
            sub_10000C1C0(v0 + 56);
            if (swift_dynamicCast())
            {
              v6 = sub_1000449DC(*(v0 + 336), *(v0 + 344), 0);

              if (v6)
              {

LABEL_8:
                v7 = *(v0 + 384);
                *(v0 + 304) = 0x6567617373656DLL;
                *(v0 + 312) = 0xE700000000000000;

                sub_1000E2A08();
                if (*(v7 + 16) && (v8 = sub_10000B3E0(v0 + 96), (v9 & 1) != 0))
                {
                  sub_1000153C0(*(*(v0 + 384) + 56) + 32 * v8, v0 + 200);
                  sub_10000C1C0(v0 + 96);
                  if (swift_dynamicCast())
                  {
                    v10 = *(v0 + 320);
                    v11 = *(v0 + 328);
                    v74 = 0;
                    memset(v73, 0, sizeof(v73));
                    sub_1000123E0(v10, v11);
                    sub_1000E0DF8();
                    sub_100058F28(&qword_10011F610, 255, &type metadata accessor for NCProtoTVLaunchedEvent, &protocol conformance descriptor for NCProtoTVLaunchedEvent);
                    sub_1000E0E18();
                    v56 = *(v0 + 432);
                    v55 = *(v0 + 440);
                    v58 = *(v0 + 416);
                    v57 = *(v0 + 424);
                    (*(v56 + 56))(v58, 0, 1, v57);
                    (*(v56 + 32))(v55, v58, v57);
                    if (qword_10011DC88 != -1)
                    {
                      swift_once();
                    }

                    v59 = sub_1000E1F08();
                    sub_1000049D0(v59, qword_1001231A0);

                    v60 = sub_1000E1EE8();
                    v61 = sub_1000E2698();

                    if (os_log_type_enabled(v60, v61))
                    {
                      v72 = *(v0 + 448);
                      v62 = swift_slowAlloc();
                      *&v73[0] = swift_slowAlloc();
                      *v62 = 136315394;
                      v64 = *(v6 + 16);
                      v63 = *(v6 + 24);

                      v65 = sub_100029C70(v64, v63, v73);

                      *(v62 + 4) = v65;
                      *(v62 + 12) = 2080;
                      v66 = sub_10003E638(v72);
                      v68 = sub_100029C70(v66, v67, v73);

                      *(v62 + 14) = v68;
                      _os_log_impl(&_mh_execute_header, v60, v61, "[%s] Received event %s.", v62, 0x16u);
                      swift_arrayDestroy();
                    }

                    v70 = *(v0 + 432);
                    v69 = *(v0 + 440);
                    v71 = *(v0 + 424);
                    (*(v0 + 392))(v69, v6);

                    sub_100006660(v10, v11);

                    (*(v70 + 8))(v69, v71);
                    goto LABEL_22;
                  }
                }

                else
                {

                  sub_10000C1C0(v0 + 96);
                }

                if (qword_10011DC88 != -1)
                {
                  swift_once();
                }

                v28 = sub_1000E1F08();
                sub_1000049D0(v28, qword_1001231A0);

                v29 = sub_1000E1EE8();
                v30 = sub_1000E2678();

                if (!os_log_type_enabled(v29, v30))
                {

                  goto LABEL_22;
                }

                v31 = *(v0 + 448);
                v32 = swift_slowAlloc();
                *&v73[0] = swift_slowAlloc();
                *v32 = 136315650;
                v34 = *(v6 + 16);
                v33 = *(v6 + 24);

                v35 = sub_100029C70(v34, v33, v73);

                *(v32 + 4) = v35;
                *(v32 + 12) = 2080;
                v36 = sub_10003E638(v31);
                v38 = sub_100029C70(v36, v37, v73);

                *(v32 + 14) = v38;
                *(v32 + 22) = 2080;
                v39 = sub_1000E22C8();
                v41 = sub_100029C70(v39, v40, v73);

                *(v32 + 24) = v41;
                _os_log_impl(&_mh_execute_header, v29, v30, "[%s] Failed to decode event %s: %s.", v32, 0x20u);
                swift_arrayDestroy();

LABEL_41:

                goto LABEL_22;
              }
            }
          }

          else
          {
            sub_10000C1C0(v0 + 56);
          }

          if (qword_10011DC88 != -1)
          {
            swift_once();
          }

          v45 = sub_1000E1F08();
          sub_1000049D0(v45, qword_1001231A0);

          v29 = sub_1000E1EE8();
          v46 = sub_1000E2678();

          if (os_log_type_enabled(v29, v46))
          {
            v47 = *(v0 + 448);
            v48 = swift_slowAlloc();
            *&v73[0] = swift_slowAlloc();
            *v48 = 136315394;
            v49 = sub_10003E638(v47);
            v51 = sub_100029C70(v49, v50, v73);

            *(v48 + 4) = v51;
            *(v48 + 12) = 2080;
            *(v0 + 360) = v1;

            sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
            v52 = sub_1000E2368();
            v54 = sub_100029C70(v52, v53, v73);

            *(v48 + 14) = v54;
            _os_log_impl(&_mh_execute_header, v29, v46, "Received event %s from unrecognized device %s.", v48, 0x16u);
            swift_arrayDestroy();
          }

          goto LABEL_41;
        }
      }

      else
      {
        sub_10000C1C0(v0 + 16);
      }
    }
  }

  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 376);
  v13 = sub_1000E1F08();
  sub_1000049D0(v13, qword_1001231A0);

  v14 = sub_1000E1EE8();
  v15 = sub_1000E2678();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 376);
    v17 = *(v0 + 448);
    v18 = swift_slowAlloc();
    *&v73[0] = swift_slowAlloc();
    *v18 = 136315394;
    v19 = sub_10003E638(v17);
    v21 = sub_100029C70(v19, v20, v73);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    if (v16)
    {
      *(v0 + 352) = v12;

      sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
      v22 = sub_1000E2368();
      v24 = v23;
    }

    else
    {
      v24 = 0xE300000000000000;
      v22 = 7104878;
    }

    v25 = sub_100029C70(v22, v24, v73);

    *(v18 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v14, v15, "Received invalid event %s options %s.", v18, 0x16u);
    swift_arrayDestroy();
  }

LABEL_22:

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1000491D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v28 = a6;
  v29 = a7;
  v30 = a10;
  v16 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v16 - 8);
  v18 = &v27 - v17;
  v19 = sub_1000E2538();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = qword_10011DC18;

  if (v20 != -1)
  {
    swift_once();
  }

  v22 = qword_1001230E0;
  v23 = sub_100058F28(&qword_1001201E0, v21, type metadata accessor for ConduitDeviceActor, &unk_1000F1B48);
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v24 + 24) = v23;
  *(v24 + 32) = a5;
  *(v24 + 40) = a2;
  *(v24 + 48) = v28;
  *(v24 + 56) = a3;
  *(v24 + 64) = a4;
  v25 = v29;
  *(v24 + 72) = a1;
  *(v24 + 80) = v25;
  *(v24 + 88) = a8;

  sub_100022960(0, 0, v18, v30, v24);
}

uint64_t sub_1000493B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 536) = v15;
  *(v8 + 520) = v14;
  *(v8 + 504) = a7;
  *(v8 + 512) = a8;
  *(v8 + 680) = a6;
  *(v8 + 488) = a4;
  *(v8 + 496) = a5;
  v9 = sub_1000E1D28();
  *(v8 + 544) = v9;
  *(v8 + 552) = *(v9 - 8);
  *(v8 + 560) = swift_task_alloc();
  sub_1000E0E08();
  *(v8 + 568) = swift_task_alloc();
  v10 = sub_1000E1D08();
  *(v8 + 576) = v10;
  *(v8 + 584) = *(v10 - 8);
  *(v8 + 592) = swift_task_alloc();
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v11 = qword_1001230E0;
  *(v8 + 600) = qword_1001230E0;

  return _swift_task_switch(sub_100049554, v11, 0);
}

uint64_t sub_100049554()
{
  v80 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 608) = Strong;
  if (!Strong)
  {
    goto LABEL_17;
  }

  v2 = *(v0 + 496);
  if (!v2)
  {
    goto LABEL_16;
  }

  *(v0 + 360) = sub_1000E2338();
  *(v0 + 368) = v3;
  sub_1000E2A08();
  if (!*(v2 + 16) || (v4 = sub_10000B3E0(v0 + 120), (v5 & 1) == 0))
  {
    sub_10000C1C0(v0 + 120);
    goto LABEL_16;
  }

  sub_1000153C0(*(v2 + 56) + 32 * v4, v0 + 240);
  sub_10000C1C0(v0 + 120);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

LABEL_17:
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 496);
    v23 = sub_1000E1F08();
    sub_1000049D0(v23, qword_1001231A0);

    v24 = sub_1000E1EE8();
    v25 = sub_1000E2678();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 496);
      v27 = *(v0 + 680);
      v28 = swift_slowAlloc();
      *&v78[0] = swift_slowAlloc();
      *v28 = 136315394;
      v29 = sub_10003E4B0(v27);
      v31 = sub_100029C70(v29, v30, v78);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      if (v26)
      {
        *(v0 + 472) = v22;

        sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
        v32 = sub_1000E2368();
        v34 = v33;
      }

      else
      {
        v34 = 0xE300000000000000;
        v32 = 7104878;
      }

      v35 = sub_100029C70(v32, v34, v78);

      *(v28 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v24, v25, "Received invalid request %s options %s.", v28, 0x16u);
      swift_arrayDestroy();
    }

    v36 = *(v0 + 504);
    sub_100058DE4();
    v37 = swift_allocError();
    *v38 = 3;
    v36(0, 0, v37);

    goto LABEL_25;
  }

  v7 = *(v0 + 376);
  v6 = *(v0 + 384);
  *(v0 + 616) = v7;
  *(v0 + 624) = v6;

  v8 = sub_1000449DC(v7, v6, 0);

  if (v8)
  {
LABEL_7:
    *(v0 + 632) = v8;

    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v9 = sub_1000E1F08();
    *(v0 + 640) = sub_1000049D0(v9, qword_1001231A0);

    v10 = sub_1000E1EE8();
    v11 = sub_1000E2698();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 680);
      v13 = swift_slowAlloc();
      *&v78[0] = swift_slowAlloc();
      *v13 = 136315394;
      *(v13 + 4) = sub_100029C70(v7, v6, v78);
      *(v13 + 12) = 2080;
      v14 = sub_10003E4B0(v12);
      v16 = sub_100029C70(v14, v15, v78);

      *(v13 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%s] Received request %s.", v13, 0x16u);
      swift_arrayDestroy();
    }

    v17 = *(v0 + 520);
    *(v0 + 408) = 0x6567617373656DLL;
    *(v0 + 416) = 0xE700000000000000;
    sub_1000E2A08();
    if (*(v17 + 16) && (v18 = sub_10000B3E0(v0 + 200), (v19 & 1) != 0))
    {
      sub_1000153C0(*(*(v0 + 520) + 56) + 32 * v18, v0 + 304);
      sub_10000C1C0(v0 + 200);
      if (swift_dynamicCast())
      {
        v20 = *(v0 + 424);
        v21 = *(v0 + 432);
        *(v0 + 648) = v20;
        *(v0 + 656) = v21;
        v79 = 0;
        memset(v78, 0, sizeof(v78));
        sub_1000123E0(v20, v21);
        sub_1000E0DF8();
        sub_100058F28(&qword_10011F618, 255, &type metadata accessor for NCProtoIncomingCallBannerActionRequest, &protocol conformance descriptor for NCProtoIncomingCallBannerActionRequest);
        sub_1000E0E18();
        v77 = (*(v0 + 528) + **(v0 + 528));
        v74 = swift_task_alloc();
        *(v0 + 664) = v74;
        *v74 = v0;
        v74[1] = sub_10004A100;
        v75 = *(v0 + 592);
        v76 = *(v0 + 560);

        return v77(v76, v75, v8);
      }
    }

    else
    {
      sub_10000C1C0(v0 + 200);
    }

    sub_100058DE4();
    v41 = swift_allocError();
    *v42 = 1;
    swift_willThrow();

    swift_errorRetain();
    v43 = sub_1000E1EE8();
    v44 = sub_1000E2678();

    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 624);
    if (v45)
    {
      v47 = *(v0 + 616);
      v48 = *(v0 + 680);
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v78[0] = swift_slowAlloc();
      *v49 = 136315650;
      v51 = sub_100029C70(v47, v46, v78);

      *(v49 + 4) = v51;
      *(v49 + 12) = 2080;
      v52 = sub_10003E4B0(v48);
      v54 = sub_100029C70(v52, v53, v78);

      *(v49 + 14) = v54;
      *(v49 + 22) = 2112;
      swift_errorRetain();
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v49 + 24) = v55;
      *v50 = v55;
      _os_log_impl(&_mh_execute_header, v43, v44, "[%s] Error handling request %s: %@.", v49, 0x20u);
      sub_1000033C8(v50, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v59 = *(v0 + 504);
    swift_errorRetain();
    v59(0, 0, v41);

    goto LABEL_44;
  }

  *(v0 + 392) = sub_1000E2338();
  *(v0 + 400) = v56;
  sub_1000E2A08();
  if (*(v2 + 16) && (v57 = sub_10000B3E0(v0 + 160), (v58 & 1) != 0))
  {
    sub_1000153C0(*(v2 + 56) + 32 * v57, v0 + 272);
    sub_10000C1C0(v0 + 160);
    if (swift_dynamicCast())
    {
      v8 = sub_1000449DC(*(v0 + 456), *(v0 + 464), 0);

      if (v8)
      {

        goto LABEL_7;
      }
    }
  }

  else
  {
    sub_10000C1C0(v0 + 160);
  }

  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v60 = sub_1000E1F08();
  sub_1000049D0(v60, qword_1001231A0);

  v61 = sub_1000E1EE8();
  v62 = sub_1000E2678();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = *(v0 + 680);
    v64 = swift_slowAlloc();
    *&v78[0] = swift_slowAlloc();
    *v64 = 136315394;
    v65 = sub_10003E4B0(v63);
    v67 = sub_100029C70(v65, v66, v78);

    *(v64 + 4) = v67;
    *(v64 + 12) = 2080;
    *(v0 + 480) = v2;

    sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
    v68 = sub_1000E2368();
    v70 = sub_100029C70(v68, v69, v78);

    *(v64 + 14) = v70;
    _os_log_impl(&_mh_execute_header, v61, v62, "Received request %s from unrecognized device %s.", v64, 0x16u);
    swift_arrayDestroy();
  }

  v71 = *(v0 + 504);
  sub_100058DE4();
  v72 = swift_allocError();
  *v73 = 3;
  v71(0, 0, v72);

LABEL_44:

LABEL_25:

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_10004A100()
{
  v2 = *v1;
  *(*v1 + 672) = v0;

  v3 = *(v2 + 600);
  if (v0)
  {
    v4 = sub_10005A56C;
  }

  else
  {
    v4 = sub_10004A22C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10004A22C()
{
  v51 = v0;
  v1 = *(v0 + 672);
  sub_100058F28(&qword_10011F620, 255, &type metadata accessor for NCProtoIncomingCallBannerActionResponse, &protocol conformance descriptor for NCProtoIncomingCallBannerActionResponse);
  v2 = sub_1000E0E28();
  if (v1)
  {
    v4 = *(v0 + 592);
    v5 = *(v0 + 584);
    v6 = *(v0 + 576);
    v7 = *(v0 + 560);
    v8 = *(v0 + 552);
    v9 = *(v0 + 544);
    sub_100006660(*(v0 + 648), *(v0 + 656));
    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v6);

    swift_errorRetain();
    v10 = sub_1000E1EE8();
    v11 = sub_1000E2678();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 624);
    if (v12)
    {
      v14 = *(v0 + 616);
      v15 = *(v0 + 680);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v16 = 136315650;
      v18 = sub_100029C70(v14, v13, v50);

      *(v16 + 4) = v18;
      *(v16 + 12) = 2080;
      v19 = sub_10003E4B0(v15);
      v21 = sub_100029C70(v19, v20, v50);

      *(v16 + 14) = v21;
      *(v16 + 22) = 2112;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 24) = v22;
      *v17 = v22;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%s] Error handling request %s: %@.", v16, 0x20u);
      sub_1000033C8(v17, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v34 = *(v0 + 504);
    swift_errorRetain();
    v34(0, 0, v1);
  }

  else
  {
    v48 = v2;
    v49 = v3;

    v23 = sub_1000E1EE8();
    v24 = sub_1000E2698();

    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 624);
    if (v25)
    {
      v27 = *(v0 + 616);
      v28 = *(v0 + 680);
      v29 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v29 = 136315394;
      v30 = sub_100029C70(v27, v26, v50);

      *(v29 + 4) = v30;
      *(v29 + 12) = 2080;
      v31 = sub_10003E4B0(v28);
      v33 = sub_100029C70(v31, v32, v50);

      *(v29 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v23, v24, "[%s] Returning response for %s.", v29, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v47 = *(v0 + 592);
    v35 = *(v0 + 584);
    v45 = *(v0 + 656);
    v46 = *(v0 + 576);
    v43 = *(v0 + 648);
    v44 = *(v0 + 560);
    v36 = *(v0 + 552);
    v42 = *(v0 + 544);
    v37 = *(v0 + 504);
    sub_10000ADE4(&unk_1001201F0, &unk_1000F1CF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000F07C0;
    *(v0 + 440) = 0x6567617373656DLL;
    *(v0 + 448) = 0xE700000000000000;
    sub_1000E2A08();
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v48;
    *(inited + 80) = v49;
    sub_1000123E0(v48, v49);
    v39 = sub_10000C018(inited);
    swift_setDeallocating();
    sub_1000033C8(inited + 32, &qword_10011DEC0, &unk_1000F0490);
    v37(v39, 0, 0);

    sub_100006660(v48, v49);
    sub_100006660(v43, v45);
    (*(v36 + 8))(v44, v42);
    (*(v35 + 8))(v47, v46);
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_10004A7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 536) = v15;
  *(v8 + 520) = v14;
  *(v8 + 504) = a7;
  *(v8 + 512) = a8;
  *(v8 + 680) = a6;
  *(v8 + 488) = a4;
  *(v8 + 496) = a5;
  v9 = sub_1000E1DE8();
  *(v8 + 544) = v9;
  *(v8 + 552) = *(v9 - 8);
  *(v8 + 560) = swift_task_alloc();
  sub_1000E0E08();
  *(v8 + 568) = swift_task_alloc();
  v10 = sub_1000E1DA8();
  *(v8 + 576) = v10;
  *(v8 + 584) = *(v10 - 8);
  *(v8 + 592) = swift_task_alloc();
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v11 = qword_1001230E0;
  *(v8 + 600) = qword_1001230E0;

  return _swift_task_switch(sub_10004A980, v11, 0);
}

uint64_t sub_10004A980()
{
  v80 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 608) = Strong;
  if (!Strong)
  {
    goto LABEL_17;
  }

  v2 = *(v0 + 496);
  if (!v2)
  {
    goto LABEL_16;
  }

  *(v0 + 360) = sub_1000E2338();
  *(v0 + 368) = v3;
  sub_1000E2A08();
  if (!*(v2 + 16) || (v4 = sub_10000B3E0(v0 + 120), (v5 & 1) == 0))
  {
    sub_10000C1C0(v0 + 120);
    goto LABEL_16;
  }

  sub_1000153C0(*(v2 + 56) + 32 * v4, v0 + 240);
  sub_10000C1C0(v0 + 120);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

LABEL_17:
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 496);
    v23 = sub_1000E1F08();
    sub_1000049D0(v23, qword_1001231A0);

    v24 = sub_1000E1EE8();
    v25 = sub_1000E2678();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 496);
      v27 = *(v0 + 680);
      v28 = swift_slowAlloc();
      *&v78[0] = swift_slowAlloc();
      *v28 = 136315394;
      v29 = sub_10003E4B0(v27);
      v31 = sub_100029C70(v29, v30, v78);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      if (v26)
      {
        *(v0 + 472) = v22;

        sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
        v32 = sub_1000E2368();
        v34 = v33;
      }

      else
      {
        v34 = 0xE300000000000000;
        v32 = 7104878;
      }

      v35 = sub_100029C70(v32, v34, v78);

      *(v28 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v24, v25, "Received invalid request %s options %s.", v28, 0x16u);
      swift_arrayDestroy();
    }

    v36 = *(v0 + 504);
    sub_100058DE4();
    v37 = swift_allocError();
    *v38 = 3;
    v36(0, 0, v37);

    goto LABEL_25;
  }

  v7 = *(v0 + 376);
  v6 = *(v0 + 384);
  *(v0 + 616) = v7;
  *(v0 + 624) = v6;

  v8 = sub_1000449DC(v7, v6, 0);

  if (v8)
  {
LABEL_7:
    *(v0 + 632) = v8;

    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v9 = sub_1000E1F08();
    *(v0 + 640) = sub_1000049D0(v9, qword_1001231A0);

    v10 = sub_1000E1EE8();
    v11 = sub_1000E2698();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 680);
      v13 = swift_slowAlloc();
      *&v78[0] = swift_slowAlloc();
      *v13 = 136315394;
      *(v13 + 4) = sub_100029C70(v7, v6, v78);
      *(v13 + 12) = 2080;
      v14 = sub_10003E4B0(v12);
      v16 = sub_100029C70(v14, v15, v78);

      *(v13 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%s] Received request %s.", v13, 0x16u);
      swift_arrayDestroy();
    }

    v17 = *(v0 + 520);
    *(v0 + 408) = 0x6567617373656DLL;
    *(v0 + 416) = 0xE700000000000000;
    sub_1000E2A08();
    if (*(v17 + 16) && (v18 = sub_10000B3E0(v0 + 200), (v19 & 1) != 0))
    {
      sub_1000153C0(*(*(v0 + 520) + 56) + 32 * v18, v0 + 304);
      sub_10000C1C0(v0 + 200);
      if (swift_dynamicCast())
      {
        v20 = *(v0 + 424);
        v21 = *(v0 + 432);
        *(v0 + 648) = v20;
        *(v0 + 656) = v21;
        v79 = 0;
        memset(v78, 0, sizeof(v78));
        sub_1000123E0(v20, v21);
        sub_1000E0DF8();
        sub_100058F28(&qword_10011F628, 255, &type metadata accessor for NCProtoGetDestinationCapabilitiesRequest, &protocol conformance descriptor for NCProtoGetDestinationCapabilitiesRequest);
        sub_1000E0E18();
        v77 = (*(v0 + 528) + **(v0 + 528));
        v74 = swift_task_alloc();
        *(v0 + 664) = v74;
        *v74 = v0;
        v74[1] = sub_10004B52C;
        v75 = *(v0 + 592);
        v76 = *(v0 + 560);

        return v77(v76, v75, v8);
      }
    }

    else
    {
      sub_10000C1C0(v0 + 200);
    }

    sub_100058DE4();
    v41 = swift_allocError();
    *v42 = 1;
    swift_willThrow();

    swift_errorRetain();
    v43 = sub_1000E1EE8();
    v44 = sub_1000E2678();

    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 624);
    if (v45)
    {
      v47 = *(v0 + 616);
      v48 = *(v0 + 680);
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v78[0] = swift_slowAlloc();
      *v49 = 136315650;
      v51 = sub_100029C70(v47, v46, v78);

      *(v49 + 4) = v51;
      *(v49 + 12) = 2080;
      v52 = sub_10003E4B0(v48);
      v54 = sub_100029C70(v52, v53, v78);

      *(v49 + 14) = v54;
      *(v49 + 22) = 2112;
      swift_errorRetain();
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v49 + 24) = v55;
      *v50 = v55;
      _os_log_impl(&_mh_execute_header, v43, v44, "[%s] Error handling request %s: %@.", v49, 0x20u);
      sub_1000033C8(v50, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v59 = *(v0 + 504);
    swift_errorRetain();
    v59(0, 0, v41);

    goto LABEL_44;
  }

  *(v0 + 392) = sub_1000E2338();
  *(v0 + 400) = v56;
  sub_1000E2A08();
  if (*(v2 + 16) && (v57 = sub_10000B3E0(v0 + 160), (v58 & 1) != 0))
  {
    sub_1000153C0(*(v2 + 56) + 32 * v57, v0 + 272);
    sub_10000C1C0(v0 + 160);
    if (swift_dynamicCast())
    {
      v8 = sub_1000449DC(*(v0 + 456), *(v0 + 464), 0);

      if (v8)
      {

        goto LABEL_7;
      }
    }
  }

  else
  {
    sub_10000C1C0(v0 + 160);
  }

  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v60 = sub_1000E1F08();
  sub_1000049D0(v60, qword_1001231A0);

  v61 = sub_1000E1EE8();
  v62 = sub_1000E2678();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = *(v0 + 680);
    v64 = swift_slowAlloc();
    *&v78[0] = swift_slowAlloc();
    *v64 = 136315394;
    v65 = sub_10003E4B0(v63);
    v67 = sub_100029C70(v65, v66, v78);

    *(v64 + 4) = v67;
    *(v64 + 12) = 2080;
    *(v0 + 480) = v2;

    sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
    v68 = sub_1000E2368();
    v70 = sub_100029C70(v68, v69, v78);

    *(v64 + 14) = v70;
    _os_log_impl(&_mh_execute_header, v61, v62, "Received request %s from unrecognized device %s.", v64, 0x16u);
    swift_arrayDestroy();
  }

  v71 = *(v0 + 504);
  sub_100058DE4();
  v72 = swift_allocError();
  *v73 = 3;
  v71(0, 0, v72);

LABEL_44:

LABEL_25:

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_10004B52C()
{
  v2 = *v1;
  *(*v1 + 672) = v0;

  v3 = *(v2 + 600);
  if (v0)
  {
    v4 = sub_10005A56C;
  }

  else
  {
    v4 = sub_10004B658;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10004B658()
{
  v51 = v0;
  v1 = *(v0 + 672);
  sub_100058F28(&qword_100120140, 255, &type metadata accessor for NCProtoGetDestinationCapabilitiesResponse, &protocol conformance descriptor for NCProtoGetDestinationCapabilitiesResponse);
  v2 = sub_1000E0E28();
  if (v1)
  {
    v4 = *(v0 + 592);
    v5 = *(v0 + 584);
    v6 = *(v0 + 576);
    v7 = *(v0 + 560);
    v8 = *(v0 + 552);
    v9 = *(v0 + 544);
    sub_100006660(*(v0 + 648), *(v0 + 656));
    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v6);

    swift_errorRetain();
    v10 = sub_1000E1EE8();
    v11 = sub_1000E2678();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 624);
    if (v12)
    {
      v14 = *(v0 + 616);
      v15 = *(v0 + 680);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v16 = 136315650;
      v18 = sub_100029C70(v14, v13, v50);

      *(v16 + 4) = v18;
      *(v16 + 12) = 2080;
      v19 = sub_10003E4B0(v15);
      v21 = sub_100029C70(v19, v20, v50);

      *(v16 + 14) = v21;
      *(v16 + 22) = 2112;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 24) = v22;
      *v17 = v22;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%s] Error handling request %s: %@.", v16, 0x20u);
      sub_1000033C8(v17, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v34 = *(v0 + 504);
    swift_errorRetain();
    v34(0, 0, v1);
  }

  else
  {
    v48 = v2;
    v49 = v3;

    v23 = sub_1000E1EE8();
    v24 = sub_1000E2698();

    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 624);
    if (v25)
    {
      v27 = *(v0 + 616);
      v28 = *(v0 + 680);
      v29 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v29 = 136315394;
      v30 = sub_100029C70(v27, v26, v50);

      *(v29 + 4) = v30;
      *(v29 + 12) = 2080;
      v31 = sub_10003E4B0(v28);
      v33 = sub_100029C70(v31, v32, v50);

      *(v29 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v23, v24, "[%s] Returning response for %s.", v29, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v47 = *(v0 + 592);
    v35 = *(v0 + 584);
    v45 = *(v0 + 656);
    v46 = *(v0 + 576);
    v43 = *(v0 + 648);
    v44 = *(v0 + 560);
    v36 = *(v0 + 552);
    v42 = *(v0 + 544);
    v37 = *(v0 + 504);
    sub_10000ADE4(&unk_1001201F0, &unk_1000F1CF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000F07C0;
    *(v0 + 440) = 0x6567617373656DLL;
    *(v0 + 448) = 0xE700000000000000;
    sub_1000E2A08();
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v48;
    *(inited + 80) = v49;
    sub_1000123E0(v48, v49);
    v39 = sub_10000C018(inited);
    swift_setDeallocating();
    sub_1000033C8(inited + 32, &qword_10011DEC0, &unk_1000F0490);
    v37(v39, 0, 0);

    sub_100006660(v48, v49);
    sub_100006660(v43, v45);
    (*(v36 + 8))(v44, v42);
    (*(v35 + 8))(v47, v46);
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_10004BC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 536) = v15;
  *(v8 + 520) = v14;
  *(v8 + 504) = a7;
  *(v8 + 512) = a8;
  *(v8 + 680) = a6;
  *(v8 + 488) = a4;
  *(v8 + 496) = a5;
  v9 = sub_1000E1BD8();
  *(v8 + 544) = v9;
  *(v8 + 552) = *(v9 - 8);
  *(v8 + 560) = swift_task_alloc();
  sub_1000E0E08();
  *(v8 + 568) = swift_task_alloc();
  v10 = sub_1000E1AA8();
  *(v8 + 576) = v10;
  *(v8 + 584) = *(v10 - 8);
  *(v8 + 592) = swift_task_alloc();
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v11 = qword_1001230E0;
  *(v8 + 600) = qword_1001230E0;

  return _swift_task_switch(sub_10004BDAC, v11, 0);
}

uint64_t sub_10004BDAC()
{
  v80 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 608) = Strong;
  if (!Strong)
  {
    goto LABEL_17;
  }

  v2 = *(v0 + 496);
  if (!v2)
  {
    goto LABEL_16;
  }

  *(v0 + 360) = sub_1000E2338();
  *(v0 + 368) = v3;
  sub_1000E2A08();
  if (!*(v2 + 16) || (v4 = sub_10000B3E0(v0 + 120), (v5 & 1) == 0))
  {
    sub_10000C1C0(v0 + 120);
    goto LABEL_16;
  }

  sub_1000153C0(*(v2 + 56) + 32 * v4, v0 + 240);
  sub_10000C1C0(v0 + 120);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

LABEL_17:
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 496);
    v23 = sub_1000E1F08();
    sub_1000049D0(v23, qword_1001231A0);

    v24 = sub_1000E1EE8();
    v25 = sub_1000E2678();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 496);
      v27 = *(v0 + 680);
      v28 = swift_slowAlloc();
      *&v78[0] = swift_slowAlloc();
      *v28 = 136315394;
      v29 = sub_10003E4B0(v27);
      v31 = sub_100029C70(v29, v30, v78);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      if (v26)
      {
        *(v0 + 472) = v22;

        sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
        v32 = sub_1000E2368();
        v34 = v33;
      }

      else
      {
        v34 = 0xE300000000000000;
        v32 = 7104878;
      }

      v35 = sub_100029C70(v32, v34, v78);

      *(v28 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v24, v25, "Received invalid request %s options %s.", v28, 0x16u);
      swift_arrayDestroy();
    }

    v36 = *(v0 + 504);
    sub_100058DE4();
    v37 = swift_allocError();
    *v38 = 3;
    v36(0, 0, v37);

    goto LABEL_25;
  }

  v7 = *(v0 + 376);
  v6 = *(v0 + 384);
  *(v0 + 616) = v7;
  *(v0 + 624) = v6;

  v8 = sub_1000449DC(v7, v6, 0);

  if (v8)
  {
LABEL_7:
    *(v0 + 632) = v8;

    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v9 = sub_1000E1F08();
    *(v0 + 640) = sub_1000049D0(v9, qword_1001231A0);

    v10 = sub_1000E1EE8();
    v11 = sub_1000E2698();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 680);
      v13 = swift_slowAlloc();
      *&v78[0] = swift_slowAlloc();
      *v13 = 136315394;
      *(v13 + 4) = sub_100029C70(v7, v6, v78);
      *(v13 + 12) = 2080;
      v14 = sub_10003E4B0(v12);
      v16 = sub_100029C70(v14, v15, v78);

      *(v13 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%s] Received request %s.", v13, 0x16u);
      swift_arrayDestroy();
    }

    v17 = *(v0 + 520);
    *(v0 + 408) = 0x6567617373656DLL;
    *(v0 + 416) = 0xE700000000000000;
    sub_1000E2A08();
    if (*(v17 + 16) && (v18 = sub_10000B3E0(v0 + 200), (v19 & 1) != 0))
    {
      sub_1000153C0(*(*(v0 + 520) + 56) + 32 * v18, v0 + 304);
      sub_10000C1C0(v0 + 200);
      if (swift_dynamicCast())
      {
        v20 = *(v0 + 424);
        v21 = *(v0 + 432);
        *(v0 + 648) = v20;
        *(v0 + 656) = v21;
        v79 = 0;
        memset(v78, 0, sizeof(v78));
        sub_1000123E0(v20, v21);
        sub_1000E0DF8();
        sub_100058F28(&qword_10011F630, 255, &type metadata accessor for NCProtoDeclineContinuityCallRequest, &protocol conformance descriptor for NCProtoDeclineContinuityCallRequest);
        sub_1000E0E18();
        v77 = (*(v0 + 528) + **(v0 + 528));
        v74 = swift_task_alloc();
        *(v0 + 664) = v74;
        *v74 = v0;
        v74[1] = sub_10004C958;
        v75 = *(v0 + 592);
        v76 = *(v0 + 560);

        return v77(v76, v75, v8);
      }
    }

    else
    {
      sub_10000C1C0(v0 + 200);
    }

    sub_100058DE4();
    v41 = swift_allocError();
    *v42 = 1;
    swift_willThrow();

    swift_errorRetain();
    v43 = sub_1000E1EE8();
    v44 = sub_1000E2678();

    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 624);
    if (v45)
    {
      v47 = *(v0 + 616);
      v48 = *(v0 + 680);
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v78[0] = swift_slowAlloc();
      *v49 = 136315650;
      v51 = sub_100029C70(v47, v46, v78);

      *(v49 + 4) = v51;
      *(v49 + 12) = 2080;
      v52 = sub_10003E4B0(v48);
      v54 = sub_100029C70(v52, v53, v78);

      *(v49 + 14) = v54;
      *(v49 + 22) = 2112;
      swift_errorRetain();
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v49 + 24) = v55;
      *v50 = v55;
      _os_log_impl(&_mh_execute_header, v43, v44, "[%s] Error handling request %s: %@.", v49, 0x20u);
      sub_1000033C8(v50, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v59 = *(v0 + 504);
    swift_errorRetain();
    v59(0, 0, v41);

    goto LABEL_44;
  }

  *(v0 + 392) = sub_1000E2338();
  *(v0 + 400) = v56;
  sub_1000E2A08();
  if (*(v2 + 16) && (v57 = sub_10000B3E0(v0 + 160), (v58 & 1) != 0))
  {
    sub_1000153C0(*(v2 + 56) + 32 * v57, v0 + 272);
    sub_10000C1C0(v0 + 160);
    if (swift_dynamicCast())
    {
      v8 = sub_1000449DC(*(v0 + 456), *(v0 + 464), 0);

      if (v8)
      {

        goto LABEL_7;
      }
    }
  }

  else
  {
    sub_10000C1C0(v0 + 160);
  }

  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v60 = sub_1000E1F08();
  sub_1000049D0(v60, qword_1001231A0);

  v61 = sub_1000E1EE8();
  v62 = sub_1000E2678();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = *(v0 + 680);
    v64 = swift_slowAlloc();
    *&v78[0] = swift_slowAlloc();
    *v64 = 136315394;
    v65 = sub_10003E4B0(v63);
    v67 = sub_100029C70(v65, v66, v78);

    *(v64 + 4) = v67;
    *(v64 + 12) = 2080;
    *(v0 + 480) = v2;

    sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
    v68 = sub_1000E2368();
    v70 = sub_100029C70(v68, v69, v78);

    *(v64 + 14) = v70;
    _os_log_impl(&_mh_execute_header, v61, v62, "Received request %s from unrecognized device %s.", v64, 0x16u);
    swift_arrayDestroy();
  }

  v71 = *(v0 + 504);
  sub_100058DE4();
  v72 = swift_allocError();
  *v73 = 3;
  v71(0, 0, v72);

LABEL_44:

LABEL_25:

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_10004C958()
{
  v2 = *v1;
  *(*v1 + 672) = v0;

  v3 = *(v2 + 600);
  if (v0)
  {
    v4 = sub_10005A56C;
  }

  else
  {
    v4 = sub_10004CA84;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10004CA84()
{
  v51 = v0;
  v1 = *(v0 + 672);
  sub_100058F28(&qword_10011F638, 255, &type metadata accessor for NCProtoDeclineContinuityCallResponse, &protocol conformance descriptor for NCProtoDeclineContinuityCallResponse);
  v2 = sub_1000E0E28();
  if (v1)
  {
    v4 = *(v0 + 592);
    v5 = *(v0 + 584);
    v6 = *(v0 + 576);
    v7 = *(v0 + 560);
    v8 = *(v0 + 552);
    v9 = *(v0 + 544);
    sub_100006660(*(v0 + 648), *(v0 + 656));
    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v6);

    swift_errorRetain();
    v10 = sub_1000E1EE8();
    v11 = sub_1000E2678();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 624);
    if (v12)
    {
      v14 = *(v0 + 616);
      v15 = *(v0 + 680);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v16 = 136315650;
      v18 = sub_100029C70(v14, v13, v50);

      *(v16 + 4) = v18;
      *(v16 + 12) = 2080;
      v19 = sub_10003E4B0(v15);
      v21 = sub_100029C70(v19, v20, v50);

      *(v16 + 14) = v21;
      *(v16 + 22) = 2112;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 24) = v22;
      *v17 = v22;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%s] Error handling request %s: %@.", v16, 0x20u);
      sub_1000033C8(v17, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v34 = *(v0 + 504);
    swift_errorRetain();
    v34(0, 0, v1);
  }

  else
  {
    v48 = v2;
    v49 = v3;

    v23 = sub_1000E1EE8();
    v24 = sub_1000E2698();

    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 624);
    if (v25)
    {
      v27 = *(v0 + 616);
      v28 = *(v0 + 680);
      v29 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v29 = 136315394;
      v30 = sub_100029C70(v27, v26, v50);

      *(v29 + 4) = v30;
      *(v29 + 12) = 2080;
      v31 = sub_10003E4B0(v28);
      v33 = sub_100029C70(v31, v32, v50);

      *(v29 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v23, v24, "[%s] Returning response for %s.", v29, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v47 = *(v0 + 592);
    v35 = *(v0 + 584);
    v45 = *(v0 + 656);
    v46 = *(v0 + 576);
    v43 = *(v0 + 648);
    v44 = *(v0 + 560);
    v36 = *(v0 + 552);
    v42 = *(v0 + 544);
    v37 = *(v0 + 504);
    sub_10000ADE4(&unk_1001201F0, &unk_1000F1CF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000F07C0;
    *(v0 + 440) = 0x6567617373656DLL;
    *(v0 + 448) = 0xE700000000000000;
    sub_1000E2A08();
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v48;
    *(inited + 80) = v49;
    sub_1000123E0(v48, v49);
    v39 = sub_10000C018(inited);
    swift_setDeallocating();
    sub_1000033C8(inited + 32, &qword_10011DEC0, &unk_1000F0490);
    v37(v39, 0, 0);

    sub_100006660(v48, v49);
    sub_100006660(v43, v45);
    (*(v36 + 8))(v44, v42);
    (*(v35 + 8))(v47, v46);
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_10004D038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 536) = v15;
  *(v8 + 520) = v14;
  *(v8 + 504) = a7;
  *(v8 + 512) = a8;
  *(v8 + 680) = a6;
  *(v8 + 488) = a4;
  *(v8 + 496) = a5;
  v9 = sub_1000E1CB8();
  *(v8 + 544) = v9;
  *(v8 + 552) = *(v9 - 8);
  *(v8 + 560) = swift_task_alloc();
  sub_1000E0E08();
  *(v8 + 568) = swift_task_alloc();
  v10 = sub_1000E1C48();
  *(v8 + 576) = v10;
  *(v8 + 584) = *(v10 - 8);
  *(v8 + 592) = swift_task_alloc();
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v11 = qword_1001230E0;
  *(v8 + 600) = qword_1001230E0;

  return _swift_task_switch(sub_10004D1D8, v11, 0);
}

uint64_t sub_10004D1D8()
{
  v80 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 608) = Strong;
  if (!Strong)
  {
    goto LABEL_17;
  }

  v2 = *(v0 + 496);
  if (!v2)
  {
    goto LABEL_16;
  }

  *(v0 + 360) = sub_1000E2338();
  *(v0 + 368) = v3;
  sub_1000E2A08();
  if (!*(v2 + 16) || (v4 = sub_10000B3E0(v0 + 120), (v5 & 1) == 0))
  {
    sub_10000C1C0(v0 + 120);
    goto LABEL_16;
  }

  sub_1000153C0(*(v2 + 56) + 32 * v4, v0 + 240);
  sub_10000C1C0(v0 + 120);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

LABEL_17:
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 496);
    v23 = sub_1000E1F08();
    sub_1000049D0(v23, qword_1001231A0);

    v24 = sub_1000E1EE8();
    v25 = sub_1000E2678();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 496);
      v27 = *(v0 + 680);
      v28 = swift_slowAlloc();
      *&v78[0] = swift_slowAlloc();
      *v28 = 136315394;
      v29 = sub_10003E4B0(v27);
      v31 = sub_100029C70(v29, v30, v78);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      if (v26)
      {
        *(v0 + 472) = v22;

        sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
        v32 = sub_1000E2368();
        v34 = v33;
      }

      else
      {
        v34 = 0xE300000000000000;
        v32 = 7104878;
      }

      v35 = sub_100029C70(v32, v34, v78);

      *(v28 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v24, v25, "Received invalid request %s options %s.", v28, 0x16u);
      swift_arrayDestroy();
    }

    v36 = *(v0 + 504);
    sub_100058DE4();
    v37 = swift_allocError();
    *v38 = 3;
    v36(0, 0, v37);

    goto LABEL_25;
  }

  v7 = *(v0 + 376);
  v6 = *(v0 + 384);
  *(v0 + 616) = v7;
  *(v0 + 624) = v6;

  v8 = sub_1000449DC(v7, v6, 0);

  if (v8)
  {
LABEL_7:
    *(v0 + 632) = v8;

    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v9 = sub_1000E1F08();
    *(v0 + 640) = sub_1000049D0(v9, qword_1001231A0);

    v10 = sub_1000E1EE8();
    v11 = sub_1000E2698();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 680);
      v13 = swift_slowAlloc();
      *&v78[0] = swift_slowAlloc();
      *v13 = 136315394;
      *(v13 + 4) = sub_100029C70(v7, v6, v78);
      *(v13 + 12) = 2080;
      v14 = sub_10003E4B0(v12);
      v16 = sub_100029C70(v14, v15, v78);

      *(v13 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%s] Received request %s.", v13, 0x16u);
      swift_arrayDestroy();
    }

    v17 = *(v0 + 520);
    *(v0 + 408) = 0x6567617373656DLL;
    *(v0 + 416) = 0xE700000000000000;
    sub_1000E2A08();
    if (*(v17 + 16) && (v18 = sub_10000B3E0(v0 + 200), (v19 & 1) != 0))
    {
      sub_1000153C0(*(*(v0 + 520) + 56) + 32 * v18, v0 + 304);
      sub_10000C1C0(v0 + 200);
      if (swift_dynamicCast())
      {
        v20 = *(v0 + 424);
        v21 = *(v0 + 432);
        *(v0 + 648) = v20;
        *(v0 + 656) = v21;
        v79 = 0;
        memset(v78, 0, sizeof(v78));
        sub_1000123E0(v20, v21);
        sub_1000E0DF8();
        sub_100058F28(&qword_10011F640, 255, &type metadata accessor for NCProtoJoinActiveConversationRequest, &protocol conformance descriptor for NCProtoJoinActiveConversationRequest);
        sub_1000E0E18();
        v77 = (*(v0 + 528) + **(v0 + 528));
        v74 = swift_task_alloc();
        *(v0 + 664) = v74;
        *v74 = v0;
        v74[1] = sub_10004DD84;
        v75 = *(v0 + 592);
        v76 = *(v0 + 560);

        return v77(v76, v75, v8);
      }
    }

    else
    {
      sub_10000C1C0(v0 + 200);
    }

    sub_100058DE4();
    v41 = swift_allocError();
    *v42 = 1;
    swift_willThrow();

    swift_errorRetain();
    v43 = sub_1000E1EE8();
    v44 = sub_1000E2678();

    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 624);
    if (v45)
    {
      v47 = *(v0 + 616);
      v48 = *(v0 + 680);
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v78[0] = swift_slowAlloc();
      *v49 = 136315650;
      v51 = sub_100029C70(v47, v46, v78);

      *(v49 + 4) = v51;
      *(v49 + 12) = 2080;
      v52 = sub_10003E4B0(v48);
      v54 = sub_100029C70(v52, v53, v78);

      *(v49 + 14) = v54;
      *(v49 + 22) = 2112;
      swift_errorRetain();
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v49 + 24) = v55;
      *v50 = v55;
      _os_log_impl(&_mh_execute_header, v43, v44, "[%s] Error handling request %s: %@.", v49, 0x20u);
      sub_1000033C8(v50, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v59 = *(v0 + 504);
    swift_errorRetain();
    v59(0, 0, v41);

    goto LABEL_44;
  }

  *(v0 + 392) = sub_1000E2338();
  *(v0 + 400) = v56;
  sub_1000E2A08();
  if (*(v2 + 16) && (v57 = sub_10000B3E0(v0 + 160), (v58 & 1) != 0))
  {
    sub_1000153C0(*(v2 + 56) + 32 * v57, v0 + 272);
    sub_10000C1C0(v0 + 160);
    if (swift_dynamicCast())
    {
      v8 = sub_1000449DC(*(v0 + 456), *(v0 + 464), 0);

      if (v8)
      {

        goto LABEL_7;
      }
    }
  }

  else
  {
    sub_10000C1C0(v0 + 160);
  }

  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v60 = sub_1000E1F08();
  sub_1000049D0(v60, qword_1001231A0);

  v61 = sub_1000E1EE8();
  v62 = sub_1000E2678();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = *(v0 + 680);
    v64 = swift_slowAlloc();
    *&v78[0] = swift_slowAlloc();
    *v64 = 136315394;
    v65 = sub_10003E4B0(v63);
    v67 = sub_100029C70(v65, v66, v78);

    *(v64 + 4) = v67;
    *(v64 + 12) = 2080;
    *(v0 + 480) = v2;

    sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
    v68 = sub_1000E2368();
    v70 = sub_100029C70(v68, v69, v78);

    *(v64 + 14) = v70;
    _os_log_impl(&_mh_execute_header, v61, v62, "Received request %s from unrecognized device %s.", v64, 0x16u);
    swift_arrayDestroy();
  }

  v71 = *(v0 + 504);
  sub_100058DE4();
  v72 = swift_allocError();
  *v73 = 3;
  v71(0, 0, v72);

LABEL_44:

LABEL_25:

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_10004DD84()
{
  v2 = *v1;
  *(*v1 + 672) = v0;

  v3 = *(v2 + 600);
  if (v0)
  {
    v4 = sub_10005A56C;
  }

  else
  {
    v4 = sub_10004DEB0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10004DEB0()
{
  v51 = v0;
  v1 = *(v0 + 672);
  sub_100058F28(&qword_10011F648, 255, &type metadata accessor for NCProtoJoinActiveConversationResponse, &protocol conformance descriptor for NCProtoJoinActiveConversationResponse);
  v2 = sub_1000E0E28();
  if (v1)
  {
    v4 = *(v0 + 592);
    v5 = *(v0 + 584);
    v6 = *(v0 + 576);
    v7 = *(v0 + 560);
    v8 = *(v0 + 552);
    v9 = *(v0 + 544);
    sub_100006660(*(v0 + 648), *(v0 + 656));
    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v6);

    swift_errorRetain();
    v10 = sub_1000E1EE8();
    v11 = sub_1000E2678();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 624);
    if (v12)
    {
      v14 = *(v0 + 616);
      v15 = *(v0 + 680);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v16 = 136315650;
      v18 = sub_100029C70(v14, v13, v50);

      *(v16 + 4) = v18;
      *(v16 + 12) = 2080;
      v19 = sub_10003E4B0(v15);
      v21 = sub_100029C70(v19, v20, v50);

      *(v16 + 14) = v21;
      *(v16 + 22) = 2112;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 24) = v22;
      *v17 = v22;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%s] Error handling request %s: %@.", v16, 0x20u);
      sub_1000033C8(v17, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v34 = *(v0 + 504);
    swift_errorRetain();
    v34(0, 0, v1);
  }

  else
  {
    v48 = v2;
    v49 = v3;

    v23 = sub_1000E1EE8();
    v24 = sub_1000E2698();

    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 624);
    if (v25)
    {
      v27 = *(v0 + 616);
      v28 = *(v0 + 680);
      v29 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v29 = 136315394;
      v30 = sub_100029C70(v27, v26, v50);

      *(v29 + 4) = v30;
      *(v29 + 12) = 2080;
      v31 = sub_10003E4B0(v28);
      v33 = sub_100029C70(v31, v32, v50);

      *(v29 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v23, v24, "[%s] Returning response for %s.", v29, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v47 = *(v0 + 592);
    v35 = *(v0 + 584);
    v45 = *(v0 + 656);
    v46 = *(v0 + 576);
    v43 = *(v0 + 648);
    v44 = *(v0 + 560);
    v36 = *(v0 + 552);
    v42 = *(v0 + 544);
    v37 = *(v0 + 504);
    sub_10000ADE4(&unk_1001201F0, &unk_1000F1CF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000F07C0;
    *(v0 + 440) = 0x6567617373656DLL;
    *(v0 + 448) = 0xE700000000000000;
    sub_1000E2A08();
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v48;
    *(inited + 80) = v49;
    sub_1000123E0(v48, v49);
    v39 = sub_10000C018(inited);
    swift_setDeallocating();
    sub_1000033C8(inited + 32, &qword_10011DEC0, &unk_1000F0490);
    v37(v39, 0, 0);

    sub_100006660(v48, v49);
    sub_100006660(v43, v45);
    (*(v36 + 8))(v44, v42);
    (*(v35 + 8))(v47, v46);
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_10004E464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 536) = v15;
  *(v8 + 520) = v14;
  *(v8 + 504) = a7;
  *(v8 + 512) = a8;
  *(v8 + 680) = a6;
  *(v8 + 488) = a4;
  *(v8 + 496) = a5;
  v9 = sub_1000E1E08();
  *(v8 + 544) = v9;
  *(v8 + 552) = *(v9 - 8);
  *(v8 + 560) = swift_task_alloc();
  sub_1000E0E08();
  *(v8 + 568) = swift_task_alloc();
  v10 = sub_1000E1DC8();
  *(v8 + 576) = v10;
  *(v8 + 584) = *(v10 - 8);
  *(v8 + 592) = swift_task_alloc();
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v11 = qword_1001230E0;
  *(v8 + 600) = qword_1001230E0;

  return _swift_task_switch(sub_10004E604, v11, 0);
}

uint64_t sub_10004E604()
{
  v80 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 608) = Strong;
  if (!Strong)
  {
    goto LABEL_17;
  }

  v2 = *(v0 + 496);
  if (!v2)
  {
    goto LABEL_16;
  }

  *(v0 + 360) = sub_1000E2338();
  *(v0 + 368) = v3;
  sub_1000E2A08();
  if (!*(v2 + 16) || (v4 = sub_10000B3E0(v0 + 120), (v5 & 1) == 0))
  {
    sub_10000C1C0(v0 + 120);
    goto LABEL_16;
  }

  sub_1000153C0(*(v2 + 56) + 32 * v4, v0 + 240);
  sub_10000C1C0(v0 + 120);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

LABEL_17:
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 496);
    v23 = sub_1000E1F08();
    sub_1000049D0(v23, qword_1001231A0);

    v24 = sub_1000E1EE8();
    v25 = sub_1000E2678();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 496);
      v27 = *(v0 + 680);
      v28 = swift_slowAlloc();
      *&v78[0] = swift_slowAlloc();
      *v28 = 136315394;
      v29 = sub_10003E4B0(v27);
      v31 = sub_100029C70(v29, v30, v78);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      if (v26)
      {
        *(v0 + 472) = v22;

        sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
        v32 = sub_1000E2368();
        v34 = v33;
      }

      else
      {
        v34 = 0xE300000000000000;
        v32 = 7104878;
      }

      v35 = sub_100029C70(v32, v34, v78);

      *(v28 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v24, v25, "Received invalid request %s options %s.", v28, 0x16u);
      swift_arrayDestroy();
    }

    v36 = *(v0 + 504);
    sub_100058DE4();
    v37 = swift_allocError();
    *v38 = 3;
    v36(0, 0, v37);

    goto LABEL_25;
  }

  v7 = *(v0 + 376);
  v6 = *(v0 + 384);
  *(v0 + 616) = v7;
  *(v0 + 624) = v6;

  v8 = sub_1000449DC(v7, v6, 0);

  if (v8)
  {
LABEL_7:
    *(v0 + 632) = v8;

    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v9 = sub_1000E1F08();
    *(v0 + 640) = sub_1000049D0(v9, qword_1001231A0);

    v10 = sub_1000E1EE8();
    v11 = sub_1000E2698();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 680);
      v13 = swift_slowAlloc();
      *&v78[0] = swift_slowAlloc();
      *v13 = 136315394;
      *(v13 + 4) = sub_100029C70(v7, v6, v78);
      *(v13 + 12) = 2080;
      v14 = sub_10003E4B0(v12);
      v16 = sub_100029C70(v14, v15, v78);

      *(v13 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%s] Received request %s.", v13, 0x16u);
      swift_arrayDestroy();
    }

    v17 = *(v0 + 520);
    *(v0 + 408) = 0x6567617373656DLL;
    *(v0 + 416) = 0xE700000000000000;
    sub_1000E2A08();
    if (*(v17 + 16) && (v18 = sub_10000B3E0(v0 + 200), (v19 & 1) != 0))
    {
      sub_1000153C0(*(*(v0 + 520) + 56) + 32 * v18, v0 + 304);
      sub_10000C1C0(v0 + 200);
      if (swift_dynamicCast())
      {
        v20 = *(v0 + 424);
        v21 = *(v0 + 432);
        *(v0 + 648) = v20;
        *(v0 + 656) = v21;
        v79 = 0;
        memset(v78, 0, sizeof(v78));
        sub_1000123E0(v20, v21);
        sub_1000E0DF8();
        sub_100058F28(&qword_10011F650, 255, &type metadata accessor for NCProtoAddConversationParticipantsRequest, &protocol conformance descriptor for NCProtoAddConversationParticipantsRequest);
        sub_1000E0E18();
        v77 = (*(v0 + 528) + **(v0 + 528));
        v74 = swift_task_alloc();
        *(v0 + 664) = v74;
        *v74 = v0;
        v74[1] = sub_10004F1B0;
        v75 = *(v0 + 592);
        v76 = *(v0 + 560);

        return v77(v76, v75, v8);
      }
    }

    else
    {
      sub_10000C1C0(v0 + 200);
    }

    sub_100058DE4();
    v41 = swift_allocError();
    *v42 = 1;
    swift_willThrow();

    swift_errorRetain();
    v43 = sub_1000E1EE8();
    v44 = sub_1000E2678();

    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 624);
    if (v45)
    {
      v47 = *(v0 + 616);
      v48 = *(v0 + 680);
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v78[0] = swift_slowAlloc();
      *v49 = 136315650;
      v51 = sub_100029C70(v47, v46, v78);

      *(v49 + 4) = v51;
      *(v49 + 12) = 2080;
      v52 = sub_10003E4B0(v48);
      v54 = sub_100029C70(v52, v53, v78);

      *(v49 + 14) = v54;
      *(v49 + 22) = 2112;
      swift_errorRetain();
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v49 + 24) = v55;
      *v50 = v55;
      _os_log_impl(&_mh_execute_header, v43, v44, "[%s] Error handling request %s: %@.", v49, 0x20u);
      sub_1000033C8(v50, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v59 = *(v0 + 504);
    swift_errorRetain();
    v59(0, 0, v41);

    goto LABEL_44;
  }

  *(v0 + 392) = sub_1000E2338();
  *(v0 + 400) = v56;
  sub_1000E2A08();
  if (*(v2 + 16) && (v57 = sub_10000B3E0(v0 + 160), (v58 & 1) != 0))
  {
    sub_1000153C0(*(v2 + 56) + 32 * v57, v0 + 272);
    sub_10000C1C0(v0 + 160);
    if (swift_dynamicCast())
    {
      v8 = sub_1000449DC(*(v0 + 456), *(v0 + 464), 0);

      if (v8)
      {

        goto LABEL_7;
      }
    }
  }

  else
  {
    sub_10000C1C0(v0 + 160);
  }

  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v60 = sub_1000E1F08();
  sub_1000049D0(v60, qword_1001231A0);

  v61 = sub_1000E1EE8();
  v62 = sub_1000E2678();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = *(v0 + 680);
    v64 = swift_slowAlloc();
    *&v78[0] = swift_slowAlloc();
    *v64 = 136315394;
    v65 = sub_10003E4B0(v63);
    v67 = sub_100029C70(v65, v66, v78);

    *(v64 + 4) = v67;
    *(v64 + 12) = 2080;
    *(v0 + 480) = v2;

    sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
    v68 = sub_1000E2368();
    v70 = sub_100029C70(v68, v69, v78);

    *(v64 + 14) = v70;
    _os_log_impl(&_mh_execute_header, v61, v62, "Received request %s from unrecognized device %s.", v64, 0x16u);
    swift_arrayDestroy();
  }

  v71 = *(v0 + 504);
  sub_100058DE4();
  v72 = swift_allocError();
  *v73 = 3;
  v71(0, 0, v72);

LABEL_44:

LABEL_25:

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_10004F1B0()
{
  v2 = *v1;
  *(*v1 + 672) = v0;

  v3 = *(v2 + 600);
  if (v0)
  {
    v4 = sub_10005A56C;
  }

  else
  {
    v4 = sub_10004F2DC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10004F2DC()
{
  v51 = v0;
  v1 = *(v0 + 672);
  sub_100058F28(&qword_10011F658, 255, &type metadata accessor for NCProtoAddConversationParticipantsResponse, &protocol conformance descriptor for NCProtoAddConversationParticipantsResponse);
  v2 = sub_1000E0E28();
  if (v1)
  {
    v4 = *(v0 + 592);
    v5 = *(v0 + 584);
    v6 = *(v0 + 576);
    v7 = *(v0 + 560);
    v8 = *(v0 + 552);
    v9 = *(v0 + 544);
    sub_100006660(*(v0 + 648), *(v0 + 656));
    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v6);

    swift_errorRetain();
    v10 = sub_1000E1EE8();
    v11 = sub_1000E2678();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 624);
    if (v12)
    {
      v14 = *(v0 + 616);
      v15 = *(v0 + 680);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v16 = 136315650;
      v18 = sub_100029C70(v14, v13, v50);

      *(v16 + 4) = v18;
      *(v16 + 12) = 2080;
      v19 = sub_10003E4B0(v15);
      v21 = sub_100029C70(v19, v20, v50);

      *(v16 + 14) = v21;
      *(v16 + 22) = 2112;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 24) = v22;
      *v17 = v22;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%s] Error handling request %s: %@.", v16, 0x20u);
      sub_1000033C8(v17, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v34 = *(v0 + 504);
    swift_errorRetain();
    v34(0, 0, v1);
  }

  else
  {
    v48 = v2;
    v49 = v3;

    v23 = sub_1000E1EE8();
    v24 = sub_1000E2698();

    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 624);
    if (v25)
    {
      v27 = *(v0 + 616);
      v28 = *(v0 + 680);
      v29 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v29 = 136315394;
      v30 = sub_100029C70(v27, v26, v50);

      *(v29 + 4) = v30;
      *(v29 + 12) = 2080;
      v31 = sub_10003E4B0(v28);
      v33 = sub_100029C70(v31, v32, v50);

      *(v29 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v23, v24, "[%s] Returning response for %s.", v29, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v47 = *(v0 + 592);
    v35 = *(v0 + 584);
    v45 = *(v0 + 656);
    v46 = *(v0 + 576);
    v43 = *(v0 + 648);
    v44 = *(v0 + 560);
    v36 = *(v0 + 552);
    v42 = *(v0 + 544);
    v37 = *(v0 + 504);
    sub_10000ADE4(&unk_1001201F0, &unk_1000F1CF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000F07C0;
    *(v0 + 440) = 0x6567617373656DLL;
    *(v0 + 448) = 0xE700000000000000;
    sub_1000E2A08();
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v48;
    *(inited + 80) = v49;
    sub_1000123E0(v48, v49);
    v39 = sub_10000C018(inited);
    swift_setDeallocating();
    sub_1000033C8(inited + 32, &qword_10011DEC0, &unk_1000F0490);
    v37(v39, 0, 0);

    sub_100006660(v48, v49);
    sub_100006660(v43, v45);
    (*(v36 + 8))(v44, v42);
    (*(v35 + 8))(v47, v46);
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_10004F890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 536) = v15;
  *(v8 + 520) = v14;
  *(v8 + 504) = a7;
  *(v8 + 512) = a8;
  *(v8 + 680) = a6;
  *(v8 + 488) = a4;
  *(v8 + 496) = a5;
  v9 = sub_1000E1A28();
  *(v8 + 544) = v9;
  *(v8 + 552) = *(v9 - 8);
  *(v8 + 560) = swift_task_alloc();
  sub_1000E0E08();
  *(v8 + 568) = swift_task_alloc();
  v10 = sub_1000E1978();
  *(v8 + 576) = v10;
  *(v8 + 584) = *(v10 - 8);
  *(v8 + 592) = swift_task_alloc();
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v11 = qword_1001230E0;
  *(v8 + 600) = qword_1001230E0;

  return _swift_task_switch(sub_10004FA30, v11, 0);
}

uint64_t sub_10004FA30()
{
  v80 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 608) = Strong;
  if (!Strong)
  {
    goto LABEL_17;
  }

  v2 = *(v0 + 496);
  if (!v2)
  {
    goto LABEL_16;
  }

  *(v0 + 360) = sub_1000E2338();
  *(v0 + 368) = v3;
  sub_1000E2A08();
  if (!*(v2 + 16) || (v4 = sub_10000B3E0(v0 + 120), (v5 & 1) == 0))
  {
    sub_10000C1C0(v0 + 120);
    goto LABEL_16;
  }

  sub_1000153C0(*(v2 + 56) + 32 * v4, v0 + 240);
  sub_10000C1C0(v0 + 120);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

LABEL_17:
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 496);
    v23 = sub_1000E1F08();
    sub_1000049D0(v23, qword_1001231A0);

    v24 = sub_1000E1EE8();
    v25 = sub_1000E2678();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 496);
      v27 = *(v0 + 680);
      v28 = swift_slowAlloc();
      *&v78[0] = swift_slowAlloc();
      *v28 = 136315394;
      v29 = sub_10003E4B0(v27);
      v31 = sub_100029C70(v29, v30, v78);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      if (v26)
      {
        *(v0 + 472) = v22;

        sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
        v32 = sub_1000E2368();
        v34 = v33;
      }

      else
      {
        v34 = 0xE300000000000000;
        v32 = 7104878;
      }

      v35 = sub_100029C70(v32, v34, v78);

      *(v28 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v24, v25, "Received invalid request %s options %s.", v28, 0x16u);
      swift_arrayDestroy();
    }

    v36 = *(v0 + 504);
    sub_100058DE4();
    v37 = swift_allocError();
    *v38 = 3;
    v36(0, 0, v37);

    goto LABEL_25;
  }

  v7 = *(v0 + 376);
  v6 = *(v0 + 384);
  *(v0 + 616) = v7;
  *(v0 + 624) = v6;

  v8 = sub_1000449DC(v7, v6, 0);

  if (v8)
  {
LABEL_7:
    *(v0 + 632) = v8;

    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v9 = sub_1000E1F08();
    *(v0 + 640) = sub_1000049D0(v9, qword_1001231A0);

    v10 = sub_1000E1EE8();
    v11 = sub_1000E2698();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 680);
      v13 = swift_slowAlloc();
      *&v78[0] = swift_slowAlloc();
      *v13 = 136315394;
      *(v13 + 4) = sub_100029C70(v7, v6, v78);
      *(v13 + 12) = 2080;
      v14 = sub_10003E4B0(v12);
      v16 = sub_100029C70(v14, v15, v78);

      *(v13 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%s] Received request %s.", v13, 0x16u);
      swift_arrayDestroy();
    }

    v17 = *(v0 + 520);
    *(v0 + 408) = 0x6567617373656DLL;
    *(v0 + 416) = 0xE700000000000000;
    sub_1000E2A08();
    if (*(v17 + 16) && (v18 = sub_10000B3E0(v0 + 200), (v19 & 1) != 0))
    {
      sub_1000153C0(*(*(v0 + 520) + 56) + 32 * v18, v0 + 304);
      sub_10000C1C0(v0 + 200);
      if (swift_dynamicCast())
      {
        v20 = *(v0 + 424);
        v21 = *(v0 + 432);
        *(v0 + 648) = v20;
        *(v0 + 656) = v21;
        v79 = 0;
        memset(v78, 0, sizeof(v78));
        sub_1000123E0(v20, v21);
        sub_1000E0DF8();
        sub_100058F28(&qword_10011F660, 255, &type metadata accessor for NCProtoGetImageForContactRequest, &protocol conformance descriptor for NCProtoGetImageForContactRequest);
        sub_1000E0E18();
        v77 = (*(v0 + 528) + **(v0 + 528));
        v74 = swift_task_alloc();
        *(v0 + 664) = v74;
        *v74 = v0;
        v74[1] = sub_1000505DC;
        v75 = *(v0 + 592);
        v76 = *(v0 + 560);

        return v77(v76, v75, v8);
      }
    }

    else
    {
      sub_10000C1C0(v0 + 200);
    }

    sub_100058DE4();
    v41 = swift_allocError();
    *v42 = 1;
    swift_willThrow();

    swift_errorRetain();
    v43 = sub_1000E1EE8();
    v44 = sub_1000E2678();

    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 624);
    if (v45)
    {
      v47 = *(v0 + 616);
      v48 = *(v0 + 680);
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v78[0] = swift_slowAlloc();
      *v49 = 136315650;
      v51 = sub_100029C70(v47, v46, v78);

      *(v49 + 4) = v51;
      *(v49 + 12) = 2080;
      v52 = sub_10003E4B0(v48);
      v54 = sub_100029C70(v52, v53, v78);

      *(v49 + 14) = v54;
      *(v49 + 22) = 2112;
      swift_errorRetain();
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v49 + 24) = v55;
      *v50 = v55;
      _os_log_impl(&_mh_execute_header, v43, v44, "[%s] Error handling request %s: %@.", v49, 0x20u);
      sub_1000033C8(v50, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v59 = *(v0 + 504);
    swift_errorRetain();
    v59(0, 0, v41);

    goto LABEL_44;
  }

  *(v0 + 392) = sub_1000E2338();
  *(v0 + 400) = v56;
  sub_1000E2A08();
  if (*(v2 + 16) && (v57 = sub_10000B3E0(v0 + 160), (v58 & 1) != 0))
  {
    sub_1000153C0(*(v2 + 56) + 32 * v57, v0 + 272);
    sub_10000C1C0(v0 + 160);
    if (swift_dynamicCast())
    {
      v8 = sub_1000449DC(*(v0 + 456), *(v0 + 464), 0);

      if (v8)
      {

        goto LABEL_7;
      }
    }
  }

  else
  {
    sub_10000C1C0(v0 + 160);
  }

  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v60 = sub_1000E1F08();
  sub_1000049D0(v60, qword_1001231A0);

  v61 = sub_1000E1EE8();
  v62 = sub_1000E2678();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = *(v0 + 680);
    v64 = swift_slowAlloc();
    *&v78[0] = swift_slowAlloc();
    *v64 = 136315394;
    v65 = sub_10003E4B0(v63);
    v67 = sub_100029C70(v65, v66, v78);

    *(v64 + 4) = v67;
    *(v64 + 12) = 2080;
    *(v0 + 480) = v2;

    sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
    v68 = sub_1000E2368();
    v70 = sub_100029C70(v68, v69, v78);

    *(v64 + 14) = v70;
    _os_log_impl(&_mh_execute_header, v61, v62, "Received request %s from unrecognized device %s.", v64, 0x16u);
    swift_arrayDestroy();
  }

  v71 = *(v0 + 504);
  sub_100058DE4();
  v72 = swift_allocError();
  *v73 = 3;
  v71(0, 0, v72);

LABEL_44:

LABEL_25:

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1000505DC()
{
  v2 = *v1;
  *(*v1 + 672) = v0;

  v3 = *(v2 + 600);
  if (v0)
  {
    v4 = sub_10005A56C;
  }

  else
  {
    v4 = sub_100050708;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100050708()
{
  v51 = v0;
  v1 = *(v0 + 672);
  sub_100058F28(&qword_1001201A0, 255, &type metadata accessor for NCProtoGetImageForContactResponse, &protocol conformance descriptor for NCProtoGetImageForContactResponse);
  v2 = sub_1000E0E28();
  if (v1)
  {
    v4 = *(v0 + 592);
    v5 = *(v0 + 584);
    v6 = *(v0 + 576);
    v7 = *(v0 + 560);
    v8 = *(v0 + 552);
    v9 = *(v0 + 544);
    sub_100006660(*(v0 + 648), *(v0 + 656));
    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v6);

    swift_errorRetain();
    v10 = sub_1000E1EE8();
    v11 = sub_1000E2678();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 624);
    if (v12)
    {
      v14 = *(v0 + 616);
      v15 = *(v0 + 680);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v16 = 136315650;
      v18 = sub_100029C70(v14, v13, v50);

      *(v16 + 4) = v18;
      *(v16 + 12) = 2080;
      v19 = sub_10003E4B0(v15);
      v21 = sub_100029C70(v19, v20, v50);

      *(v16 + 14) = v21;
      *(v16 + 22) = 2112;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 24) = v22;
      *v17 = v22;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%s] Error handling request %s: %@.", v16, 0x20u);
      sub_1000033C8(v17, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v34 = *(v0 + 504);
    swift_errorRetain();
    v34(0, 0, v1);
  }

  else
  {
    v48 = v2;
    v49 = v3;

    v23 = sub_1000E1EE8();
    v24 = sub_1000E2698();

    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 624);
    if (v25)
    {
      v27 = *(v0 + 616);
      v28 = *(v0 + 680);
      v29 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v29 = 136315394;
      v30 = sub_100029C70(v27, v26, v50);

      *(v29 + 4) = v30;
      *(v29 + 12) = 2080;
      v31 = sub_10003E4B0(v28);
      v33 = sub_100029C70(v31, v32, v50);

      *(v29 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v23, v24, "[%s] Returning response for %s.", v29, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v47 = *(v0 + 592);
    v35 = *(v0 + 584);
    v45 = *(v0 + 656);
    v46 = *(v0 + 576);
    v43 = *(v0 + 648);
    v44 = *(v0 + 560);
    v36 = *(v0 + 552);
    v42 = *(v0 + 544);
    v37 = *(v0 + 504);
    sub_10000ADE4(&unk_1001201F0, &unk_1000F1CF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000F07C0;
    *(v0 + 440) = 0x6567617373656DLL;
    *(v0 + 448) = 0xE700000000000000;
    sub_1000E2A08();
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v48;
    *(inited + 80) = v49;
    sub_1000123E0(v48, v49);
    v39 = sub_10000C018(inited);
    swift_setDeallocating();
    sub_1000033C8(inited + 32, &qword_10011DEC0, &unk_1000F0490);
    v37(v39, 0, 0);

    sub_100006660(v48, v49);
    sub_100006660(v43, v45);
    (*(v36 + 8))(v44, v42);
    (*(v35 + 8))(v47, v46);
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_100050CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 536) = v15;
  *(v8 + 520) = v14;
  *(v8 + 504) = a7;
  *(v8 + 512) = a8;
  *(v8 + 680) = a6;
  *(v8 + 488) = a4;
  *(v8 + 496) = a5;
  v9 = sub_1000E1C98();
  *(v8 + 544) = v9;
  *(v8 + 552) = *(v9 - 8);
  *(v8 + 560) = swift_task_alloc();
  sub_1000E0E08();
  *(v8 + 568) = swift_task_alloc();
  v10 = sub_1000E1BE8();
  *(v8 + 576) = v10;
  *(v8 + 584) = *(v10 - 8);
  *(v8 + 592) = swift_task_alloc();
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v11 = qword_1001230E0;
  *(v8 + 600) = qword_1001230E0;

  return _swift_task_switch(sub_100050E5C, v11, 0);
}

uint64_t sub_100050E5C()
{
  v80 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 608) = Strong;
  if (!Strong)
  {
    goto LABEL_17;
  }

  v2 = *(v0 + 496);
  if (!v2)
  {
    goto LABEL_16;
  }

  *(v0 + 360) = sub_1000E2338();
  *(v0 + 368) = v3;
  sub_1000E2A08();
  if (!*(v2 + 16) || (v4 = sub_10000B3E0(v0 + 120), (v5 & 1) == 0))
  {
    sub_10000C1C0(v0 + 120);
    goto LABEL_16;
  }

  sub_1000153C0(*(v2 + 56) + 32 * v4, v0 + 240);
  sub_10000C1C0(v0 + 120);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

LABEL_17:
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 496);
    v23 = sub_1000E1F08();
    sub_1000049D0(v23, qword_1001231A0);

    v24 = sub_1000E1EE8();
    v25 = sub_1000E2678();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 496);
      v27 = *(v0 + 680);
      v28 = swift_slowAlloc();
      *&v78[0] = swift_slowAlloc();
      *v28 = 136315394;
      v29 = sub_10003E4B0(v27);
      v31 = sub_100029C70(v29, v30, v78);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      if (v26)
      {
        *(v0 + 472) = v22;

        sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
        v32 = sub_1000E2368();
        v34 = v33;
      }

      else
      {
        v34 = 0xE300000000000000;
        v32 = 7104878;
      }

      v35 = sub_100029C70(v32, v34, v78);

      *(v28 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v24, v25, "Received invalid request %s options %s.", v28, 0x16u);
      swift_arrayDestroy();
    }

    v36 = *(v0 + 504);
    sub_100058DE4();
    v37 = swift_allocError();
    *v38 = 3;
    v36(0, 0, v37);

    goto LABEL_25;
  }

  v7 = *(v0 + 376);
  v6 = *(v0 + 384);
  *(v0 + 616) = v7;
  *(v0 + 624) = v6;

  v8 = sub_1000449DC(v7, v6, 0);

  if (v8)
  {
LABEL_7:
    *(v0 + 632) = v8;

    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v9 = sub_1000E1F08();
    *(v0 + 640) = sub_1000049D0(v9, qword_1001231A0);

    v10 = sub_1000E1EE8();
    v11 = sub_1000E2698();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 680);
      v13 = swift_slowAlloc();
      *&v78[0] = swift_slowAlloc();
      *v13 = 136315394;
      *(v13 + 4) = sub_100029C70(v7, v6, v78);
      *(v13 + 12) = 2080;
      v14 = sub_10003E4B0(v12);
      v16 = sub_100029C70(v14, v15, v78);

      *(v13 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%s] Received request %s.", v13, 0x16u);
      swift_arrayDestroy();
    }

    v17 = *(v0 + 520);
    *(v0 + 408) = 0x6567617373656DLL;
    *(v0 + 416) = 0xE700000000000000;
    sub_1000E2A08();
    if (*(v17 + 16) && (v18 = sub_10000B3E0(v0 + 200), (v19 & 1) != 0))
    {
      sub_1000153C0(*(*(v0 + 520) + 56) + 32 * v18, v0 + 304);
      sub_10000C1C0(v0 + 200);
      if (swift_dynamicCast())
      {
        v20 = *(v0 + 424);
        v21 = *(v0 + 432);
        *(v0 + 648) = v20;
        *(v0 + 656) = v21;
        v79 = 0;
        memset(v78, 0, sizeof(v78));
        sub_1000123E0(v20, v21);
        sub_1000E0DF8();
        sub_100058F28(&qword_10011F668, 255, &type metadata accessor for NCProtoGetAddressableContactsRequest, &protocol conformance descriptor for NCProtoGetAddressableContactsRequest);
        sub_1000E0E18();
        v77 = (*(v0 + 528) + **(v0 + 528));
        v74 = swift_task_alloc();
        *(v0 + 664) = v74;
        *v74 = v0;
        v74[1] = sub_100051A08;
        v75 = *(v0 + 592);
        v76 = *(v0 + 560);

        return v77(v76, v75, v8);
      }
    }

    else
    {
      sub_10000C1C0(v0 + 200);
    }

    sub_100058DE4();
    v41 = swift_allocError();
    *v42 = 1;
    swift_willThrow();

    swift_errorRetain();
    v43 = sub_1000E1EE8();
    v44 = sub_1000E2678();

    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 624);
    if (v45)
    {
      v47 = *(v0 + 616);
      v48 = *(v0 + 680);
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v78[0] = swift_slowAlloc();
      *v49 = 136315650;
      v51 = sub_100029C70(v47, v46, v78);

      *(v49 + 4) = v51;
      *(v49 + 12) = 2080;
      v52 = sub_10003E4B0(v48);
      v54 = sub_100029C70(v52, v53, v78);

      *(v49 + 14) = v54;
      *(v49 + 22) = 2112;
      swift_errorRetain();
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v49 + 24) = v55;
      *v50 = v55;
      _os_log_impl(&_mh_execute_header, v43, v44, "[%s] Error handling request %s: %@.", v49, 0x20u);
      sub_1000033C8(v50, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v59 = *(v0 + 504);
    swift_errorRetain();
    v59(0, 0, v41);

    goto LABEL_44;
  }

  *(v0 + 392) = sub_1000E2338();
  *(v0 + 400) = v56;
  sub_1000E2A08();
  if (*(v2 + 16) && (v57 = sub_10000B3E0(v0 + 160), (v58 & 1) != 0))
  {
    sub_1000153C0(*(v2 + 56) + 32 * v57, v0 + 272);
    sub_10000C1C0(v0 + 160);
    if (swift_dynamicCast())
    {
      v8 = sub_1000449DC(*(v0 + 456), *(v0 + 464), 0);

      if (v8)
      {

        goto LABEL_7;
      }
    }
  }

  else
  {
    sub_10000C1C0(v0 + 160);
  }

  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v60 = sub_1000E1F08();
  sub_1000049D0(v60, qword_1001231A0);

  v61 = sub_1000E1EE8();
  v62 = sub_1000E2678();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = *(v0 + 680);
    v64 = swift_slowAlloc();
    *&v78[0] = swift_slowAlloc();
    *v64 = 136315394;
    v65 = sub_10003E4B0(v63);
    v67 = sub_100029C70(v65, v66, v78);

    *(v64 + 4) = v67;
    *(v64 + 12) = 2080;
    *(v0 + 480) = v2;

    sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
    v68 = sub_1000E2368();
    v70 = sub_100029C70(v68, v69, v78);

    *(v64 + 14) = v70;
    _os_log_impl(&_mh_execute_header, v61, v62, "Received request %s from unrecognized device %s.", v64, 0x16u);
    swift_arrayDestroy();
  }

  v71 = *(v0 + 504);
  sub_100058DE4();
  v72 = swift_allocError();
  *v73 = 3;
  v71(0, 0, v72);

LABEL_44:

LABEL_25:

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_100051A08()
{
  v2 = *v1;
  *(*v1 + 672) = v0;

  v3 = *(v2 + 600);
  if (v0)
  {
    v4 = sub_10005A56C;
  }

  else
  {
    v4 = sub_100051B34;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100051B34()
{
  v51 = v0;
  v1 = *(v0 + 672);
  sub_100058F28(&qword_100120170, 255, &type metadata accessor for NCProtoGetAddressableContactsResponse, &protocol conformance descriptor for NCProtoGetAddressableContactsResponse);
  v2 = sub_1000E0E28();
  if (v1)
  {
    v4 = *(v0 + 592);
    v5 = *(v0 + 584);
    v6 = *(v0 + 576);
    v7 = *(v0 + 560);
    v8 = *(v0 + 552);
    v9 = *(v0 + 544);
    sub_100006660(*(v0 + 648), *(v0 + 656));
    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v6);

    swift_errorRetain();
    v10 = sub_1000E1EE8();
    v11 = sub_1000E2678();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 624);
    if (v12)
    {
      v14 = *(v0 + 616);
      v15 = *(v0 + 680);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v16 = 136315650;
      v18 = sub_100029C70(v14, v13, v50);

      *(v16 + 4) = v18;
      *(v16 + 12) = 2080;
      v19 = sub_10003E4B0(v15);
      v21 = sub_100029C70(v19, v20, v50);

      *(v16 + 14) = v21;
      *(v16 + 22) = 2112;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 24) = v22;
      *v17 = v22;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%s] Error handling request %s: %@.", v16, 0x20u);
      sub_1000033C8(v17, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v34 = *(v0 + 504);
    swift_errorRetain();
    v34(0, 0, v1);
  }

  else
  {
    v48 = v2;
    v49 = v3;

    v23 = sub_1000E1EE8();
    v24 = sub_1000E2698();

    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 624);
    if (v25)
    {
      v27 = *(v0 + 616);
      v28 = *(v0 + 680);
      v29 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v29 = 136315394;
      v30 = sub_100029C70(v27, v26, v50);

      *(v29 + 4) = v30;
      *(v29 + 12) = 2080;
      v31 = sub_10003E4B0(v28);
      v33 = sub_100029C70(v31, v32, v50);

      *(v29 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v23, v24, "[%s] Returning response for %s.", v29, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v47 = *(v0 + 592);
    v35 = *(v0 + 584);
    v45 = *(v0 + 656);
    v46 = *(v0 + 576);
    v43 = *(v0 + 648);
    v44 = *(v0 + 560);
    v36 = *(v0 + 552);
    v42 = *(v0 + 544);
    v37 = *(v0 + 504);
    sub_10000ADE4(&unk_1001201F0, &unk_1000F1CF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000F07C0;
    *(v0 + 440) = 0x6567617373656DLL;
    *(v0 + 448) = 0xE700000000000000;
    sub_1000E2A08();
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v48;
    *(inited + 80) = v49;
    sub_1000123E0(v48, v49);
    v39 = sub_10000C018(inited);
    swift_setDeallocating();
    sub_1000033C8(inited + 32, &qword_10011DEC0, &unk_1000F0490);
    v37(v39, 0, 0);

    sub_100006660(v48, v49);
    sub_100006660(v43, v45);
    (*(v36 + 8))(v44, v42);
    (*(v35 + 8))(v47, v46);
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_1000520E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 536) = v15;
  *(v8 + 520) = v14;
  *(v8 + 504) = a7;
  *(v8 + 512) = a8;
  *(v8 + 680) = a6;
  *(v8 + 488) = a4;
  *(v8 + 496) = a5;
  v9 = sub_1000E1C68();
  *(v8 + 544) = v9;
  *(v8 + 552) = *(v9 - 8);
  *(v8 + 560) = swift_task_alloc();
  sub_1000E0E08();
  *(v8 + 568) = swift_task_alloc();
  v10 = sub_1000E1B98();
  *(v8 + 576) = v10;
  *(v8 + 584) = *(v10 - 8);
  *(v8 + 592) = swift_task_alloc();
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v11 = qword_1001230E0;
  *(v8 + 600) = qword_1001230E0;

  return _swift_task_switch(sub_100052288, v11, 0);
}

uint64_t sub_100052288()
{
  v80 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 608) = Strong;
  if (!Strong)
  {
    goto LABEL_17;
  }

  v2 = *(v0 + 496);
  if (!v2)
  {
    goto LABEL_16;
  }

  *(v0 + 360) = sub_1000E2338();
  *(v0 + 368) = v3;
  sub_1000E2A08();
  if (!*(v2 + 16) || (v4 = sub_10000B3E0(v0 + 120), (v5 & 1) == 0))
  {
    sub_10000C1C0(v0 + 120);
    goto LABEL_16;
  }

  sub_1000153C0(*(v2 + 56) + 32 * v4, v0 + 240);
  sub_10000C1C0(v0 + 120);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

LABEL_17:
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 496);
    v23 = sub_1000E1F08();
    sub_1000049D0(v23, qword_1001231A0);

    v24 = sub_1000E1EE8();
    v25 = sub_1000E2678();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 496);
      v27 = *(v0 + 680);
      v28 = swift_slowAlloc();
      *&v78[0] = swift_slowAlloc();
      *v28 = 136315394;
      v29 = sub_10003E4B0(v27);
      v31 = sub_100029C70(v29, v30, v78);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      if (v26)
      {
        *(v0 + 472) = v22;

        sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
        v32 = sub_1000E2368();
        v34 = v33;
      }

      else
      {
        v34 = 0xE300000000000000;
        v32 = 7104878;
      }

      v35 = sub_100029C70(v32, v34, v78);

      *(v28 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v24, v25, "Received invalid request %s options %s.", v28, 0x16u);
      swift_arrayDestroy();
    }

    v36 = *(v0 + 504);
    sub_100058DE4();
    v37 = swift_allocError();
    *v38 = 3;
    v36(0, 0, v37);

    goto LABEL_25;
  }

  v7 = *(v0 + 376);
  v6 = *(v0 + 384);
  *(v0 + 616) = v7;
  *(v0 + 624) = v6;

  v8 = sub_1000449DC(v7, v6, 0);

  if (v8)
  {
LABEL_7:
    *(v0 + 632) = v8;

    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v9 = sub_1000E1F08();
    *(v0 + 640) = sub_1000049D0(v9, qword_1001231A0);

    v10 = sub_1000E1EE8();
    v11 = sub_1000E2698();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 680);
      v13 = swift_slowAlloc();
      *&v78[0] = swift_slowAlloc();
      *v13 = 136315394;
      *(v13 + 4) = sub_100029C70(v7, v6, v78);
      *(v13 + 12) = 2080;
      v14 = sub_10003E4B0(v12);
      v16 = sub_100029C70(v14, v15, v78);

      *(v13 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%s] Received request %s.", v13, 0x16u);
      swift_arrayDestroy();
    }

    v17 = *(v0 + 520);
    *(v0 + 408) = 0x6567617373656DLL;
    *(v0 + 416) = 0xE700000000000000;
    sub_1000E2A08();
    if (*(v17 + 16) && (v18 = sub_10000B3E0(v0 + 200), (v19 & 1) != 0))
    {
      sub_1000153C0(*(*(v0 + 520) + 56) + 32 * v18, v0 + 304);
      sub_10000C1C0(v0 + 200);
      if (swift_dynamicCast())
      {
        v20 = *(v0 + 424);
        v21 = *(v0 + 432);
        *(v0 + 648) = v20;
        *(v0 + 656) = v21;
        v79 = 0;
        memset(v78, 0, sizeof(v78));
        sub_1000123E0(v20, v21);
        sub_1000E0DF8();
        sub_100058F28(&qword_10011F670, 255, &type metadata accessor for NCProtoPullLagunaSessionToTVRequest, &protocol conformance descriptor for NCProtoPullLagunaSessionToTVRequest);
        sub_1000E0E18();
        v77 = (*(v0 + 528) + **(v0 + 528));
        v74 = swift_task_alloc();
        *(v0 + 664) = v74;
        *v74 = v0;
        v74[1] = sub_100052E34;
        v75 = *(v0 + 592);
        v76 = *(v0 + 560);

        return v77(v76, v75, v8);
      }
    }

    else
    {
      sub_10000C1C0(v0 + 200);
    }

    sub_100058DE4();
    v41 = swift_allocError();
    *v42 = 1;
    swift_willThrow();

    swift_errorRetain();
    v43 = sub_1000E1EE8();
    v44 = sub_1000E2678();

    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 624);
    if (v45)
    {
      v47 = *(v0 + 616);
      v48 = *(v0 + 680);
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v78[0] = swift_slowAlloc();
      *v49 = 136315650;
      v51 = sub_100029C70(v47, v46, v78);

      *(v49 + 4) = v51;
      *(v49 + 12) = 2080;
      v52 = sub_10003E4B0(v48);
      v54 = sub_100029C70(v52, v53, v78);

      *(v49 + 14) = v54;
      *(v49 + 22) = 2112;
      swift_errorRetain();
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v49 + 24) = v55;
      *v50 = v55;
      _os_log_impl(&_mh_execute_header, v43, v44, "[%s] Error handling request %s: %@.", v49, 0x20u);
      sub_1000033C8(v50, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v59 = *(v0 + 504);
    swift_errorRetain();
    v59(0, 0, v41);

    goto LABEL_44;
  }

  *(v0 + 392) = sub_1000E2338();
  *(v0 + 400) = v56;
  sub_1000E2A08();
  if (*(v2 + 16) && (v57 = sub_10000B3E0(v0 + 160), (v58 & 1) != 0))
  {
    sub_1000153C0(*(v2 + 56) + 32 * v57, v0 + 272);
    sub_10000C1C0(v0 + 160);
    if (swift_dynamicCast())
    {
      v8 = sub_1000449DC(*(v0 + 456), *(v0 + 464), 0);

      if (v8)
      {

        goto LABEL_7;
      }
    }
  }

  else
  {
    sub_10000C1C0(v0 + 160);
  }

  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v60 = sub_1000E1F08();
  sub_1000049D0(v60, qword_1001231A0);

  v61 = sub_1000E1EE8();
  v62 = sub_1000E2678();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = *(v0 + 680);
    v64 = swift_slowAlloc();
    *&v78[0] = swift_slowAlloc();
    *v64 = 136315394;
    v65 = sub_10003E4B0(v63);
    v67 = sub_100029C70(v65, v66, v78);

    *(v64 + 4) = v67;
    *(v64 + 12) = 2080;
    *(v0 + 480) = v2;

    sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
    v68 = sub_1000E2368();
    v70 = sub_100029C70(v68, v69, v78);

    *(v64 + 14) = v70;
    _os_log_impl(&_mh_execute_header, v61, v62, "Received request %s from unrecognized device %s.", v64, 0x16u);
    swift_arrayDestroy();
  }

  v71 = *(v0 + 504);
  sub_100058DE4();
  v72 = swift_allocError();
  *v73 = 3;
  v71(0, 0, v72);

LABEL_44:

LABEL_25:

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_100052E34()
{
  v2 = *v1;
  *(*v1 + 672) = v0;

  v3 = *(v2 + 600);
  if (v0)
  {
    v4 = sub_10005A56C;
  }

  else
  {
    v4 = sub_100052F60;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100052F60()
{
  v51 = v0;
  v1 = *(v0 + 672);
  sub_100058F28(&qword_10011F678, 255, &type metadata accessor for NCProtoPullLagunaSessionToTVResponse, &protocol conformance descriptor for NCProtoPullLagunaSessionToTVResponse);
  v2 = sub_1000E0E28();
  if (v1)
  {
    v4 = *(v0 + 592);
    v5 = *(v0 + 584);
    v6 = *(v0 + 576);
    v7 = *(v0 + 560);
    v8 = *(v0 + 552);
    v9 = *(v0 + 544);
    sub_100006660(*(v0 + 648), *(v0 + 656));
    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v6);

    swift_errorRetain();
    v10 = sub_1000E1EE8();
    v11 = sub_1000E2678();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 624);
    if (v12)
    {
      v14 = *(v0 + 616);
      v15 = *(v0 + 680);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v16 = 136315650;
      v18 = sub_100029C70(v14, v13, v50);

      *(v16 + 4) = v18;
      *(v16 + 12) = 2080;
      v19 = sub_10003E4B0(v15);
      v21 = sub_100029C70(v19, v20, v50);

      *(v16 + 14) = v21;
      *(v16 + 22) = 2112;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 24) = v22;
      *v17 = v22;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%s] Error handling request %s: %@.", v16, 0x20u);
      sub_1000033C8(v17, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v34 = *(v0 + 504);
    swift_errorRetain();
    v34(0, 0, v1);
  }

  else
  {
    v48 = v2;
    v49 = v3;

    v23 = sub_1000E1EE8();
    v24 = sub_1000E2698();

    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 624);
    if (v25)
    {
      v27 = *(v0 + 616);
      v28 = *(v0 + 680);
      v29 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v29 = 136315394;
      v30 = sub_100029C70(v27, v26, v50);

      *(v29 + 4) = v30;
      *(v29 + 12) = 2080;
      v31 = sub_10003E4B0(v28);
      v33 = sub_100029C70(v31, v32, v50);

      *(v29 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v23, v24, "[%s] Returning response for %s.", v29, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v47 = *(v0 + 592);
    v35 = *(v0 + 584);
    v45 = *(v0 + 656);
    v46 = *(v0 + 576);
    v43 = *(v0 + 648);
    v44 = *(v0 + 560);
    v36 = *(v0 + 552);
    v42 = *(v0 + 544);
    v37 = *(v0 + 504);
    sub_10000ADE4(&unk_1001201F0, &unk_1000F1CF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000F07C0;
    *(v0 + 440) = 0x6567617373656DLL;
    *(v0 + 448) = 0xE700000000000000;
    sub_1000E2A08();
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v48;
    *(inited + 80) = v49;
    sub_1000123E0(v48, v49);
    v39 = sub_10000C018(inited);
    swift_setDeallocating();
    sub_1000033C8(inited + 32, &qword_10011DEC0, &unk_1000F0490);
    v37(v39, 0, 0);

    sub_100006660(v48, v49);
    sub_100006660(v43, v45);
    (*(v36 + 8))(v44, v42);
    (*(v35 + 8))(v47, v46);
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_100053514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 536) = v15;
  *(v8 + 520) = v14;
  *(v8 + 504) = a7;
  *(v8 + 512) = a8;
  *(v8 + 680) = a6;
  *(v8 + 488) = a4;
  *(v8 + 496) = a5;
  v9 = sub_1000E1A88();
  *(v8 + 544) = v9;
  *(v8 + 552) = *(v9 - 8);
  *(v8 + 560) = swift_task_alloc();
  sub_1000E0E08();
  *(v8 + 568) = swift_task_alloc();
  v10 = sub_1000E19F8();
  *(v8 + 576) = v10;
  *(v8 + 584) = *(v10 - 8);
  *(v8 + 592) = swift_task_alloc();
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v11 = qword_1001230E0;
  *(v8 + 600) = qword_1001230E0;

  return _swift_task_switch(sub_1000536B4, v11, 0);
}

uint64_t sub_1000536B4()
{
  v80 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 608) = Strong;
  if (!Strong)
  {
    goto LABEL_17;
  }

  v2 = *(v0 + 496);
  if (!v2)
  {
    goto LABEL_16;
  }

  *(v0 + 360) = sub_1000E2338();
  *(v0 + 368) = v3;
  sub_1000E2A08();
  if (!*(v2 + 16) || (v4 = sub_10000B3E0(v0 + 120), (v5 & 1) == 0))
  {
    sub_10000C1C0(v0 + 120);
    goto LABEL_16;
  }

  sub_1000153C0(*(v2 + 56) + 32 * v4, v0 + 240);
  sub_10000C1C0(v0 + 120);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

LABEL_17:
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 496);
    v23 = sub_1000E1F08();
    sub_1000049D0(v23, qword_1001231A0);

    v24 = sub_1000E1EE8();
    v25 = sub_1000E2678();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 496);
      v27 = *(v0 + 680);
      v28 = swift_slowAlloc();
      *&v78[0] = swift_slowAlloc();
      *v28 = 136315394;
      v29 = sub_10003E4B0(v27);
      v31 = sub_100029C70(v29, v30, v78);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      if (v26)
      {
        *(v0 + 472) = v22;

        sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
        v32 = sub_1000E2368();
        v34 = v33;
      }

      else
      {
        v34 = 0xE300000000000000;
        v32 = 7104878;
      }

      v35 = sub_100029C70(v32, v34, v78);

      *(v28 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v24, v25, "Received invalid request %s options %s.", v28, 0x16u);
      swift_arrayDestroy();
    }

    v36 = *(v0 + 504);
    sub_100058DE4();
    v37 = swift_allocError();
    *v38 = 3;
    v36(0, 0, v37);

    goto LABEL_25;
  }

  v7 = *(v0 + 376);
  v6 = *(v0 + 384);
  *(v0 + 616) = v7;
  *(v0 + 624) = v6;

  v8 = sub_1000449DC(v7, v6, 0);

  if (v8)
  {
LABEL_7:
    *(v0 + 632) = v8;

    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v9 = sub_1000E1F08();
    *(v0 + 640) = sub_1000049D0(v9, qword_1001231A0);

    v10 = sub_1000E1EE8();
    v11 = sub_1000E2698();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 680);
      v13 = swift_slowAlloc();
      *&v78[0] = swift_slowAlloc();
      *v13 = 136315394;
      *(v13 + 4) = sub_100029C70(v7, v6, v78);
      *(v13 + 12) = 2080;
      v14 = sub_10003E4B0(v12);
      v16 = sub_100029C70(v14, v15, v78);

      *(v13 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%s] Received request %s.", v13, 0x16u);
      swift_arrayDestroy();
    }

    v17 = *(v0 + 520);
    *(v0 + 408) = 0x6567617373656DLL;
    *(v0 + 416) = 0xE700000000000000;
    sub_1000E2A08();
    if (*(v17 + 16) && (v18 = sub_10000B3E0(v0 + 200), (v19 & 1) != 0))
    {
      sub_1000153C0(*(*(v0 + 520) + 56) + 32 * v18, v0 + 304);
      sub_10000C1C0(v0 + 200);
      if (swift_dynamicCast())
      {
        v20 = *(v0 + 424);
        v21 = *(v0 + 432);
        *(v0 + 648) = v20;
        *(v0 + 656) = v21;
        v79 = 0;
        memset(v78, 0, sizeof(v78));
        sub_1000123E0(v20, v21);
        sub_1000E0DF8();
        sub_100058F28(&qword_10011F680, 255, &type metadata accessor for NCProtoStartLagunaSessionRequest, &protocol conformance descriptor for NCProtoStartLagunaSessionRequest);
        sub_1000E0E18();
        v77 = (*(v0 + 528) + **(v0 + 528));
        v74 = swift_task_alloc();
        *(v0 + 664) = v74;
        *v74 = v0;
        v74[1] = sub_100054260;
        v75 = *(v0 + 592);
        v76 = *(v0 + 560);

        return v77(v76, v75, v8);
      }
    }

    else
    {
      sub_10000C1C0(v0 + 200);
    }

    sub_100058DE4();
    v41 = swift_allocError();
    *v42 = 1;
    swift_willThrow();

    swift_errorRetain();
    v43 = sub_1000E1EE8();
    v44 = sub_1000E2678();

    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 624);
    if (v45)
    {
      v47 = *(v0 + 616);
      v48 = *(v0 + 680);
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v78[0] = swift_slowAlloc();
      *v49 = 136315650;
      v51 = sub_100029C70(v47, v46, v78);

      *(v49 + 4) = v51;
      *(v49 + 12) = 2080;
      v52 = sub_10003E4B0(v48);
      v54 = sub_100029C70(v52, v53, v78);

      *(v49 + 14) = v54;
      *(v49 + 22) = 2112;
      swift_errorRetain();
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v49 + 24) = v55;
      *v50 = v55;
      _os_log_impl(&_mh_execute_header, v43, v44, "[%s] Error handling request %s: %@.", v49, 0x20u);
      sub_1000033C8(v50, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v59 = *(v0 + 504);
    swift_errorRetain();
    v59(0, 0, v41);

    goto LABEL_44;
  }

  *(v0 + 392) = sub_1000E2338();
  *(v0 + 400) = v56;
  sub_1000E2A08();
  if (*(v2 + 16) && (v57 = sub_10000B3E0(v0 + 160), (v58 & 1) != 0))
  {
    sub_1000153C0(*(v2 + 56) + 32 * v57, v0 + 272);
    sub_10000C1C0(v0 + 160);
    if (swift_dynamicCast())
    {
      v8 = sub_1000449DC(*(v0 + 456), *(v0 + 464), 0);

      if (v8)
      {

        goto LABEL_7;
      }
    }
  }

  else
  {
    sub_10000C1C0(v0 + 160);
  }

  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v60 = sub_1000E1F08();
  sub_1000049D0(v60, qword_1001231A0);

  v61 = sub_1000E1EE8();
  v62 = sub_1000E2678();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = *(v0 + 680);
    v64 = swift_slowAlloc();
    *&v78[0] = swift_slowAlloc();
    *v64 = 136315394;
    v65 = sub_10003E4B0(v63);
    v67 = sub_100029C70(v65, v66, v78);

    *(v64 + 4) = v67;
    *(v64 + 12) = 2080;
    *(v0 + 480) = v2;

    sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
    v68 = sub_1000E2368();
    v70 = sub_100029C70(v68, v69, v78);

    *(v64 + 14) = v70;
    _os_log_impl(&_mh_execute_header, v61, v62, "Received request %s from unrecognized device %s.", v64, 0x16u);
    swift_arrayDestroy();
  }

  v71 = *(v0 + 504);
  sub_100058DE4();
  v72 = swift_allocError();
  *v73 = 3;
  v71(0, 0, v72);

LABEL_44:

LABEL_25:

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_100054260()
{
  v2 = *v1;
  *(*v1 + 672) = v0;

  v3 = *(v2 + 600);
  if (v0)
  {
    v4 = sub_10005A56C;
  }

  else
  {
    v4 = sub_10005438C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10005438C()
{
  v51 = v0;
  v1 = *(v0 + 672);
  sub_100058F28(&qword_1001201C0, 255, &type metadata accessor for NCProtoStartLagunaSessionResponse, &protocol conformance descriptor for NCProtoStartLagunaSessionResponse);
  v2 = sub_1000E0E28();
  if (v1)
  {
    v4 = *(v0 + 592);
    v5 = *(v0 + 584);
    v6 = *(v0 + 576);
    v7 = *(v0 + 560);
    v8 = *(v0 + 552);
    v9 = *(v0 + 544);
    sub_100006660(*(v0 + 648), *(v0 + 656));
    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v6);

    swift_errorRetain();
    v10 = sub_1000E1EE8();
    v11 = sub_1000E2678();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 624);
    if (v12)
    {
      v14 = *(v0 + 616);
      v15 = *(v0 + 680);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v16 = 136315650;
      v18 = sub_100029C70(v14, v13, v50);

      *(v16 + 4) = v18;
      *(v16 + 12) = 2080;
      v19 = sub_10003E4B0(v15);
      v21 = sub_100029C70(v19, v20, v50);

      *(v16 + 14) = v21;
      *(v16 + 22) = 2112;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 24) = v22;
      *v17 = v22;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%s] Error handling request %s: %@.", v16, 0x20u);
      sub_1000033C8(v17, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v34 = *(v0 + 504);
    swift_errorRetain();
    v34(0, 0, v1);
  }

  else
  {
    v48 = v2;
    v49 = v3;

    v23 = sub_1000E1EE8();
    v24 = sub_1000E2698();

    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 624);
    if (v25)
    {
      v27 = *(v0 + 616);
      v28 = *(v0 + 680);
      v29 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v29 = 136315394;
      v30 = sub_100029C70(v27, v26, v50);

      *(v29 + 4) = v30;
      *(v29 + 12) = 2080;
      v31 = sub_10003E4B0(v28);
      v33 = sub_100029C70(v31, v32, v50);

      *(v29 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v23, v24, "[%s] Returning response for %s.", v29, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v47 = *(v0 + 592);
    v35 = *(v0 + 584);
    v45 = *(v0 + 656);
    v46 = *(v0 + 576);
    v43 = *(v0 + 648);
    v44 = *(v0 + 560);
    v36 = *(v0 + 552);
    v42 = *(v0 + 544);
    v37 = *(v0 + 504);
    sub_10000ADE4(&unk_1001201F0, &unk_1000F1CF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000F07C0;
    *(v0 + 440) = 0x6567617373656DLL;
    *(v0 + 448) = 0xE700000000000000;
    sub_1000E2A08();
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v48;
    *(inited + 80) = v49;
    sub_1000123E0(v48, v49);
    v39 = sub_10000C018(inited);
    swift_setDeallocating();
    sub_1000033C8(inited + 32, &qword_10011DEC0, &unk_1000F0490);
    v37(v39, 0, 0);

    sub_100006660(v48, v49);
    sub_100006660(v43, v45);
    (*(v36 + 8))(v44, v42);
    (*(v35 + 8))(v47, v46);
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_100054940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 536) = v15;
  *(v8 + 520) = v14;
  *(v8 + 504) = a7;
  *(v8 + 512) = a8;
  *(v8 + 680) = a6;
  *(v8 + 488) = a4;
  *(v8 + 496) = a5;
  v9 = sub_1000E19C8();
  *(v8 + 544) = v9;
  *(v8 + 552) = *(v9 - 8);
  *(v8 + 560) = swift_task_alloc();
  sub_1000E0E08();
  *(v8 + 568) = swift_task_alloc();
  v10 = sub_1000E1948();
  *(v8 + 576) = v10;
  *(v8 + 584) = *(v10 - 8);
  *(v8 + 592) = swift_task_alloc();
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v11 = qword_1001230E0;
  *(v8 + 600) = qword_1001230E0;

  return _swift_task_switch(sub_100054AE0, v11, 0);
}

uint64_t sub_100054AE0()
{
  v80 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 608) = Strong;
  if (!Strong)
  {
    goto LABEL_17;
  }

  v2 = *(v0 + 496);
  if (!v2)
  {
    goto LABEL_16;
  }

  *(v0 + 360) = sub_1000E2338();
  *(v0 + 368) = v3;
  sub_1000E2A08();
  if (!*(v2 + 16) || (v4 = sub_10000B3E0(v0 + 120), (v5 & 1) == 0))
  {
    sub_10000C1C0(v0 + 120);
    goto LABEL_16;
  }

  sub_1000153C0(*(v2 + 56) + 32 * v4, v0 + 240);
  sub_10000C1C0(v0 + 120);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

LABEL_17:
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 496);
    v23 = sub_1000E1F08();
    sub_1000049D0(v23, qword_1001231A0);

    v24 = sub_1000E1EE8();
    v25 = sub_1000E2678();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 496);
      v27 = *(v0 + 680);
      v28 = swift_slowAlloc();
      *&v78[0] = swift_slowAlloc();
      *v28 = 136315394;
      v29 = sub_10003E4B0(v27);
      v31 = sub_100029C70(v29, v30, v78);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      if (v26)
      {
        *(v0 + 472) = v22;

        sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
        v32 = sub_1000E2368();
        v34 = v33;
      }

      else
      {
        v34 = 0xE300000000000000;
        v32 = 7104878;
      }

      v35 = sub_100029C70(v32, v34, v78);

      *(v28 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v24, v25, "Received invalid request %s options %s.", v28, 0x16u);
      swift_arrayDestroy();
    }

    v36 = *(v0 + 504);
    sub_100058DE4();
    v37 = swift_allocError();
    *v38 = 3;
    v36(0, 0, v37);

    goto LABEL_25;
  }

  v7 = *(v0 + 376);
  v6 = *(v0 + 384);
  *(v0 + 616) = v7;
  *(v0 + 624) = v6;

  v8 = sub_1000449DC(v7, v6, 0);

  if (v8)
  {
LABEL_7:
    *(v0 + 632) = v8;

    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v9 = sub_1000E1F08();
    *(v0 + 640) = sub_1000049D0(v9, qword_1001231A0);

    v10 = sub_1000E1EE8();
    v11 = sub_1000E2698();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 680);
      v13 = swift_slowAlloc();
      *&v78[0] = swift_slowAlloc();
      *v13 = 136315394;
      *(v13 + 4) = sub_100029C70(v7, v6, v78);
      *(v13 + 12) = 2080;
      v14 = sub_10003E4B0(v12);
      v16 = sub_100029C70(v14, v15, v78);

      *(v13 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%s] Received request %s.", v13, 0x16u);
      swift_arrayDestroy();
    }

    v17 = *(v0 + 520);
    *(v0 + 408) = 0x6567617373656DLL;
    *(v0 + 416) = 0xE700000000000000;
    sub_1000E2A08();
    if (*(v17 + 16) && (v18 = sub_10000B3E0(v0 + 200), (v19 & 1) != 0))
    {
      sub_1000153C0(*(*(v0 + 520) + 56) + 32 * v18, v0 + 304);
      sub_10000C1C0(v0 + 200);
      if (swift_dynamicCast())
      {
        v20 = *(v0 + 424);
        v21 = *(v0 + 432);
        *(v0 + 648) = v20;
        *(v0 + 656) = v21;
        v79 = 0;
        memset(v78, 0, sizeof(v78));
        sub_1000123E0(v20, v21);
        sub_1000E0DF8();
        sub_100058F28(&qword_10011F688, 255, &type metadata accessor for NCProtoStartConversationRequest, &protocol conformance descriptor for NCProtoStartConversationRequest);
        sub_1000E0E18();
        v77 = (*(v0 + 528) + **(v0 + 528));
        v74 = swift_task_alloc();
        *(v0 + 664) = v74;
        *v74 = v0;
        v74[1] = sub_10005568C;
        v75 = *(v0 + 592);
        v76 = *(v0 + 560);

        return v77(v76, v75, v8);
      }
    }

    else
    {
      sub_10000C1C0(v0 + 200);
    }

    sub_100058DE4();
    v41 = swift_allocError();
    *v42 = 1;
    swift_willThrow();

    swift_errorRetain();
    v43 = sub_1000E1EE8();
    v44 = sub_1000E2678();

    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 624);
    if (v45)
    {
      v47 = *(v0 + 616);
      v48 = *(v0 + 680);
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v78[0] = swift_slowAlloc();
      *v49 = 136315650;
      v51 = sub_100029C70(v47, v46, v78);

      *(v49 + 4) = v51;
      *(v49 + 12) = 2080;
      v52 = sub_10003E4B0(v48);
      v54 = sub_100029C70(v52, v53, v78);

      *(v49 + 14) = v54;
      *(v49 + 22) = 2112;
      swift_errorRetain();
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v49 + 24) = v55;
      *v50 = v55;
      _os_log_impl(&_mh_execute_header, v43, v44, "[%s] Error handling request %s: %@.", v49, 0x20u);
      sub_1000033C8(v50, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v59 = *(v0 + 504);
    swift_errorRetain();
    v59(0, 0, v41);

    goto LABEL_44;
  }

  *(v0 + 392) = sub_1000E2338();
  *(v0 + 400) = v56;
  sub_1000E2A08();
  if (*(v2 + 16) && (v57 = sub_10000B3E0(v0 + 160), (v58 & 1) != 0))
  {
    sub_1000153C0(*(v2 + 56) + 32 * v57, v0 + 272);
    sub_10000C1C0(v0 + 160);
    if (swift_dynamicCast())
    {
      v8 = sub_1000449DC(*(v0 + 456), *(v0 + 464), 0);

      if (v8)
      {

        goto LABEL_7;
      }
    }
  }

  else
  {
    sub_10000C1C0(v0 + 160);
  }

  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v60 = sub_1000E1F08();
  sub_1000049D0(v60, qword_1001231A0);

  v61 = sub_1000E1EE8();
  v62 = sub_1000E2678();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = *(v0 + 680);
    v64 = swift_slowAlloc();
    *&v78[0] = swift_slowAlloc();
    *v64 = 136315394;
    v65 = sub_10003E4B0(v63);
    v67 = sub_100029C70(v65, v66, v78);

    *(v64 + 4) = v67;
    *(v64 + 12) = 2080;
    *(v0 + 480) = v2;

    sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
    v68 = sub_1000E2368();
    v70 = sub_100029C70(v68, v69, v78);

    *(v64 + 14) = v70;
    _os_log_impl(&_mh_execute_header, v61, v62, "Received request %s from unrecognized device %s.", v64, 0x16u);
    swift_arrayDestroy();
  }

  v71 = *(v0 + 504);
  sub_100058DE4();
  v72 = swift_allocError();
  *v73 = 3;
  v71(0, 0, v72);

LABEL_44:

LABEL_25:

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_10005568C()
{
  v2 = *v1;
  *(*v1 + 672) = v0;

  v3 = *(v2 + 600);
  if (v0)
  {
    v4 = sub_10005A56C;
  }

  else
  {
    v4 = sub_1000557B8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000557B8()
{
  v51 = v0;
  v1 = *(v0 + 672);
  sub_100058F28(&qword_10011F690, 255, &type metadata accessor for NCProtoStartConversationResponse, &protocol conformance descriptor for NCProtoStartConversationResponse);
  v2 = sub_1000E0E28();
  if (v1)
  {
    v4 = *(v0 + 592);
    v5 = *(v0 + 584);
    v6 = *(v0 + 576);
    v7 = *(v0 + 560);
    v8 = *(v0 + 552);
    v9 = *(v0 + 544);
    sub_100006660(*(v0 + 648), *(v0 + 656));
    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v6);

    swift_errorRetain();
    v10 = sub_1000E1EE8();
    v11 = sub_1000E2678();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 624);
    if (v12)
    {
      v14 = *(v0 + 616);
      v15 = *(v0 + 680);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v16 = 136315650;
      v18 = sub_100029C70(v14, v13, v50);

      *(v16 + 4) = v18;
      *(v16 + 12) = 2080;
      v19 = sub_10003E4B0(v15);
      v21 = sub_100029C70(v19, v20, v50);

      *(v16 + 14) = v21;
      *(v16 + 22) = 2112;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 24) = v22;
      *v17 = v22;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%s] Error handling request %s: %@.", v16, 0x20u);
      sub_1000033C8(v17, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v34 = *(v0 + 504);
    swift_errorRetain();
    v34(0, 0, v1);
  }

  else
  {
    v48 = v2;
    v49 = v3;

    v23 = sub_1000E1EE8();
    v24 = sub_1000E2698();

    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 624);
    if (v25)
    {
      v27 = *(v0 + 616);
      v28 = *(v0 + 680);
      v29 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v29 = 136315394;
      v30 = sub_100029C70(v27, v26, v50);

      *(v29 + 4) = v30;
      *(v29 + 12) = 2080;
      v31 = sub_10003E4B0(v28);
      v33 = sub_100029C70(v31, v32, v50);

      *(v29 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v23, v24, "[%s] Returning response for %s.", v29, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v47 = *(v0 + 592);
    v35 = *(v0 + 584);
    v45 = *(v0 + 656);
    v46 = *(v0 + 576);
    v43 = *(v0 + 648);
    v44 = *(v0 + 560);
    v36 = *(v0 + 552);
    v42 = *(v0 + 544);
    v37 = *(v0 + 504);
    sub_10000ADE4(&unk_1001201F0, &unk_1000F1CF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000F07C0;
    *(v0 + 440) = 0x6567617373656DLL;
    *(v0 + 448) = 0xE700000000000000;
    sub_1000E2A08();
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v48;
    *(inited + 80) = v49;
    sub_1000123E0(v48, v49);
    v39 = sub_10000C018(inited);
    swift_setDeallocating();
    sub_1000033C8(inited + 32, &qword_10011DEC0, &unk_1000F0490);
    v37(v39, 0, 0);

    sub_100006660(v48, v49);
    sub_100006660(v43, v45);
    (*(v36 + 8))(v44, v42);
    (*(v35 + 8))(v47, v46);
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_100055D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 536) = v15;
  *(v8 + 520) = v14;
  *(v8 + 504) = a7;
  *(v8 + 512) = a8;
  *(v8 + 680) = a6;
  *(v8 + 488) = a4;
  *(v8 + 496) = a5;
  v9 = sub_1000E1398();
  *(v8 + 544) = v9;
  *(v8 + 552) = *(v9 - 8);
  *(v8 + 560) = swift_task_alloc();
  sub_1000E0E08();
  *(v8 + 568) = swift_task_alloc();
  v10 = sub_1000E1338();
  *(v8 + 576) = v10;
  *(v8 + 584) = *(v10 - 8);
  *(v8 + 592) = swift_task_alloc();
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v11 = qword_1001230E0;
  *(v8 + 600) = qword_1001230E0;

  return _swift_task_switch(sub_100055F0C, v11, 0);
}

uint64_t sub_100055F0C()
{
  v80 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 608) = Strong;
  if (!Strong)
  {
    goto LABEL_17;
  }

  v2 = *(v0 + 496);
  if (!v2)
  {
    goto LABEL_16;
  }

  *(v0 + 360) = sub_1000E2338();
  *(v0 + 368) = v3;
  sub_1000E2A08();
  if (!*(v2 + 16) || (v4 = sub_10000B3E0(v0 + 120), (v5 & 1) == 0))
  {
    sub_10000C1C0(v0 + 120);
    goto LABEL_16;
  }

  sub_1000153C0(*(v2 + 56) + 32 * v4, v0 + 240);
  sub_10000C1C0(v0 + 120);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

LABEL_17:
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 496);
    v23 = sub_1000E1F08();
    sub_1000049D0(v23, qword_1001231A0);

    v24 = sub_1000E1EE8();
    v25 = sub_1000E2678();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 496);
      v27 = *(v0 + 680);
      v28 = swift_slowAlloc();
      *&v78[0] = swift_slowAlloc();
      *v28 = 136315394;
      v29 = sub_10003E4B0(v27);
      v31 = sub_100029C70(v29, v30, v78);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      if (v26)
      {
        *(v0 + 472) = v22;

        sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
        v32 = sub_1000E2368();
        v34 = v33;
      }

      else
      {
        v34 = 0xE300000000000000;
        v32 = 7104878;
      }

      v35 = sub_100029C70(v32, v34, v78);

      *(v28 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v24, v25, "Received invalid request %s options %s.", v28, 0x16u);
      swift_arrayDestroy();
    }

    v36 = *(v0 + 504);
    sub_100058DE4();
    v37 = swift_allocError();
    *v38 = 3;
    v36(0, 0, v37);

    goto LABEL_25;
  }

  v7 = *(v0 + 376);
  v6 = *(v0 + 384);
  *(v0 + 616) = v7;
  *(v0 + 624) = v6;

  v8 = sub_1000449DC(v7, v6, 0);

  if (v8)
  {
LABEL_7:
    *(v0 + 632) = v8;

    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v9 = sub_1000E1F08();
    *(v0 + 640) = sub_1000049D0(v9, qword_1001231A0);

    v10 = sub_1000E1EE8();
    v11 = sub_1000E2698();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 680);
      v13 = swift_slowAlloc();
      *&v78[0] = swift_slowAlloc();
      *v13 = 136315394;
      *(v13 + 4) = sub_100029C70(v7, v6, v78);
      *(v13 + 12) = 2080;
      v14 = sub_10003E4B0(v12);
      v16 = sub_100029C70(v14, v15, v78);

      *(v13 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%s] Received request %s.", v13, 0x16u);
      swift_arrayDestroy();
    }

    v17 = *(v0 + 520);
    *(v0 + 408) = 0x6567617373656DLL;
    *(v0 + 416) = 0xE700000000000000;
    sub_1000E2A08();
    if (*(v17 + 16) && (v18 = sub_10000B3E0(v0 + 200), (v19 & 1) != 0))
    {
      sub_1000153C0(*(*(v0 + 520) + 56) + 32 * v18, v0 + 304);
      sub_10000C1C0(v0 + 200);
      if (swift_dynamicCast())
      {
        v20 = *(v0 + 424);
        v21 = *(v0 + 432);
        *(v0 + 648) = v20;
        *(v0 + 656) = v21;
        v79 = 0;
        memset(v78, 0, sizeof(v78));
        sub_1000123E0(v20, v21);
        sub_1000E0DF8();
        sub_100058F28(&qword_10011F698, 255, &type metadata accessor for NCProtoAddMemberRequest, &protocol conformance descriptor for NCProtoAddMemberRequest);
        sub_1000E0E18();
        v77 = (*(v0 + 528) + **(v0 + 528));
        v74 = swift_task_alloc();
        *(v0 + 664) = v74;
        *v74 = v0;
        v74[1] = sub_100056AB8;
        v75 = *(v0 + 592);
        v76 = *(v0 + 560);

        return v77(v76, v75, v8);
      }
    }

    else
    {
      sub_10000C1C0(v0 + 200);
    }

    sub_100058DE4();
    v41 = swift_allocError();
    *v42 = 1;
    swift_willThrow();

    swift_errorRetain();
    v43 = sub_1000E1EE8();
    v44 = sub_1000E2678();

    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 624);
    if (v45)
    {
      v47 = *(v0 + 616);
      v48 = *(v0 + 680);
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v78[0] = swift_slowAlloc();
      *v49 = 136315650;
      v51 = sub_100029C70(v47, v46, v78);

      *(v49 + 4) = v51;
      *(v49 + 12) = 2080;
      v52 = sub_10003E4B0(v48);
      v54 = sub_100029C70(v52, v53, v78);

      *(v49 + 14) = v54;
      *(v49 + 22) = 2112;
      swift_errorRetain();
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v49 + 24) = v55;
      *v50 = v55;
      _os_log_impl(&_mh_execute_header, v43, v44, "[%s] Error handling request %s: %@.", v49, 0x20u);
      sub_1000033C8(v50, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v59 = *(v0 + 504);
    swift_errorRetain();
    v59(0, 0, v41);

    goto LABEL_44;
  }

  *(v0 + 392) = sub_1000E2338();
  *(v0 + 400) = v56;
  sub_1000E2A08();
  if (*(v2 + 16) && (v57 = sub_10000B3E0(v0 + 160), (v58 & 1) != 0))
  {
    sub_1000153C0(*(v2 + 56) + 32 * v57, v0 + 272);
    sub_10000C1C0(v0 + 160);
    if (swift_dynamicCast())
    {
      v8 = sub_1000449DC(*(v0 + 456), *(v0 + 464), 0);

      if (v8)
      {

        goto LABEL_7;
      }
    }
  }

  else
  {
    sub_10000C1C0(v0 + 160);
  }

  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v60 = sub_1000E1F08();
  sub_1000049D0(v60, qword_1001231A0);

  v61 = sub_1000E1EE8();
  v62 = sub_1000E2678();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = *(v0 + 680);
    v64 = swift_slowAlloc();
    *&v78[0] = swift_slowAlloc();
    *v64 = 136315394;
    v65 = sub_10003E4B0(v63);
    v67 = sub_100029C70(v65, v66, v78);

    *(v64 + 4) = v67;
    *(v64 + 12) = 2080;
    *(v0 + 480) = v2;

    sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
    v68 = sub_1000E2368();
    v70 = sub_100029C70(v68, v69, v78);

    *(v64 + 14) = v70;
    _os_log_impl(&_mh_execute_header, v61, v62, "Received request %s from unrecognized device %s.", v64, 0x16u);
    swift_arrayDestroy();
  }

  v71 = *(v0 + 504);
  sub_100058DE4();
  v72 = swift_allocError();
  *v73 = 3;
  v71(0, 0, v72);

LABEL_44:

LABEL_25:

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_100056AB8()
{
  v2 = *v1;
  *(*v1 + 672) = v0;

  v3 = *(v2 + 600);
  if (v0)
  {
    v4 = sub_100057198;
  }

  else
  {
    v4 = sub_100056BE4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100056BE4()
{
  v51 = v0;
  v1 = *(v0 + 672);
  sub_100058F28(&qword_10011FC90, 255, &type metadata accessor for NCProtoAddMemberResponse, &protocol conformance descriptor for NCProtoAddMemberResponse);
  v2 = sub_1000E0E28();
  if (v1)
  {
    v4 = *(v0 + 592);
    v5 = *(v0 + 584);
    v6 = *(v0 + 576);
    v7 = *(v0 + 560);
    v8 = *(v0 + 552);
    v9 = *(v0 + 544);
    sub_100006660(*(v0 + 648), *(v0 + 656));
    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v6);

    swift_errorRetain();
    v10 = sub_1000E1EE8();
    v11 = sub_1000E2678();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 624);
    if (v12)
    {
      v14 = *(v0 + 616);
      v15 = *(v0 + 680);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v16 = 136315650;
      v18 = sub_100029C70(v14, v13, v50);

      *(v16 + 4) = v18;
      *(v16 + 12) = 2080;
      v19 = sub_10003E4B0(v15);
      v21 = sub_100029C70(v19, v20, v50);

      *(v16 + 14) = v21;
      *(v16 + 22) = 2112;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 24) = v22;
      *v17 = v22;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%s] Error handling request %s: %@.", v16, 0x20u);
      sub_1000033C8(v17, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    else
    {
    }

    v34 = *(v0 + 504);
    swift_errorRetain();
    v34(0, 0, v1);
  }

  else
  {
    v48 = v2;
    v49 = v3;

    v23 = sub_1000E1EE8();
    v24 = sub_1000E2698();

    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 624);
    if (v25)
    {
      v27 = *(v0 + 616);
      v28 = *(v0 + 680);
      v29 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v29 = 136315394;
      v30 = sub_100029C70(v27, v26, v50);

      *(v29 + 4) = v30;
      *(v29 + 12) = 2080;
      v31 = sub_10003E4B0(v28);
      v33 = sub_100029C70(v31, v32, v50);

      *(v29 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v23, v24, "[%s] Returning response for %s.", v29, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v47 = *(v0 + 592);
    v35 = *(v0 + 584);
    v45 = *(v0 + 656);
    v46 = *(v0 + 576);
    v43 = *(v0 + 648);
    v44 = *(v0 + 560);
    v36 = *(v0 + 552);
    v42 = *(v0 + 544);
    v37 = *(v0 + 504);
    sub_10000ADE4(&unk_1001201F0, &unk_1000F1CF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000F07C0;
    *(v0 + 440) = 0x6567617373656DLL;
    *(v0 + 448) = 0xE700000000000000;
    sub_1000E2A08();
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v48;
    *(inited + 80) = v49;
    sub_1000123E0(v48, v49);
    v39 = sub_10000C018(inited);
    swift_setDeallocating();
    sub_1000033C8(inited + 32, &qword_10011DEC0, &unk_1000F0490);
    v37(v39, 0, 0);

    sub_100006660(v48, v49);
    sub_100006660(v43, v45);
    (*(v36 + 8))(v44, v42);
    (*(v35 + 8))(v47, v46);
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_100057198()
{
  v22 = v0;
  v1 = *(v0 + 592);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);
  sub_100006660(*(v0 + 648), *(v0 + 656));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 672);

  swift_errorRetain();
  v5 = sub_1000E1EE8();
  v6 = sub_1000E2678();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 624);
  if (v7)
  {
    v9 = *(v0 + 616);
    v10 = *(v0 + 680);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v11 = 136315650;
    v13 = sub_100029C70(v9, v8, &v21);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2080;
    v14 = sub_10003E4B0(v10);
    v16 = sub_100029C70(v14, v15, &v21);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v17;
    *v12 = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%s] Error handling request %s: %@.", v11, 0x20u);
    sub_1000033C8(v12, &unk_10011EAC0, &unk_1000F0E60);

    swift_arrayDestroy();
  }

  else
  {
  }

  v18 = *(v0 + 504);
  swift_errorRetain();
  v18(0, 0, v4);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100057444()
{
  sub_10002B7A0(v0, v3);
  if (v5 == 1)
  {
    sub_10002B7FC(v3);
    return 0x507463657269642ELL;
  }

  else
  {
    sub_1000E23A8(v4);

    v6._countAndFlagsBits = 41;
    v6._object = 0xE100000000000000;
    sub_1000E23A8(v6);
    v1 = 0x286465726168732ELL;
    sub_10000E9DC(v3);
  }

  return v1;
}

uint64_t sub_100057500(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v4 = qword_1001230E0;
  v3[8] = qword_1001230E0;

  return _swift_task_switch(sub_1000575A0, v4, 0);
}

uint64_t sub_1000575A0()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = v0[5];
    *v2 = Strong;
    *(v2 + 56) = 1;
LABEL_3:
    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[7];
    v31 = v0;
    swift_beginAccess();
    v7 = v5[10];
    v6 = v5[11];
    v8 = sub_1000036AC(v5 + 7, v7);
    v9 = *(v7 - 8);
    v10 = swift_task_alloc();
    (*(v9 + 16))(v10, v8, v7);
    v11 = (*(v6 + 56))(v7, v6);
    (*(v9 + 8))(v10, v7);
    if (v11 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000E2B68())
    {
      v13 = 0;
      v34 = v11 & 0xC000000000000001;
      v32 = v31[6];
      v33 = v11 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v34)
        {
          v14 = sub_1000E2A98();
        }

        else
        {
          if (v13 >= *(v33 + 16))
          {
            goto LABEL_26;
          }

          v14 = *(v11 + 8 * v13 + 32);
        }

        v15 = v14;
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v18 = *(v32 + 16);
        v17 = *(v32 + 24);
        v19 = [v14 idsDeviceIdentifier];
        if (v19)
        {
          v20 = v19;
          v21 = v11;
          v22 = i;
          v23 = sub_1000E2338();
          v25 = v24;

          if (v18 == v23 && v17 == v25)
          {

LABEL_24:

            v0 = v31;
            v28 = v31[7];
            v29 = v31[5];

            sub_10002B4BC(v28 + 96, v29);
            *(v29 + 40) = v18;
            *(v29 + 48) = v17;
            *(v29 + 56) = 0;

            goto LABEL_3;
          }

          v27 = sub_1000E2C68();

          i = v22;
          v11 = v21;
          if (v27)
          {
            goto LABEL_24;
          }
        }

        else
        {
        }

        ++v13;
        if (v16 == i)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

LABEL_28:

    v30 = swift_task_alloc();
    v31[9] = v30;
    *v30 = v31;
    v30[1] = sub_100057918;

    return sub_100014704();
  }
}

uint64_t sub_100057918(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v4 + 64);
    *(v4 + 80) = a1;

    return _swift_task_switch(sub_100057A64, v8, 0);
  }
}

uint64_t sub_100057A64()
{
  v1 = *(v0 + 40);
  *v1 = *(v0 + 80);
  *(v1 + 56) = 1;
  return (*(v0 + 8))();
}

void *sub_100057AFC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v27 = sub_10000CAAC(0, &qword_10011E7C8, RPCompanionLinkClient_ptr);
  v28 = &off_100116AD8;
  v25[4] = &off_100116AD8;
  v26[0] = a1;
  v25[3] = v27;
  v25[0] = a2;
  v24[3] = sub_10000CAAC(0, &qword_10011F5D0, RPRemoteDisplayDiscovery_ptr);
  v24[4] = &off_100116BB0;
  v24[0] = a3;
  a4[3] = 0;
  swift_unknownObjectWeakInit();
  sub_10000ADE4(&qword_10011F5D8, &unk_1000F1B70);
  swift_allocObject();
  a4[4] = sub_1000E1FD8();
  swift_allocObject();
  a4[5] = sub_1000E1FD8();
  a4[6] = sub_10000B87C(_swiftEmptyArrayStorage);
  swift_weakInit();
  a4[23] = 0;
  sub_10002B4BC(v26, (a4 + 7));
  sub_10002B4BC(v25, (a4 + 12));
  sub_10002B4BC(v24, (a4 + 17));
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v10 = a4[10];
  v11 = a4[11];
  sub_1000037BC((a4 + 7), v10);
  v12 = *(v11 + 40);

  v12(0x180000002804, v10, v11);
  v13 = a4[10];
  v14 = a4[11];
  sub_1000037BC((a4 + 7), v13);
  v15 = *(v14 + 96);

  v15(sub_100057E54, v8, v13, v14);
  v16 = a4[10];
  v17 = a4[11];
  sub_1000037BC((a4 + 7), v16);
  v18 = *(v17 + 120);

  v18(sub_100057EA0, v9, v16, v17);
  swift_endAccess();
  v19 = swift_allocObject();
  swift_weakInit();

  swift_beginAccess();
  v20 = a4[20];
  v21 = a4[21];
  sub_1000037BC((a4 + 17), v20);
  v22 = *(v21 + 24);

  v22(sub_100057EEC, v19, v20, v21);
  swift_endAccess();

  sub_10000E9DC(v24);
  sub_10000E9DC(v25);
  sub_10000E9DC(v26);

  return a4;
}

uint64_t sub_100057EF4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_10003FCB4(a1, v4, v5, v6, v7);
}

uint64_t sub_100057FB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_10003F9E4(a1, v4, v5, v7, v6);
}

uint64_t sub_100058078(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_10003F70C(a1, v4, v5, v7, v6);
}

uint64_t sub_100058138(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_10003F328(a1, v4, v5, v7, v6);
}

uint64_t sub_1000581F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100002D64;

  return sub_100042680(a1, a2, a3, v3);
}

uint64_t sub_1000582F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100002D64;

  return sub_100042A8C(a1, a2, a3, v3);
}

uint64_t sub_1000583F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100002D64;

  return sub_100042DD0(a1, a2, a3, v3);
}

uint64_t sub_1000584EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100002D64;

  return sub_10004305C(a1, a2, a3, v3);
}

uint64_t sub_1000585E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100002D64;

  return sub_100043274(a1, a2, a3, v3);
}

uint64_t sub_1000586E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100002D64;

  return sub_100043500(a1, a2, a3, v3);
}

uint64_t sub_1000587E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100002D64;

  return sub_10004378C(a1, a2, a3, v3);
}

uint64_t sub_1000588DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100002D64;

  return sub_1000439A4(a1, a2, a3, v3);
}

uint64_t sub_1000589D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100002D64;

  return sub_100043BBC(a1, a2, a3, v3);
}

uint64_t sub_100058AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100002D64;

  return sub_100043DD4(a1, a2, a3, v3);
}

uint64_t sub_100058BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100002D64;

  return sub_100044060(a1, a2, a3, v3);
}

uint64_t sub_100058D64()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_100058DE4()
{
  result = qword_10011F5E8;
  if (!qword_10011F5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F5E8);
  }

  return result;
}

uint64_t sub_100058E38(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100002D64;

  return sub_100046CC8(a1, v4, v5, v6, v7, v10, v8, v9);
}

uint64_t sub_100058F28(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100058F70(uint64_t a1)
{
  v4 = *(sub_1000E17C8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100002D64;

  return sub_10009DC80(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_1000590A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100002D64;

  return sub_100047920(a1, v4, v5, v6, v7, v10, v8, v9);
}

uint64_t sub_100059190(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v6 + 8, v4 | 7);
}

uint64_t sub_100059278(uint64_t a1)
{
  v4 = *(sub_1000E17A8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100002D64;

  return sub_10009DB5C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1000593A8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100059400(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100002E7C;

  return sub_100048578(a1, v4, v5, v6, v7, v10, v8, v9);
}

uint64_t sub_1000594F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_10009D924(a1, v4, v5, v7, v6);
}

uint64_t sub_1000595B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100002D64;

  return sub_1000493B4(a1, v4, v5, v6, v7, v10, v8, v9);
}

uint64_t sub_1000596B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100002D64;

  return sub_10004A7E0(a1, v4, v5, v6, v7, v10, v8, v9);
}

uint64_t sub_1000597B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100002D64;

  return sub_10004BC0C(a1, v4, v5, v6, v7, v10, v8, v9);
}

uint64_t sub_1000598B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100002D64;

  return sub_10004D038(a1, v4, v5, v6, v7, v10, v8, v9);
}

uint64_t sub_1000599B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100002D64;

  return sub_10004E464(a1, v4, v5, v6, v7, v10, v8, v9);
}

uint64_t sub_100059AB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100002D64;

  return sub_10004F890(a1, v4, v5, v6, v7, v10, v8, v9);
}

uint64_t sub_100059BB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100002D64;

  return sub_100050CBC(a1, v4, v5, v6, v7, v10, v8, v9);
}

uint64_t sub_100059CB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100002D64;

  return sub_1000520E8(a1, v4, v5, v6, v7, v10, v8, v9);
}

uint64_t sub_100059DB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100002D64;

  return sub_100053514(a1, v4, v5, v6, v7, v10, v8, v9);
}

uint64_t sub_100059EB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100002D64;

  return sub_100054940(a1, v4, v5, v6, v7, v10, v8, v9);
}

uint64_t sub_100059FB0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10005A010(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100002D64;

  return sub_100055D6C(a1, v4, v5, v6, v7, v10, v8, v9);
}

uint64_t sub_10005A110(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002E7C;

  return sub_1000407A4(a1, v4, v5, v6);
}

uint64_t sub_10005A288(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_10003EF68(a1, v4, v5, v7, v6);
}

uint64_t sub_10005A348(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_10003EE70(a1, v4, v5, v7, v6);
}

__n128 sub_10005A424(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10005A440(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10005A47C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_10005A4CC(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

unint64_t sub_10005A50C()
{
  result = qword_10011F6A0;
  if (!qword_10011F6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F6A0);
  }

  return result;
}

id sub_10005A574()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    qword_10011F6A8 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10005A5B8()
{
  if (qword_10011DC28 != -1)
  {
    swift_once();
  }

  result = [qword_10011F6A8 validNetworkReachable];
  if ((result & 1) == 0)
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v1 = sub_1000E1F08();
    sub_1000049D0(v1, qword_100123128);
    v2 = sub_1000E1EE8();
    v3 = sub_1000E2678();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Unable to handle request due to network being unreachable.", v4, 2u);
    }

    TUMakeNeighborhoodConduitError();
    return swift_willThrow();
  }

  return result;
}

void *sub_10005A700(uint64_t a1)
{
  v23 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1000E2968();
    result = _swiftEmptyArrayStorage;
    if (!v2)
    {
      return result;
    }

    v28 = _swiftEmptyArrayStorage;
    sub_1000E2AE8();
    result = sub_1000E2908();
    v25 = result;
    v26 = v4;
    v27 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return result;
  }

  v28 = _swiftEmptyArrayStorage;
  sub_1000E2AE8();
  result = sub_1000E28D8();
  v5 = *(a1 + 36);
  v25 = result;
  v26 = v5;
  v27 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v25;
    v9 = v26;
    v11 = v27;
    sub_1000D4898(v25, v26, v27, a1);
    v13 = v12;
    [objc_allocWithZone(TUConversationMember) initWithHandle:v12];

    sub_1000E2AC8();
    sub_1000E2AF8();
    sub_1000E2B08();
    result = sub_1000E2AD8();
    if (v23)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (sub_1000E2928())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_10000ADE4(&qword_10011FC28, &qword_1000F28B0);
      v7 = sub_1000E2618();
      sub_1000E29D8();
      result = v7(v24, 0);
      if (v6 == v2)
      {
LABEL_28:
        sub_10000A848(v25, v26, v27);
        return v28;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v14 = (1 << *(a1 + 32));
      if (v10 >= v14)
      {
        goto LABEL_32;
      }

      v15 = v10 >> 6;
      v16 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v16 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v17 = v16 & (-2 << (v10 & 0x3F));
      if (v17)
      {
        v14 = (__clz(__rbit64(v17)) | v10 & 0x7FFFFFFFFFFFFFC0);
      }

      else
      {
        v18 = v15 << 6;
        v19 = v15 + 1;
        v20 = (a1 + 64 + 8 * v15);
        while (v19 < (v14 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_10000A848(v10, v9, 0);
            v14 = (__clz(__rbit64(v21)) + v18);
            goto LABEL_27;
          }
        }

        result = sub_10000A848(v10, v9, 0);
      }

LABEL_27:
      v25 = v14;
      v26 = v9;
      v27 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void *sub_10005AA20(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_1000E2AE8();
    v4 = v1 + 64;
    result = sub_1000E28D8();
    v5 = result;
    v6 = 0;
    v7 = *(v1 + 36);
    v17 = v1 + 72;
    v18 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v19 = v6;

      sub_100012CD8();

      sub_1000E2AC8();
      sub_1000E2AF8();
      v1 = v18;
      sub_1000E2B08();
      result = sub_1000E2AD8();
      v8 = 1 << *(v18 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v10 = *(v4 + 8 * v9);
      if ((v10 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v7 != *(v18 + 36))
      {
        goto LABEL_25;
      }

      v11 = v10 & (-2 << (v5 & 0x3F));
      if (v11)
      {
        v8 = __clz(__rbit64(v11)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = v9 << 6;
        v13 = v9 + 1;
        v14 = (v17 + 8 * v9);
        while (v13 < (v8 + 63) >> 6)
        {
          v16 = *v14++;
          v15 = v16;
          v12 += 64;
          ++v13;
          if (v16)
          {
            result = sub_10000A848(v5, v7, 0);
            v8 = __clz(__rbit64(v15)) + v12;
            goto LABEL_4;
          }
        }

        result = sub_10000A848(v5, v7, 0);
      }

LABEL_4:
      v6 = v19 + 1;
      v5 = v8;
      if (v19 + 1 == v2)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_10005AC44(uint64_t a1)
{
  v1 = a1;
  v32 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1000E2968();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v38 = _swiftEmptyArrayStorage;
    sub_10002A228(0, v2 & ~(v2 >> 63), 0);
    v33 = _swiftEmptyArrayStorage;
    if (v32)
    {
      v3 = sub_1000E2908();
    }

    else
    {
      v3 = sub_1000E28D8();
      v4 = *(v1 + 36);
    }

    v35 = v3;
    v36 = v4;
    v37 = v32 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v30 = v1 + 56;
      v29 = v1 + 64;
      v31 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v9 = v35;
        v8 = v36;
        v10 = v37;
        v11 = v1;
        sub_1000D4AEC(v35, v36, v37, v1);
        v13 = v12;
        v14 = [v12 plistRepresentation];
        v15 = sub_1000E22B8();

        v16 = v33;
        v38 = v33;
        v18 = v33[2];
        v17 = v33[3];
        if (v18 >= v17 >> 1)
        {
          sub_10002A228((v17 > 1), v18 + 1, 1);
          v16 = v38;
        }

        v16[2] = v18 + 1;
        v16[v18 + 4] = v15;
        v33 = v16;
        if (v32)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (sub_1000E2928())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v31;
          sub_10000ADE4(&qword_10011F9E8, &qword_1000F24D0);
          v6 = sub_1000E2618();
          sub_1000E29D8();
          v6(v34, 0);
          if (v5 == v31)
          {
LABEL_32:
            sub_10000A848(v35, v36, v37);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v19 = 1 << *(v11 + 32);
          if (v9 >= v19)
          {
            goto LABEL_36;
          }

          v20 = v9 >> 6;
          v21 = *(v30 + 8 * (v9 >> 6));
          if (((v21 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v8)
          {
            goto LABEL_38;
          }

          v22 = v21 & (-2 << (v9 & 0x3F));
          if (v22)
          {
            v19 = __clz(__rbit64(v22)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v31;
          }

          else
          {
            v23 = v20 << 6;
            v24 = v20 + 1;
            v25 = (v29 + 8 * v20);
            v2 = v31;
            while (v24 < (v19 + 63) >> 6)
            {
              v27 = *v25++;
              v26 = v27;
              v23 += 64;
              ++v24;
              if (v27)
              {
                sub_10000A848(v9, v8, 0);
                v19 = __clz(__rbit64(v26)) + v23;
                goto LABEL_31;
              }
            }

            sub_10000A848(v9, v8, 0);
          }

LABEL_31:
          v28 = *(v1 + 36);
          v35 = v19;
          v36 = v28;
          v37 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void sub_10005AFC8(uint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_1000E2918();
    sub_10000CAAC(0, &qword_10011F948, TUConversationParticipant_ptr);
    sub_10000EA70(&unk_10011F950, &qword_10011F948, TUConversationParticipant_ptr, &protocol conformance descriptor for NSObject);
    sub_1000E2628();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_10000A840(v2);
      return;
    }

    while (1)
    {
      sub_1000D2BF0(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1000E29A8())
      {
        sub_10000CAAC(0, &qword_10011F948, TUConversationParticipant_ptr);
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_10005B1DC(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1000E2908();
    v5 = v4;
    v6 = sub_1000E29C8();
    v8 = v7;
    v9 = sub_1000E2938();
    sub_10000A848(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_10000A848(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_1000E28D8();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1000D4B00(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_10000A848(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_10005B2F8(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = type metadata accessor for HandoffState(0);
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = type metadata accessor for HandoffInfo(0);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v5 = sub_1000E0D68();
  v3[24] = v5;
  v6 = *(v5 - 8);
  v3[25] = v6;
  v3[26] = *(v6 + 64);
  v3[27] = swift_task_alloc();
  sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v3[28] = swift_task_alloc();
  sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v7 = qword_1001230F0;
  v3[33] = qword_1001230F0;

  return _swift_task_switch(sub_10005B534, v7, 0);
}

uint64_t sub_10005B534()
{
  v66 = v0;
  v1 = v0[32];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[16];
  v5 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  v0[34] = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  swift_beginAccess();
  sub_10000CB64(v4 + v5, v1, &qword_10011F888, &qword_1000F22B0);
  v6 = *(v3 + 48);
  LODWORD(v2) = v6(v1, 1, v2);
  sub_1000033C8(v1, &qword_10011F888, &qword_1000F22B0);
  if (v2 == 1)
  {
    buf = v5;
    v63 = v4;
    v7 = v0[33];
    v9 = v0[27];
    v8 = v0[28];
    v60 = v8;
    v10 = v0[25];
    v11 = v0[24];
    v12 = v0[15];
    v13 = v0[16];
    v14 = v0[14];
    v15 = sub_1000E2538();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
    (*(v10 + 16))(v9, v12, v11);
    v17 = sub_1000A75DC(&qword_100120020, v16, type metadata accessor for ConduitActor, &unk_1000F2250);
    v18 = (*(v10 + 80) + 48) & ~*(v10 + 80);
    v19 = swift_allocObject();
    *(v19 + 2) = v7;
    *(v19 + 3) = v17;
    *(v19 + 4) = v13;
    *(v19 + 5) = v14;
    (*(v10 + 32))(&v19[v18], v9, v11);
    v20 = v13;
    v21 = v14;

    v22 = sub_100022678(0, 0, v60, &unk_1000F2A00, v19);
    v0[35] = v22;
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v23 = v0[14];
    v24 = sub_1000E1F08();
    v0[36] = sub_1000049D0(v24, qword_100123128);
    v25 = v23;
    v26 = sub_1000E1EE8();
    v27 = sub_1000E2698();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = v0[14];
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v28;
      *v30 = v28;
      v31 = v28;
      _os_log_impl(&_mh_execute_header, v26, v27, "[Handoff][Push] Starting push task with %@.", v29, 0xCu);
      sub_1000033C8(v30, &unk_10011EAC0, &unk_1000F0E60);
    }

    v32 = v0[31];
    v33 = v0[17];
    v34 = v0[18];

    *v32 = v22;
    swift_storeEnumTagMultiPayload();
    v35 = *(v34 + 56);
    v0[37] = v35;
    v0[38] = (v34 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v35(v32, 0, 1, v33);
    swift_beginAccess();

    sub_1000A884C(v32, &buf[v63]);
    swift_endAccess();
    sub_100061F64();
    sub_1000033C8(v32, &qword_10011F888, &qword_1000F22B0);
    v36 = swift_task_alloc();
    v0[39] = v36;
    v37 = sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
    *v36 = v0;
    v36[1] = sub_10005BCA0;
    v38 = v0[23];
    v39 = v0[21];

    return Task.value.getter(v38, v22, v39, v37, &protocol self-conformance witness table for Error);
  }

  else
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v40 = v0[16];
    v41 = sub_1000E1F08();
    sub_1000049D0(v41, qword_100123128);
    v42 = v40;
    v43 = sub_1000E1EE8();
    v44 = sub_1000E2698();

    if (os_log_type_enabled(v43, v44))
    {
      v64 = v44;
      v45 = v5;
      v47 = v0[29];
      v46 = v0[30];
      v59 = v0[17];
      v48 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v65 = v61;
      *v48 = 136315138;
      sub_10000CB64(v4 + v45, v46, &qword_10011F888, &qword_1000F22B0);
      sub_10000CB64(v46, v47, &qword_10011F888, &qword_1000F22B0);
      v49 = v6(v47, 1, v59);
      v50 = v0[29];
      if (v49 == 1)
      {
        sub_1000033C8(v50, &qword_10011F888, &qword_1000F22B0);
        v51 = 0xE300000000000000;
        v52 = 7104878;
      }

      else
      {
        v53 = v0[19];
        v54 = v0[20];
        sub_1000A877C(v50, v54, type metadata accessor for HandoffState);
        sub_1000A87E4(v54, v53, type metadata accessor for HandoffState);
        v52 = sub_1000E2368();
        v51 = v55;
        sub_1000AD5EC(v54, type metadata accessor for HandoffState);
      }

      sub_1000033C8(v0[30], &qword_10011F888, &qword_1000F22B0);
      v56 = sub_100029C70(v52, v51, &v65);

      *(v48 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v43, v64, "[Handoff][Push] Unable to push because we're already in a session: %s", v48, 0xCu);
      sub_10000E9DC(v61);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();

    v57 = v0[1];

    return v57();
  }
}

uint64_t sub_10005BCA0()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 264);
  if (v0)
  {
    v4 = sub_10005C0AC;
  }

  else
  {
    v4 = sub_10005BDCC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10005BDCC()
{
  v20 = v0;
  sub_1000A87E4(v0[23], v0[22], type metadata accessor for HandoffInfo);
  v1 = sub_1000E1EE8();
  v2 = sub_1000E2698();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[22];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    v7 = sub_1000DDC88();
    v9 = v8;
    sub_1000AD5EC(v4, type metadata accessor for HandoffInfo);
    v10 = sub_100029C70(v7, v9, &v19);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "[Handoff][Push] Successfully pushed %s.", v5, 0xCu);
    sub_10000E9DC(v6);
  }

  else
  {

    sub_1000AD5EC(v4, type metadata accessor for HandoffInfo);
  }

  v11 = v0[37];
  v12 = v0[34];
  v13 = v0[31];
  v14 = v0[23];
  v16 = v0[16];
  v15 = v0[17];
  sub_1000A87E4(v14, v13, type metadata accessor for HandoffInfo);
  swift_storeEnumTagMultiPayload();
  v11(v13, 0, 1, v15);
  swift_beginAccess();
  sub_1000A884C(v13, v16 + v12);
  swift_endAccess();
  sub_100061F64();
  sub_1000033C8(v13, &qword_10011F888, &qword_1000F22B0);
  sub_10001D3C8();

  sub_1000AD5EC(v14, type metadata accessor for HandoffInfo);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10005C0AC()
{
  v1 = v0[14];

  v2 = v1;
  swift_errorRetain();
  v3 = sub_1000E1EE8();
  v4 = sub_1000E2698();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[14];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412546;
    *(v6 + 4) = v5;
    *v7 = v5;
    *(v6 + 12) = 2112;
    v8 = v5;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    v7[1] = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[Handoff][Push] Failed to push to %@ due to %@.", v6, 0x16u);
    sub_10000ADE4(&unk_10011EAC0, &unk_1000F0E60);
    swift_arrayDestroy();
  }

  v10 = v0[37];
  v11 = v0[34];
  v12 = v0[31];
  v13 = v0[16];
  v14 = v0[17];

  v10(v12, 1, 1, v14);
  swift_beginAccess();
  sub_1000A884C(v12, v13 + v11);
  swift_endAccess();
  sub_100061F64();
  sub_1000033C8(v12, &qword_10011F888, &qword_1000F22B0);
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_10005C31C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for HandoffState(0);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v4 = sub_1000E13E8();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  type metadata accessor for HandoffInfo(0);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230F0;
  v2[22] = qword_1001230F0;

  return _swift_task_switch(sub_10005C504, v5, 0);
}

uint64_t sub_10005C504()
{
  *(v0 + 184) = *(*(v0 + 72) + OBJC_IVAR___CSDNeighborhoodActivityConduit_deviceManager);
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v1 = qword_1001230E0;

  return _swift_task_switch(sub_10005C5AC, v1, 0);
}

uint64_t sub_10005C5AC()
{
  v1 = *(v0 + 176);
  sub_100044D58(*(v0 + 64));
  *(v0 + 192) = v2;

  return _swift_task_switch(sub_10005C61C, v1, 0);
}

uint64_t sub_10005C61C()
{
  v52 = v0;
  v1 = v0[24];
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v0[19];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];
  v6 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  swift_beginAccess();
  sub_10000CB64(v5 + v6, v2, &qword_10011F888, &qword_1000F22B0);
  v7 = (*(v4 + 48))(v2, 1, v3);
  v8 = v0[19];
  if (v7 == 1)
  {

    sub_1000033C8(v8, &qword_10011F888, &qword_1000F22B0);
LABEL_9:
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v11 = v0[9];
    v12 = sub_1000E1F08();
    sub_1000049D0(v12, qword_100123128);
    v13 = v11;
    v14 = sub_1000E1EE8();
    v15 = sub_1000E2698();

    if (os_log_type_enabled(v14, v15))
    {
      v50 = v15;
      v17 = v0[17];
      v16 = v0[18];
      v18 = v0[11];
      v48 = v0[10];
      v19 = v0[9];
      v20 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v51[0] = v49;
      *v20 = 136315138;
      v21 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
      swift_beginAccess();
      sub_10000CB64(v19 + v21, v16, &qword_10011F888, &qword_1000F22B0);
      sub_10000CB64(v16, v17, &qword_10011F888, &qword_1000F22B0);
      v22 = (*(v18 + 48))(v17, 1, v48);
      v23 = v0[17];
      if (v22 == 1)
      {
        sub_1000033C8(v23, &qword_10011F888, &qword_1000F22B0);
        v24 = 0xE300000000000000;
        v25 = 7104878;
      }

      else
      {
        v26 = v0[12];
        v27 = v0[13];
        sub_1000A877C(v23, v27, type metadata accessor for HandoffState);
        sub_1000A87E4(v27, v26, type metadata accessor for HandoffState);
        v25 = sub_1000E2368();
        v24 = v28;
        sub_1000AD5EC(v27, type metadata accessor for HandoffState);
      }

      sub_1000033C8(v0[18], &qword_10011F888, &qword_1000F22B0);
      v29 = sub_100029C70(v25, v24, v51);

      *(v20 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v14, v50, "[DisconnectTV] Rejecting disconnect request because we're not currently in a session with the specified device: %s", v20, 0xCu);
      sub_10000E9DC(v49);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();

    v30 = v0[1];
    goto LABEL_17;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {

    v10 = type metadata accessor for HandoffState;
    goto LABEL_8;
  }

  v9 = v0[21];
  sub_1000A877C(v8, v9, type metadata accessor for HandoffInfo);
  v8 = v0[21];
  if (*v9)
  {
LABEL_6:

    v10 = type metadata accessor for HandoffInfo;
LABEL_8:
    sub_1000AD5EC(v8, v10);
    goto LABEL_9;
  }

  v32 = *(v8 + 8) == *(v1 + 16) && *(v8 + 16) == *(v1 + 24);
  if (!v32 && (sub_1000E2C68() & 1) == 0)
  {
    v8 = v0[21];
    goto LABEL_6;
  }

  v34 = v0[15];
  v33 = v0[16];
  v35 = v0[14];
  (*(v34 + 104))(v33, enum case for NCProtoDisconnectRequest.DisconnectReason.unknown(_:), v35);
  sub_10006B2FC(v33);

  (*(v34 + 8))(v33, v35);
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v37 = v0[20];
  v36 = v0[21];
  v38 = sub_1000E1F08();
  sub_1000049D0(v38, qword_100123128);
  sub_1000A87E4(v36, v37, type metadata accessor for HandoffInfo);
  v39 = sub_1000E1EE8();
  v40 = sub_1000E2698();
  v41 = os_log_type_enabled(v39, v40);
  v42 = v0[20];
  if (v41)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v51[0] = v44;
    *v43 = 136315138;
    v45 = *(v42 + 8);
    v46 = *(v42 + 16);

    sub_1000AD5EC(v42, type metadata accessor for HandoffInfo);
    v47 = sub_100029C70(v45, v46, v51);

    *(v43 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v39, v40, "[DisconnectTV] Successfully disconnected from %s.", v43, 0xCu);
    sub_10000E9DC(v44);
  }

  else
  {

    sub_1000AD5EC(v42, type metadata accessor for HandoffInfo);
  }

  sub_1000AD5EC(v0[21], type metadata accessor for HandoffInfo);

  v30 = v0[1];
LABEL_17:

  return v30();
}

uint64_t sub_10005CD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_10005CD2C, 0, 0);
}

uint64_t sub_10005CD2C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *(v3 + 16) = *(v0 + 48);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_10005CE28;
  v5 = *(v0 + 24);

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v5);
}

uint64_t sub_10005CE28()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000AE27C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10005CF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_10005CF88, 0, 0);
}

uint64_t sub_10005CF88()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  sub_10000ADE4(&qword_10011ED40, &qword_1000F1188);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 40);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_10005D094;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 80);
}

uint64_t sub_10005D094()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10005D1D4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 8);

    return v4(v3);
  }
}

uint64_t sub_10005D1D4()
{
  v1 = v0[9];

  v0[2] = v1;
  swift_errorRetain();
  sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
  if (swift_dynamicCast())
  {
    TUMakeNeighborhoodConduitError();
    swift_willThrow();
  }

  else
  {

    swift_willThrow();
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_10005D2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_10005D31C, 0, 0);
}

uint64_t sub_10005D31C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  type metadata accessor for HandoffInfo(0);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *(v3 + 16) = *(v0 + 48);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_10005D41C;
  v5 = *(v0 + 24);

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v5);
}

uint64_t sub_10005D41C()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10005D558, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10005D558()
{
  v1 = v0[10];

  v0[2] = v1;
  swift_errorRetain();
  sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
  if (swift_dynamicCast())
  {
    TUMakeNeighborhoodConduitError();
    swift_willThrow();
  }

  else
  {

    swift_willThrow();
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_10005D678(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 88) = a3;
  *(v4 + 16) = a1;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230F0;
  *(v4 + 40) = qword_1001230F0;

  return _swift_task_switch(sub_10005D71C, v5, 0);
}

uint64_t sub_10005D71C()
{
  v0[6] = *(v0[4] + OBJC_IVAR___CSDNeighborhoodActivityConduit_deviceManager);
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v1 = qword_1001230E0;
  v0[7] = qword_1001230E0;

  return _swift_task_switch(sub_10005D7C8, v1, 0);
}

uint64_t sub_10005D7C8()
{
  v1 = *(v0 + 40);
  sub_100044D58(*(v0 + 24));
  *(v0 + 64) = v2;

  return _swift_task_switch(sub_10005D838, v1, 0);
}

uint64_t sub_10005D838()
{
  if (v0[8])
  {
    v1 = v0[7];

    return _swift_task_switch(sub_10005DA1C, v1, 0);
  }

  else
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v2 = v0[3];
    v3 = sub_1000E1F08();
    sub_1000049D0(v3, qword_100123128);
    v4 = v2;
    v5 = sub_1000E1EE8();
    v6 = sub_1000E2678();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[3];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v7;
      *v9 = v7;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v5, v6, "[HandoffConversation] Conduit device not found for %@.", v8, 0xCu);
      sub_1000033C8(v9, &unk_10011EAC0, &unk_1000F0E60);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_10005DA1C()
{
  if (*(*(v0 + 64) + 72))
  {

    v10._countAndFlagsBits = 0x5654656C707041;
    v10._object = 0xE700000000000000;
    v1 = sub_1000E2408(v10);

    if (v1)
    {
      v2 = *(v0 + 64);
      v3 = swift_task_alloc();
      *(v0 + 72) = v3;
      *v3 = v0;
      v3[1] = sub_10005DB54;
      v4 = *(v0 + 16);
      v5 = *(v0 + 88);

      return sub_10006BBF4(v4, v2, v5);
    }

    v7 = *(v0 + 40);
    v8 = sub_10005DC80;
  }

  else
  {
    v7 = *(v0 + 40);
    v8 = sub_1000AE224;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10005DB54()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_10005DE8C;
  }

  else
  {
    v4 = sub_10005DE28;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10005DC80()
{
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1000E1F08();
  sub_1000049D0(v2, qword_100123128);
  v3 = v1;
  v4 = sub_1000E1EE8();
  v5 = sub_1000E2678();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "[HandoffConversation] Rejecting request because target device type is unknown %@.", v7, 0xCu);
    sub_1000033C8(v8, &unk_10011EAC0, &unk_1000F0E60);
  }

  TUMakeNeighborhoodConduitError();
  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10005DE28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005DE8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005DEF0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1000E0D68();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230F0;
  v3[9] = qword_1001230F0;

  return _swift_task_switch(sub_10005DFF4, v6, 0);
}

uint64_t sub_10005DFF4()
{
  *(v0 + 80) = *(*(v0 + 32) + OBJC_IVAR___CSDNeighborhoodActivityConduit_deviceManager);
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v1 = qword_1001230E0;

  return _swift_task_switch(sub_10005E09C, v1, 0);
}

uint64_t sub_10005E09C()
{
  v1 = *(v0 + 72);
  sub_100044D58(*(v0 + 24));
  *(v0 + 88) = v2;

  return _swift_task_switch(sub_10005E10C, v1, 0);
}

uint64_t sub_10005E10C()
{
  v1 = v0[11];
  if (v1)
  {
    if (qword_10011DCA8 != -1)
    {
      swift_once();
    }

    v2 = v0[8];
    v3 = v0[5];
    v4 = v0[6];
    v5 = v0[4];
    v6 = v0[2];
    sub_1000E2DA8();
    (*(v4 + 16))(v2, v6, v3);
    v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v8 = swift_allocObject();
    v0[12] = v8;
    *(v8 + 16) = v5;
    *(v8 + 24) = v1;
    (*(v4 + 32))(v8 + v7, v2, v3);
    v9 = v5;

    v10 = swift_task_alloc();
    v0[13] = v10;
    *v10 = v0;
    v10[1] = sub_10005E438;

    return (sub_10005CD04)();
  }

  else
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v12 = v0[3];
    v13 = sub_1000E1F08();
    sub_1000049D0(v13, qword_100123128);
    v14 = v12;
    v15 = sub_1000E1EE8();
    v16 = sub_1000E2678();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = v0[3];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v17;
      *v19 = v17;
      v20 = v17;
      _os_log_impl(&_mh_execute_header, v15, v16, "[PullConversation] Unable to find conduit device for %@.", v18, 0xCu);
      sub_1000033C8(v19, &unk_10011EAC0, &unk_1000F0E60);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_10005E438()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = sub_10005E5D0;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_10005E560;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10005E560()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005E5D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005E644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v5 = type metadata accessor for HandoffState(0);
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = type metadata accessor for HandoffInfo(0);
  v4[23] = swift_task_alloc();
  sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v4[24] = swift_task_alloc();
  sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230F0;
  v4[29] = qword_1001230F0;

  return _swift_task_switch(sub_10005E810, v6, 0);
}

uint64_t sub_10005E810()
{
  *(v0 + 240) = *(*(v0 + 136) + OBJC_IVAR___CSDNeighborhoodActivityConduit_deviceManager);
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v1 = qword_1001230E0;

  return _swift_task_switch(sub_10005E8B8, v1, 0);
}

uint64_t sub_10005E8B8()
{
  v1 = *(v0 + 232);
  sub_100044D58(*(v0 + 128));
  *(v0 + 248) = v2;

  return _swift_task_switch(sub_10005E928, v1, 0);
}

uint64_t sub_10005E928()
{
  v73 = v0;
  v1 = v0[31];
  if (!v1)
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v14 = v0[16];
    v15 = sub_1000E1F08();
    sub_1000049D0(v15, qword_100123128);
    v16 = v14;
    v17 = sub_1000E1EE8();
    v18 = sub_1000E2678();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = v0[16];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v19;
      *v21 = v19;
      v22 = v19;
      _os_log_impl(&_mh_execute_header, v17, v18, "[StartConversation] Rejecting start conversation request because we cannot find a device for %@.", v20, 0xCu);
      sub_1000033C8(v21, &unk_10011EAC0, &unk_1000F0E60);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    goto LABEL_31;
  }

  v2 = v0[28];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v6 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  v0[32] = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  swift_beginAccess();
  sub_10000CB64(v5 + v6, v2, &qword_10011F888, &qword_1000F22B0);
  v7 = *(v3 + 48);
  LODWORD(v4) = v7(v2, 1, v4);
  sub_1000033C8(v2, &qword_10011F888, &qword_1000F22B0);
  if (v4 != 1)
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v23 = v0[17];
    v24 = sub_1000E1F08();
    sub_1000049D0(v24, qword_100123128);
    v25 = v23;
    v26 = sub_1000E1EE8();
    v27 = sub_1000E2678();

    if (os_log_type_enabled(v26, v27))
    {
      v69 = v27;
      v28 = v5;
      v30 = v0[25];
      v29 = v0[26];
      v67 = v0[18];
      v31 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v72 = v68;
      *v31 = 136315138;
      sub_10000CB64(v28 + v6, v29, &qword_10011F888, &qword_1000F22B0);
      sub_10000CB64(v29, v30, &qword_10011F888, &qword_1000F22B0);
      v32 = v7(v30, 1, v67);
      v33 = v0[25];
      if (v32 == 1)
      {
        sub_1000033C8(v33, &qword_10011F888, &qword_1000F22B0);
        v34 = 0xE300000000000000;
        v35 = 7104878;
      }

      else
      {
        v62 = v0[20];
        v61 = v0[21];
        sub_1000A877C(v33, v61, type metadata accessor for HandoffState);
        sub_1000A87E4(v61, v62, type metadata accessor for HandoffState);
        v35 = sub_1000E2368();
        v34 = v63;
        sub_1000AD5EC(v61, type metadata accessor for HandoffState);
      }

      sub_1000033C8(v0[26], &qword_10011F888, &qword_1000F22B0);
      v64 = sub_100029C70(v35, v34, &v72);

      *(v31 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v26, v69, "[StartConversation] Rejecting start conversation request because we're already in a session: %s", v31, 0xCu);
      sub_10000E9DC(v68);
    }

    else
    {
    }

    v13 = TUMakeNeighborhoodConduitError();
    goto LABEL_30;
  }

  sub_100020430(v0[15]);
  if (v8)
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v9 = sub_1000E1F08();
    sub_1000049D0(v9, qword_100123128);
    v10 = sub_1000E1EE8();
    v11 = sub_1000E2678();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "[StartConversation] Rejecting start conversation request because trying to initiate a request with a blocked contact", v12, 2u);
    }

    v13 = TUMakeNeighborhoodConduitError();
LABEL_30:
    v13;
    swift_willThrow();

LABEL_31:

    v65 = v0[1];

    return v65();
  }

  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v70 = v5;
  v71 = v1;
  v36 = v0[16];
  v37 = sub_1000E1F08();
  v0[33] = sub_1000049D0(v37, qword_100123128);
  v38 = v36;
  v39 = sub_1000E1EE8();
  v40 = sub_1000E2698();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = v0[16];
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v42 = 138412290;
    *(v42 + 4) = v41;
    *v43 = v41;
    v44 = v41;
    _os_log_impl(&_mh_execute_header, v39, v40, "[StartConversation] Initializing request to start conversation on %@.", v42, 0xCu);
    sub_1000033C8(v43, &unk_10011EAC0, &unk_1000F0E60);
  }

  v45 = v0[29];
  v46 = v0[27];
  v47 = v0[24];
  v48 = v0[18];
  v49 = v0[19];
  v50 = v0[17];

  v51 = sub_1000E2538();
  (*(*(v51 - 8) + 56))(v47, 1, 1, v51);
  v53 = sub_1000A75DC(&qword_100120020, v52, type metadata accessor for ConduitActor, &unk_1000F2250);
  v54 = swift_allocObject();
  v54[2] = v45;
  v54[3] = v53;
  v54[4] = v50;
  v54[5] = v71;
  v50;

  v55 = sub_100022678(0, 0, v47, &unk_1000F2AD0, v54);
  v0[34] = v55;
  *v46 = v55;
  swift_storeEnumTagMultiPayload();
  v56 = *(v49 + 56);
  v0[35] = v56;
  v0[36] = (v49 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v56(v46, 0, 1, v48);
  swift_beginAccess();

  sub_1000A884C(v46, v70 + v6);
  swift_endAccess();
  sub_100061F64();
  sub_1000033C8(v46, &qword_10011F888, &qword_1000F22B0);
  v57 = swift_task_alloc();
  v0[37] = v57;
  v58 = sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
  *v57 = v0;
  v57[1] = sub_10005F238;
  v60 = v0[22];
  v59 = v0[23];

  return Task.value.getter(v59, v55, v60, v58, &protocol self-conformance witness table for Error);
}

uint64_t sub_10005F238()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 232);
  if (v0)
  {
    v4 = sub_10005F9D4;
  }

  else
  {
    v4 = sub_10005F364;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10005F364()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 256);
  v3 = *(v0 + 216);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  v6 = *(v0 + 128);
  sub_1000A87E4(*(v0 + 184), v3, type metadata accessor for HandoffInfo);
  swift_storeEnumTagMultiPayload();
  v1(v3, 0, 1, v5);
  swift_beginAccess();
  sub_1000A884C(v3, v4 + v2);
  swift_endAccess();
  sub_100061F64();
  sub_1000033C8(v3, &qword_10011F888, &qword_1000F22B0);
  v7 = v6;
  v8 = sub_1000E1EE8();
  v9 = sub_1000E2698();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 128);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v10;
    *v12 = v10;
    v13 = v10;
    _os_log_impl(&_mh_execute_header, v8, v9, "[StartConversation] Successfully started conversation on %@.", v11, 0xCu);
    sub_1000033C8(v12, &unk_10011EAC0, &unk_1000F0E60);
  }

  v14 = *(v0 + 176);
  v15 = *(v0 + 184);
  v16 = *(v0 + 136);

  v17 = OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager;
  v18 = *(v14 + 24);
  v19 = *(v16 + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager);
  isa = sub_1000E0D18().super.isa;
  v21 = [v19 activeConversationWithUUID:isa];

  if (v21)
  {
    v46 = *(v0 + 184);
    v45 = *(v0 + 112);
    v22 = sub_10005A700(*(v0 + 120));
    v23 = *(v16 + v17);
    sub_1000D4B50(v22);

    sub_10000CAAC(0, &qword_10011F890, TUConversationMember_ptr);
    sub_10000EA70(&qword_10011F898, &qword_10011F890, TUConversationMember_ptr, &protocol conformance descriptor for NSObject);
    v24 = sub_1000E25D8().super.isa;

    [v23 addRemoteMembers:v24 toConversation:v21];

    v25 = sub_1000E0D68();
    (*(*(v25 - 8) + 16))(v45, v15 + v18, v25);
    sub_1000AD5EC(v46, type metadata accessor for HandoffInfo);

    v26 = *(v0 + 8);
  }

  else
  {
    v27 = sub_1000E1EE8();
    v28 = sub_1000E2678();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "[StartConversation] [InternalStatusError] Unable to find conversation after it was started.", v29, 2u);
    }

    v30 = *(v0 + 184);

    TUMakeNeighborhoodConduitError();
    swift_willThrow();

    sub_1000AD5EC(v30, type metadata accessor for HandoffInfo);
    v31 = *(v0 + 128);
    swift_errorRetain();
    v32 = sub_1000E1EE8();
    v33 = sub_1000E2678();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = *(v0 + 128);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412546;
      *(v35 + 4) = v34;
      *v36 = v34;
      *(v35 + 12) = 2112;
      v37 = v34;
      swift_errorRetain();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 14) = v38;
      v36[1] = v38;
      _os_log_impl(&_mh_execute_header, v32, v33, "[StartConversation] Failed to start conversation on %@ due to %@.", v35, 0x16u);
      sub_10000ADE4(&unk_10011EAC0, &unk_1000F0E60);
      swift_arrayDestroy();
    }

    v39 = *(v0 + 280);
    v40 = *(v0 + 256);
    v41 = *(v0 + 216);
    v42 = *(v0 + 136);
    v43 = *(v0 + 144);

    v39(v41, 1, 1, v43);
    swift_beginAccess();
    sub_1000A884C(v41, v42 + v40);
    swift_endAccess();
    sub_100061F64();
    sub_1000033C8(v41, &qword_10011F888, &qword_1000F22B0);
    swift_willThrow();

    v26 = *(v0 + 8);
  }

  return v26();
}

uint64_t sub_10005F9D4()
{

  v1 = *(v0 + 128);
  swift_errorRetain();
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2678();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 128);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412546;
    *(v5 + 4) = v4;
    *v6 = v4;
    *(v5 + 12) = 2112;
    v7 = v4;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    v6[1] = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "[StartConversation] Failed to start conversation on %@ due to %@.", v5, 0x16u);
    sub_10000ADE4(&unk_10011EAC0, &unk_1000F0E60);
    swift_arrayDestroy();
  }

  v9 = *(v0 + 280);
  v10 = *(v0 + 256);
  v11 = *(v0 + 216);
  v12 = *(v0 + 136);
  v13 = *(v0 + 144);

  v9(v11, 1, 1, v13);
  swift_beginAccess();
  sub_1000A884C(v11, v12 + v10);
  swift_endAccess();
  sub_100061F64();
  sub_1000033C8(v11, &qword_10011F888, &qword_1000F22B0);
  swift_willThrow();

  v14 = *(v0 + 8);

  return v14();
}

void sub_10005FC2C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

char *sub_10005FCA8()
{
  v1 = [v0 value];
  v2 = sub_1000E2338();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = [v0 value];
    v7 = sub_1000E2338();
    v9 = v8;

    v10 = sub_1000D2030(0, 1, 1, _swiftEmptyArrayStorage);
    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v12 >= v11 >> 1)
    {
      v10 = sub_1000D2030((v11 > 1), v12 + 1, 1, v10);
    }

    *(v10 + 2) = v12 + 1;
    v13 = &v10[16 * v12];
    *(v13 + 4) = v7;
    *(v13 + 5) = v9;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v14 = [v0 normalizedValue];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1000E2338();
    v18 = v17;

    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1000D2030(0, *(v10 + 2) + 1, 1, v10);
      }

      v21 = *(v10 + 2);
      v20 = *(v10 + 3);
      if (v21 >= v20 >> 1)
      {
        v10 = sub_1000D2030((v20 > 1), v21 + 1, 1, v10);
      }

      *(v10 + 2) = v21 + 1;
      v22 = &v10[16 * v21];
      *(v22 + 4) = v16;
      *(v22 + 5) = v18;
    }

    else
    {
    }
  }

  return v10;
}

id related decl e for TUNeighborhoodActivityConduitError.init(_:underlying:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1000E0BD8();
  }

  else
  {
    v2 = 0;
  }

  v3 = TUMakeNeighborhoodConduitError();

  return v3;
}

uint64_t sub_10005FED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[4] = a2;
  sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v6[9] = swift_task_alloc();

  return _swift_task_switch(sub_10005FF74, 0, 0);
}

uint64_t sub_10005FF74()
{
  v1 = v0[9];
  v12 = v0[8];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];
  v5 = sub_1000E2538();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  v7[5] = v2;

  sub_100061074(v1, &unk_1000F2830, v7);
  sub_1000033C8(v1, &unk_10011EA50, &qword_1000F0D30);
  v6(v1, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v3;
  v8[5] = v12;
  sub_100061074(v1, &unk_1000F2840, v8);
  sub_1000033C8(v1, &unk_10011EA50, &qword_1000F0D30);
  v9 = swift_task_alloc();
  v0[10] = v9;
  v10 = sub_10000ADE4(&qword_10011FBD8, &qword_1000F2848);
  *v9 = v0;
  v9[1] = sub_100060170;

  return ThrowingTaskGroup.nextResult()(v0 + 2, v10);
}

uint64_t sub_100060170()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1000AE230;
  }

  else
  {
    *(v2 + 96) = *(v2 + 16);
    *(v2 + 25) = *(v2 + 24);
    v3 = sub_100060294;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100060294()
{
  v1 = *(v0 + 25);
  if (v1 == 255)
  {
    sub_10002CFB4();
    swift_allocError();
    *v2 = 1;
LABEL_5:
    swift_willThrow();

    v3 = *(v0 + 8);
    goto LABEL_7;
  }

  sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
  sub_1000E25A8();
  if (v1)
  {
    goto LABEL_5;
  }

  v3 = *(v0 + 8);
LABEL_7:

  return v3();
}

uint64_t sub_10006039C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100060440, 0, 0);
}

uint64_t sub_100060440()
{
  v1 = v0[9];
  v12 = v0[8];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];
  v5 = sub_1000E2538();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  v7[5] = v2;

  sub_100061264(v1, &unk_1000F2340, v7);
  sub_1000033C8(v1, &unk_10011EA50, &qword_1000F0D30);
  v6(v1, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v3;
  v8[5] = v12;
  sub_100061264(v1, &unk_1000F2350, v8);
  sub_1000033C8(v1, &unk_10011EA50, &qword_1000F0D30);
  v9 = swift_task_alloc();
  v0[10] = v9;
  v10 = sub_10000ADE4(&unk_10011F8D0, &qword_1000F2358);
  *v9 = v0;
  v9[1] = sub_10006063C;

  return ThrowingTaskGroup.nextResult()(v0 + 2, v10);
}

uint64_t sub_10006063C()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1000608A0;
  }

  else
  {
    *(v2 + 96) = *(v2 + 16);
    *(v2 + 25) = *(v2 + 24);
    v3 = sub_100060760;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100060760()
{
  v1 = *(v0 + 25);
  if (v1 == 255)
  {
    sub_10002CFB4();
    swift_allocError();
    *v5 = 1;
  }

  else
  {
    sub_10000ADE4(&qword_10011ED40, &qword_1000F1188);
    sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
    sub_1000E25A8();
    v2 = *(v0 + 96);
    if ((v1 & 1) == 0)
    {

      v3 = *(v0 + 8);

      return v3(v2 & 1);
    }
  }

  swift_willThrow();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000608BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  sub_10000ADE4(&qword_10011FAA0, &qword_1000F26A8);
  v6[8] = swift_task_alloc();
  v7 = sub_10000ADE4(&qword_10011FAA8, &qword_1000F26B0);
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v6[13] = swift_task_alloc();

  return _swift_task_switch(sub_100060A0C, 0, 0);
}

uint64_t sub_100060A0C()
{
  v1 = v0[13];
  v2 = v0[6];
  v13 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = sub_1000E2538();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  v7[5] = v3;

  sub_100061460(v1, &unk_1000F26C0, v7);
  sub_1000033C8(v1, &unk_10011EA50, &qword_1000F0D30);
  v6(v1, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  v8[5] = v13;
  sub_100061460(v1, &unk_1000F26D0, v8);
  sub_1000033C8(v1, &unk_10011EA50, &qword_1000F0D30);
  v9 = swift_task_alloc();
  v0[14] = v9;
  v10 = sub_10000ADE4(&unk_10011FAB0, &qword_1000F26D8);
  *v9 = v0;
  v9[1] = sub_100060C0C;
  v11 = v0[8];

  return ThrowingTaskGroup.nextResult()(v11, v10);
}

uint64_t sub_100060C0C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_100060F60;
  }

  else
  {
    v2 = sub_100060D20;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100060D20()
{
  v1 = v0[8];
  if ((*(v0[10] + 48))(v1, 1, v0[9]) == 1)
  {
    sub_1000033C8(v1, &qword_10011FAA0, &qword_1000F26A8);
    sub_10002CFB4();
    swift_allocError();
    *v2 = 1;
    swift_willThrow();
LABEL_5:

    v6 = v0[1];
    goto LABEL_7;
  }

  v4 = v0[11];
  v3 = v0[12];
  sub_1000AD400(v1, v3, &qword_10011FAA8, &qword_1000F26B0);
  type metadata accessor for HandoffInfo(0);
  sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
  sub_1000E25A8();
  sub_10000CB64(v3, v4, &qword_10011FAA8, &qword_1000F26B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = v0[12];
    swift_willThrow();
    sub_1000033C8(v5, &qword_10011FAA8, &qword_1000F26B0);
    goto LABEL_5;
  }

  v7 = v0[11];
  v8 = v0[2];
  sub_1000033C8(v0[12], &qword_10011FAA8, &qword_1000F26B0);
  sub_1000A877C(v7, v8, type metadata accessor for HandoffInfo);

  v6 = v0[1];
LABEL_7:

  return v6();
}

uint64_t sub_100060F7C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100002D64;

  return v8(a1);
}

uint64_t sub_100061074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v7 - 8);
  v9 = v18 - v8;
  sub_10000CB64(a1, v18 - v8, &unk_10011EA50, &qword_1000F0D30);
  v10 = sub_1000E2538();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000033C8(v9, &unk_10011EA50, &qword_1000F0D30);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_1000E24B8();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1000E2528();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_100061264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v7 - 8);
  v9 = v18 - v8;
  sub_10000CB64(a1, v18 - v8, &unk_10011EA50, &qword_1000F0D30);
  v10 = sub_1000E2538();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000033C8(v9, &unk_10011EA50, &qword_1000F0D30);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_1000E24B8();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1000E2528();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  sub_10000ADE4(&qword_10011ED40, &qword_1000F1188);
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_100061460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v7 - 8);
  v9 = v18 - v8;
  sub_10000CB64(a1, v18 - v8, &unk_10011EA50, &qword_1000F0D30);
  v10 = sub_1000E2538();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000033C8(v9, &unk_10011EA50, &qword_1000F0D30);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_1000E24B8();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1000E2528();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  type metadata accessor for HandoffInfo(0);
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_100061650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1000E2B28();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_100061710, 0, 0);
}

uint64_t sub_100061710()
{
  sub_1000E2CF8();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1000617D0;
  v3 = v0[2];
  v2 = v0[3];

  return sub_100003DA4(v3, v2, 0, 0, 1);
}

uint64_t sub_1000617D0()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 64) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1000AE214;
  }

  else
  {
    v5 = sub_1000AE1EC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100061940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1000E2B28();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_100061A00, 0, 0);
}

uint64_t sub_100061A00()
{
  sub_1000E2CF8();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_100061AC0;
  v3 = v0[2];
  v2 = v0[3];

  return sub_100003DA4(v3, v2, 0, 0, 1);
}

uint64_t sub_100061AC0()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 64) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_10002CC4C;
  }

  else
  {
    v5 = sub_100061C30;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100061C30()
{
  v1 = *(v0 + 64);
  sub_1000E2588();
  if (!v1)
  {
    sub_10002CFB4();
    swift_allocError();
    *v2 = 0;
    swift_willThrow();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100061CD4()
{
  v1 = [v0 knownIdentifiersByHandleType];
  sub_10000CAAC(0, &qword_10011DF80, NSNumber_ptr);
  sub_10000EA70(&qword_10011FA40, &qword_10011DF80, NSNumber_ptr, &protocol conformance descriptor for NSObject);
  v2 = sub_1000E22B8();

  v3 = [objc_allocWithZone(NSNumber) initWithInteger:2];
  v4 = v3;
  if (*(v2 + 16) && (v5 = sub_10000B424(v3), (v6 & 1) != 0))
  {
    v7 = *(*(v2 + 56) + 16 * v5);

    return v7;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_100061DF0()
{
  type metadata accessor for ConduitActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1001230F0 = v0;
  return result;
}

uint64_t sub_100061E2C()
{
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100061E88()
{
  v0 = type metadata accessor for ConduitActor();

  return static GlobalActor.sharedUnownedExecutor.getter(v0);
}

void sub_100061EC0()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedInstance];
  v2 = [v1 conversationManager];

  v3 = [v0 sharedInstance];
  v4 = objc_allocWithZone(type metadata accessor for NeighborhoodActivityConduit(0));
  sub_100066480(v2, v3);
  qword_1001230F8 = v5;
}

uint64_t sub_100061F64()
{
  v1 = type metadata accessor for HandoffState(0);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v31 - v6;
  v8 = sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v31 - v13;
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v17 = sub_1000E1F08();
  sub_1000049D0(v17, qword_100123128);
  v18 = v0;
  v19 = sub_1000E1EE8();
  v20 = sub_1000E2698();

  v36 = v20;
  if (os_log_type_enabled(v19, v20))
  {
    v32 = v5;
    v33 = v7;
    v21 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v37[0] = v34;
    v35 = v21;
    *v21 = 136315138;
    v22 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
    swift_beginAccess();
    sub_10000CB64(v18 + v22, v16, &qword_10011F888, &qword_1000F22B0);
    sub_10000CB64(v16, v14, &qword_10011F888, &qword_1000F22B0);
    if ((*(v2 + 48))(v14, 1, v1) == 1)
    {
      sub_1000033C8(v14, &qword_10011F888, &qword_1000F22B0);
      v23 = 0xE300000000000000;
      v24 = 7104878;
    }

    else
    {
      v25 = v33;
      sub_1000A877C(v14, v33, type metadata accessor for HandoffState);
      sub_1000A87E4(v25, v32, type metadata accessor for HandoffState);
      v24 = sub_1000E2368();
      v23 = v26;
      sub_1000AD5EC(v25, type metadata accessor for HandoffState);
    }

    sub_1000033C8(v16, &qword_10011F888, &qword_1000F22B0);
    v27 = sub_100029C70(v24, v23, v37);

    v28 = v35;
    *(v35 + 1) = v27;
    _os_log_impl(&_mh_execute_header, v19, v36, "Handoff state updated to %s", v28, 0xCu);
    sub_10000E9DC(v34);
  }

  else
  {
  }

  v29 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  swift_beginAccess();
  sub_10000CB64(v18 + v29, v11, &qword_10011F888, &qword_1000F22B0);
  sub_1000E1FE8();
  return sub_1000033C8(v11, &qword_10011F888, &qword_1000F22B0);
}

uint64_t sub_100062394(int a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v54 = a1;
  v7 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v7 - 8);
  v9 = &v48 - v8;
  v10 = sub_10000ADE4(&qword_10011F8B8, &qword_1000F22D8);
  __chkstk_darwin(v10 - 8);
  v12 = &v48 - v11;
  v13 = type metadata accessor for HandoffInfo(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v53 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  __chkstk_darwin(v16 - 8);
  v55 = (&v48 - v17);
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v18 = sub_1000E1F08();
  v52 = sub_1000049D0(v18, qword_100123128);
  v19 = sub_1000E1EE8();
  v20 = sub_1000E2698();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v50 = v14;
    v22 = v21;
    v23 = swift_slowAlloc();
    v49 = v3;
    v24 = v23;
    v57[0] = v23;
    *v22 = 136315138;
    v56 = v54 & 1;
    v25 = sub_1000E2368();
    v51 = v9;
    v27 = v13;
    v28 = v12;
    v29 = a3;
    v30 = sub_100029C70(v25, v26, v57);
    v9 = v51;

    *(v22 + 4) = v30;
    a3 = v29;
    v12 = v28;
    v13 = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, "Safely get handoff info, requireJoined: %s", v22, 0xCu);
    sub_10000E9DC(v24);
    v4 = v49;

    v14 = v50;
  }

  v31 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  swift_beginAccess();
  v32 = v55;
  sub_10000CB64(v4 + v31, v55, &qword_10011F888, &qword_1000F22B0);
  v33 = type metadata accessor for HandoffState(0);
  if ((*(*(v33 - 8) + 48))(v32, 1, v33) == 1)
  {
    (*(v14 + 56))(v12, 1, 1, v13);
    a2(v12);
    return sub_1000033C8(v12, &qword_10011F8B8, &qword_1000F22D8);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = v53;
    sub_1000A877C(v32, v53, type metadata accessor for HandoffInfo);
    sub_1000A87E4(v35, v12, type metadata accessor for HandoffInfo);
    (*(v14 + 56))(v12, 0, 1, v13);
    a2(v12);
    sub_1000033C8(v12, &qword_10011F8B8, &qword_1000F22D8);
    return sub_1000AD5EC(v35, type metadata accessor for HandoffInfo);
  }

  else
  {
    v36 = v4;
    v37 = *v32;
    if (v54)
    {
      v38 = sub_1000E1EE8();
      v39 = sub_1000E2678();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
      }

      (*(v14 + 56))(v12, 1, 1, v13);
      a2(v12);

      return sub_1000033C8(v12, &qword_10011F8B8, &qword_1000F22D8);
    }

    v41 = sub_1000E2538();
    (*(*(v41 - 8) + 56))(v9, 1, 1, v41);
    v42 = qword_10011DC30;

    v43 = v36;

    if (v42 != -1)
    {
      swift_once();
    }

    v45 = qword_1001230F0;
    v46 = sub_1000A75DC(&qword_100120020, v44, type metadata accessor for ConduitActor, &unk_1000F2250);
    v47 = swift_allocObject();
    v47[2] = v45;
    v47[3] = v46;
    v47[4] = v37;
    v47[5] = v43;
    v47[6] = a2;
    v47[7] = a3;

    sub_100022960(0, 0, v9, &unk_1000F22F0, v47);
  }
}

uint64_t sub_100062A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a5;
  sub_10000ADE4(&qword_10011F8B8, &qword_1000F22D8);
  v9 = swift_task_alloc();
  v7[5] = v9;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v7[6] = qword_1001230F0;
  v10 = swift_task_alloc();
  v7[7] = v10;
  v11 = type metadata accessor for HandoffInfo(0);
  v7[8] = v11;
  v12 = sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
  *v10 = v7;
  v10[1] = sub_100062B74;

  return Task.value.getter(v9, a4, v11, v12, &protocol self-conformance witness table for Error);
}

uint64_t sub_100062B74()
{
  v2 = *v1;

  v3 = *(v2 + 48);
  if (v0)
  {

    v4 = sub_100062FC8;
  }

  else
  {
    v4 = sub_100062CAC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100062CAC()
{
  v1 = v0[5];
  (*(*(v0[8] - 8) + 56))(v1, 0, 1);
  sub_1000033C8(v1, &qword_10011F8B8, &qword_1000F22D8);
  v2 = swift_allocObject();
  v0[9] = v2;
  swift_unknownObjectWeakInit();
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_100062DFC;

  return sub_10005CF64(500000000000000000, 0, &unk_1000F2308, v2);
}

uint64_t sub_100062DFC()
{
  v2 = *v1;

  v3 = *(v2 + 48);
  if (v0)
  {

    v4 = sub_1000AE208;
  }

  else
  {

    v4 = sub_100062F58;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100062F58()
{
  sub_100062394(1, *(v0 + 24), *(v0 + 32));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100062FC8()
{
  v1 = v0[5];
  (*(*(v0[8] - 8) + 56))(v1, 1, 1);
  sub_1000033C8(v1, &qword_10011F8B8, &qword_1000F22D8);
  v2 = swift_allocObject();
  v0[9] = v2;
  swift_unknownObjectWeakInit();
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_100062DFC;

  return sub_10005CF64(500000000000000000, 0, &unk_1000F2308, v2);
}

uint64_t sub_100063118(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  sub_10000ADE4(&qword_10011F8E0, &qword_1000F2368);
  v2[13] = swift_task_alloc();
  v4 = sub_10000ADE4(&qword_10011F8E8, &qword_1000F2370);
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v5 = sub_10000ADE4(&unk_10011F8F0, &unk_1000F2378);
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000632F8, 0, 0);
}

uint64_t sub_1000632F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 160) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 120);
    v2 = *(v0 + 128);
    v4 = *(v0 + 112);
    *(v0 + 40) = *(Strong + OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffStateSubject);
    sub_10000ADE4(&unk_10011EAD0, &qword_1000F0E80);
    sub_100002C64(&qword_10011F900, &unk_10011EAD0, &qword_1000F0E80, &protocol conformance descriptor for CurrentValueSubject<A, B>);
    sub_1000E20E8();
    sub_1000E1FA8();
    (*(v3 + 8))(v2, v4);
    v5 = sub_100002C64(&qword_10011F908, &unk_10011F8F0, &unk_1000F2378, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
    v6 = swift_task_alloc();
    *(v0 + 168) = v6;
    *v6 = v0;
    v6[1] = sub_10006352C;
    v7 = *(v0 + 136);
    v8 = *(v0 + 104);

    return dispatch thunk of AsyncIteratorProtocol.next()(v8, v7, v5);
  }

  else
  {
    **(v0 + 56) = 0;

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_10006352C()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1000638A8;
  }

  else
  {
    v2 = sub_100063640;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006365C()
{
  v1 = *(v0 + 104);
  if ((*(*(v0 + 80) + 48))(v1, 1, *(v0 + 72)) == 1)
  {
    v2 = *(v0 + 160);
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));

    **(v0 + 56) = 0;

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 96);
    sub_1000AD400(v1, v5, &qword_10011F888, &qword_1000F22B0);
    v6 = type metadata accessor for HandoffState(0);
    if ((*(*(v6 - 8) + 48))(v5, 1, v6) != 1)
    {
      v7 = *(v0 + 88);
      sub_10000CB64(*(v0 + 96), v7, &qword_10011F888, &qword_1000F22B0);
      sub_1000AD5EC(v7, type metadata accessor for HandoffState);
    }

    sub_1000033C8(*(v0 + 96), &qword_10011F888, &qword_1000F22B0);
    v8 = sub_100002C64(&qword_10011F908, &unk_10011F8F0, &unk_1000F2378, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
    v9 = swift_task_alloc();
    *(v0 + 168) = v9;
    *v9 = v0;
    v9[1] = sub_10006352C;
    v10 = *(v0 + 136);
    v11 = *(v0 + 104);

    return dispatch thunk of AsyncIteratorProtocol.next()(v11, v10, v8);
  }
}

uint64_t sub_1000638A8()
{
  *(v0 + 48) = *(v0 + 176);
  sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

char *sub_100063934(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  __chkstk_darwin(v2);
  v4 = &v25 - v3;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_10000C400(_swiftEmptyArrayStorage);
    v8 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
    swift_beginAccess();
    sub_10000CB64(&v6[v8], v4, &qword_10011F888, &qword_1000F22B0);
    v9 = sub_1000E2358();
    v30 = &type metadata for String;
    *&v29 = v9;
    *(&v29 + 1) = v10;
    sub_10000C154(&v29, v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27[0] = v7;
    sub_1000CAB60(v28, 0x5366666F646E6168, 0xEC00000065746174, isUniquelyReferenced_nonNull_native);
    v12 = v27[0];
    swift_beginAccess();

    sub_10005AC44(v13);
    v15 = v14;

    v30 = sub_10000ADE4(&qword_10011F9B8, &qword_1000F24A8);
    *&v29 = v15;
    sub_10000C154(&v29, v28);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v26 = v12;
    sub_1000CAB60(v28, 0x565479627261656ELL, 0xE900000000000073, v16);
    v17 = v26;
    v18 = *&v6[OBJC_IVAR___CSDNeighborhoodActivityConduit_messageProxy];
    if (v18)
    {
      sub_10000ADE4(&unk_10011F9C0, &unk_1000F24B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000F1FB0;
      *(inited + 32) = 0x746567726174;
      *(inited + 40) = 0xE600000000000000;
      v20 = *(v18 + 48);
      *(inited + 48) = *(v18 + 40);
      *(inited + 56) = v20;
      *(inited + 72) = &type metadata for String;
      *(inited + 80) = 0x6E69726566667562;
      *(inited + 88) = 0xE900000000000067;
      *(inited + 96) = *(v18 + 72);
      *(inited + 120) = &type metadata for Bool;
      *(inited + 128) = 0x4D646569786F7270;
      *(inited + 136) = 0xEF73656761737365;
      v21 = *(v18 + 64);
      *(inited + 168) = &type metadata for Int;
      *(inited + 144) = v21;

      v22 = sub_10000C400(inited);
      swift_setDeallocating();
      sub_10000ADE4(&qword_10011DF78, &qword_1000F04D8);
      swift_arrayDestroy();
      v30 = sub_10000ADE4(&qword_10011F9D0, &unk_1000F24C0);
      *&v29 = v22;
      sub_10000C154(&v29, v28);
      v23 = swift_isUniquelyReferenced_nonNull_native();
      v26 = v17;
      sub_1000CAB60(v28, 0x506567617373656DLL, 0xEC00000079786F72, v23);

      v17 = v26;
    }

    v24 = sub_100063EEC(0xD000000000000011, 0x80000001000EBB30, v17);

    swift_bridgeObjectRelease_n();
    return v24;
  }

  return result;
}