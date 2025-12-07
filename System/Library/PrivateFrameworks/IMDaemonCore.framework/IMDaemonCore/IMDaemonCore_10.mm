uint64_t sub_22B72C5B0()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_22B72C75C, v4, 0);
}

uint64_t sub_22B72C75C()
{
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_22B72CAAC;
  v3 = v0[2];
  v2 = v0[3];

  return sub_22B7266A4(v3, v2);
}

uint64_t sub_22B72C7F4()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = swift_task_alloc();
  v0[13] = v3;
  v3[2] = v2;
  v3[3] = sub_22B72DBF0;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_22B72C900;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v4, 0, 0, 0xD00000000000001ELL, 0x800000022B80F230, sub_22B72DBF8, v3, v5);
}

uint64_t sub_22B72C900()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_22B72DC14, v4, 0);
}

uint64_t sub_22B72CAAC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_22B72CBBC(void *a1, uint64_t a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v17[0] = 0;
  v3 = [a1 setTaskExpiredWithRetryAfter:v17 error:64000000.0];
  v4 = v17[0];
  if (v3)
  {

    v5 = v4;
  }

  else
  {
    v6 = v17[0];
    v7 = sub_22B7DA6F8();

    swift_willThrow();
    if (qword_28141F398 != -1)
    {
      swift_once();
    }

    v8 = sub_22B7DB2B8();
    sub_22B4CFA74(v8, qword_281422680);

    v9 = v7;
    v10 = sub_22B7DB298();
    v11 = sub_22B7DBC98();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17[0] = v14;
      *v12 = 136446466;
      *(v12 + 4) = sub_22B4CFAAC(*(a2 + 248), *(a2 + 256), v17);
      *(v12 + 12) = 2112;
      v15 = v7;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v16;
      *v13 = v16;
      _os_log_impl(&dword_22B4CC000, v10, v11, "[%{public}s] failed to defer with error %@", v12, 0x16u);
      sub_22B708A24(v13);
      MEMORY[0x231898D60](v13, -1, -1);
      sub_22B4CFB78(v14);
      MEMORY[0x231898D60](v14, -1, -1);
      MEMORY[0x231898D60](v12, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_22B72CE34(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_22B72CE54, v1, 0);
}

uint64_t sub_22B72CE54()
{
  v33 = v0;
  v1 = v0[9];
  v2 = *(v1 + 200);
  v0[10] = v2;
  if (v2)
  {
    v3 = qword_28141F398;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_22B7DB2B8();
    sub_22B4CFA74(v4, qword_281422680);

    v5 = sub_22B7DB298();
    v6 = sub_22B7DBCB8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[9];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v32 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_22B4CFAAC(*(v7 + 248), *(v7 + 256), &v32);
      _os_log_impl(&dword_22B4CC000, v5, v6, "[%{public}s] already running?? waiting for existing task to finish", v8, 0xCu);
      sub_22B4CFB78(v9);
      MEMORY[0x231898D60](v9, -1, -1);
      MEMORY[0x231898D60](v8, -1, -1);
    }

    v10 = swift_task_alloc();
    v0[11] = v10;
    *v10 = v0;
    v10[1] = sub_22B72D250;
    v11 = MEMORY[0x277D84A98];
    v12 = MEMORY[0x277D84AC0];
    v13 = v0 + 5;
    v14 = v2;
  }

  else
  {
    v15 = v0[8];
    v16 = *(v1 + 192);
    *(v1 + 192) = v15;
    v17 = v15;

    if (qword_28141F398 != -1)
    {
      swift_once();
    }

    v18 = sub_22B7DB2B8();
    sub_22B4CFA74(v18, qword_281422680);

    v19 = sub_22B7DB298();
    v20 = sub_22B7DBCB8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = v0[9];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32 = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_22B4CFAAC(*(v21 + 248), *(v21 + 256), &v32);
      _os_log_impl(&dword_22B4CC000, v19, v20, "[%{public}s] resuming execution", v22, 0xCu);
      sub_22B4CFB78(v23);
      MEMORY[0x231898D60](v23, -1, -1);
      MEMORY[0x231898D60](v22, -1, -1);
    }

    v25 = v0[8];
    v24 = v0[9];
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    *(v26 + 24) = v25;

    v27 = v25;
    v29 = sub_22B73FAFC(&unk_22B7FA658, v26, v28);
    v0[12] = v29;

    *(v24 + 200) = v29;
    swift_retain_n();

    v30 = swift_task_alloc();
    v0[13] = v30;
    *v30 = v0;
    v30[1] = sub_22B72D5C4;
    v11 = MEMORY[0x277D84A98];
    v12 = MEMORY[0x277D84AC0];
    v13 = v0 + 2;
    v14 = v29;
  }

  return MEMORY[0x282200440](v13, v14, &_s11BatchResultVN, v11, v12);
}

uint64_t sub_22B72D250()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x2822009F8](sub_22B72D360, v1, 0);
}

uint64_t sub_22B72D360()
{
  v22 = v0;

  v2 = v0[8];
  v1 = v0[9];
  v3 = *(v1 + 192);
  *(v1 + 192) = v2;
  v4 = v2;

  if (qword_28141F398 != -1)
  {
    swift_once();
  }

  v5 = sub_22B7DB2B8();
  sub_22B4CFA74(v5, qword_281422680);

  v6 = sub_22B7DB298();
  v7 = sub_22B7DBCB8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_22B4CFAAC(*(v8 + 248), *(v8 + 256), &v21);
    _os_log_impl(&dword_22B4CC000, v6, v7, "[%{public}s] resuming execution", v9, 0xCu);
    sub_22B4CFB78(v10);
    MEMORY[0x231898D60](v10, -1, -1);
    MEMORY[0x231898D60](v9, -1, -1);
  }

  v12 = v0[8];
  v11 = v0[9];
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;

  v14 = v12;
  v16 = sub_22B73FAFC(&unk_22B7FA658, v13, v15);
  v0[12] = v16;

  *(v11 + 200) = v16;
  swift_retain_n();

  v17 = swift_task_alloc();
  v0[13] = v17;
  *v17 = v0;
  v17[1] = sub_22B72D5C4;
  v18 = MEMORY[0x277D84A98];
  v19 = MEMORY[0x277D84AC0];

  return MEMORY[0x282200440](v0 + 2, v16, &_s11BatchResultVN, v18, v19);
}

uint64_t sub_22B72D5C4()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x2822009F8](sub_22B72D6F0, v1, 0);
}

uint64_t sub_22B72D6F0()
{
  if (*(v0[9] + 200))
  {

    v1 = sub_22B7DBA68();

    if ((v1 & 1) == 0)
    {
      goto LABEL_5;
    }

    *(v0[9] + 200) = 0;
  }

LABEL_5:
  v2 = v0[9];
  v3 = *(v2 + 192);
  if (v3)
  {
    v4 = v0[8] == v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    *(v2 + 192) = 0;
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_22B72D7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  if (qword_281420630 != -1)
  {
    swift_once();
  }

  v3[5] = qword_281422748;
  v4 = swift_task_alloc();
  v3[6] = v4;
  *v4 = v3;
  v4[1] = sub_22B72D8A4;

  return sub_22B72B164();
}

uint64_t sub_22B72D8A4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *v2;
  v5[7] = a1;
  v5[8] = a2;

  v7 = swift_task_alloc();
  v5[9] = v7;
  *v7 = v6;
  v7[1] = sub_22B72DA14;
  v8 = v5[4];

  return sub_22B72BE20(a1, a2, v8);
}

uint64_t sub_22B72DA14()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_22B72DB24, v1, 0);
}

uint64_t sub_22B72DB44(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B6F0D94;

  return sub_22B72D7D0(a1, v5, v4);
}

uint64_t sub_22B72DC1C(uint64_t a1, char a2)
{
  v3 = *sub_22B4D2BCC((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x282200948](v3);
}

uint64_t sub_22B72DC78()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_28141F5B8);
  sub_22B4CFA74(v0, qword_28141F5B8);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B72DDA8()
{
  v1[46] = v0;
  sub_22B7DBA18();
  v1[47] = sub_22B7DBA08();
  v3 = sub_22B7DB9C8();
  v1[48] = v3;
  v1[49] = v2;

  return MEMORY[0x2822009F8](sub_22B72DE40, v3, v2);
}

id sub_22B72DE40()
{
  v1 = OBJC_IVAR___IMDBatchMessageSimulator_batch;
  v0[50] = OBJC_IVAR___IMDBatchMessageSimulator_messages;
  v0[51] = v1;
  swift_beginAccess();
  v2 = *(v0[46] + v0[50]);
  if (v2 >> 62)
  {
    if (sub_22B7DC1C8())
    {
LABEL_3:
      swift_beginAccess();
      sub_22B72F844();
      v4 = v3;
      v0[52] = v3;
      swift_endAccess();
      v5 = &off_278709000;
      v6 = [v4 item];
      sub_22B731884(v6);
      v8 = v7;
      v0[53] = v7;

      if (v8)
      {
        v9 = [v8 session];
        v0[54] = v9;
        if (v9)
        {
          v10 = v9;
          v11 = v4;
          sub_22B732544(v10, v11, v11);
          v13 = v12;
          v0[55] = v12;

          if (v13)
          {
            v14 = [v11 item];
            [v14 setSkipIndexing_];

            v15 = [v11 item];
            v16 = [v13 chatIdentifier];
            [v15 setRoomName_];

            v17 = [v11 item];
            LODWORD(v16) = [v17 isFromMe];

            if (v16 && [v13 style] == 45)
            {
              result = [v13 service];
              if (!result)
              {
                __break(1u);
                return result;
              }

              v19 = result;
              v20 = [result supportsCapability_];

              if (v20)
              {
                v21 = [v11 item];
                [v21 setFlags_];
              }
            }

            v22 = [v8 aliases];
            v23 = sub_22B7DB918();

            if (*v23->messageStore)
            {
              v31 = *v23->membershipObserver;
            }

            else
            {
              v31 = 0;
            }

            v23, v24, v25, v26, v27, v28, v29, v30, v154, v158;
            objc_opt_self();
            v72 = swift_dynamicCastObjCClass();
            if (v72)
            {
              v73 = v72;
              v74 = v8;
              v75 = [v73 idsAccount];
              if (v75)
              {
                v76 = v75;
                v77 = [v75 displayName];
                if (v77)
                {
                  v78 = v77;
                  sub_22B7DB6A8();
                  v80 = v79;

                  v5 = &off_278709000;
                  v31, v81, v82, v83, v84, v85, v86, v87, v155, v159;
                  v31 = v80;
                }

                else
                {
                  v108 = [v76 aliasStrings];
                  if (v108)
                  {
                    v109 = v108;
                    v110 = sub_22B7DB918();

                    if (*v110->messageStore)
                    {
                      v111 = *v110->membershipObserver;

                      v110, v112, v113, v114, v115, v116, v117, v118, v155, v159;
                      v31, v119, v120, v121, v122, v123, v124, v125, v156, v160;
                      v31 = v111;
                    }

                    else
                    {

                      v110, v126, v127, v128, v129, v130, v131, v132, v155, v159;
                      v31, v133, v134, v135, v136, v137, v138, v139, v157, v161;
                      v31 = 0;
                    }

                    v5 = &off_278709000;
                  }

                  else
                  {
                  }
                }
              }

              else
              {
              }
            }

            v0[56] = v31;
            v140 = [v11 lastAddressedHandle];
            if (v140)
            {
              v141 = v140;
              sub_22B7DB6A8();
              v31 = v142;
            }

            else
            {
              if (!v31)
              {
                v143 = 0;
                goto LABEL_50;
              }
            }

            v143 = sub_22B7DB678();
            v31, v144, v145, v146, v147, v148, v149, v150, v155, v159;
LABEL_50:
            [v13 updateLastAddressedHandle_];

            v151 = [v11 v5[505]];
            v0[57] = v151;
            swift_beginAccess();
            v152 = swift_task_alloc();
            v0[58] = v152;
            *v152 = v0;
            v152[1] = sub_22B72E9DC;

            return sub_22B72F91C(v13, v8, v151);
          }

          if (qword_28141F5B0 != -1)
          {
            swift_once();
          }

          v63 = sub_22B7DB2B8();
          sub_22B4CFA74(v63, qword_28141F5B8);
          v64 = sub_22B7DB298();
          v65 = sub_22B7DBC98();
          if (os_log_type_enabled(v64, v65))
          {
            v66 = swift_slowAlloc();
            *v66 = 0;
            _os_log_impl(&dword_22B4CC000, v64, v65, "Couldn't generate a chat for simulated message :(", v66, 2u);
            MEMORY[0x231898D60](v66, -1, -1);
          }

          v67 = [v11 item];
          v68 = [v67 guid];

          if (v68)
          {
            v69 = sub_22B7DB6A8();
            v71 = v70;
          }

          else
          {
            v69 = 0x3E6C696E3CLL;
            v71 = 0xE500000000000000;
          }

          sub_22B6F0AD4(&qword_27D8CD688, &qword_22B7FBA40);
          inited = swift_initStackObject();
          *(inited + 32) = 0x6567617373656DLL;
          *(inited + 16) = xmmword_22B7F93A0;
          *(inited + 40) = 0xE700000000000000;
          sub_22B7DC2E8();
          0xE000000000000000, v89, v90, v91, v92, v93, v94, v95, 0, 0xE000000000000000;
          MEMORY[0x231895140](v69, v71);
          v96 = MEMORY[0x277D837D0];
          *(inited + 48) = 0xD000000000000021;
          *(inited + 56) = 0x800000022B80F320;
          *(inited + 72) = v96;
          *(inited + 80) = 0x476567617373656DLL;
          *(inited + 120) = v96;
          *(inited + 88) = 0xEB00000000444955;
          *(inited + 96) = v69;
          *(inited + 104) = v71;
          v97 = sub_22B71DF98(inited);
          swift_setDeallocating();
          sub_22B6F0AD4(&qword_27D8CDB60, &qword_22B7FA360);
          swift_arrayDestroy();
          v98 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
          v99 = sub_22B7DB678();
          v100 = sub_22B7DB568();
          v97, v101, v102, v103, v104, v105, v106, v107, 0xD000000000000021, 0x800000022B80F320;
          [v98 initWithDomain:v99 code:0 userInfo:v100];

          swift_willThrow();
          goto LABEL_22;
        }
      }

      if (qword_28141F5B0 != -1)
      {
        swift_once();
      }

      v32 = sub_22B7DB2B8();
      sub_22B4CFA74(v32, qword_28141F5B8);
      v33 = sub_22B7DB298();
      v34 = sub_22B7DBC98();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_22B4CC000, v33, v34, "Couldn't find an account/session for simulated message :(", v35, 2u);
        MEMORY[0x231898D60](v35, -1, -1);
      }

      v36 = [v4 item];
      v37 = [v36 guid];

      if (v37)
      {
        v38 = sub_22B7DB6A8();
        v40 = v39;
      }

      else
      {
        v38 = 0x3E6C696E3CLL;
        v40 = 0xE500000000000000;
      }

      sub_22B6F0AD4(&qword_27D8CD688, &qword_22B7FBA40);
      v41 = swift_initStackObject();
      *(v41 + 16) = xmmword_22B7F93A0;
      *(v41 + 32) = sub_22B7DB6A8();
      *(v41 + 40) = v42;
      sub_22B7DC2E8();
      0xE000000000000000, v43, v44, v45, v46, v47, v48, v49, 0, 0xE000000000000000;
      MEMORY[0x231895140](v38, v40);
      v50 = MEMORY[0x277D837D0];
      *(v41 + 48) = 0xD000000000000025;
      *(v41 + 56) = 0x800000022B80F2F0;
      *(v41 + 72) = v50;
      *(v41 + 80) = 0x476567617373656DLL;
      *(v41 + 120) = v50;
      *(v41 + 88) = 0xEB00000000444955;
      *(v41 + 96) = v38;
      *(v41 + 104) = v40;
      v51 = sub_22B71DF98(v41);
      swift_setDeallocating();
      sub_22B6F0AD4(&qword_27D8CDB60, &qword_22B7FA360);
      swift_arrayDestroy();
      v52 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v53 = sub_22B7DB678();
      v54 = sub_22B7DB568();
      v51, v55, v56, v57, v58, v59, v60, v61, 0xD000000000000025, 0x800000022B80F2F0;
      [v52 initWithDomain:v53 code:0 userInfo:v54];

      swift_willThrow();
LABEL_22:

      v62 = v0[1];

      return v62();
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  swift_beginAccess();
  v153 = swift_task_alloc();
  v0[59] = v153;
  *v153 = v0;
  v153[1] = sub_22B72F6B4;

  return sub_22B730130();
}

uint64_t sub_22B72E9DC()
{
  v1 = *v0;
  v2 = *(*v0 + 456);

  swift_endAccess();

  v3 = *(v1 + 392);
  v4 = *(v1 + 384);

  return MEMORY[0x2822009F8](sub_22B72EB20, v4, v3);
}

id sub_22B72EB20()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  v4 = *(v0 + 424);
  v3 = *(v0 + 432);

  v2, v5, v6, v7, v8, v9, v10, v11, v164, v169;
  v12 = *(*(v0 + 368) + *(v0 + 400));
  if (v12 >> 62)
  {
    if (sub_22B7DC1C8())
    {
LABEL_3:
      swift_beginAccess();
      sub_22B72F844();
      v14 = v13;
      *(v0 + 416) = v13;
      swift_endAccess();
      v15 = &off_278709000;
      v16 = [v14 item];
      sub_22B731884(v16);
      v18 = v17;
      *(v0 + 424) = v17;

      if (v18)
      {
        v19 = [v18 session];
        *(v0 + 432) = v19;
        if (v19)
        {
          v20 = v19;
          v21 = v14;
          sub_22B732544(v20, v21, v21);
          v23 = v22;
          *(v0 + 440) = v22;

          if (v23)
          {
            v24 = [v21 item];
            [v24 setSkipIndexing_];

            v25 = [v21 item];
            v26 = [v23 chatIdentifier];
            [v25 setRoomName_];

            v27 = [v21 item];
            LODWORD(v26) = [v27 isFromMe];

            if (v26 && [v23 style] == 45)
            {
              result = [v23 service];
              if (!result)
              {
                __break(1u);
                return result;
              }

              v29 = result;
              v30 = [result supportsCapability_];

              if (v30)
              {
                v31 = [v21 item];
                [v31 setFlags_];
              }
            }

            v32 = [v18 aliases];
            v33 = sub_22B7DB918();

            if (*v33->messageStore)
            {
              v41 = *v33->membershipObserver;
            }

            else
            {
              v41 = 0;
            }

            v33, v34, v35, v36, v37, v38, v39, v40, v165, v170;
            objc_opt_self();
            v82 = swift_dynamicCastObjCClass();
            if (v82)
            {
              v83 = v82;
              v84 = v18;
              v85 = [v83 idsAccount];
              if (v85)
              {
                v86 = v85;
                v87 = [v85 displayName];
                if (v87)
                {
                  v88 = v87;
                  sub_22B7DB6A8();
                  v90 = v89;

                  v15 = &off_278709000;
                  v41, v91, v92, v93, v94, v95, v96, v97, v166, v171;
                  v41 = v90;
                }

                else
                {
                  v118 = [v86 aliasStrings];
                  if (v118)
                  {
                    v119 = v118;
                    v120 = sub_22B7DB918();

                    if (*v120->messageStore)
                    {
                      v121 = *v120->membershipObserver;

                      v120, v122, v123, v124, v125, v126, v127, v128, v166, v171;
                      v41, v129, v130, v131, v132, v133, v134, v135, v167, v172;
                      v41 = v121;
                    }

                    else
                    {

                      v120, v136, v137, v138, v139, v140, v141, v142, v166, v171;
                      v41, v143, v144, v145, v146, v147, v148, v149, v168, v173;
                      v41 = 0;
                    }

                    v15 = &off_278709000;
                  }

                  else
                  {
                  }
                }
              }

              else
              {
              }
            }

            *(v0 + 448) = v41;
            v150 = [v21 lastAddressedHandle];
            if (v150)
            {
              v151 = v150;
              sub_22B7DB6A8();
              v41 = v152;
            }

            else
            {
              if (!v41)
              {
                v153 = 0;
                goto LABEL_50;
              }
            }

            v153 = sub_22B7DB678();
            v41, v154, v155, v156, v157, v158, v159, v160, v166, v171;
LABEL_50:
            [v23 updateLastAddressedHandle_];

            v161 = [v21 v15[505]];
            *(v0 + 456) = v161;
            swift_beginAccess();
            v162 = swift_task_alloc();
            *(v0 + 464) = v162;
            *v162 = v0;
            v162[1] = sub_22B72E9DC;

            return sub_22B72F91C(v23, v18, v161);
          }

          if (qword_28141F5B0 != -1)
          {
            swift_once();
          }

          v73 = sub_22B7DB2B8();
          sub_22B4CFA74(v73, qword_28141F5B8);
          v74 = sub_22B7DB298();
          v75 = sub_22B7DBC98();
          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            *v76 = 0;
            _os_log_impl(&dword_22B4CC000, v74, v75, "Couldn't generate a chat for simulated message :(", v76, 2u);
            MEMORY[0x231898D60](v76, -1, -1);
          }

          v77 = [v21 item];
          v78 = [v77 guid];

          if (v78)
          {
            v79 = sub_22B7DB6A8();
            v81 = v80;
          }

          else
          {
            v79 = 0x3E6C696E3CLL;
            v81 = 0xE500000000000000;
          }

          sub_22B6F0AD4(&qword_27D8CD688, &qword_22B7FBA40);
          inited = swift_initStackObject();
          *(inited + 32) = 0x6567617373656DLL;
          *(inited + 16) = xmmword_22B7F93A0;
          *(inited + 40) = 0xE700000000000000;
          sub_22B7DC2E8();
          0xE000000000000000, v99, v100, v101, v102, v103, v104, v105, 0, 0xE000000000000000;
          MEMORY[0x231895140](v79, v81);
          v106 = MEMORY[0x277D837D0];
          *(inited + 48) = 0xD000000000000021;
          *(inited + 56) = 0x800000022B80F320;
          *(inited + 72) = v106;
          *(inited + 80) = 0x476567617373656DLL;
          *(inited + 120) = v106;
          *(inited + 88) = 0xEB00000000444955;
          *(inited + 96) = v79;
          *(inited + 104) = v81;
          v107 = sub_22B71DF98(inited);
          swift_setDeallocating();
          sub_22B6F0AD4(&qword_27D8CDB60, &qword_22B7FA360);
          swift_arrayDestroy();
          v108 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
          v109 = sub_22B7DB678();
          v110 = sub_22B7DB568();
          v107, v111, v112, v113, v114, v115, v116, v117, 0xD000000000000021, 0x800000022B80F320;
          [v108 initWithDomain:v109 code:0 userInfo:v110];

          swift_willThrow();
          goto LABEL_22;
        }
      }

      if (qword_28141F5B0 != -1)
      {
        swift_once();
      }

      v42 = sub_22B7DB2B8();
      sub_22B4CFA74(v42, qword_28141F5B8);
      v43 = sub_22B7DB298();
      v44 = sub_22B7DBC98();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_22B4CC000, v43, v44, "Couldn't find an account/session for simulated message :(", v45, 2u);
        MEMORY[0x231898D60](v45, -1, -1);
      }

      v46 = [v14 item];
      v47 = [v46 guid];

      if (v47)
      {
        v48 = sub_22B7DB6A8();
        v50 = v49;
      }

      else
      {
        v48 = 0x3E6C696E3CLL;
        v50 = 0xE500000000000000;
      }

      sub_22B6F0AD4(&qword_27D8CD688, &qword_22B7FBA40);
      v51 = swift_initStackObject();
      *(v51 + 16) = xmmword_22B7F93A0;
      *(v51 + 32) = sub_22B7DB6A8();
      *(v51 + 40) = v52;
      sub_22B7DC2E8();
      0xE000000000000000, v53, v54, v55, v56, v57, v58, v59, 0, 0xE000000000000000;
      MEMORY[0x231895140](v48, v50);
      v60 = MEMORY[0x277D837D0];
      *(v51 + 48) = 0xD000000000000025;
      *(v51 + 56) = 0x800000022B80F2F0;
      *(v51 + 72) = v60;
      *(v51 + 80) = 0x476567617373656DLL;
      *(v51 + 120) = v60;
      *(v51 + 88) = 0xEB00000000444955;
      *(v51 + 96) = v48;
      *(v51 + 104) = v50;
      v61 = sub_22B71DF98(v51);
      swift_setDeallocating();
      sub_22B6F0AD4(&qword_27D8CDB60, &qword_22B7FA360);
      swift_arrayDestroy();
      v62 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v63 = sub_22B7DB678();
      v64 = sub_22B7DB568();
      v61, v65, v66, v67, v68, v69, v70, v71, 0xD000000000000025, 0x800000022B80F2F0;
      [v62 initWithDomain:v63 code:0 userInfo:v64];

      swift_willThrow();
LABEL_22:

      v72 = *(v0 + 8);

      return v72();
    }
  }

  else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  swift_beginAccess();
  v163 = swift_task_alloc();
  *(v0 + 472) = v163;
  *v163 = v0;
  v163[1] = sub_22B72F6B4;

  return sub_22B730130();
}

uint64_t sub_22B72F6B4()
{
  v1 = *v0;

  swift_endAccess();
  v2 = *(v1 + 392);
  v3 = *(v1 + 384);

  return MEMORY[0x2822009F8](sub_22B72F7E0, v3, v2);
}

uint64_t sub_22B72F7E0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_22B72F844()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_22B7DC1C8())
  {
    if (sub_22B7DC1C8())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        *(v1 + 32);
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x231895C80](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_22B7DC1C8();
LABEL_13:
      if (v3)
      {
        sub_22B6FC250(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_22B72F91C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_22B7DBA18();
  v4[6] = sub_22B7DBA08();
  v6 = sub_22B7DB9C8();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_22B72F9B8, v6, v5);
}

uint64_t sub_22B72F9B8()
{
  v1 = *(v0[5] + 8);
  if (v1 && (v2 = v0[2], sub_22B4D01A0(0, &qword_28141EFF0, off_2786FF950), v3 = v2, v4 = v1, v5 = sub_22B7DBFD8(), v4, v3, (v5 & 1) != 0) && (v6 = *(v0[5] + 16)) != 0 && (v7 = v0[3], sub_22B4D01A0(0, &qword_28141F298, off_2786FF850), v8 = v7, v9 = v6, v10 = sub_22B7DBFD8(), v9, v8, (v10 & 1) != 0))
  {
    v11 = v0[5];
    v12 = *(v11 + 24);
    if (v12 >> 62)
    {
      v13 = sub_22B7DC1C8();
      v11 = v0[5];
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v13 < [*v11 daemonBatchSize])
    {

      v15 = v0[4];
      v14 = v0[5];
      v17 = v0[2];
      v16 = v0[3];
      v18 = v14[1];
      v19 = v17;

      v14[1] = v17;
      v20 = v14[2];
      v21 = v16;

      v14[2] = v16;
      MEMORY[0x231895260](v15);
      if (*((v14[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22B7DB938();
      }

      sub_22B7DB968();
      v22 = v0[1];

      return v22();
    }

    v24 = swift_task_alloc();
    v0[10] = v24;
    *v24 = v0;
    v25 = sub_22B72FF20;
  }

  else
  {
    v24 = swift_task_alloc();
    v0[9] = v24;
    *v24 = v0;
    v25 = sub_22B72FC54;
  }

  v24[1] = v25;

  return sub_22B730130();
}

uint64_t sub_22B72FC54()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_22B72FD74, v3, v2);
}

uint64_t sub_22B72FD74()
{
  v1 = v0[5];
  v2 = *(v1 + 24);
  if (v2 >> 62)
  {
    v3 = sub_22B7DC1C8();
    v1 = v0[5];
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 >= [*v1 daemonBatchSize])
  {
    v14 = swift_task_alloc();
    v0[10] = v14;
    *v14 = v0;
    v14[1] = sub_22B72FF20;

    return sub_22B730130();
  }

  else
  {

    v5 = v0[4];
    v4 = v0[5];
    v7 = v0[2];
    v6 = v0[3];
    v8 = v4[1];
    v9 = v7;

    v4[1] = v7;
    v10 = v4[2];
    v11 = v6;

    v4[2] = v6;
    MEMORY[0x231895260](v5);
    if (*((v4[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22B7DB938();
    }

    sub_22B7DB968();
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_22B72FF20()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_22B730040, v3, v2);
}

uint64_t sub_22B730040()
{

  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v1[1];
  v6 = v4;

  v1[1] = v4;
  v7 = v1[2];
  v8 = v3;

  v1[2] = v3;
  MEMORY[0x231895260](v2);
  if (*((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22B7DB938();
  }

  sub_22B7DB968();
  v9 = v0[1];

  return v9();
}

uint64_t sub_22B730130()
{
  v1[26] = v0;
  sub_22B7DBA18();
  v1[27] = sub_22B7DBA08();
  v3 = sub_22B7DB9C8();
  v1[28] = v3;
  v1[29] = v2;

  return MEMORY[0x2822009F8](sub_22B7301C8, v3, v2);
}

uint64_t sub_22B7301C8()
{
  v42 = v0;
  v1 = v0[26];
  v3 = (v1 + 8);
  v2 = *(v1 + 8);
  v0[30] = v2;
  if (v2 && (v4 = *(v1 + 16), (v0[31] = v4) != 0))
  {
    v5 = v4;
    v6 = v2;
    v7 = [v5 session];
    v0[32] = v7;
    if (v7)
    {
      v8 = v7;
      v9 = v0[26];

      *v3 = 0;
      v3[1] = 0;
      v10 = *(v9 + 24);
      v0[33] = v10;
      if (v10 >> 62)
      {
        if (sub_22B7DC1C8())
        {
          v11 = sub_22B7DC1C8();
LABEL_6:
          if (qword_28141F5B0 != -1)
          {
            swift_once();
          }

          v12 = sub_22B7DB2B8();
          v0[34] = sub_22B4CFA74(v12, qword_28141F5B8);
          v13 = v6;
          v14 = sub_22B7DB298();
          v15 = sub_22B7DBC78();
          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            v41 = v37;
            *v16 = 134218242;
            *(v16 + 4) = v11;
            *(v16 + 12) = 2080;
            v17 = [v13 guid];
            v39 = v13;

            if (!v17)
            {
              goto LABEL_26;
            }

            v19 = sub_22B7DB6A8();
            v21 = v20;

            v22 = sub_22B4CFAAC(v19, v21, &v41);
            v21, v23, v24, v25, v26, v27, v28, v29, v37, v39;
            *(v16 + 14) = v22;
            _os_log_impl(&dword_22B4CC000, v14, v15, "Inserting %ld messages into %s", v16, 0x16u);
            sub_22B4CFB78(v38);
            MEMORY[0x231898D60](v38, -1, -1);
            MEMORY[0x231898D60](v16, -1, -1);

            v13 = v40;
          }

          else
          {
          }

          sub_22B4D01A0(0, &qword_28141F288, 0x277D1AA70);

          v30 = sub_22B7DB8F8();
          v0[35] = v30;
          v18 = [v13 chatIdentifier];
          v0[36] = v18;
          if (v18)
          {
            v31 = v18;
            v32 = [v13 style];
            v33 = sub_22B7DB678();
            v0[37] = v33;
            v0[2] = v0;
            v0[7] = v0 + 43;
            v0[3] = sub_22B730618;
            v34 = swift_continuation_init();
            v0[25] = sub_22B6F0AD4(&unk_27D8CD7F0, &qword_22B7F98F8);
            v0[18] = MEMORY[0x277D85DD0];
            v0[19] = 1107296256;
            v0[20] = sub_22B72DC1C;
            v0[21] = &unk_283F1D040;
            v0[22] = v34;
            [v8 didReceiveMessages:v30 forChat:v31 style:v32 account:v5 fromIDSID:v33 completion:v0 + 18];
            v18 = v0 + 2;

            return MEMORY[0x282200938](v18);
          }

          __break(1u);
LABEL_26:
          __break(1u);
          return MEMORY[0x282200938](v18);
        }
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
    }
  }

  else
  {
  }

  v35 = v0[1];

  return v35();
}

uint64_t sub_22B730618()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);

  return MEMORY[0x2822009F8](sub_22B730720, v2, v1);
}

uint64_t sub_22B730720()
{
  v2 = *(v0 + 288);
  v3 = *(v0 + 280);
  v4 = *(v0 + 264);

  if (v4 >> 62 || (swift_isUniquelyReferenced_nonNull_bridgeObject() & 1) == 0)
  {
    v7 = *(v0 + 208);
    v8 = *(v7 + 24);
    if (v8 >> 62)
    {
      v77 = sub_22B7DC1C8();
      v44 = sub_22B7DC1C8();
      if (v44 < 0)
      {
        goto LABEL_39;
      }

      v44 = sub_22B7DC1C8();
      if (v77 < 0 || v44 < v77)
      {
        goto LABEL_40;
      }

      v7 = *(v0 + 208);
    }

    v9 = sub_22B75ADDC();
    v8, v10, v11, v12, v13, v14, v15, v16, v78, v80;
    *(v7 + 24) = v9;
    goto LABEL_8;
  }

  v5 = *(*(v0 + 208) + 24);
  if (v5 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v44)
  {
    sub_22B6FC264(0, i);
LABEL_8:
    v17 = *(v0 + 240);
    v18 = *(v0 + 208);
    v19 = [objc_opt_self() contextWithReason_];
    *(v0 + 304) = v19;
    v20 = [objc_opt_self() sharedInstance];
    v21 = [v20 _shouldCheckPriorityForChat_];

    [v19 setNeedsPriorityCheck_];
    v22 = *v18;
    *(v0 + 312) = *v18;
    [v19 setIgnoreThrottle_];
    [v19 setForceDeferral_];
    v23 = [objc_opt_self() indexingQueryProvider];
    *(v0 + 320) = v23;
    v31 = *(v0 + 264);
    if (!v23)
    {
      v56 = *(v0 + 248);
      v55 = *(v0 + 256);
      v57 = v19;
      v58 = *(v0 + 240);

      v31, v59, v60, v61, v62, v63, v64, v65, v78, v80;

      v66 = *(v0 + 8);

      return v66();
    }

    v32 = v23;
    if (v31 >> 62)
    {
      break;
    }

    v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v82 = v19;
    if (!v33)
    {
      goto LABEL_26;
    }

LABEL_11:
    v84 = MEMORY[0x277D84F90];
    sub_22B7AB6B4(0, v33 & ~(v33 >> 63), 0);
    if ((v33 & 0x8000000000000000) == 0)
    {
      v80 = v32;
      v34 = 0;
      v35 = *(v0 + 264);
      v36 = v84;
      v37 = v35 & 0xC000000000000001;
      v83 = v35 + 32;
      while (1)
      {
        v38 = v37 ? MEMORY[0x231895C80](v34, *(v0 + 264)) : *(v83 + 8 * v34);
        v1 = v38;
        v39 = [v1 guid];
        if (!v39)
        {
          break;
        }

        v40 = v39;
        v41 = sub_22B7DB6A8();
        v43 = v42;

        if (!v43)
        {
          goto LABEL_38;
        }

        v53 = *(v84 + 16);
        v52 = *(v84 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_22B7AB6B4((v52 > 1), v53 + 1, 1);
        }

        ++v34;
        *(v84 + 16) = v53 + 1;
        v54 = v84 + 16 * v53;
        *(v54 + 32) = v41;
        *(v54 + 40) = v43;
        if (v33 == v34)
        {
          *(v0 + 264), v45, v46, v47, v48, v49, v50, v51, v78, v32;
          v32 = v81;
          goto LABEL_27;
        }
      }

LABEL_37:

LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      continue;
    }

    __break(1u);
LABEL_35:
    v44 = sub_22B7DC1C8();
    if (v44 < 0)
    {
      __break(1u);
      goto LABEL_37;
    }
  }

  v33 = sub_22B7DC1C8();
  v82 = v19;
  if (v33)
  {
    goto LABEL_11;
  }

LABEL_26:
  *(v0 + 264), v24, v25, v26, v27, v28, v29, v30, v78, v80;
  v36 = MEMORY[0x277D84F90];
LABEL_27:
  v68 = sub_22B7DB8F8();
  *(v0 + 328) = v68;
  v36, v69, v70, v71, v72, v73, v74, v75, v79, v81;
  *(v0 + 80) = v0;
  *(v0 + 88) = sub_22B730C2C;
  v76 = swift_continuation_init();
  *(v0 + 200) = sub_22B6F0AD4(&qword_27D8CE618, &qword_22B7FA6A0);
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_22B731620;
  *(v0 + 168) = &unk_283F1D068;
  *(v0 + 176) = v76;
  [v32 addMessageGUIDs:v68 context:v82 completionHandler:v0 + 144];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_22B730C2C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 336) = v2;
  v3 = *(v1 + 232);
  v4 = *(v1 + 224);
  if (v2)
  {
    v5 = sub_22B730DFC;
  }

  else
  {
    v5 = sub_22B730D5C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_22B730D5C()
{
  v1 = *(v0 + 328);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v4 = *(v0 + 240);

  swift_unknownObjectRelease();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22B730DFC()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 312);

  swift_willThrow();
  swift_unknownObjectRelease();

  if (([v2 indexImmediately] & 1) != 0 || (v3 = sub_22B7DA6E8(), v4 = IMDIndexingErrorRequestWasDeferred(), v3, !v4))
  {
    v9 = *(v0 + 336);
    v10 = v9;
    v11 = sub_22B7DB298();
    v12 = sub_22B7DBC98();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 336);
    v15 = *(v0 + 304);
    v17 = *(v0 + 248);
    v16 = *(v0 + 256);
    v18 = *(v0 + 240);
    if (v13)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v14;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_22B4CC000, v11, v12, "Failed to index messages: %@", v19, 0xCu);
      sub_22B708A24(v20);
      MEMORY[0x231898D60](v20, -1, -1);
      MEMORY[0x231898D60](v19, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v5 = *(v0 + 304);
    v7 = *(v0 + 248);
    v6 = *(v0 + 256);
    v8 = *(v0 + 240);
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_22B731174(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_22B7DBA18();
  v2[4] = sub_22B7DBA08();
  v4 = sub_22B7DB9C8();

  return MEMORY[0x2822009F8](sub_22B73120C, v4, v3);
}

uint64_t sub_22B73120C()
{
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_22B7312BC;

  return sub_22B72DDA8();
}

uint64_t sub_22B7312BC()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 24);
  v5 = *v1;

  if (v0)
  {
    if (v3)
    {
      v6 = *(v2 + 40);
      v7 = sub_22B7DA6E8();

      (v6)[2](v6, v7);
      _Block_release(v6);
    }

    else
    {
    }
  }

  else if (v3)
  {
    v8 = *(v2 + 40);
    v8[2](v8, 0);
    _Block_release(v8);
  }

  v9 = *(v5 + 8);

  return v9();
}

void __swiftcall IMDBatchMessageSimulator.init()(IMDBatchMessageSimulator *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_22B731574()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B6F12E8;

  return sub_22B731174(v2, v3);
}

uint64_t sub_22B731620(uint64_t a1, void *a2)
{
  v3 = *sub_22B4D2BCC((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_22B6F0AD4(&unk_27D8CD800, &qword_22B7FA0C0);
    v4 = swift_allocError();
    *v5 = a2;
    v6 = a2;

    return MEMORY[0x282200958](v3, v4);
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_22B7316CC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v29 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_22B7DC668();

    sub_22B7DB758();
    v16 = sub_22B7DC6B8();
    v24 = -1 << *(a2 + 32);
    v25 = v16 & ~v24;
    if (((*(v9 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
    {
LABEL_23:
      v14, v17, v18, v19, v20, v21, v22, v23, v29, v30;
      return 0;
    }

    v26 = ~v24;
    while (1)
    {
      v27 = (*(a2 + 48) + 16 * v25);
      v17 = v27[1];
      v28 = *v27 == v15 && v17 == v14;
      if (v28 || (sub_22B7DC518() & 1) != 0)
      {
        break;
      }

      v25 = (v25 + 1) & v26;
      if (((*(v9 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v14, v17, v18, v19, v20, v21, v22, v23, v29, v30;
    result = v29;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_22B731884(void *a1)
{
  v2 = [a1 accountID];
  if (!v2)
  {
    goto LABEL_37;
  }

  v3 = v2;
  v4 = [objc_opt_self() sharedAccountController];
  if (!v4)
  {
LABEL_31:

    __break(1u);
    goto LABEL_32;
  }

  v5 = v4;
  v6 = [v4 accountForAccountID_];

  if (!v6)
  {
LABEL_37:
    v7 = [a1 service];
    if (v7)
    {
      v8 = v7;
      v9 = [objc_opt_self() sharedController];
      v10 = [v9 serviceWithName_];

      if (v10)
      {
        v11 = [objc_opt_self() sharedAccountController];
        if (!v11)
        {
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v12 = v11;
        v13 = [v11 activeAccountsForService_];

        if (!v13)
        {
LABEL_34:
          __break(1u);
          return;
        }

        sub_22B4D01A0(0, &qword_28141F298, off_2786FF850);
        v3 = sub_22B7DB918();

        if (v3 >> 62)
        {
          if (sub_22B7DC1C8())
          {
LABEL_10:
            if ((v3 & 0xC000000000000001) == 0)
            {
              if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v21 = *(v3 + 32);
LABEL_13:

                v3, v22, v23, v24, v25, v26, v27, v28, v46, v47;
                return;
              }

              __break(1u);
              goto LABEL_31;
            }

LABEL_29:
            MEMORY[0x231895C80](0, v3);
            goto LABEL_13;
          }
        }

        else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_10;
        }

        v3, v14, v15, v16, v17, v18, v19, v20, v46, v47;
      }
    }

    v29 = [objc_opt_self() sharedAccountController];
    if (!v29)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v30 = v29;
    v3 = [v29 activeAccounts];

    if (v3)
    {
      sub_22B4D01A0(0, &qword_28141F298, off_2786FF850);
      v10 = sub_22B7DB918();

      if (v10 >> 62)
      {
        if (sub_22B7DC1C8())
        {
LABEL_20:
          if ((v10 & 0xC000000000000001) != 0)
          {
            MEMORY[0x231895C80](0, v10);
          }

          else
          {
            if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_29;
            }

            v38 = *v10->queue;
          }

          v10, v39, v40, v41, v42, v43, v44, v45, v46, v47;
          return;
        }
      }

      else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v10, v31, v32, v33, v34, v35, v36, v37, v46, v47;
    }
  }
}

void sub_22B731B74(void *a1, char a2, id a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = [a3 chatGUID];
  if (v6)
  {
    v20 = 0;
    v7 = v6;
    IMComponentsFromChatGUID();
  }

  if (a2 == 45)
  {
    v8 = [a3 handles];
    v9 = sub_22B7DB918();

    if (!*v9->messageStore)
    {
      __break(1u);
    }

    v9, v10, v11, v12, v13, v14, v15, v16, v20, v21;
  }

  else
  {
    v17 = [objc_opt_self() sharedInstance];
    v18 = [a1 account];
    v19 = [v17 generateUnusedChatIdentifierForGroupChatWithAccount_];

    if (v19)
    {
      sub_22B7DB6A8();
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_22B731D14(void *a1, id a2)
{
  v2 = a2;
  v3 = [a2 groupID];
  v4 = &selRef_setFirstSyncDateToNow;
  v154 = v2;
  if (v3)
  {
    v5 = v3;
    v6 = [objc_opt_self() sharedInstance];
    v7 = [v6 existingChatsWithGroupID_];

    sub_22B4D01A0(0, &qword_28141EFF0, off_2786FF950);
    v8 = sub_22B7DB918();

    if (v8 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22B7DC1C8())
    {
      v17 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x231895C80](v17, v8);
        }

        else
        {
          if (v17 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v18 = *(v8 + 8 * v17 + 32);
        }

        v19 = v18;
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        v21 = [v18 service];
        v22 = [a1 service];
        v30 = v22;
        if (!v21)
        {
          if (!v22)
          {
            goto LABEL_18;
          }

          goto LABEL_6;
        }

        if (!v22)
        {
          v30 = v21;
LABEL_6:

          goto LABEL_7;
        }

        sub_22B4D01A0(0, &qword_28141F290, off_2786FFBC8);
        v31 = sub_22B7DBFD8();

        if (v31)
        {
LABEL_18:
          v32 = v8;
          goto LABEL_36;
        }

LABEL_7:

        ++v17;
        if (v20 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_22:
    v8, v9, v10, v11, v12, v13, v14, v15, v143, v147;
    v4 = &selRef_setFirstSyncDateToNow;
    v2 = v154;
  }

  v33 = [v2 chatGUID];
  if (v33)
  {
    v34 = v33;
    v35 = [objc_opt_self() sharedInstance];
    v19 = [v35 existingChatWithGUID_];

    if (v19)
    {
      return v19;
    }
  }

  v36 = [v2 handles];
  v37 = sub_22B7DB918();

  v38 = *v37->messageStore;
  v37, v39, v40, v41, v42, v43, v44, v45, v143, v147;
  if (v38 <= 1)
  {
    v46 = 45;
  }

  else
  {
    v46 = 43;
  }

  v47 = objc_opt_self();
  v48 = [v47 sharedInstance];
  v49 = [v2 handles];
  if (!v49)
  {
    v50 = sub_22B7DB918();
    v49 = sub_22B7DB8F8();
    v50, v51, v52, v53, v54, v55, v56, v57, v143, v147;
  }

  v58 = [a1 service];
  v59 = [v2 groupID];
  v60 = [v48 existingChatsForIDs:v49 onService:v58 displayName:0 groupID:v59 style:v46];

  sub_22B4D01A0(0, &qword_28141EFF0, off_2786FF950);
  v61 = sub_22B7DB918();

  if (!(v61 >> 62))
  {
    result = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v70 = v154;
    if (result)
    {
      goto LABEL_32;
    }

LABEL_38:
    v61, v62, v63, v64, v65, v66, v67, v68, v143, v147;
    v153 = v46;
    sub_22B731B74(a1, v46, v70);
    v152 = v72;
    v73 = [v70 handles];
    v74 = sub_22B7DB918();

    v82 = *v74->messageStore;
    if (!v82)
    {
      v74, v75, v76, v77, v78, v79, v80, v81, v143, v147;
      v83 = MEMORY[0x277D84F90];
LABEL_49:
      v114 = sub_22B7DB678();
      v115 = [v70 groupID];
      v116 = sub_22B796DBC(v83);
      v83, v117, v118, v119, v120, v121, v122, v123, v144, v148;
      v124 = sub_22B7DB8F8();
      v116, v125, v126, v127, v128, v129, v130, v131, v145, v149;
      v132 = [a1 account];
      LOBYTE(v146) = 0;
      [a1 didJoinChat:v114 style:v153 displayName:0 groupID:v115 handleInfo:v124 account:v132 isBlackholed:?];

      v133 = [v47 v4[437]];
      v134 = sub_22B7DB678();
      v152, v135, v136, v137, v138, v139, v140, v141, v146, v150;
      v142 = [a1 account];
      v19 = [v133 existingChatWithIdentifier:v134 account:v142];

      return v19;
    }

    v163 = MEMORY[0x277D84F90];
    sub_22B7AB924(0, v82, 0);
    v83 = v163;
    sub_22B6F0AD4(&qword_27D8CDB58, &qword_22B7FA358);
    v151 = v74;
    membershipObserver = v74->membershipObserver;
    while (1)
    {
      v86 = *(membershipObserver - 1);
      v85 = *membershipObserver;
      v159[0] = sub_22B7DB6A8();
      v159[1] = v87;
      v161 = MEMORY[0x277D849A8];
      v160 = 2;
      v162[0] = sub_22B7DB6A8();
      v162[1] = v88;
      v162[5] = MEMORY[0x277D837D0];
      v162[2] = v86;
      v162[3] = v85;
      v89 = sub_22B7DC488();
      sub_22B732DB0(v159, &v156);
      v91 = v156;
      v90 = v157;

      v61 = v89;
      v92 = sub_22B723648(v91, v90);
      if (v93)
      {
        break;
      }

      *&v89->timer[((v92 >> 3) & 0x1FFFFFFFFFFFFFF8) + 7] |= 1 << v92;
      v94 = (*v89->blocklistObserver + 16 * v92);
      *v94 = v91;
      v94[1] = v90;
      sub_22B4D7F04(v158, (*v89->isFirstFire + 32 * v92));
      v95 = *v89->messageStore;
      v96 = __OFADD__(v95, 1);
      v97 = v95 + 1;
      if (v96)
      {
        goto LABEL_52;
      }

      *v89->messageStore = v97;
      sub_22B732DB0(v162, &v156);
      v98 = v156;
      v99 = v157;
      v61 = v89;
      v100 = sub_22B723648(v156, v157);
      if (v101)
      {
        goto LABEL_53;
      }

      *&v89->timer[((v100 >> 3) & 0x1FFFFFFFFFFFFFF8) + 7] |= 1 << v100;
      v102 = (*v89->blocklistObserver + 16 * v100);
      *v102 = v98;
      v102[1] = v99;
      sub_22B4D7F04(v158, (*v89->isFirstFire + 32 * v100));
      v103 = *v89->messageStore;
      v96 = __OFADD__(v103, 1);
      v104 = v103 + 1;
      if (v96)
      {
        goto LABEL_54;
      }

      *v89->messageStore = v104;

      sub_22B6F0AD4(&qword_27D8CDB60, &qword_22B7FA360);
      swift_arrayDestroy();
      v163 = v83;
      v113 = *v83->messageStore;
      v112 = *v83->chatRegistry;
      if (v113 >= v112 >> 1)
      {
        sub_22B7AB924((v112 > 1), v113 + 1, 1);
        v83 = v163;
      }

      *v83->messageStore = v113 + 1;
      *&v83->queue[8 * v113] = v89;
      membershipObserver += 16;
      if (!--v82)
      {
        v151, v105, v106, v107, v108, v109, v110, v111, v143, v147;
        v4 = &selRef_setFirstSyncDateToNow;
        v70 = v154;
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  result = sub_22B7DC1C8();
  v70 = v154;
  if (!result)
  {
    goto LABEL_38;
  }

LABEL_32:
  if ((v61 & 0xC000000000000001) != 0)
  {
LABEL_55:
    v71 = MEMORY[0x231895C80](0, v61);
LABEL_35:
    v19 = v71;
    v32 = v61;
LABEL_36:
    v32, v23, v24, v25, v26, v27, v28, v29, v143, v147;
    return v19;
  }

  if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v71 = *(v61 + 32);
    goto LABEL_35;
  }

  __break(1u);
  return result;
}

void sub_22B732544(unint64_t a1, void *a2, void *a3)
{
  v6 = sub_22B7DA968();
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = &v205 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22B731D14(a1, a2);
  v11 = v10;
  if (!v10)
  {
    return;
  }

  if ([v10 style] != 43)
  {
    return;
  }

  v12 = [a2 handles];
  v13 = sub_22B7DB918();

  v14 = *v13->messageStore;
  v13, v15, v16, v17, v18, v19, v20, v21, v205, v206;
  if (v14 < 2)
  {
    return;
  }

  v208 = a3;
  v210 = v9;
  v211 = v11;
  v22 = [v11 participants];
  if (!v22)
  {
    goto LABEL_71;
  }

  v23 = v22;
  v212 = a2;
  v205 = v7;
  v206 = v6;
  v209 = sub_22B4D01A0(0, &qword_28141EFD0, off_2786FFA08);
  v24 = sub_22B7DB918();

  if (v24 >> 62)
  {
    v32 = sub_22B7DC1C8();
    v207 = a1;
    if (v32)
    {
LABEL_7:
      v213 = MEMORY[0x277D84F90];
      sub_22B7AB6B4(0, v32 & ~(v32 >> 63), 0);
      if (v32 < 0)
      {
        goto LABEL_39;
      }

      v33 = 0;
      v34 = v213;
      while (1)
      {
        v35 = (v24 & 0xC000000000000001) != 0 ? MEMORY[0x231895C80](v33, v24) : *(v24 + 8 * v33 + 32);
        v36 = v35;
        v37 = [v36 ID];
        if (!v37)
        {
          break;
        }

        v38 = v37;
        v39 = sub_22B7DB6A8();
        v41 = v40;

        if (!v41)
        {
          goto LABEL_67;
        }

        v213 = v34;
        v50 = *v34->messageStore;
        v49 = *v34->chatRegistry;
        if (v50 >= v49 >> 1)
        {
          sub_22B7AB6B4((v49 > 1), v50 + 1, 1);
          v34 = v213;
        }

        ++v33;
        *v34->messageStore = v50 + 1;
        v51 = v34 + 16 * v50;
        *(v51 + 4) = v39;
        *(v51 + 5) = v41;
        if (v32 == v33)
        {
          v24, v42, v43, v44, v45, v46, v47, v48, v205, v206;
          goto LABEL_20;
        }
      }

LABEL_66:

LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }
  }

  else
  {
    v32 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v207 = a1;
    if (v32)
    {
      goto LABEL_7;
    }
  }

  v24, v25, v26, v27, v28, v29, v30, v31, v205, v206;
  v34 = MEMORY[0x277D84F90];
LABEL_20:
  v52 = sub_22B77A2DC(v34);
  v34, v53, v54, v55, v56, v57, v58, v59, v205, v206;
  v214 = v52;

  v60 = v212;
  v61 = [v212 handles];
  v62 = sub_22B7DB918();

  v63 = sub_22B77A2DC(v62);
  v62, v64, v65, v66, v67, v68, v69, v70, v205, v206;
  v213 = v63;

  LOBYTE(v61) = sub_22B7316CC(v52, v63);
  v52, v71, v72, v73, v74, v75, v76, v77, v205, v206;
  v63, v78, v79, v80, v81, v82, v83, v84, v205, v206;
  v92 = v211;
  if (v61)
  {
    v52, v85, v86, v87, v88, v89, v90, v91, v205, v206;
    v63, v93, v94, v95, v96, v97, v98, v99, v205, v206;
    return;
  }

  v100 = [v60 handles];
  v101 = sub_22B7DB918();

  v109 = *v101->messageStore;
  if (v109)
  {
    membershipObserver = v101->membershipObserver;
    do
    {
      v111 = *(membershipObserver - 1);
      v112 = *membershipObserver;

      sub_22B711D50(v111, v112);
      v114 = v113;
      v112, v113, v115, v116, v117, v118, v119, v120, v205, v206;
      v114, v121, v122, v123, v124, v125, v126, v127, v205, v206;
      membershipObserver += 2;
      --v109;
    }

    while (v109);
  }

  v101, v102, v103, v104, v105, v106, v107, v108, v205, v206;
  v128 = [v92 participants];
  if (!v128)
  {
    goto LABEL_72;
  }

  v129 = v128;
  a1 = sub_22B7DB918();

  if (a1 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22B7DC1C8())
  {
    v138 = 0;
    v212 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (v212)
      {
        v139 = MEMORY[0x231895C80](v138, a1);
      }

      else
      {
        if (v138 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v139 = *(a1 + 8 * v138 + 32);
      }

      v140 = v139;
      v141 = v138 + 1;
      if (__OFADD__(v138, 1))
      {
        break;
      }

      v142 = [v139 ID];
      if (!v142)
      {
        goto LABEL_68;
      }

      v143 = v142;
      v144 = sub_22B7DB6A8();
      v146 = v145;

      sub_22B711D50(v144, v146);
      v148 = v147;
      v146, v147, v149, v150, v151, v152, v153, v154, v205, v206;

      v148, v155, v156, v157, v158, v159, v160, v161, v205, v206;
      ++v138;
      if (v141 == i)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

LABEL_41:
  a1, v130, v131, v132, v133, v134, v135, v136, v205, v206;
  v162 = [v208 item];
  v163 = [v162 time];

  if (!v163)
  {
    goto LABEL_73;
  }

  sub_22B7DA928();

  v164 = 0;
  v165 = v214;
  isFirstFire = v214->isFirstFire;
  v167 = 1 << v214->queue[0];
  v168 = -1;
  if (v167 < 64)
  {
    v168 = ~(-1 << v167);
  }

  v169 = v168 & *v214->isFirstFire;
  v170 = (v167 + 63) >> 6;
  v171 = v207;
  if (v169)
  {
    while (1)
    {
      v36 = v164;
LABEL_49:
      v172 = *(*v165->blocklistObserver + ((v36 << 10) | (16 * __clz(__rbit64(v169)))) + 8);

      v173 = sub_22B7DB678();
      v174 = [v211 chatIdentifier];
      if (!v174)
      {
        goto LABEL_69;
      }

      v182 = v174;
      v169 &= v169 - 1;
      v172, v175, v176, v177, v178, v179, v180, v181, v205, v206;
      v183 = [v171 account];
      v184 = sub_22B7DA8B8();
      LOBYTE(v204) = 43;

      v164 = v36;
      if (!v169)
      {
        goto LABEL_46;
      }
    }
  }

  while (1)
  {
LABEL_46:
    v36 = v164 + 1;
    if (__OFADD__(v164, 1))
    {
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    if (v36 >= v170)
    {
      break;
    }

    v169 = *&isFirstFire[8 * v36];
    ++v164;
    if (v169)
    {
      goto LABEL_49;
    }
  }

  v185 = 0;
  v186 = v213;
  v187 = 1 << v213->queue[0];
  v188 = -1;
  if (v187 < 64)
  {
    v188 = ~(-1 << v187);
  }

  v189 = v188 & *v213->isFirstFire;
  v190 = (v187 + 63) >> 6;
  if (!v189)
  {
LABEL_56:
    while (1)
    {
      v36 = v185 + 1;
      if (__OFADD__(v185, 1))
      {
        goto LABEL_65;
      }

      if (v36 >= v190)
      {
        (*(v205 + 1))(v210, v206);

        return;
      }

      v189 = *&v186->isFirstFire[8 * v36];
      ++v185;
      if (v189)
      {
        goto LABEL_59;
      }
    }
  }

  while (1)
  {
    v36 = v185;
LABEL_59:
    v191 = *(*v186->blocklistObserver + ((v36 << 10) | (16 * __clz(__rbit64(v189)))) + 8);

    v192 = sub_22B7DB678();
    v193 = [v211 chatIdentifier];
    if (!v193)
    {
      break;
    }

    v201 = v193;
    v189 &= v189 - 1;
    v191, v194, v195, v196, v197, v198, v199, v200, v205, v206;
    v202 = [v171 account];
    v203 = sub_22B7DA8B8();
    LOBYTE(v204) = 43;

    v185 = v36;
    if (!v189)
    {
      goto LABEL_56;
    }
  }

LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
}

uint64_t sub_22B732DB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B6F0AD4(&qword_27D8CDB60, &qword_22B7FA360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B732E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 200) = a8;
  *(v8 + 208) = v14;
  *(v8 + 313) = a7;
  *(v8 + 184) = a5;
  *(v8 + 192) = a6;
  *(v8 + 176) = a4;
  v9 = sub_22B7DB2B8();
  *(v8 + 216) = v9;
  *(v8 + 224) = *(v9 - 8);
  *(v8 + 232) = swift_task_alloc();
  sub_22B7DBA18();
  *(v8 + 240) = sub_22B7DBA08();
  v10 = sub_22B7DB9C8();
  *(v8 + 248) = v10;
  *(v8 + 256) = v11;

  return MEMORY[0x2822009F8](sub_22B732F64, v10, v11);
}

uint64_t sub_22B732F64()
{
  sub_22B7DAE28();
  v0[33] = sub_22B7DAE18();
  v1 = swift_task_alloc();
  v0[34] = v1;
  *v1 = v0;
  v1[1] = sub_22B733040;
  v2 = v0[22];

  return MEMORY[0x282173A60](v2);
}

uint64_t sub_22B733040()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = *(v2 + 248);
    v4 = *(v2 + 256);
    v5 = sub_22B733748;
  }

  else
  {

    v3 = *(v2 + 248);
    v4 = *(v2 + 256);
    v5 = sub_22B733190;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_22B733190()
{
  v35 = v0;
  v34[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 200);
  v2 = *(v0 + 313);
  v3 = sub_22B7DB678();
  *(v0 + 168) = v3;
  *(v0 + 312) = v2;
  [v1 canonicalizeChatIdentifier:v0 + 168 style:v0 + 312];
  v4 = *(v0 + 168);
  *(v0 + 288) = v4;
  v5 = v4;

  v6 = [v1 chatForChatIdentifier:v5 style:*(v0 + 312)];
  *(v0 + 296) = v6;

  if (v6)
  {
    v7 = objc_opt_self();
    sub_22B733994();
    v8 = sub_22B7DB8F8();
    *(v0 + 304) = v8;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_22B73355C;
    v9 = swift_continuation_init();
    *(v0 + 136) = sub_22B6F0AD4(&qword_27D8CF570, &qword_22B7FA6B8);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_22B7973C0;
    *(v0 + 104) = &unk_283F1D0B8;
    *(v0 + 112) = v9;
    [v7 translateMessageItems:v8 forChat:v6 incoming:1 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {

    sub_22B7DB288();
    sub_22B7DB2A8();
    v10 = sub_22B7DB298();
    v11 = sub_22B7DBC98();
    v12 = os_log_type_enabled(v10, v11);
    v14 = *(v0 + 224);
    v13 = *(v0 + 232);
    v15 = *(v0 + 216);
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v34[0] = v17;
      *v16 = 136315394;
      v18 = sub_22B7DB6A8();
      v33 = v15;
      v20 = v19;
      v31 = v13;
      v21 = sub_22B4CFAAC(v18, v19, v34);
      v20, v22, v23, v24, v25, v26, v27, v28, (v0 + 144), v31;
      *(v16 + 4) = v21;
      *(v16 + 12) = 256;
      swift_beginAccess();
      *(v16 + 14) = *(v0 + 312);
      _os_log_impl(&dword_22B4CC000, v10, v11, "Failed to get chat for identifier: %s style: %hhu", v16, 0xFu);
      sub_22B4CFB78(v17);
      MEMORY[0x231898D60](v17, -1, -1);
      MEMORY[0x231898D60](v16, -1, -1);

      (*(v14 + 8))(v32, v33);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
    }

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_22B73355C()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);

  return MEMORY[0x2822009F8](sub_22B733690, v2, v1);
}

uint64_t sub_22B733690()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 288);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22B733748()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_22B733994()
{
  result = qword_28141F288;
  if (!qword_28141F288)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28141F288);
  }

  return result;
}

uint64_t sub_22B7339E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 64);
  v10 = *(v1 + 56);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22B6F0D94;

  return sub_22B732E28(a1, v4, v5, v6, v7, v8, v10, v9);
}

void sub_22B733B34(uint64_t a1)
{
  v2 = sub_22B6F0AD4(&qword_27D8CE650, qword_22B7FA7B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = [objc_opt_self() sharedInstance];
  (*(v3 + 16))(v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v5, v2);
  aBlock[4] = sub_22B7369B4;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B733D88;
  aBlock[3] = &unk_283F1D220;
  v9 = _Block_copy(aBlock);

  [v6 fetchCloudKitAccountStatusAndUpdateEligibilityAndNeedsRepairStatusWithCompletion_];
  _Block_release(v9);
}

uint64_t sub_22B733D08(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    sub_22B6F0AD4(&qword_27D8CE650, qword_22B7FA7B0);
    return sub_22B7DB9D8();
  }

  else
  {
    sub_22B6F0AD4(&qword_27D8CE650, qword_22B7FA7B0);
    return sub_22B7DB9E8();
  }
}

void sub_22B733D88(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_22B733E00()
{
  *(v1 + 24) = v0;
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  type metadata accessor for IMDCKAccountStatus(0);
  *v2 = v1;
  v2[1] = sub_22B733EE0;

  return MEMORY[0x2822008A0](v1 + 16, 0, 0, 0xD000000000000044, 0x800000022B80F4D0, sub_22B733B34, 0, v3);
}

uint64_t sub_22B733EE0()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_22B733FF4;
  }

  else
  {
    v2 = sub_22B734360;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B733FF4()
{
  v1 = *(v0 + 40);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 syncState];

  v4 = [v3 isEligibleForTruthZone];
  v5 = v1;
  v6 = sub_22B7DB298();
  v7 = sub_22B7DBCB8();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 40);
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    *(v10 + 12) = 1024;
    *(v10 + 14) = v4;
    _os_log_impl(&dword_22B4CC000, v6, v7, "Account status check got error, %@, using cached value from Sync State %{BOOL}d", v10, 0x12u);
    sub_22B4D0D64(v11, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v11, -1, -1);
    MEMORY[0x231898D60](v10, -1, -1);

    if ((v4 & 1) == 0)
    {
LABEL_3:
      v14 = sub_22B7DB298();
      v15 = sub_22B7DBCB8();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_22B4CC000, v14, v15, "Account does not support device to device encryption, aborting sync", v16, 2u);
        MEMORY[0x231898D60](v16, -1, -1);
      }

      goto LABEL_9;
    }
  }

  else
  {

    if ((v4 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v17 = objc_opt_self();
  v18 = [v17 sharedInstance];
  v19 = *MEMORY[0x277D19A08];
  [v18 setValue:0 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A78]];

  v20 = [v17 sharedInstance];
  [v20 setValue:0 forDomain:v19 forKey:*MEMORY[0x277D19A80]];

  v21 = [objc_opt_self() sharedInstance];
  LODWORD(v18) = [v21 iCloudAccountMatchesiMessageAccount];

  if (v18)
  {
    v22 = *(v0 + 8);
    goto LABEL_10;
  }

LABEL_9:
  [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277D19D08] code:2 userInfo:0];
  swift_willThrow();
  v22 = *(v0 + 8);
LABEL_10:

  return v22();
}

uint64_t sub_22B734360(uint64_t a1)
{
  if (*(v1 + 16) == 4)
  {
    v2 = objc_opt_self();
    v3 = [v2 sharedInstance];
    v4 = *MEMORY[0x277D19A08];
    [v3 setValue:0 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A78]];

    v5 = [v2 sharedInstance];
    [v5 setValue:0 forDomain:v4 forKey:*MEMORY[0x277D19A80]];

    v6 = [objc_opt_self() sharedInstance];
    LODWORD(v3) = [v6 iCloudAccountMatchesiMessageAccount];

    if (v3)
    {
      v7 = *(v1 + 8);
      goto LABEL_8;
    }
  }

  else
  {
    v8 = sub_22B7DB298();
    v9 = sub_22B7DBCB8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22B4CC000, v8, v9, "Account does not support device to device encryption, aborting sync", v10, 2u);
      MEMORY[0x231898D60](v10, -1, -1);
    }
  }

  [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277D19D08] code:2 userInfo:0];
  swift_willThrow();
  v7 = *(v1 + 8);
LABEL_8:

  return v7();
}

void sub_22B734564(uint64_t a1, void *a2)
{
  v4 = sub_22B6F0AD4(&qword_27D8CE648, &qword_22B7FA7A8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = [objc_opt_self() sharedInstance];
  if (v8)
  {
    v9 = v8;
    (*(v5 + 16))(v7, a1, v4);
    v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    (*(v5 + 32))(v11 + v10, v7, v4);
    aBlock[4] = sub_22B73686C;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B734DE0;
    aBlock[3] = &unk_283F1D1D0;
    v12 = _Block_copy(aBlock);
    v13 = a2;

    [v9 exitRecordDateWithCompletion_];
    _Block_release(v12);
  }

  else
  {
    __break(1u);
  }
}

id sub_22B734750(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v59 - v8;
  v10 = sub_22B7DA968();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v59 - v15;
  v63 = &v59 - v15;
  if (a2)
  {
    v61 = v11;
    v17 = a2;
    v18 = sub_22B7366AC(a2);
    v19 = a2;
    v20 = sub_22B7DB298();
    v21 = sub_22B7DBCB8();

    v22 = os_log_type_enabled(v20, v21);
    if (v18)
    {
      if (v22)
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        v25 = a2;
        v26 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 4) = v26;
        *v24 = v26;
        _os_log_impl(&dword_22B4CC000, v20, v21, "Error fetching exit record %@, aborting", v23, 0xCu);
        sub_22B4D0D64(v24, &unk_27D8CEC60, &qword_22B7F9E20);
        MEMORY[0x231898D60](v24, -1, -1);
        MEMORY[0x231898D60](v23, -1, -1);
      }

      v64 = a2;
      sub_22B6F0AD4(&qword_27D8CE648, &qword_22B7FA7A8);
      return sub_22B7DB9D8();
    }

    if (v22)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v62 = a4;
      v30 = v29;
      *v28 = 138412290;
      v31 = a2;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_22B4CC000, v20, v21, "Error fetching exit record %@, ignoring", v28, 0xCu);
      sub_22B4D0D64(v30, &unk_27D8CEC60, &qword_22B7F9E20);
      v33 = v30;
      a4 = v62;
      MEMORY[0x231898D60](v33, -1, -1);
      MEMORY[0x231898D60](v28, -1, -1);
    }

    v11 = v61;
    v16 = v63;
  }

  sub_22B7368FC(a1, v9);
  if ((*(v11 + 6))(v9, 1, v10) == 1)
  {
    sub_22B4D0D64(v9, &unk_27D8CF790, &qword_22B7F9578);
    sub_22B6F0AD4(&qword_27D8CE648, &qword_22B7FA7A8);
    return sub_22B7DB9E8();
  }

  else
  {
    v62 = a4;
    (*(v11 + 4))(v16, v9, v10);
    v34 = *(v11 + 2);
    v34(v14, v16, v10);
    v35 = sub_22B7DB298();
    v36 = sub_22B7DBCB8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v61 = v34;
      v64 = v60;
      *v37 = 136315138;
      sub_22B73696C(&qword_27D8CD8D0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v38 = sub_22B7DC4E8();
      v39 = v11;
      v41 = v40;
      v42 = *(v39 + 1);
      v42(v14, v10);
      v43 = sub_22B4CFAAC(v38, v41, &v64);
      v41, v44, v45, v46, v47, v48, v49, v50, v59, v60;
      *(v37 + 4) = v43;
      _os_log_impl(&dword_22B4CC000, v35, v36, "Entered exit state on %s. Aborting sync, downloading all attachments!", v37, 0xCu);
      v51 = v60;
      sub_22B4CFB78(v60);
      v34 = v61;
      MEMORY[0x231898D60](v51, -1, -1);
      MEMORY[0x231898D60](v37, -1, -1);

      v52 = v42;
    }

    else
    {

      v52 = *(v11 + 1);
      v52(v14, v10);
    }

    result = [objc_opt_self() sharedInstance];
    if (result)
    {
      v53 = result;
      [result scheduleAttachmentAssetDownload];

      type metadata accessor for PreReqsError(0);
      sub_22B73696C(&qword_27D8CE620, type metadata accessor for PreReqsError, &unk_22B7FA750);
      v54 = swift_allocError();
      v56 = v55;
      v57 = v63;
      v34(v55, v63, v10);
      v58 = sub_22B6F0AD4(&qword_27D8CE628, &unk_22B7FA700);
      (*(*(v58 - 8) + 56))(v56, 0, 2, v58);
      v64 = v54;
      sub_22B6F0AD4(&qword_27D8CE648, &qword_22B7FA7A8);
      sub_22B7DB9D8();
      return (v52)(v57, v10);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22B734DE0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_22B7DA928();
    v10 = sub_22B7DA968();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_22B7DA968();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_22B4D0D64(v8, &unk_27D8CF790, &qword_22B7F9578);
}

void sub_22B734F34(uint64_t a1, void *a2)
{
  v4 = sub_22B6F0AD4(&qword_27D8CE648, &qword_22B7FA7A8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = [objc_opt_self() sharedInstance];
  if (v8)
  {
    v9 = v8;
    (*(v5 + 16))(v7, a1, v4);
    v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    (*(v5 + 32))(v11 + v10, v7, v4);
    aBlock[4] = sub_22B73661C;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B7353C8;
    aBlock[3] = &unk_283F1D180;
    v12 = _Block_copy(aBlock);
    v13 = a2;

    [v9 fetchLatestRecordKeyFromCKAndCreateIfKeyDoesNotExistWithCompletion_];
    _Block_release(v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22B735120(uint64_t a1, id a2)
{
  if (a1)
  {
    sub_22B6F0AD4(&qword_27D8CE648, &qword_22B7FA7A8);
    return sub_22B7DB9E8();
  }

  if (a2)
  {
    v4 = a2;
    v5 = sub_22B7DB298();
    v6 = sub_22B7DBCB8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = a2;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_22B4CC000, v5, v6, "Error fetching salt record %@, aborting", v7, 0xCu);
      sub_22B4D0D64(v8, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v8, -1, -1);
      MEMORY[0x231898D60](v7, -1, -1);
    }

    if (sub_22B7366AC(a2))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v11 = sub_22B7DB298();
    v12 = sub_22B7DBCB8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22B4CC000, v11, v12, "No salt record fetched, aborting", v13, 2u);
      MEMORY[0x231898D60](v13, -1, -1);
    }
  }

  type metadata accessor for PreReqsError(0);
  sub_22B73696C(&qword_27D8CE620, type metadata accessor for PreReqsError, &unk_22B7FA750);
  swift_allocError();
  v15 = v14;
  v16 = sub_22B6F0AD4(&qword_27D8CE628, &unk_22B7FA700);
  (*(*(v16 - 8) + 56))(v15, 2, 2, v16);
LABEL_13:
  sub_22B6F0AD4(&qword_27D8CE648, &qword_22B7FA7A8);
  return sub_22B7DB9D8();
}

void sub_22B7353C8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_22B735440(char a1)
{
  *(v2 + 16) = v1;
  if (a1)
  {

    return MEMORY[0x2822009F8](sub_22B735510, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 24) = v3;
    *v3 = v2;
    v3[1] = sub_22B7356C8;

    return sub_22B733E00();
  }
}

uint64_t sub_22B735510()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 cloudKitSyncingEnabled];

  if (v2)
  {
    v3 = swift_task_alloc();
    *(v0 + 24) = v3;
    *v3 = v0;
    v3[1] = sub_22B7356C8;

    return sub_22B733E00();
  }

  else
  {
    type metadata accessor for PreReqsError(0);
    sub_22B73696C(&qword_27D8CE620, type metadata accessor for PreReqsError, &unk_22B7FA750);
    swift_allocError();
    v6 = v5;
    v7 = sub_22B6F0AD4(&qword_27D8CE628, &unk_22B7FA700);
    (*(*(v7 - 8) + 56))(v6, 1, 2, v7);
    swift_willThrow();
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_22B7356C8()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22B7357F8, 0, 0);
  }
}

uint64_t sub_22B7357F8()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_22B7358EC;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0xD00000000000001DLL, 0x800000022B80F3F0, sub_22B735CF8, v2, v4);
}

uint64_t sub_22B7358EC()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_22B735C18;
  }

  else
  {

    v2 = sub_22B735A08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B735A08()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_22B735AFC;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0xD000000000000017, 0x800000022B80F410, sub_22B735D00, v2, v4);
}

uint64_t sub_22B735AFC()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_22B735C94;
  }

  else
  {

    v2 = sub_22B735C7C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B735C18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B735C94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B735EAC(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_22B735F68;

  return sub_22B735440(a1);
}

uint64_t sub_22B735F68()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_22B7DA6E8();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

id IMDPreReqsChecker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IMDPreReqsChecker.init()(uint64_t a1)
{
  sub_22B7DB288();
  sub_22B7DB2A8();
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IMDPreReqsChecker(0);
  return objc_msgSendSuper2(&v3, sel_init);
}

id IMDPreReqsChecker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMDPreReqsChecker(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22B7362C8(uint64_t a1)
{
  result = sub_22B7DB2B8();
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

uint64_t dispatch thunk of IMDPreReqsChecker.verifyAllPreReqs(requireEnablement:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B6F0D94;

  return v7(a1);
}

uint64_t sub_22B7364C8(uint64_t a1)
{
  sub_22B736520();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_22B736520()
{
  if (!qword_27D8CE640)
  {
    v0 = sub_22B7DA968();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8CE640);
    }
  }
}

uint64_t sub_22B736568()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B6F0D94;

  return sub_22B735EAC(v2, v4, v3);
}

uint64_t sub_22B73661C(uint64_t a1, void *a2)
{
  sub_22B6F0AD4(&qword_27D8CE648, &qword_22B7FA7A8);

  return sub_22B735120(a1, a2);
}

uint64_t sub_22B7366AC(uint64_t a1)
{
  v1 = sub_22B7DA6E8();
  v2 = [v1 domain];
  v3 = sub_22B7DB6A8();
  v5 = v4;

  v6 = sub_22B7DB6A8();
  v14 = v7;
  if (v3 == v6 && v5 == v7)
  {
    v5, v7, v8, v9, v10, v11, v12, v13, v41, v44;
    v14, v32, v33, v34, v35, v36, v37, v38, v43, v46;
  }

  else
  {
    v16 = sub_22B7DC518();
    v5, v17, v18, v19, v20, v21, v22, v23, v41, v44;
    v14, v24, v25, v26, v27, v28, v29, v30, v42, v45;
    if ((v16 & 1) == 0)
    {

      LOBYTE(v31) = 0;
      return v31 & 1;
    }
  }

  v39 = [v1 code];

  v31 = 0x80002C8u >> v39;
  if (v39 >= 0x1C)
  {
    LOBYTE(v31) = 0;
  }

  return v31 & 1;
}

uint64_t sub_22B73679C()
{
  v1 = sub_22B6F0AD4(&qword_27D8CE648, &qword_22B7FA7A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

id sub_22B73686C(uint64_t a1, void *a2)
{
  v5 = *(sub_22B6F0AD4(&qword_27D8CE648, &qword_22B7FA7A8) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_22B734750(a1, a2, v6, v7);
}

uint64_t sub_22B7368FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B73696C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22B7369B4(void *a1, void *a2)
{
  sub_22B6F0AD4(&qword_27D8CE650, qword_22B7FA7B0);

  return sub_22B733D08(a1, a2);
}

uint64_t sub_22B736A50@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v55 = a2;
  v54 = a3;
  v4 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v52 - v5;
  v7 = sub_22B7DA968();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 properties];
  if (!v11)
  {
    v59 = 0u;
    v60 = 0u;
    goto LABEL_10;
  }

  v12 = v11;
  v13 = sub_22B7DB588();

  v56 = sub_22B7DB6A8();
  v57 = v14;
  sub_22B7DC248();
  if (!*(v13 + 16) || (v22 = sub_22B4D7EC0(v58), (v15 & 1) == 0))
  {
    v13, v15, v16, v17, v18, v19, v20, v21, v52, v53;
    sub_22B4DA138(v58);
    v59 = 0u;
    v60 = 0u;
LABEL_10:
    sub_22B4D0D64(&v59, &unk_27D8CCDC0, &qword_22B7F9580);
    v31 = *(v8 + 56);
    v31(v6, 1, 1, v7);
    goto LABEL_11;
  }

  sub_22B4D1F68(*(v13 + 56) + 32 * v22, &v59);
  sub_22B4DA138(v58);
  v13, v23, v24, v25, v26, v27, v28, v29, v52, v53;
  if (!*(&v60 + 1))
  {
    goto LABEL_10;
  }

  v30 = swift_dynamicCast();
  v31 = *(v8 + 56);
  v31(v6, v30 ^ 1u, 1, v7);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
LABEL_11:
    v34 = v55;
    sub_22B4D0D64(v6, &unk_27D8CF790, &qword_22B7F9578);
    goto LABEL_12;
  }

  v53 = *(v8 + 32);
  (v53)(v10, v6, v7);
  if (sub_22B7DA8C8())
  {
    v32 = v54;
    (v53)(v54, v10, v7);
    return (v31)(v32, 0, 1, v7);
  }

  (*(v8 + 8))(v10, v7);
  v34 = v55;
LABEL_12:
  sub_22B6F0AD4(&unk_27D8CE9F0, &qword_22B7F98C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B7F93B0;
  v58[0] = sub_22B7DB6A8();
  v58[1] = v36;
  sub_22B7DC248();
  *(inited + 96) = v7;
  v37 = sub_22B6FC8CC((inited + 72));
  v38 = *(v8 + 16);
  v38(v37, v34, v7);
  v39 = sub_22B4D7D1C(inited);
  swift_setDeallocating();
  sub_22B4D0D64(inited + 32, &unk_27D8CD7D0, &qword_22B7FA3F0);
  v40 = sub_22B7DB568();
  v39, v41, v42, v43, v44, v45, v46, v47, v52, v53;
  v48 = [a1 updateProperties_];

  if (v48)
  {
    v49 = v54;
    v38(v54, v34, v7);
    v50 = v49;
    v51 = 0;
  }

  else
  {
    v50 = v54;
    v51 = 1;
  }

  return (v31)(v50, v51, 1, v7);
}

void sub_22B736F34(IMDScheduledMessageCoordinator *a1)
{
  v3 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v257 - v4;
  v6 = sub_22B7DA968();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v257 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v257 - v11;
  v13 = *a1->messageStore;
  if (!v13)
  {
    if (qword_28141F370 != -1)
    {
      swift_once();
    }

    v158 = sub_22B7DB2B8();
    sub_22B4CFA74(v158, qword_281422620);
    v282 = sub_22B7DB298();
    v159 = sub_22B7DBC98();
    if (os_log_type_enabled(v282, v159))
    {
      v160 = swift_slowAlloc();
      *v160 = 0;
      _os_log_impl(&dword_22B4CC000, v282, v159, "Tried to update chats with priority, but there were no messages provided.", v160, 2u);
      MEMORY[0x231898D60](v160, -1, -1);
    }

LABEL_56:
    v183 = v282;

    return;
  }

  v14 = [objc_opt_self() sharedProvider];
  if (!v14)
  {
    if (qword_28141F370 != -1)
    {
      swift_once();
    }

    v161 = sub_22B7DB2B8();
    sub_22B4CFA74(v161, qword_281422620);

    v282 = sub_22B7DB298();
    v162 = sub_22B7DBC98();
    a1, v163, v164, v165, v166, v167, v168, v169, v257, v258;
    if (os_log_type_enabled(v282, v162))
    {
      v170 = swift_slowAlloc();
      v171 = swift_slowAlloc();
      v283[0] = v171;
      *v170 = 136315394;
      *(v170 + 4) = sub_22B4CFAAC(0xD00000000000002BLL, 0x800000022B80F590, v283);
      *(v170 + 12) = 2080;
      v172 = MEMORY[0x2318952A0](a1, MEMORY[0x277D837D0]);
      v174 = v173;
      v175 = sub_22B4CFAAC(v172, v173, v283);
      v174, v176, v177, v178, v179, v180, v181, v182, v257, v258;
      *(v170 + 14) = v175;
      _os_log_impl(&dword_22B4CC000, v282, v162, "%s No broadcaster for messages with GUIDs %s", v170, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v171, -1, -1);
      MEMORY[0x231898D60](v170, -1, -1);

      return;
    }

    goto LABEL_56;
  }

  v15 = [v14 broadcasterForChatListeners];
  swift_unknownObjectRelease();
  v16 = objc_opt_self();
  if (([v16 isFilterUnknownSendersEnabled] & 1) == 0 || (objc_msgSend(v16, sel_timeSensitivePriorityEnabled) & 1) == 0)
  {

    swift_unknownObjectRelease();
    return;
  }

  v276 = v10;
  v269 = v5;
  v270 = v15;
  v17 = MEMORY[0x277D84F90];
  v275 = sub_22B71DF84(MEMORY[0x277D84F90]);
  v279 = sub_22B71E4E0(v17);
  v18 = [v16 personalPriorityEnabled];
  v19 = [v16 transactionsPriorityEnabled];
  v20 = [v16 promotionsPriorityEnabled];
  v268 = v18;
  v272 = v18 & v19 & v20 ^ 1;
  v282 = objc_opt_self();
  v278 = 0;
  v262 = v19 ^ 1;
  v267 = (v7 + 48);
  v261 = *MEMORY[0x277D19960];
  v260 = (v7 + 16);
  v280 = (v7 + 8);
  v263 = a1;
  membershipObserver = a1->membershipObserver;
  *&v22 = 136315138;
  v259 = v22;
  v271 = xmmword_22B7F93B0;
  v277 = v17;
  v281 = v6;
  while (1)
  {
    v37 = *(membershipObserver - 1);
    v38 = *membershipObserver;

    v39 = [v282 sharedInstance];
    v40 = sub_22B7DB678();
    v41 = [v39 messageWithGUID:v40];

    if (!v41)
    {
      goto LABEL_7;
    }

    if (([v41 isTimeSensitive] & 1) == 0)
    {
      v42 = [v41 time];
      if (v42)
      {
        break;
      }
    }

LABEL_7:
    v38, v23, v24, v25, v26, v27, v28, v29, v257, v258;
LABEL_8:
    membershipObserver += 2;
    if (!--v13)
    {
      if (v278)
      {
        v184 = [v282 sharedInstance];
        [v184 rebuildUnreadMessageCount];
      }

      v185 = v275;
      v186 = v270;
      v187 = v279;
      v188 = v277;
      if (*v275->messageStore)
      {
        if (*v277->messageStore)
        {
          v189 = [v282 sharedInstance];
          v190 = sub_22B796ED0(v188);
          v188, v191, v192, v193, v194, v195, v196, v197, v257, v258;
          v198 = sub_22B7DB8F8();
          v190, v199, v200, v201, v202, v203, v204, v205, v257, v258;
          [v189 postUrgentNotificationsForMessageGUIDs:v198];
        }

        else
        {
          v277, v30, v31, v32, v33, v34, v35, v36, v257, v258;
        }

        sub_22B6F0AD4(&qword_27D8CF710, qword_22B7FA230);
        v225 = sub_22B7DB568();
        v185, v226, v227, v228, v229, v230, v231, v232, v257, v258;
        sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
        v233 = sub_22B7DB568();
        [v186 updatedPriorityForChatsWithGUIDsAndProperties:v225 chatsAndMessageGUIDs:v233];

        if (qword_28141F370 != -1)
        {
          swift_once();
        }

        v234 = sub_22B7DB2B8();
        sub_22B4CFA74(v234, qword_281422620);
        v235 = v263;

        v214 = sub_22B7DB298();
        v236 = sub_22B7DBC78();
        v235, v237, v238, v239, v240, v241, v242, v243, v257, v258;
        if (!os_log_type_enabled(v214, v236))
        {
          goto LABEL_74;
        }

        v244 = swift_slowAlloc();
        v245 = swift_slowAlloc();
        v283[0] = v245;
        *v244 = 136315394;
        *(v244 + 4) = sub_22B4CFAAC(0xD00000000000002BLL, 0x800000022B80F590, v283);
        *(v244 + 12) = 2080;
        v246 = MEMORY[0x2318952A0](v235, MEMORY[0x277D837D0]);
        v248 = v247;
        v249 = sub_22B4CFAAC(v246, v247, v283);
        v248, v250, v251, v252, v253, v254, v255, v256, v257, v258;
        *(v244 + 14) = v249;
        _os_log_impl(&dword_22B4CC000, v214, v236, "%s Broadcasted messagesUpdated for GUIDs %s", v244, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x231898D60](v245, -1, -1);
        v224 = v244;
      }

      else
      {
        v275, v30, v31, v32, v33, v34, v35, v36, v257, v258;
        v188, v206, v207, v208, v209, v210, v211, v212, v257, v258;
        if (qword_28141F370 != -1)
        {
          swift_once();
        }

        v213 = sub_22B7DB2B8();
        sub_22B4CFA74(v213, qword_281422620);
        v214 = sub_22B7DB298();
        v215 = sub_22B7DBC98();
        if (!os_log_type_enabled(v214, v215))
        {
          goto LABEL_74;
        }

        v223 = swift_slowAlloc();
        *v223 = 0;
        _os_log_impl(&dword_22B4CC000, v214, v215, "There were no chats to update after processing the priorities.", v223, 2u);
        v224 = v223;
      }

      MEMORY[0x231898D60](v224, -1, -1);
LABEL_74:
      v187, v216, v217, v218, v219, v220, v221, v222, v257, v258;
      swift_unknownObjectRelease();

      return;
    }
  }

  v43 = v42;
  sub_22B7DA928();

  v44 = [v282 sharedInstance];
  v45 = sub_22B7DB678();
  v46 = [v44 chatForMessageGUID:v45];

  if (!v46)
  {
    (*v280)(v12, v281);
    v38, v49, v50, v51, v52, v53, v54, v55, v257, v258;

    goto LABEL_8;
  }

  v47 = [v46 filterCategory];
  v48 = v281;
  if (v47 == 3 || [v46 filterCategory] == 2)
  {
    (*v280)(v12, v48);

    goto LABEL_7;
  }

  v56 = [v46 filterCategory] == 1;
  if (v56 & v268)
  {
    v57 = 0;
  }

  else
  {
    v58 = [v46 filterCategory];
    v57 = v272;
    if (v58 == 4)
    {
      v57 = v262 & v272;
    }
  }

  v59 = [v41 isRead];
  v274 = v1;
  v273 = v12;
  v272 = v57;
  if (v59 & 1) == 0 && (v57)
  {

    v60 = v277;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v60 = sub_22B71BD80(0, *v60->messageStore + 1, 1, v60, v61, v62, v63, v64);
    }

    v65 = v60;
    v66 = *v60->messageStore;
    v277 = v65;
    v67 = *v65->chatRegistry;
    if (v66 >= v67 >> 1)
    {
      v277 = sub_22B71BD80((v67 > 1), v66 + 1, 1, v277, v61, v62, v63, v64);
    }

    v68 = v277;
    *v277->messageStore = v66 + 1;
    v69 = v68 + 16 * v66;
    *(v69 + 4) = v37;
    *(v69 + 5) = v38;
    v48 = v281;
  }

  v266 = [v41 isTimeSensitive];
  [v41 setIsTimeSensitive_];
  v70 = [v282 sharedInstance];

  IMSharedHelperMessagePriorityTimeout();
  v71 = v276;
  sub_22B7DA8A8();
  v72 = v269;
  sub_22B736A50(v46, v71, v269);
  LODWORD(v70) = (*v267)(v72, 1, v48);
  sub_22B4D0D64(v72, &unk_27D8CF790, &qword_22B7F9578);
  if (v70 == 1)
  {
    if (qword_28141F370 != -1)
    {
      swift_once();
    }

    v73 = sub_22B7DB2B8();
    sub_22B4CFA74(v73, qword_281422620);
    v74 = v46;
    p_super = sub_22B7DB298();
    v76 = sub_22B7DBC98();
    if (os_log_type_enabled(p_super, v76))
    {
      LODWORD(v264) = v76;
      v265 = p_super;
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v283[0] = v78;
      *v77 = v259;
      v79 = [v74 guid];
      v80 = v74;
      v81 = v79;

      if (!v81)
      {
        goto LABEL_78;
      }

      v258 = sub_22B7DB6A8();
      v83 = v82;

      v84 = sub_22B4CFAAC(v258, v83, v283);
      v83, v85, v86, v87, v88, v89, v90, v91, v257, v258;
      *(v77 + 4) = v84;
      p_super = &v265->super;
      _os_log_impl(&dword_22B4CC000, &v265->super, v264, "Failed to update priority property on chat with guid %s.", v77, 0xCu);
      sub_22B4CFB78(v78);
      MEMORY[0x231898D60](v78, -1, -1);
      MEMORY[0x231898D60](v77, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v92 = [v46 guid];
    if (!v92)
    {
      goto LABEL_77;
    }

    v93 = v92;
    v94 = sub_22B7DB6A8();
    v96 = v95;

    sub_22B6F0AD4(&unk_27D8CE9F0, &qword_22B7F98C0);
    inited = swift_initStackObject();
    *(inited + 16) = v271;
    v283[0] = sub_22B7DB6A8();
    v283[1] = v98;
    sub_22B7DC248();
    *(inited + 96) = v48;
    v99 = sub_22B6FC8CC((inited + 72));
    (*v260)(v99, v276, v48);
    v100 = sub_22B4D7D1C(inited);
    swift_setDeallocating();
    sub_22B4D0D64(inited + 32, &unk_27D8CD7D0, &qword_22B7FA3F0);
    v101 = v275;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v283[0] = v101;
    sub_22B768860(v100, v94, v96, isUniquelyReferenced_nonNull_native, v103, v104, v105, v106, v257, v258);
    v96, v107, v108, v109, v110, v111, v112, v113, v257, v258;
    v275 = v283[0];
  }

  v114 = [v46 guid];
  if (!v114)
  {
    goto LABEL_76;
  }

  v115 = v114;
  v264 = sub_22B7DB6A8();
  v265 = v116;

  v117 = [v46 guid];
  if (v117)
  {
    v118 = v117;
    v119 = sub_22B7DB6A8();
    v121 = v120;

    v129 = v279;
    if (*(v279 + 16))
    {
      v130 = sub_22B723648(v119, v121);
      v132 = v131;
      v121, v131, v133, v134, v135, v136, v137, v138, v257, v130;
      v139 = MEMORY[0x277D84F90];
      if (v132)
      {
        v139 = *(*(v129 + 56) + 8 * v258);
      }
    }

    else
    {
      v121, v122, v123, v124, v125, v126, v127, v128, v257, v258;
      v139 = MEMORY[0x277D84F90];
    }

    v278 |= v266 ^ 1;
    sub_22B6F0AD4(&unk_27D8CEA00, &qword_22B7F98C8);
    v140 = swift_initStackObject();
    *(v140 + 16) = v271;
    *(v140 + 32) = v37;
    *(v140 + 40) = v38;
    v283[0] = v139;
    sub_22B79B3A0(v140);
    v141 = v283[0];
    v142 = swift_isUniquelyReferenced_nonNull_native();
    v283[0] = v129;
    v143 = v141;
    v144 = v265;
    sub_22B768E38(v143, v264, v265, v142, v145, v146, v147, v148, v257, v258);

    v144, v149, v150, v151, v152, v153, v154, v155, v257, v258;
    v279 = v283[0];
    v156 = *v280;
    v157 = v281;
    (*v280)(v276, v281);
    v12 = v273;
    v156(v273, v157);
    v1 = v274;
    goto LABEL_8;
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
}

uint64_t sub_22B738124()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_2814225E8);
  sub_22B4CFA74(v0, qword_2814225E8);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

void _sSo19IMDChorosControllerC12IMDaemonCoreE17recordOffGridTime3forySo13CTStewieStateC_tFZ_0(void *a1)
{
  v2 = sub_22B7DA968();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  if ([a1 isAnyServicesAvailable])
  {
    v9 = objc_opt_self();
    v10 = [v9 messagesAppDomain];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 objectForKey_];

      if (v12)
      {
        sub_22B7DC118();
        swift_unknownObjectRelease();
      }

      else
      {
        v29 = 0u;
        v30 = 0u;
      }

      v31 = v29;
      v32 = v30;
      if (*(&v30 + 1))
      {
        v19 = swift_dynamicCast();
        (*(v3 + 56))(v8, v19 ^ 1u, 1, v2);
        if ((*(v3 + 48))(v8, 1, v2) != 1)
        {
LABEL_27:
          sub_22B4D0D64(v8, &unk_27D8CF790, &qword_22B7F9578);
          return;
        }

LABEL_20:
        v20 = [v9 messagesAppDomain];
        if (v20)
        {
          v21 = v20;
          sub_22B7DA958();
          v22 = sub_22B7DA8B8();
          (*(v3 + 8))(v5, v2);
          [v21 setObject:v22 forKey:*MEMORY[0x277D19F18]];
        }

        if (qword_28141F1D8 != -1)
        {
          swift_once();
        }

        v23 = sub_22B7DB2B8();
        sub_22B4CFA74(v23, qword_2814225E8);
        v24 = sub_22B7DB298();
        v25 = sub_22B7DBC78();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_22B4CC000, v24, v25, "Recorded device starting in offgrid.", v26, 2u);
          MEMORY[0x231898D60](v26, -1, -1);
        }

        goto LABEL_27;
      }
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
    }

    sub_22B4D0D64(&v31, &unk_27D8CCDC0, &qword_22B7F9580);
    (*(v3 + 56))(v8, 1, 1, v2);
    goto LABEL_20;
  }

  v13 = [objc_opt_self() messagesAppDomain];
  if (v13)
  {
    v14 = v13;
    [v13 removeObjectForKey_];
  }

  if (qword_28141F1D8 != -1)
  {
    swift_once();
  }

  v15 = sub_22B7DB2B8();
  sub_22B4CFA74(v15, qword_2814225E8);
  v28 = sub_22B7DB298();
  v16 = sub_22B7DBC78();
  if (os_log_type_enabled(v28, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_22B4CC000, v28, v16, "Recorded device no longer in offgrid.", v17, 2u);
    MEMORY[0x231898D60](v17, -1, -1);
  }

  v18 = v28;
}

uint64_t sub_22B738680(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 sub_22B73869C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22B7386B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22B7386F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_22B73873C(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_22B738764(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v10 = "ied";
  v11 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v13 = "suspended due to throttling";
      v12 = 0xD000000000000025;
    }

    else
    {
      v13 = " higher priority work";
      v12 = 0xD00000000000002DLL;
    }
  }

  else
  {
    if (a1)
    {
      v12 = 0xD00000000000001BLL;
    }

    else
    {
      v12 = 0xD000000000000010;
    }

    if (v11)
    {
      v13 = "suspended by DAS";
    }

    else
    {
      v13 = "ied";
    }
  }

  v30 = v8;
  v14 = (v13 | 0x8000000000000000);
  if (a2 > 1u)
  {
    v10 = "suspended due to throttling";
    v15 = " higher priority work";
    v16 = a2 == 2;
    if (a2 == 2)
    {
      v17 = 0xD000000000000025;
    }

    else
    {
      v17 = 0xD00000000000002DLL;
    }
  }

  else
  {
    v15 = "suspended by DAS";
    v16 = a2 == 0;
    if (a2)
    {
      v17 = 0xD00000000000001BLL;
    }

    else
    {
      v17 = 0xD000000000000010;
    }
  }

  if (v16)
  {
    v18 = v10;
  }

  else
  {
    v18 = v15;
  }

  v19 = (v18 | 0x8000000000000000);
  if (v12 == v17 && v14 == v19)
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_22B7DC518();
  }

  v14, a2, v17, a4, a5, a6, a7, a8, v9, v30;
  v19, v21, v22, v23, v24, v25, v26, v27, v29, v31;
  return v20 & 1;
}

id sub_22B7388A0(void *a1)
{
  [a1 setScheduleAfter_];

  return [a1 setTrySchedulingBefore_];
}

unint64_t sub_22B73891C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22B740BE0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_22B73894C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000010;
  v3 = "ied";
  v4 = "suspended due to throttling";
  v5 = 0xD000000000000025;
  if (*v1 != 2)
  {
    v5 = 0xD00000000000002DLL;
    v4 = " higher priority work";
  }

  if (*v1)
  {
    v2 = 0xD00000000000001BLL;
    v3 = "suspended by DAS";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t sub_22B7389C4()
{
  v1 = *v0;
  sub_22B7DC668();
  v2 = "ied";
  v3 = "suspended due to throttling";
  if (v1 != 2)
  {
    v3 = " higher priority work";
  }

  if (v1)
  {
    v2 = "suspended by DAS";
  }

  if (v1 <= 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  sub_22B7DB758();
  (v4 | 0x8000000000000000), v5, v6, v7, v8, v9, v10, v11, v13, v14;
  return sub_22B7DC6B8();
}

void sub_22B738A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  v11 = "ied";
  v12 = "suspended due to throttling";
  if (*v10 != 2)
  {
    v12 = " higher priority work";
  }

  if (*v10)
  {
    v11 = "suspended by DAS";
  }

  if (*v10 <= 1u)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  sub_22B7DB758();

  (v13 | 0x8000000000000000), v14, v15, v16, v17, v18, v19, v20, a9, a10;
}

uint64_t sub_22B738B20(uint64_t a1)
{
  v2 = *v1;
  sub_22B7DC668();
  v3 = "ied";
  v4 = "suspended due to throttling";
  if (v2 != 2)
  {
    v4 = " higher priority work";
  }

  if (v2)
  {
    v3 = "suspended by DAS";
  }

  if (v2 <= 1)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  sub_22B7DB758();
  (v5 | 0x8000000000000000), v6, v7, v8, v9, v10, v11, v12, v14, v15;
  return sub_22B7DC6B8();
}

void sub_22B738BD4(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[20];
  v5 = a1[21];
  sub_22B4D2BCC(a1 + 17, v4);
  v6 = (*(v5 + 8))(a1[31], a1[32], v4, v5);
  if (v6)
  {
    v7 = v6;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      *a2 = v8;
      return;
    }
  }

  *a2 = 0;
}

uint64_t sub_22B738C6C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22B738C8C, v1, 0);
}

uint64_t sub_22B738C8C(__n128 a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1[4] = Strong;
  if (Strong)
  {
    v3 = *(v1[3] + 184);
    ObjectType = swift_getObjectType();
    v25 = (*(v3 + 8) + **(v3 + 8));
    v5 = swift_task_alloc();
    v1[5] = v5;
    *v5 = v1;
    v5[1] = sub_22B738EE0;
    v6 = v1[3];

    return v25(v6, ObjectType, v3);
  }

  else
  {
    v8 = v1[2];

    if (v8 >> 62)
    {
LABEL_21:
      v16 = sub_22B7DC1C8();
    }

    else
    {
      v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = 0;
    do
    {
      v18 = v17;
      if (v16 == v17)
      {
        break;
      }

      if ((v8 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x231895C80](v17, v8);
      }

      else
      {
        if (v17 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v19 = *&v8->queue[8 * v17];
      }

      v20 = v19;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v21 = [v19 isEmpty];

      v17 = v18 + 1;
    }

    while ((v21 & 1) != 0);
    v8, v9, v10, v11, v12, v13, v14, v15, v23, v24;
    v22 = v1[1];

    return v22(v16 != v18);
  }
}

uint64_t sub_22B738EE0(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 48) = a1;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_22B739014, v2, 0);
}

uint64_t sub_22B739014(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v46 = v8;
  v9 = v8[2];
  v45 = MEMORY[0x277D84F90];
  if (v9 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22B7DC1C8())
  {
    v11 = 0;
    v12 = v8[6];
    v13 = v9 & 0xC000000000000001;
    v14 = v9 & 0xFFFFFFFFFFFFFF8;
    v15 = v8[2] + 32;
    v16 = v12 + 56;
    v8 = i;
    while (1)
    {
      if (v13)
      {
        v17 = MEMORY[0x231895C80](v11, v43[2]);
      }

      else
      {
        if (v11 >= *(v14 + 16))
        {
          goto LABEL_20;
        }

        v17 = *(v15 + 8 * v11);
      }

      v18 = v17;
      if (__OFADD__(v11++, 1))
      {
        break;
      }

      v20 = [v17 reason];
      if (*(v12 + 16) && (v9 = v20, v21 = sub_22B7DC658(), v22 = -1 << *(v12 + 32), v23 = v21 & ~v22, ((*(v16 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0))
      {
        v24 = ~v22;
        while (*(*(v12 + 48) + 8 * v23) != v9)
        {
          v23 = (v23 + 1) & v24;
          if (((*(v16 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
LABEL_4:
        sub_22B7DC358();
        sub_22B7DC398();
        sub_22B7DC3A8();
        v9 = &v45;
        sub_22B7DC368();
      }

      if (v11 == v8)
      {
        v8 = v43;
        v25 = v45;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v25 = MEMORY[0x277D84F90];
LABEL_23:
  v8[6], a2, a3, a4, a5, a6, a7, a8, v41, v43;
  if (v25 >> 62)
  {
LABEL_39:
    v33 = sub_22B7DC1C8();
  }

  else
  {
    v33 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = 0;
  do
  {
    v35 = v34;
    if (v33 == v34)
    {
      break;
    }

    if ((v25 & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x231895C80](v34, v25);
    }

    else
    {
      if (v34 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v36 = *&v25->queue[8 * v34];
    }

    v37 = v36;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v38 = [v36 isEmpty];

    v34 = v35 + 1;
  }

  while ((v38 & 1) != 0);
  v25, v26, v27, v28, v29, v30, v31, v32, v42, v44;
  v39 = v8[1];

  return v39(v33 != v35);
}

uint64_t sub_22B7392B8(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_22B7DB368();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B739378, v1, 0);
}

uint64_t sub_22B7393A0()
{
  v1 = v0[10];
  v2 = v0[7];
  (*(v0[9] + 104))(v1, *MEMORY[0x277D851B8], v0[8]);

  v3 = swift_task_alloc();
  v0[12] = v3;
  v3[2] = v1;
  v3[3] = sub_22B7408BC;
  v3[4] = v2;
  v4 = swift_task_alloc();
  v0[13] = v4;
  v5 = sub_22B6F0AD4(&qword_27D8CE658, &qword_22B7FA8F0);
  *v4 = v0;
  v4[1] = sub_22B7394E8;

  return MEMORY[0x2822007B8](v0 + 4, 0, 0, 0xD00000000000001ELL, 0x800000022B80F230, sub_22B7408C4, v3, v5);
}

uint64_t sub_22B7394E8()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v5 = *v0;

  v1[14] = v1[4];
  (*(v3 + 8))(v2, v4);
  v6 = swift_task_alloc();
  v1[15] = v6;
  *v6 = v5;
  v6[1] = sub_22B7396E4;
  v7 = v1[6];

  return sub_22B738C6C(v7);
}

uint64_t sub_22B7396E4(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 24) = a1;
  *(v3 + 16) = v1;
  v4 = *(v2 + 56);

  return MEMORY[0x2822009F8](sub_22B7397FC, v4, 0);
}

IMDScheduledMessageCoordinator *sub_22B7397FC(__n128 a1, uint64_t a2, const char *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  v10 = *(v9 + 88);
  if (v10 >= 4)
  {
    type metadata accessor for IMPersistentTaskLane(0);
    *(v9 + 40) = v10;

    return sub_22B7DC548();
  }

  else
  {
    result = *(&off_278708A28 + v10);
    *(v9 + 128) = result;
    v12 = *result->messageStore;
    *(v9 + 136) = v12;
    if (v12)
    {
      v13 = 0;
      while (1)
      {
        *(v9 + 144) = v13;
        v14 = *(v9 + 128);
        if (v13 >= *(v14 + 16))
        {
          __break(1u);
          return result;
        }

        v15 = *(v14 + 8 * v13 + 32);
        result = swift_unknownObjectWeakLoadStrong();
        *(v9 + 152) = result;
        if (result)
        {
          break;
        }

        v13 = *(v9 + 144) + 1;
        if (v13 == *(v9 + 136))
        {
          result = *(v9 + 128);
          goto LABEL_8;
        }
      }

      v20 = *(v9 + 56);
      v21 = *(v20 + 184);
      ObjectType = swift_getObjectType();
      v23 = *(v20 + 120);
      v39 = (*(v21 + 80) + **(v21 + 80));
      v24 = swift_task_alloc();
      *(v9 + 160) = v24;
      *v24 = v9;
      v24[1] = sub_22B739B34;

      return v39(v23, v15, ObjectType, v21);
    }

    else
    {
LABEL_8:
      result, a3, a4, a5, a6, a7, a8, a9, v37, v38;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = *(v9 + 56);
        v17 = *(v16 + 184);
        v18 = swift_getObjectType();
        LOBYTE(v16) = (*(v17 + 24))(v16, v18, v17);
        swift_unknownObjectRelease();
        if (v16)
        {
          v19 = 0x10000;
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }

      v25 = *(v9 + 56);
      v26 = *(v25 + 200);
      v27 = *(v25 + 216);
      if (*(v9 + 88) == 3)
      {
        v28 = 0;
      }

      else
      {
        sub_22B7DAE68();
        sub_22B7DAE58();
        v29 = sub_22B7DAE38();

        if (v29)
        {
          v28 = 0x10000000000;
        }

        else
        {
          v28 = 0;
        }
      }

      v30 = *(v9 + 24);
      v31 = v26 != 0;

      v32 = 0x100000000;
      if (!v27)
      {
        v32 = 0;
      }

      v33 = *(v9 + 8);
      v34 = *(v9 + 112);
      v35 = *(v9 + 88);
      v36 = *(v9 + 48);

      return v33(v35, v36, v34, v19 | (v31 << 24) | v32 | v28 | v30);
    }
  }
}

uint64_t sub_22B739B34(uint64_t a1)
{
  v2 = *(*v1 + 56);
  *(*v1 + 168) = a1;

  return MEMORY[0x2822009F8](sub_22B739C4C, v2, 0);
}

uint64_t sub_22B739C4C(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 168);
  v10 = v9 & 0xFFFFFFFFFFFFFF8;
  if (v9 >> 62)
  {
LABEL_38:
    v11 = sub_22B7DC1C8();
    v12 = *(v8 + 168);
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = *(v8 + 168);
  }

  v13 = 0;
  v14 = v9 & 0xC000000000000001;
  v15 = v12 + 32;
  while (v11 != v13)
  {
    if (v14)
    {
      v16 = MEMORY[0x231895C80](v13, *(v8 + 168));
    }

    else
    {
      if (v13 >= *(v10 + 16))
      {
        goto LABEL_36;
      }

      v16 = *(v15 + 8 * v13);
    }

    v9 = v16;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v17 = [v16 isEmpty];

    ++v13;
    if ((v17 & 1) == 0)
    {
      *(v8 + 168), a2, a3, a4, a5, a6, a7, a8, v52, v53;
      swift_unknownObjectRelease();
      v35 = 256;
LABEL_20:
      *(v8 + 128), v28, v29, v30, v31, v32, v33, v34, v52, v53;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v36 = *(v8 + 56);
        v37 = *(v36 + 184);
        ObjectType = swift_getObjectType();
        LOBYTE(v36) = (*(v37 + 24))(v36, ObjectType, v37);
        swift_unknownObjectRelease();
        if (v36)
        {
          v39 = 0x10000;
        }

        else
        {
          v39 = 0;
        }
      }

      else
      {
        v39 = 0;
      }

      v40 = *(v8 + 56);
      v41 = *(v40 + 200);
      v42 = *(v40 + 216);
      if (*(v8 + 88) == 3)
      {
        v43 = 0;
      }

      else
      {
        sub_22B7DAE68();
        sub_22B7DAE58();
        v44 = sub_22B7DAE38();

        if (v44)
        {
          v43 = 0x10000000000;
        }

        else
        {
          v43 = 0;
        }
      }

      v45 = *(v8 + 24);
      v46 = v41 != 0;

      v47 = 0x100000000;
      if (!v42)
      {
        v47 = 0;
      }

      v48 = *(v8 + 8);
      v49 = *(v8 + 112);
      v50 = *(v8 + 88);
      v51 = *(v8 + 48);

      return v48(v50, v51, v49, v39 | v35 | (v46 << 24) | v47 | v43 | v45);
    }
  }

  *(v8 + 168), a2, a3, a4, a5, a6, a7, a8, v52, v53;
  swift_unknownObjectRelease();
  do
  {
    v18 = *(v8 + 144) + 1;
    if (v18 == *(v8 + 136))
    {
      v35 = 0;
      goto LABEL_20;
    }

    *(v8 + 144) = v18;
    v19 = *(v8 + 128);
    if (v18 >= *(v19 + 16))
    {
      goto LABEL_37;
    }

    v20 = *(v19 + 8 * v18 + 32);
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v8 + 152) = Strong;
  }

  while (!Strong);
  v22 = *(v8 + 56);
  v23 = *(v22 + 184);
  v24 = swift_getObjectType();
  v25 = *(v22 + 120);
  v54 = (*(v23 + 80) + **(v23 + 80));
  v26 = swift_task_alloc();
  *(v8 + 160) = v26;
  *v26 = v8;
  v26[1] = sub_22B739B34;

  return v54(v25, v20, v24, v23);
}

uint64_t sub_22B739FF8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a3;
  if (!a3)
  {
    return v5;
  }

  if ((a4 & 0x10000010100) == 0)
  {
    if ((a4 & 0x100000000) != 0)
    {
      *(v4 + 216) = 0;
      v19 = a3;
      v8 = sub_22B71C1DC(0, 1, 1, MEMORY[0x277D84F90], v20, v21, v22, v23);
      v29 = *v8->messageStore;
      v28 = *v8->chatRegistry;
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        v50 = (v29 + 1);
        v48 = sub_22B71C1DC((v28 > 1), v29 + 1, 1, v8, v24, v25, v26, v27);
        v30 = v29 + 1;
        v8 = v48;
      }

      *v8->messageStore = v30;
      v16 = &v8->super.isa + 4 * v29;
      v16[4] = 0x6E65707375736E75;
      v16[5] = 0xE900000000000064;
      v17 = sub_22B7388A0;
      goto LABEL_16;
    }

    v18 = a3;
LABEL_12:
    v8 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v7 = a3;
  if ((a4 & 0x101000000) != 0x1000000)
  {
    goto LABEL_12;
  }

  *(v4 + 216) = 1;
  v8 = MEMORY[0x277D84F90];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_22B71C1DC(0, *v8->messageStore + 1, 1, v8, v9, v10, v11, v12);
  }

  v14 = *v8->messageStore;
  v13 = *v8->chatRegistry;
  v15 = v14 + 1;
  if (v14 >= v13 >> 1)
  {
    v50 = (v14 + 1);
    v47 = sub_22B71C1DC((v13 > 1), v14 + 1, 1, v8, v9, v10, v11, v12);
    v15 = v14 + 1;
    v8 = v47;
  }

  *v8->messageStore = v15;
  v16 = &v8->super.isa + 4 * v14;
  v16[4] = 0xD000000000000014;
  v16[5] = 0x800000022B80F5F0;
  v17 = sub_22B738888;
LABEL_16:
  v16[6] = v17;
  v16[7] = 0;
LABEL_17:
  sub_22B7DBF98();
  v31 = sub_22B7DBF78();
  v32 = [v5 backlogged];
  if (v31)
  {
    if ((v32 & 1) == 0)
    {
      v40 = sub_22B7388F0;
      v41 = 0xE700000000000000;
      v42 = 0x676F6C6B636162;
LABEL_22:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_22B71C1DC(0, *v8->messageStore + 1, 1, v8, v36, v37, v38, v39);
      }

      v44 = *v8->messageStore;
      v43 = *v8->chatRegistry;
      if (v44 >= v43 >> 1)
      {
        v8 = sub_22B71C1DC((v43 > 1), v44 + 1, 1, v8, v36, v37, v38, v39);
      }

      *v8->messageStore = v44 + 1;
      v45 = &v8->super.isa + 4 * v44;
      v45[4] = v42;
      v45[5] = v41;
      v45[6] = v40;
      v45[7] = 0;
    }
  }

  else if (v32)
  {
    v40 = sub_22B738900;
    v41 = 0xE900000000000067;
    v42 = 0x6F6C6B6361626E75;
    goto LABEL_22;
  }

  if (!*v8->messageStore)
  {
    v8, v33, v34, v35, v36, v37, v38, v39, v49, v50;

    return 1;
  }

  return v5;
}

uint64_t sub_22B73A300(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v4 = swift_task_alloc();
  v2[8] = v4;
  *v4 = v2;
  v4[1] = sub_22B73A398;

  return sub_22B7392B8(a1);
}

uint64_t sub_22B73A398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(*v4 + 56);
  *(v5 + 72) = a1;
  *(v5 + 80) = a2;
  *(v5 + 88) = a3;
  *(v5 + 96) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 44) = WORD2(a4);
  *(v5 + 40) = a4;

  return MEMORY[0x2822009F8](sub_22B73A4C8, v6, 0);
}

uint64_t sub_22B73A4C8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);
  if (v2)
  {
    if ((v1 & 1) == 0 && (*(v0 + 42) & 1) == 0 && (*(v0 + 45) & 1) == 0)
    {
      sub_22B74088C(v0 + 16);
      v3 = 0;
      v4 = 0;
      v5 = 4;
      goto LABEL_36;
    }
  }

  else if ((v1 & 1) != 0 && (*(v0 + 41) & 1) == 0 && (*(v0 + 45) & 1) == 0)
  {
    sub_22B7DBF98();
    if (sub_22B7DBF78())
    {
      v3 = sub_22B71C1DC(0, 1, 1, MEMORY[0x277D84F90], v16, v17, v18, v19);
      v25 = *(v3 + 16);
      v24 = *(v3 + 24);
      if (v25 >= v24 >> 1)
      {
        v3 = sub_22B71C1DC((v24 > 1), v25 + 1, 1, v3, v20, v21, v22, v23);
      }

      sub_22B74088C(v0 + 16);
      *(v3 + 16) = v25 + 1;
      v26 = (v3 + 32 * v25);
      v26[4] = 0x676F6C6B636162;
      v26[5] = 0xE700000000000000;
      v26[6] = sub_22B7388F0;
      v26[7] = 0;
    }

    else
    {
      sub_22B74088C(v0 + 16);
      v3 = MEMORY[0x277D84F90];
    }

    v4 = 0;
    v5 = 0;
    goto LABEL_36;
  }

  v6 = *(v0 + 44);
  if ((v6 & 1) != 0 || *(v0 + 43) != 1)
  {
    goto LABEL_18;
  }

  if (*(v0 + 42))
  {
    sub_22B74088C(v0 + 16);
    v4 = 0;
    v5 = 2;
    v3 = 1;
    goto LABEL_36;
  }

  if (*(v0 + 41) == 1)
  {
    sub_22B74088C(v0 + 16);
    v4 = 0;
    v3 = 2;
    v5 = 2;
    goto LABEL_36;
  }

  if (*(v0 + 45) == 1)
  {
    sub_22B74088C(v0 + 16);
    v4 = 0;
    v5 = 2;
    v3 = 3;
  }

  else
  {
LABEL_18:
    if (((v2 != 0) & v1) == 1 && (*(v0 + 43) & 1) == 0)
    {
      v7 = 257;
      if (!*(v0 + 41))
      {
        v7 = 1;
      }

      v8 = 0x10000;
      if (!*(v0 + 42))
      {
        v8 = 0;
      }

      v9 = v6 == 0;
      v10 = 0x100000000;
      if (v9)
      {
        v10 = 0;
      }

      v11 = 0x10000000000;
      if (!*(v0 + 45))
      {
        v11 = 0;
      }

      v3 = sub_22B739FF8(*(v0 + 72), *(v0 + 80), v2, v7 | v10 | v8 | v11);
      v13 = v12;
      v15 = v14;
      sub_22B74088C(v0 + 16);
      v5 = v15;
      v4 = v13;
    }

    else
    {
      v3 = v2 != 0;
      sub_22B74088C(v0 + 16);
      v4 = 0;
      v5 = 3;
    }
  }

LABEL_36:
  v27 = *(v0 + 8);

  return v27(v3, v4, v5);
}

void sub_22B73A768(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  if (qword_28141F398 != -1)
  {
    swift_once();
  }

  v6 = sub_22B7DB2B8();
  sub_22B4CFA74(v6, qword_281422680);

  v7 = sub_22B7DB298();
  v8 = sub_22B7DBC88();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_22B4CFAAC(a1[31], a1[32], &v15);
    _os_log_impl(&dword_22B4CC000, v7, v8, "[%{public}s] Updating task request", v9, 0xCu);
    sub_22B4CFB78(v10);
    MEMORY[0x231898D60](v10, -1, -1);
    MEMORY[0x231898D60](v9, -1, -1);
  }

  v11 = a1[20];
  v12 = a1[21];
  sub_22B4D2BCC(a1 + 17, v11);
  (*(v12 + 40))(a2, v11, v12);
  v13 = a1[16];
  a1[16] = a2;
  v14 = a2;

  *a3 = 1;
}

uint64_t sub_22B73AA4C(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;

  return MEMORY[0x2822009F8](sub_22B73AADC, v1, 0);
}

uint64_t sub_22B73AADC()
{
  v20 = v0;
  v19[1] = *MEMORY[0x277D85DE8];
  v1 = v0[10];
  v2 = *(v1 + 200);
  v0[11] = v2;
  if (v2 && (v3 = *(v1 + 192), (v0[12] = v3) != 0) && ((v4 = v0[9]) != 0 ? (v5 = v3 == v4) : (v5 = 1), v5))
  {
    v6 = qword_28141F398;

    v7 = v3;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = sub_22B7DB2B8();
    v0[13] = sub_22B4CFA74(v8, qword_281422680);

    v9 = sub_22B7DB298();
    v10 = sub_22B7DBCB8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = v0[10];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19[0] = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_22B4CFAAC(*(v11 + 248), *(v11 + 256), v19);
      _os_log_impl(&dword_22B4CC000, v9, v10, "[%{public}s] Cancelling task", v12, 0xCu);
      sub_22B4CFB78(v13);
      MEMORY[0x231898D60](v13, -1, -1);
      MEMORY[0x231898D60](v12, -1, -1);
    }

    v14 = MEMORY[0x277D84A98];
    v15 = MEMORY[0x277D84AC0];
    sub_22B7DBA88();
    v16 = swift_task_alloc();
    v0[14] = v16;
    *v16 = v0;
    v16[1] = sub_22B73AD94;

    return MEMORY[0x282200440](v0 + 2, v2, &_s11BatchResultVN, v14, v15);
  }

  else
  {
    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_22B73AD94()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](sub_22B73AED0, v1, 0);
}

uint64_t sub_22B73AED0()
{
  v12 = v0;
  v11[1] = *MEMORY[0x277D85DE8];

  v1 = sub_22B7DB298();
  v2 = sub_22B7DBCB8();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[10];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11[0] = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_22B4CFAAC(*(v3 + 248), *(v3 + 256), v11);
    _os_log_impl(&dword_22B4CC000, v1, v2, "[%{public}s] Finished cancelling task", v4, 0xCu);
    sub_22B4CFB78(v5);
    MEMORY[0x231898D60](v5, -1, -1);
    MEMORY[0x231898D60](v4, -1, -1);
  }

  v6 = v0[11];
  *(v0[10] + 200) = 0;

  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_22B73B09C;
  v8 = MEMORY[0x277D84A98];
  v9 = MEMORY[0x277D84AC0];

  return MEMORY[0x282200440](v0 + 5, v6, &_s11BatchResultVN, v8, v9);
}

uint64_t sub_22B73B09C()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](sub_22B73B1D8, v1, 0);
}

uint64_t sub_22B73B1D8(uint64_t a1)
{
  v43 = v1;
  v42[1] = *MEMORY[0x277D85DE8];
  if (*(v1 + 56))
  {
    v2 = MEMORY[0x277D84A98];
    v3 = MEMORY[0x277D84AC0];

    return MEMORY[0x2821FECA8](a1, v2, v3);
  }

  if (*(v1 + 40) == 3)
  {
    v4 = *(v1 + 96);
    v5 = sub_22B7DB298();
    v6 = sub_22B7DBC78();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v1 + 96);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v42[0] = v9;
      *v8 = 136446210;
      v10 = [v7 identifier];
      v11 = sub_22B7DB6A8();
      v13 = v12;

      v14 = sub_22B4CFAAC(v11, v13, v42);
      v13, v15, v16, v17, v18, v19, v20, v21, v41, v42[0];
      *(v8 + 4) = v14;
      _os_log_impl(&dword_22B4CC000, v5, v6, "[%{public}s] setting expired with retry after 300s", v8, 0xCu);
      sub_22B4CFB78(v9);
      MEMORY[0x231898D60](v9, -1, -1);
      MEMORY[0x231898D60](v8, -1, -1);
    }

    v22 = *(v1 + 96);
    *(v1 + 64) = 0;
    v23 = [v22 setTaskExpiredWithRetryAfter:v1 + 64 error:300.0];
    v24 = *(v1 + 64);
    if (v23)
    {
      v25 = *(v1 + 96);
      v26 = v24;

LABEL_14:

      goto LABEL_15;
    }

    v27 = v24;
    v28 = sub_22B7DA6F8();

    swift_willThrow();

    v29 = v28;
    v25 = sub_22B7DB298();
    v30 = sub_22B7DBCA8();

    v31 = os_log_type_enabled(v25, v30);
    v32 = *(v1 + 96);
    if (!v31)
    {

      goto LABEL_14;
    }

    v33 = *(v1 + 80);
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v42[0] = v36;
    *v34 = 136446466;
    *(v34 + 4) = sub_22B4CFAAC(*(v33 + 248), *(v33 + 256), v42);
    *(v34 + 12) = 2112;
    v37 = v28;
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 14) = v38;
    *v35 = v38;
    _os_log_impl(&dword_22B4CC000, v25, v30, "[%{public}s] Failed to expire: %@", v34, 0x16u);
    sub_22B708A24(v35);
    MEMORY[0x231898D60](v35, -1, -1);
    sub_22B4CFB78(v36);
    MEMORY[0x231898D60](v36, -1, -1);
    MEMORY[0x231898D60](v34, -1, -1);
  }

  else
  {
  }

LABEL_15:
  v39 = *(v1 + 8);

  return v39();
}

uint64_t sub_22B73B5B4()
{
  v1[2] = v0;
  v2 = sub_22B7DB368();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_22B7DB2B8();
  v1[6] = v3;
  v4 = *(v3 - 8);
  v1[7] = v4;
  v1[8] = *(v4 + 64);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B73B6D8, v0, 0);
}

uint64_t sub_22B73B6D8()
{
  v1 = v0[2];
  v2 = v1[16];
  v0[10] = v2;
  v18 = v1[31];
  v19 = v1[32];
  v3 = qword_28141F398;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
    v1 = v0[2];
  }

  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[4];
  v17 = v0[5];
  v10 = v0[3];
  v11 = sub_22B4CFA74(v7, qword_281422680);
  v0[11] = v11;
  (*(v8 + 16))(v5, v11, v7);
  v12 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v13 = (v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  v0[12] = v14;
  *(v14 + 16) = v1;
  (*(v8 + 32))(v14 + v12, v5, v7);
  v15 = (v14 + v13);
  *v15 = v18;
  v15[1] = v19;
  (*(v9 + 104))(v17, *MEMORY[0x277D851B8], v10);

  return MEMORY[0x2822009F8](sub_22B73B884, 0, 0);
}

uint64_t sub_22B73B884()
{
  v1 = v0[12];
  v2 = v0[5];
  v3 = swift_task_alloc();
  v0[13] = v3;
  v3[2] = v2;
  v3[3] = sub_22B73FA4C;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_22B73B994;
  v5 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 15, 0, 0, 0xD00000000000001ELL, 0x800000022B80F230, sub_22B73FAF0, v3, v5);
}

uint64_t sub_22B73B994()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);

  *(v1 + 121) = *(v1 + 120);
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_22B73BB50, v5, 0);
}

uint64_t sub_22B73BB50()
{
  v24 = v0;
  if (*(v0 + 121))
  {
  }

  else
  {
    v1 = *(v0 + 80);
    v2 = sub_22B7DB298();
    v3 = sub_22B7DBC98();

    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 80);
    if (v4)
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v23 = v7;
      *v6 = 136446210;
      v8 = [v5 identifier];
      v9 = sub_22B7DB6A8();
      v11 = v10;

      v12 = sub_22B4CFAAC(v9, v11, &v23);
      v11, v13, v14, v15, v16, v17, v18, v19, v22, v23;
      *(v6 + 4) = v12;
      _os_log_impl(&dword_22B4CC000, v2, v3, "[%{public}s] failed to register with DAS", v6, 0xCu);
      sub_22B4CFB78(v7);
      MEMORY[0x231898D60](v7, -1, -1);
      MEMORY[0x231898D60](v6, -1, -1);
    }

    else
    {
    }
  }

  v20 = *(v0 + 8);

  return v20();
}

void sub_22B73BD00(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v45 = a3;
  v46 = a4;
  v44 = a2;
  v47 = a5;
  v6 = sub_22B7DB2B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = sub_22B7DB368();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  v16 = *(a1 + 160);
  v42 = *(a1 + 168);
  v43 = v16;
  v41 = sub_22B4D2BCC((a1 + 136), v16);
  v17 = [*(a1 + 128) identifier];
  v39 = sub_22B7DB6A8();
  v40 = v18;

  v19 = *(a1 + 112);
  if (v19 > 3)
  {
    v20 = MEMORY[0x277D851A8];
  }

  else
  {
    v20 = qword_278708A48[v19];
  }

  (*(v10 + 104))(v13, *v20, v9);
  sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  (*(v10 + 32))(v15, v13, v9);
  v21 = sub_22B7DBD98();
  (*(v10 + 8))(v15, v9);
  v22 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v44, v6);
  v23 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  (*(v7 + 32))(v24 + v23, &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v25 = (v24 + ((v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  v26 = v46;
  *v25 = v45;
  v25[1] = v26;
  v27 = v42;
  v28 = *(v42 + 32);

  v29 = v40;
  v30 = v28(v39, v40, v21, sub_22B73FF74, v24, v43, v27);

  v29, v31, v32, v33, v34, v35, v36, v37, v38, v39;

  *v47 = v30 & 1;
}

void sub_22B73C06C(void *a1, uint64_t a2, uint64_t a3, void *a4, IMDScheduledMessageCoordinator *a5)
{
  v9 = sub_22B7DB2B8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v64 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();

  v66 = a3;
  v13 = sub_22B7DB298();
  if (Strong)
  {
    v62 = a1;
    v63 = v9;
    v14 = sub_22B7DBCB8();
    a5, v15, v16, v17, v18, v19, v20, v21, v55, v56;
    v22 = os_log_type_enabled(v13, v14);
    v61 = a5;
    v65 = a4;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = v10;
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v23 = 136446210;
      *(v23 + 4) = sub_22B4CFAAC(a4, a5, aBlock);
      _os_log_impl(&dword_22B4CC000, v13, v14, "[%{public}s] DAS resumed", v23, 0xCu);
      sub_22B4CFB78(v25);
      v26 = v25;
      v10 = v24;
      MEMORY[0x231898D60](v26, -1, -1);
      MEMORY[0x231898D60](v23, -1, -1);
    }

    v27 = swift_allocObject();
    v59 = Strong;
    swift_weakInit();
    v60 = *(v10 + 16);
    v28 = v64;
    v29 = v63;
    v60(v64, v66);
    v30 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v31 = (v11 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = v30;
    v58 = v31;
    v32 = (v31 + 23) & 0xFFFFFFFFFFFFFFF8;
    v33 = v10;
    v34 = swift_allocObject();
    *(v34 + 16) = v27;
    v56 = *(v33 + 32);
    v35 = v34 + v30;
    v36 = v29;
    (v56)(v35, v28, v29);
    v37 = (v34 + v31);
    v38 = v61;
    v39 = v62;
    *v37 = v65;
    v37[1] = v38;
    *(v34 + v32) = v39;
    aBlock[4] = sub_22B740018;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B4D22C0;
    aBlock[3] = &unk_283F1D378;
    v40 = _Block_copy(aBlock);

    v41 = v39;

    [v41 setExpirationHandler_];
    _Block_release(v40);
    (v60)(v28, v66, v36);
    v42 = swift_allocObject();
    *(v42 + 16) = v59;
    (v56)(v42 + v57, v28, v36);
    v43 = (v42 + v58);
    *v43 = v65;
    v43[1] = v38;
    *(v42 + v32) = v41;

    v44 = v41;

    sub_22B73FB30(&unk_22B7FA888, v42, &unk_283F1D3D8, &unk_22B7FA8A0, sub_22B77E3D4);
  }

  else
  {
    v45 = sub_22B7DBC98();
    a5, v46, v47, v48, v49, v50, v51, v52, v55, v56;
    if (os_log_type_enabled(v13, v45))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      aBlock[0] = v54;
      *v53 = 136446210;
      *(v53 + 4) = sub_22B4CFAAC(a4, a5, aBlock);
      _os_log_impl(&dword_22B4CC000, v13, v45, "[%{public}s] DAS resumed but executor free'd", v53, 0xCu);
      sub_22B4CFB78(v54);
      MEMORY[0x231898D60](v54, -1, -1);
      MEMORY[0x231898D60](v53, -1, -1);
    }
  }
}

void sub_22B73C550(uint64_t a1, uint64_t a2, void *a3, IMDScheduledMessageCoordinator *a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();

  v9 = sub_22B7DB298();
  if (Strong)
  {
    v10 = sub_22B7DBCB8();
    a4, v11, v12, v13, v14, v15, v16, v17, v32, v33[0];
    if (os_log_type_enabled(v9, v10))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v32 = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_22B4CFAAC(a3, a4, &v32);
      _os_log_impl(&dword_22B4CC000, v9, v10, "[%{public}s] DAS expired", v18, 0xCu);
      sub_22B4CFB78(v19);
      MEMORY[0x231898D60](v19, -1, -1);
      MEMORY[0x231898D60](v18, -1, -1);
    }

    v20 = swift_allocObject();
    *(v20 + 16) = Strong;
    *(v20 + 24) = a5;

    v21 = a5;
    sub_22B73FB30(&unk_22B7FA8C0, v20, &unk_283F1D3D8, &unk_22B7FA8A0, sub_22B77E3D4);
  }

  else
  {
    v22 = sub_22B7DBC98();
    a4, v23, v24, v25, v26, v27, v28, v29, v32, v33[0];
    if (os_log_type_enabled(v9, v22))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_22B4CFAAC(a3, a4, &v32);
      _os_log_impl(&dword_22B4CC000, v9, v22, "[%{public}s] DAS expired task but executor was free'd", v30, 0xCu);
      sub_22B4CFB78(v31);
      MEMORY[0x231898D60](v31, -1, -1);
      MEMORY[0x231898D60](v30, -1, -1);
    }
  }
}

uint64_t sub_22B73C7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  if (qword_281420630 != -1)
  {
    v4 = a2;
    swift_once();
    a2 = v4;
  }

  v3[7] = qword_281422748;

  return MEMORY[0x2822009F8](sub_22B73C878, a2, 0);
}

uint64_t sub_22B73C878()
{
  v1 = v0[6];
  v0[8] = *(v0[5] + 200);

  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_22B73C928;

  return sub_22B73AA4C(v1);
}

uint64_t sub_22B73C928()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_22B73CA38, v1, 0);
}

uint64_t sub_22B73CA38(__n128 a1)
{
  v2 = v1[7];
  v3 = v1[5];
  v1[10] = swift_unknownObjectWeakLoadStrong();
  v1[11] = *(v3 + 184);

  return MEMORY[0x2822009F8](sub_22B73CAB4, v2, 0);
}

uint64_t sub_22B73CAB4()
{
  v1 = v0[8];
  if (v0[10])
  {
    if (v1)
    {

      v2 = swift_task_alloc();
      v0[12] = v2;
      *v2 = v0;
      v2[1] = sub_22B73CCCC;
      v3 = MEMORY[0x277D84A98];
      v4 = MEMORY[0x277D84AC0];

      return MEMORY[0x282200440](v0 + 2, v1, &_s11BatchResultVN, v3, v4);
    }

    else
    {
      v12 = v0[11];
      ObjectType = swift_getObjectType();
      v11 = (*(v12 + 32) + **(v12 + 32));
      v7 = swift_task_alloc();
      v0[13] = v7;
      *v7 = v0;
      v7[1] = sub_22B73CF54;
      v8 = v0[11];
      v9 = v0[5];

      return v11(v9, 0, 0, ObjectType, v8);
    }
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_22B73CCCC()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_22B73CDF8, v1, 0);
}

uint64_t sub_22B73CDF8(uint64_t a1)
{
  if (*(v1 + 32))
  {
    v3 = MEMORY[0x277D84A98];
    v4 = MEMORY[0x277D84AC0];

    return MEMORY[0x2821FECA8](a1, v3, v4);
  }

  else
  {
    v5 = *(v1 + 24);
    v12 = *(v1 + 88);
    ObjectType = swift_getObjectType();
    v11 = (*(v12 + 32) + **(v12 + 32));
    v7 = swift_task_alloc();
    *(v1 + 104) = v7;
    *v7 = v1;
    v7[1] = sub_22B73CF54;
    v8 = *(v1 + 88);
    v9 = *(v1 + 40);

    return v11(v9, 0, v5, ObjectType, v8);
  }
}

uint64_t sub_22B73CF54()
{
  v1 = *(*v0 + 56);

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_22B73D080, v1, 0);
}

uint64_t sub_22B73D080()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B73D0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  if (qword_281420630 != -1)
  {
    v7 = a2;
    swift_once();
    a2 = v7;
  }

  v6[7] = qword_281422748;

  return MEMORY[0x2822009F8](sub_22B73D18C, a2, 0);
}

uint64_t sub_22B73D18C()
{
  v1 = v0[7];
  v0[8] = *(v0[2] + 208);

  return MEMORY[0x2822009F8](sub_22B73D204, v1, 0);
}

uint64_t sub_22B73D204()
{
  v25 = v0;
  if (v0[8])
  {
    v1 = v0[5];

    v2 = sub_22B7DB298();
    v3 = sub_22B7DBCB8();
    v1, v4, v5, v6, v7, v8, v9, v10, v23, v24;
    if (os_log_type_enabled(v2, v3))
    {
      v12 = v0[4];
      v11 = v0[5];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_22B4CFAAC(v12, v11, &v24);
      _os_log_impl(&dword_22B4CC000, v2, v3, "[%{public}s] waiting for run lock", v13, 0xCu);
      sub_22B4CFB78(v14);
      MEMORY[0x231898D60](v14, -1, -1);
      MEMORY[0x231898D60](v13, -1, -1);
    }

    v15 = v0[8];
    v16 = swift_task_alloc();
    v0[9] = v16;
    *v16 = v0;
    v16[1] = sub_22B73D42C;
    v17 = MEMORY[0x277D84A98];
    v18 = MEMORY[0x277D84AC0];
    v19 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200440](v0 + 11, v15, v19, v17, v18);
  }

  else
  {
    v20 = swift_task_alloc();
    v0[10] = v20;
    *v20 = v0;
    v20[1] = sub_22B73D6D8;
    v21 = v0[6];

    return sub_22B72CE34(v21);
  }
}

uint64_t sub_22B73D42C()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_22B73D53C, v1, 0);
}

uint64_t sub_22B73D53C()
{
  v19 = v0;
  v1 = v0[5];

  v2 = sub_22B7DB298();
  v3 = sub_22B7DBCB8();
  v1, v4, v5, v6, v7, v8, v9, v10, v18[0], v18[1];
  if (os_log_type_enabled(v2, v3))
  {
    v12 = v0[4];
    v11 = v0[5];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18[0] = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_22B4CFAAC(v12, v11, v18);
    _os_log_impl(&dword_22B4CC000, v2, v3, "[%{public}s] run lock finished", v13, 0xCu);
    sub_22B4CFB78(v14);
    MEMORY[0x231898D60](v14, -1, -1);
    MEMORY[0x231898D60](v13, -1, -1);
  }

  else
  {
  }

  v15 = swift_task_alloc();
  v0[10] = v15;
  *v15 = v0;
  v15[1] = sub_22B73D6D8;
  v16 = v0[6];

  return sub_22B72CE34(v16);
}

uint64_t sub_22B73D6D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22B73D7CC(uint64_t a1)
{
  v2[7] = v1;
  v4 = sub_22B7DB368();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[11] = v5;
  *v5 = v2;
  v5[1] = sub_22B73D8C0;

  return sub_22B73A300(a1);
}

uint64_t sub_22B73D8C0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = *(*v3 + 56);
  *(v4 + 96) = a1;
  *(v4 + 104) = a2;
  *(v4 + 283) = a3;

  return MEMORY[0x2822009F8](sub_22B73D9DC, v5, 0);
}

uint64_t sub_22B73D9DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 283);
  v10 = *(v8 + 56);
  v11 = *(v10 + 224);
  *(v8 + 112) = v11;
  v12 = *(v10 + 232);
  *(v8 + 120) = v12;
  v13 = *(v10 + 240);
  *(v8 + 284) = v13;
  *(v10 + 224) = *(v8 + 96);
  *(v10 + 240) = v9;
  if (v9 <= 1)
  {
    if (v9)
    {
      v25 = *(v8 + 104);
      v26 = *(v8 + 96);

      [v26 copy];
      sub_22B7DC118();
      swift_unknownObjectRelease();
      sub_22B4D01A0(0, &qword_28141F090, 0x277CF07C8);
      swift_dynamicCast();
      v27 = *(v8 + 48);
      *(v8 + 160) = v27;
      v28 = *(v25 + 16);
      if (v28)
      {
        v29 = v25 + 56;
        do
        {
          v30 = *(v29 - 16);
          v31 = *(v29 - 8);
          v29 += 32;

          v31(v27);
          v30, v32, v33, v34, v35, v36, v37, v38, v51, v52;

          --v28;
        }

        while (v28);
      }

      v40 = *(v8 + 72);
      v39 = *(v8 + 80);
      v42 = *(v8 + 56);
      v41 = *(v8 + 64);
      v43 = swift_allocObject();
      *(v8 + 176) = v43;
      *(v43 + 16) = v42;
      *(v43 + 24) = v27;
      (*(v40 + 104))(v39, *MEMORY[0x277D851B8], v41);
      v21 = sub_22B73E4A8;

      v44 = v27;
    }

    else
    {
      v14 = *(v8 + 96);
      v15 = *(v8 + 104);
      v17 = *(v8 + 72);
      v16 = *(v8 + 80);
      v19 = *(v8 + 56);
      v18 = *(v8 + 64);
      *(v19 + 216) = 0;
      v20 = swift_allocObject();
      *(v8 + 128) = v20;
      *(v20 + 16) = v19;
      *(v20 + 24) = v14;
      (*(v17 + 104))(v16, *MEMORY[0x277D851B8], v18);
      sub_22B740840(v14, v15, 0);
      sub_22B740840(v14, v15, 0);
      v21 = sub_22B73DE8C;
    }

    return MEMORY[0x2822009F8](v21, 0, 0);
  }

  if (v9 == 2)
  {
    *(*(v8 + 56) + 216) = 1;
    v22 = swift_task_alloc();
    *(v8 + 216) = v22;
    *v22 = v8;
    v23 = sub_22B73EADC;
LABEL_10:
    v22[1] = v23;

    return sub_22B73AA4C(0);
  }

  if (v9 != 3)
  {
    *(*(v8 + 56) + 216) = 0;
    v22 = swift_task_alloc();
    *(v8 + 224) = v22;
    *v22 = v8;
    v23 = sub_22B73EC58;
    goto LABEL_10;
  }

  if (v13 != 255)
  {
    sub_22B740788(v11, v12, v13, a4, a5, a6, a7, a8, v51, v52);
    goto LABEL_25;
  }

  if ((*(v8 + 96) & 1) == 0 || (Strong = swift_unknownObjectWeakLoadStrong(), (*(v8 + 264) = Strong) == 0))
  {
LABEL_25:

    v50 = *(v8 + 8);

    return v50();
  }

  v46 = *(*(v8 + 56) + 184);
  ObjectType = swift_getObjectType();
  v53 = (*(v46 + 56) + **(v46 + 56));
  v48 = swift_task_alloc();
  *(v8 + 272) = v48;
  *v48 = v8;
  v48[1] = sub_22B73F360;
  v49 = *(v8 + 56);

  return v53(v49, 1, 1, ObjectType, v46);
}

uint64_t sub_22B73DE8C()
{
  v1 = v0[16];
  v2 = v0[10];
  v3 = swift_task_alloc();
  v0[17] = v3;
  v3[2] = v2;
  v3[3] = sub_22B740838;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_22B73DF9C;
  v5 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 282, 0, 0, 0xD00000000000001ELL, 0x800000022B80F230, sub_22B740C2C, v3, v5);
}

uint64_t sub_22B73DF9C()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v5 = *(*v0 + 56);

  *(v1 + 285) = *(v1 + 282);
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_22B73E158, v5, 0);
}

uint64_t sub_22B73E158(__n128 a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v1 + 152) = Strong;
  if (Strong)
  {
    v8 = *(*(v1 + 56) + 184);
    ObjectType = swift_getObjectType();
    v26 = (*(v8 + 56) + **(v8 + 56));
    v10 = swift_task_alloc();
    *(v1 + 168) = v10;
    *v10 = v1;
    v10[1] = sub_22B73E2FC;
    v11 = *(v1 + 285);
    v12 = *(v1 + 56);

    return v26(v12, v11, 0, ObjectType, v8);
  }

  else
  {
    v14 = *(v1 + 96);
    v15 = *(v1 + 104);
    sub_22B740788(*(v1 + 112), *(v1 + 120), *(v1 + 284), v3, v4, v5, v6, v7, v22, v24);
    sub_22B74079C(v14, v15, 0, v16, v17, v18, v19, v20, v23, v25);

    v21 = *(v1 + 8);

    return v21();
  }
}

uint64_t sub_22B73E2FC()
{
  v1 = *(*v0 + 56);

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_22B73E428, v1, 0);
}

uint64_t sub_22B73E428(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 96);
  v10 = *(v8 + 104);
  sub_22B740788(*(v8 + 112), *(v8 + 120), *(v8 + 284), a4, a5, a6, a7, a8, v18, v8);
  sub_22B74079C(v9, v10, 0, v11, v12, v13, v14, v15, v19, v20);

  v16 = *(v8 + 8);

  return v16();
}

uint64_t sub_22B73E4A8()
{
  v1 = v0[22];
  v2 = v0[10];
  v3 = swift_task_alloc();
  v0[23] = v3;
  v3[2] = v2;
  v3[3] = sub_22B740830;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[24] = v4;
  *v4 = v0;
  v4[1] = sub_22B73E5B8;
  v5 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 281, 0, 0, 0xD00000000000001ELL, 0x800000022B80F230, sub_22B740C2C, v3, v5);
}

uint64_t sub_22B73E5B8()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v5 = *(*v0 + 56);

  *(v1 + 286) = *(v1 + 281);
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_22B73E774, v5, 0);
}

uint64_t sub_22B73E774()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 200) = Strong;
  if (Strong)
  {
    v7 = *(v0 + 104);
    v8 = *(*(v0 + 56) + 184);
    ObjectType = swift_getObjectType();
    v25 = (*(v8 + 48) + **(v8 + 48));
    v10 = swift_task_alloc();
    *(v0 + 208) = v10;
    *v10 = v0;
    v10[1] = sub_22B73E930;
    v11 = *(v0 + 286);
    v12 = *(v0 + 56);

    return v25(v12, v11, v7, ObjectType, v8);
  }

  else
  {
    v14 = *(v0 + 96);
    v15 = *(v0 + 104);
    sub_22B740788(*(v0 + 112), *(v0 + 120), *(v0 + 284), v2, v3, v4, v5, v6, v22, v24);
    sub_22B74079C(v14, v15, 1, v16, v17, v18, v19, v20, v23, v26);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_22B73E930()
{
  v1 = *(*v0 + 56);

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_22B73EA5C, v1, 0);
}

uint64_t sub_22B73EA5C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 96);
  v10 = *(v8 + 104);
  sub_22B740788(*(v8 + 112), *(v8 + 120), *(v8 + 284), a4, a5, a6, a7, a8, v18, v8);
  sub_22B74079C(v9, v10, 1, v11, v12, v13, v14, v15, v19, v20);

  v16 = *(v8 + 8);

  return v16();
}

uint64_t sub_22B73EADC()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_22B73EBEC, v1, 0);
}

uint64_t sub_22B73EBEC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  sub_22B740788(*(v8 + 112), *(v8 + 120), *(v8 + 284), a4, a5, a6, a7, a8, v11, v8);

  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_22B73EC58()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_22B73ED68, v1, 0);
}

uint64_t sub_22B73ED68()
{
  (*(v0[9] + 104))(v0[10], *MEMORY[0x277D851B8], v0[8]);

  return MEMORY[0x2822009F8](sub_22B73EDF8, 0, 0);
}

uint64_t sub_22B73EDF8()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = swift_task_alloc();
  v0[29] = v3;
  v3[2] = v1;
  v3[3] = sub_22B7407E8;
  v3[4] = v2;
  v4 = swift_task_alloc();
  v0[30] = v4;
  *v4 = v0;
  v4[1] = sub_22B73EF08;
  v5 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 35, 0, 0, 0xD00000000000001ELL, 0x800000022B80F230, sub_22B740C2C, v3, v5);
}

uint64_t sub_22B73EF08()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v5 = *(*v0 + 56);

  *(v1 + 287) = *(v1 + 280);
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_22B73F0A8, v5, 0);
}

uint64_t sub_22B73F0A8(__n128 a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v1 + 248) = Strong;
  if (Strong)
  {
    v8 = *(*(v1 + 56) + 184);
    ObjectType = swift_getObjectType();
    v17 = (*(v8 + 40) + **(v8 + 40));
    v10 = swift_task_alloc();
    *(v1 + 256) = v10;
    *v10 = v1;
    v10[1] = sub_22B73F234;
    v11 = *(v1 + 287);
    v12 = *(v1 + 56);

    return v17(v12, v11, ObjectType, v8);
  }

  else
  {
    sub_22B740788(*(v1 + 112), *(v1 + 120), *(v1 + 284), v3, v4, v5, v6, v7, v15, v16);

    v14 = *(v1 + 8);

    return v14();
  }
}

uint64_t sub_22B73F234()
{
  v1 = *(*v0 + 56);

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_22B740C30, v1, 0);
}

uint64_t sub_22B73F360()
{
  v3 = *v0;

  swift_unknownObjectRelease();

  v1 = *(v3 + 8);

  return v1();
}

void sub_22B73F494(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (qword_28141F398 != -1)
  {
    swift_once();
  }

  v6 = sub_22B7DB2B8();
  sub_22B4CFA74(v6, qword_281422680);

  v7 = sub_22B7DB298();
  v8 = sub_22B7DBC88();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27[0] = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_22B4CFAAC(*(a1 + 248), *(a1 + 256), v27);
    _os_log_impl(&dword_22B4CC000, v7, v8, "[%{public}s] Submitting task request", v9, 0xCu);
    sub_22B4CFB78(v10);
    MEMORY[0x231898D60](v10, -1, -1);
    MEMORY[0x231898D60](v9, -1, -1);
  }

  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = a2 + 56;
    do
    {
      v13 = *(v12 - 16);
      v14 = *(v12 - 8);
      v12 += 32;
      v15 = *(a1 + 128);

      v16 = v15;
      v14();

      v13, v17, v18, v19, v20, v21, v22, v23, v27[0], v27[1];

      --v11;
    }

    while (v11);
  }

  v24 = *(a1 + 168);
  sub_22B4D2BCC((a1 + 136), *(a1 + 160));
  v25 = *(v24 + 16);
  v26 = *(a1 + 128);
  v25();

  *a3 = 1;
}

uint64_t sub_22B73F7D0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  if (qword_28141F398 != -1)
  {
    swift_once();
  }

  v4 = sub_22B7DB2B8();
  sub_22B4CFA74(v4, qword_281422680);

  v5 = sub_22B7DB298();
  v6 = sub_22B7DBC88();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_22B4CFAAC(a1[31], a1[32], &v12);
    _os_log_impl(&dword_22B4CC000, v5, v6, "[%{public}s] Cancelling task request", v7, 0xCu);
    sub_22B4CFB78(v8);
    MEMORY[0x231898D60](v8, -1, -1);
    MEMORY[0x231898D60](v7, -1, -1);
  }

  v9 = a1[20];
  v10 = a1[21];
  sub_22B4D2BCC(a1 + 17, v9);
  result = (*(v10 + 24))(a1[31], a1[32], v9, v10);
  *a2 = 1;
  return result;
}

void sub_22B73FA4C(_BYTE *a1@<X8>)
{
  v3 = *(sub_22B7DB2B8() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  sub_22B73BD00(v5, v1 + v4, v7, v8, a1);
}

uint64_t sub_22B73FB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, char *, uint64_t, void *, __n128))
{
  v25 = a5;
  v9 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - v10;
  v12 = sub_22B7DBA58();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - v17;
  if (*(v5 + 112) == 3)
  {
    sub_22B7DBA38();
  }

  else
  {
    sub_22B7DBA28();
  }

  (*(v13 + 32))(v18, v16, v12);
  (*(v13 + 16))(v11, v18, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  if (qword_281420630 != -1)
  {
    swift_once();
  }

  v19 = qword_281422748;
  v20 = sub_22B7402E8();
  v21 = swift_allocObject();
  v21[2] = v19;
  v21[3] = v20;
  v21[4] = a1;
  v21[5] = a2;

  v22 = (v25)(0, 0, v11, a4, v21);
  (*(v13 + 8))(v18, v12);
  return v22;
}

uint64_t sub_22B73FDA0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_22B6F0D94;

  return v8(a1);
}

uint64_t sub_22B73FE98()
{
  v1 = sub_22B7DB2B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  *(v0 + v5 + 8), v6, v7, v8, v9, v10, v11, v12, v14, v15;

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

void sub_22B73FF74(void *a1)
{
  v3 = *(sub_22B7DB2B8() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  sub_22B73C06C(a1, v5, v1 + v4, v7, v8);
}

void sub_22B740018()
{
  v1 = *(sub_22B7DB2B8() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = v0 + v3;
  v7 = *(v0 + v4);
  v8 = *v6;
  v9 = *(v6 + 8);

  sub_22B73C550(v5, v0 + v2, v8, v9, v7);
}

uint64_t sub_22B7400B8()
{
  v1 = sub_22B7DB2B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  *(v0 + v5 + 8), v7, v8, v9, v10, v11, v12, v13, v15, v16;

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_22B7401AC(uint64_t a1)
{
  v4 = *(sub_22B7DB2B8() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = (v1 + v6);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_22B6F0D94;

  return sub_22B73D0E0(a1, v8, v1 + v5, v10, v11, v12);
}

unint64_t sub_22B7402E8()
{
  result = qword_281420620;
  if (!qword_281420620)
  {
    type metadata accessor for BackgroundProcessingActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281420620);
  }

  return result;
}

uint64_t sub_22B740340(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22B6F12E8;

  return sub_22B73FDA0(a1, v4, v5, v6);
}

uint64_t sub_22B74040C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 32) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 40) = v5;
  *v5 = v4;
  v5[1] = sub_22B740500;

  return v7(v4 + 16);
}

uint64_t sub_22B740500()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_22B740610(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22B6F12E8;

  return sub_22B74040C(a1, v4, v5, v6);
}

uint64_t sub_22B7406DC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B6F12E8;

  return sub_22B73C7D4(a1, v5, v4);
}

void sub_22B740788(IMDScheduledMessageCoordinator *result, IMDScheduledMessageCoordinator *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  if (a3 != 0xFF)
  {
    sub_22B74079C(result, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  }
}

void sub_22B74079C(IMDScheduledMessageCoordinator *result, IMDScheduledMessageCoordinator *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return;
    }

    result = a2;
  }

  result, a2, a3, a4, a5, a6, a7, a8, a9, a10;
}

uint64_t sub_22B7407F0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *sub_22B740840(void *result, void *a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return result;
    }

    v4 = result;
  }
}

__n128 sub_22B7408D0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 14) = *(a2 + 14);
  *a1 = result;
  return result;
}

uint64_t sub_22B7408E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 30))
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

uint64_t sub_22B74092C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 30) = 1;
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

    *(result + 30) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s16SuspensionReasonOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s16SuspensionReasonOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_22B740AE4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22B740AF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_22B740B38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22B740B8C()
{
  result = qword_27D8CE660;
  if (!qword_27D8CE660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CE660);
  }

  return result;
}

unint64_t sub_22B740BE0(uint64_t a1, IMDScheduledMessageCoordinator *a2)
{
  v3 = sub_22B7DC4B8();
  a2, v4, v5, v6, v7, v8, v9, v10, v12, v13;
  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_22B740C34()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_28141F038);
  sub_22B4CFA74(v0, qword_28141F038);
  return sub_22B7DB2A8();
}

id sub_22B740CB8()
{
  result = [objc_allocWithZone(IMDAnalyticsBackgroundTaskMonitor) init];
  qword_28141F020 = result;
  return result;
}

uint64_t sub_22B740D48()
{
  v7 = sub_22B7DBD48();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22B7DBD38();
  MEMORY[0x28223BE20](v3);
  v4 = sub_22B7DB398();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  sub_22B7DB378();
  v8 = MEMORY[0x277D84F90];
  sub_22B7421BC(&unk_28141F220, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_22B6F0AD4(&qword_27D8CEA10, &qword_22B7F9DC0);
  sub_22B4D1110(&qword_28141F2C0, &qword_27D8CEA10, &qword_22B7F9DC0);
  sub_22B7DC138();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_22B7DBD88();
  qword_28141F058 = result;
  return result;
}

id sub_22B740FA8()
{
  v1 = sub_22B7DB348();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22B7DB398();
  v5 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23.receiver = v0;
  v23.super_class = IMDAnalyticsBackgroundTaskMonitor;
  v8 = objc_msgSendSuper2(&v23, sel_init);
  v9 = qword_28141F050;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v18 = qword_28141F058;
  v11 = swift_allocObject();
  v20 = v10;
  *(v11 + 16) = v10;
  aBlock[4] = sub_22B741C98;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D22C0;
  aBlock[3] = &unk_283F1D668;
  v12 = _Block_copy(aBlock);
  sub_22B7DACD8();
  v21 = MEMORY[0x277D84F90];
  sub_22B7421BC(&qword_28141F340, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_22B6F0AD4(&unk_27D8CF580, &unk_22B7FB880);
  sub_22B4D1110(&qword_28141F2E0, &unk_27D8CF580, &unk_22B7FB880);
  sub_22B7DC138();
  MEMORY[0x2318956F0](0, v7, v4, v12);
  _Block_release(v12);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v19);

  if (qword_28141F030 != -1)
  {
    swift_once();
  }

  v13 = sub_22B7DB2B8();
  sub_22B4CFA74(v13, qword_28141F038);
  v14 = sub_22B7DB298();
  v15 = sub_22B7DBC78();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_22B4CC000, v14, v15, "queued startTrackingRCSSwitchStates(). Heading back...", v16, 2u);
    MEMORY[0x231898D60](v16, -1, -1);
  }

  return v20;
}

uint64_t sub_22B74136C(void *a1)
{
  v2 = sub_22B7DC408();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B7DC3F8();
  v23[2] = a1;
  sub_22B7421BC(&qword_28141EFC0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_22B7DC5A8();
  if (qword_28141F030 != -1)
  {
    swift_once();
  }

  v6 = sub_22B7DB2B8();
  sub_22B4CFA74(v6, qword_28141F038);
  v7 = sub_22B7DB298();
  v8 = sub_22B7DBC78();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315138;
    v11 = sub_22B7DC6D8();
    v13 = v12;
    v14 = sub_22B4CFAAC(v11, v12, &v24);
    v13, v15, v16, v17, v18, v19, v20, v21, v23[0], v23[1];
    *(v9 + 4) = v14;
    _os_log_impl(&dword_22B4CC000, v7, v8, "startTrackingRCSSwitchStates() took %s", v9, 0xCu);
    sub_22B4CFB78(v10);
    MEMORY[0x231898D60](v10, -1, -1);
    MEMORY[0x231898D60](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

void sub_22B7415C8()
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  if (qword_28141F030 != -1)
  {
    swift_once();
  }

  v1 = sub_22B7DB2B8();
  sub_22B4CFA74(v1, qword_28141F038);
  v2 = sub_22B7DB298();
  v3 = sub_22B7DBC78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22B4CC000, v2, v3, "Start tracking RCS Switch states", v4, 2u);
    MEMORY[0x231898D60](v4, -1, -1);
  }

  v5 = objc_opt_self();
  v6 = [v5 sharedScheduler];
  v7 = sub_22B7DB678();
  if (qword_28141F050 != -1)
  {
    swift_once();
  }

  v8 = qword_28141F058;
  v9 = swift_allocObject();
  v9[2] = v0;
  aBlock[4] = sub_22B741D34;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B74C9E0;
  aBlock[3] = &unk_283F1D6B8;
  v10 = _Block_copy(aBlock);
  v11 = v0;

  [v6 registerForTaskWithIdentifier:v7 usingQueue:v8 launchHandler:v10];
  _Block_release(v10);

  v12 = sub_22B7DB298();
  v13 = sub_22B7DBC78();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_22B4CFAAC(0xD000000000000022, 0x800000022B80F660, aBlock);
    _os_log_impl(&dword_22B4CC000, v12, v13, "Successfully registered task %s", v14, 0xCu);
    sub_22B4CFB78(v15);
    MEMORY[0x231898D60](v15, -1, -1);
    MEMORY[0x231898D60](v14, -1, -1);
  }

  v16 = [v5 sharedScheduler];
  v17 = sub_22B7DB678();
  v18 = [v16 taskRequestForIdentifier_];

  if (v18)
  {
    v19 = sub_22B7DB298();
    v20 = sub_22B7DBC78();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_22B4CFAAC(0xD000000000000022, 0x800000022B80F660, aBlock);
      _os_log_impl(&dword_22B4CC000, v19, v20, "Task %s already registered with DAS", v21, 0xCu);
      sub_22B4CFB78(v22);
      MEMORY[0x231898D60](v22, -1, -1);
      MEMORY[0x231898D60](v21, -1, -1);
    }
  }

  else
  {
    v23 = objc_allocWithZone(MEMORY[0x277CF07D8]);
    v24 = sub_22B7DB678();
    v25 = [v23 initWithIdentifier_];

    [v25 setInterval_];
    v26 = [v5 sharedScheduler];
    aBlock[0] = 0;
    LODWORD(v23) = [v26 submitTaskRequest:v25 error:aBlock];

    if (v23)
    {
      v27 = aBlock[0];
      v28 = sub_22B7DB298();
      v29 = sub_22B7DBC78();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        aBlock[0] = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_22B4CFAAC(0xD000000000000022, 0x800000022B80F660, aBlock);
        _os_log_impl(&dword_22B4CC000, v28, v29, "Successfully submitted task %s", v30, 0xCu);
        sub_22B4CFB78(v31);
        MEMORY[0x231898D60](v31, -1, -1);
        MEMORY[0x231898D60](v30, -1, -1);
      }
    }

    else
    {
      v32 = aBlock[0];
      v33 = sub_22B7DA6F8();

      swift_willThrow();
      v34 = v33;
      v35 = sub_22B7DB298();
      v36 = sub_22B7DBC98();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v37 = 138412290;
        v39 = v33;
        v40 = _swift_stdlib_bridgeErrorToNSError();
        *(v37 + 4) = v40;
        *v38 = v40;
        _os_log_impl(&dword_22B4CC000, v35, v36, "Failed to submit task with error: %@", v37, 0xCu);
        sub_22B708A24(v38);
        MEMORY[0x231898D60](v38, -1, -1);
        MEMORY[0x231898D60](v37, -1, -1);
      }

      else
      {
      }
    }
  }
}

id sub_22B741CA0(uint64_t a1)
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClassUnconditional();
  sub_22B741E1C();

  return [v1 setTaskCompleted];
}

uint64_t sub_22B741D3C()
{
  v0 = sub_22B7DB678();
  v1 = sub_22B7DB678();
  v2 = IMGetDomainBoolForKey();

  if (v2)
  {
    return 1;
  }

  v4 = sub_22B7DB678();
  v5 = sub_22B7DB678();
  v6 = IMGetDomainBoolForKey();

  return v6;
}

void sub_22B741E1C()
{
  if (qword_28141F030 != -1)
  {
    swift_once();
  }

  v0 = sub_22B7DB2B8();
  sub_22B4CFA74(v0, qword_28141F038);
  v1 = sub_22B7DB298();
  v2 = sub_22B7DBC78();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v37 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_22B4CFAAC(0xD000000000000022, 0x800000022B80F660, &v37);
    _os_log_impl(&dword_22B4CC000, v1, v2, "Performing task %s. Tracking current states of RCS related switches and sending to CoreAnalytics.", v3, 0xCu);
    sub_22B4CFB78(v4);
    MEMORY[0x231898D60](v4, -1, -1);
    MEMORY[0x231898D60](v3, -1, -1);
  }

  v5 = objc_opt_self();
  v6 = [v5 sharedInstance];
  if (!v6)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = v6;
  v8 = [v6 isRCSEnabled];

  v9 = [v5 sharedInstance];
  if (!v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  v11 = [v9 isRBMEnabled];

  LOBYTE(v10) = sub_22B741D3C();
  sub_22B6F0AD4(&qword_27D8CE670, &qword_22B7FAA40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B7F97B0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x800000022B80F690;
  *(inited + 48) = v8;
  *(inited + 56) = 0xD000000000000018;
  *(inited + 64) = 0x800000022B80F6B0;
  *(inited + 72) = v11;
  *(inited + 80) = 0xD000000000000012;
  *(inited + 88) = 0x800000022B80F6D0;
  *(inited + 96) = v10 & 1;
  v13 = sub_22B71E5F0(inited);
  swift_setDeallocating();
  sub_22B6F0AD4(&qword_27D8CE678, qword_22B7FAA48);
  swift_arrayDestroy();
  v14 = [objc_opt_self() sharedInstance];
  if (!v14)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v15 = v14;
  v16 = sub_22B7DB678();
  sub_22B7B0D90(v13);
  v18 = v17;
  v13, v19, v20, v21, v22, v23, v24, v25, v37, v38[0];
  v26 = sub_22B7DB568();
  v18, v27, v28, v29, v30, v31, v32, v33, v37, v38[0];
  [v15 trackEvent:v16 withDictionary:v26];

  v34 = sub_22B7DB298();
  v35 = sub_22B7DBC78();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_22B4CC000, v34, v35, "Sent current states of RCS related switches to analytics.", v36, 2u);
    MEMORY[0x231898D60](v36, -1, -1);
  }
}

uint64_t sub_22B7421BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22B742290()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_27D8CE680);
  sub_22B4CFA74(v0, qword_27D8CE680);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B7422FC()
{
  sub_22B4DDE5C(*(v0 + 16), *(v0 + 24));
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7, vars0, vars8;

  *(v0 + 64), v8, v9, v10, v11, v12, v13, v14, vars0a, vars8a;
  *(v0 + 128), v15, v16, v17, v18, v19, v20, v21, vars0b, vars8b;
  return v0;
}

uint64_t sub_22B742344()
{
  sub_22B7422FC();

  return swift_deallocClassInstance();
}

id sub_22B742458()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EvictionCounter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22B7424B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_22B7424FC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22B742510(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_22B742558(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_22B7425DC()
{
  v1 = *v0;
  sub_22B7DC668();
  MEMORY[0x231895FF0](v1);
  return sub_22B7DC6B8();
}

uint64_t sub_22B742650(uint64_t a1)
{
  v2 = *v1;
  sub_22B7DC668();
  MEMORY[0x231895FF0](v2);
  return sub_22B7DC6B8();
}

unint64_t *sub_22B742694@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_22B7426E0(uint64_t a1, char *a2)
{
  v4 = sub_22B7DC4E8();
  v6 = v5;
  MEMORY[0x231895140](v4);
  v6, v7, v8, v9, v10, v11, v12, v13, v25, a2;
  result = MEMORY[0x231895140](2109216, 0xE300000000000000);
  if (__OFADD__(a1, a2))
  {
    __break(1u);
  }

  else
  {
    v28 = &a2[a1];
    v15 = sub_22B7DC4E8();
    v17 = v16;
    MEMORY[0x231895140](v15);
    v17, v18, v19, v20, v21, v22, v23, v24, v26, v28;
    MEMORY[0x231895140](2112800, 0xE300000000000000);
    sub_22B7DBAD8();
    MEMORY[0x231895140](37, 0xE100000000000000);
    return 0;
  }

  return result;
}

uint64_t sub_22B742818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22B742854(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22B74289C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_22B7428F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22B742930(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_22B742974(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MatchStringPosition(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MatchStringPosition(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22B742B20()
{
  result = qword_27D8CE788;
  if (!qword_27D8CE788)
  {
    sub_22B6FB8C4(&qword_27D8CE790, qword_22B7FACC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CE788);
  }

  return result;
}

unint64_t sub_22B742B88()
{
  result = qword_27D8CE798;
  if (!qword_27D8CE798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CE798);
  }

  return result;
}

void sub_22B742BDC()
{
  v0 = *MEMORY[0x277D1A790];
  v1 = objc_allocWithZone(MEMORY[0x277CCAD80]);
  v2 = v0;
  v3 = [v1 initWithStoreIdentifier:v2 type:1];

  qword_28141F070 = v3;
}

id sub_22B742C44()
{
  result = [objc_allocWithZone(IMDSyncedSettingsServiceManager) init];
  qword_28141F088 = result;
  return result;
}

char *sub_22B742CD8()
{
  v1 = v0;
  v35 = sub_22B7DBD48();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22B7DBD38();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22B7DB398();
  MEMORY[0x28223BE20](v6 - 8);
  v34 = OBJC_IVAR___IMDSyncedSettingsServiceManager_ubiquitousStoreQueue;
  v7 = sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  v33[1] = "Local value exists";
  v33[2] = v7;
  sub_22B7DACD8();
  v37 = MEMORY[0x277D84F90];
  sub_22B747690(&unk_28141F220, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_22B6F0AD4(&qword_27D8CEA10, &qword_22B7F9DC0);
  sub_22B4D1110(&qword_28141F2C0, &qword_27D8CEA10, &qword_22B7F9DC0);
  sub_22B7DC138();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v35);
  *&v0[v34] = sub_22B7DBD88();
  v8 = OBJC_IVAR___IMDSyncedSettingsServiceManager_sharedOTPDefaults;
  v9 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v10 = sub_22B7DB678();
  v11 = [v9 initWithSuiteName_];

  *&v1[v8] = v11;
  if (qword_28141F060 != -1)
  {
    swift_once();
  }

  v12 = qword_28141F070;
  *&v1[OBJC_IVAR___IMDSyncedSettingsServiceManager_remoteStorageDelegate] = qword_28141F070;
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 sharedInstance];
  *&v1[OBJC_IVAR___IMDSyncedSettingsServiceManager_localStorageDelegate] = v15;
  v16 = [objc_allocWithZone(MEMORY[0x277D2BA60]) init];
  *&v1[OBJC_IVAR___IMDSyncedSettingsServiceManager_watchSyncDelegate] = v16;
  v17 = sub_22B7DB6A8();
  v18 = &v1[OBJC_IVAR___IMDSyncedSettingsServiceManager_localDomain];
  *v18 = v17;
  v18[1] = v19;
  v20 = sub_22B7DB6A8();
  v21 = &v1[OBJC_IVAR___IMDSyncedSettingsServiceManager_remoteDomain];
  *v21 = v20;
  v21[1] = v22;
  v23 = [objc_opt_self() sharedInstance];
  *&v1[OBJC_IVAR___IMDSyncedSettingsServiceManager_syncConfigurationDelegate] = v23;
  v36.receiver = v1;
  v36.super_class = IMDSyncedSettingsServiceManager;
  v24 = objc_msgSendSuper2(&v36, sel_init);
  v25 = objc_opt_self();
  v26 = v24;
  v27 = [v25 defaultCenter];
  [v27 addObserver:v26 selector:sel_handleDidChangeWithNotification_ name:*MEMORY[0x277CCA7C0] object:*&v26[OBJC_IVAR___IMDSyncedSettingsServiceManager_remoteStorageDelegate]];

  v28 = [v25 defaultCenter];
  [v28 addObserver:v26 selector:sel_cloudkitStateEnabledReturnedWithNotification_ name:@"com.apple.IMDaemonCore.IMDCKUtilities.MiCEnabledStateReturned" object:0];

  v29 = CFNotificationCenterGetDarwinNotifyCenter();
  v30 = sub_22B7DB678();
  CFNotificationCenterAddObserver(v29, v26, sub_22B74320C, v30, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  [v26 migrateNotificationSettingsV1toV2IfNecessary];
  v31 = *&v26[OBJC_IVAR___IMDSyncedSettingsServiceManager_syncConfigurationDelegate];
  if (v31 && [v31 cloudKitSyncingEnabled])
  {
    sub_22B743C80(0);
  }

  return v26;
}

void sub_22B74320C(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2 && a3)
  {
    v3 = a2;
    [v3 npsDefaultsChanged];
  }
}

char *sub_22B743280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v38 = a8;
  v39 = a5;
  v40 = a6;
  v41 = a7;
  v44 = a3;
  v45 = a4;
  v42 = a1;
  v43 = a2;
  v37 = sub_22B7DBD48();
  v10 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22B7DBD38();
  MEMORY[0x28223BE20](v13);
  v14 = sub_22B7DB398();
  MEMORY[0x28223BE20](v14 - 8);
  v36 = OBJC_IVAR___IMDSyncedSettingsServiceManager_ubiquitousStoreQueue;
  v15 = sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  v35[1] = "Local value exists";
  v35[2] = v15;
  sub_22B7DACD8();
  v47 = MEMORY[0x277D84F90];
  sub_22B747690(&unk_28141F220, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_22B6F0AD4(&qword_27D8CEA10, &qword_22B7F9DC0);
  sub_22B4D1110(&qword_28141F2C0, &qword_27D8CEA10, &qword_22B7F9DC0);
  v16 = v38;
  sub_22B7DC138();
  (*(v10 + 104))(v12, *MEMORY[0x277D85260], v37);
  v18 = v39;
  v17 = v40;
  v19 = v41;
  *&v8[v36] = sub_22B7DBD88();
  v20 = OBJC_IVAR___IMDSyncedSettingsServiceManager_sharedOTPDefaults;
  v21 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v22 = sub_22B7DB678();
  v23 = [v21 initWithSuiteName_];

  *&v9[v20] = v23;
  v24 = &v9[OBJC_IVAR___IMDSyncedSettingsServiceManager_localDomain];
  v25 = v43;
  *v24 = v42;
  v24[1] = v25;
  v26 = &v9[OBJC_IVAR___IMDSyncedSettingsServiceManager_remoteDomain];
  v27 = v45;
  *v26 = v44;
  v26[1] = v27;
  *&v9[OBJC_IVAR___IMDSyncedSettingsServiceManager_localStorageDelegate] = v18;
  *&v9[OBJC_IVAR___IMDSyncedSettingsServiceManager_remoteStorageDelegate] = v17;
  *&v9[OBJC_IVAR___IMDSyncedSettingsServiceManager_watchSyncDelegate] = v19;
  *&v9[OBJC_IVAR___IMDSyncedSettingsServiceManager_syncConfigurationDelegate] = v16;
  v46.receiver = v9;
  v46.super_class = IMDSyncedSettingsServiceManager;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v28 = objc_msgSendSuper2(&v46, sel_init);
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 defaultCenter];
  [v31 addObserver:v30 selector:sel_handleDidChangeWithNotification_ name:*MEMORY[0x277CCA7C0] object:*&v30[OBJC_IVAR___IMDSyncedSettingsServiceManager_remoteStorageDelegate]];

  v32 = [v29 defaultCenter];
  [v32 addObserver:v30 selector:sel_cloudkitStateEnabledReturnedWithNotification_ name:@"com.apple.IMDaemonCore.IMDCKUtilities.MiCEnabledStateReturned" object:0];

  [v30 migrateNotificationSettingsV1toV2IfNecessary];
  v33 = *&v30[OBJC_IVAR___IMDSyncedSettingsServiceManager_syncConfigurationDelegate];
  if (v33)
  {
    if ([v33 cloudKitSyncingEnabled])
    {
      sub_22B743C80(0);
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v30;
}

void sub_22B7437F0(__n128 a1)
{
  v2 = v1;
  v3 = 0;
  v78 = OBJC_IVAR___IMDSyncedSettingsServiceManager_localStorageDelegate;
  a1.n128_u64[0] = 136315138;
  v74 = a1;
  do
  {
    v11 = *(&unk_283F1B9D0 + v3 + 32);
    sub_22B7DBDD8();
    if (v12)
    {
      v13 = v12;
      v14 = *(v2 + v78);
      if (!v14)
      {
        v81 = 0u;
        v82 = 0u;
        sub_22B4D0D64(&v81, &unk_27D8CCDC0, &qword_22B7F9580);
        v81 = 0u;
        v82 = 0u;
        v13, v4, v5, v6, v7, v8, v9, v10, v74.n128_u64[0], v74.n128_u64[1];
        goto LABEL_3;
      }

      v15 = sub_22B7DB678();
      v16 = sub_22B7DB678();
      v17 = [v14 getValueFromDomain:v15 forKey:v16];

      if (v17)
      {
        sub_22B7DC118();
        swift_unknownObjectRelease();
      }

      else
      {
        v79 = 0u;
        v80 = 0u;
      }

      v81 = v79;
      v82 = v80;
      if (!*(&v80 + 1))
      {
        sub_22B4D0D64(&v81, &unk_27D8CCDC0, &qword_22B7F9580);
LABEL_15:
        v25 = sub_22B7DB678();
        MEMORY[0x231895740](v11);
        v27 = v26;
        v28 = sub_22B7DB678();
        v27, v29, v30, v31, v32, v33, v34, v35, v74.n128_u64[0], v74.n128_u64[1];
        v36 = [v14 getValueFromDomain:v25 forKey:v28];

        if (v36)
        {
          sub_22B7DC118();
          swift_unknownObjectRelease();
        }

        else
        {
          v79 = 0u;
          v80 = 0u;
        }

        v81 = v79;
        v82 = v80;
        if (*(&v80 + 1))
        {
          if (qword_28141F3E8 != -1)
          {
            swift_once();
          }

          v37 = sub_22B7DB2B8();
          sub_22B4CFA74(v37, qword_2814226E0);
          v38 = sub_22B7DB298();
          v39 = sub_22B7DBCB8();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v77 = swift_slowAlloc();
            *&v79 = v77;
            *v40 = v75;
            v41 = MEMORY[0x231895740](v11);
            v43 = v42;
            v44 = v2;
            v45 = sub_22B4CFAAC(v41, v42, &v79);
            v43, v46, v47, v48, v49, v50, v51, v52, v75, v76;
            *(v40 + 4) = v45;
            v2 = v44;
            _os_log_impl(&dword_22B4CC000, v38, v39, "Performing %s migration", v40, 0xCu);
            sub_22B4CFB78(v77);
            MEMORY[0x231898D60](v77, -1, -1);
            MEMORY[0x231898D60](v40, -1, -1);
          }

          v53 = sub_22B7DB678();
          MEMORY[0x231895740](v11);
          v55 = v54;
          v56 = sub_22B7DB678();
          v55, v57, v58, v59, v60, v61, v62, v63, v75, v76;
          [v14 setValue:0 forDomain:v53 forKey:v56];
        }

        v64 = sub_22B7DBB38();
        v65 = sub_22B7DB678();
        v66 = sub_22B7DB678();
        v13, v67, v68, v69, v70, v71, v72, v73, v75, v76;
        [v14 setValue:v64 forDomain:v65 forKey:v66];

LABEL_3:
        sub_22B4D0D64(&v81, &unk_27D8CCDC0, &qword_22B7F9580);
        goto LABEL_4;
      }

      if (!swift_dynamicCast() || v79 <= 1)
      {
        goto LABEL_15;
      }

      v13, v18, v19, v20, v21, v22, v23, v24, v74.n128_u64[0], v74.n128_u64[1];
    }

LABEL_4:
    v3 += 8;
  }

  while (v3 != 48);
}

uint64_t sub_22B743C80(uint64_t a1)
{
  if (qword_28141F3E8 != -1)
  {
    swift_once();
  }

  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_2814226E0);
  v3 = sub_22B7DB298();
  v4 = sub_22B7DBCB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_22B4CC000, v3, v4, "Syncronizing Local Store.", v5, 2u);
    MEMORY[0x231898D60](v5, -1, -1);
  }

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a1;

  sub_22B745E7C(sub_22B747280, v7);
}

id sub_22B743DF4()
{
  if (qword_28141F3E8 != -1)
  {
    swift_once();
  }

  v1 = sub_22B7DB2B8();
  sub_22B4CFA74(v1, qword_2814226E0);
  v2 = v0;
  v3 = sub_22B7DB298();
  v4 = sub_22B7DBCB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    v6 = *(&v2->isa + OBJC_IVAR___IMDSyncedSettingsServiceManager_syncConfigurationDelegate);
    v7 = v6 && ([v6 cloudKitSyncingEnabled] & 1) != 0;
    *(v5 + 4) = v7;

    _os_log_impl(&dword_22B4CC000, v3, v4, "cloudkitStateEnabledReturned [%{BOOL}d] setting up...", v5, 8u);
    MEMORY[0x231898D60](v5, -1, -1);
  }

  else
  {

    v3 = v2;
  }

  [v2 migrateNotificationSettingsV1toV2IfNecessary];
  result = *(&v2->isa + OBJC_IVAR___IMDSyncedSettingsServiceManager_syncConfigurationDelegate);
  if (result)
  {
    result = [result cloudKitSyncingEnabled];
    if (result)
    {
      return sub_22B743C80(0);
    }
  }

  return result;
}

id sub_22B743F78()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 removeObserver:v0 name:*MEMORY[0x277CCA7C0] object:*&v0[OBJC_IVAR___IMDSyncedSettingsServiceManager_remoteStorageDelegate]];

  v3 = [v1 defaultCenter];
  [v3 removeObserver:v0 name:@"com.apple.IMDaemonCore.IMDCKUtilities.MiCEnabledStateReturned" object:0];

  v5.receiver = v0;
  v5.super_class = IMDSyncedSettingsServiceManager;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void sub_22B744130(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + OBJC_IVAR___IMDSyncedSettingsServiceManager_syncConfigurationDelegate);
  if (v5 && [v5 cloudKitSyncingEnabled])
  {
    v6 = *(v2 + OBJC_IVAR___IMDSyncedSettingsServiceManager_remoteStorageDelegate);
    if (v6)
    {
      sub_22B7DBDF8();
      v8 = v7;
      v9 = sub_22B7DB678();
      v8, v10, v11, v12, v13, v14, v15, v16, v65, v68;
      v17 = [v6 objectForKey_];

      if (!v17)
      {
LABEL_5:
        v66 = 0u;
        v70 = 0u;
        goto LABEL_21;
      }

LABEL_20:
      sub_22B7DC118();
      swift_unknownObjectRelease();
LABEL_21:
      v71[0] = v66;
      v71[1] = v70;
      if (*(&v70 + 1))
      {
        sub_22B4D7F04(v71, a2);
        return;
      }

      goto LABEL_23;
    }

    goto LABEL_23;
  }

  if (a1 != 2)
  {
LABEL_18:
    v52 = *(v2 + OBJC_IVAR___IMDSyncedSettingsServiceManager_localStorageDelegate);
    if (v52)
    {
      v53 = sub_22B7DB678();
      MEMORY[0x231895740](a1);
      v55 = v54;
      v56 = sub_22B7DB678();
      v55, v57, v58, v59, v60, v61, v62, v63, v65, v68;
      v64 = [v52 getValueFromDomain:v53 forKey:v56];

      if (!v64)
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }

LABEL_23:
    sub_22B7DBE18();
    return;
  }

  v18 = *(v2 + OBJC_IVAR___IMDSyncedSettingsServiceManager_sharedOTPDefaults);
  if (!v18)
  {
    v47 = v2;
    if (qword_28141F3E8 != -1)
    {
      swift_once();
    }

    v48 = sub_22B7DB2B8();
    sub_22B4CFA74(v48, qword_2814226E0);
    v49 = sub_22B7DB298();
    v50 = sub_22B7DBC98();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_22B4CC000, v49, v50, "SyncedSettingsManager sharedOTPDefaults is unexpectedly nil", v51, 2u);
      MEMORY[0x231898D60](v51, -1, -1);
    }

    v2 = v47;
    goto LABEL_18;
  }

  v19 = v18;
  MEMORY[0x231895740](2);
  v21 = v20;
  v22 = sub_22B7DB678();
  v21, v23, v24, v25, v26, v27, v28, v29, v65, v68;
  v30 = [v19 integerForKey_];

  if (qword_28141F3E8 != -1)
  {
    swift_once();
  }

  v31 = sub_22B7DB2B8();
  sub_22B4CFA74(v31, qword_2814226E0);
  v32 = sub_22B7DB298();
  v33 = sub_22B7DBCB8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v71[0] = v35;
    *v34 = 136315394;
    v36 = MEMORY[0x231895740](2);
    v38 = v37;
    v39 = sub_22B4CFAAC(v36, v37, v71);
    v38, v40, v41, v42, v43, v44, v45, v46, v67, v69;
    *(v34 + 4) = v39;
    *(v34 + 12) = 2048;
    *(v34 + 14) = v30;
    _os_log_impl(&dword_22B4CC000, v32, v33, "SyncedSettingsManager processing request of OTP(%s) and returning: %ld", v34, 0x16u);
    sub_22B4CFB78(v35);
    MEMORY[0x231898D60](v35, -1, -1);
    MEMORY[0x231898D60](v34, -1, -1);
  }

  *(a2 + 24) = MEMORY[0x277D83B88];
  *a2 = v30;
}

uint64_t sub_22B744638(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___IMDSyncedSettingsServiceManager_localStorageDelegate);
  if (v3)
  {
    v4 = sub_22B7DB678();
    MEMORY[0x231895740](a1);
    v6 = v5;
    v7 = sub_22B7DB678();
    v6, v8, v9, v10, v11, v12, v13, v14, v44, *(&v44 + 1);
    v15 = [v3 getValueFromDomain:v4 forKey:v7];

    if (v15)
    {
      sub_22B7DC118();
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = 0u;
      v47 = 0u;
    }

    v48 = v44;
    v49 = v47;
    if (*(&v47 + 1))
    {
      v16 = 1;
      goto LABEL_9;
    }
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
  }

  v16 = 0;
LABEL_9:
  sub_22B4D0D64(&v48, &unk_27D8CCDC0, &qword_22B7F9580);
  if (qword_28141F3E8 != -1)
  {
    swift_once();
  }

  v17 = sub_22B7DB2B8();
  sub_22B4CFA74(v17, qword_2814226E0);
  v18 = sub_22B7DB298();
  v19 = sub_22B7DBCB8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v48 = v21;
    *v20 = 136315394;
    if (v16)
    {
      v22 = 0xD000000000000012;
    }

    else
    {
      v22 = 0xD00000000000001ALL;
    }

    if (v16)
    {
      v23 = "Local value does not exist";
    }

    else
    {
      v23 = "syncConfigurationDelegate";
    }

    v24 = sub_22B4CFAAC(v22, (v23 | 0x8000000000000000), &v48);
    (v23 | 0x8000000000000000), v25, v26, v27, v28, v29, v30, v31, v44, *(&v44 + 1);
    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    v32 = sub_22B7DBE08();
    v34 = v33;
    v35 = sub_22B4CFAAC(v32, v33, &v48);
    v34, v36, v37, v38, v39, v40, v41, v42, v45, v46;
    *(v20 + 14) = v35;
    _os_log_impl(&dword_22B4CC000, v18, v19, "%s for key: %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v21, -1, -1);
    MEMORY[0x231898D60](v20, -1, -1);
  }

  return v16;
}

id sub_22B7448FC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22B7DB348();
  v68 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v66 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_22B7DB398();
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v64 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28141F3E8 != -1)
  {
    swift_once();
  }

  v9 = sub_22B7DB2B8();
  sub_22B4CFA74(v9, qword_2814226E0);
  sub_22B4D1F68(a1, aBlock);
  v10 = sub_22B7DB298();
  v11 = sub_22B7DBCB8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v69 = v13;
    *v12 = 136315394;
    sub_22B4D1F68(aBlock, v71);
    v14 = sub_22B7DB6C8();
    v16 = v15;
    sub_22B4CFB78(aBlock);
    v17 = sub_22B4CFAAC(v14, v16, &v69);
    v16, v18, v19, v20, v21, v22, v23, v24, v64, v65;
    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    v25 = sub_22B7DBE08();
    v27 = v26;
    v28 = sub_22B4CFAAC(v25, v26, &v69);
    v27, v29, v30, v31, v32, v33, v34, v35, v64, v65;
    *(v12 + 14) = v28;
    _os_log_impl(&dword_22B4CC000, v10, v11, "Applying Setting Value %s to local key: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v13, -1, -1);
    MEMORY[0x231898D60](v12, -1, -1);
  }

  else
  {

    sub_22B4CFB78(aBlock);
  }

  v36 = MEMORY[0x231895740](a2);
  v38 = v37;
  sub_22B744EC8(a1, v36, v37);
  v38, v39, v40, v41, v42, v43, v44, v45, v64, v65;
  v46 = *(v3 + OBJC_IVAR___IMDSyncedSettingsServiceManager_syncConfigurationDelegate);
  if (v46 && [v46 cloudKitSyncingEnabled])
  {
    v47 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_22B4D1F68(a1, v71);
    v48 = swift_allocObject();
    *(v48 + 16) = v47;
    sub_22B4D7F04(v71, (v48 + 24));
    *(v48 + 56) = a2;
    aBlock[4] = sub_22B7472C4;
    aBlock[5] = v48;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B4D22C0;
    aBlock[3] = &unk_283F1DB18;
    v49 = _Block_copy(aBlock);

    v50 = v64;
    sub_22B7DACD8();
    v69 = MEMORY[0x277D84F90];
    sub_22B747690(&qword_28141F340, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_22B6F0AD4(&unk_27D8CF580, &unk_22B7FB880);
    sub_22B4D1110(&qword_28141F2E0, &unk_27D8CF580, &unk_22B7FB880);
    v51 = v66;
    sub_22B7DC138();
    MEMORY[0x2318956F0](0, v50, v51, v49);
    _Block_release(v49);
    (*(v68 + 8))(v51, v6);
    (*(v65 + 1))(v50, v67);
  }

  result = [objc_opt_self() sharedProvider];
  if (result)
  {
    v53 = [result broadcasterForSyncedSettingsListeners];
    swift_unknownObjectRelease();
    sub_22B6F0AD4(&unk_27D8CEA00, &qword_22B7F98C8);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_22B7F93B0;
    *(v54 + 32) = sub_22B7DBDF8();
    *(v54 + 40) = v55;
    v56 = sub_22B7DB8F8();
    v54, v57, v58, v59, v60, v61, v62, v63, v64, v65;
    [v53 didUpdateSettingsKeys_];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_22B744EC8(void *a1, void *a2, IMDScheduledMessageCoordinator *a3)
{

  sub_22B7DBDB8();
  if (v7)
  {
    if (qword_28141F3E8 != -1)
    {
      swift_once();
    }

    v8 = sub_22B7DB2B8();
    sub_22B4CFA74(v8, qword_2814226E0);

    oslogb = sub_22B7DB298();
    v9 = sub_22B7DBC98();
    a3, v10, v11, v12, v13, v14, v15, v16, oslogb, v49;
    if (os_log_type_enabled(osloga, v9))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v49 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_22B4CFAAC(a2, a3, &v49);
      _os_log_impl(&dword_22B4CC000, osloga, v9, "SyncedSettingsManager tried to update a local synced setting with an unknown key: %s", v17, 0xCu);
      sub_22B4CFB78(v18);
      MEMORY[0x231898D60](v18, -1, -1);
      MEMORY[0x231898D60](v17, -1, -1);

      return;
    }

    goto LABEL_20;
  }

  v20 = MEMORY[0x231895740](2);
  v26 = v19;
  if (v20 == a2 && v19 == a3)
  {
    v19, v19, v20, v21, v22, v23, v24, v25, oslog, v49;
LABEL_10:
    v35 = *(v3 + OBJC_IVAR___IMDSyncedSettingsServiceManager_sharedOTPDefaults);
    if (v35)
    {
      sub_22B4D2BCC(a1, a1[3]);
      v36 = v35;
      v37 = sub_22B7DC508();
      v38 = sub_22B7DB678();
      [v36 setValue:v37 forKey:v38];

      swift_unknownObjectRelease();
    }

    else
    {
      v39 = v3;
      if (qword_28141F3E8 != -1)
      {
        swift_once();
      }

      v40 = sub_22B7DB2B8();
      sub_22B4CFA74(v40, qword_2814226E0);
      v38 = sub_22B7DB298();
      v41 = sub_22B7DBC98();
      if (os_log_type_enabled(v38, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_22B4CC000, v38, v41, "SyncedSettingsManager sharedOTPDefaults is unexpectedly nil", v42, 2u);
        MEMORY[0x231898D60](v42, -1, -1);
      }

      v3 = v39;
    }

    goto LABEL_18;
  }

  v27 = sub_22B7DC518();
  v26, v28, v29, v30, v31, v32, v33, v34, oslog, v49;
  if (v27)
  {
    goto LABEL_10;
  }

LABEL_18:
  v43 = *(v3 + OBJC_IVAR___IMDSyncedSettingsServiceManager_localStorageDelegate);
  if (!v43)
  {
    return;
  }

  sub_22B4D2BCC(a1, a1[3]);
  v44 = sub_22B7DC508();
  v45 = sub_22B7DB678();
  osloga = sub_22B7DB678();
  [v43 setValue:v44 forDomain:v45 forKey:osloga];
  swift_unknownObjectRelease();

LABEL_20:
}

void sub_22B745268(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_28141F3E8 != -1)
    {
      swift_once();
    }

    v7 = sub_22B7DB2B8();
    sub_22B4CFA74(v7, qword_2814226E0);
    sub_22B4D1F68(a2, v72);
    v8 = sub_22B7DB298();
    v9 = sub_22B7DBCB8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v71 = v11;
      *v10 = 136315394;
      sub_22B4D1F68(v72, &v69);
      v12 = sub_22B7DB6C8();
      v14 = v13;
      sub_22B4CFB78(v72);
      v15 = sub_22B4CFAAC(v12, v14, &v71);
      v14, v16, v17, v18, v19, v20, v21, v22, v69, v70;
      *(v10 + 4) = v15;
      *(v10 + 12) = 2080;
      v23 = sub_22B7DBE08();
      v25 = v24;
      v26 = sub_22B4CFAAC(v23, v24, &v71);
      v25, v27, v28, v29, v30, v31, v32, v33, v69, v70;
      *(v10 + 14) = v26;
      _os_log_impl(&dword_22B4CC000, v8, v9, "Applying Setting Value %s to remote key: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v11, -1, -1);
      MEMORY[0x231898D60](v10, -1, -1);
    }

    else
    {

      sub_22B4CFB78(v72);
    }

    v34 = OBJC_IVAR___IMDSyncedSettingsServiceManager_remoteStorageDelegate;
    v35 = *&v6[OBJC_IVAR___IMDSyncedSettingsServiceManager_remoteStorageDelegate];
    if (v35)
    {
      sub_22B4D2BCC(a2, a2[3]);
      v36 = sub_22B7DC508();
      sub_22B7DBDF8();
      v38 = v37;
      v39 = sub_22B7DB678();
      v38, v40, v41, v42, v43, v44, v45, v46, v69, v70;
      [v35 setObject:v36 forKey:v39];
      swift_unknownObjectRelease();

      v47 = *&v6[v34];
      if (v47)
      {
        [v47 synchronize];
      }
    }

    v48 = *&v6[OBJC_IVAR___IMDSyncedSettingsServiceManager_watchSyncDelegate];
    if (v48)
    {
      v49 = *&v6[OBJC_IVAR___IMDSyncedSettingsServiceManager_localDomain + 8];

      v50 = sub_22B7DB678();
      v49, v51, v52, v53, v54, v55, v56, v57, v69, v70;
      sub_22B6F0AD4(&unk_27D8CEA00, &qword_22B7F98C8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22B7F93B0;
      *(inited + 32) = MEMORY[0x231895740](a3);
      *(inited + 40) = v59;
      v60 = sub_22B7179DC(inited);
      swift_setDeallocating();
      sub_22B74763C(inited + 32);
      v61 = sub_22B7DBAE8();
      v60, v62, v63, v64, v65, v66, v67, v68, v69, v70;
      [v48 synchronizeUserDefaultsDomain:v50 keys:v61];
    }
  }
}

Swift::Bool __swiftcall IMDSyncedSettingsServiceManager.isValidLocalStorageKey(for:)(Swift::String a1)
{

  sub_22B7DBDB8();
  return (v1 & 1) == 0;
}

Swift::Bool __swiftcall IMDSyncedSettingsServiceManager.isValidRemoteStorageKey(for:)(Swift::String a1)
{

  sub_22B7DBDE8();
  return (v1 & 1) == 0;
}

void sub_22B7456C0(uint64_t a1, uint64_t a2, IMDScheduledMessageCoordinator *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v140 = a3;

    v6 = a1 + 64;
    v7 = 1 << *(a1 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(a1 + 64);

    swift_beginAccess();
    swift_beginAccess();
    v10 = 0;
    v11 = (v7 + 63) >> 6;
    v145 = a1;
    while (v9)
    {
      v19 = v10;
LABEL_16:
      v22 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v23 = v22 | (v19 << 6);
      v24 = (*(a1 + 48) + 16 * v23);
      v26 = *v24;
      v25 = v24[1];
      sub_22B4D1F68(*(a1 + 56) + 32 * v23, v149);
      *&v150 = v26;
      *(&v150 + 1) = v25;
      sub_22B4D7F04(v149, &v151);

LABEL_17:
      v153 = v150;
      v154[0] = v151;
      v154[1] = v152;
      v27 = *(&v150 + 1);
      if (!*(&v150 + 1))
      {

        v104 = v140;
        if (v140)
        {
          if (qword_28141F3E8 != -1)
          {
            swift_once();
          }

          v105 = sub_22B7DB2B8();
          sub_22B4CFA74(v105, qword_2814226E0);

          v106 = sub_22B7DB298();
          v107 = sub_22B7DBC88();
          v140, v108, v109, v110, v111, v112, v113, v114, v135, v140;
          if (os_log_type_enabled(v106, v107))
          {
            v115 = swift_slowAlloc();
            v116 = swift_slowAlloc();
            *&v153 = v116;
            *v115 = 136315138;
            v117 = MEMORY[0x2318952A0](v104, MEMORY[0x277D837D0]);
            v119 = v118;
            v120 = sub_22B4CFAAC(v117, v118, &v153);
            v119, v121, v122, v123, v124, v125, v126, v127, v139, v144;
            *(v115 + 4) = v120;
            _os_log_impl(&dword_22B4CC000, v106, v107, "changedKeys: %s", v115, 0xCu);
            sub_22B4CFB78(v116);
            MEMORY[0x231898D60](v116, -1, -1);
            MEMORY[0x231898D60](v115, -1, -1);
          }

          v128 = [objc_opt_self() sharedProvider];
          if (v128)
          {
            v129 = [v128 broadcasterForSyncedSettingsListeners];
            swift_unknownObjectRelease();
            v130 = sub_22B7DB8F8();
            [v129 didUpdateSettingsKeys_];

            swift_unknownObjectRelease();
          }
        }

        return;
      }

      v28 = v153;
      sub_22B4D7F04(v154, &v150);

      v29 = sub_22B7DBDE8();
      if (v30)
      {
        sub_22B4CFB78(&v150);
        v27, v12, v13, v14, v15, v16, v17, v18, v135, v140;
      }

      else
      {
        v31 = v29;
        v32 = swift_unknownObjectWeakLoadStrong();
        if (v32)
        {

          if (qword_28141F3E8 != -1)
          {
            swift_once();
          }

          v40 = sub_22B7DB2B8();
          sub_22B4CFA74(v40, qword_2814226E0);
          sub_22B4D1F68(&v150, v149);

          v41 = sub_22B7DB298();
          v42 = sub_22B7DBC88();
          v27, v43, v44, v45, v46, v47, v48, v49, v135, v140;
          v146 = v31;
          if (os_log_type_enabled(v41, v42))
          {
            v50 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            v148 = v51;
            *v50 = 136315394;
            v52 = sub_22B4CFAAC(v28, v27, &v148);
            v27, v53, v54, v55, v56, v57, v58, v59, v136, v141;
            *(v50 + 4) = v52;
            *(v50 + 12) = 2080;
            sub_22B4D1F68(v149, v147);
            v60 = sub_22B7DB6C8();
            v62 = v61;
            sub_22B4CFB78(v149);
            v63 = sub_22B4CFAAC(v60, v62, &v148);
            v62, v64, v65, v66, v67, v68, v69, v70, v137, v142;
            *(v50 + 14) = v63;
            _os_log_impl(&dword_22B4CC000, v41, v42, "%s : %s}", v50, 0x16u);
            swift_arrayDestroy();
            v71 = v51;
            a1 = v145;
            MEMORY[0x231898D60](v71, -1, -1);
            MEMORY[0x231898D60](v50, -1, -1);
          }

          else
          {

            v27, v72, v73, v74, v75, v76, v77, v78, v136, v141;
            sub_22B4CFB78(v149);
          }

          v79 = swift_unknownObjectWeakLoadStrong();
          if (v79)
          {
            v80 = v79;
            v81 = MEMORY[0x231895740](v146);
            v83 = v82;
            sub_22B744EC8(&v150, v81, v82);

            v83, v84, v85, v86, v87, v88, v89, v90, v138, v143;
          }

          v91 = [objc_opt_self() defaultCenter];
          v92 = sub_22B7DBE28();
          sub_22B6F0AD4(&unk_27D8CE9F0, &qword_22B7F98C0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_22B7F93B0;
          *&v149[0] = 0x6E6F73616572;
          *(&v149[0] + 1) = 0xE600000000000000;
          v94 = MEMORY[0x277D837D0];
          sub_22B7DC248();
          *(inited + 96) = v94;
          *(inited + 72) = 0x796C65746F6D6552;
          *(inited + 80) = 0xEB00000000746553;
          v95 = sub_22B4D7D1C(inited);
          swift_setDeallocating();
          sub_22B4D0D64(inited + 32, &unk_27D8CD7D0, &qword_22B7FA3F0);
          v96 = sub_22B7DB568();
          v95, v97, v98, v99, v100, v101, v102, v103, v138, v143;
          [v91 postNotificationName:v92 object:0 userInfo:v96];

          sub_22B4CFB78(&v150);
        }

        else
        {
          v27, v33, v34, v35, v36, v37, v38, v39, v135, v140;
          sub_22B4CFB78(&v150);
        }
      }
    }

    if (v11 <= v10 + 1)
    {
      v20 = v10 + 1;
    }

    else
    {
      v20 = v11;
    }

    v21 = v20 - 1;
    while (1)
    {
      v19 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v19 >= v11)
      {
        v9 = 0;
        v151 = 0u;
        v152 = 0u;
        v10 = v21;
        v150 = 0u;
        goto LABEL_17;
      }

      v9 = *(v6 + 8 * v19);
      ++v10;
      if (v9)
      {
        v10 = v19;
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

  if (qword_28141F3E8 != -1)
  {
LABEL_43:
    swift_once();
  }

  v131 = sub_22B7DB2B8();
  sub_22B4CFA74(v131, qword_2814226E0);
  v132 = sub_22B7DB298();
  v133 = sub_22B7DBC98();
  if (os_log_type_enabled(v132, v133))
  {
    v134 = swift_slowAlloc();
    *v134 = 0;
    _os_log_impl(&dword_22B4CC000, v132, v133, "self is nil in fetchUbiqitousSettings completion handler.", v134, 2u);
    MEMORY[0x231898D60](v134, -1, -1);
  }
}