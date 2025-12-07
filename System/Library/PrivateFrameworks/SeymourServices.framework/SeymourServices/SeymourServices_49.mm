void sub_2273AC208(uint64_t a1, id a2, id a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v6 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22766CCE0();
    a4(0);
    sub_2273B65DC(a5, a6, MEMORY[0x277D85378]);
    sub_22766C700();
    v6 = v33;
    v10 = v34;
    v11 = v35;
    v12 = v36;
    v13 = v37;
  }

  else
  {
    v14 = -1 << *(a1 + 32);
    v10 = a1 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(a1 + 56);

    v12 = 0;
  }

  if (v6 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v17 = v12;
  v18 = v13;
  v19 = v12;
  if (v13)
  {
LABEL_12:
    v20 = (v18 - 1) & v18;
    v21 = *(*(v6 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    if (v21)
    {
      while (1)
      {
        v22 = [v21 managedObjectContext];
        if (v22 && (v23 = v22, v22, v23 == a3))
        {
          [a3 deleteObject_];
        }

        else
        {
          v24 = [v21 managedObjectContext];
          if (!v24 || (v25 = v24, v24, v25 != a2))
          {
            v28 = sub_227664DD0();
            sub_2273B65DC(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
            swift_allocError();
            (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D50FE8], v28);
            swift_willThrow();
            sub_226EBB21C(v6);

            return;
          }

          v26 = [v21 objectID];
          v27 = [a3 objectWithID_];

          [a3 deleteObject_];
          v21 = v27;
        }

        v12 = v19;
        v13 = v20;
        if ((v6 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (sub_22766CD50())
        {
          a4(0);
          swift_dynamicCast();
          v21 = v38;
          v19 = v12;
          v20 = v13;
          if (v38)
          {
            continue;
          }
        }

        break;
      }
    }

LABEL_24:
    sub_226EBB21C(v6);
    return;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= ((v11 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v18 = *(v10 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

double sub_2273AC5A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD090, &qword_2276839E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_227683B90;
  v1 = sub_226F505B8(&unk_283A94480);
  v2 = swift_allocObject();
  v2[2] = v1;
  v2[3] = sub_2273AE684;
  v2[4] = 0;
  *(v0 + 32) = 0x1000000;
  *(v0 + 40) = sub_2273B6580;
  *(v0 + 48) = v2;
  *(v0 + 56) = 16843008;
  *(v0 + 64) = nullsub_1;
  *(v0 + 72) = 0;
  v3 = sub_226F505B8(&unk_283A944A8);
  v4 = swift_allocObject();
  *(v4 + 16) = 257;
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = sub_2273B65A0;
  v5[4] = v4;
  *(v0 + 80) = 33620225;
  *(v0 + 88) = sub_2273B65BC;
  *(v0 + 96) = v5;
  *(v0 + 104) = 33882625;
  *(v0 + 112) = nullsub_1;
  *(v0 + 120) = 0;
  *(v0 + 128) = 33882626;
  *(v0 + 136) = nullsub_1;
  *(v0 + 144) = 0;
  *(v0 + 152) = 33882627;
  *(v0 + 160) = nullsub_1;
  *(v0 + 168) = 0;
  *(v0 + 176) = 33882628;
  *(v0 + 184) = nullsub_1;
  *(v0 + 192) = 0;
  v6 = sub_226F505B8(&unk_283A944D0);
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = sub_2273AEC1C;
  v7[4] = 0;
  *(v0 + 200) = 50659845;
  *(v0 + 208) = sub_2273B66E0;
  *(v0 + 216) = v7;
  *(v0 + 224) = 50987781;
  *(v0 + 232) = nullsub_1;
  *(v0 + 240) = 0;
  *(v0 + 248) = 50987782;
  *(v0 + 256) = nullsub_1;
  *(v0 + 264) = 0;
  *(v0 + 272) = 50987783;
  *(v0 + 280) = nullsub_1;
  *(v0 + 288) = 0;
  *(v0 + 296) = 50987784;
  *(v0 + 304) = nullsub_1;
  *(v0 + 312) = 0;
  *(v0 + 320) = 50987785;
  *(v0 + 328) = nullsub_1;
  *(v0 + 336) = 0;
  v8 = sub_226F505B8(&unk_283A944F8);
  v9 = swift_allocObject();
  *(v9 + 16) = 778;
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = sub_2273B668C;
  v10[4] = v9;
  *(v0 + 344) = 67765002;
  *(v0 + 352) = sub_2273B66F8;
  *(v0 + 360) = v10;
  *(v0 + 368) = 67830794;
  *(v0 + 376) = nullsub_1;
  *(v0 + 384) = 0;
  v11 = sub_226F505B8(&unk_283A94520);
  v12 = swift_allocObject();
  *(v12 + 16) = 1035;
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = sub_2273B668C;
  v13[4] = v12;
  *(v0 + 392) = 84608011;
  *(v0 + 400) = sub_2273B66F8;
  *(v0 + 408) = v13;
  *(v0 + 416) = 84870411;
  *(v0 + 424) = nullsub_1;
  *(v0 + 432) = 0;
  *(v0 + 440) = 84870412;
  *(v0 + 448) = nullsub_1;
  *(v0 + 456) = 0;
  *(v0 + 464) = 84870413;
  *(v0 + 472) = nullsub_1;
  *(v0 + 480) = 0;
  *(v0 + 488) = 84870414;
  *(v0 + 496) = nullsub_1;
  *(v0 + 504) = 0;
  v14 = sub_226F505B8(&unk_283A94548);
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = sub_2273B66A4;
  v15[4] = 0;
  *(v0 + 512) = 118424847;
  *(v0 + 520) = sub_2273B66F8;
  *(v0 + 528) = v15;
  v16 = sub_226F505B8(&unk_283A94570);
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = sub_2273B66A4;
  v17[4] = 0;
  *(v0 + 536) = 118425103;
  *(v0 + 544) = sub_2273B66F8;
  *(v0 + 552) = v17;
  v18 = sub_226F505B8(&unk_283A94598);
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = sub_2273AF5A8;
  v19[4] = 0;
  *(v0 + 560) = 135202575;
  *(v0 + 568) = sub_2273B66E0;
  *(v0 + 576) = v19;
  v20 = sub_226F505B8(&unk_283A945C0);
  v21 = swift_allocObject();
  *(v21 + 16) = 2063;
  v22 = swift_allocObject();
  v22[2] = v20;
  v22[3] = sub_2273B668C;
  v22[4] = v21;
  *(v0 + 584) = 151980047;
  *(v0 + 592) = sub_2273B66F8;
  *(v0 + 600) = v22;
  *(v0 + 608) = 152045839;
  *(v0 + 616) = nullsub_1;
  *(v0 + 624) = 0;
  v23 = sub_226F505B8(&unk_283A945E8);
  v24 = swift_allocObject();
  *(v24 + 16) = 2320;
  v25 = swift_allocObject();
  v25[2] = v23;
  v25[3] = sub_2273B668C;
  v25[4] = v24;
  *(v0 + 632) = 168823056;
  *(v0 + 640) = sub_2273B66F8;
  *(v0 + 648) = v25;
  *(v0 + 656) = 168888848;
  *(v0 + 664) = nullsub_1;
  *(v0 + 672) = 0;
  v26 = sub_226F505B8(&unk_283A94610);
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = sub_2273B66C8;
  v27[4] = 0;
  *(v0 + 680) = 185666065;
  *(v0 + 688) = sub_2273B66E0;
  *(v0 + 696) = v27;
  *(v0 + 704) = 185731857;
  *(v0 + 712) = nullsub_1;
  *(v0 + 720) = 0;
  v28 = sub_226F505B8(&unk_283A94638);
  v29 = swift_allocObject();
  *(v29 + 16) = 2834;
  v30 = swift_allocObject();
  v30[2] = v28;
  v30[3] = sub_2273B668C;
  v30[4] = v29;
  *(v0 + 728) = 202509074;
  *(v0 + 736) = sub_2273B66F8;
  *(v0 + 744) = v30;
  *(v0 + 752) = 202574866;
  *(v0 + 760) = nullsub_1;
  *(v0 + 768) = 0;
  v31 = sub_226F505B8(&unk_283A94660);
  v32 = swift_allocObject();
  *(v32 + 16) = 3091;
  v33 = swift_allocObject();
  v33[2] = v31;
  v33[3] = sub_2273B668C;
  v33[4] = v32;
  *(v0 + 776) = 219352083;
  *(v0 + 784) = sub_2273B66F8;
  *(v0 + 792) = v33;
  *(v0 + 800) = 219417875;
  *(v0 + 808) = nullsub_1;
  *(v0 + 816) = 0;
  v34 = sub_226F505B8(&unk_283A94688);
  v35 = swift_allocObject();
  *(v35 + 16) = 3348;
  v36 = swift_allocObject();
  v36[2] = v34;
  v36[3] = sub_2273B668C;
  v36[4] = v35;
  *(v0 + 824) = 252972308;
  *(v0 + 832) = sub_2273B66F8;
  *(v0 + 840) = v36;
  v37 = sub_226F505B8(&unk_283A946B0);
  v38 = swift_allocObject();
  *(v38 + 16) = 3604;
  v39 = swift_allocObject();
  v39[2] = v37;
  v39[3] = sub_2273B668C;
  v39[4] = v38;
  *(v0 + 848) = 252972564;
  *(v0 + 856) = sub_2273B66F8;
  *(v0 + 864) = v39;
  *(v0 + 872) = 253038356;
  *(v0 + 880) = nullsub_1;
  *(v0 + 888) = 0;
  v40 = sub_226F505B8(&unk_283A946D8);
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = sub_2273B66C8;
  v41[4] = 0;
  *(v0 + 896) = 269815573;
  *(v0 + 904) = sub_2273B66E0;
  *(v0 + 912) = v41;
  *(v0 + 920) = 269881365;
  *(v0 + 928) = nullsub_1;
  *(v0 + 936) = 0;
  v42 = sub_226F505B8(&unk_283A94700);
  v43 = swift_allocObject();
  *(v43 + 16) = 4118;
  v44 = swift_allocObject();
  v44[2] = v42;
  v44[3] = sub_2273B668C;
  v44[4] = v43;
  *(v0 + 944) = 286658582;
  *(v0 + 952) = sub_2273B66F8;
  *(v0 + 960) = v44;
  *(v0 + 968) = 286789910;
  *(v0 + 976) = nullsub_1;
  *(v0 + 984) = 0;
  *(v0 + 992) = 286789911;
  *(v0 + 1000) = nullsub_1;
  *(v0 + 1008) = 0;
  v45 = sub_226F505B8(&unk_283A94728);
  v46 = swift_allocObject();
  v46[2] = v45;
  v46[3] = sub_2273AF7D0;
  v46[4] = 0;
  *(v0 + 1016) = 303567128;
  *(v0 + 1024) = sub_2273B66F8;
  *(v0 + 1032) = v46;
  v47 = sub_226F505B8(&unk_283A94750);
  v48 = swift_allocObject();
  *(v48 + 16) = 24;
  *(v48 + 17) = 18;
  v49 = swift_allocObject();
  v49[2] = v47;
  v49[3] = sub_2273B668C;
  v49[4] = v48;
  *(v0 + 1040) = 320344600;
  *(v0 + 1048) = sub_2273B66F8;
  *(v0 + 1056) = v49;
  *(v0 + 1064) = 320410392;
  *(v0 + 1072) = nullsub_1;
  *(v0 + 1080) = 0;
  v50 = sub_226F505B8(&unk_283A94778);
  v51 = swift_allocObject();
  v51[2] = v50;
  v51[3] = sub_2273AFD5C;
  v51[4] = 0;
  *(v0 + 1088) = 337187609;
  *(v0 + 1096) = sub_2273B66E0;
  *(v0 + 1104) = v51;
  v52 = sub_226F505B8(&unk_283A947A0);
  v53 = swift_allocObject();
  *(v53 + 16) = 25;
  *(v53 + 17) = 20;
  v54 = swift_allocObject();
  v54[2] = v52;
  v54[3] = sub_2273B668C;
  v54[4] = v53;
  *(v0 + 1112) = 353965081;
  *(v0 + 1120) = sub_2273B66F8;
  *(v0 + 1128) = v54;
  *(v0 + 1136) = 354030873;
  *(v0 + 1144) = nullsub_1;
  *(v0 + 1152) = 0;
  v55 = sub_226F505B8(&unk_283A947C8);
  v56 = swift_allocObject();
  v56[2] = v55;
  v56[3] = sub_2273B0E68;
  v56[4] = 0;
  *(v0 + 1160) = 370808090;
  *(v0 + 1168) = sub_2273B66E0;
  *(v0 + 1176) = v56;
  *(v0 + 1184) = 370939418;
  *(v0 + 1192) = nullsub_1;
  *(v0 + 1200) = 0;
  *(v0 + 1208) = 370939419;
  *(v0 + 1216) = nullsub_1;
  *(v0 + 1224) = 0;
  v57 = sub_226F505B8(&unk_283A947F0);
  v58 = swift_allocObject();
  *(v58 + 16) = 28;
  *(v58 + 17) = 22;
  v59 = swift_allocObject();
  v59[2] = v57;
  v59[3] = sub_2273B668C;
  v59[4] = v58;
  *(v0 + 1232) = 387716636;
  *(v0 + 1240) = sub_2273B66F8;
  *(v0 + 1248) = v59;
  *(v0 + 1256) = 387782428;
  *(v0 + 1264) = nullsub_1;
  *(v0 + 1272) = 0;
  v60 = sub_226F505B8(&unk_283A94818);
  v61 = swift_allocObject();
  *(v61 + 16) = 29;
  *(v61 + 17) = 23;
  v62 = swift_allocObject();
  v62[2] = v60;
  v62[3] = sub_2273B668C;
  v62[4] = v61;
  *(v0 + 1280) = 404559645;
  *(v0 + 1288) = sub_2273B66F8;
  *(v0 + 1296) = v62;
  *(v0 + 1304) = 404625437;
  *(v0 + 1312) = nullsub_1;
  *(v0 + 1320) = 0;
  v63 = sub_226F505B8(&unk_283A94840);
  v64 = swift_allocObject();
  *(v64 + 16) = 30;
  *(v64 + 17) = 24;
  v65 = swift_allocObject();
  v65[2] = v63;
  v65[3] = sub_2273B668C;
  v65[4] = v64;
  *(v0 + 1328) = 421402654;
  *(v0 + 1336) = sub_2273B66F8;
  *(v0 + 1344) = v65;
  v66 = sub_226F505B8(&unk_283A94868);
  v67 = swift_allocObject();
  v67[2] = v66;
  v67[3] = sub_2273B0FFC;
  v67[4] = 0;
  *(v0 + 1352) = 438180126;
  *(v0 + 1360) = sub_2273B66E0;
  *(v0 + 1368) = v67;
  v68 = sub_226F505B8(&unk_283A94890);
  v69 = swift_allocObject();
  v69[2] = v68;
  v69[3] = sub_2273B1028;
  v69[4] = 0;
  *(v0 + 1376) = 454957598;
  *(v0 + 1384) = sub_2273B66E0;
  *(v0 + 1392) = v69;
  *(v0 + 1400) = 455023390;
  *(v0 + 1408) = nullsub_1;
  *(v0 + 1416) = 0;
  v70 = sub_226F505B8(&unk_283A948B8);
  v71 = swift_allocObject();
  *(v71 + 16) = 31;
  *(v71 + 17) = 24;
  v72 = swift_allocObject();
  v72[2] = v70;
  v72[3] = sub_2273B668C;
  v72[4] = v71;
  *(v0 + 1424) = 421468191;
  *(v0 + 1432) = sub_2273B66F8;
  *(v0 + 1440) = v72;
  v73 = sub_226F505B8(&unk_283A948E0);
  v74 = swift_allocObject();
  v74[2] = v73;
  v74[3] = sub_2273B0FFC;
  v74[4] = 0;
  *(v0 + 1448) = 438245663;
  *(v0 + 1456) = sub_2273B66E0;
  *(v0 + 1464) = v74;
  v75 = sub_226F505B8(&unk_283A94908);
  v76 = swift_allocObject();
  v76[2] = v75;
  v76[3] = sub_2273B1028;
  v76[4] = 0;
  *(v0 + 1472) = 455023135;
  *(v0 + 1480) = sub_2273B66E0;
  *(v0 + 1488) = v76;
  v77 = sub_226F505B8(&unk_283A94930);
  v78 = swift_allocObject();
  *(v78 + 16) = 31;
  *(v78 + 17) = 27;
  v79 = swift_allocObject();
  v79[2] = v77;
  v79[3] = sub_2273B668C;
  v79[4] = v78;
  *(v0 + 1496) = 505355039;
  *(v0 + 1504) = sub_2273B66F8;
  *(v0 + 1512) = v79;
  *(v0 + 1520) = 505486879;
  *(v0 + 1528) = nullsub_1;
  *(v0 + 1536) = 0;
  *(v0 + 1544) = 471866398;
  *(v0 + 1552) = nullsub_1;
  *(v0 + 1560) = 0;
  v80 = sub_226F505B8(&unk_283A94958);
  v81 = swift_allocObject();
  *(v81 + 16) = 32;
  *(v81 + 17) = 28;
  v82 = swift_allocObject();
  v82[2] = v80;
  v82[3] = sub_2273B668C;
  v82[4] = v81;
  *(v0 + 1568) = 488643616;
  *(v0 + 1576) = sub_2273B66F8;
  *(v0 + 1584) = v82;
  v83 = sub_226F505B8(&unk_283A94980);
  v84 = swift_allocObject();
  v84[2] = v83;
  v84[3] = sub_2273B0FFC;
  v84[4] = 0;
  *(v0 + 1592) = 505421088;
  *(v0 + 1600) = sub_2273B66E0;
  *(v0 + 1608) = v84;
  v85 = sub_226F505B8(&unk_283A949A8);
  v86 = swift_allocObject();
  v86[2] = v85;
  v86[3] = sub_2273B1028;
  v86[4] = 0;
  *(v0 + 1616) = 522198560;
  *(v0 + 1624) = sub_2273B66E0;
  *(v0 + 1632) = v86;
  *(v0 + 1640) = 522264352;
  *(v0 + 1648) = nullsub_1;
  *(v0 + 1656) = 0;
  v87 = sub_226F505B8(&unk_283A949D0);
  v88 = swift_allocObject();
  v88[2] = v87;
  v88[3] = sub_2273B1028;
  v88[4] = 0;
  *(v0 + 1664) = 522264097;
  *(v0 + 1672) = sub_2273B66E0;
  *(v0 + 1680) = v88;
  *(v0 + 1688) = 522329889;
  *(v0 + 1696) = nullsub_1;
  *(v0 + 1704) = 0;
  v89 = sub_226F505B8(&unk_283A949F8);
  v90 = swift_allocObject();
  *(v90 + 16) = 34;
  *(v90 + 17) = 31;
  v91 = swift_allocObject();
  v91[2] = v89;
  v91[3] = sub_2273B668C;
  v91[4] = v90;
  *(v0 + 1712) = 539107106;
  *(v0 + 1720) = sub_2273B66F8;
  *(v0 + 1728) = v91;
  *(v0 + 1736) = 539172898;
  *(v0 + 1744) = nullsub_1;
  *(v0 + 1752) = 0;
  *(v0 + 1760) = 539238435;
  *(v0 + 1768) = nullsub_1;
  *(v0 + 1776) = 0;
  *(v0 + 1784) = 539303972;
  *(v0 + 1792) = nullsub_1;
  *(v0 + 1800) = 0;
  v92 = sub_226F505B8(&unk_283A94A20);
  v93 = swift_allocObject();
  v93[2] = v92;
  v93[3] = sub_2273B2570;
  v93[4] = 0;
  *(v0 + 1808) = 556081189;
  *(v0 + 1816) = sub_2273B66E0;
  *(v0 + 1824) = v93;
  v94 = sub_226F505B8(&unk_283A94A48);
  v95 = swift_allocObject();
  *(v95 + 16) = 37;
  *(v95 + 17) = 33;
  v96 = swift_allocObject();
  v96[2] = v94;
  v96[3] = sub_2273B668C;
  v96[4] = v95;
  *(v0 + 1832) = 572858661;
  *(v0 + 1840) = sub_2273B66F8;
  *(v0 + 1848) = v96;
  *(v0 + 1856) = 572924453;
  *(v0 + 1864) = nullsub_1;
  *(v0 + 1872) = 0;
  *(v0 + 1880) = 572989990;
  *(v0 + 1888) = nullsub_1;
  *(v0 + 1896) = 0;
  v97 = sub_226F505B8(&unk_283A94A70);
  v98 = swift_allocObject();
  *(v98 + 16) = 39;
  *(v98 + 17) = 34;
  v99 = swift_allocObject();
  v99[2] = v97;
  v99[3] = sub_2273B668C;
  v99[4] = v98;
  *(v0 + 1904) = 589767207;
  *(v0 + 1912) = sub_2273B66F8;
  *(v0 + 1920) = v99;
  *(v0 + 1928) = 589832999;
  *(v0 + 1936) = nullsub_1;
  *(v0 + 1944) = 0;
  *(v0 + 1952) = 589898536;
  *(v0 + 1960) = nullsub_1;
  *(v0 + 1968) = 0;
  *(v0 + 1976) = 589964073;
  *(v0 + 1984) = nullsub_1;
  *(v0 + 1992) = 0;
  v100 = sub_226F505B8(&unk_283A94A98);
  v101 = swift_allocObject();
  *(v101 + 16) = 42;
  *(v101 + 17) = 35;
  v102 = swift_allocObject();
  v102[2] = v100;
  v102[3] = sub_2273B668C;
  v102[4] = v101;
  *(v0 + 2000) = 606741290;
  *(v0 + 2008) = sub_2273B66F8;
  *(v0 + 2016) = v102;
  *(v0 + 2024) = 606807082;
  *(v0 + 2032) = nullsub_1;
  *(v0 + 2040) = 0;
  *(v0 + 2048) = 606872619;
  *(v0 + 2056) = nullsub_1;
  *(v0 + 2064) = 0;
  *(v0 + 2072) = 606938156;
  *(v0 + 2080) = nullsub_1;
  *(v0 + 2088) = 0;
  v103 = sub_226F505B8(&unk_283A94AC0);
  v104 = swift_allocObject();
  v104[2] = v103;
  v104[3] = sub_2273B25C0;
  v104[4] = 0;
  *(v0 + 2096) = 623715373;
  *(v0 + 2104) = sub_2273B66E0;
  *(v0 + 2112) = v104;
  *(v0 + 2120) = 624043309;
  *(v0 + 2128) = nullsub_1;
  *(v0 + 2136) = 0;
  *(v0 + 2144) = 624043310;
  *(v0 + 2152) = nullsub_1;
  *(v0 + 2160) = 0;
  *(v0 + 2168) = 624043311;
  *(v0 + 2176) = nullsub_1;
  *(v0 + 2184) = 0;
  *(v0 + 2192) = 624043312;
  *(v0 + 2200) = nullsub_1;
  *(v0 + 2208) = 0;
  *(v0 + 2216) = 624043313;
  *(v0 + 2224) = nullsub_1;
  *(v0 + 2232) = 0;
  v105 = sub_226F505B8(&unk_283A94AE8);
  v106 = swift_allocObject();
  *(v106 + 16) = 50;
  *(v106 + 17) = 37;
  v107 = swift_allocObject();
  v107[2] = v105;
  v107[3] = sub_2273B668C;
  v107[4] = v106;
  *(v0 + 2240) = 640820530;
  *(v0 + 2248) = sub_2273B66F8;
  *(v0 + 2256) = v107;
  v108 = sub_226F505B8(&unk_283A94B10);
  v109 = swift_allocObject();
  v109[2] = v108;
  v109[3] = sub_2273B66C8;
  v109[4] = 0;
  *(v0 + 2264) = 657598002;
  *(v0 + 2272) = sub_2273B66E0;
  *(v0 + 2280) = v109;
  *(v0 + 2288) = 657663794;
  *(v0 + 2296) = nullsub_1;
  *(v0 + 2304) = 0;
  *(v0 + 2312) = 657729331;
  *(v0 + 2320) = nullsub_1;
  *(v0 + 2328) = 0;
  v110 = sub_226F505B8(&unk_283A94B38);
  v111 = swift_allocObject();
  v111[2] = v110;
  v111[3] = sub_2273B2610;
  v111[4] = 0;
  *(v0 + 2336) = 674506548;
  *(v0 + 2344) = sub_2273B66F8;
  *(v0 + 2352) = v111;
  v112 = sub_226F505B8(&unk_283A94B60);
  v113 = swift_allocObject();
  v113[2] = v112;
  v113[3] = sub_2273B2A2C;
  v113[4] = 0;
  *(v0 + 2360) = 691284020;
  *(v0 + 2368) = sub_2273B66E0;
  *(v0 + 2376) = v113;
  *(v0 + 2384) = 691349812;
  *(v0 + 2392) = nullsub_1;
  *(v0 + 2400) = 0;
  *(v0 + 2408) = 691415349;
  *(v0 + 2416) = nullsub_1;
  *(v0 + 2424) = 0;
  v114 = sub_226F505B8(&unk_283A94B88);
  v115 = swift_allocObject();
  *(v115 + 16) = 54;
  *(v115 + 17) = 41;
  v116 = swift_allocObject();
  v116[2] = v114;
  v116[3] = sub_2273B668C;
  v116[4] = v115;
  *(v0 + 2432) = 708192566;
  *(v0 + 2440) = sub_2273B66F8;
  *(v0 + 2448) = v116;
  *(v0 + 2456) = 708258358;
  *(v0 + 2464) = nullsub_1;
  *(v0 + 2472) = 0;
  *(v0 + 2480) = 708323895;
  *(v0 + 2488) = nullsub_1;
  *(v0 + 2496) = 0;
  v117 = sub_226F505B8(&unk_283A94BB0);
  v118 = swift_allocObject();
  v118[2] = v117;
  v118[3] = sub_2273B2BC0;
  v118[4] = 0;
  *(v0 + 2504) = 725101112;
  *(v0 + 2512) = sub_2273B66F8;
  *(v0 + 2520) = v118;
  *(v0 + 2528) = 725166904;
  *(v0 + 2536) = nullsub_1;
  *(v0 + 2544) = 0;
  *(v0 + 2552) = 725232441;
  *(v0 + 2560) = nullsub_1;
  *(v0 + 2568) = 0;
  v119 = sub_226F505B8(&unk_283A94BD8);
  v120 = swift_allocObject();
  v120[2] = v119;
  v120[3] = sub_2273B4408;
  v120[4] = 0;
  *(v0 + 2576) = 742009658;
  *(v0 + 2584) = sub_2273B66F8;
  *(v0 + 2592) = v120;
  v121 = sub_226F505B8(&unk_283A94C00);
  v122 = swift_allocObject();
  *(v122 + 16) = 58;
  *(v122 + 17) = 44;
  v123 = swift_allocObject();
  v123[2] = v121;
  v123[3] = sub_2273B668C;
  v123[4] = v122;
  *(v0 + 2600) = 758787130;
  *(v0 + 2608) = sub_2273B66F8;
  *(v0 + 2616) = v123;
  *(v0 + 2624) = 758852922;
  *(v0 + 2632) = nullsub_1;
  *(v0 + 2640) = 0;
  v124 = sub_226F505B8(&unk_283A94C28);
  v125 = swift_allocObject();
  *(v125 + 16) = 59;
  *(v125 + 17) = 45;
  v126 = swift_allocObject();
  v126[2] = v124;
  v126[3] = sub_2273B668C;
  v126[4] = v125;
  *(v0 + 2648) = 775630139;
  *(v0 + 2656) = sub_2273B66F8;
  *(v0 + 2664) = v126;
  *(v0 + 2672) = 775695931;
  *(v0 + 2680) = nullsub_1;
  *(v0 + 2688) = 0;
  v127 = sub_226F505B8(&unk_283A94C50);
  v128 = swift_allocObject();
  v128[2] = v127;
  v128[3] = sub_2273B4648;
  v128[4] = 0;
  *(v0 + 2696) = 792473148;
  *(v0 + 2704) = sub_2273B66E0;
  *(v0 + 2712) = v128;
  *(v0 + 2720) = 792538940;
  *(v0 + 2728) = nullsub_1;
  *(v0 + 2736) = 0;
  v129 = sub_226F505B8(&unk_283A94C78);
  v130 = swift_allocObject();
  *(v130 + 16) = 61;
  *(v130 + 17) = 47;
  v131 = swift_allocObject();
  v131[2] = v129;
  v131[3] = sub_2273B668C;
  v131[4] = v130;
  *(v0 + 2744) = 809316157;
  *(v0 + 2752) = sub_2273B66F8;
  *(v0 + 2760) = v131;
  *(v0 + 2768) = 809381949;
  *(v0 + 2776) = nullsub_1;
  *(v0 + 2784) = 0;
  v132 = sub_226F505B8(&unk_283A94CA0);
  v133 = swift_allocObject();
  v133[2] = v132;
  v133[3] = sub_2273B487C;
  v133[4] = 0;
  *(v0 + 2792) = 826159166;
  *(v0 + 2800) = sub_2273B66F8;
  *(v0 + 2808) = v133;
  *(v0 + 2816) = 826224958;
  *(v0 + 2824) = nullsub_1;
  *(v0 + 2832) = 0;
  *(v0 + 2840) = 826290495;
  *(v0 + 2848) = nullsub_1;
  *(v0 + 2856) = 0;
  *(v0 + 2864) = 826356032;
  *(v0 + 2872) = nullsub_1;
  *(v0 + 2880) = 0;
  *(v0 + 2888) = 826421569;
  *(v0 + 2896) = nullsub_1;
  *(v0 + 2904) = 0;
  *(v0 + 2912) = 826487106;
  *(v0 + 2920) = nullsub_1;
  *(v0 + 2928) = 0;
  v134 = sub_226F505B8(&unk_283A94CC8);
  v135 = swift_allocObject();
  *(v135 + 16) = 67;
  *(v135 + 17) = 49;
  v136 = swift_allocObject();
  v136[2] = v134;
  v136[3] = sub_2273B668C;
  v136[4] = v135;
  *(v0 + 2936) = 843264323;
  *(v0 + 2944) = sub_2273B66F8;
  *(v0 + 2952) = v136;
  v137 = sub_226F505B8(&unk_283A94CF0);
  v138 = swift_allocObject();
  v138[2] = v137;
  v138[3] = sub_2273B66C8;
  v138[4] = 0;
  *(v0 + 2960) = 860041795;
  *(v0 + 2968) = sub_2273B66E0;
  *(v0 + 2976) = v138;
  *(v0 + 2984) = 860107587;
  *(v0 + 2992) = nullsub_1;
  *(v0 + 3000) = 0;
  v139 = sub_226F505B8(&unk_283A94D18);
  v140 = swift_allocObject();
  *(v140 + 16) = 68;
  *(v140 + 17) = 51;
  v141 = swift_allocObject();
  v141[2] = v139;
  v141[3] = sub_2273B668C;
  v141[4] = v140;
  *(v0 + 3008) = 876884804;
  *(v0 + 3016) = sub_2273B66F8;
  *(v0 + 3024) = v141;
  v142 = sub_226F505B8(&unk_283A94D40);
  v143 = swift_allocObject();
  v143[2] = v142;
  v143[3] = sub_2273B66C8;
  v143[4] = 0;
  *(v0 + 3032) = 893662276;
  *(v0 + 3040) = sub_2273B66E0;
  *(v0 + 3048) = v143;
  *(v0 + 3056) = 893728068;
  *(v0 + 3064) = nullsub_1;
  *(v0 + 3072) = 0;
  *(v0 + 3080) = 893793605;
  *(v0 + 3088) = nullsub_1;
  *(v0 + 3096) = 0;
  *(v0 + 3104) = 893859142;
  *(v0 + 3112) = nullsub_1;
  *(v0 + 3120) = 0;
  *(v0 + 3128) = 893924679;
  *(v0 + 3136) = nullsub_1;
  *(v0 + 3144) = 0;
  *(v0 + 3152) = 893990216;
  *(v0 + 3160) = nullsub_1;
  *(v0 + 3168) = 0;
  *(v0 + 3176) = 894055753;
  *(v0 + 3184) = nullsub_1;
  *(v0 + 3192) = 0;
  *(v0 + 3200) = 894121290;
  *(v0 + 3208) = nullsub_1;
  *(v0 + 3216) = 0;
  *(v0 + 3224) = 894186827;
  *(v0 + 3232) = nullsub_1;
  *(v0 + 3240) = 0;
  v144 = sub_226F505B8(&unk_283A94D68);
  v145 = swift_allocObject();
  v145[2] = v144;
  v145[3] = sub_2273B4CD8;
  v145[4] = 0;
  *(v0 + 3248) = 910964044;
  *(v0 + 3256) = sub_2273B66F8;
  *(v0 + 3264) = v145;
  *(v0 + 3272) = 911029836;
  *(v0 + 3280) = nullsub_1;
  *(v0 + 3288) = 0;
  *(v0 + 3296) = 911095373;
  *(v0 + 3304) = nullsub_1;
  *(v0 + 3312) = 0;
  *(v0 + 3320) = 911160910;
  *(v0 + 3328) = nullsub_1;
  *(v0 + 3336) = 0;
  *(v0 + 3344) = 911226447;
  *(v0 + 3352) = nullsub_1;
  *(v0 + 3360) = 0;
  *(v0 + 3368) = 911291984;
  *(v0 + 3376) = nullsub_1;
  *(v0 + 3384) = 0;
  *(v0 + 3392) = 911357521;
  *(v0 + 3400) = nullsub_1;
  *(v0 + 3408) = 0;
  v146 = sub_226F505B8(&unk_283A94D90);
  v147 = swift_allocObject();
  v147[2] = v146;
  v147[3] = sub_2273B509C;
  v147[4] = 0;
  *&result = 928134738;
  *(v0 + 3416) = 928134738;
  *(v0 + 3424) = sub_2273B66E0;
  *(v0 + 3432) = v147;
  qword_27D7CE358 = v0;
  return result;
}

uint64_t sub_2273AE684(void *a1)
{
  v1 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8480, &qword_22767A4E0);
  v6 = swift_allocObject();
  v7 = v2;
  v8 = v3;

  sub_22766A070();
  *(v6 + 16) = v7;
  *(v6 + 24) = v8;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  sub_2273AAEB8(sub_2273AE818, 0, sub_2273AE824, 0);
  swift_setDeallocating();

  v9 = qword_2813B2078;
  v10 = sub_22766A100();
  (*(*(v10 - 8) + 8))(v6 + v9, v10);
  return swift_deallocClassInstance();
}

id sub_2273AE824(void *a1, void *a2)
{
  v39 = a2;
  v40 = a1;
  v2 = sub_227662750();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF28, &qword_2276823E8);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v37 - v16;
  v18 = [v40 timestamp];
  if (v18)
  {
    v19 = v18;
    sub_227662710();

    v20 = v3[7];
    v20(v17, 0, 1, v2);
  }

  else
  {
    v20 = v3[7];
    v20(v17, 1, 1, v2);
  }

  v21 = [v39 timestamp];
  if (v21)
  {
    v22 = v21;
    sub_227662710();

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v20(v13, v23, 1, v2);
  v24 = *(v8 + 48);
  sub_226E95D18(v17, v10, &qword_27D7B9690, qword_227670B50);
  sub_226E95D18(v13, &v10[v24], &qword_27D7B9690, qword_227670B50);
  v25 = v3[6];
  v26 = v25(v10, 1, v2);
  v27 = v25(&v10[v24], 1, v2);
  if (v26 != 1)
  {
    if (v27 != 1)
    {
      v32 = v3[4];
      v32(v7, v10, v2);
      v33 = &v10[v24];
      v34 = v38;
      v32(v38, v33, v2);
      v35 = sub_2276626B0();
      v36 = v3[1];
      v36(v34, v2);
      v36(v7, v2);
      v28 = v40;
      if ((v35 & 1) == 0)
      {
        v28 = v39;
      }

      goto LABEL_16;
    }

    v29 = v3[1];
    v30 = v40;
    v29(v10, v2);
    return v30;
  }

  if (v27 != 1)
  {
    v30 = v39;
    sub_226E97D1C(&v10[v24], &qword_27D7B9690, qword_227670B50);
    return v30;
  }

  v28 = v40;
LABEL_16:

  return v28;
}

void sub_2273AEC1C(void *a1)
{
  v2 = a1[3];
  v57 = a1;
  v3 = __swift_project_boxed_opaque_existential_0(a1, v2);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8598, &unk_227677B90);
  v8 = swift_allocObject();
  v9 = v4;
  v10 = v5;

  sub_22766A070();
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;
  swift_getKeyPath();
  v11 = sub_227665FE0();
  v13 = v12;
  v56[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v56[0] = v11;
  v56[1] = v13;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v14 = sub_22766C820();
  sub_226E93170(v56, v54, &unk_27D7BC990, &qword_227670A30);
  v15 = v55;
  if (v55)
  {
    v16 = __swift_project_boxed_opaque_existential_0(v54, v55);
    v17 = *(v15 - 8);
    v18 = MEMORY[0x28223BE20](v16);
    v20 = v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v20, v18);
    v21 = sub_22766D170();
    (*(v17 + 8))(v20, v15);
    __swift_destroy_boxed_opaque_existential_0(v54);
  }

  else
  {
    v21 = 0;
  }

  v22 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v23 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85A0 &qword_22767FF20))];

  sub_226E97D1C(v56, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v24 = v23;
  v25 = sub_22766A080();
  v27 = v26;
  MEMORY[0x22AA985C0]();
  if (*((*v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v25(v56, 0);
  swift_endAccess();

  KeyPath = swift_getKeyPath();
  sub_2273FC724(KeyPath);
  if (v1)
  {

    swift_setDeallocating();

    v30 = qword_2813B2078;
    v31 = sub_22766A100();
    (*(*(v31 - 8) + 8))(v8 + v30, v31);
    swift_deallocClassInstance();
  }

  else
  {
    v53 = sub_226F3E6A8(v29);

    swift_setDeallocating();

    v32 = qword_2813B2078;
    v33 = sub_22766A100();
    v34 = *(v33 - 8);
    v35 = *(v34 + 8);
    v51[1] = v34 + 8;
    v52 = v35;
    v35(v8 + v32, v33);
    swift_deallocClassInstance();
    v36 = __swift_project_boxed_opaque_existential_0(v57, v57[3]);
    v37 = *v36;
    v38 = v36[1];
    v39 = *(v36 + 16);
    v40 = v36[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA080, &qword_227677700);
    v41 = swift_allocObject();
    v42 = v37;
    v43 = v38;

    sub_22766A070();
    *(v41 + 16) = v42;
    *(v41 + 24) = v43;
    *(v41 + 32) = v39;
    *(v41 + 40) = v40;
    v44 = swift_getKeyPath();
    sub_2273FCA6C(v44);
    v46 = sub_226F3E6A8(v45);

    swift_setDeallocating();

    v52(v41 + qword_2813B2078, v33);
    swift_deallocClassInstance();
    if (*(v46 + 16) <= *(v53 + 16) >> 3)
    {
      v56[0] = v53;
      sub_22700604C(v46);

      v47 = v56[0];
    }

    else
    {
      v47 = sub_22700776C(v46, v53);
    }

    v48 = v57;
    v49 = sub_2273AA834(v47);

    v50 = __swift_project_boxed_opaque_existential_0(v48, v48[3]);
    sub_22756D164(v49, v50[1], *(v50 + 16), v50[3]);
  }
}

void sub_2273AF320()
{
  v1 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v2 = sub_22766BFD0();
  v3 = [v1 initWithEntityName_];

  type metadata accessor for ManagedBookmark();
  v4 = sub_22766C9E0();
  if (v0)
  {
  }

  else
  {
    v5 = v4;
    v15 = v3;
    if (v4 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22766CD20())
    {
      v7 = 0;
      v18 = v5 & 0xC000000000000001;
      while (1)
      {
        if (v18)
        {
          v8 = MEMORY[0x22AA991A0](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v11 = sub_22766BFD0();
        v12 = [v9 valueForKey_];

        if (v12)
        {
          sub_22766CC20();
          swift_unknownObjectRelease();
          sub_226F04970(&v16, v17);
          sub_226E97D1C(v17, &unk_27D7BC990, &qword_227670A30);
          sub_227664C10();
          v13 = sub_22766BFD0();

          v14 = sub_22766BFD0();
          [v9 setValue:v13 forKey:v14];
        }

        else
        {

          memset(v17, 0, sizeof(v17));
          sub_226E97D1C(v17, &unk_27D7BC990, &qword_227670A30);
        }

        ++v7;
        if (v10 == i)
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
  }
}

void sub_2273AF5F8(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, void *), uint64_t (*a5)(void))
{
  v9 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[3];
  v13 = *(v9 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v14 = swift_allocObject();
  v15 = v10;
  v16 = v11;

  sub_22766A070();
  *(v14 + 16) = v15;
  *(v14 + 24) = v16;
  *(v14 + 32) = v13;
  *(v14 + 40) = v12;
  v17 = qword_2813B2078;
  swift_beginAccess();
  v18 = a4(v14 + v17, v13, v12);
  if (v18)
  {
    if (v18 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_5;
  }

  v19 = a5();
  if (v5)
  {
LABEL_5:

    return;
  }

  v20 = v19;
  [v19 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v21 = sub_22766C9E0();
  v22 = sub_226EDAB24(v21);

  sub_226EDAB78(v22, v16);
}

void sub_2273AF7D0()
{
  v1 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v2 = sub_22766BFD0();
  v3 = [v1 initWithEntityName_];

  type metadata accessor for ManagedHealthKitMindfulSession();
  v4 = sub_22766C9E0();
  if (!v0)
  {
    v5 = v4;
    if (v4 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22766CD20())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x22AA991A0](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v11 = v8;
        sub_2273AF94C(&v11);

        ++v7;
        if (v10 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
  }
}

void sub_2273AF94C(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = sub_227662750();
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v14 = *a1;
  v15 = sub_22766BFD0();
  v16 = [v14 valueForKey_];

  if (v16)
  {
    sub_22766CC20();
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v28[0] = v26;
  v28[1] = v27;
  if (!*(&v27 + 1))
  {
    sub_226E97D1C(v28, &unk_27D7BC990, &qword_227670A30);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v20 = sub_227664DD0();
    sub_2273B65DC(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D50FE0], v20);
    swift_willThrow();
    return;
  }

  v17 = [v14 startDate];
  if (v17)
  {
    v18 = v17;
    sub_227662710();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v22 = v25;
  (*(v25 + 56))(v4, v19, 1, v8);
  sub_226E95D18(v4, v7, &qword_27D7B9690, qword_227670B50);
  if ((*(v22 + 48))(v7, 1, v8))
  {
    sub_226E97D1C(v7, &qword_27D7B9690, qword_227670B50);
    v23 = 0;
  }

  else
  {
    (*(v22 + 16))(v10, v7, v8);
    sub_226E97D1C(v7, &qword_27D7B9690, qword_227670B50);
    sub_227662690();
    v24 = *(v22 + 8);
    v24(v10, v8);
    v23 = sub_2276626A0();
    v24(v13, v8);
  }

  [v14 setEndDate_];
}

void sub_2273AFD5C(void *a1)
{
  sub_2276693D0();
  v3 = sub_227669410();
  if (v3 == sub_227669410())
  {
    v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[3];
    v8 = *(v4 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9190, qword_227673CB0);
    v9 = swift_allocObject();
    v10 = v5;
    v11 = v6;

    sub_22766A070();
    *(v9 + 16) = v10;
    *(v9 + 24) = v11;
    *(v9 + 32) = v8;
    *(v9 + 40) = v7;
    v12 = qword_2813B2078;
    swift_beginAccess();
    v13 = sub_227542F30(v9 + v12, v8, v7);
    if (v13)
    {
      if (v13 != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v124 = sub_226EC6320(0);
      if (v1)
      {
        goto LABEL_61;
      }

      v125 = v124;
      [v124 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v126 = sub_22766C9E0();
      v127 = sub_226EDAB24(v126);

      sub_226EDAB78(v127, v11);
    }

    v14 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[3];
    v18 = *(v14 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
    v19 = swift_allocObject();
    v20 = v15;
    v21 = v16;

    sub_22766A070();
    *(v19 + 16) = v20;
    *(v19 + 24) = v21;
    *(v19 + 32) = v18;
    *(v19 + 40) = v17;
    v22 = qword_2813B2078;
    swift_beginAccess();
    v23 = sub_227542468(v19 + v22, v18, v17);
    if (v23)
    {
      if (v23 != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v128 = sub_227284664(0);
      if (v1)
      {
        goto LABEL_61;
      }

      v129 = v128;
      [v128 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v130 = sub_22766C9E0();
      v131 = sub_226EDAB24(v130);

      sub_226EDAB78(v131, v21);
    }

    v24 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v25 = *v24;
    v26 = v24[1];
    v27 = v24[3];
    v28 = *(v24 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB40, &qword_2276802B0);
    v29 = swift_allocObject();
    v30 = v25;
    v31 = v26;

    sub_22766A070();
    *(v29 + 16) = v30;
    *(v29 + 24) = v31;
    *(v29 + 32) = v28;
    *(v29 + 40) = v27;
    v32 = qword_2813B2078;
    swift_beginAccess();
    v33 = sub_227543290(v29 + v32, v28, v27);
    if (v33)
    {
      if (v33 != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v132 = sub_22728494C(0);
      if (v1)
      {
        goto LABEL_61;
      }

      v133 = v132;
      [v132 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v134 = sub_22766C9E0();
      v135 = sub_226EDAB24(v134);

      sub_226EDAB78(v135, v31);
    }

    v34 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v35 = *v34;
    v36 = v34[1];
    v37 = v34[3];
    v38 = *(v34 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC380, &qword_22767D680);
    v39 = swift_allocObject();
    v40 = v35;
    v41 = v36;

    sub_22766A070();
    *(v39 + 16) = v40;
    *(v39 + 24) = v41;
    *(v39 + 32) = v38;
    *(v39 + 40) = v37;
    v42 = qword_2813B2078;
    swift_beginAccess();
    v43 = sub_227543488(v39 + v42, v38, v37);
    if (v43)
    {
      if (v43 != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v136 = sub_227284A24(0);
      if (v1)
      {
        goto LABEL_61;
      }

      v137 = v136;
      [v136 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v138 = sub_22766C9E0();
      v139 = sub_226EDAB24(v138);

      sub_226EDAB78(v139, v41);
    }

    v44 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v45 = *v44;
    v46 = v44[1];
    v47 = v44[3];
    v48 = *(v44 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C78, &unk_227671C70);
    v49 = swift_allocObject();
    v50 = v45;
    v51 = v46;

    sub_22766A070();
    *(v49 + 16) = v50;
    *(v49 + 24) = v51;
    *(v49 + 32) = v48;
    *(v49 + 40) = v47;
    v52 = qword_2813B2078;
    swift_beginAccess();
    v53 = sub_227542660(v49 + v52, v48, v47);
    if (v53)
    {
      if (v53 != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v140 = sub_2272846F4(0);
      if (v1)
      {
        goto LABEL_61;
      }

      v141 = v140;
      [v140 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v142 = sub_22766C9E0();
      v143 = sub_226EDAB24(v142);

      sub_226EDAB78(v143, v51);
    }

    v54 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v55 = *v54;
    v56 = v54[1];
    v57 = v54[3];
    v58 = *(v54 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9ED0, qword_227676A40);
    v59 = swift_allocObject();
    v60 = v55;
    v61 = v56;

    sub_22766A070();
    *(v59 + 16) = v60;
    *(v59 + 24) = v61;
    *(v59 + 32) = v58;
    *(v59 + 40) = v57;
    v62 = qword_2813B2078;
    swift_beginAccess();
    v63 = sub_227543050(v59 + v62, v58, v57);
    if (v63)
    {
      if (v63 != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v144 = sub_227284814(0);
      if (v1)
      {
        goto LABEL_61;
      }

      v145 = v144;
      [v144 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v146 = sub_22766C9E0();
      v147 = sub_226EDAB24(v146);

      sub_226EDAB78(v147, v61);
    }

    v64 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v65 = *v64;
    v66 = v64[1];
    v67 = v64[3];
    v68 = *(v64 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9EF0, qword_227676AD8);
    v69 = swift_allocObject();
    v70 = v65;
    v71 = v66;

    sub_22766A070();
    *(v69 + 16) = v70;
    *(v69 + 24) = v71;
    *(v69 + 32) = v68;
    *(v69 + 40) = v67;
    v72 = qword_2813B2078;
    swift_beginAccess();
    v73 = sub_227543440(v69 + v72, v68, v67);
    if (v73)
    {
      if (v73 != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v148 = sub_227284A0C(0);
      if (v1)
      {
        goto LABEL_61;
      }

      v149 = v148;
      [v148 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v150 = sub_22766C9E0();
      v151 = sub_226EDAB24(v150);

      sub_226EDAB78(v151, v71);
    }

    v74 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v75 = *v74;
    v76 = v74[1];
    v77 = v74[3];
    v78 = *(v74 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC370, &qword_22767D648);
    v79 = swift_allocObject();
    v80 = v75;
    v81 = v76;

    sub_22766A070();
    *(v79 + 16) = v80;
    *(v79 + 24) = v81;
    *(v79 + 32) = v78;
    *(v79 + 40) = v77;
    v82 = qword_2813B2078;
    swift_beginAccess();
    v83 = sub_2275433F8(v79 + v82, v78, v77);
    if (v83)
    {
      if (v83 != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v152 = sub_2272849F4(0);
      if (v1)
      {
        goto LABEL_61;
      }

      v153 = v152;
      [v152 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v154 = sub_22766C9E0();
      v155 = sub_226EDAB24(v154);

      sub_226EDAB78(v155, v81);
    }

    v84 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v85 = *v84;
    v86 = v84[1];
    v87 = v84[3];
    v88 = *(v84 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCEA0, &qword_227681E30);
    v89 = swift_allocObject();
    v90 = v85;
    v91 = v86;

    sub_22766A070();
    *(v89 + 16) = v90;
    *(v89 + 24) = v91;
    *(v89 + 32) = v88;
    *(v89 + 40) = v87;
    v92 = qword_2813B2078;
    swift_beginAccess();
    v93 = sub_2275433B0(v89 + v92, v88, v87);
    if (!v93)
    {
      v156 = sub_2272849DC(0);
      if (v1)
      {
        goto LABEL_61;
      }

      v157 = v156;
      [v156 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v158 = sub_22766C9E0();
      v159 = sub_226EDAB24(v158);

      sub_226EDAB78(v159, v91);

      goto LABEL_29;
    }

    if (v93 == 1)
    {

LABEL_29:
      v94 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
      v95 = *v94;
      v96 = v94[1];
      v97 = v94[3];
      v98 = *(v94 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC360, qword_22767D5F8);
      v99 = swift_allocObject();
      v100 = v95;
      v101 = v96;

      sub_22766A070();
      *(v99 + 16) = v100;
      *(v99 + 24) = v101;
      *(v99 + 32) = v98;
      *(v99 + 40) = v97;
      v102 = qword_2813B2078;
      swift_beginAccess();
      v103 = sub_227543368(v99 + v102, v98, v97);
      if (v103)
      {
        if (v103 != 1)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v160 = sub_2272849C4(0);
        if (v1)
        {
          goto LABEL_61;
        }

        v161 = v160;
        [v160 setResultType_];
        sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
        v162 = sub_22766C9E0();
        v163 = sub_226EDAB24(v162);

        sub_226EDAB78(v163, v101);
      }

      v104 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
      v105 = *v104;
      v106 = v104[1];
      v107 = v104[3];
      v108 = *(v104 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F28, &qword_227676BC8);
      v109 = swift_allocObject();
      v110 = v105;
      v111 = v106;

      sub_22766A070();
      *(v109 + 16) = v110;
      *(v109 + 24) = v111;
      *(v109 + 32) = v108;
      *(v109 + 40) = v107;
      v112 = qword_2813B2078;
      swift_beginAccess();
      v113 = sub_227543320(v109 + v112, v108, v107);
      if (v113)
      {
        if (v113 == 1)
        {

          goto LABEL_35;
        }

LABEL_57:
        swift_willThrow();

        return;
      }

      v164 = sub_2272849AC(0);
      if (!v1)
      {
        v166 = v164;
        [v164 setResultType_];
        sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
        v167 = sub_22766C9E0();
        v170 = sub_226EDAB24(v167);

        sub_226EDAB78(v170, v111);

LABEL_35:
        v114 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
        v115 = *v114;
        v116 = v114[1];
        v117 = v114[3];
        v118 = *(v114 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F10, &qword_227676B70);
        v119 = swift_allocObject();
        v120 = v115;
        v121 = v116;

        sub_22766A070();
        *(v119 + 16) = v120;
        *(v119 + 24) = v121;
        *(v119 + 32) = v118;
        *(v119 + 40) = v117;
        v122 = qword_2813B2078;
        swift_beginAccess();
        v123 = sub_227543008(v119 + v122, v118, v117);
        if (v123)
        {
          if (v123 != 1)
          {
            goto LABEL_57;
          }
        }

        else
        {
          v165 = sub_227248AE8(0);
          if (!v1)
          {
            v168 = v165;
            [v165 setResultType_];
            sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
            v169 = sub_22766C9E0();
            v171 = sub_226EDAB24(v169);

            sub_226EDAB78(v171, v121);

            return;
          }
        }
      }

LABEL_61:

      return;
    }

LABEL_38:
    swift_willThrow();
    goto LABEL_61;
  }
}

uint64_t sub_2273B0E68(void *a1)
{
  v1 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F28, &qword_227676BC8);
  v6 = swift_allocObject();
  v7 = v2;
  v8 = v3;

  sub_22766A070();
  *(v6 + 16) = v7;
  *(v6 + 24) = v8;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  sub_2273AB108(sub_2273B66C0, 0, j_j__objc_retain, 0);
  swift_setDeallocating();

  v9 = qword_2813B2078;
  v10 = sub_22766A100();
  (*(*(v10 - 8) + 8))(v6 + v9, v10);
  return swift_deallocClassInstance();
}

uint64_t sub_2273B1028(void *a1)
{
  v1 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C88, &qword_227671C80);
  v6 = swift_allocObject();
  v7 = v2;
  v8 = v3;

  sub_22766A070();
  *(v6 + 16) = v7;
  *(v6 + 24) = v8;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  sub_2273AB5A8(sub_2273B66C0, 0, j_j__objc_retain, 0);
  swift_setDeallocating();

  v9 = qword_2813B2078;
  v10 = sub_22766A100();
  (*(*(v10 - 8) + 8))(v6 + v9, v10);
  return swift_deallocClassInstance();
}

void sub_2273B11BC(void *a1, void *(*a2)(_OWORD *__return_ptr))
{
  v3 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v7 = *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0F8, &qword_22767C9F0);
  v8 = swift_allocObject();
  v9 = v4;
  v10 = v5;

  sub_22766A070();
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  v11 = qword_2813B2078;
  swift_beginAccess();
  v12 = sub_227543890(v8 + v11, v7, v6);
  if (v12)
  {
    if (v12 != 1)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v143 = sub_227251C30(0);
    if (v196)
    {
      goto LABEL_67;
    }

    v144 = v143;
    [v143 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v196 = 0;
    v145 = sub_22766C9E0();
    v146 = sub_226EDAB24(v145);

    sub_226EDAB78(v146, v10);
  }

  v13 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v14 = *v13;
  v15 = v13[1];
  v16 = v13[3];
  v17 = *(v13 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD1C0, &qword_227684078);
  v18 = swift_allocObject();
  v19 = v14;
  v20 = v15;

  sub_22766A070();
  *(v18 + 16) = v19;
  *(v18 + 24) = v20;
  *(v18 + 32) = v17;
  *(v18 + 40) = v16;
  v21 = qword_2813B2078;
  swift_beginAccess();
  v22 = sub_227543788(v18 + v21, v17, v16);
  if (v22)
  {
    if (v22 != 1)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v147 = sub_227251730(0);
    if (v196)
    {
      goto LABEL_67;
    }

    v148 = v147;
    [v147 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v196 = 0;
    v149 = sub_22766C9E0();
    v150 = sub_226EDAB24(v149);

    sub_226EDAB78(v150, v20);
  }

  v23 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v24 = *v23;
  v25 = v23[1];
  v26 = v23[3];
  v27 = *(v23 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD1C8, &qword_227684080);
  v28 = swift_allocObject();
  v29 = v24;
  v30 = v25;

  sub_22766A070();
  *(v28 + 16) = v29;
  *(v28 + 24) = v30;
  *(v28 + 32) = v27;
  *(v28 + 40) = v26;
  v31 = qword_2813B2078;
  swift_beginAccess();
  v32 = sub_227543760(v28 + v31, v27, v26);
  if (v32)
  {
    if (v32 != 1)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v151 = sub_227251230(0);
    if (v196)
    {
      goto LABEL_67;
    }

    v152 = v151;
    [v151 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v196 = 0;
    v153 = sub_22766C9E0();
    v154 = sub_226EDAB24(v153);

    sub_226EDAB78(v154, v30);
  }

  v33 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v34 = *v33;
  v35 = v33[1];
  v36 = v33[3];
  v37 = *(v33 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD1D0, &qword_227684088);
  v38 = swift_allocObject();
  v39 = v34;
  v40 = v35;

  sub_22766A070();
  *(v38 + 16) = v39;
  *(v38 + 24) = v40;
  *(v38 + 32) = v37;
  *(v38 + 40) = v36;
  v41 = qword_2813B2078;
  swift_beginAccess();
  v42 = sub_227543738(v38 + v41, v37, v36);
  if (v42)
  {
    if (v42 != 1)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v155 = sub_227250D30(0);
    if (v196)
    {
      goto LABEL_67;
    }

    v156 = v155;
    [v155 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v196 = 0;
    v157 = sub_22766C9E0();
    v158 = sub_226EDAB24(v157);

    sub_226EDAB78(v158, v40);
  }

  v43 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v44 = *v43;
  v45 = v43[1];
  v46 = v43[3];
  v47 = *(v43 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD1D8, &qword_227684090);
  v48 = swift_allocObject();
  v49 = v44;
  v50 = v45;

  sub_22766A070();
  *(v48 + 16) = v49;
  *(v48 + 24) = v50;
  *(v48 + 32) = v47;
  *(v48 + 40) = v46;
  v51 = qword_2813B2078;
  swift_beginAccess();
  v52 = sub_2275436F0(v48 + v51, v47, v46);
  if (v52)
  {
    if (v52 != 1)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v159 = sub_227250830(0);
    if (v196)
    {
      goto LABEL_67;
    }

    v160 = v159;
    [v159 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v196 = 0;
    v161 = sub_22766C9E0();
    v162 = sub_226EDAB24(v161);

    sub_226EDAB78(v162, v50);
  }

  v53 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v54 = *v53;
  v55 = v53[1];
  v56 = v53[3];
  v57 = *(v53 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC7F0, &unk_22767F090);
  v58 = swift_allocObject();
  v59 = v54;
  v60 = v55;

  sub_22766A070();
  *(v58 + 16) = v59;
  *(v58 + 24) = v60;
  *(v58 + 32) = v57;
  *(v58 + 40) = v56;
  v61 = qword_2813B2078;
  swift_beginAccess();
  v62 = sub_2275436A8(v58 + v61, v57, v56);
  if (v62)
  {
    if (v62 != 1)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v163 = sub_227284A3C(0);
    if (v196)
    {
      goto LABEL_67;
    }

    v164 = v163;
    [v163 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v196 = 0;
    v165 = sub_22766C9E0();
    v166 = sub_226EDAB24(v165);

    sub_226EDAB78(v166, v60);
  }

  v63 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v64 = *v63;
  v65 = v63[1];
  v66 = v63[3];
  v67 = *(v63 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD1E0, &qword_227684098);
  v68 = swift_allocObject();
  v69 = v64;
  v70 = v65;

  sub_22766A070();
  *(v68 + 16) = v69;
  *(v68 + 24) = v70;
  *(v68 + 32) = v67;
  *(v68 + 40) = v66;
  v71 = qword_2813B2078;
  swift_beginAccess();
  v72 = sub_227543680(v68 + v71, v67, v66);
  if (v72)
  {
    if (v72 != 1)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v167 = sub_22724FE30(0);
    if (v196)
    {
      goto LABEL_67;
    }

    v168 = v167;
    [v167 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v196 = 0;
    v169 = sub_22766C9E0();
    v170 = sub_226EDAB24(v169);

    sub_226EDAB78(v170, v70);
  }

  v73 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v74 = *v73;
  v75 = v73[1];
  v76 = v73[3];
  v77 = *(v73 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD1E8, &qword_2276840A0);
  v78 = swift_allocObject();
  v79 = v74;
  v80 = v75;

  sub_22766A070();
  *(v78 + 16) = v79;
  *(v78 + 24) = v80;
  *(v78 + 32) = v77;
  *(v78 + 40) = v76;
  v81 = qword_2813B2078;
  swift_beginAccess();
  v82 = sub_227543638(v78 + v81, v77, v76);
  if (v82)
  {
    if (v82 != 1)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v171 = sub_22724F930(0);
    if (v196)
    {
      goto LABEL_67;
    }

    v172 = v171;
    [v171 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v196 = 0;
    v173 = sub_22766C9E0();
    v182 = sub_226EDAB24(v173);

    sub_226EDAB78(v182, v80);
  }

  v83 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v84 = *v83;
  v85 = v83[1];
  v86 = v83[3];
  v87 = *(v83 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD1F0, &qword_2276840A8);
  v88 = swift_allocObject();
  v89 = v84;
  v90 = v85;

  sub_22766A070();
  *(v88 + 16) = v89;
  *(v88 + 24) = v90;
  *(v88 + 32) = v87;
  *(v88 + 40) = v86;
  v91 = qword_2813B2078;
  swift_beginAccess();
  v92 = sub_2275435F0(v88 + v91, v87, v86);
  if (v92)
  {
    if (v92 != 1)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v174 = sub_22724F430(0);
    if (v196)
    {
      goto LABEL_67;
    }

    v175 = v174;
    [v174 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v196 = 0;
    v176 = sub_22766C9E0();
    v177 = sub_226EDAB24(v176);

    sub_226EDAB78(v177, v90);
  }

  v93 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v94 = *v93;
  v95 = v93[1];
  v96 = v93[3];
  v97 = *(v93 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD1F8, &qword_2276840B0);
  v98 = swift_allocObject();
  v99 = v94;
  v100 = v95;

  sub_22766A070();
  *(v98 + 16) = v99;
  *(v98 + 24) = v100;
  *(v98 + 32) = v97;
  *(v98 + 40) = v96;
  v101 = qword_2813B2078;
  swift_beginAccess();
  v102 = sub_2275435A8(v98 + v101, v97, v96);
  if (v102)
  {
    if (v102 != 1)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v178 = sub_22724EF30(0);
    if (v196)
    {
      goto LABEL_67;
    }

    v179 = v178;
    [v178 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v196 = 0;
    v180 = sub_22766C9E0();
    v181 = sub_226EDAB24(v180);

    sub_226EDAB78(v181, v100);
  }

  v103 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v104 = *v103;
  v105 = v103[1];
  v106 = v103[3];
  v107 = *(v103 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD200, &qword_2276840B8);
  v108 = swift_allocObject();
  v109 = v104;
  v110 = v105;

  sub_22766A070();
  *(v108 + 16) = v109;
  *(v108 + 24) = v110;
  *(v108 + 32) = v107;
  *(v108 + 40) = v106;
  v111 = qword_2813B2078;
  swift_beginAccess();
  v112 = sub_227543560(v108 + v111, v107, v106);
  if (v112)
  {
    if (v112 != 1)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v183 = sub_22724EA30(0);
    if (v196)
    {
      goto LABEL_67;
    }

    v184 = v183;
    [v183 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v196 = 0;
    v185 = sub_22766C9E0();
    v186 = sub_226EDAB24(v185);

    sub_226EDAB78(v186, v110);
  }

  v113 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v114 = *v113;
  v115 = v113[1];
  v116 = v113[3];
  v117 = *(v113 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD208, &qword_2276840C0);
  v118 = swift_allocObject();
  v119 = v114;
  v120 = v115;

  sub_22766A070();
  *(v118 + 16) = v119;
  *(v118 + 24) = v120;
  *(v118 + 32) = v117;
  *(v118 + 40) = v116;
  v121 = qword_2813B2078;
  swift_beginAccess();
  v122 = sub_227543518(v118 + v121, v117, v116);
  if (v122)
  {
    if (v122 == 1)
    {

      goto LABEL_37;
    }

LABEL_41:
    swift_willThrow();
    goto LABEL_67;
  }

  v187 = sub_22724E530(0);
  if (v196)
  {
    goto LABEL_67;
  }

  v188 = v187;
  [v187 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v196 = 0;
  v189 = sub_22766C9E0();
  v190 = sub_226EDAB24(v189);

  sub_226EDAB78(v190, v120);

LABEL_37:
  v123 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v124 = *v123;
  v125 = v123[1];
  v126 = v123[3];
  v127 = *(v123 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD210, &qword_2276840C8);
  v128 = swift_allocObject();
  v129 = v124;
  v130 = v125;

  sub_22766A070();
  *(v128 + 16) = v129;
  *(v128 + 24) = v130;
  *(v128 + 32) = v127;
  *(v128 + 40) = v126;
  v131 = qword_2813B2078;
  swift_beginAccess();
  v132 = sub_2275434D0(v128 + v131, v127, v126);
  if (v132)
  {
    if (v132 == 1)
    {

LABEL_40:
      v133 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
      v134 = *v133;
      v135 = v133[1];
      v136 = *(v133 + 16);
      v137 = v133[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCEA0, &qword_227681E30);
      v138 = swift_allocObject();
      v139 = v134;
      v140 = v135;

      sub_22766A070();
      *(v138 + 16) = v139;
      *(v138 + 24) = v140;
      *(v138 + 32) = v136;
      *(v138 + 40) = v137;
      sub_2273AB358(a2, 0, j_j__objc_retain, 0);
      swift_setDeallocating();

      v141 = qword_2813B2078;
      v142 = sub_22766A100();
      (*(*(v142 - 8) + 8))(v138 + v141, v142);
      swift_deallocClassInstance();
      return;
    }

    goto LABEL_41;
  }

  v191 = sub_22724E030(0);
  if (!v196)
  {
    v192 = v191;
    [v191 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v193 = sub_22766C9E0();
    v194 = sub_226EDAB24(v193);

    sub_226EDAB78(v194, v130);

    goto LABEL_40;
  }

LABEL_67:
}

double sub_2273B2610(uint64_t a1, void *a2, void *a3)
{
  v6 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v7 = sub_22766BFD0();
  v8 = [v6 initWithEntityName_];

  type metadata accessor for ManagedUpNextQueueItem();
  v9 = sub_22766C9E0();
  if (v3)
  {
  }

  else
  {
    v11 = MEMORY[0x277D84FA0];
    v15 = MEMORY[0x277D84FA0];
    if (MEMORY[0x277D84F90] >> 62)
    {
      v12 = v9;
      if (sub_22766CD20())
      {
        sub_226F50730(MEMORY[0x277D84F90]);
        v11 = v13;
      }

      else
      {
        v11 = MEMORY[0x277D84FA0];
      }

      v9 = v12;
    }

    v14 = v11;
    sub_2273AADB8(v9, &v15, &v14);

    sub_2273AC208(v14, a2, a3, type metadata accessor for ManagedUpNextQueueItem, &qword_27D7BD1B0, type metadata accessor for ManagedUpNextQueueItem);
  }

  return result;
}

void sub_2273B27C4(void **a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = sub_22766BFD0();
  v5 = [v3 valueForKey_];

  if (v5)
  {
    sub_22766CC20();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (!*(&v14 + 1))
  {
    sub_226E97D1C(v15, &unk_27D7BC990, &qword_227670A30);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v9 = sub_227664DD0();
    sub_2273B65DC(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277D50FE0], v9);
    swift_willThrow();
    return;
  }

  v6 = sub_22766BFD0();
  v7 = sub_22766BFD0();
  [v3 setValue:v6 forKey:v7];

  v8 = *a2;

  LOBYTE(v7) = sub_22718C70C(v11, v12, v8);

  if (v7)
  {

    sub_2270BF484(v15, v3);
  }

  else
  {
    sub_2270AE890(v15, v11, v12);
  }
}

uint64_t sub_2273B2A2C(void *a1)
{
  v1 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD1A0, &qword_227684060);
  v6 = swift_allocObject();
  v7 = v2;
  v8 = v3;

  sub_22766A070();
  *(v6 + 16) = v7;
  *(v6 + 24) = v8;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  sub_2273AB7F8(sub_2273B66C0, 0, j_j__objc_retain, 0);
  swift_setDeallocating();

  v9 = qword_2813B2078;
  v10 = sub_22766A100();
  (*(*(v10 - 8) + 8))(v6 + v9, v10);
  return swift_deallocClassInstance();
}

void sub_2273B2BC0(void *a1, void *a2, void *a3)
{
  v126 = a3;
  v128 = a2;
  v123 = sub_22766B390();
  v120 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v124 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  MEMORY[0x28223BE20](v5 - 8);
  v122 = &v112 - v6;
  v121 = sub_2276627D0();
  *&v119 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v8 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v125 = a1;
  v10 = __swift_project_boxed_opaque_existential_0(a1, v9);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v10 + 16);
  v14 = v10[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1A0, &qword_22767DEA0);
  v15 = swift_allocObject();
  v16 = v11;
  v17 = v12;

  sub_22766A070();
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  *(v15 + 32) = v13;
  *(v15 + 40) = v14;
  v18 = v127;
  v19 = sub_22724AE18(0);
  if (v18)
  {

    swift_setDeallocating();
    v22 = qword_2813B2078;
    v23 = sub_22766A100();
    (*(*(v23 - 8) + 8))(v15 + v22, v23);
LABEL_4:
    swift_deallocClassInstance();
    return;
  }

  v20 = v19;
  v127 = v8;
  v21 = type metadata accessor for ManagedWorkoutPlanTemplate();
  v24 = sub_22766C9E0();
  v114 = v21;

  swift_setDeallocating();
  v25 = qword_2813B2078;
  v116 = sub_22766A100();
  v26 = *(v116 - 1);
  *&v118 = *(v26 + 8);
  v117 = (v26 + 8);
  (v118)(v15 + v25, v116);
  swift_deallocClassInstance();
  if (v24 >> 62)
  {
    v27 = sub_22766CD20();
  }

  else
  {
    v27 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v115 = 0;
  v28 = v126;
  if (v27)
  {
    if (v27 < 1)
    {
      __break(1u);
      goto LABEL_28;
    }

    for (i = 0; i != v27; ++i)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x22AA991A0](i, v24);
      }

      else
      {
        v30 = *(v24 + 8 * i + 32);
      }

      v31 = v30;
      sub_2273B3E50(v30, 0x746E656449646C6FLL, 0xED00007265696669, 0x746E65644977656ELL, 0xED00007265696669, v128, v28);
    }
  }

  v32 = __swift_project_boxed_opaque_existential_0(v125, v125[3]);
  v33 = *v32;
  v34 = v32[1];
  v35 = *(v32 + 16);
  v36 = v32[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC178, qword_22767DC20);
  v37 = swift_allocObject();
  v38 = v33;
  v39 = v34;

  sub_22766A070();
  *(v37 + 16) = v38;
  *(v37 + 24) = v39;
  *(v37 + 32) = v35;
  *(v37 + 40) = v36;
  v40 = v115;
  sub_2273ABA48(sub_2273B439C, 0, j_j__objc_retain, 0);
  v28 = v40;
  if (v40)
  {
    swift_setDeallocating();

    v41 = qword_2813B2078;
LABEL_17:
    (v118)(v37 + v41, v116);
    goto LABEL_4;
  }

  swift_setDeallocating();

  (v118)(v37 + qword_2813B2078, v116);
  swift_deallocClassInstance();
  v42 = __swift_project_boxed_opaque_existential_0(v125, v125[3]);
  v43 = *v42;
  v44 = v42[1];
  v45 = *(v42 + 16);
  v16 = v42[3];
  v46 = swift_allocObject();
  v47 = v43;
  v48 = v44;

  sub_22766A070();
  *(v46 + 16) = v47;
  *(v46 + 24) = v48;
  *(v46 + 32) = v45;
  *(v46 + 40) = v16;
  v49 = sub_227284A54(0);
  type metadata accessor for ManagedArchivedWorkoutPlanSession();
  v24 = sub_22766C9E0();

  swift_setDeallocating();
  (v118)(v46 + qword_2813B2078, v116);
  swift_deallocClassInstance();
  if (v24 >> 62)
  {
LABEL_28:
    v50 = sub_22766CD20();
    v51 = v128;
    if (!v50)
    {
      goto LABEL_29;
    }

    goto LABEL_20;
  }

  v50 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v51 = v128;
  if (!v50)
  {
    goto LABEL_29;
  }

LABEL_20:
  if (v50 < 1)
  {
    __break(1u);
    goto LABEL_73;
  }

  for (j = 0; j != v50; ++j)
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v53 = MEMORY[0x22AA991A0](j, v24);
    }

    else
    {
      v53 = *(v24 + 8 * j + 32);
    }

    v54 = v53;
    sub_2273B3E50(v53, 0xD000000000000011, 0x800000022769F6C0, 0xD000000000000011, 0x800000022769F6E0, v51, v126);
  }

LABEL_29:

  v55 = __swift_project_boxed_opaque_existential_0(v125, v125[3]);
  v56 = *v55;
  v57 = v55[1];
  v58 = *(v55 + 16);
  v59 = v55[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1E8, &qword_22767CEB8);
  v37 = swift_allocObject();
  v16 = v56;
  v60 = v57;

  sub_22766A070();
  *(v37 + 16) = v16;
  *(v37 + 24) = v60;
  *(v37 + 32) = v58;
  *(v37 + 40) = v59;
  v61 = sub_22724B330(0);
  if (v28)
  {

    swift_setDeallocating();
    v41 = qword_2813B2078;
    goto LABEL_17;
  }

  v62 = v61;
  type metadata accessor for ManagedWorkoutPlanSummaryViewed();
  v24 = sub_22766C9E0();

  swift_setDeallocating();
  (v118)(v37 + qword_2813B2078, v116);
  swift_deallocClassInstance();
  if (!(v24 >> 62))
  {
    v63 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_33;
  }

LABEL_73:
  v63 = sub_22766CD20();
LABEL_33:
  v115 = v28;
  v64 = v126;
  if (v63)
  {
    if (v63 < 1)
    {
      __break(1u);
      goto LABEL_75;
    }

    for (k = 0; k != v63; ++k)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v66 = MEMORY[0x22AA991A0](k, v24);
      }

      else
      {
        v66 = *(v24 + 8 * k + 32);
      }

      v67 = v66;
      sub_2273B3E50(v66, 0xD000000000000011, 0x800000022769F6C0, 0xD000000000000011, 0x800000022769F6E0, v128, v64);
    }
  }

  v68 = __swift_project_boxed_opaque_existential_0(v125, v125[3]);
  v69 = *v68;
  v70 = v68[1];
  v71 = *(v68 + 16);
  v72 = v68[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC228, qword_22767CFB0);
  v73 = swift_allocObject();
  v74 = v69;
  v75 = v70;

  sub_22766A070();
  *(v73 + 16) = v74;
  *(v73 + 24) = v75;
  *(v73 + 32) = v71;
  *(v73 + 40) = v72;
  v76 = v115;
  v77 = sub_22723DB40(0);
  v64 = v76;
  if (v76)
  {

    swift_setDeallocating();
    (v118)(v73 + qword_2813B2078, v116);
    goto LABEL_4;
  }

  v78 = v77;
  type metadata accessor for ManagedWorkoutPlan();
  v79 = sub_22766C9E0();

  swift_setDeallocating();
  (v118)(v73 + qword_2813B2078, v116);
  swift_deallocClassInstance();
  v16 = v79;
  if (v79 >> 62)
  {
LABEL_75:
    v81 = sub_22766CD20();
    if (v81)
    {
      goto LABEL_44;
    }

LABEL_76:

    return;
  }

  v81 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v81)
  {
    goto LABEL_76;
  }

LABEL_44:
  if (v81 >= 1)
  {
    v82 = 0;
    v125 = (v16 & 0xC000000000000001);
    v117 = (v119 + 56);
    v116 = (v119 + 48);
    v113 = (v119 + 32);
    v112 = (v119 + 8);
    ++v120;
    *&v80 = 138412290;
    v118 = v80;
    v119 = xmmword_227670B30;
    v83 = v64;
    v84 = v123;
    v85 = v124;
    v115 = v81;
    while (1)
    {
      v86 = v83;
      v87 = v125 ? MEMORY[0x22AA991A0](v82, v16) : *(v16 + 8 * v82 + 32);
      v88 = v87;
      sub_2273B3E50(v87, 0x746E656449646C6FLL, 0xED00007265696669, 0x746E65644977656ELL, 0xED00007265696669, v128, v126);
      v89 = sub_22766BFD0();
      v90 = [v88 valueForKey_];

      if (v90)
      {
        sub_22766CC20();
        swift_unknownObjectRelease();
      }

      else
      {
        v129 = 0u;
        v130 = 0u;
      }

      v131 = v129;
      v132 = v130;
      if (!*(&v130 + 1))
      {
        break;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_66;
      }

      v91 = v133;
      v92 = sub_22766BFD0();
      v93 = [v91 valueForKey_];

      if (v93)
      {
        sub_22766CC20();
        swift_unknownObjectRelease();
      }

      else
      {
        v129 = 0u;
        v130 = 0u;
      }

      v94 = v122;
      v95 = v121;
      v131 = v129;
      v132 = v130;
      if (!*(&v130 + 1))
      {

        sub_226E97D1C(&v131, &unk_27D7BC990, &qword_227670A30);
        (*v117)(v94, 1, 1, v95);
LABEL_65:
        sub_226E97D1C(v94, &unk_27D7BB9D0, &qword_227671550);
        v85 = v124;
LABEL_66:
        sub_22766A770();
        v97 = v88;
        v98 = sub_22766B380();
        v99 = sub_22766C890();

        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          *v100 = v118;
          *(v100 + 4) = v97;
          *v101 = v97;
          v102 = v97;
          _os_log_impl(&dword_226E8E000, v98, v99, "Couldn't find template.newIdentifier for %@. Deleting it.", v100, 0xCu);
          sub_226E97D1C(v101, &unk_27D7B9660, &qword_2276740C0);
          v103 = v101;
          v85 = v124;
          MEMORY[0x22AA9A450](v103, -1, -1);
          v104 = v100;
          v84 = v123;
          MEMORY[0x22AA9A450](v104, -1, -1);
        }

        (*v120)(v85, v84);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
        inited = swift_initStackObject();
        *(inited + 16) = v119;
        *(inited + 32) = v97;
        v106 = v97;
        v107 = sub_226F473C8(inited);
        swift_setDeallocating();
        swift_arrayDestroy();
        sub_2273AC208(v107, v128, v126, type metadata accessor for ManagedWorkoutPlan, &qword_27D7B8760, type metadata accessor for ManagedWorkoutPlan);
        v83 = v86;
        if (v86)
        {

          v83 = 0;
        }

        else
        {
        }

        v84 = v123;
        goto LABEL_48;
      }

      v96 = swift_dynamicCast();
      (*v117)(v94, v96 ^ 1u, 1, v95);
      if ((*v116)(v94, 1, v95) == 1)
      {

        goto LABEL_65;
      }

      v108 = v16;
      v109 = v127;
      (*v113)(v127, v94, v95);
      v110 = sub_227662790();
      [v88 setTemplateIdentifier_];

      v111 = v109;
      v16 = v108;
      v81 = v115;
      (*v112)(v111, v95);
      v83 = v86;
LABEL_48:
      v85 = v124;
      if (v81 == ++v82)
      {
        goto LABEL_76;
      }
    }

    sub_226E97D1C(&v131, &unk_27D7BC990, &qword_227670A30);
    goto LABEL_66;
  }

  __break(1u);
}

void sub_2273B3E50(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v42 = a6;
  v43 = a7;
  v39[2] = a4;
  v41 = sub_22766B390();
  v11 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v39 - v15;
  v17 = sub_2276627D0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a2;
  v21 = sub_22766BFD0();
  v44 = a1;
  v22 = [a1 valueForKey_];

  if (v22)
  {
    sub_22766CC20();
    swift_unknownObjectRelease();
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  v49[0] = v47;
  v49[1] = v48;
  if (!*(&v48 + 1))
  {
    sub_226E97D1C(v49, &unk_27D7BC990, &qword_227670A30);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v24 = 0;
    v23 = 0;
    goto LABEL_10;
  }

  v39[1] = a5;
  v24 = v45;
  v23 = v46;

  sub_227662760();

  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {

    (*(v18 + 32))(v20, v16, v17);
    v37 = sub_227662790();
    v38 = sub_22766BFD0();
    [v44 setValue:v37 forKey:v38];

    (*(v18 + 8))(v20, v17);
    return;
  }

  sub_226E97D1C(v16, &unk_27D7BB9D0, &qword_227671550);
LABEL_10:
  sub_22766A770();

  v25 = sub_22766B380();
  v26 = sub_22766C890();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v47 = v28;
    *v27 = 136315394;
    *(v27 + 4) = sub_226E97AE8(v40, a3, &v47);
    *(v27 + 12) = 2080;
    *&v49[0] = v24;
    *(&v49[0] + 1) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v29 = sub_22766CB80();
    v31 = v30;

    v32 = sub_226E97AE8(v29, v31, &v47);

    *(v27 + 14) = v32;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v28, -1, -1);
    MEMORY[0x22AA9A450](v27, -1, -1);
  }

  else
  {
  }

  (*(v11 + 8))(v13, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227670B30;
  v34 = v44;
  *(inited + 32) = v44;
  v35 = v34;
  v36 = sub_226F47398(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_2273ABE88(v36, v42, v43);
}

void sub_2273B43A8(void *a1@<X0>, SEL *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = [a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_22766C000();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_2273B4408()
{
  v1 = sub_227662750();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v6 = sub_22766BFD0();
  v7 = [v5 initWithEntityName_];

  type metadata accessor for ManagedWorkoutPlan();
  v8 = sub_22766C9E0();
  if (v0)
  {
  }

  else
  {
    v9 = v8;
    v20 = v1;
    v17[1] = 0;
    v18 = v7;
    if (v8 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22766CD20())
    {
      v11 = 0;
      v19 = v9 & 0xC000000000000001;
      v12 = v2 + 1;
      while (1)
      {
        if (v19)
        {
          v13 = MEMORY[0x22AA991A0](v11, v9);
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v13 = *(v9 + 8 * v11 + 32);
        }

        v2 = v13;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        sub_227662740();
        v15 = i;
        v16 = sub_2276626A0();
        (*v12)(v4, v20);
        [v2 setDateCreated_];

        i = v15;
        ++v11;
        if (v14 == v15)
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
  }
}

uint64_t sub_2273B4648(void *a1)
{
  v1 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1E8, &qword_22767CEB8);
  v6 = swift_allocObject();
  v7 = v2;
  v8 = v3;

  sub_22766A070();
  *(v6 + 16) = v7;
  *(v6 + 24) = v8;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  sub_2273ABC98(sub_2273B47DC, 0, j_j__objc_retain, 0);
  swift_setDeallocating();

  v9 = qword_2813B2078;
  v10 = sub_22766A100();
  (*(*(v10 - 8) + 8))(v6 + v9, v10);
  return swift_deallocClassInstance();
}

uint64_t sub_2273B47DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 planIdentifier];
  if (v3)
  {
    v4 = v3;
    sub_2276627B0();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_2276627D0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

double sub_2273B487C(void *a1)
{
  v1 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC178, qword_22767DC20);
  v6 = swift_allocObject();
  v7 = v2;
  v8 = v3;

  sub_22766A070();
  v34 = v8;
  v35 = v7;
  *(v6 + 16) = v7;
  *(v6 + 24) = v8;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  swift_getKeyPath();
  v39[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD188, &qword_227684048);
  v39[0] = 0;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v9 = sub_22766C820();
  sub_226E93170(v39, v37, &unk_27D7BC990, &qword_227670A30);
  v10 = v38;
  if (v38)
  {
    v11 = __swift_project_boxed_opaque_existential_0(v37, v38);
    v36 = &v33;
    v12 = v5;
    v13 = v4;
    v14 = *(v10 - 8);
    v15 = MEMORY[0x28223BE20](v11);
    v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v17, v15);
    v18 = sub_22766D170();
    (*(v14 + 8))(v17, v10);
    v4 = v13;
    v5 = v12;
    __swift_destroy_boxed_opaque_existential_0(v37);
  }

  else
  {
    v18 = 0;
  }

  v19 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v20 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4C8 qword_22767DC60))];

  sub_226E97D1C(v39, &unk_27D7BC990, &qword_227670A30);
  v21 = qword_2813B2078;
  swift_beginAccess();
  v22 = v20;
  v23 = sub_22766A080();
  v25 = v24;
  MEMORY[0x22AA985C0]();
  if (*((*v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v36 = *((*v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v23(v39, 0);
  swift_endAccess();

  v26 = sub_2275438B0(v6 + v21, v4, v5);
  v27 = v39[5];
  if (v26)
  {
    if (v26 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_10;
  }

  v28 = sub_227284A54(0);
  if (v27)
  {
LABEL_10:

    return result;
  }

  v30 = v28;
  [v28 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v31 = sub_22766C9E0();
  v32 = sub_226EDAB24(v31);

  sub_226EDAB78(v32, v34);

  return result;
}

void sub_2273B4CD8(void *a1, void *a2, void *a3)
{
  v7 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v8 = sub_22766BFD0();
  v9 = [v7 initWithEntityName_];

  type metadata accessor for ManagedArchivedSession();
  v10 = sub_22766C9E0();
  if (v3)
  {
  }

  else
  {
    if (MEMORY[0x277D84F90] >> 62)
    {
      v26 = v10;
      if (sub_22766CD20())
      {
        sub_226F50A4C(MEMORY[0x277D84F90]);
        v11 = v27;
      }

      else
      {
        v11 = MEMORY[0x277D84FA0];
      }

      v10 = v26;
    }

    else
    {
      v11 = MEMORY[0x277D84FA0];
    }

    v29 = v11;
    sub_2273AABE4(v10);

    sub_2273AC208(v29, a2, a3, type metadata accessor for ManagedArchivedSession, &qword_27D7BD180, type metadata accessor for ManagedArchivedSession);
    v12 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[3];
    v16 = *(v12 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB960, &qword_227675B20);
    v17 = swift_allocObject();
    v18 = v13;
    v19 = v14;

    sub_22766A070();
    *(v17 + 16) = v18;
    *(v17 + 24) = v19;
    *(v17 + 32) = v16;
    *(v17 + 40) = v15;
    v20 = qword_2813B2078;
    swift_beginAccess();
    v21 = sub_2275438F8(v17 + v20, v16, v15);
    if (v21)
    {
      if (v21 != 1)
      {
        swift_willThrow();
      }
    }

    else
    {
      v22 = sub_2272847B4(0);
      [v22 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v23 = sub_22766C9E0();
      v28 = sub_226EDAB24(v23);

      sub_226EDAB78(v28, v19);
    }

    swift_setDeallocating();
    v24 = qword_2813B2078;
    v25 = sub_22766A100();
    (*(*(v25 - 8) + 8))(v17 + v24, v25);
    swift_deallocClassInstance();
  }
}

void sub_2273B50EC()
{
  if (qword_27D7B7F10 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {

    v1 = sub_2273B5B54(v0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD178, qword_227684008);
    v2 = sub_22766CFF0();
    v3 = v2;
    v4 = 0;
    v5 = 1 << *(v1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & v1[8];
    v8 = (v5 + 63) >> 6;
    v9 = v2 + 64;
    if (v7)
    {
      break;
    }

LABEL_6:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {

        qword_27D7CE360 = v3;
        return;
      }

      v12 = v1[v4 + 8];
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
  }

  while (1)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(v1[7] + 8 * v13);
    v15 = *(v14 + 16);
    if (!v15)
    {
      break;
    }

    v16 = *(v14 + 32);
    v17 = *(v14 + 33);
    v18 = *(v14 + 48);
    if (v15 != 1)
    {

      sub_22766CE20();

      v28 = sub_22709BF40();
      MEMORY[0x22AA98450](v28);

      break;
    }

    v19 = (v1[6] + 2 * v13);
    v20 = *v19;
    LOBYTE(v19) = v19[1];
    v21 = *(v14 + 40);
    v22 = *(v14 + 34);
    *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v23 = (v3[6] + 2 * v13);
    *v23 = v20;
    v23[1] = v19;
    v24 = v3[7] + 24 * v13;
    *v24 = v16;
    *(v24 + 1) = v17;
    *(v24 + 2) = v22;
    *(v24 + 8) = v21;
    *(v24 + 16) = v18;
    v25 = v3[2];
    v26 = v25 + 1;
    v27 = __OFADD__(v25, 1);

    if (v27)
    {
      goto LABEL_21;
    }

    v3[2] = v26;
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  sub_22766CFB0();
  __break(1u);
}

void *sub_2273B53C8(uint64_t a1, void *(*a2)(_OWORD *__return_ptr), uint64_t a3, uint64_t (*a4)(BOOL, unint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, void, uint64_t), uint64_t *a6, uint64_t *a7)
{
  v42 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = sub_22766CD20();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v9)
  {
    v47 = MEMORY[0x277D84F90];
    a4(0, v9 & ~(v9 >> 63), 0);
    v11 = v47;
    if (v42)
    {
      result = sub_22766CCD0();
    }

    else
    {
      result = sub_22766CC90();
      v12 = *(a1 + 36);
    }

    v44 = result;
    v45 = v12;
    v46 = v42 != 0;
    if ((v9 & 0x8000000000000000) == 0)
    {
      v36 = a4;
      v13 = 0;
      v39 = v9;
      while (v13 < v9)
      {
        if (__OFADD__(v13++, 1))
        {
          goto LABEL_35;
        }

        v17 = v44;
        v16 = v45;
        v18 = v46;
        v19 = a5(v44, v45, v46, a1);
        result = a2(v43);
        v20 = v43[0];
        v21 = v11;
        v47 = v11;
        v22 = *(v11 + 16);
        v23 = *(v21 + 24);
        if (v22 >= v23 >> 1)
        {
          v35 = v43[0];
          result = v36(v23 > 1, v22 + 1, 1);
          v20 = v35;
          v21 = v47;
        }

        *(v21 + 16) = v22 + 1;
        v24 = v21 + 24 * v22;
        *(v24 + 32) = v20;
        *(v24 + 48) = v19;
        if (v42)
        {
          if (!v18)
          {
            goto LABEL_40;
          }

          v11 = v21;
          if (sub_22766CCF0())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v9 = v39;
          __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
          v14 = sub_22766C6A0();
          sub_22766CD70();
          result = v14(v43, 0);
          if (v13 == v39)
          {
LABEL_32:
            sub_226EB526C(v44, v45, v46);
            return v11;
          }
        }

        else
        {
          if (v18)
          {
            goto LABEL_41;
          }

          if ((v17 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v25 = (1 << *(a1 + 32));
          if (v17 >= v25)
          {
            goto LABEL_36;
          }

          v11 = v21;
          v26 = v17 >> 6;
          v27 = *(a1 + 56 + 8 * (v17 >> 6));
          if (((v27 >> v17) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(a1 + 36) != v16)
          {
            goto LABEL_38;
          }

          v28 = v27 & (-2 << (v17 & 0x3F));
          if (v28)
          {
            v25 = (__clz(__rbit64(v28)) | v17 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v29 = v26 << 6;
            v30 = v26 + 1;
            v31 = (a1 + 64 + 8 * v26);
            while (v30 < (v25 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v29 += 64;
              ++v30;
              if (v33)
              {
                result = sub_226EB526C(v17, v16, 0);
                v25 = (__clz(__rbit64(v32)) + v29);
                goto LABEL_31;
              }
            }

            result = sub_226EB526C(v17, v16, 0);
          }

LABEL_31:
          v34 = *(a1 + 36);
          v44 = v25;
          v45 = v34;
          v46 = 0;
          v9 = v39;
          if (v13 == v39)
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

  return result;
}

uint64_t sub_2273B5748(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v43 = a2;
  v44 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BADC0, &qword_227679828);
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x28223BE20](v5);
  v45 = v36 - v6;
  v46 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_22766CD20();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v52 = MEMORY[0x277D84F90];
    sub_226F20668(0, v7 & ~(v7 >> 63), 0);
    v47 = v52;
    if (v46)
    {
      result = sub_22766CCD0();
    }

    else
    {
      result = sub_22766CC90();
      v9 = *(a1 + 36);
    }

    v49 = result;
    v50 = v9;
    v51 = v46 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v38 = a1 + 56;
      v39 = v11;
      v36[1] = v3;
      v37 = a1 + 64;
      v40 = v7;
      while (v10 < v7)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v14 = v49;
        v15 = v50;
        v16 = v51;
        v17 = a1;
        sub_2274DDCD4(v49, v50, v51, a1);
        v19 = v18;
        v20 = *(v42 + 48);
        v21 = v45;
        v43();
        *(v21 + v20) = v19;
        v22 = v47;
        v52 = v47;
        v24 = *(v47 + 16);
        v23 = *(v47 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_226F20668((v23 > 1), v24 + 1, 1);
          v21 = v45;
          v22 = v52;
        }

        *(v22 + 16) = v24 + 1;
        v25 = (*(v41 + 80) + 32) & ~*(v41 + 80);
        v47 = v22;
        result = sub_226E95D18(v21, v22 + v25 + *(v41 + 72) * v24, &qword_27D7BADC0, &qword_227679828);
        if (v46)
        {
          if (!v16)
          {
            goto LABEL_42;
          }

          a1 = v17;
          if (sub_22766CCF0())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v40;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD190, &qword_227684050);
          v12 = sub_22766C6A0();
          sub_22766CD70();
          result = v12(v48, 0);
          if (v10 == v7)
          {
LABEL_34:
            sub_226EB526C(v49, v50, v51);
            return v47;
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
          v26 = 1 << *(v17 + 32);
          if (v14 >= v26)
          {
            goto LABEL_38;
          }

          v27 = v14 >> 6;
          v28 = *(v38 + 8 * (v14 >> 6));
          if (((v28 >> v14) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v17 + 36) != v15)
          {
            goto LABEL_40;
          }

          v29 = v28 & (-2 << (v14 & 0x3F));
          if (v29)
          {
            v26 = __clz(__rbit64(v29)) | v14 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v30 = v27 << 6;
            v31 = v27 + 1;
            v32 = (v37 + 8 * v27);
            while (v31 < (v26 + 63) >> 6)
            {
              v34 = *v32++;
              v33 = v34;
              v30 += 64;
              ++v31;
              if (v34)
              {
                result = sub_226EB526C(v14, v15, 0);
                v26 = __clz(__rbit64(v33)) + v30;
                goto LABEL_33;
              }
            }

            result = sub_226EB526C(v14, v15, 0);
          }

LABEL_33:
          v35 = *(v17 + 36);
          v49 = v26;
          v50 = v35;
          v51 = 0;
          v7 = v40;
          if (v10 == v40)
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

void *sub_2273B5B54(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v33 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 32); ; i += 24)
  {
    v5 = *i;
    v6 = i[1];
    v30 = i[2];
    v31 = i[3];
    v7 = *(i + 2);
    v32 = *(i + 1);

    v9 = sub_226F3B95C(v5 | (v6 << 8));
    v10 = v1[2];
    v11 = (v8 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      break;
    }

    v13 = v8;
    if (v1[3] < v12)
    {
      sub_226FED92C(v12, 1);
      v1 = v33;
      v14 = sub_226F3B95C(v5 | (v6 << 8));
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_19;
      }

      v9 = v14;
    }

    if (v13)
    {
      v16 = v1[7];
      v17 = *(v16 + 8 * v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v16 + 8 * v9) = v17;
      v29 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v17 = sub_2273A6D3C(0, *(v17 + 2) + 1, 1, v17);
        *(v16 + 8 * v9) = v17;
      }

      v20 = *(v17 + 2);
      v19 = *(v17 + 3);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v22 = sub_2273A6D3C((v19 > 1), v20 + 1, 1, v17);
        v21 = v20 + 1;
        v17 = v22;
        *(v29 + 8 * v9) = v22;
      }

      *(v17 + 2) = v21;
      v4 = &v17[24 * v20];
      v4[32] = v5;
      v4[33] = v6;
      v4[34] = v30;
      v4[35] = v31;
      *(v4 + 5) = v32;
      *(v4 + 6) = v7;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD090, &qword_2276839E8);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_227670CD0;
      *(v23 + 32) = v5;
      *(v23 + 33) = v6;
      *(v23 + 34) = v30;
      *(v23 + 35) = v31;
      *(v23 + 40) = v32;
      *(v23 + 48) = v7;
      v1[(v9 >> 6) + 8] |= 1 << v9;
      v24 = (v1[6] + 2 * v9);
      *v24 = v5;
      v24[1] = v6;
      *(v1[7] + 8 * v9) = v23;
      v25 = v1[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_18;
      }

      v1[2] = v27;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_22766D220();
  __break(1u);
  return result;
}

void sub_2273B5DAC(uint64_t a1, char a2, void *a3, uint64_t (*a4)(void), uint64_t a5, void (*a6)(void), void (*a7)(void))
{
  v37 = *(a1 + 16);
  if (!v37)
  {
LABEL_16:

    return;
  }

  v8 = 0;
  v9 = (a1 + 48);
  v36 = a1;
  while (1)
  {
    if (v8 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      sub_22766D220();
      __break(1u);
      goto LABEL_23;
    }

    v10 = *(v9 - 2);
    v11 = *(v9 - 1);
    v12 = *v9;
    v13 = *a3;

    v14 = v12;
    v16 = sub_226F3B12C(v10, v11);
    v17 = v13[2];
    v18 = (v15 & 1) == 0;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_20;
    }

    v19 = v15;
    if (v13[3] >= v17 + v18)
    {
      if ((a2 & 1) == 0)
      {
        a7();
      }
    }

    else
    {
      a6();
      v20 = sub_226F3B12C(v10, v11);
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_22;
      }

      v16 = v20;
    }

    v22 = *a3;
    if (v19)
    {
      break;
    }

    v22[(v16 >> 6) + 8] |= 1 << v16;
    v28 = (v22[6] + 16 * v16);
    *v28 = v10;
    v28[1] = v11;
    *(v22[7] + 8 * v16) = v14;
    v29 = v22[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_21;
    }

    v22[2] = v31;
LABEL_3:
    a1 = v36;
    ++v8;
    v9 += 3;
    a2 = 1;
    if (v37 == v8)
    {
      goto LABEL_16;
    }
  }

  v23 = *(v22[7] + 8 * v16);
  v24 = a4();
  if (!v38)
  {
    v25 = v24;

    v26 = v22[7];
    v27 = *(v26 + 8 * v16);
    *(v26 + 8 * v16) = v25;

    goto LABEL_3;
  }

  v32 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_23:
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD00000000000001BLL, 0x8000000227694E60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766CF90();
  MEMORY[0x22AA98450](39, 0xE100000000000000);
  sub_22766CFB0();
  __break(1u);
}

void sub_2273B60E4(uint64_t a1, char a2, void *a3, uint64_t (*a4)(id), uint64_t a5)
{
  v46 = a4;
  v47 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v10 = *(v9 - 8);
  v44 = v9;
  v45 = v10;
  MEMORY[0x28223BE20](v9);
  v55 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BADC0, &qword_227679828);
  MEMORY[0x28223BE20](v12);
  v53 = &v44 - v15;
  v52 = *(a1 + 16);
  if (!v52)
  {
LABEL_16:

    return;
  }

  v54 = v5;
  v16 = 0;
  v17 = *(v13 + 48);
  v50 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v51 = v17;
  v18 = &unk_27D7BB9D0;
  v48 = v14;
  v49 = a1;
  while (1)
  {
    if (v16 >= *(a1 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      sub_22766D220();
      __break(1u);
      goto LABEL_24;
    }

    v19 = v53;
    sub_226E93170(v50 + *(v14 + 72) * v16, v53, &qword_27D7BADC0, &qword_227679828);
    v20 = v55;
    v21 = v18;
    sub_226E95D18(v19, v55, v18, &qword_227671550);
    v22 = *(v19 + v51);
    v23 = *a3;
    v25 = sub_226F3B74C(v20);
    v26 = *(v23 + 16);
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_21;
    }

    v29 = v24;
    if (*(v23 + 24) >= v28)
    {
      if ((a2 & 1) == 0)
      {
        sub_226FF4E10();
      }
    }

    else
    {
      sub_226FED3C8(v28, a2 & 1);
      v30 = sub_226F3B74C(v55);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_23;
      }

      v25 = v30;
    }

    v32 = a3;
    v33 = *a3;
    if (v29)
    {
      break;
    }

    v33[(v25 >> 6) + 8] |= 1 << v25;
    v18 = v21;
    sub_226E95D18(v55, v33[6] + *(v45 + 72) * v25, v21, &qword_227671550);
    *(v33[7] + 8 * v25) = v22;
    v40 = v33[2];
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      goto LABEL_22;
    }

    v33[2] = v42;
LABEL_3:
    ++v16;
    a2 = 1;
    v14 = v48;
    a1 = v49;
    a3 = v32;
    if (v52 == v16)
    {
      goto LABEL_16;
    }
  }

  v34 = *(v33[7] + 8 * v25);
  v35 = v54;
  v36 = v46(v34);
  v54 = v35;
  if (!v35)
  {
    v37 = v36;

    v18 = v21;
    sub_226E97D1C(v55, v21, &qword_227671550);
    v38 = v33[7];
    v39 = *(v38 + 8 * v25);
    *(v38 + 8 * v25) = v37;

    goto LABEL_3;
  }

  v58 = v54;
  v43 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_226E97D1C(v55, &unk_27D7BB9D0, &qword_227671550);
    return;
  }

LABEL_24:
  v56 = 0;
  v57 = 0xE000000000000000;
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD00000000000001BLL, 0x8000000227694E60);
  sub_22766CF90();
  MEMORY[0x22AA98450](39, 0xE100000000000000);
  sub_22766CFB0();
  __break(1u);
}

uint64_t sub_2273B65DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2273B6624()
{
  result = qword_27D7B8778;
  if (!qword_27D7B8778)
  {
    sub_226E99364(255, &qword_27D7B8770, 0x277CBE438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8778);
  }

  return result;
}

id sub_2273B6740(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RemoteBrowsingConfirmationCoordinator();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_15SeymourServices37RemoteBrowsingConfirmationCoordinatorC5StateO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_2273B681C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2273B6864(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_2273B68AC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

void sub_2273B68D8(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  sub_22766A730();
  sub_22766B370();
  v11 = *(v5 + 8);
  v11(v10, v4);
  v25 = v2;
  sub_2276696A0();
  v12 = v26;
  v13 = v29;
  v14 = v30;
  if (v30 == 2 && !(v27 | v26 | v28 | v29))
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_227667670();
    sub_227669270();
  }

  else
  {
    v22 = v28;
    v23 = v27;
    v24 = a1;
    sub_22766A730();
    v15 = sub_22766B380();
    v16 = sub_22766C890();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_226E8E000, v15, v16, "Already waiting on confirmation or building environment", v17, 2u);
      MEMORY[0x22AA9A450](v17, -1, -1);
    }

    v11(v7, v4);
    v18 = sub_227665A60();
    sub_2273B8C74();
    v19 = swift_allocError();
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D51BE0], v18);
    *(swift_allocObject() + 16) = v19;
    sub_227667670();
    sub_227669280();
    sub_2273B8D34(v12, v23, v22, v13, v14);
  }
}

uint64_t sub_2273B6C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;

    MEMORY[0x28223BE20](v12);
    *&v18[-32] = a3;
    *&v18[-24] = a1;
    *&v18[-16] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC7F8, &qword_227684270);
    sub_2276696A0();
  }

  sub_22766A730();
  v13 = sub_22766B380();
  v14 = sub_22766C8B0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_226E8E000, v13, v14, "Requesting remote browsing confirmation via UI...", v15, 2u);
    MEMORY[0x22AA9A450](v15, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  sub_227666D80();
  v16 = sub_22766C0B0();

  notify_post((v16 + 32));
}

void sub_2273B6E50(uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = Strong;
  if (Strong)
  {
    v9 = Strong + OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_state;
    v10 = *(Strong + OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_state);
    v11 = *(Strong + OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_state + 8);
    v12 = *(Strong + OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_state + 16);
    v13 = *(Strong + OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_state + 24);
    *v9 = a2;
    *(v9 + 8) = a3;
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    v14 = *(v9 + 32);
    *(v9 + 32) = 0;

    sub_2273B8D34(v10, v11, v12, v13, v14);
  }

  *a4 = v8 == 0;
}

void sub_2273B6F1C(void (*a1)(void **), uint64_t a2, char *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB78, &qword_22767BC10);
  v7 = *(v6 - 8);
  v49 = v6;
  v50 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v48 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - v18;
  v20 = swift_allocObject();
  v51 = a2;
  v52 = a1;
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  v21 = a3;

  sub_22766A730();
  sub_22766B370();
  v22 = *(v11 + 8);
  v53 = v10;
  v22(v19, v10);
  v56 = v21;
  v23 = sub_2276696A0();
  v54 = v60;
  v55 = v59;
  v24 = v61;
  if (v61)
  {
    v25 = v22;
    v26 = v57;
    v27 = v58;

    sub_22766A730();
    v28 = sub_22766B380();
    v29 = sub_22766C890();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_226E8E000, v28, v29, "Currently idle or building environment", v30, 2u);
      MEMORY[0x22AA9A450](v30, -1, -1);
    }

    v25(v16, v53);
    v31 = sub_227665A60();
    sub_2273B8C74();
    v32 = swift_allocError();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D51BB8], v31);
    v57 = v32;
    LOBYTE(v58) = 1;
    v52(&v57);
    sub_2273B8D34(v26, v27, v55, v54, v24);
  }

  else
  {
    v34 = v9;
    v35 = v49;
    MEMORY[0x28223BE20](v23);
    *(&v48 - 6) = v21;
    *(&v48 - 5) = v36;
    v51 = v37;
    v52 = v36;
    *(&v48 - 4) = v37;
    *(&v48 - 3) = sub_226EB496C;
    *(&v48 - 2) = v20;
    sub_2276696A0();

    sub_22766A730();
    v38 = sub_22766B380();
    v39 = sub_22766C8B0();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_226E8E000, v38, v39, "Begin remote browsing environment build..", v40, 2u);
      MEMORY[0x22AA9A450](v40, -1, -1);
    }

    v22(v13, v53);
    v41 = __swift_project_boxed_opaque_existential_0(&v21[OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_remoteBrowsingEnvironmentBuilder], *&v21[OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_remoteBrowsingEnvironmentBuilder + 24]);
    v42 = *(*v41 + 1000);
    MEMORY[0x28223BE20](v41);
    *(&v48 - 2) = v43;
    *(&v48 - 8) = 0;
    os_unfair_lock_lock((v42 + 20));
    sub_2273B8DFC((v42 + 16), v34);
    os_unfair_lock_unlock((v42 + 20));
    v44 = swift_allocObject();
    *(v44 + 16) = v21;
    v45 = v21;
    v46 = sub_227669290();
    v47 = swift_allocObject();
    *(v47 + 16) = sub_2273B8E1C;
    *(v47 + 24) = v44;

    v46(sub_226E93814, v47);

    sub_2273B8D34(v52, v51, v55, v54, 0);

    (*(v50 + 8))(v34, v35);
  }
}

void sub_2273B74F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 + OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_state;
  v6 = *(a1 + OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_state);
  v7 = *(a1 + OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_state + 8);
  v8 = *(a1 + OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_state + 16);
  v9 = *(a1 + OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_state + 24);
  *v5 = a2;
  *(v5 + 8) = a3;
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  v10 = *(v5 + 32);
  *(v5 + 32) = 1;

  sub_2273B8D34(v6, v7, v8, v9, v10);
}

void sub_2273B7580(char *a1, uint64_t a2)
{
  v69 = a2;
  v3 = sub_227667670();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v70 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B390();
  v71 = *(v6 - 8);
  v72 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v65 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v65 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD450, &qword_227684B70);
  MEMORY[0x28223BE20](v15);
  v17 = (&v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v21 = (&v65 - v20);
  v22 = &a1[OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_state];
  if (a1[OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_state + 32] == 1)
  {
    v65 = v4;
    v23 = v3;
    v24 = *(v22 + 2);
    v25 = *(v22 + 3);
    v26 = *(v22 + 1);
    v66 = *v22;
    v67 = v24;
    v27 = v19;
    sub_2273B8F08(v69, &v65 - v20);
    v69 = v27;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v68 = v25;
    if (EnumCaseMultiPayload == 1)
    {
      v29 = *v21;
      v70 = v26;

      sub_22766A730();
      v30 = v29;
      v31 = sub_22766B380();
      v32 = sub_22766C8B0();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v75 = v65;
        *v33 = 136446210;
        swift_getErrorValue();
        v34 = MEMORY[0x22AA995D0](v73, v74);
        v36 = sub_226E97AE8(v34, v35, &v75);

        *(v33 + 4) = v36;
        _os_log_impl(&dword_226E8E000, v31, v32, "Failed remote browsing confirmation: %{public}s", v33, 0xCu);
        v37 = v65;
        __swift_destroy_boxed_opaque_existential_0(v65);
        MEMORY[0x22AA9A450](v37, -1, -1);
        MEMORY[0x22AA9A450](v33, -1, -1);
      }

      (*(v71 + 8))(v14, v72);
      *v17 = v29;
      swift_storeEnumTagMultiPayload();
      v38 = v29;
      (v66)(v17);
      sub_2273B8CCC(v17);
      v39 = v29;
      v67(v29, 1);
    }

    else
    {
      v52 = v23;
      (v65[4])(v70, v21, v23);

      sub_22766A730();
      v53 = sub_22766B380();
      v54 = sub_22766C8B0();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_226E8E000, v53, v54, "Completing remote browsing confirmation!", v55, 2u);
        MEMORY[0x22AA9A450](v55, -1, -1);
      }

      (*(v71 + 8))(v11, v72);
      v56 = v65;
      v57 = v70;
      (v65[2])(v17, v70, v52);
      swift_storeEnumTagMultiPayload();
      (v66)(v17);
      sub_2273B8CCC(v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
      sub_22766D430();
      v58 = v75;
      v59 = v76;
      v67(v75, v76);

      sub_226EB4548(v58, v59);
      (v56[1])(v57, v52);
    }

    v60 = *v22;
    v61 = *(v22 + 1);
    v62 = *(v22 + 2);
    v63 = *(v22 + 3);
    *v22 = 0u;
    *(v22 + 1) = 0u;
    v64 = v22[32];
    v22[32] = 2;
    sub_2273B8D34(v60, v61, v62, v63, v64);
  }

  else
  {
    sub_22766A730();
    v40 = a1;
    v41 = sub_22766B380();
    v42 = sub_22766C8B0();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v80 = v44;
      *v43 = 136446210;
      v45 = *(v22 + 1);
      v46 = *(v22 + 2);
      v47 = *(v22 + 3);
      v48 = v22[32];
      v75 = *v22;
      v76 = v45;
      v77 = v46;
      v78 = v47;
      v79 = v48;
      sub_2273B8EA4(v75, v45, v46, v47, v48);
      v49 = sub_22766C060();
      v51 = sub_226E97AE8(v49, v50, &v80);

      *(v43 + 4) = v51;
      _os_log_impl(&dword_226E8E000, v41, v42, "Remote browsing environment build complete, but we are in the wrong state %{public}s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x22AA9A450](v44, -1, -1);
      MEMORY[0x22AA9A450](v43, -1, -1);
    }

    (*(v71 + 8))(v8, v72);
  }
}

void *sub_2273B7C44(uint64_t a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22766A730();
  sub_22766B370();
  (*(v3 + 8))(v5, v2);
  v8 = a1;
  return sub_2276696A0();
}

void sub_2273B7D8C(uint64_t a1)
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD450, &qword_227684B70);
  MEMORY[0x28223BE20](v52);
  v3 = (&v49 - v2);
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v49 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - v12;
  v14 = a1 + OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_state;
  v16 = *(a1 + OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_state);
  v15 = *(a1 + OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_state + 8);
  v17 = *(v14 + 16);
  v55 = *(v14 + 24);
  v18 = *(v14 + 32);
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 2;
  v54 = v18;
  if (v18)
  {
    if (v18 == 1)
    {
      v53 = v17;
      v50 = v15;
      v51 = v16;

      sub_22766A730();
      v19 = sub_22766B380();
      v20 = sub_22766C8B0();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_226E8E000, v19, v20, "Denying pending confirmation and request", v21, 2u);
        MEMORY[0x22AA9A450](v21, -1, -1);
      }

      (*(v5 + 8))(v7, v4);
      v22 = sub_227665A60();
      sub_2273B8C74();
      v23 = swift_allocError();
      v24 = *MEMORY[0x277D51B90];
      v25 = *(*(v22 - 8) + 104);
      v25(v26, v24, v22);
      v53(v23, 1);

      v27 = swift_allocError();
      v25(v28, v24, v22);
      *v3 = v27;
      swift_storeEnumTagMultiPayload();
      v15 = v50;
      v16 = v51;
      v51(v3);
      sub_2273B8CCC(v3);
      swift_allocError();
      v29 = v22;
      v30 = v55;
      v25(v31, v24, v29);
      v17 = v53;
      swift_willThrow();
    }

    else
    {
      sub_22766A730();
      v44 = sub_22766B380();
      v45 = sub_22766C8B0();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_226E8E000, v44, v45, "No pending confirmation", v46, 2u);
        MEMORY[0x22AA9A450](v46, -1, -1);
      }

      (*(v5 + 8))(v13, v4);
      v47 = sub_227665A60();
      sub_2273B8C74();
      swift_allocError();
      (*(*(v47 - 8) + 104))(v48, *MEMORY[0x277D51BB8], v47);
      swift_willThrow();
      v30 = v55;
    }
  }

  else
  {
    v53 = v17;
    v51 = v16;

    sub_22766A730();
    v32 = sub_22766B380();
    v33 = sub_22766C8B0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_226E8E000, v32, v33, "Denying pending confirmation", v34, 2u);
      MEMORY[0x22AA9A450](v34, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
    v35 = sub_227665A60();
    sub_2273B8C74();
    v36 = swift_allocError();
    v37 = *MEMORY[0x277D51B90];
    v38 = *(*(v35 - 8) + 104);
    v38(v39, v37, v35);
    *v3 = v36;
    swift_storeEnumTagMultiPayload();
    v40 = v51;
    v51(v3);
    sub_2273B8CCC(v3);
    swift_allocError();
    v42 = v41;
    v43 = v37;
    v16 = v40;
    v38(v42, v43, v35);
    swift_willThrow();
    v17 = v53;
    v30 = v55;
    sub_2273B8D34(v40, v15, v53, v55, 0);
  }

  sub_2273B8D34(v16, v15, v17, v30, v54);
}

void *sub_2273B83B8(uint64_t a1)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22766A730();
  sub_22766B370();
  (*(v4 + 8))(v6, v3);
  v10 = a1;
  result = sub_2276696A0();
  if (!v1)
  {
    sub_227666D90();
    v8 = sub_22766C0B0();

    notify_post((v8 + 32));
  }

  return result;
}

void sub_2273B8538(uint64_t a1)
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD450, &qword_227684B70);
  MEMORY[0x28223BE20](v52);
  v53 = (&v48 - v2);
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v48 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - v11;
  v13 = a1 + OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_state;
  v14 = *(a1 + OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_state);
  v15 = *(v13 + 8);
  v16 = *(v13 + 16);
  v17 = *(v13 + 24);
  v18 = *(v13 + 32);
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 2;
  v54 = v16;
  if (v18)
  {
    v51 = v18;
    if (v18 == 1)
    {
      v49 = v14;
      v50 = v15;

      sub_22766A730();
      v19 = sub_22766B380();
      v20 = sub_22766C8B0();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_226E8E000, v19, v20, "Cancel pending confirmation and request", v21, 2u);
        MEMORY[0x22AA9A450](v21, -1, -1);
      }

      (*(v4 + 8))(v6, v3);
      v22 = sub_227665A60();
      v48 = sub_2273B8C74();
      v23 = swift_allocError();
      v24 = *MEMORY[0x277D51BA0];
      v25 = *(*(v22 - 8) + 104);
      v25(v26, v24, v22);
      v27 = v17;
      v28 = v54;
      v54(v23, 1);

      v29 = swift_allocError();
      v25(v30, v24, v22);
      v31 = v53;
      *v53 = v29;
      swift_storeEnumTagMultiPayload();
      v14 = v49;
      v32 = v50;
      v49(v31);
      sub_2273B8CCC(v31);
      swift_allocError();
      v25(v33, v24, v22);
      v15 = v32;
      swift_willThrow();
    }

    else
    {
      v53 = v17;
      sub_22766A730();
      v43 = sub_22766B380();
      v44 = sub_22766C8B0();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_226E8E000, v43, v44, "No pending confirmation to cancel", v45, 2u);
        MEMORY[0x22AA9A450](v45, -1, -1);
      }

      (*(v4 + 8))(v12, v3);
      v46 = sub_227665A60();
      sub_2273B8C74();
      swift_allocError();
      (*(*(v46 - 8) + 104))(v47, *MEMORY[0x277D51BB8], v46);
      swift_willThrow();
      v28 = v54;
      v27 = v53;
    }

    sub_2273B8D34(v14, v15, v28, v27, v51);
  }

  else
  {
    sub_22766A730();
    v34 = sub_22766B380();
    v35 = sub_22766C8B0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v50 = v15;
      v37 = v36;
      *v36 = 0;
      _os_log_impl(&dword_226E8E000, v34, v35, "Cancelling request", v36, 2u);
      v38 = v37;
      v15 = v50;
      MEMORY[0x22AA9A450](v38, -1, -1);
    }

    (*(v4 + 8))(v9, v3);
    v39 = sub_227665A60();
    sub_2273B8C74();
    v40 = swift_allocError();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D51BA0], v39);
    v42 = v53;
    *v53 = v40;
    swift_storeEnumTagMultiPayload();
    v14(v42);
    sub_2273B8D34(v14, v15, v54, v17, 0);
    sub_2273B8CCC(v42);
  }
}

uint64_t sub_2273B8BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v7 = *v5;
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = v7;
  v10 = MEMORY[0x277D84F78] + 8;

  return a5(a4, v8, v10);
}

unint64_t sub_2273B8C74()
{
  result = qword_27D7BD250;
  if (!qword_27D7BD250)
  {
    sub_227665A60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BD250);
  }

  return result;
}

uint64_t sub_2273B8CCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD450, &qword_227684B70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2273B8D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }
  }
}

double sub_2273B8EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_2273B8F08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD450, &qword_227684B70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_2273B8F90@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16) + OBJC_IVAR____TtC15SeymourServices37RemoteBrowsingConfirmationCoordinator_state;
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *a1 = *v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v7 = *(v2 + 32);
  *(a1 + 32) = v7;
  return sub_2273B8EA4(v3, v4, v5, v6, v7);
}

void sub_2273B9020(void *a1)
{
  v2 = [a1 identifier];
  if (v2)
  {
    v3 = v2;
    sub_22766C000();

    v4 = [a1 name];
    if (v4)
    {
      v5 = v4;
      sub_22766C000();

      sub_227669500();
      return;
    }
  }

  v6 = sub_227664DD0();
  sub_2273B94E4(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51028], v6);
  swift_willThrow();
}

void *static BodyFocus.representativeSamples()()
{
  v14 = sub_227669530();
  v0 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22766C090();
  v20 = sub_22766C090();
  v21[0] = v3;
  v21[1] = v21;
  v21[2] = &v20;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v19 = v18;
  v16 = sub_2272BFE28();
  v17 = v16;
  v4 = sub_2276638E0();

  v5 = *(v4 + 16);
  if (v5)
  {
    v15 = MEMORY[0x277D84F90];
    result = sub_226ED62C0(0, v5, 0);
    v7 = 0;
    v8 = v15;
    v12 = v0 + 32;
    v13 = v4;
    v9 = v4 + 56;
    while (v7 < *(v4 + 16))
    {

      sub_227669500();
      v15 = v8;
      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_226ED62C0((v10 > 1), v11 + 1, 1);
        v8 = v15;
      }

      ++v7;
      *(v8 + 16) = v11 + 1;
      result = (*(v0 + 32))(v8 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v11, v2, v14);
      v9 += 32;
      v4 = v13;
      if (v5 == v7)
      {

        return v8;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_2273B93F0(void *a1)
{
  sub_227669510();
  v2 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_227669520();
  v3 = sub_22766BFD0();

  [a1 setName_];
}

uint64_t sub_2273B948C(uint64_t a1)
{
  result = sub_2273B94E4(&qword_28139B228, MEMORY[0x277D53E10], &protocol conformance descriptor for BodyFocus);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2273B94E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2273B952C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v113 = a2;
  v118 = a1;
  v111 = a3;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD270, &unk_227684350);
  v104 = *(v107 - 8);
  v103 = *(v104 + 64);
  MEMORY[0x28223BE20](v107);
  v102 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v101 = &v89 - v8;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v9 = *(v99 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v99);
  v112 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v89 - v12;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v105 = *(v108 - 8);
  v106 = v108 - 8;
  v116 = v105;
  v109 = *(v105 + 64);
  MEMORY[0x28223BE20](v108 - 8);
  v110 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v117 = &v89 - v16;
  MEMORY[0x28223BE20](v17);
  v115 = &v89 - v18;
  MEMORY[0x28223BE20](v19);
  v121 = &v89 - v20;
  MEMORY[0x28223BE20](v21);
  v120 = &v89 - v22;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  v24 = v23;
  v25 = swift_allocObject();
  v114 = v25;
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD278, &unk_227684360);
  v119 = swift_allocBox();
  v27 = v26;
  v28 = sub_227665E60();
  (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
  v97 = v3;
  v29 = v3[5];
  v30 = v3[6];
  __swift_project_boxed_opaque_existential_0(v3 + 2, v29);
  v31 = *(v30 + 16);
  v91 = v13;
  v31(a1, a2, v29, v30);
  v32 = swift_allocObject();
  *(v32 + 16) = sub_2273BC288;
  *(v32 + 24) = v24;
  v100 = v24;
  v33 = v9;
  v34 = *(v9 + 16);
  v96 = v9 + 16;
  v98 = v34;
  v35 = v112;
  v36 = v99;
  v34(v112, v13, v99);
  v37 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v95 = v37;
  v38 = (v10 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v90 = v38;
  v39 = swift_allocObject();
  v94 = *(v33 + 32);
  v94(v39 + v37, v35, v36);
  v40 = (v39 + v38);
  *v40 = sub_226FCBEE0;
  v40[1] = v32;

  sub_227669270();
  v41 = *(v33 + 8);
  v92 = v33 + 8;
  v93 = v41;
  v42 = v91;
  v41(v91, v36);
  v43 = v97;
  v44 = v97[5];
  v45 = v97[6];
  __swift_project_boxed_opaque_existential_0(v97 + 2, v44);
  (*(v45 + 32))(v118, v113, v44, v45);
  v46 = swift_allocObject();
  v47 = v114;
  *(v46 + 16) = sub_2273BC074;
  *(v46 + 24) = v47;
  v48 = v112;
  v98(v112, v42, v36);
  v49 = v90;
  v50 = swift_allocObject();
  v94(v50 + v95, v48, v36);
  v51 = (v50 + v49);
  *v51 = sub_226FCBFE8;
  v51[1] = v46;

  sub_227669270();
  v93(v42, v36);
  v52 = v43[5];
  v53 = v43[6];
  __swift_project_boxed_opaque_existential_0(v43 + 2, v52);
  v54 = v101;
  (*(v53 + 24))(v118, v113, v52, v53);
  v55 = swift_allocObject();
  v56 = v119;
  *(v55 + 16) = sub_2273BC090;
  *(v55 + 24) = v56;
  v57 = v104;
  v58 = v102;
  v59 = v107;
  (*(v104 + 16))(v102, v54, v107);
  v60 = v57;
  v61 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v62 = (v103 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  (*(v60 + 32))(v63 + v61, v58, v59);
  v64 = (v63 + v62);
  *v64 = sub_2273BC0D0;
  v64[1] = v55;

  v65 = v115;
  sub_227669270();
  (*(v60 + 8))(v54, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8420, &unk_227670880);
  v66 = *(v105 + 72);
  v67 = v116;
  v68 = *(v116 + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_227675BD0;
  v70 = v69 + ((v68 + 32) & ~v68);
  v71 = *(v67 + 16);
  v72 = v108;
  v71(v70, v120, v108);
  v71(v70 + v66, v121, v72);
  v73 = v72;
  v71(v70 + 2 * v66, v65, v72);
  sub_226EA1CF4();
  v74 = sub_22766C950();
  sub_227669A50();
  v75 = v117;
  sub_227669250();

  v76 = swift_allocObject();
  v77 = v114;
  *(v76 + 16) = v100;
  *(v76 + 24) = v77;
  *(v76 + 32) = v119;
  *(v76 + 40) = v118;
  v78 = swift_allocObject();
  *(v78 + 16) = sub_2273BC100;
  *(v78 + 24) = v76;
  v79 = v110;
  v80 = v75;
  v81 = v73;
  v71(v110, v80, v73);
  v82 = (v68 + 16) & ~v68;
  v83 = (v109 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
  v84 = swift_allocObject();
  v85 = v116;
  (*(v116 + 32))(v84 + v82, v79, v81);
  v86 = (v84 + v83);
  *v86 = sub_226F09740;
  v86[1] = v78;
  sub_227666600();

  sub_227669270();
  v87 = *(v85 + 8);
  v87(v117, v81);
  v87(v115, v81);
  v87(v121, v81);
  v87(v120, v81);
}

void sub_2273B9F88(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
}

uint64_t sub_2273B9FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v33) = a4;
  v37 = a5;
  v7 = sub_227666600();
  v36 = *(v7 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v7);
  v35 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v34 = v32 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD278, &unk_227684360);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v32 - v12;
  v14 = sub_227665E60();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_projectBox();
  swift_beginAccess();
  if (*(a1 + 24))
  {
    v32[3] = *(a1 + 16);
    swift_beginAccess();
    if (*(a2 + 24))
    {
      swift_beginAccess();
      sub_226E93170(v18, v13, &qword_27D7BD278, &unk_227684360);
      if ((*(v15 + 48))(v13, 1, v14) != 1)
      {
        (*(v15 + 32))(v17, v13, v14);

        v33 = sub_2276637A0();
        v32[2] = v23;
        v24 = sub_227665E50();
        v32[0] = v25;
        v32[1] = v24;
        v26 = v15;
        sub_227665E30();
        sub_227665E20();
        v27 = v34;
        sub_2276665F0();
        v29 = v35;
        v28 = v36;
        (*(v36 + 16))(v35, v27, v7);
        v30 = (*(v28 + 80) + 16) & ~*(v28 + 80);
        v31 = swift_allocObject();
        (*(v28 + 32))(v31 + v30, v29, v7);
        sub_227669280();
        (*(v28 + 8))(v27, v7);
        return (*(v26 + 8))(v17, v14);
      }

      sub_226E97D1C(v13, &qword_27D7BD278, &unk_227684360);
    }
  }

  v19 = sub_2276636A0();
  sub_226F09790();
  v20 = swift_allocError();
  (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D500B0], v19);
  *(swift_allocObject() + 16) = v20;
  return sub_227669280();
}

uint64_t sub_2273BA478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD510, &unk_227684320);
  v3 = *(v119 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v119);
  v150 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v119 - v6;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v121 = *(v123 - 8);
  v122 = v123 - 8;
  v129 = v121;
  v124 = *(v121 + 64);
  MEMORY[0x28223BE20](v123 - 8);
  v125 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v130 = &v119 - v10;
  MEMORY[0x28223BE20](v11);
  v128 = &v119 - v12;
  MEMORY[0x28223BE20](v13);
  v141 = &v119 - v14;
  MEMORY[0x28223BE20](v15);
  v145 = &v119 - v16;
  MEMORY[0x28223BE20](v17);
  v144 = &v119 - v18;
  MEMORY[0x28223BE20](v19);
  v143 = &v119 - v20;
  MEMORY[0x28223BE20](v21);
  v142 = &v119 - v22;
  v23 = sub_22766B390();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A740();
  sub_22766B370();
  (*(v24 + 8))(v26, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD258, &qword_227684330);
  v27 = swift_allocBox();
  v29 = v28;
  v30 = sub_227666600();
  v31 = *(*(v30 - 8) + 56);
  v31(v29, 1, 1, v30);
  v127 = swift_allocBox();
  v31(v32, 1, 1, v30);
  v139 = swift_allocBox();
  v31(v33, 1, 1, v30);
  v138 = swift_allocBox();
  v31(v34, 1, 1, v30);
  v137 = swift_allocBox();
  v31(v35, 1, 1, v30);
  v140 = swift_allocBox();
  v31(v36, 1, 1, v30);
  v37 = sub_227663760();
  v131 = v7;
  v147 = a1;
  sub_2273B952C(v37, a1, v7);
  v38 = swift_allocObject();
  *(v38 + 16) = sub_2273BC270;
  *(v38 + 24) = v27;
  v120 = v27;
  v39 = *(v3 + 16);
  v133 = v3 + 16;
  v146 = v39;
  v40 = v150;
  v41 = v119;
  v39(v150, v7, v119);
  v42 = v3;
  v43 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v151 = *(v3 + 80);
  v148 = v43;
  v44 = (v4 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  v136 = *(v42 + 32);
  v149 = v42 + 32;
  v136(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2273BBFA4;
  v46[1] = v38;

  sub_227669270();
  v47 = *(v42 + 8);
  v134 = v42 + 8;
  v135 = v47;
  v48 = v131;
  v47(v131, v41);
  v49 = sub_227663730();
  sub_2273B952C(v49, v147, v48);
  v50 = swift_allocObject();
  v51 = v127;
  *(v50 + 16) = sub_2273BBFD4;
  *(v50 + 24) = v51;
  v52 = v150;
  v53 = v41;
  v54 = v41;
  v55 = v146;
  v146(v150, v48, v53);
  v132 = v44;
  v56 = swift_allocObject();
  v136(v56 + v148, v52, v54);
  v57 = (v56 + v44);
  *v57 = sub_2273BC26C;
  v57[1] = v50;

  sub_227669270();
  v58 = v48;
  v135(v48, v54);
  v59 = sub_227663750();
  v60 = v147;
  sub_2273B952C(v59, v147, v48);
  v61 = swift_allocObject();
  v62 = v139;
  *(v61 + 16) = sub_2273BC270;
  *(v61 + 24) = v62;
  v63 = v150;
  v64 = v54;
  v55(v150, v58, v54);
  v65 = v132;
  v66 = swift_allocObject();
  v67 = v148;
  v68 = v63;
  v136(v66 + v148, v63, v64);
  v69 = (v66 + v65);
  *v69 = sub_2273BC26C;
  v69[1] = v61;

  sub_227669270();
  v70 = v131;
  v135(v131, v64);
  v71 = sub_227663740();
  sub_2273B952C(v71, v60, v70);
  v72 = swift_allocObject();
  v73 = v138;
  *(v72 + 16) = sub_2273BC270;
  *(v72 + 24) = v73;
  v74 = v68;
  v75 = v68;
  v76 = v64;
  v146(v75, v70, v64);
  v77 = v132;
  v78 = swift_allocObject();
  v79 = v136;
  v136(v78 + v67, v74, v64);
  v80 = (v78 + v77);
  *v80 = sub_2273BC26C;
  v80[1] = v72;

  sub_227669270();
  v81 = v131;
  v82 = v135;
  v135(v131, v64);
  v83 = sub_227663780();
  sub_2273B952C(v83, v147, v81);
  v84 = swift_allocObject();
  v85 = v137;
  *(v84 + 16) = sub_2273BC270;
  *(v84 + 24) = v85;
  v86 = v150;
  v146(v150, v81, v64);
  v87 = v132;
  v88 = swift_allocObject();
  v79(v88 + v148, v86, v76);
  v89 = (v88 + v87);
  *v89 = sub_2273BC26C;
  v89[1] = v84;

  sub_227669270();
  v82(v81, v76);
  v90 = v82;
  v91 = sub_227663770();
  sub_2273B952C(v91, v147, v81);
  v92 = swift_allocObject();
  v93 = v140;
  *(v92 + 16) = sub_2273BC270;
  *(v92 + 24) = v93;
  v146(v86, v81, v76);
  v94 = swift_allocObject();
  v79(v94 + v148, v86, v76);
  v95 = (v94 + v87);
  *v95 = sub_2273BC26C;
  v95[1] = v92;

  v96 = v128;
  sub_227669270();
  v90(v81, v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8420, &unk_227670880);
  v97 = *(v121 + 72);
  v98 = v129;
  v99 = *(v129 + 80);
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_2276770E0;
  v101 = v100 + ((v99 + 32) & ~v99);
  v102 = *(v98 + 16);
  v103 = v123;
  v102(v101, v142, v123);
  v102(v101 + v97, v143, v103);
  v102(v101 + 2 * v97, v144, v103);
  v102(v101 + 3 * v97, v145, v103);
  v102(v101 + 4 * v97, v141, v103);
  v102(v101 + 5 * v97, v96, v103);
  v152 = v100;
  sub_226EA1CF4();
  v104 = sub_22766C950();
  sub_227669A50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0C8, qword_227677C60);
  sub_22718622C();
  v105 = v130;
  sub_227669260();

  v106 = swift_allocObject();
  v107 = v127;
  v106[2] = v120;
  v106[3] = v107;
  v108 = v138;
  v106[4] = v139;
  v106[5] = v108;
  v109 = v140;
  v106[6] = v137;
  v106[7] = v109;
  v110 = swift_allocObject();
  *(v110 + 16) = sub_2273BC014;
  *(v110 + 24) = v106;
  v111 = v125;
  v102(v125, v105, v103);
  v112 = (v99 + 16) & ~v99;
  v113 = (v124 + v112 + 7) & 0xFFFFFFFFFFFFFFF8;
  v114 = swift_allocObject();
  v115 = v129;
  (*(v129 + 32))(v114 + v112, v111, v103);
  v116 = (v114 + v113);
  *v116 = sub_2272B81D4;
  v116[1] = v110;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD260, &qword_227684338);
  sub_227669270();
  v117 = *(v115 + 8);
  v117(v130, v103);
  v117(v128, v103);
  v117(v141, v103);
  v117(v145, v103);
  v117(v144, v103);
  v117(v143, v103);
  v117(v142, v103);
}

uint64_t sub_2273BB3C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = swift_projectBox();
  v13 = a5(0);
  v14 = *(v13 - 8);
  (*(v14 + 16))(v11, a1, v13);
  (*(v14 + 56))(v11, 0, 1, v13);
  swift_beginAccess();
  return sub_226F09BAC(v11, v12, a3, a4);
}

uint64_t sub_2273BB50C@<X0>(char *a6@<X5>, uint64_t a7@<X8>)
{
  v102 = a6;
  v103 = a7;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD258, &qword_227684330);
  MEMORY[0x28223BE20](v7 - 8);
  v91 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v94 = &v89 - v10;
  MEMORY[0x28223BE20](v11);
  v98 = &v89 - v12;
  MEMORY[0x28223BE20](v13);
  v100 = &v89 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v89 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v89 - v19;
  v21 = sub_227666600();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v92 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v95 = &v89 - v25;
  MEMORY[0x28223BE20](v26);
  v96 = &v89 - v27;
  MEMORY[0x28223BE20](v28);
  v99 = &v89 - v29;
  MEMORY[0x28223BE20](v30);
  v101 = &v89 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v89 - v33;
  v35 = swift_projectBox();
  v36 = swift_projectBox();
  v37 = swift_projectBox();
  v97 = swift_projectBox();
  v93 = swift_projectBox();
  v38 = swift_projectBox();
  swift_beginAccess();
  sub_226E93170(v35, v20, &qword_27D7BD258, &qword_227684330);
  v39 = *(v22 + 48);
  if (v39(v20, 1, v21) == 1)
  {
    goto LABEL_2;
  }

  v90 = v38;
  v102 = *(v22 + 32);
  (v102)(v34, v20, v21);
  swift_beginAccess();
  sub_226E93170(v36, v17, &qword_27D7BD258, &qword_227684330);
  if (v39(v17, 1, v21) == 1)
  {
    (*(v22 + 8))(v34, v21);
    goto LABEL_15;
  }

  v40 = v22;
  v41 = v101;
  (v102)(v101, v17, v21);
  swift_beginAccess();
  v20 = v100;
  sub_226E93170(v37, v100, &qword_27D7BD258, &qword_227684330);
  if (v39(v20, 1, v21) == 1)
  {
    v42 = *(v40 + 8);
    v42(v41, v21);
    v42(v34, v21);
LABEL_2:
    v17 = v20;
LABEL_15:
    sub_226E97D1C(v17, &qword_27D7BD258, &qword_227684330);
    v56 = sub_2276636A0();
    sub_226F09790();
    v57 = swift_allocError();
    (*(*(v56 - 8) + 104))(v58, *MEMORY[0x277D500B0], v56);
    *(swift_allocObject() + 16) = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD260, &qword_227684338);
    return sub_227669280();
  }

  v43 = v99;
  (v102)(v99, v20, v21);
  v44 = v97;
  swift_beginAccess();
  v45 = v44;
  v46 = v98;
  sub_226E93170(v45, v98, &qword_27D7BD258, &qword_227684330);
  if (v39(v46, 1, v21) == 1)
  {
    v47 = v46;
    v48 = *(v40 + 8);
    v48(v43, v21);
LABEL_14:
    v48(v41, v21);
    v48(v34, v21);
    v17 = v47;
    goto LABEL_15;
  }

  v49 = v96;
  (v102)(v96, v46, v21);
  v50 = v93;
  swift_beginAccess();
  v51 = v50;
  v52 = v94;
  sub_226E93170(v51, v94, &qword_27D7BD258, &qword_227684330);
  if (v39(v52, 1, v21) == 1)
  {
    v47 = v52;
    v48 = *(v40 + 8);
    v48(v49, v21);
LABEL_13:
    v48(v43, v21);
    goto LABEL_14;
  }

  (v102)(v95, v52, v21);
  v53 = v90;
  swift_beginAccess();
  v54 = v53;
  v55 = v91;
  sub_226E93170(v54, v91, &qword_27D7BD258, &qword_227684330);
  if (v39(v55, 1, v21) == 1)
  {
    v47 = v55;
    v48 = *(v40 + 8);
    v48(v95, v21);
    v48(v49, v21);
    goto LABEL_13;
  }

  (v102)(v92, v55, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD268, &unk_227684340);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB748, &qword_22767ADE0);
  v61 = *(*(v60 - 8) + 72);
  v62 = (*(*(v60 - 8) + 80) + 32) & ~*(*(v60 - 8) + 80);
  v63 = swift_allocObject();
  v100 = v63;
  *(v63 + 16) = xmmword_2276770E0;
  v64 = (v63 + v62);
  v65 = *(v60 + 48);
  sub_227663760();
  *v64 = sub_2276637A0();
  v64[1] = v66;
  v67 = *(v40 + 16);
  v67(v64 + v65, v34, v21);
  v68 = (v64 + v61);
  v69 = *(v60 + 48);
  sub_227663730();
  *v68 = sub_2276637A0();
  v68[1] = v70;
  v67(v64 + v61 + v69, v101, v21);
  v71 = (v64 + 2 * v61);
  v102 = v34;
  v72 = *(v60 + 48);
  sub_227663750();
  *v71 = sub_2276637A0();
  v71[1] = v73;
  v67(v71 + v72, v99, v21);
  v74 = (v64 + 3 * v61);
  v75 = *(v60 + 48);
  sub_227663740();
  *v74 = sub_2276637A0();
  v74[1] = v76;
  v67(v74 + v75, v96, v21);
  v77 = (v64 + 4 * v61);
  v78 = *(v60 + 48);
  sub_227663780();
  *v77 = sub_2276637A0();
  v77[1] = v79;
  v80 = v77 + v78;
  v81 = v95;
  v67(v80, v95, v21);
  v82 = (v64 + 5 * v61);
  v83 = *(v60 + 48);
  sub_227663770();
  *v82 = sub_2276637A0();
  v82[1] = v84;
  v85 = v82 + v83;
  v86 = v92;
  v67(v85, v92, v21);
  v87 = sub_22714B6B8(v100);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(swift_allocObject() + 16) = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD260, &qword_227684338);
  sub_227669280();
  v88 = *(v40 + 8);
  v88(v86, v21);
  v88(v81, v21);
  v88(v96, v21);
  v88(v99, v21);
  v88(v101, v21);
  return (v88)(v102, v21);
}

uint64_t sub_2273BC138(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_2273BC2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2276678F0();
  v7 = sub_2276678D0() & 1;

  sub_2276696A0();
  if (v9 == 1)
  {
    sub_2273BD9E0(v6 & 1 | (v7 << 8), a1, a2);
  }
}

double sub_2273BC378@<D0>(__int16 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, BOOL *a5@<X8>)
{
  v9 = a1;
  if ((a1 & 0x100) != 0)
  {
    swift_beginAccess();
    v15 = *(a4 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 48) = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_2273A6E5C(0, *(v15 + 2) + 1, 1, v15);
      *(a4 + 48) = v15;
    }

    v13 = *(v15 + 2);
    v17 = *(v15 + 3);
    if (v13 >= v17 >> 1)
    {
      v15 = sub_2273A6E5C((v17 > 1), v13 + 1, 1, v15);
    }

    *(v15 + 2) = v13 + 1;
    v18 = &v15[24 * v13];
    v18[32] = v9 & 1;
    v18[33] = 1;
    *(v18 + 5) = a2;
    *(v18 + 6) = a3;
    *(a4 + 48) = v15;
  }

  else
  {
    swift_beginAccess();
    v10 = *(a4 + 56);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 56) = v10;
    if ((v11 & 1) == 0)
    {
      v10 = sub_2273A6E5C(0, *(v10 + 2) + 1, 1, v10);
      *(a4 + 56) = v10;
    }

    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    if (v13 >= v12 >> 1)
    {
      v10 = sub_2273A6E5C((v12 > 1), v13 + 1, 1, v10);
    }

    *(v10 + 2) = v13 + 1;
    v14 = &v10[24 * v13];
    v14[32] = v9 & 1;
    v14[33] = 0;
    *(v14 + 5) = a2;
    *(v14 + 6) = a3;
    *(a4 + 56) = v10;
  }

  swift_endAccess();
  *a5 = v13 == 0;

  return result;
}

void sub_2273BC538(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A640();
  v12 = sub_22766B380();
  v13 = sub_22766C8B0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = a3 & 1;
    _os_log_impl(&dword_226E8E000, v12, v13, "Calling for subscription entitlements with ignoreCaches: %{BOOL}d", v14, 8u);
    MEMORY[0x22AA9A450](v14, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  sub_2276693E0();
  v15 = *(a4 + 40);
  v16 = sub_22766BFD0();

  v17 = swift_allocObject();
  v18 = a3 & 1;
  *(v17 + 16) = v18;
  *(v17 + 24) = a1;
  *(v17 + 32) = a2;
  aBlock[4] = sub_2273BE58C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2273BD198;
  aBlock[3] = &block_descriptor_28;
  v19 = _Block_copy(aBlock);

  [v15 getSubscriptionEntitlementsForSegment:2 ignoreCaches:v18 requestingBundleId:v16 withCacheInfoResultHandler:v19];
  _Block_release(v19);
}

uint64_t sub_2273BC788(unint64_t a1, int a2, int a3, void *a4, int a5, void (*a6)(uint64_t), uint64_t a7)
{
  v113 = a7;
  v114 = a6;
  LODWORD(v110) = a5;
  LODWORD(v109) = a3;
  LODWORD(v108) = a2;
  v9 = sub_227665AD0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v103 - v14;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B28, &unk_227684550);
  MEMORY[0x28223BE20](v112);
  v111 = (&v103 - v16);
  v17 = sub_22766B390();
  v115 = *(v17 - 8);
  v116 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v103 - v21;
  MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v24);
  MEMORY[0x28223BE20](v25);
  v27 = &v103 - v26;
  v31.n128_f64[0] = MEMORY[0x28223BE20](v28);
  v33 = &v103 - v32;
  if (a4)
  {
    v34 = a4;
    sub_22766A640();
    v35 = a4;
    v36 = sub_22766B380();
    v37 = sub_22766C890();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v121[0] = v39;
      *v38 = 136446210;
      swift_getErrorValue();
      v40 = MEMORY[0x22AA995D0](v117, v118);
      v42 = sub_226E97AE8(v40, v41, v121);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_226E8E000, v36, v37, "Failed to fetch subscription entitlements with error: %{public}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x22AA9A450](v39, -1, -1);
      MEMORY[0x22AA9A450](v38, -1, -1);
    }

    v43 = *(v115 + 8);
    v44 = v33;
    v45 = v116;
    v43(v44, v116);
    swift_getErrorValue();
    if (!sub_22706DF60(v119, v120) || (v110 & 1) != 0)
    {
      sub_226F099DC();
      v49 = swift_allocError();
      v51 = 2;
    }

    else
    {
      sub_22766A640();
      v46 = sub_22766B380();
      v47 = sub_22766C890();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_226E8E000, v46, v47, "Interactive action required to fetch subscription entitlements", v48, 2u);
        MEMORY[0x22AA9A450](v48, -1, -1);
      }

      v43(v27, v45);
      sub_226F099DC();
      v49 = swift_allocError();
      v51 = 3;
    }

    *v50 = v51;
    v84 = v111;
    *v111 = v49;
    swift_storeEnumTagMultiPayload();
    v114(v84);

    return sub_226E97D1C(v84, &qword_27D7B9B28, &unk_227684550);
  }

  v52 = v108;
  v105 = v12;
  v106 = v10;
  v107 = v15;
  v110 = v9;
  v53 = v109;
  if (!a1)
  {
    goto LABEL_25;
  }

  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_12;
    }

LABEL_25:
    if (v53)
    {
      sub_22766A640();
      v88 = sub_22766B380();
      v89 = sub_22766C890();
      v90 = os_log_type_enabled(v88, v89);
      v92 = v115;
      v91 = v116;
      if (v90)
      {
        v93 = swift_slowAlloc();
        *v93 = 0;
        _os_log_impl(&dword_226E8E000, v88, v89, "Subscription cache expired", v93, 2u);
        MEMORY[0x22AA9A450](v93, -1, -1);
      }

      (*(v92 + 8))(v22, v91);
      sub_226F099DC();
      v94 = swift_allocError();
      v96 = 1;
    }

    else
    {
      sub_22766A640();
      v97 = sub_22766B380();
      v98 = sub_22766C890();
      v99 = os_log_type_enabled(v97, v98);
      v101 = v115;
      v100 = v116;
      if (v99)
      {
        v102 = swift_slowAlloc();
        *v102 = 0;
        _os_log_impl(&dword_226E8E000, v97, v98, "No subscription entitlements returned", v102, 2u);
        MEMORY[0x22AA9A450](v102, -1, -1);
      }

      (*(v101 + 8))(v19, v100);
      sub_226F099DC();
      v94 = swift_allocError();
      v96 = 4;
    }

    *v95 = v96;
    v84 = v111;
    *v111 = v94;
    swift_storeEnumTagMultiPayload();
    v114(v84);
    return sub_226E97D1C(v84, &qword_27D7B9B28, &unk_227684550);
  }

  v86 = v29;
  v87 = v30;
  result = sub_22766CD20();
  v30 = v87;
  v29 = v86;
  if (!result)
  {
    goto LABEL_25;
  }

LABEL_12:
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v55 = v30;
    v56 = v29;
    v57 = v52;
    v58 = *(a1 + 32);
    if ((v53 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v55 = v30;
  v56 = v29;
  v58 = MEMORY[0x22AA991A0](0, a1, v31);
  v57 = v52;
  if (v53)
  {
LABEL_15:
    sub_22766A640();
    v59 = v58;
    v60 = v55;
    v61 = sub_22766B380();
    v62 = sub_22766C8B0();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v63 = 138543362;
      *(v63 + 4) = v59;
      *v64 = v59;
      v65 = v59;
      _os_log_impl(&dword_226E8E000, v61, v62, "Creating subscription with expired cached entitlement: %{public}@", v63, 0xCu);
      sub_226E97D1C(v64, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v64, -1, -1);
      MEMORY[0x22AA9A450](v63, -1, -1);
    }

    (*(v115 + 8))(v60, v116);
  }

LABEL_18:
  v66 = v58;
  v67 = v107;
  sub_2272B9020(v66, v57 & 1, v107);
  v68 = v56;
  sub_22766A640();
  v70 = v105;
  v69 = v106;
  v71 = v110;
  v109 = *(v106 + 16);
  v109(v105, v67, v110);
  v108 = v68;
  v72 = sub_22766B380();
  v73 = sub_22766C8B0();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = v70;
    v103 = swift_slowAlloc();
    v121[0] = v103;
    *v74 = 136446210;
    sub_2273BE5E4();
    v76 = sub_22766D140();
    v104 = v66;
    v78 = v77;
    v79 = *(v69 + 8);
    v79(v75, v110);
    v80 = sub_226E97AE8(v76, v78, v121);
    v66 = v104;

    *(v74 + 4) = v80;
    _os_log_impl(&dword_226E8E000, v72, v73, "Subscription entitlement received: %{public}s", v74, 0xCu);
    v81 = v103;
    __swift_destroy_boxed_opaque_existential_0(v103);
    MEMORY[0x22AA9A450](v81, -1, -1);
    v82 = v74;
    v67 = v107;
    v71 = v110;
    MEMORY[0x22AA9A450](v82, -1, -1);

    v83 = v79;
  }

  else
  {

    v83 = *(v69 + 8);
    v83(v70, v71);
  }

  (*(v115 + 8))(v108, v116);
  v85 = v111;
  v109(v111, v67, v71);
  swift_storeEnumTagMultiPayload();
  v114(v85);

  sub_226E97D1C(v85, &qword_27D7B9B28, &unk_227684550);
  return (v83)(v67, v71);
}

double sub_2273BD198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_2273BE598();
    v8 = sub_22766C2C0();
  }

  v10 = a5;
  v9(v8, a3, a4, a5);

  return result;
}

uint64_t sub_2273BD248(void *a1, char a2, char a3, uint64_t a4)
{
  if (a2 & 1) != 0 || (a3)
  {
    goto LABEL_12;
  }

  swift_getErrorValue();
  v6 = sub_22766D280();
  v8 = v7;
  sub_226F099DC();
  if (v6 == sub_22766D280() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_22766D190();

    if ((v11 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  swift_getErrorValue();
  v12 = sub_22766D270();
  if (v12 == sub_22766D270())
  {
    v13 = swift_allocObject();
    *(v13 + 16) = 1;
    *(v13 + 24) = a4;
    sub_227665AD0();

    return sub_227669270();
  }

LABEL_12:
  *(swift_allocObject() + 16) = a1;
  v15 = a1;
  sub_227665AD0();
  return sub_227669280();
}

void *sub_2273BD428(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  sub_227669010();
  sub_227669010();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD280, &qword_227684418);
  sub_2276696A0();
  v5 = *(v10 + 16);
  if (v5)
  {
    v6 = v10 + 48;
    do
    {
      v7 = *(v6 - 8);

      v7(a1);

      v6 += 24;
      --v5;
    }

    while (v5);
  }

  MEMORY[0x28223BE20](v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD288, &unk_227684420);
  result = sub_2276696A0();
  if (v11)
  {
    sub_2273BD9E0(v10 & 0x101, v11, v12);
    return sub_2273BE69C(v10, v11, v12);
  }

  return result;
}

void sub_2273BD5EC(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, void *a5@<X8>)
{
  v5 = a2;
  v6 = a1;
  if (a1)
  {
    v8 = (a2 + 56);
  }

  else
  {
    v8 = (a2 + 48);
  }

  swift_beginAccess();
  v9 = *v8;
  v10 = *(*v8 + 16);

  if (v10)
  {
    v40 = v6;
    v41 = v5;
    v42 = a5;
    v11 = 0;
    v12 = v9 + 32;
    v43 = v10 - 1;
    v45 = MEMORY[0x277D84F90];
    do
    {
      v13 = (v12 + 24 * v11);
      v14 = v11;
      while (1)
      {
        if (v14 >= *(v9 + 16))
        {
          __break(1u);
          goto LABEL_37;
        }

        v15 = *v13;
        v16 = v13[1];
        v18 = *(v13 + 1);
        v17 = *(v13 + 2);
        if (a3)
        {
          break;
        }

        v19 = sub_227669010();
        if (v19 == sub_227669010())
        {
          goto LABEL_13;
        }

        ++v14;

        v13 += 24;
        if (v10 == v14)
        {
          goto LABEL_18;
        }
      }

LABEL_13:
      v20 = v45;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_226F20688(0, *(v45 + 16) + 1, 1);
        v20 = v45;
      }

      v22 = *(v20 + 16);
      v21 = *(v20 + 24);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        sub_226F20688((v21 > 1), v22 + 1, 1);
        v23 = v22 + 1;
        v20 = v45;
      }

      *(v20 + 16) = v23;
      v45 = v20;
      v24 = v20 + 24 * v22;
      *(v24 + 32) = v15;
      v11 = v14 + 1;
      *(v24 + 33) = v16;
      *(v24 + 40) = v18;
      *(v24 + 48) = v17;
      v12 = v9 + 32;
    }

    while (v43 != v14);
LABEL_18:
    v25 = 0;
    v26 = v9 + 32;
    v44 = MEMORY[0x277D84F90];
LABEL_19:
    v27 = (v26 + 24 * v25);
    v28 = v25;
    while (v28 < *(v9 + 16))
    {
      if ((a3 & 1) == 0)
      {
        v30 = *(v27 + 1);
        v29 = *(v27 + 2);
        v31 = v27[1];
        v32 = *v27;

        v33 = sub_227669010();
        if (v33 != sub_227669010())
        {
          v34 = v44;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_226F20688(0, *(v44 + 16) + 1, 1);
            v34 = v44;
          }

          v36 = *(v34 + 16);
          v35 = *(v34 + 24);
          v37 = v36 + 1;
          if (v36 >= v35 >> 1)
          {
            sub_226F20688((v35 > 1), v36 + 1, 1);
            v37 = v36 + 1;
            v34 = v44;
          }

          *(v34 + 16) = v37;
          v44 = v34;
          v38 = v34 + 24 * v36;
          *(v38 + 32) = v32;
          v25 = v28 + 1;
          *(v38 + 33) = v31;
          *(v38 + 40) = v30;
          *(v38 + 48) = v29;
          v26 = v9 + 32;
          if (v43 == v28)
          {
LABEL_30:
            a5 = v42;
            v5 = v41;
            v6 = v40;
            goto LABEL_32;
          }

          goto LABEL_19;
        }
      }

      ++v28;
      v27 += 24;
      if (v10 == v28)
      {
        goto LABEL_30;
      }
    }

LABEL_37:
    __break(1u);
  }

  else
  {
    v44 = MEMORY[0x277D84F90];
    v45 = MEMORY[0x277D84F90];
LABEL_32:

    if (v6)
    {
      v39 = (v5 + 56);
    }

    else
    {
      v39 = (v5 + 48);
    }

    swift_beginAccess();
    *v39 = v44;

    *a5 = v45;
  }
}

void sub_2273BD940(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1)
  {
    v4 = (a2 + 48);
  }

  else
  {
    v4 = (a2 + 56);
  }

  swift_beginAccess();
  v5 = *v4;
  if (*(*v4 + 16))
  {
    v6 = *(v5 + 32);
    v7 = *(v5 + 33);
    v8 = *(v5 + 40);
    v9 = 256;
    if (!v7)
    {
      v9 = 0;
    }

    v10 = v9 | v6;
  }

  else
  {
    v10 = 0;
    v8 = 0;
    v11 = 0;
  }

  *a3 = v10;
  a3[1] = v8;
  a3[2] = v11;
}

uint64_t sub_2273BD9E0(__int16 a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = a2;
  v36 = a3;
  v5 = a1;
  v34 = a1 & 0x100;
  v6 = v34 == 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  MEMORY[0x28223BE20](v14);
  v32 = &v32 - v15;
  v33 = v5 & 1;
  v16 = sub_227669010();
  v17 = v16 == sub_227669010();
  v18 = swift_allocObject();
  *(v18 + 16) = v6;
  *(v18 + 24) = v4;
  sub_227665AD0();

  sub_227669270();
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 17) = v6;
  *(v19 + 24) = v4;
  (*(v8 + 16))(v10, v13, v7);
  v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v8 + 32))(v22 + v20, v10, v7);
  v23 = (v22 + v21);
  *v23 = sub_2273BE49C;
  v23[1] = v19;

  v24 = v32;
  sub_227669270();
  v25 = *(v8 + 8);
  v25(v13, v7);
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  v28 = BYTE1(v34);
  *(v27 + 24) = v33;
  *(v27 + 25) = v28;
  *(v27 + 32) = v35;
  *(v27 + 40) = v36;

  v29 = sub_227669290();
  v30 = swift_allocObject();
  *(v30 + 16) = sub_2273BE568;
  *(v30 + 24) = v27;

  v29(sub_226E93814, v30);

  return (v25)(v24, v7);
}

uint64_t sub_2273BDD68(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2273BD428(a1, a3 & 0x101, a4, a5);
  }

  return result;
}

uint64_t sub_2273BDDF8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2273BDE84(uint64_t a1)
{
  v3 = sub_227667900();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = *v1;
  (*(v4 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v6);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v8, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  *(v9 + ((v5 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  sub_227665AD0();

  return sub_227669270();
}

void sub_2273BDFE8(BOOL *a2@<X8>)
{
  swift_beginAccess();

  v4 = sub_2273BE408(v3);

  swift_beginAccess();

  v6 = sub_2273BE408(v5);

  *a2 = v4 || v6;
}

uint64_t sub_2273BE0F8(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_227667900() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2273BC2A8(a1, a2, v2 + v6, v7);
}

double sub_2273BE1A4@<D0>(BOOL *a1@<X8>)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_2273BC378(v2 | *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), a1);
}

uint64_t sub_2273BE1F8(char a1, void *a2)
{
  v3 = v2;
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D84F90];
  *(v3 + 48) = MEMORY[0x277D84F90];
  *(v3 + 56) = v10;
  sub_22766A730();
  v11 = sub_22766B380();
  v12 = sub_22766C8B0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_226E8E000, v11, v12, "Allocated subscription provider", v13, 2u);
    MEMORY[0x22AA9A450](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  *(v3 + 16) = [objc_allocWithZone(type metadata accessor for ServiceSubscriptionDialogObserver()) init];
  sub_2276696C0();
  swift_allocObject();
  *(v3 + 24) = sub_2276696B0();
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  *(*(v3 + 16) + OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionDialogObserver_dataSource + 8) = &off_283AB6780;
  swift_unknownObjectWeakAssign();
  v14 = objc_opt_self();
  v15 = a2;
  v16 = [v14 defaultCenter];
  [v16 setDialogObserver_];

  return v3;
}

BOOL sub_2273BE408(uint64_t a1)
{
  v1 = a1 + 48;
  v2 = *(a1 + 16) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = v1 + 24;

    v4 = sub_227669010();
    v5 = sub_227669010();

    v1 = v3;
  }

  while (v4 != v5);
  return v2 != 0;
}

uint64_t sub_2273BE4AC(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_2273BFC3C(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_2273BE568(uint64_t a1)
{
  if (*(v1 + 25))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_2273BDD68(a1, *(v1 + 16), v2 | *(v1 + 24), *(v1 + 32), *(v1 + 40));
}

unint64_t sub_2273BE598()
{
  result = qword_281398A68;
  if (!qword_281398A68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281398A68);
  }

  return result;
}

unint64_t sub_2273BE5E4()
{
  result = qword_28139B758;
  if (!qword_28139B758)
  {
    sub_227665AD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B758);
  }

  return result;
}

uint64_t sub_2273BE69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2273BE718(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ScriptLinkState(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v13[-v8];
  v10 = *a2;
  swift_beginAccess();
  sub_226EA81F8(a1 + v10, v9);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result != 2)
    {
      return result;
    }

    sub_226EA4FC0(v9);
  }

  else
  {
    if (!result)
    {
      return sub_226EA4FC0(v9);
    }

    v12 = sub_22766B5F0();
    (*(*(v12 - 8) + 8))(v9, v12);
  }

  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_226EA4F5C(v6, a1 + v10);
  return swift_endAccess();
}

uint64_t sub_2273BE8D4(void *a1, const char *a2, ...)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  v9 = a1;
  v10 = sub_22766B380();
  v11 = sub_22766C890();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20[0] = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v20[1] = v2;
    v15 = v14;
    v21 = v14;
    *v13 = 136446210;
    swift_getErrorValue();
    v16 = MEMORY[0x22AA995D0](v20[3], v20[4]);
    v18 = sub_226E97AE8(v16, v17, &v21);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_226E8E000, v10, v11, v20[0], v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AA9A450](v15, -1, -1);
    MEMORY[0x22AA9A450](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_2273BEAB4(uint64_t a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 128) == 1)
  {
    v6 = *(a1 + 120);
    v7 = v6 != 0;
    v8 = v6 - 1;
    if (v8)
    {
      if (v7)
      {
        *(a1 + 120) = v8;
        *(a1 + 128) = 1;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      sub_22766A730();
      v17 = "_linkDeactivationInterval";
      sub_22766B370();
      v9 = *(v3 + 8);
      v9(v5, v2);
      v10 = *(a1 + 120);
      *(a1 + 120) = 0;
      v11 = *(a1 + 128);
      *(a1 + 128) = 2;
      sub_226E972B0(v10, v11);
      sub_22766A730();
      sub_22766B370();
      v12 = (v9)(v5, v2);
      MEMORY[0x28223BE20](v12);
      sub_2276696A0();
      sub_22766A730();
      sub_22766B370();
      v9(v5, v2);
      sub_2276696A0();
      __swift_project_boxed_opaque_existential_0((a1 + 72), *(a1 + 96));
      v18 = 24;
      sub_226F19410();
      sub_226F19464();
      sub_22766A120();
    }
  }

  else
  {
    sub_22766A730();
    sub_22766B370();
    v13 = *(v3 + 8);
    v13(v5, v2);
    v14 = *(a1 + 120);
    *(a1 + 120) = 0;
    v15 = *(a1 + 128);
    *(a1 + 128) = 2;
    sub_226E972B0(v14, v15);
    sub_22766A730();
    sub_22766B370();
    v16 = (v13)(v5, v2);
    MEMORY[0x28223BE20](v16);
    sub_2276696A0();
    sub_22766A730();
    sub_22766B370();
    v13(v5, v2);
    sub_2276696A0();
  }
}

uint64_t sub_2273BEFCC()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  __swift_destroy_boxed_opaque_existential_0((v0 + 72));

  sub_226E972B0(*(v0 + 120), *(v0 + 128));
  v1 = OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ScriptConnection(uint64_t a1)
{
  result = qword_2813A2FF8;
  if (!qword_2813A2FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2273BF0FC(uint64_t a1)
{
  sub_2273BF1C0();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2273BF1C0()
{
  if (!qword_2813A54A0)
  {
    v0 = sub_227669750();
    if (!v1)
    {
      atomic_store(v0, &qword_2813A54A0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_15SeymourServices16ScriptConnectionC5StateO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_2273BF23C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2273BF284(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2273BF2C8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

id sub_2273BF354(id result, char a2)
{
  if (!a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_2273BF364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  __swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2273C0E88;
  *(v11 + 24) = v10;

  sub_2274E9324(a1, sub_2273C0E94, v11);

  v12 = *(v4 + 24);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = v13;
  __swift_project_boxed_opaque_existential_0((v12 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v12 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v15 = swift_allocObject();
  *(v15 + 16) = sub_2273C0F20;
  *(v15 + 24) = v14;

  sub_2274E9324(a1, sub_2273C0F5C, v15);
}

uint64_t sub_2273BF554(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2276696A0();
  }

  return result;
}

uint64_t sub_2273BF65C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a1;

  v10 = a1;

  return sub_227669270();
}

uint64_t sub_2273BF728(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;

  v11 = a1;
  a5(0);

  return sub_227669270();
}

void sub_2273BF7CC(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v7, a5);
  v6 = v7;
  v8 = 0;
  a1(&v7);

  sub_226EB4548(v6, 0);
}

void sub_2273BF860(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v7, a5);
  v6 = v7;
  v7 = v7;
  v8 = 0;
  a1(&v7);

  sub_226EB4548(v6, 0);
}

uint64_t sub_2273BF8F4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, double), uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v22[0] = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v22 - v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v22 - v19;
  a3(a5, v18);
  swift_storeEnumTagMultiPayload();
  sub_226E95D18(v13, v16, a6, a7);
  sub_226E95D18(v16, v20, a6, a7);
  (v22[0])(v20);
  return sub_226E97D1C(v20, a6, a7);
}

uint64_t sub_2273BFCD4(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v21[1] = a5;
  v22 = a2;
  v23 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8400, &unk_227670840);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD630, &unk_227684CC0);
  MEMORY[0x28223BE20](v11);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (v21 - v15);
  sub_226E93170(a1, v21 - v15, &unk_27D7BD630, &unk_227684CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    a4(*v16);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = v22;
    *(v19 + 24) = v23;

    v18(sub_226E93814, v19);

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    sub_2273C0D6C(v16, v13, type metadata accessor for MetricServiceSubscriptionState);
    swift_storeEnumTagMultiPayload();
    v22(v13);
    return sub_226E97D1C(v13, &unk_27D7BD630, &unk_227684CC0);
  }
}

uint64_t sub_2273BFF54(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v22[1] = a5;
  v23 = a2;
  v24 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB78, &qword_22767BC10);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD450, &qword_227684B70);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (v22 - v15);
  sub_226E93170(a1, v22 - v15, &unk_27D7BD450, &qword_227684B70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    a4(*v16);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_226E93814, v19);

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    v21 = sub_227667670();
    (*(*(v21 - 8) + 32))(v13, v16, v21);
    swift_storeEnumTagMultiPayload();
    v23(v13);
    return sub_226E97D1C(v13, &unk_27D7BD450, &qword_227684B70);
  }
}

uint64_t sub_2273C01F0(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *, double), uint64_t a4, void (*a5)(uint64_t, double), uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v23 - v18;
  if (a2)
  {
    a5(a1, v17);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    *(v21 + 24) = a4;

    v20(a10, v21);

    return (*(v16 + 8))(v19, v15);
  }

  else
  {
    v23 = a1;
    v24 = 0;
    return a3(&v23, v17);
  }
}

uint64_t sub_2273C0364(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v21[1] = a5;
  v22 = a2;
  v23 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD3C0, &qword_22767FE60);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  MEMORY[0x28223BE20](v11);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (v21 - v15);
  sub_226E93170(a1, v21 - v15, &qword_27D7B9628, &unk_227674860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    a4(*v16);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = v22;
    *(v19 + 24) = v23;

    v18(sub_226E93814, v19);

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    sub_2273C0D6C(v16, v13, type metadata accessor for AssetLoaderResponse);
    swift_storeEnumTagMultiPayload();
    v22(v13);
    return sub_226E97D1C(v13, &qword_27D7B9628, &unk_227674860);
  }
}

uint64_t sub_2273C05E4(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v22[1] = a5;
  v23 = a2;
  v24 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96C0, &unk_227684560);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD650, &qword_227684CF0);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (v22 - v15);
  sub_226E93170(a1, v22 - v15, &qword_27D7BD650, &qword_227684CF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    a4(*v16);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_226E93814, v19);

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    v21 = sub_227666130();
    (*(*(v21 - 8) + 32))(v13, v16, v21);
    swift_storeEnumTagMultiPayload();
    v23(v13);
    return sub_226E97D1C(v13, &qword_27D7BD650, &qword_227684CF0);
  }
}

uint64_t sub_2273C0880(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v22[1] = a5;
  v23 = a2;
  v24 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B28, &unk_227684550);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (v22 - v15);
  sub_226E93170(a1, v22 - v15, &qword_27D7B9B28, &unk_227684550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    a4(*v16);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_226E93814, v19);

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    v21 = sub_227665AD0();
    (*(*(v21 - 8) + 32))(v13, v16, v21);
    swift_storeEnumTagMultiPayload();
    v23(v13);
    return sub_226E97D1C(v13, &qword_27D7B9B28, &unk_227684550);
  }
}

void sub_2273C0B1C(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *, double))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD500, &qword_227684C20);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  if (a2)
  {
    a5(a1, v12);
    v15 = sub_227669290();
    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = a4;

    v15(sub_2270A71F0, v16);

    (*(v11 + 8))(v14, v10);
  }

  else
  {
    v17 = a1;
    v18 = 0;

    a3(&v17);
    sub_226F38F34(a1, 0);
  }
}

uint64_t sub_2273C0D6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_68Tm_1(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

id sub_2273C0F60()
{
  v1 = sub_22766AF40();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226E99364(0, &qword_281398B10, 0x277CBC5F8);
  v26 = v0;
  sub_2276694C0();
  sub_22766C000();
  v5 = sub_22766C8F0();
  sub_226E99364(0, &qword_281398B90, 0x277CBC5D0);
  sub_22766AF90();
  v30 = v5;
  v6 = sub_22766C7E0();
  v28 = sub_226E99364(0, &qword_281398A20, 0x277CBC5A0);
  sub_22766AF90();
  v29 = v6;
  v7 = sub_22766CAF0();
  v25 = v7;
  v27 = type metadata accessor for SyncEncryptionKey(0);
  v8 = MEMORY[0x277CC9318];
  sub_22766B470();
  v9 = v31;
  v10 = v32;
  v11 = [v7 encryptedValues];
  v20[1] = swift_getObjectType();
  v12 = *MEMORY[0x277D544E8];
  v24 = *(v2 + 104);
  v21 = v1;
  v24(v4, v12, v1);
  sub_22766AF30();
  v13 = *(v2 + 8);
  v22 = v2 + 8;
  v23 = v13;
  v13(v4, v1);
  v33 = v8;
  v34 = MEMORY[0x277CBBBE0];
  v31 = v9;
  v32 = v10;
  sub_226F5E0B4(v9, v10);
  sub_22766C9F0();
  sub_226EDC420(v9, v10);
  swift_unknownObjectRelease();
  v14 = sub_22766BFD0();
  v15 = v25;
  [v25 setEtag_];

  v16 = v21;
  v24(v4, *MEMORY[0x277D544E0], v21);
  sub_22766AF30();
  v23(v4, v16);
  v17 = sub_227662770();
  v33 = MEMORY[0x277D837D0];
  v34 = MEMORY[0x277CBBE08];
  v31 = v17;
  v32 = v18;
  sub_22766C9F0();

  return v15;
}

void sub_2273C12F4(void *a1@<X0>, char *a2@<X8>)
{
  v62 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  MEMORY[0x28223BE20](v3 - 8);
  v63 = &v53 - v4;
  v5 = sub_2276627D0();
  v64 = *(v5 - 8);
  v65 = v5;
  MEMORY[0x28223BE20](v5);
  v61 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_22766AF40();
  v7 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8460, qword_2276709E0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v53 - v13;
  v15 = sub_2276694E0();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v69 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1;
  v20 = [a1 recordID];
  v21 = [v20 zoneID];

  v22 = [v21 zoneName];
  sub_22766C000();

  sub_2276694B0();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_226E97D1C(v14, &qword_27D7B8460, qword_2276709E0);
    sub_226F1893C();
    swift_allocError();
    *v23 = 9;
    swift_willThrow();

    return;
  }

  v55 = *(v16 + 32);
  v56 = v16 + 32;
  v55(v69, v14, v15);
  v24 = v19;
  v25 = [v19 encryptedValues];
  v67 = v15;
  ObjectType = swift_getObjectType();
  v26 = *MEMORY[0x277D544E8];
  v27 = v68;
  v58 = *(v7 + 104);
  v58(v11, v26, v68);
  sub_22766AF30();
  v28 = *(v7 + 8);
  v59 = v7 + 8;
  v57 = v28;
  v28(v11, v27);
  sub_22766CA00();
  v29 = v67;

  swift_unknownObjectRelease();
  v30 = v71;
  if (v71 >> 60 != 15)
  {
    v31 = v16;
    v32 = v70;
    v33 = [v24 etag];
    if (v33)
    {
      ObjectType = v32;
      v34 = v33;
      v54 = sub_22766C000();
      v36 = v35;

      v37 = v66;
      v58(v66, *MEMORY[0x277D544E0], v27);
      v38 = sub_22766AF30();
      v39 = v24;
      v41 = v40;
      v57(v37, v27);
      v42 = MEMORY[0x22AA98E20](v38, v41);

      if (v42 && (v72 = v42, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD298, &unk_2276845E0), (swift_dynamicCast() & 1) != 0))
      {
        v68 = v36;
        v43 = v63;
        sub_227662760();

        v45 = v64;
        v44 = v65;
        if ((*(v64 + 48))(v43, 1, v65) != 1)
        {
          v47 = *(v45 + 32);
          v48 = v61;
          v47(v61, v43, v44);
          v70 = ObjectType;
          v71 = v30;
          v49 = type metadata accessor for SyncEncryptionKey(0);
          v50 = v62;
          sub_22766B490();

          v55(v50, v69, v67);
          v47(&v50[*(v49 + 28)], v48, v44);
          v51 = &v50[*(v49 + 24)];
          v52 = v68;
          *v51 = v54;
          v51[1] = v52;
          return;
        }

        sub_226FB1424(ObjectType, v30);

        sub_226E97D1C(v43, &unk_27D7BB9D0, &qword_227671550);
      }

      else
      {

        sub_226FB1424(ObjectType, v30);
      }

      v24 = v39;
    }

    else
    {
      sub_226FB1424(v32, v30);
    }

    v29 = v67;
    v16 = v31;
  }

  sub_226F1893C();
  swift_allocError();
  *v46 = 7;
  swift_willThrow();

  (*(v16 + 8))(v69, v29);
}

uint64_t sub_2273C19F0(uint64_t a1, uint64_t a2)
{
  sub_22766D370();
  sub_22766BF60();
  return sub_22766D3F0();
}

uint64_t sub_2273C1A48(uint64_t a1, uint64_t a2)
{
  sub_22766B470();
  sub_2276694E0();
  sub_2273C1DF8(&qword_2813A54D0, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]);
  sub_22766BF60();
  sub_22766C100();
  sub_2276627D0();
  sub_2273C1DF8(&qword_28139BDA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_22766BF60();
}

uint64_t sub_2273C1B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22766D370();
  sub_22766BF60();
  return sub_22766D3F0();
}

uint64_t type metadata accessor for SyncEncryptionKey(uint64_t a1)
{
  result = qword_28139AA40;
  if (!qword_28139AA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2273C1C98(uint64_t a1, uint64_t a2)
{
  sub_2276694E0();
  sub_2273C1DF8(&qword_28139B260, MEMORY[0x277D53DA0], MEMORY[0x277D53DB8]);
  sub_22766C290();
  sub_22766C290();
  if (v16 == v14 && v17 == v15)
  {
  }

  else
  {
    v5 = sub_22766D190();

    if ((v5 & 1) == 0)
    {
LABEL_15:
      v12 = 0;
      return v12 & 1;
    }
  }

  v6 = type metadata accessor for SyncEncryptionKey(0);
  if ((MEMORY[0x22AA977A0](a1 + *(v6 + 20), a2 + *(v6 + 20)) & 1) == 0)
  {
    goto LABEL_15;
  }

  v7 = *(v6 + 24);
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v8 == *v10 && v9 == v10[1];
  if (!v11 && (sub_22766D190() & 1) == 0)
  {
    goto LABEL_15;
  }

  v12 = sub_2276627A0();
  return v12 & 1;
}

uint64_t sub_2273C1DF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2273C1E68(uint64_t a1)
{
  result = sub_2276694E0();
  if (v2 <= 0x3F)
  {
    result = sub_22766B4C0();
    if (v3 <= 0x3F)
    {
      result = sub_2276627D0();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

id MetricEnvironmentDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MetricEnvironmentDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricEnvironmentDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2273C20F8(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v8 = MEMORY[0x277D84F90];
    sub_226F1FB68(0, i & ~(i >> 63), 0);
    v4 = v8;
    if (v2)
    {
      v2 = sub_22766CD20();
      if (!v2)
      {
        return v4;
      }
    }

    else
    {
      v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v2)
      {
        return v4;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(a1 + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    ;
  }

  v5 = MEMORY[0x22AA991A0](0, a1);
LABEL_10:
  v6 = v5;
  sub_227662750();
  sub_22766BEA0();

  return 0;
}

uint64_t sub_2273C2290(uint64_t a1)
{
  v2 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  sub_226F1FC48(0, v2, 0);
  v3 = v9;
  if (v2)
  {
    for (i = a1 + 32; ; i += 8)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB9E0, &unk_22767B668);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC940, &qword_22767F830);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_226F1FC48((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_2273C23F0(unint64_t a1, void (*a2)(void, uint64_t, void), uint64_t a3)
{
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v11 = MEMORY[0x277D84F90];
    a2(0, i & ~(i >> 63), 0);
    v7 = v11;
    if (v5)
    {
      if (!sub_22766CD20())
      {
        return v7;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v7;
    }

    v5 = a1 & 0xFFFFFFFFFFFFFF8;
    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v8 = *(a1 + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    ;
  }

  v8 = MEMORY[0x22AA991A0](0, a1);
LABEL_10:
  v9 = v8;
  sub_22766BEA0();

  return 0;
}

void WorkoutPlanSchedule.metricScaffold.getter(uint64_t a1)
{
  v1 = sub_227665BE0();
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
LABEL_9:
    sub_227667400();

    v9 = sub_22766C310();
    v10 = sub_2273C2290(v9);

    if (v10)
    {
      v11 = sub_2276692E0();
      sub_2273C2874(v10, v11, v12);
    }

    v5 &= v5 - 1;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

_OWORD *sub_2273C272C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v24 = v10;
  v11 = sub_226E9BF6C(a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v12;
  if (v10[3] < v16)
  {
    sub_226FE5DE4(v16, isUniquelyReferenced_nonNull_native);
    v11 = sub_226E9BF6C(a2);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    v11 = sub_22766D220();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v21 = v11;
    sub_226FF1D00();
    v11 = v21;
    v18 = v24;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    v22 = v11;
    sub_226EA1E2C(a2, v23);
    result = sub_227366408(v22, v23, a1, v18);
    *a3 = 0u;
    a3[1] = 0u;
    goto LABEL_11;
  }

LABEL_6:
  v18 = v24;
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v19 = 32 * v11;
  sub_226F04970((v18[7] + 32 * v11), a3);
  result = sub_226F04970(a1, (v18[7] + v19));
LABEL_11:
  *v5 = v18;
  return result;
}

uint64_t sub_2273C2874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v11 = sub_226E92000(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v12;
  if (v10[3] < v16)
  {
    sub_226FE6DAC(v16, isUniquelyReferenced_nonNull_native);
    v11 = sub_226E92000(a2, a3);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    v11 = sub_22766D220();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v20 = v11;
    sub_226FF23EC();
    v11 = v20;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_22736CCBC();

    v19 = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v18 = v10[7];
  v19 = *(v18 + 8 * v11);
  *(v18 + 8 * v11) = a1;
LABEL_11:
  *v5 = v10;
  return v19;
}

uint64_t sub_2273C29B4()
{
  sub_22766D370();
  sub_22766D3C0();
  return sub_22766D3F0();
}

uint64_t sub_2273C2A2C(uint64_t a1)
{
  sub_22766D370();
  sub_22766D3C0();
  return sub_22766D3F0();
}

uint64_t sub_2273C2A70@<X0>(Swift::Int32 *a1@<X0>, SeymourServices::SQLiteDatabaseError_optional *a2@<X8>)
{
  result = _s15SeymourServices19SQLiteDatabaseErrorO8rawValueACSgs5Int32V_tcfC_0(*a1);
  a2->value = result;
  return result;
}

uint64_t sub_2273C2AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2273C2CC0();
  v5 = sub_22722E01C();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t _s15SeymourServices19SQLiteDatabaseErrorO8rawValueACSgs5Int32V_tcfC_0(int a1)
{
  if ((a1 - 1) >= 0x1C)
  {
    return 28;
  }

  else
  {
    return (a1 - 1);
  }
}

unint64_t sub_2273C2B1C()
{
  result = qword_27D7BD2A8;
  if (!qword_27D7BD2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BD2A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SQLiteDatabaseError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE5)
  {
    goto LABEL_17;
  }

  if (a2 + 27 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 27) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 27;
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

      return (*a1 | (v4 << 8)) - 27;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 27;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v8 = v6 - 28;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SQLiteDatabaseError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE5)
  {
    v4 = 0;
  }

  if (a2 > 0xE4)
  {
    v5 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
    *result = a2 + 27;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2273C2CC0()
{
  result = qword_27D7BD2B0;
  if (!qword_27D7BD2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BD2B0);
  }

  return result;
}

uint64_t sub_2273C2D14(uint64_t a1)
{
  v34 = sub_227663480();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v26 = v1;
    v38 = MEMORY[0x277D84F90];
    sub_226F1EF90();
    v37 = v38;
    v7 = a1 + 56;
    result = sub_22766CC90();
    v8 = result;
    v9 = 0;
    v31 = v3 + 8;
    v32 = v3 + 16;
    v27 = a1 + 64;
    v28 = v5;
    v29 = v3;
    v30 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v35 = *(a1 + 36);
      v12 = v33;
      v13 = v34;
      (*(v3 + 16))(v33, *(a1 + 48) + *(v3 + 72) * v8, v34);
      v36 = sub_227663410();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v37;
      v38 = v37;
      v17 = *(v37 + 16);
      if (v17 >= *(v37 + 24) >> 1)
      {
        result = sub_226F1EF90();
        v16 = v38;
      }

      *(v16 + 16) = v17 + 1;
      v18 = v16 + 16 * v17;
      *(v18 + 32) = v36;
      *(v18 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v30;
      v19 = *(v30 + 8 * v11);
      if ((v19 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v37 = v16;
      if (v35 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v8 & 0x3F));
      if (v20)
      {
        v10 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v29;
      }

      else
      {
        v21 = v11 << 6;
        v22 = v11 + 1;
        v23 = (v27 + 8 * v11);
        v3 = v29;
        while (v22 < (v10 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_226EB526C(v8, v35, 0);
            v10 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v8, v35, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v28)
      {
        return v37;
      }
    }

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

uint64_t sub_2273C301C(uint64_t a1)
{
  v3 = sub_227663480();
  MEMORY[0x28223BE20](v3);
  v36 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v30 - v7;
  v9 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v9)
  {
    v30[1] = v1;
    v43 = MEMORY[0x277D84F90];
    v37 = v6;
    sub_226F1F568(0, v9, 0);
    v11 = v37;
    v41 = a1 + 56;
    v42 = v43;
    result = sub_22766CC90();
    v12 = result;
    v13 = 0;
    v34 = v11 + 8;
    v35 = v11 + 16;
    v32 = v9;
    v33 = v11 + 32;
    v31 = a1 + 64;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      if ((*(v41 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      v38 = v13;
      v39 = *(a1 + 36);
      v40 = v12 >> 6;
      v15 = *(v11 + 72);
      v16 = v36;
      (*(v11 + 16))(v36, *(a1 + 48) + v15 * v12, v3);
      sub_227663470();
      v11 = v37;
      (*(v37 + 8))(v16, v3);
      v17 = v42;
      v43 = v42;
      v18 = v8;
      v19 = a1;
      v21 = *(v42 + 16);
      v20 = *(v42 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_226F1F568((v20 > 1), v21 + 1, 1);
        v11 = v37;
        v17 = v43;
      }

      *(v17 + 16) = v21 + 1;
      v22 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v42 = v17;
      result = (*(v11 + 32))(v17 + v22 + v21 * v15, v18, v3);
      v14 = 1 << *(v19 + 32);
      if (v12 >= v14)
      {
        goto LABEL_24;
      }

      v23 = *(v41 + 8 * v40);
      if ((v23 & (1 << v12)) == 0)
      {
        goto LABEL_25;
      }

      a1 = v19;
      if (v39 != *(v19 + 36))
      {
        goto LABEL_26;
      }

      v24 = v23 & (-2 << (v12 & 0x3F));
      if (v24)
      {
        v14 = __clz(__rbit64(v24)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v8 = v18;
      }

      else
      {
        v25 = v40 << 6;
        v26 = v40 + 1;
        v27 = (v31 + 8 * v40);
        v8 = v18;
        while (v26 < (v14 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_226EB526C(v12, v39, 0);
            v14 = __clz(__rbit64(v28)) + v25;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v12, v39, 0);
LABEL_19:
        v11 = v37;
      }

      v13 = v38 + 1;
      v12 = v14;
      if (v38 + 1 == v32)
      {
        return v42;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_2273C33DC(uint64_t a1)
{
  v47 = sub_227663480();
  v2 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v42 = &v40 - v5;
  MEMORY[0x28223BE20](v6);
  v41 = &v40 - v7;
  v8 = *(a1 + 16);
  v52 = MEMORY[0x277D84F90];
  sub_226F1EF90();
  v9 = a1 + 56;
  v10 = v52;
  v11 = -1;
  v12 = -1 << *(a1 + 32);
  if (-v12 < 64)
  {
    v11 = ~(-1 << -v12);
  }

  v13 = v11 & *(a1 + 56);
  v14 = (63 - v12) >> 6;
  v48 = a1;
  v49 = v2;
  v45 = v8;
  if (v8)
  {
    v43 = v2 + 8;
    v44 = v2 + 16;

    v15 = 0;
    v16 = 0;
    while (v13)
    {
      v17 = v10;
LABEL_11:
      v19 = v49;
      v20 = *(a1 + 48) + *(v49 + 72) * (__clz(__rbit64(v13)) | (v16 << 6));
      v21 = v46;
      v22 = v47;
      (*(v49 + 16))(v46, v20, v47);
      v23 = sub_2276633E0();
      v50 = v24;
      v51 = v23;
      (*(v19 + 8))(v21, v22);
      v10 = v17;
      v52 = v17;
      v25 = *(v17 + 16);
      if (v25 >= *(v17 + 24) >> 1)
      {
        sub_226F1EF90();
        v10 = v52;
      }

      ++v15;
      v13 &= v13 - 1;
      *(v10 + 16) = v25 + 1;
      v26 = v10 + 16 * v25;
      v27 = v50;
      *(v26 + 32) = v51;
      *(v26 + 40) = v27;
      a1 = v48;
      if (v15 == v45)
      {
        goto LABEL_16;
      }
    }

    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v14)
      {
        goto LABEL_29;
      }

      v13 = *(v9 + 8 * v18);
      ++v16;
      if (v13)
      {
        v17 = v10;
        v16 = v18;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    v16 = 0;
LABEL_16:
    v28 = v49;
    v50 = v49 + 16;
    v45 = v49 + 8;
    v46 = (v49 + 32);
    if (!v13)
    {
      goto LABEL_18;
    }

    do
    {
      v51 = v10;
LABEL_22:
      v30 = *(a1 + 48) + *(v28 + 72) * (__clz(__rbit64(v13)) | (v16 << 6));
      v31 = v42;
      v32 = v47;
      (*(v28 + 16))(v42, v30, v47);
      v33 = v41;
      (*(v28 + 32))(v41, v31, v32);
      v34 = sub_2276633E0();
      v36 = v35;
      (*(v28 + 8))(v33, v32);
      v10 = v51;
      v52 = v51;
      v37 = *(v51 + 16);
      if (v37 >= *(v51 + 24) >> 1)
      {
        sub_226F1EF90();
        v10 = v52;
      }

      v13 &= v13 - 1;
      *(v10 + 16) = v37 + 1;
      v38 = v10 + 16 * v37;
      *(v38 + 32) = v34;
      *(v38 + 40) = v36;
      a1 = v48;
      v28 = v49;
    }

    while (v13);
LABEL_18:
    while (1)
    {
      v29 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v29 >= v14)
      {

        return v10;
      }

      v13 = *(v9 + 8 * v29);
      ++v16;
      if (v13)
      {
        v51 = v10;
        v16 = v29;
        goto LABEL_22;
      }
    }
  }

  __break(1u);
LABEL_29:

  __break(1u);
  return result;
}

uint64_t sub_2273C37EC@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v5 + 8))(v7, v4);
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      return sub_2273C3E8C(a2);
    }

    v8 = "GuidedRunPrefetchEnabled";
    v9 = 0xD00000000000001FLL;
  }

  else
  {
    if (!a1)
    {
      if ((sub_22711ABE8(0xD000000000000018, 0x800000022769FBF0) & 1) == 0)
      {
        return sub_2273C3E8C(a2);
      }

      return sub_2276692A0();
    }

    v8 = "outIdentifiersToPrefetch()";
    v9 = 0xD00000000000001CLL;
  }

  if (sub_22711ABE8(v9, v8 | 0x8000000000000000))
  {
    return sub_2276692A0();
  }

  return sub_2273C3E8C(a2);
}

uint64_t sub_2273C3980@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v42 = a2;
  v5 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v39 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v40 = &v38 - v10;
  v41 = sub_22766B390();
  v11 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  if (v5 == 1)
  {
    sub_22766A6C0();
    v17 = sub_22766B380();
    v18 = sub_22766C8B0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v43 = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_226E97AE8(0x72656772616863, 0xE700000000000000, &v43);
      _os_log_impl(&dword_226E8E000, v17, v18, "Ignoring PowerSource change: %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x22AA9A450](v20, -1, -1);
      MEMORY[0x22AA9A450](v19, -1, -1);
    }

    (*(v11 + 8))(v16, v41);
    return sub_2276692A0();
  }

  else
  {
    v38 = v6;
    sub_22766A6C0();
    v22 = sub_22766B380();
    v23 = sub_22766C8B0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v43 = v25;
      *v24 = 136446210;
      if (a1)
      {
        v26 = 0x6E776F6E6B6E75;
      }

      else
      {
        v26 = 0x79726574746162;
      }

      v27 = sub_226E97AE8(v26, 0xE700000000000000, &v43);

      *(v24 + 4) = v27;
      _os_log_impl(&dword_226E8E000, v22, v23, "PowerSource change to %{public}s. Cancelling in-progress fetches", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x22AA9A450](v25, -1, -1);
      MEMORY[0x22AA9A450](v24, -1, -1);
    }

    (*(v11 + 8))(v13, v41);
    v28 = v3[75];
    v29 = v3[76];
    __swift_project_boxed_opaque_existential_0(v3 + 72, v28);

    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
    v31 = v40;
    sub_226ECF5D8(sub_2273CCE18, v3, v28, v30, v29, v40);

    v32 = swift_allocObject();
    *(v32 + 16) = sub_2273CCF3C;
    *(v32 + 24) = v3;
    v34 = v38;
    v33 = v39;
    (*(v7 + 16))(v39, v31, v38);
    v35 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v36 = swift_allocObject();
    (*(v7 + 32))(v36 + v35, v33, v34);
    v37 = (v36 + ((v8 + v35 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v37 = sub_227087D64;
    v37[1] = v32;

    sub_227669270();
    return (*(v7 + 8))(v31, v34);
  }
}

uint64_t sub_2273C3E8C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v101 = a1;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB1C8, &qword_227679D20);
  v90 = *(v92 - 1);
  MEMORY[0x28223BE20](v92);
  v86 = v3;
  v87 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v88 = &v77 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v95 = *(v6 - 8);
  v96 = v6;
  MEMORY[0x28223BE20](v6);
  v91 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v93 = &v77 - v9;
  v89 = v10;
  MEMORY[0x28223BE20](v11);
  v98 = &v77 - v12;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v102 = *(v99 - 8);
  v13 = *(v102 + 64);
  MEMORY[0x28223BE20](v99);
  v85 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v97 = &v77 - v15;
  MEMORY[0x28223BE20](v16);
  v94 = &v77 - v17;
  v18 = sub_22766A8A0();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22766B390();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v77 - v27;
  sub_22766A6C0();
  v83 = "AssetSystemPrefetching.swift";
  sub_22766B370();
  v84 = *(v23 + 8);
  v84(v28, v22);
  v100 = v2;
  v29 = sub_2276693C0();
  (*(v19 + 104))(v21, *MEMORY[0x277D4F990], v18);
  LOBYTE(v2) = sub_226EC9A38(v21, v29);

  (*(v19 + 8))(v21, v18);
  if (v2)
  {
    v30 = v100;
    __swift_project_boxed_opaque_existential_0((v100 + 752), *(v100 + 776));
    v103[0] = 3;
    sub_226F19410();
    sub_226F19464();
    sub_22766A130();
    v31 = v97;
    sub_2273C54D4(v97);
    v32 = swift_allocObject();
    *(v32 + 16) = sub_2273CA938;
    *(v32 + 24) = v30;
    v33 = v102;
    v34 = *(v102 + 16);
    v83 = (v102 + 16);
    v84 = v34;
    v35 = v85;
    v36 = v99;
    (v34)(v85, v31, v99);
    v37 = *(v33 + 80);
    v82 = v37;
    v38 = (v37 + 16) & ~v37;
    v80 = v38;
    v39 = (v13 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v78 = v39;
    v40 = swift_allocObject();
    v41 = *(v33 + 32);
    v79 = v33 + 32;
    v81 = v41;
    v41(v40 + v38, v35, v36);
    v42 = (v40 + v39);
    *v42 = sub_226F09740;
    v42[1] = v32;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
    v43 = v88;
    sub_227669270();
    v44 = *(v33 + 8);
    v102 = v33 + 8;
    v85 = v44;
    (v44)(v31, v36);
    v45 = v90;
    v46 = v87;
    v47 = v92;
    (*(v90 + 16))(v87, v43, v92);
    v48 = (*(v45 + 80) + 16) & ~*(v45 + 80);
    v49 = (v86 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
    v50 = swift_allocObject();
    (*(v45 + 32))(v50 + v48, v46, v47);
    v51 = (v50 + v49);
    *v51 = sub_2273CA964;
    v51[1] = v30;

    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
    v52 = v93;
    sub_227669270();
    (*(v45 + 8))(v43, v47);
    v88 = swift_allocObject();
    swift_weakInit();
    v54 = v95;
    v53 = v96;
    v92 = *(v95 + 16);
    v55 = v91;
    (v92)(v91, v52, v96);
    v56 = (*(v54 + 80) + 16) & ~*(v54 + 80);
    v90 = v56;
    v57 = (v89 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = swift_allocObject();
    v89 = *(v54 + 32);
    v89(v58 + v56, v55, v53);
    v59 = (v58 + v57);
    v60 = v57;
    v61 = v88;
    *v59 = sub_2273CA994;
    v59[1] = v61;
    v62 = v98;
    sub_227669270();
    v95 = *(v54 + 8);
    (v95)(v52, v53);
    v63 = swift_allocObject();
    v64 = v100;
    *(v63 + 16) = sub_2273CAA68;
    *(v63 + 24) = v64;
    (v92)(v52, v62, v53);
    v65 = swift_allocObject();
    v89(v65 + v90, v52, v53);
    v66 = (v65 + v60);
    *v66 = sub_227086814;
    v66[1] = v63;

    v67 = v94;
    sub_227669270();
    (v95)(v98, v53);
    v68 = v97;
    v69 = v99;
    (v84)(v97, v67, v99);
    v70 = v78;
    v71 = swift_allocObject();
    v81(v71 + v80, v68, v69);
    v72 = (v71 + v70);
    *v72 = sub_2273C61CC;
    v72[1] = 0;
    sub_227669270();
    return (v85)(v67, v69);
  }

  else
  {
    sub_22766A6C0();
    v74 = sub_22766B380();
    v75 = sub_22766C8B0();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_226E8E000, v74, v75, "Prefetch - Current platform doesn't support prefetching.", v76, 2u);
      MEMORY[0x22AA9A450](v76, -1, -1);
    }

    v84(v25, v22);
    return sub_2276692A0();
  }
}

uint64_t sub_2273C4944@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD9E0, &qword_227684870);
  v67 = *(v2 - 8);
  v68 = v2;
  MEMORY[0x28223BE20](v2);
  v61 = v3;
  v62 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v65 = &v57 - v5;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB1C8, &qword_227679D20);
  v71 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v63 = v10;
  v64 = &v57 - v9;
  MEMORY[0x28223BE20](v11);
  v66 = &v57 - v12;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v57 - v18;
  sub_22766A6C0();
  sub_22766B370();
  v20 = *(v14 + 8);
  v20(v19, v13);
  if (sub_22711ABE8(0xD00000000000001CLL, 0x800000022769FBD0) & 1) != 0 || (sub_22711ABE8(0xD000000000000018, 0x800000022769FBF0) & 1) != 0 || (sub_22711ABE8(0xD00000000000001FLL, 0x800000022769FC10))
  {
    v59 = a1;
    v72 = MEMORY[0x277D84F90];

    sub_226F204C8(0, 3, 0);
    v21 = v71;
    v22 = v72;
    v23 = v71 + 32;
    sub_2273C672C(byte_283A94370);
    v25 = *(v22 + 16);
    v24 = *(v22 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_226F204C8((v24 > 1), v25 + 1, 1);
      v22 = v72;
    }

    *(v22 + 16) = v25 + 1;
    v26 = *(v21 + 80);
    v69 = ((v26 + 32) & ~v26);
    v70 = v26;
    v27 = *(v21 + 72);
    v28 = *(v21 + 32);
    v29 = v7;
    v30 = v7;
    v31 = v60;
    v28(v69 + v22 + v27 * v25, v29, v60);
    sub_2273C672C(byte_283A94371);
    v72 = v22;
    v33 = *(v22 + 16);
    v32 = *(v22 + 24);
    if (v33 >= v32 >> 1)
    {
      sub_226F204C8((v32 > 1), v33 + 1, 1);
      v22 = v72;
    }

    v58 = ~v70;
    *(v22 + 16) = v33 + 1;
    v28(v69 + v22 + v27 * v33, v30, v31);
    sub_2273C672C(byte_283A94372);
    v72 = v22;
    v35 = *(v22 + 16);
    v34 = *(v22 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_226F204C8((v34 > 1), v35 + 1, 1);
      v22 = v72;
    }

    *(v22 + 16) = v35 + 1;
    v28(v69 + v22 + v27 * v35, v30, v31);

    v72 = v22;
    sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
    v36 = sub_22766C950();
    sub_227669A50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
    v69 = v28;
    v57 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD2B8, &qword_227684878);
    sub_2273CCBB4(&unk_27D7BD2C0, &qword_27D7BD2B8, &qword_227684878);
    v37 = v65;
    sub_227669210();

    v38 = swift_allocObject();
    *(v38 + 16) = sub_2273C6B6C;
    *(v38 + 24) = 0;
    v40 = v67;
    v39 = v68;
    v41 = v62;
    (*(v67 + 16))(v62, v37, v68);
    v42 = (*(v40 + 80) + 16) & ~*(v40 + 80);
    v43 = (v61 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    (*(v40 + 32))(v44 + v42, v41, v39);
    v45 = (v44 + v43);
    *v45 = sub_2273CCC08;
    v45[1] = v38;
    v46 = v66;
    sub_227669270();
    (*(v40 + 8))(v37, v39);
    v47 = v71;
    v48 = v64;
    (*(v71 + 16))(v64, v46, v31);
    v49 = (v70 + 16) & v58;
    v50 = (v63 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = swift_allocObject();
    v69(v51 + v49, v48, v31);
    v52 = (v51 + v50);
    *v52 = sub_2273C6C04;
    v52[1] = 0;
    sub_227669270();
    return (*(v47 + 8))(v46, v31);
  }

  else
  {
    sub_22766A6C0();
    v54 = sub_22766B380();
    v55 = sub_22766C8B0();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_226E8E000, v54, v55, "Prefetch - All prefetch preferences are disabled", v56, 2u);
      MEMORY[0x22AA9A450](v56, -1, -1);
    }

    v20(v16, v13);
    *(swift_allocObject() + 16) = MEMORY[0x277D84FA0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
    return sub_227669280();
  }
}

uint64_t sub_2273C5160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v4 = *(v39 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v39);
  v37 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  MEMORY[0x28223BE20](v9);
  v40 = &v32 - v10;
  v11 = v2[75];
  v12 = v2[76];
  __swift_project_boxed_opaque_existential_0(v2 + 72, v11);
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = a1;
  v33 = v2;

  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
  v35 = v8;
  sub_226ECF5D8(sub_2273CBB40, v13, v11, v41, v12, v8);

  v14 = swift_allocObject();
  *(v14 + 16) = sub_2273CBB5C;
  *(v14 + 24) = v2;
  v36 = *(v4 + 16);
  v15 = v37;
  v16 = v39;
  v36(v37, v8, v39);
  v17 = *(v4 + 80);
  v32 = v4;
  v18 = (v17 + 16) & ~v17;
  v34 = v18;
  v19 = (v5 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = *(v4 + 32);
  v21(v20 + v18, v15, v16);
  v22 = (v20 + v19);
  *v22 = sub_2273CBB78;
  v22[1] = v14;

  v23 = v40;
  sub_227669270();
  v24 = *(v32 + 8);
  v25 = v35;
  v26 = v39;
  v24(v35, v39);
  v27 = v23;
  v28 = v26;
  v36(v25, v27, v26);
  v29 = swift_allocObject();
  v21(v29 + v34, v25, v28);
  v30 = (v29 + v19);
  *v30 = sub_2273CA5E0;
  v30[1] = 0;
  sub_227669270();
  return (v24)(v40, v28);
}