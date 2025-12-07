uint64_t sub_29E6684EC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_29E6685E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29E66A9A0;

  return sub_29E6683F4(a1, v4);
}

uint64_t sub_29E66869C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29E605728;

  return sub_29E6683F4(a1, v4);
}

uint64_t sub_29E668754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = a3;
  v4[27] = v3;
  v4[24] = a1;
  v4[25] = a2;
  v4[28] = swift_getObjectType();
  v5 = sub_29E752098();
  v4[29] = v5;
  v4[30] = *(v5 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  sub_29E64C90C(0);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v6 = sub_29E753EA8();
  v4[38] = v6;
  v4[39] = *(v6 - 8);
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  sub_29E66A4B0(0);
  v4[44] = v7;
  v4[45] = *(v7 - 8);
  v4[46] = swift_task_alloc();
  v8 = sub_29E74ED28();
  v4[47] = v8;
  v4[48] = *(v8 - 8);
  v4[49] = swift_task_alloc();
  sub_29E66A680(0);
  v4[50] = v9;
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  sub_29E66A714(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  sub_29E7544C8();
  v4[59] = sub_29E7544B8();
  v11 = sub_29E754468();
  v4[60] = v11;
  v4[61] = v10;

  return MEMORY[0x2A1C73D48](sub_29E668ACC, v11, v10);
}

uint64_t sub_29E668ACC()
{
  v117 = v0;
  v1 = [*(*(v0 + 216) + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_baseDisplayType) graphSeriesForTimeScope_];
  *(v0 + 496) = v1;
  if (!v1)
  {

    sub_29E752068();
    v8 = sub_29E752088();
    v9 = sub_29E7546A8();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 256);
    v13 = *(v0 + 232);
    v12 = *(v0 + 240);
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v116 = v15;
      *v14 = 136446210;
      v16 = sub_29E755178();
      v18 = sub_29E6B9C90(v16, v17, &v116);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_29E5ED000, v8, v9, "[%{public}s] cannot update context item without a graph series", v14, 0xCu);
      sub_29E5FECBC(v15);
      MEMORY[0x29ED98410](v15, -1, -1);
      v19 = v14;
      v1 = 0;
      MEMORY[0x29ED98410](v19, -1, -1);
    }

    (*(v12 + 8))(v11, v13);
    v21 = *(v0 + 208);
    v20 = *(v0 + 216);
    v22 = *(v20 + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_itemProvider + 24);
    v23 = *(v20 + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_itemProvider + 32);
    sub_29E601938((v20 + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_itemProvider), v22);
    v24 = (*(v23 + 8))(MEMORY[0x29EDCA190], v21, 0, v22, v23);
    v25 = *(v20 + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_currentContextItem);
    *(v20 + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_currentContextItem) = v24;

    goto LABEL_27;
  }

  v2 = [*(v0 + 200) primaryGraphViewController];
  v3 = [v2 graphView];

  v4 = [v3 effectiveVisibleRangeActive];
  *(v0 + 504) = v4;

  v113 = v4;
  v5 = [v4 startDate];
  v115 = v1;
  if (v5)
  {
    v6 = v5;
    sub_29E74ECD8();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v27 = *(v0 + 456);
  v26 = *(v0 + 464);
  v28 = *(v0 + 416);
  v29 = *(v0 + 400);
  v31 = *(v0 + 376);
  v30 = *(v0 + 384);
  v32 = *(v30 + 56);
  v32(v26, v7, 1, v31);
  sub_29E74E828();
  v108 = v32;
  v32(v27, 0, 1, v31);
  v110 = v29;
  v33 = *(v29 + 48);
  v34 = MEMORY[0x29EDB9BC8];
  sub_29E66A778(v26, v28, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
  sub_29E66A778(v27, v28 + v33, &qword_2A1A7CFC0, v34);
  v35 = *(v30 + 48);
  if (v35(v28, 1, v31) == 1)
  {
    v36 = *(v0 + 464);
    v37 = *(v0 + 376);
    v38 = MEMORY[0x29EDB9BC8];
    sub_29E66A7F8(*(v0 + 456), &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
    sub_29E66A7F8(v36, &qword_2A1A7CFC0, v38);
    v39 = v35(v28 + v33, 1, v37);
    v40 = *(v0 + 416);
    if (v39 != 1)
    {
LABEL_23:
      sub_29E66A868(v40, sub_29E66A680);
      goto LABEL_24;
    }

    v107 = v35;
    sub_29E66A7F8(v40, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
    goto LABEL_14;
  }

  v41 = *(v0 + 376);
  sub_29E66A778(*(v0 + 416), *(v0 + 448), &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
  if (v35(v28 + v33, 1, v41) == 1)
  {
    v42 = (v0 + 464);
    v43 = (v0 + 456);
    v44 = (v0 + 416);
    v45 = (v0 + 448);
LABEL_22:
    v67 = *v44;
    v68 = *v45;
    v69 = *v42;
    v71 = *(v0 + 376);
    v70 = *(v0 + 384);
    v72 = MEMORY[0x29EDB9BC8];
    sub_29E66A7F8(*v43, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
    sub_29E66A7F8(v69, &qword_2A1A7CFC0, v72);
    (*(v70 + 8))(v68, v71);
    v40 = v67;
    goto LABEL_23;
  }

  v102 = *(v0 + 456);
  v103 = *(v0 + 464);
  v46 = *(v0 + 448);
  v105 = *(v0 + 416);
  v107 = v35;
  v48 = *(v0 + 384);
  v47 = *(v0 + 392);
  v49 = *(v0 + 376);
  (*(v48 + 32))(v47, v28 + v33, v49);
  sub_29E66A958(&qword_2A1858258, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE8]);
  v50 = sub_29E754108();
  v51 = *(v48 + 8);
  v51(v47, v49);
  v52 = MEMORY[0x29EDB9BC8];
  sub_29E66A7F8(v102, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
  sub_29E66A7F8(v103, &qword_2A1A7CFC0, v52);
  v51(v46, v49);
  sub_29E66A7F8(v105, &qword_2A1A7CFC0, v52);
  if (v50)
  {
LABEL_14:
    v53 = [v113 endDate];
    if (v53)
    {
      v54 = v53;
      sub_29E74ECD8();

      v55 = 0;
    }

    else
    {
      v55 = 1;
    }

    v57 = *(v0 + 432);
    v56 = *(v0 + 440);
    v58 = *(v0 + 408);
    v59 = *(v0 + 376);
    v108(v56, v55, 1, v59);
    sub_29E74E7F8();
    v108(v57, 0, 1, v59);
    v60 = *(v110 + 48);
    v61 = MEMORY[0x29EDB9BC8];
    sub_29E66A778(v56, v58, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
    sub_29E66A778(v57, v58 + v60, &qword_2A1A7CFC0, v61);
    if (v107(v58, 1, v59) == 1)
    {
      v62 = *(v0 + 440);
      v63 = *(v0 + 376);
      v64 = MEMORY[0x29EDB9BC8];
      sub_29E66A7F8(*(v0 + 432), &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
      sub_29E66A7F8(v62, &qword_2A1A7CFC0, v64);
      v65 = v107(v58 + v60, 1, v63);
      v40 = *(v0 + 408);
      if (v65 == 1)
      {
        sub_29E66A7F8(v40, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
LABEL_31:
        v95 = *(v0 + 384);
        v96 = *(v0 + 392);
        v97 = *(v0 + 376);
        v106 = *(v0 + 368);
        v98 = *(v0 + 360);
        v104 = *(v0 + 352);
        v112 = *(v0 + 200);
        v114 = *(v0 + 208);
        sub_29E74E828();
        v109 = sub_29E74EC98();
        *(v0 + 512) = v109;
        v99 = *(v95 + 8);
        v99(v96, v97);
        sub_29E74E7F8();
        v100 = sub_29E74EC98();
        *(v0 + 520) = v100;
        v99(v96, v97);
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 168;
        *(v0 + 24) = sub_29E6697B4;
        swift_continuation_init();
        *(v0 + 136) = v104;
        v101 = sub_29E5FEBF4((v0 + 112));
        sub_29E66A520(0);
        sub_29E66A61C();
        sub_29E754478();
        (*(v98 + 32))(v101, v106, v104);
        *(v0 + 80) = MEMORY[0x29EDCA5F8];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_29E667308;
        *(v0 + 104) = &unk_2A24FFC58;
        [v112 cachedDataForCustomGraphSeries:v115 timeScope:v114 resolution:0 startDate:v109 endDate:v100 completion:?];
        (*(v98 + 8))(v101, v104);

        return MEMORY[0x2A1C73CC0](v0 + 16);
      }

      goto LABEL_23;
    }

    v66 = *(v0 + 376);
    sub_29E66A778(*(v0 + 408), *(v0 + 424), &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
    if (v107(v58 + v60, 1, v66) != 1)
    {
      v87 = *(v0 + 432);
      v86 = *(v0 + 440);
      v88 = *(v0 + 424);
      v111 = *(v0 + 408);
      v89 = *(v0 + 384);
      v90 = *(v0 + 392);
      v91 = *(v0 + 376);
      (*(v89 + 32))(v90, v58 + v60, v91);
      sub_29E66A958(&qword_2A1858258, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE8]);
      v92 = sub_29E754108();
      v93 = *(v89 + 8);
      v93(v90, v91);
      v94 = MEMORY[0x29EDB9BC8];
      sub_29E66A7F8(v87, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
      sub_29E66A7F8(v86, &qword_2A1A7CFC0, v94);
      v93(v88, v91);
      sub_29E66A7F8(v111, &qword_2A1A7CFC0, v94);
      if (v92)
      {
        goto LABEL_31;
      }

      goto LABEL_24;
    }

    v42 = (v0 + 440);
    v43 = (v0 + 432);
    v44 = (v0 + 408);
    v45 = (v0 + 424);
    goto LABEL_22;
  }

LABEL_24:

  sub_29E752068();
  v73 = sub_29E752088();
  v74 = sub_29E7546C8();
  v75 = os_log_type_enabled(v73, v74);
  v76 = *(v0 + 264);
  v78 = *(v0 + 232);
  v77 = *(v0 + 240);
  if (v75)
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v116 = v80;
    *v79 = 136446210;
    v81 = sub_29E755178();
    v83 = sub_29E6B9C90(v81, v82, &v116);

    *(v79 + 4) = v83;
    _os_log_impl(&dword_29E5ED000, v73, v74, "[%{public}s] skipping update for out of range dates", v79, 0xCu);
    sub_29E5FECBC(v80);
    MEMORY[0x29ED98410](v80, -1, -1);
    MEMORY[0x29ED98410](v79, -1, -1);
  }

  v1 = v115;
  (*(v77 + 8))(v76, v78);
LABEL_27:

  v84 = *(v0 + 8);

  return v84(v1 != 0);
}

uint64_t sub_29E6697B4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 528) = v2;
  v3 = *(v1 + 488);
  v4 = *(v1 + 480);
  if (v2)
  {
    v5 = sub_29E66A0EC;
  }

  else
  {
    v5 = sub_29E6698E4;
  }

  return MEMORY[0x2A1C73D48](v5, v4, v3);
}

void *sub_29E6698E4()
{
  v73 = v0;
  v1 = v0[65];
  v2 = v0[64];

  v3 = v0[21];

  v4 = sub_29E6EEEBC(v3);

  if (v4)
  {
    if (v4 >> 62)
    {
      v5 = sub_29E754C98();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = MEMORY[0x29EDCA190];
    if (v5)
    {
      v72 = MEMORY[0x29EDCA190];
      sub_29E754E08();
      if ((v5 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_35;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = 0;
        do
        {
          v8 = v7 + 1;
          v9 = [MEMORY[0x29ED976A0]() userInfo];
          sub_29E751758();
          sub_29E754DE8();
          sub_29E754E18();
          sub_29E754E28();
          sub_29E754DF8();
          v7 = v8;
        }

        while (v5 != v8);
      }

      else
      {
        v11 = (v4 + 32);
        do
        {
          v12 = *v11++;
          v13 = [v12 userInfo];
          sub_29E754DE8();
          sub_29E754E18();
          sub_29E754E28();
          sub_29E754DF8();
          --v5;
        }

        while (v5);
      }

      v10 = v72;
    }

    else
    {

      v10 = MEMORY[0x29EDCA190];
    }

    v5 = sub_29E6EF030(v10);

    if (v5)
    {
      if (!(v5 >> 62))
      {
        v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
LABEL_17:
          v72 = v6;
          result = sub_29E6DBC1C(0, v14 & ~(v14 >> 63), 0);
          if (v14 < 0)
          {
            __break(1u);
            return result;
          }

          v16 = v72;
          v17 = v0[39];
          if ((v5 & 0xC000000000000001) != 0)
          {
            for (i = 0; i != v14; ++i)
            {
              MEMORY[0x29ED976A0](i, v5);
              sub_29E753ED8();
              sub_29E751758();
              v72 = v16;
              v20 = *(v16 + 16);
              v19 = *(v16 + 24);
              if (v20 >= v19 >> 1)
              {
                sub_29E6DBC1C((v19 > 1), v20 + 1, 1);
                v16 = v72;
              }

              v21 = v0[43];
              v22 = v0[38];
              *(v16 + 16) = v20 + 1;
              (*(v17 + 32))(v16 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v20, v21, v22);
            }
          }

          else
          {
            v36 = (v5 + 32);
            do
            {
              v37 = *v36;
              sub_29E753ED8();

              v72 = v16;
              v39 = *(v16 + 16);
              v38 = *(v16 + 24);
              if (v39 >= v38 >> 1)
              {
                sub_29E6DBC1C((v38 > 1), v39 + 1, 1);
                v16 = v72;
              }

              v40 = v0[40];
              v41 = v0[38];
              *(v16 + 16) = v39 + 1;
              (*(v17 + 32))(v16 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v39, v40, v41);
              ++v36;
              --v14;
            }

            while (v14);
          }

          goto LABEL_37;
        }

LABEL_36:

        v16 = MEMORY[0x29EDCA190];
LABEL_37:
        v42 = *(v16 + 16);
        if (v42)
        {
          v43 = v0[39];
          v70 = *(v43 + 16);
          v44 = *(v43 + 72);
          v67 = (*(v43 + 80) + 32) & ~*(v43 + 80);
          v45 = v16 + v67;
          v66 = (v43 + 8);
          v68 = (v43 + 32);
          v46 = MEMORY[0x29EDCA190];
          do
          {
            v47 = v0[37];
            v49 = v0[35];
            v48 = v0[36];
            v70(v0[42], v45, v0[38]);
            sub_29E753E88();
            sub_29E66A8F4(v47, v49);
            v50 = sub_29E64A574(v48, v49);
            sub_29E66A868(v48, sub_29E64C90C);
            sub_29E66A868(v47, sub_29E64C90C);
            if (v50)
            {
              v51 = *v68;
              (*v68)(v0[41], v0[42], v0[38]);
              v72 = v46;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_29E6DBC1C(0, *(v46 + 16) + 1, 1);
                v46 = v72;
              }

              v53 = *(v46 + 16);
              v52 = *(v46 + 24);
              if (v53 >= v52 >> 1)
              {
                sub_29E6DBC1C((v52 > 1), v53 + 1, 1);
                v46 = v72;
              }

              v54 = v0[41];
              v55 = v0[38];
              *(v46 + 16) = v53 + 1;
              v51(v46 + v67 + v53 * v44, v54, v55);
            }

            else
            {
              (*v66)(v0[42], v0[38]);
            }

            v45 += v44;
            --v42;
          }

          while (v42);
        }

        else
        {
          v46 = MEMORY[0x29EDCA190];
        }

        v57 = v0[62];
        v56 = v0[63];
        v58 = v0[26];
        v59 = v0[27];

        v60 = *(v59 + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_itemProvider + 24);
        v61 = *(v59 + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_itemProvider + 32);
        sub_29E601938((v59 + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_itemProvider), v60);
        v62 = (*(v61 + 8))(v46, v58, 0, v60, v61);

        v63 = *(v59 + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_currentContextItem);
        *(v59 + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_currentContextItem) = v62;

        v65 = 1;
        goto LABEL_50;
      }

LABEL_35:
      v14 = sub_29E754C98();
      if (v14)
      {
        goto LABEL_17;
      }

      goto LABEL_36;
    }
  }

  sub_29E752068();
  v23 = sub_29E752088();
  v24 = sub_29E7546A8();
  v25 = os_log_type_enabled(v23, v24);
  v26 = v0[62];
  v27 = v0[63];
  v28 = v0[34];
  v29 = v0[29];
  v30 = v0[30];
  if (v25)
  {
    v71 = v0[29];
    v69 = v0[34];
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v72 = v32;
    *v31 = 136446210;
    v33 = sub_29E755178();
    v35 = sub_29E6B9C90(v33, v34, &v72);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_29E5ED000, v23, v24, "[%{public}s] skipping update for incompatible chart points", v31, 0xCu);
    sub_29E5FECBC(v32);
    MEMORY[0x29ED98410](v32, -1, -1);
    MEMORY[0x29ED98410](v31, -1, -1);

    (*(v30 + 8))(v69, v71);
  }

  else
  {

    (*(v30 + 8))(v28, v29);
  }

  v65 = 0;
LABEL_50:

  v64 = v0[1];

  return v64(v65);
}

uint64_t sub_29E66A0EC()
{
  v30 = v0;
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v4 = *(v0 + 504);
  v3 = *(v0 + 512);

  swift_willThrow();

  sub_29E752068();
  v5 = v1;
  v6 = sub_29E752088();
  v7 = sub_29E7546A8();

  if (os_log_type_enabled(v6, v7))
  {
    v25 = *(v0 + 528);
    v26 = *(v0 + 496);
    v8 = *(v0 + 240);
    v27 = *(v0 + 232);
    v28 = *(v0 + 248);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29[0] = v10;
    *v9 = 136446466;
    v11 = sub_29E755178();
    v13 = sub_29E6B9C90(v11, v12, v29);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v14 = *(*(v0 + 152) - 8);
    swift_task_alloc();
    (*(v14 + 16))();
    v15 = sub_29E7541F8();
    v17 = v16;

    v18 = sub_29E6B9C90(v15, v17, v29);

    *(v9 + 14) = v18;
    _os_log_impl(&dword_29E5ED000, v6, v7, "[%{public}s] skipping update due to fetch error: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v10, -1, -1);
    MEMORY[0x29ED98410](v9, -1, -1);

    (*(v8 + 8))(v28, v27);
  }

  else
  {
    v19 = *(v0 + 528);
    v21 = *(v0 + 240);
    v20 = *(v0 + 248);
    v22 = *(v0 + 232);

    (*(v21 + 8))(v20, v22);
  }

  v23 = *(v0 + 8);

  return v23(0);
}

void sub_29E66A4B0(uint64_t a1)
{
  if (!qword_2A1858220)
  {
    sub_29E66A520(255);
    sub_29E66A61C();
    v1 = sub_29E7544A8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858220);
    }
  }
}

void sub_29E66A520(uint64_t a1)
{
  if (!qword_2A1858228)
  {
    sub_29E66A714(255, &qword_2A1858230, sub_29E66A5B8, MEMORY[0x29EDC9A40]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1858228);
    }
  }
}

unint64_t sub_29E66A5B8()
{
  result = qword_2A1858238;
  if (!qword_2A1858238)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1858238);
  }

  return result;
}

unint64_t sub_29E66A61C()
{
  result = qword_2A1A7BCD0;
  if (!qword_2A1A7BCD0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A7BCD0);
  }

  return result;
}

void sub_29E66A680(uint64_t a1)
{
  if (!qword_2A1858248)
  {
    sub_29E66A714(255, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1858248);
    }
  }
}

void sub_29E66A714(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E66A778(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29E66A714(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29E66A7F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E66A714(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E66A868(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E66A8F4(uint64_t a1, uint64_t a2)
{
  sub_29E64C90C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E66A958(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E66A9A4(uint64_t a1, int a2)
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

uint64_t sub_29E66A9EC(uint64_t result, int a2, int a3)
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

uint64_t sub_29E66AA88()
{
  sub_29E602E20(v0, v6);
  sub_29E602E20(v0 + 40, v5);
  type metadata accessor for SleepApneaPromotionDataSource(0);
  swift_allocObject();
  v1 = sub_29E711460(v5);
  sub_29E602E20(v6, v4);
  sub_29E6A4E28(v4, v1, 0);

  sub_29E5FECBC(v5);
  sub_29E5FECBC(v6);
  sub_29E66AB78();
  sub_29E750828();

  v2 = sub_29E750818();

  return v2;
}

unint64_t sub_29E66AB78()
{
  result = qword_2A1858260;
  if (!qword_2A1858260)
  {
    type metadata accessor for SleepApneaPromotionDataSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858260);
  }

  return result;
}

void sub_29E66AC88()
{
  v1 = OBJC_IVAR____TtC20SleepHealthAppPlugin26MicaAnimationContainerView_animationView;
  [*&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin26MicaAnimationContainerView_animationView] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v0[v1] setContentMode_];
  [*&v0[v1] setClipsToBounds_];
  v2 = [*&v0[v1] layer];
  [v2 setCornerRadius_];

  [v0 addSubview_];
  v3 = objc_opt_self();
  sub_29E6163F8();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29E7678B0;
  v5 = [*&v0[v1] topAnchor];
  v6 = [v0 layoutMarginsGuide];
  v7 = [v6 topAnchor];

  v8 = [v5 constraintEqualToAnchor_];
  *(v4 + 32) = v8;
  v9 = [*&v0[v1] leadingAnchor];
  v10 = [v0 layoutMarginsGuide];
  v11 = [v10 leadingAnchor];

  v12 = [v9 constraintEqualToAnchor_];
  *(v4 + 40) = v12;
  v13 = [*&v0[v1] bottomAnchor];
  v14 = [v0 layoutMarginsGuide];
  v15 = [v14 bottomAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  *(v4 + 48) = v16;
  v17 = [*&v0[v1] trailingAnchor];
  v18 = [v0 layoutMarginsGuide];
  v19 = [v18 trailingAnchor];

  v20 = [v17 constraintEqualToAnchor_];
  *(v4 + 56) = v20;
  sub_29E66B09C();
  v21 = sub_29E7543D8();

  [v3 activateConstraints_];
}

id sub_29E66B034()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MicaAnimationContainerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_29E66B09C()
{
  result = qword_2A185AC70;
  if (!qword_2A185AC70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A185AC70);
  }

  return result;
}

uint64_t sub_29E66B0E8(uint64_t a1, void (*a2)(char *, char *, uint64_t))
{
  v124 = a2;
  v3 = sub_29E74EC28();
  v126 = *(v3 - 8);
  v127 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v125 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_29E74EBD8();
  v114 = *(v115 - 8);
  MEMORY[0x2A1C7C4A8](v115);
  v113 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_29E74EE68();
  v132 = *(v130 - 8);
  MEMORY[0x2A1C7C4A8](v130);
  v128 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E66BE0C(0);
  v8 = MEMORY[0x2A1C7C4A8](v7 - 8);
  v117 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v121 = &v106 - v10;
  v137 = sub_29E74ED28();
  v129 = *(v137 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v137);
  v116 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v118 = &v106 - v14;
  MEMORY[0x2A1C7C4A8](v13);
  v131 = &v106 - v15;
  v122 = sub_29E754188();
  v120 = *(v122 - 8);
  MEMORY[0x2A1C7C4A8](v122);
  v119 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29E754168();
  MEMORY[0x2A1C7C4A8](v17 - 8);
  v18 = sub_29E74EBB8();
  v133 = *(v18 - 8);
  v134 = v18;
  MEMORY[0x2A1C7C4A8](v18);
  v20 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_29E74EBF8();
  v22 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21);
  v24 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_29E74EC48();
  v25 = *(v135 - 8);
  v26 = MEMORY[0x2A1C7C4A8](v135);
  v112 = &v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x2A1C7C4A8](v26);
  v123 = &v106 - v29;
  v30 = MEMORY[0x2A1C7C4A8](v28);
  v32 = &v106 - v31;
  v33 = MEMORY[0x2A1C7C4A8](v30);
  v35 = &v106 - v34;
  MEMORY[0x2A1C7C4A8](v33);
  v37 = (&v106 - v36);
  v136 = a1;
  if (sub_29E74EDF8())
  {
    MEMORY[0x29ED91080]();
    sub_29E74EBE8();
    sub_29E74EB98();
    (*(v22 + 8))(v24, v21);
    v38 = *(v25 + 8);
    v39 = v32;
    v40 = v135;
    v38(v39, v135);
    sub_29E74EBA8();
    sub_29E74EB78();
    (*(v133 + 8))(v20, v134);
    v38(v35, v40);
    sub_29E66BE64();
    sub_29E74ED08();
    v38(v37, v40);
    sub_29E754158();
    sub_29E754148();
    sub_29E754138();

    sub_29E754148();
    v41 = v119;
    sub_29E754178();
    v42 = sub_29E65B0B4(v41);
    v120[1](v41, v122);
    return v42;
  }

  v107 = v24;
  v108 = v22;
  v109 = v21;
  v111 = v32;
  v110 = v20;
  v119 = v35;
  v120 = v37;
  v122 = v25;
  v44 = v131;
  sub_29E74EDD8();
  v45 = v132;
  v46 = *(v132 + 104);
  v47 = v128;
  v48 = v130;
  v46(v128, *MEMORY[0x29EDB9CB8], v130);
  v49 = v121;
  sub_29E74EE48();
  v52 = *(v45 + 8);
  v50 = v45 + 8;
  v51 = v52;
  v52(v47, v48);
  v53 = v129;
  v54 = *(v129 + 48);
  if (v54(v49, 1, v137) == 1)
  {
    (*(v53 + 8))(v44, v137);
    v60 = v49;
LABEL_7:
    v71 = sub_29E617214(v60, v55, v56, v57, v58, v59);
    v72 = v126;
    v73 = v122;
    v74 = v120;
    v75 = v133;
    v76 = v110;
    v77 = v111;
    v78 = v109;
    v79 = v108;
    goto LABEL_8;
  }

  v61 = v118;
  v62 = v49;
  v63 = v137;
  v124 = *(v53 + 32);
  v124(v118, v62, v137);
  v64 = *MEMORY[0x29EDB9CD0];
  v65 = v128;
  v132 = v50;
  v66 = v130;
  v46(v128, v64, v130);
  v67 = v61;
  v68 = v117;
  sub_29E74EE48();
  v51(v65, v66);
  if (v54(v68, 1, v63) == 1)
  {
    v69 = *(v129 + 8);
    v70 = v137;
    v69(v67, v137);
    v69(v131, v70);
    v60 = v68;
    goto LABEL_7;
  }

  v87 = v116;
  v124(v116, v68, v137);
  v88 = sub_29E74ECB8();
  v89 = v126;
  v73 = v122;
  v78 = v109;
  v79 = v108;
  if (v88)
  {
    v90 = v112;
    MEMORY[0x29ED91080]();
    v91 = v107;
    sub_29E74EBE8();
    v92 = v123;
    sub_29E74EB98();
    (*(v79 + 8))(v91, v78);
    v93 = *(v73 + 8);
    v94 = v135;
    v93(v90, v135);
    v95 = v110;
    sub_29E74EBA8();
    v96 = v111;
    sub_29E74EB78();
    (*(v133 + 8))(v95, v134);
    v93(v92, v94);
    v97 = v113;
    sub_29E74EBC8();
    v98 = v119;
    sub_29E74EB88();
    (*(v114 + 8))(v97, v115);
    v93(v96, v94);
    v99 = v125;
    sub_29E74EC08();
    v100 = v120;
    sub_29E74EC38();
    (*(v89 + 8))(v99, v127);
    v93(v98, v94);
    sub_29E66BE64();
    sub_29E74ED08();
    v93(v100, v94);
    v101 = *(v129 + 8);
    v102 = v137;
    v101(v116, v137);
    v101(v118, v102);
    v101(v131, v102);
    return v138;
  }

  v103 = *(v129 + 8);
  v104 = v87;
  v105 = v137;
  v103(v104, v137);
  v103(v118, v105);
  v71 = (v103)(v131, v105);
  v74 = v120;
  v75 = v133;
  v76 = v110;
  v77 = v111;
  v72 = v89;
LABEL_8:
  v80 = v123;
  MEMORY[0x29ED91080](v71);
  v81 = v107;
  sub_29E74EBE8();
  sub_29E74EB98();
  (*(v79 + 8))(v81, v78);
  v82 = *(v73 + 8);
  v83 = v135;
  v82(v80, v135);
  sub_29E74EBA8();
  v84 = v77;
  v85 = v119;
  sub_29E74EB78();
  (*(v75 + 8))(v76, v134);
  v82(v84, v83);
  v86 = v125;
  sub_29E74EC08();
  sub_29E74EC38();
  (*(v72 + 8))(v86, v127);
  v82(v85, v83);
  sub_29E66BE64();
  sub_29E74ED08();
  v82(v74, v83);
  return v138;
}

void sub_29E66BE0C(uint64_t a1)
{
  if (!qword_2A1A7CFC0)
  {
    sub_29E74ED28();
    v1 = sub_29E754BD8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7CFC0);
    }
  }
}

unint64_t sub_29E66BE64()
{
  result = qword_2A1A7CFE8;
  if (!qword_2A1A7CFE8)
  {
    sub_29E74EC48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7CFE8);
  }

  return result;
}

uint64_t sub_29E66BEE4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E752888();

  return v3;
}

uint64_t sub_29E66BF50()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E752888();

  return v1;
}

void sub_29E66BFC8(uint64_t a1, uint64_t a2)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_29E66C094();
  }

  else
  {
  }
}

uint64_t sub_29E66C094()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E752888();

  v2 = sub_29E74F928();

  sub_29E627F28(v2 & 1);
  v4 = v3;
  v5 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin17SleepOptionsModel_navigationTitle);
  v6 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin17SleepOptionsModel_navigationTitle + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_29E752888();

  v7 = sub_29E6D0D2C(v4, v11);

  if (v7)
  {
    if (v5 == v12 && v6 == v13)
    {
    }

    v10 = sub_29E755028();

    if (v10)
    {
    }
  }

  else
  {
  }

  MEMORY[0x2A1C7C4A8](v9);
  sub_29E753C68();
  sub_29E752B18();
}

uint64_t sub_29E66C2C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1;

  sub_29E752898();
}

id sub_29E66C454()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepOptionsModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SleepOptionsModel(uint64_t a1)
{
  result = qword_2A1858290;
  if (!qword_2A1858290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E66C628(uint64_t a1)
{
  sub_29E66C778(319, &qword_2A18582A0, MEMORY[0x29EDC6A30]);
  if (v1 <= 0x3F)
  {
    sub_29E66C778(319, &qword_2A18582A8, MEMORY[0x29EDC6B68]);
    if (v2 <= 0x3F)
    {
      sub_29E664A30();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_29E66C778(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E7528A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E66C7CC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SleepOptionsModel(0);
  result = sub_29E752758();
  *a2 = result;
  return result;
}

uint64_t sub_29E66C82C(uint64_t a1)
{
  v2 = v1;
  v17 = sub_29E751168();
  v18 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v16 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E751218();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E751228();
  v8 = OBJC_IVAR____TtC20SleepHealthAppPlugin56BreathingDisturbancesDataTypeDetailConfigurationProvider_featureStatusProvider;
  sub_29E602E20(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin56BreathingDisturbancesDataTypeDetailConfigurationProvider_featureStatusProvider, v24);
  sub_29E751368();
  v23[2] = &_s28SleepApneaPromotionComponentVN;
  v23[3] = sub_29E66CF70();
  v22 = swift_allocObject();
  sub_29E66CFC4(v24, v22 + 16);
  sub_29E751298();
  (*(v5 + 104))(v7, *MEMORY[0x29EDC2618], v4);
  sub_29E7513D8();
  sub_29E7518E8();

  (*(v5 + 8))(v7, v4);
  sub_29E5FECBC(&v22);
  v9 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin56BreathingDisturbancesDataTypeDetailConfigurationProvider_featureAvailabilityDataSource);
  sub_29E602E20(v2 + v8, v23);
  v22 = v9;
  swift_unknownObjectRetain();
  sub_29E751298();
  v20 = &_s35BreathingDisturbancesChartComponentVN;
  v21 = sub_29E66D020();
  v19[0] = swift_allocObject();
  sub_29E66D074(&v22, v19[0] + 16);
  sub_29E7518F8();

  sub_29E66D0D0(v19);
  sub_29E66D198();
  MEMORY[0x29ED97000](*MEMORY[0x29EDBA850]);
  v10 = v16;
  sub_29E751158();
  sub_29E751288();
  v11 = v17;
  v20 = v17;
  v21 = sub_29E66D3C8(&qword_2A18582F8, MEMORY[0x29EDC25A8], MEMORY[0x29EDC25A0]);
  v12 = sub_29E5FEBF4(v19);
  v13 = v18;
  (*(v18 + 16))(v12, v10, v11);
  sub_29E7518F8();

  (*(v13 + 8))(v10, v11);
  sub_29E66D1E4(&v22);
  sub_29E66D238(v24);
  return sub_29E66D0D0(v19);
}

uint64_t sub_29E66CC44()
{
  v0 = sub_29E750EE8();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E751388();
  sub_29E60AC64(v4, v3);

  v5 = sub_29E751A58();
  sub_29E66D28C(0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29E762F30;
  *(v6 + 56) = v0;
  *(v6 + 64) = sub_29E66D3C8(&qword_2A1858328, MEMORY[0x29EDC23F8], MEMORY[0x29EDC23F0]);
  v7 = sub_29E5FEBF4((v6 + 32));
  (*(v1 + 16))(v7, v3, v0);
  v8 = MEMORY[0x29EDC2B10];
  *(v6 + 72) = v5;
  *(v6 + 80) = v8;
  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_29E66CDBC()
{
  v1 = OBJC_IVAR____TtC20SleepHealthAppPlugin56BreathingDisturbancesDataTypeDetailConfigurationProvider_context;
  v2 = sub_29E7513C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29E751758();
  sub_29E5FECBC((v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin56BreathingDisturbancesDataTypeDetailConfigurationProvider_featureStatusProvider));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BreathingDisturbancesDataTypeDetailConfigurationProvider(uint64_t a1)
{
  result = qword_2A18582D0;
  if (!qword_2A18582D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E66CECC(uint64_t a1)
{
  result = sub_29E7513C8();
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

unint64_t sub_29E66CF70()
{
  result = qword_2A18582E0;
  if (!qword_2A18582E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18582E0);
  }

  return result;
}

unint64_t sub_29E66D020()
{
  result = qword_2A18582E8;
  if (!qword_2A18582E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18582E8);
  }

  return result;
}

uint64_t sub_29E66D0D0(uint64_t a1)
{
  sub_29E66D12C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E66D12C(uint64_t a1)
{
  if (!qword_2A18582F0)
  {
    sub_29E60A664(255, &qword_2A1859440, MEMORY[0x29EDC22E8], 1);
    v1 = sub_29E754BD8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A18582F0);
    }
  }
}

unint64_t sub_29E66D198()
{
  result = qword_2A1A7BDB0;
  if (!qword_2A1A7BDB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A7BDB0);
  }

  return result;
}

void sub_29E66D28C(uint64_t a1)
{
  if (!qword_2A1858300)
  {
    sub_29E66D2E4(255);
    v1 = sub_29E754FE8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858300);
    }
  }
}

void sub_29E66D2E4(uint64_t a1)
{
  if (!qword_2A1858308)
  {
    sub_29E60A664(255, &qword_2A1858310, MEMORY[0x29EDC1910], 1);
    sub_29E66D36C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1858308);
    }
  }
}

unint64_t sub_29E66D36C()
{
  result = qword_2A1858318;
  if (!qword_2A1858318)
  {
    sub_29E60A664(255, &qword_2A1858320, MEMORY[0x29EDC1DA8], 0);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_2A1858318);
  }

  return result;
}

uint64_t sub_29E66D3C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E66D410()
{
  sub_29E66EDD4(0);
  v1 = v0;
  sub_29E6103B4(v0, qword_2A18692A0);
  sub_29E61037C(v1, qword_2A18692A0);
  type metadata accessor for VitalsWidgetCell(0);
  type metadata accessor for VitalsWidgetItem(0);
  return sub_29E754808();
}

uint64_t sub_29E66D494(char *a1, uint64_t a2, uint64_t a3)
{
  sub_29E66EBF4(0, qword_2A1A7C550, type metadata accessor for VitalsWidgetItem);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v11 - v6;
  sub_29E66F370(a3, &v11 - v6, type metadata accessor for VitalsWidgetItem);
  v8 = type metadata accessor for VitalsWidgetItem(0);
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = OBJC_IVAR____TtC20SleepHealthAppPlugin16VitalsWidgetCell_item;
  swift_beginAccess();
  sub_29E66EE3C(v7, &a1[v9]);
  swift_endAccess();
  [a1 setNeedsUpdateConfiguration];
  return sub_29E66ED2C(v7, qword_2A1A7C550, type metadata accessor for VitalsWidgetItem);
}

uint64_t sub_29E66D5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x29ED929C0]())
  {
    v3 = sub_29E7508E8();
    v5 = v4;
    if (v3 == sub_29E7508E8() && v5 == v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_29E755028();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_29E66D6A8()
{
  sub_29E66EDD4(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1856208 != -1)
  {
    swift_once();
  }

  v8 = sub_29E61037C(v4, qword_2A18692A0);
  (*(v5 + 16))(v7, v8, v4);
  type metadata accessor for VitalsWidgetCell(0);
  sub_29E7503A8();
  sub_29E750398();
  return swift_storeEnumTagMultiPayload();
}

void sub_29E66D7F0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29E74F698();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E66EEBC(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = v2;
  v17 = a1;
  sub_29E66EFB4(0, &qword_2A1858340, sub_29E66EF78, MEMORY[0x29EDBCBF8], MEMORY[0x29EDBC7F0]);
  sub_29E66F020();
  sub_29E753218();
  sub_29E66F198(0);
  v18[3] = v13;
  v18[4] = sub_29E66F28C(&qword_2A1858370, sub_29E66F198, MEMORY[0x29EDBC030]);
  sub_29E5FEBF4(v18);
  sub_29E751088();
  sub_29E66F28C(&qword_2A1856C78, MEMORY[0x29EDC24E0], MEMORY[0x29EDC24D8]);
  sub_29E753208();
  (*(v10 + 8))(v12, v9);
  MEMORY[0x29ED972D0](v18);
  (*(v5 + 104))(v7, *MEMORY[0x29EDC6AB0], v4);
  sub_29E754258();
  (*(v5 + 8))(v7, v4);
  v14 = sub_29E754198();

  [v2 setAccessibilityIdentifier_];
}

uint64_t sub_29E66DB0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  sub_29E66EF78(0);
  v44 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v41 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for VitalsWidgetItem(0);
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v38 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x29EDBCBF8];
  sub_29E66EFB4(0, &qword_2A1858378, sub_29E66EF78, MEMORY[0x29EDBCBF8], MEMORY[0x29EDBC7E8]);
  v43 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v37 - v10;
  v12 = sub_29E7500C8();
  v39 = *(v12 - 8);
  v40 = v12;
  v13 = MEMORY[0x2A1C7C4A8](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v13);
  v18 = &v37 - v17;
  MEMORY[0x2A1C7C4A8](v16);
  v20 = &v37 - v19;
  sub_29E66EFB4(0, &qword_2A1858340, sub_29E66EF78, v8, MEMORY[0x29EDBC7F0]);
  MEMORY[0x2A1C7C4A8](v21 - 8);
  v23 = &v37 - v22;
  sub_29E7544C8();
  v42 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v24 = OBJC_IVAR____TtC20SleepHealthAppPlugin16VitalsWidgetCell_item;
  swift_beginAccess();
  if ((*(v6 + 48))(a1 + v24, 1, v5))
  {
    swift_storeEnumTagMultiPayload();
    sub_29E66F0D8();
    sub_29E753118();
  }

  else
  {
    v25 = v38;
    sub_29E66F370(a1 + v24, v38, type metadata accessor for VitalsWidgetItem);
    v27 = v39;
    v26 = v40;
    v28 = *(v39 + 32);
    v28(v18, v25, v40);
    v28(v20, v18, v26);
    (*(v27 + 16))(v15, v20, v26);
    v29 = v41;
    sub_29E750098();
    v30 = sub_29E7533A8();
    sub_29E7529C8();
    v31 = v29 + *(v44 + 36);
    *v31 = v30;
    *(v31 + 8) = v32;
    *(v31 + 16) = v33;
    *(v31 + 24) = v34;
    *(v31 + 32) = v35;
    *(v31 + 40) = 0;
    sub_29E66F370(v29, v11, sub_29E66EF78);
    swift_storeEnumTagMultiPayload();
    sub_29E66F0D8();
    sub_29E753118();
    sub_29E66F3D8(v29, sub_29E66EF78);
    (*(v27 + 8))(v20, v26);
  }

  sub_29E66F2D4(v23, v45);
}

uint64_t sub_29E66DFE8(uint64_t a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E751078();
}

void sub_29E66E3A8(uint64_t a1)
{
  sub_29E66EBF4(319, qword_2A1A7C550, type metadata accessor for VitalsWidgetItem);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_29E66E49C(uint64_t a1)
{
  result = sub_29E7500C8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_29E66E538(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_29E752098();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v34 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E750F58();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v37 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E66EBF4(0, &qword_2A1856C20, MEMORY[0x29EDC26F8]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v28 - v8;
  v10 = sub_29E7513C8();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v38 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E66EBF4(0, qword_2A1A7C550, type metadata accessor for VitalsWidgetItem);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v15 = &v28 - v14;
  v16 = type metadata accessor for VitalsWidgetItem(0);
  v17 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC20SleepHealthAppPlugin16VitalsWidgetCell_item;
  swift_beginAccess();
  sub_29E66EC48(v1 + v20, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_29E66ED2C(v15, qword_2A1A7C550, type metadata accessor for VitalsWidgetItem);
  }

  sub_29E66ECC8(v15, v19);
  sub_29E73D71C(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_29E66F3D8(v19, type metadata accessor for VitalsWidgetItem);
    return sub_29E66ED2C(v9, &qword_2A1856C20, MEMORY[0x29EDC26F8]);
  }

  else
  {
    v29 = v10;
    v30 = v19;
    v22 = v38;
    (*(v11 + 32))(v38, v9, v10);
    v23 = v37;
    sub_29E750F48();
    result = [objc_opt_self() appleBalanceMetricsType];
    if (result)
    {
      v24 = result;
      v25 = sub_29E750F38();

      v26 = [a1 navigationController];
      if (v26)
      {
        v27 = v26;
        [v26 pushViewController:v25 animated:1];
      }

      else
      {
      }

      (*(v35 + 8))(v23, v36);
      (*(v11 + 8))(v22, v29);
      return sub_29E66F3D8(v30, type metadata accessor for VitalsWidgetItem);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_29E66EBF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754BD8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E66EC48(uint64_t a1, uint64_t a2)
{
  sub_29E66EBF4(0, qword_2A1A7C550, type metadata accessor for VitalsWidgetItem);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E66ECC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VitalsWidgetItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E66ED2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E66EBF4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_29E66ED88()
{
  result = qword_2A1A7D0B0;
  if (!qword_2A1A7D0B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A7D0B0);
  }

  return result;
}

void sub_29E66EDD4(uint64_t a1)
{
  if (!qword_2A1858330)
  {
    type metadata accessor for VitalsWidgetCell(255);
    type metadata accessor for VitalsWidgetItem(255);
    v1 = sub_29E754818();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858330);
    }
  }
}

uint64_t sub_29E66EE3C(uint64_t a1, uint64_t a2)
{
  sub_29E66EBF4(0, qword_2A1A7C550, type metadata accessor for VitalsWidgetItem);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_29E66EEBC(uint64_t a1)
{
  if (!qword_2A1858338)
  {
    sub_29E66EFB4(255, &qword_2A1858340, sub_29E66EF78, MEMORY[0x29EDBCBF8], MEMORY[0x29EDBC7F0]);
    sub_29E66F020();
    v1 = sub_29E753228();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858338);
    }
  }
}

void sub_29E66EFB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_29E66F020()
{
  result = qword_2A1858350;
  if (!qword_2A1858350)
  {
    sub_29E66EFB4(255, &qword_2A1858340, sub_29E66EF78, MEMORY[0x29EDBCBF8], MEMORY[0x29EDBC7F0]);
    sub_29E66F0D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858350);
  }

  return result;
}

unint64_t sub_29E66F0D8()
{
  result = qword_2A1858358;
  if (!qword_2A1858358)
  {
    sub_29E66EF78(255);
    sub_29E66F28C(&qword_2A1858360, MEMORY[0x29EDC1698], MEMORY[0x29EDC1690]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858358);
  }

  return result;
}

void sub_29E66F198(uint64_t a1)
{
  if (!qword_2A1858368)
  {
    sub_29E66EFB4(255, &qword_2A1858340, sub_29E66EF78, MEMORY[0x29EDBCBF8], MEMORY[0x29EDBC7F0]);
    sub_29E751088();
    sub_29E66F020();
    sub_29E66F28C(&qword_2A1856C78, MEMORY[0x29EDC24E0], MEMORY[0x29EDC24D8]);
    v1 = sub_29E753228();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858368);
    }
  }
}

uint64_t sub_29E66F28C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E66F2D4(uint64_t a1, uint64_t a2)
{
  sub_29E66EFB4(0, &qword_2A1858340, sub_29E66EF78, MEMORY[0x29EDBCBF8], MEMORY[0x29EDBC7F0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E66F370(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E66F3D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for SleepCollectionViewController(uint64_t a1)
{
  result = qword_2A1858390;
  if (!qword_2A1858390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E66F484(uint64_t a1)
{
  sub_29E6707F8(319, &qword_2A185A450, MEMORY[0x29EDB8B00]);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_29E66F540()
{
  v1 = v0;
  sub_29E751A38();
  v2 = sub_29E751A48();
  v2();
  v3 = [v0 collectionView];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  sub_29E750F28();
  sub_29E7547E8();

  v5 = [v1 collectionView];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  sub_29E7518A8();
  sub_29E7547E8();

  v7 = [v1 collectionView];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  sub_29E7515F8();
  sub_29E7547E8();

  v9 = [v1 collectionView];
  if (!v9)
  {
LABEL_11:
    __break(1u);
    return;
  }

  sub_29E751638();
  sub_29E7547E8();
}

uint64_t sub_29E66F6A0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E752888();

  return v1;
}

void sub_29E66F714(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29E752148();
  MEMORY[0x2A1C7C4A8](v5);
  v6 = sub_29E750698();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v7 + 104))(v9, *MEMORY[0x29EDC1D60], v6);
  v10 = a1;
  sub_29E754878();
  sub_29E752138();
  sub_29E754888();
  v11 = type metadata accessor for SleepCollectionViewController(0);
  v12.receiver = v10;
  v12.super_class = v11;
  objc_msgSendSuper2(&v12, sel_viewIsAppearing_, a3);
}

uint64_t sub_29E66F908@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E752888();

  *a2 = v4;
  return result;
}

uint64_t sub_29E66F988(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_29E752898();
}

uint64_t sub_29E66F9F8()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SleepCollectionViewController(0);
  v18.receiver = v1;
  v18.super_class = v6;
  objc_msgSendSuper2(&v18, sel_viewDidLayoutSubviews);
  if (*&v1[qword_2A1858388])
  {
    sub_29E752048();
    v7 = sub_29E752088();
    v8 = sub_29E7546C8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136446210;
      v11 = sub_29E755178();
      v13 = sub_29E6B9C90(v11, v12, &v17);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_29E5ED000, v7, v8, "[%{public}s] notifying subscriber for viewDidLayoutSubviews...", v9, 0xCu);
      sub_29E5FECBC(v10);
      MEMORY[0x29ED98410](v10, -1, -1);
      MEMORY[0x29ED98410](v9, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v17) = 1;
  v14 = v1;
  return sub_29E752898();
}

void sub_29E66FC18(void *a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1;
  sub_29E66F9F8();
}

uint64_t sub_29E66FCD0(uint64_t a1)
{
  sub_29E6707F8(0, &qword_2A185A450, MEMORY[0x29EDB8B00]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v10[-v5];
  v7 = objc_allocWithZone(v1);
  v8 = qword_2A1858380;
  v10[15] = 0;
  sub_29E752868();
  (*(v4 + 32))(&v7[v8], v6, v3);
  *&v7[qword_2A1858388] = 0;
  return sub_29E751A18();
}

char *sub_29E66FDF4(char *a1, uint64_t a2, void *a3)
{
  sub_29E6707F8(0, &qword_2A185A450, MEMORY[0x29EDB8B00]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v15 - v8;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = qword_2A1858380;
  v17 = 0;
  v11 = a3;
  sub_29E752868();
  (*(v7 + 32))(&a1[v10], v9, v6);
  *&a1[qword_2A1858388] = 0;
  v12 = type metadata accessor for SleepCollectionViewController(0);
  v16.receiver = a1;
  v16.super_class = v12;
  v13 = objc_msgSendSuper2(&v16, sel_initWithCollectionViewLayout_, v11);

  return v13;
}

id sub_29E66FFA4(void *a1)
{
  sub_29E6707F8(0, &qword_2A185A450, MEMORY[0x29EDB8B00]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v12 - v6;
  v8 = qword_2A1858380;
  v14 = 0;
  sub_29E752868();
  (*(v5 + 32))(&v1[v8], v7, v4);
  *&v1[qword_2A1858388] = 0;
  v9 = type metadata accessor for SleepCollectionViewController(0);
  v13.receiver = v1;
  v13.super_class = v9;
  v10 = objc_msgSendSuper2(&v13, sel_initWithCoder_, a1);

  if (v10)
  {
  }

  return v10;
}

id sub_29E6700F0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_29E66FFA4(a3);

  return v4;
}

uint64_t sub_29E67019C()
{
  v1 = qword_2A1858380;
  sub_29E6707F8(0, &qword_2A185A450, MEMORY[0x29EDB8B00]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

id sub_29E670230()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepCollectionViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E670268(uint64_t a1)
{
  v2 = qword_2A1858380;
  sub_29E6707F8(0, &qword_2A185A450, MEMORY[0x29EDB8B00]);
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
}

uint64_t sub_29E670308@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC1D60];
  v3 = sub_29E750698();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29E67037C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v37 = a3;
  v35 = a1;
  v36 = a2;
  ObjectType = swift_getObjectType();
  sub_29E6212E4(0);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E7548F8();
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6707F8(0, &qword_2A1857270, MEMORY[0x29EDB8AF0]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v29 - v14;
  sub_29E67084C(0);
  v17 = *(v16 - 8);
  v32 = v16;
  v33 = v17;
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_29E6707F8(0, &qword_2A185A450, MEMORY[0x29EDB8B00]);
  sub_29E752878();
  swift_endAccess();
  sub_29E7548E8();
  sub_29E602DD4();
  v20 = sub_29E754908();
  v38 = v20;
  v21 = sub_29E7548D8();
  (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
  sub_29E62113C();
  sub_29E670924(&qword_2A18568B8, sub_29E602DD4, MEMORY[0x29EDCA280]);
  sub_29E752978();
  sub_29E6214E8(v7);

  (*(v30 + 8))(v10, v31);
  (*(v13 + 8))(v15, v12);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v24 = v35;
  v25 = v36;
  *(v23 + 16) = v22;
  *(v23 + 24) = v24;
  *(v23 + 32) = v25;
  *(v23 + 40) = v37;
  *(v23 + 48) = ObjectType;
  sub_29E670924(&qword_2A18583A8, sub_29E67084C, MEMORY[0x29EDB89B0]);

  v26 = v32;
  v27 = sub_29E7529A8();

  (*(v33 + 8))(v19, v26);
  *(v4 + qword_2A1858388) = v27;
}

void sub_29E6707F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x29EDC9A98]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E67084C(uint64_t a1)
{
  if (!qword_2A18583A0)
  {
    sub_29E6707F8(255, &qword_2A1857270, MEMORY[0x29EDB8AF0]);
    sub_29E602DD4();
    sub_29E62113C();
    sub_29E670924(&qword_2A18568B8, sub_29E602DD4, MEMORY[0x29EDCA280]);
    v1 = sub_29E7526B8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A18583A0);
    }
  }
}

uint64_t sub_29E670924(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29E67096C(char *a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6)
{
  v92 = a6;
  v85 = a5;
  v95 = a3;
  v93 = sub_29E752098();
  v8 = *(v93 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v93);
  v11 = v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x2A1C7C4A8](v9);
  v90 = v83 - v13;
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v84 = v83 - v15;
  MEMORY[0x2A1C7C4A8](v14);
  v86 = v83 - v16;
  v17 = sub_29E74EEE8();
  v87 = *(v17 - 8);
  v88 = v17;
  MEMORY[0x2A1C7C4A8](v17);
  v89 = v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  sub_29E7544C8();
  v20 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_34;
  }

  v22 = Strong;
  v91 = v8;
  if (v19)
  {
    v83[1] = v20;
    v23 = Strong;
    sub_29E751A08();
    v83[0] = v23;

    sub_29E7510C8();
    v24 = sub_29E750948();

    v94 = *(v24 + 16);
    if (v94)
    {
      v25 = 0;
      v26 = (v24 + 40);
      while (v25 < *(v24 + 16))
      {
        v27 = *(v26 - 1);
        v28 = *v26;

        sub_29E7544B8();
        sub_29E754468();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v98[0] = v27;
        v98[1] = v28;
        v96 = v95;
        v97 = a4;
        sub_29E60DE10();
        v29 = sub_29E754C18();

        if (v29)
        {

          v45 = v89;
          MEMORY[0x29ED917E0](0, v25);
          v46 = v83[0];
          v47 = [v46 collectionView];
          if (v47)
          {
            v48 = v47;
            v49 = *MEMORY[0x29EDC8048];
            v50 = sub_29E74EE98();
            v51 = [v48 layoutAttributesForSupplementaryElementOfKind:v49 atIndexPath:v50];

            if (!v51)
            {

              v69 = v84;
              sub_29E752048();

              v70 = sub_29E752088();
              v71 = sub_29E7546C8();

              if (os_log_type_enabled(v70, v71))
              {
                v72 = swift_slowAlloc();
                v73 = swift_slowAlloc();
                v98[0] = v73;
                *v72 = 136446467;
                v74 = sub_29E755178();
                v76 = sub_29E6B9C90(v74, v75, v98);

                *(v72 + 4) = v76;
                *(v72 + 12) = 2081;
                *(v72 + 14) = sub_29E6B9C90(v95, a4, v98);
                _os_log_impl(&dword_29E5ED000, v70, v71, "[%{public}s] Unable to determine offset for section with identifier %{private}s", v72, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x29ED98410](v73, -1, -1);
                MEMORY[0x29ED98410](v72, -1, -1);
              }

              (*(v91 + 8))(v69, v93);
              (*(v87 + 8))(v45, v88);
              goto LABEL_34;
            }

            [v51 frame];
            v53 = v52;
            v55 = v54;
            v57 = v56;
            v59 = v58;

            v99.origin.x = v53;
            v99.origin.y = v55;
            v99.size.width = v57;
            v99.size.height = v59;
            MinY = CGRectGetMinY(v99);
            v61 = v86;
            sub_29E752048();

            v62 = sub_29E752088();
            v63 = sub_29E7546C8();

            if (os_log_type_enabled(v62, v63))
            {
              v64 = swift_slowAlloc();
              v65 = swift_slowAlloc();
              v98[0] = v65;
              *v64 = 136446467;
              v66 = sub_29E755178();
              v68 = sub_29E6B9C90(v66, v67, v98);

              *(v64 + 4) = v68;
              *(v64 + 12) = 2081;
              *(v64 + 14) = sub_29E6B9C90(v95, a4, v98);
              _os_log_impl(&dword_29E5ED000, v62, v63, "[%{public}s] Scrolling to header with section identifier %{private}s", v64, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x29ED98410](v65, -1, -1);
              MEMORY[0x29ED98410](v64, -1, -1);

              (*(v91 + 8))(v86, v93);
            }

            else
            {

              (*(v91 + 8))(v61, v93);
            }

            v77 = [v46 collectionView];
            if (v77)
            {
              v78 = v77;
              [v77 adjustedContentInset];
              v80 = v79;

              v81 = [v46 collectionView];
              if (v81)
              {
                [v81 setContentOffset:v85 & 1 animated:{0.0, MinY - v80}];

                v82 = qword_2A1858388;
                if (*&v46[qword_2A1858388])
                {

                  sub_29E752728();
                }

                (*(v87 + 8))(v45, v88);
                *&v46[v82] = 0;

                goto LABEL_34;
              }

LABEL_38:
              __break(1u);
              return;
            }

LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        ++v25;
        v26 += 2;
        if (v94 == v25)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_36;
    }

LABEL_12:

    v30 = v90;
    sub_29E752048();

    v31 = sub_29E752088();
    v32 = sub_29E7546C8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v98[0] = v34;
      *v33 = 136446467;
      v35 = sub_29E755178();
      v37 = sub_29E6B9C90(v35, v36, v98);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2081;
      *(v33 + 14) = sub_29E6B9C90(v95, a4, v98);
      _os_log_impl(&dword_29E5ED000, v31, v32, "[%{public}s] Can't find index of section with identifier %{private}s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v34, -1, -1);
      MEMORY[0x29ED98410](v33, -1, -1);
    }

    else
    {
    }

    (*(v91 + 8))(v30, v93);
  }

  else
  {
    sub_29E752048();

    v38 = sub_29E752088();
    v39 = sub_29E7546C8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v98[0] = v41;
      *v40 = 136446467;
      v42 = sub_29E755178();
      v44 = sub_29E6B9C90(v42, v43, v98);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2081;
      *(v40 + 14) = sub_29E6B9C90(v95, a4, v98);
      _os_log_impl(&dword_29E5ED000, v38, v39, "[%{public}s] Have not laid out subviews - waiting to scroll to identifier %{private}s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v41, -1, -1);
      MEMORY[0x29ED98410](v40, -1, -1);

      (*(v91 + 8))(v11, v93);
    }

    else
    {

      (*(v91 + 8))(v11, v93);
    }
  }

LABEL_34:
}

uint64_t sub_29E671474(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_29E6714BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29E671534@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v50 = a2;
  sub_29E671FD4(0, &qword_2A18583F0, sub_29E672050, &type metadata for BreathingDisturbancesDemoDataView);
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = MEMORY[0x2A1C7C4A8](v3);
  v49 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v57 = &v44 - v6;
  sub_29E671E98(0, &qword_2A18583D8, MEMORY[0x29EDC2900], MEMORY[0x29EDC9C68]);
  v46 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v44 - v8;
  sub_29E671DE8(0);
  v56 = v10;
  v48 = *(v10 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v10);
  v60 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v53 = &v44 - v13;
  sub_29E671FD4(0, &qword_2A18583C0, sub_29E671D94, &type metadata for BreathingDisturbancesAnalysisInfoView);
  v54 = *(v14 - 8);
  v55 = v14;
  v15 = MEMORY[0x2A1C7C4A8](v14);
  v59 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v58 = &v44 - v17;
  sub_29E7544C8();
  v47 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752F58();
  v19 = *(a1 + 2);
  v18 = *(a1 + 3);
  v20 = *(a1 + 4);
  v21 = a1;
  v61 = *a1;
  v62 = v19;
  v63 = v18;
  v64 = v20;
  sub_29E671D94();

  sub_29E752B58();
  sub_29E752F58();
  v22 = *MEMORY[0x29EDBA748];
  v23 = objc_allocWithZone(MEMORY[0x29EDBABE8]);
  v24 = v22;
  [v23 init];
  sub_29E7516A8();
  v25 = sub_29E7516B8();
  (*(*(v25 - 8) + 56))(v9, 0, 1, v25);
  sub_29E671EFC();
  v26 = v53;
  sub_29E752B58();
  sub_29E752F58();
  *&v61 = *(v21 + 5);
  v27 = v61;
  sub_29E672050();
  v28 = v27;
  v29 = v57;
  sub_29E752B58();
  v44 = *(v54 + 16);
  v30 = v55;
  v44(v59, v58, v55);
  v31 = v48;
  v46 = *(v48 + 16);
  v46(v60, v26, v56);
  v32 = v51;
  v45 = *(v51 + 16);
  v33 = v49;
  v34 = v52;
  v45(v49, v29, v52);
  v35 = v50;
  v44(v50, v59, v30);
  sub_29E671CC4(0);
  v37 = v36;
  v38 = v56;
  v46(&v35[*(v36 + 48)], v60, v56);
  v45(&v35[*(v37 + 64)], v33, v34);
  v39 = *(v32 + 8);
  v39(v57, v34);
  v40 = *(v31 + 8);
  v40(v53, v38);
  v41 = v55;
  v42 = *(v54 + 8);
  v42(v58, v55);
  v39(v33, v34);
  v40(v60, v38);
  v42(v59, v41);
}

uint64_t sub_29E671BF4()
{
  sub_29E671E98(0, &qword_2A18583B0, sub_29E671CC4, MEMORY[0x29EDBCC28]);
  sub_29E676400(&qword_2A1858400, &qword_2A18583B0, sub_29E671CC4);
  return sub_29E753528();
}

void sub_29E671CC4(uint64_t a1)
{
  if (!qword_2A18583B8)
  {
    sub_29E671FD4(255, &qword_2A18583C0, sub_29E671D94, &type metadata for BreathingDisturbancesAnalysisInfoView);
    sub_29E671DE8(255);
    sub_29E671FD4(255, &qword_2A18583F0, sub_29E672050, &type metadata for BreathingDisturbancesDemoDataView);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A18583B8);
    }
  }
}

unint64_t sub_29E671D94()
{
  result = qword_2A18583C8;
  if (!qword_2A18583C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18583C8);
  }

  return result;
}

void sub_29E671DE8(uint64_t a1)
{
  if (!qword_2A18583D0)
  {
    sub_29E671E98(255, &qword_2A18583D8, MEMORY[0x29EDC2900], MEMORY[0x29EDC9C68]);
    sub_29E671EFC();
    v1 = sub_29E752B68();
    if (!v2)
    {
      atomic_store(v1, &qword_2A18583D0);
    }
  }
}

void sub_29E671E98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29E671EFC()
{
  result = qword_2A18583E0;
  if (!qword_2A18583E0)
  {
    sub_29E671E98(255, &qword_2A18583D8, MEMORY[0x29EDC2900], MEMORY[0x29EDC9C68]);
    sub_29E676C80(&qword_2A18583E8, MEMORY[0x29EDC2900], MEMORY[0x29EDC28F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18583E0);
  }

  return result;
}

void sub_29E671FD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_29E752B68();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_29E672050()
{
  result = qword_2A18583F8;
  if (!qword_2A18583F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18583F8);
  }

  return result;
}

uint64_t sub_29E6720B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_29E6720FC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void sub_29E672154(uint64_t a1)
{
  if (!qword_2A1858410)
  {
    sub_29E671E98(255, &qword_2A18583B0, sub_29E671CC4, MEMORY[0x29EDBCC28]);
    sub_29E676400(&qword_2A1858400, &qword_2A18583B0, sub_29E671CC4);
    v1 = sub_29E753538();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858410);
    }
  }
}

uint64_t sub_29E672224(uint64_t a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v1 = sub_29E752F58();
  MEMORY[0x2A1C7C4A8](v1);
  sub_29E671E98(0, &qword_2A1858420, sub_29E676100, MEMORY[0x29EDBCC28]);
  sub_29E676400(&qword_2A1858438, &qword_2A1858420, sub_29E676100);
  sub_29E753B78();
}

uint64_t sub_29E6723B4@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_29E752F48();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752F38();
  sub_29E752F28();
  sub_29E752F08();
  sub_29E752F28();
  sub_29E752F68();
  v4 = sub_29E7535E8();
  v24 = v5;
  v23 = v6;
  v22 = v7;
  sub_29E752F38();
  sub_29E752F28();
  sub_29E752F18();
  sub_29E752F28();
  sub_29E752F68();
  v8 = sub_29E7535E8();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_29E752F38();
  sub_29E752F28();
  sub_29E752F18();
  sub_29E752F28();
  sub_29E752F68();
  v15 = sub_29E7535E8();
  v17 = v16;
  v19 = v18 & 1;
  *a2 = v4;
  *(a2 + 8) = v24;
  *(a2 + 16) = v23 & 1;
  *(a2 + 24) = v22;
  *(a2 + 32) = v8;
  *(a2 + 40) = v10;
  *(a2 + 48) = v12 & 1;
  *(a2 + 56) = v14;
  *(a2 + 64) = v15;
  *(a2 + 72) = v16;
  *(a2 + 80) = v18 & 1;
  *(a2 + 88) = v20;
  sub_29E62935C(v4, v24, v23 & 1);

  sub_29E62935C(v8, v10, v12 & 1);

  sub_29E62935C(v15, v17, v19);

  sub_29E60DB44(v15, v17, v19);

  sub_29E60DB44(v8, v10, v12 & 1);

  sub_29E60DB44(v4, v24, v23 & 1);
}

uint64_t sub_29E672740()
{
  sub_29E676248(0, &qword_2A1858418, &qword_2A1858420, sub_29E676100, MEMORY[0x29EDBCBF8]);
  sub_29E676160();
  return sub_29E753528();
}

uint64_t sub_29E6727E4()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x2A1C7C4A8](isCurrentExecutor);
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752F58();
  sub_29E7535E8();

  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752F58();
  sub_29E7535E8();

  sub_29E671E98(0, &qword_2A1858448, sub_29E6762CC, MEMORY[0x29EDBCC28]);
  sub_29E676400(&qword_2A1858460, &qword_2A1858448, sub_29E6762CC);
  sub_29E753B88();
}

uint64_t sub_29E672AD0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v27 = a2;
  sub_29E61D510();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v3);
  v26 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v25 = &v24 - v9;
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v12 = &v24 - v11;
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v24 - v13;
  sub_29E7544C8();
  v24 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752F58();
  *(swift_allocObject() + 16) = a1;
  v15 = a1;
  sub_29E753A38();
  sub_29E752F58();
  *(swift_allocObject() + 16) = v15;
  v16 = v15;
  sub_29E753A38();
  v17 = *(v5 + 16);
  v18 = v25;
  v17(v25, v14, v4);
  v19 = v26;
  v17(v26, v12, v4);
  v20 = v27;
  v17(v27, v18, v4);
  sub_29E6762CC(0);
  v17(&v20[*(v21 + 48)], v19, v4);
  v22 = *(v5 + 8);
  v22(v12, v4);
  v22(v14, v4);
  v22(v19, v4);
  v22(v18, v4);
}

uint64_t sub_29E672E38(void *a1)
{
  v2 = sub_29E74ED28();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E671E98(0, &unk_2A18594A0, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v28 - v6;
  v8 = sub_29E74E838();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E74EE78();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_opt_self() hk_gregorianCalendar];
  sub_29E74EE28();

  v17 = v9;
  sub_29E673740(v15, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    (*(v13 + 8))(v15, v12);
    return sub_29E6765C0(v7, &unk_2A18594A0, MEMORY[0x29EDB98E8]);
  }

  else
  {
    v28 = v13;
    v29 = v9;
    v19 = v12;
    v20 = *(v17 + 32);
    v30 = v8;
    v20(v11, v7, v8);
    v31 = a1;
    sub_29E673F30(v11, a1);
    sub_29E74E828();
    v21 = sub_29E676630(v4, v15);
    (*(v32 + 8))(v4, v33);
    if (v21 >> 62)
    {
      sub_29E609B5C(0, &qword_2A1858478, 0x29EDBAD60);

      v27 = sub_29E754E68();
      swift_bridgeObjectRelease_n();
      v21 = v27;
    }

    else
    {

      sub_29E755038();
      sub_29E609B5C(0, &qword_2A1858478, 0x29EDBAD60);
    }

    v22 = v28;
    if (v21 >> 62)
    {
      sub_29E609B5C(0, &qword_2A1858480, 0x29EDBACB0);

      sub_29E754E68();
    }

    else
    {

      sub_29E755038();
      sub_29E609B5C(0, &qword_2A1858480, 0x29EDBACB0);
    }

    sub_29E609B5C(0, &qword_2A1858480, 0x29EDBACB0);
    v23 = sub_29E7543D8();

    v24 = swift_allocObject();
    *(v24 + 16) = v21;
    aBlock[4] = sub_29E676BE8;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29E5FE860;
    aBlock[3] = &unk_2A24FFFF0;
    v25 = _Block_copy(aBlock);

    v26 = v31;
    [v31 saveObjects:v23 skipInsertionFilter:1 completion:v25];
    _Block_release(v25);

    sub_29E674244(v11, v15, v26);
    (*(v29 + 8))(v11, v30);
    return (*(v22 + 8))(v15, v19);
  }
}

uint64_t sub_29E6733A8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a3(a1);
}

uint64_t sub_29E673458(void *a1)
{
  sub_29E671E98(0, &unk_2A18594A0, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_29E74E838();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E74EE78();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() hk_gregorianCalendar];
  sub_29E74EE28();

  sub_29E673740(v12, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    (*(v10 + 8))(v12, v9);
    return sub_29E6765C0(v4, &unk_2A18594A0, MEMORY[0x29EDB98E8]);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    sub_29E675080(v8, sub_29E6764D4, v15, a1);

    (*(v6 + 8))(v8, v5);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_29E673740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a1;
  v64 = a2;
  v2 = sub_29E752098();
  v60 = *(v2 - 8);
  v61 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v59 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x29EDC9C68];
  sub_29E671E98(0, &qword_2A1A7CFB8, MEMORY[0x29EDB9D58], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v54 - v6;
  sub_29E671E98(0, &qword_2A1A7D368, MEMORY[0x29EDB9D18], v4);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v54 - v9;
  v11 = sub_29E74E8C8();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E671E98(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8], v4);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v17 = &v54 - v16;
  v18 = sub_29E74ED28();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x2A1C7C4A8](v18);
  v58 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x2A1C7C4A8](v20);
  v57 = &v54 - v23;
  v24 = MEMORY[0x2A1C7C4A8](v22);
  v56 = &v54 - v25;
  v26 = MEMORY[0x2A1C7C4A8](v24);
  v55 = &v54 - v27;
  v28 = MEMORY[0x2A1C7C4A8](v26);
  v62 = &v54 - v29;
  MEMORY[0x2A1C7C4A8](v28);
  v31 = &v54 - v30;
  sub_29E74ED18();
  v32 = sub_29E74EE78();
  (*(*(v32 - 8) + 56))(v10, 1, 1, v32);
  v33 = sub_29E74EE88();
  (*(*(v33 - 8) + 56))(v7, 1, 1, v33);
  sub_29E74E8B8();
  sub_29E74EDE8();
  (*(v12 + 8))(v14, v11);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v34 = v64;
    sub_29E6765C0(v17, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
    v35 = v59;
    sub_29E752068();
    v36 = sub_29E752088();
    v37 = sub_29E7546A8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v65 = v39;
      *v38 = 136446210;
      *(v38 + 4) = sub_29E6B9C90(0xD000000000000048, 0x800000029E75B670, &v65);
      _os_log_impl(&dword_29E5ED000, v36, v37, "[%{public}s] Could not subtract DateComponents from date", v38, 0xCu);
      sub_29E5FECBC(v39);
      MEMORY[0x29ED98410](v39, -1, -1);
      MEMORY[0x29ED98410](v38, -1, -1);
    }

    (*(v60 + 8))(v35, v61);
    (*(v19 + 8))(v31, v18);
    v40 = 1;
    v41 = v34;
  }

  else
  {
    (*(v19 + 32))(v62, v17, v18);
    v42 = sub_29E74EC98();
    v43 = sub_29E74EE08();
    v44 = [v42 hk:v43 sleepDayStartWithCalendar:?];

    v45 = v55;
    sub_29E74ECD8();

    v46 = sub_29E74EC98();
    v47 = sub_29E74EE08();
    v48 = [v46 hk:v47 sleepDayStartWithCalendar:?];

    v49 = v56;
    sub_29E74ECD8();

    v50 = *(v19 + 16);
    v50(v57, v45, v18);
    v50(v58, v49, v18);
    v41 = v64;
    sub_29E74E808();
    v51 = *(v19 + 8);
    v51(v49, v18);
    v51(v45, v18);
    v51(v62, v18);
    v51(v31, v18);
    v40 = 0;
  }

  v52 = sub_29E74E838();
  return (*(*(v52 - 8) + 56))(v41, v40, 1, v52);
}

void sub_29E673F30(uint64_t a1, void *a2)
{
  v3 = sub_29E74ED28();
  v4 = MEMORY[0x2A1C7C4A8](v3 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v5 = sub_29E74E838();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  sub_29E74E828();
  sub_29E74E7F8();
  sub_29E74E808();
  v10 = sub_29E74E7D8();
  (*(v6 + 8))(v8, v5);
  v11 = [v9 predicateForSamplesWithinDateInterval:v10 options:1];

  sub_29E609B5C(0, &qword_2A1A7BDB0, 0x29EDBAD20);
  v12 = MEMORY[0x29ED97000](*MEMORY[0x29EDBA850]);
  v20 = sub_29E67578C;
  v21 = 0;
  aBlock = MEMORY[0x29EDCA5F8];
  v17 = 1107296256;
  v18 = sub_29E675798;
  v19 = &unk_2A2500068;
  v13 = _Block_copy(&aBlock);
  [a2 deleteObjectsOfType:v12 predicate:v11 withCompletion:v13];
  _Block_release(v13);

  sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
  v14 = MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D8]);
  v20 = sub_29E675820;
  v21 = 0;
  aBlock = MEMORY[0x29EDCA5F8];
  v17 = 1107296256;
  v18 = sub_29E675798;
  v19 = &unk_2A2500090;
  v15 = _Block_copy(&aBlock);
  [a2 deleteObjectsOfType:v14 predicate:v11 withCompletion:v15];
  _Block_release(v15);
}

uint64_t sub_29E674244(uint64_t a1, uint64_t a2, void *a3)
{
  v50 = a3;
  v51 = a1;
  v52 = a2;
  v3 = sub_29E752098();
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v47 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x29EDC9C68];
  sub_29E671E98(0, &qword_2A1A7CFB8, MEMORY[0x29EDB9D58], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v45 - v7;
  sub_29E671E98(0, &qword_2A1A7D368, MEMORY[0x29EDB9D18], v5);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v45 - v10;
  v12 = sub_29E74E8C8();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E671E98(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8], v5);
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v18 = &v45 - v17;
  v19 = sub_29E74ED28();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x2A1C7C4A8](v19);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v46 = &v45 - v24;
  v25 = sub_29E74EE78();
  (*(*(v25 - 8) + 56))(v11, 1, 1, v25);
  v26 = sub_29E74EE88();
  (*(*(v26 - 8) + 56))(v8, 1, 1, v26);
  sub_29E74E8B8();
  sub_29E74E7F8();
  sub_29E74EDE8();
  v27 = *(v20 + 8);
  v27(v23, v19);
  (*(v13 + 8))(v15, v12);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_29E6765C0(v18, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
    v28 = v47;
    sub_29E752068();
    v29 = sub_29E752088();
    v30 = sub_29E7546A8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v31 = 136446210;
      *(v31 + 4) = sub_29E6B9C90(0xD000000000000048, 0x800000029E75B670, aBlock);
      _os_log_impl(&dword_29E5ED000, v29, v30, "[%{public}s] Could not determine start date for apnea event sample", v31, 0xCu);
      sub_29E5FECBC(v32);
      MEMORY[0x29ED98410](v32, -1, -1);
      MEMORY[0x29ED98410](v31, -1, -1);
    }

    return (*(v48 + 8))(v28, v49);
  }

  else
  {
    v34 = v46;
    (*(v20 + 32))(v46, v18, v19);
    sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
    v35 = v27;
    v36 = MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D8]);
    sub_29E74E7F8();
    v37 = sub_29E74EC98();
    v38 = sub_29E74EC98();
    v39 = [objc_opt_self() categorySampleWithType:v36 value:0 startDate:v37 endDate:v38];

    v35(v23, v19);
    sub_29E6163F8();
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_29E764160;
    *(v40 + 32) = v39;
    sub_29E609B5C(0, &qword_2A1858480, 0x29EDBACB0);
    v41 = v39;

    v42 = sub_29E7543D8();

    v43 = swift_allocObject();
    *(v43 + 16) = v40;
    aBlock[4] = sub_29E676D6C;
    aBlock[5] = v43;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29E5FE860;
    aBlock[3] = &unk_2A2500040;
    v44 = _Block_copy(aBlock);

    [v50 saveObjects:v42 skipInsertionFilter:1 completion:v44];
    _Block_release(v44);

    return (v35)(v34, v19);
  }
}

void sub_29E6749F0(void *a1, uint64_t a2)
{
  v4 = sub_29E752098();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E74ED88();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = a1;
    v13 = [v12 UUID];
    sub_29E74ED68();

    sub_29E74ED48();
    (*(v9 + 8))(v11, v8);
    v14 = sub_29E754198();

    v15 = HKSHCreatePossibleSleepApneaDetectedNotificationRequest();

    v16 = [objc_allocWithZone(MEMORY[0x29EDBACA0]) initWithHealthStore_];
    aBlock[4] = sub_29E674D44;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29E5FE860;
    aBlock[3] = &unk_2A24FFFA0;
    v17 = _Block_copy(aBlock);
    [v16 postNotificationWithRequest:v15 completion:v17];
    _Block_release(v17);
  }

  else
  {
    sub_29E752068();
    v18 = sub_29E752088();
    v19 = sub_29E7546C8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock[0] = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_29E6B9C90(0xD000000000000048, 0x800000029E75B670, aBlock);
      _os_log_impl(&dword_29E5ED000, v18, v19, "[%{public}s] Did not get an apnea event sample, not firing notification", v20, 0xCu);
      sub_29E5FECBC(v21);
      MEMORY[0x29ED98410](v21, -1, -1);
      MEMORY[0x29ED98410](v20, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_29E674D44(char a1, void *a2)
{
  v4 = sub_29E752098();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v25 - v9;
  if (a1)
  {
    sub_29E752068();
    v11 = sub_29E752088();
    v12 = sub_29E7546A8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v26 = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_29E6B9C90(0xD000000000000048, 0x800000029E75B670, &v26);
      _os_log_impl(&dword_29E5ED000, v11, v12, "[%{public}s] Successfully force-fired notification!", v13, 0xCu);
      sub_29E5FECBC(v14);
      MEMORY[0x29ED98410](v14, -1, -1);
      MEMORY[0x29ED98410](v13, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    sub_29E752068();
    v16 = a2;
    v17 = sub_29E752088();
    v18 = sub_29E7546A8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136446466;
      *(v19 + 4) = sub_29E6B9C90(0xD000000000000048, 0x800000029E75B670, &v26);
      *(v19 + 12) = 2082;
      v25 = a2;
      v21 = a2;
      sub_29E671E98(0, &qword_2A1858A60, sub_29E66A61C, MEMORY[0x29EDC9C68]);
      v22 = sub_29E7541F8();
      v24 = sub_29E6B9C90(v22, v23, &v26);

      *(v19 + 14) = v24;
      _os_log_impl(&dword_29E5ED000, v17, v18, "[%{public}s] Error firing notification: %{public}s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v20, -1, -1);
      MEMORY[0x29ED98410](v19, -1, -1);
    }

    return (*(v5 + 8))(v10, v4);
  }
}

void sub_29E675080(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_29E74ED28();
  v8 = MEMORY[0x2A1C7C4A8](v7 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v9 = sub_29E74E838();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_opt_self();
  sub_29E74E828();
  sub_29E74E7F8();
  sub_29E74E808();
  v14 = sub_29E74E7D8();
  (*(v10 + 8))(v12, v9);
  v15 = [v13 predicateForSamplesWithinDateInterval:v14 options:1];

  v16 = [objc_allocWithZone(MEMORY[0x29EDBAA68]) initWithIdentifier_];
  if (v16)
  {
    v17 = v16;
    v18 = [objc_allocWithZone(MEMORY[0x29EDBAD40]) initWithSampleType:v16 predicate:v15];

    sub_29E6163F8();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_29E764160;
    *(v19 + 32) = v18;
    v20 = swift_allocObject();
    *(v20 + 16) = a2;
    *(v20 + 24) = a3;
    v21 = objc_allocWithZone(MEMORY[0x29EDBAD70]);
    sub_29E609B5C(0, &qword_2A1858468, 0x29EDBAD40);
    v22 = v18;

    v23 = sub_29E7543D8();

    sub_29E609B5C(0, &qword_2A1858470, 0x29EDBA0F0);
    v24 = sub_29E7543D8();
    aBlock[4] = sub_29E6764DC;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29E6F3DE8;
    aBlock[3] = &unk_2A24FFF78;
    v25 = _Block_copy(aBlock);
    v26 = [v21 initWithQueryDescriptors:v23 limit:1 sortDescriptors:v24 resultsHandler:v25];

    _Block_release(v25);

    [a4 executeQuery_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E67540C(char a1, void *a2, uint64_t a3)
{
  v6 = sub_29E752098();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v31 - v11;
  if (a1)
  {
    sub_29E752068();

    v13 = sub_29E752088();
    v14 = sub_29E7546C8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v32 = v16;
      *v15 = 136446466;
      *(v15 + 4) = sub_29E6B9C90(0xD000000000000048, 0x800000029E75B670, &v32);
      *(v15 + 12) = 2080;
      v17 = sub_29E609B5C(0, &qword_2A1858478, 0x29EDBAD60);
      v18 = MEMORY[0x29ED96D20](a3, v17);
      v20 = sub_29E6B9C90(v18, v19, &v32);

      *(v15 + 14) = v20;
      _os_log_impl(&dword_29E5ED000, v13, v14, "[%{public}s] Successfully wrote samples to database! Samples: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v16, -1, -1);
      MEMORY[0x29ED98410](v15, -1, -1);
    }

    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    sub_29E752068();
    v22 = a2;
    v23 = sub_29E752088();
    v24 = sub_29E7546A8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v32 = v27;
      *v25 = 136446466;
      *(v25 + 4) = sub_29E6B9C90(0xD000000000000048, 0x800000029E75B670, &v32);
      *(v25 + 12) = 2112;
      if (a2)
      {
        v28 = a2;
        v29 = _swift_stdlib_bridgeErrorToNSError();
        v30 = v29;
      }

      else
      {
        v29 = 0;
        v30 = 0;
      }

      *(v25 + 14) = v29;
      *v26 = v30;
      _os_log_impl(&dword_29E5ED000, v23, v24, "[%{public}s] Could not add samples to database with error: %@", v25, 0x16u);
      sub_29E6764FC(v26);
      MEMORY[0x29ED98410](v26, -1, -1);
      sub_29E5FECBC(v27);
      MEMORY[0x29ED98410](v27, -1, -1);
      MEMORY[0x29ED98410](v25, -1, -1);
    }

    return (*(v7 + 8))(v12, v6);
  }
}

void sub_29E675798(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_29E67582C(char a1, uint64_t a2, void *a3, const char *a4, ...)
{
  v8 = sub_29E752098();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v29 - v13;
  if (a1)
  {
    sub_29E752068();
    v15 = sub_29E752088();
    v16 = sub_29E7546C8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v30 = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_29E6B9C90(0xD000000000000048, 0x800000029E75B670, &v30);
      *(v17 + 12) = 2048;
      *(v17 + 14) = a2;
      _os_log_impl(&dword_29E5ED000, v15, v16, a4, v17, 0x16u);
      sub_29E5FECBC(v18);
      MEMORY[0x29ED98410](v18, -1, -1);
      MEMORY[0x29ED98410](v17, -1, -1);
    }

    return (*(v9 + 8))(v12, v8);
  }

  else
  {
    sub_29E752068();
    v20 = a3;
    v21 = sub_29E752088();
    v22 = sub_29E7546A8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v30 = v25;
      *v23 = 136446466;
      *(v23 + 4) = sub_29E6B9C90(0xD000000000000048, 0x800000029E75B670, &v30);
      *(v23 + 12) = 2112;
      if (a3)
      {
        v26 = a3;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        v28 = v27;
      }

      else
      {
        v27 = 0;
        v28 = 0;
      }

      *(v23 + 14) = v27;
      *v24 = v28;
      _os_log_impl(&dword_29E5ED000, v21, v22, "[%{public}s] Could not delete samples from database with error: %@", v23, 0x16u);
      sub_29E6764FC(v24);
      MEMORY[0x29ED98410](v24, -1, -1);
      sub_29E5FECBC(v25);
      MEMORY[0x29ED98410](v25, -1, -1);
      MEMORY[0x29ED98410](v23, -1, -1);
    }

    return (*(v9 + 8))(v14, v8);
  }
}

void sub_29E675B50(uint64_t a1, unint64_t a2, void *a3, void (*a4)(void))
{
  v7 = sub_29E752098();
  v8 = *(v7 - 1);
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x2A1C7C4A8](v9);
  v14 = &v40 - v13;
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v40 - v15;
  if (a3)
  {
    sub_29E752068();
    v17 = a3;
    v18 = sub_29E752088();
    v19 = sub_29E7546A8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v40 = v7;
      v41 = v22;
      v23 = a4;
      v24 = v22;
      *v20 = 136446466;
      *(v20 + 4) = sub_29E6B9C90(0xD000000000000048, 0x800000029E75B670, &v41);
      *(v20 + 12) = 2112;
      v25 = a3;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v26;
      *v21 = v26;
      _os_log_impl(&dword_29E5ED000, v18, v19, "[%{public}s] Error fetching apnea event sample from database with error: %@", v20, 0x16u);
      sub_29E6764FC(v21);
      MEMORY[0x29ED98410](v21, -1, -1);
      sub_29E5FECBC(v24);
      v27 = v24;
      a4 = v23;
      MEMORY[0x29ED98410](v27, -1, -1);
      MEMORY[0x29ED98410](v20, -1, -1);

      (*(v8 + 8))(v16, v40);
LABEL_23:
      (a4)(0);
      return;
    }

    v30 = *(v8 + 8);
    v31 = v16;
LABEL_22:
    v30(v31, v7);
    goto LABEL_23;
  }

  if (!a2)
  {
    sub_29E752068();
    v32 = sub_29E752088();
    v33 = sub_29E7546C8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v41 = v35;
      *v34 = 136446210;
      *(v34 + 4) = sub_29E6B9C90(0xD000000000000048, 0x800000029E75B670, &v41);
      _os_log_impl(&dword_29E5ED000, v32, v33, "[%{public}s] Got nil samples back from query!", v34, 0xCu);
      sub_29E5FECBC(v35);
      MEMORY[0x29ED98410](v35, -1, -1);
      MEMORY[0x29ED98410](v34, -1, -1);
    }

    v30 = *(v8 + 8);
    v31 = v11;
    goto LABEL_22;
  }

  if (a2 >> 62)
  {
    if (!sub_29E754C98())
    {
      goto LABEL_19;
    }
  }

  else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_19:
    sub_29E752068();
    v36 = sub_29E752088();
    v37 = sub_29E7546A8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v41 = v39;
      *v38 = 136446210;
      *(v38 + 4) = sub_29E6B9C90(0xD000000000000048, 0x800000029E75B670, &v41);
      _os_log_impl(&dword_29E5ED000, v36, v37, "[%{public}s] Could not cast fetched sample as an apnea event sample", v38, 0xCu);
      sub_29E5FECBC(v39);
      MEMORY[0x29ED98410](v39, -1, -1);
      MEMORY[0x29ED98410](v38, -1, -1);
    }

    v30 = *(v8 + 8);
    v31 = v14;
    goto LABEL_22;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x29ED976A0](0, a2);
  }

  else
  {
    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v28 = *(a2 + 32);
  }

  v40 = v28;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_19;
  }

  a4();
  v29 = v40;
}

uint64_t sub_29E676048()
{
  sub_29E676248(0, &qword_2A1858440, &qword_2A1858448, sub_29E6762CC, MEMORY[0x29EDBCA18]);
  sub_29E676330();
  return sub_29E753528();
}

void sub_29E676100()
{
  if (!qword_2A1858428)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A1858428);
    }
  }
}

unint64_t sub_29E676160()
{
  result = qword_2A1858430;
  if (!qword_2A1858430)
  {
    sub_29E676248(255, &qword_2A1858418, &qword_2A1858420, sub_29E676100, MEMORY[0x29EDBCBF8]);
    sub_29E676400(&qword_2A1858438, &qword_2A1858420, sub_29E676100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858430);
  }

  return result;
}

void sub_29E676248(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    sub_29E671E98(255, a3, a4, MEMORY[0x29EDBCC28]);
    v6 = sub_29E753BA8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29E6762CC(uint64_t a1)
{
  if (!qword_2A1858450)
  {
    sub_29E61D510();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1858450);
    }
  }
}

unint64_t sub_29E676330()
{
  result = qword_2A1858458;
  if (!qword_2A1858458)
  {
    sub_29E676248(255, &qword_2A1858440, &qword_2A1858448, sub_29E6762CC, MEMORY[0x29EDBCA18]);
    sub_29E676400(&qword_2A1858460, &qword_2A1858448, sub_29E6762CC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858458);
  }

  return result;
}

uint64_t sub_29E676400(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29E671E98(255, a2, a3, MEMORY[0x29EDBCC28]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E6764E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E6764FC(uint64_t a1)
{
  sub_29E676558(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E676558(uint64_t a1)
{
  if (!qword_2A1A7D0A8)
  {
    sub_29E609B5C(255, &qword_2A1A7D0B0, 0x29EDC9738);
    v1 = sub_29E754BD8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7D0A8);
    }
  }
}

uint64_t sub_29E6765C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E671E98(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E676630(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v62 = sub_29E74EE68();
  v3 = *(v62 - 8);
  MEMORY[0x2A1C7C4A8](v62);
  v55 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E671E98(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v6 = MEMORY[0x2A1C7C4A8](v5 - 8);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v60 = &v46 - v9;
  v10 = sub_29E74ED28();
  v11 = MEMORY[0x2A1C7C4A8](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v46 - v14;
  v59 = 0;
  v48 = MEMORY[0x29EDCA190];
  v64 = MEMORY[0x29EDCA190];
  v16 = *(v3 + 104);
  v54 = *MEMORY[0x29EDB9CB8];
  v61 = v3 + 104;
  v57 = (v3 + 8);
  v58 = v16;
  v56 = (v17 + 48);
  v52 = (v17 + 32);
  v51 = *MEMORY[0x29EDB9CE8];
  v49 = &v46 - v14;
  v50 = (v17 + 8);
  v18 = 0x20u;
  v19 = *MEMORY[0x29EDBA850];
  v46 = v13;
  v47 = v19;
  v53 = a1;
  while (1)
  {
    v21 = *(&unk_2A24FC6A0 + v18);
    v22 = v55;
    v23 = v62;
    v58(v55, v54, v62);
    v24 = v60;
    sub_29E74EE48();
    v25 = *v57;
    (*v57)(v22, v23);
    v26 = *v56;
    v27 = (*v56)(v24, 1, v10);
    v20 = v24;
    if (v27 == 1)
    {
      goto LABEL_3;
    }

    v28 = *v52;
    (*v52)(v15, v60, v10);
    v29 = v55;
    v30 = v8;
    v31 = v62;
    v58(v55, v51, v62);
    sub_29E74EE48();
    v32 = v29;
    v33 = v10;
    v34 = v31;
    v8 = v30;
    v25(v32, v34);
    if (v26(v30, 1, v10) != 1)
    {
      break;
    }

    v15 = v49;
    (*v50)(v49, v10);
    v20 = v30;
LABEL_3:
    sub_29E6765C0(v20, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
LABEL_4:
    v18 += 8;
    if (v18 == 1472)
    {
      return v48;
    }
  }

  v35 = v46;
  v28(v46, v8, v10);
  sub_29E609B5C(0, &qword_2A1A7BDB0, 0x29EDBAD20);
  v36 = MEMORY[0x29ED97000](v47);
  v37 = [objc_opt_self() countUnit];
  v38 = [objc_opt_self() quantityWithUnit:v37 doubleValue:v21];

  v39 = v49;
  v40 = sub_29E74EC98();
  v41 = sub_29E74EC98();
  v42 = [objc_opt_self() quantitySampleWithType:v36 quantity:v38 startDate:v40 endDate:v41];

  MEMORY[0x29ED96CE0]();
  v10 = v33;
  if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_29E754418();
  }

  sub_29E754438();
  v43 = *v50;
  (*v50)(v35, v33);
  result = (v43)(v39, v33);
  if (!__OFADD__(v59++, 1))
  {
    v15 = v39;
    v48 = v64;
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

void sub_29E676BF0(uint64_t a1)
{
  if (!qword_2A1858490)
  {
    sub_29E676248(255, &qword_2A1858418, &qword_2A1858420, sub_29E676100, MEMORY[0x29EDBCBF8]);
    sub_29E676160();
    v1 = sub_29E753538();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858490);
    }
  }
}

uint64_t sub_29E676C80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29E676CC8(uint64_t a1)
{
  if (!qword_2A18584A0)
  {
    sub_29E676248(255, &qword_2A1858440, &qword_2A1858448, sub_29E6762CC, MEMORY[0x29EDBCA18]);
    sub_29E676330();
    v1 = sub_29E753538();
    if (!v2)
    {
      atomic_store(v1, &qword_2A18584A0);
    }
  }
}

uint64_t type metadata accessor for SleepApneaOnboardingConfirmDetailsViewController(uint64_t a1)
{
  result = qword_2A18584C0;
  if (!qword_2A18584C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_29E676E34(void *a1)
{
  v3 = sub_29E74F8B8();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + qword_2A18584A8 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + qword_2A18584B8) = 0;
  type metadata accessor for SleepApneaOnboardingConfirmDetailsDataSource(0);
  swift_allocObject();
  v12 = a1;
  *(v1 + qword_2A18584B0) = sub_29E681268(a1);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  v11 = sub_29E74F7C8();
  v7 = *(v4 + 8);
  v7(v6, v3);
  sub_29E74F8A8();
  sub_29E74F7C8();
  v7(v6, v3);

  v8 = sub_29E751568();
  sub_29E6790A8();
  v9 = v8;

  sub_29E751818();

  return v9;
}

void sub_29E6770E4()
{
  v1 = v0;
  v2 = sub_29E74F698();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E74F8B8();
  v7 = *(v6 - 1);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SleepApneaOnboardingConfirmDetailsViewController(0);
  v37.receiver = v0;
  v37.super_class = v10;
  objc_msgSendSuper2(&v37, sel_viewDidLoad);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  v11 = *(v7 + 8);
  v34 = v6;
  v30 = v11;
  v11(v9, v6);
  v12 = sub_29E754198();

  v13 = *(v3 + 104);
  v35 = *MEMORY[0x29EDC6AC0];
  v33 = v13;
  v31 = v3 + 104;
  (v13)(v5);
  sub_29E754238();
  v14 = *(v3 + 8);
  v36 = v3 + 8;
  v32 = v14;
  v14(v5, v2);
  v15 = sub_29E754198();

  v16 = [v1 hxui:v12 addPrimaryFooterButtonWithTitle:v15 accessibilityIdentifier:?];

  v17 = *&v1[qword_2A18584B8];
  *&v1[qword_2A18584B8] = v16;
  v18 = v16;

  v19 = sub_29E680A7C() != 2 && sub_29E680A70() != 2;
  [v18 setEnabled_];

  v20 = [v1 buttonTray];
  sub_29E74F8A8();
  sub_29E74F7C8();
  v30(v9, v34);
  v21 = sub_29E754198();

  [v20 setCaptionText_];

  v22 = [v1 headerView];
  v23 = v35;
  v24 = v33;
  v34 = v1;
  v33(v5, v35, v2);
  sub_29E754238();
  v25 = v32;
  v32(v5, v2);
  v26 = sub_29E754198();

  [v22 setTitleAccessibilityIdentifier_];

  v27 = [v34 headerView];
  v24(v5, v23, v2);
  sub_29E754238();
  v25(v5, v2);
  v28 = sub_29E754198();

  [v27 setDetailTextAccessibilityIdentifier_];
}

uint64_t sub_29E67763C()
{
  sub_29E679100(0, &qword_2A1859CD0, MEMORY[0x29EDCA398]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v11 - v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_29E7544D8();
    v6 = sub_29E7544F8();
    (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
    sub_29E7544C8();
    swift_unknownObjectRetain();
    v7 = v0;
    v8 = sub_29E7544B8();
    v9 = swift_allocObject();
    v10 = MEMORY[0x29EDCA390];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v5;
    v9[5] = v7;
    v9[6] = &off_2A25000D0;
    sub_29E6E4804(0, 0, v3, &unk_29E767EC0, v9);

    return sub_29E751758();
  }

  return result;
}

void sub_29E6777D0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

void sub_29E6778AC(char *a1, uint64_t a2, uint64_t a3)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = a1;
    sub_29E6D18E4(v5);

    sub_29E751758();
  }

  else
  {
  }
}

void sub_29E6779E8()
{
  sub_29E5F0140(v0 + qword_2A18584A8);

  v1 = *(v0 + qword_2A18584B8);
}

id sub_29E677A38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepApneaOnboardingConfirmDetailsViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29E677A70(uint64_t a1)
{
  sub_29E5F0140(a1 + qword_2A18584A8);

  v2 = *(a1 + qword_2A18584B8);
}

uint64_t sub_29E677ADC(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_2A18584A8 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return sub_29E751758();
}

uint64_t sub_29E677B2C(char a1, void *a2, uint64_t a3)
{
  v52 = a2;
  v53 = a3;
  v54 = 0xD000000000000017;
  v4 = sub_29E74F698();
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v49 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E74F8B8();
  v47 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E752098();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v13 = sub_29E752088();
  v14 = sub_29E7546C8();
  v15 = os_log_type_enabled(v13, v14);
  v48 = v6;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v46 = v9;
    v18 = v17;
    v56 = v17;
    *v16 = 136315650;
    nullsub_1();
    v19 = sub_29E755178();
    v21 = sub_29E6B9C90(v19, v20, &v56);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_29E6B9C90(0xD000000000000017, 0x800000029E75B880, &v56);
    *(v16 + 22) = 2080;
    v55 = a1;
    v22 = sub_29E7541F8();
    v24 = sub_29E6B9C90(v22, v23, &v56);

    *(v16 + 24) = v24;
    _os_log_impl(&dword_29E5ED000, v13, v14, "[%s.%s]: Showing blocking alert due to reason %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v18, -1, -1);
    MEMORY[0x29ED98410](v16, -1, -1);

    (*(v10 + 8))(v12, v46);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v25 = v47;
  if (!a1)
  {
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74F8A8();
    v46 = sub_29E74F7C8();
    v27 = v29;
    v28 = "ONBOARDING_ALERT_AGE_TOO_LOW";
    v30 = 0xD000000000000014;
    goto LABEL_15;
  }

  if (a1 != 1)
  {
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74F8A8();
    v46 = sub_29E74F7C8();
    v27 = v31;
    v28 = "_UNKNOWN_COMPLETION_ERROR";
    v30 = 0xD000000000000012;
LABEL_15:
    v54 = v30;
    goto LABEL_16;
  }

  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  v46 = sub_29E74F7C8();
  v27 = v26;
  v28 = "_NO_SLEEP_APNEA_DIAGNOSIS";
LABEL_16:
  v32 = *(v25 + 8);
  v33 = v48;
  v32(v8, v48);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  v32(v8, v33);
  v34 = sub_29E754198();

  v35 = [objc_opt_self() actionWithTitle:v34 style:1 handler:0];

  v37 = v49;
  v36 = v50;
  v38 = v51;
  (*(v50 + 104))(v49, *MEMORY[0x29EDC6AC0], v51);
  sub_29E67905C(0, &qword_2A1A7BCF0, MEMORY[0x29EDC99B0]);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_29E762F30;
  *(v39 + 32) = v54;
  *(v39 + 40) = v28 | 0x8000000000000000;
  v40 = sub_29E754238();
  v42 = v41;

  (*(v36 + 8))(v37, v38);
  sub_29E67905C(0, &qword_2A1A7BCE0, MEMORY[0x29EDCA170] + 8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E764160;
  *(inited + 32) = v35;
  v44 = v35;
  sub_29E67828C(v46, v27, inited, v52, v40, v42);

  swift_setDeallocating();
  return swift_arrayDestroy();
}

void sub_29E67828C(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v39 = a5;
  v40 = a6;
  v8 = sub_29E752098();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v12 = a4;
  v13 = sub_29E752088();
  v14 = sub_29E7546C8();
  v38 = v12;

  v15 = os_log_type_enabled(v13, v14);
  v41 = a3;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v37 = v8;
    v18 = v17;
    v43 = v17;
    *v16 = 136315650;
    nullsub_1();
    v19 = sub_29E755178();
    v21 = sub_29E6B9C90(v19, v20, &v43);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_29E6B9C90(0xD000000000000050, 0x800000029E75B8E0, &v43);
    *(v16 + 22) = 2080;
    v42 = 1;
    v22 = sub_29E7541F8();
    v24 = sub_29E6B9C90(v22, v23, &v43);

    *(v16 + 24) = v24;
    _os_log_impl(&dword_29E5ED000, v13, v14, "[%s.%s]: Presenting alert from stage %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v18, -1, -1);
    v25 = v16;
    a3 = v41;
    MEMORY[0x29ED98410](v25, -1, -1);

    (*(v9 + 8))(v11, v37);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v26 = sub_29E754198();
  v27 = [objc_opt_self() alertControllerWithTitle:v26 message:0 preferredStyle:1];

  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29E754C98())
  {
    v29 = 0;
    v30 = a3 & 0xC000000000000001;
    v31 = a3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v30)
      {
        v33 = MEMORY[0x29ED976A0](v29, a3);
      }

      else
      {
        if (v29 >= *(v31 + 16))
        {
          goto LABEL_16;
        }

        v33 = *(a3 + 8 * v29 + 32);
      }

      v34 = v33;
      v35 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      sub_29E7544C8();
      sub_29E7544B8();
      sub_29E754468();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v32 = sub_29E754198();
      [v34 setAccessibilityIdentifier_];

      [v27 addAction_];

      ++v29;
      a3 = v41;
      if (v35 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:
  [v38 presentViewController:v27 animated:1 completion:0];
}

void sub_29E6786A4(void *a1, void *a2)
{
  v77 = a1;
  v2 = *a2;
  v71 = a2;
  v3 = v2;
  sub_29E679100(0, &qword_2A18584D0, MEMORY[0x29EDB9D70]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v69 - v5;
  v7 = sub_29E74EEE8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v72 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v78 = &v69 - v11;
  v12 = sub_29E752098();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v14);
  v76 = &v69 - v18;
  MEMORY[0x2A1C7C4A8](v17);
  v20 = &v69 - v19;
  sub_29E752048();
  v21 = sub_29E752088();
  v22 = sub_29E7546C8();
  v23 = os_log_type_enabled(v21, v22);
  v74 = v3;
  v75 = v16;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v73 = v12;
    v25 = v24;
    v26 = swift_slowAlloc();
    v70 = v7;
    v27 = v26;
    v80 = v26;
    *v25 = 136446722;
    nullsub_1();
    v28 = sub_29E755178();
    v30 = sub_29E6B9C90(v28, v29, &v80);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_29E6B9C90(0xD00000000000002DLL, 0x800000029E75B750, &v80);
    *(v25 + 22) = 2080;
    LOBYTE(v79) = 1;
    v31 = sub_29E7541F8();
    v33 = sub_29E6B9C90(v31, v32, &v80);

    *(v25 + 24) = v33;
    _os_log_impl(&dword_29E5ED000, v21, v22, "[%{public}s.%s]: Details cell tapped from stage %s", v25, 0x20u);
    swift_arrayDestroy();
    v34 = v27;
    v7 = v70;
    MEMORY[0x29ED98410](v34, -1, -1);
    v35 = v25;
    v12 = v73;
    MEMORY[0x29ED98410](v35, -1, -1);
  }

  v36 = v13[1];
  v36(v20, v12);
  v37 = v77;
  sub_29E751808();
  v38 = (*(v8 + 48))(v6, 1, v7);
  v39 = v78;
  if (v38 != 1)
  {
    (*(v8 + 32))(v78, v6, v7);
    v49 = sub_29E74EED8();
    if (v49)
    {
      if (v49 != 1)
      {
        v77 = v13;
        sub_29E752048();
        v54 = v72;
        (*(v8 + 16))(v72, v39, v7);
        v55 = sub_29E752088();
        v56 = sub_29E7546A8();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v73 = v12;
          v76 = v58;
          v80 = v58;
          *v57 = 136446722;
          nullsub_1();
          v59 = sub_29E755178();
          LODWORD(v74) = v56;
          v61 = sub_29E6B9C90(v59, v60, &v80);

          *(v57 + 4) = v61;
          *(v57 + 12) = 2080;
          *(v57 + 14) = sub_29E6B9C90(0xD00000000000002DLL, 0x800000029E75B750, &v80);
          *(v57 + 22) = 2080;
          v79 = sub_29E74EED8();
          v62 = sub_29E754FD8();
          v64 = v63;
          v65 = *(v8 + 8);
          v65(v54, v7);
          v66 = sub_29E6B9C90(v62, v64, &v80);

          *(v57 + 24) = v66;
          _os_log_impl(&dword_29E5ED000, v55, v74, "[%{public}s.%s]: Unknown indexPath section: %s", v57, 0x20u);
          v67 = v76;
          swift_arrayDestroy();
          MEMORY[0x29ED98410](v67, -1, -1);
          MEMORY[0x29ED98410](v57, -1, -1);

          v36(v75, v73);
          v65(v78, v7);
        }

        else
        {

          v68 = *(v8 + 8);
          v68(v54, v7);
          v36(v75, v12);
          v68(v39, v7);
        }

        return;
      }

      v50 = sub_29E680A70();
      if (v50 != 2 && (v50 & 1) != 0)
      {
        v51 = v37;
        v52 = 1;
LABEL_20:
        sub_29E677B2C(v52, v51, v71);

        (*(v8 + 8))(v39, v7);
        return;
      }
    }

    else
    {
      v53 = sub_29E680A7C();
      if (v53 != 2 && (v53 & 1) == 0)
      {
        v51 = v37;
        v52 = 0;
        goto LABEL_20;
      }
    }

    (*(v8 + 8))(v39, v7);

    return;
  }

  sub_29E678FE4(v6);
  v40 = v76;
  sub_29E752048();
  v41 = sub_29E752088();
  v42 = sub_29E7546C8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v80 = v44;
    *v43 = 136446466;
    nullsub_1();
    v45 = sub_29E755178();
    v47 = sub_29E6B9C90(v45, v46, &v80);

    *(v43 + 4) = v47;
    *(v43 + 12) = 2080;
    *(v43 + 14) = sub_29E6B9C90(0xD00000000000002DLL, 0x800000029E75B750, &v80);
    _os_log_impl(&dword_29E5ED000, v41, v42, "[%{public}s.%s]: Received call to onboardingViewControllerDidTapDetailsCell without an indexPath, no need to display an error", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v44, -1, -1);
    MEMORY[0x29ED98410](v43, -1, -1);

    v48 = v76;
  }

  else
  {

    v48 = v40;
  }

  v36(v48, v12);
}

void sub_29E678F14()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_29E6786A4(v0, Strong);
    sub_29E751758();
  }

  v2 = *&v0[qword_2A18584B8];
  if (v2)
  {
    v4 = v2;
    v3 = sub_29E680A7C() != 2 && sub_29E680A70() != 2;
    [v4 setEnabled_];
  }
}

uint64_t sub_29E678FE4(uint64_t a1)
{
  sub_29E679100(0, &qword_2A18584D0, MEMORY[0x29EDB9D70]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E67905C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_29E754FE8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29E6790A8()
{
  result = qword_2A18584D8;
  if (!qword_2A18584D8)
  {
    type metadata accessor for SleepApneaOnboardingConfirmDetailsViewController(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18584D8);
  }

  return result;
}

void sub_29E679100(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754BD8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E679154(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29E605728;

  return sub_29E719BF0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_29E67921C(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v39 = *v2;
  sub_29E679918(0, &qword_2A1A7BF40, sub_29E662AC4, MEMORY[0x29EDB8AB0]);
  v5 = v4;
  v40 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v34 - v6;
  sub_29E64942C(0);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E67997C(0);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v43 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E662AC4(0);
  v14 = MEMORY[0x2A1C7C4A8](v13);
  v42 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v34 - v16;
  v18 = sub_29E752098();
  v41 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v21 = sub_29E752088();
  v38 = sub_29E7546C8();
  if (os_log_type_enabled(v21, v38))
  {
    v22 = swift_slowAlloc();
    v36 = a1;
    v23 = v22;
    v24 = swift_slowAlloc();
    v37 = v5;
    v35 = v24;
    v45 = v24;
    *v23 = 136446466;
    v25 = sub_29E755178();
    v27 = sub_29E6B9C90(v25, v26, &v45);
    v39 = v18;
    v28 = v27;

    *(v23 + 4) = v28;
    *(v23 + 12) = 2082;
    *(v23 + 14) = sub_29E6B9C90(0xD00000000000002DLL, 0x800000029E75BB70, &v45);
    _os_log_impl(&dword_29E5ED000, v21, v38, "[%{public}s.%{public}s] Making health checklist feed item publisher", v23, 0x16u);
    v29 = v35;
    swift_arrayDestroy();
    v5 = v37;
    MEMORY[0x29ED98410](v29, -1, -1);
    MEMORY[0x29ED98410](v23, -1, -1);

    (*(v41 + 8))(v20, v39);
  }

  else
  {

    (*(v41 + 8))(v20, v18);
  }

  v30 = v43;
  sub_29E679C6C(v44, sub_29E67BF40, 0, sub_29E67BF44, 0, v43);
  v31 = sub_29E74FE78();
  sub_29E67A5CC(v10);
  sub_29E67AA6C(v30, v31, v10, v17);

  sub_29E6799B0(v10, sub_29E64942C);
  sub_29E6799B0(v30, sub_29E67997C);
  sub_29E662CE4(v17, v42);
  sub_29E752818();
  sub_29E679A10();
  v32 = sub_29E7528E8();
  (*(v40 + 8))(v7, v5);
  sub_29E6799B0(v17, sub_29E662AC4);
  return v32;
}

uint64_t sub_29E67977C()
{
  sub_29E6163F8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E7655E0;
  sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
  *(inited + 32) = MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D8]);
  sub_29E609B5C(0, &qword_2A1A7BDB0, 0x29EDBAD20);
  *(inited + 40) = MEMORY[0x29ED97000](*MEMORY[0x29EDBA850]);
  sub_29E5FEFC4(inited);
  v2 = v1;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_29E679864@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC36F0];
  v3 = sub_29E74FB98();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_29E679918(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E6799B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29E679A10()
{
  result = qword_2A1A7BF48;
  if (!qword_2A1A7BF48)
  {
    sub_29E679918(255, &qword_2A1A7BF40, sub_29E662AC4, MEMORY[0x29EDB8AB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7BF48);
  }

  return result;
}

uint64_t sub_29E679AA8()
{
  v0 = objc_opt_self();
  v1 = [v0 configurationWithPointSize:4 weight:3 scale:36.0];
  v2 = [v0 configurationPreferringMonochrome];
  v3 = [v1 configurationByApplyingConfiguration_];

  sub_29E67EB20(0, &qword_2A1A7BCE0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29E764160;
  *(v4 + 32) = [objc_opt_self() hk_respiratoryKeyColor];
  sub_29E609B5C(0, &qword_2A1A7BD48, 0x29EDC7A00);
  v5 = sub_29E7543D8();

  v6 = [v0 configurationWithPaletteColors_];

  v7 = [v3 configurationByApplyingConfiguration_];

  return sub_29E7501F8();
}

uint64_t sub_29E679C6C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v69 = a5;
  v70 = a4;
  v66 = a2;
  v67 = a3;
  v79 = a6;
  v7 = sub_29E752098();
  v75 = *(v7 - 8);
  v76 = v7;
  v8 = MEMORY[0x2A1C7C4A8](v7);
  v74 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v65 = &v63 - v10;
  v73 = sub_29E751D38();
  v71 = *(v73 - 8);
  MEMORY[0x2A1C7C4A8](v73);
  v72 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_29E751D68();
  v12 = *(v78 - 8);
  MEMORY[0x2A1C7C4A8](v78);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29E751D58();
  v77 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29E751D98();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x2A1C7C4A8](v18);
  v64 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x2A1C7C4A8](v20);
  v68 = &v63 - v23;
  MEMORY[0x2A1C7C4A8](v22);
  v25 = &v63 - v24;
  v26 = *(v19 + 16);
  v26(&v63 - v24, a1, v18);
  v27 = (*(v19 + 88))(v25, v18);
  if (v27 == *MEMORY[0x29EDC2D70])
  {
    (*(v19 + 96))(v25, v18);
    v28 = v77;
    (*(v77 + 32))(v17, v25, v15);
    sub_29E751D28();
    v29 = sub_29E751D78();
    (*(v12 + 8))(v14, v78);
    if ([v29 areAllRequirementsSatisfied])
    {
      v30 = v79;
      sub_29E67BF48(v79);

      (*(v28 + 8))(v17, v15);
      v31 = type metadata accessor for SleepApneaHealthChecklistFeedItemComponents(0);
      v32 = *(*(v31 - 8) + 56);
      v33 = v30;
LABEL_11:
      v44 = 0;
      return v32(v33, v44, 1, v31);
    }

    v43 = (v28 + 8);
    if (sub_29E67E894(v29))
    {
      v42 = v79;
      sub_29E67C39C(v79);

      (*v43)(v17, v15);
      goto LABEL_10;
    }

    sub_29E67C7F4(v29, v66, v67, v79);

    return (*v43)(v17, v15);
  }

  else
  {
    v34 = v78;
    if (v27 == *MEMORY[0x29EDC2D68])
    {
      v35 = v12;
      (*(v19 + 96))(v25, v18);
      v37 = v71;
      v36 = v72;
      v38 = v73;
      v39 = (*(v71 + 32))(v72, v25, v73);
      if ((v70(v39) & 1) == 0)
      {
        v56 = v65;
        sub_29E752048();
        v57 = sub_29E752088();
        v58 = sub_29E7546C8();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v80 = v60;
          *v59 = 136446210;
          *(v59 + 4) = sub_29E6B9C90(0xD000000000000028, 0x800000029E767F40, &v80);
          _os_log_impl(&dword_29E5ED000, v57, v58, "[%{public}s] No paired watch, not creating components", v59, 0xCu);
          sub_29E5FECBC(v60);
          MEMORY[0x29ED98410](v60, -1, -1);
          MEMORY[0x29ED98410](v59, -1, -1);
        }

        (*(v75 + 8))(v56, v76);
        (*(v37 + 8))(v36, v38);
        v31 = type metadata accessor for SleepApneaHealthChecklistFeedItemComponents(0);
        v32 = *(*(v31 - 8) + 56);
        v33 = v79;
        v44 = 1;
        return v32(v33, v44, 1, v31);
      }

      sub_29E751D28();
      v40 = sub_29E751D78();
      (*(v35 + 8))(v14, v34);
      v41 = (v37 + 8);
      if ([v40 areAllRequirementsSatisfied])
      {
        v42 = v79;
        sub_29E67E244(v79);

        (*v41)(v36, v38);
LABEL_10:
        v31 = type metadata accessor for SleepApneaHealthChecklistFeedItemComponents(0);
        v32 = *(*(v31 - 8) + 56);
        v33 = v42;
        goto LABEL_11;
      }

      sub_29E67C7F4(v40, v66, v67, v79);

      return (*v41)(v36, v38);
    }

    else
    {
      v45 = v74;
      sub_29E752048();
      v46 = v68;
      v26(v68, a1, v18);
      v47 = sub_29E752088();
      v48 = sub_29E7546A8();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v80 = v78;
        *v49 = 136446466;
        *(v49 + 4) = sub_29E6B9C90(0xD000000000000028, 0x800000029E767F40, &v80);
        *(v49 + 12) = 2080;
        LODWORD(v77) = v48;
        v26(v64, v46, v18);
        v50 = sub_29E7541F8();
        v52 = v51;
        v53 = *(v19 + 8);
        v53(v46, v18);
        v54 = sub_29E6B9C90(v50, v52, &v80);

        *(v49 + 14) = v54;
        _os_log_impl(&dword_29E5ED000, v47, v77, "[%{public}s] Unknown feature status received: %s", v49, 0x16u);
        v55 = v78;
        swift_arrayDestroy();
        MEMORY[0x29ED98410](v55, -1, -1);
        MEMORY[0x29ED98410](v49, -1, -1);

        (*(v75 + 8))(v74, v76);
      }

      else
      {

        v53 = *(v19 + 8);
        v53(v46, v18);
        (*(v75 + 8))(v45, v76);
      }

      v62 = type metadata accessor for SleepApneaHealthChecklistFeedItemComponents(0);
      (*(*(v62 - 8) + 56))(v79, 1, 1, v62);
      return (v53)(v25, v18);
    }
  }
}

uint64_t sub_29E67A5CC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E752098();
  v37 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v38 = &v33[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_29E74FF68();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x2A1C7C4A8](v6);
  v11 = &v33[-v10];
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v33[-v12];
  sub_29E6302C8(0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v33[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E74FEA8();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = a1;
    v36 = v2;
    (*(v5 + 32))(v13, v16, v4);
    sub_29E752048();
    v17 = *(v5 + 16);
    v17(v11, v13, v4);
    v18 = sub_29E752088();
    v19 = sub_29E7546A8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v34 = v19;
      v21 = v20;
      v22 = swift_slowAlloc();
      v39 = v22;
      *v21 = 136446466;
      *(v21 + 4) = sub_29E6B9C90(0xD000000000000028, 0x800000029E767F40, &v39);
      *(v21 + 12) = 2082;
      v17(v8, v11, v4);
      v23 = sub_29E7541F8();
      v25 = v24;
      v26 = *(v5 + 8);
      v26(v11, v4);
      v27 = sub_29E6B9C90(v23, v25, &v39);

      *(v21 + 14) = v27;
      _os_log_impl(&dword_29E5ED000, v18, v34, "[%{public}s] Failed to get country code: %{public}s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v22, -1, -1);
      MEMORY[0x29ED98410](v21, -1, -1);
    }

    else
    {

      v26 = *(v5 + 8);
      v26(v11, v4);
    }

    (*(v37 + 8))(v38, v36);
    v26(v13, v4);
    v31 = v35;
    v32 = sub_29E74FFA8();
    return (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
  }

  else
  {
    v28 = sub_29E74FFA8();
    v29 = *(v28 - 8);
    (*(v29 + 32))(a1, v16, v28);
    return (*(v29 + 56))(a1, 0, 1, v28);
  }
}

uint64_t sub_29E67AA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v114 = a3;
  v118 = a1;
  v121 = a4;
  v105 = sub_29E750258();
  v104 = *(v105 - 8);
  MEMORY[0x2A1C7C4A8](v105);
  v103 = v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_29E74FB98();
  v100 = *(v101 - 8);
  MEMORY[0x2A1C7C4A8](v101);
  v99 = v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x29EDC9C68];
  sub_29E67E948(0, &qword_2A1A7CF30, MEMORY[0x29EDC1948], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v98 = v93 - v9;
  sub_29E67E948(0, qword_2A1A7CFF0, MEMORY[0x29EDB9B18], v7);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v96 = v93 - v11;
  sub_29E67E948(0, &qword_2A1A7CF38, MEMORY[0x29EDC17F0], v7);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v97 = v93 - v13;
  v108 = sub_29E7501E8();
  v107 = *(v108 - 8);
  MEMORY[0x2A1C7C4A8](v108);
  v115 = v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_29E74F8B8();
  v116 = *(v110 - 8);
  MEMORY[0x2A1C7C4A8](v110);
  v109 = v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_29E750338();
  v112 = *(v113 - 8);
  MEMORY[0x2A1C7C4A8](v113);
  v111 = v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29E752098();
  v18 = *(v17 - 8);
  v119 = v17;
  v120 = v18;
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v21 = v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x2A1C7C4A8](v19);
  v24 = v93 - v23;
  v25 = MEMORY[0x2A1C7C4A8](v22);
  v106 = (v93 - v26);
  MEMORY[0x2A1C7C4A8](v25);
  v95 = v93 - v27;
  sub_29E67E948(0, &qword_2A1A7CF50, MEMORY[0x29EDC3A58], v7);
  MEMORY[0x2A1C7C4A8](v28 - 8);
  v30 = v93 - v29;
  v31 = type metadata accessor for SleepApneaHealthChecklistActionHandlerUserData(0);
  MEMORY[0x2A1C7C4A8](v31);
  v117 = v93 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E67E948(0, qword_2A1A7C698, type metadata accessor for SleepApneaHealthChecklistFeedItemComponents, v7);
  MEMORY[0x2A1C7C4A8](v33 - 8);
  v35 = v93 - v34;
  v36 = type metadata accessor for SleepApneaHealthChecklistFeedItemComponents(0);
  v37 = *(v36 - 8);
  MEMORY[0x2A1C7C4A8](v36);
  v39 = v93 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_29E74FBE8();
  v102 = a2;
  LOBYTE(a2) = sub_29E74FBD8();

  if ((a2 & 1) == 0)
  {
    sub_29E752048();
    v45 = sub_29E752088();
    v46 = sub_29E7546A8();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v122 = v48;
      *v47 = 136446466;
      *(v47 + 4) = sub_29E6B9C90(0xD000000000000028, 0x800000029E767F40, &v122);
      *(v47 + 12) = 2082;
      *(v47 + 14) = sub_29E6B9C90(0xD000000000000034, 0x800000029E75BBA0, &v122);
      _os_log_impl(&dword_29E5ED000, v45, v46, "[%{public}s.%{public}s] Tried to make feed item for non-primary profile", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v48, -1, -1);
      MEMORY[0x29ED98410](v47, -1, -1);
    }

    (*(v120 + 8))(v21, v119);
    goto LABEL_9;
  }

  sub_29E67E6FC(v118, v35, qword_2A1A7C698, type metadata accessor for SleepApneaHealthChecklistFeedItemComponents);
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    sub_29E67E7DC(v35, qword_2A1A7C698, type metadata accessor for SleepApneaHealthChecklistFeedItemComponents);
    sub_29E752048();
    v41 = sub_29E752088();
    v42 = sub_29E7546C8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v122 = v44;
      *v43 = 136446466;
      *(v43 + 4) = sub_29E6B9C90(0xD000000000000028, 0x800000029E767F40, &v122);
      *(v43 + 12) = 2082;
      *(v43 + 14) = sub_29E6B9C90(0xD000000000000034, 0x800000029E75BBA0, &v122);
      _os_log_impl(&dword_29E5ED000, v41, v42, "[%{public}s.%{public}s] Nil components, not creating a feed item", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v44, -1, -1);
      MEMORY[0x29ED98410](v43, -1, -1);
    }

    (*(v120 + 8))(v24, v119);
LABEL_9:
    v49 = 1;
    v50 = v121;
    goto LABEL_10;
  }

  sub_29E67E698(v35, v39);
  v53 = v39[*(v36 + 40)];
  sub_29E67E6FC(v114, v30, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
  v54 = *(v31 + 20);
  v55 = sub_29E74FFA8();
  v56 = v117;
  (*(*(v55 - 8) + 56))(&v117[v54], 1, 1, v55);
  *v56 = v53;
  sub_29E643D74(v30, &v56[v54]);
  sub_29E74E7C8();
  swift_allocObject();
  sub_29E74E7B8();
  sub_29E67E84C(&qword_2A18584E0, type metadata accessor for SleepApneaHealthChecklistActionHandlerUserData, &unk_29E76D378);
  v57 = sub_29E74E7A8();
  v114 = v58;
  v118 = v57;

  v59 = v95;
  sub_29E752048();
  v60 = sub_29E752088();
  v61 = sub_29E7546C8();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v122 = v63;
    *v62 = 136446466;
    *(v62 + 4) = sub_29E6B9C90(0xD000000000000028, 0x800000029E767F40, &v122);
    *(v62 + 12) = 2082;
    *(v62 + 14) = sub_29E6B9C90(0xD000000000000034, 0x800000029E75BBA0, &v122);
    _os_log_impl(&dword_29E5ED000, v60, v61, "[%{public}s.%{public}s] Creating a plugin feed item", v62, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v63, -1, -1);
    MEMORY[0x29ED98410](v62, -1, -1);
  }

  (*(v120 + 8))(v59, v119);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v119 = qword_2A1A7FA18;
  v64 = v109;
  sub_29E74F8A8();
  v120 = 0xD000000000000019;
  v93[4] = sub_29E74F7C8();
  v93[3] = v65;
  v66 = *(v116 + 8);
  v116 += 8;
  v106 = v66;
  v66(v64, v110);
  v93[2] = "SLEEP_APNEA_FEATURE_TITLE";
  (*(v107 + 16))(v115, v39, v108);
  v67 = v97;
  sub_29E679AA8();
  v68 = sub_29E750218();
  (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
  v93[1] = *&v39[*(v36 + 28)];
  v94 = v39;
  v95 = "file:countryRecord:)";
  v69 = sub_29E74EAF8();
  (*(*(v69 - 8) + 56))(v96, 1, 1, v69);

  v70 = v111;
  sub_29E750328();
  sub_29E751728();
  type metadata accessor for SleepApneaHealthChecklistActionHandler(0);
  v71 = v112;
  v72 = v98;
  v73 = v70;
  v74 = v113;
  (*(v112 + 16))(v98, v73, v113);
  (*(v71 + 56))(v72, 0, 1, v74);
  v75 = v100;
  v76 = v99;
  v77 = v101;
  (*(v100 + 104))(v99, *MEMORY[0x29EDC36F0], v101);
  v78 = v118;
  v79 = v114;
  sub_29E64C7DC(v118, v114);
  sub_29E67E84C(&qword_2A18584E8, type metadata accessor for SleepApneaHealthChecklistActionHandler, &unk_29E76D218);
  v50 = v121;
  v80 = v79;
  sub_29E74FC48();
  sub_29E643D20(v78, v79);
  (*(v75 + 8))(v76, v77);
  sub_29E67E7DC(v72, &qword_2A1A7CF30, MEMORY[0x29EDC1948]);
  v81 = MEMORY[0x29EDC9E90];
  sub_29E67EB20(0, &qword_2A1A7BCE0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E7655E0;
  sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
  *(inited + 32) = MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D8]);
  sub_29E609B5C(0, &qword_2A1A7BDB0, 0x29EDBAD20);
  *(inited + 40) = MEMORY[0x29ED97000](*MEMORY[0x29EDBA850]);
  sub_29E5FEFC4(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_29E74FD28();
  sub_29E74FCB8();
  sub_29E67EB20(0, &qword_2A1A7BCF0, MEMORY[0x29EDC99B0], v81);
  v83 = swift_initStackObject();
  *(v83 + 16) = xmmword_29E762F30;
  v84 = v115;
  v85 = v111;
  sub_29E750318();
  v86 = sub_29E7502F8();
  v88 = v87;
  (*(v107 + 8))(v84, v108);
  *(v83 + 32) = v86;
  *(v83 + 40) = v88;
  sub_29E5FF900(v83);
  swift_setDeallocating();
  sub_29E619D6C(v83 + 32);
  sub_29E74FD88();
  v89 = v109;
  sub_29E74F8A8();
  sub_29E74F7C8();
  v106(v89, v110);
  sub_29E74FCD8();
  v90 = v104;
  v91 = v103;
  v92 = v105;
  (*(v104 + 104))(v103, *MEMORY[0x29EDC1848], v105);
  sub_29E750248();
  (*(v90 + 8))(v91, v92);
  sub_29E74FDA8();
  sub_29E643D20(v78, v80);
  (*(v112 + 8))(v85, v113);
  sub_29E67E77C(v94, type metadata accessor for SleepApneaHealthChecklistFeedItemComponents);
  sub_29E67E77C(v117, type metadata accessor for SleepApneaHealthChecklistActionHandlerUserData);
  v49 = 0;
LABEL_10:
  v51 = sub_29E74FDC8();
  return (*(*(v51 - 8) + 56))(v50, v49, 1, v51);
}

uint64_t type metadata accessor for SleepApneaHealthChecklistFeedItemComponents(uint64_t a1)
{
  result = qword_2A1A7C6E0;
  if (!qword_2A1A7C6E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

int *sub_29E67BF48@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E74F8B8();
  v34 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E752098();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v9 = sub_29E752088();
  v10 = sub_29E7546C8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v2;
    v13 = v12;
    v35 = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_29E6B9C90(0xD000000000000028, 0x800000029E767F40, &v35);
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_29E6B9C90(0xD000000000000016, 0x800000029E75BCA0, &v35);
    _os_log_impl(&dword_29E5ED000, v9, v10, "[%{public}s.%{public}s] Creating active components", v11, 0x16u);
    swift_arrayDestroy();
    v2 = v33;
    MEMORY[0x29ED98410](v13, -1, -1);
    MEMORY[0x29ED98410](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v14 = *MEMORY[0x29EDC1760];
  v15 = sub_29E7501E8();
  (*(*(v15 - 8) + 104))(a1, v14, v15);
  sub_29E67EB20(0, &qword_2A1A7BCF0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_29E762F40;
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  v17 = sub_29E74F7C8();
  v19 = v18;
  v20 = *(v34 + 8);
  v20(v4, v2);
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  sub_29E74F8A8();
  v21 = sub_29E74F7C8();
  v23 = v22;
  v20(v4, v2);
  *(v16 + 48) = v21;
  *(v16 + 56) = v23;
  v24 = sub_29E7502B8();
  v26 = v25;
  result = type metadata accessor for SleepApneaHealthChecklistFeedItemComponents(0);
  *(a1 + result[5]) = v16;
  v28 = (a1 + result[6]);
  *v28 = v24;
  v28[1] = v26;
  v29 = (a1 + result[7]);
  *v29 = 0;
  v29[1] = 0;
  v30 = (a1 + result[8]);
  *v30 = 0;
  v30[1] = 0;
  v31 = (a1 + result[9]);
  *v31 = 0;
  v31[1] = 0;
  *(a1 + result[10]) = 8;
  return result;
}

int *sub_29E67C39C@<X0>(uint64_t a1@<X8>)
{
  v35 = sub_29E74F8B8();
  v2 = *(v35 - 8);
  MEMORY[0x2A1C7C4A8](v35);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E752098();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v9 = sub_29E752088();
  v10 = sub_29E7546C8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v36 = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_29E6B9C90(0xD000000000000028, 0x800000029E767F40, &v36);
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_29E6B9C90(0xD000000000000018, 0x800000029E75BD20, &v36);
    _os_log_impl(&dword_29E5ED000, v9, v10, "[%{public}s.%{public}s] Creating inactive components", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v12, -1, -1);
    MEMORY[0x29ED98410](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v13 = *MEMORY[0x29EDC1768];
  v14 = sub_29E7501E8();
  (*(*(v14 - 8) + 104))(a1, v13, v14);
  sub_29E67EB20(0, &qword_2A1A7BCF0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_29E762F40;
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  v16 = sub_29E74F7C8();
  v18 = v17;
  v19 = *(v2 + 8);
  v20 = v35;
  v19(v4, v35);
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  sub_29E74F8A8();
  v21 = sub_29E74F7C8();
  v23 = v22;
  v19(v4, v20);
  *(v15 + 48) = v21;
  *(v15 + 56) = v23;
  v24 = sub_29E7502B8();
  v26 = v25;
  v27 = sub_29E750288();
  v29 = v28;
  result = type metadata accessor for SleepApneaHealthChecklistFeedItemComponents(0);
  *(a1 + result[5]) = v15;
  v31 = (a1 + result[6]);
  *v31 = v24;
  v31[1] = v26;
  v32 = (a1 + result[7]);
  *v32 = v27;
  v32[1] = v29;
  v33 = (a1 + result[8]);
  *v33 = 0;
  v33[1] = 0;
  v34 = (a1 + result[9]);
  *v34 = 0;
  v34[1] = 0;
  *(a1 + result[10]) = 7;
  return result;
}

uint64_t sub_29E67C7F4@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v263 = a3;
  v7 = sub_29E74F8B8();
  v8 = *(v7 - 8);
  v264 = v7;
  *&v265 = v8;
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v257 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E752098();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v15 = &v257 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v13);
  v18 = &v257 - v17;
  MEMORY[0x2A1C7C4A8](v16);
  v20 = &v257 - v19;
  v21 = [a1 highestPriorityUnsatisfiedRequirement];
  if (!v21)
  {
    sub_29E752048();
    v37 = sub_29E752088();
    v38 = sub_29E7546A8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v266 = v40;
      *v39 = 136446466;
      *(v39 + 4) = sub_29E6B9C90(0xD000000000000028, 0x800000029E767F40, &v266);
      *(v39 + 12) = 2082;
      *(v39 + 14) = sub_29E6B9C90(0xD000000000000041, 0x800000029E75BD90, &v266);
      _os_log_impl(&dword_29E5ED000, v37, v38, "[%{public}s.%{public}s] Asked to make an unavailabile configuration with no unsatisfied requirements", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v40, -1, -1);
      MEMORY[0x29ED98410](v39, -1, -1);
    }

    (*(v12 + 8))(v15, v11);
    goto LABEL_13;
  }

  v22 = v21;
  v258 = v18;
  v262 = v10;
  sub_29E752048();
  v23 = v22;
  v24 = sub_29E752088();
  v25 = sub_29E7546C8();

  v26 = os_log_type_enabled(v24, v25);
  v261 = a2;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v259 = v11;
    v260 = v23;
    v29 = v28;
    v266 = v28;
    *v27 = 136446722;
    v30 = a4;
    *(v27 + 4) = sub_29E6B9C90(0xD000000000000028, 0x800000029E767F40, &v266);
    v31 = v12;
    *(v27 + 12) = 2082;
    *(v27 + 14) = sub_29E6B9C90(0xD000000000000041, 0x800000029E75BD90, &v266);
    *(v27 + 22) = 2082;
    v32 = sub_29E7541D8();
    v34 = sub_29E6B9C90(v32, v33, &v266);

    *(v27 + 24) = v34;
    _os_log_impl(&dword_29E5ED000, v24, v25, "[%{public}s.%{public}s] Creating components for requirement %{public}s", v27, 0x20u);
    swift_arrayDestroy();
    v35 = v29;
    v11 = v259;
    v23 = v260;
    MEMORY[0x29ED98410](v35, -1, -1);
    MEMORY[0x29ED98410](v27, -1, -1);

    v36 = v31;
    a4 = v30;
  }

  else
  {

    v36 = v12;
  }

  v41 = *(v36 + 8);
  v41(v20, v11);
  v42 = sub_29E7541D8();
  v44 = v43;
  if (v42 == sub_29E7541D8() && v44 == v45)
  {
    goto LABEL_10;
  }

  v46 = sub_29E755028();

  if (v46)
  {
LABEL_12:

    goto LABEL_13;
  }

  v51 = sub_29E7541D8();
  v53 = v52;
  if (v51 == sub_29E7541D8() && v53 == v54)
  {
    goto LABEL_10;
  }

  v55 = sub_29E755028();

  if (v55)
  {
    goto LABEL_12;
  }

  v56 = sub_29E7541D8();
  v58 = v57;
  if (v56 == sub_29E7541D8() && v58 == v59)
  {
    goto LABEL_10;
  }

  v60 = sub_29E755028();

  if (v60)
  {
    goto LABEL_12;
  }

  v61 = sub_29E7541D8();
  v63 = v62;
  if (v61 == sub_29E7541D8() && v63 == v64)
  {
    goto LABEL_10;
  }

  v65 = sub_29E755028();

  if (v65)
  {
    goto LABEL_12;
  }

  v66 = sub_29E7541D8();
  v68 = v67;
  if (v66 == sub_29E7541D8() && v68 == v69)
  {
LABEL_10:

LABEL_13:
    v47 = type metadata accessor for SleepApneaHealthChecklistFeedItemComponents(0);
    v48 = *(*(v47 - 8) + 56);
    v49 = a4;
    return v48(v49, 1, 1, v47);
  }

  v70 = sub_29E755028();

  if (v70)
  {
    goto LABEL_12;
  }

  v71 = sub_29E7541D8();
  v73 = v72;
  if (v71 == sub_29E7541D8() && v73 == v74)
  {
    goto LABEL_29;
  }

  v75 = sub_29E755028();

  if (v75)
  {
    goto LABEL_31;
  }

  v107 = sub_29E7541D8();
  v109 = v108;
  if (v107 == sub_29E7541D8() && v109 == v110)
  {
LABEL_29:

LABEL_31:
    v76 = v23;
    v266 = 0;
    v267 = 0xE000000000000000;
    sub_29E754D78();

    v266 = 0xD000000000000023;
    v267 = 0x800000029E75BF30;
    v78 = v261(v77);
    v79 = (v78 & 1) == 0;
    if (v78)
    {
      v80 = 0x454C5049544C554DLL;
    }

    else
    {
      v80 = 0x454C474E4953;
    }

    if (v79)
    {
      v81 = 0xE600000000000000;
    }

    else
    {
      v81 = 0xE800000000000000;
    }

    MEMORY[0x29ED96C20](v80, v81);

    MEMORY[0x29ED96C20](0x504952435345445FLL, 0xEC0000004E4F4954);
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    v82 = v262;
    sub_29E74F8A8();
    v83 = sub_29E74F7C8();
    v85 = v84;

    (*(v265 + 8))(v82, v264);
    v86 = *MEMORY[0x29EDC1750];
    v87 = sub_29E7501E8();
    (*(*(v87 - 8) + 104))(a4, v86, v87);
    sub_29E67EB20(0, &qword_2A1A7BCF0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_29E762F30;
    *(v88 + 32) = v83;
    *(v88 + 40) = v85;

    v89 = sub_29E7502A8();
    v91 = v90;
    v92 = MEMORY[0x29ED92BF0](v83, v85);
    v93 = a4;
    v95 = v94;

    v96 = sub_29E7502A8();
    v98 = v97;

LABEL_40:
    v99 = type metadata accessor for SleepApneaHealthChecklistFeedItemComponents(0);
    v100 = v99;
    *(v93 + v99[5]) = v88;
    v101 = (v93 + v99[6]);
    *v101 = v89;
    v101[1] = v91;
    v102 = (v93 + v99[7]);
    *v102 = 0;
    v102[1] = 0;
    v103 = (v93 + v99[8]);
    *v103 = v92;
    v103[1] = v95;
    v104 = (v93 + v99[9]);
    *v104 = v96;
    v104[1] = v98;
    v105 = v99[10];
    v106 = 5;
    goto LABEL_41;
  }

  v111 = sub_29E755028();

  if (v111)
  {
    goto LABEL_31;
  }

  v112 = v11;
  v93 = a4;
  v113 = v264;
  v114 = v265;
  v260 = v23;
  v115 = sub_29E7541D8();
  v117 = v116;
  if (v115 == sub_29E7541D8() && v117 == v118)
  {
    goto LABEL_47;
  }

  v119 = sub_29E755028();

  if (v119)
  {
    goto LABEL_49;
  }

  v140 = sub_29E7541D8();
  v142 = v141;
  if (v140 == sub_29E7541D8() && v142 == v143)
  {
    goto LABEL_47;
  }

  v144 = sub_29E755028();

  if (v144)
  {
    goto LABEL_49;
  }

  v145 = sub_29E7541D8();
  v147 = v146;
  if (v145 == sub_29E7541D8() && v147 == v148)
  {
    goto LABEL_47;
  }

  v149 = sub_29E755028();

  if (v149)
  {
    goto LABEL_49;
  }

  v150 = sub_29E7541D8();
  v152 = v151;
  if (v150 == sub_29E7541D8() && v152 == v153)
  {
LABEL_47:

    goto LABEL_49;
  }

  v154 = sub_29E755028();

  if (v154)
  {
LABEL_49:
    if (qword_2A1A7D6F0 == -1)
    {
LABEL_50:
      v120 = v262;
      sub_29E74F8A8();
      v121 = sub_29E74F7C8();
      v123 = v122;
      (*(v114 + 8))(v120, v113);
      v124 = *MEMORY[0x29EDC1750];
      v125 = sub_29E7501E8();
      (*(*(v125 - 8) + 104))(v93, v124, v125);
      sub_29E67EB20(0, &qword_2A1A7BCF0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
      v126 = swift_allocObject();
      *(v126 + 16) = xmmword_29E762F30;
      *(v126 + 32) = v121;
      *(v126 + 40) = v123;

      v127 = sub_29E7502A8();
      v129 = v128;
      v130 = MEMORY[0x29ED92BF0](v121, v123);
      v132 = v131;

      v133 = sub_29E7502A8();
      v135 = v134;

      v99 = type metadata accessor for SleepApneaHealthChecklistFeedItemComponents(0);
      v100 = v99;
      *(v93 + v99[5]) = v126;
      v136 = (v93 + v99[6]);
      *v136 = v127;
      v136[1] = v129;
      v137 = (v93 + v99[7]);
      *v137 = 0;
      v137[1] = 0;
      v138 = (v93 + v99[8]);
      *v138 = v130;
      v138[1] = v132;
      v139 = (v93 + v99[9]);
      *v139 = v133;
      v139[1] = v135;
      v105 = v99[10];
      v106 = 3;
      goto LABEL_41;
    }

LABEL_69:
    swift_once();
    goto LABEL_50;
  }

  v155 = sub_29E7541D8();
  v157 = v156;
  if (v155 == sub_29E7541D8() && v157 == v158)
  {

    goto LABEL_64;
  }

  v159 = sub_29E755028();

  if (v159)
  {
LABEL_64:
    if (qword_2A1A7D6F0 == -1)
    {
      goto LABEL_50;
    }

    goto LABEL_69;
  }

  v160 = sub_29E7541D8();
  v162 = v161;
  if (v160 == sub_29E7541D8() && v162 == v163)
  {

LABEL_71:
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    v165 = v262;
    sub_29E74F8A8();
    v166 = sub_29E74F7C8();
    v168 = v167;
    (*(v114 + 8))(v165, v113);
    v169 = *MEMORY[0x29EDC1750];
    v170 = sub_29E7501E8();
    (*(*(v170 - 8) + 104))(v93, v169, v170);
    sub_29E67EB20(0, &qword_2A1A7BCF0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_29E762F30;
    *(v88 + 32) = v166;
    *(v88 + 40) = v168;

    v89 = sub_29E7502A8();
    v91 = v171;
    v92 = MEMORY[0x29ED92BF0](v166, v168);
    v95 = v172;

    v96 = sub_29E7502A8();
    v98 = v173;

    goto LABEL_40;
  }

  v164 = sub_29E755028();

  if (v164)
  {
    goto LABEL_71;
  }

  v174 = sub_29E7541D8();
  v176 = v175;
  if (v174 == sub_29E7541D8() && v176 == v177)
  {

LABEL_78:
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    v179 = v262;
    sub_29E74F8A8();
    v180 = sub_29E74F7C8();
    v263 = v181;
    v182 = *(v114 + 8);
    v182(v179, v113);
    sub_29E74F8A8();
    sub_29E74F7C8();
    v182(v179, v113);
    sub_29E67E948(0, &qword_2A1A7D3D8, sub_29E617E04, MEMORY[0x29EDC9E90]);
    v183 = swift_allocObject();
    v265 = xmmword_29E762F30;
    *(v183 + 16) = xmmword_29E762F30;
    v184 = MEMORY[0x29EDC99B0];
    *(v183 + 56) = MEMORY[0x29EDC99B0];
    *(v183 + 64) = sub_29E67E9AC();
    v185 = v263;
    *(v183 + 32) = v180;
    *(v183 + 40) = v185;
    v186 = v185;

    v187 = sub_29E7541A8();
    v189 = v188;

    v190 = *MEMORY[0x29EDC1758];
    v191 = sub_29E7501E8();
    (*(*(v191 - 8) + 104))(v93, v190, v191);
    sub_29E67EB20(0, &qword_2A1A7BCF0, v184, MEMORY[0x29EDC9E90]);
    v192 = swift_allocObject();
    *(v192 + 16) = v265;
    *(v192 + 32) = v187;
    *(v192 + 40) = v189;

    v193 = sub_29E7502C8();
    v195 = v194;

    v99 = type metadata accessor for SleepApneaHealthChecklistFeedItemComponents(0);
    v100 = v99;
    *(v93 + v99[5]) = v192;
    v196 = (v93 + v99[6]);
    *v196 = v193;
    v196[1] = v195;
    v197 = (v93 + v99[7]);
    *v197 = 0;
    v197[1] = 0;
    v198 = (v93 + v99[8]);
    *v198 = v187;
    v198[1] = v189;
    v199 = (v93 + v99[9]);
    *v199 = v180;
    v199[1] = v186;
    v105 = v99[10];
    v106 = 2;
    goto LABEL_41;
  }

  v178 = sub_29E755028();

  if (v178)
  {
    goto LABEL_78;
  }

  v200 = sub_29E7541D8();
  v202 = v201;
  if (v200 == sub_29E7541D8() && v202 == v203)
  {

LABEL_85:
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    v205 = v262;
    sub_29E74F8A8();
    v206 = sub_29E74F7C8();
    v208 = v207;
    (*(v114 + 8))(v205, v113);
    v209 = *MEMORY[0x29EDC1750];
    v210 = sub_29E7501E8();
    (*(*(v210 - 8) + 104))(v93, v209, v210);
    sub_29E67EB20(0, &qword_2A1A7BCF0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v211 = swift_allocObject();
    *(v211 + 16) = xmmword_29E762F30;
    *(v211 + 32) = v206;
    *(v211 + 40) = v208;

    v212 = sub_29E7502A8();
    v214 = v213;
    v215 = MEMORY[0x29ED92BF0](v206, v208);
    v217 = v216;

    v218 = sub_29E7502A8();
    v220 = v219;

    v99 = type metadata accessor for SleepApneaHealthChecklistFeedItemComponents(0);
    v100 = v99;
    *(v93 + v99[5]) = v211;
    v221 = (v93 + v99[6]);
    *v221 = v212;
    v221[1] = v214;
    v222 = (v93 + v99[7]);
    *v222 = 0;
    v222[1] = 0;
    v223 = (v93 + v99[8]);
    *v223 = v215;
    v223[1] = v217;
    v224 = (v93 + v99[9]);
    *v224 = v218;
    v224[1] = v220;
    v105 = v99[10];
    v106 = 4;
    goto LABEL_41;
  }

  v204 = sub_29E755028();

  if (v204)
  {
    goto LABEL_85;
  }

  v225 = sub_29E7541D8();
  v227 = v226;
  if (v225 == sub_29E7541D8() && v227 == v228)
  {
  }

  else
  {
    v229 = sub_29E755028();

    if ((v229 & 1) == 0)
    {
      sub_29E752048();
      v249 = v260;
      v250 = sub_29E752088();
      v251 = sub_29E7546B8();
      *&v265 = v249;

      if (os_log_type_enabled(v250, v251))
      {
        v252 = swift_slowAlloc();
        v264 = swift_slowAlloc();
        v266 = v264;
        *v252 = 136446722;
        *(v252 + 4) = sub_29E6B9C90(0xD000000000000028, 0x800000029E767F40, &v266);
        *(v252 + 12) = 2082;
        *(v252 + 14) = sub_29E6B9C90(0xD000000000000041, 0x800000029E75BD90, &v266);
        *(v252 + 22) = 2080;
        v253 = sub_29E7541D8();
        v255 = sub_29E6B9C90(v253, v254, &v266);

        *(v252 + 24) = v255;
        _os_log_impl(&dword_29E5ED000, v250, v251, "[%{public}s.%{public}s] Asked to make an unavailable configuration with unexpected requirement %s", v252, 0x20u);
        v256 = v264;
        swift_arrayDestroy();
        MEMORY[0x29ED98410](v256, -1, -1);
        MEMORY[0x29ED98410](v252, -1, -1);
      }

      else
      {
      }

      v41(v258, v112);
      v47 = type metadata accessor for SleepApneaHealthChecklistFeedItemComponents(0);
      v48 = *(*(v47 - 8) + 56);
      v49 = v93;
      return v48(v49, 1, 1, v47);
    }
  }

  v230 = sub_29E7502E8();
  v232 = v231;
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v233 = v262;
  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v114 + 8))(v233, v113);
  sub_29E67E948(0, &qword_2A1A7D3D8, sub_29E617E04, MEMORY[0x29EDC9E90]);
  v234 = swift_allocObject();
  v265 = xmmword_29E762F30;
  *(v234 + 16) = xmmword_29E762F30;
  v235 = MEMORY[0x29EDC99B0];
  *(v234 + 56) = MEMORY[0x29EDC99B0];
  *(v234 + 64) = sub_29E67E9AC();
  *(v234 + 32) = v230;
  *(v234 + 40) = v232;

  v236 = sub_29E7541A8();
  v238 = v237;

  v239 = *MEMORY[0x29EDC1758];
  v240 = sub_29E7501E8();
  (*(*(v240 - 8) + 104))(v93, v239, v240);
  sub_29E67EB20(0, &qword_2A1A7BCF0, v235, MEMORY[0x29EDC9E90]);
  v241 = swift_allocObject();
  *(v241 + 16) = v265;
  *(v241 + 32) = v236;
  *(v241 + 40) = v238;

  v242 = sub_29E7502C8();
  v244 = v243;

  v99 = type metadata accessor for SleepApneaHealthChecklistFeedItemComponents(0);
  v100 = v99;
  *(v93 + v99[5]) = v241;
  v245 = (v93 + v99[6]);
  *v245 = v242;
  v245[1] = v244;
  v246 = (v93 + v99[7]);
  *v246 = 0;
  v246[1] = 0;
  v247 = (v93 + v99[8]);
  *v247 = v236;
  v247[1] = v238;
  v248 = (v93 + v99[9]);
  *v248 = v230;
  v248[1] = v232;
  v105 = v99[10];
  v106 = 1;
LABEL_41:
  *(v93 + v105) = v106;
  return (*(*(v99 - 1) + 56))(v93, 0, 1, v100);
}

int *sub_29E67E244@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E74F8B8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E752098();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v10 = sub_29E752088();
  v11 = sub_29E7546C8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v37 = v2;
    v38 = v13;
    v14 = v13;
    *v12 = 136446466;
    *(v12 + 4) = sub_29E6B9C90(0xD000000000000028, 0x800000029E767F40, &v38);
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_29E6B9C90(0xD000000000000015, 0x800000029E75BD70, &v38);
    _os_log_impl(&dword_29E5ED000, v10, v11, "[%{public}s.%{public}s] Creating set up components", v12, 0x16u);
    swift_arrayDestroy();
    v15 = v14;
    v2 = v37;
    MEMORY[0x29ED98410](v15, -1, -1);
    MEMORY[0x29ED98410](v12, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v16 = *MEMORY[0x29EDC1768];
  v17 = sub_29E7501E8();
  (*(*(v17 - 8) + 104))(a1, v16, v17);
  sub_29E67EB20(0, &qword_2A1A7BCF0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_29E762F40;
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  v19 = sub_29E74F7C8();
  v21 = v20;
  v22 = *(v3 + 8);
  v22(v5, v2);
  *(v18 + 32) = v19;
  *(v18 + 40) = v21;
  sub_29E74F8A8();
  v23 = sub_29E74F7C8();
  v25 = v24;
  v22(v5, v2);
  *(v18 + 48) = v23;
  *(v18 + 56) = v25;
  v26 = sub_29E7502B8();
  v28 = v27;
  v29 = sub_29E750278();
  v31 = v30;
  result = type metadata accessor for SleepApneaHealthChecklistFeedItemComponents(0);
  *(a1 + result[5]) = v18;
  v33 = (a1 + result[6]);
  *v33 = v26;
  v33[1] = v28;
  v34 = (a1 + result[7]);
  *v34 = v29;
  v34[1] = v31;
  v35 = (a1 + result[8]);
  *v35 = 0;
  v35[1] = 0;
  v36 = (a1 + result[9]);
  *v36 = 0;
  v36[1] = 0;
  *(a1 + result[10]) = 6;
  return result;
}

uint64_t sub_29E67E698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepApneaHealthChecklistFeedItemComponents(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E67E6FC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29E67E948(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29E67E77C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E67E7DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E67E948(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E67E84C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E67E894(void *a1)
{
  v1 = [a1 highestPriorityUnsatisfiedRequirement];
  if (v1)
  {
    v2 = v1;
    v3 = sub_29E7541D8();
    v5 = v4;
    if (v3 == sub_29E7541D8() && v5 == v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_29E755028();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void sub_29E67E948(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29E67E9AC()
{
  result = qword_2A1A7D4A8;
  if (!qword_2A1A7D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7D4A8);
  }

  return result;
}

void sub_29E67EA28(uint64_t a1)
{
  sub_29E7501E8();
  if (v1 <= 0x3F)
  {
    sub_29E67EB20(319, &qword_2A1A7BDE0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
    if (v2 <= 0x3F)
    {
      sub_29E67EB20(319, &qword_2A1A7D0C8, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9C68]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_29E67EB20(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29E67EB70@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v50 = a1;
  v48 = a2;
  v4 = sub_29E754048();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v42 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E680708(0, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v45 = &v40 - v7;
  v47 = type metadata accessor for SleepScoreRoomModel(0);
  v49 = *(v47 - 8);
  MEMORY[0x2A1C7C4A8](v47);
  v41 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E74F048();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v9);
  v46 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v15 = &v40 - v14;
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v40 - v16;
  sub_29E680834(0);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v51 = v2;
  sub_29E680930(&qword_2A1857E50, type metadata accessor for SleepScoreGalleryModelProvider, &unk_29E768038);
  sub_29E74EF08();

  v23 = *(v2 + 16);
  sub_29E753E48();
  v24 = (*(v20 + 88))(v22, v19);
  if (v24 == *MEMORY[0x29EDC4328])
  {
    (*(v20 + 96))(v22, v19);
    (*(v10 + 32))(v17, v22, v9);
    v25 = *(v10 + 16);
    v25(v15, v17, v9);
    v27 = v47;
    v26 = v48;
    v28 = &v48[*(v47 + 24)];
    v25(v48, v15, v9);
    v25(v46, v15, v9);
    sub_29E74F2A8();
    v29 = *(v10 + 8);
    v29(v15, v9);
    v29(v17, v9);
    v30 = 0;
    *v28 = 0;
    *(v28 + 1) = 0;
    v31 = v26;
    v32 = v27;
    v33 = v49;
    return (*(v33 + 56))(v31, v30, 1, v32);
  }

  v34 = v47;
  v31 = v48;
  if (v24 == *MEMORY[0x29EDC4330])
  {
    v23 = v45;
    sub_29E62D760(v3 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_initialModel, v45);
    v33 = v49;
    v17 = v34;
    if ((*(v49 + 48))(v23, 1, v34) == 1)
    {
      sub_29E6807D4(v23, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel, sub_29E680708);
      goto LABEL_12;
    }

LABEL_9:
    v35 = v41;
    sub_29E6808C8(v23, v41, type metadata accessor for SleepScoreRoomModel);
    v36 = v42;
    sub_29E74F008();
    sub_29E680930(&qword_2A1857B80, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA310]);
    v37 = v44;
    v38 = sub_29E754108();
    (*(v43 + 8))(v36, v37);
    if (v38)
    {
      sub_29E6808C8(v35, v31, type metadata accessor for SleepScoreRoomModel);
      v30 = 0;
LABEL_13:
      v32 = v17;
      return (*(v33 + 56))(v31, v30, 1, v32);
    }

    sub_29E680978(v35);
LABEL_12:
    v30 = 1;
    goto LABEL_13;
  }

  v30 = 1;
  v32 = v47;
  v33 = v49;
  if (v24 != *MEMORY[0x29EDC4338] && v24 != *MEMORY[0x29EDC4320])
  {
    sub_29E754E48();
    __break(1u);
    goto LABEL_9;
  }

  return (*(v33 + 56))(v31, v30, 1, v32);
}

uint64_t sub_29E67F200()
{
  swift_getKeyPath();
  sub_29E680930(&qword_2A1857E50, type metadata accessor for SleepScoreGalleryModelProvider, &unk_29E768038);
  sub_29E74EF08();

  return *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider__primaryDayIndexID);
}

uint64_t sub_29E67F2B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_29E680930(&qword_2A1857E50, type metadata accessor for SleepScoreGalleryModelProvider, &unk_29E768038);
  sub_29E74EF08();

  v5 = *(v3 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider__primaryDayIndexID + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider__primaryDayIndexID);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_29E67F3A0(uint64_t a1, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider__primaryDayIndexID;
  if (*(v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider__primaryDayIndexID + 8))
  {
    if ((a2 & 1) == 0)
    {
LABEL_9:
      KeyPath = swift_getKeyPath();
      MEMORY[0x2A1C7C4A8](KeyPath);
      sub_29E680930(&qword_2A1857E50, type metadata accessor for SleepScoreGalleryModelProvider, &unk_29E768038);
      sub_29E74EEF8();
    }
  }

  else if ((a2 & 1) != 0 || *v3 != a1)
  {
    goto LABEL_9;
  }

  *v3 = a1;
  *(v3 + 8) = a2 & 1;

  return sub_29E67F504();
}

uint64_t sub_29E67F504()
{
  sub_29E605ADC(0);
  v36 = v1;
  v2 = MEMORY[0x2A1C7C4A8](v1);
  v4 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v2);
  v35 = v32 - v5;
  v6 = sub_29E754048();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x2A1C7C4A8](v8);
  v13 = v32 - v12;
  v14 = MEMORY[0x2A1C7C4A8](v11);
  v16 = v32 - v15;
  MEMORY[0x2A1C7C4A8](v14);
  v18 = v32 - v17;
  sub_29E680594(0);
  MEMORY[0x2A1C7C4A8](v19 - 8);
  v21 = v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v0 + 16);
  sub_29E67FDF0(v18);
  sub_29E67FDF0(v13);
  sub_29E753FC8();
  sub_29E753FD8();
  v22 = *(v7 + 8);
  v22(v10, v6);
  v33 = v22;
  v22(v13, v6);
  sub_29E680930(&qword_2A1A7BE20, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA308]);
  result = sub_29E7540E8();
  if (result)
  {
    v24 = *(v7 + 32);
    v32[1] = v7 + 32;
    v25 = v35;
    v24(v35, v18, v6);
    v26 = v36;
    v24((v25 + *(v36 + 48)), v16, v6);
    sub_29E6806A4(v25, v4);
    v27 = *(v26 + 48);
    v24(v21, v4, v6);
    v28 = v33;
    v33(&v4[v27], v6);
    sub_29E6808C8(v25, v4, sub_29E605ADC);
    v29 = *(v26 + 48);
    sub_29E680608(0, &qword_2A1856940, MEMORY[0x29EDC9C30]);
    v31 = v30;
    v24(&v21[*(v30 + 36)], &v4[v29], v6);
    v28(v4, v6);
    (*(*(v31 - 8) + 56))(v21, 0, 1, v31);
    return sub_29E753E18();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E67F8E0()
{
  swift_getKeyPath();
  sub_29E680930(&qword_2A1857E50, type metadata accessor for SleepScoreGalleryModelProvider, &unk_29E768038);
  sub_29E74EF08();

  return *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider__updateCount);
}

uint64_t sub_29E67F988@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_29E680930(&qword_2A1857E50, type metadata accessor for SleepScoreGalleryModelProvider, &unk_29E768038);
  sub_29E74EF08();

  *a2 = *(v3 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider__updateCount);
  return result;
}

uint64_t sub_29E67FA38(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider__updateCount) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](KeyPath);
    sub_29E680930(&qword_2A1857E50, type metadata accessor for SleepScoreGalleryModelProvider, &unk_29E768038);
    sub_29E74EEF8();
  }

  return result;
}

uint64_t sub_29E67FB44(uint64_t a1, uint64_t a2)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E607C50(sub_29E6807A4, a2, "SleepHealthAppPlugin/SleepScoreGalleryModelProvider.swift", 57, 2u, 87);
}

uint64_t sub_29E67FC24(uint64_t a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  v2 = Strong;
  swift_getKeyPath();
  sub_29E680930(&qword_2A1857E50, type metadata accessor for SleepScoreGalleryModelProvider, &unk_29E768038);
  sub_29E74EF08();

  swift_getKeyPath();
  sub_29E74EF28();

  v4 = *(v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider__updateCount);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (!v5)
  {
    *(v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider__updateCount) = v6;
    swift_getKeyPath();
    sub_29E74EF18();
  }

  __break(1u);
  return result;
}

uint64_t sub_29E67FDF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_29E74EE78();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E74ED28();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  sub_29E680708(0, &qword_2A1856918, MEMORY[0x29EDBA2F8]);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v15 - v10;
  swift_getKeyPath();
  v16 = v1;
  sub_29E680930(&qword_2A1857E50, type metadata accessor for SleepScoreGalleryModelProvider, &unk_29E768038);
  sub_29E74EF08();

  if (*(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider__primaryDayIndexID + 8))
  {
    v12 = sub_29E754048();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  else
  {
    v15 = a1;
    sub_29E7544C8();
    sub_29E7544B8();
    sub_29E754468();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_29E753FC8();
    v12 = sub_29E754048();
    v13 = *(v12 - 8);
    (*(v13 + 56))(v11, 0, 1, v12);

    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      return (*(v13 + 32))(v15, v11, v12);
    }
  }

  sub_29E74ECE8();
  (*(v5 + 16))(v7, v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_gregorianCalendar, v4);
  sub_29E754008();
  sub_29E754048();
  result = (*(*(v12 - 8) + 48))(v11, 1, v12);
  if (result != 1)
  {
    return sub_29E6807D4(v11, &qword_2A1856918, MEMORY[0x29EDBA2F8], sub_29E680708);
  }

  return result;
}

uint64_t sub_29E680204()
{

  sub_29E6807D4(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_galleryRange, &qword_2A1A7BE00, MEMORY[0x29EDC9930], sub_29E680608);
  v1 = OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_gregorianCalendar;
  v2 = sub_29E74EE78();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29E6807D4(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_initialModel, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel, sub_29E680708);
  sub_29E6459B8(*(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_showInChartsButtonHandler), *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_showInChartsButtonHandler + 8));

  v3 = OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider___observationRegistrar;
  v4 = sub_29E74EF48();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SleepScoreGalleryModelProvider(uint64_t a1)
{
  result = qword_2A1A7CC78;
  if (!qword_2A1A7CC78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E6803E0(uint64_t a1)
{
  sub_29E680608(319, &qword_2A1A7BE00, MEMORY[0x29EDC9930]);
  if (v1 <= 0x3F)
  {
    sub_29E74EE78();
    if (v2 <= 0x3F)
    {
      sub_29E680708(319, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
      if (v3 <= 0x3F)
      {
        sub_29E74EF48();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_29E680594(uint64_t a1)
{
  if (!qword_2A18584F0)
  {
    sub_29E680608(255, &qword_2A1856940, MEMORY[0x29EDC9C30]);
    v1 = sub_29E754BD8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A18584F0);
    }
  }
}

void sub_29E680608(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E754048();
    v7 = sub_29E680930(&qword_2A1A7BE20, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA308]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29E6806A4(uint64_t a1, uint64_t a2)
{
  sub_29E605ADC(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29E680708(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754BD8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E68075C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider__primaryDayIndexID;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
  return sub_29E67F504();
}

uint64_t sub_29E6807D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = (a4)(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_29E680834(uint64_t a1)
{
  if (!qword_2A18584F8)
  {
    type metadata accessor for SleepScoreDaySummaryProviderDataSource(255);
    sub_29E680930(&qword_2A1856960, type metadata accessor for SleepScoreDaySummaryProviderDataSource, &unk_29E7694B0);
    v1 = sub_29E753DF8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A18584F8);
    }
  }
}

uint64_t sub_29E6808C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E680930(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E680978(uint64_t a1)
{
  v2 = type metadata accessor for SleepScoreRoomModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for SleepApneaOnboardingConfirmDetailsDataSource(uint64_t a1)
{
  result = qword_2A1858520;
  if (!qword_2A1858520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E680A88(void *a1)
{
  v2 = (v1 + *a1);
  v3 = *v2;
  v4 = v2[1];
  v5 = sub_29E7517F8();
  if (*(v5 + 16) && (v6 = sub_29E68A9D0(v3, v4), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + v6);

    return v8;
  }

  else
  {

    return 2;
  }
}

uint64_t sub_29E680B2C()
{
}

uint64_t sub_29E680B9C()
{
  sub_29E751838();

  return swift_deallocClassInstance();
}

uint64_t sub_29E680C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29E74F8B8();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E681158(0);
  v9 = v8 - 8;
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_29E74EED8();
  v13 = *(v9 + 56);
  *v11 = v12;
  v14 = sub_29E7503F8();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v11 + v13, a1, v14);
  if ((*(v15 + 88))(v11 + v13, v14) != *MEMORY[0x29EDC1B58])
  {
    goto LABEL_6;
  }

  if (v12 != 1)
  {
    if (!v12)
    {
      if (qword_2A1A7D6F0 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_9;
    }

LABEL_6:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return sub_29E6811C0(v11);
  }

  if (qword_2A1A7D6F0 != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_8:
  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v5 + 8))(v7, v4);
  v17 = sub_29E752258();
  v18 = MEMORY[0x29EDC7800];
  *(a2 + 24) = v17;
  *(a2 + 32) = v18;
  sub_29E5FEBF4(a2);
  sub_29E752218();

  sub_29E752228();
  sub_29E68121C();
  sub_29E754AC8();
  v19 = sub_29E7521C8();
  sub_29E7521A8();
  v19(v22, 0);
  v20 = [objc_opt_self() labelColor];
  v21 = sub_29E7521C8();
  sub_29E7521B8();
  v21(v22, 0);

  return (*(v15 + 8))(v11 + v13, v14);
}

void sub_29E681158(uint64_t a1)
{
  if (!qword_2A1858530)
  {
    sub_29E7503F8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1858530);
    }
  }
}

uint64_t sub_29E6811C0(uint64_t a1)
{
  sub_29E681158(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29E68121C()
{
  result = qword_2A185A560;
  if (!qword_2A185A560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A185A560);
  }

  return result;
}

uint64_t sub_29E681268(void *a1)
{
  v63 = a1;
  v86 = sub_29E74F698();
  v84 = *(v86 - 8);
  MEMORY[0x2A1C7C4A8](v86);
  v62 = v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E74F8B8();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + qword_2A1858500);
  *v7 = 0xD000000000000016;
  v7[1] = 0x800000029E75C1D0;
  v61 = v7;
  v8 = (v1 + qword_2A1858508);
  *v8 = 0xD000000000000019;
  v8[1] = 0x800000029E75C1F0;
  v59 = v8;
  v9 = (v1 + qword_2A1858510);
  *v9 = 0xD000000000000011;
  v9[1] = 0x800000029E75C210;
  v10 = v9;
  v64 = v1;
  v11 = v1 + qword_2A1858518;
  strcpy((v1 + qword_2A1858518), "Age18OrOverKey");
  *(v11 + 15) = -18;
  sub_29E681E7C(0, &qword_2A1858538, MEMORY[0x29EDC21E8]);
  v12 = *(sub_29E750C08() - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v60 = *(v12 + 72);
  v14 = swift_allocObject();
  v69 = xmmword_29E762F40;
  *(v14 + 16) = xmmword_29E762F40;
  sub_29E681E7C(0, &qword_2A1858540, MEMORY[0x29EDC21E0]);
  v16 = v15;
  v85 = sub_29E750BE8();
  v17 = *(*(v85 - 8) + 72);
  v87 = *(v85 - 8);
  v18 = *(v87 + 80);
  v19 = (v18 + 32) & ~v18;
  v71 = v17;
  v56 = v18;
  v57 = v16;
  v55 = v19 + 2 * v17;
  v20 = swift_allocObject();
  *(v20 + 16) = v69;
  if (qword_2A1A7D6F0 != -1)
  {
    v49 = v20;
    swift_once();
    v20 = v49;
  }

  v54 = v20;
  v65 = v20 + v19;
  v70 = v14 + v13;
  v67 = qword_2A1A7FA18;
  sub_29E74F8A8();
  v76 = sub_29E74F7C8();
  v74 = v21;
  v22 = *(v4 + 8);
  v66 = v4 + 8;
  v73 = v22;
  v22(v6, v3);
  v51 = *v11;
  v83 = v3;
  sub_29E681E7C(0, &qword_2A1858548, MEMORY[0x29EDC21D8]);
  v24 = v23;
  v25 = *(sub_29E750BC8() - 8);
  v75 = *(v25 + 72);
  v82 = *(v25 + 80);
  v52 = v11;
  v72 = (v82 + 32) & ~v82;
  v53 = v19;
  v68 = v24;
  v26 = swift_allocObject();
  v81 = xmmword_29E762F30;
  *(v26 + 16) = xmmword_29E762F30;
  v27 = v10;

  sub_29E750BB8();
  v79 = *MEMORY[0x29EDC6AC0];
  v28 = v84;
  v78 = *(v84 + 104);
  v80 = v84 + 104;
  v29 = v62;
  v58 = v14;
  v30 = v86;
  v78(v62);
  sub_29E754238();
  v77 = *(v28 + 8);
  v77(v29, v30);
  v31 = v65;
  sub_29E750BD8();
  LODWORD(v74) = *MEMORY[0x29EDC21D0];
  v32 = *(v87 + 104);
  v87 += 104;
  v76 = v32;
  v32(v31);
  sub_29E74F8A8();
  v33 = sub_29E74F7C8();
  v84 = v28 + 8;
  v51 = v33;
  v50[1] = v34;
  v73(v6, v83);
  v50[0] = *v27;
  *(swift_allocObject() + 16) = v81;

  sub_29E750BB8();
  v35 = v86;
  (v78)(v29, v79, v86);
  sub_29E754238();
  v77(v29, v35);
  v36 = v65;
  v37 = v71;
  sub_29E750BD8();
  v76(v36 + v37, v74, v85);
  sub_29E750BF8();
  v38 = swift_allocObject();
  v65 = v38;
  *(v38 + 16) = v69;
  *&v69 = v38 + v53;
  sub_29E74F8A8();
  v57 = sub_29E74F7C8();
  v56 = v39;
  v73(v6, v83);
  *(swift_allocObject() + 16) = v81;

  sub_29E750BB8();
  v40 = v86;
  (v78)(v29, v79, v86);
  sub_29E754238();
  v77(v29, v40);
  v41 = v69;
  sub_29E750BD8();
  v76(v41, v74, v85);
  sub_29E74F8A8();
  v67 = sub_29E74F7C8();
  v57 = v42;
  v73(v6, v83);
  *(swift_allocObject() + 16) = v81;

  sub_29E750BB8();
  v43 = v86;
  (v78)(v29, v79, v86);
  sub_29E754238();
  v77(v29, v43);
  v44 = v71;
  sub_29E750BD8();
  v76(v41 + v44, v74, v85);
  sub_29E750BF8();
  v45 = sub_29E751698();
  swift_allocObject();
  v46 = v63;
  v47 = sub_29E751688();
  v89 = v45;
  v90 = MEMORY[0x29EDC28E8];
  v88 = v47;
  return sub_29E751828();
}

void sub_29E681E7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754FE8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E681ED0@<X0>(void *a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  LODWORD(v90) = a2;
  v109 = a4;
  v6 = sub_29E751908();
  v107 = *(v6 - 8);
  v108 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v106 = v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E750DC8();
  v103 = *(v8 - 8);
  v104 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v105 = v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x29EDC9C68];
  sub_29E683BBC(0, &qword_2A1856A90, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v102 = v80 - v12;
  v13 = sub_29E74F8B8();
  v97 = *(v13 - 8);
  v98 = v13;
  MEMORY[0x2A1C7C4A8](v13);
  v94 = v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29E752258();
  v100 = *(v15 - 8);
  v101 = v15;
  MEMORY[0x2A1C7C4A8](v15);
  v88 = v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_29E752108();
  v92 = *(v93 - 8);
  MEMORY[0x2A1C7C4A8](v93);
  v91 = v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E683BBC(0, &qword_2A1856A98, MEMORY[0x29EDC7770], v10);
  MEMORY[0x2A1C7C4A8](v18 - 8);
  v87 = v80 - v19;
  v83 = sub_29E7520B8();
  v82 = *(v83 - 8);
  MEMORY[0x2A1C7C4A8](v83);
  v81 = v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_29E7520C8();
  v84 = *(v89 - 8);
  MEMORY[0x2A1C7C4A8](v89);
  v86 = v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_29E74ED88();
  v23 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v25 = v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_29E74ED28();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x2A1C7C4A8](v26);
  v30 = v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v28);
  v32 = v80 - v31;
  v33 = swift_allocObject();
  *(v33 + 16) = a1;
  *(v33 + 24) = a3;
  v99 = v33;
  sub_29E609B5C(0, &qword_2A1858550, 0x29EDB9F88);
  v34 = a1;
  v35 = a3;
  v36 = [v34 startDate];
  sub_29E74ECD8();

  v37 = [v34 endDate];
  sub_29E74ECD8();

  v85 = sub_29E754A08();
  v110 = v38;
  v39 = *(v27 + 8);
  v39(v30, v26);
  v39(v32, v26);
  v40 = [v34 UUID];
  sub_29E74ED68();

  v41 = sub_29E74ED48();
  v95 = v42;
  v96 = v41;
  (*(v23 + 8))(v25, v22);
  sub_29E683BBC(0, &qword_2A1856AA0, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
  v43 = *(*(sub_29E752128() - 8) + 72);
  if (v90)
  {
    v80[1] = v43;
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_29E762F40;
    v44 = *MEMORY[0x29EDC7758];
    v45 = v84;
    v80[0] = *(v84 + 104);
    v46 = v86;
    v47 = v89;
    (v80[0])(v86, v44, v89);
    v48 = sub_29E7520D8();
    v49 = *(*(v48 - 8) + 56);
    v50 = v87;
    v49(v87, 1, 1, v48);
    v51 = v81;
    sub_29E7520A8();
    sub_29E752118();
    (*(v82 + 8))(v51, v83);
    v52 = *(v45 + 8);
    v52(v46, v47);
    (v80[0])(v46, *MEMORY[0x29EDC7760], v47);
    v49(v50, 1, 1, v48);
    v53 = v91;
    sub_29E7520F8();
    sub_29E7520E8();
    (*(v92 + 8))(v53, v93);
    v52(v46, v47);
  }

  else
  {
    *(swift_allocObject() + 16) = xmmword_29E762F30;
    v54 = v84;
    v55 = v86;
    v56 = v89;
    (*(v84 + 104))(v86, *MEMORY[0x29EDC7768], v89);
    v57 = sub_29E7520D8();
    (*(*(v57 - 8) + 56))(v87, 1, 1, v57);
    v58 = v91;
    sub_29E7520F8();
    sub_29E7520E8();
    (*(v92 + 8))(v58, v93);
    (*(v54 + 8))(v55, v56);
  }

  v59 = v88;
  sub_29E752188();
  v61 = v100;
  v60 = v101;
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v62 = v94;
  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v97 + 8))(v62, v98);
  sub_29E752228();

  sub_29E752198();
  sub_29E609B5C(0, &qword_2A185A560, 0x29EDC76B0);
  sub_29E754AC8();
  v63 = sub_29E7521C8();
  sub_29E7521A8();
  v63(v111, 0);
  v64 = [objc_opt_self() secondaryLabelColor];
  v65 = sub_29E7521D8();
  sub_29E7521B8();
  v65(v111, 0);
  sub_29E754AC8();
  v66 = sub_29E7521D8();
  sub_29E7521A8();
  v66(v111, 0);
  v67 = sub_29E7521E8();
  *v68 = 0x4024000000000000;
  v67(v111, 0);
  v69 = sub_29E7521E8();
  *(v70 + 16) = 0x4024000000000000;
  v69(v111, 0);
  v71 = sub_29E7521E8();
  *(v72 + 8) = 0x4034000000000000;
  v71(v111, 0);
  v73 = sub_29E7521E8();
  *(v74 + 24) = 0x4034000000000000;
  v73(v111, 0);
  sub_29E752208();
  v111[3] = v60;
  v111[4] = MEMORY[0x29EDC7800];
  v75 = sub_29E5FEBF4(v111);
  (*(v61 + 16))(v75, v59, v60);
  v76 = sub_29E752178();
  (*(*(v76 - 8) + 56))(v102, 1, 1, v76);

  v77 = sub_29E7543D8();
  v78 = HKUIJoinStringsForAutomationIdentifier();

  if (v78)
  {
    sub_29E7541D8();
  }

  (*(v103 + 104))(v105, *MEMORY[0x29EDC22C8], v104);
  (*(v107 + 104))(v106, *MEMORY[0x29EDC2A38], v108);
  sub_29E750ED8();

  return (*(v61 + 8))(v59, v60);
}

uint64_t sub_29E682DB4(void *a1, void *a2, void *a3)
{
  v34 = a3;
  v35 = a1;
  v4 = type metadata accessor for SleepApneaEventSummaryView(0);
  v5 = v4 - 8;
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E74ED28();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v34 - v13;
  v15 = type metadata accessor for SleepApneaEventSummaryViewModel(0);
  v16 = (v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a2 startDate];
  sub_29E74ECD8();

  v20 = [a2 endDate];
  sub_29E74ECD8();

  v21 = *(v9 + 16);
  v21(v18, v14, v8);
  v21(&v18[v16[7]], v12, v8);
  v22 = v34;
  *&v18[v16[8]] = v34;
  v18[v16[9]] = 2;
  v23 = v22;
  v24 = HKSPLogForCategory();
  v25 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v24 healthDataSource:v23];

  v26 = *(v9 + 8);
  v26(v12, v8);
  v26(v14, v8);
  *&v18[v16[10]] = v25;
  sub_29E5FEC58(v18, v7);
  v27 = *(v5 + 28);
  *&v7[v27] = swift_getKeyPath();
  v28 = MEMORY[0x29EDBC388];
  sub_29E683BBC(0, &qword_2A1856978, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  v29 = *(v5 + 32);
  *&v7[v29] = swift_getKeyPath();
  sub_29E683BBC(0, &qword_2A1A7BF00, MEMORY[0x29EDBC518], v28);
  swift_storeEnumTagMultiPayload();
  sub_29E683C20(0);
  v31 = objc_allocWithZone(v30);
  v32 = sub_29E753038();
  [v35 presentViewController:v32 animated:1 completion:0];

  return sub_29E5FFC24(v18);
}

id sub_29E683144@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = sub_29E751908();
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v54 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E750DC8();
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v53 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E683BBC(0, &qword_2A1856A90, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v50 = v46 - v8;
  v47 = sub_29E74F8B8();
  v9 = *(v47 - 8);
  MEMORY[0x2A1C7C4A8](v47);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E752258();
  v48 = *(v12 - 8);
  v49 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29E74ED28();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v19 = v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v21 = v46 - v20;
  sub_29E609B5C(0, &qword_2A1858550, 0x29EDB9F88);
  [a1 startDate];
  v22 = HKDecodeDateForValue();
  sub_29E74ECD8();

  [a1 endDate];
  v23 = HKDecodeDateForValue();
  sub_29E74ECD8();

  v46[1] = sub_29E754A08();
  v24 = *(v16 + 8);
  v24(v19, v15);
  v24(v21, v15);
  result = [a1 sampleUUID];
  if (result)
  {
    v26 = result;
    sub_29E7541D8();
    v46[0] = v27;

    sub_29E752188();
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74F8A8();
    sub_29E74F7C8();
    (*(v9 + 8))(v11, v47);
    sub_29E752228();

    sub_29E752198();
    sub_29E609B5C(0, &qword_2A185A560, 0x29EDC76B0);
    sub_29E754AC8();
    v28 = sub_29E7521C8();
    sub_29E7521A8();
    v28(v58, 0);
    v29 = [objc_opt_self() secondaryLabelColor];
    v30 = sub_29E7521D8();
    sub_29E7521B8();
    v30(v58, 0);
    sub_29E754AC8();
    v31 = sub_29E7521D8();
    sub_29E7521A8();
    v31(v58, 0);
    v32 = sub_29E7521E8();
    *v33 = 0x4024000000000000;
    v32(v58, 0);
    v34 = sub_29E7521E8();
    *(v35 + 16) = 0x4024000000000000;
    v34(v58, 0);
    v36 = sub_29E7521E8();
    *(v37 + 8) = 0x4034000000000000;
    v36(v58, 0);
    v38 = sub_29E7521E8();
    *(v39 + 24) = 0x4034000000000000;
    v38(v58, 0);
    sub_29E752208();
    v40 = v49;
    v58[3] = v49;
    v58[4] = MEMORY[0x29EDC7800];
    v41 = sub_29E5FEBF4(v58);
    v42 = v48;
    (*(v48 + 16))(v41, v14, v40);
    v43 = sub_29E752178();
    (*(*(v43 - 8) + 56))(v50, 1, 1, v43);
    v44 = sub_29E7543D8();
    v45 = HKUIJoinStringsForAutomationIdentifier();

    if (v45)
    {
      sub_29E7541D8();
    }

    (*(v51 + 104))(v53, *MEMORY[0x29EDC22C8], v52);
    (*(v55 + 104))(v54, *MEMORY[0x29EDC2A38], v56);
    sub_29E750ED8();

    return (*(v42 + 8))(v14, v40);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E683988(uint64_t a1)
{
  v2 = sub_29E74F8B8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E752248();
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v3 + 8))(v5, v2);
  sub_29E752228();
  v6 = [objc_opt_self() hk_wholeNumberFormatter];
  v7 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  v8 = [v6 stringFromNumber_];

  if (v8)
  {
    sub_29E7541D8();
  }

  sub_29E752198();
  v9 = sub_29E7521E8();
  *(v10 + 8) = 0x4034000000000000;
  return v9(v12, 0);
}

void sub_29E683BBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E683C20(uint64_t a1)
{
  if (!qword_2A1858558)
  {
    type metadata accessor for SleepApneaEventSummaryView(255);
    sub_29E683C84();
    v1 = sub_29E753048();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858558);
    }
  }
}

unint64_t sub_29E683C84()
{
  result = qword_2A1858560;
  if (!qword_2A1858560)
  {
    type metadata accessor for SleepApneaEventSummaryView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858560);
  }

  return result;
}

uint64_t sub_29E683CDC(uint64_t a1, void *a2)
{
  v59 = a2;
  v4 = v2;
  v56 = *v2;
  v5 = sub_29E74FEB8();
  v50 = v5;
  v52 = *(v5 - 8);
  v6 = v52;
  v54 = *(v52 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v53 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6624DC(0);
  v9 = *(v8 - 8);
  v57 = v8;
  v58 = v9;
  MEMORY[0x2A1C7C4A8](v8);
  v55 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_29E74FE18();
  v11 = *(v49 - 8);
  MEMORY[0x2A1C7C4A8](v49);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E74FE48();
  v47 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *(v6 + 16);
  v60 = a1;
  v51(&v4[OBJC_IVAR____TtC20SleepHealthAppPlugin47SleepApneaNotificationSettingsGeneratorPipeline_context], a1, v5);
  v48 = sub_29E74FE78();
  sub_29E662AF8(0, &qword_2A1A7D400, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v18 = sub_29E74FB98();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_29E762F30;
  (*(v19 + 104))(v21 + v20, *MEMORY[0x29EDC3780], v18);
  (*(v11 + 104))(v13, *MEMORY[0x29EDC3898], v49);
  sub_29E74FE28();
  v22 = OBJC_IVAR____TtC20SleepHealthAppPlugin47SleepApneaNotificationSettingsGeneratorPipeline_domain;
  v23 = v61;
  (*(v15 + 32))(v61 + OBJC_IVAR____TtC20SleepHealthAppPlugin47SleepApneaNotificationSettingsGeneratorPipeline_domain, v17, v14);
  v24 = *MEMORY[0x29EDBA748];
  v25 = v60;
  sub_29E74FE58();
  sub_29E601938(v62, v62[3]);
  v26 = sub_29E74FDD8();
  v27 = [objc_allocWithZone(MEMORY[0x29EDBAB98]) initWithFeatureIdentifier:v24 healthStore:v26];

  sub_29E5FECBC(v62);
  v28 = v23 + v22;
  v29 = v47;
  (*(v15 + 16))(v17, v28, v47);
  v30 = v27;
  v31 = sub_29E74FE98();
  (*(v15 + 8))(v17, v29);
  v32 = v53;
  v33 = v50;
  v51(v53, v25, v50);
  v34 = v52;
  v35 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v36 = (v54 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  (*(v34 + 32))(v37 + v35, v32, v33);
  v38 = (v37 + v36);
  *v38 = v30;
  v38[1] = v31;
  *(v37 + ((v36 + 23) & 0xFFFFFFFFFFFFFFF8)) = v56;
  sub_29E64CD10(0);
  sub_29E685C10(&qword_2A1A7BFB0, sub_29E64CD10, MEMORY[0x29EDB8A00]);
  v39 = v30;
  v40 = v31;
  v41 = v55;
  sub_29E752848();
  sub_29E685C10(&qword_2A1A7BF20, sub_29E6624DC, MEMORY[0x29EDB8AE8]);
  v42 = v57;
  v43 = v41;
  v44 = sub_29E7528E8();

  (*(v34 + 8))(v60, v33);
  (*(v58 + 8))(v43, v42);
  result = v61;
  *(v61 + OBJC_IVAR____TtC20SleepHealthAppPlugin47SleepApneaNotificationSettingsGeneratorPipeline_publisher) = v44;
  return result;
}

uint64_t sub_29E684348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E74FEB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  sub_29E685AB8(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a2;
  v20 = a3;
  sub_29E662744();
  v19 = sub_29E7528C8();
  (*(v7 + 16))(v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *(v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18[1];
  sub_29E649310();
  sub_29E66257C();
  sub_29E685C10(&qword_2A1A7BF80, sub_29E649310, MEMORY[0x29EDB8A00]);
  sub_29E752928();

  sub_29E685C10(&qword_2A1A7C038, sub_29E685AB8, MEMORY[0x29EDB8908]);
  v16 = sub_29E7528E8();
  (*(v11 + 8))(v13, v10);
  return v16;
}

uint64_t sub_29E684618@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v68 = a4;
  sub_29E662A90(0);
  v70 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v69 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E74FE18();
  v65 = *(v8 - 8);
  v66 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v64 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E74FE48();
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v67 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E74FEB8();
  v59 = *(v12 - 8);
  v60 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v63 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E752098();
  v55 = *(v14 - 8);
  v56 = v14;
  v15 = MEMORY[0x2A1C7C4A8](v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v19 = &v55 - v18;
  sub_29E662AC4(0);
  v61 = v20;
  v21 = MEMORY[0x2A1C7C4A8](v20);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v25 = &v55 - v24;
  v26 = *a1;
  v62 = a2;
  v27 = sub_29E74FE78();
  v28 = sub_29E74FBC8();
  v30 = v29;

  v71 = 0;
  v72 = 0xE000000000000000;
  sub_29E754D78();

  v71 = 0xD000000000000026;
  v72 = 0x800000029E75C440;
  MEMORY[0x29ED96C20](v28, v30);

  v57 = v72;
  v58 = v71;
  v31 = sub_29E74FDC8();
  (*(*(v31 - 8) + 56))(v25, 1, 1, v31);
  if (v26 == 1)
  {
    sub_29E752048();
    v32 = sub_29E752088();
    v33 = sub_29E7546C8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v71 = v35;
      *v34 = 136446466;
      v36 = sub_29E755178();
      v38 = sub_29E6B9C90(v36, v37, &v71);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2082;
      *(v34 + 14) = sub_29E6B9C90(0xD00000000000004ELL, 0x800000029E75C470, &v71);
      _os_log_impl(&dword_29E5ED000, v32, v33, "[%{public}s.%{public}s]: Creating sleep apnea notification settings feed item.", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v35, -1, -1);
      MEMORY[0x29ED98410](v34, -1, -1);
    }

    (*(v55 + 8))(v19, v56);
    v39 = v62;
    sub_29E684E44(v62, v58, v57, v23);
    sub_29E662D48(v25);
    sub_29E662DA4(v23, v25);
  }

  else
  {
    sub_29E752048();
    v40 = sub_29E752088();
    v41 = sub_29E7546C8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v71 = v43;
      *v42 = 136446466;
      v44 = sub_29E755178();
      v46 = sub_29E6B9C90(v44, v45, &v71);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2082;
      *(v42 + 14) = sub_29E6B9C90(0xD00000000000004ELL, 0x800000029E75C470, &v71);
      _os_log_impl(&dword_29E5ED000, v40, v41, "[%{public}s.%{public}s]: Not creating sleep apnea notification settings feed item because feature is not onboarded.", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v43, -1, -1);
      MEMORY[0x29ED98410](v42, -1, -1);
    }

    (*(v55 + 8))(v17, v56);
    v39 = v62;
  }

  (*(v59 + 16))(v63, v39, v60);
  sub_29E74FE78();
  sub_29E662AF8(0, &qword_2A1A7D400, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v47 = sub_29E74FB98();
  v48 = *(v47 - 8);
  v49 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_29E762F30;
  (*(v48 + 104))(v50 + v49, *MEMORY[0x29EDC3780], v47);
  (*(v65 + 104))(v64, *MEMORY[0x29EDC3898], v66);
  sub_29E74FE28();
  sub_29E662CE4(v25, v23);
  sub_29E752818();
  v51 = sub_29E74FEE8();
  v52 = MEMORY[0x29EDC38C8];
  v53 = v68;
  v68[3] = v51;
  v53[4] = v52;
  sub_29E5FEBF4(v53);
  sub_29E685C10(&qword_2A1A7BF48, sub_29E662A90, MEMORY[0x29EDB8AB8]);
  sub_29E74FED8();
  return sub_29E662D48(v25);
}

uint64_t sub_29E684E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a3;
  v41 = a2;
  v40 = a1;
  v56 = a4;
  v47 = sub_29E752098();
  v46 = *(v47 - 8);
  MEMORY[0x2A1C7C4A8](v47);
  v48 = &v36[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = sub_29E750358();
  v44 = *(v45 - 8);
  MEMORY[0x2A1C7C4A8](v45);
  v43 = &v36[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v57 = sub_29E74FB98();
  v53 = *(v57 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v57);
  v39 = &v36[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v6);
  v52 = &v36[-v8];
  v9 = sub_29E74F8B8();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v36[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = sub_29E7506D8();
  v37 = *(v38 - 8);
  MEMORY[0x2A1C7C4A8](v38);
  v14 = &v36[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_29E750AD8();
  v54 = *(v15 - 8);
  v55 = v15;
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v36[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for SleepApneaNotificationSettingsDisclosureCellViewController(0);
  v49 = sub_29E74FBF8();
  v50 = v18;
  v51 = v19;
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  v20 = *(v10 + 8);
  v20(v12, v9);
  sub_29E7506B8();
  sub_29E74F8A8();
  sub_29E74F7C8();
  v20(v12, v9);
  sub_29E750AA8();
  v22 = v52;
  v21 = v53;
  v23 = v57;
  (*(v53 + 104))(v52, *MEMORY[0x29EDC3780], v57);
  v24 = sub_29E750AC8();
  v26 = v25;
  (*(v21 + 16))(v39, v22, v23);

  sub_29E64C7DC(v24, v26);
  sub_29E74FE78();
  v27 = v56;
  sub_29E74FCE8();
  sub_29E750AB8();
  sub_29E7506C8();
  v28 = v17;
  (*(v37 + 8))(v14, v38);
  sub_29E74FCD8();
  sub_29E662E20();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E762F30;
  *(inited + 32) = sub_29E74FF28();
  *(inited + 40) = v30;
  sub_29E5FF900(inited);
  swift_setDeallocating();
  sub_29E619D6C(inited + 32);
  sub_29E74FD88();
  v31 = v44;
  v32 = v43;
  v33 = v45;
  (*(v44 + 104))(v43, *MEMORY[0x29EDC19B8], v45);
  sub_29E750348();
  (*(v31 + 8))(v32, v33);
  sub_29E74FDA8();
  sub_29E74FCB8();
  sub_29E643D20(v24, v26);
  (*(v21 + 8))(v22, v57);
  (*(v54 + 8))(v28, v55);
  v34 = sub_29E74FDC8();
  return (*(*(v34 - 8) + 56))(v27, 0, 1, v34);
}

uint64_t sub_29E685844()
{
  v1 = OBJC_IVAR____TtC20SleepHealthAppPlugin47SleepApneaNotificationSettingsGeneratorPipeline_domain;
  v2 = sub_29E74FE48();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC20SleepHealthAppPlugin47SleepApneaNotificationSettingsGeneratorPipeline_context;
  v4 = sub_29E74FEB8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SleepApneaNotificationSettingsGeneratorPipeline(uint64_t a1)
{
  result = qword_2A1A7C870;
  if (!qword_2A1A7C870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E685998@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20SleepHealthAppPlugin47SleepApneaNotificationSettingsGeneratorPipeline_domain;
  v5 = sub_29E74FE48();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29E685A14@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29E74FEB8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  result = sub_29E684348(v1 + v4, *v5, v5[1]);
  *a1 = result;
  return result;
}

void sub_29E685AB8(uint64_t a1)
{
  if (!qword_2A1A7C030)
  {
    sub_29E649310();
    sub_29E66257C();
    sub_29E685C10(&qword_2A1A7BF80, sub_29E649310, MEMORY[0x29EDB8A00]);
    v1 = sub_29E752638();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7C030);
    }
  }
}

uint64_t sub_29E685B64@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29E74FEB8() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_29E684618(a1, v6, a2);
}

uint64_t sub_29E685C10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29E685C78(uint64_t a1)
{
  sub_29E689470(319, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_29E685D58@<X0>(uint64_t a1@<X8>)
{
  sub_29E689470(0, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_29E751D98();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_2A1858580;
  swift_beginAccess();
  sub_29E689380(v1 + v10, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_29E6895D8(v5, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
LABEL_5:
    v13 = MEMORY[0x29EDC1768];
    goto LABEL_6;
  }

  (*(v7 + 32))(v9, v5, v6);
  v11 = sub_29E751DA8();
  v12 = [v11 areAllRequirementsSatisfied];

  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = MEMORY[0x29EDC1760];
LABEL_6:
  v14 = *v13;
  v15 = sub_29E7501E8();
  return (*(*(v15 - 8) + 104))(a1, v14, v15);
}

uint64_t sub_29E685FA0()
{
  v12 = MEMORY[0x29EDCA298];
  sub_29E689470(0, &qword_2A1856860, MEMORY[0x29EDCA298]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v12 - v2;
  sub_29E6894C4(0);
  v13 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E601938((v0 + qword_2A1858570), *(v0 + qword_2A1858570 + 24));
  v14 = sub_29E751DC8();
  sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
  v8 = sub_29E754908();
  v15 = v8;
  v9 = sub_29E7548D8();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  sub_29E64C52C(0);
  sub_29E689590(&qword_2A1A7BFA0, sub_29E64C52C, MEMORY[0x29EDB8A00]);
  sub_29E63FE6C();
  sub_29E752968();
  sub_29E6895D8(v3, &qword_2A1856860, v12);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_29E689590(&qword_2A18585D0, sub_29E6894C4, MEMORY[0x29EDB89E8]);
  v10 = v13;
  sub_29E7529A8();

  (*(v5 + 8))(v7, v10);
  swift_beginAccess();
  sub_29E752708();
  swift_endAccess();
}

void sub_29E6862C4(uint64_t a1, uint64_t a2)
{
  sub_29E689470(0, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v14 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_29E751D98();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v5, a1, v8);
    (*(v9 + 56))(v5, 0, 1, v8);
    v10 = qword_2A1858580;
    swift_beginAccess();
    sub_29E689300(v5, v7 + v10);
    swift_endAccess();
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();

    if (v13)
    {
      swift_getObjectType();
      sub_29E751648();
      sub_29E751758();
    }
  }
}

uint64_t sub_29E6864B4@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  sub_29E689470(0, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
  v3 = MEMORY[0x2A1C7C4A8](v2 - 8);
  v52 = (&v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v48 - v5;
  v7 = sub_29E751D98();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v48 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v48 - v11;
  v50 = sub_29E7501E8();
  v13 = *(v50 - 8);
  v14 = MEMORY[0x2A1C7C4A8](v50);
  v51 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v48 - v16;
  v18 = qword_2A1858580;
  swift_beginAccess();
  v55 = v1;
  sub_29E689380(v1 + v18, v6);
  v49 = *(v8 + 48);
  if (v49(v6, 1, v7) == 1)
  {
    v19 = v8;
    sub_29E6895D8(v6, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
    v20 = MEMORY[0x29EDC1768];
  }

  else
  {
    (*(v8 + 32))(v12, v6, v7);
    v21 = sub_29E751DA8();
    v22 = [v21 areAllRequirementsSatisfied];

    v19 = v8;
    (*(v8 + 8))(v12, v7);
    v20 = MEMORY[0x29EDC1768];
    if (v22)
    {
      v20 = MEMORY[0x29EDC1760];
    }
  }

  v23 = *(v13 + 104);
  v24 = v50;
  v23(v17, *v20, v50);
  sub_29E750268();
  v25 = sub_29E750228();
  v53 = v26;
  v54 = v25;
  v27 = *(v13 + 8);
  (v27)(v17, v24);
  v28 = v52;
  sub_29E689380(v55 + v18, v52);
  if (v49(v28, 1, v7) == 1)
  {
    sub_29E6895D8(v28, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
    v29 = MEMORY[0x29EDC1768];
  }

  else
  {
    v30 = v19;
    v31 = *(v19 + 32);
    v32 = v48;
    v31(v48, v28, v7);
    v33 = sub_29E751DA8();
    v34 = [v33 areAllRequirementsSatisfied];
    v52 = v27;
    v35 = v34;

    (*(v30 + 8))(v32, v7);
    v27 = v52;
    v29 = MEMORY[0x29EDC1768];
    if (v35)
    {
      v29 = MEMORY[0x29EDC1760];
    }
  }

  v36 = v51;
  v23(v51, *v29, v24);
  sub_29E686C44(v36);
  (v27)(v36, v24);
  v37 = objc_opt_self();
  v38 = [v37 configurationWithPointSize_];
  v39 = [objc_opt_self() hk_respiratoryKeyColor];
  v40 = [v37 configurationWithHierarchicalColor_];

  v41 = [v38 configurationByApplyingConfiguration_];
  v42 = v41;
  v43 = sub_29E754198();
  v44 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (!v44)
  {
    [objc_allocWithZone(MEMORY[0x29EDC7AC8]) init];
  }

  v45 = v56;
  sub_29E7516F8();

  v46 = sub_29E751708();
  return (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
}

uint64_t sub_29E686AE0()
{
  v0 = objc_opt_self();
  v1 = sub_29E754198();
  v2 = [v0 groupSpecifierWithID_];

  v9[4] = v2;
  v3 = 0;
  v9[5] = sub_29E68762C();
  v4 = MEMORY[0x29EDCA190];
  v8 = MEMORY[0x29EDCA190];
  while (v3 != 2)
  {
    if (v9[v3++ + 4])
    {
      v6 = swift_unknownObjectRetain();
      MEMORY[0x29ED96CE0](v6);
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_29E754418();
      }

      sub_29E754438();
      v4 = v8;
    }
  }

  sub_29E689420(0, &qword_2A18585C0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9C68]);
  swift_arrayDestroy();
  return v4;
}

uint64_t sub_29E686C44(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_29E752098();
  v83 = *(v3 - 8);
  v84 = v3;
  v4 = MEMORY[0x2A1C7C4A8](v3);
  v79 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v78 = &v76 - v6;
  v85 = sub_29E74F8B8();
  v7 = *(v85 - 8);
  MEMORY[0x2A1C7C4A8](v85);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E7501E8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v80 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v82 = &v76 - v15;
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v18 = &v76 - v17;
  MEMORY[0x2A1C7C4A8](v16);
  v20 = &v76 - v19;
  v21 = *(v11 + 16);
  v21(&v76 - v19, a1, v10);
  v81 = v11;
  v22 = *(v11 + 88);
  v86 = v10;
  v23 = v22(v20, v10);
  if (v23 == *MEMORY[0x29EDC1760])
  {
    sub_29E689420(0, &qword_2A1A7BCF0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_29E762F40;
    if (qword_2A1A7D6F0 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

  v25 = *MEMORY[0x29EDC1768];
  if (v23 == v25)
  {
    sub_29E689420(0, &qword_2A1A7BCF0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_29E762F40;
    if (qword_2A1A7D6F0 == -1)
    {
LABEL_6:
      sub_29E74F8A8();
      v26 = sub_29E74F7C8();
      v28 = v27;
      v29 = *(v7 + 8);
      v30 = v85;
      v29(v9, v85);
      *(v24 + 32) = v26;
      *(v24 + 40) = v28;
      sub_29E74F8A8();
      v31 = sub_29E74F7C8();
      v33 = v32;
      v29(v9, v30);
      *(v24 + 48) = v31;
      *(v24 + 56) = v33;
      return v24;
    }

LABEL_24:
    swift_once();
    goto LABEL_6;
  }

  v85 = v1;
  if (v23 == *MEMORY[0x29EDC1758] || v23 == *MEMORY[0x29EDC1750] || v23 == *MEMORY[0x29EDC1748])
  {
    LODWORD(v80) = v25;
    v37 = v78;
    sub_29E752048();
    v38 = v86;
    v39 = v21;
    v21(v18, a1, v86);
    v40 = sub_29E752088();
    v41 = sub_29E7546A8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v87 = v79;
      *v42 = 136446466;
      v43 = sub_29E755178();
      v45 = sub_29E6B9C90(v43, v44, &v87);

      *(v42 + 4) = v45;
      *(v42 + 12) = 2082;
      v46 = v82;
      v39(v82, v18, v86);
      v47 = v41;
      v48 = sub_29E7541F8();
      v50 = v49;
      v51 = v81;
      v52 = *(v81 + 8);
      v52(v18, v86);
      v53 = sub_29E6B9C90(v48, v50, &v87);

      *(v42 + 14) = v53;
      _os_log_impl(&dword_29E5ED000, v40, v47, "[%{public}s] Making header content for unsupported status %{public}s", v42, 0x16u);
      v54 = v79;
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v54, -1, -1);
      v38 = v86;
      MEMORY[0x29ED98410](v42, -1, -1);

      (*(v83 + 8))(v78, v84);
    }

    else
    {

      v51 = v81;
      v52 = *(v81 + 8);
      v52(v18, v38);
      (*(v83 + 8))(v37, v84);
      v46 = v82;
    }

    (*(v51 + 104))(v46, v80, v38);
    v24 = sub_29E686C44(v46);
    v52(v46, v38);
  }

  else
  {
    v55 = v79;
    sub_29E752048();
    v56 = v86;
    v57 = v21;
    v21(v80, a1, v86);
    v58 = sub_29E752088();
    v59 = sub_29E7546A8();
    if (os_log_type_enabled(v58, v59))
    {
      v61 = swift_slowAlloc();
      v76 = v58;
      v62 = v61;
      v78 = swift_slowAlloc();
      v87 = v78;
      *v62 = 136446466;
      v63 = sub_29E755178();
      v65 = sub_29E6B9C90(v63, v64, &v87);

      *(v62 + 4) = v65;
      *(v62 + 12) = 2082;
      v66 = v82;
      LODWORD(ObjectType) = v59;
      v67 = v80;
      v57(v82, v80, v86);
      v68 = sub_29E7541F8();
      v70 = v69;
      v71 = v81;
      v72 = *(v81 + 8);
      v72(v67, v86);
      v73 = sub_29E6B9C90(v68, v70, &v87);
      v56 = v86;

      *(v62 + 14) = v73;
      v74 = v76;
      _os_log_impl(&dword_29E5ED000, v76, ObjectType, "[%{public}s] Making header content for unknown status %{public}s", v62, 0x16u);
      v75 = v78;
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v75, -1, -1);
      MEMORY[0x29ED98410](v62, -1, -1);

      (*(v83 + 8))(v79, v84);
    }

    else
    {

      v71 = v81;
      v72 = *(v81 + 8);
      v72(v80, v56);
      (*(v83 + 8))(v55, v84);
      v66 = v82;
    }

    (*(v71 + 104))(v66, v25, v56);
    v24 = sub_29E686C44(v66);
    v72(v66, v56);
    v72(v20, v56);
  }

  return v24;
}

id sub_29E68762C()
{
  v1 = sub_29E74F8B8();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v2 + 8))(v4, v1);
  v5 = objc_opt_self();
  v6 = sub_29E754198();

  v7 = [v5 preferenceSpecifierNamed:v6 target:v0 set:sel_setNotificationsEnabled_ get:sel_isNotificationsEnabled detail:0 cell:6 edit:0];

  if (v7)
  {
    v8 = sub_29E754198();
    [v7 setIdentifier_];

    v9 = sub_29E754458();
    [v7 setProperty:v9 forKey:*MEMORY[0x29EDC62A0]];
  }

  return v7;
}

uint64_t sub_29E687850()
{
  sub_29E689470(0, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v23 - v2;
  v4 = sub_29E751D98();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E7501E8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v23 - v13;
  v15 = qword_2A1858580;
  swift_beginAccess();
  sub_29E689380(v0 + v15, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_29E6895D8(v3, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
LABEL_5:
    v19 = *(v9 + 104);
    v19(v14, *MEMORY[0x29EDC1768], v8);
    v20 = *MEMORY[0x29EDC1760];
    goto LABEL_6;
  }

  (*(v5 + 32))(v7, v3, v4);
  v16 = sub_29E751DA8();
  v17 = [v16 areAllRequirementsSatisfied];

  (*(v5 + 8))(v7, v4);
  if ((v17 & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = *MEMORY[0x29EDC1760];
  v19 = *(v9 + 104);
  v19(v14, v18, v8);
  v20 = v18;
LABEL_6:
  v19(v12, v20, v8);
  sub_29E7501D8();
  v21 = *(v9 + 8);
  v21(v12, v8);
  v21(v14, v8);
  return sub_29E754458();
}

id sub_29E687BA8(void *a1)
{
  v1 = a1;
  v2 = sub_29E687850();

  return v2;
}

void sub_29E687BEC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_29E752098();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v9 = a1;
  v10 = sub_29E752088();
  v11 = sub_29E7546C8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v35 = v6;
    v13 = v12;
    v34 = swift_slowAlloc();
    aBlock[0] = v34;
    *v13 = 136446466;
    v14 = sub_29E755178();
    v16 = sub_29E6B9C90(v14, v15, aBlock);
    v36 = ObjectType;
    v17 = v16;

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    v18 = v9;
    v19 = [v18 description];
    v20 = v2;
    v21 = sub_29E7541D8();
    v33 = v5;
    v23 = v22;

    v24 = v21;
    v2 = v20;
    v25 = sub_29E6B9C90(v24, v23, aBlock);

    *(v13 + 14) = v25;
    ObjectType = v36;
    _os_log_impl(&dword_29E5ED000, v10, v11, "[%{public}s] Setting notifications enabled: %{public}s", v13, 0x16u);
    v26 = v34;
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v26, -1, -1);
    MEMORY[0x29ED98410](v13, -1, -1);

    (*(v35 + 8))(v8, v33);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v27 = *(v2 + qword_2A1858578);
  v28 = *MEMORY[0x29EDBA788];
  v29 = swift_allocObject();
  *(v29 + 16) = v9;
  *(v29 + 24) = ObjectType;
  aBlock[4] = sub_29E689400;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E5FE860;
  aBlock[3] = &unk_2A25001E0;
  v30 = _Block_copy(aBlock);
  v31 = v9;
  v32 = v28;

  [v27 setFeatureSettingNumber:v31 forKey:v32 completion:v30];
  _Block_release(v30);
}

uint64_t sub_29E687F34(char a1, void *a2, void *a3, uint64_t a4)
{
  v7 = sub_29E752098();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v51 - v12;
  if (a1)
  {
    sub_29E752048();
    v14 = a3;
    v15 = sub_29E752088();
    v16 = sub_29E7546C8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v54 = v18;
      *v17 = 136446466;
      v19 = sub_29E755178();
      v21 = sub_29E6B9C90(v19, v20, &v54);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2082;
      v22 = v14;
      v23 = [v22 description];
      v24 = sub_29E7541D8();
      v52 = v7;
      v26 = v25;

      v27 = sub_29E6B9C90(v24, v26, &v54);

      *(v17 + 14) = v27;
      _os_log_impl(&dword_29E5ED000, v15, v16, "[%{public}s] Completed setting notifications enabled: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v18, -1, -1);
      MEMORY[0x29ED98410](v17, -1, -1);

      return (*(v8 + 8))(v11, v52);
    }

    v49 = *(v8 + 8);
    v50 = v11;
  }

  else
  {
    sub_29E752048();
    v29 = a3;
    v30 = a2;
    v31 = sub_29E752088();
    v32 = sub_29E7546A8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v54 = v51;
      *v33 = 136446722;
      v34 = sub_29E755178();
      v36 = sub_29E6B9C90(v34, v35, &v54);
      v52 = v7;
      v37 = v36;

      *(v33 + 4) = v37;
      *(v33 + 12) = 2082;
      v38 = v29;
      v39 = [v38 description];
      v40 = sub_29E7541D8();
      v42 = v41;

      v43 = sub_29E6B9C90(v40, v42, &v54);

      *(v33 + 14) = v43;
      *(v33 + 22) = 2082;
      v53 = a2;
      v44 = a2;
      sub_29E689470(0, &qword_2A1858A60, sub_29E66A61C);
      v45 = sub_29E7541F8();
      v47 = sub_29E6B9C90(v45, v46, &v54);

      *(v33 + 24) = v47;
      _os_log_impl(&dword_29E5ED000, v31, v32, "[%{public}s] Error setting notifications enabled: %{public}s %{public}s", v33, 0x20u);
      v48 = v51;
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v48, -1, -1);
      MEMORY[0x29ED98410](v33, -1, -1);

      return (*(v8 + 8))(v13, v52);
    }

    v49 = *(v8 + 8);
    v50 = v13;
  }

  return v49(v50, v7);
}

void sub_29E688380(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_29E687BEC(v4);
}

uint64_t sub_29E688418()
{
  sub_29E5F0140(v0 + qword_2A1858568);
  sub_29E5FECBC((v0 + qword_2A1858570));
  sub_29E751758();
  sub_29E6895D8(v0 + qword_2A1858580, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
}

uint64_t sub_29E6884BC(uint64_t a1)
{
  sub_29E5F0140(a1 + qword_2A1858568);
  sub_29E5FECBC((a1 + qword_2A1858570));
  sub_29E751758();
  sub_29E6895D8(a1 + qword_2A1858580, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
}

uint64_t sub_29E68860C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_2A1858568;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return sub_29E751758();
}

void (*sub_29E688678(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_2A1858568;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_29E688718;
}

void sub_29E688718(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    sub_29E751758();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_29E751758();
  }

  free(v3);
}

uint64_t (*sub_29E6887A8(uint64_t *a1))()
{
  if (MEMORY[0x29EDCA1B0])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_29E751738();
  return sub_29E688830;
}

void sub_29E688830(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_29E688880()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_29E754E48();
  __break(1u);
  return result;
}

id sub_29E688980(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_29E6889C8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v28 = a4;
  v29 = a3;
  v26[4] = swift_getObjectType();
  sub_29E689470(0, &qword_2A18585B8, MEMORY[0x29EDC1C10]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v27 = v26 - v9;
  v10 = sub_29E752098();
  v26[7] = *(v10 - 8);
  v26[8] = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v26[5] = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E689470(0, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
  v13 = MEMORY[0x2A1C7C4A8](v12 - 8);
  v26[6] = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = v26 - v15;
  v30[3] = sub_29E609B5C(0, &qword_2A1A7BD80, 0x29EDBABB0);
  v30[4] = MEMORY[0x29EDC2EA8];
  v30[0] = a1;
  *(a5 + qword_2A1858568 + 8) = 0;
  swift_unknownObjectWeakInit();
  v17 = qword_2A1858580;
  v18 = sub_29E751D98();
  v19 = *(*(v18 - 8) + 56);
  v19(a5 + v17, 1, 1, v18);
  *(a5 + qword_2A1858588) = MEMORY[0x29EDCA1A0];
  sub_29E602E20(v30, a5 + qword_2A1858570);
  *(a5 + qword_2A1858578) = a2;
  swift_unknownObjectRetain();
  sub_29E751DD8();
  v19(v16, 0, 1, v18);
  swift_beginAccess();
  sub_29E689300(v16, a5 + v17);
  swift_endAccess();
  v20 = sub_29E750428();
  v21 = *(v20 - 8);
  v22 = v27;
  v23 = v29;
  (*(v21 + 16))(v27, v29, v20);
  (*(v21 + 56))(v22, 0, 1, v20);
  v24 = sub_29E750418();
  sub_29E685FA0();

  (*(v21 + 8))(v23, v20);
  sub_29E5FECBC(v30);
  return v24;
}

id sub_29E688FFC(void *a1, uint64_t a2, uint64_t a3)
{
  v23 = sub_29E74F8B8();
  v5 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E750428();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1;
  v13 = [v12 featureAvailabilityProviding];
  v14 = *(v9 + 16);
  v24 = a3;
  v14(v11, a3, v8);
  LODWORD(a3) = HKImproveHealthAndActivityAnalyticsAllowed();
  v15 = objc_allocWithZone(type metadata accessor for SleepApneaHealthChecklistSettingsDataSource(0));
  v16 = sub_29E6889C8(v12, v13, v11, a3, v15);
  sub_29E751758();
  sub_29E689590(&qword_2A18585B0, type metadata accessor for SleepApneaHealthChecklistSettingsDataSource, &unk_29E7682B0);
  v17 = v16;
  v18 = sub_29E751558();
  v19 = qword_2A1A7D6F0;
  v20 = v18;
  if (v19 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v5 + 8))(v7, v23);
  v21 = sub_29E754198();

  [v20 setTitle_];

  (*(v9 + 8))(v24, v8);
  return v20;
}

uint64_t sub_29E689300(uint64_t a1, uint64_t a2)
{
  sub_29E689470(0, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E689380(uint64_t a1, uint64_t a2)
{
  sub_29E689470(0, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E689408(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29E689420(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29E689470(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754BD8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E6894C4(uint64_t a1)
{
  if (!qword_2A18585C8)
  {
    sub_29E64C52C(255);
    sub_29E609B5C(255, &qword_2A1A7D470, 0x29EDCA548);
    sub_29E689590(&qword_2A1A7BFA0, sub_29E64C52C, MEMORY[0x29EDB8A00]);
    sub_29E63FE6C();
    v1 = sub_29E7526C8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A18585C8);
    }
  }
}

uint64_t sub_29E689590(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E6895D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E689470(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for AddScheduleSection(uint64_t a1)
{
  result = qword_2A1858608;
  if (!qword_2A1858608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_29E6896E0()
{
  v0 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v1 = sub_29E754198();
  v2 = [v0 initWithString_];

  sub_29E7527B8();

  if (aBlock)
  {
    v3 = sub_29E68B83C(aBlock);

    v2 = v3;
  }

  aBlock = 0;
  v10 = 0xE000000000000000;
  sub_29E754D78();

  v11 = 0xD000000000000012;
  v12 = 0x800000029E7682F0;

  sub_29E7527B8();

  MEMORY[0x29ED96C20](0x65736C6166, 0xE500000000000000);

  v4 = [v2 description];
  v5 = sub_29E7541D8();
  v7 = v6;

  MEMORY[0x29ED96C20](v5, v7);

  return v11;
}

uint64_t sub_29E6899BC(uint64_t a1)
{
  v3 = sub_29E74ED88();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + qword_2A18585F8) = 0;
  *(v1 + qword_2A1858600) = a1;
  v13[0] = 0;
  v13[1] = 0xE000000000000000;

  sub_29E754D78();

  strcpy(v13, "MutableArray<");
  HIWORD(v13[1]) = -4864;
  sub_29E74ED78();
  v7 = sub_29E74ED48();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  MEMORY[0x29ED96C20](v7, v9);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  v10 = sub_29E750D08();
  v13[0] = a1;
  swift_allocObject();
  swift_weakInit();
  sub_29E60990C(0);
  sub_29E68C450(&qword_2A18569F0, sub_29E60990C, MEMORY[0x29EDB8A70]);

  v11 = sub_29E7529A8();

  *(v10 + qword_2A18585F8) = v11;

  return v10;
}

uint64_t sub_29E689C1C(uint64_t a1, uint64_t a2)
{
  v2 = sub_29E753D78();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = (v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 96);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
  *v5 = sub_29E754908();
  (*(v3 + 104))(v5, *MEMORY[0x29EDCA278], v2);
  v6 = sub_29E753DA8();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_29E68CF14();
      inited = swift_initStackObject();
      v10 = xmmword_29E762F30;
      inited[1] = xmmword_29E762F30;

      sub_29E68BD9C(v11);

      v9 = v11[1];
      inited[2] = v11[0];
      inited[3] = v9;
      inited[4] = v11[2];
      sub_29E68CA04(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
      sub_29E750CA8();
      *(swift_allocObject() + 16) = v10;
      sub_29E6CC6D0(inited);
      swift_setDeallocating();
      sub_29E68CF64((inited + 2));
      sub_29E6896E0();
      sub_29E750C98();
      sub_29E750D18();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}