uint64_t initializeWithCopy for ToolbarStorage.Item(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;
  v7 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v7;
  v8 = *(a2 + 88);

  if (v8)
  {
    v9 = *(a2 + 96);
    *(a1 + 88) = v8;
    *(a1 + 96) = v9;
    (**(v8 - 8))(a1 + 64, a2 + 64, v8);
    *(a1 + 104) = *(a2 + 104);
  }

  else
  {
    v10 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v10;
    *(a1 + 96) = *(a2 + 96);
  }

  if (*(a2 + 152) == 1)
  {
    v11 = *(a2 + 136);
    *(a1 + 136) = v11;
    (**(v11 - 8))(a1 + 112, a2 + 112);
    *(a1 + 152) = 1;
  }

  else
  {
    v12 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v12;
    *(a1 + 137) = *(a2 + 137);
  }

  *(a1 + 153) = *(a2 + 153);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 176) = *(a2 + 176);
  v13 = *(a2 + 208);
  *(a1 + 208) = v13;
  v14 = v13;
  v15 = **(v13 - 8);

  v15(a1 + 184, a2 + 184, v14);
  v16 = *(a2 + 232);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = v16;
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = *(a2 + 256);
  v17 = *(a2 + 272);
  v18 = *(a2 + 280);
  v136 = a3;
  v19 = a3[17];
  v137 = a2;
  v138 = (a1 + v19);
  v20 = a2 + v19;
  *(a1 + 272) = v17;
  *(a1 + 280) = v18;
  v135 = a1;
  v21 = type metadata accessor for PlatformItemList.Item(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);

  v24 = v17;
  v25 = v18;
  if (v23(v20, 1, v21))
  {
    _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
    memcpy(v138, v20, *(*(v26 - 8) + 64));
    v27 = v135;
    v28 = a3;
    goto LABEL_64;
  }

  v133 = v22;
  v134 = v21;
  v29 = *v20;
  v30 = *(v20 + 8);
  v31 = v138;
  *v138 = *v20;
  v138[1] = v30;
  v32 = *(v20 + 24);
  v138[2] = *(v20 + 16);
  v138[3] = v32;
  *(v138 + 32) = *(v20 + 32);
  v33 = *(v20 + 48);
  v138[5] = *(v20 + 40);
  v138[6] = v33;
  *(v138 + 56) = *(v20 + 56);
  v34 = *(v20 + 192);
  v35 = v29;
  v36 = v30;

  if (v34 >> 1 != 4294967294)
  {
    v46 = *(v20 + 72);
    if (v46 == 255)
    {
      v138[8] = *(v20 + 64);
      *(v138 + 72) = *(v20 + 72);
    }

    else
    {
      v47 = *(v20 + 64);
      outlined copy of GraphicsImage.Contents(v47, *(v20 + 72));
      v138[8] = v47;
      *(v138 + 72) = v46;
      v34 = *(v20 + 192);
    }

    v138[10] = *(v20 + 80);
    *(v138 + 11) = *(v20 + 88);
    *(v138 + 104) = *(v20 + 104);
    *(v138 + 108) = *(v20 + 108);
    *(v138 + 121) = *(v20 + 121);
    *(v138 + 17) = *(v20 + 136);
    *(v138 + 19) = *(v20 + 152);
    *(v138 + 84) = *(v20 + 168);
    *(v138 + 170) = *(v20 + 170);
    *(v138 + 171) = *(v20 + 171);
    if (v34 >> 1 == 0xFFFFFFFF)
    {
      v48 = *(v20 + 192);
      *(v138 + 11) = *(v20 + 176);
      *(v138 + 12) = v48;
    }

    else
    {
      v49 = *(v20 + 176);
      v50 = *(v20 + 184);
      v51 = *(v20 + 200);
      outlined copy of AccessibilityImageLabel(v49, v50, v34, v51);
      v138[22] = v49;
      v138[23] = v50;
      v138[24] = v34;
      v138[25] = v51;
      v31 = v138;
    }

    v52 = *(v20 + 216);
    v31[26] = *(v20 + 208);
    v31[27] = v52;
    *(v31 + 112) = *(v20 + 224);
    *(v31 + 57) = *(v20 + 228);
    *(v31 + 232) = *(v20 + 232);
    v53 = *(v20 + 240);
    v31[30] = v53;
    *(v31 + 124) = *(v20 + 248);
    *(v31 + 250) = *(v20 + 250);
    swift_unknownObjectRetain();

    v54 = v53;
    v42 = *(v20 + 264);
    if (v42)
    {
      goto LABEL_11;
    }

LABEL_21:
    v55 = *(v20 + 272);
    *(v31 + 16) = *(v20 + 256);
    *(v31 + 17) = v55;
    *(v31 + 18) = *(v20 + 288);
    goto LABEL_22;
  }

  v37 = *(v20 + 208);
  *(v138 + 12) = *(v20 + 192);
  *(v138 + 13) = v37;
  *(v138 + 14) = *(v20 + 224);
  *(v138 + 235) = *(v20 + 235);
  v38 = *(v20 + 144);
  *(v138 + 8) = *(v20 + 128);
  *(v138 + 9) = v38;
  v39 = *(v20 + 176);
  *(v138 + 10) = *(v20 + 160);
  *(v138 + 11) = v39;
  v40 = *(v20 + 80);
  *(v138 + 4) = *(v20 + 64);
  *(v138 + 5) = v40;
  v41 = *(v20 + 112);
  *(v138 + 6) = *(v20 + 96);
  *(v138 + 7) = v41;
  v42 = *(v20 + 264);
  if (!v42)
  {
    goto LABEL_21;
  }

LABEL_11:
  v31[32] = *(v20 + 256);
  v31[33] = v42;
  v43 = *(v20 + 272);

  if (v43 >= 2)
  {
    v44 = v43;
  }

  v31[34] = v43;
  *(v31 + 70) = *(v20 + 280);
  *(v31 + 284) = *(v20 + 284);
  *(v31 + 285) = *(v20 + 285);
  v45 = *(v20 + 296);
  v31[36] = *(v20 + 288);
  v31[37] = v45;

LABEL_22:
  v56 = *(v20 + 336);
  if (v56 >> 2 == 0xFFFFFFFF)
  {
    v57 = *(v20 + 384);
    *(v31 + 23) = *(v20 + 368);
    *(v31 + 24) = v57;
    v31[50] = *(v20 + 400);
    v58 = *(v20 + 320);
    *(v31 + 19) = *(v20 + 304);
    *(v31 + 20) = v58;
    v59 = *(v20 + 352);
    *(v31 + 21) = *(v20 + 336);
    *(v31 + 22) = v59;
  }

  else
  {
    v60 = *(v20 + 304);
    v61 = *(v20 + 312);
    v63 = *(v20 + 320);
    v62 = *(v20 + 328);
    v65 = *(v20 + 344);
    v64 = *(v20 + 352);
    v67 = *(v20 + 360);
    v66 = *(v20 + 368);
    v126 = *(v20 + 376);
    v127 = *(v20 + 384);
    v128 = *(v20 + 392);
    __dsta = *(v20 + 400);
    outlined copy of PlatformItemList.Item.SystemItem(v60, v61, v63, v62, v56, v65, v64, v67, v66, v126, v127, v128, __dsta);
    v138[38] = v60;
    v138[39] = v61;
    v138[40] = v63;
    v31 = v138;
    v138[41] = v62;
    v138[42] = v56;
    v138[43] = v65;
    v138[44] = v64;
    v138[45] = v67;
    v138[46] = v66;
    v138[47] = v126;
    v138[48] = v127;
    v138[49] = v128;
    v138[50] = __dsta;
  }

  v68 = *(v20 + 416);
  if (v68 == 1)
  {
    v69 = *(v20 + 456);
    *(v31 + 55) = *(v20 + 440);
    *(v31 + 57) = v69;
    *(v31 + 472) = *(v20 + 472);
    v70 = *(v20 + 424);
    *(v31 + 51) = *(v20 + 408);
    *(v31 + 53) = v70;
    goto LABEL_35;
  }

  *(v31 + 102) = *(v20 + 408);
  *(v31 + 412) = *(v20 + 412);
  if (v68)
  {
    v71 = *(v20 + 424);
    v31[52] = v68;
    v31[53] = v71;

    v72 = *(v20 + 432);
    if (v72)
    {
      goto LABEL_29;
    }

LABEL_32:
    *(v31 + 27) = *(v20 + 432);
    v74 = *(v20 + 448);
    if (v74)
    {
      goto LABEL_30;
    }

LABEL_33:
    *(v31 + 28) = *(v20 + 448);
    goto LABEL_34;
  }

  *(v31 + 26) = *(v20 + 416);
  v72 = *(v20 + 432);
  if (!v72)
  {
    goto LABEL_32;
  }

LABEL_29:
  v73 = *(v20 + 440);
  v31[54] = v72;
  v31[55] = v73;

  v74 = *(v20 + 448);
  if (!v74)
  {
    goto LABEL_33;
  }

LABEL_30:
  v75 = *(v20 + 456);
  v31[56] = v74;
  v31[57] = v75;

LABEL_34:
  v31[58] = *(v20 + 464);
  *(v31 + 472) = *(v20 + 472);
LABEL_35:
  v76 = *(v20 + 488);
  v31[60] = *(v20 + 480);
  v31[61] = v76;
  v31[62] = *(v20 + 496);
  *(v31 + 504) = *(v20 + 504);
  v77 = *(v20 + 512);

  if (v77)
  {
    v78 = *(v20 + 520);
    v31[64] = v77;
    v31[65] = v78;
  }

  else
  {
    *(v31 + 32) = *(v20 + 512);
  }

  *(v31 + 528) = *(v20 + 528);
  if (!*(v20 + 816))
  {
    memcpy(v31 + 67, (v20 + 536), 0x130uLL);
    goto LABEL_50;
  }

  v31[67] = *(v20 + 536);
  v31[68] = *(v20 + 544);
  *(v31 + 552) = *(v20 + 552);
  v31[70] = *(v20 + 560);
  *(v31 + 568) = *(v20 + 568);
  *(v31 + 36) = *(v20 + 576);
  *(v31 + 592) = *(v20 + 592);
  v79 = v31 + 75;
  v80 = (v20 + 600);
  v81 = *(v20 + 624);

  if (!v81)
  {
    v83 = *(v20 + 616);
    *v79 = *v80;
    *(v31 + 77) = v83;
    v31[79] = *(v20 + 632);
LABEL_45:
    v31[80] = *(v20 + 640);

    goto LABEL_46;
  }

  if (v81 != 1)
  {
    v31[78] = v81;
    v31[79] = *(v20 + 632);
    (**(v81 - 8))((v31 + 75), v20 + 600, v81);
    goto LABEL_45;
  }

  v82 = *(v20 + 616);
  *v79 = *v80;
  *(v31 + 77) = v82;
  *(v31 + 79) = *(v20 + 632);
LABEL_46:
  v31[81] = *(v20 + 648);
  *(v31 + 656) = *(v20 + 656);
  v84 = v31 + 83;
  v85 = (v20 + 664);
  v86 = *(v20 + 776);
  if (v86 == 1)
  {
    v87 = *(v20 + 776);
    *(v31 + 95) = *(v20 + 760);
    *(v31 + 97) = v87;
    *(v31 + 99) = *(v20 + 792);
    *(v31 + 808) = *(v20 + 808);
    v88 = *(v20 + 712);
    *(v31 + 87) = *(v20 + 696);
    *(v31 + 89) = v88;
    v89 = *(v20 + 744);
    *(v31 + 91) = *(v20 + 728);
    *(v31 + 93) = v89;
    v90 = *(v20 + 680);
    *v84 = *v85;
    *(v31 + 85) = v90;
  }

  else
  {
    *v84 = *v85;
    *(v31 + 672) = *(v20 + 672);
    v31[85] = *(v20 + 680);
    *(v31 + 688) = *(v20 + 688);
    *(v31 + 689) = *(v20 + 689);
    *(v31 + 691) = *(v20 + 691);
    *(v31 + 692) = *(v20 + 692);
    v31[87] = *(v20 + 696);
    v91 = *(v20 + 720);
    *(v31 + 44) = *(v20 + 704);
    *(v31 + 45) = v91;
    v31[92] = *(v20 + 736);
    *(v31 + 372) = *(v20 + 744);
    *(v31 + 47) = *(v20 + 752);
    *(v31 + 768) = *(v20 + 768);
    v31[97] = v86;
    *(v31 + 49) = *(v20 + 784);
    v31[100] = *(v20 + 800);
    *(v31 + 808) = *(v20 + 808);
  }

  v31[102] = *(v20 + 816);
  v31[103] = *(v20 + 824);
  v31[104] = *(v20 + 832);

LABEL_50:
  v92 = v31 + 105;
  v93 = (v20 + 840);
  v94 = *(v20 + 864);
  if (!v94)
  {
    v96 = *(v20 + 856);
    *v92 = *v93;
    *(v31 + 107) = v96;
    v31[109] = *(v20 + 872);
    v97 = *(v20 + 880);
    if (!v97)
    {
LABEL_56:
      *(v31 + 55) = *(v20 + 880);
      goto LABEL_57;
    }

LABEL_54:
    v98 = *(v20 + 888);
    v31[110] = v97;
    v31[111] = v98;

    goto LABEL_57;
  }

  if (v94 != 1)
  {
    v31[108] = v94;
    v31[109] = *(v20 + 872);
    (**(v94 - 8))(v92, v93);
    v97 = *(v20 + 880);
    if (!v97)
    {
      goto LABEL_56;
    }

    goto LABEL_54;
  }

  v95 = *(v20 + 856);
  *v92 = *v93;
  *(v31 + 107) = v95;
  *(v31 + 109) = *(v20 + 872);
  v31[111] = *(v20 + 888);
LABEL_57:
  v99 = *(v20 + 896);
  v31[112] = v99;
  v31[113] = *(v20 + 904);
  v31[114] = *(v20 + 912);
  v31[115] = *(v20 + 920);
  v31[116] = *(v20 + 928);
  v31[117] = *(v20 + 936);
  v31[118] = *(v20 + 944);
  *(v31 + 476) = *(v20 + 952);
  *(v31 + 954) = *(v20 + 954);
  v100 = v134[28];
  __dst = v31 + v100;
  v101 = (v20 + v100);
  v102 = type metadata accessor for CommandOperation(0);
  v103 = *(v102 - 8);
  v129 = *(v103 + 48);
  v104 = v99;

  if (v129(v101, 1, v102))
  {
    _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    memcpy(__dst, v101, *(*(v105 - 8) + 64));
    v27 = v135;
    v28 = v136;
    v106 = v133;
    v107 = v134;
    v108 = v138;
  }

  else
  {
    v130 = v103;
    *__dst = *v101;
    v109 = v102;
    v110 = *(v102 + 20);
    v111 = &__dst[v110];
    v112 = &v101[v110];
    v113 = *&v101[v110];
    v114 = *&v101[v110 + 8];
    v115 = v101[v110 + 16];
    outlined copy of Text.Storage(*v112, *(v112 + 1), v112[16]);
    *v111 = v113;
    *(v111 + 1) = v114;
    v111[16] = v115;
    *(v111 + 3) = *(v112 + 3);
    v116 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v117 = type metadata accessor for UUID();
    v118 = *(*(v117 - 8) + 16);

    v118(&v111[v116], &v112[v116], v117);
    v119 = *(v109 + 24);
    v120 = &__dst[v119];
    v121 = &v101[v119];
    if (*v121)
    {
      v122 = v121[1];
      *v120 = *v121;
      v120[1] = v122;
    }

    else
    {
      *v120 = *v121;
    }

    v28 = v136;
    v106 = v133;
    v107 = v134;
    v108 = v138;
    (*(v130 + 56))(__dst, 0, 1, v109);
    v27 = v135;
  }

  *(v108 + v107[29]) = *(v20 + v107[29]);
  *(v108 + v107[30]) = *(v20 + v107[30]);
  *(v108 + v107[31]) = *(v20 + v107[31]);
  *(v108 + v107[32]) = *(v20 + v107[32]);
  *(v108 + v107[33]) = *(v20 + v107[33]);
  *(v108 + v107[34]) = *(v20 + v107[34]);
  v123 = *(v106 + 56);

  v123(v108, 0, 1, v107);
LABEL_64:
  swift_weakCopyInit();
  v124 = v28[20];
  *(v27 + v28[19]) = *(v137 + v28[19]);
  *(v27 + v124) = *(v137 + v124);
  *(v27 + v28[21]) = *(v137 + v28[21]);
  return v27;
}

char *initializeWithTake for ToolbarStorage.Entry(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v21 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v21;
    v22 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v22;
    v23 = *(a2 + 5);
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 5) = v23;
    *(a1 + 6) = *(a2 + 6);
    *(a1 + 105) = *(a2 + 105);
    a1[121] = a2[121];
    *(a1 + 16) = *(a2 + 16);
    a1[136] = a2[136];
    *(a1 + 137) = *(a2 + 137);
    *(a1 + 9) = *(a2 + 9);
    v24 = *(type metadata accessor for ToolbarStorage.GroupItem(0) + 60);
    v25 = &a1[v24];
    v26 = &a2[v24];
    v27 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v26, 1, v27))
    {
      _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
      memcpy(v25, v26, *(*(v29 - 8) + 64));
    }

    else
    {
      v48 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v85 = a3;
        v49 = *(v26 + 1);
        *v25 = *v26;
        *(v25 + 1) = v49;
        v25[32] = v26[32];
        *(v25 + 40) = *(v26 + 40);
        v25[56] = v26[56];
        v50 = *(v26 + 13);
        *(v25 + 12) = *(v26 + 12);
        *(v25 + 13) = v50;
        *(v25 + 14) = *(v26 + 14);
        *(v25 + 235) = *(v26 + 235);
        v51 = *(v26 + 9);
        *(v25 + 8) = *(v26 + 8);
        *(v25 + 9) = v51;
        v52 = *(v26 + 11);
        *(v25 + 10) = *(v26 + 10);
        *(v25 + 11) = v52;
        v53 = *(v26 + 5);
        *(v25 + 4) = *(v26 + 4);
        *(v25 + 5) = v53;
        v54 = *(v26 + 7);
        *(v25 + 6) = *(v26 + 6);
        *(v25 + 7) = v54;
        v55 = *(v26 + 17);
        *(v25 + 16) = *(v26 + 16);
        *(v25 + 17) = v55;
        v56 = *(v26 + 23);
        *(v25 + 22) = *(v26 + 22);
        *(v25 + 23) = v56;
        *(v25 + 24) = *(v26 + 24);
        *(v25 + 50) = *(v26 + 50);
        v57 = *(v26 + 19);
        *(v25 + 18) = *(v26 + 18);
        *(v25 + 19) = v57;
        v58 = *(v26 + 21);
        *(v25 + 20) = *(v26 + 20);
        *(v25 + 21) = v58;
        v59 = *(v26 + 456);
        *(v25 + 440) = *(v26 + 440);
        *(v25 + 456) = v59;
        v25[472] = v26[472];
        v60 = *(v26 + 424);
        *(v25 + 408) = *(v26 + 408);
        *(v25 + 424) = v60;
        *(v25 + 30) = *(v26 + 30);
        *(v25 + 489) = *(v26 + 489);
        *(v25 + 32) = *(v26 + 32);
        v25[528] = v26[528];
        memcpy(v25 + 536, v26 + 536, 0x130uLL);
        v61 = *(v26 + 856);
        *(v25 + 840) = *(v26 + 840);
        *(v25 + 856) = v61;
        *(v25 + 872) = *(v26 + 872);
        *(v25 + 111) = *(v26 + 111);
        *(v25 + 112) = *(v26 + 112);
        *(v25 + 904) = *(v26 + 904);
        *(v25 + 920) = *(v26 + 920);
        *(v25 + 117) = *(v26 + 117);
        *(v25 + 118) = *(v26 + 118);
        v25[952] = v26[952];
        *(v25 + 953) = *(v26 + 953);
        v62 = type metadata accessor for PlatformItemList.Item(0);
        v63 = v62[28];
        __dsta = &v25[v63];
        v64 = &v26[v63];
        v65 = type metadata accessor for CommandOperation(0);
        v78 = *(v65 - 8);
        if ((*(v78 + 48))(v64, 1, v65))
        {
          _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
          memcpy(__dsta, v64, *(*(v66 - 8) + 64));
        }

        else
        {
          *__dsta = *v64;
          v70 = *(v65 + 20);
          v75 = &__dsta[v70];
          v77 = &v64[v70];
          v71 = *&v64[v70 + 16];
          *v75 = *&v64[v70];
          *(v75 + 1) = v71;
          v74 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
          v72 = type metadata accessor for UUID();
          (*(*(v72 - 8) + 32))(&v75[v74], &v77[v74], v72);
          *&__dsta[*(v65 + 24)] = *&v64[*(v65 + 24)];
          (*(v78 + 56))();
        }

        v25[v62[29]] = v26[v62[29]];
        v25[v62[30]] = v26[v62[30]];
        v25[v62[31]] = v26[v62[31]];
        v25[v62[32]] = v26[v62[32]];
        v25[v62[33]] = v26[v62[33]];
        *&v25[v62[34]] = *&v26[v62[34]];
        swift_storeEnumTagMultiPayload();
        a3 = v85;
      }

      else
      {
        memcpy(v25, v26, *(*(v48 - 8) + 64));
      }

      *&v25[*(v27 + 20)] = *&v26[*(v27 + 20)];
      (*(v28 + 56))(v25, 0, 1, v27);
    }

    goto LABEL_20;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v8;
    v9 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v9;
    v10 = *(a2 + 5);
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 5) = v10;
    v11 = *(a2 + 6);
    v12 = *(a2 + 7);
    *(a1 + 137) = *(a2 + 137);
    v13 = *(a2 + 8);
    *(a1 + 7) = v12;
    *(a1 + 8) = v13;
    *(a1 + 6) = v11;
    *(a1 + 153) = *(a2 + 153);
    *(a1 + 20) = *(a2 + 20);
    a1[168] = a2[168];
    *(a1 + 169) = *(a2 + 169);
    *(a1 + 22) = *(a2 + 22);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 35) = *(a2 + 35);
    v14 = type metadata accessor for ToolbarStorage.Item(0);
    v15 = v14[17];
    v16 = &a1[v15];
    v17 = &a2[v15];
    v18 = type metadata accessor for PlatformItemList.Item(0);
    v19 = *(v18 - 1);
    if ((*(v19 + 48))(v17, 1, v18))
    {
      _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
      memcpy(v16, v17, *(*(v20 - 8) + 64));
    }

    else
    {
      v81 = v19;
      v84 = a3;
      v30 = *(v17 + 1);
      *v16 = *v17;
      *(v16 + 1) = v30;
      v16[32] = v17[32];
      *(v16 + 40) = *(v17 + 40);
      v16[56] = v17[56];
      v31 = *(v17 + 13);
      *(v16 + 12) = *(v17 + 12);
      *(v16 + 13) = v31;
      *(v16 + 14) = *(v17 + 14);
      *(v16 + 235) = *(v17 + 235);
      v32 = *(v17 + 9);
      *(v16 + 8) = *(v17 + 8);
      *(v16 + 9) = v32;
      v33 = *(v17 + 11);
      *(v16 + 10) = *(v17 + 10);
      *(v16 + 11) = v33;
      v34 = *(v17 + 5);
      *(v16 + 4) = *(v17 + 4);
      *(v16 + 5) = v34;
      v35 = *(v17 + 7);
      *(v16 + 6) = *(v17 + 6);
      *(v16 + 7) = v35;
      v36 = *(v17 + 17);
      *(v16 + 16) = *(v17 + 16);
      *(v16 + 17) = v36;
      v37 = *(v17 + 23);
      *(v16 + 22) = *(v17 + 22);
      *(v16 + 23) = v37;
      *(v16 + 24) = *(v17 + 24);
      *(v16 + 50) = *(v17 + 50);
      v38 = *(v17 + 19);
      *(v16 + 18) = *(v17 + 18);
      *(v16 + 19) = v38;
      v39 = *(v17 + 21);
      *(v16 + 20) = *(v17 + 20);
      *(v16 + 21) = v39;
      v40 = *(v17 + 456);
      *(v16 + 440) = *(v17 + 440);
      *(v16 + 456) = v40;
      v16[472] = v17[472];
      v41 = *(v17 + 424);
      *(v16 + 408) = *(v17 + 408);
      *(v16 + 424) = v41;
      *(v16 + 30) = *(v17 + 30);
      *(v16 + 489) = *(v17 + 489);
      *(v16 + 32) = *(v17 + 32);
      v16[528] = v17[528];
      memcpy(v16 + 536, v17 + 536, 0x130uLL);
      v42 = *(v17 + 856);
      *(v16 + 840) = *(v17 + 840);
      *(v16 + 856) = v42;
      *(v16 + 872) = *(v17 + 872);
      *(v16 + 111) = *(v17 + 111);
      *(v16 + 112) = *(v17 + 112);
      *(v16 + 904) = *(v17 + 904);
      *(v16 + 920) = *(v17 + 920);
      *(v16 + 117) = *(v17 + 117);
      *(v16 + 118) = *(v17 + 118);
      v16[952] = v17[952];
      *(v16 + 953) = *(v17 + 953);
      v43 = v18[28];
      __dst = &v16[v43];
      v44 = &v17[v43];
      v45 = type metadata accessor for CommandOperation(0);
      v46 = *(v45 - 8);
      if ((*(v46 + 48))(v44, 1, v45))
      {
        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
        memcpy(__dst, v44, *(*(v47 - 8) + 64));
      }

      else
      {
        *__dst = *v44;
        v67 = *(v45 + 20);
        v79 = &__dst[v67];
        __src = &v44[v67];
        v68 = *&v44[v67 + 16];
        *v79 = *&v44[v67];
        *(v79 + 1) = v68;
        v76 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
        v69 = type metadata accessor for UUID();
        (*(*(v69 - 8) + 32))(&v79[v76], &__src[v76], v69);
        *&__dst[*(v45 + 24)] = *&v44[*(v45 + 24)];
        (*(v46 + 56))();
      }

      a3 = v84;
      v16[v18[29]] = v17[v18[29]];
      v16[v18[30]] = v17[v18[30]];
      v16[v18[31]] = v17[v18[31]];
      v16[v18[32]] = v17[v18[32]];
      v16[v18[33]] = v17[v18[33]];
      *&v16[v18[34]] = *&v17[v18[34]];
      (*(v81 + 56))(v16, 0, 1, v18);
    }

    swift_weakTakeInit();
    a1[v14[19]] = a2[v14[19]];
    a1[v14[20]] = a2[v14[20]];
    a1[v14[21]] = a2[v14[21]];
LABEL_20:
    swift_storeEnumTagMultiPayload();
    goto LABEL_21;
  }

  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_21:
  a1[*(a3 + 20)] = a2[*(a3 + 20)];
  return a1;
}

uint64_t specialized ToolbarStorage.Entry.bindID<A>(_:)(int a1)
{
  v2 = v1;
  v49 = a1;
  v3 = type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v47 = v38 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v38 - v10;
  v12 = type metadata accessor for ToolbarStorage.GroupItem(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v48);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v38 - v18;
  v20 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v2;
  outlined init with copy of ToolbarStorage.Item(v2, v22, type metadata accessor for ToolbarStorage.Entry.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    if (!EnumCaseMultiPayload)
    {
      outlined init with take of ToolbarStorage.GroupItem(v22, v19, type metadata accessor for ToolbarStorage.Item);
      v24 = v49;
      v52 = v49;
      lazy protocol witness table accessor for type ViewIdentity and conformance ViewIdentity();
      _ViewList_ID.bind<A>(explicitID:owner:isUnary:reuseID:)();
      v52 = v24;
      _ViewList_ID.bind<A>(explicitID:owner:isUnary:reuseID:)();
      v25 = v39;
      outlined destroy of ToolbarViewListVisitor(v39, type metadata accessor for ToolbarStorage.Entry.Kind);
      outlined init with take of ToolbarStorage.GroupItem(v19, v25, type metadata accessor for ToolbarStorage.Item);
      return swift_storeEnumTagMultiPayload();
    }

    v35 = type metadata accessor for ToolbarStorage.Entry.Kind;
    v36 = v22;
    return outlined destroy of ToolbarViewListVisitor(v36, v35);
  }

  v46 = v16;
  v38[1] = v20;
  result = outlined init with take of ToolbarStorage.GroupItem(v22, v14, type metadata accessor for ToolbarStorage.GroupItem);
  v27 = *(v14 + 19);
  v28 = v27[2];
  v29 = v47;
  if (!v28)
  {
LABEL_15:
    v37 = v39;
    outlined destroy of ToolbarViewListVisitor(v39, type metadata accessor for ToolbarStorage.Entry.Kind);
    outlined init with copy of ToolbarStorage.Item(v14, v37, type metadata accessor for ToolbarStorage.GroupItem);
    swift_storeEnumTagMultiPayload();
    v35 = type metadata accessor for ToolbarStorage.GroupItem;
    v36 = v14;
    return outlined destroy of ToolbarViewListVisitor(v36, v35);
  }

  v30 = v11;
  v31 = 0;
  v41 = *MEMORY[0x1E698D3F8];
  v44 = v14;
  v45 = v4;
  v42 = v28;
  v43 = v11;
  v40 = v3;
  while (v31 < v27[2])
  {
    v32 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v51 = *(v4 + 72) * v31;
    outlined init with copy of ToolbarStorage.Item(v27 + v32 + v51, v30, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
    outlined init with take of ToolbarStorage.GroupItem(v30, v29, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      result = outlined destroy of ToolbarViewListVisitor(v29, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
    }

    else
    {
      v50 = v32;
      v33 = v46;
      outlined init with take of ToolbarStorage.GroupItem(v29, v46, type metadata accessor for ToolbarStorage.Item);
      v34 = v49;
      v52 = v49;
      lazy protocol witness table accessor for type ViewIdentity and conformance ViewIdentity();
      _ViewList_ID.bind<A>(explicitID:owner:isUnary:reuseID:)();
      v52 = v34;
      _ViewList_ID.bind<A>(explicitID:owner:isUnary:reuseID:)();
      outlined init with copy of ToolbarStorage.Item(v33, v6, type metadata accessor for ToolbarStorage.Item);
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew()(v27);
      }

      v14 = v44;
      result = outlined destroy of ToolbarViewListVisitor(v33, type metadata accessor for ToolbarStorage.Item);
      v4 = v45;
      v29 = v47;
      v28 = v42;
      v30 = v43;
      if (v31 >= v27[2])
      {
        goto LABEL_18;
      }

      result = outlined assign with take of ToolbarStorage.GroupItem.GroupSubItem(v6, v27 + v50 + v51);
      *(v14 + 19) = v27;
    }

    if (v28 == ++v31)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t NavigationState.StackContent.structuralSeed.getter@<X0>(_DWORD *a1@<X8>)
{
  result = outlined init with copy of NavigationState.Base(v1, __src);
  if (v16)
  {
    if (v16 == 1)
    {
      outlined consume of ResolvedNavigationDestinations?(__src[45], __src[46], __src[47], __src[48], __src[49], __src[50], __src[51], __src[52]);
      memcpy(__dst, __src, 0x163uLL);
      v4 = __dst[0];
      result = outlined destroy of NavigationColumnState(__dst);
      *a1 = v4;
    }

    else
    {
      v13[0] = *&__src[1];
      v13[1] = *&__src[3];
      v13[2] = *&__src[5];
      v13[3] = *&__src[7];
      v14 = __src[9];
      if (__src[3] == 1)
      {
        v5 = 0;
      }

      else
      {
        v5 = LODWORD(__src[1]);
      }

      v6 = *(__src[0] + 16);
      if (v6)
      {
        v7 = __src[0] + 32;
        do
        {
          v8 = v5;
          outlined init with copy of NavigationColumnState(v7, __dst);
          v5 = __dst[0];
          outlined destroy of NavigationColumnState(__dst);
          if (v8 == -1 || !v5)
          {
            v5 = v8;
          }

          else if (v8)
          {
            if (v5 != -1)
            {
              v9 = (v5 | (v8 << 32)) + ~(v5 << 32);
              v10 = (v9 ^ (v9 >> 22)) + ~((v9 ^ (v9 >> 22)) << 13);
              v11 = (9 * (v10 ^ (v10 >> 8))) ^ ((9 * (v10 ^ (v10 >> 8))) >> 15);
              v5 = ((v11 + ~(v11 << 27)) >> 31) ^ (v11 + ~(v11 << 27));
            }
          }

          v7 += 360;
          --v6;
        }

        while (v6);
      }

      result = outlined destroy of Binding<NavigationSplitViewColumn>(v13, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
      *a1 = v5;
    }
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationStackViewPosition and conformance NavigationStackViewPosition()
{
  result = lazy protocol witness table cache variable for type NavigationStackViewPosition and conformance NavigationStackViewPosition;
  if (!lazy protocol witness table cache variable for type NavigationStackViewPosition and conformance NavigationStackViewPosition)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationStackViewPosition, &type metadata for NavigationStackViewPosition, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationStackViewPosition and conformance NavigationStackViewPosition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationStackViewPosition and conformance NavigationStackViewPosition;
  if (!lazy protocol witness table cache variable for type NavigationStackViewPosition and conformance NavigationStackViewPosition)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationStackViewPosition, &type metadata for NavigationStackViewPosition, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationStackViewPosition and conformance NavigationStackViewPosition);
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, _OWORD *a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = (a4[6] + 48 * result);
  v5 = a2[1];
  *v4 = *a2;
  v4[1] = v5;
  *(v4 + 25) = *(a2 + 25);
  v6 = (a4[7] + 176 * result);
  v7 = a3[1];
  *v6 = *a3;
  v6[1] = v7;
  v8 = a3[5];
  v6[4] = a3[4];
  v6[5] = v8;
  v9 = a3[3];
  v6[2] = a3[2];
  v6[3] = v9;
  *(v6 + 156) = *(a3 + 156);
  v10 = a3[9];
  v6[8] = a3[8];
  v6[9] = v10;
  v11 = a3[7];
  v6[6] = a3[6];
  v6[7] = v11;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t outlined destroy of (key: ViewIdentity, value: ConfirmationDialog)(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for (key: ViewIdentity, value: InspectorStorage)(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void type metadata accessor for (key: ViewIdentity, value: InspectorStorage)(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

Swift::Void __swiftcall ToolbarPlacementEnvironment.updateValue()()
{
  v1 = v0;
  v40 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  Value = AGGraphGetValue();
  v3 = Value[1];
  *&v39 = *Value;
  *(&v39 + 1) = v3;

  swift_retain_n();
  v4 = AGGraphGetValue();
  outlined init with copy of ToolbarItemPlacement(v4, &v32);
  *v38 = v32;
  *&v38[16] = *v33;
  *&v38[25] = *&v33[9];
  outlined init with copy of ToolbarItemPlacement.Role(v38, v36);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ToolbarItemPlacementKey>, &type metadata for ToolbarItemPlacementKey, &protocol witness table for ToolbarItemPlacementKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ToolbarItemPlacementKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (v3)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of ToolbarItemPlacement.Role(v38);
  if (!AGGraphGetOutputValue())
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>>(0);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>>, MEMORY[0x1E697FE40]);
    if (!v3)
    {
      PropertyList.subscript.getter();
      if (!v32)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    PropertyList.Tracker.value<A>(_:for:)();

    if (v32)
    {
LABEL_6:
      *&v32 = *(v0 + 7);
      type metadata accessor for PrimaryBarViewModel(0);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type PrimaryBarViewModel and conformance BarEnvironmentViewModel, type metadata accessor for PrimaryBarViewModel, protocol conformance descriptor for BarEnvironmentViewModel);

      *v38 = ObservableObject<>.objectWillChange.getter();
      type metadata accessor for AttributeInvalidatingSubscriber<ObservableObjectPublisher>(0, &lazy cache variable for type metadata for AttributeInvalidatingSubscriber<ObservableObjectPublisher>, MEMORY[0x1E695BFE8], MEMORY[0x1E695BFE0], MEMORY[0x1E6980A48]);
      lazy protocol witness table accessor for type AttributeInvalidatingSubscriber<ObservableObjectPublisher> and conformance AttributeInvalidatingSubscriber<A>(&lazy protocol witness table cache variable for type AttributeInvalidatingSubscriber<ObservableObjectPublisher> and conformance AttributeInvalidatingSubscriber<A>, MEMORY[0x1E6980A58]);
      lazy protocol witness table accessor for type AttributeInvalidatingSubscriber<ObservableObjectPublisher> and conformance AttributeInvalidatingSubscriber<A>(&lazy protocol witness table cache variable for type AttributeInvalidatingSubscriber<ObservableObjectPublisher> and conformance AttributeInvalidatingSubscriber<A>, MEMORY[0x1E6980A50]);
      SubscriptionLifetime.subscribe<A>(subscriber:to:)();
    }
  }

LABEL_7:
  AGGraphGetValue();
  static Semantics.v3.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    v5 = AGGraphGetValue();
    outlined init with copy of ToolbarItemPlacement(v5, &v32);
    *v38 = 5;
    memset(&v38[8], 0, 32);
    v38[40] = 2;
    v6 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(&v32, v38);
    outlined destroy of ToolbarItemPlacement.Role(v38);
    outlined destroy of ToolbarItemPlacement.Role(&v32);
    if (v6)
    {
      static Font.body.getter();
      Font.bold()();

      EnvironmentValues.defaultFont.setter();
    }
  }

  static Semantics.v4.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    EnvironmentValues.dynamicTypeSize.getter();
    v7 = v32;
    if (v32 <= 3u)
    {
      v7 = 3;
    }

    if (v7 >= 5)
    {
      LOBYTE(v7) = 5;
    }

    LOBYTE(v32) = v7;
    EnvironmentValues.dynamicTypeSize.setter();
  }

  static _GraphInputs.defaultInterfaceIdiom.getter();
  if (static Solarium.isEnabled(for:)())
  {
    v8 = AGGraphGetValue();
    outlined init with copy of ToolbarItemPlacement(v8, &v32);
    *v38 = 5;
    memset(&v38[8], 0, 32);
    v38[40] = 2;
    v9 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(&v32, v38);
    outlined destroy of ToolbarItemPlacement.Role(v38);
    outlined destroy of ToolbarItemPlacement.Role(&v32);
    if ((v9 & 1) == 0)
    {
      static Font.body.getter();
      static Font.Weight.medium.getter();
      Font.weight(_:)();

      EnvironmentValues.defaultFont.setter();
    }
  }

  AGGraphGetValue();
  memset(v36, 0, sizeof(v36));
  v37 = 0;
  outlined init with copy of ToolbarPlacement.Storage(v36, v38);
  if (*&v38[24] == 7)
  {
    outlined destroy of ToolbarPlacement.Storage(v38);
  }

  else
  {
    v32 = *v38;
    *v33 = *&v38[16];
    *&v33[16] = *&v38[32];
    if (*(&v39 + 1))
    {
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarForegroundStyleKey>, &type metadata for EnvironmentValues.ToolbarForegroundStyleKey, &protocol witness table for EnvironmentValues.ToolbarForegroundStyleKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarForegroundStyleKey> and conformance EnvironmentPropertyKey<A>();

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarForegroundStyleKey>, &type metadata for EnvironmentValues.ToolbarForegroundStyleKey, &protocol witness table for EnvironmentValues.ToolbarForegroundStyleKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarForegroundStyleKey> and conformance EnvironmentPropertyKey<A>();
      PropertyList.subscript.getter();
    }

    if (*(*v38 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(&v32), (v10 & 1) != 0))
    {

      AGGraphGetValue();
      EnvironmentValues.defaultForegroundStyle.setter();
    }

    else
    {
    }

    outlined destroy of ToolbarPlacement.Role(&v32);
  }

  v11 = v39;
  v12 = AGGraphGetValue();
  outlined init with copy of ToolbarItemPlacement(v12, &v32);
  outlined init with copy of ToolbarItemPlacement.Role(&v32, v38);
  if (v38[40] == 2 && (*v38 == 13 || *v38 == 4))
  {
    v14 = vorrq_s8(*&v38[8], *&v38[24]);
    if (!*&vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)))
    {
      outlined destroy of ToolbarPlacement(v36);
      outlined destroy of ToolbarItemPlacement.Role(&v32);
      goto LABEL_49;
    }
  }

  outlined destroy of ToolbarItemPlacement.Role(v38);
  outlined init with copy of ToolbarItemPlacement.Role(&v32, v38);
  if (v38[40] != 2 || *v38 != 8 || (v15 = vorrq_s8(*&v38[8], *&v38[24]), *&vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL))))
  {
    outlined destroy of ToolbarItemPlacement.Role(v38);
    outlined destroy of ToolbarItemPlacement.Role(&v32);
    if (*(&v11 + 1))
    {
      type metadata accessor for EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>>(0);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>>, MEMORY[0x1E697FE40]);

      PropertyList.Tracker.value<A>(_:for:)();

      if (!v32)
      {
        goto LABEL_48;
      }
    }

    else
    {
      type metadata accessor for EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>>(0);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>>, MEMORY[0x1E697FE40]);
      PropertyList.subscript.getter();
      if (!v32)
      {
        goto LABEL_48;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v32 != 2 && (v32 & 1) != 0)
    {
      *&v32 = static Color.white.getter();
      v16 = AnyShapeStyle.init<A>(_:)();
      swift_retain_n();
      EnvironmentValues.defaultForegroundStyle.setter();
      MEMORY[0x18D0065C0](v16);
    }

    goto LABEL_48;
  }

  outlined destroy of ToolbarItemPlacement.Role(&v32);
LABEL_48:
  outlined destroy of ToolbarPlacement(v36);
LABEL_49:
  static _GraphInputs.defaultInterfaceIdiom.getter();
  if (static Solarium.isEnabled(for:)())
  {
    static Font.body.getter();
    static Font.Weight.medium.getter();
    Font.weight(_:)();

    EnvironmentValues.defaultSymbolFont.setter();
  }

  static Semantics.v3.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    static _GraphInputs.defaultInterfaceIdiom.getter();
    if (static Solarium.isEnabled(for:)())
    {
      LOBYTE(v32) = 2;
    }

    else
    {
      EnvironmentValues.verticalSizeClass.getter();
      if (v32 == 2 || (v32 & 1) != 0)
      {
        v17 = 2;
      }

      else
      {
        v17 = 1;
      }

      LOBYTE(v32) = v17;
    }

    EnvironmentValues.imageScale.setter();
  }

  v18 = v39;
  v19 = AGGraphGetValue();
  outlined init with copy of ToolbarItemPlacement(v19, &v32);
  outlined init with copy of ToolbarItemPlacement.Role(&v32, v38);
  if (v38[40] == 2 && (*v38 != 13 ? (v20 = *v38 == 4) : (v20 = 1), v20 && (v21 = vorrq_s8(*&v38[8], *&v38[24]), !*&vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL)))) || (outlined destroy of ToolbarItemPlacement.Role(v38), outlined init with copy of ToolbarItemPlacement.Role(&v32, v38), v38[40] == 2) && *v38 == 8 && (v22 = vorrq_s8(*&v38[8], *&v38[24]), !*&vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL))))
  {
    outlined destroy of ToolbarItemPlacement.Role(&v32);
    goto LABEL_76;
  }

  outlined destroy of ToolbarItemPlacement.Role(v38);
  outlined destroy of ToolbarItemPlacement.Role(&v32);
  if (*(&v18 + 1))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>>(0);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();

    if (!v32)
    {
      goto LABEL_76;
    }
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>>(0);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>>, MEMORY[0x1E697FE40]);
    PropertyList.subscript.getter();
    if (!v32)
    {
      goto LABEL_76;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v32 != 2)
  {
    LOBYTE(v32) = v32 & 1;
    EnvironmentValues.defaultColorScheme.setter();
    goto LABEL_85;
  }

LABEL_76:
  v23 = AGGraphGetValue();
  outlined init with copy of ToolbarItemPlacement(v23, &v32);
  outlined init with copy of ToolbarItemPlacement.Role(&v32, v38);
  if (v38[40] != 2 || (*v38 != 13 ? (v24 = *v38 == 4) : (v24 = 1), !v24 || (v25 = vorrq_s8(*&v38[8], *&v38[24]), *&vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL)))))
  {
    outlined destroy of ToolbarItemPlacement.Role(v38);
  }

  outlined destroy of ToolbarItemPlacement.Role(&v32);
LABEL_85:
  v26 = v1[3];
  *&v33[16] = v1[2];
  v34 = v26;
  v35 = *(v1 + 8);
  v27 = v1[1];
  v32 = *v1;
  *v33 = v27;
  v28 = v39;
  *v38 = v39;

  swift_retain_n();
  v29 = ToolbarPlacementEnvironment.barConfiguration(in:)(v38);
  v31 = v30;

  *&v32 = v29;
  BYTE8(v32) = v31;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_barConfiguration>, &type metadata for EnvironmentValues.__Key_barConfiguration, &protocol witness table for EnvironmentValues.__Key_barConfiguration, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_barConfiguration> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (*(&v28 + 1))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  v32 = v39;
  AGGraphSetOutputValue();
}

uint64_t EnvironmentValues.presentationNeedsPreferredContentSize.getter()
{
  v1 = *(v0 + 8);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationKind.Key>, &type metadata for PresentationKind.Key, &protocol witness table for PresentationKind.Key, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PresentationKind.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationKind.Key>, &type metadata for PresentationKind.Key, &protocol witness table for PresentationKind.Key);
  if (v1)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  if (v4 == 1)
  {
    return 1;
  }

  if (v4)
  {
    return 0;
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize>, &unk_1EFFD54E8, &protocol witness table for EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize>, &unk_1EFFD54E8, &protocol witness table for EnvironmentValues.__Key_presentationNeedsInitialPreferredContentSize);
  if (v1)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  return v3;
}

id UIHostingController.topOrBottomContentScrollView()()
{
  result = [v0 contentScrollViewForEdge_];
  if (!result)
  {
    return [v0 contentScrollViewForEdge_];
  }

  return result;
}

double specialized SheetBridge.hostingView<A>(_:didMoveTo:)(uint64_t a1, uint64_t a2)
{
  _UIHostingView.viewGraph.getter(a1);
  if (a2)
  {
    GraphHost.addPreference<A>(_:)();

    _UIHostingView.viewGraph.getter(v3);
    GraphHost.addPreference<A>(_:)();
  }

  else
  {
    GraphHost.removePreference<A>(_:)();

    _UIHostingView.viewGraph.getter(v4);
    GraphHost.removePreference<A>(_:)();
  }

  return result;
}

uint64_t assignWithTake for ResolvedScrollBehavior(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

__n128 assignWithCopy for ResolvedScrollBehaviorModifier.BehaviorTransform(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v3)
    {
      result.n128_f64[0] = __swift_assign_boxed_opaque_existential_1(a1, a2);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 44) = *(a2 + 44);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 52) = *(a2 + 52);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 60) = *(a2 + 60);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 68) = *(a2 + 68);
    }

    else
    {
      outlined destroy of AccessibilityRelationshipScope.Key(a1);
      *a1 = *a2;
      v7 = *(a2 + 32);
      result = *(a2 + 48);
      v8 = *(a2 + 16);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 32) = v7;
      *(a1 + 48) = result;
      *(a1 + 16) = v8;
    }
  }

  else if (v3)
  {
    *(a1 + 24) = v3;
    *(a1 + 32) = *(a2 + 32);
    (**(v3 - 8))();
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 44) = *(a2 + 44);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
  }

  else
  {
    *a1 = *a2;
    result = *(a2 + 16);
    v9 = *(a2 + 32);
    v10 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 32) = v9;
    *(a1 + 48) = v10;
    *(a1 + 16) = result;
  }

  return result;
}

BOOL specialized static ResolvedScrollBehavior.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  v2 = *(a2 + 45);
  if (*(a1 + 45))
  {
    if (!*(a2 + 45))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 44) != *(a2 + 44))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  Attribute = AGWeakAttributeGetAttribute();
  v5 = *MEMORY[0x1E698D3F8];
  v6 = AGWeakAttributeGetAttribute();
  if (Attribute == v5)
  {
    if (v6 == v5)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (v6 == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  if (v6 == v5 || Attribute != v7)
  {
    return 0;
  }

LABEL_20:
  v9 = AGWeakAttributeGetAttribute();
  v10 = AGWeakAttributeGetAttribute();
  if (v9 == v5)
  {
    if (v10 != v5)
    {
      return 0;
    }
  }

  else
  {
    if (v10 == v5)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    if (v10 == v5 || v9 != v11)
    {
      return 0;
    }
  }

  v13 = AGWeakAttributeGetAttribute();
  v14 = AGWeakAttributeGetAttribute();
  result = v14 == v5;
  if (v13 != v5)
  {
    if (v14 == v5)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    v16 = v13 == v15;
    return v14 != v5 && v16;
  }

  return result;
}

uint64_t assignWithCopy for NavigationStackRepresentable(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  __swift_assign_boxed_opaque_existential_1((a1 + 24), (a2 + 24));
  v4 = *(a2 + 64);
  v5 = *(a1 + 64);
  *(a1 + 64) = v4;
  v6 = v4;

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  swift_weakCopyAssign();
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 120) = *(a2 + 120);
  v7 = *(a2 + 152);
  if (!*(a1 + 152))
  {
    if (v7)
    {
      *(a1 + 152) = v7;
      *(a1 + 160) = *(a2 + 160);
      (**(v7 - 8))(a1 + 128, a2 + 128);
      goto LABEL_8;
    }

LABEL_7:
    v9 = *(a2 + 128);
    v10 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 128) = v9;
    *(a1 + 144) = v10;
    goto LABEL_8;
  }

  v8 = (a1 + 128);
  if (!v7)
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_1(v8, (a2 + 128));
LABEL_8:
  v11 = *(a2 + 168);
  v12 = *(a2 + 176);
  outlined copy of Environment<Bool>.Content();
  v13 = *(a1 + 168);
  v14 = *(a1 + 176);
  *(a1 + 168) = v11;
  *(a1 + 176) = v12;
  outlined consume of Environment<Bool>.Content(v13, v14);
  return a1;
}

uint64_t storeEnumTagSinglePayload for NavigationState.StackContent.Views.ViewsSequence(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 472) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 480) = 1;
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
      *(result + 456) = (a2 - 1);
      return result;
    }

    *(result + 480) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void specialized NavigationStackCoordinator.configureExtantHostingControllerEnvironment(_:)(char *a1)
{
  v4 = *&a1[direct field offset for UIHostingController.host];
  v2 = [v4 window];
  if (v2)
  {

    UIHostingViewBase.inheritedEnvironment.getter();
    if (v5 != 1)
    {
      outlined consume of EnvironmentValues?(v5, v6);
      UIHostingViewBase.inheritedEnvironment.setter();
    }
  }

  else
  {
    v3 = [a1 traitCollection];
    UIHostingViewBase.traitCollectionOverride.setter();
  }
}

uint64_t specialized _UIHostingView.setRootView(_:transaction:)(uint64_t a1, uint64_t a2)
{
  return specialized _UIHostingView.setRootView(_:transaction:)(a1, a2, &unk_1EFF8EE90, partial apply for specialized closure #1 in _UIHostingView.setRootView(_:transaction:));
}

{
  outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(a1, v5, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier);
  v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x60);
  swift_beginAccess();
  outlined assign with take of ModifiedContent<TableRowView, CollectionViewCellModifier>(v5, v2 + v3, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier);
  swift_endAccess();
  UIHostingViewBase.viewGraph.getter();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  default argument 1 of GraphHost.asyncTransaction(_:id:_:)();
  GraphHost.asyncTransaction(_:id:_:)();
}

{
  v3 = MEMORY[0x1E697D9F0];
  outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(a1, v6, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, MEMORY[0x1E697D9F0], &type metadata for CollectionViewCellModifier);
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x60);
  swift_beginAccess();
  outlined assign with take of ModifiedContent<TableRowView, CollectionViewCellModifier>(v6, v2 + v4, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, v3, &type metadata for CollectionViewCellModifier);
  swift_endAccess();
  UIHostingViewBase.viewGraph.getter();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  default argument 1 of GraphHost.asyncTransaction(_:id:_:)();
  GraphHost.asyncTransaction(_:id:_:)();
}

{
  outlined init with copy of TabItem.RootView(a1, v5);
  v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x60);
  swift_beginAccess();
  outlined assign with take of TabItem.RootView(v5, v2 + v3);
  swift_endAccess();
  UIHostingViewBase.viewGraph.getter();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  default argument 1 of GraphHost.asyncTransaction(_:id:_:)();
  GraphHost.asyncTransaction(_:id:_:)();
}

{
  v3 = MEMORY[0x1E697D9F0];
  outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(a1, v6, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, MEMORY[0x1E697D9F0], &type metadata for ListTableCellModifier);
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x60);
  swift_beginAccess();
  outlined assign with take of ModifiedContent<TableRowView, CollectionViewCellModifier>(v6, v2 + v4, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, v3, &type metadata for ListTableCellModifier);
  swift_endAccess();
  UIHostingViewBase.viewGraph.getter();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  default argument 1 of GraphHost.asyncTransaction(_:id:_:)();
  GraphHost.asyncTransaction(_:id:_:)();
}

{
  outlined init with copy of BridgedNavigationView.RootView(a1, v5);
  v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x60);
  swift_beginAccess();
  outlined assign with take of BridgedNavigationView.RootView(v5, v2 + v3);
  swift_endAccess();
  UIHostingViewBase.viewGraph.getter();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  default argument 1 of GraphHost.asyncTransaction(_:id:_:)();
  GraphHost.asyncTransaction(_:id:_:)();
}

{
  return specialized _UIHostingView.setRootView(_:transaction:)(a1, a2, &unk_1EFF8F070, partial apply for specialized closure #1 in _UIHostingView.setRootView(_:transaction:));
}

{
  return specialized _UIHostingView.setRootView(_:transaction:)(a1, a2, &unk_1EFF8EEB8, partial apply for specialized closure #1 in _UIHostingView.setRootView(_:transaction:));
}

{
  return specialized _UIHostingView.setRootView(_:transaction:)(a1, a2, &unk_1EFF8F048, partial apply for specialized closure #1 in _UIHostingView.setRootView(_:transaction:));
}

uint64_t specialized _UIHostingView.setRootView(_:transaction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x60);
  swift_beginAccess();
  *(v5 + v7) = a1;

  UIHostingViewBase.viewGraph.getter();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  default argument 1 of GraphHost.asyncTransaction(_:id:_:)();
  GraphHost.asyncTransaction(_:id:_:)();
}

uint64_t specialized closure #2 in TransformScrollStorageEnvironment.updateValue()(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    outlined init with copy of ScrollEnvironmentProperties(a2, v5);
    ScrollEnvironmentStorage.baseProperties.setter(v5);
    v5[3] = &type metadata for ResolvedScrollBehaviorModifier.BehaviorTransform;
    v5[4] = &protocol witness table for ResolvedScrollBehaviorModifier.BehaviorTransform;
    v5[0] = swift_allocObject();
    outlined init with copy of ResolvedScrollBehaviorModifier.BehaviorTransform(a3, v5[0] + 16);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    _s7SwiftUI23NavigationSelectionHostCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage, protocol conformance descriptor for ScrollEnvironmentStorage);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return outlined destroy of SearchEnvironmentStorage.AllProperties(v5, type metadata accessor for ScrollEnvironmentTransform?);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void type metadata accessor for ScrollEnvironmentTransform?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t AnyNavigationPath.HeterogeneousBoxBase.updatePossibilities(for:into:)(unint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  ResolvedNavigationDestinations.updatePossibilities(for:over:)(a1, a2, a3, (v3 + 16), v7);
  v9 = v8;
  swift_endAccess();
  return v9;
}

uint64_t ResolvedNavigationDestinations.setPossibilities(_:depth:)(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  if (a1 >> 62)
  {
LABEL_65:
    v6 = __CocoaSet.count.getter();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_66:
    v8 = MEMORY[0x1E69E7CC0];
LABEL_67:

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = *(v3 + 16);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, a2, isUniquelyReferenced_nonNull_native);
    *(v3 + 16) = v78;
    v66 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSO_SaySOGTt0g5Tf4g_n(v8);

    return v66;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_66;
  }

LABEL_3:
  v7 = 0;
  v74 = v5 & 0xC000000000000001;
  v68 = v5 & 0xFFFFFFFFFFFFFF8;
  v8 = MEMORY[0x1E69E7CC0];
  v70 = v5;
  v71 = a2;
  v69 = v3;
  while (1)
  {
    if (v74)
    {
      v9 = MEMORY[0x18D00E9C0](v7, v5);
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_57;
      }
    }

    else
    {
      if (v7 >= *(v68 + 16))
      {
        goto LABEL_60;
      }

      v9 = *(v5 + 8 * v7 + 32);

      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }
    }

    v75 = v10;
    v76 = v7;
    v11 = (*(*v9 + 80))();
    v12 = v11;
    if (a2 != -1)
    {
      if (*(*v3 + 16))
      {
        specialized __RawDictionaryStorage.find<A>(_:)(v11);
        if (v13)
        {
          _StringGuts.grow(_:)(153);
          v14 = MEMORY[0x18D00C9B0](0x100000000000001FLL, 0x800000018CD3DEE0);
          v15 = (*(*v9 + 88))(v14);
          MEMORY[0x18D00C9B0](v15);

          MEMORY[0x18D00C9B0](0x1000000000000078, 0x800000018CD3DF00);
          MEMORY[0x18D009810](0, 0xE000000000000000);

          goto LABEL_5;
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v17 = *(v8 + 2);
    v16 = *(v8 + 3);
    if (v17 >= v16 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v8);
    }

    *(v8 + 2) = v17 + 1;
    *&v8[8 * v17 + 32] = v12;

    if (a2 != -1)
    {
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v3;
      v77 = *v3;
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
      v22 = *(v19 + 16);
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        goto LABEL_58;
      }

      v26 = v21;
      if (*(v19 + 24) >= v25)
      {
        if ((v18 & 1) == 0)
        {
          v37 = v20;
          specialized _NativeDictionary.copy()();
          v20 = v37;
          v36 = v77;
          if (v26)
          {
            goto LABEL_31;
          }

          goto LABEL_36;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, v18);
        v20 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
        if ((v26 & 1) != (v27 & 1))
        {
          goto LABEL_69;
        }
      }

      v36 = v77;
      if (v26)
      {
LABEL_31:
        *(v36[7] + 8 * v20) = v9;

LABEL_38:
        *v3 = v36;
        goto LABEL_43;
      }

LABEL_36:
      v36[(v20 >> 6) + 8] |= 1 << v20;
      *(v36[6] + 8 * v20) = v12;
      *(v36[7] + 8 * v20) = v9;
      v38 = v36[2];
      v24 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v24)
      {
        goto LABEL_62;
      }

      v36[2] = v39;
      goto LABEL_38;
    }

    v28 = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(v3 + 8);
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
    v31 = v29[2];
    v32 = (v30 & 1) == 0;
    v24 = __OFADD__(v31, v32);
    v33 = v31 + v32;
    if (v24)
    {
      goto LABEL_61;
    }

    v34 = v30;
    if (v29[3] < v33)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, v28);
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
      if ((v34 & 1) != (v35 & 1))
      {
        goto LABEL_69;
      }

LABEL_33:
      if ((v34 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_34;
    }

    if (v28)
    {
      goto LABEL_33;
    }

    v40 = v20;
    specialized _NativeDictionary.copy()();
    v20 = v40;
    if ((v34 & 1) == 0)
    {
LABEL_40:
      v29[(v20 >> 6) + 8] |= 1 << v20;
      *(v29[6] + 8 * v20) = v12;
      *(v29[7] + 8 * v20) = v9;
      v41 = v29[2];
      v24 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v24)
      {
        goto LABEL_64;
      }

      v29[2] = v42;
      goto LABEL_42;
    }

LABEL_34:
    *(v29[7] + 8 * v20) = v9;

LABEL_42:
    *(v3 + 8) = v29;
LABEL_43:
    v43 = (*(*v9 + 96))(v20);
    if (v44)
    {
      break;
    }

LABEL_5:
    v7 = v76 + 1;
    if (v75 == v6)
    {
      goto LABEL_67;
    }
  }

  v45 = v43;
  v46 = v44;
  v72 = v8;
  v47 = (*(*v9 + 104))();
  v73 = v49;
  if (v47)
  {
    v50 = v47;
    a2 = v48;
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v52 = *(v3 + 32);
    v5 = v45;
    v3 = specialized __RawDictionaryStorage.find<A>(_:)(v45, v46);
    v54 = v52[2];
    v55 = (v53 & 1) == 0;
    v56 = v54 + v55;
    if (__OFADD__(v54, v55))
    {
      goto LABEL_59;
    }

    v57 = v53;
    if (v52[3] >= v56)
    {
      if (v51)
      {
        if ((v53 & 1) == 0)
        {
          goto LABEL_49;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if ((v57 & 1) == 0)
        {
          goto LABEL_49;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v56, v51);
      v58 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v46);
      if ((v57 & 1) != (v59 & 1))
      {
        goto LABEL_70;
      }

      v3 = v58;
      if ((v57 & 1) == 0)
      {
LABEL_49:
        v52[(v3 >> 6) + 8] |= 1 << v3;
        v60 = (v52[6] + 16 * v3);
        *v60 = v5;
        v60[1] = v46;
        v61 = (v52[7] + 24 * v3);
        *v61 = v50;
        v61[1] = a2;
        v61[2] = v73;
        v62 = v52[2];
        v24 = __OFADD__(v62, 1);
        v63 = v62 + 1;
        if (v24)
        {
          goto LABEL_63;
        }

        v52[2] = v63;

        goto LABEL_54;
      }
    }

    v64 = (v52[7] + 24 * v3);
    *v64 = v50;
    v64[1] = a2;
    v64[2] = v73;

LABEL_54:
    v3 = v69;
    v5 = v70;
    *(v69 + 32) = v52;
    a2 = v71;
    v8 = v72;
    goto LABEL_5;
  }

  __break(1u);
LABEL_69:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_70:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZSO_Tt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
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
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    result = MEMORY[0x18D00F6C0](*(a2 + 40), v13);
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 8 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

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
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void partial apply for specialized closure #1 in _UIHostingView.setRootView(_:transaction:)()
{
  specialized closure #1 in _UIHostingView.setRootView(_:transaction:)(v0);
}

{
  specialized closure #1 in _UIHostingView.setRootView(_:transaction:)(v0);
}

{
  specialized closure #1 in _UIHostingView.setRootView(_:transaction:)(v0, &type metadata for MainContentView);
}

{
  specialized closure #1 in _UIHostingView.setRootView(_:transaction:)(v0);
}

{
  specialized closure #1 in _UIHostingView.setRootView(_:transaction:)(v0, &type metadata for PreparedCompactColumn);
}

void specialized closure #1 in _UIHostingView.setRootView(_:transaction:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    UIHostingViewBase.viewGraph.getter();

    swift_beginAccess();

    AGGraphSetValue();
  }
}

{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    UIHostingViewBase.viewGraph.getter();

    swift_beginAccess();
    type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(0, &lazy cache variable for type metadata for ModifiedContent<AnyView, EmptyModifier>, MEMORY[0x1E6981910], MEMORY[0x1E697E108], MEMORY[0x1E697E830]);

    AGGraphSetValue();
  }
}

{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    UIHostingViewBase.viewGraph.getter();

    swift_beginAccess();
    type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(0, &lazy cache variable for type metadata for ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>, &type metadata for TableViewListHeaderFooterContent, MEMORY[0x1E697E108], MEMORY[0x1E697E830]);

    AGGraphSetValue();
  }
}

void _s7SwiftUI20PlatformListViewBasePAASo6UIViewCRbzrlE19configureBackground_6traits11transactionyAA15ModifiedContentVyAA03AnyE0V0I8ModifierQzGSg_AA0E15TraitCollectionVAA11TransactionVSgtFAA0dqe4CellF0CyAA08TableRowE0VG_Tt0g5Tm(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for UICellAccessory.LayoutDimension?(0, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - v11;
  if (!a1)
  {
    specialized ListCollectionViewCellBase.backgroundHost.setter(0);
    return;
  }

  MEMORY[0x18D00DBA0](v10);
  v13 = type metadata accessor for UIBackgroundConfiguration();
  v14 = *(*(v13 - 1) + 48);
  if (v14(v12, 1, v13))
  {
    outlined destroy of UIBackgroundConfiguration?(v12, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
LABEL_4:
    type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>(0);
    v16 = objc_allocWithZone(v15);

    v18 = specialized _UIHostingView.init(rootView:)(v17);
    UIHostingViewBase.isHiddenForReuse.setter();
    v19 = v18;
    specialized ListCollectionViewCellBase.backgroundHost.setter(v18);

    goto LABEL_5;
  }

  v24 = UIBackgroundConfiguration.customView.getter();
  outlined destroy of UIBackgroundConfiguration?(v12, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
  if (!v24)
  {
    goto LABEL_4;
  }

  type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>(0);
  v25 = swift_dynamicCastClass();
  if (!v25)
  {

    goto LABEL_4;
  }

  v26 = v25;
  if (a2 == 1)
  {
    v27 = *((*MEMORY[0x1E69E7D40] & *v25) + 0x60);
    swift_beginAccess();
    v28 = *(v26 + v27);
    *(v26 + v27) = a1;

    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<AnyView, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, EmptyModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>, protocol conformance descriptor for _UIHostingView<A>);
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  else
  {

    specialized _UIHostingView.setRootView(_:transaction:)(a1, a2, &unk_1EFF8EE40, partial apply for specialized closure #1 in _UIHostingView.setRootView(_:transaction:));

    outlined consume of ListItemTint?(a2);
  }

LABEL_5:
  MEMORY[0x18D00DBA0]();
  if (v14(v8, 1, v13))
  {
    outlined destroy of UIBackgroundConfiguration?(v8, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
    goto LABEL_20;
  }

  v13 = UIBackgroundConfiguration.customView.getter();
  outlined destroy of UIBackgroundConfiguration?(v8, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
  if (!v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>(0);
  if (!swift_dynamicCastClass())
  {
LABEL_21:

    __break(1u);
    return;
  }

  v20 = _s7SwiftUI14_UIHostingViewC2asyqd__Sgqd__mlFAA15ModifiedContentVyAA03AnyD0VAA13EmptyModifierVG_AA23ContainerBackgroundHost_pTt0g5();
  v22 = v21;

  if (v20)
  {
    ObjectType = swift_getObjectType();
    (*(v22 + 8))(32, 1, ObjectType, v22);
    swift_unknownObjectRelease();
  }

  [v3 setBackgroundColor_];
}

uint64_t sub_18BF2F7D8()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

void *static PlatformViewControllerRepresentableAdaptor.layoutOptions(_:)@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  result = (*(a1 + 88))(&v4);
  *a2 = v4;
  return result;
}

void outlined consume of FocusStore?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

Swift::Int SheetPreference.Value.viewIDs.getter()
{
  outlined init with copy of SheetPreference.Value(v0, v10);
  if (!v12)
  {
    return _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI9NamespaceV2IDV_SD4KeysVyAhD11TransactionV_GTt0g5(*&v10[0]);
  }

  if (v12 != 1)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v8 = v10[4];
  v9[0] = *v11;
  *(v9 + 10) = *&v11[10];
  v4 = v10[0];
  v5 = v10[1];
  v6 = v10[2];
  v7 = v10[3];
  type metadata accessor for Binding<PresentationMode>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Namespace.ID>, MEMORY[0x1E6981EA0], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  *(inited + 32) = *(&v5 + 1);
  v2 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI9NamespaceV2IDV_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of SheetPreference(&v4);
  return v2;
}

void SheetBridge.update(presentation:in:transaction:)(uint64_t *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for UITraitOverrides();
  MEMORY[0x1EEE9AC00](v6);
  v7 = *a1;
  v8 = direct field offset for UIHostingController.host;
  v9 = *&a2[direct field offset for UIHostingController.host];
  specialized _UIHostingView.setRootView(_:transaction:)(v7, a3);

  v10 = *&a2[v8];
  v11 = MEMORY[0x1E69E7D40];

  v12 = v10;

  UIHostingViewBase.environmentOverride.setter();

  if (*(*&a2[v8] + *((*v11 & **&a2[v8]) + 0xF8)) == 2)
  {

    EnvironmentValues.explicitPreferredColorScheme.getter();

    if (v23 != 2)
    {
      v13 = *&a2[v8];
      v14 = *((*v11 & *v13) + 0xF8);
      v15 = *(v13 + v14);
      *(v13 + v14) = v23;
      v16 = v13;
      specialized _UIHostingView.didChangeColorScheme(from:)(v15);

      v17 = [a2 presentationController];
      if (v17)
      {
        v18 = v17;
        objc_opt_self();
        v19 = swift_dynamicCastObjCClass();
        if (v19)
        {
          v20 = v19;
LABEL_9:
          UIPresentationController.traitOverrides.getter();
          UIMutableTraits.userInterfaceStyle.setter();
          UIPresentationController.traitOverrides.setter();

          goto LABEL_10;
        }
      }

      v21 = [a2 popoverPresentationController];
      if (v21)
      {
        v22 = v21;
        v20 = [v21 adaptiveSheetPresentationController];

        if (v20)
        {
          goto LABEL_9;
        }
      }
    }
  }

LABEL_10:
  specialized PresentationHostingController.updateFullScreenInteractiveDismissIfNeeded(disabled:)(a2[direct field offset for PresentationHostingController.lastInteractiveDismissDisabled]);
}

void specialized PresentationHostingController.updateFullScreenInteractiveDismissIfNeeded(disabled:)(int a1)
{
  v3 = [v1 presentationController];
  if (!v3)
  {
LABEL_4:
    v6 = [v1 popoverPresentationController];
    if (!v6)
    {
      return;
    }

    v7 = v6;
    v8 = [v6 adaptiveSheetPresentationController];

    v5 = v8;
    if (!v8)
    {
      return;
    }

    goto LABEL_6;
  }

  v4 = v3;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {

    goto LABEL_4;
  }

LABEL_6:
  v9 = v5;
  if ((([v5 _allowsInteractiveDismissWhenFullScreen] ^ a1) & 1) == 0)
  {
    [v9 _setAllowsInteractiveDismissWhenFullScreen_];
  }
}

void *assignWithCopy for NavigationStackReader(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;

  v5[1] = v6[1];

  v5[2] = v6[2];

  v7 = *(*(a3 + 24) - 8);
  v8 = v7 + 24;
  v9 = *(v7 + 80);
  v10 = (v5 + v9 + 24) & ~v9;
  v11 = (v6 + v9 + 24) & ~v9;
  (*(v7 + 24))(v10, v11);
  v12 = *(v8 + 40);
  v13 = v12 + v10;
  v14 = v12 + v11;
  *v13 = *v14;
  v15 = v13 & 0xFFFFFFFFFFFFFFF8;
  v16 = v14 & 0xFFFFFFFFFFFFFFF8;
  *((v13 & 0xFFFFFFFFFFFFFFF8) + 8) = *((v14 & 0xFFFFFFFFFFFFFFF8) + 8);

  v17 = ((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((v16 + 23) & 0xFFFFFFFFFFFFFFF8);
  v19 = v18[1];
  *v17 = *v18;
  v17[1] = v19;

  return a1;
}

uint64_t assignWithCopy for NavigationStackStyledCore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 16) = *(v8 + 16);
  return a1;
}

uint64_t assignWithCopy for _NavigationStackStyleConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;

  v5 = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 48) = v5;
  *(a1 + 53) = *(a2 + 53);
  return a1;
}

uint64_t assignWithCopy for CoordinateSpaceNameModifier(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    outlined destroy of CoordinateSpace.Name(a1);
    if (*(a2 + 40))
    {
      v4 = *a2;
      v5 = a2[1];
      *(a1 + 25) = *(a2 + 25);
      *a1 = v4;
      *(a1 + 16) = v5;
    }

    else
    {
      v6 = *(a2 + 3);
      *(a1 + 24) = v6;
      *(a1 + 32) = *(a2 + 4);
      (**(v6 - 8))(a1, a2);
      *(a1 + 40) = 0;
    }
  }

  return a1;
}

double destroy for _NavigationStackStyleConfiguration.Item(uint64_t a1)
{
  swift_weakDestroy();

  if (*(a1 + 120) == 1)
  {
    if (*(a1 + 80))
    {
      __swift_destroy_boxed_opaque_existential_1((a1 + 56));
    }

    if (*(a1 + 104) != 1)
    {
    }
  }

  else if (!*(a1 + 120))
  {

    __swift_destroy_boxed_opaque_existential_1((a1 + 56));
  }

  return result;
}

BOOL specialized VersionSeedTracker.didChange(_:action:)(uint64_t a1, void (*a2)(void *))
{
  PreferenceValues.subscript.getter();
  v5 = v9 == -1 || *v2 != v9;
  v6 = *v2 == -1 || v5;
  if (*v2 == -1 || v5)
  {
    *v2 = v9;
    a2(v8);
  }

  _ss11AnyHashableVSgWOhTm_1(v8, &lazy cache variable for type metadata for PreferenceValues.Value<PresentationOptionsPreference>, &type metadata for PresentationOptionsPreference, MEMORY[0x1E697EA38]);
  return v6;
}

uint64_t ContainerBackground.ConcreteVersionSeedTracker.didChange(_:action:)(uint64_t *a1, void (*a2)(char *), uint64_t a3)
{
  v6 = *v3;
  v10 = *a1;
  swift_beginAccess();
  v8 = type metadata accessor for VersionSeedTracker(0, *(v6 + 96), *(*(v6 + 104) + 8), v7);
  VersionSeedTracker.didChange(_:action:)(&v10, a2, a3, v8);
  return swift_endAccess();
}

BOOL VersionSeedTracker.didChange(_:action:)(uint64_t *a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v20[1] = a3;
  v21 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v20 - v9;
  v11 = type metadata accessor for PreferenceValues.Value();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v20 - v13;
  v22 = *a1;
  PreferenceValues.subscript.getter();
  v15 = *&v14[*(v11 + 28)];
  v17 = v15 == -1 || *v5 != v15;
  v18 = *v5 == -1 || v17;
  if (*v5 == -1 || v17)
  {
    *v5 = v15;
    (*(*(*(v11 + 16) - 8) + 16))(v10, v14);
    v21(v10);
    (*(v8 + 8))(v10, AssociatedTypeWitness);
  }

  (*(v12 + 8))(v14, v11);
  return v18;
}

uint64_t ContainerBackgroundBridge.updateBridgedBackgroundColor(_:)(id a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(v2 + 64);
    ObjectType = swift_getObjectType();
    v8 = type metadata accessor for ContainerBackgroundHost();
    (*(*(*(v6 + 16) + 8) + 16))(v26, v8, v8, ObjectType);

    v9 = v26[0];
    v10 = v26[1];
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = 0;
  v10 = 0;
  if (a1)
  {
LABEL_3:
    type metadata accessor for UIColor();

    a1 = UIColor.init(_:)(v11);
  }

LABEL_4:
  if (v9)
  {
    v12 = swift_getObjectType();
    v13 = *(v10 + 40);
    v14 = a1;
    swift_unknownObjectRetain();
    v13(a1, v12, v10);
    swift_unknownObjectRelease();
  }

  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = *(v2 + 64);
    v18 = swift_getObjectType();
    v19 = ViewGraphDelegate.uiViewController.getter(v18, *(*(v17 + 16) + 8));

    if (v19)
    {
      type metadata accessor for NavigationStackHostingController<AnyView>(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);
      if (swift_dynamicCastClass())
      {
        v20 = v19;
        if (a1)
        {
          [a1 alphaComponent];
          v22 = v21 == 1.0;
        }

        else
        {
          v22 = 0;
        }

        NavigationStackHostingController<>.updateSidebarGlass(containerBackgroundIsSolid:)(v22);
      }

      type metadata accessor for NavigationStackHostingController<AnyView>(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PresentationHostingController);
      v23 = swift_dynamicCastClass();
      if (v23)
      {
        v24 = [v23 presentingViewController];
        if (v24)
        {

          specialized PresentationHostingController.setPresentationBackgroundEffect(_:)(a1);
        }
      }
    }
  }

  return swift_unknownObjectRelease();
}

unint64_t type metadata accessor for ContainerBackgroundHost()
{
  result = lazy cache variable for type metadata for ContainerBackgroundHost;
  if (!lazy cache variable for type metadata for ContainerBackgroundHost)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ContainerBackgroundHost);
  }

  return result;
}

void specialized SheetBridge.hostingView<A>(_:didChangePreferences:)(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for UITraitOverrides();
  MEMORY[0x1EEE9AC00](v3);
  v4 = *a2;
  v5 = _UIHostingView.viewController.getter();
  if (v5)
  {
    v18 = v5;
    type metadata accessor for PresentationHostingController<AnyView>(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PresentationHostingController);
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v6;
      PreferenceValues.subscript.getter();
      if (v19 == 2)
      {
LABEL_14:
        PreferenceValues.subscript.getter();
        *&v7[direct field offset for PresentationHostingController.lastColumnCount] = v4;

        return;
      }

      v8 = *&v7[direct field offset for UIHostingController.host];
      v9 = *((*MEMORY[0x1E69E7D40] & *v8) + 0xF8);
      v10 = *(v8 + v9);
      *(v8 + v9) = v19;
      v11 = v8;
      specialized _UIHostingView.didChangeColorScheme(from:)(v10);

      v12 = [v7 presentationController];
      if (v12)
      {
        v13 = v12;
        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        if (v14)
        {
          v15 = v14;
LABEL_13:
          UIPresentationController.traitOverrides.getter();
          UIMutableTraits.userInterfaceStyle.setter();
          UIPresentationController.traitOverrides.setter();

          goto LABEL_14;
        }
      }

      v16 = [v7 popoverPresentationController];
      if (!v16)
      {
        goto LABEL_14;
      }

      v17 = v16;
      v15 = [v16 adaptiveSheetPresentationController];

      if (!v15)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }
}

double _UIHostingView.transform3D.getter@<D0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for _UIHostingView(0, *((*MEMORY[0x1E69E7D40] & *v2) + 0x50), *((*MEMORY[0x1E69E7D40] & *v2) + 0x58), a1);
  v10[0].receiver = v2;
  v10[0].super_class = v4;
  [(objc_super *)v10 transform3D];
  v5 = v14;
  *(a2 + 64) = v13;
  *(a2 + 80) = v5;
  v6 = v16;
  *(a2 + 96) = v15;
  *(a2 + 112) = v6;
  v7 = v10[2];
  *a2 = v10[1];
  *(a2 + 16) = v7;
  result = *&v11;
  v9 = v12;
  *(a2 + 32) = v11;
  *(a2 + 48) = v9;
  return result;
}

Swift::Void __swiftcall UIKitNavigationController.viewWillLayoutSubviews()()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for UIKitNavigationController();
  objc_msgSendSuper2(&v5, sel_viewWillLayoutSubviews);
  v1 = [v0 tabBarController];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for UIKitTabBarController();
    v3 = swift_dynamicCastClass();
    if (!v3)
    {
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v0;
  PlatformBarUpdater.callAsFunction(configurations:context:)(0, v0, v3);
}

void @objc NavigationStackCoordinator.navigationController(_:willShow:animated:)(void *a1, uint64_t a2, void *a3, void *a4, Swift::Bool a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  NavigationStackCoordinator.navigationController(_:willShow:animated:)(v8, v9, a5);
}

uint64_t NavigationStackHostingController.hostingView<A>(_:didMoveTo:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v20 = *MEMORY[0x1E69E7D40] & *v2;
  v6 = *((v5 & v4) + 0x3E8);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  v14 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v20 - v16;
  if (a2)
  {
    v21 = xmmword_18CD6A6D0;
    return _UIHostingView.inheritedEnvironment.setter(&v21);
  }

  else
  {
    v19 = *(v20 + 1024);
    swift_beginAccess();
    (*(v8 + 16))(v13, &v2[v19], v7);
    if ((*(v14 + 48))(v13, 1, v6) == 1)
    {
      return (*(v8 + 8))(v13, v7);
    }

    else
    {
      (*(v14 + 32))(v17, v13, v6);
      UIHostingController.setRootView(_:transaction:)(v17, 0);
      (*(v14 + 8))(v17, v6);
      (*(v14 + 56))(v10, 1, 1, v6);
      swift_beginAccess();
      (*(v8 + 40))(&v2[v19], v10, v7);
      return swift_endAccess();
    }
  }
}

void @objc NavigationStackCoordinator.navigationController(_:didShow:animated:)(void *a1, uint64_t a2, void *a3, void *a4, char a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  specialized NavigationStackCoordinator.navigationController(_:didShow:animated:)(v8, a5);
}

uint64_t specialized NavigationStackCoordinator.navigationController(_:didShow:animated:)(id a1, char a2)
{
  v3 = v2;
  v5 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x90)) = 0;
  if (a2 & 1) != 0 && (_s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]), lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>(), (static SemanticFeature.isEnabled.getter()) || (*(v2 + *((*v5 & *v2) + 0x80)) & 1) != 0 || ((v6 = [a1 viewControllers], type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258), v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v6, v7 >> 62) ? (v8 = __CocoaSet.count.getter()) : (v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v8))
  {

    return $defer #1 <A>() in NavigationStackCoordinator.navigationController(_:didShow:animated:)(v2, a1);
  }

  else
  {
    v9 = [a1 viewControllers];
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v10 >> 62)
    {
      v11 = __CocoaSet.count.getter();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    NavigationStackCoordinator.previousContent.getter(v36);
    v12 = NavigationState.Base.count.getter();
    outlined destroy of NavigationState.StackContent(v36);
    if (v11 >= v12)
    {
      return $defer #1 <A>() in NavigationStackCoordinator.navigationController(_:didShow:animated:)(v3, a1);
    }

    *(v3 + *((*v5 & *v3) + 0x78)) = 0;
    result = outlined init with copy of NavigationAuthority(v3 + *((*v5 & *v3) + 0x68), v35);
    v14 = v12 - v11;
    if (!__OFSUB__(v12, v11))
    {
      NavigationStackCoordinator.previousContent.getter(v36);
      NavigationState.StackContent.topKey.getter();
      v16 = v15;
      v18 = v17;
      v20 = v19;
      outlined destroy of NavigationState.StackContent(v36);
      static Transaction.current.getter();
      static Transaction.current.getter();
      v21 = Transaction.disablesAnimations.getter();

      if (v21)
      {
        v22 = 1;
      }

      else
      {
        v22 = Transaction.disablesAnimations.getter();
      }

      static Transaction.current.getter();
      v23 = Transaction.animation.getter();

      if (!v23)
      {
        v23 = Transaction.animation.getter();
      }

      v24 = v14;
      v25 = 0;
      v26 = 9;
      v27 = v16;
      v28 = v18;
      v29 = v20;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = v22 & 1;
      v34 = v23;
      NavigationAuthority.enqueueRequest(_:)(&v24);
      outlined destroy of NavigationRequest(&v24);
      outlined destroy of NavigationAuthority(v35);
      return $defer #1 <A>() in NavigationStackCoordinator.navigationController(_:didShow:animated:)(v3, a1);
    }

    __break(1u);
  }

  return result;
}

void *NavigationStackCoordinator.previousContent.getter@<X0>(void *a1@<X8>)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB0);
  swift_beginAccess();
  outlined init with copy of NavigationState.StackContent?(v1 + v4, __src, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  if (__src[448] != 255)
  {
    return memcpy(a1, __src, 0x1C1uLL);
  }

  result = outlined destroy of PPTTestCase?(__src, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  v6 = v1 + *((*v3 & *v1) + 0x60);
  v7 = *v6;
  v8 = v6[8];
  v9 = *(v6 + 2);
  if (v8 == 4)
  {
    LOBYTE(v8) = 0;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  a1[2] = v9;
  *(a1 + 448) = 0;
  return result;
}

uint64_t NavigationState.Base.count.getter()
{
  v1 = outlined init with copy of NavigationState.Base(v0, v17);
  if (!v20)
  {
    return 1;
  }

  if (v20 != 1)
  {
    LOWORD(v16[4]) = v17[9];
    v16[2] = *&v17[5];
    v16[3] = *&v17[7];
    v16[0] = *&v17[1];
    v16[1] = *&v17[3];
    v14[0] = v17[0];
    MEMORY[0x1EEE9AC00](v1);
    v12 = v14;
    v13 = v16;
    v3 = specialized Sequence.reduce<A>(_:_:)(0, partial apply for specialized closure #1 in Collection<>.collapsedItemCount<A>(within:splitViewState:), &v11, 0, v4);
    outlined destroy of Binding<NavigationSplitViewColumn>(v16, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);

    return v3;
  }

  v12 = v19;
  v11 = v18;
  outlined consume of ResolvedNavigationDestinations?(v17[45], v17[46], v17[47], v17[48], v17[49], v17[50], v17[51], v17[52]);
  memcpy(v16, v17, 0x163uLL);
  v2 = outlined init with copy of NavigationColumnState.ColumnContent(&v16[7] + 8, v14);
  if (v15)
  {
    outlined destroy of NavigationColumnState(v16);
    v3 = 1;
LABEL_9:
    outlined destroy of Binding<NavigationSplitViewColumn>(v14, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    return v3;
  }

  v5 = v14[13];
  v6 = (*(*v14[12] + 88))(v2);

  result = outlined destroy of NavigationColumnState(v16);
  v8 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    v9 = *(v5 + 16);

    v10 = __OFADD__(v8, v9);
    v3 = v8 + v9;
    if (!v10)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized getter of contentSizeChanged #1 in ScrollViewAdjustedState.alignIfNeeded(_:axis:newSize:newContentFrame:anchors:)(_BYTE *a1, uint64_t a2, char a3, double a4, double a5)
{
  v5 = *a1;
  if (v5 == 2)
  {
    if (a3)
    {
      a4 = a5;
    }

    v6 = 72;
    if ((a3 & 1) == 0)
    {
      v6 = 64;
    }

    LOBYTE(v5) = *(a2 + v6) != a4;
    swift_beginAccess();
    *a1 = v5;
  }

  return v5 & 1;
}

uint64_t assignWithCopy for ScrollTransitionModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);

  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  outlined copy of ScrollTransitionConfiguration.Mode(v5, v6, v7, v8, v9, v10);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v16 = *(a1 + 64);
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  *(a1 + 64) = v10;
  outlined consume of ScrollTransitionConfiguration.Mode(v11, v12, v13, v14, v15, v16);
  *(a1 + 72) = *(a2 + 72);

  v17 = *(a2 + 80);
  v18 = *(a2 + 88);
  v19 = *(a2 + 96);
  v20 = *(a2 + 104);
  v21 = *(a2 + 112);
  v22 = *(a2 + 120);
  outlined copy of ScrollTransitionConfiguration.Mode(v17, v18, v19, v20, v21, v22);
  v23 = *(a1 + 80);
  v24 = *(a1 + 88);
  v25 = *(a1 + 96);
  v26 = *(a1 + 104);
  v27 = *(a1 + 112);
  v28 = *(a1 + 120);
  *(a1 + 80) = v17;
  *(a1 + 88) = v18;
  *(a1 + 96) = v19;
  *(a1 + 104) = v20;
  *(a1 + 112) = v21;
  *(a1 + 120) = v22;
  outlined consume of ScrollTransitionConfiguration.Mode(v23, v24, v25, v26, v27, v28);
  *(a1 + 128) = *(a2 + 128);
  return a1;
}

uint64_t static ScrollTransitionModifier._makeView(modifier:inputs:body:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v106 = *MEMORY[0x1E69E9840];
  v49 = *a1;
  v8 = *(a2 + 48);
  v85 = *(a2 + 32);
  v86 = v8;
  v87 = *(a2 + 64);
  v88 = *(a2 + 80);
  v9 = *(a2 + 16);
  *v84 = *a2;
  *&v84[16] = v9;
  *v95 = v49;
  type metadata accessor for ScrollTransitionModifier(255, a5, a6, a4);
  type metadata accessor for _GraphValue();
  v10 = _GraphValue.value.getter();
  v102 = v85;
  v103 = v86;
  v104 = v87;
  v105 = v88;
  *v101 = *v84;
  *&v101[16] = *&v84[16];
  v11 = _ViewInputs.position.getter();
  v54 = DWORD2(v87);
  v51 = *&v84[16];
  v52 = HIDWORD(v86);
  swift_beginAccess();
  v12 = *MEMORY[0x1E698D3F8];
  v53 = v12;
  v13 = *(*&v84[16] + 16);
  *v101 = (v10 << 32) | 1;
  *&v101[8] = v11 | (DWORD2(v87) << 32);
  *&v101[16] = HIDWORD(v86) | (v13 << 32);
  *&v101[24] = v12;
  v15 = type metadata accessor for ScrollTransitionModifier.StageProgress(0, v7, a6, v14);
  v70 = v15;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ScrollTransitionModifier<A>.StageProgress, v15);
  v71 = WitnessTable;
  v16 = MEMORY[0x1E698D388];
  type metadata accessor for Attribute<ScrollTransitionProgress>(0, &lazy cache variable for type metadata for Attribute<ScrollTransitionProgress>, &unk_1EFFB51F0, MEMORY[0x1E698D388]);
  v46 = v17;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v101, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_14, v69, v15, MEMORY[0x1E69E73E0], v17, MEMORY[0x1E69E7410], v18);
  v83[0] = *v84;
  *(v83 + 12) = *&v84[12];
  v79 = v85;
  v80 = v86;
  v81 = v87;
  v82 = v88;
  *v95 = v49;
  outlined init with copy of _ViewInputs(v84, v101);
  _GraphValue.value.getter();
  v50 = a6;
  closure #1 in static ScrollTransitionModifier._makeView(modifier:inputs:body:)(1, a5, a6, v19);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v45 = *&v84[28];
  *v101 = OffsetAttribute2;
  *&v101[4] = *&v84[28];
  v22 = type metadata accessor for ScrollTransitionModifier.ConfigurationTransaction(0, a5, a6, v21);
  v67 = v22;
  v44 = swift_getWitnessTable(protocol conformance descriptor for ScrollTransitionModifier<A>.ConfigurationTransaction, v22);
  v68 = v44;
  type metadata accessor for Attribute<ScrollTransitionProgress>(0, &lazy cache variable for type metadata for Attribute<Transaction>, MEMORY[0x1E697DD78], v16);
  v43 = v23;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v101, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_14, v66, v22, MEMORY[0x1E69E73E0], v23, MEMORY[0x1E69E7410], v24);
  LODWORD(v16) = *v95;
  v48 = *v95;
  _GraphValue.init(_:)();
  *&v89[12] = *(v83 + 12);
  *v89 = v83[0];
  *&v89[28] = v16;
  v90 = v79;
  *v101 = v83[0];
  *&v101[16] = *&v89[16];
  v102 = v79;
  outlined init with copy of _GraphInputs(v89, v95);
  static Animatable._makeAnimatable(value:inputs:)();
  v91[0] = *v101;
  v91[1] = *&v101[16];
  v91[2] = v102;
  outlined destroy of _GraphInputs(v91);
  *v95 = v49;
  v25 = _GraphValue.value.getter();
  v102 = v85;
  v103 = v86;
  v104 = v87;
  v105 = v88;
  *v101 = *v84;
  *&v101[16] = *&v84[16];
  v26 = _ViewInputs.position.getter();
  v27 = *(v51 + 16);
  *v101 = v25 << 32;
  *&v101[8] = v26 | (v54 << 32);
  *&v101[16] = v52 | (v27 << 32);
  *&v101[24] = v53;
  v64 = v15;
  v65 = WitnessTable;
  v28 = v15;
  v29 = MEMORY[0x1E69E73E0];
  v30 = MEMORY[0x1E69E7410];
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v101, closure #1 in Attribute.init<A>(_:)partial apply, v63, v28, MEMORY[0x1E69E73E0], v46, MEMORY[0x1E69E7410], v31);
  v78[0] = *v84;
  *(v78 + 12) = *&v84[12];
  v74 = v85;
  v75 = v86;
  v76 = v87;
  v77 = v88;
  *v95 = v49;
  outlined init with copy of _ViewInputs(v84, v101);
  _GraphValue.value.getter();
  closure #2 in static ScrollTransitionModifier._makeView(modifier:inputs:body:)(1, a5, v50, v32);
  *v101 = AGGraphCreateOffsetAttribute2();
  *&v101[4] = v45;
  v61 = v22;
  v62 = v44;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v101, closure #1 in Attribute.init<A>(_:)partial apply, v60, v22, v29, v43, v30, v33);
  LODWORD(v22) = *v95;
  _GraphValue.init(_:)();
  *&v92[12] = *(v78 + 12);
  *v92 = v78[0];
  *&v92[28] = v22;
  v93 = v74;
  *v101 = v78[0];
  *&v101[16] = *&v92[16];
  v102 = v74;
  outlined init with copy of _GraphInputs(v92, v95);
  static Animatable._makeAnimatable(value:inputs:)();
  v94[0] = *v101;
  v94[1] = *&v101[16];
  v94[2] = v102;
  outlined destroy of _GraphInputs(v94);
  type metadata accessor for Attribute<ScrollTransitionProgress>(0, &lazy cache variable for type metadata for _GraphValue<ScrollTransitionProgress>, &unk_1EFFB51F0, MEMORY[0x1E697DDB8]);
  LODWORD(v29) = _GraphValue.value.getter();
  v34 = _GraphValue.value.getter();
  *v95 = v49;
  LODWORD(v7) = _GraphValue.value.getter();
  v102 = v85;
  v103 = v86;
  v104 = v87;
  v105 = v88;
  *v101 = *v84;
  *&v101[16] = *&v84[16];
  v35 = _ViewInputs.position.getter();
  v36 = *(v51 + 16);
  *v101 = v29 | (v34 << 32);
  *&v101[8] = v7 | (v35 << 32);
  *&v101[16] = v54 | (v52 << 32);
  *&v101[24] = v36 | (v53 << 32);
  v38 = type metadata accessor for ScrollTransitionModifier.EffectApplicationModifier(0, a5, v50, v37);
  v57 = v38;
  v58 = type metadata accessor for ScrollTransitionModifier.EffectRule(0, a5, v50, v39);
  v59 = swift_getWitnessTable(protocol conformance descriptor for ScrollTransitionModifier<A>.EffectRule, v58);
  v40 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v101, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v56, v58, MEMORY[0x1E69E73E0], v40, v30, v41);
  _GraphValue.init(_:)();
  v72[2] = v85;
  v72[3] = v86;
  v72[4] = v87;
  v73 = v88;
  v72[0] = *v84;
  v72[1] = *&v84[16];
  swift_getWitnessTable(protocol conformance descriptor for ScrollTransitionModifier<A>.EffectApplicationModifier, v38);
  static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
  *v95 = v78[0];
  *&v95[12] = *(v78 + 12);
  v97 = v74;
  v98 = v75;
  v99 = v76;
  v96 = v22;
  v100 = v77;
  outlined destroy of _ViewInputs(v95);
  *v101 = v83[0];
  *&v101[12] = *(v83 + 12);
  v102 = v79;
  v103 = v80;
  v104 = v81;
  *&v101[28] = v48;
  v105 = v82;
  return outlined destroy of _ViewInputs(v101);
}

void type metadata accessor for Attribute<ScrollTransitionProgress>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ScrollTransitionModifier<A>.ConfigurationTransaction(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ScrollTransitionModifier<A>.ConfigurationTransaction, a1);

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ScrollTransitionModifier<A>.EffectRule(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ScrollTransitionModifier<A>.EffectRule, a1);

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t implicit closure #8 in static SystemScrollView._makeView(view:inputs:)(__int128 *a1)
{
  _ViewInputs.position.getter();
  _GraphInputs.pixelLength.getter();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)(0, &lazy cache variable for type metadata for (_:), &lazy cache variable for type metadata for [FocusableFillerBounds], MEMORY[0x1E697FC28], &parameter_flags_9);
  lazy protocol witness table accessor for type FocusableFillerBoundsTransform and conformance FocusableFillerBoundsTransform();
  return Attribute.init<A>(body:value:flags:update:)();
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance NavigationDestinationScopeModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(v4, v8, a3, a4);
}

uint64_t View.accessibilityRemoveTraits(_:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (v3 <= 0x3F)
  {
    v4 = 1 << v3;
  }

  else
  {
    v4 = 0;
  }

  v6[2] = 0;
  v6[3] = v4;
  return View.accessibility(isEnabled:body:)(1, partial apply for closure #1 in View.accessibilityTraits(_:), v6, a2, a3);
}

uint64_t closure #1 in ModifiedContent<>.accessibilityInputLabels<A>(_:isEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = Text.init<A>(_:)();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

uint64_t closure #1 in ScrollTransitionModifier.EffectApplicationModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v26 = a1;
  v27 = a2;
  v28 = a5;
  v11 = type metadata accessor for ScrollTransitionModifier.EffectApplicationModifier(255, a3, a4, a3);
  swift_getWitnessTable(protocol conformance descriptor for ScrollTransitionModifier<A>.EffectApplicationModifier, v11);
  type metadata accessor for _ViewModifier_Content();
  v12 = type metadata accessor for PlaceholderContentView();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FEC8], v12);
  v29 = v12;
  v30 = a3;
  v31 = WitnessTable;
  v32 = a4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v15 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v25 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  *(v21 + 32) = a6;
  *(v21 + 40) = a7;
  *(v21 + 48) = v26;
  *(v21 + 56) = v27;

  v22 = swift_checkMetadataState();
  MEMORY[0x18D00A170](partial apply for closure #1 in closure #1 in ScrollTransitionModifier.EffectApplicationModifier.body(content:), v21, v22, a3, WitnessTable, a4);

  v29 = v22;
  v30 = a3;
  v31 = WitnessTable;
  v32 = a4;
  swift_getOpaqueTypeConformance2();
  static ViewBuilder.buildExpression<A>(_:)();
  v23 = *(v15 + 8);
  v23(v17, OpaqueTypeMetadata2);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v23)(v20, OpaqueTypeMetadata2);
}

uint64_t sub_18BF32834()
{

  return swift_deallocObject();
}

uint64_t ScrollTransitionModifier.ConfigurationTransaction.value.getter(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *AGGraphGetValue();

  ScrollTransitionModifier.ConfigurationTransaction.configuration.getter(&v11);
  v3 = v12;
  v4 = v13;
  v5 = v14;
  v6 = v15;
  v7 = v16;
  v8 = v17;
  outlined copy of ScrollTransitionConfiguration.Mode(v12, v13, v14, v15, v16, v17);

  outlined consume of ScrollTransitionConfiguration.Mode(v3, v4, v5, v6, v7, v8);
  if (!(v7 >> 62) || (v7 >> 62 == 1 ? (v9 = v8 == 0) : (v9 = 1), !v9))
  {
    Transaction.animation.setter();
  }

  return v18;
}

double ScrollTransitionModifier.ConfigurationTransaction.configuration.getter@<D0>(uint64_t *a2@<X8>)
{
  Value = AGGraphGetValue();
  v4 = Value[1];
  v5 = Value[2];
  v6 = Value[3];
  v7 = Value[4];
  v8 = Value[5];
  v9 = Value[6];
  *a2 = *Value;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v9;

  return outlined copy of ScrollTransitionConfiguration.Mode(v4, v5, v6, v7, v8, v9);
}

void type metadata accessor for SearchTextClearAction?()
{
  if (!lazy cache variable for type metadata for SearchTextClearAction?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SearchTextClearAction?);
    }
  }
}

BOOL _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA020SearchFieldPlacementD033_01524358DA8FEB8BCC0A94C08F00494ALLV_Tt1g5(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 > 4u)
  {
    if (a1 == 5)
    {
      return a2 == 5;
    }

    if (a1 != 6)
    {
      if (a1 == 7)
      {
        return a2 == 7;
      }

LABEL_16:
      if (a2 - 2 >= 6)
      {
        return ((a2 ^ a1) & 1) == 0;
      }

      return 0;
    }

    if (a2 == 6)
    {
      return 1;
    }
  }

  else
  {
    if (a1 == 2)
    {
      return a2 == 2;
    }

    if (a1 != 3)
    {
      if (a1 == 4)
      {
        return a2 == 4;
      }

      goto LABEL_16;
    }

    if (a2 == 3)
    {
      return 1;
    }
  }

  return 0;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(_OWORD *result, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v7 + 1);
  }

  v9 = *v3;
  Hasher.init(_seed:)();
  ToolbarItemPlacement.Role.hash(into:)(v20);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      outlined init with copy of ToolbarItemPlacement.Role(*(v9 + 48) + 48 * a2, v20);
      v13 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(v20, result);
      outlined destroy of ToolbarItemPlacement.Role(v20);
      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v15 = (*(v14 + 48) + 48 * a2);
  v16 = result[1];
  *v15 = *result;
  v15[1] = v16;
  *(v15 + 25) = *(result + 25);
  v17 = *(v14 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v14 + 16) = v19;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t outlined destroy of PlatformItemList.Item?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _s7SwiftUI16CommandOperationVSgMaTm_1(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _s7SwiftUI16CommandOperationVSgMaTm_2(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t outlined init with take of ToolbarStorage.Item(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI14ToolbarStorageV4ItemVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void protocol witness for Hashable.hash(into:) in conformance ToolbarStorage.ID(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[5];
  _ViewList_ID.hash(into:)();
  MEMORY[0x18D00F6F0](v3);
  MEMORY[0x18D00F6F0](v4);
  if (v5)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t _sypSgWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for [TableColumnCustomizationID](0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _sypSgWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _sypSgWOcTm_2(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _sypSgWOcTm_3(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for ViewTransform?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

double destroy for OnScrollVisibilityChangeModifier(uint64_t a1)
{

  return result;
}

void type metadata accessor for _DictionaryStorage<String, Toolbar.VendedItem>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<String, Toolbar.VendedItem>)
  {
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<String, Toolbar.VendedItem>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<BarItemView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<BarItemView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BarItemView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BarItemView>.EnableVFDFeature, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for _UIHostingView.EnableVFDFeature);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>.EnableVFDFeature, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BarItemView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature);
  }

  return result;
}

uint64_t outlined destroy of _UIHostingView<BarItemView>.HostViewGraph(uint64_t a1)
{
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<BarItemView>.HostViewGraph, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for _UIHostingView.HostViewGraph);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BarItemView>, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BarItemView>, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BarItemView>, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BarItemView>, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BarItemView>, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BarItemView> and conformance _UIHostingView<A>);
  }

  return result;
}

void destroy for BarItemView(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  JUMPOUT(0x18D011290);
}

id specialized UIKitBarButtonItem.init(item:context:host:)(uint64_t a1, char *a2, unsigned int a3, void *a4)
{
  v5 = v4;
  v27 = a4;
  v25 = a3;
  v28 = a2;
  ObjectType = swift_getObjectType();
  v24 = type metadata accessor for ToolbarStorage.Item;
  v23 = MEMORY[0x1E69E6720];
  type metadata accessor for ToolbarStorage.Item?(0, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - v8;
  v10 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_item;
  v11 = type metadata accessor for ToolbarStorage.Item(0);
  v12 = *(*(v11 - 8) + 56);
  v12(&v4[v10], 1, 1, v11);
  v13 = &v4[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_listView];
  *v13 = 0u;
  v13[1] = 0u;
  v13[2] = 0u;
  v13[3] = 0u;
  v13[4] = 0u;
  v13[5] = 0u;
  v14 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_edge;
  v4[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_edge] = 2;
  *&v4[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_menuDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_platformItem;
  v16 = type metadata accessor for PlatformItemList.Item(0);
  (*(*(v16 - 8) + 56))(&v5[v15], 1, 1, v16);
  v17 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_hasOwnMenuSection;
  v5[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_hasOwnMenuSection] = 0;
  *&v5[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_tintColorTracker] = -1;
  *&v5[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_cachedMenuRepresentation] = 0;
  *&v5[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_cachedMenuChildren] = 0;
  outlined init with copy of ToolbarStorage.GroupItem.CollapsedContent.Value(a1, v9, type metadata accessor for ToolbarStorage.Item);
  v12(v9, 0, 1, v11);
  swift_beginAccess();
  outlined assign with take of PlatformItemList.Item?(v9, &v5[v10], &lazy cache variable for type metadata for ToolbarStorage.Item?, v24, v23, type metadata accessor for ToolbarStorage.Item?);
  swift_endAccess();
  memset(v29, 0, sizeof(v29));
  swift_beginAccess();
  outlined assign with take of PlatformItemList.Item?(v29, v13, &lazy cache variable for type metadata for _ViewList_View?, MEMORY[0x1E697D9F0], MEMORY[0x1E69E6720], _ss23_ContiguousArrayStorageCyyXlGMaTm_0);
  swift_endAccess();
  LOBYTE(v9) = v25;
  v5[v14] = v25;
  v18 = v27;
  *&v5[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_host] = v27;
  v5[v17] = *(a1 + *(v11 + 80));
  v32.receiver = v5;
  v32.super_class = ObjectType;
  v19 = v18;
  v20 = objc_msgSendSuper2(&v32, sel_init);
  outlined init with copy of _ViewList_View(a1 + 184, v29);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v30 = v9;
  v31 = 0;
  v21 = v20;
  UIKitBarButtonItem.initialize(rootView:context:)(v29, v28);

  _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(a1, type metadata accessor for ToolbarStorage.Item);
  outlined destroy of BarItemView(v29);
  return v21;
}

uint64_t PlatformItemListTransformModifier.Transform.value.getter(unint64_t a1, uint64_t a2, uint64_t a3)
{
  MergePlatformItemsView.Transform.list.getter(a1);
  v7 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = v5;
  }

  v10 = v7;
  type metadata accessor for PlatformItemListTransformModifier(0, a2, a3, v6);
  v8 = *AGGraphGetValue();

  v8(&v10);

  return v10;
}

uint64_t protocol witness for Rule.value.getter in conformance PlatformItemListTransformModifier<A>.Transform@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = PlatformItemListTransformModifier.Transform.value.getter(*v2, *(a1 + 16), *(a1 + 24));
  *a2 = result;
  return result;
}

uint64_t sub_18BF33CB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CommandGroupPlacement(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t initializeWithCopy for PlatformItemList.Item(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  v7 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v7;
  *(a1 + 32) = *(a2 + 32);
  v8 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v8;
  *(a1 + 56) = *(a2 + 56);
  v9 = *(a2 + 192);
  v10 = v5;
  v11 = v6;

  if (v9 >> 1 != 4294967294)
  {
    v21 = *(a2 + 72);
    if (v21 == 255)
    {
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);
    }

    else
    {
      v22 = *(a2 + 64);
      outlined copy of GraphicsImage.Contents(v22, *(a2 + 72));
      *(a1 + 64) = v22;
      *(a1 + 72) = v21;
      v9 = *(a2 + 192);
    }

    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 108) = *(a2 + 108);
    *(a1 + 121) = *(a2 + 121);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 170) = *(a2 + 170);
    *(a1 + 171) = *(a2 + 171);
    if (v9 >> 1 == 0xFFFFFFFF)
    {
      v23 = *(a2 + 192);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 192) = v23;
    }

    else
    {
      v24 = *(a2 + 176);
      v25 = *(a2 + 184);
      v26 = *(a2 + 200);
      outlined copy of AccessibilityImageLabel(v24, v25, v9, v26);
      *(a1 + 176) = v24;
      *(a1 + 184) = v25;
      *(a1 + 192) = v9;
      *(a1 + 200) = v26;
    }

    v27 = *(a2 + 216);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = v27;
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 228) = *(a2 + 228);
    *(a1 + 232) = *(a2 + 232);
    v28 = *(a2 + 240);
    *(a1 + 240) = v28;
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 250) = *(a2 + 250);
    swift_unknownObjectRetain();

    v29 = v28;
    v17 = *(a2 + 264);
    if (v17)
    {
      goto LABEL_3;
    }

LABEL_13:
    v30 = *(a2 + 272);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = v30;
    *(a1 + 288) = *(a2 + 288);
    goto LABEL_14;
  }

  v12 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v12;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 235) = *(a2 + 235);
  v13 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v13;
  v14 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v14;
  v15 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v15;
  v16 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v16;
  v17 = *(a2 + 264);
  if (!v17)
  {
    goto LABEL_13;
  }

LABEL_3:
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = v17;
  v18 = *(a2 + 272);

  if (v18 >= 2)
  {
    v19 = v18;
  }

  *(a1 + 272) = v18;
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 284) = *(a2 + 284);
  *(a1 + 285) = *(a2 + 285);
  v20 = *(a2 + 296);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = v20;

LABEL_14:
  v31 = *(a2 + 336);
  if (v31 >> 2 == 0xFFFFFFFF)
  {
    v32 = *(a2 + 384);
    *(a1 + 368) = *(a2 + 368);
    *(a1 + 384) = v32;
    *(a1 + 400) = *(a2 + 400);
    v33 = *(a2 + 320);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 320) = v33;
    v34 = *(a2 + 352);
    *(a1 + 336) = *(a2 + 336);
    *(a1 + 352) = v34;
  }

  else
  {
    v35 = *(a2 + 304);
    v36 = *(a2 + 312);
    v37 = *(a2 + 320);
    v38 = *(a2 + 328);
    v39 = *(a2 + 344);
    v40 = *(a2 + 352);
    v41 = *(a2 + 360);
    v98 = *(a2 + 368);
    v99 = *(a2 + 376);
    v101 = *(a2 + 384);
    v103 = *(a2 + 392);
    __dsta = *(a2 + 400);
    outlined copy of PlatformItemList.Item.SystemItem(v35, v36, v37, v38, v31, v39, v40, v41, v98, v99, v101, v103, __dsta);
    *(a1 + 304) = v35;
    *(a1 + 312) = v36;
    *(a1 + 320) = v37;
    *(a1 + 328) = v38;
    *(a1 + 336) = v31;
    *(a1 + 344) = v39;
    *(a1 + 352) = v40;
    *(a1 + 360) = v41;
    *(a1 + 368) = v98;
    *(a1 + 376) = v99;
    *(a1 + 384) = v101;
    *(a1 + 392) = v103;
    *(a1 + 400) = __dsta;
  }

  v42 = *(a2 + 416);
  if (v42 == 1)
  {
    v43 = *(a2 + 456);
    *(a1 + 440) = *(a2 + 440);
    *(a1 + 456) = v43;
    *(a1 + 472) = *(a2 + 472);
    v44 = *(a2 + 424);
    *(a1 + 408) = *(a2 + 408);
    *(a1 + 424) = v44;
    goto LABEL_27;
  }

  *(a1 + 408) = *(a2 + 408);
  *(a1 + 412) = *(a2 + 412);
  if (v42)
  {
    v45 = *(a2 + 424);
    *(a1 + 416) = v42;
    *(a1 + 424) = v45;

    v46 = *(a2 + 432);
    if (v46)
    {
      goto LABEL_21;
    }

LABEL_24:
    *(a1 + 432) = *(a2 + 432);
    v48 = *(a2 + 448);
    if (v48)
    {
      goto LABEL_22;
    }

LABEL_25:
    *(a1 + 448) = *(a2 + 448);
    goto LABEL_26;
  }

  *(a1 + 416) = *(a2 + 416);
  v46 = *(a2 + 432);
  if (!v46)
  {
    goto LABEL_24;
  }

LABEL_21:
  v47 = *(a2 + 440);
  *(a1 + 432) = v46;
  *(a1 + 440) = v47;

  v48 = *(a2 + 448);
  if (!v48)
  {
    goto LABEL_25;
  }

LABEL_22:
  v49 = *(a2 + 456);
  *(a1 + 448) = v48;
  *(a1 + 456) = v49;

LABEL_26:
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 472) = *(a2 + 472);
LABEL_27:
  v50 = *(a2 + 488);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 488) = v50;
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 504) = *(a2 + 504);
  v51 = *(a2 + 512);

  if (v51)
  {
    v52 = *(a2 + 520);
    *(a1 + 512) = v51;
    *(a1 + 520) = v52;
  }

  else
  {
    *(a1 + 512) = *(a2 + 512);
  }

  *(a1 + 528) = *(a2 + 528);
  if (!*(a2 + 816))
  {
    memcpy((a1 + 536), (a2 + 536), 0x130uLL);
    goto LABEL_42;
  }

  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 592) = *(a2 + 592);
  v53 = (a1 + 600);
  v54 = (a2 + 600);
  v55 = *(a2 + 624);

  if (!v55)
  {
    v57 = *(a2 + 616);
    *v53 = *v54;
    *(a1 + 616) = v57;
    *(a1 + 632) = *(a2 + 632);
LABEL_37:
    *(a1 + 640) = *(a2 + 640);

    goto LABEL_38;
  }

  if (v55 != 1)
  {
    *(a1 + 624) = v55;
    *(a1 + 632) = *(a2 + 632);
    (**(v55 - 8))(a1 + 600, a2 + 600, v55);
    goto LABEL_37;
  }

  v56 = *(a2 + 616);
  *v53 = *v54;
  *(a1 + 616) = v56;
  *(a1 + 632) = *(a2 + 632);
LABEL_38:
  *(a1 + 648) = *(a2 + 648);
  *(a1 + 656) = *(a2 + 656);
  v58 = (a1 + 664);
  v59 = (a2 + 664);
  v60 = *(a2 + 776);
  if (v60 == 1)
  {
    v61 = *(a2 + 776);
    *(a1 + 760) = *(a2 + 760);
    *(a1 + 776) = v61;
    *(a1 + 792) = *(a2 + 792);
    *(a1 + 808) = *(a2 + 808);
    v62 = *(a2 + 712);
    *(a1 + 696) = *(a2 + 696);
    *(a1 + 712) = v62;
    v63 = *(a2 + 744);
    *(a1 + 728) = *(a2 + 728);
    *(a1 + 744) = v63;
    v64 = *(a2 + 680);
    *v58 = *v59;
    *(a1 + 680) = v64;
  }

  else
  {
    *v58 = *v59;
    *(a1 + 672) = *(a2 + 672);
    *(a1 + 680) = *(a2 + 680);
    *(a1 + 688) = *(a2 + 688);
    *(a1 + 689) = *(a2 + 689);
    *(a1 + 691) = *(a2 + 691);
    *(a1 + 692) = *(a2 + 692);
    *(a1 + 696) = *(a2 + 696);
    v65 = *(a2 + 720);
    *(a1 + 704) = *(a2 + 704);
    *(a1 + 720) = v65;
    *(a1 + 736) = *(a2 + 736);
    *(a1 + 744) = *(a2 + 744);
    *(a1 + 752) = *(a2 + 752);
    *(a1 + 768) = *(a2 + 768);
    *(a1 + 776) = v60;
    *(a1 + 784) = *(a2 + 784);
    *(a1 + 800) = *(a2 + 800);
    *(a1 + 808) = *(a2 + 808);
  }

  *(a1 + 816) = *(a2 + 816);
  *(a1 + 824) = *(a2 + 824);
  *(a1 + 832) = *(a2 + 832);

LABEL_42:
  v66 = (a1 + 840);
  v67 = (a2 + 840);
  v68 = *(a2 + 864);
  if (v68)
  {
    if (v68 == 1)
    {
      v69 = *(a2 + 856);
      *v66 = *v67;
      *(a1 + 856) = v69;
      *(a1 + 872) = *(a2 + 872);
      *(a1 + 888) = *(a2 + 888);
      goto LABEL_49;
    }

    *(a1 + 864) = v68;
    *(a1 + 872) = *(a2 + 872);
    (**(v68 - 8))(v66, v67);
    v71 = *(a2 + 880);
    if (!v71)
    {
      goto LABEL_48;
    }

LABEL_46:
    v72 = *(a2 + 888);
    *(a1 + 880) = v71;
    *(a1 + 888) = v72;

    goto LABEL_49;
  }

  v70 = *(a2 + 856);
  *v66 = *v67;
  *(a1 + 856) = v70;
  *(a1 + 872) = *(a2 + 872);
  v71 = *(a2 + 880);
  if (v71)
  {
    goto LABEL_46;
  }

LABEL_48:
  *(a1 + 880) = *(a2 + 880);
LABEL_49:
  v73 = *(a2 + 896);
  *(a1 + 896) = v73;
  *(a1 + 904) = *(a2 + 904);
  *(a1 + 912) = *(a2 + 912);
  *(a1 + 920) = *(a2 + 920);
  *(a1 + 928) = *(a2 + 928);
  *(a1 + 936) = *(a2 + 936);
  v74 = *(a2 + 944);
  *(a1 + 952) = *(a2 + 952);
  *(a1 + 954) = *(a2 + 954);
  v75 = a3[28];
  __dst = (a1 + v75);
  v76 = (a2 + v75);
  *(a1 + 944) = v74;
  v77 = type metadata accessor for CommandOperation(0);
  v102 = *(v77 - 8);
  v104 = *(v102 + 48);
  v78 = v73;
  v79 = v76;

  if (v104(v76, 1, v77))
  {
    _s7SwiftUI16CommandOperationVSgMaTm_0(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    memcpy(__dst, v76, *(*(v80 - 8) + 64));
  }

  else
  {
    *__dst = *v76;
    v81 = *(v77 + 20);
    v82 = v77;
    v83 = &__dst[v81];
    v84 = &v79[v81];
    v105 = v79;
    v85 = *&v79[v81];
    v86 = *(v84 + 1);
    v87 = v84[16];
    outlined copy of Text.Storage(v85, v86, v87);
    *v83 = v85;
    *(v83 + 1) = v86;
    v83[16] = v87;
    *(v83 + 3) = *(v84 + 3);
    v88 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v89 = type metadata accessor for UUID();
    v100 = *(*(v89 - 8) + 16);

    v100(&v83[v88], &v84[v88], v89);
    v90 = *(v82 + 24);
    v91 = &__dst[v90];
    v92 = &v105[v90];
    if (*v92)
    {
      v93 = v92[1];
      *v91 = *v92;
      v91[1] = v93;
    }

    else
    {
      *v91 = *v92;
    }

    (*(v102 + 56))(__dst, 0, 1, v82);
  }

  v94 = a3[30];
  *(a1 + a3[29]) = *(a2 + a3[29]);
  *(a1 + v94) = *(a2 + v94);
  v95 = a3[32];
  *(a1 + a3[31]) = *(a2 + a3[31]);
  *(a1 + v95) = *(a2 + v95);
  v96 = a3[34];
  *(a1 + a3[33]) = *(a2 + a3[33]);
  *(a1 + v96) = *(a2 + v96);

  return a1;
}

double outlined copy of Image.NamedResolved?(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {

    outlined copy of Image.Location(a3);
  }

  return result;
}

uint64_t _s7SwiftUI5ImageVAAE8ResolvedVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 128) >> 1;
  v2 = -2 - v1;
  if (-2 - v1 < 0)
  {
    v2 = -1;
  }

  if (v1 > 0x80000000)
  {
    return (v2 + 1);
  }

  else
  {
    return 0;
  }
}

double outlined consume of Image.NamedResolved?(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {

    outlined consume of Image.Location(a3);
  }

  return result;
}

id outlined copy of Image.Location(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t (*ButtonActionModifier.PlatformSelectionBehavior.value.getter(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ButtonActionModifier(0, a3, a4, a4);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  ButtonActionModifier.PlatformSelectionBehavior.modifier.getter(a3, a4, &v19 - v11);
  v13 = *AGGraphGetValue();
  v14 = *AGGraphGetValue();
  v15 = *(v7 + 32);
  v15(v9, v12, v6);
  v16 = (*(v7 + 80) + 34) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v17 + 32) = v13;
  *(v17 + 33) = v14;
  v15((v17 + v16), v9, v6);
  return partial apply for closure #1 in ButtonActionModifier.PlatformSelectionBehavior.value.getter;
}

uint64_t sub_18BF34950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for ButtonActionModifier(0, v5, *(v4 + 24), a4) - 8);
  (*(*(v5 - 8) + 8))(v4 + ((*(v6 + 80) + 34) & ~*(v6 + 80)), v5);

  return swift_deallocObject();
}

uint64_t protocol witness for Rule.value.getter in conformance ButtonActionModifier<A>.PlatformSelectionBehavior@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v4 = ButtonActionModifier.PlatformSelectionBehavior.value.getter(*v2, *(v2 + 8), *(a1 + 16), *(a1 + 24));
  v6 = v5;
  result = swift_allocObject();
  *(result + 16) = v4;
  *(result + 24) = v6;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@inout PlatformItemList) -> ();
  a2[1] = result;
  return result;
}

uint64_t sub_18BF34AB4()
{

  return swift_deallocObject();
}

uint64_t ButtonActionModifier.PlatformSelectionBehavior.modifier.getter@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = type metadata accessor for ButtonActionModifier(0, a2, a3, a3);
  Value = AGGraphGetValue();
  v7 = *(*(v5 - 8) + 16);

  return v7(a4, Value, v5);
}

void type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<SpringLoadingBehavior.Key>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SpringLoadingBehavior.Key>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior> and conformance ViewInputFlagModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in ButtonActionModifier.PlatformSelectionBehavior.value.getter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for ButtonActionModifier(0, v6, v7, a4) - 8);
  v9 = *(v4 + 32);
  v10 = *(v4 + 33);
  v11 = v4 + ((*(v8 + 80) + 34) & ~*(v8 + 80));

  return closure #1 in ButtonActionModifier.PlatformSelectionBehavior.value.getter(a1, v9, v10, v11, v6, v7);
}

uint64_t closure #1 in ButtonActionModifier.PlatformSelectionBehavior.value.getter(uint64_t *a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for PlatformItemList.Item(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v28 - v17;
  PlatformItemList.mergedContentItem.getter(*a1, v28 - v17);

  if (a2)
  {
    v20 = (a4 + *(type metadata accessor for ButtonActionModifier(0, a5, a6, v19) + 36));
    v22 = *v20;
    v21 = v20[1];
  }

  else
  {
    v22 = 0;
    v21 = 0;
    a3 = 0;
  }

  v29 = v18[472];
  v23 = *(v18 + 456);
  v28[2] = *(v18 + 440);
  v28[3] = v23;
  v24 = *(v18 + 424);
  v28[0] = *(v18 + 408);
  v28[1] = v24;
  _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_2(v28, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, MEMORY[0x1E69E6720]);
  v18[408] = 1;
  *(v18 + 409) = 0;
  *(v18 + 52) = v22;
  *(v18 + 53) = v21;
  *(v18 + 27) = 0u;
  *(v18 + 28) = 0u;
  *(v18 + 58) = 0;
  v18[472] = a3;
  v18[56] = a2 & 1;
  outlined init with copy of PlatformItemList.Item(v18, v15);
  type metadata accessor for _ContiguousArrayStorage<PlatformItemList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItemList.Item>, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6F90]);
  v25 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_18CD63400;
  outlined init with take of PlatformItemList.Item(v15, v26 + v25);
  *a1 = v26;
  return _s7SwiftUI16PlatformItemListV0D0VWOhTm_4(v18, type metadata accessor for PlatformItemList.Item);
}

uint64_t PlatformItemList.mergedContentItem.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PlatformItemList.Item(0);
  MEMORY[0x1EEE9AC00](v4);
  v182 = &v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v148 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v148 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v148 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v184 = &v148 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v148 - v19;
  v185 = a1;
  v21 = *(a1 + 16);
  if (v21 == 1)
  {
    v22 = v185 + ((*(v18 + 80) + 32) & ~*(v18 + 80));

    return outlined init with copy of PlatformItemList.Item(v22, a2);
  }

  v183 = v18;
  v162 = a2;
  v179 = v21;
  _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(&v221);
  memset(v220, 0, sizeof(v220));
  *(v20 + 8) = 0u;
  v156 = v20 + 8;
  v20[32] = 0;
  *(v20 + 3) = 0;
  *(v20 + 5) = -1;
  v20[56] = 1;
  v24 = v230;
  *(v20 + 12) = v229;
  *(v20 + 13) = v24;
  *(v20 + 14) = v231[0];
  *(v20 + 235) = *(v231 + 11);
  v25 = v226;
  *(v20 + 8) = v225;
  *(v20 + 9) = v25;
  v26 = v228;
  *(v20 + 10) = v227;
  *(v20 + 11) = v26;
  v27 = v222;
  *(v20 + 4) = v221;
  *(v20 + 5) = v27;
  v28 = v224;
  *(v20 + 6) = v223;
  *(v20 + 7) = v28;
  *(v20 + 19) = 0u;
  *(v20 + 20) = 0u;
  *(v20 + 17) = 0u;
  *(v20 + 18) = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 42) = 0x3FFFFFFFCLL;
  *(v20 + 344) = 0u;
  *(v20 + 360) = 0u;
  *(v20 + 376) = 0u;
  *(v20 + 392) = 0u;
  v157 = v20 + 344;
  *(v20 + 51) = 0;
  *(v20 + 52) = 1;
  *(v20 + 424) = 0u;
  *(v20 + 440) = 0u;
  *(v20 + 456) = 0u;
  v20[472] = 0;
  *(v20 + 60) = 0;
  *(v20 + 488) = 0u;
  v20[504] = 0;
  *(v20 + 32) = 0u;
  v20[528] = 4;
  *(v20 + 536) = 0u;
  *(v20 + 552) = 0u;
  *(v20 + 568) = 0u;
  *(v20 + 584) = 0u;
  *(v20 + 600) = 0u;
  *(v20 + 616) = 0u;
  *(v20 + 632) = 0u;
  *(v20 + 648) = 0u;
  *(v20 + 664) = 0u;
  *(v20 + 680) = 0u;
  *(v20 + 696) = 0u;
  *(v20 + 712) = 0u;
  *(v20 + 728) = 0u;
  *(v20 + 744) = 0u;
  *(v20 + 760) = 0u;
  *(v20 + 776) = 0u;
  *(v20 + 792) = 0u;
  *(v20 + 808) = 0u;
  *(v20 + 824) = 0u;
  *(v20 + 840) = 0u;
  *(v20 + 107) = 0;
  *(v20 + 108) = 1;
  *(v20 + 872) = 0u;
  *(v20 + 888) = 0u;
  *(v20 + 904) = 0u;
  *(v20 + 920) = 0u;
  *(v20 + 936) = 0u;
  *(v20 + 476) = 1283;
  v20[954] = 3;
  v29 = v4[28];
  v30 = type metadata accessor for CommandOperation(0);
  (*(*(v30 - 8) + 56))(&v20[v29], 1, 1, v30);
  v20[v4[29]] = 0;
  v20[v4[30]] = 0;
  v31 = v4[31];
  v20[v31] = 2;
  v159 = v4[32];
  v160 = v31;
  v20[v159] = 0;
  v20[v4[33]] = 0;
  v163 = v4;
  v32 = v4[34];
  *v20 = 0;
  v33 = *(v20 + 13);
  v232[8] = *(v20 + 12);
  v232[9] = v33;
  v233[0] = *(v20 + 14);
  *(v233 + 11) = *(v20 + 235);
  v34 = *(v20 + 9);
  v232[4] = *(v20 + 8);
  v232[5] = v34;
  v35 = *(v20 + 11);
  v232[6] = *(v20 + 10);
  v232[7] = v35;
  v36 = *(v20 + 5);
  v232[0] = *(v20 + 4);
  v232[1] = v36;
  v37 = *(v20 + 7);
  v232[2] = *(v20 + 6);
  v232[3] = v37;
  _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v232, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
  v38 = v230;
  *(v20 + 12) = v229;
  *(v20 + 13) = v38;
  *(v20 + 14) = v231[0];
  *(v20 + 235) = *(v231 + 11);
  v39 = v226;
  *(v20 + 8) = v225;
  *(v20 + 9) = v39;
  v40 = v228;
  *(v20 + 10) = v227;
  *(v20 + 11) = v40;
  v41 = v222;
  *(v20 + 4) = v221;
  *(v20 + 5) = v41;
  v42 = v224;
  *(v20 + 6) = v223;
  *(v20 + 7) = v42;
  v43 = *(v20 + 456);
  v234[2] = *(v20 + 440);
  v234[3] = v43;
  v235 = v20[472];
  v44 = *(v20 + 424);
  v234[0] = *(v20 + 408);
  v234[1] = v44;
  _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v234, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
  *(v20 + 408) = xmmword_18CD633F0;
  *(v20 + 424) = 0u;
  *(v20 + 440) = 0u;
  *(v20 + 456) = 0u;
  v20[472] = 0;
  result = outlined assign with take of PlatformItemList.Item.Accessibility?(v220, (v20 + 536), &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?, &type metadata for PlatformItemList.Item.Accessibility);
  v158 = v32;
  *&v20[v32] = 0;
  *(v20 + 6) = 0;
  if (!v179)
  {
    v175 = 0;
    v142 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v143 = v162;
    if (*(v142 + 16))
    {

      *(v20 + 118) = v142;
      v144 = *(v20 + 24);
      v220[4] = *(v20 + 23);
      v220[5] = v144;
      *&v220[6] = *(v20 + 50);
      v145 = *(v20 + 20);
      v220[0] = *(v20 + 19);
      v220[1] = v145;
      v146 = *(v20 + 21);
      v220[3] = *(v20 + 22);
      v220[2] = v146;
      _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v220, &lazy cache variable for type metadata for PlatformItemList.Item.SystemItem?, &type metadata for PlatformItemList.Item.SystemItem);
      *(v20 + 38) = 3;
      *(v20 + 39) = 0;
      *(v20 + 40) = 0;
      *(v20 + 41) = 0;
      *(v20 + 42) = 0xC000000000000000;
      v147 = v157;
      *v157 = 0u;
      v147[1] = 0u;
      v147[2] = 0u;
      v147[3] = 0u;
    }

    else
    {
    }

    return outlined init with take of PlatformItemList.Item(v20, v143);
  }

  v172 = 0;
  v173 = v20 + 536;
  v181 = 0;
  v178 = 0;
  v161 = 0;
  v170 = 0;
  v171 = 0;
  v168 = 0;
  v169 = 0;
  v166 = 0;
  v167 = 0;
  v165 = 0;
  v45 = 0;
  v46 = 0;
  v47 = (*(v183 + 80) + 32) & ~*(v183 + 80);
  v48 = *(v183 + 72);
  v175 = 0;
  v176 = v47;
  v164 = v185 + v47;
  v49 = -1;
  v185 = MEMORY[0x1E69E7CC0];
  v174 = 2;
  v180 = v14;
  v177 = v48;
LABEL_7:
  v50 = v164 + v48 * v45;
  while (!__OFADD__(v45, 1))
  {
    v183 = v45 + 1;
    v51 = v184;
    outlined init with copy of PlatformItemList.Item(v50, v184);
    result = outlined init with copy of PlatformItemList.Item(v51, v14);
    if (v46)
    {
      v52 = __OFSUB__(v49--, 1);
      if (v52)
      {
        goto LABEL_95;
      }

      v53 = *(v14 + 5);
      v52 = __OFSUB__(v53, 1);
      v54 = v53 - 1;
      if (v52)
      {
        goto LABEL_96;
      }

      *(v14 + 5) = v54;
    }

    if (v49 < 0)
    {
      goto LABEL_37;
    }

    if (__OFADD__(v49, 1))
    {
      goto LABEL_94;
    }

    if (*(v14 + 5) != v49 + 1)
    {
LABEL_37:
      v46 = 0;
      goto LABEL_42;
    }

    if (!v181)
    {
      v55 = *v14;
      if (*v14)
      {
        v46 = 1;
        v87 = v173;
        goto LABEL_46;
      }
    }

    outlined init with copy of PlatformItemList.Item(v20, v11);
    v56 = *(v11 + 13);
    v57 = *(v11 + 11);
    v200[8] = *(v11 + 12);
    v200[9] = v56;
    v58 = *(v11 + 13);
    v200[10] = *(v11 + 14);
    *(&v200[10] + 11) = *(v11 + 235);
    v59 = *(v11 + 9);
    v60 = *(v11 + 7);
    v200[4] = *(v11 + 8);
    v200[5] = v59;
    v61 = *(v11 + 9);
    v62 = *(v11 + 11);
    v200[6] = *(v11 + 10);
    v200[7] = v62;
    v63 = *(v11 + 5);
    v200[0] = *(v11 + 4);
    v200[1] = v63;
    v64 = *(v11 + 7);
    v66 = *(v11 + 4);
    v65 = *(v11 + 5);
    v200[2] = *(v11 + 6);
    v200[3] = v64;
    v220[8] = v200[8];
    v220[9] = v58;
    v220[10] = *(v11 + 14);
    *(&v220[10] + 11) = *(v11 + 235);
    v220[4] = v200[4];
    v220[5] = v61;
    v220[6] = v200[6];
    v220[7] = v57;
    v220[0] = v66;
    v220[1] = v65;
    v220[2] = v200[2];
    v220[3] = v60;
    if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(v220) == 1)
    {
      _s7SwiftUI16CommandOperationVWOhTm_0(v11, type metadata accessor for PlatformItemList.Item);
    }

    else
    {
      v67 = v185;
      if (*&v220[9])
      {
        v79 = v11;
        goto LABEL_24;
      }

      v190 = v220[4];
      v191[0] = v220[5];
      *(v191 + 12) = *(&v220[5] + 12);
      v186 = v220[0];
      v187 = v220[1];
      v188 = v220[2];
      v189 = v220[3];
      v82 = *(v11 + 6);
      outlined init with copy of PlatformItemList.Item.SystemItem?(v200, &v210, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
      outlined init with copy of GraphicsImage(v220, &v210);
      v83 = GraphicsImage.makePlatformImage(fixedSymbolConfiguration:flattenMaskColor:colorResolver:)(0, 0, v82);
      _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v200, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
      v205 = v190;
      v206[0] = v191[0];
      *(v206 + 12) = *(v191 + 12);
      v201 = v186;
      v202 = v187;
      v204 = v189;
      v203 = v188;
      outlined destroy of GraphicsImage(&v201);
      _s7SwiftUI16CommandOperationVWOhTm_0(v11, type metadata accessor for PlatformItemList.Item);
      if (v83)
      {

        v67 = v185;
        goto LABEL_30;
      }
    }

    v67 = v185;
    outlined init with copy of PlatformItemList.Item(v14, v8);
    v68 = *(v8 + 13);
    v69 = *(v8 + 11);
    v207 = *(v8 + 12);
    v208 = v68;
    v70 = *(v8 + 13);
    v209[0] = *(v8 + 14);
    *(v209 + 11) = *(v8 + 235);
    v71 = *(v8 + 9);
    v72 = *(v8 + 7);
    v205 = *(v8 + 8);
    v206[0] = v71;
    v73 = *(v8 + 9);
    v74 = *(v8 + 11);
    v206[1] = *(v8 + 10);
    v206[2] = v74;
    v75 = *(v8 + 5);
    v201 = *(v8 + 4);
    v202 = v75;
    v76 = *(v8 + 7);
    v78 = *(v8 + 4);
    v77 = *(v8 + 5);
    v203 = *(v8 + 6);
    v204 = v76;
    v217 = v207;
    v218 = v70;
    v219[0] = *(v8 + 14);
    *(v219 + 11) = *(v8 + 235);
    v214 = v205;
    v215[0] = v73;
    v215[1] = v206[1];
    v216 = v69;
    v210 = v78;
    v211 = v77;
    v212 = v203;
    v213 = v72;
    if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(&v210) == 1)
    {
      v79 = v8;
LABEL_24:
      _s7SwiftUI16CommandOperationVWOhTm_0(v79, type metadata accessor for PlatformItemList.Item);
      goto LABEL_30;
    }

    if (v218)
    {
      _s7SwiftUI16CommandOperationVWOhTm_0(v8, type metadata accessor for PlatformItemList.Item);
LABEL_41:
      v46 = 1;
      v178 = v181;
LABEL_42:
      v87 = v173;
      if (v178)
      {
        if (!v161)
        {
          v55 = *v14;
          *v156 = *v14;
          v161 = v55;
          goto LABEL_47;
        }
      }

      else
      {
        v55 = *v14;
LABEL_46:
        *v20 = v55;
        v178 = v55;
        v181 = v55;
LABEL_47:
        v88 = v55;
      }

      if (v20[528] == 4)
      {
        v20[528] = v14[528];
      }

      v89 = *(v20 + 13);
      v217 = *(v20 + 12);
      v218 = v89;
      v219[0] = *(v20 + 14);
      *(v219 + 11) = *(v20 + 235);
      v90 = *(v20 + 9);
      v214 = *(v20 + 8);
      v215[0] = v90;
      v91 = *(v20 + 11);
      v215[1] = *(v20 + 10);
      v216 = v91;
      v92 = *(v20 + 5);
      v210 = *(v20 + 4);
      v211 = v92;
      v93 = *(v20 + 7);
      v212 = *(v20 + 6);
      v213 = v93;
      if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(&v210) == 1)
      {
        v94 = *(v14 + 13);
        v200[8] = *(v14 + 12);
        v200[9] = v94;
        v200[10] = *(v14 + 14);
        *(&v200[10] + 11) = *(v14 + 235);
        v95 = *(v14 + 9);
        v200[4] = *(v14 + 8);
        v200[5] = v95;
        v96 = *(v14 + 11);
        v200[6] = *(v14 + 10);
        v200[7] = v96;
        v97 = *(v14 + 5);
        v200[0] = *(v14 + 4);
        v200[1] = v97;
        v98 = *(v14 + 7);
        v200[2] = *(v14 + 6);
        v200[3] = v98;
        v99 = *(v20 + 13);
        v220[8] = *(v20 + 12);
        v220[9] = v99;
        v220[10] = *(v20 + 14);
        *(&v220[10] + 11) = *(v20 + 235);
        v100 = *(v20 + 9);
        v220[4] = *(v20 + 8);
        v220[5] = v100;
        v101 = *(v20 + 11);
        v220[6] = *(v20 + 10);
        v220[7] = v101;
        v102 = *(v20 + 5);
        v220[0] = *(v20 + 4);
        v220[1] = v102;
        v103 = *(v20 + 7);
        v220[2] = *(v20 + 6);
        v220[3] = v103;
        v104 = MEMORY[0x1E6981730];
        outlined init with copy of PlatformItemList.Item.SystemItem?(v200, &v201, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
        _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v220, &lazy cache variable for type metadata for Image.Resolved?, v104);
        v105 = v200[9];
        *(v20 + 12) = v200[8];
        *(v20 + 13) = v105;
        *(v20 + 14) = v200[10];
        *(v20 + 235) = *(&v200[10] + 11);
        v106 = v200[5];
        *(v20 + 8) = v200[4];
        *(v20 + 9) = v106;
        v107 = v200[7];
        *(v20 + 10) = v200[6];
        *(v20 + 11) = v107;
        v108 = v200[1];
        *(v20 + 4) = v200[0];
        *(v20 + 5) = v108;
        v109 = v200[3];
        *(v20 + 6) = v200[2];
        *(v20 + 7) = v109;
        if (!v172)
        {
          goto LABEL_52;
        }

LABEL_55:
        if (*(v20 + 33))
        {
          goto LABEL_56;
        }

LABEL_53:
        v111 = *(v14 + 32);
        v112 = *(v14 + 33);
        v114 = *(v14 + 34);
        v113 = *(v14 + 35);
        v115 = *(v14 + 36);
        v154 = *(v14 + 37);
        v155 = v115;
        v116 = *(v20 + 32);
        v117 = *(v20 + 34);
        v152 = *(v20 + 35);
        v153 = v117;
        v118 = *(v20 + 37);
        v151 = *(v20 + 36);
        v149 = v116;
        v150 = v118;
        v119 = v113;
        outlined copy of Image.NamedResolved?(v111, v112, v114, v113, v115, v154);
        outlined consume of Image.NamedResolved?(v149, 0, v153, v152, v151, v150);
        *(v20 + 32) = v111;
        *(v20 + 33) = v112;
        *(v20 + 34) = v114;
        *(v20 + 35) = v119;
        v87 = v173;
        v120 = v154;
        *(v20 + 36) = v155;
        *(v20 + 37) = v120;
        goto LABEL_56;
      }

      if (v172)
      {
        goto LABEL_55;
      }

LABEL_52:
      v110 = *(v14 + 6);
      *(v20 + 6) = v110;
      v172 = v110;

      if (!*(v20 + 33))
      {
        goto LABEL_53;
      }

LABEL_56:
      outlined init with copy of PlatformItemList.Item.SystemItem?(v87, v220, &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?, &type metadata for PlatformItemList.Item.Accessibility);
      v121 = *(&v220[17] + 1);
      _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v220, &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?, &type metadata for PlatformItemList.Item.Accessibility);
      if (v121)
      {
        if (*(v14 + 102))
        {
          outlined init with copy of AccessibilityProperties((v14 + 536), v200);
          result = memcpy(v220, v200, 0x120uLL);
          if (!*(v20 + 102))
          {
            goto LABEL_97;
          }

          AccessibilityProperties.merge(with:)(v220);
          outlined destroy of AccessibilityProperties(v220);
        }
      }

      else
      {
        outlined assign with copy of PlatformItemList.Item.Accessibility?((v14 + 536), v87);
      }

      v122 = v163;
      if (v171)
      {
        if (v175)
        {
          goto LABEL_63;
        }

LABEL_85:
        v141 = *(v14 + 118);
        *(v20 + 118) = v141;
        v175 = v141;
      }

      else
      {
        v140 = *(v14 + 117);
        *(v20 + 117) = v140;
        v171 = v140;

        if (!v175)
        {
          goto LABEL_85;
        }
      }

LABEL_63:
      if (*(v20 + 42) >> 2 == 0xFFFFFFFFLL)
      {
        v123 = *(v14 + 24);
        v200[4] = *(v14 + 23);
        v200[5] = v123;
        *&v200[6] = *(v14 + 50);
        v124 = *(v14 + 20);
        v200[0] = *(v14 + 19);
        v200[1] = v124;
        v125 = *(v14 + 22);
        v200[2] = *(v14 + 21);
        v200[3] = v125;
        v126 = *(v20 + 19);
        v220[1] = *(v20 + 20);
        v220[0] = v126;
        v127 = *(v20 + 21);
        v128 = *(v20 + 22);
        v129 = *(v20 + 23);
        v130 = *(v20 + 24);
        *&v220[6] = *(v20 + 50);
        v220[5] = v130;
        v220[4] = v129;
        v220[2] = v127;
        v220[3] = v128;
        outlined init with copy of PlatformItemList.Item.SystemItem?(v200, &v201, &lazy cache variable for type metadata for PlatformItemList.Item.SystemItem?, &type metadata for PlatformItemList.Item.SystemItem);
        _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v220, &lazy cache variable for type metadata for PlatformItemList.Item.SystemItem?, &type metadata for PlatformItemList.Item.SystemItem);
        v131 = v200[5];
        *(v20 + 23) = v200[4];
        *(v20 + 24) = v131;
        *(v20 + 50) = *&v200[6];
        v132 = v200[1];
        *(v20 + 19) = v200[0];
        *(v20 + 20) = v132;
        v133 = v200[3];
        *(v20 + 21) = v200[2];
        *(v20 + 22) = v133;
        if (!v170)
        {
          goto LABEL_65;
        }

LABEL_71:
        if (v169)
        {
          goto LABEL_72;
        }

LABEL_66:
        v135 = *(v14 + 112);
        *(v20 + 112) = v135;
        v169 = v135;
        v136 = v135;
        if (!v168)
        {
          goto LABEL_67;
        }

LABEL_73:
        if (v167)
        {
          goto LABEL_74;
        }

LABEL_68:
        v138 = *(v14 + 114);
        *(v20 + 113) = *(v14 + 113);
        *(v20 + 114) = v138;
        v167 = v138;

        if (!v166)
        {
          goto LABEL_69;
        }
      }

      else
      {
        if (v170)
        {
          goto LABEL_71;
        }

LABEL_65:
        v134 = *&v14[v122[34]];
        *&v20[v158] = v134;
        v170 = v134;

        if (!v169)
        {
          goto LABEL_66;
        }

LABEL_72:
        if (v168)
        {
          goto LABEL_73;
        }

LABEL_67:
        v137 = *(v14 + 3);
        *(v20 + 2) = *(v14 + 2);
        *(v20 + 3) = v137;
        v168 = v137;

        if (!v167)
        {
          goto LABEL_68;
        }

LABEL_74:
        if (!v166)
        {
LABEL_69:
          v139 = *(v14 + 116);
          *(v20 + 115) = *(v14 + 115);
          *(v20 + 116) = v139;
          v166 = v139;
        }
      }

      if (v174 == 2)
      {
        v174 = v14[v122[31]];
        v20[v160] = v174;
      }

      if (!v165)
      {
        v165 = v14[v122[32]];
        v20[v159] = v165;
      }

      if (v20[953] == 5)
      {
        v20[953] = v14[953];
      }

      _s7SwiftUI16CommandOperationVWOhTm_0(v14, type metadata accessor for PlatformItemList.Item);
      v49 = *(v184 + 40);
      result = _s7SwiftUI16CommandOperationVWOhTm_0(v184, type metadata accessor for PlatformItemList.Item);
      v45 = v183;
      if (v183 == v179)
      {
LABEL_86:
        v142 = v185;
        goto LABEL_88;
      }

      v48 = v177;
      if (v183 < v179)
      {
        goto LABEL_7;
      }

LABEL_92:
      __break(1u);
      break;
    }

    v196 = v214;
    v197[0] = v215[0];
    *(v197 + 12) = *(v215 + 12);
    v192 = v210;
    v193 = v211;
    v194 = v212;
    v195 = v213;
    v80 = *(v8 + 6);
    outlined init with copy of PlatformItemList.Item.SystemItem?(&v201, &v186, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
    outlined init with copy of GraphicsImage(&v210, &v186);
    v81 = GraphicsImage.makePlatformImage(fixedSymbolConfiguration:flattenMaskColor:colorResolver:)(0, 0, v80);
    _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(&v201, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
    v198[4] = v196;
    v199[0] = v197[0];
    *(v199 + 12) = *(v197 + 12);
    v198[0] = v192;
    v198[1] = v193;
    v198[2] = v194;
    v198[3] = v195;
    outlined destroy of GraphicsImage(v198);
    _s7SwiftUI16CommandOperationVWOhTm_0(v8, type metadata accessor for PlatformItemList.Item);
    if (v81)
    {

      goto LABEL_41;
    }

    v67 = v185;
LABEL_30:
    outlined init with copy of PlatformItemList.Item(v14, v182);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v67[2] + 1, 1, v67);
    }

    v85 = v67[2];
    v84 = v67[3];
    if (v85 >= v84 >> 1)
    {
      v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1, v67);
    }

    v67[2] = v85 + 1;
    v185 = v67;
    v86 = v177;
    outlined init with take of PlatformItemList.Item(v182, v67 + v176 + v85 * v177);
    _s7SwiftUI16CommandOperationVWOhTm_0(v180, type metadata accessor for PlatformItemList.Item);
    v49 = *(v184 + 40);
    result = _s7SwiftUI16CommandOperationVWOhTm_0(v184, type metadata accessor for PlatformItemList.Item);
    if (v183 == v179)
    {
      goto LABEL_86;
    }

    v46 = 0;
    ++v45;
    v50 += v86;
    v14 = v180;
    v178 = v181;
    if (v183 >= v179)
    {
      goto LABEL_92;
    }
  }

  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
  return result;
}

uint64_t outlined destroy of PlatformItemList.Item.SelectionBehavior?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _s7SwiftUI16PlatformItemListVSgMaTm_0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for CGFloat?(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_3(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double destroy for PlatformItemList.Item(uint64_t a1, uint64_t a2)
{

  v4 = *(a1 + 192);
  v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
  if ((v4 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
  {
    v6 = *(a1 + 72);
    if (v6 != 255)
    {
      outlined consume of GraphicsImage.Contents(*(a1 + 64), v6);
      v4 = *(a1 + 192);
      v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    }

    if (v5 != 0x1FFFFFFFELL)
    {
      outlined consume of AccessibilityImageLabel(*(a1 + 176), *(a1 + 184), v4, *(a1 + 200));
    }

    swift_unknownObjectRelease();
  }

  if (*(a1 + 264))
  {

    v7 = *(a1 + 272);
    if (v7 >= 2)
    {
    }
  }

  v8 = *(a1 + 336);
  if (v8 >> 2 != 0xFFFFFFFF)
  {
    outlined consume of PlatformItemList.Item.SystemItem(*(a1 + 304), *(a1 + 312), *(a1 + 320), *(a1 + 328), v8, *(a1 + 344), *(a1 + 352), *(a1 + 360), *(a1 + 368), *(a1 + 376), *(a1 + 384), *(a1 + 392), *(a1 + 400));
  }

  v9 = *(a1 + 416);
  if (v9)
  {
    if (v9 == 1)
    {
      goto LABEL_20;
    }
  }

  if (*(a1 + 432))
  {
  }

  if (*(a1 + 448))
  {
  }

LABEL_20:

  if (*(a1 + 512))
  {
  }

  if (*(a1 + 816))
  {

    v10 = *(a1 + 624);
    if (v10)
    {
      if (v10 == 1)
      {
LABEL_27:
        if (*(a1 + 776) != 1)
        {
        }

        goto LABEL_30;
      }

      __swift_destroy_boxed_opaque_existential_1((a1 + 600));
    }

    goto LABEL_27;
  }

LABEL_30:
  v11 = *(a1 + 864);
  if (v11)
  {
    if (v11 == 1)
    {
      goto LABEL_35;
    }

    __swift_destroy_boxed_opaque_existential_1((a1 + 840));
  }

  if (*(a1 + 880))
  {
  }

LABEL_35:

  v12 = a1 + *(a2 + 112);
  v13 = type metadata accessor for CommandOperation(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = v12 + *(v13 + 20);
    outlined consume of Text.Storage(*v14, *(v14 + 8), *(v14 + 16));

    v15 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 8))(v14 + v15, v16);
    if (*(v12 + *(v13 + 24)))
    {
    }
  }

  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance PlatformItemTintModifier@<X0>(void (**a1)(uint64_t *a1)@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a1 = partial apply for implicit closure #2 in implicit closure #1 in PlatformItemTintModifier.body(content:);
  a1[1] = v5;

  return outlined copy of Environment<Color?>.Content(v3);
}

uint64_t sub_18BF364FC()
{
  outlined consume of Environment<Color?>.Content(*(v0 + 16));

  return swift_deallocObject();
}

void implicit closure #2 in implicit closure #1 in PlatformItemTintModifier.body(content:)(uint64_t *a1, uint64_t a2, int a3)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_13:
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    }

    v7 = 0;
    v20 = a3;
    v19 = v4;
    do
    {
      if (v7 >= v3[2])
      {
        __break(1u);
        goto LABEL_13;
      }

      v9 = type metadata accessor for PlatformItemList.Item(0);
      v10 = *(*(v9 - 8) + 80);
      v11 = *(*(v9 - 8) + 72);

      v8 = a2;
      if ((a3 & 1) == 0)
      {
        v12 = static os_log_type_t.fault.getter();
        v13 = static Log.runtimeIssuesLog.getter();
        if (os_log_type_enabled(v13, v12))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v21[0] = v15;
          *v14 = 136315138;
          *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6C616E6F6974704FLL, 0xEF3E726F6C6F433CLL, v21);
          _os_log_impl(&dword_18BD4A000, v13, v12, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v14, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v15);
          v16 = v15;
          v4 = v19;
          MEMORY[0x18D0110E0](v16, -1, -1);
          v17 = v14;
          a3 = v20;
          MEMORY[0x18D0110E0](v17, -1, -1);
        }

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        outlined consume of Environment<Color?>.Content(a2);

        v8 = v21[2];
      }

      *(v3 + ((v10 + 32) & ~v10) + v11 * v7 + *(v9 + 136)) = v8;

      ++v7;
    }

    while (v4 != v7);
    *a1 = v3;
  }
}

uint64_t closure #1 in PlatformItemEnabledModifier.PlatformItemListTransform.value.getter(uint64_t *a1, char a2)
{
  v4 = type metadata accessor for PlatformItemList.Item(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  PlatformItemList.mergedContentItem.getter(*a1, &v14 - v9);

  v10[56] = a2;
  outlined init with copy of PlatformItemList.Item(v10, v7);
  type metadata accessor for _ContiguousArrayStorage<PlatformItemList.Item>(0);
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_18CD63400;
  outlined init with take of PlatformItemList.Item(v7, v12 + v11);
  result = outlined destroy of PlatformItemList.Item(v10);
  *a1 = v12;
  return result;
}

void type metadata accessor for _ContiguousArrayStorage<PlatformItemList.Item>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItemList.Item>)
  {
    type metadata accessor for PlatformItemList.Item(255);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItemList.Item>);
    }
  }
}

unint64_t type metadata accessor for PlatformItemListHost()
{
  result = lazy cache variable for type metadata for PlatformItemListHost;
  if (!lazy cache variable for type metadata for PlatformItemListHost)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PlatformItemListHost);
  }

  return result;
}

double partial apply for closure #1 in PlatformItemListViewGraph.readAndUpdate(graph:)()
{
  *(*(v0 + 16) + 8) = 1;

  return result;
}

uint64_t specialized UIKitBarButtonItem.hostingView<A>(_:didChangePlatformItemList:)(uint64_t a1)
{
  v3 = MEMORY[0x1E69E6720];
  type metadata accessor for ToolbarStorage.Item?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_platformItem;
  swift_beginAccess();
  _s7SwiftUI16PlatformItemListV0D0VSgWOcTm_0(v1 + v7, v6, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, v3, type metadata accessor for ToolbarStorage.Item?);
  v8 = type metadata accessor for PlatformItemList.Item(0);
  LODWORD(v7) = (*(*(v8 - 8) + 48))(v6, 1, v8);
  _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v6, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, v3, type metadata accessor for ToolbarStorage.Item?);
  if (v7 != 1)
  {
    UIKitBarButtonItem.updatePlatformItem(_:)(a1);
  }

  v9 = v1 + OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_menuDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 8))(a1, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t UIKitBarButtonItem.updateBridging()()
{
  v1 = v0;
  type metadata accessor for ToolbarStorage.Item?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &aBlock[-1] - v3;
  v5 = type metadata accessor for PlatformItemList.Item(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = UIKitBarButtonItem.allowsBridging()();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v9;
  v11 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_platformItem;
  swift_beginAccess();
  _s7SwiftUI16PlatformItemListV0D0VSgWOcTm_0(&v1[v11], v4, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v4, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
    return 0;
  }

  _s7SwiftUI16PlatformItemListV0D0VWObTm_2(v4, v8, type metadata accessor for PlatformItemList.Item);
  v13 = *(v8 + 52) != 1 && v8[472] == 1;
  [v1 setSpringLoaded_];
  v14 = *v8;
  if (*v8)
  {
    v15 = *v8;
  }

  else
  {
    v16 = *(v8 + 112);
    if (!v16)
    {
      goto LABEL_15;
    }

    v15 = v16;
    v14 = 0;
  }

  v17 = v14;
  if ([v15 length] >= 1)
  {
    v18 = [v15 attributesAtIndex:0 effectiveRange:0];
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v1 setTitleTextAttributes:v19.super.isa forState:0];

    goto LABEL_16;
  }

LABEL_15:
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v1 setTitleTextAttributes:v19.super.isa forState:0];
LABEL_16:

  v20 = v8[954];
  if (v20 != 3)
  {
    [v1 setSelected_];
  }

  *&v1[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_cachedMenuChildren] = 0;

  if (!*(v8 + 117))
  {
    goto LABEL_40;
  }

  v21 = *(v8 + 42);
  v22 = 2;
  if (v21 >> 62 == 3 && (v21 & 0xFFFFFFFFFFFFFFFCLL) != 0x3FFFFFFFCLL)
  {
    v22 = 2;
    if (v21 == 0xC000000000000000 && *(v8 + 38) == 4 && !(*(v8 + 40) | *(v8 + 41) | *(v8 + 39)))
    {
      v23 = vorrq_s8(vorrq_s8(*(v8 + 344), *(v8 + 376)), vorrq_s8(*(v8 + 360), *(v8 + 392)));
      if (!*&vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL)))
      {
        v24 = v8[953];
        v25 = 1;
        if (v24 != 1)
        {
          v25 = 2;
        }

        if (!v8[953])
        {
          v25 = 0;
        }

        if (v24 == 5)
        {
          v22 = 2;
        }

        else
        {
          v22 = v25;
        }
      }
    }
  }

  _ss23_ContiguousArrayStorageCyyXlGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_18CD69590;
  v27 = objc_opt_self();
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in UIKitBarButtonItem.updateBridging();
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
  aBlock[3] = &block_descriptor_76;
  v29 = _Block_copy(aBlock);

  v30 = [v27 elementWithUncachedProvider_];
  _Block_release(v29);
  *(v26 + 32) = v30;
  v31 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu, 0x1E69DCC60);
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  v46.value.super.isa = 0;
  v46.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v31, v32, 0, v46, 0, v22, v26, v43);
  v34 = v33;
  [v1 setMenu_];

  v35 = *(v8 + 52);
  if (v35 < 2)
  {
    goto LABEL_38;
  }

  v36 = *(v8 + 53);
  v37 = v8[*(v5 + 124)];
  if (v37 != 2 && (v37 & 1) != 0)
  {
    goto LABEL_38;
  }

  v38 = [v1 title];
  if (!v38)
  {
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v35, v36);
LABEL_38:
    [v1 setPrimaryAction_];
    goto LABEL_39;
  }

  v39 = v38;
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAction, 0x1E69DC628);
  v40 = [v1 image];
  v41 = swift_allocObject();
  *(v41 + 16) = v35;
  *(v41 + 24) = v36;

  v42 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v1 setPrimaryAction_];

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v35, v36);
LABEL_39:
  [v1 setPreferredMenuElementOrder_];
  [v1 setChangesSelectionAsPrimaryAction_];
LABEL_40:
  UIKitBarButtonItem.updateStyleAndTint(isBridged:role:buttonTint:)(1, v10 >> 8, 0);
  specialized PlatformItemList.Item.applyAccessibilityProperties(to:)(v1, v8);
  [v1 resetAccessibilityLabel];
  _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v8, type metadata accessor for PlatformItemList.Item);
  return 1;
}

uint64_t sub_18BF3735C()
{

  return swift_deallocObject();
}

uint64_t storeEnumTagSinglePayload for BorderlessButtonStyleEnvironment.UpdateEnvironment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 14) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 14) = 0;
    }

    if (a2)
    {
      *(result + 12) = a2 + 1;
    }
  }

  return result;
}

uint64_t assignWithTake for PlatformItemList.Item(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = a2 + 286;
  v7 = *a1;
  *a1 = *a2;

  v8 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v9 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v9;

  *(a1 + 32) = *(a2 + 32);
  v10 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v10;

  *(a1 + 56) = *(a2 + 56);
  if (*(a1 + 192) >> 1 == 4294967294)
  {
LABEL_4:
    v11 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v11;
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 235) = *(a2 + 235);
    v12 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v12;
    v13 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v13;
    v14 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v14;
    v15 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v15;
    if (!*(a1 + 264))
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if (*(a2 + 192) >> 1 == 4294967294)
  {
    outlined destroy of Image.Resolved(a1 + 64);
    goto LABEL_4;
  }

  v16 = *(a1 + 72);
  if (v16 != 255)
  {
    v17 = *(a2 + 72);
    if (v17 != 255)
    {
      v18 = *(a1 + 64);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = v17;
      outlined consume of GraphicsImage.Contents(v18, v16);
      goto LABEL_11;
    }

    outlined destroy of GraphicsImage.Contents(a1 + 64);
  }

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
LABEL_11:
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 169) = *(a2 + 169);
  v19 = *(a1 + 192);
  *(a1 + 170) = *(a2 + 170);
  if (v19 >> 1 == 0xFFFFFFFF)
  {
LABEL_14:
    v21 = *(a2 + 192);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 192) = v21;
    goto LABEL_16;
  }

  v20 = *(a2 + 192);
  if (v20 >> 1 == 0xFFFFFFFF)
  {
    outlined destroy of AccessibilityImageLabel(a1 + 176);
    goto LABEL_14;
  }

  v22 = *(a2 + 200);
  v23 = *(a1 + 176);
  v24 = *(a1 + 184);
  v25 = *(a1 + 200);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v20;
  *(a1 + 200) = v22;
  outlined consume of AccessibilityImageLabel(v23, v24, v19, v25);
LABEL_16:
  *(a1 + 208) = *(a2 + 208);
  swift_unknownObjectRelease();
  *(a1 + 216) = *(a2 + 216);

  *(a1 + 224) = *(a2 + 224);
  *(a1 + 225) = *(a2 + 225);
  *(a1 + 228) = *(a2 + 228);
  *(a1 + 232) = *(a2 + 232);
  v26 = *(a1 + 240);
  *(a1 + 240) = *(a2 + 240);

  *(a1 + 248) = *(a2 + 248);
  *(a1 + 250) = *(a2 + 250);
  if (!*(a1 + 264))
  {
LABEL_21:
    v30 = *(a2 + 272);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = v30;
    *(a1 + 288) = *(a2 + 288);
    goto LABEL_26;
  }

LABEL_17:
  v27 = *(a2 + 264);
  if (!v27)
  {
    outlined destroy of Image.NamedResolved(a1 + 256);
    goto LABEL_21;
  }

  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = v27;

  v28 = *(a1 + 272);
  v29 = *(a2 + 272);
  if (v28 >= 2)
  {
    if (v29 >= 2)
    {
      *(a1 + 272) = v29;
    }

    else
    {

      *(a1 + 272) = *(a2 + 272);
    }
  }

  else
  {
    *(a1 + 272) = v29;
  }

  *(a1 + 280) = *(a2 + 280);
  *(a1 + 284) = *(a2 + 284);
  *(a1 + 286) = *v6;
  *(a1 + 288) = *(a2 + 288);

  *(a1 + 296) = *(a2 + 296);

LABEL_26:
  v31 = *(a1 + 336);
  if (v31 >> 2 == 0xFFFFFFFF)
  {
LABEL_29:
    v33 = *(a2 + 384);
    *(a1 + 368) = *(a2 + 368);
    *(a1 + 384) = v33;
    *(a1 + 400) = *(a2 + 400);
    v34 = *(a2 + 320);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 320) = v34;
    v35 = *(a2 + 352);
    *(a1 + 336) = *(a2 + 336);
    *(a1 + 352) = v35;
    goto LABEL_31;
  }

  v32 = *(a2 + 336);
  if (v32 >> 2 == 0xFFFFFFFF)
  {
    outlined destroy of PlatformItemList.Item.SystemItem(a1 + 304);
    goto LABEL_29;
  }

  v36 = *(a1 + 304);
  v37 = *(a1 + 312);
  v38 = *(a1 + 320);
  v39 = *(a1 + 328);
  v40 = *(a1 + 344);
  v41 = *(a1 + 352);
  v42 = *(a1 + 360);
  v43 = *(a1 + 368);
  v44 = *(a1 + 384);
  v45 = *(a1 + 400);
  v46 = *(a2 + 320);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = v46;
  *(a1 + 336) = v32;
  v47 = *(v6 + 74);
  *(a1 + 344) = *(v6 + 58);
  *(a1 + 360) = v47;
  v48 = *(v6 + 106);
  *(a1 + 376) = *(v6 + 90);
  *(a1 + 392) = v48;
  outlined consume of PlatformItemList.Item.SystemItem(v36, v37, v38, v39, v31, v40, v41, v42, v43, *(&v43 + 1), v44, SBYTE8(v44), v45);
LABEL_31:
  v49 = *(a1 + 416);
  if (v49 == 1)
  {
LABEL_34:
    v51 = *(v6 + 138);
    v52 = *(v6 + 170);
    *(a1 + 440) = *(v6 + 154);
    *(a1 + 456) = v52;
    *(a1 + 472) = *(v6 + 186);
    *(a1 + 408) = *(v6 + 122);
    *(a1 + 424) = v51;
    goto LABEL_57;
  }

  v50 = *(a2 + 416);
  if (v50 == 1)
  {
    outlined destroy of PlatformItemList.Item.SelectionBehavior(a1 + 408);
    goto LABEL_34;
  }

  *(a1 + 408) = *(v6 + 122);
  *(a1 + 409) = *(v6 + 123);
  *(a1 + 410) = *(v6 + 124);
  *(a1 + 411) = *(v6 + 125);
  *(a1 + 412) = *(a2 + 412);
  if (v49)
  {
    if (v50)
    {
      v53 = *(a2 + 424);
      *(a1 + 416) = v50;
      *(a1 + 424) = v53;

      goto LABEL_42;
    }
  }

  else if (v50)
  {
    v54 = *(a2 + 424);
    *(a1 + 416) = v50;
    *(a1 + 424) = v54;
    goto LABEL_42;
  }

  *(a1 + 416) = *(a2 + 416);
LABEL_42:
  v55 = *(a2 + 432);
  if (*(a1 + 432))
  {
    if (v55)
    {
      v56 = *(a2 + 440);
      *(a1 + 432) = v55;
      *(a1 + 440) = v56;

      goto LABEL_49;
    }
  }

  else if (v55)
  {
    v57 = *(a2 + 440);
    *(a1 + 432) = v55;
    *(a1 + 440) = v57;
    goto LABEL_49;
  }

  *(a1 + 432) = *(a2 + 432);
LABEL_49:
  v58 = *(a2 + 448);
  if (!*(a1 + 448))
  {
    if (v58)
    {
      v60 = *(a2 + 456);
      *(a1 + 448) = v58;
      *(a1 + 456) = v60;
      goto LABEL_56;
    }

LABEL_55:
    *(a1 + 448) = *(a2 + 448);
    goto LABEL_56;
  }

  if (!v58)
  {

    goto LABEL_55;
  }

  v59 = *(a2 + 456);
  *(a1 + 448) = v58;
  *(a1 + 456) = v59;

LABEL_56:
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 472) = *(a2 + 472);
LABEL_57:
  v61 = *(a2 + 488);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 488) = v61;

  *(a1 + 496) = *(a2 + 496);
  *(a1 + 504) = *(a2 + 504);
  v62 = *(a2 + 512);
  if (*(a1 + 512))
  {
    if (v62)
    {
      v63 = *(a2 + 520);
      *(a1 + 512) = v62;
      *(a1 + 520) = v63;

      goto LABEL_64;
    }
  }

  else if (v62)
  {
    v64 = *(a2 + 520);
    *(a1 + 512) = v62;
    *(a1 + 520) = v64;
    goto LABEL_64;
  }

  *(a1 + 512) = *(a2 + 512);
LABEL_64:
  *(a1 + 528) = *(a2 + 528);
  if (!*(a1 + 816))
  {
LABEL_71:
    memcpy((a1 + 536), (a2 + 536), 0x130uLL);
    goto LABEL_83;
  }

  if (!*(a2 + 816))
  {
    outlined destroy of PlatformItemList.Item.Accessibility(a1 + 536);
    goto LABEL_71;
  }

  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = *(a2 + 544);

  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);

  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 592) = *(a2 + 592);
  v65 = (a1 + 600);
  v66 = (a2 + 600);
  v67 = *(a1 + 624);
  if (v67 == 1)
  {
LABEL_69:
    v69 = *(a2 + 616);
    *v65 = *v66;
    *(a1 + 616) = v69;
    *(a1 + 632) = *(a2 + 632);
    goto LABEL_77;
  }

  v68 = *(a2 + 624);
  if (v68 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 600);
    goto LABEL_69;
  }

  if (v67)
  {
    v70 = (a1 + 600);
    if (v68)
    {
      __swift_destroy_boxed_opaque_existential_1(v70);
    }

    else
    {
      outlined destroy of AnyAccessibilityValue(v70);
    }
  }

  v71 = *(a2 + 616);
  *v65 = *v66;
  *(a1 + 616) = v71;
  *(a1 + 632) = *(a2 + 632);
  *(a1 + 640) = *(a2 + 640);

LABEL_77:
  *(a1 + 648) = *(a2 + 648);
  *(a1 + 656) = *(a2 + 656);
  v72 = (a1 + 664);
  v73 = (a2 + 664);
  if (*(a1 + 776) != 1)
  {
    v74 = *(a2 + 776);
    if (v74 != 1)
    {
      *v72 = *v73;
      *(a1 + 672) = *(a2 + 672);
      *(a1 + 680) = *(a2 + 680);
      *(a1 + 688) = *(a2 + 688);
      *(a1 + 689) = *(a2 + 689);
      *(a1 + 691) = *(v6 + 405);
      *(a1 + 692) = *(a2 + 692);
      *(a1 + 696) = *(a2 + 696);
      v79 = *(a2 + 720);
      *(a1 + 704) = *(a2 + 704);
      *(a1 + 720) = v79;
      *(a1 + 736) = *(a2 + 736);
      *(a1 + 744) = *(v6 + 458);
      *(a1 + 745) = *(v6 + 459);
      *(a1 + 752) = *(a2 + 752);
      *(a1 + 768) = *(a2 + 768);
      *(a1 + 776) = v74;

      *(a1 + 784) = *(a2 + 784);
      *(a1 + 800) = *(a2 + 800);
      *(a1 + 808) = *(a2 + 808);
      goto LABEL_82;
    }

    outlined destroy of AccessibilityTextLayoutProperties(a1 + 664);
  }

  v75 = *(a2 + 776);
  *(a1 + 760) = *(a2 + 760);
  *(a1 + 776) = v75;
  *(a1 + 792) = *(a2 + 792);
  *(a1 + 808) = *(a2 + 808);
  v76 = *(a2 + 712);
  *(a1 + 696) = *(a2 + 696);
  *(a1 + 712) = v76;
  v77 = *(a2 + 744);
  *(a1 + 728) = *(a2 + 728);
  *(a1 + 744) = v77;
  v78 = *(a2 + 680);
  *v72 = *v73;
  *(a1 + 680) = v78;
LABEL_82:
  *(a1 + 816) = *(a2 + 816);

  *(a1 + 824) = *(a2 + 824);

  *(a1 + 832) = *(a2 + 832);

LABEL_83:
  v80 = (a1 + 840);
  v81 = (a2 + 840);
  v82 = *(a1 + 864);
  if (v82 == 1)
  {
LABEL_86:
    v84 = *(a2 + 856);
    *v80 = *v81;
    *(a1 + 856) = v84;
    *(a1 + 872) = *(a2 + 872);
    *(a1 + 888) = *(a2 + 888);
    goto LABEL_87;
  }

  v83 = *(a2 + 864);
  if (v83 == 1)
  {
    outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior(a1 + 840);
    goto LABEL_86;
  }

  if (v82)
  {
    v105 = (a1 + 840);
    if (v83)
    {
      __swift_destroy_boxed_opaque_existential_1(v105);
    }

    else
    {
      outlined destroy of AnyNavigationLinkPresentedValue(v105);
    }
  }

  v119 = *(a2 + 856);
  *v80 = *v81;
  *(a1 + 856) = v119;
  *(a1 + 872) = *(a2 + 872);
  v120 = *(a2 + 880);
  if (*(a1 + 880))
  {
    if (v120)
    {
      v121 = *(a2 + 888);
      *(a1 + 880) = v120;
      *(a1 + 888) = v121;

      goto LABEL_87;
    }
  }

  else if (v120)
  {
    v122 = *(a2 + 888);
    *(a1 + 880) = v120;
    *(a1 + 888) = v122;
    goto LABEL_87;
  }

  *(a1 + 880) = *(a2 + 880);
LABEL_87:
  v85 = *(a1 + 896);
  *(a1 + 896) = *(a2 + 896);

  *(a1 + 904) = *(a2 + 904);
  *(a1 + 912) = *(a2 + 912);

  *(a1 + 920) = *(a2 + 920);
  *(a1 + 928) = *(a2 + 928);

  *(a1 + 936) = *(a2 + 936);

  *(a1 + 944) = *(a2 + 944);

  *(a1 + 952) = *(a2 + 952);
  *(a1 + 953) = *(a2 + 953);
  v86 = a3[28];
  v87 = (a1 + v86);
  v88 = (a2 + v86);
  v89 = type metadata accessor for CommandOperation(0);
  v90 = *(v89 - 8);
  v91 = *(v90 + 48);
  v92 = v91(v87, 1, v89);
  v93 = v91(v88, 1, v89);
  if (!v92)
  {
    if (!v93)
    {
      *v87 = *v88;
      v106 = *(v89 + 20);
      v107 = &v87[v106];
      v108 = &v88[v106];
      LOBYTE(v106) = v88[v106 + 16];
      v109 = *v107;
      v110 = *(v107 + 1);
      v111 = v107[16];
      *v107 = *v108;
      v107[16] = v106;
      outlined consume of Text.Storage(v109, v110, v111);
      *(v107 + 3) = *(v108 + 3);

      v112 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
      v113 = type metadata accessor for UUID();
      (*(*(v113 - 8) + 40))(&v107[v112], &v108[v112], v113);
      v114 = *(v89 + 24);
      v115 = &v87[v114];
      v116 = &v88[v114];
      v117 = *v116;
      if (*v115)
      {
        if (v117)
        {
          v118 = v116[1];
          *v115 = v117;
          v115[1] = v118;

          goto LABEL_93;
        }
      }

      else if (v117)
      {
        v123 = v116[1];
        *v115 = v117;
        v115[1] = v123;
        goto LABEL_93;
      }

      *v115 = *v116;
      goto LABEL_93;
    }

    _s7SwiftUI16CommandOperationVWOhTm_0(v87, type metadata accessor for CommandOperation);
    goto LABEL_92;
  }

  if (v93)
  {
LABEL_92:
    _s7SwiftUI16CommandOperationVSgMaTm_0(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    memcpy(v87, v88, *(*(v100 - 8) + 64));
    goto LABEL_93;
  }

  *v87 = *v88;
  v94 = *(v89 + 20);
  v95 = &v87[v94];
  v96 = &v88[v94];
  v97 = *&v88[v94 + 16];
  *v95 = *&v88[v94];
  *(v95 + 1) = v97;
  v98 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
  v99 = type metadata accessor for UUID();
  (*(*(v99 - 8) + 32))(&v95[v98], &v96[v98], v99);
  *&v87[*(v89 + 24)] = *&v88[*(v89 + 24)];
  (*(v90 + 56))(v87, 0, 1, v89);
LABEL_93:
  v101 = a3[30];
  *(a1 + a3[29]) = *(a2 + a3[29]);
  *(a1 + v101) = *(a2 + v101);
  v102 = a3[32];
  *(a1 + a3[31]) = *(a2 + a3[31]);
  *(a1 + v102) = *(a2 + v102);
  v103 = a3[34];
  *(a1 + a3[33]) = *(a2 + a3[33]);
  *(a1 + v103) = *(a2 + v103);

  return a1;
}

uint64_t ToolbarStorage.Entry.placement.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ToolbarStorage.GroupItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of ToolbarStorage.Entry(v2, v12, type metadata accessor for ToolbarStorage.Entry.Kind);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (result)
    {
      _s7SwiftUI14ToolbarStorageV9GroupItemVWObTm_0(v12, v6, type metadata accessor for ToolbarStorage.GroupItem);
      outlined init with copy of ToolbarItemPlacement.Role((v6 + 80), a1);
      v15 = type metadata accessor for ToolbarStorage.GroupItem;
      v16 = v6;
    }

    else
    {
      _s7SwiftUI14ToolbarStorageV9GroupItemVWObTm_0(v12, v9, type metadata accessor for ToolbarStorage.Item);
      outlined init with copy of ToolbarItemPlacement.Role((v9 + 112), a1);
      v15 = type metadata accessor for ToolbarStorage.Item;
      v16 = v9;
    }

    return outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v16, v15);
  }

  else if (result == 2)
  {
    v17 = v12[3];
    v19[2] = v12[2];
    v19[3] = v17;
    v19[4] = v12[4];
    v18 = v12[1];
    v19[0] = *v12;
    v19[1] = v18;
    outlined init with copy of ToolbarItemPlacement.Role(v19 + 8, a1);
    return outlined destroy of ToolbarStorage.SpacerItem(v19);
  }

  else
  {
    if (result == 3)
    {
      *a1 = 29;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      v14 = 2;
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      v14 = -1;
    }

    *(a1 + 40) = v14;
  }

  return result;
}

__n128 PlatformBarUpdater.scrollGeometry(edge:)@<Q0>(char a1@<W0>, _OWORD *a2@<X8>)
{
  static ScrollGeometry.zero.getter();
  v5 = *(v2 + 56);
  if (v5)
  {
    v6 = &selRef_topViewController;
  }

  else
  {
    v5 = *(v2 + 64);
    if (!v5)
    {
      v7 = 0;
      goto LABEL_6;
    }

    v6 = &selRef_selectedViewController;
  }

  v7 = [v5 *v6];
LABEL_6:
  v8 = [v7 contentScrollView];

  if (v8)
  {
    goto LABEL_7;
  }

  v13 = *(v2 + 56);
  if (v13)
  {
    v14 = &selRef_topViewController;
  }

  else
  {
    v13 = *(v2 + 64);
    if (!v13)
    {
      goto LABEL_11;
    }

    v14 = &selRef_selectedViewController;
  }

  v15 = [v13 *v14];
  if (v15)
  {
    v16 = (a1 & 1) != 0 ? 4 : 1;
    v17 = v15;
    v8 = [v15 contentScrollViewForEdge_];

    if (v8)
    {
LABEL_7:
      v9 = v8;
      [v9 safeAreaInsets];
      if (v11 == 0.0 && v10 == 0.0)
      {
        [v9 contentInset];
      }

      [v9 contentOffset];
      [v9 bounds];

      ScrollGeometry.contentOffset.setter();
      [v9 contentSize];
      ScrollGeometry.contentSize.setter();
      ScrollGeometry.containerSize.setter();
    }
  }

LABEL_11:
  a2[4] = v22;
  a2[5] = v23;
  a2[6] = v24;
  *a2 = v18;
  a2[1] = v19;
  result = v21;
  a2[2] = v20;
  a2[3] = v21;
  return result;
}

uint64_t InferredToolbarState.update(edge:to:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  ScrollGeometry.visibleRect.getter();
  v11 = v10;
  ScrollGeometry.contentSize.getter();
  v13 = v12;
  ScrollGeometry.visibleRect.getter();
  if (v9)
  {
    v15 = v11 + v14;
    if (v13 + -44.0 > v11 + v14)
    {
      v15 = v13 + -44.0;
    }

    if (v13 < v15)
    {
      v15 = v13;
    }

    v16 = vabdd_f64(v15, v13) * 0.25;
  }

  else
  {
    v17 = 44.0;
    if (v11 <= 44.0)
    {
      v17 = v11;
    }

    v16 = v17 * 0.25;
    if (v11 < 0.0)
    {
      v16 = 0.0;
    }
  }

  if (v16 < 0.0)
  {
    v16 = 0.0;
  }

  if (v16 <= 1.0)
  {
    v18 = v16;
  }

  else
  {
    v18 = 1.0;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v8;
  result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9 & 1, isUniquelyReferenced_nonNull_native, v18);
  *v8 = v21;
  return result;
}

uint64_t specialized PlatformBarUpdater.updateBackgroundHost<A>(host:role:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = a4;
  v8 = v5;
  swift_beginAccess();
  v11 = *(v8 + 16);

  specialized PlatformBarBackgroundHost.update(configuration:barState:)(a3, v11, v7, a5, &v19);

  v12 = v19;
  v13 = v20;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    v19 = v12;
    v20 = v13;
    BarAppearanceBridge.didUpdate(bar:barUpdates:)(a2, &v19);
    v16 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastBarUpdates;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v15 + v16);
    *(v15 + v16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12 | (v13 << 8), a2, isUniquelyReferenced_nonNull_native);
    *(v15 + v16) = v18;
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  return result;
}

void BarAppearanceBridge.didUpdate(bar:barUpdates:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = a2[1];
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v7 = specialized static ToolbarPlacement.Role.== infix(_:_:)(a1, &v25);
  outlined destroy of ToolbarPlacement.Role(&v25);
  if (v7)
  {
    v8 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastBarUpdates;
    swift_beginAccess();
    v9 = *(v3 + v8);
    if (*(v9 + 16))
    {

      v10 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
      if (v11)
      {
        v12 = (*(v9 + 56) + 2 * v10);
        v13 = *v12;
        v14 = v12[1];
      }

      else
      {
        v13 = 0;
        v14 = 2;
      }
    }

    else
    {
      v13 = 0;
      v14 = 2;
    }

    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    v15 = specialized static ToolbarPlacement.Role.== infix(_:_:)(a1, &v25);
    outlined destroy of ToolbarPlacement.Role(&v25);
    if (v15)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v17 = Strong;
        if (BarAppearanceBridge.uiHasStatusBarOpinion.getter() && (LOBYTE(v25) = v13, BYTE1(v25) = v14, v23 = v5, v24 = v6, (specialized static PlatformBarUpdates.== infix(_:_:)(&v25, &v23) & 1) == 0))
        {
          *(swift_allocObject() + 16) = v17;
          v18 = v17;
          onNextMainRunLoop(do:)();
        }

        else
        {
        }
      }
    }

    LOBYTE(v25) = v13;
    BYTE1(v25) = v14;
    v23 = v5;
    v24 = v6;
    if ((specialized static PlatformBarUpdates.== infix(_:_:)(&v25, &v23) & 1) == 0)
    {
      v19 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_barBackgroundViewModels;
      swift_beginAccess();
      if (*(*(v3 + v19) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(a1), (v20 & 1) != 0))
      {
        swift_endAccess();
        LOBYTE(v25) = 17;
        v21 = swift_allocObject();
        swift_weakInit();
        v22 = swift_allocObject();
        *(v22 + 16) = v21;
        *(v22 + 24) = v5;
        *(v22 + 25) = v6;

        static Update.enqueueAction(reason:_:)();
      }

      else
      {
        swift_endAccess();
      }
    }
  }
}

uint64_t sub_18BF388DC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18BF38914()
{

  return swift_deallocObject();
}

uint64_t sub_18BF3894C()
{

  return swift_deallocObject();
}

uint64_t specialized static PlatformBarUpdates.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v2 = a1[1];
    v3 = a2[1];
    if (v2 == 2)
    {
      if (v3 == 2)
      {
        return 1;
      }
    }

    else if (v3 != 2 && ((v3 ^ v2) & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, __int16 a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(a4[7] + 2 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t specialized PlatformBarUpdater.updateBackgroundHost<A>(host:role:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v7 = *(v4 + 16);

  specialized PlatformBarBackgroundHost.update(configuration:barState:)(a3, v7, &v15);

  v8 = v15;
  v9 = v16;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v15 = v8;
    v16 = v9;
    BarAppearanceBridge.didUpdate(bar:barUpdates:)(a2, &v15);
    v12 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastBarUpdates;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v11 + v12);
    *(v11 + v12) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8 | (v9 << 8), a2, isUniquelyReferenced_nonNull_native);
    *(v11 + v12) = v14;
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  return result;
}

void specialized PlatformBarBackgroundHost.update(configuration:barState:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v8 = *(a1 + 24);

  Transaction.animation.setter();
  if ((v8 - 1) < 2)
  {

    v9 = *(a1 + 57);
    v10 = 1;
    if (v9 != 2)
    {
      if (v9)
      {
LABEL_4:
        v11 = [objc_opt_self() whiteColor];
        [v4 setTintColor_];

        v12 = 0;
        v13 = 1;
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (!*(a2 + 16))
  {
    __break(1u);
    goto LABEL_27;
  }

  v14 = specialized __RawDictionaryStorage.find<A>(_:)(1);
  if ((v15 & 1) == 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v16 = *(*(a2 + 56) + 8 * v14);

  if (v16 >= 1.0)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  v17 = *(a1 + 57);
  if (v17 == 2)
  {
    goto LABEL_16;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_28;
  }

  v18 = specialized __RawDictionaryStorage.find<A>(_:)(1);
  if ((v19 & 1) == 0)
  {
LABEL_29:
    __break(1u);
    return;
  }

  if (*(*(a2 + 56) + 8 * v18) > 0.5)
  {
    if (v17)
    {
      goto LABEL_4;
    }

LABEL_15:
    v20 = [objc_opt_self() blackColor];
    [v4 setTintColor_];

    v12 = 0;
    v13 = 0;
    goto LABEL_17;
  }

LABEL_16:
  [v3 setTintColor_];
  v13 = 2;
  v12 = 1;
LABEL_17:
  v21 = [objc_opt_self() currentDevice];
  v22 = [v21 userInterfaceIdiom];

  if (v22 == 6 || (static _GraphInputs.defaultInterfaceIdiom.getter(), (static Solarium.isEnabled(for:)() & 1) == 0))
  {
    v23 = 1;
    if (v13)
    {
      v23 = 2;
    }

    if (v12)
    {
      v24 = 0;
    }

    else
    {
      v24 = v23;
    }

    [v4 setOverrideUserInterfaceStyle_];
  }

  *a3 = v10;
  a3[1] = v13;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v14 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v14;
    }

    outlined destroy of ToolbarPlacement.Role(*(v9 + 48) + 40 * v7);
    v10 = (*(v9 + 56) + 80 * v7);
    v11 = v10[3];
    a2[2] = v10[2];
    a2[3] = v11;
    *(a2 + 57) = *(v10 + 57);
    v12 = v10[1];
    *a2 = *v10;
    a2[1] = v12;
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = xmmword_18CD633F0;
    a2[1] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *(a2 + 57) = 0u;
  }

  return result;
}

{
  return specialized Dictionary._Variant.removeValue(forKey:)(a1, outlined init with take of Any, type metadata accessor for _DictionaryStorage<CodingUserInfoKey, Any>, outlined init with take of Any, a2);
}

{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v11;
    }

    outlined destroy of AnyHashable(*(v9 + 48) + 40 * v7);
    outlined init with take of Any((*(v9 + 56) + 32 * v7), a2);
    specialized _NativeDictionary._delete(at:)(v7, v9);
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

{
  return specialized Dictionary._Variant.removeValue(forKey:)(a1, outlined init with take of Sendable, type metadata accessor for _DictionaryStorage<CodingUserInfoKey, Sendable>, outlined init with take of Sendable, a2);
}

{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v11;
    }

    outlined init with take of Any((*(v9 + 56) + 32 * v7), a2);
    specialized _NativeDictionary._delete(at:)(v7, v9);
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

uint64_t getEnumTagSinglePayload for ToolbarButtonHoverShape(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t outlined destroy of Environment<ToolbarItemPlacement.Role>.Content(uint64_t a1)
{
  type metadata accessor for Environment<ToolbarItemPlacement.Role>.Content(0, &lazy cache variable for type metadata for Environment<ToolbarItemPlacement.Role>.Content, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E697DCB8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void protocol witness for PrimitiveButtonStyle.makeBody(configuration:) in conformance ToolbarButtonStyle(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  closure #1 in ToolbarButtonStyle.iosBody(configuration:)(a1, a2);
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<CGFloat?>>>(0);
  closure #2 in ToolbarButtonStyle.iosBody(configuration:)(a1, v2, a2 + *(v5 + 44));
}

uint64_t ToolbarButtonStyle.ResolvedBody.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, _ContentShapeKindModifier<ToolbarButtonHoverShape>>(0);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_7(v2, v7, type metadata accessor for PrimitiveButtonStyleConfiguration);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  outlined init with take of ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>(v7, v17 + v16, type metadata accessor for PrimitiveButtonStyleConfiguration);
  *v11 = 4;
  v18 = &v11[*(v9 + 44)];
  *v18 = partial apply for implicit closure #4 in implicit closure #3 in PlatformItemListButtonStyle.makeBody(configuration:);
  v18[1] = v17;
  type metadata accessor for ButtonAction(0);
  swift_storeEnumTagMultiPayload();
  v19 = *(v9 + 48);
  static AnyTransition.opacity.getter();
  static AnyTransition.identity.getter();
  v20 = static AnyTransition.asymmetric(insertion:removal:)();

  specialized View.toolbarButtonLabel()(v20, &v11[v19]);

  v21 = type metadata accessor for ToolbarButtonStyle.ResolvedBody(0);
  result = specialized Environment.wrappedValue.getter(*(v2 + *(v21 + 24)), *(v2 + *(v21 + 24) + 8));
  if ((result & 0xFF00) != 0x200)
  {
    v23 = result;
    outlined init with take of ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>(v11, v15, type metadata accessor for Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>);
    v24 = &v15[*(v13 + 36)];
    *v24 = v23;
    v24[1] = BYTE1(v23) & 1;
    v24[2] = BYTE2(v23) & 1;
    v24[3] = 0;
    *(v24 + 1) = 8;
    if (*(v2 + *(v21 + 20)) == 1)
    {
      if (one-time initialization token for lift == -1)
      {
        goto LABEL_6;
      }
    }

    else if (one-time initialization token for automatic == -1)
    {
LABEL_6:

      specialized View.hoverEffect<A>(_:isEnabled:)(v25, 1, a1);

      return outlined destroy of ModifiedContent<Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, _ContentShapeKindModifier<ToolbarButtonHoverShape>>(v15, type metadata accessor for ModifiedContent<Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, _ContentShapeKindModifier<ToolbarButtonHoverShape>>);
    }

    swift_once();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void closure #1 in ToolbarButtonContentModifier.body(content:)(unsigned __int8 a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  KeyPath = swift_getKeyPath();
  if (specialized Environment.wrappedValue.getter(a3, a4 & 1))
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  v12 = (a2 & 1) != 0;
  v13 = v11 & 0xFF00 | a1;
  v14 = swift_getKeyPath();
  v15 = swift_getKeyPath();
  type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarButtonContentModifier>, _EnvironmentKeyWritingModifier<ToolbarButtonHoverShape?>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, UIKitSystemButtonConfigurationModifier, UIKitButtonStyleModifier<BorderlessButtonStyleBase>>>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarButtonContentModifier>, _EnvironmentKeyWritingModifier<ToolbarButtonHoverShape?>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, UIKitSystemButtonConfigurationModifier, UIKitButtonStyleModifier<BorderlessButtonStyleBase>>);
  static UIButton.Configuration.borderless()();
  v16 = swift_getKeyPath();
  v17 = swift_getKeyPath();
  outlined consume of Environment<Color?>.Content(v16);
  outlined consume of Environment<Selector?>.Content(v17, 0);
  *a5 = KeyPath;
  *(a5 + 10) = v12;
  *(a5 + 8) = v13;
  *(a5 + 16) = v14;
  *(a5 + 24) = 0;
  *(a5 + 32) = v15;
  *(a5 + 40) = 0;
  v18 = swift_getKeyPath();
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ToolbarButtonContentModifier>, _EnvironmentKeyWritingModifier<ToolbarButtonHoverShape?>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, UIKitSystemButtonConfigurationModifier, UIKitButtonStyleModifier<BorderlessButtonStyleBase>>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier>>(0);
  v20 = a5 + *(v19 + 36);
  *v20 = v18;
  *(v20 + 8) = 0;
}

uint64_t initializeWithCopy for ToolbarButtonLabelModifier(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 41))
  {
    if (*(a2 + 40) == 1)
    {
      v4 = *(a2 + 3);
      *(a1 + 24) = v4;
      (**(v4 - 8))(a1, a2);
      *(a1 + 40) = 1;
    }

    else
    {
      v5 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 16) = v5;
      *(a1 + 25) = *(a2 + 25);
    }

    *(a1 + 41) = 1;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 41) = 0;
  }

  v6 = a2[6];
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  v10 = *(a2 + 81);
  v11 = *(a2 + 80);
  outlined copy of Environment<ToolbarItemMetrics?>.Content(v6, v7, v8, v9, v11, v10);
  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  *(a1 + 64) = v8;
  *(a1 + 72) = v9;
  *(a1 + 80) = v11;
  *(a1 + 81) = v10;
  v12 = a2[11];
  LOBYTE(v7) = *(a2 + 96);
  outlined copy of Environment<Selector?>.Content(v12, v7);
  *(a1 + 88) = v12;
  *(a1 + 96) = v7;
  v13 = a2[13];
  LOBYTE(v7) = *(a2 + 112);
  outlined copy of Environment<Selector?>.Content(v13, v7);
  *(a1 + 104) = v13;
  *(a1 + 112) = v7;
  v14 = a2[15];
  LOBYTE(v7) = *(a2 + 128);
  outlined copy of Environment<Selector?>.Content(v14, v7);
  *(a1 + 120) = v14;
  *(a1 + 128) = v7;
  v15 = a2[17];
  v16 = *(a2 + 144);
  outlined copy of Environment<Selector?>.Content(v15, v16);
  *(a1 + 136) = v15;
  *(a1 + 144) = v16;
  return a1;
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance ConfirmationDialog.PreferenceKey(uint64_t *a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v6);
  v3 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *a1;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v3, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v6);

  *a1 = v6;
  return result;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v44 = a1;
  v45 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v46 = v8;
  v47 = 0;
  v48 = v11 & v9;
  v49 = a2;
  v50 = a3;

  specialized LazyMapSequence.Iterator.next()(&v42);
  if (!v43)
  {
    goto LABEL_25;
  }

  v12 = v42;
  outlined init with take of ConfirmationDialog(&v42 + 8, v41);
  v13 = *a5;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (*(v13 + 24) < v19)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a4 & 1);
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    v14 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v24 = v14;
    specialized _NativeDictionary.copy()();
    v14 = v24;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v20)
  {
LABEL_11:
    v22 = *a5;
    v23 = 184 * v14;
    outlined init with copy of ConfirmationDialog(*(*a5 + 56) + 184 * v14, v40);
    outlined destroy of ConfirmationDialog(v41);
    outlined assign with take of ConfirmationDialog(v40, *(v22 + 56) + v23);
    goto LABEL_15;
  }

LABEL_13:
  v25 = *a5;
  *(*a5 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  *(v25[6] + 4 * v14) = v12;
  outlined init with take of ConfirmationDialog(v41, v25[7] + 184 * v14);
  v26 = v25[2];
  v18 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (!v18)
  {
    v25[2] = v27;
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(&v42);
    if (v43)
    {
      v20 = 1;
      do
      {
        v12 = v42;
        outlined init with take of ConfirmationDialog(&v42 + 8, v41);
        v30 = *a5;
        v31 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
        v33 = *(v30 + 16);
        v34 = (v32 & 1) == 0;
        v18 = __OFADD__(v33, v34);
        v35 = v33 + v34;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v32;
        if (*(v30 + 24) < v35)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, 1);
          v31 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
          if ((a4 & 1) != (v36 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v28 = *a5;
          v29 = 184 * v31;
          outlined init with copy of ConfirmationDialog(*(*a5 + 56) + 184 * v31, v40);
          outlined destroy of ConfirmationDialog(v41);
          outlined assign with take of ConfirmationDialog(v40, *(v28 + 56) + v29);
        }

        else
        {
          v37 = *a5;
          *(*a5 + 8 * (v31 >> 6) + 64) |= 1 << v31;
          *(v37[6] + 4 * v31) = v12;
          outlined init with take of ConfirmationDialog(v41, v37[7] + 184 * v31);
          v38 = v37[2];
          v18 = __OFADD__(v38, 1);
          v39 = v38 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v37[2] = v39;
        }

        specialized LazyMapSequence.Iterator.next()(&v42);
      }

      while (v43);
    }

LABEL_25:
    outlined consume of Set<UIPress>.Iterator._Variant(v44);

    return;
  }

LABEL_27:
  __break(1u);
}

{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v84 = a1;
  v85 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v86 = v8;
  v87 = 0;
  v88 = v11 & v9;
  v89 = a2;
  v90 = a3;

  specialized LazyMapSequence.Iterator.next()(v78);
  if (*(&v80 + 1) == 1)
  {
LABEL_5:
    outlined consume of Set<UIPress>.Iterator._Variant(v84);

    return;
  }

  v59 = a5;
  while (1)
  {
    v71 = v78[0];
    v72 = v78[1];
    v73 = v79;
    v76 = v82;
    *v77 = v83[0];
    *&v77[9] = *(v83 + 9);
    v74 = v80;
    v75 = v81;
    v23 = *a5;
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(&v71);
    v26 = *(v23 + 16);
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      break;
    }

    v30 = v25;
    if (*(v23 + 24) < v29)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, a4 & 1);
      v24 = specialized __RawDictionaryStorage.find<A>(_:)(&v71);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_36;
      }

LABEL_21:
      if (v30)
      {
        goto LABEL_22;
      }

      goto LABEL_32;
    }

    if (a4)
    {
      goto LABEL_21;
    }

    v48 = v24;
    specialized _NativeDictionary.copy()();
    v24 = v48;
    if (v30)
    {
LABEL_22:
      v32 = *a5;
      v33 = 80 * v24;
      v34 = *(*a5 + 56) + 80 * v24;
      v67 = *v34;
      v36 = *(v34 + 32);
      v35 = *(v34 + 48);
      v37 = *(v34 + 16);
      *&v70[9] = *(v34 + 57);
      v69 = v36;
      *v70 = v35;
      v68 = v37;
      v92 = v67;
      v38 = *(v34 + 2);
      *(v66 + 6) = *(v34 + 8);
      v66[0] = v38;
      v39 = v37;
      v40 = BYTE8(v37);
      v41 = *(v34 + 25);
      *&v65[15] = *(v34 + 40);
      *v65 = v41;
      v42 = *v70;
      v43 = v70[8];
      v64 = v70[8];
      v44 = v70[9];
      LODWORD(v38) = *(v34 + 58);
      v63 = *(v34 + 62);
      v62 = v38;
      v47 = *&v70[16];
      v13 = v70[24];
      v45 = BYTE1(v74);
      if (BYTE1(v67))
      {
        v45 = BYTE1(v67);
      }

      v91 = v45;
      if (!v68)
      {
        v39 = v75;
      }

      if (v40)
      {
        v46 = v40;
      }

      else
      {
        v46 = BYTE8(v75);
      }

      if (v43)
      {
        v42 = *v77;
        v64 = v77[8];
      }

      if (v44 == 2)
      {
        v12 = v77[9];
      }

      else
      {
        v12 = v44;
      }

      if (!v47)
      {
        v47 = *&v77[16];
      }

      outlined init with copy of ToolbarAppearanceConfiguration(&v67, v60);
      outlined destroy of ToolbarAppearanceConfiguration(&v74);
      if (!v13)
      {
        LOBYTE(v13) = v77[24];
      }

      v14 = v64;
      outlined destroy of ToolbarPlacement.Role(&v71);
      v15 = *(v32 + 56) + v33;
      v17 = *(v15 + 16);
      v16 = *(v15 + 32);
      v18 = *(v15 + 57);
      v61[0] = *(v15 + 48);
      *(v61 + 9) = v18;
      v60[0] = *v15;
      v60[1] = v17;
      v60[2] = v16;
      v19 = v91;
      *v15 = v92;
      *(v15 + 1) = v19;
      v20 = v66[0];
      *(v15 + 8) = *(v66 + 6);
      *(v15 + 16) = v39;
      *(v15 + 2) = v20;
      *(v15 + 24) = v46;
      v21 = *v65;
      *(v15 + 40) = *&v65[15];
      *(v15 + 48) = v42;
      *(v15 + 25) = v21;
      *(v15 + 56) = v14;
      *(v15 + 57) = v12;
      v22 = v62;
      *(v15 + 62) = v63;
      *(v15 + 58) = v22;
      *(v15 + 64) = v47;
      *(v15 + 72) = v13;
      outlined destroy of ToolbarAppearanceConfiguration(v60);
      a5 = v59;
      goto LABEL_15;
    }

LABEL_32:
    v49 = *a5;
    *(*a5 + 8 * (v24 >> 6) + 64) |= 1 << v24;
    v50 = v49[6] + 40 * v24;
    v51 = v71;
    v52 = v72;
    *(v50 + 32) = v73;
    *v50 = v51;
    *(v50 + 16) = v52;
    v53 = (v49[7] + 80 * v24);
    *v53 = v74;
    v54 = v75;
    v55 = v76;
    v56 = *v77;
    *(v53 + 57) = *&v77[9];
    v53[2] = v55;
    v53[3] = v56;
    v53[1] = v54;
    v57 = v49[2];
    v28 = __OFADD__(v57, 1);
    v58 = v57 + 1;
    if (v28)
    {
      goto LABEL_35;
    }

    v49[2] = v58;
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(v78);
    a4 = 1;
    if (*(&v80 + 1) == 1)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v46 = a1;
  v47 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v48 = v8;
  v49 = 0;
  v50 = v11 & v9;
  v51 = a2;
  v52 = a3;

  specialized LazyMapSequence.Iterator.next()(v44);
  if (!v45)
  {
    goto LABEL_25;
  }

  v12 = *&v44[0];
  outlined init with take of ScrollEnvironmentTransform((v44 + 8), v43);
  v13 = *a5;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (*(v13 + 24) < v19)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a4 & 1);
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    v14 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = v14;
    specialized _NativeDictionary.copy()();
    v14 = v25;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v20)
  {
LABEL_11:
    v22 = *a5;
    v23 = 40 * v14;
    outlined init with copy of _Benchmark(*(*a5 + 56) + 40 * v14, v42);
    __swift_destroy_boxed_opaque_existential_1(v43);
    v24 = *(v22 + 56);
    __swift_destroy_boxed_opaque_existential_1((v24 + v23));
    outlined init with take of ScrollEnvironmentTransform(v42, v24 + v23);
    goto LABEL_15;
  }

LABEL_13:
  v26 = *a5;
  *(*a5 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  *(v26[6] + 8 * v14) = v12;
  outlined init with take of ScrollEnvironmentTransform(v43, v26[7] + 40 * v14);
  v27 = v26[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v18)
  {
    v26[2] = v28;
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(v44);
    if (v45)
    {
      v20 = 1;
      do
      {
        v12 = *&v44[0];
        outlined init with take of ScrollEnvironmentTransform((v44 + 8), v43);
        v32 = *a5;
        v33 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
        v35 = *(v32 + 16);
        v36 = (v34 & 1) == 0;
        v18 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (*(v32 + 24) < v37)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v37, 1);
          v33 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
          if ((a4 & 1) != (v38 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v29 = *a5;
          v30 = 40 * v33;
          outlined init with copy of _Benchmark(*(*a5 + 56) + 40 * v33, v42);
          __swift_destroy_boxed_opaque_existential_1(v43);
          v31 = *(v29 + 56);
          __swift_destroy_boxed_opaque_existential_1((v31 + v30));
          outlined init with take of ScrollEnvironmentTransform(v42, v31 + v30);
        }

        else
        {
          v39 = *a5;
          *(*a5 + 8 * (v33 >> 6) + 64) |= 1 << v33;
          *(v39[6] + 8 * v33) = v12;
          outlined init with take of ScrollEnvironmentTransform(v43, v39[7] + 40 * v33);
          v40 = v39[2];
          v18 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v39[2] = v41;
        }

        specialized LazyMapSequence.Iterator.next()(v44);
      }

      while (v45);
    }

LABEL_25:
    outlined consume of Set<UIPress>.Iterator._Variant(v46);

    return;
  }

LABEL_27:
  __break(1u);
}

double protocol witness for ViewModifier.body(content:) in conformance ToolbarButtonLabelModifier@<D0>(double (**a1)@<D0>(char a1@<W0>, uint64_t a2@<X8>)@<X8>)
{
  outlined init with copy of ToolbarButtonLabelModifier(v1, v9);
  v3 = swift_allocObject();
  v4 = v9[7];
  *(v3 + 112) = v9[6];
  *(v3 + 128) = v4;
  *(v3 + 144) = v9[8];
  *(v3 + 160) = v10;
  v5 = v9[3];
  *(v3 + 48) = v9[2];
  *(v3 + 64) = v5;
  v6 = v9[5];
  *(v3 + 80) = v9[4];
  *(v3 + 96) = v6;
  result = *v9;
  v8 = v9[1];
  *(v3 + 16) = v9[0];
  *(v3 + 32) = v8;
  *a1 = partial apply for closure #1 in ToolbarButtonLabelModifier.body(content:);
  a1[1] = v3;
  return result;
}

uint64_t sub_18BF39C54(__n128 a1)
{
  if (*(v1 + 57))
  {
    if (*(v1 + 56) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1((v1 + 16));
    }
  }

  else
  {
  }

  outlined consume of Environment<ToolbarItemMetrics?>.Content(*(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 97));
  outlined consume of Environment<Selector?>.Content(*(v1 + 104), *(v1 + 112));
  outlined consume of Environment<Selector?>.Content(*(v1 + 120), *(v1 + 128));
  outlined consume of Environment<Selector?>.Content(*(v1 + 136), *(v1 + 144));
  outlined consume of Environment<Selector?>.Content(*(v1 + 152), *(v1 + 160));

  return swift_deallocObject();
}

double ToolbarButtonLabelModifier.maxHeight.getter()
{
  static _GraphInputs.defaultInterfaceIdiom.getter();
  if (static Solarium.isEnabled(for:)())
  {
    specialized Environment.wrappedValue.getter(*(v0 + 88), *(v0 + 96));
    static _GraphInputs.defaultInterfaceIdiom.getter();
    v1 = static Solarium.isEnabled(for:)();
    result = 36.0;
    if ((v1 & 1) == 0)
    {
      return 30.0;
    }
  }

  else
  {
    specialized Environment.wrappedValue.getter(*(v0 + 120), *(v0 + 128), &v4);
    if (v4 == 2 || (v4 & 1) != 0)
    {
      return INFINITY;
    }

    else
    {
      return 32.0;
    }
  }

  return result;
}

uint64_t outlined init with copy of Environment<HeaderFooterConfiguration>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  type metadata accessor for _EnvironmentKeyWritingModifier<CGFloat>(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

unint64_t lazy protocol witness table accessor for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>()
{
  result = lazy protocol witness table cache variable for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>;
  if (!lazy protocol witness table cache variable for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>)
  {
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA08BordereddE0VGMaTm_0(255, &lazy cache variable for type metadata for PartialRangeThrough<DynamicTypeSize>, lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize, MEMORY[0x1E697E738], MEMORY[0x1E69E6ED0]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6ED8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>);
  }

  return result;
}

uint64_t ResolvedScrollBehavior.containsLazyScrollableCollection.getter()
{
  type metadata accessor for (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>)?(0, &lazy cache variable for type metadata for [ScrollableCollection], type metadata accessor for ScrollableCollection, MEMORY[0x1E69E62F8]);
  static Update.ensure<A>(_:)();
  v0 = v9[0];
  result = v9[0] + 32;
  v2 = -*(v9[0] + 16);
  v3 = -1;
  while (1)
  {
    v4 = v2 + v3;
    if (v2 + v3 == -1)
    {
LABEL_5:

      return v4 != -1;
    }

    if (++v3 >= *(v0 + 16))
    {
      break;
    }

    v5 = result + 40;
    outlined init with copy of _Benchmark(result, v9);
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v8 = (*(v7 + 96))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v9);
    result = v5;
    if (v8)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

void ScrollBehaviorModifier.LayoutRoleFilter.value.getter()
{
  v1 = *v0;
  type metadata accessor for [ScrollTargetRole.Role : [ScrollableCollection]](0);
  if (*(*AGGraphGetValue() + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v1);
    if (v2)
    {
    }
  }
}

unint64_t lazy protocol witness table accessor for type ScrollTargetRole.Role and conformance ScrollTargetRole.Role()
{
  result = lazy protocol witness table cache variable for type ScrollTargetRole.Role and conformance ScrollTargetRole.Role;
  if (!lazy protocol witness table cache variable for type ScrollTargetRole.Role and conformance ScrollTargetRole.Role)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697EB18], MEMORY[0x1E697EB10], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollTargetRole.Role and conformance ScrollTargetRole.Role);
  }

  return result;
}

BOOL ScrollViewCommitMutation.combine<A>(with:)(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  if (swift_dynamicCast())
  {
    v9[8] = v19;
    v9[9] = v20;
    v9[10] = v21;
    v9[4] = v15;
    v9[5] = v16;
    v9[6] = v17;
    v9[7] = v18;
    v9[0] = v11;
    v9[1] = v12;
    v9[2] = v13;
    v9[3] = v14;
    v7[8] = v19;
    v7[9] = v20;
    v7[10] = v21;
    v7[4] = v15;
    v7[5] = v16;
    v7[6] = v17;
    v7[7] = v18;
    v7[0] = v11;
    v7[1] = v12;
    v10 = v22;
    v8 = v22;
    v7[2] = v13;
    v7[3] = v14;
    v5 = ScrollViewCommitMutation.merge(_:)(v7);
    outlined destroy of ScrollViewCommitMutation(v9);
  }

  else
  {
    return 0;
  }

  return v5;
}

uint64_t CoreInteractionRepresentableAdaptor.appendInteractions(to:)(uint64_t a1, uint64_t a2)
{
  v10[0] = (*(*(a2 + 24) + 16))(*(a2 + 16), *(a2 + 24));
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E6328], v2);
  MEMORY[0x18D00CB20](&v7, v2, WitnessTable);

  v9 = v7;
  type metadata accessor for EnumeratedSequence();
  EnumeratedSequence.makeIterator()();
  type metadata accessor for EnumeratedSequence.Iterator();
  EnumeratedSequence.Iterator.next()();
  for (i = v8; v8; i = v8)
  {
    v5 = i;
    CoreInteractionRepresentableInteractionsProxy.append(interaction:tag:)();

    EnumeratedSequence.Iterator.next()();
  }
}

uint64_t associated type witness table accessor for CoreInteractionRepresentable.InteractionView : CoreInteractionView in CoreInteractionRepresentableAdaptor<A>(uint64_t a1)
{
  return swift_getWitnessTable(protocol conformance descriptor for _UIInteractionView<A, B>, a1);
}

{
  return swift_getWitnessTable(protocol conformance descriptor for _UIInteractionView<A, B>, a1);
}

double _UIInteractionView.coreInteractions.getter@<D0>(void *a1@<X8>)
{
  v3 = direct field offset for _UIInteractionView.coreInteractions;
  swift_beginAccess();
  *a1 = *(v1 + v3);

  return result;
}

id specialized AppSceneDelegate.stateRestorationActivity(for:)()
{
  v1 = v0;
  AppSceneDelegate.sceneItem()(&v33);
  v2 = v36;
  outlined destroy of SceneList.Item(&v33);
  v3 = 0;
  if (v2 != 2)
  {
    v4 = objc_allocWithZone(MEMORY[0x1E696B090]);
    v5 = MEMORY[0x18D00C850](0xD000000000000022, 0x800000018CD41340);
    v3 = [v4 initWithActivityType_];

    v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (*(v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneStorageValues))
    {
      v33 = *(v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneStorageValues);
      closure #1 in AppSceneDelegate.stateRestorationActivity(for:)(&v33, &v32);
    }

    v31 = MEMORY[0x1E69E7CD0];
    v6 = MEMORY[0x1E69E6158];
    if (*(v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_presentationDataType))
    {
      makeStableTypeData(_:)();
      v29 = v35;
      v7 = StrongHash.description.getter();
      v9 = v8;
      AnyHashable.init<A>(_:)();
      v30 = v6;
      *&v28 = v7;
      *(&v28 + 1) = v9;
      outlined init with take of Any(&v28, v27);
      v10 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, &v33, isUniquelyReferenced_nonNull_native);
      outlined destroy of AnyHashable(&v33);
      v32 = v10;
      specialized Set._Variant.insert(_:)(&v33, 0xD00000000000001BLL, 0x800000018CD41390);
    }

    v12 = (v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneItemID);
    v13 = *(v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneItemID + 16);
    if (v13 != 255)
    {
      v14 = *v12;
      v15 = v12[1];
      if (v13)
      {
        v33 = _typeName(_:qualified:)();
        v34 = v16;
        MEMORY[0x18D00C9B0](45, 0xE100000000000000);
        LOBYTE(v28) = v15;
        v17 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x18D00C9B0](v17);

        outlined consume of SceneID?(v14, v15, v13);
        v15 = v34;
        v14 = v33;
      }

      else
      {
      }

      *&v28 = 0xD000000000000019;
      *(&v28 + 1) = 0x800000018CD3D380;
      AnyHashable.init<A>(_:)();
      v30 = v6;
      *&v28 = v14;
      *(&v28 + 1) = v15;
      outlined init with take of Any(&v28, v27);
      v18 = v32;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, &v33, v19);
      outlined destroy of AnyHashable(&v33);
      v32 = v18;
      specialized Set._Variant.insert(_:)(&v33, 0xD000000000000019, 0x800000018CD3D380);
    }

    v20 = *(v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_rawPresentationDataValue + 8);
    if (v20 >> 60 != 15)
    {
      v21 = *(v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_rawPresentationDataValue);
      *&v28 = 0xD00000000000001CLL;
      *(&v28 + 1) = 0x800000018CD41370;
      outlined copy of Data._Representation(v21, v20);
      AnyHashable.init<A>(_:)();
      v30 = MEMORY[0x1E6969080];
      *&v28 = v21;
      *(&v28 + 1) = v20;
      outlined init with take of Any(&v28, v27);
      outlined copy of Data._Representation(v21, v20);
      v22 = v32;
      v23 = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, &v33, v23);
      outlined destroy of AnyHashable(&v33);
      v32 = v22;
      specialized Set._Variant.insert(_:)(&v33, 0xD00000000000001CLL, 0x800000018CD41370);
      outlined consume of Data?(v21, v20);
    }

    if (*(v31 + 16))
    {
      isa = Set._bridgeToObjectiveC()().super.isa;

      [v3 setRequiredUserInfoKeys_];
    }

    else
    {
    }

    v25 = Dictionary._bridgeToObjectiveC()().super.isa;
    [v3 setUserInfo_];
  }

  return v3;
}

uint64_t closure #1 in AppSceneDelegate.stateRestorationActivity(for:)(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a1;
  v19 = *(*a1 + 16);
  swift_beginAccess();
  v6 = *(v5 + 24);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_9:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = *(*(v6 + 56) + ((v12 << 9) | (8 * v13)));
      v15 = v14[6];

      project #1 <A>(type:) in SceneStorageValues.Entry.encode(into:)(v15, v14, &v19, v15);

      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  v16 = v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *a2;
  *a2 = 0x8000000000000000;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v16, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v19);
  if (!v3)
  {

    *a2 = v19;
  }

LABEL_14:

  *a2 = v19;

  __break(1u);
  return result;
}

_OWORD *specialized LazyMapSequence.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    outlined init with copy of AnyHashable(*(v3 + 48) + 40 * v13, &v17);
    outlined init with copy of Any(*(v3 + 56) + 32 * v13, v22);
    v23 = v17;
    v24 = v18;
    *&v25 = v19;
    result = outlined init with take of Any(v22, (&v25 + 8));
    v15 = *(&v24 + 1);
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v15)
    {
      v16 = v1[5];
      v17 = v23;
      *&v18 = v24;
      *(&v18 + 1) = v15;
      v19 = v25;
      v20 = v26;
      v21 = v27;
      v16(&v17);
      return outlined destroy of (key: ViewIdentity, value: ConfirmationDialog)(&v17, &lazy cache variable for type metadata for (key: AnyHashable, value: Any), MEMORY[0x1E69E69B8], MEMORY[0x1E69E7CA0] + 8);
    }

    else
    {
      *(a1 + 64) = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v15 = 0;
        v12 = 0;
        v27 = 0;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<AnyHashable, Any>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<AnyHashable, Any>)
  {
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<AnyHashable, Any>);
    }
  }
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      specialized _NativeSet.copy()();
      a3 = v9;
      goto LABEL_15;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v7 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](result);
  MEMORY[0x18D00F6F0](a2);
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (v14[1] == a2 && *v14 == result)
      {
        goto LABEL_18;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_15:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_18:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

double outlined copy of FocusStore?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance AccessibilityRepresentationModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AccessibilityRepresentationModifier<A>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t View.accessibilityAddTraits(_:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (v3 <= 0x3F)
  {
    v4 = 1 << v3;
  }

  else
  {
    v4 = 0;
  }

  v6[2] = v4;
  v6[3] = v4;
  return View.accessibility(isEnabled:body:)(1, partial apply for closure #1 in View.accessibilityTraits(_:), v6, a2, a3);
}

uint64_t OnScrollVisibilityChangeModifier.body(content:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v13 = *(v1 + 3);
  v14 = v13;
  _s7SwiftUI5StateVySbGMaTm_0(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  v4 = *v1;
  v6 = v1[1];
  v5 = v1[2];
  v7 = swift_allocObject();
  v8 = *(v2 + 1);
  *(v7 + 16) = *v2;
  *(v7 + 32) = v8;
  *(v7 + 48) = v2[4];
  v9 = swift_allocObject();
  v10 = *(v2 + 1);
  *(v9 + 16) = *v2;
  *(v9 + 32) = v10;
  *(v9 + 48) = v2[4];
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a1 + 24) = v12;
  *(a1 + 32) = partial apply for closure #1 in OnScrollVisibilityChangeModifier.body(content:);
  *(a1 + 40) = v7;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = partial apply for closure #2 in OnScrollVisibilityChangeModifier.body(content:);
  *(a1 + 88) = v9;
  swift_retain_n();
  outlined init with copy of State<Bool>(&v14, &v13);

  return outlined init with copy of State<Bool>(&v14, &v13);
}

uint64_t outlined init with copy of State<Bool>(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI5StateVySbGMaTm_0(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void OnScrollVisibilityGeometryAction.OnScrollVisibilityGeometryActionBinder.updateValue()()
{
  Value = AGGraphGetValue();
  if (*(Value + 24) == 1)
  {
    v2 = *Value;

    if (*(v0 + 44) != *AGGraphGetValue() >> 1)
    {
      *(v0 + 44) = *AGGraphGetValue() >> 1;
      *(v0 + 32) = 0xFFFFFFFFLL;
      *(v0 + 40) = 0;
      *(v0 + 52) = 2;
    }

    ++*(v0 + 48);
    if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v18) = *(v0 + 20) == *MEMORY[0x1E698D3F8];
      GeometryProxy.init(owner:size:environment:transform:position:safeAreaInsets:seed:)();
      v16 = 0;
      memset(v15, 0, sizeof(v15));
      v17 = 2;
      GeometryProxy.frameClippedToScrollViews(in:)();
      outlined destroy of CoordinateSpace(v15);
      v3 = AGGraphGetValue();
      v4 = v3[1];
      v18 = *v3;
      v19 = v4;
      v5 = MEMORY[0x18D00B390]();
      v7 = v14 / v6;
      v8 = v13 / v5;
      if (v8 >= v7)
      {
        v8 = v7;
      }

      v9 = v2 <= v8;
      v10 = *(v0 + 52);
      if (v10 == 2 || ((v9 ^ v10)) && (*(v0 + 52) = v9, v11 = UpdateCycleDetector.dispatch(label:isDebug:)(), (v11))
      {
        MEMORY[0x1EEE9AC00](v11);
        Attribute.syncMainIfReferences<A>(do:)();
      }

      else
      {
      }
    }
  }

  else
  {
    v12 = *(v0 + 52);
    if (v12 != 2 && (v12 & 1) != 0)
    {
      MEMORY[0x1EEE9AC00](Value);

      Attribute.syncMainIfReferences<A>(do:)();

      *(v0 + 52) = 2;
    }
  }
}

void closure #1 in _UIHostingView.invalidatesIntrinsicContentSizeOnIdealSizeChange.didset(float64x2_t *a1, float64x2_t *a2, uint64_t a3)
{
  v14 = *a1;
  v15 = *a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong traitCollection];
    [v5 displayScale];
    v7 = v6;

    if (v7 < 1.0 || (v8 = 1.0 / v7, 1.0 / v7 == 1.0))
    {
      v9 = vrndaq_f64(v14);
      v10 = vrndaq_f64(v15);
    }

    else
    {
      v12 = vdupq_lane_s64(*&v8, 0);
      v13 = vrndaq_f64(vdivq_f64(v15, v12));
      v9 = vmulq_n_f64(vrndaq_f64(vdivq_f64(v14, v12)), v8);
      v10 = vmulq_n_f64(v13, v8);
    }

    if (v9.f64[0] != v10.f64[0] || v9.f64[1] != v10.f64[1])
    {
      [v4 invalidateIntrinsicContentSize];
    }
  }
}

uint64_t type metadata completion function for ListUpdate(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    v9 = v3;
    v10 = v3;
    swift_getTupleTypeLayout2();
    v11 = &v8;
    result = swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v12 = &v7;
      swift_getTupleTypeLayout2();
      v13 = &v6;
      swift_getTupleTypeLayout2();
      swift_getTupleTypeLayout2();
      swift_getTupleTypeLayout2();
      v14 = &v5;
      v15 = v3;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

unint64_t specialized Dictionary.init(dictionaryLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = v24 - v12;
  if (MEMORY[0x18D00CD40](a1, TupleTypeMetadata2, v11))
  {
    type metadata accessor for _DictionaryStorage();
    v14 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC8];
  }

  result = MEMORY[0x18D00CDF0](a1, TupleTypeMetadata2);
  if (result)
  {
    if (result >= 1)
    {
      v24[0] = v10;
      v28 = a4;
      v16 = 0;
      v17 = *(TupleTypeMetadata2 + 48);
      v26 = a3;
      v27 = (v9 + 16);
      v24[2] = a2 - 8;
      v25 = v17;
      v24[1] = a3 - 8;
      while (1)
      {
        v18 = result;
        if (Array._hoistableIsNativeTypeChecked()())
        {
          (*(v9 + 16))(v13, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, TupleTypeMetadata2);
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v24[0] != 8)
          {
            goto LABEL_19;
          }

          v29 = result;
          (*v27)(v13, &v29, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = __RawDictionaryStorage.find<A>(_:)(v13, a2, v28);
        if (v19)
        {
          break;
        }

        v20 = result;
        *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v14[6] + *(*(a2 - 8) + 72) * result, v13, a2);
        result = (*(*(v26 - 8) + 32))(v14[7] + *(*(v26 - 8) + 72) * v20, &v13[v25]);
        v21 = v14[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_17;
        }

        ++v16;
        v14[2] = v23;
        result = v18;
        if (v18 == v16)
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

    return v14;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SectionAccumulator.RowIDs and conformance SectionAccumulator.RowIDs()
{
  result = lazy protocol witness table cache variable for type SectionAccumulator.RowIDs and conformance SectionAccumulator.RowIDs;
  if (!lazy protocol witness table cache variable for type SectionAccumulator.RowIDs and conformance SectionAccumulator.RowIDs)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697F4A0], MEMORY[0x1E697F498], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SectionAccumulator.RowIDs and conformance SectionAccumulator.RowIDs);
  }

  return result;
}

void type metadata accessor for (AnyNavigationPath, Bool)()
{
  if (!lazy cache variable for type metadata for (AnyNavigationPath, Bool))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AnyNavigationPath, Bool));
    }
  }
}

void closure #1 in BoundNavigationPathDetector.updateValue()(uint64_t a2@<X8>)
{
  type metadata accessor for NavigationState.StackContent.Key?(0, &lazy cache variable for type metadata for Binding<AnyNavigationPath>, &type metadata for AnyNavigationPath, MEMORY[0x1E6981948]);
  AGGraphGetValue();

  v3 = dispatch thunk of AnyLocation.update()();

  *(a2 + 8) = v3 & 1;
}

uint64_t ShadowListDataSource.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, a2, v9);
  ShadowListUpdateRecorder.init(_:)(v11, a2, *(a3 + 8), v12, a4);
  return (*(v8 + 8))(a1, a2);
}

uint64_t outlined init with copy of ObservationTracking._AccessList?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ObservationTracking?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ShadowListUpdateRecorder.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  updated = type metadata accessor for ShadowListUpdateRecorder(0, a2, a3, a4);
  v9 = *(updated + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14[0] = AssociatedTypeWitness;
  v14[1] = MEMORY[0x1E69E6530];
  v14[2] = AssociatedConformanceWitness;
  v14[3] = MEMORY[0x1E69E6548];
  type metadata accessor for ListUpdate(0, v14);
  *(a5 + v9) = Array.init()();
  v12 = *(updated + 40);
  *(a5 + v12) = Array.init()();
  return (*(*(a2 - 8) + 32))(a5, a1, a2);
}

uint64_t BoundNavigationPathDetector.PathObservation.tracking.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ObservationTracking();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtCV7SwiftUI27BoundNavigationPathDetector15PathObservation_tracking;
  swift_beginAccess();
  if (!(*(v5 + 48))(v2 + v8, 1, v4))
  {
    (*(v5 + 16))(v7, v2 + v8, v4);
    ObservationTracking.cancel()();
    (*(v5 + 8))(v7, v4);
  }

  *(v2 + OBJC_IVAR____TtCV7SwiftUI27BoundNavigationPathDetector15PathObservation_updateObserved) = 0;
  swift_beginAccess();
  outlined assign with take of ObservationTracking?(a1, v2 + v8);
  return swift_endAccess();
}

double destroy for CollectionViewListDataSource(uint64_t a1, int *a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  v4 = a2[9];
  v5 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = a1 + a2[10];
  v7 = *(v6 + 8);
  if (v7)
  {
    if (v7 == 1)
    {
      goto LABEL_7;
    }
  }

  if (*(v6 + 64))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v6 + 24));
  }

LABEL_7:

  return result;
}

uint64_t outlined assign with take of ObservationTracking?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ObservationTracking?(0, &lazy cache variable for type metadata for ObservationTracking?, MEMORY[0x1E69E81D8]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ObservationTracking?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for ObservationTracking?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void (*specialized ToolbarAppearanceModifier.PreferenceValue.value.getter(uint64_t a1))()
{
  v2 = specialized ToolbarAppearanceModifier.PreferenceValue.resolvedBars.getter(a1);
  memset(v21, 0, sizeof(v21));
  v22 = xmmword_18CD90770;
  v3 = specialized Sequence<>.contains(_:)(v21, v2);

  outlined destroy of ToolbarPlacement.Role(v21);
  v4 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  if (v3)
  {
    AGGraphClearUpdate();
    AGGraphGetValue();

    v20 = Transaction.animation.getter();

    AGGraphSetUpdate();
    v19 = *AGGraphGetValue();
    v5 = *(AGGraphGetValue() + 16);

    v18 = *(AGGraphGetValue() + 24);
    Value = AGGraphGetValue();
    v7 = *(Value + 32);
    v8 = *(Value + 40);
    v9 = AGGraphGetValue();
    v10 = *(v9 + 48);
    v11 = *(v9 + 56);
    v12 = *(AGGraphGetValue() + 57);
    v13 = *(AGGraphGetValue() + 58);
    v14 = *(AGGraphGetValue() + 8);

    v15 = *(AGGraphGetValue() + 59);
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = v19;
    *(v16 + 32) = v5;
    *(v16 + 40) = v18;
    *(v16 + 48) = v7;
    *(v16 + 56) = v8;
    *(v16 + 64) = v10;
    *(v16 + 72) = v11;
    *(v16 + 73) = v12;
    *(v16 + 74) = v13;
    *(v16 + 80) = v14;
    *(v16 + 88) = v20;
    *(v16 + 96) = v15;
    return partial apply for specialized closure #3 in ToolbarAppearanceModifier.PreferenceValue.value.getter;
  }

  return v4;
}

{
  v2 = specialized ToolbarAppearanceModifier.PreferenceValue.resolvedBars.getter(a1);
  memset(v21, 0, sizeof(v21));
  v22 = xmmword_18CD6A6D0;
  v3 = specialized Sequence<>.contains(_:)(v21, v2);

  outlined destroy of ToolbarPlacement.Role(v21);
  v4 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  if (v3)
  {
    AGGraphClearUpdate();
    AGGraphGetValue();

    v20 = Transaction.animation.getter();

    AGGraphSetUpdate();
    v19 = *AGGraphGetValue();
    v5 = *(AGGraphGetValue() + 16);

    v18 = *(AGGraphGetValue() + 24);
    Value = AGGraphGetValue();
    v7 = *(Value + 32);
    v8 = *(Value + 40);
    v9 = AGGraphGetValue();
    v10 = *(v9 + 48);
    v11 = *(v9 + 56);
    v12 = *(AGGraphGetValue() + 57);
    v13 = *(AGGraphGetValue() + 58);
    v14 = *(AGGraphGetValue() + 8);

    v15 = *(AGGraphGetValue() + 59);
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = v19;
    *(v16 + 32) = v5;
    *(v16 + 40) = v18;
    *(v16 + 48) = v7;
    *(v16 + 56) = v8;
    *(v16 + 64) = v10;
    *(v16 + 72) = v11;
    *(v16 + 73) = v12;
    *(v16 + 74) = v13;
    *(v16 + 80) = v14;
    *(v16 + 88) = v20;
    *(v16 + 96) = v15;
    return partial apply for specialized closure #3 in ToolbarAppearanceModifier.PreferenceValue.value.getter;
  }

  return v4;
}

{
  v2 = specialized ToolbarAppearanceModifier.PreferenceValue.resolvedBars.getter(a1);
  memset(v21, 0, sizeof(v21));
  v22 = xmmword_18CD79D60;
  v3 = specialized Sequence<>.contains(_:)(v21, v2);

  outlined destroy of ToolbarPlacement.Role(v21);
  v4 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  if (v3)
  {
    AGGraphClearUpdate();
    AGGraphGetValue();

    v20 = Transaction.animation.getter();

    AGGraphSetUpdate();
    v19 = *AGGraphGetValue();
    v5 = *(AGGraphGetValue() + 16);

    v18 = *(AGGraphGetValue() + 24);
    Value = AGGraphGetValue();
    v7 = *(Value + 32);
    v8 = *(Value + 40);
    v9 = AGGraphGetValue();
    v10 = *(v9 + 48);
    v11 = *(v9 + 56);
    v12 = *(AGGraphGetValue() + 57);
    v13 = *(AGGraphGetValue() + 58);
    v14 = *(AGGraphGetValue() + 8);

    v15 = *(AGGraphGetValue() + 59);
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = v19;
    *(v16 + 32) = v5;
    *(v16 + 40) = v18;
    *(v16 + 48) = v7;
    *(v16 + 56) = v8;
    *(v16 + 64) = v10;
    *(v16 + 72) = v11;
    *(v16 + 73) = v12;
    *(v16 + 74) = v13;
    *(v16 + 80) = v14;
    *(v16 + 88) = v20;
    *(v16 + 96) = v15;
    return partial apply for specialized closure #3 in ToolbarAppearanceModifier.PreferenceValue.value.getter;
  }

  return v4;
}

{
  v2 = specialized ToolbarAppearanceModifier.PreferenceValue.resolvedBars.getter(a1);
  memset(v21, 0, sizeof(v21));
  v22 = xmmword_18CD79540;
  v3 = specialized Sequence<>.contains(_:)(v21, v2);

  outlined destroy of ToolbarPlacement.Role(v21);
  v4 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  if (v3)
  {
    AGGraphClearUpdate();
    AGGraphGetValue();

    v20 = Transaction.animation.getter();

    AGGraphSetUpdate();
    v19 = *AGGraphGetValue();
    v5 = *(AGGraphGetValue() + 16);

    v18 = *(AGGraphGetValue() + 24);
    Value = AGGraphGetValue();
    v7 = *(Value + 32);
    v8 = *(Value + 40);
    v9 = AGGraphGetValue();
    v10 = *(v9 + 48);
    v11 = *(v9 + 56);
    v12 = *(AGGraphGetValue() + 57);
    v13 = *(AGGraphGetValue() + 58);
    v14 = *(AGGraphGetValue() + 8);

    v15 = *(AGGraphGetValue() + 59);
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = v19;
    *(v16 + 32) = v5;
    *(v16 + 40) = v18;
    *(v16 + 48) = v7;
    *(v16 + 56) = v8;
    *(v16 + 64) = v10;
    *(v16 + 72) = v11;
    *(v16 + 73) = v12;
    *(v16 + 74) = v13;
    *(v16 + 80) = v14;
    *(v16 + 88) = v20;
    *(v16 + 96) = v15;
    return partial apply for specialized closure #3 in ToolbarAppearanceModifier.PreferenceValue.value.getter;
  }

  return v4;
}

{
  v2 = specialized ToolbarAppearanceModifier.PreferenceValue.resolvedBars.getter(a1);
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v3 = specialized Sequence<>.contains(_:)(v21, v2);

  outlined destroy of ToolbarPlacement.Role(v21);
  v4 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  if (v3)
  {
    AGGraphClearUpdate();
    AGGraphGetValue();

    v20 = Transaction.animation.getter();

    AGGraphSetUpdate();
    v19 = *AGGraphGetValue();
    v5 = *(AGGraphGetValue() + 16);

    v18 = *(AGGraphGetValue() + 24);
    Value = AGGraphGetValue();
    v7 = *(Value + 32);
    v8 = *(Value + 40);
    v9 = AGGraphGetValue();
    v10 = *(v9 + 48);
    v11 = *(v9 + 56);
    v12 = *(AGGraphGetValue() + 57);
    v13 = *(AGGraphGetValue() + 58);
    v14 = *(AGGraphGetValue() + 8);

    v15 = *(AGGraphGetValue() + 59);
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = v19;
    *(v16 + 32) = v5;
    *(v16 + 40) = v18;
    *(v16 + 48) = v7;
    *(v16 + 56) = v8;
    *(v16 + 64) = v10;
    *(v16 + 72) = v11;
    *(v16 + 73) = v12;
    *(v16 + 74) = v13;
    *(v16 + 80) = v14;
    *(v16 + 88) = v20;
    *(v16 + 96) = v15;
    return partial apply for specialized closure #3 in ToolbarAppearanceModifier.PreferenceValue.value.getter;
  }

  return v4;
}

{
  v2 = specialized ToolbarAppearanceModifier.PreferenceValue.resolvedBars.getter(a1);
  memset(v21, 0, sizeof(v21));
  v22 = xmmword_18CD7DD20;
  v3 = specialized Sequence<>.contains(_:)(v21, v2);

  outlined destroy of ToolbarPlacement.Role(v21);
  v4 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  if (v3)
  {
    AGGraphClearUpdate();
    AGGraphGetValue();

    v20 = Transaction.animation.getter();

    AGGraphSetUpdate();
    v19 = *AGGraphGetValue();
    v5 = *(AGGraphGetValue() + 16);

    v18 = *(AGGraphGetValue() + 24);
    Value = AGGraphGetValue();
    v7 = *(Value + 32);
    v8 = *(Value + 40);
    v9 = AGGraphGetValue();
    v10 = *(v9 + 48);
    v11 = *(v9 + 56);
    v12 = *(AGGraphGetValue() + 57);
    v13 = *(AGGraphGetValue() + 58);
    v14 = *(AGGraphGetValue() + 8);

    v15 = *(AGGraphGetValue() + 59);
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = v19;
    *(v16 + 32) = v5;
    *(v16 + 40) = v18;
    *(v16 + 48) = v7;
    *(v16 + 56) = v8;
    *(v16 + 64) = v10;
    *(v16 + 72) = v11;
    *(v16 + 73) = v12;
    *(v16 + 74) = v13;
    *(v16 + 80) = v14;
    *(v16 + 88) = v20;
    *(v16 + 96) = v15;
    return partial apply for specialized closure #3 in ToolbarAppearanceModifier.PreferenceValue.value.getter;
  }

  return v4;
}