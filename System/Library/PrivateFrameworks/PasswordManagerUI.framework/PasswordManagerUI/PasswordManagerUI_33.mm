uint64_t sub_21CAC1160(__n128 a1)
{
  v141 = *(v1 + 592);
  sub_21CACA770(*(v1 + 512), *(v1 + 488), type metadata accessor for PMAccount);
  swift_getKeyPath(byte_21CBC5610);
  swift_getKeyPath(aP_103);
  v139 = sub_21CB81DA4();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_21CA4F1B8(0, v4[2] + 1, 1, v4);
    *v3 = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_21CA4F1B8((v6 > 1), v7 + 1, 1, v4);
    *v3 = v4;
  }

  v8 = *(v1 + 576);
  v9 = *(v1 + 664);
  v10 = *(v1 + 552);
  v11 = *(v1 + 512);
  v12 = *(v1 + 488);
  v13 = *(v1 + 584) + 1;
  v4[2] = v7 + 1;
  sub_21CAC9E84(v12, v4 + ((v9 + 32) & ~v9) + v8 * v7, type metadata accessor for PMAccount);
  v139(v1 + 144, 0);

  sub_21C719840(v11, type metadata accessor for PMAccount);
  if (v13 == v10)
  {

    sub_21CAC35C8(*(v1 + 224), (v1 + 208), *(v1 + 232));

    v14 = *(v1 + 8);

    return v14();
  }

  v16 = *(v1 + 584) + 1;
  *(v1 + 592) = v141;
  *(v1 + 584) = v16;
  v17 = *(v1 + 560);
  sub_21CACA770(*(v1 + 240) + ((*(v1 + 664) + 32) & ~*(v1 + 664)) + *(v1 + 576) * v16, *(v1 + 512), type metadata accessor for PMAccount);
  swift_getKeyPath(byte_21CBC5730);
  sub_21CB81DB4();

  v18 = *(v1 + 216);
  v142 = *(v18 + 16);
  v136 = v18;
  if (!v142)
  {
LABEL_91:

    goto LABEL_92;
  }

  v19 = 0;
  v140 = v18 + ((*(v1 + 664) + 32) & ~*(v1 + 664));
  v20 = *(v1 + 512);
  v21 = &unk_27CDF20B0;
  v22 = *v20;
  v23 = v20[1];
  v137 = v23;
  v138 = *v20;
  while (v19 < *(v18 + 16))
  {
    v17 = *(v1 + 504);
    sub_21CACA770(v140 + *(v1 + 576) * v19, v17, type metadata accessor for PMAccount);
    v24 = *v17 == v22 && *(v17 + 8) == v23;
    if (!v24 && (sub_21CB86344() & 1) == 0)
    {
      goto LABEL_13;
    }

    v4 = v21;
    v25 = *(v1 + 512);
    v17 = *(v1 + 456);
    v26 = *(*(v1 + 464) + 20);
    v11 = *(*(v1 + 448) + 48);
    sub_21CACA770(*(v1 + 504) + v26, v17, type metadata accessor for PMAccount.UniqueID);
    sub_21CACA770(v25 + v26, v17 + v11, type metadata accessor for PMAccount.UniqueID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v28 = *(v1 + 456);
    if (EnumCaseMultiPayload == 1)
    {
      sub_21CACA770(v28, *(v1 + 432), type metadata accessor for PMAccount.UniqueID);
      v29 = swift_getEnumCaseMultiPayload();
      v30 = *(v1 + 432);
      if (v29 != 1)
      {
        v35 = type metadata accessor for PMAccount.SIWAUniqueID;
        goto LABEL_31;
      }

      v31 = *(v1 + 408);
      sub_21CAC9E84(v17 + v11, v31, type metadata accessor for PMAccount.SIWAUniqueID);
      v32 = v30[1];
      v33 = v31[1];
      v21 = v4;
      if (v32)
      {
        if (!v33 || (*v30 != *v31 || v32 != v33) && (sub_21CB86344() & 1) == 0)
        {
          goto LABEL_85;
        }
      }

      else if (v33)
      {
        goto LABEL_85;
      }

      v50 = *(v1 + 432);
      v11 = *(v1 + 408);
      if (v50[2] != *(v11 + 16) || v50[3] != *(v11 + 24))
      {
        if ((sub_21CB86344() & 1) == 0)
        {
          goto LABEL_85;
        }

        v50 = *(v1 + 432);
        v11 = *(v1 + 408);
      }

      v51 = v50[5];
      v52 = *(v11 + 40);
      if (v51)
      {
        if (!v52)
        {
          goto LABEL_85;
        }

        if (v50[4] != *(v11 + 32) || v51 != v52)
        {
          if ((sub_21CB86344() & 1) == 0)
          {
            goto LABEL_85;
          }

          v11 = *(v1 + 408);
        }
      }

      else if (v52)
      {
        goto LABEL_85;
      }

      sub_21CB85B74();
      sub_21C6EADA4(&qword_27CDEB3C0, MEMORY[0x277D49930], MEMORY[0x277D49940]);
      sub_21CB857F4();
      sub_21CB857F4();
      if (*(v1 + 176) == *(v1 + 192) && *(v1 + 184) == *(v1 + 200))
      {
      }

      else
      {
        v80 = sub_21CB86344();

        if ((v80 & 1) == 0)
        {
          goto LABEL_85;
        }
      }

      v81 = *(v1 + 432);
      v82 = *(v1 + 400);
      v83 = *(v1 + 408);
      v84 = *(v82 + 32);
      v85 = (v81 + v84);
      v86 = *(v81 + v84 + 8);
      v87 = (v83 + v84);
      v88 = v87[1];
      if (v86)
      {
        if (!v88)
        {
          goto LABEL_85;
        }

        if (*v85 != *v87 || v86 != v88)
        {
          if ((sub_21CB86344() & 1) == 0)
          {
            goto LABEL_85;
          }

          v81 = *(v1 + 432);
          v82 = *(v1 + 400);
          v83 = *(v1 + 408);
        }
      }

      else if (v88)
      {
        goto LABEL_85;
      }

      v93 = *(v1 + 392);
      v94 = *(v1 + 336);
      v135 = *(v1 + 328);
      v95 = *(v82 + 36);
      v96 = *(*(v1 + 384) + 48);
      v97 = v83;
      sub_21C6EDBAC(v81 + v95, v93, v4, &unk_21CBA0090);
      v98 = v97 + v95;
      v99 = v93;
      sub_21C6EDBAC(v98, v93 + v96, v4, &unk_21CBA0090);
      v11 = *(v94 + 48);
      if ((v11)(v99, 1, v135) == 1)
      {
        if ((v11)(v99 + v96, 1, *(v1 + 328)) != 1)
        {
          goto LABEL_84;
        }

        sub_21C6EA794(*(v1 + 392), v4, &unk_21CBA0090);
      }

      else
      {
        v100 = *(v1 + 328);
        sub_21C6EDBAC(*(v1 + 392), *(v1 + 376), v4, &unk_21CBA0090);
        if ((v11)(v99 + v96, 1, v100) == 1)
        {
          (*(*(v1 + 336) + 8))(*(v1 + 376), *(v1 + 328));
LABEL_84:
          sub_21C6EA794(*(v1 + 392), &qword_27CDEAC40, &qword_21CBA1A40);
LABEL_85:
          v17 = *(v1 + 456);
          v101 = *(v1 + 432);
          sub_21C719840(*(v1 + 408), type metadata accessor for PMAccount.SIWAUniqueID);
          sub_21C719840(v101, type metadata accessor for PMAccount.SIWAUniqueID);
          v79 = type metadata accessor for PMAccount.UniqueID;
          v78 = v17;
          goto LABEL_86;
        }

        v107 = *(v1 + 376);
        v108 = *(v1 + 336);
        v109 = *(v1 + 328);
        v134 = *(v1 + 344);
        v135 = *(v1 + 392);
        (*(v108 + 32))();
        sub_21C6EADA4(&qword_27CDEAC48, MEMORY[0x277D49978], MEMORY[0x277D49990]);
        v110 = sub_21CB85574();
        v111 = *(v108 + 8);
        v11 = v108 + 8;
        v111(v134, v109);
        v111(v107, v109);
        sub_21C6EA794(v135, v4, &unk_21CBA0090);
        if ((v110 & 1) == 0)
        {
          goto LABEL_85;
        }
      }

      v112 = *(v1 + 432);
      sub_21C719840(*(v1 + 408), type metadata accessor for PMAccount.SIWAUniqueID);
      sub_21C719840(v112, type metadata accessor for PMAccount.SIWAUniqueID);
    }

    else
    {
      sub_21CACA770(v28, *(v1 + 440), type metadata accessor for PMAccount.UniqueID);
      v34 = swift_getEnumCaseMultiPayload();
      v30 = *(v1 + 440);
      if (v34 == 1)
      {
        v35 = type metadata accessor for PMAccount.CombinedUniqueID;
LABEL_31:
        sub_21C719840(v30, v35);
        v21 = v4;
        v23 = v137;
        v22 = v138;
        v36 = *(v1 + 456);
        v37 = &qword_27CDEB3C8;
        v38 = &unk_21CBB0010;
        goto LABEL_32;
      }

      v39 = *(v1 + 416);
      sub_21CAC9E84(v17 + v11, v39, type metadata accessor for PMAccount.CombinedUniqueID);
      v17 = sub_21C7D1A58(v30, v39);
      v11 = type metadata accessor for PMAccount.CombinedUniqueID;
      sub_21C719840(v39, type metadata accessor for PMAccount.CombinedUniqueID);
      sub_21C719840(v30, type metadata accessor for PMAccount.CombinedUniqueID);
      if ((v17 & 1) == 0)
      {
        sub_21C719840(*(v1 + 456), type metadata accessor for PMAccount.UniqueID);
        v21 = v4;
LABEL_12:
        v23 = v137;
        v22 = v138;
        goto LABEL_13;
      }
    }

    v41 = *(v1 + 504);
    v40 = *(v1 + 512);
    v42 = *(v1 + 464);
    v43 = *(v1 + 312);
    v17 = *(v1 + 320);
    sub_21C719840(*(v1 + 456), type metadata accessor for PMAccount.UniqueID);
    v44 = *(v42 + 24);
    v11 = *(v43 + 48);
    sub_21CACA770(v41 + v44, v17, type metadata accessor for PMAccount.Storage);
    sub_21CACA770(v40 + v44, v17 + v11, type metadata accessor for PMAccount.Storage);
    v45 = swift_getEnumCaseMultiPayload();
    v46 = *(v1 + 320);
    if (v45 == 1)
    {
      sub_21CACA770(v46, *(v1 + 296), type metadata accessor for PMAccount.Storage);
      v47 = swift_getEnumCaseMultiPayload();
      v48 = *(v1 + 296);
      if (v47 != 1)
      {
        sub_21C719840(*(v1 + 296), type metadata accessor for PMAccount.MockData);
LABEL_51:
        v18 = v136;
        v23 = v137;
        v21 = v4;
        v22 = v138;
        v36 = *(v1 + 320);
        v37 = &unk_27CDF7680;
        v38 = &qword_21CBB4E30;
LABEL_32:
        sub_21C6EA794(v36, v37, v38);
        goto LABEL_13;
      }

      v49 = *(v1 + 264);
      sub_21CAC9E84(v17 + v11, v49, type metadata accessor for PMAccount.MockData);
      v17 = _s17PasswordManagerUI9PMAccountV8MockDataV2eeoiySbAE_AEtFZ_0(v48, v49);
      v11 = type metadata accessor for PMAccount.MockData;
      sub_21C719840(v49, type metadata accessor for PMAccount.MockData);
      sub_21C719840(v48, type metadata accessor for PMAccount.MockData);
    }

    else
    {
      v53 = *(v1 + 304);
      sub_21CACA770(v46, v53, type metadata accessor for PMAccount.Storage);
      v54 = *v53;
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        goto LABEL_51;
      }

      v55 = *(v17 + v11);
      sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
      v17 = sub_21CB85DD4();
    }

    v18 = v136;
    v21 = v4;
    if ((v17 & 1) == 0)
    {
      v78 = *(v1 + 320);
      v79 = type metadata accessor for PMAccount.Storage;
LABEL_86:
      sub_21C719840(v78, v79);
      goto LABEL_12;
    }

    v56 = *(v1 + 504);
    v57 = *(v1 + 512);
    v58 = *(v1 + 464);
    sub_21C719840(*(v1 + 320), type metadata accessor for PMAccount.Storage);
    v59 = *(v58 + 28);
    v17 = *(v56 + v59);
    v60 = *(v56 + v59 + 8);
    v61 = *(v56 + v59 + 16);
    v62 = *(v56 + v59 + 24);
    v63 = (v57 + v59);
    v23 = *v63;
    v64 = v63[1];
    v11 = v63[2];
    v4 = v63[3];
    v133 = v64;
    if (!v60)
    {
      v89 = 0;
      v135 = v61;
      v132 = v62;
      v90 = v63[1];
      sub_21C7D33AC(v17, 0, v61, v62);
      if (!v90)
      {
        goto LABEL_103;
      }

      sub_21C7D33AC(v23, v90, v11, v4);
      v91 = v135;
      v92 = v132;
LABEL_80:
      sub_21C7D33F0(v17, v89, v91, v92);
      v74 = v23;
      v75 = v133;
      v76 = v11;
      v77 = v4;
LABEL_81:
      sub_21C7D33F0(v74, v75, v76, v77);
      goto LABEL_12;
    }

    if (!v64)
    {
      v89 = v60;
      v135 = v61;
      v92 = v62;
      sub_21C7D33AC(v17, v60, v61, v62);
      sub_21C7D33AC(v23, 0, v11, v4);
      sub_21C7D33AC(v17, v89, v135, v92);

      v91 = v135;
      goto LABEL_80;
    }

    v131 = v63[3];
    v132 = *v63;
    if (v17 != v23 || v60 != v64) && (v65 = v60, v66 = v61, v67 = v62, v68 = v63[1], v69 = sub_21CB86344(), v64 = v68, v60 = v65, v62 = v67, v61 = v66, (v69 & 1) == 0) || ((v11 ^ v61))
    {
      v70 = v60;
      v135 = v61;
      v71 = v62;
      v72 = v64;
      sub_21C7D33AC(v17, v60, v61, v62);
      v73 = v72;
      v4 = v131;
      sub_21C7D33AC(v132, v73, v11, v131);
      sub_21C7D33AC(v17, v70, v135, v71);
      sub_21C7D33F0(v132, v133, v11, v131);

      v74 = v17;
      v75 = v70;
      v76 = v135;
      v77 = v71;
      goto LABEL_81;
    }

    v102 = v60;
    v103 = v61;
    v104 = v62;
    v105 = v64;
    sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
    v130 = v17;
    sub_21C7D33AC(v17, v102, v103, v104);
    v106 = v105;
    v4 = v131;
    sub_21C7D33AC(v132, v106, v11, v131);
    sub_21C7D33AC(v17, v102, v103, v104);
    v17 = sub_21CB85DD4();
    sub_21C7D33F0(v132, v133, v11, v131);

    sub_21C7D33F0(v130, v102, v103, v104);
    v23 = v137;
    v22 = v138;
    if (v17)
    {

      goto LABEL_104;
    }

LABEL_13:
    sub_21C719840(*(v1 + 504), type metadata accessor for PMAccount);
    if (v142 == ++v19)
    {
      goto LABEL_91;
    }
  }

  __break(1u);
LABEL_103:
  sub_21C7D33AC(v23, 0, v11, v4);

  sub_21C7D33F0(v17, 0, v135, v132);
LABEL_104:
  sub_21C719840(*(v1 + 504), type metadata accessor for PMAccount);
LABEL_92:
  v113 = *(v1 + 512);
  v114 = *(v1 + 288);
  v115 = *(*(v1 + 464) + 24);
  *(v1 + 668) = v115;
  sub_21CACA770(v113 + v115, v114, type metadata accessor for PMAccount.Storage);
  v116 = swift_getEnumCaseMultiPayload();
  v117 = *(v1 + 360);
  v118 = *(v1 + 288);
  if (v116 == 1)
  {
    v120 = *(v1 + 248);
    v119 = *(v1 + 256);
    sub_21CAC9E84(v118, v119, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(v119 + *(v120 + 72), v117, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C719840(v119, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v121 = *v118;
    sub_21CB85B94();
  }

  v122 = *(v1 + 368);
  v123 = *(v1 + 328);
  v124 = *(v1 + 336);
  sub_21C716934(*(v1 + 360), v122, &unk_27CDF20B0, &unk_21CBA0090);
  LODWORD(v123) = (*(v124 + 48))(v122, 1, v123);
  sub_21C6EA794(v122, &unk_27CDF20B0, &unk_21CBA0090);
  if (v123 == 1)
  {
    *(v1 + 616) = sub_21CB858A4();
    v126 = sub_21CB85874();
    *(v1 + 624) = v126;
    *(v1 + 632) = v125;

    return MEMORY[0x2822009F8](sub_21CABFAD8, v126, v125);
  }

  else
  {
    (*(*(v1 + 336) + 56))(*(v1 + 352), 1, 1, *(v1 + 328));
    v127 = swift_task_alloc();
    *(v1 + 600) = v127;
    *v127 = v1;
    v127[1] = sub_21CABF8E4;
    v128 = *(v1 + 512);
    v129 = *(v1 + 352);

    return sub_21CAC4230(v128, v129, 0);
  }
}

uint64_t sub_21CAC2334(__n128 a1)
{
  sub_21CACA770(*(v1 + 512), *(v1 + 480), type metadata accessor for PMAccount);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v1 + 592);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_21CA4F1B8(0, v3[2] + 1, 1, *(v1 + 592));
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_21CA4F1B8((v4 > 1), v5 + 1, 1, v3);
  }

  v6 = *(v1 + 576);
  v7 = *(v1 + 480);
  v8 = (*(v1 + 664) + 32) & ~*(v1 + 664);

  v3[2] = v5 + 1;
  sub_21CAC9E84(v7, v3 + v8 + v6 * v5, type metadata accessor for PMAccount);
  *(v1 + 208) = v3;
  sub_21CACA770(*(v1 + 512), *(v1 + 488), type metadata accessor for PMAccount);
  swift_getKeyPath(byte_21CBC5610);
  swift_getKeyPath(aP_103);
  v146 = sub_21CB81DA4();
  v10 = v9;
  v11 = *v9;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v11;
  if ((v12 & 1) == 0)
  {
    v11 = sub_21CA4F1B8(0, v11[2] + 1, 1, v11);
    *v10 = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_21CA4F1B8((v13 > 1), v14 + 1, 1, v11);
    *v10 = v11;
  }

  v15 = *(v1 + 576);
  v16 = *(v1 + 664);
  v17 = *(v1 + 552);
  v18 = *(v1 + 512);
  v19 = *(v1 + 488);
  v20 = *(v1 + 584) + 1;
  v11[2] = v14 + 1;
  sub_21CAC9E84(v19, v11 + ((v16 + 32) & ~v16) + v15 * v14, type metadata accessor for PMAccount);
  v146();

  sub_21C719840(v18, type metadata accessor for PMAccount);
  if (v20 == v17)
  {

    sub_21CAC35C8(*(v1 + 224), (v1 + 208), *(v1 + 232));

    v21 = *(v1 + 8);

    return v21();
  }

  v23 = *(v1 + 584) + 1;
  *(v1 + 592) = v3;
  *(v1 + 584) = v23;
  v24 = *(v1 + 560);
  sub_21CACA770(*(v1 + 240) + ((*(v1 + 664) + 32) & ~*(v1 + 664)) + *(v1 + 576) * v23, *(v1 + 512), type metadata accessor for PMAccount);
  swift_getKeyPath(byte_21CBC5730);
  sub_21CB81DB4();

  v25 = *(v1 + 216);
  v148 = *(v25 + 16);
  v143 = v25;
  if (!v148)
  {
LABEL_95:

    goto LABEL_96;
  }

  v26 = 0;
  v147 = v25 + ((*(v1 + 664) + 32) & ~*(v1 + 664));
  v27 = *(v1 + 512);
  v28 = &unk_27CDF20B0;
  v29 = *v27;
  v30 = v27[1];
  v144 = v30;
  v145 = *v27;
  while (v26 < *(v25 + 16))
  {
    v24 = *(v1 + 504);
    sub_21CACA770(v147 + *(v1 + 576) * v26, v24, type metadata accessor for PMAccount);
    v31 = *v24 == v29 && *(v24 + 8) == v30;
    if (!v31 && (sub_21CB86344() & 1) == 0)
    {
      goto LABEL_17;
    }

    v11 = v28;
    v32 = *(v1 + 512);
    v24 = *(v1 + 456);
    v33 = *(*(v1 + 464) + 20);
    v18 = *(*(v1 + 448) + 48);
    sub_21CACA770(*(v1 + 504) + v33, v24, type metadata accessor for PMAccount.UniqueID);
    sub_21CACA770(v32 + v33, v24 + v18, type metadata accessor for PMAccount.UniqueID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v35 = *(v1 + 456);
    if (EnumCaseMultiPayload == 1)
    {
      sub_21CACA770(v35, *(v1 + 432), type metadata accessor for PMAccount.UniqueID);
      v36 = swift_getEnumCaseMultiPayload();
      v37 = *(v1 + 432);
      if (v36 != 1)
      {
        v42 = type metadata accessor for PMAccount.SIWAUniqueID;
        goto LABEL_35;
      }

      v38 = *(v1 + 408);
      sub_21CAC9E84(v24 + v18, v38, type metadata accessor for PMAccount.SIWAUniqueID);
      v39 = v37[1];
      v40 = v38[1];
      v28 = v11;
      if (v39)
      {
        if (!v40 || (*v37 != *v38 || v39 != v40) && (sub_21CB86344() & 1) == 0)
        {
          goto LABEL_89;
        }
      }

      else if (v40)
      {
        goto LABEL_89;
      }

      v57 = *(v1 + 432);
      v18 = *(v1 + 408);
      if (v57[2] != *(v18 + 16) || v57[3] != *(v18 + 24))
      {
        if ((sub_21CB86344() & 1) == 0)
        {
          goto LABEL_89;
        }

        v57 = *(v1 + 432);
        v18 = *(v1 + 408);
      }

      v58 = v57[5];
      v59 = *(v18 + 40);
      if (v58)
      {
        if (!v59)
        {
          goto LABEL_89;
        }

        if (v57[4] != *(v18 + 32) || v58 != v59)
        {
          if ((sub_21CB86344() & 1) == 0)
          {
            goto LABEL_89;
          }

          v18 = *(v1 + 408);
        }
      }

      else if (v59)
      {
        goto LABEL_89;
      }

      sub_21CB85B74();
      sub_21C6EADA4(&qword_27CDEB3C0, MEMORY[0x277D49930], MEMORY[0x277D49940]);
      sub_21CB857F4();
      sub_21CB857F4();
      if (*(v1 + 176) == *(v1 + 192) && *(v1 + 184) == *(v1 + 200))
      {
      }

      else
      {
        v87 = sub_21CB86344();

        if ((v87 & 1) == 0)
        {
          goto LABEL_89;
        }
      }

      v88 = *(v1 + 432);
      v89 = *(v1 + 400);
      v90 = *(v1 + 408);
      v91 = *(v89 + 32);
      v92 = (v88 + v91);
      v93 = *(v88 + v91 + 8);
      v94 = (v90 + v91);
      v95 = v94[1];
      if (v93)
      {
        if (!v95)
        {
          goto LABEL_89;
        }

        if (*v92 != *v94 || v93 != v95)
        {
          if ((sub_21CB86344() & 1) == 0)
          {
            goto LABEL_89;
          }

          v88 = *(v1 + 432);
          v89 = *(v1 + 400);
          v90 = *(v1 + 408);
        }
      }

      else if (v95)
      {
        goto LABEL_89;
      }

      v100 = *(v1 + 392);
      v101 = *(v1 + 336);
      v142 = *(v1 + 328);
      v102 = *(v89 + 36);
      v103 = *(*(v1 + 384) + 48);
      v104 = v90;
      sub_21C6EDBAC(v88 + v102, v100, v11, &unk_21CBA0090);
      v105 = v104 + v102;
      v106 = v100;
      sub_21C6EDBAC(v105, v100 + v103, v11, &unk_21CBA0090);
      v18 = *(v101 + 48);
      if ((v18)(v106, 1, v142) == 1)
      {
        if ((v18)(v106 + v103, 1, *(v1 + 328)) != 1)
        {
          goto LABEL_88;
        }

        sub_21C6EA794(*(v1 + 392), v11, &unk_21CBA0090);
      }

      else
      {
        v107 = *(v1 + 328);
        sub_21C6EDBAC(*(v1 + 392), *(v1 + 376), v11, &unk_21CBA0090);
        if ((v18)(v106 + v103, 1, v107) == 1)
        {
          (*(*(v1 + 336) + 8))(*(v1 + 376), *(v1 + 328));
LABEL_88:
          sub_21C6EA794(*(v1 + 392), &qword_27CDEAC40, &qword_21CBA1A40);
LABEL_89:
          v24 = *(v1 + 456);
          v108 = *(v1 + 432);
          sub_21C719840(*(v1 + 408), type metadata accessor for PMAccount.SIWAUniqueID);
          sub_21C719840(v108, type metadata accessor for PMAccount.SIWAUniqueID);
          v86 = type metadata accessor for PMAccount.UniqueID;
          v85 = v24;
          goto LABEL_90;
        }

        v114 = *(v1 + 376);
        v115 = *(v1 + 336);
        v116 = *(v1 + 328);
        v141 = *(v1 + 344);
        v142 = *(v1 + 392);
        (*(v115 + 32))();
        sub_21C6EADA4(&qword_27CDEAC48, MEMORY[0x277D49978], MEMORY[0x277D49990]);
        v117 = sub_21CB85574();
        v118 = *(v115 + 8);
        v18 = v115 + 8;
        v118(v141, v116);
        v118(v114, v116);
        sub_21C6EA794(v142, v11, &unk_21CBA0090);
        if ((v117 & 1) == 0)
        {
          goto LABEL_89;
        }
      }

      v119 = *(v1 + 432);
      sub_21C719840(*(v1 + 408), type metadata accessor for PMAccount.SIWAUniqueID);
      sub_21C719840(v119, type metadata accessor for PMAccount.SIWAUniqueID);
    }

    else
    {
      sub_21CACA770(v35, *(v1 + 440), type metadata accessor for PMAccount.UniqueID);
      v41 = swift_getEnumCaseMultiPayload();
      v37 = *(v1 + 440);
      if (v41 == 1)
      {
        v42 = type metadata accessor for PMAccount.CombinedUniqueID;
LABEL_35:
        sub_21C719840(v37, v42);
        v28 = v11;
        v30 = v144;
        v29 = v145;
        v43 = *(v1 + 456);
        v44 = &qword_27CDEB3C8;
        v45 = &unk_21CBB0010;
        goto LABEL_36;
      }

      v46 = *(v1 + 416);
      sub_21CAC9E84(v24 + v18, v46, type metadata accessor for PMAccount.CombinedUniqueID);
      v24 = sub_21C7D1A58(v37, v46);
      v18 = type metadata accessor for PMAccount.CombinedUniqueID;
      sub_21C719840(v46, type metadata accessor for PMAccount.CombinedUniqueID);
      sub_21C719840(v37, type metadata accessor for PMAccount.CombinedUniqueID);
      if ((v24 & 1) == 0)
      {
        sub_21C719840(*(v1 + 456), type metadata accessor for PMAccount.UniqueID);
        v28 = v11;
LABEL_16:
        v30 = v144;
        v29 = v145;
        goto LABEL_17;
      }
    }

    v48 = *(v1 + 504);
    v47 = *(v1 + 512);
    v49 = *(v1 + 464);
    v50 = *(v1 + 312);
    v24 = *(v1 + 320);
    sub_21C719840(*(v1 + 456), type metadata accessor for PMAccount.UniqueID);
    v51 = *(v49 + 24);
    v18 = *(v50 + 48);
    sub_21CACA770(v48 + v51, v24, type metadata accessor for PMAccount.Storage);
    sub_21CACA770(v47 + v51, v24 + v18, type metadata accessor for PMAccount.Storage);
    v52 = swift_getEnumCaseMultiPayload();
    v53 = *(v1 + 320);
    if (v52 == 1)
    {
      sub_21CACA770(v53, *(v1 + 296), type metadata accessor for PMAccount.Storage);
      v54 = swift_getEnumCaseMultiPayload();
      v55 = *(v1 + 296);
      if (v54 != 1)
      {
        sub_21C719840(*(v1 + 296), type metadata accessor for PMAccount.MockData);
LABEL_55:
        v25 = v143;
        v30 = v144;
        v28 = v11;
        v29 = v145;
        v43 = *(v1 + 320);
        v44 = &unk_27CDF7680;
        v45 = &qword_21CBB4E30;
LABEL_36:
        sub_21C6EA794(v43, v44, v45);
        goto LABEL_17;
      }

      v56 = *(v1 + 264);
      sub_21CAC9E84(v24 + v18, v56, type metadata accessor for PMAccount.MockData);
      v24 = _s17PasswordManagerUI9PMAccountV8MockDataV2eeoiySbAE_AEtFZ_0(v55, v56);
      v18 = type metadata accessor for PMAccount.MockData;
      sub_21C719840(v56, type metadata accessor for PMAccount.MockData);
      sub_21C719840(v55, type metadata accessor for PMAccount.MockData);
    }

    else
    {
      v60 = *(v1 + 304);
      sub_21CACA770(v53, v60, type metadata accessor for PMAccount.Storage);
      v61 = *v60;
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        goto LABEL_55;
      }

      v62 = *(v24 + v18);
      sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
      v24 = sub_21CB85DD4();
    }

    v25 = v143;
    v28 = v11;
    if ((v24 & 1) == 0)
    {
      v85 = *(v1 + 320);
      v86 = type metadata accessor for PMAccount.Storage;
LABEL_90:
      sub_21C719840(v85, v86);
      goto LABEL_16;
    }

    v63 = *(v1 + 504);
    v64 = *(v1 + 512);
    v65 = *(v1 + 464);
    sub_21C719840(*(v1 + 320), type metadata accessor for PMAccount.Storage);
    v66 = *(v65 + 28);
    v24 = *(v63 + v66);
    v67 = *(v63 + v66 + 8);
    v68 = *(v63 + v66 + 16);
    v69 = *(v63 + v66 + 24);
    v70 = (v64 + v66);
    v30 = *v70;
    v71 = v70[1];
    v18 = v70[2];
    v11 = v70[3];
    v140 = v71;
    if (!v67)
    {
      v96 = 0;
      v142 = v68;
      v139 = v69;
      v97 = v70[1];
      sub_21C7D33AC(v24, 0, v68, v69);
      if (!v97)
      {
        goto LABEL_107;
      }

      sub_21C7D33AC(v30, v97, v18, v11);
      v98 = v142;
      v99 = v139;
LABEL_84:
      sub_21C7D33F0(v24, v96, v98, v99);
      v81 = v30;
      v82 = v140;
      v83 = v18;
      v84 = v11;
LABEL_85:
      sub_21C7D33F0(v81, v82, v83, v84);
      goto LABEL_16;
    }

    if (!v71)
    {
      v96 = v67;
      v142 = v68;
      v99 = v69;
      sub_21C7D33AC(v24, v67, v68, v69);
      sub_21C7D33AC(v30, 0, v18, v11);
      sub_21C7D33AC(v24, v96, v142, v99);

      v98 = v142;
      goto LABEL_84;
    }

    v138 = v70[3];
    v139 = *v70;
    if (v24 != v30 || v67 != v71) && (v72 = v67, v73 = v68, v74 = v69, v75 = v70[1], v76 = sub_21CB86344(), v71 = v75, v67 = v72, v69 = v74, v68 = v73, (v76 & 1) == 0) || ((v18 ^ v68))
    {
      v77 = v67;
      v142 = v68;
      v78 = v69;
      v79 = v71;
      sub_21C7D33AC(v24, v67, v68, v69);
      v80 = v79;
      v11 = v138;
      sub_21C7D33AC(v139, v80, v18, v138);
      sub_21C7D33AC(v24, v77, v142, v78);
      sub_21C7D33F0(v139, v140, v18, v138);

      v81 = v24;
      v82 = v77;
      v83 = v142;
      v84 = v78;
      goto LABEL_85;
    }

    v109 = v67;
    v110 = v68;
    v111 = v69;
    v112 = v71;
    sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
    v137 = v24;
    sub_21C7D33AC(v24, v109, v110, v111);
    v113 = v112;
    v11 = v138;
    sub_21C7D33AC(v139, v113, v18, v138);
    sub_21C7D33AC(v24, v109, v110, v111);
    v24 = sub_21CB85DD4();
    sub_21C7D33F0(v139, v140, v18, v138);

    sub_21C7D33F0(v137, v109, v110, v111);
    v30 = v144;
    v29 = v145;
    if (v24)
    {

      goto LABEL_108;
    }

LABEL_17:
    sub_21C719840(*(v1 + 504), type metadata accessor for PMAccount);
    if (v148 == ++v26)
    {
      goto LABEL_95;
    }
  }

  __break(1u);
LABEL_107:
  sub_21C7D33AC(v30, 0, v18, v11);

  sub_21C7D33F0(v24, 0, v142, v139);
LABEL_108:
  sub_21C719840(*(v1 + 504), type metadata accessor for PMAccount);
LABEL_96:
  v120 = *(v1 + 512);
  v121 = *(v1 + 288);
  v122 = *(*(v1 + 464) + 24);
  *(v1 + 668) = v122;
  sub_21CACA770(v120 + v122, v121, type metadata accessor for PMAccount.Storage);
  v123 = swift_getEnumCaseMultiPayload();
  v124 = *(v1 + 360);
  v125 = *(v1 + 288);
  if (v123 == 1)
  {
    v127 = *(v1 + 248);
    v126 = *(v1 + 256);
    sub_21CAC9E84(v125, v126, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(v126 + *(v127 + 72), v124, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C719840(v126, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v128 = *v125;
    sub_21CB85B94();
  }

  v129 = *(v1 + 368);
  v130 = *(v1 + 328);
  v131 = *(v1 + 336);
  sub_21C716934(*(v1 + 360), v129, &unk_27CDF20B0, &unk_21CBA0090);
  LODWORD(v130) = (*(v131 + 48))(v129, 1, v130);
  sub_21C6EA794(v129, &unk_27CDF20B0, &unk_21CBA0090);
  if (v130 == 1)
  {
    *(v1 + 616) = sub_21CB858A4();
    v133 = sub_21CB85874();
    *(v1 + 624) = v133;
    *(v1 + 632) = v132;

    return MEMORY[0x2822009F8](sub_21CABFAD8, v133, v132);
  }

  else
  {
    (*(*(v1 + 336) + 56))(*(v1 + 352), 1, 1, *(v1 + 328));
    v134 = swift_task_alloc();
    *(v1 + 600) = v134;
    *v134 = v1;
    v134[1] = sub_21CABF8E4;
    v135 = *(v1 + 512);
    v136 = *(v1 + 352);

    return sub_21CAC4230(v135, v136, 0);
  }
}

uint64_t sub_21CAC35C8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_21CAB6DCC();
  v6 = *a2;
  v7 = *(v6 + 16);
  swift_getKeyPath(aX_72);
  swift_getKeyPath(a8_41);
  if (v7)
  {

    sub_21CB81DC4();
    v8 = *(a3 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_onCompletion);
    if (v8)
    {
      v8(v6, 1);
    }
  }

  else
  {

    sub_21CB81DC4();
    v9 = *(a3 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_onCompletion);
    if (v9)
    {
      v9(0, 255);
    }
  }

  *(a1 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_isIgnoringAccountStoreChangeNotifications) = 0;
  return sub_21C6EC92C();
}

uint64_t sub_21CAC3700(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2[18] = v1;
  v2[19] = v3;
  sub_21CB858B4();
  v2[20] = sub_21CB858A4();
  v5 = sub_21CB85874();
  v2[21] = v5;
  v2[22] = v4;

  return MEMORY[0x2822009F8](sub_21CAC379C, v5, v4);
}

uint64_t sub_21CAC379C()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = [v2 issueTypes];
  v4 = [objc_allocWithZone(MEMORY[0x277D49AC0]) initWithIssueTypes_];
  v0[23] = v4;
  v5 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore);
  v0[24] = v5;
  v6 = v5;
  v7 = [v2 savedAccount];
  v0[25] = v7;
  v0[2] = v0;
  v0[3] = sub_21CAC3930;
  v8 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7660, &unk_21CBBDB50);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21CAB1570;
  v0[13] = &block_descriptor_73;
  v0[14] = v8;
  [v6 saveHideMarker:v4 forSavedAccount:v7 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21CAC3930()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);

  return MEMORY[0x2822009F8](sub_21CAC3A38, v2, v1);
}

uint64_t sub_21CAC3A38()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];

  v4 = v0[1];

  return v4();
}

void sub_21CAC3AB4()
{
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_isIgnoringAccountStoreChangeNotifications) = 1;
  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_21C6ECBD4;
  v4[3] = &block_descriptor_67;
  v2 = _Block_copy(v4);
  v3 = v1;

  [v3 resetHiddenSecurityRecommendationsWithCompletionHandler_];
  _Block_release(v2);
}

uint64_t sub_21CAC3B9C(uint64_t a1)
{
  v2 = sub_21CB853D4();
  v12 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21CB85404();
  v5 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
  v8 = sub_21CB85CF4();
  aBlock[4] = sub_21CAC83DC;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C6ECBD4;
  aBlock[3] = &block_descriptor_70_0;
  v9 = _Block_copy(aBlock);

  sub_21CB853E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21C6EADA4(&qword_27CDEAF48, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C6EAE34(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0);
  sub_21CB85F14();
  MEMORY[0x21CF15800](0, v7, v4, v9);
  _Block_release(v9);

  (*(v12 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v11);
}

uint64_t sub_21CAC3E68()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_passwordWarningManager;
  swift_beginAccess();
  [*(v0 + v1) acknowledgeHighPriorityWarnings];
  [*(v0 + v1) hasUnacknowledgedHighPriorityWarnings];
  swift_getKeyPath(byte_21CBC56A8);
  swift_getKeyPath(byte_21CBC56D0);

  return sub_21CB81DC4();
}

id sub_21CAC3F18(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - v6;
  v8 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = (&v26 - v12);
  v14 = *(type metadata accessor for PMAccount(0) + 24);
  sub_21CACA770(a1 + v14, v13, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719840(v13, type metadata accessor for PMAccount.Storage);
    return 0;
  }

  v16 = *v13;
  sub_21CACA770(a1 + v14, v10, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719840(v10, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v17 = *v10;
    v18 = [*v10 credentialTypes];

    if (v18 == 4 && ([objc_opt_self() isSignInWithAppleCredentialSharingEnabled] & 1) == 0)
    {

      return 0;
    }
  }

  v19 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore);
  sub_21C6EDBAC(a2, v7, &unk_27CDF20B0, &unk_21CBA0090);
  v20 = sub_21CB85C44();
  v21 = *(v20 - 8);
  v22 = (*(v21 + 48))(v7, 1, v20);
  v23 = v19;
  if (v22 == 1)
  {
    sub_21C6EA794(v7, &unk_27CDF20B0, &unk_21CBA0090);
    v24 = 0;
  }

  else
  {
    sub_21CB85B64();
    (*(v21 + 8))(v7, v20);
    v24 = sub_21CB85584();
  }

  v25 = [v23 _canMoveSavedAccount_toGroupWithID_];

  return v25;
}

uint64_t sub_21CAC4230(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 176) = a2;
  *(v4 + 184) = v3;
  *(v4 + 329) = a3;
  *(v4 + 168) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF75E8, &qword_21CBC5500);
  *(v4 + 192) = swift_task_alloc();
  type metadata accessor for PMAccount.SIWAUniqueID(0);
  *(v4 + 200) = swift_task_alloc();
  type metadata accessor for PMAccount.CombinedUniqueID(0);
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = type metadata accessor for PMAccount.UniqueID(0);
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = type metadata accessor for PMAccount(0);
  *(v4 + 240) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = type metadata accessor for PMAccount.Storage(0);
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  sub_21CB858B4();
  *(v4 + 280) = sub_21CB858A4();
  v6 = sub_21CB85874();
  *(v4 + 288) = v6;
  *(v4 + 296) = v5;

  return MEMORY[0x2822009F8](sub_21CAC4434, v6, v5);
}

uint64_t sub_21CAC4434(__n128 a1)
{
  sub_21CACA770(v1[21] + *(v1[29] + 24), v1[34], type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = v1[34];

    sub_21C719840(v2, type metadata accessor for PMAccount.Storage);
    sub_21CAC9DC0();
    swift_allocError();
    swift_willThrow();

    v3 = v1[1];

    return v3();
  }

  else
  {
    v5 = v1[31];
    v6 = v1[22];
    v7 = v1[23];
    v8 = *v1[34];
    v1[38] = v8;
    v9 = *(v7 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore);
    v1[39] = v9;
    sub_21C6EDBAC(v6, v5, &unk_27CDF20B0, &unk_21CBA0090);
    v10 = sub_21CB85C44();
    v11 = *(v10 - 8);
    v12 = (*(v11 + 48))(v5, 1, v10);
    v13 = v9;
    v14 = v1[31];
    if (v12 == 1)
    {
      sub_21C6EA794(v1[31], &unk_27CDF20B0, &unk_21CBA0090);
      v15 = 0;
    }

    else
    {
      sub_21CB85B64();
      (*(v11 + 8))(v14, v10);
      v15 = sub_21CB85584();
    }

    v1[40] = v15;
    v1[2] = v1;
    v1[7] = v1 + 41;
    v1[3] = sub_21CAC4794;
    v16 = swift_continuation_init();
    v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3310, &unk_21CBA9AB0);
    v1[10] = MEMORY[0x277D85DD0];
    v1[11] = 1107296256;
    v1[12] = sub_21C7A1808;
    v1[13] = &block_descriptor_57;
    v1[14] = v16;
    [v13 _moveSavedAccount_toGroupWithID_completionHandler_];

    return MEMORY[0x282200938](v1 + 2);
  }
}

uint64_t sub_21CAC4794()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 288);

  return MEMORY[0x2822009F8](sub_21CAC489C, v2, v1);
}

uint64_t sub_21CAC489C()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);

  v3 = *(v0 + 328);

  if (v3 == 1)
  {
    v4 = *(v0 + 304);
    if (*(v0 + 329) == 1)
    {
      v5 = *(v0 + 264);
      v7 = *(v0 + 232);
      v6 = *(v0 + 240);
      v8 = *(v0 + 224);
      *v5 = v4;
      swift_storeEnumTagMultiPayload();
      v9 = (v6 + v7[7]);
      *v9 = 0u;
      v9[1] = 0u;
      sub_21CACA770(v5, v6 + v7[6], type metadata accessor for PMAccount.Storage);
      v10 = v7[5];
      v11 = v4;
      sub_21C7C8A3C((v6 + v10));
      sub_21CACA770(v6 + v10, v8, type metadata accessor for PMAccount.UniqueID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v13 = *(v0 + 304);
      v14 = *(v0 + 224);
      if (EnumCaseMultiPayload == 1)
      {
        v15 = *(v0 + 200);
        sub_21CAC9E84(v14, v15, type metadata accessor for PMAccount.SIWAUniqueID);
        v16 = sub_21C7CE99C();
        v18 = v17;

        v19 = type metadata accessor for PMAccount.SIWAUniqueID;
      }

      else
      {
        v15 = *(v0 + 208);
        sub_21CAC9E84(v14, v15, type metadata accessor for PMAccount.CombinedUniqueID);
        v16 = sub_21C7CE408();
        v18 = v22;

        v19 = type metadata accessor for PMAccount.CombinedUniqueID;
      }

      sub_21C719840(v15, v19);
      v23 = *(v0 + 240);
      v25 = *(v0 + 184);
      v24 = *(v0 + 192);
      v26 = *(v0 + 168);
      sub_21C719840(*(v0 + 264), type metadata accessor for PMAccount.Storage);
      *v23 = v16;
      v23[1] = v18;
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7650, &qword_21CBADD58);
      v28 = *(v27 + 48);
      sub_21CACA770(v26, v24, type metadata accessor for PMAccount);
      sub_21CAC9E84(v23, v24 + v28, type metadata accessor for PMAccount);
      (*(*(v27 - 8) + 56))(v24, 0, 1, v27);
      v29 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_lastModifiedAccounts;
      swift_beginAccess();
      sub_21CAC9E14(v24, v25 + v29);
      swift_endAccess();
    }

    else
    {
    }

    v21 = *(v0 + 8);
  }

  else
  {
    v20 = *(v0 + 304);
    sub_21CAC9DC0();
    swift_allocError();
    swift_willThrow();

    v21 = *(v0 + 8);
  }

  return v21();
}

uint64_t sub_21CAC4C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v8 - 8);
  v26 = &v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v24 - v12;
  sub_21C6EDBAC(a2, &v24 - v12, &qword_27CDF7670, &unk_21CBAA8F0);
  v14 = *(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  sub_21C716934(v13, v15 + ((v14 + 32) & ~v14), &qword_27CDF7670, &unk_21CBAA8F0);
  type metadata accessor for PMBulkOperationProgress(0);
  swift_allocObject();

  sub_21C71DD5C(a3, a4);
  v16 = sub_21C94C1A0(1, a1, sub_21CAC9BE0, v15);
  v17 = sub_21CB858E4();
  v18 = v26;
  (*(*(v17 - 8) + 56))(v26, 1, 1, v17);
  sub_21C6EDBAC(v25, v13, &qword_27CDF7670, &unk_21CBAA8F0);
  sub_21CB858B4();

  v19 = v27;

  v20 = sub_21CB858A4();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v19;
  v21[5] = v16;
  v21[6] = a1;
  sub_21C716934(v13, v21 + ((v14 + 56) & ~v14), &qword_27CDF7670, &unk_21CBAA8F0);
  sub_21C98B308(0, 0, v18, &unk_21CBC5608, v21);

  return v16;
}

void sub_21CAC4F30(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v7 = a2;
  v9 = ~a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v11;
  if (v9 && (v7 & 1) == 0)
  {
    if (a3)
    {
      sub_21C6EDBAC(a5, &v18 - v11, &qword_27CDF7670, &unk_21CBAA8F0);
      v14 = type metadata accessor for PMSharingGroup(0);
      if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
      {
        j__swift_bridgeObjectRetain();
        sub_21C6EA794(v13, &qword_27CDF7670, &unk_21CBAA8F0);
        v15 = 0;
        v16 = 0;
      }

      else
      {
        v17 = &v13[*(v14 + 20)];
        v15 = *v17;
        v16 = v17[1];
        sub_21CAC9DA8(a1, v7);

        sub_21C719840(v13, type metadata accessor for PMSharingGroup);
      }

      a3(a1, v15, v16);
      sub_21CAC9D88(a1, v7);
    }
  }

  else if (a3)
  {
    (a3)(0, 0, 0, v12);
  }
}

uint64_t sub_21CAC50F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = sub_21CB85C44();
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();
  v7[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC40, &qword_21CBA1A40);
  v7[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v7[18] = type metadata accessor for PMAccount.MockData(0);
  v7[19] = swift_task_alloc();
  v7[20] = type metadata accessor for PMAccount.Storage(0);
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();
  v9 = type metadata accessor for PMAccount(0);
  v7[31] = v9;
  v7[32] = *(v9 - 8);
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  sub_21CB858B4();
  v7[38] = sub_21CB858A4();
  v11 = sub_21CB85874();
  v7[39] = v11;
  v7[40] = v10;

  return MEMORY[0x2822009F8](sub_21CAC53F8, v11, v10);
}

uint64_t sub_21CAC53F8(__n128 a1)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 48);
  v4 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_isIgnoringAccountStoreChangeNotifications;
  *(v1 + 328) = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_isIgnoringAccountStoreChangeNotifications;
  *(v3 + v4) = 1;
  v5 = *(v2 + 16);
  *(v1 + 336) = v5;
  if (v5)
  {
    v6 = 0;
    v7 = *(v1 + 256);
    *(v1 + 344) = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore;
    v8 = *(v7 + 80);
    v9 = MEMORY[0x277D84F90];
    *(v1 + 392) = v8;
    v10 = *(v7 + 72);
    *(v1 + 352) = v10;
    while (1)
    {
      *(v1 + 360) = v6;
      *(v1 + 368) = v9;
      v11 = *(v1 + 296);
      v12 = *(v1 + 248);
      v13 = *(v1 + 184);
      sub_21CACA770(*(v1 + 64) + ((v8 + 32) & ~v8) + v10 * v6, v11, type metadata accessor for PMAccount);
      v14 = *(v12 + 24);
      v110 = v11;
      sub_21CACA770(v11 + v14, v13, type metadata accessor for PMAccount.Storage);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v16 = *(v1 + 232);
      v17 = *(v1 + 184);
      if (EnumCaseMultiPayload == 1)
      {
        v18 = *(v1 + 144);
        v19 = *(v1 + 152);
        sub_21CAC9E84(v17, v19, type metadata accessor for PMAccount.MockData);
        sub_21C6EDBAC(v19 + *(v18 + 72), v16, &unk_27CDF20B0, &unk_21CBA0090);
        sub_21C719840(v19, type metadata accessor for PMAccount.MockData);
      }

      else
      {
        v20 = *v17;
        sub_21CB85B94();
      }

      v21 = *(v1 + 136);
      v22 = *(v1 + 72);
      sub_21C716934(*(v1 + 232), *(v1 + 240), &unk_27CDF20B0, &unk_21CBA0090);
      sub_21C6EDBAC(v22, v21, &qword_27CDF7670, &unk_21CBAA8F0);
      v113 = type metadata accessor for PMSharingGroup(0);
      v112 = *(*(v113 - 8) + 48);
      v109 = v14;
      if (v112(v21, 1) == 1)
      {
        sub_21C6EA794(*(v1 + 136), &qword_27CDF7670, &unk_21CBAA8F0);
        v23 = 1;
      }

      else
      {
        v24 = *(v1 + 136);
        (*(*(v1 + 88) + 16))(*(v1 + 224), v24, *(v1 + 80));
        sub_21C719840(v24, type metadata accessor for PMSharingGroup);
        v23 = 0;
      }

      v25 = *(v1 + 240);
      v26 = *(v1 + 224);
      v27 = *(v1 + 104);
      v28 = *(v1 + 112);
      v29 = *(v1 + 80);
      v30 = *(v1 + 88);
      v111 = *(v30 + 56);
      v111(v26, v23, 1, v29);
      v31 = *(v27 + 48);
      sub_21C6EDBAC(v25, v28, &unk_27CDF20B0, &unk_21CBA0090);
      sub_21C6EDBAC(v26, v28 + v31, &unk_27CDF20B0, &unk_21CBA0090);
      v32 = *(v30 + 48);
      v33 = v32(v28, 1, v29);
      v34 = *(v1 + 80);
      v108 = v32;
      if (v33 == 1)
      {
        break;
      }

      sub_21C6EDBAC(*(v1 + 112), *(v1 + 216), &unk_27CDF20B0, &unk_21CBA0090);
      v37 = v32(v28 + v31, 1, v34);
      v107 = *(v1 + 240);
      v39 = *(v1 + 216);
      v38 = *(v1 + 224);
      if (v37 == 1)
      {
        v41 = *(v1 + 80);
        v40 = *(v1 + 88);
        sub_21C6EA794(*(v1 + 224), &unk_27CDF20B0, &unk_21CBA0090);
        sub_21C6EA794(v107, &unk_27CDF20B0, &unk_21CBA0090);
        (*(v40 + 8))(v39, v41);
LABEL_14:
        sub_21C6EA794(*(v1 + 112), &qword_27CDEAC40, &qword_21CBA1A40);
        goto LABEL_15;
      }

      v106 = *(v1 + 112);
      v114 = v9;
      v50 = *(v1 + 88);
      v51 = *(v1 + 96);
      v52 = *(v1 + 80);
      (*(v50 + 32))(v51, v28 + v31, v52);
      sub_21C6EADA4(&qword_27CDEAC48, MEMORY[0x277D49978], MEMORY[0x277D49990]);
      v53 = sub_21CB85574();
      v54 = *(v50 + 8);
      v55 = v51;
      v9 = v114;
      v54(v55, v52);
      sub_21C6EA794(v38, &unk_27CDF20B0, &unk_21CBA0090);
      sub_21C6EA794(v107, &unk_27CDF20B0, &unk_21CBA0090);
      v54(v39, v52);
      sub_21C6EA794(v106, &unk_27CDF20B0, &unk_21CBA0090);
      if (v53)
      {
        goto LABEL_23;
      }

LABEL_15:
      v42 = *(v1 + 128);
      sub_21C6EDBAC(*(v1 + 72), v42, &qword_27CDF7670, &unk_21CBAA8F0);
      if ((v112)(v42, 1, v113) == 1)
      {
        sub_21C6EA794(*(v1 + 128), &qword_27CDF7670, &unk_21CBAA8F0);
        v43 = 1;
      }

      else
      {
        v44 = *(v1 + 128);
        (*(*(v1 + 88) + 16))(*(v1 + 208), v44, *(v1 + 80));
        sub_21C719840(v44, type metadata accessor for PMSharingGroup);
        v43 = 0;
      }

      v45 = *(v1 + 176);
      v111(*(v1 + 208), v43, 1, *(v1 + 80));
      sub_21CACA770(v110 + v109, v45, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v46 = *(v1 + 176);
        sub_21C6EA794(*(v1 + 208), &unk_27CDF20B0, &unk_21CBA0090);
        sub_21C719840(v46, type metadata accessor for PMAccount.Storage);
      }

      else
      {
        v47 = **(v1 + 176);
        sub_21CACA770(v110 + v109, *(v1 + 168), type metadata accessor for PMAccount.Storage);
        v48 = swift_getEnumCaseMultiPayload();
        v49 = *(v1 + 168);
        if (v48 == 1)
        {
          sub_21C719840(v49, type metadata accessor for PMAccount.Storage);
LABEL_30:
          v62 = *(v1 + 200);
          v63 = *(v1 + 80);
          v64 = *(*(v1 + 48) + *(v1 + 344));
          sub_21C6EDBAC(*(v1 + 208), v62, &unk_27CDF20B0, &unk_21CBA0090);
          LODWORD(v63) = v108(v62, 1, v63);
          v65 = v64;
          v66 = *(v1 + 200);
          if (v63 == 1)
          {
            sub_21C6EA794(*(v1 + 200), &unk_27CDF20B0, &unk_21CBA0090);
            v67 = 0;
          }

          else
          {
            v68 = v9;
            v69 = *(v1 + 80);
            v70 = *(v1 + 88);
            sub_21CB85B64();
            (*(v70 + 8))(v66, v69);
            v9 = v68;
            v67 = sub_21CB85584();
          }

          v71 = *(v1 + 208);
          v72 = [v65 _canMoveSavedAccount_toGroupWithID_];

          sub_21C6EA794(v71, &unk_27CDF20B0, &unk_21CBA0090);
          if (v72)
          {
            v100 = *(v1 + 120);
            sub_21C6EDBAC(*(v1 + 72), v100, &qword_27CDF7670, &unk_21CBAA8F0);
            if ((v112)(v100, 1, v113) == 1)
            {
              sub_21C6EA794(*(v1 + 120), &qword_27CDF7670, &unk_21CBAA8F0);
              v101 = 1;
            }

            else
            {
              v102 = *(v1 + 120);
              (*(*(v1 + 88) + 16))(*(v1 + 192), v102, *(v1 + 80));
              sub_21C719840(v102, type metadata accessor for PMSharingGroup);
              v101 = 0;
            }

            v111(*(v1 + 192), v101, 1, *(v1 + 80));
            v103 = swift_task_alloc();
            *(v1 + 376) = v103;
            *v103 = v1;
            v103[1] = sub_21CAC6230;
            v104 = *(v1 + 296);
            v105 = *(v1 + 192);

            return sub_21CAC4230(v104, v105, 0);
          }

          goto LABEL_34;
        }

        v60 = *v49;
        v61 = [*v49 credentialTypes];

        if (v61 != 4 || ([objc_opt_self() isSignInWithAppleCredentialSharingEnabled] & 1) != 0)
        {
          goto LABEL_30;
        }

        v90 = *(v1 + 208);

        sub_21C6EA794(v90, &unk_27CDF20B0, &unk_21CBA0090);
      }

LABEL_34:
      sub_21CACA770(*(v1 + 296), *(v1 + 280), type metadata accessor for PMAccount);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_21CA4F1B8(0, v9[2] + 1, 1, v9);
      }

      v57 = v9[2];
      v73 = v9[3];
      v58 = v57 + 1;
      if (v57 >= v73 >> 1)
      {
        v9 = sub_21CA4F1B8((v73 > 1), v57 + 1, 1, v9);
      }

      v59 = (v1 + 280);
LABEL_39:
      v74 = *(v1 + 352);
      v75 = *(v1 + 392);
      v76 = *v59;
      v9[2] = v58;
      sub_21CAC9E84(v76, v9 + ((v75 + 32) & ~v75) + v74 * v57, type metadata accessor for PMAccount);
      sub_21CACA770(*(v1 + 296), *(v1 + 272), type metadata accessor for PMAccount);
      swift_getKeyPath(byte_21CBC5610);
      swift_getKeyPath(aP_103);
      v77 = sub_21CB81DA4();
      v79 = v78;
      v80 = *v78;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v79 = v80;
      v115 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v80 = sub_21CA4F1B8(0, v80[2] + 1, 1, v80);
        *v79 = v80;
      }

      v83 = v80[2];
      v82 = v80[3];
      if (v83 >= v82 >> 1)
      {
        v80 = sub_21CA4F1B8((v82 > 1), v83 + 1, 1, v80);
        *v79 = v80;
      }

      v84 = *(v1 + 352);
      v85 = *(v1 + 392);
      v86 = *(v1 + 336);
      v87 = *(v1 + 296);
      v88 = *(v1 + 272);
      v89 = *(v1 + 360) + 1;
      v80[2] = v83 + 1;
      sub_21CAC9E84(v88, v80 + ((v85 + 32) & ~v85) + v84 * v83, type metadata accessor for PMAccount);
      v77();

      sub_21C719840(v87, type metadata accessor for PMAccount);
      if (v89 == v86)
      {
        v91 = v115;
        goto LABEL_48;
      }

      v10 = *(v1 + 352);
      v6 = *(v1 + 360) + 1;
      LOBYTE(v8) = *(v1 + 392);
      v9 = v115;
    }

    v35 = v32;
    v36 = *(v1 + 240);
    sub_21C6EA794(*(v1 + 224), &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C6EA794(v36, &unk_27CDF20B0, &unk_21CBA0090);
    if (v35(v28 + v31, 1, v34) == 1)
    {
      sub_21C6EA794(*(v1 + 112), &unk_27CDF20B0, &unk_21CBA0090);
LABEL_23:
      sub_21CACA770(*(v1 + 296), *(v1 + 288), type metadata accessor for PMAccount);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_21CA4F1B8(0, v9[2] + 1, 1, v9);
      }

      v57 = v9[2];
      v56 = v9[3];
      v58 = v57 + 1;
      if (v57 >= v56 >> 1)
      {
        v9 = sub_21CA4F1B8((v56 > 1), v57 + 1, 1, v9);
      }

      v59 = (v1 + 288);
      goto LABEL_39;
    }

    goto LABEL_14;
  }

  v91 = MEMORY[0x277D84F90];
LABEL_48:

  if (*(v91 + 16))
  {

    v92 = 0;
  }

  else
  {
    v91 = 0;
    v92 = 255;
  }

  v93 = *(v1 + 56);
  swift_getKeyPath(aX_72);
  swift_getKeyPath(a8_41);
  *(v1 + 396) = 1;

  sub_21CB81DC4();
  v94 = *(v93 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_onCompletion);
  if (v94)
  {
    v94(v91, v92);
  }

  v95 = v92;
  v96 = *(v1 + 328);
  v97 = *(v1 + 48);
  sub_21CAC9D88(v91, v95);
  *(v97 + v96) = 0;
  sub_21C6EC92C();

  v98 = *(v1 + 8);

  return v98();
}

uint64_t sub_21CAC6230()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  *(*v1 + 384) = v0;

  sub_21C6EA794(v3, &unk_27CDF20B0, &unk_21CBA0090);
  v4 = *(v2 + 320);
  v5 = *(v2 + 312);
  if (v0)
  {
    v6 = sub_21CAC714C;
  }

  else
  {
    v6 = sub_21CAC6398;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21CAC6398(__n128 a1)
{
  for (i = *(v1 + 368); ; sub_21CAC9E84(v6, i + ((v5 + 32) & ~v5) + v4 * v67, type metadata accessor for PMAccount))
  {
    v106 = i;
    sub_21CACA770(*(v1 + 296), *(v1 + 272), type metadata accessor for PMAccount);
    swift_getKeyPath(byte_21CBC5610);
    swift_getKeyPath(aP_103);
    v7 = sub_21CB81DA4();
    v9 = v8;
    v10 = *v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v9 = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_21CA4F1B8(0, v10[2] + 1, 1, v10);
      *v9 = v10;
    }

    v13 = v10[2];
    v12 = v10[3];
    if (v13 >= v12 >> 1)
    {
      v10 = sub_21CA4F1B8((v12 > 1), v13 + 1, 1, v10);
      *v9 = v10;
    }

    v14 = *(v1 + 352);
    v15 = *(v1 + 392);
    v16 = *(v1 + 336);
    v17 = *(v1 + 296);
    v18 = *(v1 + 272);
    v19 = *(v1 + 360) + 1;
    v10[2] = v13 + 1;
    sub_21CAC9E84(v18, v10 + ((v15 + 32) & ~v15) + v14 * v13, type metadata accessor for PMAccount);
    v7();

    sub_21C719840(v17, type metadata accessor for PMAccount);
    if (v19 == v16)
    {
      break;
    }

    v20 = *(v1 + 352);
    v21 = *(v1 + 360) + 1;
    i = v106;
    *(v1 + 360) = v21;
    *(v1 + 368) = v106;
    v22 = *(v1 + 296);
    v23 = *(v1 + 248);
    v24 = *(v1 + 184);
    sub_21CACA770(*(v1 + 64) + ((*(v1 + 392) + 32) & ~*(v1 + 392)) + v20 * v21, v22, type metadata accessor for PMAccount);
    v101 = *(v23 + 24);
    sub_21CACA770(v22 + v101, v24, type metadata accessor for PMAccount.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v26 = *(v1 + 232);
    v27 = *(v1 + 184);
    v102 = v22;
    if (EnumCaseMultiPayload == 1)
    {
      v28 = *(v1 + 144);
      v29 = *(v1 + 152);
      sub_21CAC9E84(v27, v29, type metadata accessor for PMAccount.MockData);
      sub_21C6EDBAC(v29 + *(v28 + 72), v26, &unk_27CDF20B0, &unk_21CBA0090);
      sub_21C719840(v29, type metadata accessor for PMAccount.MockData);
    }

    else
    {
      v30 = *v27;
      sub_21CB85B94();
    }

    v31 = *(v1 + 136);
    v32 = *(v1 + 72);
    sub_21C716934(*(v1 + 232), *(v1 + 240), &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C6EDBAC(v32, v31, &qword_27CDF7670, &unk_21CBAA8F0);
    v105 = type metadata accessor for PMSharingGroup(0);
    v104 = *(*(v105 - 8) + 48);
    if (v104(v31, 1) == 1)
    {
      sub_21C6EA794(*(v1 + 136), &qword_27CDF7670, &unk_21CBAA8F0);
      v33 = 1;
    }

    else
    {
      v34 = *(v1 + 136);
      (*(*(v1 + 88) + 16))(*(v1 + 224), v34, *(v1 + 80));
      sub_21C719840(v34, type metadata accessor for PMSharingGroup);
      v33 = 0;
    }

    v35 = *(v1 + 240);
    v36 = *(v1 + 224);
    v37 = *(v1 + 104);
    v38 = *(v1 + 112);
    v40 = *(v1 + 80);
    v39 = *(v1 + 88);
    v103 = *(v39 + 56);
    v103(v36, v33, 1, v40);
    v41 = *(v37 + 48);
    sub_21C6EDBAC(v35, v38, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C6EDBAC(v36, v38 + v41, &unk_27CDF20B0, &unk_21CBA0090);
    v42 = *(v39 + 48);
    v43 = v42(v38, 1, v40);
    v44 = *(v1 + 80);
    v100 = v42;
    if (v43 == 1)
    {
      v45 = v42;
      v46 = *(v1 + 240);
      sub_21C6EA794(*(v1 + 224), &unk_27CDF20B0, &unk_21CBA0090);
      sub_21C6EA794(v46, &unk_27CDF20B0, &unk_21CBA0090);
      if (v45(v38 + v41, 1, v44) == 1)
      {
        sub_21C6EA794(*(v1 + 112), &unk_27CDF20B0, &unk_21CBA0090);
LABEL_29:
        sub_21CACA770(*(v1 + 296), *(v1 + 288), type metadata accessor for PMAccount);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          i = sub_21CA4F1B8(0, i[2] + 1, 1, i);
        }

        v67 = i[2];
        v66 = i[3];
        v68 = v67 + 1;
        if (v67 >= v66 >> 1)
        {
          i = sub_21CA4F1B8((v66 > 1), v67 + 1, 1, i);
        }

        v3 = (v1 + 288);
        goto LABEL_3;
      }

      goto LABEL_20;
    }

    sub_21C6EDBAC(*(v1 + 112), *(v1 + 216), &unk_27CDF20B0, &unk_21CBA0090);
    v47 = v42(v38 + v41, 1, v44);
    v99 = *(v1 + 240);
    v49 = *(v1 + 216);
    v48 = *(v1 + 224);
    if (v47 == 1)
    {
      v51 = *(v1 + 80);
      v50 = *(v1 + 88);
      sub_21C6EA794(*(v1 + 224), &unk_27CDF20B0, &unk_21CBA0090);
      sub_21C6EA794(v99, &unk_27CDF20B0, &unk_21CBA0090);
      (*(v50 + 8))(v49, v51);
LABEL_20:
      sub_21C6EA794(*(v1 + 112), &qword_27CDEAC40, &qword_21CBA1A40);
      goto LABEL_21;
    }

    v98 = *(v1 + 112);
    v60 = *(v1 + 88);
    v61 = *(v1 + 96);
    v62 = *(v1 + 80);
    (*(v60 + 32))(v61, v38 + v41, v62);
    sub_21C6EADA4(&qword_27CDEAC48, MEMORY[0x277D49978], MEMORY[0x277D49990]);
    v63 = sub_21CB85574();
    v64 = *(v60 + 8);
    v65 = v61;
    i = v106;
    v64(v65, v62);
    sub_21C6EA794(v48, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C6EA794(v99, &unk_27CDF20B0, &unk_21CBA0090);
    v64(v49, v62);
    sub_21C6EA794(v98, &unk_27CDF20B0, &unk_21CBA0090);
    if (v63)
    {
      goto LABEL_29;
    }

LABEL_21:
    v52 = *(v1 + 128);
    sub_21C6EDBAC(*(v1 + 72), v52, &qword_27CDF7670, &unk_21CBAA8F0);
    if ((v104)(v52, 1, v105) == 1)
    {
      sub_21C6EA794(*(v1 + 128), &qword_27CDF7670, &unk_21CBAA8F0);
      v53 = 1;
    }

    else
    {
      v54 = *(v1 + 128);
      (*(*(v1 + 88) + 16))(*(v1 + 208), v54, *(v1 + 80));
      sub_21C719840(v54, type metadata accessor for PMSharingGroup);
      v53 = 0;
    }

    v55 = *(v1 + 176);
    v103(*(v1 + 208), v53, 1, *(v1 + 80));
    sub_21CACA770(v102 + v101, v55, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v56 = *(v1 + 176);
      sub_21C6EA794(*(v1 + 208), &unk_27CDF20B0, &unk_21CBA0090);
      sub_21C719840(v56, type metadata accessor for PMAccount.Storage);
    }

    else
    {
      v57 = **(v1 + 176);
      sub_21CACA770(v102 + v101, *(v1 + 168), type metadata accessor for PMAccount.Storage);
      v58 = swift_getEnumCaseMultiPayload();
      v59 = *(v1 + 168);
      if (v58 == 1)
      {
        sub_21C719840(v59, type metadata accessor for PMAccount.Storage);
LABEL_35:
        v71 = *(v1 + 200);
        v72 = *(v1 + 80);
        v73 = *(*(v1 + 48) + *(v1 + 344));
        sub_21C6EDBAC(*(v1 + 208), v71, &unk_27CDF20B0, &unk_21CBA0090);
        LODWORD(v72) = v100(v71, 1, v72);
        v74 = v73;
        v75 = *(v1 + 200);
        if (v72 == 1)
        {
          sub_21C6EA794(*(v1 + 200), &unk_27CDF20B0, &unk_21CBA0090);
          v76 = 0;
        }

        else
        {
          v77 = *(v1 + 80);
          v78 = *(v1 + 88);
          sub_21CB85B64();
          (*(v78 + 8))(v75, v77);
          v76 = sub_21CB85584();
        }

        v79 = *(v1 + 208);
        v80 = [v74 _canMoveSavedAccount_toGroupWithID_];

        sub_21C6EA794(v79, &unk_27CDF20B0, &unk_21CBA0090);
        if (v80)
        {
          v92 = *(v1 + 120);
          sub_21C6EDBAC(*(v1 + 72), v92, &qword_27CDF7670, &unk_21CBAA8F0);
          if ((v104)(v92, 1, v105) == 1)
          {
            sub_21C6EA794(*(v1 + 120), &qword_27CDF7670, &unk_21CBAA8F0);
            v93 = 1;
          }

          else
          {
            v94 = *(v1 + 120);
            (*(*(v1 + 88) + 16))(*(v1 + 192), v94, *(v1 + 80));
            sub_21C719840(v94, type metadata accessor for PMSharingGroup);
            v93 = 0;
          }

          v103(*(v1 + 192), v93, 1, *(v1 + 80));
          v95 = swift_task_alloc();
          *(v1 + 376) = v95;
          *v95 = v1;
          v95[1] = sub_21CAC6230;
          v96 = *(v1 + 296);
          v97 = *(v1 + 192);

          return sub_21CAC4230(v96, v97, 0);
        }

        goto LABEL_39;
      }

      v69 = *v59;
      v70 = [*v59 credentialTypes];

      if (v70 != 4 || ([objc_opt_self() isSignInWithAppleCredentialSharingEnabled] & 1) != 0)
      {
        goto LABEL_35;
      }

      v82 = *(v1 + 208);

      sub_21C6EA794(v82, &unk_27CDF20B0, &unk_21CBA0090);
    }

LABEL_39:
    sub_21CACA770(*(v1 + 296), *(v1 + 280), type metadata accessor for PMAccount);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_21CA4F1B8(0, i[2] + 1, 1, i);
    }

    v67 = i[2];
    v81 = i[3];
    v68 = v67 + 1;
    if (v67 >= v81 >> 1)
    {
      i = sub_21CA4F1B8((v81 > 1), v67 + 1, 1, i);
    }

    v3 = (v1 + 280);
LABEL_3:
    v4 = *(v1 + 352);
    v5 = *(v1 + 392);
    v6 = *v3;
    i[2] = v68;
  }

  v83 = v106;
  if (v106[2])
  {

    v84 = 0;
  }

  else
  {
    v83 = 0;
    v84 = 255;
  }

  v85 = *(v1 + 56);
  swift_getKeyPath(aX_72);
  swift_getKeyPath(a8_41);
  *(v1 + 396) = 1;

  sub_21CB81DC4();
  v86 = *(v85 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_onCompletion);
  if (v86)
  {
    v86(v83, v84);
  }

  v87 = v84;
  v88 = *(v1 + 328);
  v89 = *(v1 + 48);
  sub_21CAC9D88(v83, v87);
  *(v89 + v88) = 0;
  sub_21C6EC92C();

  v90 = *(v1 + 8);

  return v90();
}

uint64_t sub_21CAC714C(__n128 a1)
{
  sub_21CACA770(*(v1 + 296), *(v1 + 264), type metadata accessor for PMAccount);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v1 + 368);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_21CA4F1B8(0, v3[2] + 1, 1, *(v1 + 368));
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_21CA4F1B8((v4 > 1), v5 + 1, 1, v3);
  }

  v6 = *(v1 + 352);
  v7 = *(v1 + 264);
  v8 = (*(v1 + 392) + 32) & ~*(v1 + 392);

  v3[2] = v5 + 1;
  sub_21CAC9E84(v7, v3 + v8 + v6 * v5, type metadata accessor for PMAccount);
  while (1)
  {
    v112 = v3;
    sub_21CACA770(*(v1 + 296), *(v1 + 272), type metadata accessor for PMAccount);
    swift_getKeyPath(byte_21CBC5610);
    swift_getKeyPath(aP_103);
    v13 = sub_21CB81DA4();
    v15 = v14;
    v16 = *v14;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    *v15 = v16;
    if ((v17 & 1) == 0)
    {
      v16 = sub_21CA4F1B8(0, v16[2] + 1, 1, v16);
      *v15 = v16;
    }

    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      v16 = sub_21CA4F1B8((v18 > 1), v19 + 1, 1, v16);
      *v15 = v16;
    }

    v20 = *(v1 + 352);
    v21 = *(v1 + 392);
    v22 = *(v1 + 336);
    v23 = *(v1 + 296);
    v24 = *(v1 + 272);
    v25 = *(v1 + 360) + 1;
    v16[2] = v19 + 1;
    sub_21CAC9E84(v24, v16 + ((v21 + 32) & ~v21) + v20 * v19, type metadata accessor for PMAccount);
    v13();

    sub_21C719840(v23, type metadata accessor for PMAccount);
    if (v25 == v22)
    {
      break;
    }

    v26 = *(v1 + 352);
    v27 = *(v1 + 360) + 1;
    v3 = v112;
    *(v1 + 360) = v27;
    *(v1 + 368) = v112;
    v28 = *(v1 + 296);
    v29 = *(v1 + 248);
    v30 = *(v1 + 184);
    sub_21CACA770(*(v1 + 64) + ((*(v1 + 392) + 32) & ~*(v1 + 392)) + v26 * v27, v28, type metadata accessor for PMAccount);
    v107 = *(v29 + 24);
    sub_21CACA770(v28 + v107, v30, type metadata accessor for PMAccount.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v32 = *(v1 + 232);
    v33 = *(v1 + 184);
    v108 = v28;
    if (EnumCaseMultiPayload == 1)
    {
      v34 = *(v1 + 144);
      v35 = *(v1 + 152);
      sub_21CAC9E84(v33, v35, type metadata accessor for PMAccount.MockData);
      sub_21C6EDBAC(v35 + *(v34 + 72), v32, &unk_27CDF20B0, &unk_21CBA0090);
      sub_21C719840(v35, type metadata accessor for PMAccount.MockData);
    }

    else
    {
      v36 = *v33;
      sub_21CB85B94();
    }

    v37 = *(v1 + 136);
    v38 = *(v1 + 72);
    sub_21C716934(*(v1 + 232), *(v1 + 240), &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C6EDBAC(v38, v37, &qword_27CDF7670, &unk_21CBAA8F0);
    v111 = type metadata accessor for PMSharingGroup(0);
    v110 = *(*(v111 - 8) + 48);
    if (v110(v37, 1) == 1)
    {
      sub_21C6EA794(*(v1 + 136), &qword_27CDF7670, &unk_21CBAA8F0);
      v39 = 1;
    }

    else
    {
      v40 = *(v1 + 136);
      (*(*(v1 + 88) + 16))(*(v1 + 224), v40, *(v1 + 80));
      sub_21C719840(v40, type metadata accessor for PMSharingGroup);
      v39 = 0;
    }

    v41 = *(v1 + 240);
    v42 = *(v1 + 224);
    v43 = *(v1 + 104);
    v44 = *(v1 + 112);
    v46 = *(v1 + 80);
    v45 = *(v1 + 88);
    v109 = *(v45 + 56);
    v109(v42, v39, 1, v46);
    v47 = *(v43 + 48);
    sub_21C6EDBAC(v41, v44, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C6EDBAC(v42, v44 + v47, &unk_27CDF20B0, &unk_21CBA0090);
    v48 = *(v45 + 48);
    v49 = v48(v44, 1, v46);
    v50 = *(v1 + 80);
    v106 = v48;
    if (v49 == 1)
    {
      v51 = v48;
      v52 = *(v1 + 240);
      sub_21C6EA794(*(v1 + 224), &unk_27CDF20B0, &unk_21CBA0090);
      sub_21C6EA794(v52, &unk_27CDF20B0, &unk_21CBA0090);
      if (v51(v44 + v47, 1, v50) == 1)
      {
        sub_21C6EA794(*(v1 + 112), &unk_27CDF20B0, &unk_21CBA0090);
LABEL_33:
        sub_21CACA770(*(v1 + 296), *(v1 + 288), type metadata accessor for PMAccount);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_21CA4F1B8(0, v3[2] + 1, 1, v3);
        }

        v73 = v3[2];
        v72 = v3[3];
        v74 = v73 + 1;
        if (v73 >= v72 >> 1)
        {
          v3 = sub_21CA4F1B8((v72 > 1), v73 + 1, 1, v3);
        }

        v9 = (v1 + 288);
        goto LABEL_7;
      }

      goto LABEL_24;
    }

    sub_21C6EDBAC(*(v1 + 112), *(v1 + 216), &unk_27CDF20B0, &unk_21CBA0090);
    v53 = v48(v44 + v47, 1, v50);
    v105 = *(v1 + 240);
    v55 = *(v1 + 216);
    v54 = *(v1 + 224);
    if (v53 == 1)
    {
      v57 = *(v1 + 80);
      v56 = *(v1 + 88);
      sub_21C6EA794(*(v1 + 224), &unk_27CDF20B0, &unk_21CBA0090);
      sub_21C6EA794(v105, &unk_27CDF20B0, &unk_21CBA0090);
      (*(v56 + 8))(v55, v57);
LABEL_24:
      sub_21C6EA794(*(v1 + 112), &qword_27CDEAC40, &qword_21CBA1A40);
      goto LABEL_25;
    }

    v104 = *(v1 + 112);
    v66 = *(v1 + 88);
    v67 = *(v1 + 96);
    v68 = *(v1 + 80);
    (*(v66 + 32))(v67, v44 + v47, v68);
    sub_21C6EADA4(&qword_27CDEAC48, MEMORY[0x277D49978], MEMORY[0x277D49990]);
    v69 = sub_21CB85574();
    v70 = *(v66 + 8);
    v71 = v67;
    v3 = v112;
    v70(v71, v68);
    sub_21C6EA794(v54, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C6EA794(v105, &unk_27CDF20B0, &unk_21CBA0090);
    v70(v55, v68);
    sub_21C6EA794(v104, &unk_27CDF20B0, &unk_21CBA0090);
    if (v69)
    {
      goto LABEL_33;
    }

LABEL_25:
    v58 = *(v1 + 128);
    sub_21C6EDBAC(*(v1 + 72), v58, &qword_27CDF7670, &unk_21CBAA8F0);
    if ((v110)(v58, 1, v111) == 1)
    {
      sub_21C6EA794(*(v1 + 128), &qword_27CDF7670, &unk_21CBAA8F0);
      v59 = 1;
    }

    else
    {
      v60 = *(v1 + 128);
      (*(*(v1 + 88) + 16))(*(v1 + 208), v60, *(v1 + 80));
      sub_21C719840(v60, type metadata accessor for PMSharingGroup);
      v59 = 0;
    }

    v61 = *(v1 + 176);
    v109(*(v1 + 208), v59, 1, *(v1 + 80));
    sub_21CACA770(v108 + v107, v61, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v62 = *(v1 + 176);
      sub_21C6EA794(*(v1 + 208), &unk_27CDF20B0, &unk_21CBA0090);
      sub_21C719840(v62, type metadata accessor for PMAccount.Storage);
    }

    else
    {
      v63 = **(v1 + 176);
      sub_21CACA770(v108 + v107, *(v1 + 168), type metadata accessor for PMAccount.Storage);
      v64 = swift_getEnumCaseMultiPayload();
      v65 = *(v1 + 168);
      if (v64 == 1)
      {
        sub_21C719840(v65, type metadata accessor for PMAccount.Storage);
LABEL_39:
        v77 = *(v1 + 200);
        v78 = *(v1 + 80);
        v79 = *(*(v1 + 48) + *(v1 + 344));
        sub_21C6EDBAC(*(v1 + 208), v77, &unk_27CDF20B0, &unk_21CBA0090);
        LODWORD(v78) = v106(v77, 1, v78);
        v80 = v79;
        v81 = *(v1 + 200);
        if (v78 == 1)
        {
          sub_21C6EA794(*(v1 + 200), &unk_27CDF20B0, &unk_21CBA0090);
          v82 = 0;
        }

        else
        {
          v83 = *(v1 + 80);
          v84 = *(v1 + 88);
          sub_21CB85B64();
          (*(v84 + 8))(v81, v83);
          v82 = sub_21CB85584();
        }

        v85 = *(v1 + 208);
        v86 = [v80 _canMoveSavedAccount_toGroupWithID_];

        sub_21C6EA794(v85, &unk_27CDF20B0, &unk_21CBA0090);
        if (v86)
        {
          v98 = *(v1 + 120);
          sub_21C6EDBAC(*(v1 + 72), v98, &qword_27CDF7670, &unk_21CBAA8F0);
          if ((v110)(v98, 1, v111) == 1)
          {
            sub_21C6EA794(*(v1 + 120), &qword_27CDF7670, &unk_21CBAA8F0);
            v99 = 1;
          }

          else
          {
            v100 = *(v1 + 120);
            (*(*(v1 + 88) + 16))(*(v1 + 192), v100, *(v1 + 80));
            sub_21C719840(v100, type metadata accessor for PMSharingGroup);
            v99 = 0;
          }

          v109(*(v1 + 192), v99, 1, *(v1 + 80));
          v101 = swift_task_alloc();
          *(v1 + 376) = v101;
          *v101 = v1;
          v101[1] = sub_21CAC6230;
          v102 = *(v1 + 296);
          v103 = *(v1 + 192);

          return sub_21CAC4230(v102, v103, 0);
        }

        goto LABEL_43;
      }

      v75 = *v65;
      v76 = [*v65 credentialTypes];

      if (v76 != 4 || ([objc_opt_self() isSignInWithAppleCredentialSharingEnabled] & 1) != 0)
      {
        goto LABEL_39;
      }

      v88 = *(v1 + 208);

      sub_21C6EA794(v88, &unk_27CDF20B0, &unk_21CBA0090);
    }

LABEL_43:
    sub_21CACA770(*(v1 + 296), *(v1 + 280), type metadata accessor for PMAccount);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_21CA4F1B8(0, v3[2] + 1, 1, v3);
    }

    v73 = v3[2];
    v87 = v3[3];
    v74 = v73 + 1;
    if (v73 >= v87 >> 1)
    {
      v3 = sub_21CA4F1B8((v87 > 1), v73 + 1, 1, v3);
    }

    v9 = (v1 + 280);
LABEL_7:
    v10 = *(v1 + 352);
    v11 = *(v1 + 392);
    v12 = *v9;
    v3[2] = v74;
    sub_21CAC9E84(v12, v3 + ((v11 + 32) & ~v11) + v10 * v73, type metadata accessor for PMAccount);
  }

  v89 = v112;
  if (v112[2])
  {

    v90 = 0;
  }

  else
  {
    v89 = 0;
    v90 = 255;
  }

  v91 = *(v1 + 56);
  swift_getKeyPath(aX_72);
  swift_getKeyPath(a8_41);
  *(v1 + 396) = 1;

  sub_21CB81DC4();
  v92 = *(v91 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_onCompletion);
  if (v92)
  {
    v92(v89, v90);
  }

  v93 = v90;
  v94 = *(v1 + 328);
  v95 = *(v1 + 48);
  sub_21CAC9D88(v89, v93);
  *(v95 + v94) = 0;
  sub_21C6EC92C();

  v96 = *(v1 + 8);

  return v96();
}

uint64_t sub_21CAC7FC4(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  sub_21CB858B4();
  v2[20] = sub_21CB858A4();
  v4 = sub_21CB85874();
  v2[21] = v4;
  v2[22] = v3;

  return MEMORY[0x2822009F8](sub_21CAC805C, v4, v3);
}

uint64_t sub_21CAC805C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v5 = v0 + 18;
  v4 = v0[18];
  v6 = *(v5[1] + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore);
  v1[23] = v6;
  v1[2] = v2;
  v1[3] = sub_21CAC818C;
  v7 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7660, &unk_21CBBDB50);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CAB1570;
  v1[13] = &block_descriptor_36;
  v1[14] = v7;
  [v6 clearSavedAccountHistory:v4 withCompletionHandler:v1 + 10];

  return MEMORY[0x282200938](v3);
}

uint64_t sub_21CAC818C()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);

  return MEMORY[0x2822009F8](sub_21CAC8294, v2, v1);
}

uint64_t sub_21CAC8294()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21CAC8314(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21C702EFC;

  return sub_21CAB1DCC(a1);
}

uint64_t sub_21CAC83EC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21C6F35D0;

  return sub_21CAB86E8(a1, a2);
}

uint64_t sub_21CAC8490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21C6F35D0;

  return sub_21CAB8A2C(a1, a2, a3);
}

uint64_t sub_21CAC853C(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_21CB858B4();
  v2[3] = sub_21CB858A4();
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_21C74FDC4;

  return sub_21CAB8E98(a1, a2, 1);
}

uint64_t sub_21CAC8610(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21C6F35D0;

  return sub_21CAC3700(a1);
}

void sub_21CAC86A4(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore);
  v4 = [v2 savedAccount];
  [v3 removeHideWarningMarkerForSavedAccount_];
}

uint64_t sub_21CAC8734(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21C702EFC;

  return sub_21CAC4230(a1, a2, a3);
}

uint64_t sub_21CAC87E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  sub_21C71DD5C(a3, a4);
  v9 = sub_21CAC4C4C(a1, a2, sub_21CACA70C, v8);

  return v9;
}

id sub_21CAC8878(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_passwordWarningManager;
  swift_beginAccess();
  v5 = *(v2 + v4);
  sub_21C6E8F4C(0, &qword_27CDF76E0, 0x277D49B20);
  v6 = v5;
  v7 = sub_21CB85814();
  v8 = [v6 savedAccountsFromGroup:v7 containsPasswordFromSavedAccount:a2];

  return v8;
}

uint64_t sub_21CAC8928(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21C6F35D0;

  return sub_21CAC7FC4(a1);
}

void *sub_21CAC8A34(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF76F0, &qword_21CBA0DA0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_21CAC8AB8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7720, &qword_21CBA0D80);
  v4 = *(sub_21CB85C44() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_21CAC8BB8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7730, &unk_21CBA0E60);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_21CAC8C3C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF76D8, &qword_21CBD0830);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_21CAC8CC4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC238, &qword_21CBA3D90);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF76D8, &qword_21CBD0830);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_21CAC8E04(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        a7(0);
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

void sub_21CAC8FA8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB018, &qword_21CBA0D90);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 112);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

char *sub_21CAC9098(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21CB862E4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_21C6E8F4C(0, &qword_27CDF76D0, 0x277D49AB8);
        v6 = sub_21CB85844();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_21CAC9268(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_21CAC91AC(0, v2, 1, a1);
  }

  return result;
}

char *sub_21CAC91AC(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = &result[-a3];
LABEL_5:
    result = *(v6 + 8 * v4);
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = [result compare_];
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v7 += 8;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v11 = *v10;
      result = v10[1];
      *v10 = result;
      v10[1] = v11;
      --v10;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21CAC9268(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v5 = a3[1];
  if (v5 >= 1)
  {
    v81 = a4;
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *(*a3 + 8 * v6);
        v10 = 8 * v8;
        v11 = (*a3 + 8 * v8);
        v13 = *v11;
        v12 = (v11 + 2);
        result = [v9 compare_];
        v14 = result;
        v82 = v8;
        v15 = (v8 + 2);
        while (v5 != v15)
        {
          result = [*v12 compare_];
          ++v15;
          ++v12;
          if ((v14 == -1) == (result != -1))
          {
            v5 = (v15 - 1);
            break;
          }
        }

        v8 = v82;
        if (v14 == -1)
        {
          if (v5 < v82)
          {
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
            return result;
          }

          if (v82 < v5)
          {
            v16 = 8 * v5 - 8;
            v17 = v5;
            v18 = v82;
            do
            {
              if (v18 != --v17)
              {
                v20 = *a3;
                if (!*a3)
                {
                  goto LABEL_124;
                }

                v19 = *(v20 + v10);
                *(v20 + v10) = *(v20 + v16);
                *(v20 + v16) = v19;
              }

              v18 = (v18 + 1);
              v16 -= 8;
              v10 += 8;
            }

            while (v18 < v17);
          }
        }

        v6 = v5;
      }

      v21 = a3[1];
      if (v6 < v21)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_116;
        }

        if (v6 - v8 < v81)
        {
          if (__OFADD__(v8, v81))
          {
            goto LABEL_117;
          }

          if (v8 + v81 >= v21)
          {
            v22 = a3[1];
          }

          else
          {
            v22 = v8 + v81;
          }

          if (v22 < v8)
          {
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (v6 != v22)
          {
            v23 = *a3;
            v24 = *a3 + 8 * v6 - 8;
            v83 = v8;
            v25 = (v8 - v6);
            do
            {
              v26 = *(v23 + 8 * v6);
              v27 = v25;
              v28 = v24;
              do
              {
                result = [v26 compare_];
                if (result != -1)
                {
                  break;
                }

                if (!v23)
                {
                  goto LABEL_121;
                }

                v29 = *v28;
                v26 = v28[1];
                *v28 = v26;
                v28[1] = v29;
                --v28;
              }

              while (!__CFADD__(v27++, 1));
              ++v6;
              v24 += 8;
              --v25;
            }

            while (v6 != v22);
            v6 = v22;
            v8 = v83;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_115;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21C86467C(0, *(v7 + 2) + 1, 1, v7);
        v7 = result;
      }

      v32 = *(v7 + 2);
      v31 = *(v7 + 3);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        result = sub_21C86467C((v31 > 1), v32 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 2) = v33;
      v34 = &v7[16 * v32];
      *(v34 + 4) = v8;
      *(v34 + 5) = v6;
      v35 = *v84;
      if (!*v84)
      {
        goto LABEL_125;
      }

      if (v32)
      {
        while (1)
        {
          v36 = v33 - 1;
          if (v33 >= 4)
          {
            break;
          }

          if (v33 == 3)
          {
            v37 = *(v7 + 4);
            v38 = *(v7 + 5);
            v47 = __OFSUB__(v38, v37);
            v39 = v38 - v37;
            v40 = v47;
LABEL_57:
            if (v40)
            {
              goto LABEL_104;
            }

            v53 = &v7[16 * v33];
            v55 = *v53;
            v54 = *(v53 + 1);
            v56 = __OFSUB__(v54, v55);
            v57 = v54 - v55;
            v58 = v56;
            if (v56)
            {
              goto LABEL_107;
            }

            v59 = &v7[16 * v36 + 32];
            v61 = *v59;
            v60 = *(v59 + 1);
            v47 = __OFSUB__(v60, v61);
            v62 = v60 - v61;
            if (v47)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v57, v62))
            {
              goto LABEL_111;
            }

            if (v57 + v62 >= v39)
            {
              if (v39 < v62)
              {
                v36 = v33 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v63 = &v7[16 * v33];
          v65 = *v63;
          v64 = *(v63 + 1);
          v47 = __OFSUB__(v64, v65);
          v57 = v64 - v65;
          v58 = v47;
LABEL_71:
          if (v58)
          {
            goto LABEL_106;
          }

          v66 = &v7[16 * v36];
          v68 = *(v66 + 4);
          v67 = *(v66 + 5);
          v47 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v47)
          {
            goto LABEL_109;
          }

          if (v69 < v57)
          {
            goto LABEL_3;
          }

LABEL_78:
          v74 = v36 - 1;
          if (v36 - 1 >= v33)
          {
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
            goto LABEL_118;
          }

          if (!*a3)
          {
            goto LABEL_122;
          }

          v8 = *&v7[16 * v74 + 32];
          v75 = *&v7[16 * v36 + 40];
          sub_21CAC980C((*a3 + 8 * v8), (*a3 + 8 * *&v7[16 * v36 + 32]), (*a3 + 8 * v75), v35);
          if (v4)
          {
          }

          if (v75 < v8)
          {
            goto LABEL_100;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_21C864538(v7);
          }

          if (v74 >= *(v7 + 2))
          {
            goto LABEL_101;
          }

          v76 = &v7[16 * v74];
          *(v76 + 4) = v8;
          *(v76 + 5) = v75;
          result = sub_21C8644AC(v36);
          v33 = *(v7 + 2);
          if (v33 <= 1)
          {
            goto LABEL_3;
          }
        }

        v41 = &v7[16 * v33 + 32];
        v42 = *(v41 - 64);
        v43 = *(v41 - 56);
        v47 = __OFSUB__(v43, v42);
        v44 = v43 - v42;
        if (v47)
        {
          goto LABEL_102;
        }

        v46 = *(v41 - 48);
        v45 = *(v41 - 40);
        v47 = __OFSUB__(v45, v46);
        v39 = v45 - v46;
        v40 = v47;
        if (v47)
        {
          goto LABEL_103;
        }

        v48 = &v7[16 * v33];
        v50 = *v48;
        v49 = *(v48 + 1);
        v47 = __OFSUB__(v49, v50);
        v51 = v49 - v50;
        if (v47)
        {
          goto LABEL_105;
        }

        v47 = __OFADD__(v39, v51);
        v52 = v39 + v51;
        if (v47)
        {
          goto LABEL_108;
        }

        if (v52 >= v44)
        {
          v70 = &v7[16 * v36 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v47 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v47)
          {
            goto LABEL_112;
          }

          if (v39 < v73)
          {
            v36 = v33 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v5 = a3[1];
      if (v6 >= v5)
      {
        goto LABEL_88;
      }
    }
  }

  v7 = MEMORY[0x277D84F90];
LABEL_88:
  v8 = *v84;
  if (!*v84)
  {
    goto LABEL_126;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_119:
    result = sub_21C864538(v7);
    v7 = result;
  }

  v77 = *(v7 + 2);
  if (v77 >= 2)
  {
    while (*a3)
    {
      v78 = *&v7[16 * v77];
      v79 = *&v7[16 * v77 + 24];
      sub_21CAC980C((*a3 + 8 * v78), (*a3 + 8 * *&v7[16 * v77 + 16]), (*a3 + 8 * v79), v8);
      if (v4)
      {
      }

      if (v79 < v78)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_21C864538(v7);
      }

      if (v77 - 2 >= *(v7 + 2))
      {
        goto LABEL_114;
      }

      v80 = &v7[16 * v77];
      *v80 = v78;
      *(v80 + 1) = v79;
      result = sub_21C8644AC(v77 - 1);
      v77 = *(v7 + 2);
      if (v77 <= 1)
      {
      }
    }

    goto LABEL_123;
  }
}

uint64_t sub_21CAC980C(id *__src, id *__dst, id *a3, id *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __dst || &__dst[v13] <= a4)
    {
      memmove(a4, __dst, 8 * v13);
    }

    v14 = &v4[v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_25:
      v17 = v6 - 1;
      --v5;
      v18 = v14;
      do
      {
        v19 = v5 + 1;
        v20 = *--v18;
        if ([v20 compare_] == -1)
        {
          if (v19 != v6)
          {
            *v5 = *v17;
          }

          if (v14 <= v4 || (--v6, v17 <= v7))
          {
            v6 = v17;
            goto LABEL_37;
          }

          goto LABEL_25;
        }

        if (v19 != v14)
        {
          *v5 = *v18;
        }

        --v5;
        v14 = v18;
      }

      while (v18 > v4);
      v14 = v18;
    }
  }

  else
  {
    if (a4 != __src || &__src[v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 >= 8 && v6 < v5)
    {
      while ([*v6 compare_] == -1)
      {
        v15 = v6;
        v16 = v7 == v6++;
        if (!v16)
        {
          goto LABEL_13;
        }

LABEL_14:
        ++v7;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_35;
        }
      }

      v15 = v4;
      v16 = v7 == v4++;
      if (v16)
      {
        goto LABEL_14;
      }

LABEL_13:
      *v7 = *v15;
      goto LABEL_14;
    }

LABEL_35:
    v6 = v7;
  }

LABEL_37:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

id keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

void sub_21CAC9BE0(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_21CAC4F30(a1, a2, v6, v7, v8);
}

uint64_t sub_21CAC9C70(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_21C702EFC;

  return sub_21CAC50F0(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_21CAC9D88(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return j__swift_bridgeObjectRelease();
  }

  return result;
}

uint64_t sub_21CAC9DA8(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return j__swift_bridgeObjectRetain();
  }

  return result;
}

unint64_t sub_21CAC9DC0()
{
  result = qword_27CDF7678;
  if (!qword_27CDF7678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7678);
  }

  return result;
}

uint64_t sub_21CAC9E14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF75E8, &qword_21CBC5500);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CAC9E84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CAC9EF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C6F35D0;

  return sub_21CABE494(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_21CAC9FBC()
{
  result = qword_27CDF7690;
  if (!qword_27CDF7690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7690);
  }

  return result;
}

uint64_t sub_21CACA010(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C6F35D0;

  return sub_21CABD708(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21CACA0D8(uint64_t a1)
{
  type metadata accessor for PMAccount(0);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_21C6F35D0;

  return sub_21CABCAFC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_21CACA200(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C6F35D0;

  return sub_21CABAA00(a1, v4, v5, v6, v7, v8);
}

uint64_t block_copy_helper_208(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_21CACA2F0(void *result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = sub_21CAC8C3C((a3 >> 1) - a2, (a3 >> 1) - a2);
  if (v3 < a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  sub_21C6E8F4C(0, &qword_27CDF76D0, 0x277D49AB8);
  swift_arrayInitWithCopy();
  if (__OFSUB__(0, a2))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6[2];
  v8 = __OFADD__(a2, v7);
  v9 = a2 + v7;
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v9 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v9 < 0)
  {
LABEL_13:
    __break(1u);
  }
}

uint64_t sub_21CACA3C8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *v6;
  v13 = *v6 >> 62;
  if (!v13)
  {
    result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= a5)
    {
      goto LABEL_3;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  result = sub_21CB85FA4();
  if (result < a5)
  {
    goto LABEL_28;
  }

LABEL_3:
  if (a5 < 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v13)
  {
    result = sub_21CB85FA4();
  }

  else
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a6)
  {
    goto LABEL_30;
  }

  if (a6 < 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if ((v12 & 0xC000000000000001) == 0)
  {
LABEL_12:

    goto LABEL_16;
  }

  if (a6 < a5)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (a5 == a6)
  {
    goto LABEL_12;
  }

  if (a5 >= a6)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  sub_21C6E8F4C(0, &qword_27CDF76D0, 0x277D49AB8);

  v15 = a5;
  do
  {
    v16 = v15 + 1;
    sub_21CB860C4();
    v15 = v16;
  }

  while (a6 != v16);
LABEL_16:

  if (v13)
  {
    sub_21CB861F4();
    v17 = v19;
    v18 = v20;
    result = swift_unknownObjectRelease();
  }

  else
  {
    v17 = (v12 & 0xFFFFFFFFFFFFFF8) + 32;
    v18 = a5;
  }

  if (v17 + 8 * v18 == a2 + 8 * a3)
  {
    if ((a4 >> 1) >= a3)
    {
      if (a5 == a3 && a4 >> 1 == a6)
      {
        return result;
      }

      goto LABEL_20;
    }

    goto LABEL_33;
  }

LABEL_20:

  return sub_21CB6546C(a5, a6, a1, a2, a3, a4);
}

uint64_t sub_21CACA5F4()
{
  v1 = *(type metadata accessor for PMAccount(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_21CAB3238(v2, v3, v4);
}

uint64_t sub_21CACA658(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21C6F35D0;

  return sub_21CAB38BC(a1, v4, v5, v6);
}

uint64_t sub_21CACA70C(uint64_t result)
{
  v2 = *(v1 + 16);
  if (result)
  {
    if (!v2)
    {
      return result;
    }

    v3 = 0;
  }

  else
  {
    if (!v2)
    {
      return result;
    }

    result = 0;
    v3 = 255;
  }

  return v2(result, v3);
}

uint64_t sub_21CACA770(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id PMPasswordManagerState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_21CACA8C4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21CAA10B4(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 32 * a1;
    v10 = *(v9 + 32);
    v11 = *(v9 + 40);
    v9 += 32;
    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
    result = memmove(v9, (v9 + 32), 32 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_21CACA960(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

uint64_t sub_21CACA9F8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21CAA1168(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for PMGeneratedPassword(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_21C7D5F48(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

double sub_21CACAB18(uint64_t *a1)
{
  swift_getKeyPath(byte_21CBC5DB0);
  sub_21CB81DB4();

  return result;
}

uint64_t sub_21CACAB94(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF30D0, &qword_21CBBDC70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  sub_21C6EDBAC(a1, &v13 - v8, &qword_27CDF30D0, &qword_21CBBDC70);
  v10 = *a2;
  swift_getKeyPath(byte_21CBC5DB0);
  sub_21C6EDBAC(v9, v6, &qword_27CDF30D0, &qword_21CBBDC70);
  v11 = v10;
  sub_21CB81DC4();
  return sub_21C6EA794(v9, &qword_27CDF30D0, &qword_21CBBDC70);
}

void sub_21CACACC0(void *a2@<X8>)
{
  swift_getKeyPath(byte_21CBC5D40);
  swift_getKeyPath(byte_21CBC5D68);
  sub_21CB81DB4();

  *a2 = v3;
}

uint64_t sub_21CACAD40(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath(byte_21CBC5D40);
  swift_getKeyPath(byte_21CBC5D68);
  v4 = v2;
  v5 = v3;
  return sub_21CB81DC4();
}

char *sub_21CACADB4(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState_additionalAccountDetailsSheetControllers;
    swift_beginAccess();
    v5 = *&v3[v4];
    if (v5 >> 62)
    {
      result = sub_21CB85FA4();
      if (result)
      {
LABEL_4:
        v6 = result - 1;
        if (__OFSUB__(result, 1))
        {
          __break(1u);
        }

        else if ((v5 & 0xC000000000000001) == 0)
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v6 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_10;
          }

          __break(1u);
          return result;
        }

        MEMORY[0x21CF15BD0](v6, v5);

        goto LABEL_11;
      }
    }

    else
    {
      result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_4;
      }
    }

LABEL_10:

LABEL_11:
    swift_getKeyPath(byte_21CBC5EF0);
    swift_getKeyPath(byte_21CBC5F18);

    return sub_21CB81DC4();
  }

  return result;
}

void sub_21CACAF18(unint64_t a1, uint64_t *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState_additionalAccountDetailsSheetControllers;
    swift_beginAccess();
    v7 = *&v5[v6];
    if (v7 >> 62)
    {
      v8 = sub_21CB85FA4();
      if (v8)
      {
LABEL_4:
        v9 = v8 - 1;
        if (__OFSUB__(v8, 1))
        {
          __break(1u);
        }

        else if ((v7 & 0xC000000000000001) == 0)
        {
          if ((v9 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v9 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_10;
          }

          __break(1u);
          goto LABEL_27;
        }

        MEMORY[0x21CF15BD0](v9, v7);

LABEL_11:
        swift_getKeyPath(byte_21CBC5EF0);
        swift_getKeyPath(byte_21CBC5F18);
        sub_21CB81DB4();

        if (v14)
        {
          if (v13 == *a1 && v14 == *(a1 + 8))
          {

            goto LABEL_16;
          }

          v10 = sub_21CB86344();

          if (v10)
          {
LABEL_16:
            a1 = *&v5[v6];
            if (!(a1 >> 62))
            {
              v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v11)
              {
                goto LABEL_18;
              }

              goto LABEL_28;
            }

LABEL_27:
            v11 = sub_21CB85FA4();
            if (v11)
            {
LABEL_18:
              v12 = v11 - 1;
              if (__OFSUB__(v11, 1))
              {
                __break(1u);
              }

              else if ((a1 & 0xC000000000000001) == 0)
              {
                if ((v12 & 0x8000000000000000) != 0)
                {
                  __break(1u);
                }

                else if (v12 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_28;
                }

                __break(1u);
                return;
              }

              MEMORY[0x21CF15BD0](v12, a1);

              goto LABEL_29;
            }

LABEL_28:

LABEL_29:
            swift_getKeyPath(byte_21CBC5EF0);
            swift_getKeyPath(byte_21CBC5F18);

            sub_21CB81DC4();
          }
        }

        return;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_4;
      }
    }

LABEL_10:

    goto LABEL_11;
  }
}

uint64_t sub_21CACB1D0()
{
  v1 = v0;
  v2 = type metadata accessor for PMAccountsListModel.Configuration(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState____lazy_storage___mainAccountsListModel;
  if (*(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState____lazy_storage___mainAccountsListModel))
  {
    v6 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState____lazy_storage___mainAccountsListModel);
  }

  else
  {
    v7 = sub_21CB85C44();
    (*(*(v7 - 8) + 56))(v4, 1, 2, v7);
    type metadata accessor for PMAccountsListModel(0);
    swift_allocObject();
    v6 = sub_21C817568(v4);
    *(v1 + v5) = v6;
  }

  return v6;
}

double sub_21CACB37C(const char *a1, const char *a2)
{
  swift_getKeyPath(a1);
  swift_getKeyPath(a2);
  sub_21CB81DB4();

  return result;
}

void sub_21CACB400(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState_additionalAccountDetailsSheetControllers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
LABEL_17:
    v5 = sub_21CB85FA4();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (v5 != v6)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x21CF15BD0](v6, v4);
      swift_unknownObjectRelease();
      if (v8 == a1)
      {
LABEL_12:

        swift_beginAccess();
        sub_21CACA960(v6, sub_21CAA4518);
        swift_endAccess();

        return;
      }
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      if (*(v4 + 8 * v6 + 32) == a1)
      {
        goto LABEL_12;
      }
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

id PMPasswordManagerState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PMPasswordManagerState(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21CACB8D0(void *a2@<X8>)
{
  swift_getKeyPath(byte_21CBC5EA8);
  sub_21CB81DB4();

  *a2 = v3;
}

uint64_t sub_21CACB950(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath(byte_21CBC5EA8);

  v3 = v2;
  return sub_21CB81DC4();
}

double sub_21CACB9C8@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath(byte_21CBC5EF0);
  swift_getKeyPath(byte_21CBC5F18);
  sub_21CB81DB4();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_21CACBA48(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_21CBC5EF0);
  swift_getKeyPath(byte_21CBC5F18);

  return sub_21CB81DC4();
}

void sub_21CACBB04(_BYTE *a2@<X8>)
{
  swift_getKeyPath(a0_20);
  swift_getKeyPath(byte_21CBC6178);
  sub_21CB81DB4();

  *a2 = v3;
}

uint64_t sub_21CACBB84(char *a1, uint64_t *a2)
{
  swift_getKeyPath(a0_20);
  swift_getKeyPath(byte_21CBC6178);

  return sub_21CB81DC4();
}

uint64_t sub_21CACBBF8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_21CB853D4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21CB85404();
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
  v12 = sub_21CB85CF4();
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a2;
  aBlock[4] = sub_21C7504E8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C6ECBD4;
  aBlock[3] = &block_descriptor_13_0;
  v14 = _Block_copy(aBlock);

  v15 = a2;

  sub_21CB853E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21C91A4E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C91A53C();
  sub_21CB85F14();
  MEMORY[0x21CF15800](0, v11, v8, v14);
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v18);
}

uint64_t sub_21CACBE9C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_21CB85474();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

void sub_21CACBF60()
{
  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI32PMSecureWindowLockPolicyEnforcer_isUsingSystemProtection);
  if (v1 != 1)
  {
    v21 = v0;
    v2 = [objc_opt_self() sharedApplication];
    v3 = [v2 connectedScenes];

    sub_21C6E8F4C(0, &qword_27CDF7840, 0x277D75940);
    sub_21CACC840();
    v4 = sub_21CB859E4();

    v22 = v1;
    if ((v4 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_21CB85F64();
      sub_21CB85A14();
      v4 = v24;
      v5 = v25;
      v6 = v26;
      v7 = v27;
      v8 = v28;
    }

    else
    {
      v9 = -1 << *(v4 + 32);
      v5 = v4 + 56;
      v6 = ~v9;
      v10 = -v9;
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      else
      {
        v11 = -1;
      }

      v8 = v11 & *(v4 + 56);

      v7 = 0;
    }

    v12 = 0;
    while (1)
    {
      if (v4 < 0)
      {
        if (!sub_21CB85FE4())
        {
          goto LABEL_25;
        }

        swift_dynamicCast();
        v19 = v23;
        v17 = v7;
        v18 = v8;
        if (!v23)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v15 = v7;
        v16 = v8;
        v17 = v7;
        if (!v8)
        {
          while (1)
          {
            v17 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              break;
            }

            if (v17 >= ((v6 + 64) >> 6))
            {
              goto LABEL_25;
            }

            v16 = *(v5 + 8 * v17);
            ++v15;
            if (v16)
            {
              goto LABEL_18;
            }
          }

          __break(1u);
LABEL_30:
          __break(1u);
          return;
        }

LABEL_18:
        v18 = (v16 - 1) & v16;
        v19 = *(*(v4 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
        if (!v19)
        {
LABEL_25:
          sub_21C6F1E7C(v4);

          if (v12)
          {
            return;
          }

          swift_getKeyPath(aH_33);
          swift_getKeyPath(aH_34);

          sub_21CB81DC4();
          LOBYTE(v1) = v22;
          goto LABEL_27;
        }
      }

      if ([v19 activationState])
      {
        v20 = [v19 activationState];

        if (v20 != 1)
        {
          v13 = 0;
          goto LABEL_12;
        }
      }

      else
      {
      }

      v13 = 1;
LABEL_12:
      v7 = v17;
      v8 = v18;
      v14 = __OFADD__(v12, v13);
      v12 += v13;
      if (v14)
      {
        goto LABEL_30;
      }
    }
  }

  swift_getKeyPath(aH_33);
  swift_getKeyPath(aH_34);

  sub_21CB81DC4();
LABEL_27:
  sub_21CACC6CC(v1 ^ 1, 0);
}

void sub_21CACC29C()
{
  v1 = v0;
  sub_21CB807C4();
  if (!v7)
  {
    sub_21C6EA794(v6, &qword_27CDF4D90, &qword_21CBA9F00);
LABEL_7:
    *(v1 + OBJC_IVAR____TtC17PasswordManagerUI32PMSecureWindowLockPolicyEnforcer_isUsingSystemProtection) = 0;
    goto LABEL_8;
  }

  sub_21C6E8F4C(0, &qword_27CDF7840, 0x277D75940);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v2 = [v5 systemProtectionManager];

  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = [v2 isUserAuthenticationEnabled];

  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI32PMSecureWindowLockPolicyEnforcer_isUsingSystemProtection) = v3;
  if (!v3)
  {
LABEL_8:
    swift_getKeyPath(aH_33);
    swift_getKeyPath(aH_34);
    v6[0] = 0;

    sub_21CB81DC4();
    v4 = 1;
    goto LABEL_9;
  }

  swift_getKeyPath(aH_33);
  swift_getKeyPath(aH_34);
  v6[0] = 1;

  sub_21CB81DC4();
  v4 = 0;
LABEL_9:
  sub_21CACC6CC(v4, 0);
}

uint64_t sub_21CACC440(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = sub_21CB807E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB807B4();

  a4(v8);

  return (*(v6 + 8))(v8, v5);
}

uint64_t PMSecureWindowLockPolicyEnforcer.deinit()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI32PMSecureWindowLockPolicyEnforcer__hasBeenAuthenticated;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC17PasswordManagerUI32PMSecureWindowLockPolicyEnforcer__isAuthenticating, v2);
  return v0;
}

uint64_t PMSecureWindowLockPolicyEnforcer.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI32PMSecureWindowLockPolicyEnforcer__hasBeenAuthenticated;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC17PasswordManagerUI32PMSecureWindowLockPolicyEnforcer__isAuthenticating, v2);

  return swift_deallocClassInstance();
}

void sub_21CACC6CC(char a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7830, &qword_21CBC60F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CBA0690;
  *(inited + 32) = 0x64616F6C796170;
  v5 = inited + 32;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = a1;
  *(inited + 49) = a2;
  v6 = sub_21CB132B4(inited);
  swift_setDeallocating();
  sub_21C6EA794(v5, &qword_27CDF7838, &unk_21CBC60F8);
  v7 = [objc_opt_self() defaultCenter];
  if (qword_27CDEA400 != -1)
  {
    swift_once();
  }

  v8 = qword_27CE185B8;
  sub_21CADA4A8(v6);

  v9 = sub_21CB85464();

  [v7 postNotificationName:v8 object:0 userInfo:v9];
}

unint64_t sub_21CACC840()
{
  result = qword_27CDF7848;
  if (!qword_27CDF7848)
  {
    sub_21C6E8F4C(255, &qword_27CDF7840, 0x277D75940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7848);
  }

  return result;
}

uint64_t sub_21CACC8A8()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() currentDevice];
  [v4 deviceClass];

  sub_21CB81014();
  v5 = sub_21CB81004();
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t type metadata accessor for PMPasswordOptionsDefaultAppsView(uint64_t a1)
{
  result = qword_27CDF7860;
  if (!qword_27CDF7860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CACCA7C(uint64_t a1)
{
  sub_21C70D554(319);
  if (v1 <= 0x3F)
  {
    sub_21C70D724(319);
    if (v2 <= 0x3F)
    {
      sub_21C70D950(319);
      if (v3 <= 0x3F)
      {
        sub_21C70DC98(319);
        if (v4 <= 0x3F)
        {
          sub_21C70DCF0();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_21CACCB64()
{
  type metadata accessor for PMPasswordOptionsViewModel(0);
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277D49DB8]) init];
  *(v0 + 24) = 0;
  v1 = [objc_opt_self() sharedFeatureManager];
  [v1 shouldAutoFillPasswords];

  sub_21CB81D74();
  *(v0 + 24) = 1;
  return v0;
}

uint64_t sub_21CACCC2C@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  MEMORY[0x28223BE20](v2 - 8);
  v56 = &v43 - v3;
  v46 = sub_21CB80B34();
  v57 = *(v46 - 8);
  v58 = v46 - 8;
  v59 = v57;
  MEMORY[0x28223BE20](v46 - 8);
  v54 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB85444();
  v6 = *(v5 - 8);
  v62 = v5;
  v63 = v6;
  MEMORY[0x28223BE20](v5);
  v61 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMPasswordOptionsDefaultAppsView(0);
  v55 = *(v8 - 8);
  v53 = *(v55 + 8);
  MEMORY[0x28223BE20](v8 - 8);
  v52 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21CB829D4();
  v51 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7888, &qword_21CBC6238);
  v48 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - v14;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7890, &qword_21CBC6240);
  v50 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v17 = &v43 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7898, &qword_21CBC6248);
  MEMORY[0x28223BE20](v60);
  v19 = &v43 - v18;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF78A0, &qword_21CBC6250);
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v43 = &v43 - v20;
  v65 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF78A8, &unk_21CBC6258);
  sub_21C6EADEC(&qword_27CDF78B0, &qword_27CDF78A8, &unk_21CBC6258, MEMORY[0x277CE14C0]);
  sub_21CB83EF4();
  sub_21CB85294();
  v21 = sub_21C6EADEC(&qword_27CDF78B8, &qword_27CDF7888, &qword_21CBC6238, MEMORY[0x277CDE580]);
  v22 = sub_21C70D6DC(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
  sub_21CB849C4();
  (*(v51 + 8))(v12, v10);
  (*(v48 + 8))(v15, v13);
  v23 = v56;
  v67 = v13;
  v68 = v10;
  v24 = v54;
  v69 = v21;
  v70 = v22;
  swift_getOpaqueTypeConformance2();
  v25 = v49;
  sub_21CB84064();
  (*(v50 + 8))(v17, v25);
  v26 = v52;
  sub_21CACDB6C(v64, v52);
  v27 = (v55[80] + 16) & ~v55[80];
  v28 = swift_allocObject();
  sub_21CACDBD0(v26, v28 + v27);
  v29 = v61;
  v30 = *(v60 + 36);
  v55 = v19;
  v31 = &v19[v30];
  *v31 = sub_21CACDC34;
  v31[1] = v28;
  v31[2] = 0;
  v31[3] = 0;
  *v29 = 0xD00000000000001FLL;
  v29[1] = 0x800000021CB9A3F0;
  (*(v63 + 104))();
  sub_21CB80B24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF78C0, &qword_21CBC6268);
  *(swift_allocObject() + 16) = xmmword_21CBA0690;
  sub_21CB80B24();
  sub_21CB80BD4();
  v32 = sub_21CB80BE4();
  v33 = *(v32 - 8);
  v34 = v23;
  result = (*(v33 + 48))(v23, 1, v32);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v36 = sub_21CACDC94();
    v37 = v43;
    v38 = v60;
    v39 = v61;
    v40 = v55;
    sub_21CB84074();

    (*(v59 + 8))(v24, v46);
    (*(v63 + 8))(v39, v62);
    sub_21C78573C(v40);
    (*(v33 + 8))(v34, v32);
    v66 = *(v64 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF78D0, &qword_21CBC6270);
    sub_21CB84D74();
    v41 = v69;
    type metadata accessor for PMConfigureCredentialProviderExtensionView(0);
    *&v66 = v38;
    *(&v66 + 1) = v36;
    swift_getOpaqueTypeConformance2();
    sub_21CACDE1C();
    sub_21C70D6DC(&qword_27CDF1D30, type metadata accessor for PMConfigureCredentialProviderExtensionView, &unk_21CBB2824);
    v42 = v45;
    sub_21CB847C4();

    return (*(v44 + 8))(v37, v42);
  }

  return result;
}

double sub_21CACD610@<D0>(uint64_t a2@<X8>)
{
  type metadata accessor for PMPasswordOptionsViewModel(0);
  sub_21C70D6DC(&qword_27CDF26B0, type metadata accessor for PMPasswordOptionsViewModel, &unk_21CBC6498);
  sub_21CB82134();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF78D0, &qword_21CBC6270);
  sub_21CB84D74();
  *a2 = sub_21CB82674();
  *(a2 + 8) = v3;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = sub_21C95FA68;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v4 = v8;

  sub_21C70C78C(sub_21C95FA68, 0);
  sub_21C70AC30(sub_21C95FA68, 0);

  return result;
}

double sub_21CACD788(uint64_t a1)
{
  v2 = type metadata accessor for PMPasswordOptionsDefaultAppsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_21CB858E4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_21CACDB6C(a1, v5);
  sub_21CB858B4();
  v10 = sub_21CB858A4();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_21CACDBD0(v5, v12 + v11);
  sub_21C98B308(0, 0, v8, &unk_21CBC62B0, v12);

  return result;
}

uint64_t sub_21CACD940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_21CB858B4();
  v4[3] = sub_21CB858A4();
  v6 = sub_21CB85874();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_21CACD9D8, v6, v5);
}

uint64_t sub_21CACD9D8()
{
  type metadata accessor for PMOTPAuthHandlerManager(0);
  sub_21C70D6DC(&qword_27CDF26C0, type metadata accessor for PMOTPAuthHandlerManager, &unk_21CBC4514);
  *(v0 + 48) = sub_21CB82134();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_21C949B9C;

  return sub_21CA90F70();
}

id sub_21CACDAD8@<X0>(id *a1@<X0>, id *a2@<X8>)
{
  v5 = *a1;
  *a2 = *a1;
  v3 = *(type metadata accessor for PMConfigureCredentialProviderExtensionView(0) + 20);
  *(a2 + v3) = swift_getKeyPath(byte_21CBC6278);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();

  return v5;
}

uint64_t sub_21CACDB6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMPasswordOptionsDefaultAppsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CACDBD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMPasswordOptionsDefaultAppsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_21CACDC34()
{
  v1 = *(type metadata accessor for PMPasswordOptionsDefaultAppsView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21CACD788(v2);
}

unint64_t sub_21CACDC94()
{
  result = qword_27CDF78C8;
  if (!qword_27CDF78C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7898, &qword_21CBC6248);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7890, &qword_21CBC6240);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7888, &qword_21CBC6238);
    sub_21CB829D4();
    sub_21C6EADEC(&qword_27CDF78B8, &qword_27CDF7888, &qword_21CBC6238, MEMORY[0x277CDE580]);
    sub_21C70D6DC(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF78C8);
  }

  return result;
}

unint64_t sub_21CACDE1C()
{
  result = qword_27CDF78D8;
  if (!qword_27CDF78D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF78D8);
  }

  return result;
}

uint64_t sub_21CACDE70(uint64_t a1)
{
  v4 = *(type metadata accessor for PMPasswordOptionsDefaultAppsView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C702EFC;

  return sub_21CACD940(a1, v6, v7, v1 + v5);
}

PMPasswordOptionsController __swiftcall PMPasswordOptionsController.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for PMPasswordOptionsController()
{
  result = qword_27CDF78E8;
  if (!qword_27CDF78E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDF78E8);
  }

  return result;
}

id sub_21CACE094(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = sub_21CB81024();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  if (a2)
  {
    v15 = sub_21CB85584();
  }

  else
  {
    v15 = 0;
  }

  v21.receiver = v4;
  v21.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v21, sel_initWithNibName_bundle_, v15, a3);

  v17 = v16;
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FF4();
  v18 = *(v9 + 8);
  v18(v11, v8);
  v18(v14, v8);
  v19 = sub_21CB85584();

  [v17 setTitle_];

  return v17;
}

void sub_21CACE360()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for PMPasswordOptionsView(0);
  *&v4 = MEMORY[0x28223BE20](v3 - 8).n128_u64[0];
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25.receiver = v1;
  v25.super_class = ObjectType;
  objc_msgSendSuper2(&v25, sel_viewDidLoad, v4);
  sub_21CACE64C(v6);
  v7 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7958, &unk_21CBC62E0));
  v8 = sub_21CB833B4();
  [v1 addChildViewController_];
  v9 = [v8 view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  v10 = v9;
  [v9 setAutoresizingMask_];

  v11 = [v8 view];
  if (!v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = [v1 view];
  if (!v12)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = v12;
  [v12 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [v11 setFrame_];
  v22 = [v1 view];
  if (!v22)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v23 = v22;
  v24 = [v8 view];

  if (v24)
  {
    [v23 addSubview_];

    [v8 didMoveToParentViewController_];
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_21CACE64C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21CACE7C0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = sub_21C95FA68;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECDA8, &qword_21CBA5910);
  sub_21CB84D44();
  *(a1 + 48) = v9;
  v2 = type metadata accessor for PMPasswordOptionsView(0);
  v3 = v2[7];
  *(a1 + v3) = swift_getKeyPath(asc_21CBC6398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v4 = a1 + v2[8];
  *v4 = swift_getKeyPath(byte_21CBC63F8);
  *(v4 + 8) = 0;
  v5 = v2[9];
  *(a1 + v5) = swift_getKeyPath(byte_21CBC6420);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  swift_storeEnumTagMultiPayload();
  v6 = v2[10];
  v7 = [objc_opt_self() pm_defaults];
  result = sub_21CB81E74();
  *(a1 + v6) = result;
  return result;
}

uint64_t sub_21CACE7C0()
{
  type metadata accessor for PMPasswordOptionsViewModel(0);
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277D49DB8]) init];
  *(v0 + 24) = 0;
  v1 = [objc_opt_self() sharedFeatureManager];
  [v1 shouldAutoFillPasswords];

  sub_21CB81D74();
  *(v0 + 24) = 0;
  return v0;
}

uint64_t sub_21CACE884@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  MEMORY[0x28223BE20](v2 - 8);
  v84 = &v64 - v3;
  v66 = sub_21CB80B34();
  v87 = *(v66 - 8);
  v88 = v66 - 8;
  v80 = v87;
  MEMORY[0x28223BE20](v66 - 8);
  v86 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB85444();
  v91 = *(v5 - 8);
  v92 = v5;
  MEMORY[0x28223BE20](v5);
  v85 = (&v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PMPasswordOptionsView(0);
  v83 = *(v7 - 8);
  v82 = *(v83 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v81 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_21CB81024();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v76 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v71 = &v64 - v11;
  v12 = sub_21CB829D4();
  v70 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7970, &qword_21CBC6368);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v64 - v17;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7978, &qword_21CBC6370);
  v73 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v68 = &v64 - v19;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7980, &qword_21CBC6378);
  v75 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v69 = &v64 - v20;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7988, &qword_21CBC6380);
  MEMORY[0x28223BE20](v77);
  v90 = &v64 - v21;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7990, &qword_21CBC6388);
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v89 = &v64 - v22;
  v94 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7998, &qword_21CBC6390);
  sub_21C6EADEC(&qword_27CDF79A0, &qword_27CDF7998, &qword_21CBC6390, MEMORY[0x277CE14C0]);
  sub_21CB83EF4();
  sub_21CB85294();
  v23 = sub_21C6EADEC(&qword_27CDF79A8, &qword_27CDF7970, &qword_21CBC6368, MEMORY[0x277CDE580]);
  v24 = sub_21C70D6DC(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
  v25 = v15;
  v26 = v12;
  sub_21CB849C4();
  (*(v70 + 1))(v14, v12);
  (*(v16 + 8))(v18, v25);
  v70 = "com.apple.graphic-icon.autofill";
  v27 = v71;
  sub_21CB81014();
  v28 = v76;
  sub_21CB81014();
  v29 = sub_21CB80FF4();
  v31 = v30;
  v32 = *(v78 + 8);
  v33 = v28;
  v34 = v79;
  v32(v33, v79);
  v32(v27, v34);
  *&v99 = v29;
  *(&v99 + 1) = v31;
  v95 = v25;
  v96 = v26;
  v35 = v80;
  v97 = v23;
  v98 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = sub_21C71F3FC();
  v38 = MEMORY[0x277D837D0];
  v39 = v69;
  v40 = v72;
  v41 = v68;
  sub_21CB842F4();

  (*(v73 + 8))(v41, v40);
  v95 = v40;
  v96 = v38;
  v42 = v84;
  v97 = OpaqueTypeConformance2;
  v98 = v37;
  swift_getOpaqueTypeConformance2();
  v43 = v90;
  v44 = v74;
  sub_21CB84064();
  (*(v75 + 8))(v39, v44);
  v45 = v81;
  sub_21CACFFC0(v93, v81);
  v46 = (*(v83 + 80) + 16) & ~*(v83 + 80);
  v47 = swift_allocObject();
  sub_21CAD0024(v45, v47 + v46);
  v48 = v77;
  v49 = &v43[*(v77 + 36)];
  *v49 = sub_21CAD0088;
  v49[1] = v47;
  v49[2] = 0;
  v49[3] = 0;
  v50 = v85;
  *v85 = 0xD00000000000001FLL;
  v50[1] = 0x800000021CB9A3F0;
  v51 = v50;
  (*(v91 + 104))();
  v52 = v86;
  sub_21CB80B24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF78C0, &qword_21CBC6268);
  v53 = v35;
  *(swift_allocObject() + 16) = xmmword_21CBA0690;
  sub_21CB80B24();
  sub_21CB80BD4();
  v54 = sub_21CB80BE4();
  v55 = *(v54 - 8);
  v56 = v42;
  result = (*(v55 + 48))(v42, 1, v54);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v58 = sub_21CAD00E8();
    v59 = v48;
    v60 = v90;
    sub_21CB84074();

    (*(v53 + 8))(v52, v66);
    (*(v91 + 8))(v51, v92);
    sub_21C785E1C(v60);
    (*(v55 + 8))(v56, v54);
    v99 = *(v93 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF78D0, &qword_21CBC6270);
    sub_21CB84D74();
    v61 = v97;
    type metadata accessor for PMConfigureCredentialProviderExtensionView(0);
    *&v99 = v59;
    *(&v99 + 1) = v58;
    swift_getOpaqueTypeConformance2();
    sub_21CACDE1C();
    sub_21C70D6DC(&qword_27CDF1D30, type metadata accessor for PMConfigureCredentialProviderExtensionView, &unk_21CBB2824);
    v62 = v65;
    v63 = v89;
    sub_21CB847C4();

    return (*(v64 + 8))(v63, v62);
  }

  return result;
}

double sub_21CACF504@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v48 = a2;
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - v8;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF79B8, &unk_21CBC63E0);
  v53 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v52 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v51 = &v42 - v12;
  type metadata accessor for PMPasswordOptionsViewModel(0);
  sub_21C70D6DC(&qword_27CDF26B0, type metadata accessor for PMPasswordOptionsViewModel, &unk_21CBC6498);
  sub_21CB82134();
  v13 = sub_21CB82674();
  v46 = v14;
  v47 = v13;
  sub_21CB82134();
  v55 = *(a1 + 3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF78D0, &qword_21CBC6270);
  sub_21CB84D74();
  v45 = v58;
  v44 = v59;
  v50 = v60;
  v43 = sub_21CB82674();
  v16 = v15;
  v54 = a1;
  sub_21CB81014();
  sub_21CB81014();
  v17 = sub_21CB80FF4();
  v19 = v18;
  v20 = *(v4 + 8);
  v20(v6, v3);
  v20(v9, v3);
  v58 = v17;
  v59 = v19;
  sub_21C71F3FC();
  v58 = sub_21CB84054();
  v59 = v21;
  LOBYTE(v60) = v22 & 1;
  v61 = v23;
  sub_21CB81014();
  v24 = sub_21CB81004();
  v26 = v25;
  v20(v9, v3);
  *&v55 = v24;
  *(&v55 + 1) = v26;
  *&v55 = sub_21CB84054();
  *(&v55 + 1) = v27;
  v56 = v28 & 1;
  v57 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF26A8, &unk_21CBB4690);
  sub_21C6EADEC(&qword_27CDF26A0, &qword_27CDF26A8, &unk_21CBB4690, MEMORY[0x277CDF068]);
  v30 = v51;
  sub_21CB85044();
  v31 = v52;
  v32 = *(v53 + 16);
  v33 = v49;
  v32(v52, v30, v49);
  v34 = v48;
  v35 = v46;
  *v48 = v47;
  v34[1] = v35;
  v34[2] = v43;
  v34[3] = v16;
  v36 = v44;
  v34[4] = v45;
  v34[5] = v36;
  v34[6] = v50;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF79C0, &qword_21CBC63F0);
  v32(v34 + *(v37 + 80), v31, v33);
  v38 = v34 + *(v37 + 96);
  *v38 = sub_21C95FA68;
  *(v38 + 1) = 0;
  v38[16] = 0;
  v39 = v50;

  sub_21C70C78C(sub_21C95FA68, 0);
  v40 = *(v53 + 8);
  v40(v51, v33);
  sub_21C70AC30(sub_21C95FA68, 0);
  v40(v52, v33);

  return result;
}

double sub_21CACFA98(uint64_t a1)
{
  v2 = type metadata accessor for PMPasswordOptionsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_21CB858E4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_21CACFFC0(a1, v5);
  sub_21CB858B4();
  v10 = sub_21CB858A4();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_21CAD0024(v5, v12 + v11);
  sub_21C98B308(0, 0, v8, &unk_21CBC63D8, v12);

  return result;
}

id sub_21CACFC50@<X0>(id *a1@<X0>, id *a2@<X8>)
{
  v5 = *a1;
  *a2 = *a1;
  v3 = *(type metadata accessor for PMConfigureCredentialProviderExtensionView(0) + 20);
  *(a2 + v3) = swift_getKeyPath(asc_21CBC6398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();

  return v5;
}

uint64_t sub_21CACFCD8(uint64_t *a1)
{
  type metadata accessor for PMPasswordOptionsViewModel(0);
  sub_21C70D6DC(&qword_27CDF26B0, type metadata accessor for PMPasswordOptionsViewModel, &unk_21CBC6498);
  v1 = *(sub_21CB82134() + 16);
  v2 = swift_allocObject();
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = v1;
  v3 = swift_allocObject();
  v4 = v1;
  sub_21CB81CF4();
  swift_weakInit();

  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;
  v5[5] = v4;
  sub_21CB84F64();

  return sub_21CB84EA4();
}

uint64_t sub_21CACFE88@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21CACFFC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMPasswordOptionsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CAD0024(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMPasswordOptionsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_21CAD0088()
{
  v1 = *(type metadata accessor for PMPasswordOptionsView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21CACFA98(v2);
}

unint64_t sub_21CAD00E8()
{
  result = qword_27CDF79B0;
  if (!qword_27CDF79B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7988, &qword_21CBC6380);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7980, &qword_21CBC6378);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7978, &qword_21CBC6370);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7970, &qword_21CBC6368);
    sub_21CB829D4();
    sub_21C6EADEC(&qword_27CDF79A8, &qword_27CDF7970, &qword_21CBC6368, MEMORY[0x277CDE580]);
    sub_21C70D6DC(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
    swift_getOpaqueTypeConformance2();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF79B0);
  }

  return result;
}

uint64_t sub_21CAD02C8(uint64_t a1)
{
  v4 = *(type metadata accessor for PMPasswordOptionsView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C702EFC;

  return sub_21CACD940(a1, v6, v7, v1 + v5);
}

uint64_t sub_21CAD03D8()
{
  swift_getKeyPath(aH_103);
  swift_getKeyPath(aH_104);
  sub_21CB81DB4();

  return v1;
}

void sub_21CAD044C(char a1)
{
  swift_getKeyPath(aH_103);
  swift_getKeyPath(aH_104);

  sub_21CB81DC4();
  v1 = [objc_opt_self() sharedFeatureManager];
  swift_getKeyPath(aH_103);
  swift_getKeyPath(aH_104);
  sub_21CB81DB4();

  [v1 setShouldAutoFillPasswords_];
}

id sub_21CAD0544@<X0>(id a1@<X2>, _BYTE *a2@<X8>)
{
  result = [a1 isOneTimeCodeAutoDeletionEnabled];
  *a2 = result;
  return result;
}

id sub_21CAD0578(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_21CB81D44();
  }

  return [a5 setIsOneTimeCodeAutoDeletionEnabled_];
}

uint64_t sub_21CAD05F4()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI26PMPasswordOptionsViewModel__shouldEnablePasswordAutoFill;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PMWiFiQRCodeView(uint64_t a1)
{
  result = qword_27CDF79E0;
  if (!qword_27CDF79E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CAD0720(uint64_t a1)
{
  type metadata accessor for PMWiFiNetwork(319);
  if (v1 <= 0x3F)
  {
    sub_21C721A6C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double sub_21CAD07C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7A10, &qword_21CBC6598);
  MEMORY[0x28223BE20](v4);
  v6 = &v23[-v5];
  *v6 = sub_21CB832E4();
  *(v6 + 1) = 0x404E000000000000;
  v6[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7A20, &unk_21CBC65A0);
  sub_21CAD0A30(a1, &v6[*(v7 + 44)]);
  v24 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3600, &qword_21CBB7D10);
  sub_21C6EADEC(&qword_27CDF7A18, &qword_27CDF7A10, &qword_21CBC6598, MEMORY[0x277CE1198]);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC010, &qword_21CBAA950);
  v9 = sub_21C6EADEC(&qword_27CDF3640, &qword_27CDEC010, &qword_21CBAA950, MEMORY[0x277CDD7A8]);
  v25 = v8;
  v26 = v9;
  swift_getOpaqueTypeConformance2();
  sub_21CB84894();
  sub_21C6EA794(v6, &qword_27CDF7A10, &qword_21CBC6598);
  v10 = sub_21CB83D44();
  sub_21CB81F24();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7A08, &qword_21CBC6590) + 36);
  *v19 = v10;
  *(v19 + 8) = v12;
  *(v19 + 16) = v14;
  *(v19 + 24) = v16;
  *(v19 + 32) = v18;
  *(v19 + 40) = 0;
  v20 = sub_21CB83CD4();
  v21 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF79F0, &qword_21CBC6588) + 36);
  *v21 = v20;
  result = 0.0;
  *(v21 + 8) = 0u;
  *(v21 + 24) = 0u;
  *(v21 + 40) = 1;
  return result;
}

uint64_t sub_21CAD0A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v74 = sub_21CB84BD4();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7A28, &qword_21CBC65B0);
  MEMORY[0x28223BE20](v4 - 8);
  v83 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v80 = &v62 - v7;
  MEMORY[0x28223BE20](v8);
  v82 = &v62 - v9;
  v79 = sub_21CB83274();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21CB81024();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7A30, &unk_21CBC65B8);
  MEMORY[0x28223BE20](v15 - 8);
  v81 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v76 = &v62 - v18;
  sub_21CB81014();
  sub_21CB81004();
  v19 = *(v12 + 8);
  v71 = v11;
  v70 = v12 + 8;
  v68 = v19;
  v19(v14, v11);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v20 = swift_allocObject();
  v64 = xmmword_21CBA0690;
  *(v20 + 16) = xmmword_21CBA0690;
  v75 = a1;
  v22 = *(a1 + 16);
  v21 = *(a1 + 24);
  *(v20 + 56) = MEMORY[0x277D837D0];
  v63 = sub_21C7C0050();
  *(v20 + 64) = v63;
  v65 = v22;
  *(v20 + 32) = v22;
  *(v20 + 40) = v21;
  v66 = v21;

  v23 = sub_21CB85594();
  v25 = v24;

  *&v87 = v23;
  *(&v87 + 1) = v25;
  v69 = sub_21C71F3FC();
  v26 = sub_21CB84054();
  v28 = v27;
  LOBYTE(v25) = v29;
  sub_21CB83DB4();
  sub_21CB83DA4();

  v30 = sub_21CB84024();
  v32 = v31;
  LOBYTE(a1) = v33;

  sub_21C74A72C(v26, v28, v25 & 1);

  LODWORD(v87) = sub_21CB837B4();
  v34 = sub_21CB83FC4();
  v36 = v35;
  LOBYTE(v25) = v37;
  v39 = v38;
  sub_21C74A72C(v30, v32, a1 & 1);

  KeyPath = swift_getKeyPath(asc_21CBC65C8);
  LOBYTE(v89) = v25 & 1;
  *&v87 = v34;
  *(&v87 + 1) = v36;
  v88[0] = v25 & 1;
  *&v88[8] = v39;
  *&v88[16] = KeyPath;
  *&v88[24] = 1;
  v88[26] = 1;
  v41 = v77;
  sub_21CB83264();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7A38, &unk_21CBC65F8);
  sub_21CAD1FF0();
  v42 = v76;
  sub_21CB84594();
  (*(v78 + 8))(v41, v79);
  v94 = v87;
  *v95 = *v88;
  *&v95[11] = *&v88[11];
  sub_21C6EA794(&v94, &qword_27CDF7A38, &unk_21CBC65F8);
  if (sub_21CAD13B0())
  {
    v43 = v73;
    v44 = v72;
    v45 = v74;
    (*(v73 + 104))(v72, *MEMORY[0x277CE0FE0], v74);
    v46 = sub_21CB84C64();

    (*(v43 + 8))(v44, v45);
    sub_21CB85214();
    sub_21CB82374();
    *&v87 = v46;
    *(&v87 + 1) = v89;
    v88[0] = v90;
    *&v88[8] = v91;
    v88[16] = v92;
    *&v88[24] = v93;
    sub_21CB81014();
    sub_21CB81004();
    v68(v14, v71);
    v47 = swift_allocObject();
    *(v47 + 16) = v64;
    v48 = v63;
    *(v47 + 56) = MEMORY[0x277D837D0];
    *(v47 + 64) = v48;
    *(v47 + 32) = v65;
    *(v47 + 40) = v66;

    v49 = sub_21CB85594();
    v51 = v50;

    v85 = v49;
    v86 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF09A8, &unk_21CBAF7E0);
    sub_21C8FD198();
    v52 = v80;
    sub_21CB843E4();

    v53 = 0;
  }

  else
  {
    v53 = 1;
    v52 = v80;
  }

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3AD8, &qword_21CBB8B70);
  (*(*(v54 - 8) + 56))(v52, v53, 1, v54);
  v55 = v82;
  sub_21CAD207C(v52, v82);
  v56 = v81;
  sub_21C6EDBAC(v42, v81, &qword_27CDF7A30, &unk_21CBC65B8);
  v57 = v83;
  sub_21C6EDBAC(v55, v83, &qword_27CDF7A28, &qword_21CBC65B0);
  v58 = v84;
  sub_21C6EDBAC(v56, v84, &qword_27CDF7A30, &unk_21CBC65B8);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7A48, &unk_21CBC6608);
  sub_21C6EDBAC(v57, v58 + *(v59 + 48), &qword_27CDF7A28, &qword_21CBC65B0);
  v60 = v58 + *(v59 + 64);
  *v60 = 0;
  *(v60 + 8) = 1;
  sub_21C6EA794(v55, &qword_27CDF7A28, &qword_21CBC65B0);
  sub_21C6EA794(v42, &qword_27CDF7A30, &unk_21CBC65B8);
  sub_21C6EA794(v57, &qword_27CDF7A28, &qword_21CBC65B0);
  return sub_21C6EA794(v56, &qword_27CDF7A30, &unk_21CBC65B8);
}

uint64_t sub_21CAD13B0()
{
  v1 = sub_21CB84BE4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + *(type metadata accessor for PMWiFiNetwork(0) + 36)) & 1) == 0)
  {
    v5 = sub_21C807A74(v0);
    if (v6)
    {
      v7 = v5;
      v8 = v6;
      v9 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
      v10 = [objc_opt_self() QRCodeGenerator];
      v11 = sub_21C98C72C(v7, v8);
      v13 = v12;
      v14 = sub_21CB80C64();
      sub_21C7A34C0(v11, v13);
      [v10 setMessage_];

      v15 = [v10 outputImage];
      if (v15)
      {
        v16 = v15;
        [v15 extent];
        v17 = [v9 createCGImage:v16 fromRect:?];
        if (v17)
        {
          v18 = v17;
          [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];
          sub_21CB84BA4();
          (*(v2 + 104))(v4, *MEMORY[0x277CE0FF8], v1);
          v19 = sub_21CB84BF4();

          (*(v2 + 8))(v4, v1);
          return v19;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_21CAD15FC(uint64_t a1)
{
  v2 = sub_21CB83604();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC010, &qword_21CBAA950);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_21CB835C4();
  v10 = a1;
  type metadata accessor for PMPlatformRoleButton(0);
  sub_21C98AE4C();
  sub_21CB82194();
  v7 = sub_21C6EADEC(&qword_27CDF3640, &qword_27CDEC010, &qword_21CBAA950, MEMORY[0x277CDD7A8]);
  MEMORY[0x21CF131E0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_21CAD17A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v19 = a1;
  v3 = type metadata accessor for PMWiFiQRCodeView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMPlatformRoleButton(0);
  sub_21CB81EE4();
  sub_21CB81014();
  v11 = sub_21CB81004();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  sub_21CAD1EC8(v19, &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  result = sub_21CAD1F2C(&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  *a2 = v11;
  a2[1] = v13;
  v17 = (a2 + *(v10 + 24));
  *v17 = sub_21CAD1F90;
  v17[1] = v15;
  return result;
}

uint64_t sub_21CAD1994(uint64_t a1)
{
  v16 = sub_21CB82F84();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = sub_21CB823B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PMWiFiQRCodeView(0);
  sub_21C6EDBAC(a1 + *(v12 + 20), v7, &qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_21CB85B04();
    v13 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_21CB823A4();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_21CAD1C1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF79F0, &qword_21CBC6588);
  sub_21CAD1C94();
  return sub_21CB82664();
}

unint64_t sub_21CAD1C94()
{
  result = qword_27CDF79F8;
  if (!qword_27CDF79F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF79F0, &qword_21CBC6588);
    sub_21CAD1D20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF79F8);
  }

  return result;
}

unint64_t sub_21CAD1D20()
{
  result = qword_27CDF7A00;
  if (!qword_27CDF7A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7A08, &qword_21CBC6590);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7A10, &qword_21CBC6598);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3600, &qword_21CBB7D10);
    sub_21C6EADEC(&qword_27CDF7A18, &qword_27CDF7A10, &qword_21CBC6598, MEMORY[0x277CE1198]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC010, &qword_21CBAA950);
    sub_21C6EADEC(&qword_27CDF3640, &qword_27CDEC010, &qword_21CBAA950, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7A00);
  }

  return result;
}

uint64_t sub_21CAD1EC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMWiFiQRCodeView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CAD1F2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMWiFiQRCodeView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CAD1F90()
{
  v1 = *(type metadata accessor for PMWiFiQRCodeView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21CAD1994(v2);
}

unint64_t sub_21CAD1FF0()
{
  result = qword_27CDF7A40;
  if (!qword_27CDF7A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7A38, &unk_21CBC65F8);
    sub_21C83A140();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7A40);
  }

  return result;
}

uint64_t sub_21CAD207C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7A28, &qword_21CBC65B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CAD210C()
{
  sub_21C6EE6C0();
  result = sub_21CB85E44();
  qword_27CE186C0 = result;
  return result;
}

unint64_t sub_21CAD21D0()
{
  result = qword_27CDF7A70;
  if (!qword_27CDF7A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7A68, &qword_21CBC6620);
    sub_21C707B18();
    sub_21C707C5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7A70);
  }

  return result;
}

uint64_t type metadata accessor for PMPasswordsSecurityView(uint64_t a1)
{
  result = qword_27CDF7AA8;
  if (!qword_27CDF7AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CAD22D0(uint64_t a1)
{
  sub_21C705CFC(319);
  if (v1 <= 0x3F)
  {
    sub_21C721A6C(319);
    if (v2 <= 0x3F)
    {
      sub_21C713604(319, &qword_27CDF4000, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_21CAD23F8(319);
        if (v4 <= 0x3F)
        {
          sub_21C713604(319, &qword_27CDED658, &type metadata for PMAccountsNavigationStyle, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21CAD23F8(uint64_t a1)
{
  if (!qword_27CDF7AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF55A8, &qword_21CBBE4B0);
    v1 = sub_21CB84D84();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF7AB8);
    }
  }
}

uint64_t sub_21CAD2478@<X0>(void *a1@<X8>)
{
  *a1 = 5;
  KeyPath = swift_getKeyPath(byte_21CBC68E0);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, v15);

  type metadata accessor for PMAccountsState(0);
  sub_21C706210(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
  v3 = sub_21CB82674();
  v5 = v4;

  a1[1] = v3;
  a1[2] = v5;
  v6 = type metadata accessor for PMPasswordsSecurityView(0);
  v7 = v6[6];
  *(a1 + v7) = swift_getKeyPath(byte_21CBC6A98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v8 = a1 + v6[7];
  [objc_opt_self() isPasswordBreachDetectionEnabled];
  sub_21CB84D44();
  *v8 = v15;
  *(v8 + 1) = *(&v15 + 1);
  v9 = a1 + v6[8];
  sub_21CB84D44();
  *v9 = v15;
  *(v9 + 1) = *(&v15 + 1);
  v10 = a1 + v6[9];
  sub_21CB84D44();
  *v10 = v15;
  *(v10 + 1) = *(&v15 + 1);
  v11 = a1 + v6[10];
  sub_21CB84D44();
  *v11 = v15;
  *(v11 + 1) = *(&v15 + 1);
  v12 = a1 + v6[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF55A8, &qword_21CBBE4B0);
  sub_21CB84D44();
  *v12 = v15;
  *(v12 + 1) = v16;
  *(v12 + 4) = v17;
  v13 = a1 + v6[12];
  result = swift_getKeyPath(aX_76, 0, 0, 0, 0);
  *v13 = result;
  v13[8] = 0;
  return result;
}

uint64_t sub_21CAD2700@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v67 = sub_21CB81024();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v64 = &v54 - v4;
  v5 = type metadata accessor for PMPasswordsSecurityView(0);
  v6 = v5 - 8;
  v62 = *(v5 - 8);
  v61 = *(v62 + 64);
  MEMORY[0x28223BE20](v5);
  v60 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v58 = sub_21CB829D4();
  *&v59 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7AC0, &qword_21CBC6740);
  v57 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v11 = &v54 - v10;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7AC8, &qword_21CBC6748);
  MEMORY[0x28223BE20](v63);
  v69 = &v54 - v12;
  v55 = v1;
  v71 = v1;
  v70 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7AD0, &qword_21CBC6750);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7AD8, &unk_21CBC6758);
  sub_21C6EADEC(&qword_27CDF7AE0, &qword_27CDF7AD0, &qword_21CBC6750, MEMORY[0x277CE14C0]);
  sub_21CAD9904(&qword_27CDF7AE8, &qword_27CDF7AD8, &unk_21CBC6758);
  sub_21CB83EE4();
  sub_21CB85294();
  sub_21C6EADEC(&qword_27CDF7AF0, &qword_27CDF7AC0, &qword_21CBC6740, MEMORY[0x277CDE580]);
  sub_21C706210(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
  v13 = v69;
  v14 = v56;
  v15 = v58;
  sub_21CB849C4();
  (*(v59 + 8))(v9, v15);
  (*(v57 + 1))(v11, v14);
  v16 = v55;
  v17 = v55 + *(v6 + 36);
  v18 = *v17;
  v19 = *(v17 + 8);
  LOBYTE(v72) = v18;
  *(&v72 + 1) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D54();
  v20 = v75;
  v21 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7AF8, &qword_21CBC6768) + 36)];
  *v21 = v20;
  *(v21 + 1) = sub_21CAD4250;
  *(v21 + 2) = 0;
  v22 = v16 + *(v6 + 52);
  v23 = v16;
  v24 = *(v22 + 32);
  v25 = *(v22 + 16);
  v72 = *v22;
  v73 = v25;
  v74 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7B00, &unk_21CBC6770);
  sub_21CB84D54();
  v59 = v75;
  v58 = v76;
  v26 = v60;
  sub_21CAD9A8C(v16, v60, type metadata accessor for PMPasswordsSecurityView);
  sub_21CB858B4();
  v27 = sub_21CB858A4();
  v28 = *(v62 + 80);
  v29 = (v28 + 32) & ~v28;
  v30 = swift_allocObject();
  v31 = MEMORY[0x277D85700];
  *(v30 + 16) = v27;
  *(v30 + 24) = v31;
  sub_21CAD9A24(v26, v30 + v29, type metadata accessor for PMPasswordsSecurityView);
  v57 = type metadata accessor for PMPasswordsSecurityView;
  sub_21CAD9A8C(v23, v26, type metadata accessor for PMPasswordsSecurityView);
  v32 = sub_21CB858A4();
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  *(v33 + 24) = MEMORY[0x277D85700];
  sub_21CAD9A24(v26, v33 + v29, type metadata accessor for PMPasswordsSecurityView);
  sub_21CB84F64();
  v34 = v72;
  LODWORD(v62) = v73;
  sub_21CAD9A8C(v23, v26, type metadata accessor for PMPasswordsSecurityView);
  v35 = (v28 + 16) & ~v28;
  v36 = swift_allocObject();
  sub_21CAD9A24(v26, v36 + v35, type metadata accessor for PMPasswordsSecurityView);
  sub_21C7D33F0(0, 0, 0, 0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7B08, &qword_21CBC6780);
  v38 = v69;
  v39 = &v69[*(v37 + 36)];
  *v39 = v34;
  v39[16] = v62;
  *(v39 + 17) = *v77;
  *(v39 + 5) = *&v77[3];
  *(v39 + 40) = v58;
  *(v39 + 24) = v59;
  *(v39 + 7) = sub_21CAD7E80;
  *(v39 + 8) = v36;
  sub_21CAD9A8C(v23, v26, v57);
  v40 = swift_allocObject();
  sub_21CAD9A24(v26, v40 + v35, type metadata accessor for PMPasswordsSecurityView);
  v41 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7B10, &qword_21CBC6788) + 36));
  *v41 = sub_21CAD7EF0;
  v41[1] = v40;
  v41[2] = 0;
  v41[3] = 0;
  KeyPath = swift_getKeyPath(aP_105);
  type metadata accessor for PMAppSecurityRecommendationsModel(0);
  swift_allocObject();
  v43 = sub_21C903D88();
  v44 = (v38 + *(v63 + 36));
  *v44 = KeyPath;
  v44[1] = v43;
  v45 = v64;
  sub_21CB81014();
  v46 = v65;
  sub_21CB81014();
  v47 = sub_21CB80FF4();
  v49 = v48;
  v50 = *(v66 + 8);
  v51 = v46;
  v52 = v67;
  v50(v51, v67);
  v50(v45, v52);
  *&v72 = v47;
  *(&v72 + 1) = v49;
  sub_21CAD7F08();
  sub_21C71F3FC();
  sub_21CB842F4();

  return sub_21C6EA794(v38, &qword_27CDF7AC8, &qword_21CBC6748);
}

uint64_t sub_21CAD3034@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7B40, &qword_21CBC67D8);
  MEMORY[0x28223BE20](v3 - 8);
  v56 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v54 = &v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7B48, &qword_21CBC67E0);
  MEMORY[0x28223BE20](v7 - 8);
  v59 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v61 = &v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7B50, &unk_21CBC67E8);
  MEMORY[0x28223BE20](v11 - 8);
  v62 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v60 = &v49 - v14;
  v51 = sub_21CB80964();
  v15 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_21CB80974();
  v18 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21CB80994();
  MEMORY[0x28223BE20](v21 - 8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v49 - v23;
  v25 = sub_21CB809E4();
  MEMORY[0x28223BE20](v25 - 8);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7B58, &unk_21CBC67F8);
  v53 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v49 - v28;
  v52 = a1;
  v63 = a1;
  sub_21CAD7C38();
  v30 = sub_21CB80BE4();
  (*(*(v30 - 8) + 56))(v24, 1, 1, v30);
  (*(v18 + 104))(v20, *MEMORY[0x277CC8BB0], v50);
  (*(v15 + 104))(v17, *MEMORY[0x277CC8B98], v51);
  sub_21CB80984();
  sub_21CB809D4();
  v64 = sub_21CB84044();
  v65 = v31;
  v66 = v32 & 1;
  v67 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF26A8, &unk_21CBB4690);
  sub_21C6EADEC(&qword_27CDF26A0, &qword_27CDF26A8, &unk_21CBB4690, MEMORY[0x277CDF068]);
  v49 = v29;
  sub_21CB85064();
  v34 = v60;
  sub_21CAD3A28(v60);
  v35 = v61;
  sub_21CAD3EB0(v61);
  v36 = v54;
  sub_21CAD404C(v54);
  v37 = v53;
  v38 = *(v53 + 16);
  v39 = v57;
  v38(v57, v29, v58);
  v40 = v34;
  v41 = v62;
  sub_21C6EDBAC(v40, v62, &qword_27CDF7B50, &unk_21CBC67E8);
  v42 = v59;
  sub_21C6EDBAC(v35, v59, &qword_27CDF7B48, &qword_21CBC67E0);
  v43 = v56;
  sub_21C6EDBAC(v36, v56, &qword_27CDF7B40, &qword_21CBC67D8);
  v44 = v55;
  v45 = v58;
  v38(v55, v39, v58);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7B60, &qword_21CBC6808);
  sub_21C6EDBAC(v41, &v44[v46[12]], &qword_27CDF7B50, &unk_21CBC67E8);
  sub_21C6EDBAC(v42, &v44[v46[16]], &qword_27CDF7B48, &qword_21CBC67E0);
  sub_21C6EDBAC(v43, &v44[v46[20]], &qword_27CDF7B40, &qword_21CBC67D8);
  sub_21C6EA794(v36, &qword_27CDF7B40, &qword_21CBC67D8);
  sub_21C6EA794(v61, &qword_27CDF7B48, &qword_21CBC67E0);
  sub_21C6EA794(v60, &qword_27CDF7B50, &unk_21CBC67E8);
  v47 = *(v37 + 8);
  v47(v49, v45);
  sub_21C6EA794(v43, &qword_27CDF7B40, &qword_21CBC67D8);
  sub_21C6EA794(v59, &qword_27CDF7B48, &qword_21CBC67E0);
  sub_21C6EA794(v62, &qword_27CDF7B50, &unk_21CBC67E8);
  return (v47)(v57, v45);
}

uint64_t sub_21CAD37F0()
{
  type metadata accessor for PMPasswordsSecurityView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  sub_21CB85254();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
  sub_21CB84F84();

  return sub_21CB84EA4();
}

uint64_t sub_21CAD38FC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21CAD3A28@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = sub_21CB830D4();
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v30 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMPasswordsSecurityView(0);
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7C28, &qword_21CBC69A0);
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = &v27 - v9;
  swift_getKeyPath(aP_106, v8);
  swift_getKeyPath(aP_107);
  sub_21CB81DB4();

  v11 = *(v32 + 16);

  if (v11)
  {
    swift_getKeyPath(aP_106);
    swift_getKeyPath(aP_107);
    sub_21CB81DB4();

    v12 = v32;
    sub_21CAD9A8C(v1, &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMPasswordsSecurityView);
    v13 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v14 = swift_allocObject();
    v15 = sub_21CAD9A24(&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for PMPasswordsSecurityView);
    v32 = v12;
    MEMORY[0x28223BE20](v15);
    *(&v27 - 4) = &v32;
    *(&v27 - 3) = sub_21CAD9710;
    *(&v27 - 2) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7C30, &qword_21CBC69F0);
    sub_21CAD979C();
    sub_21CB83F34();

    v16 = v30;
    sub_21CB830A4();
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7C60, &qword_21CBC6A10) + 36);
    v18 = v29;
    (*(v29 + 16))(&v10[v17], v16, v2);
    v28 = v7;
    v19 = *(v18 + 56);
    v19(&v10[v17], 0, 1, v2);
    KeyPath = swift_getKeyPath(byte_21CBC6A18);
    v21 = &v10[*(v6 + 36)];
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB238, &qword_21CBA1570) + 28);
    (*(v18 + 32))(v21 + v22, v16, v2);
    v19(v21 + v22, 0, 1, v2);
    v7 = v28;
    *v21 = KeyPath;
    v23 = v31;
    sub_21C716934(v10, v31, &qword_27CDF7C28, &qword_21CBC69A0);
    v24 = 0;
    v25 = v23;
  }

  else
  {
    v24 = 1;
    v25 = v31;
  }

  return (*(v7 + 56))(v25, v24, 1, v6);
}

uint64_t sub_21CAD3EB0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath(byte_21CBC6948);
  swift_getKeyPath(byte_21CBC6970);
  sub_21CB81DB4();

  v2 = *(v7 + 16);

  if (v2)
  {
    MEMORY[0x28223BE20](v3);
    sub_21CAD618C();
    sub_21C71F3FC();
    sub_21CB84054();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7C08, &qword_21CBC6990);
    sub_21CAD9408();
    sub_21CB85034();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7C20, &qword_21CBC6998);
  return (*(*(v5 - 8) + 56))(a1, v4, 1, v5);
}

uint64_t sub_21CAD404C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7B68, &qword_21CBC6810);
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = v12 - v6;
  swift_getKeyPath(byte_21CBC6840);
  sub_21CB81DB4();

  v8 = *(v12[1] + 16);

  if (v8)
  {
    MEMORY[0x28223BE20](v9);
    v12[-2] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7B70, &qword_21CBC6860);
    sub_21C6EADEC(&qword_27CDF7B78, &qword_27CDF7B70, &qword_21CBC6860, MEMORY[0x277CE14C0]);
    sub_21CB85054();
    (*(v4 + 32))(a1, v7, v3);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return (*(v4 + 56))(a1, v10, 1, v3);
}

id sub_21CAD4250(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = objc_opt_self();

  return [v2 setPasswordBreachDetectionEnabled_];
}

double sub_21CAD4298(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for PMPasswordsSecurityView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v12 = *a1;
  v11 = a1[1];
  v13 = *(a1 + 16);
  v14 = a1[3];
  v15 = sub_21CB858E4();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  sub_21CAD9A8C(a2, v7, type metadata accessor for PMPasswordsSecurityView);
  sub_21CB858B4();

  v16 = v14;
  v17 = sub_21CB858A4();
  v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v19 = (v6 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  *(v20 + 16) = v17;
  *(v20 + 24) = v21;
  sub_21CAD9A24(v7, v20 + v18, type metadata accessor for PMPasswordsSecurityView);
  v22 = v20 + v19;
  *v22 = v12;
  *(v22 + 8) = v11;
  *(v22 + 16) = v13;
  *(v22 + 24) = v16;
  sub_21C98B308(0, 0, v10, &unk_21CBC67C8, v20);

  return result;
}

uint64_t sub_21CAD44C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 192) = a7;
  *(v8 + 96) = a6;
  *(v8 + 104) = a8;
  *(v8 + 80) = a4;
  *(v8 + 88) = a5;
  *(v8 + 112) = sub_21CB858B4();
  *(v8 + 120) = sub_21CB858A4();
  v10 = sub_21CB85874();
  *(v8 + 128) = v10;
  *(v8 + 136) = v9;

  return MEMORY[0x2822009F8](sub_21CAD4568, v10, v9);
}

uint64_t sub_21CAD4568(uint64_t a1)
{
  v1[18] = *(v1[10] + 16);
  v1[19] = sub_21CB858A4();
  v3 = sub_21CB85874();
  v1[20] = v3;
  v1[21] = v2;

  return MEMORY[0x2822009F8](sub_21CAD4600, v3, v2);
}

uint64_t sub_21CAD4600()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 192);
  v4 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB000, &unk_21CBB0000);
  inited = swift_initStackObject();
  *(v0 + 176) = inited;
  *(inited + 16) = xmmword_21CBA0690;
  *(inited + 32) = v4;
  *(inited + 40) = v1;
  *(inited + 48) = v3;
  *(inited + 56) = v2;

  v6 = v2;
  v7 = swift_task_alloc();
  *(v0 + 184) = v7;
  *v7 = v0;
  v7[1] = sub_21CAD46FC;

  return sub_21C833508(inited);
}

uint64_t sub_21CAD46FC()
{
  v1 = *v0;
  v2 = *(*v0 + 176);

  swift_setDeallocating();
  sub_21C8F1684(v2 + 32);
  v3 = *(v1 + 168);
  v4 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_21CAD4848, v4, v3);
}

uint64_t sub_21CAD4848()
{

  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return MEMORY[0x2822009F8](sub_21CAD48AC, v1, v2);
}

uint64_t sub_21CAD48AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CAD490C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v3 + 152))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21CAD497C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21CAD4AA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB000, &unk_21CBB0000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CBA0690;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 48) = a4;
  *(inited + 56) = a5;

  v10 = a5;
  sub_21C83532C(inited);
  swift_setDeallocating();
  return sub_21C8F1684(inited + 32);
}

uint64_t sub_21CAD4B5C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21CAD4C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v52 = sub_21CB81024();
  v12 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v14 = &v48[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v48[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v50 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v58 = &v48[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v59 = &v48[-v21];
  v61 = a1;
  v62 = a2;
  v22 = sub_21C71F3FC();

  v51 = v22;
  v23 = sub_21CB84054();
  v53 = v24;
  v54 = v23;
  v49 = v25;
  v55 = v26;
  v56 = a3;
  v61 = a3;
  v62 = a4;
  v57 = a4;
  v27 = a5 & 1;
  v63 = a5;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
  MEMORY[0x21CF14A20](&v60, v28);
  if (v60 == 1)
  {
    sub_21CB81014();
    sub_21CB81014();
    v29 = sub_21CB80FF4();
    v31 = v30;
    v32 = *(v12 + 8);
    v33 = v14;
    v34 = v52;
    v32(v33, v52);
    v32(v17, v34);
  }

  else
  {
    sub_21CB81014();
    v29 = sub_21CB81004();
    v31 = v35;
    (*(v12 + 8))(v17, v52);
  }

  v61 = v29;
  v62 = v31;
  v36 = swift_allocObject();
  v37 = v57;
  *(v36 + 16) = v56;
  *(v36 + 24) = v37;
  *(v36 + 32) = v27;

  v38 = v59;
  sub_21CB84DE4();
  v39 = v50;
  v40 = *(v50 + 16);
  v41 = v58;
  v40(v58, v38, v18);
  v42 = v53;
  v43 = v54;
  *a6 = v54;
  *(a6 + 8) = v42;
  v44 = v49 & 1;
  *(a6 + 16) = v49 & 1;
  *(a6 + 24) = v55;
  *(a6 + 32) = 0;
  *(a6 + 40) = 1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7C00, &qword_21CBC6940);
  v40((a6 + *(v45 + 64)), v41, v18);
  sub_21C79B058(v43, v42, v44);
  v46 = *(v39 + 8);

  v46(v59, v18);
  v46(v41, v18);
  sub_21C74A72C(v43, v42, v44);
}

double sub_21CAD509C(uint64_t a1, uint64_t a2, char a3)
{
  v8 = a1;
  v9 = a2;
  v10 = a3;
  v5 = a1;
  v6 = a2;
  v7 = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
  MEMORY[0x21CF14A20](&v4);
  LOBYTE(v5) = (v4 & 1) == 0;
  sub_21CB84F34();

  return result;
}

uint64_t sub_21CAD5140(uint64_t *a1, uint64_t a2)
{
  sub_21CAD5D4C(*a1, a1[1], *(a1 + 16), a1[3], v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF4130, &qword_21CBB1B70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7C58, &qword_21CBC6A08);
  sub_21CAD9904(&qword_27CDEEDF8, &unk_27CDF4130, &qword_21CBB1B70);
  sub_21C6EADEC(&qword_27CDF7C50, &qword_27CDF7C58, &qword_21CBC6A08, MEMORY[0x277CE14C0]);
  return sub_21CB85034();
}

uint64_t sub_21CAD5268@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v98 = a2;
  v75 = type metadata accessor for PMChangePasswordOnWebsiteLink(0);
  MEMORY[0x28223BE20](v75);
  v77 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7C68, &unk_21CBC6A50);
  v96 = *(v6 - 8);
  v97 = v6;
  MEMORY[0x28223BE20](v6);
  v76 = &v75 - v7;
  v78 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v78);
  v79 = (&v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v9 - 8);
  v90 = &v75 - v10;
  v11 = type metadata accessor for PMAccount(0);
  v88 = *(v11 - 8);
  v89 = v11;
  MEMORY[0x28223BE20](v11);
  v80 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7C70, &qword_21CBC6A60);
  MEMORY[0x28223BE20](v13 - 8);
  v95 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v94 = &v75 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7BC0, &qword_21CBC68A8);
  v86 = *(v17 - 8);
  v87 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v75 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7BF8, &qword_21CBC68D8);
  v92 = *(v20 - 8);
  v93 = v20;
  MEMORY[0x28223BE20](v20);
  v91 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v23 = MEMORY[0x28223BE20](v22).n128_u64[0];
  v85 = &v75 - v24;
  v26 = *a1;
  v25 = *(a1 + 8);
  v27 = *(a1 + 16);
  v28 = *(a1 + 24);
  KeyPath = swift_getKeyPath(byte_21CBC68E0, v23);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, v100);

  type metadata accessor for PMAccountsState(0);
  sub_21C706210(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
  v30 = sub_21CB82674();
  v32 = v31;

  v84 = &v75;
  v100 = v30;
  v101 = v32;
  v102 = v26;
  v103 = v25;
  v104 = v27;
  v105 = v28;
  MEMORY[0x28223BE20](v33);
  v99 = v27;
  *(&v75 - 6) = v3;
  *(&v75 - 5) = v26;
  *(&v75 - 4) = v25;
  *(&v75 - 24) = v27;
  *(&v75 - 2) = v28;

  v83 = v28;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7BD0, &unk_21CBC68B8);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v36 = sub_21CAD8F2C();
  v37 = sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
  sub_21CB84154();

  v84 = &v75;
  MEMORY[0x28223BE20](v38);
  *(&v75 - 6) = v3;
  *(&v75 - 5) = v26;
  v81 = v26;
  v82 = v25;
  *(&v75 - 4) = v25;
  *(&v75 - 24) = v99;
  v39 = v83;
  *(&v75 - 2) = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7BC8, &qword_21CBC68B0);
  v100 = v34;
  v101 = v35;
  v102 = v36;
  v103 = v37;
  swift_getOpaqueTypeConformance2();
  sub_21CAD9004();
  v40 = v85;
  v41 = v87;
  sub_21CB84204();
  (*(v86 + 8))(v19, v41);
  v42 = *(v3 + 16);
  v43 = v40;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v46 = v90;
    (*(v88 + 56))(v90, 1, 1, v89);
    v49 = v97;
    v50 = v94;
    goto LABEL_8;
  }

  v44 = *(v42 + 24);
  ObjectType = swift_getObjectType();
  v100 = v81;
  v101 = v82;
  LOBYTE(v102) = v99;
  v103 = v39;
  v46 = v90;
  (*(v44 + 56))(&v100, ObjectType, v44);
  swift_unknownObjectRelease();
  v47 = v89;
  v48 = (*(v88 + 48))(v46, 1, v89);
  v49 = v97;
  v50 = v94;
  if (v48 == 1)
  {
LABEL_8:
    sub_21C6EA794(v46, &unk_27CDEBE60, &unk_21CB9FF40);
LABEL_12:
    v64 = 1;
    goto LABEL_13;
  }

  v51 = v80;
  sub_21CAD9A24(v46, v80, type metadata accessor for PMAccount);
  v52 = v51 + *(v47 + 24);
  v53 = v79;
  sub_21CAD9A8C(v52, v79, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7198A0(v53, type metadata accessor for PMAccount.Storage);
LABEL_11:
    sub_21C7198A0(v51, type metadata accessor for PMAccount);
    goto LABEL_12;
  }

  v54 = *v53;
  v55 = [v54 hasValidWebsite];

  if (!v55)
  {
    goto LABEL_11;
  }

  v56 = v75;
  v57 = v77;
  sub_21CAD9A8C(v51, &v77[*(v75 + 20)], type metadata accessor for PMAccount);
  *v57 = swift_getKeyPath(byte_21CBC6A70);
  *(v57 + 8) = 0;
  *(v57 + 16) = 0;
  v58 = (v57 + v56[7]);
  v59 = v56[9];
  *(v57 + v56[6]) = 0;
  v60 = (v57 + v59);
  *v58 = 0;
  v58[1] = 0;
  *(v57 + v56[8]) = 0;
  sub_21C805AD8();
  *v60 = 0;
  v60[1] = 0;
  v61 = sub_21CB83314();
  sub_21C7198A0(v51, type metadata accessor for PMAccount);
  v62 = v76;
  sub_21CAD9A8C(v57, v76, type metadata accessor for PMChangePasswordOnWebsiteLink);
  v63 = (v62 + *(v49 + 36));
  *v63 = v61;
  v63[1] = sub_21C7902AC;
  v63[2] = 0;
  sub_21C7198A0(v57, type metadata accessor for PMChangePasswordOnWebsiteLink);
  sub_21CAD9AF4(v62, v50);
  v64 = 0;
LABEL_13:
  (*(v96 + 56))(v50, v64, 1, v49);
  v66 = v91;
  v65 = v92;
  v67 = *(v92 + 16);
  v68 = v93;
  v67(v91, v43, v93);
  v69 = v95;
  sub_21C6EDBAC(v50, v95, &qword_27CDF7C70, &qword_21CBC6A60);
  v70 = v43;
  v71 = v98;
  v67(v98, v66, v68);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7C78, &qword_21CBC6A68);
  sub_21C6EDBAC(v69, &v71[*(v72 + 48)], &qword_27CDF7C70, &qword_21CBC6A60);
  sub_21C6EA794(v50, &qword_27CDF7C70, &qword_21CBC6A60);
  v73 = *(v65 + 8);
  v73(v70, v68);
  sub_21C6EA794(v69, &qword_27CDF7C70, &qword_21CBC6A60);
  return (v73)(v66, v68);
}

uint64_t sub_21CAD5D4C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v49 = a5;
  v50 = a2;
  v9 = sub_21CB81024();
  v47 = *(v9 - 8);
  v48 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v15 = v44 - v14;
  swift_getKeyPath(aP_106, v13);
  swift_getKeyPath(aP_107);
  sub_21CB81DB4();

  if (*(v51 + 16))
  {
    v17 = *(v51 + 32);
    v16 = *(v51 + 40);
    v18 = *(v51 + 48);
    v19 = *(v51 + 56);

    v46 = v19;

    v20 = a4 & 1;
    if (v16)
    {
      if (a3)
      {
        if (v17 == v50 && v16 == a3)
        {
          if (v18 != (a4 & 1))
          {
LABEL_20:

            v42 = v49;
            v43 = v49;
            sub_21C7D33AC(v17, v16, v18, v19);
            sub_21C7D33F0(v50, a3, v20, v42);

            v25 = v17;
            v26 = v16;
            v27 = v18;
            v28 = v19;
            goto LABEL_14;
          }
        }

        else if (sub_21CB86344() & 1) == 0 || ((v18 ^ a4))
        {
          goto LABEL_20;
        }

        v44[1] = sub_21C7EBFE0();

        v45 = a4 & 1;
        v33 = v49;
        sub_21C7D33AC(v17, v16, v18, v19);
        sub_21C7D33AC(v17, v16, v18, v19);
        v34 = v46;
        v35 = sub_21CB85DD4();
        sub_21C7D33F0(v17, v16, v18, v19);
        sub_21C7D33F0(v50, a3, v45, v49);

        sub_21C7D33F0(v17, v16, v18, v19);
        result = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        if ((v35 & 1) == 0)
        {
          goto LABEL_19;
        }

LABEL_18:
        sub_21CB81014();
        sub_21CB81014();
        v36 = sub_21CB80FF4();
        v38 = v37;
        v39 = v48;
        v40 = *(v47 + 8);
        v40(v11, v48);
        v40(v15, v39);
        v51 = v36;
        v52 = v38;
        sub_21C71F3FC();
        result = sub_21CB84054();
        v31 = v41 & 1;
        goto LABEL_19;
      }

      v21 = v49;
      v24 = v49;
      sub_21C7D33AC(v17, v16, v18, v19);

      goto LABEL_13;
    }
  }

  else
  {

    v19 = 0;
    v18 = 0;
    v17 = 0;
    v20 = a4 & 1;
  }

  v21 = v49;
  if (!a3)
  {
    v23 = v49;
    sub_21C7D33F0(v17, 0, v18, v19);
    goto LABEL_18;
  }

  v22 = v21;
  v16 = 0;
LABEL_13:
  sub_21C7D33F0(v17, v16, v18, v19);
  v25 = v50;
  v26 = a3;
  v27 = v20;
  v28 = v21;
LABEL_14:
  sub_21C7D33F0(v25, v26, v27, v28);
  result = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
LABEL_19:
  *a6 = result;
  a6[1] = v30;
  a6[2] = v31;
  a6[3] = v32;
  return result;
}

uint64_t sub_21CAD618C()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x28223BE20](v1).n128_u64[0];
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(byte_21CBC6948, v3);
  swift_getKeyPath(byte_21CBC6970);
  sub_21CB81DB4();

  v6 = *(v13 + 16);

  if (v6 >= *v0)
  {
    sub_21CB81014();
    sub_21CB81004();
    (*(v2 + 8))(v5, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_21CBA0690;
    swift_getKeyPath(byte_21CBC6948);
    swift_getKeyPath(byte_21CBC6970);
    sub_21CB81DB4();

    v9 = *(v13 + 16);

    v10 = MEMORY[0x277D83C10];
    *(v8 + 56) = MEMORY[0x277D83B88];
    *(v8 + 64) = v10;
    *(v8 + 32) = v9;
    v7 = sub_21CB85594();
  }

  else
  {
    sub_21CB81014();
    v7 = sub_21CB81004();
    (*(v2 + 8))(v5, v1);
  }

  return v7;
}

uint64_t sub_21CAD6410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PMPasswordsSecurityView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7B88, &qword_21CBC6870);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  v12 = (a1 + *(v5 + 44));
  v13 = *v12;
  v14 = *(v12 + 1);
  LOBYTE(v23[0]) = v13;
  v23[1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D54();
  if (v22 == 1)
  {
    swift_getKeyPath(byte_21CBC6948);
    v21 = v8;
    swift_getKeyPath(byte_21CBC6970);
    sub_21CB81DB4();

    v15 = v23[0];
    sub_21CAD9A8C(a1, &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMPasswordsSecurityView);
    v8 = v21;
    v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v17 = swift_allocObject();
    v18 = sub_21CAD9A24(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for PMPasswordsSecurityView);
    v23[0] = v15;
    MEMORY[0x28223BE20](v18);
    *(&v21 - 4) = v23;
    *(&v21 - 3) = sub_21CAD94B8;
    *(&v21 - 2) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7BB0, &qword_21CBC68A0);
    sub_21CAD8DA4();
    sub_21CB83F34();

    (*(v9 + 32))(a2, v11, v8);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v9 + 56))(a2, v19, 1, v8);
}

uint64_t sub_21CAD673C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7B80, &qword_21CBC6868);
  v91 = *(v3 - 8);
  v92 = v3;
  MEMORY[0x28223BE20](v3);
  v84 = &v73 - v4;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v80 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v73 = &v73 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B8, &qword_21CBA3EB0);
  MEMORY[0x28223BE20](v6 - 8);
  v83 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v81 = &v73 - v9;
  v10 = type metadata accessor for PMPasswordsSecurityView(0);
  v11 = v10 - 8;
  v74 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v85 = v12;
  v76 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7B88, &qword_21CBC6870);
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v75 = &v73 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7B90, &qword_21CBC6878);
  MEMORY[0x28223BE20](v16 - 8);
  v90 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v94 = &v73 - v19;
  v20 = sub_21CB81024();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7B98, &unk_21CBC6880);
  MEMORY[0x28223BE20](v24 - 8);
  v89 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v73 - v27;
  sub_21CB81014();
  sub_21CB81004();
  (*(v21 + 8))(v23, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_21CBA0690;
  v30 = *(a1 + 16);
  swift_getKeyPath(byte_21CBC6840);
  v87 = v30;
  sub_21CB81DB4();

  v31 = *(v95 + 16);

  v32 = MEMORY[0x277D83C10];
  *(v29 + 56) = MEMORY[0x277D83B88];
  *(v29 + 64) = v32;
  *(v29 + 32) = v31;
  v33 = sub_21CB85594();
  v35 = v34;

  v36 = *(v11 + 48);
  v86 = a1;
  v37 = (a1 + v36);
  v38 = *(v37 + 1);
  v98 = *v37;
  LOBYTE(a1) = v98;
  v99 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  v39 = v95;
  v40 = v96;
  LOBYTE(v31) = v97;
  *v28 = sub_21CB83074();
  *(v28 + 1) = 0;
  v41 = 1;
  v28[16] = 1;
  v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7BA0, &qword_21CBC6890) + 44);
  v88 = v28;
  sub_21CAD4C80(v33, v35, v39, v40, v31, &v28[v42]);

  LOBYTE(v95) = a1;
  v96 = v38;
  sub_21CB84D54();
  if (v98 == 1)
  {
    swift_getKeyPath(byte_21CBC6840);
    sub_21CB81DB4();

    v43 = v95;
    v44 = v76;
    sub_21CAD9A8C(v86, v76, type metadata accessor for PMPasswordsSecurityView);
    v45 = (*(v74 + 80) + 16) & ~*(v74 + 80);
    v46 = swift_allocObject();
    v47 = sub_21CAD9A24(v44, v46 + v45, type metadata accessor for PMPasswordsSecurityView);
    v95 = v43;
    MEMORY[0x28223BE20](v47);
    *(&v73 - 4) = &v95;
    *(&v73 - 3) = sub_21CAD89D4;
    *(&v73 - 2) = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7BB0, &qword_21CBC68A0);
    sub_21CAD8DA4();
    v48 = v75;
    sub_21CB83F34();

    swift_getKeyPath(byte_21CBC6840);
    sub_21CB81DB4();

    v49 = *(v95 + 16);

    v50 = v48;
    if (v49)
    {
      sub_21CAD9A8C(v86, v44, type metadata accessor for PMPasswordsSecurityView);
      v51 = swift_allocObject();
      sub_21CAD9A24(v44, v51 + v45, type metadata accessor for PMPasswordsSecurityView);
      v52 = v73;
      sub_21CB84DA4();
      v53 = v80;
      v54 = v81;
      v55 = v82;
      (*(v80 + 32))(v81, v52, v82);
      v56 = 0;
    }

    else
    {
      v56 = 1;
      v54 = v81;
      v55 = v82;
      v53 = v80;
    }

    (*(v53 + 56))(v54, v56, 1, v55);
    v57 = v78;
    v58 = *(v78 + 16);
    v59 = v77;
    v60 = v50;
    v61 = v79;
    v58(v77, v50, v79);
    v62 = v83;
    sub_21C6EDBAC(v54, v83, &qword_27CDEC2B8, &qword_21CBA3EB0);
    v63 = v84;
    v58(v84, v59, v61);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7BF0, &unk_21CBC68C8);
    sub_21C6EDBAC(v62, v63 + *(v64 + 48), &qword_27CDEC2B8, &qword_21CBA3EB0);
    sub_21C6EA794(v54, &qword_27CDEC2B8, &qword_21CBA3EB0);
    v65 = *(v57 + 8);
    v65(v60, v61);
    sub_21C6EA794(v62, &qword_27CDEC2B8, &qword_21CBA3EB0);
    v65(v59, v61);
    sub_21C716934(v63, v94, &qword_27CDF7B80, &qword_21CBC6868);
    v41 = 0;
  }

  v66 = v94;
  (*(v91 + 56))(v94, v41, 1, v92);
  v67 = v88;
  v68 = v89;
  sub_21C6EDBAC(v88, v89, &qword_27CDF7B98, &unk_21CBC6880);
  v69 = v90;
  sub_21C6EDBAC(v66, v90, &qword_27CDF7B90, &qword_21CBC6878);
  v70 = v93;
  sub_21C6EDBAC(v68, v93, &qword_27CDF7B98, &unk_21CBC6880);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7BA8, &qword_21CBC6898);
  sub_21C6EDBAC(v69, v70 + *(v71 + 48), &qword_27CDF7B90, &qword_21CBC6878);
  sub_21C6EA794(v66, &qword_27CDF7B90, &qword_21CBC6878);
  sub_21C6EA794(v67, &qword_27CDF7B98, &unk_21CBC6880);
  sub_21C6EA794(v69, &qword_27CDF7B90, &qword_21CBC6878);
  return sub_21C6EA794(v68, &qword_27CDF7B98, &unk_21CBC6880);
}

uint64_t sub_21CAD725C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a4;
  v29 = a3;
  v30 = a5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7BC0, &qword_21CBC68A8);
  v31 = *(v33 - 8);
  *&v7 = MEMORY[0x28223BE20](v33).n128_u64[0];
  v9 = v27 - v8;
  v11 = *a1;
  v10 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  KeyPath = swift_getKeyPath(byte_21CBC68E0, v7);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, v34);

  type metadata accessor for PMAccountsState(0);
  sub_21C706210(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
  v15 = sub_21CB82674();
  v17 = v16;

  v27[1] = v27;
  v34 = v15;
  v35 = v17;
  v36 = v11;
  v37 = v10;
  v38 = v12;
  v39 = v13;
  MEMORY[0x28223BE20](v18);
  v28 = v12;
  v27[-6] = a2;
  v27[-5] = v11;
  v27[-4] = v10;
  LOBYTE(v27[-3]) = v12;
  v27[-2] = v13;

  v27[0] = v13;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7BD0, &unk_21CBC68B8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v21 = sub_21CAD8F2C();
  v22 = sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
  sub_21CB84154();

  MEMORY[0x28223BE20](v23);
  v27[-6] = v24;
  v27[-5] = v11;
  v27[-4] = v10;
  LOBYTE(v27[-3]) = v28;
  v27[-2] = v27[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7BC8, &qword_21CBC68B0);
  v34 = v19;
  v35 = v20;
  v36 = v21;
  v37 = v22;
  swift_getOpaqueTypeConformance2();
  sub_21CAD9004();
  v25 = v33;
  sub_21CB84204();
  return (*(v31 + 8))(v9, v25);
}

uint64_t sub_21CAD75FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v3 + 144))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21CAD766C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21CAD7798(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for PMPasswordsSecurityView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_21CAD9A8C(a1, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMPasswordsSecurityView);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  sub_21CAD9A24(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for PMPasswordsSecurityView);
  v15 = v14 + ((v12 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v15 = a2;
  *(v15 + 8) = a3;
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;

  v16 = a5;
  return sub_21CB84DA4();
}

uint64_t sub_21CAD7934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for PMPasswordsSecurityView(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  sub_21CAD9A8C(a1, &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMPasswordsSecurityView);
  v15 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v16 = swift_allocObject();
  sub_21CAD9A24(&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for PMPasswordsSecurityView);
  v17 = v16 + ((v14 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v17 = a2;
  *(v17 + 8) = a3;
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;

  v18 = a5;
  sub_21CB84DA4();
  v19 = sub_21CB84A74();
  KeyPath = swift_getKeyPath(byte_21CBC6908);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7BC8, &qword_21CBC68B0);
  v22 = (a6 + *(result + 36));
  *v22 = KeyPath;
  v22[1] = v19;
  return result;
}

void sub_21CAD7B08(BOOL *a1@<X8>)
{
  type metadata accessor for PMPasswordsSecurityView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7B00, &unk_21CBC6770);
  sub_21CB84D54();
  if (v3)
  {
    sub_21C7D33F0(v2, v3, v4, v5);
  }

  *a1 = v3 != 0;
}

double sub_21CAD7B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a4 + *(type metadata accessor for PMPasswordsSecurityView(0) + 44));
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  v9 = v4[3];
  sub_21C7D33AC(*v4, v7, v8, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7B00, &unk_21CBC6770);
  sub_21CB84D64();
  sub_21C7D33F0(v6, v7, v8, v9);

  return result;
}

uint64_t sub_21CAD7C38()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() currentDevice];
  [v4 deviceClass];

  sub_21CB81014();
  v5 = sub_21CB81004();
  (*(v1 + 8))(v3, v0);
  return v5;
}

void sub_21CAD7D98(BOOL *a1@<X8>)
{
  type metadata accessor for PMPasswordsSecurityView(0);

  sub_21CAD7B08(a1);
}

double sub_21CAD7E0C(uint64_t a1)
{
  v3 = *(type metadata accessor for PMPasswordsSecurityView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_21CAD7B98(a1, v4, v5, v6);
}

double sub_21CAD7E80(uint64_t *a1)
{
  v3 = *(type metadata accessor for PMPasswordsSecurityView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21CAD4298(a1, v4);
}

unint64_t sub_21CAD7F08()
{
  result = qword_27CDF7B18;
  if (!qword_27CDF7B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7AC8, &qword_21CBC6748);
    sub_21CAD7FC0();
    sub_21C6EADEC(&qword_27CDF6C48, &qword_27CDF6C50, &unk_21CBC2A70, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7B18);
  }

  return result;
}

unint64_t sub_21CAD7FC0()
{
  result = qword_27CDF7B20;
  if (!qword_27CDF7B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7B10, &qword_21CBC6788);
    sub_21CAD804C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7B20);
  }

  return result;
}

unint64_t sub_21CAD804C()
{
  result = qword_27CDF7B28;
  if (!qword_27CDF7B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7B08, &qword_21CBC6780);
    sub_21CAD80D8();
    sub_21CAD8250();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7B28);
  }

  return result;
}

unint64_t sub_21CAD80D8()
{
  result = qword_27CDF7B30;
  if (!qword_27CDF7B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7AF8, &qword_21CBC6768);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7AC0, &qword_21CBC6740);
    sub_21CB829D4();
    sub_21C6EADEC(&qword_27CDF7AF0, &qword_27CDF7AC0, &qword_21CBC6740, MEMORY[0x277CDE580]);
    sub_21C706210(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDED9D0, &qword_27CDED9D8, &unk_21CBB96E0, MEMORY[0x277CE0400]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7B30);
  }

  return result;
}

unint64_t sub_21CAD8250()
{
  result = qword_27CDF7B38;
  if (!qword_27CDF7B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7B38);
  }

  return result;
}

uint64_t sub_21CAD82A4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PMPasswordsSecurityView(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_21C702EFC;

  return sub_21CAD44C4(a1, v7, v8, v1 + v6, v10, v11, v12, v13);
}

uint64_t sub_21CAD83F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA58, &qword_21CBC6B90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0518, &qword_21CBAED60);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v34 - v12;
  v39 = type metadata accessor for PMAccount(0);
  v14 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v16 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v2[1];
  v41 = *v2;
  v42 = v17;
  v43 = v2[2];
  v44 = v41;
  v18 = *(&v41 + 1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v35 = v16;
    v36 = v10;
    v37 = v6;
    v38 = v8;
    v19 = *(v18 + 24);
    ObjectType = swift_getObjectType();
    v21 = v2[2];
    v40[0] = v2[1];
    v40[1] = v21;
    v22 = v7;
    v23 = a1;
    v24 = *(v19 + 56);

    v24(v40, ObjectType, v19);
    a1 = v23;
    v7 = v22;
    sub_21C6EA794(&v44, &qword_27CDEB4E0, &qword_21CBA5F00);
    v8 = v38;
    swift_unknownObjectRelease();
    if ((*(v14 + 48))(v13, 1, v39) != 1)
    {
      v25 = v35;
      sub_21CAD9A24(v13, v35, type metadata accessor for PMAccount);
      v26 = *v25;
      v39 = v25[1];
      v27 = v39;
      v28 = v37;
      *v37 = v26;
      v28[1] = v27;
      v29 = v8;
      v30 = type metadata accessor for PMSystemSettingsNavigationDestination(0);
      swift_storeEnumTagMultiPayload();
      v31 = (*(*(v30 - 8) + 56))(v28, 0, 1, v30);
      v34[2] = v34;
      MEMORY[0x28223BE20](v31);
      v34[1] = type metadata accessor for PMSecurityRecommendationsAccountRow(0);
      v34[0] = sub_21C706210(&qword_27CDF0660, type metadata accessor for PMSecurityRecommendationsAccountRow, &unk_21CBC9C54);
      sub_21C706210(&qword_27CDF7C80, type metadata accessor for PMSystemSettingsNavigationDestination, &unk_21CBCCB58);
      sub_21C706210(&qword_27CDF7C88, type metadata accessor for PMSystemSettingsNavigationDestination, &unk_21CBCCB30);
      sub_21C706210(&qword_27CDF7C90, type metadata accessor for PMSystemSettingsNavigationDestination, &unk_21CBCCB80);

      v32 = v36;
      sub_21CB82614();
      (*(v29 + 32))(a1, v32, v22);
      (*(v29 + 56))(a1, 0, 1, v22);
      return sub_21C7198A0(v25, type metadata accessor for PMAccount);
    }
  }

  else
  {
    (*(v14 + 56))(v13, 1, 1, v39);
  }

  sub_21C6EA794(v13, &unk_27CDEBE60, &unk_21CB9FF40);
  return (*(v8 + 56))(a1, 1, 1, v7);
}

uint64_t sub_21CAD892C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21CAD9A8C(a1, a3, type metadata accessor for PMAccount);
  v5 = *(a2 + 32);
  v12[0] = *(a2 + 16);
  v12[1] = v5;
  v6 = type metadata accessor for PMSecurityRecommendationsAccountRow(0);
  v7 = a3 + *(v6 + 24);
  *v7 = swift_getKeyPath(aX_76);
  *(v7 + 8) = 0;
  v8 = (a3 + *(v6 + 20));
  v9 = *(a2 + 32);
  *v8 = *(a2 + 16);
  v8[1] = v9;
  return sub_21CAD9B98(v12, &v11);
}

uint64_t sub_21CAD8A00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CB82F54();
  *a1 = result;
  return result;
}

uint64_t sub_21CAD8A58(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED828, &qword_21CBAF0E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7C48, &unk_21CBC69F8);
  sub_21C6EADEC(&qword_27CDF0648, &qword_27CDED828, &qword_21CBAF0E0, MEMORY[0x277D83980]);
  sub_21CAD9820();
  sub_21C8F12C4();
  return sub_21CB84FF4();
}

uint64_t sub_21CAD8B7C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED828, &qword_21CBAF0E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7BF8, &qword_21CBC68D8);
  sub_21C6EADEC(&qword_27CDF0648, &qword_27CDED828, &qword_21CBAF0E0, MEMORY[0x277D83980]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7BC0, &qword_21CBC68A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7BC8, &qword_21CBC68B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7BD0, &unk_21CBC68B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBE40, &unk_21CBA8200);
  sub_21CAD8F2C();
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
  swift_getOpaqueTypeConformance2();
  sub_21CAD9004();
  swift_getOpaqueTypeConformance2();
  sub_21C8F12C4();
  return sub_21CB84FF4();
}

unint64_t sub_21CAD8DA4()
{
  result = qword_27CDF7BB8;
  if (!qword_27CDF7BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7BB0, &qword_21CBC68A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7BC0, &qword_21CBC68A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7BC8, &qword_21CBC68B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7BD0, &unk_21CBC68B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBE40, &unk_21CBA8200);
    sub_21CAD8F2C();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
    swift_getOpaqueTypeConformance2();
    sub_21CAD9004();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7BB8);
  }

  return result;
}

unint64_t sub_21CAD8F2C()
{
  result = qword_27CDF7BD8;
  if (!qword_27CDF7BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7BD0, &unk_21CBC68B8);
    sub_21CAD8FB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7BD8);
  }

  return result;
}

unint64_t sub_21CAD8FB0()
{
  result = qword_27CDF7BE0;
  if (!qword_27CDF7BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7BE0);
  }

  return result;
}

unint64_t sub_21CAD9004()
{
  result = qword_27CDF7BE8;
  if (!qword_27CDF7BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7BC8, &qword_21CBC68B0);
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
    sub_21C6EADEC(&unk_27CDEC1B0, &qword_27CDEB968, &qword_21CBA26F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7BE8);
  }

  return result;
}

uint64_t sub_21CAD9100(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMPasswordsSecurityView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t objectdestroy_38Tm_0()
{
  v1 = type metadata accessor for PMPasswordsSecurityView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CB823B4();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v5 + v1[11];
  if (*(v8 + 8))
  {
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_21C7025C4(*(v5 + v1[12]), *(v5 + v1[12] + 8));

  return MEMORY[0x2821FE8E8](v0, v9 + 32, v2 | 7);
}

uint64_t sub_21CAD9368()
{
  v1 = *(type metadata accessor for PMPasswordsSecurityView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_21CAD4AA8(v0 + v2, *v3, *(v3 + 8), *(v3 + 16), *(v3 + 24));
}

unint64_t sub_21CAD9408()
{
  result = qword_27CDF7C10;
  if (!qword_27CDF7C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7C08, &qword_21CBC6990);
    sub_21C6EADEC(&qword_27CDF7C18, &qword_27CDF7B88, &qword_21CBC6870, MEMORY[0x277CDE5A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7C10);
  }

  return result;
}

uint64_t objectdestroy_6Tm()
{
  v1 = type metadata accessor for PMPasswordsSecurityView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CB823B4();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v5 + v1[11];
  if (*(v8 + 8))
  {
  }

  sub_21C7025C4(*(v5 + v1[12]), *(v5 + v1[12] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21CAD9710(uint64_t *a1)
{
  v3 = *(type metadata accessor for PMPasswordsSecurityView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21CAD5140(a1, v4);
}

unint64_t sub_21CAD979C()
{
  result = qword_27CDF7C38;
  if (!qword_27CDF7C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7C30, &qword_21CBC69F0);
    sub_21CAD9820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7C38);
  }

  return result;
}

unint64_t sub_21CAD9820()
{
  result = qword_27CDF7C40;
  if (!qword_27CDF7C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7C48, &unk_21CBC69F8);
    sub_21CAD9904(&qword_27CDEEDF8, &unk_27CDF4130, &qword_21CBB1B70);
    sub_21C6EADEC(&qword_27CDF7C50, &qword_27CDF7C58, &qword_21CBC6A08, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7C40);
  }

  return result;
}

uint64_t sub_21CAD9904(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21CAD9970(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7[0] = *a1;
  v7[1] = v3;
  v8 = v4;
  v9 = v5;
  return v2(v7);
}

uint64_t sub_21CAD99BC@<X0>(char *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v6[0] = *(v1 + 24);
  v6[1] = v2;
  v7 = v3;
  v8 = v4;
  return sub_21CAD5268(v6, a1);
}

uint64_t sub_21CAD9A24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CAD9A8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CAD9AF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7C68, &unk_21CBC6A50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CAD9BF4()
{
  result = qword_27CDF7C98;
  if (!qword_27CDF7C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7CA0, &qword_21CBC6B98);
    sub_21C6EADEC(&qword_27CDF0510, &qword_27CDF0518, &qword_21CBAED60, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7C98);
  }

  return result;
}

uint64_t sub_21CAD9CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7CB0, &qword_21CBC6C40);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v22[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7CB8, &qword_21CBC6C48);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v22[-v15];
  sub_21CAD9F48(1);
  if (*(a1 + 40))
  {
    v23 = *(a1 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
    sub_21CB84D54();
    v17 = v22[15] ^ 1;
  }

  else
  {
    v17 = 0;
  }

  sub_21CAD9F48(v17 & 1);
  sub_21C786B94(v16, v13);
  v18 = *(v5 + 16);
  v18(v7, v10, v4);
  sub_21C786B94(v13, a2);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7CC0, &qword_21CBC6C50);
  v18((a2 + *(v19 + 48)), v7, v4);
  v20 = *(v5 + 8);
  v20(v10, v4);
  sub_21C786C04(v16);
  v20(v7, v4);
  return sub_21C786C04(v13);
}

uint64_t sub_21CAD9F48(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  *&v4 = MEMORY[0x28223BE20](v3 - 8).n128_u64[0];
  v6 = &v15 - v5;
  v8 = *v1;
  v7 = v1[1];
  KeyPath = swift_getKeyPath(byte_21CBC6C58, v4);
  v20 = 0;
  v19 = 0;
  *&v16 = v8;
  *(&v16 + 1) = v7;
  LOBYTE(v17) = a1;
  BYTE1(v17) = 1;
  *(&v17 + 1) = KeyPath;
  *v18 = 0;
  *&v18[8] = v10;
  *&v18[16] = 0x7FFFFFFFFFFFFFFFLL;
  v18[24] = 0;
  v11 = *MEMORY[0x277CE0980];
  v12 = sub_21CB83DC4();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v6, v11, v12);
  (*(v13 + 56))(v6, 0, 1, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7CC8, &unk_21CBC6CB8);
  sub_21CADA198();
  sub_21CB840C4();
  sub_21C6EA794(v6, &qword_27CDEBB58, &qword_21CBAF8A0);
  v21[0] = v16;
  v21[1] = v17;
  v22[0] = *v18;
  *(v22 + 9) = *&v18[9];
  return sub_21C6EA794(v21, &qword_27CDF7CC8, &unk_21CBC6CB8);
}

uint64_t sub_21CADA12C@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[3];
  v7[2] = v1[2];
  v8 = v3;
  v9 = v1[4];
  v4 = v1[1];
  v7[0] = *v1;
  v7[1] = v4;
  *a1 = v8;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7CA8, &qword_21CBC6C38);
  return sub_21CAD9CE4(v7, a1 + *(v5 + 44));
}

unint64_t sub_21CADA198()
{
  result = qword_27CDF7CD0;
  if (!qword_27CDF7CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7CC8, &unk_21CBC6CB8);
    sub_21C7E42A8();
    sub_21C6EADEC(&qword_27CDEB900, &qword_27CDEB8F8, &qword_21CBA26C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7CD0);
  }

  return result;
}

unint64_t sub_21CADA250(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF89F0, &unk_21CBC96F0);
    v2 = sub_21CB86224();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_21C731A9C(&v22, v24);
        sub_21C731A9C(v24, v25);
        sub_21C731A9C(v25, &v23);
        result = sub_21CB10A3C(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0(v11);
          result = sub_21C731A9C(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_21C731A9C(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_21CADA4A8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEC8, &qword_21CBADDB0);
    v2 = sub_21CB86224();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_21C731A9C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_21C731A9C(v29, v30);
    result = sub_21CB86014();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_21C731A9C(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_21CADA76C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEC8, &qword_21CBADDB0);
    v2 = sub_21CB86224();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 56) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v15 = *v13;
    v14 = v13[1];

    swift_dynamicCast();
    *&v31[0] = v15;
    *(&v31[0] + 1) = v14;
    swift_dynamicCast();
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_21C731A9C(&v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_21C731A9C(v30, v31);
    result = sub_21CB86014();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v18);
        if (v22 != -1)
        {
          v10 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v23;
    *(v11 + 16) = v24;
    *(v11 + 32) = v25;
    result = sub_21C731A9C(v31, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_21CADAA28()
{
  v0 = [objc_opt_self() generalPasteboard];
  type metadata accessor for PMPasteboard();
  result = swift_allocObject();
  *(result + 16) = v0;
  qword_27CE18710 = result;
  return result;
}

void sub_21CADAA84(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_21CB80DD4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC290, &unk_21CBA3E10);
  inited = swift_initStackObject();
  v24 = xmmword_21CBA0690;
  *(inited + 16) = xmmword_21CBA0690;
  *(inited + 32) = sub_21CB855C4();
  *(inited + 40) = v13;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v14 = sub_21CB126C0(inited);
  swift_setDeallocating();
  sub_21C6EA794(inited + 32, &unk_27CDF3320, &unk_21CBA0E30);
  v29 = sub_21CB12AE4(MEMORY[0x277D84F90]);
  v15 = *MEMORY[0x277D76DC8];
  v16 = v15;
  if (a3)
  {
    sub_21CB80D54();
    v28 = v8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v27);
    (*(v9 + 32))(boxed_opaque_existential_0, v11, v8);
    sub_21C731A9C(&v27, v26);
    v18 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v18;
    sub_21C8D45C0(v26, v16, isUniquelyReferenced_nonNull_native);

    v29 = v25;
  }

  else
  {
    sub_21CADADBC(v15, &v27);

    sub_21C6EA794(&v27, &qword_27CDF4D90, &qword_21CBA9F00);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7CE8, &qword_21CBC6CF8);
  v20 = swift_allocObject();
  *(v20 + 16) = v24;
  v21 = sub_21CADA250(v14);

  *(v20 + 32) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7CF0, &unk_21CBC6D00);
  v22 = sub_21CB85814();

  type metadata accessor for OptionsKey(0);
  sub_21CADB8A4(&qword_27CDEA948, type metadata accessor for OptionsKey, &unk_21CB9F8C8);
  v23 = sub_21CB85464();

  [v4 setItems:v22 options:v23];
}

double sub_21CADADBC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_21CB10C50(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v12 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21C8D5D6C();
      v9 = v12;
    }

    sub_21C731A9C((*(v9 + 56) + 32 * v7), a2);
    sub_21CADB194(v7, v9, v10);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void sub_21CADAE5C(int64_t a1, uint64_t a2)
{
  v30 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v4 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v29 = (sub_21CB85F34() + 1) & ~v8;
    v11 = *(v4 + 72);
    do
    {
      v12 = v11;
      v13 = v11 * v9;
      sub_21CADB840(*(a2 + 48) + v11 * v9, v6);
      sub_21CB86484();
      type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
      sub_21CADB8A4(&qword_27CDEFF30, type metadata accessor for PMOfflineMigrationPayload.OTPParameters, &unk_21CBC3F30);
      sub_21CB85494();
      v14 = *&v6[*(v30 + 20)];
      sub_21CB864A4();
      if (v14)
      {
        v15 = v14;
        sub_21CB85DE4();
      }

      v16 = sub_21CB864D4();
      sub_21CADB8EC(v6);
      v17 = v16 & v10;
      if (a1 >= v29)
      {
        v11 = v12;
        if (v17 < v29)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v11 = v12;
        if (v17 >= v29)
        {
          goto LABEL_12;
        }
      }

      if (a1 >= v17)
      {
LABEL_12:
        if (v11 * a1 < v13 || *(a2 + 48) + v11 * a1 >= (*(a2 + 48) + v13 + v11))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v11 * a1 != v13)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v18 = *(a2 + 56);
        v19 = *(*(type metadata accessor for PMAccount(0) - 8) + 72);
        v20 = v19 * a1;
        v21 = v18 + v19 * a1;
        v22 = v19 * v9;
        v23 = v18 + v19 * v9 + v19;
        if (v20 < v22 || v21 >= v23)
        {
          swift_arrayInitWithTakeFrontToBack();
          a1 = v9;
          v11 = v12;
        }

        else
        {
          a1 = v9;
          v11 = v12;
          if (v20 != v22)
          {
            swift_arrayInitWithTakeBackToFront();
            a1 = v9;
          }
        }
      }

LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

void sub_21CADB194(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_21CB85F34() + 1) & ~v6;
    do
    {
      v11 = *(*(a2 + 48) + 8 * v7);
      sub_21CB855C4();
      sub_21CB86484();
      v12 = v11;
      sub_21CB854C4();
      v13 = sub_21CB864D4();

      v14 = v13 & v8;
      if (v4 >= v9)
      {
        if (v14 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 8 * v4);
        v17 = (v15 + 8 * v7);
        if (v4 != v7 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 32 * v4);
        v20 = (v18 + 32 * v7);
        if (v4 != v7 || v19 >= v20 + 2)
        {
          v10 = v20[1];
          *v19 = *v20;
          v19[1] = v10;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_21CADB35C(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_21CB85F34() + 1) & ~v6;
    do
    {
      v11 = *(*(a2 + 48) + v7);
      sub_21CB86484();
      MEMORY[0x21CF15F90](v11);
      result = sub_21CB864D4();
      v12 = result & v8;
      if (v4 >= v9)
      {
        if (v12 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + v4);
        v15 = (v13 + v7);
        if (v4 != v7 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 24 * v4;
        v18 = (v16 + 24 * v7);
        if (v4 != v7 || v17 >= v18 + 24)
        {
          v10 = *v18;
          *(v17 + 16) = *(v18 + 2);
          *v17 = v10;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21CADB4FC(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_21CB85F34() + 1) & ~v6;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v7);
      sub_21CB86484();
      MEMORY[0x21CF15F90](v10);
      result = sub_21CB864D4();
      v11 = result & v8;
      if (v4 >= v9)
      {
        if (v11 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v4);
        v14 = (v12 + 8 * v7);
        if (v4 != v7 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v4);
        v17 = (v15 + 8 * v7);
        if (v4 != v7 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21CADB690(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_21CB85F34() + 1) & ~v6;
    do
    {
      sub_21CB86484();

      sub_21CB854C4();
      v10 = sub_21CB864D4();

      v11 = v10 & v8;
      if (v4 >= v9)
      {
        if (v11 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v4);
        v14 = (v12 + 16 * v7);
        if (v4 != v7 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 16 * v4);
        v17 = (v15 + 16 * v7);
        if (v4 != v7 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21CADB840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CADB8A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CADB8EC(uint64_t a1)
{
  v2 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for PMRecentlyDeletedAccountRow(uint64_t a1)
{
  result = qword_27CDF7CF8;
  if (!qword_27CDF7CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CADB9BC(uint64_t a1)
{
  type metadata accessor for PMAccount(319);
  if (v1 <= 0x3F)
  {
    sub_21C71ED98();
    if (v2 <= 0x3F)
    {
      sub_21C7226D8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21CADBA8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v47 = a2;
  v2 = type metadata accessor for PMRecentlyDeletedAccountRow(0);
  v3 = (v2 - 8);
  v46 = *(v2 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v2);
  v44 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF26A8, &unk_21CBB4690);
  v9 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7D30, &qword_21CBC6DA0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v43 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  sub_21CB81014();
  v18 = sub_21CB81004();
  v20 = v19;
  (*(v6 + 8))(v8, v5);
  v51 = v18;
  v52 = v20;
  v21 = v42;
  v22 = v42 + v3[9];
  v23 = *v22;
  v24 = *(v22 + 8);
  LOBYTE(v22) = *(v22 + 16);
  v48 = v23;
  v49 = v24;
  v50 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
  sub_21CB84F54();
  sub_21C71F3FC();
  sub_21CB84EC4();
  sub_21C6EADEC(&qword_27CDF26A0, &qword_27CDF26A8, &unk_21CBB4690, MEMORY[0x277CDF068]);
  v25 = v41;
  sub_21CB841E4();
  (*(v9 + 8))(v11, v25);
  LOBYTE(v5) = *(v21 + v3[8]);
  KeyPath = swift_getKeyPath(a8_43);
  v27 = swift_allocObject();
  *(v27 + 16) = v5;
  v28 = &v17[*(v13 + 44)];
  *v28 = KeyPath;
  v28[1] = sub_21C735744;
  v28[2] = v27;
  v29 = v21;
  v30 = (v21 + v3[10]);
  v32 = *v30;
  v31 = v30[1];
  v33 = v44;
  sub_21CADC7EC(v29, v44, type metadata accessor for PMRecentlyDeletedAccountRow);
  v34 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v35 = swift_allocObject();
  sub_21CADC8AC(v33, v35 + v34, type metadata accessor for PMRecentlyDeletedAccountRow);
  v36 = v43;
  sub_21C786E48(v17, v43);
  v37 = v47;
  sub_21C786E48(v36, v47);
  v38 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7D38, &unk_21CBC6DD8) + 48));
  *v38 = sub_21CADC77C;
  v38[1] = v35;
  v38[2] = v32;
  v38[3] = v31;
  swift_retain_n();

  sub_21C6EA794(v17, &qword_27CDF7D30, &qword_21CBC6DA0);

  return sub_21C6EA794(v36, &qword_27CDF7D30, &qword_21CBC6DA0);
}

uint64_t sub_21CADBF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for PMAccountRow(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC70, &qword_21CBAD0C0);
  MEMORY[0x28223BE20](v40);
  v7 = &v38 - v6;
  sub_21CADC7EC(a1, v5, type metadata accessor for PMAccount);
  v8 = type metadata accessor for PMRecentlyDeletedAccountRow(0);
  v9 = (a1 + *(v8 + 20));
  v10 = v9[1];
  v39 = *v9;

  v11 = sub_21CB837E4();
  v12 = &v5[v3[7]];
  v13 = MEMORY[0x277CE04E8];
  *(v12 + 3) = MEMORY[0x277CE04F8];
  *(v12 + 4) = v13;
  *v12 = v11;
  v14 = v3[9];
  KeyPath = swift_getKeyPath(byte_21CBC6DE8);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v16 = &v5[v14];
  sub_21CB86544();
  sub_21C7073E8(KeyPath, v42);

  type metadata accessor for PMGroupsStore(0);
  sub_21CADC854();
  v17 = sub_21CB82674();
  v19 = v18;

  *v16 = v17;
  v16[1] = v19;
  v20 = &v5[v3[10]];
  *v20 = swift_getKeyPath(byte_21CBC6E08);
  v20[8] = 0;
  v21 = &v5[v3[11]];
  v21[8] = 0;
  v22 = v3[12];
  *&v5[v22] = swift_getKeyPath(byte_21CBC6E60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v23 = v3[13];
  *&v5[v23] = swift_getKeyPath(aP_108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC90, &qword_21CBA5D20);
  swift_storeEnumTagMultiPayload();
  v24 = v3[14];
  *&v5[v24] = swift_getKeyPath(asc_21CBC6ED0);
  v25 = &v5[v3[5]];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = &v5[v3[6]];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = &v5[v3[8]];
  *v27 = v39;
  *(v27 + 1) = v10;
  [objc_opt_self() isPasswordsAppInstalled];
  sub_21CB85214();
  sub_21CB82AC4();
  sub_21CADC8AC(v5, v7, type metadata accessor for PMAccountRow);
  v28 = &v7[*(v40 + 36)];
  v29 = v47;
  *(v28 + 4) = v46;
  *(v28 + 5) = v29;
  *(v28 + 6) = v48;
  v30 = v43;
  *v28 = v42;
  *(v28 + 1) = v30;
  v31 = v45;
  *(v28 + 2) = v44;
  *(v28 + 3) = v31;
  v32 = *(a1 + *(v8 + 24));
  v33 = swift_getKeyPath(a8_43);
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  v35 = v41;
  sub_21C7EC4B8(v7, v41);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC18, &unk_21CBC6EF0);
  v37 = (v35 + *(result + 36));
  *v37 = v33;
  v37[1] = sub_21C87E800;
  v37[2] = v34;
  return result;
}