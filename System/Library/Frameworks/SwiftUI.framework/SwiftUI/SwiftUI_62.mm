_OWORD *initializeWithTake for ToolbarContentDescription(_OWORD *a1, _OWORD *a2, int *a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;
  a1[2] = a2[2];
  *(a1 + 41) = *(a2 + 41);
  v7 = a3[5];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = type metadata accessor for ToolbarStorage.NavigationProperties(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10))
  {
    type metadata accessor for ToolbarStorage.NavigationProperties?(0);
    memcpy(v8, v9, *(*(v12 - 8) + 64));
  }

  else
  {
    *v8 = *v9;
    *(v8 + 8) = *(v9 + 8);
    v8[2] = v9[2];
    *(v8 + 24) = *(v9 + 24);
    swift_unknownObjectWeakTakeInit();
    v13 = v9[6];
    v8[5] = v9[5];
    v8[6] = v13;
    v14 = *(v10 + 32);
    v15 = (v8 + v14);
    v16 = (v9 + v14);
    v17 = type metadata accessor for PlatformItemList.Item(0);
    v18 = *(v17 - 1);
    if ((*(v18 + 48))(v16, 1, v17))
    {
      type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(v15, v16, *(*(v19 - 8) + 64));
    }

    else
    {
      v53 = v18;
      v20 = v16[1];
      *v15 = *v16;
      v15[1] = v20;
      *(v15 + 32) = *(v16 + 32);
      *(v15 + 40) = *(v16 + 40);
      *(v15 + 56) = *(v16 + 56);
      v21 = v16[13];
      v15[12] = v16[12];
      v15[13] = v21;
      v15[14] = v16[14];
      *(v15 + 235) = *(v16 + 235);
      v22 = v16[9];
      v15[8] = v16[8];
      v15[9] = v22;
      v23 = v16[11];
      v15[10] = v16[10];
      v15[11] = v23;
      v24 = v16[5];
      v15[4] = v16[4];
      v15[5] = v24;
      v25 = v16[7];
      v15[6] = v16[6];
      v15[7] = v25;
      v26 = v16[17];
      v15[16] = v16[16];
      v15[17] = v26;
      v27 = v16[23];
      v15[22] = v16[22];
      v15[23] = v27;
      v15[24] = v16[24];
      *(v15 + 50) = *(v16 + 50);
      v28 = v16[19];
      v15[18] = v16[18];
      v15[19] = v28;
      v29 = v16[21];
      v15[20] = v16[20];
      v15[21] = v29;
      v30 = *(v16 + 456);
      *(v15 + 440) = *(v16 + 440);
      *(v15 + 456) = v30;
      *(v15 + 472) = *(v16 + 472);
      v31 = *(v16 + 424);
      *(v15 + 408) = *(v16 + 408);
      *(v15 + 424) = v31;
      v15[30] = v16[30];
      *(v15 + 489) = *(v16 + 489);
      v15[32] = v16[32];
      *(v15 + 528) = *(v16 + 528);
      memcpy(v15 + 536, v16 + 536, 0x130uLL);
      v32 = *(v16 + 856);
      *(v15 + 840) = *(v16 + 840);
      *(v15 + 856) = v32;
      *(v15 + 872) = *(v16 + 872);
      *(v15 + 111) = *(v16 + 111);
      *(v15 + 112) = *(v16 + 112);
      *(v15 + 904) = *(v16 + 904);
      *(v15 + 920) = *(v16 + 920);
      *(v15 + 117) = *(v16 + 117);
      *(v15 + 118) = *(v16 + 118);
      *(v15 + 952) = *(v16 + 952);
      *(v15 + 953) = *(v16 + 953);
      v33 = v17[28];
      v55 = v15 + v33;
      v34 = v16 + v33;
      v35 = type metadata accessor for CommandOperation(0);
      v52 = *(v35 - 8);
      v54 = v34;
      v36 = v34;
      v37 = v35;
      if ((*(v52 + 48))(v36, 1))
      {
        type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
        memcpy(v55, v54, *(*(v38 - 8) + 64));
      }

      else
      {
        *v55 = *v54;
        v39 = *(v37 + 20);
        v50 = &v55[v39];
        v51 = &v54[v39];
        v40 = *&v54[v39 + 16];
        *v50 = *&v54[v39];
        *(v50 + 1) = v40;
        v49 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
        v41 = type metadata accessor for UUID();
        (*(*(v41 - 8) + 32))(&v50[v49], &v51[v49], v41);
        *&v55[*(v37 + 24)] = *&v54[*(v37 + 24)];
        (*(v52 + 56))();
      }

      *(v15 + v17[29]) = *(v16 + v17[29]);
      *(v15 + v17[30]) = *(v16 + v17[30]);
      *(v15 + v17[31]) = *(v16 + v17[31]);
      *(v15 + v17[32]) = *(v16 + v17[32]);
      *(v15 + v17[33]) = *(v16 + v17[33]);
      *(v15 + v17[34]) = *(v16 + v17[34]);
      (*(v53 + 56))(v15, 0, 1, v17);
    }

    (*(v11 + 56))(v8, 0, 1, v10);
  }

  v42 = a3[6];
  v43 = a3[7];
  v44 = a1 + v42;
  v45 = a2 + v42;
  v46 = *(v45 + 3);
  *(v44 + 2) = *(v45 + 2);
  *(v44 + 3) = v46;
  *(v44 + 8) = *(v45 + 8);
  v47 = *(v45 + 1);
  *v44 = *v45;
  *(v44 + 1) = v47;
  *(a1 + v43) = *(a2 + v43);
  return a1;
}

uint64_t assignWithTake for ToolbarContentDescription(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a1 + 24);
  if (v6 == 1)
  {
    goto LABEL_4;
  }

  v7 = *(a2 + 24);
  if (v7 == 1)
  {
    outlined destroy of NavigationTitleStorage(a1);
LABEL_4:
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 41) = *(a2 + 41);
    goto LABEL_16;
  }

  if (v6)
  {
    if (v7)
    {
      v9 = *(a2 + 16);
      v10 = *a1;
      v11 = *(a1 + 8);
      v12 = *(a1 + 16);
      *a1 = *a2;
      *(a1 + 16) = v9;
      outlined consume of Text.Storage(v10, v11, v12);
      *(a1 + 24) = *(a2 + 24);

      goto LABEL_10;
    }

    outlined destroy of Text(a1);
  }

  v13 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v13;
LABEL_10:
  v14 = (a1 + 32);
  v15 = *(a2 + 32);
  if (*(a1 + 32) != 1)
  {
    if (v15 != 1)
    {
      *v14 = v15;

      goto LABEL_15;
    }

    outlined destroy of Transaction(a1 + 32);
    v15 = *(a2 + 32);
  }

  *v14 = v15;
LABEL_15:
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
LABEL_16:
  v16 = a3[5];
  v17 = a1 + v16;
  v18 = a2 + v16;
  v19 = type metadata accessor for ToolbarStorage.NavigationProperties(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  v22 = v21(v17, 1, v19);
  v23 = v21(v18, 1, v19);
  if (!v22)
  {
    if (v23)
    {
      outlined destroy of CommandOperation(v17, type metadata accessor for ToolbarStorage.NavigationProperties);
      goto LABEL_22;
    }

    v35 = *(v17 + 8);
    if (v35 != 255)
    {
      v36 = *(v18 + 8);
      if (v36 != 255)
      {
        v37 = *v17;
        *v17 = *v18;
        *(v17 + 8) = v36 & 1;
        outlined consume of ResolvableCLKTextProvider.FontStorage(v37, v35 & 1);
        goto LABEL_31;
      }

      outlined destroy of ToolbarStorage.NavigationProperties.DocumentProperties(v17);
    }

    *v17 = *v18;
    *(v17 + 8) = *(v18 + 8);
LABEL_31:
    v55 = *(v17 + 24);
    v234 = a3;
    if (v55 != 254)
    {
      v56 = *(v18 + 24);
      if (v56 == 254)
      {
        outlined destroy of ToolbarStorage.NavigationProperties.Actions(v17 + 16);
      }

      else if (v55 != 255)
      {
        if (v56 != 255)
        {
          v57 = *(v17 + 16);
          *(v17 + 16) = *(v18 + 16);
          *(v17 + 24) = v56 & 1;
          outlined consume of PlatformItemCollection.Storage(v57, v55 & 1);
          goto LABEL_53;
        }

        outlined destroy of PlatformItemCollection(v17 + 16);
      }
    }

    *(v17 + 16) = *(v18 + 16);
    *(v17 + 24) = *(v18 + 24);
LABEL_53:
    swift_unknownObjectWeakTakeAssign();
    v68 = *(v17 + 48);
    *(v17 + 40) = *(v18 + 40);

    v69 = *(v19 + 32);
    v70 = v17 + v69;
    v71 = v18 + v69;
    v72 = type metadata accessor for PlatformItemList.Item(0);
    v73 = *(v72 - 1);
    v74 = *(v73 + 48);
    v75 = v74(v70, 1, v72);
    v76 = v74(v71, 1, v72);
    if (v75)
    {
      if (v76)
      {
        type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
        memcpy(v70, v71, *(*(v77 - 8) + 64));
        a3 = v234;
      }

      else
      {
        v79 = *(v71 + 16);
        *v70 = *v71;
        *(v70 + 16) = v79;
        *(v70 + 32) = *(v71 + 32);
        *(v70 + 40) = *(v71 + 40);
        *(v70 + 56) = *(v71 + 56);
        v80 = *(v71 + 208);
        *(v70 + 192) = *(v71 + 192);
        *(v70 + 208) = v80;
        *(v70 + 224) = *(v71 + 224);
        *(v70 + 235) = *(v71 + 235);
        v81 = *(v71 + 144);
        *(v70 + 128) = *(v71 + 128);
        *(v70 + 144) = v81;
        v82 = *(v71 + 176);
        *(v70 + 160) = *(v71 + 160);
        *(v70 + 176) = v82;
        v83 = *(v71 + 80);
        *(v70 + 64) = *(v71 + 64);
        *(v70 + 80) = v83;
        v84 = *(v71 + 112);
        *(v70 + 96) = *(v71 + 96);
        *(v70 + 112) = v84;
        v85 = *(v71 + 272);
        *(v70 + 256) = *(v71 + 256);
        *(v70 + 272) = v85;
        v86 = *(v71 + 368);
        *(v70 + 352) = *(v71 + 352);
        *(v70 + 368) = v86;
        *(v70 + 384) = *(v71 + 384);
        *(v70 + 400) = *(v71 + 400);
        v87 = *(v71 + 304);
        *(v70 + 288) = *(v71 + 288);
        *(v70 + 304) = v87;
        v88 = *(v71 + 336);
        *(v70 + 320) = *(v71 + 320);
        *(v70 + 336) = v88;
        v89 = *(v71 + 456);
        *(v70 + 440) = *(v71 + 440);
        *(v70 + 456) = v89;
        *(v70 + 472) = *(v71 + 472);
        v90 = *(v71 + 424);
        *(v70 + 408) = *(v71 + 408);
        *(v70 + 424) = v90;
        *(v70 + 480) = *(v71 + 480);
        *(v70 + 489) = *(v71 + 489);
        *(v70 + 512) = *(v71 + 512);
        *(v70 + 528) = *(v71 + 528);
        memcpy((v70 + 536), (v71 + 536), 0x130uLL);
        v91 = *(v71 + 856);
        *(v70 + 840) = *(v71 + 840);
        *(v70 + 856) = v91;
        *(v70 + 872) = *(v71 + 872);
        *(v70 + 888) = *(v71 + 888);
        *(v70 + 896) = *(v71 + 896);
        *(v70 + 904) = *(v71 + 904);
        *(v70 + 920) = *(v71 + 920);
        *(v70 + 936) = *(v71 + 936);
        *(v70 + 944) = *(v71 + 944);
        *(v70 + 952) = *(v71 + 952);
        *(v70 + 953) = *(v71 + 953);
        v92 = v72[28];
        v93 = (v70 + v92);
        v94 = (v71 + v92);
        v95 = type metadata accessor for CommandOperation(0);
        v96 = *(v95 - 8);
        if ((*(v96 + 48))(v94, 1, v95))
        {
          type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
          memcpy(v93, v94, *(*(v97 - 8) + 64));
        }

        else
        {
          *v93 = *v94;
          v107 = *(v95 + 20);
          v228 = v93;
          __dstb = v72;
          v108 = &v93[v107];
          v109 = &v94[v107];
          v110 = *&v94[v107 + 16];
          *v108 = *&v94[v107];
          v108[1] = v110;
          __srca = *(type metadata accessor for CommandGroupPlacement(0) + 20);
          v111 = type metadata accessor for UUID();
          v112 = &__srca[v108];
          v72 = __dstb;
          (*(*(v111 - 8) + 32))(v112, &__srca[v109], v111);
          *&v228[*(v95 + 24)] = *&v94[*(v95 + 24)];
          (*(v96 + 56))();
        }

        *(v70 + v72[29]) = *(v71 + v72[29]);
        *(v70 + v72[30]) = *(v71 + v72[30]);
        *(v70 + v72[31]) = *(v71 + v72[31]);
        *(v70 + v72[32]) = *(v71 + v72[32]);
        *(v70 + v72[33]) = *(v71 + v72[33]);
        *(v70 + v72[34]) = *(v71 + v72[34]);
        (*(v73 + 56))(v70, 0, 1, v72);
        a3 = v234;
      }

      goto LABEL_40;
    }

    a3 = v234;
    if (v76)
    {
      outlined destroy of CommandOperation(v70, type metadata accessor for PlatformItemList.Item);
      type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      v32 = *(*(v78 - 8) + 64);
      v33 = v70;
      v34 = v71;
      goto LABEL_23;
    }

    v98 = *v70;
    *v70 = *v71;

    v99 = *(v70 + 8);
    *(v70 + 8) = *(v71 + 8);

    v100 = *(v71 + 24);
    *(v70 + 16) = *(v71 + 16);
    *(v70 + 24) = v100;

    *(v70 + 32) = *(v71 + 32);
    v101 = *(v71 + 48);
    *(v70 + 40) = *(v71 + 40);
    *(v70 + 48) = v101;

    *(v70 + 56) = *(v71 + 56);
    if (*(v70 + 192) >> 1 == 4294967294)
    {
      goto LABEL_63;
    }

    if (*(v71 + 192) >> 1 == 4294967294)
    {
      outlined destroy of Image.Resolved(v70 + 64);
LABEL_63:
      v102 = *(v71 + 208);
      *(v70 + 192) = *(v71 + 192);
      *(v70 + 208) = v102;
      *(v70 + 224) = *(v71 + 224);
      *(v70 + 235) = *(v71 + 235);
      v103 = *(v71 + 144);
      *(v70 + 128) = *(v71 + 128);
      *(v70 + 144) = v103;
      v104 = *(v71 + 176);
      *(v70 + 160) = *(v71 + 160);
      *(v70 + 176) = v104;
      v105 = *(v71 + 80);
      *(v70 + 64) = *(v71 + 64);
      *(v70 + 80) = v105;
      v106 = *(v71 + 112);
      *(v70 + 96) = *(v71 + 96);
      *(v70 + 112) = v106;
      goto LABEL_77;
    }

    v113 = *(v70 + 72);
    if (v113 != 255)
    {
      v114 = *(v71 + 72);
      if (v114 != 255)
      {
        v115 = *(v70 + 64);
        *(v70 + 64) = *(v71 + 64);
        *(v70 + 72) = v114;
        outlined consume of GraphicsImage.Contents(v115, v113);
        goto LABEL_71;
      }

      outlined destroy of GraphicsImage.Contents(v70 + 64);
    }

    *(v70 + 64) = *(v71 + 64);
    *(v70 + 72) = *(v71 + 72);
LABEL_71:
    *(v70 + 80) = *(v71 + 80);
    *(v70 + 96) = *(v71 + 96);
    *(v70 + 104) = *(v71 + 104);
    *(v70 + 108) = *(v71 + 108);
    *(v70 + 121) = *(v71 + 121);
    *(v70 + 136) = *(v71 + 136);
    *(v70 + 152) = *(v71 + 152);
    *(v70 + 168) = *(v71 + 168);
    *(v70 + 169) = *(v71 + 169);
    v116 = *(v70 + 192);
    *(v70 + 170) = *(v71 + 170);
    if (v116 >> 1 != 0xFFFFFFFF)
    {
      v117 = *(v71 + 192);
      if (v117 >> 1 != 0xFFFFFFFF)
      {
        v119 = *(v71 + 200);
        v120 = *(v70 + 176);
        v121 = *(v70 + 184);
        v122 = *(v70 + 200);
        *(v70 + 176) = *(v71 + 176);
        *(v70 + 192) = v117;
        *(v70 + 200) = v119;
        outlined consume of AccessibilityImageLabel(v120, v121, v116, v122);
        goto LABEL_76;
      }

      outlined destroy of AccessibilityImageLabel(v70 + 176);
    }

    v118 = *(v71 + 192);
    *(v70 + 176) = *(v71 + 176);
    *(v70 + 192) = v118;
LABEL_76:
    *(v70 + 208) = *(v71 + 208);
    swift_unknownObjectRelease();
    *(v70 + 216) = *(v71 + 216);

    *(v70 + 224) = *(v71 + 224);
    *(v70 + 225) = *(v71 + 225);
    *(v70 + 228) = *(v71 + 228);
    *(v70 + 232) = *(v71 + 232);
    v123 = *(v70 + 240);
    *(v70 + 240) = *(v71 + 240);

    *(v70 + 248) = *(v71 + 248);
    *(v70 + 250) = *(v71 + 250);
LABEL_77:
    if (*(v70 + 264))
    {
      v124 = *(v71 + 264);
      if (v124)
      {
        *(v70 + 256) = *(v71 + 256);
        *(v70 + 264) = v124;

        v125 = *(v70 + 272);
        v126 = *(v71 + 272);
        if (v125 >= 2)
        {
          if (v126 >= 2)
          {
            *(v70 + 272) = v126;
          }

          else
          {

            *(v70 + 272) = *(v71 + 272);
          }
        }

        else
        {
          *(v70 + 272) = v126;
        }

        *(v70 + 280) = *(v71 + 280);
        *(v70 + 284) = *(v71 + 284);
        *(v70 + 286) = *(v71 + 286);
        *(v70 + 288) = *(v71 + 288);

        *(v70 + 296) = *(v71 + 296);

LABEL_87:
        v128 = *(v70 + 336);
        if (v128 >> 2 != 0xFFFFFFFF)
        {
          v129 = *(v71 + 336);
          if (v129 >> 2 != 0xFFFFFFFF)
          {
            v133 = *(v70 + 304);
            v134 = *(v70 + 312);
            v135 = *(v70 + 320);
            v136 = *(v70 + 328);
            v137 = *(v70 + 344);
            v138 = *(v70 + 352);
            v139 = *(v70 + 360);
            v140 = *(v70 + 368);
            v141 = *(v70 + 384);
            v142 = *(v70 + 400);
            v143 = *(v71 + 320);
            *(v70 + 304) = *(v71 + 304);
            *(v70 + 320) = v143;
            *(v70 + 336) = v129;
            *(v70 + 344) = *(v71 + 344);
            *(v70 + 360) = *(v71 + 360);
            *(v70 + 376) = *(v71 + 376);
            *(v70 + 392) = *(v71 + 392);
            outlined consume of PlatformItemList.Item.SystemItem(v133, v134, v135, v136, v128, v137, v138, v139, v140, *(&v140 + 1), v141, SBYTE8(v141), v142);
LABEL_92:
            v144 = (v71 + 408);
            v145 = *(v70 + 416);
            if (v145 == 1)
            {
LABEL_95:
              v147 = *(v71 + 456);
              *(v70 + 440) = *(v71 + 440);
              *(v70 + 456) = v147;
              *(v70 + 472) = *(v71 + 472);
              v148 = *(v71 + 424);
              *(v70 + 408) = *v144;
              *(v70 + 424) = v148;
              goto LABEL_118;
            }

            v146 = *(v71 + 416);
            if (v146 == 1)
            {
              outlined destroy of PlatformItemList.Item.SelectionBehavior(v70 + 408);
              goto LABEL_95;
            }

            *(v70 + 408) = *v144;
            *(v70 + 409) = *(v71 + 409);
            *(v70 + 410) = *(v71 + 410);
            *(v70 + 411) = *(v71 + 411);
            *(v70 + 412) = *(v71 + 412);
            if (v145)
            {
              if (v146)
              {
                v149 = *(v71 + 424);
                *(v70 + 416) = v146;
                *(v70 + 424) = v149;

                goto LABEL_103;
              }
            }

            else if (v146)
            {
              v150 = *(v71 + 424);
              *(v70 + 416) = v146;
              *(v70 + 424) = v150;
              goto LABEL_103;
            }

            *(v70 + 416) = *(v71 + 416);
LABEL_103:
            v151 = *(v71 + 432);
            if (*(v70 + 432))
            {
              if (v151)
              {
                v152 = *(v71 + 440);
                *(v70 + 432) = v151;
                *(v70 + 440) = v152;

                goto LABEL_110;
              }
            }

            else if (v151)
            {
              v153 = *(v71 + 440);
              *(v70 + 432) = v151;
              *(v70 + 440) = v153;
              goto LABEL_110;
            }

            *(v70 + 432) = *(v71 + 432);
LABEL_110:
            v154 = *(v71 + 448);
            if (*(v70 + 448))
            {
              if (v154)
              {
                v155 = *(v71 + 456);
                *(v70 + 448) = v154;
                *(v70 + 456) = v155;

LABEL_117:
                *(v70 + 464) = *(v71 + 464);
                *(v70 + 472) = *(v71 + 472);
LABEL_118:
                v157 = *(v71 + 488);
                *(v70 + 480) = *(v71 + 480);
                *(v70 + 488) = v157;

                *(v70 + 496) = *(v71 + 496);
                *(v70 + 504) = *(v71 + 504);
                v158 = *(v71 + 512);
                if (*(v70 + 512))
                {
                  if (v158)
                  {
                    v159 = *(v71 + 520);
                    *(v70 + 512) = v158;
                    *(v70 + 520) = v159;

                    goto LABEL_125;
                  }
                }

                else if (v158)
                {
                  v160 = *(v71 + 520);
                  *(v70 + 512) = v158;
                  *(v70 + 520) = v160;
                  goto LABEL_125;
                }

                *(v70 + 512) = *(v71 + 512);
LABEL_125:
                *(v70 + 528) = *(v71 + 528);
                if (*(v70 + 816))
                {
                  if (*(v71 + 816))
                  {
                    *(v70 + 536) = *(v71 + 536);
                    *(v70 + 544) = *(v71 + 544);

                    *(v70 + 552) = *(v71 + 552);
                    *(v70 + 560) = *(v71 + 560);

                    *(v70 + 568) = *(v71 + 568);
                    *(v70 + 576) = *(v71 + 576);
                    *(v70 + 592) = *(v71 + 592);
                    v161 = (v70 + 600);
                    v162 = (v71 + 600);
                    v163 = *(v70 + 624);
                    if (v163 != 1)
                    {
                      v164 = *(v71 + 624);
                      if (v164 != 1)
                      {
                        if (v163)
                        {
                          v166 = (v70 + 600);
                          if (v164)
                          {
                            __swift_destroy_boxed_opaque_existential_1(v166);
                          }

                          else
                          {
                            outlined destroy of AnyAccessibilityValue(v166);
                          }
                        }

                        v167 = *(v71 + 616);
                        *v161 = *v162;
                        *(v70 + 616) = v167;
                        *(v70 + 632) = *(v71 + 632);
                        *(v70 + 640) = *(v71 + 640);

LABEL_138:
                        *(v70 + 648) = *(v71 + 648);
                        *(v70 + 656) = *(v71 + 656);
                        v168 = (v70 + 664);
                        v169 = (v71 + 664);
                        if (*(v70 + 776) != 1)
                        {
                          v170 = *(v71 + 776);
                          if (v170 != 1)
                          {
                            *v168 = *v169;
                            *(v70 + 672) = *(v71 + 672);
                            *(v70 + 680) = *(v71 + 680);
                            *(v70 + 688) = *(v71 + 688);
                            *(v70 + 689) = *(v71 + 689);
                            *(v70 + 691) = *(v71 + 691);
                            *(v70 + 692) = *(v71 + 692);
                            *(v70 + 696) = *(v71 + 696);
                            v175 = *(v71 + 720);
                            *(v70 + 704) = *(v71 + 704);
                            *(v70 + 720) = v175;
                            *(v70 + 736) = *(v71 + 736);
                            *(v70 + 744) = *(v71 + 744);
                            *(v70 + 745) = *(v71 + 745);
                            *(v70 + 752) = *(v71 + 752);
                            *(v70 + 768) = *(v71 + 768);
                            *(v70 + 776) = v170;

                            *(v70 + 784) = *(v71 + 784);
                            *(v70 + 800) = *(v71 + 800);
                            *(v70 + 808) = *(v71 + 808);
                            goto LABEL_143;
                          }

                          outlined destroy of AccessibilityTextLayoutProperties(v70 + 664);
                        }

                        v171 = *(v71 + 776);
                        *(v70 + 760) = *(v71 + 760);
                        *(v70 + 776) = v171;
                        *(v70 + 792) = *(v71 + 792);
                        *(v70 + 808) = *(v71 + 808);
                        v172 = *(v71 + 712);
                        *(v70 + 696) = *(v71 + 696);
                        *(v70 + 712) = v172;
                        v173 = *(v71 + 744);
                        *(v70 + 728) = *(v71 + 728);
                        *(v70 + 744) = v173;
                        v174 = *(v71 + 680);
                        *v168 = *v169;
                        *(v70 + 680) = v174;
LABEL_143:
                        *(v70 + 816) = *(v71 + 816);

                        *(v70 + 824) = *(v71 + 824);

                        *(v70 + 832) = *(v71 + 832);

LABEL_144:
                        v176 = (v70 + 840);
                        v177 = (v71 + 840);
                        v178 = *(v70 + 864);
                        __dsta = v72;
                        if (v178 == 1)
                        {
LABEL_147:
                          v180 = *(v71 + 856);
                          *v176 = *v177;
                          *(v70 + 856) = v180;
                          *(v70 + 872) = *(v71 + 872);
                          *(v70 + 888) = *(v71 + 888);
                          goto LABEL_148;
                        }

                        v179 = *(v71 + 864);
                        if (v179 == 1)
                        {
                          outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior(v70 + 840);
                          goto LABEL_147;
                        }

                        if (v178)
                        {
                          v193 = (v70 + 840);
                          if (v179)
                          {
                            __swift_destroy_boxed_opaque_existential_1(v193);
                          }

                          else
                          {
                            outlined destroy of AnyNavigationLinkPresentedValue(v193);
                          }
                        }

                        v216 = *(v71 + 856);
                        *v176 = *v177;
                        *(v70 + 856) = v216;
                        *(v70 + 872) = *(v71 + 872);
                        v217 = *(v71 + 880);
                        if (*(v70 + 880))
                        {
                          if (v217)
                          {
                            v218 = *(v71 + 888);
                            *(v70 + 880) = v217;
                            *(v70 + 888) = v218;

                            goto LABEL_148;
                          }
                        }

                        else if (v217)
                        {
                          v219 = *(v71 + 888);
                          *(v70 + 880) = v217;
                          *(v70 + 888) = v219;
                          goto LABEL_148;
                        }

                        *(v70 + 880) = *(v71 + 880);
LABEL_148:
                        v181 = *(v70 + 896);
                        *(v70 + 896) = *(v71 + 896);

                        *(v70 + 904) = *(v71 + 904);
                        *(v70 + 912) = *(v71 + 912);

                        *(v70 + 920) = *(v71 + 920);
                        *(v70 + 928) = *(v71 + 928);

                        *(v70 + 936) = *(v71 + 936);

                        *(v70 + 944) = *(v71 + 944);

                        *(v70 + 952) = *(v71 + 952);
                        *(v70 + 953) = *(v71 + 953);
                        v182 = v72[28];
                        v183 = (v70 + v182);
                        v184 = (v71 + v182);
                        v185 = type metadata accessor for CommandOperation(0);
                        v186 = *(v185 - 8);
                        v187 = *(v186 + 48);
                        __src = v183;
                        LODWORD(v183) = v187(v183, 1, v185);
                        v229 = v184;
                        v188 = v187(v184, 1, v185);
                        if (v183)
                        {
                          a3 = v234;
                          if (!v188)
                          {
                            *__src = *v184;
                            v194 = *(v185 + 20);
                            v195 = &__src[v194];
                            v196 = &v184[v194];
                            v197 = *&v184[v194 + 16];
                            *v195 = *&v184[v194];
                            *(v195 + 1) = v197;
                            v198 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                            v199 = type metadata accessor for UUID();
                            v200 = &v195[v198];
                            v201 = &v196[v198];
                            a3 = v234;
                            (*(*(v199 - 8) + 32))(v200, v201, v199);
                            *&__src[*(v185 + 24)] = *&v184[*(v185 + 24)];
                            (*(v186 + 56))(__src, 0, 1, v185);
                            goto LABEL_158;
                          }

                          type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                          v190 = *(*(v189 - 8) + 64);
                          v191 = __src;
                        }

                        else
                        {
                          a3 = v234;
                          if (!v188)
                          {
                            *__src = *v184;
                            v203 = *(v185 + 20);
                            v204 = &__src[v203];
                            v205 = &v184[v203];
                            LOBYTE(v203) = v184[v203 + 16];
                            v206 = *v204;
                            v207 = *(v204 + 1);
                            v208 = v204[16];
                            *v204 = *v205;
                            v204[16] = v203;
                            outlined consume of Text.Storage(v206, v207, v208);
                            *(v204 + 3) = *(v205 + 3);

                            v209 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                            v210 = type metadata accessor for UUID();
                            (*(*(v210 - 8) + 40))(&v204[v209], &v205[v209], v210);
                            v211 = *(v185 + 24);
                            v212 = &__src[v211];
                            v202 = __dsta;
                            v213 = &v229[v211];
                            v214 = *&v229[v211];
                            if (*v212)
                            {
                              if (v214)
                              {
                                v215 = *(v213 + 1);
                                *v212 = v214;
                                *(v212 + 1) = v215;

                                goto LABEL_159;
                              }
                            }

                            else if (v214)
                            {
                              v220 = *(v213 + 1);
                              *v212 = v214;
                              *(v212 + 1) = v220;
                              goto LABEL_159;
                            }

                            *v212 = *v213;
                            goto LABEL_159;
                          }

                          outlined destroy of CommandOperation(__src, type metadata accessor for CommandOperation);
                          type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                          v190 = *(*(v192 - 8) + 64);
                          v191 = __src;
                        }

                        memcpy(v191, v184, v190);
LABEL_158:
                        v202 = __dsta;
LABEL_159:
                        *(v70 + v202[29]) = *(v71 + v202[29]);
                        *(v70 + v202[30]) = *(v71 + v202[30]);
                        *(v70 + v202[31]) = *(v71 + v202[31]);
                        *(v70 + v202[32]) = *(v71 + v202[32]);
                        *(v70 + v202[33]) = *(v71 + v202[33]);
                        *(v70 + v202[34]) = *(v71 + v202[34]);

                        goto LABEL_40;
                      }

                      outlined destroy of AccessibilityValueStorage(v70 + 600);
                    }

                    v165 = *(v71 + 616);
                    *v161 = *v162;
                    *(v70 + 616) = v165;
                    *(v70 + 632) = *(v71 + 632);
                    goto LABEL_138;
                  }

                  outlined destroy of PlatformItemList.Item.Accessibility(v70 + 536);
                }

                memcpy((v70 + 536), (v71 + 536), 0x130uLL);
                goto LABEL_144;
              }
            }

            else if (v154)
            {
              v156 = *(v71 + 456);
              *(v70 + 448) = v154;
              *(v70 + 456) = v156;
              goto LABEL_117;
            }

            *(v70 + 448) = *(v71 + 448);
            goto LABEL_117;
          }

          outlined destroy of PlatformItemList.Item.SystemItem(v70 + 304);
        }

        v130 = *(v71 + 384);
        *(v70 + 368) = *(v71 + 368);
        *(v70 + 384) = v130;
        *(v70 + 400) = *(v71 + 400);
        v131 = *(v71 + 320);
        *(v70 + 304) = *(v71 + 304);
        *(v70 + 320) = v131;
        v132 = *(v71 + 352);
        *(v70 + 336) = *(v71 + 336);
        *(v70 + 352) = v132;
        goto LABEL_92;
      }

      outlined destroy of Image.NamedResolved(v70 + 256);
    }

    v127 = *(v71 + 272);
    *(v70 + 256) = *(v71 + 256);
    *(v70 + 272) = v127;
    *(v70 + 288) = *(v71 + 288);
    goto LABEL_87;
  }

  if (v23)
  {
LABEL_22:
    type metadata accessor for ToolbarStorage.NavigationProperties?(0);
    v32 = *(*(v31 - 8) + 64);
    v33 = v17;
    v34 = v18;
LABEL_23:
    memcpy(v33, v34, v32);
    goto LABEL_40;
  }

  *v17 = *v18;
  *(v17 + 8) = *(v18 + 8);
  *(v17 + 16) = *(v18 + 16);
  *(v17 + 24) = *(v18 + 24);
  swift_unknownObjectWeakTakeInit();
  v24 = *(v18 + 48);
  *(v17 + 40) = *(v18 + 40);
  *(v17 + 48) = v24;
  v25 = *(v19 + 32);
  v26 = (v17 + v25);
  v27 = (v18 + v25);
  v28 = type metadata accessor for PlatformItemList.Item(0);
  v29 = *(v28 - 1);
  if (v29[6](v27, 1, v28))
  {
    type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
    memcpy(v26, v27, *(*(v30 - 8) + 64));
  }

  else
  {
    v227 = v29;
    v233 = a3;
    v38 = v27[1];
    *v26 = *v27;
    v26[1] = v38;
    *(v26 + 32) = *(v27 + 32);
    *(v26 + 40) = *(v27 + 40);
    *(v26 + 56) = *(v27 + 56);
    v39 = v27[13];
    v26[12] = v27[12];
    v26[13] = v39;
    v26[14] = v27[14];
    *(v26 + 235) = *(v27 + 235);
    v40 = v27[9];
    v26[8] = v27[8];
    v26[9] = v40;
    v41 = v27[11];
    v26[10] = v27[10];
    v26[11] = v41;
    v42 = v27[5];
    v26[4] = v27[4];
    v26[5] = v42;
    v43 = v27[7];
    v26[6] = v27[6];
    v26[7] = v43;
    v44 = v27[17];
    v26[16] = v27[16];
    v26[17] = v44;
    v45 = v27[23];
    v26[22] = v27[22];
    v26[23] = v45;
    v26[24] = v27[24];
    *(v26 + 50) = *(v27 + 50);
    v46 = v27[19];
    v26[18] = v27[18];
    v26[19] = v46;
    v47 = v27[21];
    v26[20] = v27[20];
    v26[21] = v47;
    v48 = *(v27 + 456);
    *(v26 + 440) = *(v27 + 440);
    *(v26 + 456) = v48;
    *(v26 + 472) = *(v27 + 472);
    v49 = *(v27 + 424);
    *(v26 + 408) = *(v27 + 408);
    *(v26 + 424) = v49;
    v26[30] = v27[30];
    *(v26 + 489) = *(v27 + 489);
    v26[32] = v27[32];
    *(v26 + 528) = *(v27 + 528);
    memcpy(v26 + 536, v27 + 536, 0x130uLL);
    v50 = *(v27 + 856);
    *(v26 + 840) = *(v27 + 840);
    *(v26 + 856) = v50;
    *(v26 + 872) = *(v27 + 872);
    *(v26 + 111) = *(v27 + 111);
    *(v26 + 112) = *(v27 + 112);
    *(v26 + 904) = *(v27 + 904);
    *(v26 + 920) = *(v27 + 920);
    *(v26 + 117) = *(v27 + 117);
    *(v26 + 118) = *(v27 + 118);
    *(v26 + 952) = *(v27 + 952);
    *(v26 + 953) = *(v27 + 953);
    v51 = v28[28];
    __dst = v26 + v51;
    v52 = v27 + v51;
    v53 = type metadata accessor for CommandOperation(0);
    v224 = *(v53 - 8);
    if ((*(v224 + 48))(v52, 1, v53))
    {
      type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
      memcpy(__dst, v52, *(*(v54 - 8) + 64));
    }

    else
    {
      *__dst = *v52;
      v58 = *(v53 + 20);
      v222 = &__dst[v58];
      v223 = &v52[v58];
      v59 = *&v52[v58 + 16];
      *v222 = *&v52[v58];
      *(v222 + 1) = v59;
      v221 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
      v60 = type metadata accessor for UUID();
      (*(*(v60 - 8) + 32))(&v222[v221], &v223[v221], v60);
      *&__dst[*(v53 + 24)] = *&v52[*(v53 + 24)];
      (*(v224 + 56))();
    }

    a3 = v233;
    *(v26 + v28[29]) = *(v27 + v28[29]);
    *(v26 + v28[30]) = *(v27 + v28[30]);
    *(v26 + v28[31]) = *(v27 + v28[31]);
    *(v26 + v28[32]) = *(v27 + v28[32]);
    *(v26 + v28[33]) = *(v27 + v28[33]);
    *(v26 + v28[34]) = *(v27 + v28[34]);
    (*(v227 + 7))(v26, 0, 1, v28);
  }

  (*(v20 + 56))(v17, 0, 1, v19);
LABEL_40:
  v61 = a3[6];
  v62 = a1 + v61;
  v63 = a2 + v61;
  if (*(a1 + v61 + 48))
  {
    if (*(v63 + 48))
    {
      v64 = *(v63 + 8);
      *v62 = *v63;
      *(v62 + 8) = v64;

      if (*(v62 + 24))
      {
        if (*(v63 + 24))
        {
          *(v62 + 16) = *(v63 + 16);

          *(v62 + 24) = *(v63 + 24);

          *(v62 + 32) = *(v63 + 32);
LABEL_49:
          *(v62 + 40) = *(v63 + 40);
          *(v62 + 48) = *(v63 + 48);

          *(v62 + 56) = *(v63 + 56);
          *(v62 + 64) = *(v63 + 64);

          goto LABEL_50;
        }

        outlined destroy of NavigationTitleStorage?(v62 + 16, &lazy cache variable for type metadata for Binding<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981948]);
      }

      *(v62 + 16) = *(v63 + 16);
      *(v62 + 32) = *(v63 + 32);
      goto LABEL_49;
    }

    outlined destroy of ToolbarStorage(v62);
  }

  v65 = *(v63 + 48);
  *(v62 + 32) = *(v63 + 32);
  *(v62 + 48) = v65;
  *(v62 + 64) = *(v63 + 64);
  v66 = *(v63 + 16);
  *v62 = *v63;
  *(v62 + 16) = v66;
LABEL_50:
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ContentToolbarPlacement.Placement and conformance ContentToolbarPlacement.Placement()
{
  result = lazy protocol witness table cache variable for type ContentToolbarPlacement.Placement and conformance ContentToolbarPlacement.Placement;
  if (!lazy protocol witness table cache variable for type ContentToolbarPlacement.Placement and conformance ContentToolbarPlacement.Placement)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentToolbarPlacement.Placement, &type metadata for ContentToolbarPlacement.Placement, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ContentToolbarPlacement.Placement and conformance ContentToolbarPlacement.Placement);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContentToolbarPlacement.Placement and conformance ContentToolbarPlacement.Placement;
  if (!lazy protocol witness table cache variable for type ContentToolbarPlacement.Placement and conformance ContentToolbarPlacement.Placement)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentToolbarPlacement.Placement, &type metadata for ContentToolbarPlacement.Placement, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ContentToolbarPlacement.Placement and conformance ContentToolbarPlacement.Placement);
  }

  return result;
}

uint64_t outlined init with copy of ToolbarStorage?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<Int>(0, &lazy cache variable for type metadata for ToolbarStorage?, &type metadata for ToolbarStorage, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static DocumentToolbarInputContentWriter._makeView(modifier:inputs:body:)(unsigned int *a1, __int128 *a2, void (*a3)(uint64_t, __int128 *))
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2[3];
  v34[2] = a2[2];
  v34[3] = v5;
  v34[4] = a2[4];
  v35 = *(a2 + 20);
  v6 = a2[1];
  v34[0] = *a2;
  v34[1] = v6;
  type metadata accessor for NavigationItemDescription?(0);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v8 = a2[3];
  v20 = a2[2];
  v21 = v8;
  v22 = a2[4];
  v23 = *(a2 + 20);
  v9 = a2[1];
  v18 = *a2;
  v19 = v9;
  LOBYTE(v26) = 0;
  DWORD1(v26) = OffsetAttribute2;
  *(&v26 + 1) = 0;
  LODWORD(v27) = 0;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _ViewInputs(v34, v32);
  type metadata accessor for [ContentToolbarPlacement.Placement : ToolbarContentDescription](0);
  lazy protocol witness table accessor for type DocumentToolbarInputContentWriter.MakeToolbarContent and conformance DocumentToolbarInputContentWriter.MakeToolbarContent();
  Attribute.init<A>(body:value:flags:update:)();
  *&v32[0] = AGCreateWeakAttribute();
  lazy protocol witness table accessor for type ToolbarContentInput and conformance ToolbarContentInput();
  PropertyList.subscript.setter();
  LOBYTE(v32[0]) = 1;
  lazy protocol witness table accessor for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar();
  PropertyList.subscript.setter();
  v24[2] = v20;
  v24[3] = v21;
  v24[4] = v22;
  v25 = v23;
  v24[0] = v18;
  v24[1] = v19;
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v17 = v23;
  v12 = v18;
  v13 = v19;
  v10 = outlined init with copy of _ViewInputs(v24, v32);
  a3(v10, &v12);
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v26 = v12;
  v27 = v13;
  outlined destroy of _ViewInputs(&v26);
  v32[2] = v20;
  v32[3] = v21;
  v32[4] = v22;
  v33 = v23;
  v32[0] = v18;
  v32[1] = v19;
  return outlined destroy of _ViewInputs(v32);
}

Swift::Void __swiftcall DocumentToolbarInputContentWriter.MakeToolbarContent.updateValue()()
{
  v60 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for ToolbarContentDescription(0);
  v52 = *(v1 - 1);
  MEMORY[0x1EEE9AC00](v1);
  v49 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v45 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v45 - v6);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  type metadata accessor for NavigationItemDescription?(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NavigationItemDescription(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v45 - v19;
  Value = AGGraphGetValue();
  outlined init with copy of ToolbarStorage.NavigationProperties?(Value, v13, type metadata accessor for NavigationItemDescription?);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of CommandOperation(v13, type metadata accessor for NavigationItemDescription?);
    return;
  }

  outlined init with take of ToolbarStorage.NavigationProperties?(v13, v20, type metadata accessor for NavigationItemDescription);
  v48 = *(v0 + 4) + 1;
  *(v0 + 4) = v48;
  v50 = *v0;
  v22 = v1[5];
  v23 = type metadata accessor for ToolbarStorage.NavigationProperties(0);
  v24 = *(v23 - 8);
  v47 = v0;
  v25 = *(v24 + 56);
  v25(&v10[v22], 1, 1, v23);
  *v10 = 0;
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *(v10 + 3) = 1;
  *(v10 + 5) = 0;
  *(v10 + 6) = 0;
  *(v10 + 4) = 0;
  v10[56] = 0;
  v26 = &v10[v1[6]];
  *(v26 + 2) = 0u;
  *(v26 + 3) = 0u;
  *v26 = 0u;
  *(v26 + 1) = 0u;
  *(v26 + 8) = 0;
  *&v10[v1[7]] = 0;
  v46 = v20;
  outlined init with copy of ToolbarStorage.NavigationProperties?(v20, v17, type metadata accessor for NavigationItemDescription);
  v27 = v17[3];
  v55 = v17[2];
  v56[0] = v27;
  *(v56 + 9) = *(v17 + 57);
  v54 = v17[1];
  v58 = v55;
  v59[0] = v27;
  *(v59 + 9) = *(v56 + 9);
  v57 = v54;
  v28 = v1[5];
  outlined init with copy of ToolbarStorage.NavigationProperties?(v17 + *(v14 + 24), v7 + v28, type metadata accessor for ToolbarStorage.NavigationProperties);
  v25(v7 + v28, 0, 1, v23);
  outlined init with copy of NavigationTitleStorage(&v54, v53);
  outlined destroy of CommandOperation(v17, type metadata accessor for NavigationItemDescription);
  v7[2] = v59[0];
  *(v7 + 41) = *(v59 + 9);
  v29 = v58;
  *v7 = v57;
  v7[1] = v29;
  v30 = v7 + v1[6];
  *(v30 + 25) = 0u;
  *v30 = 0u;
  *(v30 + 1) = 0u;
  *(v30 + 6) = MEMORY[0x1E69E7CC0];
  v31 = MEMORY[0x1E69E7CD0];
  v30[56] = 1;
  *(v30 + 8) = v31;
  *(v7 + v1[7]) = v48;
  type metadata accessor for [ContentToolbarPlacement.Placement : ToolbarContentDescription](0);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v33 = *WeakValue;
  }

  else
  {
    v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI23ContentToolbarPlacementV0G0O_AC0fE11DescriptionVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v34 = v51;
  outlined init with copy of ToolbarStorage.NavigationProperties?(v10, v51, type metadata accessor for ToolbarContentDescription);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53[0] = v33;
  v37 = specialized __RawDictionaryStorage.find<A>(_:)(v50);
  v38 = v33[2];
  v39 = (v36 & 1) == 0;
  v40 = v38 + v39;
  if (__OFADD__(v38, v39))
  {
    __break(1u);
    goto LABEL_17;
  }

  LOBYTE(v23) = v36;
  if (v33[3] >= v40)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

LABEL_17:
    specialized _NativeDictionary.copy()();
    v33 = v53[0];
    goto LABEL_11;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v40, isUniquelyReferenced_nonNull_native);
  v33 = v53[0];
  v41 = specialized __RawDictionaryStorage.find<A>(_:)(v50);
  if ((v23 & 1) != (v42 & 1))
  {
    outlined destroy of CommandOperation(v34, type metadata accessor for ToolbarContentDescription);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v37 = v41;
LABEL_11:
  v43 = v46;
  if (v23)
  {
    outlined destroy of CommandOperation(v34, type metadata accessor for ToolbarContentDescription);
  }

  else
  {
    v44 = v49;
    outlined init with copy of ToolbarStorage.NavigationProperties?(v34, v49, type metadata accessor for ToolbarContentDescription);
    outlined destroy of CommandOperation(v34, type metadata accessor for ToolbarContentDescription);
    specialized _NativeDictionary._insert(at:key:value:)(v37, v50, v44, v33);
  }

  ToolbarContentDescription.merge(_:)(v7);
  v53[0] = v33;
  AGGraphSetOutputValue();
  outlined destroy of CommandOperation(v7, type metadata accessor for ToolbarContentDescription);
  outlined destroy of CommandOperation(v10, type metadata accessor for ToolbarContentDescription);
  outlined destroy of CommandOperation(v43, type metadata accessor for NavigationItemDescription);
}

uint64_t specialized ContentToolbarPlacement.Placement.canApplyDocumentToolbarContent(to:)(void *a1)
{
  v2 = [a1 navigationController];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 splitViewController];
  if (v4)
  {
    v5 = v4;
    if ([v4 style] && (v6 = objc_msgSend(v5, sel_viewControllerForColumn_, 3)) != 0 && (v7 = v6, objc_opt_self(), v8 = swift_dynamicCastObjCClass(), v7, v8))
    {
      v9 = v3 == v8;
    }

    else
    {
      v9 = [v5 isCollapsed];
    }

    if ([v5 style] && (!v9 ? (v10 = 2) : (v10 = 3), (v11 = objc_msgSend(v5, sel_viewControllerForColumn_, v10)) != 0))
    {
      v12 = v11;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
        v13 = static NSObject.== infix(_:_:)();

        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }
    }

    else
    {
    }

    return 0;
  }

LABEL_15:
  v14 = [v3 viewControllers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v15 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_17;
    }

    goto LABEL_25;
  }

  result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_25:

    return 0;
  }

LABEL_17:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x18D00E9C0](0, v15);
    goto LABEL_20;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v15 + 32);
LABEL_20:
    v18 = v17;

    v19 = a1;
    v20 = static NSObject.== infix(_:_:)();

    return v20 & 1;
  }

  __break(1u);
  return result;
}

id specialized ContentToolbarPlacement.Placement.canApplySplitViewContent(to:)(id a1)
{
  result = [a1 navigationController];
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = [result splitViewController];
  if (!v4)
  {

    return 0;
  }

  v5 = v4;
  if ([v4 style] && (v6 = objc_msgSend(v5, sel_viewControllerForColumn_, 3)) != 0 && (v7 = v6, objc_opt_self(), v8 = swift_dynamicCastObjCClass(), v7, v8))
  {
    v9 = v3 == v8;
  }

  else
  {
    v9 = [v5 isCollapsed];
  }

  if (![v5 style])
  {
    goto LABEL_25;
  }

  v10 = v9 ? 3 : 2;
  v11 = [v5 viewControllerForColumn_];
  if (!v11)
  {
    goto LABEL_25;
  }

  v12 = v11;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {

    return 0;
  }

  v14 = v13;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {

LABEL_25:
    return 0;
  }

  v15 = [v14 topViewController];
  v16 = v15;
  if (v15)
  {
    v17 = v15 == a1;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  v19 = [v14 viewControllers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = a1;
  MEMORY[0x1EEE9AC00](v21);
  v23[2] = &v24;
  v22 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v23, v20);

  return (v18 & v22);
}

uint64_t getEnumTagSinglePayload for ToolbarInputFeature(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 19))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 18);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolbarInputFeature(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *(result + 18) = a2 + 1;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for DocumentToolbarInputContentWriter(void *a1, char *a2)
{
  type metadata accessor for NavigationItemDescription?(0);
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(v4 - 8);
  v7 = type metadata accessor for NavigationItemDescription(0);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    v12 = *(a2 + 1);
    *a1 = *a2;
    a1[1] = v12;
    v13 = *(a2 + 5);

    if (v13)
    {
      v14 = *(a2 + 2);
      v15 = *(a2 + 3);
      v16 = a2[32];
      outlined copy of Text.Storage(v14, v15, v16);
      a1[2] = v14;
      a1[3] = v15;
      *(a1 + 32) = v16;
      a1[5] = *(a2 + 5);
    }

    else
    {
      v17 = *(a2 + 2);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 2) = v17;
    }

    v18 = *(a2 + 6);
    if (v18 != 1)
    {
    }

    a1[6] = v18;
    *(a1 + 56) = a2[56];
    a1[8] = *(a2 + 8);
    *(a1 + 72) = a2[72];
    v19 = *(v7 + 24);
    v20 = a1 + v19;
    v21 = &a2[v19];
    v22 = a2[v19 + 8];

    if (v22 == 255)
    {
      *v20 = *v21;
      v20[8] = v21[8];
    }

    else
    {
      v23 = *v21;
      v24 = v22 & 1;
      outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(*v21, v24);
      *v20 = v23;
      v20[8] = v24;
    }

    v25 = v21[24];
    v140 = a2;
    if (v25 == 254 || v25 == 255)
    {
      *(v20 + 2) = *(v21 + 2);
      v20[24] = v21[24];
    }

    else
    {
      v26 = *(v21 + 2);
      v27 = v25 & 1;
      outlined copy of PlatformItemCollection.Storage(v26, v25 & 1);
      *(v20 + 2) = v26;
      v20[24] = v27;
    }

    swift_unknownObjectWeakCopyInit();
    v28 = *(v21 + 6);
    *(v20 + 5) = *(v21 + 5);
    *(v20 + 6) = v28;
    v29 = *(type metadata accessor for ToolbarStorage.NavigationProperties(0) + 32);
    v30 = &v20[v29];
    v31 = &v21[v29];
    v32 = type metadata accessor for PlatformItemList.Item(0);
    v33 = *(v32 - 8);
    v34 = *(v33 + 48);
    v35 = v28;
    if (v34(v31, 1, v32))
    {
      type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(v30, v31, *(*(v36 - 8) + 64));
LABEL_79:
      *(a1 + *(v7 + 28)) = *&v140[*(v7 + 28)];
      (*(v8 + 56))(a1, 0, 1, v7);
      return a1;
    }

    v134 = v33;
    v135 = v8;
    v136 = v7;
    v37 = *v31;
    v38 = *(v31 + 1);
    *v30 = *v31;
    *(v30 + 1) = v38;
    v39 = *(v31 + 3);
    *(v30 + 2) = *(v31 + 2);
    *(v30 + 3) = v39;
    v30[32] = v31[32];
    v40 = *(v31 + 6);
    *(v30 + 5) = *(v31 + 5);
    *(v30 + 6) = v40;
    v30[56] = v31[56];
    v41 = *(v31 + 24);
    v42 = v37;
    v43 = v38;

    v139 = v32;
    if (v41 >> 1 == 4294967294)
    {
      v44 = *(v31 + 13);
      *(v30 + 12) = *(v31 + 12);
      *(v30 + 13) = v44;
      *(v30 + 14) = *(v31 + 14);
      *(v30 + 235) = *(v31 + 235);
      v45 = *(v31 + 9);
      *(v30 + 8) = *(v31 + 8);
      *(v30 + 9) = v45;
      v46 = *(v31 + 11);
      *(v30 + 10) = *(v31 + 10);
      *(v30 + 11) = v46;
      v47 = *(v31 + 5);
      *(v30 + 4) = *(v31 + 4);
      *(v30 + 5) = v47;
      v48 = *(v31 + 7);
      *(v30 + 6) = *(v31 + 6);
      *(v30 + 7) = v48;
      v49 = *(v31 + 33);
      if (v49)
      {
LABEL_23:
        *(v30 + 32) = *(v31 + 32);
        *(v30 + 33) = v49;
        v50 = *(v31 + 34);

        if (v50 >= 2)
        {
          v51 = v50;
        }

        *(v30 + 34) = v50;
        *(v30 + 70) = *(v31 + 70);
        v30[284] = v31[284];
        *(v30 + 285) = *(v31 + 285);
        v52 = *(v31 + 37);
        *(v30 + 36) = *(v31 + 36);
        *(v30 + 37) = v52;

LABEL_34:
        v63 = *(v31 + 42);
        if (v63 >> 2 == 0xFFFFFFFF)
        {
          v64 = *(v31 + 24);
          *(v30 + 23) = *(v31 + 23);
          *(v30 + 24) = v64;
          *(v30 + 50) = *(v31 + 50);
          v65 = *(v31 + 20);
          *(v30 + 19) = *(v31 + 19);
          *(v30 + 20) = v65;
          v66 = *(v31 + 22);
          *(v30 + 21) = *(v31 + 21);
          *(v30 + 22) = v66;
        }

        else
        {
          v67 = *(v31 + 38);
          v68 = *(v31 + 39);
          v69 = *(v31 + 41);
          v71 = *(v31 + 43);
          v70 = *(v31 + 44);
          v72 = *(v31 + 45);
          v124 = *(v31 + 40);
          v125 = *(v31 + 46);
          v127 = *(v31 + 47);
          v129 = *(v31 + 48);
          __dsta = *(v31 + 49);
          v137 = *(v31 + 50);
          outlined copy of PlatformItemList.Item.SystemItem(v67, v68, v124, v69, v63, v71, v70, v72, v125, v127, v129, __dsta, v137);
          *(v30 + 38) = v67;
          *(v30 + 39) = v68;
          *(v30 + 40) = v124;
          *(v30 + 41) = v69;
          *(v30 + 42) = v63;
          *(v30 + 43) = v71;
          *(v30 + 44) = v70;
          *(v30 + 45) = v72;
          *(v30 + 46) = v125;
          *(v30 + 47) = v127;
          *(v30 + 48) = v129;
          *(v30 + 49) = __dsta;
          *(v30 + 50) = v137;
        }

        v73 = *(v31 + 52);
        if (v73 == 1)
        {
          v74 = *(v31 + 456);
          *(v30 + 440) = *(v31 + 440);
          *(v30 + 456) = v74;
          v30[472] = v31[472];
          v75 = *(v31 + 424);
          *(v30 + 408) = *(v31 + 408);
          *(v30 + 424) = v75;
        }

        else
        {
          *(v30 + 102) = *(v31 + 102);
          v30[412] = v31[412];
          if (v73)
          {
            v76 = *(v31 + 53);
            *(v30 + 52) = v73;
            *(v30 + 53) = v76;
          }

          else
          {
            *(v30 + 26) = *(v31 + 26);
          }

          v77 = *(v31 + 54);
          if (v77)
          {
            v78 = *(v31 + 55);
            *(v30 + 54) = v77;
            *(v30 + 55) = v78;
          }

          else
          {
            *(v30 + 27) = *(v31 + 27);
          }

          v79 = *(v31 + 56);
          if (v79)
          {
            v80 = *(v31 + 57);
            *(v30 + 56) = v79;
            *(v30 + 57) = v80;
          }

          else
          {
            *(v30 + 28) = *(v31 + 28);
          }

          *(v30 + 58) = *(v31 + 58);
          v30[472] = v31[472];
        }

        v81 = *(v31 + 61);
        *(v30 + 60) = *(v31 + 60);
        *(v30 + 61) = v81;
        *(v30 + 62) = *(v31 + 62);
        v30[504] = v31[504];
        v82 = *(v31 + 64);

        if (v82)
        {
          v83 = *(v31 + 65);
          *(v30 + 64) = v82;
          *(v30 + 65) = v83;
        }

        else
        {
          *(v30 + 32) = *(v31 + 32);
        }

        v30[528] = v31[528];
        if (!*(v31 + 102))
        {
          memcpy(v30 + 536, v31 + 536, 0x130uLL);
          goto LABEL_64;
        }

        *(v30 + 67) = *(v31 + 67);
        *(v30 + 68) = *(v31 + 68);
        v30[552] = v31[552];
        *(v30 + 70) = *(v31 + 70);
        v30[568] = v31[568];
        *(v30 + 36) = *(v31 + 36);
        v30[592] = v31[592];
        v84 = v30 + 600;
        v85 = v31 + 600;
        v86 = *(v31 + 78);

        if (v86)
        {
          if (v86 == 1)
          {
            v87 = *(v31 + 616);
            *v84 = *v85;
            *(v30 + 616) = v87;
            *(v30 + 632) = *(v31 + 632);
LABEL_60:
            *(v30 + 81) = *(v31 + 81);
            v30[656] = v31[656];
            v89 = v30 + 664;
            v90 = v31 + 664;
            v91 = *(v31 + 97);
            if (v91 == 1)
            {
              v92 = *(v31 + 776);
              *(v30 + 760) = *(v31 + 760);
              *(v30 + 776) = v92;
              *(v30 + 792) = *(v31 + 792);
              v30[808] = v31[808];
              v93 = *(v31 + 712);
              *(v30 + 696) = *(v31 + 696);
              *(v30 + 712) = v93;
              v94 = *(v31 + 744);
              *(v30 + 728) = *(v31 + 728);
              *(v30 + 744) = v94;
              v95 = *(v31 + 680);
              *v89 = *v90;
              *(v30 + 680) = v95;
            }

            else
            {
              *v89 = *v90;
              v30[672] = v31[672];
              *(v30 + 85) = *(v31 + 85);
              v30[688] = v31[688];
              *(v30 + 689) = *(v31 + 689);
              v30[691] = v31[691];
              v30[692] = v31[692];
              *(v30 + 87) = *(v31 + 87);
              v96 = *(v31 + 45);
              *(v30 + 44) = *(v31 + 44);
              *(v30 + 45) = v96;
              *(v30 + 92) = *(v31 + 92);
              *(v30 + 372) = *(v31 + 372);
              *(v30 + 47) = *(v31 + 47);
              v30[768] = v31[768];
              *(v30 + 97) = v91;
              *(v30 + 49) = *(v31 + 49);
              *(v30 + 100) = *(v31 + 100);
              v30[808] = v31[808];
            }

            *(v30 + 102) = *(v31 + 102);
            *(v30 + 103) = *(v31 + 103);
            *(v30 + 104) = *(v31 + 104);

LABEL_64:
            v97 = v30 + 840;
            v98 = v31 + 840;
            v99 = *(v31 + 108);
            if (v99)
            {
              if (v99 == 1)
              {
                v100 = *(v31 + 856);
                *v97 = *v98;
                *(v30 + 856) = v100;
                *(v30 + 872) = *(v31 + 872);
                *(v30 + 111) = *(v31 + 111);
LABEL_72:
                v104 = *(v31 + 112);
                *(v30 + 112) = v104;
                *(v30 + 113) = *(v31 + 113);
                *(v30 + 114) = *(v31 + 114);
                *(v30 + 115) = *(v31 + 115);
                *(v30 + 116) = *(v31 + 116);
                *(v30 + 117) = *(v31 + 117);
                *(v30 + 118) = *(v31 + 118);
                *(v30 + 476) = *(v31 + 476);
                v30[954] = v31[954];
                v105 = v139[28];
                __dst = &v30[v105];
                v138 = &v31[v105];
                v106 = type metadata accessor for CommandOperation(0);
                v128 = *(v106 - 8);
                v130 = *(v128 + 48);
                v107 = v104;

                if (v130(v138, 1, v106))
                {
                  type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                  memcpy(__dst, v138, *(*(v108 - 8) + 64));
                  v8 = v135;
                  v7 = v136;
                  v109 = v139;
                  v110 = v134;
                }

                else
                {
                  *__dst = *v138;
                  v111 = *(v106 + 20);
                  v112 = &__dst[v111];
                  v113 = &v138[v111];
                  v114 = *&v138[v111];
                  v115 = *&v138[v111 + 8];
                  v131 = v106;
                  v116 = v138[v111 + 16];
                  outlined copy of Text.Storage(v114, *(v113 + 1), v113[16]);
                  *v112 = v114;
                  *(v112 + 1) = v115;
                  v112[16] = v116;
                  *(v112 + 3) = *(v113 + 3);
                  v117 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                  v118 = type metadata accessor for UUID();
                  v126 = *(*(v118 - 8) + 16);

                  v126(&v112[v117], &v113[v117], v118);
                  v119 = *(v131 + 24);
                  v120 = &__dst[v119];
                  v121 = &v138[v119];
                  if (*v121)
                  {
                    v122 = *(v121 + 1);
                    *v120 = *v121;
                    *(v120 + 1) = v122;
                  }

                  else
                  {
                    *v120 = *v121;
                  }

                  v8 = v135;
                  v7 = v136;
                  v109 = v139;
                  v110 = v134;
                  (*(v128 + 56))(__dst, 0, 1, v131);
                }

                v30[v109[29]] = v31[v109[29]];
                v30[v109[30]] = v31[v109[30]];
                v30[v109[31]] = v31[v109[31]];
                v30[v109[32]] = v31[v109[32]];
                v30[v109[33]] = v31[v109[33]];
                *&v30[v109[34]] = *&v31[v109[34]];
                v123 = *(v110 + 56);

                v123(v30, 0, 1, v109);
                goto LABEL_79;
              }

              *(v30 + 108) = v99;
              *(v30 + 109) = *(v31 + 109);
              (**(v99 - 8))(v97, v98);
            }

            else
            {
              v101 = *(v31 + 856);
              *v97 = *v98;
              *(v30 + 856) = v101;
              *(v30 + 109) = *(v31 + 109);
            }

            v102 = *(v31 + 110);
            if (v102)
            {
              v103 = *(v31 + 111);
              *(v30 + 110) = v102;
              *(v30 + 111) = v103;
            }

            else
            {
              *(v30 + 55) = *(v31 + 55);
            }

            goto LABEL_72;
          }

          *(v30 + 78) = v86;
          *(v30 + 79) = *(v31 + 79);
          (**(v86 - 8))((v30 + 600), (v31 + 600), v86);
        }

        else
        {
          v88 = *(v31 + 616);
          *v84 = *v85;
          *(v30 + 616) = v88;
          *(v30 + 79) = *(v31 + 79);
        }

        *(v30 + 80) = *(v31 + 80);

        goto LABEL_60;
      }
    }

    else
    {
      v53 = v31[72];
      if (v53 == 255)
      {
        *(v30 + 8) = *(v31 + 8);
        v30[72] = v31[72];
      }

      else
      {
        v54 = *(v31 + 8);
        outlined copy of GraphicsImage.Contents(v54, v31[72]);
        *(v30 + 8) = v54;
        v30[72] = v53;
        v41 = *(v31 + 24);
      }

      *(v30 + 10) = *(v31 + 10);
      *(v30 + 88) = *(v31 + 88);
      v30[104] = v31[104];
      *(v30 + 108) = *(v31 + 108);
      *(v30 + 121) = *(v31 + 121);
      *(v30 + 136) = *(v31 + 136);
      *(v30 + 152) = *(v31 + 152);
      *(v30 + 84) = *(v31 + 84);
      v30[170] = v31[170];
      v30[171] = v31[171];
      if (v41 >> 1 == 0xFFFFFFFF)
      {
        v55 = *(v31 + 12);
        *(v30 + 11) = *(v31 + 11);
        *(v30 + 12) = v55;
      }

      else
      {
        v56 = *(v31 + 22);
        v57 = *(v31 + 23);
        v58 = *(v31 + 25);
        outlined copy of AccessibilityImageLabel(v56, v57, v41, v58);
        *(v30 + 22) = v56;
        *(v30 + 23) = v57;
        *(v30 + 24) = v41;
        *(v30 + 25) = v58;
      }

      v59 = *(v31 + 27);
      *(v30 + 26) = *(v31 + 26);
      *(v30 + 27) = v59;
      *(v30 + 112) = *(v31 + 112);
      *(v30 + 57) = *(v31 + 57);
      v30[232] = v31[232];
      v60 = *(v31 + 30);
      *(v30 + 30) = v60;
      *(v30 + 124) = *(v31 + 124);
      v30[250] = v31[250];
      swift_unknownObjectRetain();

      v61 = v60;
      v49 = *(v31 + 33);
      if (v49)
      {
        goto LABEL_23;
      }
    }

    v62 = *(v31 + 17);
    *(v30 + 16) = *(v31 + 16);
    *(v30 + 17) = v62;
    *(v30 + 18) = *(v31 + 18);
    goto LABEL_34;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

double destroy for DocumentToolbarInputContentWriter(uint64_t a1, double a2)
{
  v3 = type metadata accessor for NavigationItemDescription(0);
  if (!(*(*(v3 - 8) + 48))(a1, 1, v3))
  {

    if (*(a1 + 40))
    {
      outlined consume of Text.Storage(*(a1 + 16), *(a1 + 24), *(a1 + 32));
    }

    if (*(a1 + 48) != 1)
    {
    }

    v5 = a1 + *(v3 + 24);
    v6 = *(v5 + 8);
    if (v6 != 255)
    {
      outlined consume of ResolvableCLKTextProvider.FontStorage(*v5, v6 & 1);
    }

    v7 = *(v5 + 24);
    if (v7 <= 0xFD)
    {
      outlined consume of PlatformItemCollection.Storage(*(v5 + 16), v7 & 1);
    }

    MEMORY[0x18D011290](v5 + 32);

    v8 = v5 + *(type metadata accessor for ToolbarStorage.NavigationProperties(0) + 32);
    v9 = type metadata accessor for PlatformItemList.Item(0);
    if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
    {

      v10 = *(v8 + 192);
      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
      {
        v12 = *(v8 + 72);
        if (v12 != 255)
        {
          outlined consume of GraphicsImage.Contents(*(v8 + 64), v12);
          v10 = *(v8 + 192);
          v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
        }

        if (v11 != 0x1FFFFFFFELL)
        {
          outlined consume of AccessibilityImageLabel(*(v8 + 176), *(v8 + 184), v10, *(v8 + 200));
        }

        swift_unknownObjectRelease();
      }

      if (*(v8 + 264))
      {

        v13 = *(v8 + 272);
        if (v13 >= 2)
        {
        }
      }

      v14 = *(v8 + 336);
      if (v14 >> 2 != 0xFFFFFFFF)
      {
        outlined consume of PlatformItemList.Item.SystemItem(*(v8 + 304), *(v8 + 312), *(v8 + 320), *(v8 + 328), v14, *(v8 + 344), *(v8 + 352), *(v8 + 360), *(v8 + 368), *(v8 + 376), *(v8 + 384), *(v8 + 392), *(v8 + 400));
      }

      v15 = *(v8 + 416);
      if (v15)
      {
        if (v15 == 1)
        {
          goto LABEL_31;
        }
      }

      if (*(v8 + 432))
      {
      }

      if (*(v8 + 448))
      {
      }

LABEL_31:

      if (*(v8 + 512))
      {
      }

      if (!*(v8 + 816))
      {
LABEL_41:
        v17 = *(v8 + 864);
        if (v17)
        {
          if (v17 == 1)
          {
LABEL_46:

            v18 = v8 + *(v9 + 112);
            v19 = type metadata accessor for CommandOperation(0);
            if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
            {
              v20 = v18 + *(v19 + 20);
              outlined consume of Text.Storage(*v20, *(v20 + 8), *(v20 + 16));

              v21 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
              v22 = type metadata accessor for UUID();
              (*(*(v22 - 8) + 8))(v20 + v21, v22);
              if (*(v18 + *(v19 + 24)))
              {
              }
            }

            return result;
          }

          __swift_destroy_boxed_opaque_existential_1((v8 + 840));
        }

        if (*(v8 + 880))
        {
        }

        goto LABEL_46;
      }

      v16 = *(v8 + 624);
      if (v16)
      {
        if (v16 == 1)
        {
LABEL_38:
          if (*(v8 + 776) != 1)
          {
          }

          goto LABEL_41;
        }

        __swift_destroy_boxed_opaque_existential_1((v8 + 600));
      }

      goto LABEL_38;
    }
  }

  return result;
}

void *initializeWithCopy for DocumentToolbarInputContentWriter(void *a1, char *a2, double a3)
{
  v5 = type metadata accessor for NavigationItemDescription(0);
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a2, 1, v5))
  {
    v10 = *(a2 + 1);
    *a1 = *a2;
    a1[1] = v10;
    v11 = *(a2 + 5);

    if (v11)
    {
      v12 = *(a2 + 2);
      v13 = *(a2 + 3);
      v14 = a2[32];
      outlined copy of Text.Storage(v12, v13, v14);
      a1[2] = v12;
      a1[3] = v13;
      *(a1 + 32) = v14;
      a1[5] = *(a2 + 5);
    }

    else
    {
      v15 = *(a2 + 2);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 2) = v15;
    }

    v16 = *(a2 + 6);
    if (v16 != 1)
    {
    }

    a1[6] = v16;
    *(a1 + 56) = a2[56];
    a1[8] = *(a2 + 8);
    *(a1 + 72) = a2[72];
    v17 = *(v5 + 24);
    v18 = a1 + v17;
    v19 = &a2[v17];
    v20 = a2[v17 + 8];

    if (v20 == 255)
    {
      *v18 = *v19;
      v18[8] = v19[8];
    }

    else
    {
      v21 = *v19;
      v22 = v20 & 1;
      outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(*v19, v22);
      *v18 = v21;
      v18[8] = v22;
    }

    v23 = v19[24];
    v138 = a1;
    if (v23 == 254 || v23 == 255)
    {
      *(v18 + 2) = *(v19 + 2);
      v18[24] = v19[24];
    }

    else
    {
      v24 = *(v19 + 2);
      v25 = v23 & 1;
      outlined copy of PlatformItemCollection.Storage(v24, v23 & 1);
      *(v18 + 2) = v24;
      v18[24] = v25;
    }

    swift_unknownObjectWeakCopyInit();
    v26 = *(v19 + 6);
    *(v18 + 5) = *(v19 + 5);
    *(v18 + 6) = v26;
    v27 = *(type metadata accessor for ToolbarStorage.NavigationProperties(0) + 32);
    v28 = &v18[v27];
    v29 = &v19[v27];
    v30 = type metadata accessor for PlatformItemList.Item(0);
    v31 = *(v30 - 8);
    v32 = *(v31 + 48);
    v33 = v26;
    if (v32(v29, 1, v30))
    {
      type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(v28, v29, *(*(v34 - 8) + 64));
LABEL_74:
      *(v138 + *(v5 + 28)) = *&a2[*(v5 + 28)];
      (*(v6 + 56))(v138, 0, 1, v5);
      return v138;
    }

    v132 = v31;
    v133 = v6;
    v134 = v5;
    v35 = *v29;
    v36 = *(v29 + 1);
    *v28 = *v29;
    *(v28 + 1) = v36;
    v37 = *(v29 + 3);
    *(v28 + 2) = *(v29 + 2);
    *(v28 + 3) = v37;
    v28[32] = v29[32];
    v38 = *(v29 + 6);
    *(v28 + 5) = *(v29 + 5);
    *(v28 + 6) = v38;
    v28[56] = v29[56];
    v39 = *(v29 + 24);
    v40 = v35;
    v41 = v36;

    v137 = v30;
    if (v39 >> 1 == 4294967294)
    {
      v42 = *(v29 + 13);
      *(v28 + 12) = *(v29 + 12);
      *(v28 + 13) = v42;
      *(v28 + 14) = *(v29 + 14);
      *(v28 + 235) = *(v29 + 235);
      v43 = *(v29 + 9);
      *(v28 + 8) = *(v29 + 8);
      *(v28 + 9) = v43;
      v44 = *(v29 + 11);
      *(v28 + 10) = *(v29 + 10);
      *(v28 + 11) = v44;
      v45 = *(v29 + 5);
      *(v28 + 4) = *(v29 + 4);
      *(v28 + 5) = v45;
      v46 = *(v29 + 7);
      *(v28 + 6) = *(v29 + 6);
      *(v28 + 7) = v46;
      v47 = *(v29 + 33);
      if (v47)
      {
LABEL_21:
        *(v28 + 32) = *(v29 + 32);
        *(v28 + 33) = v47;
        v48 = *(v29 + 34);

        if (v48 >= 2)
        {
          v49 = v48;
        }

        *(v28 + 34) = v48;
        *(v28 + 70) = *(v29 + 70);
        v28[284] = v29[284];
        *(v28 + 285) = *(v29 + 285);
        v50 = *(v29 + 37);
        *(v28 + 36) = *(v29 + 36);
        *(v28 + 37) = v50;

LABEL_32:
        v61 = *(v29 + 42);
        if (v61 >> 2 == 0xFFFFFFFF)
        {
          v62 = *(v29 + 24);
          *(v28 + 23) = *(v29 + 23);
          *(v28 + 24) = v62;
          *(v28 + 50) = *(v29 + 50);
          v63 = *(v29 + 20);
          *(v28 + 19) = *(v29 + 19);
          *(v28 + 20) = v63;
          v64 = *(v29 + 22);
          *(v28 + 21) = *(v29 + 21);
          *(v28 + 22) = v64;
        }

        else
        {
          v65 = *(v29 + 38);
          v66 = *(v29 + 39);
          v67 = *(v29 + 41);
          v69 = *(v29 + 43);
          v68 = *(v29 + 44);
          v70 = *(v29 + 45);
          v122 = *(v29 + 40);
          v123 = *(v29 + 46);
          v125 = *(v29 + 47);
          v127 = *(v29 + 48);
          __dsta = *(v29 + 49);
          v135 = *(v29 + 50);
          outlined copy of PlatformItemList.Item.SystemItem(v65, v66, v122, v67, v61, v69, v68, v70, v123, v125, v127, __dsta, v135);
          *(v28 + 38) = v65;
          *(v28 + 39) = v66;
          *(v28 + 40) = v122;
          *(v28 + 41) = v67;
          *(v28 + 42) = v61;
          *(v28 + 43) = v69;
          *(v28 + 44) = v68;
          *(v28 + 45) = v70;
          *(v28 + 46) = v123;
          *(v28 + 47) = v125;
          *(v28 + 48) = v127;
          *(v28 + 49) = __dsta;
          *(v28 + 50) = v135;
        }

        v71 = *(v29 + 52);
        if (v71 == 1)
        {
          v72 = *(v29 + 456);
          *(v28 + 440) = *(v29 + 440);
          *(v28 + 456) = v72;
          v28[472] = v29[472];
          v73 = *(v29 + 424);
          *(v28 + 408) = *(v29 + 408);
          *(v28 + 424) = v73;
          goto LABEL_45;
        }

        *(v28 + 102) = *(v29 + 102);
        v28[412] = v29[412];
        if (v71)
        {
          v74 = *(v29 + 53);
          *(v28 + 52) = v71;
          *(v28 + 53) = v74;

          v75 = *(v29 + 54);
          if (v75)
          {
            goto LABEL_39;
          }
        }

        else
        {
          *(v28 + 26) = *(v29 + 26);
          v75 = *(v29 + 54);
          if (v75)
          {
LABEL_39:
            v76 = *(v29 + 55);
            *(v28 + 54) = v75;
            *(v28 + 55) = v76;

            v77 = *(v29 + 56);
            if (v77)
            {
LABEL_40:
              v78 = *(v29 + 57);
              *(v28 + 56) = v77;
              *(v28 + 57) = v78;

LABEL_44:
              *(v28 + 58) = *(v29 + 58);
              v28[472] = v29[472];
LABEL_45:
              v79 = *(v29 + 61);
              *(v28 + 60) = *(v29 + 60);
              *(v28 + 61) = v79;
              *(v28 + 62) = *(v29 + 62);
              v28[504] = v29[504];
              v80 = *(v29 + 64);

              if (v80)
              {
                v81 = *(v29 + 65);
                *(v28 + 64) = v80;
                *(v28 + 65) = v81;
              }

              else
              {
                *(v28 + 32) = *(v29 + 32);
              }

              v28[528] = v29[528];
              if (!*(v29 + 102))
              {
                memcpy(v28 + 536, v29 + 536, 0x130uLL);
                goto LABEL_60;
              }

              *(v28 + 67) = *(v29 + 67);
              *(v28 + 68) = *(v29 + 68);
              v28[552] = v29[552];
              *(v28 + 70) = *(v29 + 70);
              v28[568] = v29[568];
              *(v28 + 36) = *(v29 + 36);
              v28[592] = v29[592];
              v82 = v28 + 600;
              v83 = v29 + 600;
              v84 = *(v29 + 78);

              if (v84)
              {
                if (v84 == 1)
                {
                  v85 = *(v29 + 616);
                  *v82 = *v83;
                  *(v28 + 616) = v85;
                  *(v28 + 632) = *(v29 + 632);
LABEL_56:
                  *(v28 + 81) = *(v29 + 81);
                  v28[656] = v29[656];
                  v87 = v28 + 664;
                  v88 = v29 + 664;
                  v89 = *(v29 + 97);
                  if (v89 == 1)
                  {
                    v90 = *(v29 + 776);
                    *(v28 + 760) = *(v29 + 760);
                    *(v28 + 776) = v90;
                    *(v28 + 792) = *(v29 + 792);
                    v28[808] = v29[808];
                    v91 = *(v29 + 712);
                    *(v28 + 696) = *(v29 + 696);
                    *(v28 + 712) = v91;
                    v92 = *(v29 + 744);
                    *(v28 + 728) = *(v29 + 728);
                    *(v28 + 744) = v92;
                    v93 = *(v29 + 680);
                    *v87 = *v88;
                    *(v28 + 680) = v93;
                  }

                  else
                  {
                    *v87 = *v88;
                    v28[672] = v29[672];
                    *(v28 + 85) = *(v29 + 85);
                    v28[688] = v29[688];
                    *(v28 + 689) = *(v29 + 689);
                    v28[691] = v29[691];
                    v28[692] = v29[692];
                    *(v28 + 87) = *(v29 + 87);
                    v94 = *(v29 + 45);
                    *(v28 + 44) = *(v29 + 44);
                    *(v28 + 45) = v94;
                    *(v28 + 92) = *(v29 + 92);
                    *(v28 + 372) = *(v29 + 372);
                    *(v28 + 47) = *(v29 + 47);
                    v28[768] = v29[768];
                    *(v28 + 97) = v89;
                    *(v28 + 49) = *(v29 + 49);
                    *(v28 + 100) = *(v29 + 100);
                    v28[808] = v29[808];
                  }

                  *(v28 + 102) = *(v29 + 102);
                  *(v28 + 103) = *(v29 + 103);
                  *(v28 + 104) = *(v29 + 104);

LABEL_60:
                  v95 = v28 + 840;
                  v96 = v29 + 840;
                  v97 = *(v29 + 108);
                  if (v97)
                  {
                    if (v97 == 1)
                    {
                      v98 = *(v29 + 856);
                      *v95 = *v96;
                      *(v28 + 856) = v98;
                      *(v28 + 872) = *(v29 + 872);
                      *(v28 + 111) = *(v29 + 111);
LABEL_67:
                      v102 = *(v29 + 112);
                      *(v28 + 112) = v102;
                      *(v28 + 113) = *(v29 + 113);
                      *(v28 + 114) = *(v29 + 114);
                      *(v28 + 115) = *(v29 + 115);
                      *(v28 + 116) = *(v29 + 116);
                      *(v28 + 117) = *(v29 + 117);
                      *(v28 + 118) = *(v29 + 118);
                      *(v28 + 476) = *(v29 + 476);
                      v28[954] = v29[954];
                      v103 = v137[28];
                      __dst = &v28[v103];
                      v136 = &v29[v103];
                      v104 = type metadata accessor for CommandOperation(0);
                      v126 = *(v104 - 8);
                      v128 = *(v126 + 48);
                      v105 = v102;

                      if (v128(v136, 1, v104))
                      {
                        type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                        memcpy(__dst, v136, *(*(v106 - 8) + 64));
                        v6 = v133;
                        v5 = v134;
                        v107 = v137;
                        v108 = v132;
                      }

                      else
                      {
                        *__dst = *v136;
                        v109 = *(v104 + 20);
                        v110 = &__dst[v109];
                        v111 = &v136[v109];
                        v112 = *&v136[v109];
                        v113 = *&v136[v109 + 8];
                        v129 = v104;
                        v114 = v136[v109 + 16];
                        outlined copy of Text.Storage(v112, *(v111 + 1), v111[16]);
                        *v110 = v112;
                        *(v110 + 1) = v113;
                        v110[16] = v114;
                        *(v110 + 3) = *(v111 + 3);
                        v115 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                        v116 = type metadata accessor for UUID();
                        v124 = *(*(v116 - 8) + 16);

                        v124(&v110[v115], &v111[v115], v116);
                        v117 = *(v129 + 24);
                        v118 = &__dst[v117];
                        v119 = &v136[v117];
                        if (*v119)
                        {
                          v120 = *(v119 + 1);
                          *v118 = *v119;
                          *(v118 + 1) = v120;
                        }

                        else
                        {
                          *v118 = *v119;
                        }

                        v6 = v133;
                        v5 = v134;
                        v107 = v137;
                        v108 = v132;
                        (*(v126 + 56))(__dst, 0, 1, v129);
                      }

                      v28[v107[29]] = v29[v107[29]];
                      v28[v107[30]] = v29[v107[30]];
                      v28[v107[31]] = v29[v107[31]];
                      v28[v107[32]] = v29[v107[32]];
                      v28[v107[33]] = v29[v107[33]];
                      *&v28[v107[34]] = *&v29[v107[34]];
                      v121 = *(v108 + 56);

                      v121(v28, 0, 1, v107);
                      goto LABEL_74;
                    }

                    *(v28 + 108) = v97;
                    *(v28 + 109) = *(v29 + 109);
                    (**(v97 - 8))(v95, v96);
                    v100 = *(v29 + 110);
                    if (!v100)
                    {
LABEL_66:
                      *(v28 + 55) = *(v29 + 55);
                      goto LABEL_67;
                    }
                  }

                  else
                  {
                    v99 = *(v29 + 856);
                    *v95 = *v96;
                    *(v28 + 856) = v99;
                    *(v28 + 109) = *(v29 + 109);
                    v100 = *(v29 + 110);
                    if (!v100)
                    {
                      goto LABEL_66;
                    }
                  }

                  v101 = *(v29 + 111);
                  *(v28 + 110) = v100;
                  *(v28 + 111) = v101;

                  goto LABEL_67;
                }

                *(v28 + 78) = v84;
                *(v28 + 79) = *(v29 + 79);
                (**(v84 - 8))((v28 + 600), (v29 + 600), v84);
              }

              else
              {
                v86 = *(v29 + 616);
                *v82 = *v83;
                *(v28 + 616) = v86;
                *(v28 + 79) = *(v29 + 79);
              }

              *(v28 + 80) = *(v29 + 80);

              goto LABEL_56;
            }

LABEL_43:
            *(v28 + 28) = *(v29 + 28);
            goto LABEL_44;
          }
        }

        *(v28 + 27) = *(v29 + 27);
        v77 = *(v29 + 56);
        if (v77)
        {
          goto LABEL_40;
        }

        goto LABEL_43;
      }
    }

    else
    {
      v51 = v29[72];
      if (v51 == 255)
      {
        *(v28 + 8) = *(v29 + 8);
        v28[72] = v29[72];
      }

      else
      {
        v52 = *(v29 + 8);
        outlined copy of GraphicsImage.Contents(v52, v29[72]);
        *(v28 + 8) = v52;
        v28[72] = v51;
        v39 = *(v29 + 24);
      }

      *(v28 + 10) = *(v29 + 10);
      *(v28 + 88) = *(v29 + 88);
      v28[104] = v29[104];
      *(v28 + 108) = *(v29 + 108);
      *(v28 + 121) = *(v29 + 121);
      *(v28 + 136) = *(v29 + 136);
      *(v28 + 152) = *(v29 + 152);
      *(v28 + 84) = *(v29 + 84);
      v28[170] = v29[170];
      v28[171] = v29[171];
      if (v39 >> 1 == 0xFFFFFFFF)
      {
        v53 = *(v29 + 12);
        *(v28 + 11) = *(v29 + 11);
        *(v28 + 12) = v53;
      }

      else
      {
        v54 = *(v29 + 22);
        v55 = *(v29 + 23);
        v56 = *(v29 + 25);
        outlined copy of AccessibilityImageLabel(v54, v55, v39, v56);
        *(v28 + 22) = v54;
        *(v28 + 23) = v55;
        *(v28 + 24) = v39;
        *(v28 + 25) = v56;
      }

      v57 = *(v29 + 27);
      *(v28 + 26) = *(v29 + 26);
      *(v28 + 27) = v57;
      *(v28 + 112) = *(v29 + 112);
      *(v28 + 57) = *(v29 + 57);
      v28[232] = v29[232];
      v58 = *(v29 + 30);
      *(v28 + 30) = v58;
      *(v28 + 124) = *(v29 + 124);
      v28[250] = v29[250];
      swift_unknownObjectRetain();

      v59 = v58;
      v47 = *(v29 + 33);
      if (v47)
      {
        goto LABEL_21;
      }
    }

    v60 = *(v29 + 17);
    *(v28 + 16) = *(v29 + 16);
    *(v28 + 17) = v60;
    *(v28 + 18) = *(v29 + 18);
    goto LABEL_32;
  }

  type metadata accessor for NavigationItemDescription?(0);
  v8 = *(*(v7 - 8) + 64);

  return memcpy(a1, a2, v8);
}

char *assignWithCopy for DocumentToolbarInputContentWriter(char *a1, char *a2, double a3)
{
  v5 = type metadata accessor for NavigationItemDescription(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (!v8)
  {
    if (v9)
    {
      outlined destroy of CommandOperation(a1, type metadata accessor for NavigationItemDescription);
      goto LABEL_7;
    }

    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);

    v17 = *(a2 + 5);
    if (*(a1 + 5))
    {
      if (v17)
      {
        v18 = *(a2 + 2);
        v19 = *(a2 + 3);
        v20 = a2[32];
        outlined copy of Text.Storage(v18, v19, v20);
        v21 = *(a1 + 2);
        v22 = *(a1 + 3);
        v23 = a1[32];
        *(a1 + 2) = v18;
        *(a1 + 3) = v19;
        a1[32] = v20;
        outlined consume of Text.Storage(v21, v22, v23);
        *(a1 + 5) = *(a2 + 5);
      }

      else
      {
        outlined destroy of Text((a1 + 16));
        v67 = *(a2 + 2);
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = v67;
      }
    }

    else if (v17)
    {
      v62 = *(a2 + 2);
      v63 = *(a2 + 3);
      v64 = a2[32];
      outlined copy of Text.Storage(v62, v63, v64);
      *(a1 + 2) = v62;
      *(a1 + 3) = v63;
      a1[32] = v64;
      *(a1 + 5) = *(a2 + 5);
    }

    else
    {
      v68 = *(a2 + 2);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 2) = v68;
    }

    v69 = a1 + 48;
    v70 = *(a2 + 6);
    if (*(a1 + 6) == 1)
    {
      if (v70 == 1)
      {
        v71 = 1;
LABEL_41:
        *v69 = v71;
        goto LABEL_44;
      }

      *v69 = v70;
    }

    else
    {
      if (v70 == 1)
      {
        outlined destroy of Transaction((a1 + 48));
        v71 = *(a2 + 6);
        goto LABEL_41;
      }

      *v69 = v70;
    }

LABEL_44:
    a1[56] = a2[56];
    *(a1 + 8) = *(a2 + 8);

    a1[72] = a2[72];
    v72 = *(v5 + 24);
    v73 = &a1[v72];
    v74 = &a2[v72];
    v75 = a1[v72 + 8];
    v76 = a2[v72 + 8];
    if (v75 == 255)
    {
      if (v76 == 255)
      {
        v84 = *v74;
        v73[8] = v74[8];
        *v73 = v84;
      }

      else
      {
        v81 = *v74;
        v82 = v76 & 1;
        outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(*v74, v76 & 1);
        *v73 = v81;
        v73[8] = v82;
      }
    }

    else if (v76 == 255)
    {
      outlined destroy of ToolbarStorage.NavigationProperties.DocumentProperties(v73);
      v83 = v74[8];
      *v73 = *v74;
      v73[8] = v83;
    }

    else
    {
      v77 = *v74;
      v78 = v76 & 1;
      outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(*v74, v76 & 1);
      v79 = *v73;
      v80 = v73[8];
      *v73 = v77;
      v73[8] = v78;
      outlined consume of ResolvableCLKTextProvider.FontStorage(v79, v80);
    }

    v85 = v73[24];
    v86 = v74[24];
    if (v85 == 254)
    {
      if (v86 == 254)
      {
LABEL_60:
        v90 = *(v74 + 2);
        v73[24] = v74[24];
        *(v73 + 2) = v90;
        goto LABEL_61;
      }

LABEL_58:
      if (v86 != 255)
      {
        v88 = *(v74 + 2);
        v89 = v86 & 1;
        outlined copy of PlatformItemCollection.Storage(v88, v86 & 1);
        *(v73 + 2) = v88;
        v73[24] = v89;
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    if (v86 == 254)
    {
      outlined destroy of ToolbarStorage.NavigationProperties.Actions((v73 + 16));
    }

    else
    {
      if (v85 == 255)
      {
        goto LABEL_58;
      }

      if (v86 != 255)
      {
        v133 = *(v74 + 2);
        v134 = v86 & 1;
        outlined copy of PlatformItemCollection.Storage(v133, v86 & 1);
        v135 = *(v73 + 2);
        v136 = v73[24];
        *(v73 + 2) = v133;
        v73[24] = v134;
        outlined consume of PlatformItemCollection.Storage(v135, v136);
LABEL_61:
        swift_unknownObjectWeakCopyAssign();
        *(v73 + 5) = *(v74 + 5);
        v91 = *(v73 + 6);
        v92 = *(v74 + 6);
        *(v73 + 6) = v92;
        v93 = v92;

        v94 = *(type metadata accessor for ToolbarStorage.NavigationProperties(0) + 32);
        v95 = &v73[v94];
        v96 = &v74[v94];
        v97 = type metadata accessor for PlatformItemList.Item(0);
        v98 = *(v97 - 8);
        v99 = *(v98 + 48);
        v100 = v99(v95, 1, v97);
        v101 = v99(v96, 1, v97);
        if (v100)
        {
          if (!v101)
          {
            v625 = v97;
            v102 = *v96;
            *v95 = *v96;
            v103 = *(v96 + 1);
            *(v95 + 8) = v103;
            *(v95 + 16) = *(v96 + 2);
            *(v95 + 24) = *(v96 + 3);
            *(v95 + 32) = v96[32];
            *(v95 + 40) = *(v96 + 5);
            *(v95 + 48) = *(v96 + 6);
            *(v95 + 56) = v96[56];
            v104 = *(v96 + 24);
            v105 = v102;
            v106 = v103;

            v621 = v98;
            if (v104 >> 1 == 4294967294)
            {
              v107 = *(v96 + 4);
              v108 = *(v96 + 5);
              v109 = *(v96 + 7);
              *(v95 + 96) = *(v96 + 6);
              *(v95 + 112) = v109;
              *(v95 + 64) = v107;
              *(v95 + 80) = v108;
              v110 = *(v96 + 8);
              v111 = *(v96 + 9);
              v112 = *(v96 + 11);
              *(v95 + 160) = *(v96 + 10);
              *(v95 + 176) = v112;
              *(v95 + 128) = v110;
              *(v95 + 144) = v111;
              v113 = *(v96 + 12);
              v114 = *(v96 + 13);
              v115 = *(v96 + 14);
              *(v95 + 235) = *(v96 + 235);
              *(v95 + 208) = v114;
              *(v95 + 224) = v115;
              *(v95 + 192) = v113;
            }

            else
            {
              v174 = v96[72];
              if (v174 == 255)
              {
                v241 = *(v96 + 8);
                *(v95 + 72) = v96[72];
                *(v95 + 64) = v241;
              }

              else
              {
                v175 = *(v96 + 8);
                outlined copy of GraphicsImage.Contents(v175, v96[72]);
                *(v95 + 64) = v175;
                *(v95 + 72) = v174;
              }

              *(v95 + 80) = *(v96 + 10);
              *(v95 + 88) = *(v96 + 88);
              *(v95 + 104) = v96[104];
              v242 = *(v96 + 108);
              *(v95 + 121) = *(v96 + 121);
              *(v95 + 108) = v242;
              v243 = *(v96 + 136);
              v244 = *(v96 + 152);
              *(v95 + 168) = v96[168];
              *(v95 + 152) = v244;
              *(v95 + 136) = v243;
              *(v95 + 169) = v96[169];
              *(v95 + 170) = v96[170];
              *(v95 + 171) = v96[171];
              v245 = *(v96 + 24);
              if (v245 >> 1 == 0xFFFFFFFF)
              {
                v246 = *(v96 + 12);
                *(v95 + 176) = *(v96 + 11);
                *(v95 + 192) = v246;
              }

              else
              {
                v247 = a1;
                v248 = *(v96 + 22);
                v249 = *(v96 + 23);
                v250 = v5;
                v251 = *(v96 + 25);
                outlined copy of AccessibilityImageLabel(v248, v249, *(v96 + 24), v251);
                *(v95 + 176) = v248;
                *(v95 + 184) = v249;
                a1 = v247;
                *(v95 + 192) = v245;
                *(v95 + 200) = v251;
                v5 = v250;
              }

              *(v95 + 208) = *(v96 + 26);
              *(v95 + 216) = *(v96 + 27);
              *(v95 + 224) = v96[224];
              *(v95 + 225) = v96[225];
              v252 = *(v96 + 57);
              *(v95 + 232) = v96[232];
              *(v95 + 228) = v252;
              v253 = *(v96 + 30);
              *(v95 + 240) = v253;
              *(v95 + 248) = *(v96 + 124);
              *(v95 + 250) = v96[250];
              swift_unknownObjectRetain();

              v254 = v253;
            }

            if (*(v96 + 33))
            {
              *(v95 + 256) = *(v96 + 32);
              *(v95 + 264) = *(v96 + 33);
              v255 = *(v96 + 34);

              if (v255 >= 2)
              {
                v256 = v255;
              }

              *(v95 + 272) = v255;
              v257 = *(v96 + 70);
              *(v95 + 284) = v96[284];
              *(v95 + 280) = v257;
              *(v95 + 285) = v96[285];
              *(v95 + 286) = v96[286];
              *(v95 + 288) = *(v96 + 36);
              *(v95 + 296) = *(v96 + 37);
            }

            else
            {
              v258 = *(v96 + 16);
              v259 = *(v96 + 18);
              *(v95 + 272) = *(v96 + 17);
              *(v95 + 288) = v259;
              *(v95 + 256) = v258;
            }

            v260 = *(v96 + 42);
            v632 = a1;
            v629 = a2;
            v635 = v5;
            if (v260 >> 2 == 0xFFFFFFFF)
            {
              v261 = *(v96 + 19);
              v262 = *(v96 + 21);
              *(v95 + 320) = *(v96 + 20);
              *(v95 + 336) = v262;
              *(v95 + 304) = v261;
              v263 = *(v96 + 22);
              v264 = *(v96 + 23);
              v265 = *(v96 + 24);
              *(v95 + 400) = *(v96 + 50);
              *(v95 + 368) = v264;
              *(v95 + 384) = v265;
              *(v95 + 352) = v263;
            }

            else
            {
              v266 = *(v96 + 38);
              v267 = *(v96 + 39);
              v268 = *(v96 + 40);
              v269 = *(v96 + 41);
              v270 = *(v96 + 43);
              v271 = *(v96 + 44);
              v272 = *(v96 + 45);
              v592 = *(v96 + 46);
              v595 = *(v96 + 47);
              v602 = *(v96 + 48);
              __dstc = *(v96 + 49);
              v615 = *(v96 + 50);
              outlined copy of PlatformItemList.Item.SystemItem(v266, v267, v268, v269, v260, v270, v271, v272, v592, v595, v602, __dstc, v615);
              *(v95 + 304) = v266;
              *(v95 + 312) = v267;
              *(v95 + 320) = v268;
              *(v95 + 328) = v269;
              *(v95 + 336) = v260;
              *(v95 + 344) = v270;
              *(v95 + 352) = v271;
              *(v95 + 360) = v272;
              *(v95 + 368) = v592;
              *(v95 + 376) = v595;
              *(v95 + 384) = v602;
              *(v95 + 392) = __dstc;
              *(v95 + 400) = v615;
            }

            if (*(v96 + 52) == 1)
            {
              *(v95 + 408) = *(v96 + 408);
              v273 = *(v96 + 424);
              v274 = *(v96 + 440);
              v275 = *(v96 + 456);
              *(v95 + 472) = v96[472];
              *(v95 + 440) = v274;
              *(v95 + 456) = v275;
              *(v95 + 424) = v273;
            }

            else
            {
              *(v95 + 408) = v96[408];
              *(v95 + 409) = v96[409];
              *(v95 + 410) = v96[410];
              *(v95 + 411) = v96[411];
              *(v95 + 412) = v96[412];
              v276 = *(v96 + 52);
              if (v276)
              {
                v277 = *(v96 + 53);
                *(v95 + 416) = v276;
                *(v95 + 424) = v277;
              }

              else
              {
                *(v95 + 416) = *(v96 + 26);
              }

              v278 = *(v96 + 54);
              if (v278)
              {
                v279 = *(v96 + 55);
                *(v95 + 432) = v278;
                *(v95 + 440) = v279;
              }

              else
              {
                *(v95 + 432) = *(v96 + 27);
              }

              v280 = *(v96 + 56);
              if (v280)
              {
                v281 = *(v96 + 57);
                *(v95 + 448) = v280;
                *(v95 + 456) = v281;
              }

              else
              {
                *(v95 + 448) = *(v96 + 28);
              }

              *(v95 + 464) = *(v96 + 58);
              *(v95 + 472) = v96[472];
            }

            *(v95 + 480) = *(v96 + 60);
            *(v95 + 488) = *(v96 + 61);
            *(v95 + 496) = *(v96 + 62);
            *(v95 + 504) = v96[504];
            v282 = *(v96 + 64);

            if (v282)
            {
              v283 = *(v96 + 65);
              *(v95 + 512) = v282;
              *(v95 + 520) = v283;
            }

            else
            {
              *(v95 + 512) = *(v96 + 32);
            }

            *(v95 + 528) = v96[528];
            if (!*(v96 + 102))
            {
              memcpy((v95 + 536), v96 + 536, 0x130uLL);
              goto LABEL_167;
            }

            *(v95 + 536) = *(v96 + 67);
            *(v95 + 544) = *(v96 + 68);
            *(v95 + 552) = v96[552];
            *(v95 + 560) = *(v96 + 70);
            *(v95 + 568) = v96[568];
            v284 = *(v96 + 36);
            *(v95 + 592) = v96[592];
            *(v95 + 576) = v284;
            v285 = (v95 + 600);
            v286 = (v96 + 600);
            v287 = *(v96 + 78);

            if (v287)
            {
              if (v287 == 1)
              {
                v288 = *v286;
                v289 = *(v96 + 632);
                *(v95 + 616) = *(v96 + 616);
                *(v95 + 632) = v289;
                *v285 = v288;
LABEL_163:
                v292 = *(v96 + 81);
                *(v95 + 656) = v96[656];
                *(v95 + 648) = v292;
                v293 = (v95 + 664);
                v294 = v96 + 664;
                if (*(v96 + 97) == 1)
                {
                  v295 = *(v96 + 680);
                  *v293 = *v294;
                  *(v95 + 680) = v295;
                  v296 = *(v96 + 696);
                  v297 = *(v96 + 712);
                  v298 = *(v96 + 744);
                  *(v95 + 728) = *(v96 + 728);
                  *(v95 + 744) = v298;
                  *(v95 + 696) = v296;
                  *(v95 + 712) = v297;
                  v299 = *(v96 + 760);
                  v300 = *(v96 + 776);
                  v301 = *(v96 + 792);
                  *(v95 + 808) = v96[808];
                  *(v95 + 776) = v300;
                  *(v95 + 792) = v301;
                  *(v95 + 760) = v299;
                }

                else
                {
                  v302 = *v294;
                  *(v95 + 672) = v96[672];
                  *v293 = v302;
                  v303 = *(v96 + 85);
                  *(v95 + 688) = v96[688];
                  *(v95 + 680) = v303;
                  *(v95 + 689) = v96[689];
                  *(v95 + 690) = v96[690];
                  *(v95 + 691) = v96[691];
                  *(v95 + 692) = v96[692];
                  *(v95 + 696) = *(v96 + 87);
                  *(v95 + 704) = *(v96 + 88);
                  *(v95 + 712) = *(v96 + 89);
                  *(v95 + 720) = *(v96 + 90);
                  *(v95 + 728) = *(v96 + 91);
                  *(v95 + 736) = *(v96 + 92);
                  *(v95 + 744) = v96[744];
                  *(v95 + 745) = v96[745];
                  *(v95 + 752) = *(v96 + 94);
                  *(v95 + 760) = *(v96 + 95);
                  *(v95 + 768) = v96[768];
                  *(v95 + 776) = *(v96 + 97);
                  v304 = *(v96 + 49);
                  *(v95 + 800) = *(v96 + 100);
                  *(v95 + 784) = v304;
                  *(v95 + 808) = v96[808];
                }

                *(v95 + 816) = *(v96 + 102);
                *(v95 + 824) = *(v96 + 103);
                *(v95 + 832) = *(v96 + 104);

LABEL_167:
                v305 = (v95 + 840);
                v306 = (v96 + 840);
                v307 = *(v96 + 108);
                if (v307)
                {
                  if (v307 == 1)
                  {
                    v308 = *v306;
                    v309 = *(v96 + 856);
                    v310 = *(v96 + 872);
                    *(v95 + 888) = *(v96 + 111);
                    *(v95 + 856) = v309;
                    *(v95 + 872) = v310;
                    *v305 = v308;
LABEL_175:
                    v315 = *(v96 + 112);
                    *(v95 + 896) = v315;
                    *(v95 + 904) = *(v96 + 113);
                    *(v95 + 912) = *(v96 + 114);
                    *(v95 + 920) = *(v96 + 115);
                    *(v95 + 928) = *(v96 + 116);
                    *(v95 + 936) = *(v96 + 117);
                    *(v95 + 944) = *(v96 + 118);
                    *(v95 + 952) = v96[952];
                    *(v95 + 953) = v96[953];
                    *(v95 + 954) = v96[954];
                    v316 = v625[28];
                    v616 = (v95 + v316);
                    v317 = &v96[v316];
                    v318 = type metadata accessor for CommandOperation(0);
                    v603 = *(v318 - 8);
                    __dstd = *(v603 + 48);
                    v319 = v315;

                    if (__dstd(v317, 1, v318))
                    {
                      type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                      memcpy(v616, v317, *(*(v320 - 8) + 64));
                      a1 = v632;
                      v321 = v625;
                      a2 = v629;
                      v322 = v621;
                    }

                    else
                    {
                      *v616 = *v317;
                      v323 = *(v318 + 20);
                      v324 = v317;
                      v325 = &v616[v323];
                      v326 = &v324[v323];
                      __dsta = v318;
                      v327 = *&v324[v323];
                      v328 = *&v324[v323 + 8];
                      v329 = v324[v323 + 16];
                      outlined copy of Text.Storage(v327, v328, v329);
                      *v325 = v327;
                      *(v325 + 1) = v328;
                      v325[16] = v329;
                      *(v325 + 3) = *(v326 + 3);
                      v330 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                      v331 = type metadata accessor for UUID();
                      v596 = *(*(v331 - 8) + 16);

                      v596(&v325[v330], &v326[v330], v331);
                      v332 = __dsta[6];
                      v333 = &v616[v332];
                      v334 = &v324[v332];
                      if (*v334)
                      {
                        v335 = *(v334 + 1);
                        *v333 = *v334;
                        *(v333 + 1) = v335;
                      }

                      else
                      {
                        *v333 = *v334;
                      }

                      a1 = v632;
                      v321 = v625;
                      a2 = v629;
                      v322 = v621;
                      (*(v603 + 56))(v616, 0, 1, __dsta);
                    }

                    *(v95 + v321[29]) = v96[v321[29]];
                    *(v95 + v321[30]) = v96[v321[30]];
                    *(v95 + v321[31]) = v96[v321[31]];
                    *(v95 + v321[32]) = v96[v321[32]];
                    *(v95 + v321[33]) = v96[v321[33]];
                    *(v95 + v321[34]) = *&v96[v321[34]];
                    v344 = *(v322 + 56);

                    v344(v95, 0, 1, v321);
                    v5 = v635;
                    goto LABEL_349;
                  }

                  *(v95 + 864) = v307;
                  *(v95 + 872) = *(v96 + 109);
                  (**(v307 - 8))(v305, v306);
                }

                else
                {
                  v311 = *v306;
                  v312 = *(v96 + 856);
                  *(v95 + 872) = *(v96 + 109);
                  *v305 = v311;
                  *(v95 + 856) = v312;
                }

                v313 = *(v96 + 110);
                if (v313)
                {
                  v314 = *(v96 + 111);
                  *(v95 + 880) = v313;
                  *(v95 + 888) = v314;
                }

                else
                {
                  *(v95 + 880) = *(v96 + 55);
                }

                goto LABEL_175;
              }

              *(v95 + 624) = v287;
              *(v95 + 632) = *(v96 + 79);
              (**(v287 - 8))(v95 + 600, (v96 + 600), v287);
            }

            else
            {
              v290 = *v286;
              v291 = *(v96 + 616);
              *(v95 + 632) = *(v96 + 79);
              *v285 = v290;
              *(v95 + 616) = v291;
            }

            *(v95 + 640) = *(v96 + 80);

            goto LABEL_163;
          }

          goto LABEL_67;
        }

        if (v101)
        {
          outlined destroy of CommandOperation(v95, type metadata accessor for PlatformItemList.Item);
LABEL_67:
          type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
          memcpy(v95, v96, *(*(v116 - 8) + 64));
LABEL_349:
          *&a1[*(v5 + 28)] = *&a2[*(v5 + 28)];
          return a1;
        }

        v117 = *v95;
        v118 = *v96;
        *v95 = *v96;
        v119 = v118;

        v120 = *(v95 + 8);
        v121 = *(v96 + 1);
        *(v95 + 8) = v121;
        v122 = v121;

        *(v95 + 16) = *(v96 + 2);
        *(v95 + 24) = *(v96 + 3);

        *(v95 + 32) = v96[32];
        *(v95 + 40) = *(v96 + 5);
        *(v95 + 48) = *(v96 + 6);

        *(v95 + 56) = v96[56];
        v123 = *(v96 + 24) & 0xFFFFFFFFFFFFFFFELL;
        if (*(v95 + 192) >> 1 == 4294967294)
        {
          if (v123 == 0x1FFFFFFFCLL)
          {
            v124 = *(v96 + 4);
            v125 = *(v96 + 5);
            v126 = *(v96 + 7);
            *(v95 + 96) = *(v96 + 6);
            *(v95 + 112) = v126;
            *(v95 + 64) = v124;
            *(v95 + 80) = v125;
            v127 = *(v96 + 8);
            v128 = *(v96 + 9);
            v129 = *(v96 + 11);
            *(v95 + 160) = *(v96 + 10);
            *(v95 + 176) = v129;
            *(v95 + 128) = v127;
            *(v95 + 144) = v128;
            v130 = *(v96 + 12);
            v131 = *(v96 + 13);
            v132 = *(v96 + 14);
            *(v95 + 235) = *(v96 + 235);
            *(v95 + 208) = v131;
            *(v95 + 224) = v132;
            *(v95 + 192) = v130;
          }

          else
          {
            v336 = a1;
            v337 = v96[72];
            if (v337 == 255)
            {
              v345 = *(v96 + 8);
              *(v95 + 72) = v96[72];
              *(v95 + 64) = v345;
            }

            else
            {
              v338 = *(v96 + 8);
              outlined copy of GraphicsImage.Contents(v338, v96[72]);
              *(v95 + 64) = v338;
              *(v95 + 72) = v337;
            }

            *(v95 + 80) = *(v96 + 10);
            *(v95 + 88) = *(v96 + 88);
            *(v95 + 104) = v96[104];
            v346 = *(v96 + 108);
            *(v95 + 121) = *(v96 + 121);
            *(v95 + 108) = v346;
            v347 = *(v96 + 136);
            v348 = *(v96 + 152);
            *(v95 + 168) = v96[168];
            *(v95 + 152) = v348;
            *(v95 + 136) = v347;
            *(v95 + 169) = v96[169];
            *(v95 + 170) = v96[170];
            *(v95 + 171) = v96[171];
            v349 = *(v96 + 24);
            if (v349 >> 1 == 0xFFFFFFFF)
            {
              v350 = *(v96 + 12);
              *(v95 + 176) = *(v96 + 11);
              *(v95 + 192) = v350;
            }

            else
            {
              v351 = v5;
              v352 = *(v96 + 22);
              v353 = *(v96 + 23);
              v354 = a2;
              v355 = *(v96 + 25);
              outlined copy of AccessibilityImageLabel(v352, v353, *(v96 + 24), v355);
              *(v95 + 176) = v352;
              *(v95 + 184) = v353;
              v5 = v351;
              *(v95 + 192) = v349;
              *(v95 + 200) = v355;
              a2 = v354;
            }

            a1 = v336;
            *(v95 + 208) = *(v96 + 26);
            *(v95 + 216) = *(v96 + 27);
            *(v95 + 224) = v96[224];
            *(v95 + 225) = v96[225];
            v356 = *(v96 + 57);
            *(v95 + 232) = v96[232];
            *(v95 + 228) = v356;
            v357 = *(v96 + 30);
            *(v95 + 240) = v357;
            *(v95 + 248) = *(v96 + 124);
            *(v95 + 250) = v96[250];
            swift_unknownObjectRetain();

            v358 = v357;
          }
        }

        else if (v123 == 0x1FFFFFFFCLL)
        {
          outlined destroy of Image.Resolved(v95 + 64);
          v232 = *(v96 + 7);
          v234 = *(v96 + 4);
          v233 = *(v96 + 5);
          *(v95 + 96) = *(v96 + 6);
          *(v95 + 112) = v232;
          *(v95 + 64) = v234;
          *(v95 + 80) = v233;
          v235 = *(v96 + 11);
          v237 = *(v96 + 8);
          v236 = *(v96 + 9);
          *(v95 + 160) = *(v96 + 10);
          *(v95 + 176) = v235;
          *(v95 + 128) = v237;
          *(v95 + 144) = v236;
          v239 = *(v96 + 13);
          v238 = *(v96 + 14);
          v240 = *(v96 + 12);
          *(v95 + 235) = *(v96 + 235);
          *(v95 + 208) = v239;
          *(v95 + 224) = v238;
          *(v95 + 192) = v240;
        }

        else
        {
          v339 = v96[72];
          v340 = a1;
          if (*(v95 + 72) == 255)
          {
            if (v339 == 255)
            {
              v361 = *(v96 + 8);
              *(v95 + 72) = v96[72];
              *(v95 + 64) = v361;
            }

            else
            {
              v359 = *(v96 + 8);
              outlined copy of GraphicsImage.Contents(v359, v96[72]);
              *(v95 + 64) = v359;
              *(v95 + 72) = v339;
            }
          }

          else if (v339 == 255)
          {
            outlined destroy of GraphicsImage.Contents(v95 + 64);
            v360 = v96[72];
            *(v95 + 64) = *(v96 + 8);
            *(v95 + 72) = v360;
          }

          else
          {
            v341 = *(v96 + 8);
            outlined copy of GraphicsImage.Contents(v341, v96[72]);
            v342 = *(v95 + 64);
            *(v95 + 64) = v341;
            v343 = *(v95 + 72);
            *(v95 + 72) = v339;
            outlined consume of GraphicsImage.Contents(v342, v343);
          }

          *(v95 + 80) = *(v96 + 10);
          *(v95 + 88) = *(v96 + 11);
          *(v95 + 96) = *(v96 + 12);
          *(v95 + 104) = v96[104];
          v362 = *(v96 + 108);
          *(v95 + 121) = *(v96 + 121);
          *(v95 + 108) = v362;
          v363 = *(v96 + 136);
          v364 = *(v96 + 152);
          *(v95 + 168) = v96[168];
          *(v95 + 152) = v364;
          *(v95 + 136) = v363;
          *(v95 + 169) = v96[169];
          *(v95 + 170) = v96[170];
          *(v95 + 171) = v96[171];
          v365 = *(v96 + 24);
          v366 = v365 & 0xFFFFFFFFFFFFFFFELL;
          if (*(v95 + 192) >> 1 == 0xFFFFFFFFLL)
          {
            if (v366 == 0x1FFFFFFFELL)
            {
              v367 = *(v96 + 12);
              *(v95 + 176) = *(v96 + 11);
              *(v95 + 192) = v367;
            }

            else
            {
              v369 = v5;
              v370 = *(v96 + 22);
              v371 = *(v96 + 23);
              v372 = a2;
              v373 = *(v96 + 25);
              outlined copy of AccessibilityImageLabel(v370, v371, *(v96 + 24), v373);
              *(v95 + 176) = v370;
              *(v95 + 184) = v371;
              v5 = v369;
              *(v95 + 192) = v365;
              *(v95 + 200) = v373;
              a2 = v372;
            }
          }

          else if (v366 == 0x1FFFFFFFELL)
          {
            outlined destroy of AccessibilityImageLabel(v95 + 176);
            v368 = *(v96 + 12);
            *(v95 + 176) = *(v96 + 11);
            *(v95 + 192) = v368;
          }

          else
          {
            v374 = v5;
            v375 = *(v96 + 22);
            v376 = *(v96 + 23);
            v377 = a2;
            v378 = *(v96 + 25);
            outlined copy of AccessibilityImageLabel(v375, v376, *(v96 + 24), v378);
            v379 = *(v95 + 176);
            v380 = *(v95 + 184);
            v381 = *(v95 + 192);
            v382 = *(v95 + 200);
            *(v95 + 176) = v375;
            *(v95 + 184) = v376;
            v5 = v374;
            *(v95 + 192) = v365;
            *(v95 + 200) = v378;
            a2 = v377;
            outlined consume of AccessibilityImageLabel(v379, v380, v381, v382);
          }

          a1 = v340;
          *(v95 + 208) = *(v96 + 26);
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          *(v95 + 216) = *(v96 + 27);

          *(v95 + 224) = v96[224];
          *(v95 + 225) = v96[225];
          v383 = *(v96 + 57);
          *(v95 + 232) = v96[232];
          *(v95 + 228) = v383;
          v384 = *(v95 + 240);
          v385 = *(v96 + 30);
          *(v95 + 240) = v385;
          v386 = v385;

          *(v95 + 248) = *(v96 + 124);
          *(v95 + 250) = v96[250];
        }

        v387 = *(v96 + 33);
        if (!*(v95 + 264))
        {
          if (v387)
          {
            *(v95 + 256) = *(v96 + 32);
            *(v95 + 264) = *(v96 + 33);
            v391 = *(v96 + 34);

            if (v391 >= 2)
            {
              v392 = v391;
            }

            *(v95 + 272) = v391;
            v393 = *(v96 + 70);
            *(v95 + 284) = v96[284];
            *(v95 + 280) = v393;
            *(v95 + 285) = v96[285];
            *(v95 + 286) = v96[286];
            *(v95 + 288) = *(v96 + 36);
            *(v95 + 296) = *(v96 + 37);
          }

          else
          {
            v396 = *(v96 + 16);
            v397 = *(v96 + 18);
            *(v95 + 272) = *(v96 + 17);
            *(v95 + 288) = v397;
            *(v95 + 256) = v396;
          }

LABEL_220:
          v400 = *(v96 + 42);
          v401 = v400 & 0xFFFFFFFFFFFFFFFCLL;
          v633 = a1;
          v630 = a2;
          v636 = v5;
          v627 = v97;
          if (*(v95 + 336) >> 2 == 0xFFFFFFFFLL)
          {
            if (v401 == 0x3FFFFFFFCLL)
            {
              v402 = *(v96 + 19);
              v403 = *(v96 + 21);
              *(v95 + 320) = *(v96 + 20);
              *(v95 + 336) = v403;
              *(v95 + 304) = v402;
              v404 = *(v96 + 22);
              v405 = *(v96 + 23);
              v406 = *(v96 + 24);
              *(v95 + 400) = *(v96 + 50);
              *(v95 + 368) = v405;
              *(v95 + 384) = v406;
              *(v95 + 352) = v404;
            }

            else
            {
              v412 = *(v96 + 38);
              v413 = *(v96 + 39);
              v414 = *(v96 + 40);
              v415 = *(v96 + 43);
              v416 = *(v96 + 44);
              v417 = *(v96 + 45);
              v597 = *(v96 + 46);
              v604 = *(v96 + 47);
              __dste = *(v96 + 48);
              v617 = *(v96 + 49);
              v622 = *(v96 + 50);
              v418 = *(v96 + 41);
              outlined copy of PlatformItemList.Item.SystemItem(v412, v413, v414, v418, v400, v415, v416, v417, v597, v604, __dste, v617, v622);
              *(v95 + 304) = v412;
              *(v95 + 312) = v413;
              *(v95 + 320) = v414;
              *(v95 + 328) = v418;
              *(v95 + 336) = v400;
              *(v95 + 344) = v415;
              *(v95 + 352) = v416;
              *(v95 + 360) = v417;
              *(v95 + 368) = v597;
              *(v95 + 376) = v604;
              *(v95 + 384) = __dste;
              *(v95 + 392) = v617;
              v97 = v627;
              *(v95 + 400) = v622;
            }
          }

          else if (v401 == 0x3FFFFFFFCLL)
          {
            outlined destroy of PlatformItemList.Item.SystemItem(v95 + 304);
            v408 = *(v96 + 20);
            v407 = *(v96 + 21);
            *(v95 + 304) = *(v96 + 19);
            *(v95 + 320) = v408;
            *(v95 + 336) = v407;
            v410 = *(v96 + 23);
            v409 = *(v96 + 24);
            v411 = *(v96 + 22);
            *(v95 + 400) = *(v96 + 50);
            *(v95 + 368) = v410;
            *(v95 + 384) = v409;
            *(v95 + 352) = v411;
          }

          else
          {
            v419 = *(v96 + 38);
            v420 = *(v96 + 39);
            v421 = *(v96 + 40);
            __dstf = *(v96 + 44);
            v618 = *(v96 + 43);
            v422 = *(v96 + 46);
            v598 = *(v96 + 41);
            v605 = *(v96 + 45);
            v423 = *(v96 + 47);
            v424 = *(v96 + 48);
            v425 = *(v96 + 49);
            v623 = *(v96 + 50);
            outlined copy of PlatformItemList.Item.SystemItem(v419, v420, v421, v598, v400, v618, __dstf, v605, v422, v423, v424, v425, v623);
            v426 = *(v95 + 304);
            v427 = *(v95 + 312);
            v428 = *(v95 + 320);
            v429 = *(v95 + 328);
            v430 = *(v95 + 336);
            v431 = *(v95 + 344);
            v432 = *(v95 + 352);
            v433 = *(v95 + 360);
            v434 = *(v95 + 368);
            v435 = *(v95 + 384);
            v436 = *(v95 + 400);
            *(v95 + 304) = v419;
            *(v95 + 312) = v420;
            *(v95 + 320) = v421;
            *(v95 + 328) = v598;
            *(v95 + 336) = v400;
            *(v95 + 344) = v618;
            *(v95 + 352) = __dstf;
            *(v95 + 360) = v605;
            *(v95 + 368) = v422;
            *(v95 + 376) = v423;
            *(v95 + 384) = v424;
            *(v95 + 392) = v425;
            v97 = v627;
            *(v95 + 400) = v623;
            outlined consume of PlatformItemList.Item.SystemItem(v426, v427, v428, v429, v430, v431, v432, v433, v434, *(&v434 + 1), v435, SBYTE8(v435), v436);
          }

          v437 = (v95 + 408);
          v438 = v96 + 408;
          v439 = *(v95 + 416);
          v440 = *(v96 + 52);
          if (v439 == 1)
          {
            if (v440 == 1)
            {
              *v437 = *v438;
              v441 = *(v96 + 424);
              v442 = *(v96 + 440);
              v443 = *(v96 + 456);
              *(v95 + 472) = v96[472];
              *(v95 + 440) = v442;
              *(v95 + 456) = v443;
              *(v95 + 424) = v441;
              goto LABEL_262;
            }

            *(v95 + 408) = v96[408];
            *(v95 + 409) = v96[409];
            *(v95 + 410) = v96[410];
            *(v95 + 411) = v96[411];
            *(v95 + 412) = v96[412];
            v447 = *(v96 + 52);
            if (v447)
            {
              v448 = *(v96 + 53);
              *(v95 + 416) = v447;
              *(v95 + 424) = v448;
            }

            else
            {
              *(v95 + 416) = *(v96 + 26);
            }

            v451 = *(v96 + 54);
            if (v451)
            {
              v452 = *(v96 + 55);
              *(v95 + 432) = v451;
              *(v95 + 440) = v452;
            }

            else
            {
              *(v95 + 432) = *(v96 + 27);
            }

            v454 = *(v96 + 56);
            if (!v454)
            {
              goto LABEL_260;
            }

            goto LABEL_258;
          }

          if (v440 == 1)
          {
            outlined destroy of PlatformItemList.Item.SelectionBehavior(v95 + 408);
            *v437 = *v438;
            v445 = *(v96 + 440);
            v444 = *(v96 + 456);
            v446 = *(v96 + 424);
            *(v95 + 472) = v96[472];
            *(v95 + 440) = v445;
            *(v95 + 456) = v444;
            *(v95 + 424) = v446;
            goto LABEL_262;
          }

          *(v95 + 408) = *v438;
          *(v95 + 409) = v96[409];
          *(v95 + 410) = v96[410];
          *(v95 + 411) = v96[411];
          *(v95 + 412) = v96[412];
          v449 = *(v96 + 52);
          if (v439)
          {
            if (v449)
            {
              v450 = *(v96 + 53);
              *(v95 + 416) = v449;
              *(v95 + 424) = v450;

              goto LABEL_247;
            }
          }

          else if (v449)
          {
            v453 = *(v96 + 53);
            *(v95 + 416) = v449;
            *(v95 + 424) = v453;

            goto LABEL_247;
          }

          *(v95 + 416) = *(v96 + 26);
LABEL_247:
          v455 = *(v96 + 54);
          if (*(v95 + 432))
          {
            if (v455)
            {
              v456 = *(v96 + 55);
              *(v95 + 432) = v455;
              *(v95 + 440) = v456;

              goto LABEL_254;
            }
          }

          else if (v455)
          {
            v457 = *(v96 + 55);
            *(v95 + 432) = v455;
            *(v95 + 440) = v457;

            goto LABEL_254;
          }

          *(v95 + 432) = *(v96 + 27);
LABEL_254:
          v454 = *(v96 + 56);
          if (*(v95 + 448))
          {
            if (v454)
            {
              v458 = *(v96 + 57);
              *(v95 + 448) = v454;
              *(v95 + 456) = v458;

LABEL_261:
              *(v95 + 464) = *(v96 + 58);
              *(v95 + 472) = v96[472];
LABEL_262:
              *(v95 + 480) = *(v96 + 60);
              *(v95 + 488) = *(v96 + 61);

              *(v95 + 496) = *(v96 + 62);
              *(v95 + 504) = v96[504];
              v460 = *(v96 + 64);
              if (*(v95 + 512))
              {
                if (v460)
                {
                  v461 = *(v96 + 65);
                  *(v95 + 512) = v460;
                  *(v95 + 520) = v461;

                  goto LABEL_269;
                }
              }

              else if (v460)
              {
                v462 = *(v96 + 65);
                *(v95 + 512) = v460;
                *(v95 + 520) = v462;

                goto LABEL_269;
              }

              *(v95 + 512) = *(v96 + 32);
LABEL_269:
              *(v95 + 528) = v96[528];
              v463 = *(v96 + 102);
              if (*(v95 + 816))
              {
                if (v463)
                {
                  *(v95 + 536) = *(v96 + 67);
                  *(v95 + 544) = *(v96 + 68);

                  *(v95 + 552) = v96[552];
                  *(v95 + 560) = *(v96 + 70);

                  *(v95 + 568) = v96[568];
                  v464 = *(v96 + 36);
                  *(v95 + 592) = v96[592];
                  *(v95 + 576) = v464;
                  v465 = (v95 + 600);
                  v466 = v96 + 600;
                  v467 = *(v95 + 624);
                  v468 = *(v96 + 78);
                  if (v467 != 1)
                  {
                    if (v468 == 1)
                    {
                      outlined destroy of AccessibilityValueStorage(v95 + 600);
                      v478 = *(v96 + 616);
                      v477 = *(v96 + 632);
                      *v465 = *v466;
                      *(v95 + 616) = v478;
                      *(v95 + 632) = v477;
                    }

                    else
                    {
                      if (v467)
                      {
                        if (v468)
                        {
                          __swift_assign_boxed_opaque_existential_1((v95 + 600), v96 + 75);
                        }

                        else
                        {
                          outlined destroy of AnyAccessibilityValue(v95 + 600);
                          v496 = *(v96 + 79);
                          v497 = *(v96 + 616);
                          *v465 = *v466;
                          *(v95 + 616) = v497;
                          *(v95 + 632) = v496;
                        }
                      }

                      else if (v468)
                      {
                        *(v95 + 624) = v468;
                        *(v95 + 632) = *(v96 + 79);
                        (**(v468 - 8))(v95 + 600, (v96 + 600));
                      }

                      else
                      {
                        v498 = *v466;
                        v499 = *(v96 + 616);
                        *(v95 + 632) = *(v96 + 79);
                        *v465 = v498;
                        *(v95 + 616) = v499;
                      }

                      *(v95 + 640) = *(v96 + 80);
                    }

                    goto LABEL_301;
                  }

                  if (v468)
                  {
                    if (v468 == 1)
                    {
                      v469 = *v466;
                      v470 = *(v96 + 632);
                      *(v95 + 616) = *(v96 + 616);
                      *(v95 + 632) = v470;
                      *v465 = v469;
LABEL_301:
                      v500 = *(v96 + 81);
                      *(v95 + 656) = v96[656];
                      *(v95 + 648) = v500;
                      v501 = (v95 + 664);
                      v502 = v96 + 664;
                      v503 = *(v96 + 97);
                      if (*(v95 + 776) == 1)
                      {
                        if (v503 == 1)
                        {
                          v504 = *(v96 + 680);
                          *v501 = *v502;
                          *(v95 + 680) = v504;
                          v505 = *(v96 + 696);
                          v506 = *(v96 + 712);
                          v507 = *(v96 + 744);
                          *(v95 + 728) = *(v96 + 728);
                          *(v95 + 744) = v507;
                          *(v95 + 696) = v505;
                          *(v95 + 712) = v506;
                          v508 = *(v96 + 760);
                          v509 = *(v96 + 776);
                          v510 = *(v96 + 792);
                          *(v95 + 808) = v96[808];
                          *(v95 + 776) = v509;
                          *(v95 + 792) = v510;
                          *(v95 + 760) = v508;
                        }

                        else
                        {
                          v518 = *v502;
                          *(v95 + 672) = v96[672];
                          *v501 = v518;
                          v519 = *(v96 + 85);
                          *(v95 + 688) = v96[688];
                          *(v95 + 680) = v519;
                          *(v95 + 689) = v96[689];
                          *(v95 + 690) = v96[690];
                          *(v95 + 691) = v96[691];
                          *(v95 + 692) = v96[692];
                          *(v95 + 696) = *(v96 + 87);
                          *(v95 + 704) = *(v96 + 88);
                          *(v95 + 712) = *(v96 + 89);
                          *(v95 + 720) = *(v96 + 90);
                          *(v95 + 728) = *(v96 + 91);
                          *(v95 + 736) = *(v96 + 92);
                          *(v95 + 744) = v96[744];
                          *(v95 + 745) = v96[745];
                          *(v95 + 752) = *(v96 + 94);
                          *(v95 + 760) = *(v96 + 95);
                          *(v95 + 768) = v96[768];
                          *(v95 + 776) = *(v96 + 97);
                          v520 = *(v96 + 49);
                          *(v95 + 800) = *(v96 + 100);
                          *(v95 + 784) = v520;
                          *(v95 + 808) = v96[808];
                        }
                      }

                      else if (v503 == 1)
                      {
                        outlined destroy of AccessibilityTextLayoutProperties(v95 + 664);
                        v511 = *(v96 + 680);
                        *v501 = *v502;
                        *(v95 + 680) = v511;
                        v512 = *(v96 + 744);
                        v514 = *(v96 + 696);
                        v513 = *(v96 + 712);
                        *(v95 + 728) = *(v96 + 728);
                        *(v95 + 744) = v512;
                        *(v95 + 696) = v514;
                        *(v95 + 712) = v513;
                        v516 = *(v96 + 776);
                        v515 = *(v96 + 792);
                        v517 = *(v96 + 760);
                        *(v95 + 808) = v96[808];
                        *(v95 + 776) = v516;
                        *(v95 + 792) = v515;
                        *(v95 + 760) = v517;
                      }

                      else
                      {
                        v521 = *v502;
                        *(v95 + 672) = v96[672];
                        *v501 = v521;
                        v522 = *(v96 + 85);
                        *(v95 + 688) = v96[688];
                        *(v95 + 680) = v522;
                        *(v95 + 689) = v96[689];
                        *(v95 + 690) = v96[690];
                        *(v95 + 691) = v96[691];
                        *(v95 + 692) = v96[692];
                        *(v95 + 696) = *(v96 + 87);
                        *(v95 + 704) = *(v96 + 88);
                        *(v95 + 712) = *(v96 + 89);
                        *(v95 + 720) = *(v96 + 90);
                        *(v95 + 728) = *(v96 + 91);
                        *(v95 + 736) = *(v96 + 92);
                        *(v95 + 744) = v96[744];
                        *(v95 + 745) = v96[745];
                        *(v95 + 752) = *(v96 + 94);
                        *(v95 + 760) = *(v96 + 95);
                        *(v95 + 768) = v96[768];
                        *(v95 + 776) = *(v96 + 97);

                        v523 = *(v96 + 49);
                        *(v95 + 800) = *(v96 + 100);
                        *(v95 + 784) = v523;
                        *(v95 + 808) = v96[808];
                      }

                      *(v95 + 816) = *(v96 + 102);

                      *(v95 + 824) = *(v96 + 103);

                      *(v95 + 832) = *(v96 + 104);

                      goto LABEL_309;
                    }

                    *(v95 + 624) = v468;
                    *(v95 + 632) = *(v96 + 79);
                    (**(v468 - 8))(v95 + 600, (v96 + 600));
                  }

                  else
                  {
                    v494 = *v466;
                    v495 = *(v96 + 616);
                    *(v95 + 632) = *(v96 + 79);
                    *v465 = v494;
                    *(v95 + 616) = v495;
                  }

                  *(v95 + 640) = *(v96 + 80);

                  goto LABEL_301;
                }

                outlined destroy of PlatformItemList.Item.Accessibility(v95 + 536);
LABEL_280:
                memcpy((v95 + 536), v96 + 536, 0x130uLL);
                goto LABEL_309;
              }

              if (!v463)
              {
                goto LABEL_280;
              }

              *(v95 + 536) = *(v96 + 67);
              *(v95 + 544) = *(v96 + 68);
              *(v95 + 552) = v96[552];
              *(v95 + 560) = *(v96 + 70);
              *(v95 + 568) = v96[568];
              v471 = *(v96 + 36);
              *(v95 + 592) = v96[592];
              *(v95 + 576) = v471;
              v472 = (v95 + 600);
              v473 = (v96 + 600);
              v474 = *(v96 + 78);

              if (v474)
              {
                if (v474 == 1)
                {
                  v475 = *v473;
                  v476 = *(v96 + 632);
                  *(v95 + 616) = *(v96 + 616);
                  *(v95 + 632) = v476;
                  *v472 = v475;
LABEL_289:
                  v481 = *(v96 + 81);
                  *(v95 + 656) = v96[656];
                  *(v95 + 648) = v481;
                  v482 = (v95 + 664);
                  v483 = v96 + 664;
                  if (*(v96 + 97) == 1)
                  {
                    v484 = *(v96 + 680);
                    *v482 = *v483;
                    *(v95 + 680) = v484;
                    v485 = *(v96 + 696);
                    v486 = *(v96 + 712);
                    v487 = *(v96 + 744);
                    *(v95 + 728) = *(v96 + 728);
                    *(v95 + 744) = v487;
                    *(v95 + 696) = v485;
                    *(v95 + 712) = v486;
                    v488 = *(v96 + 760);
                    v489 = *(v96 + 776);
                    v490 = *(v96 + 792);
                    *(v95 + 808) = v96[808];
                    *(v95 + 776) = v489;
                    *(v95 + 792) = v490;
                    *(v95 + 760) = v488;
                  }

                  else
                  {
                    v491 = *v483;
                    *(v95 + 672) = v96[672];
                    *v482 = v491;
                    v492 = *(v96 + 85);
                    *(v95 + 688) = v96[688];
                    *(v95 + 680) = v492;
                    *(v95 + 689) = v96[689];
                    *(v95 + 690) = v96[690];
                    *(v95 + 691) = v96[691];
                    *(v95 + 692) = v96[692];
                    *(v95 + 696) = *(v96 + 87);
                    *(v95 + 704) = *(v96 + 88);
                    *(v95 + 712) = *(v96 + 89);
                    *(v95 + 720) = *(v96 + 90);
                    *(v95 + 728) = *(v96 + 91);
                    *(v95 + 736) = *(v96 + 92);
                    *(v95 + 744) = v96[744];
                    *(v95 + 745) = v96[745];
                    *(v95 + 752) = *(v96 + 94);
                    *(v95 + 760) = *(v96 + 95);
                    *(v95 + 768) = v96[768];
                    *(v95 + 776) = *(v96 + 97);
                    v493 = *(v96 + 49);
                    *(v95 + 800) = *(v96 + 100);
                    *(v95 + 784) = v493;
                    *(v95 + 808) = v96[808];
                  }

                  *(v95 + 816) = *(v96 + 102);
                  *(v95 + 824) = *(v96 + 103);
                  *(v95 + 832) = *(v96 + 104);

LABEL_309:
                  v524 = (v95 + 840);
                  v525 = (v96 + 840);
                  v526 = *(v95 + 864);
                  v527 = *(v96 + 108);
                  if (v526 == 1)
                  {
                    if (v527)
                    {
                      if (v527 == 1)
                      {
                        v528 = *v525;
                        v529 = *(v96 + 856);
                        v530 = *(v96 + 872);
                        *(v95 + 888) = *(v96 + 111);
                        *(v95 + 856) = v529;
                        *(v95 + 872) = v530;
                        *v524 = v528;
LABEL_315:
                        a1 = v633;
                        goto LABEL_334;
                      }

                      *(v95 + 864) = v527;
                      *(v95 + 872) = *(v96 + 109);
                      (**(v527 - 8))(v95 + 840, (v96 + 840));
                    }

                    else
                    {
                      v534 = *v525;
                      v535 = *(v96 + 856);
                      *(v95 + 872) = *(v96 + 109);
                      *v524 = v534;
                      *(v95 + 856) = v535;
                    }

                    v536 = *(v96 + 110);
                    a1 = v633;
                    if (!v536)
                    {
                      goto LABEL_333;
                    }
                  }

                  else
                  {
                    if (v527 == 1)
                    {
                      outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior(v95 + 840);
                      v532 = *(v96 + 856);
                      v531 = *(v96 + 872);
                      v533 = *v525;
                      *(v95 + 888) = *(v96 + 111);
                      *(v95 + 856) = v532;
                      *(v95 + 872) = v531;
                      *v524 = v533;
                      goto LABEL_315;
                    }

                    if (v526)
                    {
                      if (v527)
                      {
                        __swift_assign_boxed_opaque_existential_1((v95 + 840), v96 + 105);
                      }

                      else
                      {
                        outlined destroy of AnyNavigationLinkPresentedValue(v95 + 840);
                        v537 = *(v96 + 109);
                        v538 = *(v96 + 856);
                        *v524 = *v525;
                        *(v95 + 856) = v538;
                        *(v95 + 872) = v537;
                      }
                    }

                    else if (v527)
                    {
                      *(v95 + 864) = v527;
                      *(v95 + 872) = *(v96 + 109);
                      (**(v527 - 8))(v95 + 840, (v96 + 840));
                    }

                    else
                    {
                      v539 = *v525;
                      v540 = *(v96 + 856);
                      *(v95 + 872) = *(v96 + 109);
                      *v524 = v539;
                      *(v95 + 856) = v540;
                    }

                    v536 = *(v96 + 110);
                    a1 = v633;
                    if (*(v95 + 880))
                    {
                      if (v536)
                      {
                        v541 = *(v96 + 111);
                        *(v95 + 880) = v536;
                        *(v95 + 888) = v541;

                        goto LABEL_334;
                      }

                      goto LABEL_333;
                    }

                    if (!v536)
                    {
LABEL_333:
                      *(v95 + 880) = *(v96 + 55);
LABEL_334:
                      v543 = *(v95 + 896);
                      v544 = *(v96 + 112);
                      *(v95 + 896) = v544;
                      v545 = v544;

                      *(v95 + 904) = *(v96 + 113);
                      *(v95 + 912) = *(v96 + 114);

                      *(v95 + 920) = *(v96 + 115);
                      *(v95 + 928) = *(v96 + 116);

                      *(v95 + 936) = *(v96 + 117);

                      *(v95 + 944) = *(v96 + 118);

                      *(v95 + 952) = v96[952];
                      *(v95 + 953) = v96[953];
                      *(v95 + 954) = v96[954];
                      v546 = *(v97 + 112);
                      v547 = (v95 + v546);
                      v548 = &v96[v546];
                      v549 = type metadata accessor for CommandOperation(0);
                      v550 = *(v549 - 8);
                      v551 = *(v550 + 48);
                      v624 = v547;
                      v552 = v551(v547, 1, v549);
                      v553 = v551(v548, 1, v549);
                      if (v552)
                      {
                        if (!v553)
                        {
                          *v547 = *v548;
                          v559 = *(v549 + 20);
                          v560 = &v547[v559];
                          v561 = &v548[v559];
                          v563 = *&v548[v559];
                          v562 = *&v548[v559 + 8];
                          v564 = v548[v559 + 16];
                          outlined copy of Text.Storage(v563, v562, v564);
                          *v560 = v563;
                          *(v560 + 1) = v562;
                          v560[16] = v564;
                          *(v560 + 3) = *(v561 + 3);
                          v565 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                          v566 = type metadata accessor for UUID();
                          __dstg = *(*(v566 - 8) + 16);

                          __dstg(&v560[v565], &v561[v565], v566);
                          v567 = *(v549 + 24);
                          v568 = &v624[v567];
                          v569 = &v548[v567];
                          if (*v569)
                          {
                            v570 = *(v569 + 1);
                            *v568 = *v569;
                            *(v568 + 1) = v570;
                          }

                          else
                          {
                            *v568 = *v569;
                          }

                          a1 = v633;
                          v558 = v627;
                          a2 = v630;
                          (*(v550 + 56))(v624, 0, 1, v549);
                          goto LABEL_347;
                        }

                        type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                        v555 = *(*(v554 - 8) + 64);
                        v556 = v547;
                      }

                      else
                      {
                        if (!v553)
                        {
                          v619 = v548;
                          *v547 = *v548;
                          v571 = *(v549 + 20);
                          v572 = &v547[v571];
                          v573 = &v548[v571];
                          v575 = *&v548[v571];
                          v574 = *&v548[v571 + 8];
                          v576 = v548[v571 + 16];
                          outlined copy of Text.Storage(*v573, *(v573 + 1), v573[16]);
                          v577 = *v572;
                          v578 = *(v572 + 1);
                          v579 = v572[16];
                          *v572 = v575;
                          *(v572 + 1) = v574;
                          v572[16] = v576;
                          outlined consume of Text.Storage(v577, v578, v579);
                          *(v572 + 3) = *(v573 + 3);

                          v580 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                          v581 = type metadata accessor for UUID();
                          (*(*(v581 - 8) + 24))(&v572[v580], &v573[v580], v581);
                          v582 = *(v549 + 24);
                          v583 = &v547[v582];
                          v584 = &v619[v582];
                          v585 = *&v547[v582];
                          v586 = *&v619[v582];
                          if (v585)
                          {
                            v558 = v627;
                            a2 = v630;
                            v5 = v636;
                            if (v586)
                            {
                              v587 = *(v584 + 1);
                              *v583 = v586;
                              *(v583 + 1) = v587;

LABEL_348:
                              *(v95 + v558[29]) = v96[v558[29]];
                              *(v95 + v558[30]) = v96[v558[30]];
                              *(v95 + v558[31]) = v96[v558[31]];
                              *(v95 + v558[32]) = v96[v558[32]];
                              *(v95 + v558[33]) = v96[v558[33]];
                              *(v95 + v558[34]) = *&v96[v558[34]];

                              goto LABEL_349;
                            }
                          }

                          else
                          {
                            v558 = v627;
                            a2 = v630;
                            v5 = v636;
                            if (v586)
                            {
                              v588 = *(v584 + 1);
                              *v583 = v586;
                              *(v583 + 1) = v588;

                              goto LABEL_348;
                            }
                          }

                          *v583 = *v584;
                          goto LABEL_348;
                        }

                        outlined destroy of CommandOperation(v547, type metadata accessor for CommandOperation);
                        type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                        v555 = *(*(v557 - 8) + 64);
                        v556 = v547;
                      }

                      memcpy(v556, v548, v555);
                      v558 = v627;
                      a2 = v630;
LABEL_347:
                      v5 = v636;
                      goto LABEL_348;
                    }
                  }

                  v542 = *(v96 + 111);
                  *(v95 + 880) = v536;
                  *(v95 + 888) = v542;

                  goto LABEL_334;
                }

                *(v95 + 624) = v474;
                *(v95 + 632) = *(v96 + 79);
                (**(v474 - 8))(v95 + 600, (v96 + 600), v474);
              }

              else
              {
                v479 = *v473;
                v480 = *(v96 + 616);
                *(v95 + 632) = *(v96 + 79);
                *v472 = v479;
                *(v95 + 616) = v480;
              }

              *(v95 + 640) = *(v96 + 80);

              goto LABEL_289;
            }
          }

          else if (v454)
          {
LABEL_258:
            v459 = *(v96 + 57);
            *(v95 + 448) = v454;
            *(v95 + 456) = v459;

            goto LABEL_261;
          }

LABEL_260:
          *(v95 + 448) = *(v96 + 28);
          goto LABEL_261;
        }

        if (!v387)
        {
          outlined destroy of Image.NamedResolved(v95 + 256);
          v395 = *(v96 + 17);
          v394 = *(v96 + 18);
          *(v95 + 256) = *(v96 + 16);
          *(v95 + 272) = v395;
          *(v95 + 288) = v394;
          goto LABEL_220;
        }

        *(v95 + 256) = *(v96 + 32);
        *(v95 + 264) = *(v96 + 33);

        v388 = *(v95 + 272);
        v389 = *(v96 + 34);
        if (v388 >= 2)
        {
          if (v389 >= 2)
          {
            *(v95 + 272) = v389;
            v398 = v389;

            goto LABEL_219;
          }

          v389 = *(v96 + 34);
        }

        else if (v389 >= 2)
        {
          *(v95 + 272) = v389;
          v390 = v389;
LABEL_219:
          v399 = *(v96 + 70);
          *(v95 + 284) = v96[284];
          *(v95 + 280) = v399;
          *(v95 + 285) = v96[285];
          *(v95 + 286) = v96[286];
          *(v95 + 288) = *(v96 + 36);

          *(v95 + 296) = *(v96 + 37);

          goto LABEL_220;
        }

        *(v95 + 272) = v389;
        goto LABEL_219;
      }

      outlined destroy of PlatformItemCollection((v73 + 16));
    }

    v87 = v74[24];
    *(v73 + 2) = *(v74 + 2);
    v73[24] = v87;
    goto LABEL_61;
  }

  if (!v9)
  {
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    v10 = *(a2 + 5);

    if (v10)
    {
      v11 = *(a2 + 2);
      v12 = *(a2 + 3);
      v13 = a2[32];
      outlined copy of Text.Storage(v11, v12, v13);
      *(a1 + 2) = v11;
      *(a1 + 3) = v12;
      a1[32] = v13;
      *(a1 + 5) = *(a2 + 5);
    }

    else
    {
      v24 = *(a2 + 2);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 2) = v24;
    }

    v25 = *(a2 + 6);
    if (v25 != 1)
    {
    }

    *(a1 + 6) = v25;
    a1[56] = a2[56];
    *(a1 + 8) = *(a2 + 8);
    a1[72] = a2[72];
    v26 = *(v5 + 24);
    v27 = &a1[v26];
    v28 = &a2[v26];
    v29 = a2[v26 + 8];

    if (v29 == 255)
    {
      v31 = *v28;
      v27[8] = v28[8];
      *v27 = v31;
    }

    else
    {
      v30 = *v28;
      outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(*v28, v29 & 1);
      *v27 = v30;
      v27[8] = v29 & 1;
    }

    v32 = v28[24];
    v634 = v5;
    if (v32 == 254 || v32 == 255)
    {
      v33 = *(v28 + 2);
      v27[24] = v28[24];
      *(v27 + 2) = v33;
    }

    else
    {
      v34 = *(v28 + 2);
      v35 = v32 & 1;
      outlined copy of PlatformItemCollection.Storage(v34, v32 & 1);
      *(v27 + 2) = v34;
      v27[24] = v35;
    }

    swift_unknownObjectWeakCopyInit();
    *(v27 + 5) = *(v28 + 5);
    v36 = *(v28 + 6);
    *(v27 + 6) = v36;
    v37 = *(type metadata accessor for ToolbarStorage.NavigationProperties(0) + 32);
    v38 = &v27[v37];
    v39 = &v28[v37];
    v40 = type metadata accessor for PlatformItemList.Item(0);
    v41 = *(v40 - 8);
    v42 = v41[6];
    v43 = v36;
    if (v42(v39, 1, v40))
    {
      type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(v38, v39, *(*(v44 - 8) + 64));
LABEL_123:
      *&a1[*(v634 + 28)] = *&a2[*(v634 + 28)];
      (*(v6 + 56))(a1, 0, 1);
      return a1;
    }

    v614 = v41;
    v620 = v6;
    v631 = a1;
    v45 = *v39;
    *v38 = *v39;
    v46 = *(v39 + 1);
    *(v38 + 1) = v46;
    *(v38 + 2) = *(v39 + 2);
    *(v38 + 3) = *(v39 + 3);
    v38[32] = v39[32];
    *(v38 + 5) = *(v39 + 5);
    *(v38 + 6) = *(v39 + 6);
    v38[56] = v39[56];
    v47 = *(v39 + 24);
    v48 = v45;
    v49 = v46;

    if (v47 >> 1 == 4294967294)
    {
      v50 = *(v39 + 4);
      v51 = *(v39 + 5);
      v52 = *(v39 + 7);
      *(v38 + 6) = *(v39 + 6);
      *(v38 + 7) = v52;
      *(v38 + 4) = v50;
      *(v38 + 5) = v51;
      v53 = *(v39 + 8);
      v54 = *(v39 + 9);
      v55 = *(v39 + 11);
      *(v38 + 10) = *(v39 + 10);
      *(v38 + 11) = v55;
      *(v38 + 8) = v53;
      *(v38 + 9) = v54;
      v56 = *(v39 + 12);
      v57 = *(v39 + 13);
      v58 = *(v39 + 14);
      *(v38 + 235) = *(v39 + 235);
      *(v38 + 13) = v57;
      *(v38 + 14) = v58;
      *(v38 + 12) = v56;
      if (*(v39 + 33))
      {
LABEL_27:
        *(v38 + 32) = *(v39 + 32);
        *(v38 + 33) = *(v39 + 33);
        v59 = *(v39 + 34);

        if (v59 >= 2)
        {
          v60 = v59;
        }

        *(v38 + 34) = v59;
        v61 = *(v39 + 70);
        v38[284] = v39[284];
        *(v38 + 70) = v61;
        v38[285] = v39[285];
        v38[286] = v39[286];
        *(v38 + 36) = *(v39 + 36);
        *(v38 + 37) = *(v39 + 37);

LABEL_79:
        v152 = *(v39 + 42);
        v626 = v40;
        v628 = a2;
        if (v152 >> 2 == 0xFFFFFFFF)
        {
          v153 = *(v39 + 19);
          v154 = *(v39 + 21);
          *(v38 + 20) = *(v39 + 20);
          *(v38 + 21) = v154;
          *(v38 + 19) = v153;
          v155 = *(v39 + 22);
          v156 = *(v39 + 23);
          v157 = *(v39 + 24);
          *(v38 + 50) = *(v39 + 50);
          *(v38 + 23) = v156;
          *(v38 + 24) = v157;
          *(v38 + 22) = v155;
        }

        else
        {
          v158 = *(v39 + 38);
          v159 = *(v39 + 39);
          v161 = *(v39 + 40);
          v160 = *(v39 + 41);
          v162 = *(v39 + 43);
          v163 = *(v39 + 44);
          v164 = *(v39 + 45);
          v589 = *(v39 + 46);
          v590 = *(v39 + 47);
          v593 = *(v39 + 48);
          v599 = *(v39 + 49);
          __dstb = *(v39 + 50);
          outlined copy of PlatformItemList.Item.SystemItem(v158, v159, v161, v160, v152, v162, v163, v164, v589, v590, v593, v599, __dstb);
          *(v38 + 38) = v158;
          *(v38 + 39) = v159;
          *(v38 + 40) = v161;
          *(v38 + 41) = v160;
          *(v38 + 42) = v152;
          *(v38 + 43) = v162;
          *(v38 + 44) = v163;
          *(v38 + 45) = v164;
          *(v38 + 46) = v589;
          *(v38 + 47) = v590;
          *(v38 + 48) = v593;
          *(v38 + 49) = v599;
          *(v38 + 50) = __dstb;
        }

        if (*(v39 + 52) == 1)
        {
          *(v38 + 408) = *(v39 + 408);
          v165 = *(v39 + 424);
          v166 = *(v39 + 440);
          v167 = *(v39 + 456);
          v38[472] = v39[472];
          *(v38 + 440) = v166;
          *(v38 + 456) = v167;
          *(v38 + 424) = v165;
          goto LABEL_94;
        }

        v38[408] = v39[408];
        v38[409] = v39[409];
        v38[410] = v39[410];
        v38[411] = v39[411];
        v38[412] = v39[412];
        v168 = *(v39 + 52);
        if (v168)
        {
          v169 = *(v39 + 53);
          *(v38 + 52) = v168;
          *(v38 + 53) = v169;

          v170 = *(v39 + 54);
          if (v170)
          {
            goto LABEL_86;
          }
        }

        else
        {
          *(v38 + 26) = *(v39 + 26);
          v170 = *(v39 + 54);
          if (v170)
          {
LABEL_86:
            v171 = *(v39 + 55);
            *(v38 + 54) = v170;
            *(v38 + 55) = v171;

            v172 = *(v39 + 56);
            if (v172)
            {
LABEL_87:
              v173 = *(v39 + 57);
              *(v38 + 56) = v172;
              *(v38 + 57) = v173;

LABEL_93:
              *(v38 + 58) = *(v39 + 58);
              v38[472] = v39[472];
LABEL_94:
              *(v38 + 60) = *(v39 + 60);
              *(v38 + 61) = *(v39 + 61);
              *(v38 + 62) = *(v39 + 62);
              v38[504] = v39[504];
              v176 = *(v39 + 64);

              if (v176)
              {
                v177 = *(v39 + 65);
                *(v38 + 64) = v176;
                *(v38 + 65) = v177;
              }

              else
              {
                *(v38 + 32) = *(v39 + 32);
              }

              v38[528] = v39[528];
              if (!*(v39 + 102))
              {
                memcpy(v38 + 536, v39 + 536, 0x130uLL);
                goto LABEL_109;
              }

              *(v38 + 67) = *(v39 + 67);
              *(v38 + 68) = *(v39 + 68);
              v38[552] = v39[552];
              *(v38 + 70) = *(v39 + 70);
              v38[568] = v39[568];
              v178 = *(v39 + 36);
              v38[592] = v39[592];
              *(v38 + 36) = v178;
              v179 = v38 + 600;
              v180 = (v39 + 600);
              v181 = *(v39 + 78);

              if (v181)
              {
                if (v181 == 1)
                {
                  v182 = *v180;
                  v183 = *(v39 + 632);
                  *(v38 + 616) = *(v39 + 616);
                  *(v38 + 632) = v183;
                  *v179 = v182;
LABEL_105:
                  v186 = *(v39 + 81);
                  v38[656] = v39[656];
                  *(v38 + 81) = v186;
                  v187 = v38 + 664;
                  v188 = v39 + 664;
                  if (*(v39 + 97) == 1)
                  {
                    v189 = *(v39 + 680);
                    *v187 = *v188;
                    *(v38 + 680) = v189;
                    v190 = *(v39 + 696);
                    v191 = *(v39 + 712);
                    v192 = *(v39 + 744);
                    *(v38 + 728) = *(v39 + 728);
                    *(v38 + 744) = v192;
                    *(v38 + 696) = v190;
                    *(v38 + 712) = v191;
                    v193 = *(v39 + 760);
                    v194 = *(v39 + 776);
                    v195 = *(v39 + 792);
                    v38[808] = v39[808];
                    *(v38 + 776) = v194;
                    *(v38 + 792) = v195;
                    *(v38 + 760) = v193;
                  }

                  else
                  {
                    v196 = *v188;
                    v38[672] = v39[672];
                    *v187 = v196;
                    v197 = *(v39 + 85);
                    v38[688] = v39[688];
                    *(v38 + 85) = v197;
                    v38[689] = v39[689];
                    v38[690] = v39[690];
                    v38[691] = v39[691];
                    v38[692] = v39[692];
                    *(v38 + 87) = *(v39 + 87);
                    *(v38 + 88) = *(v39 + 88);
                    *(v38 + 89) = *(v39 + 89);
                    *(v38 + 90) = *(v39 + 90);
                    *(v38 + 91) = *(v39 + 91);
                    *(v38 + 92) = *(v39 + 92);
                    v38[744] = v39[744];
                    v38[745] = v39[745];
                    *(v38 + 94) = *(v39 + 94);
                    *(v38 + 95) = *(v39 + 95);
                    v38[768] = v39[768];
                    *(v38 + 97) = *(v39 + 97);
                    v198 = *(v39 + 49);
                    *(v38 + 100) = *(v39 + 100);
                    *(v38 + 49) = v198;
                    v38[808] = v39[808];
                  }

                  *(v38 + 102) = *(v39 + 102);
                  *(v38 + 103) = *(v39 + 103);
                  *(v38 + 104) = *(v39 + 104);

LABEL_109:
                  v199 = v38 + 840;
                  v200 = (v39 + 840);
                  v201 = *(v39 + 108);
                  if (v201)
                  {
                    if (v201 == 1)
                    {
                      v202 = *v200;
                      v203 = *(v39 + 856);
                      v204 = *(v39 + 872);
                      *(v38 + 111) = *(v39 + 111);
                      *(v38 + 856) = v203;
                      *(v38 + 872) = v204;
                      *v199 = v202;
LABEL_116:
                      v209 = *(v39 + 112);
                      *(v38 + 112) = v209;
                      *(v38 + 113) = *(v39 + 113);
                      *(v38 + 114) = *(v39 + 114);
                      *(v38 + 115) = *(v39 + 115);
                      *(v38 + 116) = *(v39 + 116);
                      *(v38 + 117) = *(v39 + 117);
                      *(v38 + 118) = *(v39 + 118);
                      v38[952] = v39[952];
                      v38[953] = v39[953];
                      v38[954] = v39[954];
                      v210 = v626[28];
                      __dst = &v38[v210];
                      v211 = &v39[v210];
                      v212 = type metadata accessor for CommandOperation(0);
                      v594 = *(v212 - 8);
                      v600 = *(v594 + 48);
                      v213 = v209;
                      v214 = v211;

                      if (v600(v211, 1, v212))
                      {
                        type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                        memcpy(__dst, v211, *(*(v215 - 8) + 64));
                        a1 = v631;
                        v216 = v626;
                        a2 = v628;
                        v217 = v614;
                        v6 = v620;
                      }

                      else
                      {
                        *__dst = *v211;
                        v218 = *(v212 + 20);
                        v219 = v212;
                        v220 = &__dst[v218];
                        v221 = &v214[v218];
                        v601 = v214;
                        v222 = *&v214[v218];
                        v223 = *(v221 + 1);
                        v224 = v221[16];
                        outlined copy of Text.Storage(v222, v223, v224);
                        *v220 = v222;
                        *(v220 + 1) = v223;
                        v220[16] = v224;
                        *(v220 + 3) = *(v221 + 3);
                        v225 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                        v226 = type metadata accessor for UUID();
                        v591 = *(*(v226 - 8) + 16);

                        v591(&v220[v225], &v221[v225], v226);
                        v227 = *(v219 + 24);
                        v228 = &__dst[v227];
                        v229 = &v601[v227];
                        if (*v229)
                        {
                          v230 = *(v229 + 1);
                          *v228 = *v229;
                          *(v228 + 1) = v230;
                        }

                        else
                        {
                          *v228 = *v229;
                        }

                        a1 = v631;
                        v216 = v626;
                        a2 = v628;
                        v217 = v614;
                        v6 = v620;
                        (*(v594 + 56))(__dst, 0, 1, v219);
                      }

                      v38[v216[29]] = v39[v216[29]];
                      v38[v216[30]] = v39[v216[30]];
                      v38[v216[31]] = v39[v216[31]];
                      v38[v216[32]] = v39[v216[32]];
                      v38[v216[33]] = v39[v216[33]];
                      *&v38[v216[34]] = *&v39[v216[34]];
                      v231 = v217[7];

                      v231(v38, 0, 1, v216);
                      goto LABEL_123;
                    }

                    *(v38 + 108) = v201;
                    *(v38 + 109) = *(v39 + 109);
                    (**(v201 - 8))(v199, v200);
                    v207 = *(v39 + 110);
                    if (!v207)
                    {
LABEL_115:
                      *(v38 + 55) = *(v39 + 55);
                      goto LABEL_116;
                    }
                  }

                  else
                  {
                    v205 = *v200;
                    v206 = *(v39 + 856);
                    *(v38 + 109) = *(v39 + 109);
                    *v199 = v205;
                    *(v38 + 856) = v206;
                    v207 = *(v39 + 110);
                    if (!v207)
                    {
                      goto LABEL_115;
                    }
                  }

                  v208 = *(v39 + 111);
                  *(v38 + 110) = v207;
                  *(v38 + 111) = v208;

                  goto LABEL_116;
                }

                *(v38 + 78) = v181;
                *(v38 + 79) = *(v39 + 79);
                (**(v181 - 8))((v38 + 600), (v39 + 600), v181);
              }

              else
              {
                v184 = *v180;
                v185 = *(v39 + 616);
                *(v38 + 79) = *(v39 + 79);
                *v179 = v184;
                *(v38 + 616) = v185;
              }

              *(v38 + 80) = *(v39 + 80);

              goto LABEL_105;
            }

LABEL_92:
            *(v38 + 28) = *(v39 + 28);
            goto LABEL_93;
          }
        }

        *(v38 + 27) = *(v39 + 27);
        v172 = *(v39 + 56);
        if (v172)
        {
          goto LABEL_87;
        }

        goto LABEL_92;
      }
    }

    else
    {
      v65 = v39[72];
      if (v65 == 255)
      {
        v137 = *(v39 + 8);
        v38[72] = v39[72];
        *(v38 + 8) = v137;
      }

      else
      {
        v66 = *(v39 + 8);
        outlined copy of GraphicsImage.Contents(v66, v39[72]);
        *(v38 + 8) = v66;
        v38[72] = v65;
      }

      *(v38 + 10) = *(v39 + 10);
      *(v38 + 88) = *(v39 + 88);
      v38[104] = v39[104];
      v138 = *(v39 + 108);
      *(v38 + 121) = *(v39 + 121);
      *(v38 + 108) = v138;
      v139 = *(v39 + 136);
      v140 = *(v39 + 152);
      v38[168] = v39[168];
      *(v38 + 152) = v140;
      *(v38 + 136) = v139;
      v38[169] = v39[169];
      v38[170] = v39[170];
      v38[171] = v39[171];
      v141 = *(v39 + 24);
      if (v141 >> 1 == 0xFFFFFFFF)
      {
        v142 = *(v39 + 12);
        *(v38 + 11) = *(v39 + 11);
        *(v38 + 12) = v142;
      }

      else
      {
        v143 = *(v39 + 22);
        v144 = *(v39 + 23);
        v145 = a2;
        v146 = *(v39 + 25);
        outlined copy of AccessibilityImageLabel(v143, v144, *(v39 + 24), v146);
        *(v38 + 22) = v143;
        *(v38 + 23) = v144;
        *(v38 + 24) = v141;
        *(v38 + 25) = v146;
        a2 = v145;
      }

      *(v38 + 26) = *(v39 + 26);
      *(v38 + 27) = *(v39 + 27);
      v38[224] = v39[224];
      v38[225] = v39[225];
      v147 = *(v39 + 57);
      v38[232] = v39[232];
      *(v38 + 57) = v147;
      v148 = *(v39 + 30);
      *(v38 + 30) = v148;
      *(v38 + 124) = *(v39 + 124);
      v38[250] = v39[250];
      swift_unknownObjectRetain();

      v149 = v148;
      if (*(v39 + 33))
      {
        goto LABEL_27;
      }
    }

    v150 = *(v39 + 16);
    v151 = *(v39 + 18);
    *(v38 + 17) = *(v39 + 17);
    *(v38 + 18) = v151;
    *(v38 + 16) = v150;
    goto LABEL_79;
  }

LABEL_7:
  type metadata accessor for NavigationItemDescription?(0);
  v15 = *(*(v14 - 8) + 64);

  return memcpy(a1, a2, v15);
}

_OWORD *initializeWithTake for DocumentToolbarInputContentWriter(_OWORD *a1, _OWORD *a2, double a3)
{
  v5 = type metadata accessor for NavigationItemDescription(0);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    type metadata accessor for NavigationItemDescription?(0);
    v8 = *(*(v7 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;
    v11 = a2[3];
    a1[2] = a2[2];
    a1[3] = v11;
    *(a1 + 57) = *(a2 + 57);
    v12 = *(v5 + 24);
    v13 = a1 + v12;
    v14 = a2 + v12;
    *v13 = *(a2 + v12);
    v13[8] = *(a2 + v12 + 8);
    *(v13 + 2) = *(a2 + v12 + 16);
    v13[24] = *(a2 + v12 + 24);
    swift_unknownObjectWeakTakeInit();
    v15 = *(v14 + 6);
    *(v13 + 5) = *(v14 + 5);
    *(v13 + 6) = v15;
    v16 = *(type metadata accessor for ToolbarStorage.NavigationProperties(0) + 32);
    v17 = &v13[v16];
    v18 = &v14[v16];
    v19 = type metadata accessor for PlatformItemList.Item(0);
    v20 = *(v19 - 1);
    if ((*(v20 + 48))(v18, 1, v19))
    {
      type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(v17, v18, *(*(v21 - 8) + 64));
    }

    else
    {
      v46 = v20;
      v22 = *(v18 + 1);
      *v17 = *v18;
      *(v17 + 1) = v22;
      v17[32] = v18[32];
      *(v17 + 40) = *(v18 + 40);
      v17[56] = v18[56];
      v23 = *(v18 + 13);
      *(v17 + 12) = *(v18 + 12);
      *(v17 + 13) = v23;
      *(v17 + 14) = *(v18 + 14);
      *(v17 + 235) = *(v18 + 235);
      v24 = *(v18 + 9);
      *(v17 + 8) = *(v18 + 8);
      *(v17 + 9) = v24;
      v25 = *(v18 + 11);
      *(v17 + 10) = *(v18 + 10);
      *(v17 + 11) = v25;
      v26 = *(v18 + 5);
      *(v17 + 4) = *(v18 + 4);
      *(v17 + 5) = v26;
      v27 = *(v18 + 7);
      *(v17 + 6) = *(v18 + 6);
      *(v17 + 7) = v27;
      v28 = *(v18 + 17);
      *(v17 + 16) = *(v18 + 16);
      *(v17 + 17) = v28;
      v29 = *(v18 + 23);
      *(v17 + 22) = *(v18 + 22);
      *(v17 + 23) = v29;
      *(v17 + 24) = *(v18 + 24);
      *(v17 + 50) = *(v18 + 50);
      v30 = *(v18 + 19);
      *(v17 + 18) = *(v18 + 18);
      *(v17 + 19) = v30;
      v31 = *(v18 + 21);
      *(v17 + 20) = *(v18 + 20);
      *(v17 + 21) = v31;
      v32 = *(v18 + 456);
      *(v17 + 440) = *(v18 + 440);
      *(v17 + 456) = v32;
      v17[472] = v18[472];
      v33 = *(v18 + 424);
      *(v17 + 408) = *(v18 + 408);
      *(v17 + 424) = v33;
      *(v17 + 30) = *(v18 + 30);
      *(v17 + 489) = *(v18 + 489);
      *(v17 + 32) = *(v18 + 32);
      v17[528] = v18[528];
      memcpy(v17 + 536, v18 + 536, 0x130uLL);
      v34 = *(v18 + 856);
      *(v17 + 840) = *(v18 + 840);
      *(v17 + 856) = v34;
      *(v17 + 872) = *(v18 + 872);
      *(v17 + 111) = *(v18 + 111);
      *(v17 + 112) = *(v18 + 112);
      *(v17 + 904) = *(v18 + 904);
      *(v17 + 920) = *(v18 + 920);
      *(v17 + 117) = *(v18 + 117);
      *(v17 + 118) = *(v18 + 118);
      v17[952] = v18[952];
      *(v17 + 953) = *(v18 + 953);
      v35 = v19[28];
      __dst = &v17[v35];
      v36 = &v18[v35];
      v37 = type metadata accessor for CommandOperation(0);
      v38 = *(v37 - 8);
      if ((*(v38 + 48))(v36, 1, v37))
      {
        type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
        memcpy(__dst, v36, *(*(v39 - 8) + 64));
      }

      else
      {
        *__dst = *v36;
        v40 = *(v37 + 20);
        v44 = &__dst[v40];
        v45 = &v36[v40];
        v41 = *&v36[v40 + 16];
        *v44 = *&v36[v40];
        *(v44 + 1) = v41;
        v43 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
        v42 = type metadata accessor for UUID();
        (*(*(v42 - 8) + 32))(&v44[v43], &v45[v43], v42);
        *&__dst[*(v37 + 24)] = *&v36[*(v37 + 24)];
        (*(v38 + 56))();
      }

      v17[v19[29]] = v18[v19[29]];
      v17[v19[30]] = v18[v19[30]];
      v17[v19[31]] = v18[v19[31]];
      v17[v19[32]] = v18[v19[32]];
      v17[v19[33]] = v18[v19[33]];
      *&v17[v19[34]] = *&v18[v19[34]];
      (*(v46 + 56))(v17, 0, 1, v19);
    }

    *(a1 + *(v5 + 28)) = *(a2 + *(v5 + 28));
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }
}

char *assignWithTake for DocumentToolbarInputContentWriter(char *a1, char *a2, double a3)
{
  v5 = type metadata accessor for NavigationItemDescription(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (!v8)
  {
    if (v9)
    {
      outlined destroy of CommandOperation(a1, type metadata accessor for NavigationItemDescription);
      goto LABEL_7;
    }

    v25 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v25;

    if (*(a1 + 5))
    {
      if (*(a2 + 5))
      {
        v26 = a2[32];
        v27 = *(a1 + 2);
        v28 = *(a1 + 3);
        v29 = a1[32];
        *(a1 + 1) = *(a2 + 1);
        a1[32] = v26;
        outlined consume of Text.Storage(v27, v28, v29);
        *(a1 + 5) = *(a2 + 5);

        goto LABEL_17;
      }

      outlined destroy of Text((a1 + 16));
    }

    v48 = *(a2 + 2);
    *(a1 + 1) = *(a2 + 1);
    *(a1 + 2) = v48;
LABEL_17:
    v49 = a1 + 48;
    v50 = *(a2 + 6);
    if (*(a1 + 6) != 1)
    {
      if (v50 != 1)
      {
        *v49 = v50;

LABEL_22:
        a1[56] = a2[56];
        *(a1 + 8) = *(a2 + 8);

        a1[72] = a2[72];
        v51 = *(v5 + 24);
        v52 = &a1[v51];
        v53 = &a2[v51];
        v54 = a1[v51 + 8];
        if (v54 != 255)
        {
          v55 = v53[8];
          if (v55 != 255)
          {
            v56 = *v52;
            *v52 = *v53;
            v52[8] = v55 & 1;
            outlined consume of ResolvableCLKTextProvider.FontStorage(v56, v54 & 1);
            goto LABEL_30;
          }

          outlined destroy of ToolbarStorage.NavigationProperties.DocumentProperties(v52);
        }

        *v52 = *v53;
        v52[8] = v53[8];
LABEL_30:
        v64 = v52[24];
        if (v64 != 254)
        {
          v65 = v53[24];
          if (v65 == 254)
          {
            outlined destroy of ToolbarStorage.NavigationProperties.Actions((v52 + 16));
          }

          else if (v64 != 255)
          {
            if (v65 != 255)
            {
              v66 = *(v52 + 2);
              *(v52 + 2) = *(v53 + 2);
              v52[24] = v65 & 1;
              outlined consume of PlatformItemCollection.Storage(v66, v64 & 1);
              goto LABEL_38;
            }

            outlined destroy of PlatformItemCollection((v52 + 16));
          }
        }

        *(v52 + 2) = *(v53 + 2);
        v52[24] = v53[24];
LABEL_38:
        swift_unknownObjectWeakTakeAssign();
        v67 = *(v52 + 6);
        *(v52 + 40) = *(v53 + 40);

        v68 = *(type metadata accessor for ToolbarStorage.NavigationProperties(0) + 32);
        v69 = &v52[v68];
        v70 = &v53[v68];
        v71 = type metadata accessor for PlatformItemList.Item(0);
        v72 = *(v71 - 1);
        v73 = *(v72 + 48);
        v74 = v73(v69, 1, v71);
        v75 = v73(v70, 1, v71);
        if (v74)
        {
          if (!v75)
          {
            v227 = v5;
            v76 = *(v70 + 1);
            *v69 = *v70;
            *(v69 + 16) = v76;
            *(v69 + 32) = v70[32];
            *(v69 + 40) = *(v70 + 40);
            *(v69 + 56) = v70[56];
            v77 = *(v70 + 13);
            *(v69 + 192) = *(v70 + 12);
            *(v69 + 208) = v77;
            *(v69 + 224) = *(v70 + 14);
            *(v69 + 235) = *(v70 + 235);
            v78 = *(v70 + 9);
            *(v69 + 128) = *(v70 + 8);
            *(v69 + 144) = v78;
            v79 = *(v70 + 11);
            *(v69 + 160) = *(v70 + 10);
            *(v69 + 176) = v79;
            v80 = *(v70 + 5);
            *(v69 + 64) = *(v70 + 4);
            *(v69 + 80) = v80;
            v81 = *(v70 + 7);
            *(v69 + 96) = *(v70 + 6);
            *(v69 + 112) = v81;
            v82 = *(v70 + 17);
            *(v69 + 256) = *(v70 + 16);
            *(v69 + 272) = v82;
            v83 = *(v70 + 23);
            *(v69 + 352) = *(v70 + 22);
            *(v69 + 368) = v83;
            *(v69 + 384) = *(v70 + 24);
            *(v69 + 400) = *(v70 + 50);
            v84 = *(v70 + 19);
            *(v69 + 288) = *(v70 + 18);
            *(v69 + 304) = v84;
            v85 = *(v70 + 21);
            *(v69 + 320) = *(v70 + 20);
            *(v69 + 336) = v85;
            v86 = *(v70 + 456);
            *(v69 + 440) = *(v70 + 440);
            *(v69 + 456) = v86;
            *(v69 + 472) = v70[472];
            v87 = *(v70 + 424);
            *(v69 + 408) = *(v70 + 408);
            *(v69 + 424) = v87;
            *(v69 + 480) = *(v70 + 30);
            *(v69 + 489) = *(v70 + 489);
            *(v69 + 512) = *(v70 + 32);
            *(v69 + 528) = v70[528];
            memcpy((v69 + 536), v70 + 536, 0x130uLL);
            v88 = *(v70 + 856);
            *(v69 + 840) = *(v70 + 840);
            *(v69 + 856) = v88;
            *(v69 + 872) = *(v70 + 872);
            *(v69 + 888) = *(v70 + 111);
            *(v69 + 896) = *(v70 + 112);
            *(v69 + 904) = *(v70 + 904);
            *(v69 + 920) = *(v70 + 920);
            *(v69 + 936) = *(v70 + 117);
            *(v69 + 944) = *(v70 + 118);
            *(v69 + 952) = v70[952];
            *(v69 + 953) = *(v70 + 953);
            v89 = v71[28];
            v90 = (v69 + v89);
            v91 = &v70[v89];
            v92 = type metadata accessor for CommandOperation(0);
            v93 = *(v92 - 8);
            if ((*(v93 + 48))(v91, 1, v92))
            {
              type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
              memcpy(v90, v91, *(*(v94 - 8) + 64));
            }

            else
            {
              *v90 = *v91;
              v105 = *(v92 + 20);
              __srca = v90;
              __dstb = v71;
              v106 = &v90[v105];
              v107 = &v91[v105];
              v108 = *&v91[v105 + 16];
              *v106 = *&v91[v105];
              *(v106 + 1) = v108;
              v219 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
              v109 = type metadata accessor for UUID();
              v110 = &v106[v219];
              v71 = __dstb;
              (*(*(v109 - 8) + 32))(v110, &v107[v219], v109);
              *&__srca[*(v92 + 24)] = *&v91[*(v92 + 24)];
              (*(v93 + 56))();
            }

            v5 = v227;
            *(v69 + v71[29]) = v70[v71[29]];
            *(v69 + v71[30]) = v70[v71[30]];
            *(v69 + v71[31]) = v70[v71[31]];
            *(v69 + v71[32]) = v70[v71[32]];
            *(v69 + v71[33]) = v70[v71[33]];
            *(v69 + v71[34]) = *&v70[v71[34]];
            (*(v72 + 56))(v69, 0, 1, v71);
            goto LABEL_145;
          }

          goto LABEL_44;
        }

        if (v75)
        {
          outlined destroy of CommandOperation(v69, type metadata accessor for PlatformItemList.Item);
LABEL_44:
          type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
          memcpy(v69, v70, *(*(v95 - 8) + 64));
LABEL_145:
          *&a1[*(v5 + 28)] = *&a2[*(v5 + 28)];
          return a1;
        }

        v96 = *v69;
        *v69 = *v70;

        v97 = *(v69 + 8);
        *(v69 + 8) = *(v70 + 1);

        v98 = *(v70 + 3);
        *(v69 + 16) = *(v70 + 2);
        *(v69 + 24) = v98;

        *(v69 + 32) = v70[32];
        v99 = *(v70 + 6);
        *(v69 + 40) = *(v70 + 5);
        *(v69 + 48) = v99;

        *(v69 + 56) = v70[56];
        if (*(v69 + 192) >> 1 == 4294967294)
        {
          goto LABEL_48;
        }

        if (*(v70 + 24) >> 1 == 4294967294)
        {
          outlined destroy of Image.Resolved(v69 + 64);
LABEL_48:
          v100 = *(v70 + 13);
          *(v69 + 192) = *(v70 + 12);
          *(v69 + 208) = v100;
          *(v69 + 224) = *(v70 + 14);
          *(v69 + 235) = *(v70 + 235);
          v101 = *(v70 + 9);
          *(v69 + 128) = *(v70 + 8);
          *(v69 + 144) = v101;
          v102 = *(v70 + 11);
          *(v69 + 160) = *(v70 + 10);
          *(v69 + 176) = v102;
          v103 = *(v70 + 5);
          *(v69 + 64) = *(v70 + 4);
          *(v69 + 80) = v103;
          v104 = *(v70 + 7);
          *(v69 + 96) = *(v70 + 6);
          *(v69 + 112) = v104;
          goto LABEL_62;
        }

        v111 = *(v69 + 72);
        if (v111 != 255)
        {
          v112 = v70[72];
          if (v112 != 255)
          {
            v113 = *(v69 + 64);
            *(v69 + 64) = *(v70 + 8);
            *(v69 + 72) = v112;
            outlined consume of GraphicsImage.Contents(v113, v111);
            goto LABEL_56;
          }

          outlined destroy of GraphicsImage.Contents(v69 + 64);
        }

        *(v69 + 64) = *(v70 + 8);
        *(v69 + 72) = v70[72];
LABEL_56:
        *(v69 + 80) = *(v70 + 5);
        *(v69 + 96) = *(v70 + 12);
        *(v69 + 104) = v70[104];
        *(v69 + 108) = *(v70 + 108);
        *(v69 + 121) = *(v70 + 121);
        *(v69 + 136) = *(v70 + 136);
        *(v69 + 152) = *(v70 + 152);
        *(v69 + 168) = v70[168];
        *(v69 + 169) = v70[169];
        v114 = *(v69 + 192);
        *(v69 + 170) = *(v70 + 85);
        if (v114 >> 1 != 0xFFFFFFFF)
        {
          v115 = *(v70 + 24);
          if (v115 >> 1 != 0xFFFFFFFF)
          {
            v117 = *(v70 + 25);
            v118 = *(v69 + 176);
            v119 = *(v69 + 184);
            v120 = *(v69 + 200);
            *(v69 + 176) = *(v70 + 11);
            *(v69 + 192) = v115;
            *(v69 + 200) = v117;
            outlined consume of AccessibilityImageLabel(v118, v119, v114, v120);
            goto LABEL_61;
          }

          outlined destroy of AccessibilityImageLabel(v69 + 176);
        }

        v116 = *(v70 + 12);
        *(v69 + 176) = *(v70 + 11);
        *(v69 + 192) = v116;
LABEL_61:
        *(v69 + 208) = *(v70 + 26);
        swift_unknownObjectRelease();
        *(v69 + 216) = *(v70 + 27);

        *(v69 + 224) = v70[224];
        *(v69 + 225) = v70[225];
        *(v69 + 228) = *(v70 + 57);
        *(v69 + 232) = v70[232];
        v121 = *(v69 + 240);
        *(v69 + 240) = *(v70 + 30);

        *(v69 + 248) = *(v70 + 124);
        *(v69 + 250) = v70[250];
LABEL_62:
        if (*(v69 + 264))
        {
          v122 = *(v70 + 33);
          if (v122)
          {
            *(v69 + 256) = *(v70 + 32);
            *(v69 + 264) = v122;

            v123 = *(v69 + 272);
            v124 = *(v70 + 34);
            if (v123 >= 2)
            {
              if (v124 >= 2)
              {
                *(v69 + 272) = v124;
              }

              else
              {

                *(v69 + 272) = *(v70 + 34);
              }
            }

            else
            {
              *(v69 + 272) = v124;
            }

            *(v69 + 280) = *(v70 + 70);
            *(v69 + 284) = *(v70 + 142);
            *(v69 + 286) = v70[286];
            *(v69 + 288) = *(v70 + 36);

            *(v69 + 296) = *(v70 + 37);

LABEL_72:
            v126 = *(v69 + 336);
            if (v126 >> 2 != 0xFFFFFFFF)
            {
              v127 = *(v70 + 42);
              if (v127 >> 2 != 0xFFFFFFFF)
              {
                v131 = *(v69 + 304);
                v132 = *(v69 + 312);
                v133 = *(v69 + 320);
                v134 = *(v69 + 328);
                v135 = *(v69 + 344);
                v136 = *(v69 + 352);
                v137 = *(v69 + 360);
                v138 = *(v69 + 368);
                v139 = *(v69 + 384);
                v140 = *(v69 + 400);
                v141 = *(v70 + 20);
                *(v69 + 304) = *(v70 + 19);
                *(v69 + 320) = v141;
                *(v69 + 336) = v127;
                *(v69 + 344) = *(v70 + 344);
                *(v69 + 360) = *(v70 + 360);
                *(v69 + 376) = *(v70 + 376);
                *(v69 + 392) = *(v70 + 392);
                outlined consume of PlatformItemList.Item.SystemItem(v131, v132, v133, v134, v126, v135, v136, v137, v138, *(&v138 + 1), v139, SBYTE8(v139), v140);
LABEL_77:
                v142 = v70 + 408;
                v143 = *(v69 + 416);
                if (v143 == 1)
                {
LABEL_80:
                  v145 = *(v70 + 456);
                  *(v69 + 440) = *(v70 + 440);
                  *(v69 + 456) = v145;
                  *(v69 + 472) = v70[472];
                  v146 = *(v70 + 424);
                  *(v69 + 408) = *v142;
                  *(v69 + 424) = v146;
                  goto LABEL_103;
                }

                v144 = *(v70 + 52);
                if (v144 == 1)
                {
                  outlined destroy of PlatformItemList.Item.SelectionBehavior(v69 + 408);
                  goto LABEL_80;
                }

                *(v69 + 408) = *v142;
                *(v69 + 409) = v70[409];
                *(v69 + 410) = v70[410];
                *(v69 + 411) = v70[411];
                *(v69 + 412) = v70[412];
                if (v143)
                {
                  if (v144)
                  {
                    v147 = *(v70 + 53);
                    *(v69 + 416) = v144;
                    *(v69 + 424) = v147;

                    goto LABEL_88;
                  }
                }

                else if (v144)
                {
                  v148 = *(v70 + 53);
                  *(v69 + 416) = v144;
                  *(v69 + 424) = v148;
                  goto LABEL_88;
                }

                *(v69 + 416) = *(v70 + 26);
LABEL_88:
                v149 = *(v70 + 54);
                if (*(v69 + 432))
                {
                  if (v149)
                  {
                    v150 = *(v70 + 55);
                    *(v69 + 432) = v149;
                    *(v69 + 440) = v150;

                    goto LABEL_95;
                  }
                }

                else if (v149)
                {
                  v151 = *(v70 + 55);
                  *(v69 + 432) = v149;
                  *(v69 + 440) = v151;
                  goto LABEL_95;
                }

                *(v69 + 432) = *(v70 + 27);
LABEL_95:
                v152 = *(v70 + 56);
                if (*(v69 + 448))
                {
                  if (v152)
                  {
                    v153 = *(v70 + 57);
                    *(v69 + 448) = v152;
                    *(v69 + 456) = v153;

LABEL_102:
                    *(v69 + 464) = *(v70 + 58);
                    *(v69 + 472) = v70[472];
LABEL_103:
                    v155 = *(v70 + 61);
                    *(v69 + 480) = *(v70 + 60);
                    *(v69 + 488) = v155;

                    *(v69 + 496) = *(v70 + 62);
                    *(v69 + 504) = v70[504];
                    v156 = *(v70 + 64);
                    if (*(v69 + 512))
                    {
                      if (v156)
                      {
                        v157 = *(v70 + 65);
                        *(v69 + 512) = v156;
                        *(v69 + 520) = v157;

                        goto LABEL_110;
                      }
                    }

                    else if (v156)
                    {
                      v158 = *(v70 + 65);
                      *(v69 + 512) = v156;
                      *(v69 + 520) = v158;
                      goto LABEL_110;
                    }

                    *(v69 + 512) = *(v70 + 32);
LABEL_110:
                    *(v69 + 528) = v70[528];
                    if (*(v69 + 816))
                    {
                      if (*(v70 + 102))
                      {
                        *(v69 + 536) = *(v70 + 67);
                        *(v69 + 544) = *(v70 + 68);

                        *(v69 + 552) = v70[552];
                        *(v69 + 560) = *(v70 + 70);

                        *(v69 + 568) = v70[568];
                        *(v69 + 576) = *(v70 + 36);
                        *(v69 + 592) = v70[592];
                        v159 = (v69 + 600);
                        v160 = v70 + 600;
                        v161 = *(v69 + 624);
                        if (v161 != 1)
                        {
                          v162 = *(v70 + 78);
                          if (v162 != 1)
                          {
                            if (v161)
                            {
                              v164 = (v69 + 600);
                              if (v162)
                              {
                                __swift_destroy_boxed_opaque_existential_1(v164);
                              }

                              else
                              {
                                outlined destroy of AnyAccessibilityValue(v164);
                              }
                            }

                            v165 = *(v70 + 616);
                            *v159 = *v160;
                            *(v69 + 616) = v165;
                            *(v69 + 632) = *(v70 + 79);
                            *(v69 + 640) = *(v70 + 80);

LABEL_123:
                            *(v69 + 648) = *(v70 + 81);
                            *(v69 + 656) = v70[656];
                            v166 = (v69 + 664);
                            v167 = v70 + 664;
                            if (*(v69 + 776) != 1)
                            {
                              v168 = *(v70 + 97);
                              if (v168 != 1)
                              {
                                *v166 = *v167;
                                *(v69 + 672) = v70[672];
                                *(v69 + 680) = *(v70 + 85);
                                *(v69 + 688) = v70[688];
                                *(v69 + 689) = *(v70 + 689);
                                *(v69 + 691) = v70[691];
                                *(v69 + 692) = v70[692];
                                *(v69 + 696) = *(v70 + 87);
                                v173 = *(v70 + 45);
                                *(v69 + 704) = *(v70 + 44);
                                *(v69 + 720) = v173;
                                *(v69 + 736) = *(v70 + 92);
                                *(v69 + 744) = v70[744];
                                *(v69 + 745) = v70[745];
                                *(v69 + 752) = *(v70 + 47);
                                *(v69 + 768) = v70[768];
                                *(v69 + 776) = v168;

                                *(v69 + 784) = *(v70 + 49);
                                *(v69 + 800) = *(v70 + 100);
                                *(v69 + 808) = v70[808];
                                goto LABEL_128;
                              }

                              outlined destroy of AccessibilityTextLayoutProperties(v69 + 664);
                            }

                            v169 = *(v70 + 776);
                            *(v69 + 760) = *(v70 + 760);
                            *(v69 + 776) = v169;
                            *(v69 + 792) = *(v70 + 792);
                            *(v69 + 808) = v70[808];
                            v170 = *(v70 + 712);
                            *(v69 + 696) = *(v70 + 696);
                            *(v69 + 712) = v170;
                            v171 = *(v70 + 744);
                            *(v69 + 728) = *(v70 + 728);
                            *(v69 + 744) = v171;
                            v172 = *(v70 + 680);
                            *v166 = *v167;
                            *(v69 + 680) = v172;
LABEL_128:
                            *(v69 + 816) = *(v70 + 102);

                            *(v69 + 824) = *(v70 + 103);

                            *(v69 + 832) = *(v70 + 104);

LABEL_129:
                            v174 = (v69 + 840);
                            v175 = v70 + 840;
                            v176 = *(v69 + 864);
                            __dsta = v71;
                            v228 = v5;
                            if (v176 == 1)
                            {
LABEL_132:
                              v178 = *(v70 + 856);
                              *v174 = *v175;
                              *(v69 + 856) = v178;
                              *(v69 + 872) = *(v70 + 872);
                              *(v69 + 888) = *(v70 + 111);
                              goto LABEL_133;
                            }

                            v177 = *(v70 + 108);
                            if (v177 == 1)
                            {
                              outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior(v69 + 840);
                              goto LABEL_132;
                            }

                            if (v176)
                            {
                              v191 = (v69 + 840);
                              if (v177)
                              {
                                __swift_destroy_boxed_opaque_existential_1(v191);
                              }

                              else
                              {
                                outlined destroy of AnyNavigationLinkPresentedValue(v191);
                              }
                            }

                            v212 = *(v70 + 856);
                            *v174 = *v175;
                            *(v69 + 856) = v212;
                            *(v69 + 872) = *(v70 + 109);
                            v213 = *(v70 + 110);
                            if (*(v69 + 880))
                            {
                              if (v213)
                              {
                                v214 = *(v70 + 111);
                                *(v69 + 880) = v213;
                                *(v69 + 888) = v214;

                                goto LABEL_133;
                              }
                            }

                            else if (v213)
                            {
                              v215 = *(v70 + 111);
                              *(v69 + 880) = v213;
                              *(v69 + 888) = v215;
                              goto LABEL_133;
                            }

                            *(v69 + 880) = *(v70 + 55);
LABEL_133:
                            v179 = *(v69 + 896);
                            *(v69 + 896) = *(v70 + 112);

                            *(v69 + 904) = *(v70 + 113);
                            *(v69 + 912) = *(v70 + 114);

                            *(v69 + 920) = *(v70 + 115);
                            *(v69 + 928) = *(v70 + 116);

                            *(v69 + 936) = *(v70 + 117);

                            *(v69 + 944) = *(v70 + 118);

                            *(v69 + 952) = v70[952];
                            *(v69 + 953) = *(v70 + 953);
                            v180 = v71[28];
                            v181 = (v69 + v180);
                            v182 = &v70[v180];
                            v183 = type metadata accessor for CommandOperation(0);
                            v184 = *(v183 - 8);
                            v185 = *(v184 + 48);
                            v220 = v181;
                            LODWORD(v181) = v185(v181, 1, v183);
                            v186 = v185(v182, 1, v183);
                            if (v181)
                            {
                              if (!v186)
                              {
                                *v220 = *v182;
                                v192 = *(v183 + 20);
                                v193 = &v220[v192];
                                v194 = &v182[v192];
                                v195 = *&v182[v192 + 16];
                                *v193 = *&v182[v192];
                                *(v193 + 1) = v195;
                                v196 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                                v197 = type metadata accessor for UUID();
                                (*(*(v197 - 8) + 32))(&v193[v196], &v194[v196], v197);
                                *&v220[*(v183 + 24)] = *&v182[*(v183 + 24)];
                                (*(v184 + 56))(v220, 0, 1, v183);
                                goto LABEL_143;
                              }

                              type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                              v188 = *(*(v187 - 8) + 64);
                              v189 = v220;
                            }

                            else
                            {
                              if (!v186)
                              {
                                *v220 = *v182;
                                v198 = *(v183 + 20);
                                v199 = &v220[v198];
                                v200 = &v182[v198];
                                LOBYTE(v198) = v182[v198 + 16];
                                v201 = *v199;
                                v202 = *(v199 + 1);
                                v203 = v199[16];
                                *v199 = *v200;
                                v199[16] = v198;
                                outlined consume of Text.Storage(v201, v202, v203);
                                *(v199 + 3) = *(v200 + 3);

                                v204 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                                v205 = type metadata accessor for UUID();
                                (*(*(v205 - 8) + 40))(&v199[v204], &v200[v204], v205);
                                v206 = *(v183 + 24);
                                v207 = &v220[v206];
                                v208 = &v182[v206];
                                v209 = *&v220[v206];
                                v210 = *&v182[v206];
                                if (v209)
                                {
                                  v5 = v228;
                                  if (v210)
                                  {
                                    v211 = *(v208 + 1);
                                    *v207 = v210;
                                    *(v207 + 1) = v211;

                                    goto LABEL_144;
                                  }
                                }

                                else
                                {
                                  v5 = v228;
                                  if (v210)
                                  {
                                    v216 = *(v208 + 1);
                                    *v207 = v210;
                                    *(v207 + 1) = v216;
                                    goto LABEL_144;
                                  }
                                }

                                *v207 = *v208;
                                goto LABEL_144;
                              }

                              outlined destroy of CommandOperation(v220, type metadata accessor for CommandOperation);
                              type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                              v188 = *(*(v190 - 8) + 64);
                              v189 = v220;
                            }

                            memcpy(v189, v182, v188);
LABEL_143:
                            v5 = v228;
LABEL_144:
                            *(v69 + __dsta[29]) = v70[__dsta[29]];
                            *(v69 + __dsta[30]) = v70[__dsta[30]];
                            *(v69 + __dsta[31]) = v70[__dsta[31]];
                            *(v69 + __dsta[32]) = v70[__dsta[32]];
                            *(v69 + __dsta[33]) = v70[__dsta[33]];
                            *(v69 + __dsta[34]) = *&v70[__dsta[34]];

                            goto LABEL_145;
                          }

                          outlined destroy of AccessibilityValueStorage(v69 + 600);
                        }

                        v163 = *(v70 + 616);
                        *v159 = *v160;
                        *(v69 + 616) = v163;
                        *(v69 + 632) = *(v70 + 632);
                        goto LABEL_123;
                      }

                      outlined destroy of PlatformItemList.Item.Accessibility(v69 + 536);
                    }

                    memcpy((v69 + 536), v70 + 536, 0x130uLL);
                    goto LABEL_129;
                  }
                }

                else if (v152)
                {
                  v154 = *(v70 + 57);
                  *(v69 + 448) = v152;
                  *(v69 + 456) = v154;
                  goto LABEL_102;
                }

                *(v69 + 448) = *(v70 + 28);
                goto LABEL_102;
              }

              outlined destroy of PlatformItemList.Item.SystemItem(v69 + 304);
            }

            v128 = *(v70 + 24);
            *(v69 + 368) = *(v70 + 23);
            *(v69 + 384) = v128;
            *(v69 + 400) = *(v70 + 50);
            v129 = *(v70 + 20);
            *(v69 + 304) = *(v70 + 19);
            *(v69 + 320) = v129;
            v130 = *(v70 + 22);
            *(v69 + 336) = *(v70 + 21);
            *(v69 + 352) = v130;
            goto LABEL_77;
          }

          outlined destroy of Image.NamedResolved(v69 + 256);
        }

        v125 = *(v70 + 17);
        *(v69 + 256) = *(v70 + 16);
        *(v69 + 272) = v125;
        *(v69 + 288) = *(v70 + 18);
        goto LABEL_72;
      }

      outlined destroy of Transaction((a1 + 48));
      v50 = *(a2 + 6);
    }

    *v49 = v50;
    goto LABEL_22;
  }

  if (!v9)
  {
    v10 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v10;
    v11 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v11;
    *(a1 + 57) = *(a2 + 57);
    v12 = *(v5 + 24);
    v13 = &a1[v12];
    v14 = &a2[v12];
    *v13 = *&a2[v12];
    v13[8] = a2[v12 + 8];
    *(v13 + 2) = *&a2[v12 + 16];
    v13[24] = a2[v12 + 24];
    swift_unknownObjectWeakTakeInit();
    v15 = *(v14 + 6);
    *(v13 + 5) = *(v14 + 5);
    *(v13 + 6) = v15;
    v16 = *(type metadata accessor for ToolbarStorage.NavigationProperties(0) + 32);
    v17 = &v13[v16];
    v18 = &v14[v16];
    v19 = type metadata accessor for PlatformItemList.Item(0);
    v20 = *(v19 - 1);
    if ((*(v20 + 48))(v18, 1, v19))
    {
      type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(v17, v18, *(*(v21 - 8) + 64));
    }

    else
    {
      v226 = v5;
      v30 = *(v18 + 1);
      *v17 = *v18;
      *(v17 + 1) = v30;
      v17[32] = v18[32];
      *(v17 + 40) = *(v18 + 40);
      v17[56] = v18[56];
      v31 = *(v18 + 13);
      *(v17 + 12) = *(v18 + 12);
      *(v17 + 13) = v31;
      *(v17 + 14) = *(v18 + 14);
      *(v17 + 235) = *(v18 + 235);
      v32 = *(v18 + 9);
      *(v17 + 8) = *(v18 + 8);
      *(v17 + 9) = v32;
      v33 = *(v18 + 11);
      *(v17 + 10) = *(v18 + 10);
      *(v17 + 11) = v33;
      v34 = *(v18 + 5);
      *(v17 + 4) = *(v18 + 4);
      *(v17 + 5) = v34;
      v35 = *(v18 + 7);
      *(v17 + 6) = *(v18 + 6);
      *(v17 + 7) = v35;
      v36 = *(v18 + 17);
      *(v17 + 16) = *(v18 + 16);
      *(v17 + 17) = v36;
      v37 = *(v18 + 23);
      *(v17 + 22) = *(v18 + 22);
      *(v17 + 23) = v37;
      *(v17 + 24) = *(v18 + 24);
      *(v17 + 50) = *(v18 + 50);
      v38 = *(v18 + 19);
      *(v17 + 18) = *(v18 + 18);
      *(v17 + 19) = v38;
      v39 = *(v18 + 21);
      *(v17 + 20) = *(v18 + 20);
      *(v17 + 21) = v39;
      v40 = *(v18 + 456);
      *(v17 + 440) = *(v18 + 440);
      *(v17 + 456) = v40;
      v17[472] = v18[472];
      v41 = *(v18 + 424);
      *(v17 + 408) = *(v18 + 408);
      *(v17 + 424) = v41;
      *(v17 + 30) = *(v18 + 30);
      *(v17 + 489) = *(v18 + 489);
      *(v17 + 32) = *(v18 + 32);
      v17[528] = v18[528];
      memcpy(v17 + 536, v18 + 536, 0x130uLL);
      v42 = *(v18 + 856);
      *(v17 + 840) = *(v18 + 840);
      *(v17 + 856) = v42;
      *(v17 + 872) = *(v18 + 872);
      *(v17 + 111) = *(v18 + 111);
      *(v17 + 112) = *(v18 + 112);
      *(v17 + 904) = *(v18 + 904);
      *(v17 + 920) = *(v18 + 920);
      *(v17 + 117) = *(v18 + 117);
      *(v17 + 118) = *(v18 + 118);
      v17[952] = v18[952];
      *(v17 + 953) = *(v18 + 953);
      v43 = v19[28];
      __dst = &v17[v43];
      v44 = &v18[v43];
      v45 = type metadata accessor for CommandOperation(0);
      v46 = *(v45 - 8);
      if ((*(v46 + 48))(v44, 1, v45))
      {
        type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
        memcpy(__dst, v44, *(*(v47 - 8) + 64));
      }

      else
      {
        *__dst = *v44;
        v57 = *(v45 + 20);
        v218 = v20;
        __src = a2;
        v58 = &__dst[v57];
        v59 = &v44[v57];
        v60 = *&v44[v57 + 16];
        *v58 = *&v44[v57];
        *(v58 + 1) = v60;
        v217 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
        v61 = type metadata accessor for UUID();
        v62 = &v58[v217];
        v63 = &v59[v217];
        v20 = v218;
        a2 = __src;
        (*(*(v61 - 8) + 32))(v62, v63, v61);
        *&__dst[*(v45 + 24)] = *&v44[*(v45 + 24)];
        (*(v46 + 56))();
      }

      v17[v19[29]] = v18[v19[29]];
      v17[v19[30]] = v18[v19[30]];
      v17[v19[31]] = v18[v19[31]];
      v17[v19[32]] = v18[v19[32]];
      v17[v19[33]] = v18[v19[33]];
      *&v17[v19[34]] = *&v18[v19[34]];
      (*(v20 + 56))(v17, 0, 1, v19);
      v5 = v226;
    }

    *&a1[*(v5 + 28)] = *&a2[*(v5 + 28)];
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }

LABEL_7:
  type metadata accessor for NavigationItemDescription?(0);
  v23 = *(*(v22 - 8) + 64);

  return memcpy(a1, a2, v23);
}

void type metadata completion function for DocumentToolbarInputContentWriter(uint64_t a1)
{
  type metadata accessor for NavigationItemDescription?(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

unint64_t lazy protocol witness table accessor for type ToolbarContentInput and conformance ToolbarContentInput()
{
  result = lazy protocol witness table cache variable for type ToolbarContentInput and conformance ToolbarContentInput;
  if (!lazy protocol witness table cache variable for type ToolbarContentInput and conformance ToolbarContentInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarContentInput, &type metadata for ToolbarContentInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarContentInput and conformance ToolbarContentInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolbarContentInput and conformance ToolbarContentInput;
  if (!lazy protocol witness table cache variable for type ToolbarContentInput and conformance ToolbarContentInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarContentInput, &type metadata for ToolbarContentInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarContentInput and conformance ToolbarContentInput);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WriteToolbarDescriptionInput and conformance WriteToolbarDescriptionInput()
{
  result = lazy protocol witness table cache variable for type WriteToolbarDescriptionInput and conformance WriteToolbarDescriptionInput;
  if (!lazy protocol witness table cache variable for type WriteToolbarDescriptionInput and conformance WriteToolbarDescriptionInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WriteToolbarDescriptionInput, &type metadata for WriteToolbarDescriptionInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WriteToolbarDescriptionInput and conformance WriteToolbarDescriptionInput);
  }

  return result;
}

unint64_t type metadata accessor for ToolbarInputFeatureDelegate()
{
  result = lazy cache variable for type metadata for ToolbarInputFeatureDelegate;
  if (!lazy cache variable for type metadata for ToolbarInputFeatureDelegate)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ToolbarInputFeatureDelegate);
  }

  return result;
}

void *partial apply for specialized closure #1 in Attribute.subscript.getter@<X0>(_BYTE *a2@<X8>)
{
  result = swift_getAtKeyPath();
  *a2 = v4;
  return result;
}

void type metadata accessor for Map<EnvironmentValues, Bool>()
{
  if (!lazy cache variable for type metadata for Map<EnvironmentValues, Bool>)
  {
    v0 = type metadata accessor for Map();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Map<EnvironmentValues, Bool>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Map<EnvironmentValues, Bool> and conformance Map<A, B>()
{
  result = lazy protocol witness table cache variable for type Map<EnvironmentValues, Bool> and conformance Map<A, B>;
  if (!lazy protocol witness table cache variable for type Map<EnvironmentValues, Bool> and conformance Map<A, B>)
  {
    type metadata accessor for Map<EnvironmentValues, Bool>();
    result = swift_getWitnessTable(MEMORY[0x1E698D3A0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Map<EnvironmentValues, Bool> and conformance Map<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext()
{
  result = lazy protocol witness table cache variable for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext;
  if (!lazy protocol witness table cache variable for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InAdaptableTabViewContext, &type metadata for InAdaptableTabViewContext, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext;
  if (!lazy protocol witness table cache variable for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InAdaptableTabViewContext, &type metadata for InAdaptableTabViewContext, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext;
  if (!lazy protocol witness table cache variable for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InAdaptableTabViewContext, &type metadata for InAdaptableTabViewContext, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext;
  if (!lazy protocol witness table cache variable for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InAdaptableTabViewContext, &type metadata for InAdaptableTabViewContext, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext;
  if (!lazy protocol witness table cache variable for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InAdaptableTabViewContext, &type metadata for InAdaptableTabViewContext, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DocumentToolbarInputContentWriter.MakeToolbarContent and conformance DocumentToolbarInputContentWriter.MakeToolbarContent()
{
  result = lazy protocol witness table cache variable for type DocumentToolbarInputContentWriter.MakeToolbarContent and conformance DocumentToolbarInputContentWriter.MakeToolbarContent;
  if (!lazy protocol witness table cache variable for type DocumentToolbarInputContentWriter.MakeToolbarContent and conformance DocumentToolbarInputContentWriter.MakeToolbarContent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DocumentToolbarInputContentWriter.MakeToolbarContent, &type metadata for DocumentToolbarInputContentWriter.MakeToolbarContent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentToolbarInputContentWriter.MakeToolbarContent and conformance DocumentToolbarInputContentWriter.MakeToolbarContent);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DocumentToolbarInputContentWriter.MakeToolbarContent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[20])
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

uint64_t storeEnumTagSinglePayload for DocumentToolbarInputContentWriter.MakeToolbarContent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t ModalLink.$isPresented.getter(uint64_t a1)
{
  type metadata accessor for State<Bool>();
  State.projectedValue.getter();
  return v2;
}

uint64_t ModalLink.init(presenting:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v16[0] = a4;
  v16[1] = a5;
  v16[2] = a6;
  v16[3] = a7;
  v12 = type metadata accessor for ModalLink(0, v16);
  v13 = a8 + *(v12 + 56);
  *v13 = 0;
  *(v13 + 8) = 0;
  result = a3();
  v15 = (a8 + *(v12 + 52));
  *v15 = a1;
  v15[1] = a2;
  return result;
}

uint64_t ModalLink.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v52 = *(v6 + 16);
  v7 = *(v6 + 32);
  v54 = type metadata accessor for Button(0, v52, v7, v8);
  v60 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v48 - v9;
  v10 = *(a1 + 24);
  type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, v11, v12, v13);
  v15 = v14;
  v16 = *(a1 + 40);
  v20 = lazy protocol witness table accessor for type NullSheetAnchor<SheetPreference.Key> and conformance NullSheetAnchor<A>(v14, v17, v18, v19);
  v67[0] = v10;
  v67[1] = v15;
  v51 = v10;
  v67[2] = v16;
  v67[3] = v20;
  v21 = v16;
  v50 = v16;
  v58 = type metadata accessor for SheetPresentationModifier(255, v67);
  v56 = type metadata accessor for ModifiedContent();
  v59 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v53 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v57 = &v48 - v25;
  v26 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v26, v2, a1, v24);
  v27 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v28 = swift_allocObject();
  v29 = v52;
  *&v30 = v52;
  *(&v30 + 1) = v10;
  v49 = v30;
  *&v31 = v7;
  *(&v31 + 1) = v21;
  v48 = v31;
  *(v28 + 16) = v30;
  *(v28 + 32) = v31;
  (*(v4 + 32))(v28 + v27, v26, a1);
  v63 = v49;
  v64 = v48;
  v65 = v2;
  v32 = v55;
  Button.init(action:label:)(partial apply for closure #1 in ModalLink.body.getter, v28, partial apply for closure #2 in ModalLink.body.getter, v62, v29, v7, v55);
  v33 = ModalLink.$isPresented.getter(a1);
  v35 = v34;
  LOBYTE(v27) = v36;
  v37 = (v2 + *(a1 + 52));
  v38 = *v37;
  v39 = v37[1];
  v40 = v54;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Button<A>, v54);
  v42 = v53;
  View.sheet<A>(isPresented:onDismiss:content:)(v33, v35, v27 & 1, 0, 0, v38, v39, v40, v51, WitnessTable, v50);

  (*(v60 + 8))(v32, v40);
  v43 = swift_getWitnessTable(protocol conformance descriptor for SheetPresentationModifier<A, B>, v58);
  v66[0] = WitnessTable;
  v66[1] = v43;
  v44 = v56;
  swift_getWitnessTable(MEMORY[0x1E697E858], v56, v66);
  v45 = v57;
  static ViewBuilder.buildExpression<A>(_:)();
  v46 = *(v59 + 8);
  v46(v42, v44);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v46)(v45, v44);
}

uint64_t closure #1 in ModalLink.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  result = type metadata accessor for ModalLink(0, v8);
  v7 = *(a1 + *(result + 56) + 8);
  LOBYTE(v8[0]) = 1;
  if (v7)
  {
    return dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

uint64_t partial apply for closure #1 in ModalLink.body.getter()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v8[0] = v0[2];
  v1 = v8[0];
  v8[1] = v2;
  v8[2] = v3;
  v8[3] = v4;
  v5 = *(type metadata accessor for ModalLink(0, v8) - 8);
  v6 = v0 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return closure #1 in ModalLink.body.getter(v6, v1, v2, v3, v4);
}

uint64_t closure #2 in ModalLink.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

double ModalLink<>.init(_:presenting:)@<D0>(uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  v21[0] = MEMORY[0x1E6981148];
  v21[1] = a7;
  v21[2] = MEMORY[0x1E6981138];
  v21[3] = a8;
  v12 = type metadata accessor for ModalLink(0, v21);
  v13 = v18 + *(v12 + 56);
  *v13 = 0;
  *(v13 + 1) = 0;
  closure #1 in TextField<>.init<A>(_:value:format:prompt:)(v18);
  v14 = (v18 + *(v12 + 52));
  *v14 = a5;
  v14[1] = a6;

  v15 = v18[1];
  *a9 = v18[0];
  a9[1] = v15;
  result = *&v19;
  v17 = v20;
  a9[2] = v19;
  a9[3] = v17;
  return result;
}

uint64_t ModalLink<>.init<A>(_:presenting:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a8@<X8>)
{
  v20[0] = MEMORY[0x1E6981148];
  v20[1] = a4;
  v20[2] = MEMORY[0x1E6981138];
  v20[3] = a6;
  v13 = type metadata accessor for ModalLink(0, v20);
  v14 = v19 + *(v13 + 56);
  *v14 = 0;
  *(v14 + 1) = 0;
  closure #1 in ModalLink<>.init<A>(_:presenting:)(a1, v19);
  v15 = (v19 + *(v13 + 52));
  *v15 = a2;
  v15[1] = a3;
  v16 = v19[1];
  *a8 = v19[0];
  a8[1] = v16;
  v17 = v19[3];
  a8[2] = v19[2];
  a8[3] = v17;
  return (*(*(a5 - 8) + 8))(a1, a5);
}

uint64_t closure #1 in ModalLink<>.init<A>(_:presenting:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
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

uint64_t type metadata completion function for ModalLink(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ModalLink(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *a1 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v12 = v11[1];
    *v10 = *v11;
    v10[1] = v12;
    v13 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
    v14 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
    *v13 = *v14;
    *(v13 + 8) = *(v14 + 8);
  }

  return v3;
}

double destroy for ModalLink(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();

  return result;
}

uint64_t initializeWithCopy for ModalLink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  v10 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v10 = *v11;
  *(v10 + 8) = *(v11 + 8);

  return a1;
}

uint64_t assignWithCopy for ModalLink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  v10 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v10 = *v11;
  *(v10 + 8) = *(v11 + 8);

  return a1;
}

uint64_t initializeWithTake for ModalLink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for ModalLink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = v6 + a2;
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 23;
  *v7 = *(v8 & 0xFFFFFFFFFFFFFFF8);

  v10 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v10 = *(v9 & 0xFFFFFFFFFFFFFFF8);
  *(v10 + 8) = *((v9 & 0xFFFFFFFFFFFFFFF8) + 8);

  return a1;
}

uint64_t getEnumTagSinglePayload for ModalLink(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *storeEnumTagSinglePayload for ModalLink(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void type metadata accessor for State<Bool>()
{
  if (!lazy cache variable for type metadata for State<Bool>)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for State<Bool>);
    }
  }
}

uint64_t Gesture.sequenced<A>(before:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v20, a2, v16);
  (*(v12 + 16))(v14, a1, a3);
  return SequenceGesture.init(_:_:)(v18, v14, a2, a3, a4, a5, a6);
}

uint64_t SequenceGesture.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for SequenceGesture(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t static SequenceGesture._makeGesture(gesture:inputs:)@<X0>(_DWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = a5;
  v44 = a7;
  v102 = *MEMORY[0x1E69E9840];
  LODWORD(v35) = *a1;
  v10 = a2[5];
  v100 = a2[4];
  *v101 = v10;
  *&v101[16] = a2[6];
  *&v101[28] = *(a2 + 108);
  v11 = a2[1];
  v96 = *a2;
  v97 = v11;
  v12 = a2[3];
  v98 = a2[2];
  v99 = v12;
  v64 = a3;
  v65 = a4;
  v66 = a5;
  v67 = a6;
  v34 = a6;
  LODWORD(v75[0]) = v35;
  *&v90 = a3;
  *(&v90 + 1) = a4;
  *&v91 = a5;
  *(&v91 + 1) = a6;
  v43 = type metadata accessor for SequenceGesture(255, &v90);
  v33 = type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v94 = v100;
  *v95 = *v101;
  *&v95[16] = *&v101[16];
  *&v95[28] = *&v101[28];
  v90 = v96;
  v91 = v97;
  v92 = v98;
  v93 = v99;
  static Gesture.makeDebuggableGesture(gesture:inputs:)();
  v41 = *(&v77 + 1);
  v42 = v78;
  *&v13 = v77;
  *v45[0].i8 = v13;
  v14 = *&v101[40];
  v88 = v100;
  v89[0] = *v101;
  *(v89 + 12) = *&v101[12];
  v84 = v96;
  v85 = v97;
  v86 = v98;
  v87 = v99;
  v15 = *&v101[32];
  v39 = *&v101[32];
  v16 = *&v101[28];
  outlined init with copy of _GestureInputs(&v96, &v90);
  v17 = v7;
  v32 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for _GestureOutputs();
  *&v90 = __PAIR64__(v45[0].u32[0], v16);
  v62 = type metadata accessor for SequenceEvents(0, AssociatedTypeWitness, v18, v19);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SequenceEvents<A>, v62);
  type metadata accessor for Attribute<[EventID : EventType]>(0);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v90, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_4, v61, v62, MEMORY[0x1E69E73E0], v20, MEMORY[0x1E69E7410], v21);
  v36 = 0;
  v31 = v30;
  LODWORD(v7) = v77;
  v14 |= 2u;
  v37 = v77;
  v38 = v14;
  v57 = a3;
  v58 = a4;
  v59 = v17;
  v22 = v34;
  v60 = v34;
  v49.i32[0] = v35;
  _GraphValue.subscript.getter();
  *&v76[12] = *(v89 + 12);
  v75[4] = v88;
  *v76 = v89[0];
  v75[0] = v84;
  v75[1] = v85;
  v75[2] = v86;
  v75[3] = v87;
  *&v76[28] = v7;
  *&v76[32] = v15;
  *&v76[40] = v14;
  v94 = v88;
  *v95 = v89[0];
  *&v95[16] = *&v76[16];
  *&v95[28] = *&v76[28];
  v90 = v84;
  v91 = v85;
  v92 = v86;
  v93 = v87;
  outlined init with copy of _GestureInputs(v75, &v77);
  static Gesture.makeDebuggableGesture(gesture:inputs:)();
  v81 = v94;
  v82 = *v95;
  v83[0] = *&v95[16];
  *(v83 + 12) = *&v95[28];
  v77 = v90;
  v78 = v91;
  v79 = v92;
  v80 = v93;
  outlined destroy of _GestureInputs(&v77);
  v31 = *(&v68 + 1);
  LODWORD(v33) = v69;
  v23 = v22;
  v35 = swift_getAssociatedTypeWitness();
  type metadata accessor for _GestureOutputs();
  v24 = v68;
  *&v68 = vzip1_s32(v45[0], *&v68);
  *(&v68 + 1) = *&v101[32];
  *&v90 = a3;
  *(&v90 + 1) = a4;
  v25 = v32;
  *&v91 = v32;
  *(&v91 + 1) = v23;
  type metadata accessor for SequenceGesture.Value(255, &v90);
  v54 = type metadata accessor for GesturePhase();
  *&v90 = a3;
  *(&v90 + 1) = a4;
  *&v91 = v25;
  *(&v91 + 1) = v23;
  v26 = type metadata accessor for SequencePhase(0, &v90);
  v55 = v26;
  v56 = swift_getWitnessTable(protocol conformance descriptor for SequencePhase<A, B>, v26);
  v27 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v68, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v53, v26, MEMORY[0x1E69E73E0], v27, MEMORY[0x1E69E7410], v28);
  _GestureOutputs.init(phase:)();
  v52[0] = 4;
  v72 = v100;
  v73 = *v101;
  v74[0] = *&v101[16];
  *(v74 + 12) = *&v101[28];
  v68 = v96;
  v69 = v97;
  v70 = v98;
  v71 = v99;
  v49 = v45[0];
  v50 = v41;
  v51 = v42;
  v46 = v24;
  v47 = v31;
  v48 = v33;
  type metadata accessor for _GestureOutputs();
  LOBYTE(v90) = 1;
  v30[0] = AssociatedTypeWitness;
  v30[1] = v35;
  _GestureOutputs.wrapDebugOutputs<A, B, C>(_:kind:properties:inputs:combiningOutputs:)();
  v94 = v88;
  *v95 = v89[0];
  *&v95[12] = *(v89 + 12);
  v90 = v84;
  v91 = v85;
  v92 = v86;
  v93 = v87;
  *&v95[28] = v37;
  *&v95[32] = v39;
  *&v95[40] = v38;
  outlined destroy of _GestureInputs(&v90);
}

uint64_t closure #1 in static SequenceGesture._makeGesture(gesture:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  v10[2] = type metadata accessor for SequenceGesture(0, v11);
  v10[3] = a2;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v10, a2, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v11[0];
}

uint64_t closure #2 in static SequenceGesture._makeGesture(gesture:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v7 = type metadata accessor for SequenceGesture(0, v13);
  v8 = *(v7 + 52);
  v12[2] = v7;
  v12[3] = a3;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, partial apply for closure #1 in static PointerOffset.of(_:), v12, a3, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13[0];
}

uint64_t static SequenceGesture.Value<>.== infix(_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t), uint64_t a8)
{
  v82[1] = a8;
  v92 = a7;
  v97 = a1;
  v98 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v82[0] = v82 - v13;
  v88 = v14;
  v15 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v84 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v85 = v82 - v16;
  v95 = v15;
  v96 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v83 = v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v89 = v82 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v94 = v82 - v22;
  v23 = swift_getAssociatedTypeWitness();
  v99 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v90 = v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v82 - v26;
  v100[0] = a3;
  v100[1] = a4;
  v100[2] = a5;
  v100[3] = a6;
  v28 = type metadata accessor for SequenceGesture.Value(0, v100);
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = v82 - v33;
  v35 = swift_getTupleTypeMetadata2();
  v91 = *(v35 - 8);
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = v82 - v37;
  v40 = v82 + *(v39 + 48) - v37;
  v93 = v29;
  v41 = *(v29 + 16);
  v41(v82 - v37, v97, v28, v36);
  (v41)(v40, v98, v28);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (v41)(v34, v38, v28);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v68 = v99;
      (*(v99 + 32))(v27, v40, v23);
      v67 = dispatch thunk of static Equatable.== infix(_:_:)();
      v69 = *(v68 + 8);
      v69(v27, v23);
      v69(v34, v23);
      v66 = v93;
      goto LABEL_17;
    }

    v31 = v34;
    goto LABEL_10;
  }

  (v41)(v31, v38, v28);
  v42 = v95;
  v43 = *(swift_getTupleTypeMetadata2() + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v96 + 8))(&v31[v43], v42);
LABEL_10:
    (*(v99 + 8))(v31, v23);
    v67 = 0;
    v66 = v91;
    v28 = v35;
    goto LABEL_17;
  }

  v98 = v38;
  v44 = v99;
  v45 = v90;
  (*(v99 + 32))(v90, v40, v23);
  v46 = *(v96 + 32);
  v46(v94, &v31[v43], v42);
  v47 = &v40[v43];
  v48 = v89;
  v46(v89, v47, v42);
  v49 = v45;
  v50 = dispatch thunk of static Equatable.== infix(_:_:)();
  v53 = *(v44 + 8);
  v52 = v44 + 8;
  v51 = v53;
  v53(v31, v23);
  if ((v50 & 1) == 0)
  {
    v70 = *(v96 + 8);
    v70(v48, v42);
    v70(v94, v42);
    v51(v49, v23);
    v67 = 0;
    v66 = v93;
    v38 = v98;
    goto LABEL_17;
  }

  v92 = v51;
  v99 = v52;
  v97 = v23;
  v54 = *(TupleTypeMetadata2 + 48);
  v55 = v42;
  v56 = *(v96 + 16);
  v57 = v85;
  v58 = v94;
  v56(v85, v94, v55);
  v91 = v54;
  v56(&v57[v54], v48, v55);
  v59 = *(v87 + 48);
  v60 = v59(v57, 1, v88);
  v38 = v98;
  if (v60 != 1)
  {
    v71 = v83;
    v56(v83, v57, v95);
    v72 = v91;
    v73 = v88;
    if (v59(&v57[v91], 1, v88) != 1)
    {
      v77 = v87;
      v78 = v82[0];
      (*(v87 + 32))(v82[0], &v57[v72], v73);
      LODWORD(v91) = dispatch thunk of static Equatable.== infix(_:_:)();
      v79 = *(v77 + 8);
      v79(v78, v73);
      v80 = v95;
      v81 = *(v96 + 8);
      v81(v89, v95);
      v81(v94, v80);
      v92(v90, v97);
      v79(v71, v73);
      v81(v57, v80);
      v66 = v93;
      if (v91)
      {
        v67 = 1;
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v74 = v95;
    v75 = *(v96 + 8);
    v75(v89, v95);
    v75(v94, v74);
    v92(v90, v97);
    (*(v87 + 8))(v71, v73);
    v66 = v93;
LABEL_15:
    (*(v84 + 8))(v57, TupleTypeMetadata2);
LABEL_16:
    v67 = 0;
    goto LABEL_17;
  }

  v61 = v58;
  v62 = v95;
  v63 = v96 + 8;
  v64 = *(v96 + 8);
  v64(v48, v95);
  v96 = v63;
  v64(v61, v62);
  v92(v90, v97);
  v65 = v59(&v57[v91], 1, v88);
  v66 = v93;
  if (v65 != 1)
  {
    goto LABEL_15;
  }

  v64(v57, v62);
  v67 = 1;
LABEL_17:
  (*(v66 + 8))(v38, v28);
  return v67 & 1;
}

uint64_t SequenceEvents.phase.getter@<X0>(uint64_t a3@<X8>)
{
  v4 = type metadata accessor for GesturePhase();
  Value = AGGraphGetValue();
  v6 = *(*(v4 - 8) + 16);

  return v6(a3, Value, v4);
}

void SequenceEvents.value.getter(unint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for GesturePhase();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  SequenceEvents.phase.getter(&v7 - v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v3 + 8))(v5, v2);
  if (EnumCaseMultiPayload == 2)
  {
    type metadata accessor for [EventID : EventType](0);
    AGGraphGetValue();
  }

  else
  {
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }
}

uint64_t SequencePhase.phase0.getter@<X0>(uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for GesturePhase();
  Value = AGGraphGetValue();
  v7 = *(*(v5 - 8) + 16);

  return v7(a4, Value, v5);
}

uint64_t SequencePhase.phase1.getter@<X0>(uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for GesturePhase();
  Value = AGGraphGetValue();
  v7 = *(*(v5 - 8) + 16);

  return v7(a4, Value, v5);
}

uint64_t SequencePhase.updateValue()(void *a1)
{
  v112 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  v3 = a1[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v97 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v94 = v90 - v5;
  v95 = v6;
  v7 = type metadata accessor for GesturePhase();
  v8 = *(v7 - 8);
  v100 = v7;
  v101 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v93 = v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v92 = v90 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v102 = v90 - v13;
  v14 = a1[4];
  v15 = a1[2];
  v16 = swift_getAssociatedTypeWitness();
  v105 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v103 = v90 - v17;
  v106 = v18;
  v19 = type metadata accessor for GesturePhase();
  v110 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v96 = v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v90 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v90 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v90 - v28;
  *&v30 = v15;
  *(&v30 + 1) = v3;
  *&v31 = v14;
  *(&v31 + 1) = v2;
  v111[0] = v30;
  v111[1] = v31;
  v104 = type metadata accessor for SequenceGesture.Value(255, v111);
  v32 = type metadata accessor for GesturePhase();
  v108 = *(v32 - 8);
  v109 = v32;
  v33 = MEMORY[0x1EEE9AC00](v32);
  v107 = v90 - v34;
  swift_getWitnessTable(protocol conformance descriptor for SequencePhase<A, B>, a1, v33);
  result = ResettableGestureRule.resetIfNeeded()();
  if (result)
  {
    v91 = a1;
    v90[1] = v3;
    v90[2] = v2;
    SequencePhase.phase0.getter(v29);
    v98 = v29;
    v99 = v19;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      v37 = v110;
      if (EnumCaseMultiPayload)
      {
        v38 = v98;
        v39 = v99;
        (*(v110 + 16))(v23, v98, v99);
        v44 = v107;
        (*(v105 + 4))(v107, v23, v106);
        swift_storeEnumTagMultiPayload();
        v58 = v109;
        swift_storeEnumTagMultiPayload();
        v43 = v91;
      }

      else
      {
        v38 = v98;
        v39 = v99;
        (*(v110 + 16))(v26, v98, v99);
        v41 = v105;
        v40 = v106;
        v42 = (*(v105 + 6))(v26, 1, v106);
        v43 = v91;
        v44 = v107;
        if (v42 == 1)
        {
          (*(*(v104 - 8) + 56))(v107, 1, 1);
        }

        else
        {
          (*(v41 + 4))(v107, v26, v40);
          v59 = v104;
          swift_storeEnumTagMultiPayload();
          (*(*(v59 - 8) + 56))(v44, 0, 1);
        }

        v58 = v109;
        swift_storeEnumTagMultiPayload();
      }

      goto LABEL_24;
    }

    v37 = v110;
    if (EnumCaseMultiPayload != 2)
    {
      v44 = v107;
      v58 = v109;
      swift_storeEnumTagMultiPayload();
      v39 = v99;
      v43 = v91;
LABEL_23:
      v38 = v98;
LABEL_24:
      v87 = (*(v37 + 8))(v38, v39);
      v88 = MEMORY[0x1EEE9AC00](v87);
      v90[-2] = v43;
      v90[-1] = swift_getWitnessTable(protocol conformance descriptor for SequencePhase<A, B>, v43, v88);
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v44, partial apply for closure #1 in StatefulRule.value.setter, &v90[-4], v58, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v89);
      return (*(v108 + 8))(v44, v58);
    }

    v45 = v96;
    (*(v110 + 16))(v96, v98, v99);
    v46 = *(v105 + 4);
    v46(v103, v45, v106);
    v47 = v102;
    SequencePhase.phase1.getter(v102);
    v48 = v100;
    v49 = swift_getEnumCaseMultiPayload();
    if (v49 > 1)
    {
      v44 = v107;
      v50 = v101;
      v60 = v97;
      if (v49 == 2)
      {
        v61 = v93;
        (*(v101 + 16))(v93, v47, v48);
        v105 = *(v60 + 32);
        v62 = v61;
        v63 = v95;
        v105(v94, v62, v95);
        type metadata accessor for Optional();
        v64 = v46;
        v65 = v48;
        v66 = v106;
        v67 = *(swift_getTupleTypeMetadata2() + 48);
        v68 = v66;
        v48 = v65;
        v64(v44, v103, v68);
        v105((v44 + v67), v94, v63);
        v69 = v44 + v67;
        v50 = v101;
        v47 = v102;
        (*(v60 + 56))(v69, 0, 1, v63);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        (*(v105 + 1))(v103, v106);
      }
    }

    else
    {
      v105 = v46;
      v44 = v107;
      v50 = v101;
      v51 = v97;
      if (!v49)
      {
        v52 = v92;
        (*(v101 + 16))(v92, v47, v48);
        v53 = v95;
        v54 = (*(v51 + 48))(v52, 1, v95);
        v55 = v51;
        v39 = v99;
        v43 = v91;
        if (v54 == 1)
        {
          v56 = v55;
          type metadata accessor for Optional();
          v57 = v106;
          v96 = *(swift_getTupleTypeMetadata2() + 48);
          v105(v44, v103, v57);
          (*(v56 + 56))(&v96[v44], 1, 1, v53);
        }

        else
        {
          v96 = *(v55 + 32);
          v79 = v94;
          v80 = v52;
          v81 = v55;
          (v96)(v94, v80, v53);
          type metadata accessor for Optional();
          v82 = v106;
          v83 = *(swift_getTupleTypeMetadata2() + 48);
          v105(v44, v103, v82);
          v84 = v79;
          v48 = v100;
          v85 = v95;
          (v96)(v44 + v83, v84, v95);
          v86 = v44 + v83;
          v50 = v101;
          (*(v81 + 56))(v86, 0, 1, v85);
        }

        swift_storeEnumTagMultiPayload();
        v47 = v102;
        goto LABEL_22;
      }

      v70 = v93;
      (*(v101 + 16))(v93, v47, v48);
      v96 = *(v51 + 32);
      v71 = v94;
      v72 = v70;
      v73 = v95;
      (v96)(v94, v72, v95);
      type metadata accessor for Optional();
      v74 = v48;
      v75 = v106;
      v76 = *(swift_getTupleTypeMetadata2() + 48);
      v77 = v75;
      v48 = v74;
      v105(v44, v103, v77);
      (v96)(v44 + v76, v71, v73);
      v78 = v44 + v76;
      v50 = v101;
      v47 = v102;
      (*(v51 + 56))(v78, 0, 1, v73);
      swift_storeEnumTagMultiPayload();
    }

    v39 = v99;
    v43 = v91;
LABEL_22:
    v58 = v109;
    swift_storeEnumTagMultiPayload();
    (*(v50 + 8))(v47, v48);
    goto LABEL_23;
  }

  return result;
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance SequencePhase<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v6[0] = *(a1 + 16);
  v6[1] = v3;
  type metadata accessor for SequenceGesture.Value(255, v6);
  v4 = type metadata accessor for GesturePhase();
  return (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
}

uint64_t type metadata completion function for SequenceGesture.Value(void *a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    v4[4] = *(result - 8) + 64;
    swift_getAssociatedTypeWitness();
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v4[5] = v4;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for SequenceGesture.Value(void *a1, unsigned __int8 *a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v10;
  v12 = v7 + v10;
  v13 = (v7 + v11) & ~v11;
  if (*(v9 + 84))
  {
    v14 = *(v9 + 64);
  }

  else
  {
    v14 = *(v9 + 64) + 1;
  }

  if (v13 + v14 > v7)
  {
    v7 = v13 + v14;
  }

  v15 = *(v6 + 80) | v10;
  v16 = (*(v6 + 80) | v10);
  v17 = v15 & 0x100000;
  if (v16 > 7 || v17 != 0 || v7 + 1 > 0x18)
  {
    v20 = *a2;
    *a1 = *a2;
    a1 = (v20 + ((v16 + 16) & ~v16));

    return a1;
  }

  v21 = a2[v7];
  if (v21 >= 2)
  {
    if (v7 <= 3)
    {
      v22 = v7;
    }

    else
    {
      v22 = 4;
    }

    if (v22 <= 1)
    {
      if (!v22)
      {
        goto LABEL_30;
      }

      v23 = *a2;
    }

    else if (v22 == 2)
    {
      v23 = *a2;
    }

    else if (v22 == 3)
    {
      v23 = *a2 | (a2[2] << 16);
    }

    else
    {
      v23 = *a2;
    }

    v24 = (v23 | ((v21 - 2) << (8 * v7))) + 2;
    v25 = v23 + 2;
    if (v7 >= 4)
    {
      v21 = v25;
    }

    else
    {
      v21 = v24;
    }
  }

LABEL_30:
  __n = v14;
  v26 = v8;
  (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
  if (v21 == 1)
  {
    v27 = ~v11;
    v28 = a1 + v12;
    v29 = &a2[v12];
    if ((*(v9 + 48))(v29 & ~v11, 1, v26))
    {
      memcpy((v28 & v27), (v29 & v27), __n);
    }

    else
    {
      (*(v9 + 16))(v28 & v27, v29 & v27, v26);
      (*(v9 + 56))(v28 & v27, 0, 1, v26);
    }

    *(a1 + v7) = 1;
  }

  else
  {
    *(a1 + v7) = 0;
  }

  return a1;
}

uint64_t destroy for SequenceGesture.Value(unsigned __int8 *a1, void *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 64);
  v6 = swift_getAssociatedTypeWitness();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v20 = v7;
  v10 = *(v7 + 64);
  if (!*(v7 + 84))
  {
    ++v10;
  }

  v11 = v10 + ((v5 + v8) & ~v8);
  if (v11 <= v5)
  {
    v11 = v5;
  }

  v12 = a1[v11];
  if (v12 >= 2)
  {
    if (v11 <= 3)
    {
      v13 = v11;
    }

    else
    {
      v13 = 4;
    }

    if (v13 <= 1)
    {
      if (!v13)
      {
        goto LABEL_20;
      }

      v14 = *a1;
    }

    else if (v13 == 2)
    {
      v14 = *a1;
    }

    else if (v13 == 3)
    {
      v14 = *a1 | (a1[2] << 16);
    }

    else
    {
      v14 = *a1;
    }

    v15 = (v14 | ((v12 - 2) << (8 * v11))) + 2;
    v16 = v14 + 2;
    if (v11 >= 4)
    {
      v12 = v16;
    }

    else
    {
      v12 = v15;
    }
  }

LABEL_20:
  result = (*(v4 + 8))(a1, AssociatedTypeWitness);
  if (v12 == 1)
  {
    v18 = &a1[v9];
    result = (*(v20 + 48))(v18 & ~v8, 1, v6);
    if (!result)
    {
      v19 = *(v20 + 8);

      return v19(v18 & ~v8, v6);
    }
  }

  return result;
}

uint64_t initializeWithCopy for SequenceGesture.Value(uint64_t a1, unsigned __int16 *a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = *(v8 + 80);
  v11 = v6 + v10;
  if (*(v8 + 84))
  {
    v12 = *(v8 + 64);
  }

  else
  {
    v12 = *(v8 + 64) + 1;
  }

  if (((v6 + v10) & ~v10) + v12 <= v6)
  {
    v13 = v6;
  }

  else
  {
    v13 = ((v6 + v10) & ~v10) + v12;
  }

  v14 = *(a2 + v13);
  __n = v12;
  if (v14 < 2)
  {
    v17 = a1;
  }

  else
  {
    if (v13 <= 3)
    {
      v15 = v13;
    }

    else
    {
      v15 = 4;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v16 = *a2;
      }

      else if (v15 == 3)
      {
        v16 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v16 = *a2;
      }

      v17 = a1;
      goto LABEL_21;
    }

    v17 = a1;
    if (v15)
    {
      v16 = *a2;
LABEL_21:
      v18 = (v16 | ((v14 - 2) << (8 * v13))) + 2;
      v19 = v16 + 2;
      if (v13 >= 4)
      {
        v14 = v19;
      }

      else
      {
        v14 = v18;
      }
    }
  }

  (*(v5 + 16))(v17, a2, AssociatedTypeWitness);
  if (v14 == 1)
  {
    v20 = ~v10;
    v21 = v11 + v17;
    v22 = a2 + v11;
    if ((*(v9 + 48))(v22 & ~v10, 1, v7))
    {
      memcpy((v21 & v20), (v22 & v20), __n);
      v23 = 1;
    }

    else
    {
      (*(v9 + 16))(v21 & v20, v22 & v20, v7);
      v23 = 1;
      (*(v9 + 56))(v21 & v20, 0, 1, v7);
    }
  }

  else
  {
    v23 = 0;
  }

  *(v17 + v13) = v23;
  return v17;
}

unsigned __int8 *assignWithCopy for SequenceGesture.Value(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v7 + v10;
  v12 = (v7 + v10) & ~v10;
  if (*(v9 + 84))
  {
    v13 = *(v9 + 64);
  }

  else
  {
    v13 = *(v9 + 64) + 1;
  }

  if (v12 + v13 <= v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = v12 + v13;
  }

  v15 = a1[v14];
  __n = v13;
  if (v15 >= 2)
  {
    if (v14 <= 3)
    {
      v16 = v14;
    }

    else
    {
      v16 = 4;
    }

    if (v16 <= 1)
    {
      if (!v16)
      {
        goto LABEL_23;
      }

      v17 = *a1;
    }

    else if (v16 == 2)
    {
      v17 = *a1;
    }

    else if (v16 == 3)
    {
      v17 = *a1 | (a1[2] << 16);
    }

    else
    {
      v17 = *a1;
    }

    v18 = (v17 | ((v15 - 2) << (8 * v14))) + 2;
    v19 = v17 + 2;
    if (v14 >= 4)
    {
      v15 = v19;
    }

    else
    {
      v15 = v18;
    }
  }

LABEL_23:
  v20 = ~v10;
  (*(v6 + 8))(a1, AssociatedTypeWitness);
  if (v15 == 1 && !(*(v9 + 48))(&a1[v11] & v20, 1, v8))
  {
    (*(v9 + 8))(&a1[v11] & v20, v8);
  }

  v21 = a2[v14];
  if (v21 < 2)
  {
    goto LABEL_41;
  }

  if (v14 <= 3)
  {
    v22 = v14;
  }

  else
  {
    v22 = 4;
  }

  if (v22 <= 1)
  {
    if (!v22)
    {
      goto LABEL_41;
    }

    v23 = *a2;
  }

  else if (v22 == 2)
  {
    v23 = *a2;
  }

  else if (v22 == 3)
  {
    v23 = *a2 | (a2[2] << 16);
  }

  else
  {
    v23 = *a2;
  }

  v24 = (v23 | ((v21 - 2) << (8 * v14))) + 2;
  v25 = v23 + 2;
  if (v14 >= 4)
  {
    v21 = v25;
  }

  else
  {
    v21 = v24;
  }

LABEL_41:
  (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
  if (v21 == 1)
  {
    v26 = &a1[v11];
    v27 = &a2[v11];
    if ((*(v9 + 48))(v27 & v20, 1, v8))
    {
      memcpy((v26 & v20), (v27 & v20), __n);
      v28 = 1;
    }

    else
    {
      (*(v9 + 16))(v26 & v20, v27 & v20, v8);
      v28 = 1;
      (*(v9 + 56))(v26 & v20, 0, 1, v8);
    }
  }

  else
  {
    v28 = 0;
  }

  a1[v14] = v28;
  return a1;
}

uint64_t initializeWithTake for SequenceGesture.Value(uint64_t a1, unsigned __int16 *a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = *(v8 + 80);
  v11 = v6 + v10;
  if (*(v8 + 84))
  {
    v12 = *(v8 + 64);
  }

  else
  {
    v12 = *(v8 + 64) + 1;
  }

  if (((v6 + v10) & ~v10) + v12 <= v6)
  {
    v13 = v6;
  }

  else
  {
    v13 = ((v6 + v10) & ~v10) + v12;
  }

  v14 = *(a2 + v13);
  __n = v12;
  if (v14 < 2)
  {
    v17 = a1;
  }

  else
  {
    if (v13 <= 3)
    {
      v15 = v13;
    }

    else
    {
      v15 = 4;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v16 = *a2;
      }

      else if (v15 == 3)
      {
        v16 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v16 = *a2;
      }

      v17 = a1;
      goto LABEL_21;
    }

    v17 = a1;
    if (v15)
    {
      v16 = *a2;
LABEL_21:
      v18 = (v16 | ((v14 - 2) << (8 * v13))) + 2;
      v19 = v16 + 2;
      if (v13 >= 4)
      {
        v14 = v19;
      }

      else
      {
        v14 = v18;
      }
    }
  }

  (*(v5 + 32))(v17, a2, AssociatedTypeWitness);
  if (v14 == 1)
  {
    v20 = ~v10;
    v21 = v11 + v17;
    v22 = a2 + v11;
    if ((*(v9 + 48))(v22 & ~v10, 1, v7))
    {
      memcpy((v21 & v20), (v22 & v20), __n);
      v23 = 1;
    }

    else
    {
      (*(v9 + 32))(v21 & v20, v22 & v20, v7);
      v23 = 1;
      (*(v9 + 56))(v21 & v20, 0, 1, v7);
    }
  }

  else
  {
    v23 = 0;
  }

  *(v17 + v13) = v23;
  return v17;
}

unsigned __int8 *assignWithTake for SequenceGesture.Value(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v7 + v10;
  v12 = (v7 + v10) & ~v10;
  if (*(v9 + 84))
  {
    v13 = *(v9 + 64);
  }

  else
  {
    v13 = *(v9 + 64) + 1;
  }

  if (v12 + v13 <= v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = v12 + v13;
  }

  v15 = a1[v14];
  __n = v13;
  if (v15 >= 2)
  {
    if (v14 <= 3)
    {
      v16 = v14;
    }

    else
    {
      v16 = 4;
    }

    if (v16 <= 1)
    {
      if (!v16)
      {
        goto LABEL_23;
      }

      v17 = *a1;
    }

    else if (v16 == 2)
    {
      v17 = *a1;
    }

    else if (v16 == 3)
    {
      v17 = *a1 | (a1[2] << 16);
    }

    else
    {
      v17 = *a1;
    }

    v18 = (v17 | ((v15 - 2) << (8 * v14))) + 2;
    v19 = v17 + 2;
    if (v14 >= 4)
    {
      v15 = v19;
    }

    else
    {
      v15 = v18;
    }
  }

LABEL_23:
  v20 = ~v10;
  (*(v6 + 8))(a1, AssociatedTypeWitness);
  if (v15 == 1 && !(*(v9 + 48))(&a1[v11] & v20, 1, v8))
  {
    (*(v9 + 8))(&a1[v11] & v20, v8);
  }

  v21 = a2[v14];
  if (v21 < 2)
  {
    goto LABEL_41;
  }

  if (v14 <= 3)
  {
    v22 = v14;
  }

  else
  {
    v22 = 4;
  }

  if (v22 <= 1)
  {
    if (!v22)
    {
      goto LABEL_41;
    }

    v23 = *a2;
  }

  else if (v22 == 2)
  {
    v23 = *a2;
  }

  else if (v22 == 3)
  {
    v23 = *a2 | (a2[2] << 16);
  }

  else
  {
    v23 = *a2;
  }

  v24 = (v23 | ((v21 - 2) << (8 * v14))) + 2;
  v25 = v23 + 2;
  if (v14 >= 4)
  {
    v21 = v25;
  }

  else
  {
    v21 = v24;
  }

LABEL_41:
  (*(v6 + 32))(a1, a2, AssociatedTypeWitness);
  if (v21 == 1)
  {
    v26 = &a1[v11];
    v27 = &a2[v11];
    if ((*(v9 + 48))(v27 & v20, 1, v8))
    {
      memcpy((v26 & v20), (v27 & v20), __n);
      v28 = 1;
    }

    else
    {
      (*(v9 + 32))(v26 & v20, v27 & v20, v8);
      v28 = 1;
      (*(v9 + 56))(v26 & v20, 0, 1, v8);
    }
  }

  else
  {
    v28 = 0;
  }

  a1[v14] = v28;
  return a1;
}

uint64_t getEnumTagSinglePayload for SequenceGesture.Value(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v6 + 84))
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = *(v6 + 64) + 1;
  }

  if (v7 + ((v5 + *(v6 + 80)) & ~*(v6 + 80)) <= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_29;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v13 = ((a2 + ~(-1 << v10) - 254) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v13 < 2)
    {
LABEL_29:
      v15 = *(a1 + v8);
      if (v15 >= 2)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_29;
  }

LABEL_18:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return (v9 | v14) + 255;
}

void storeEnumTagSinglePayload for SequenceGesture.Value(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v8 + 84))
  {
    v9 = *(v8 + 64);
  }

  else
  {
    v9 = *(v8 + 64) + 1;
  }

  v10 = v9 + ((v7 + *(v8 + 80)) & ~*(v8 + 80));
  if (v10 <= v7)
  {
    v10 = v7;
  }

  v11 = v10 + 1;
  if (a3 < 0xFF)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 + ~(-1 << (8 * v11)) - 254) >> (8 * v11)) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (a2 > 0xFE)
  {
    v13 = a2 - 255;
    if (v11 >= 4)
    {
      bzero(a1, v10 + 1);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v14 = (v13 >> (8 * v11)) + 1;
    if (v10 != -1)
    {
      v17 = v13 & ~(-1 << (8 * v11));
      bzero(a1, v11);
      if (v11 != 3)
      {
        if (v11 == 2)
        {
          *a1 = v17;
          if (v12 > 1)
          {
LABEL_42:
            if (v12 == 2)
            {
              *&a1[v11] = v14;
            }

            else
            {
              *&a1[v11] = v14;
            }

            return;
          }
        }

        else
        {
          *a1 = v13;
          if (v12 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v12)
        {
          a1[v11] = v14;
        }

        return;
      }

      *a1 = v17;
      a1[2] = BYTE2(v17);
    }

    if (v12 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v12 <= 1)
  {
    if (v12)
    {
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v10] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v12 == 2)
  {
    *&a1[v11] = 0;
    goto LABEL_27;
  }

  *&a1[v11] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

uint64_t getEnumTag for SequenceGesture.Value(unsigned __int8 *a1, void *a2)
{
  v3 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v4 + 84))
  {
    v5 = *(v4 + 64);
  }

  else
  {
    v5 = *(v4 + 64) + 1;
  }

  v6 = v5 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));
  if (v6 <= v3)
  {
    v6 = v3;
  }

  result = a1[v6];
  if (result >= 2)
  {
    if (v6 <= 3)
    {
      v8 = v6;
    }

    else
    {
      v8 = 4;
    }

    if (v8 <= 1)
    {
      if (!v8)
      {
        return result;
      }

      v9 = *a1;
    }

    else if (v8 == 2)
    {
      v9 = *a1;
    }

    else if (v8 == 3)
    {
      v9 = *a1 | (a1[2] << 16);
    }

    else
    {
      v9 = *a1;
    }

    v10 = (v9 | ((result - 2) << (8 * v6))) + 2;
    v11 = v9 + 2;
    if (v6 >= 4)
    {
      return v11;
    }

    else
    {
      return v10;
    }
  }

  return result;
}

void destructiveInjectEnumTag for SequenceGesture.Value(_BYTE *a1, unsigned int a2, void *a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v6 + 84))
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = *(v6 + 64) + 1;
  }

  if (v7 + ((v5 + *(v6 + 80)) & ~*(v6 + 80)) <= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));
  }

  if (a2 <= 1)
  {
    a1[v8] = a2;
    return;
  }

  v9 = a2 - 2;
  if (v8 < 4)
  {
    a1[v8] = (v9 >> (8 * v8)) + 2;
    if (!v8)
    {
      return;
    }

    v9 &= ~(-1 << (8 * v8));
  }

  else
  {
    a1[v8] = 2;
  }

  if (v8 >= 4)
  {
    v10 = 4;
  }

  else
  {
    v10 = v8;
  }

  bzero(a1, v8);
  if (v10 > 2)
  {
    if (v10 == 3)
    {
      *a1 = v9;
      a1[2] = BYTE2(v9);
    }

    else
    {
      *a1 = v9;
    }
  }

  else if (v10 == 1)
  {
    *a1 = v9;
  }

  else
  {
    *a1 = v9;
  }
}

void AttributedString.init<A>(converting:using:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v68 = a4;
  v64 = a5;
  v9 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v62 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedSubstring?(0, &lazy cache variable for type metadata for AttributedSubstring?, MEMORY[0x1E6968968]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v67 = &v60 - v12;
  v13 = type metadata accessor for AttributedSubstring();
  v65 = *(v13 - 8);
  v66 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v61 = &v60 - v16;
  v17 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v60 - v22;
  v24 = type metadata accessor for AttributedString();
  v25 = *(v24 - 8);
  v73 = v24;
  v74 = v25;
  MEMORY[0x1EEE9AC00](v24);
  v69 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v72 = &v60 - v29;
  v30 = [a1 string];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v70 = v17;
  v71 = a2;
  v34 = *(v17 + 16);
  v34(v23, a2, a3);
  v35 = v68;
  (*(v68 + 56))(v31, v33, a3, v68);
  v34(v20, v23, a3);
  v36 = a3;
  v38 = v65;
  v37 = v66;
  v39 = a1;
  v40 = v67;
  v41 = v39;
  AttributedSubstring.init<A>(unwrapping:with:)(v39, v20, v36, v35, v67);
  v42 = (*(v38 + 48))(v40, 1, v37);
  v63 = v23;
  if (v42 != 1)
  {

    v57 = v61;
    (*(v38 + 32))(v61, v40, v37);
    (*(v38 + 16))(v60, v57, v37);
    v58 = v69;
    AttributedString.init(_:)();

    v53 = *(v70 + 8);
    v53(v71, v36);
    (*(v38 + 8))(v57, v37);
    v59 = v73;
    v44 = *(v74 + 32);
    v56 = v72;
    v44(v72, v58, v73);
    v51 = 0;
    v49 = 0;
    v55 = v59;
    goto LABEL_5;
  }

  outlined destroy of AttributedSubstring?(v40, &lazy cache variable for type metadata for AttributedSubstring?, MEMORY[0x1E6968968]);
  AttributeContainer.init()();
  v43 = v69;
  AttributedString.init(_:attributes:)();
  v44 = *(v74 + 32);
  v45 = v72;
  v74 += 32;
  v44(v72, v43, v73);
  v46 = NSAttributedString.range.getter();
  v48 = v47;
  v49 = swift_allocObject();
  v49[2] = v36;
  v49[3] = v35;
  v49[4] = v45;
  v49[5] = v23;
  v50 = swift_allocObject();
  v51 = partial apply for closure #1 in AttributedString.init<A>(converting:using:);
  *(v50 + 16) = partial apply for closure #1 in AttributedString.init<A>(converting:using:);
  *(v50 + 24) = v49;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[3] = &block_descriptor_7;
  v52 = _Block_copy(aBlock);

  [v41 enumerateAttributesInRange:v46 options:v48 usingBlock:{0, v52}];
  _Block_release(v52);

  v53 = *(v70 + 8);
  v53(v71, v36);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v55 = v73;
    v56 = v72;
LABEL_5:
    v53(v63, v36);
    v44(v64, v56, v55);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v51, v49);
    return;
  }

  __break(1u);
}

uint64_t AttributedSubstring.init<A>(unwrapping:with:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v64 = a4;
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)(0);
  v62 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v48 - v12;
  v63 = type metadata accessor for AttributedString.Index();
  v57 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - v16;
  type metadata accessor for Range<AttributedString.Index>(0);
  v58 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v61 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a1;
  type metadata accessor for NSAttributedString();
  v24 = a1;
  v65 = a3;
  swift_getExtendedExistentialTypeMetadata_unique();
  if ((swift_dynamicCast() & 1) == 0)
  {

    v68 = 0;
    v66 = 0u;
    v67 = 0u;
    (*(v20 + 8))(a2, a3);
    if (*(&v67 + 1))
    {
      __swift_destroy_boxed_opaque_existential_1(&v66);
    }

    goto LABEL_8;
  }

  v55 = v24;
  v56 = a5;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v66, v70);
  v26 = v71;
  v25 = v72;
  __swift_project_boxed_opaque_existential_1(v70, v71);
  (*(v25 + 56))(v26, v25);
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  v30 = *(v20 + 8);
  v29 = v20 + 8;
  v28 = v30;
  v30(v23, a3);
  if ((v27 & 1) == 0)
  {
    v28(a2, a3);

    __swift_destroy_boxed_opaque_existential_1(v70);
    a5 = v56;
LABEL_8:
    v46 = 1;
    goto LABEL_9;
  }

  v51 = v28;
  v52 = v29;
  v53 = a2;
  v32 = v71;
  v31 = v72;
  v54 = __swift_project_boxed_opaque_existential_1(v70, v71);
  v64 = *(v31 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(&v67 + 1) = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v68 = AssociatedConformanceWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v66);
  v64(v32, v31);
  dispatch thunk of AttributedStringProtocol.startIndex.getter();
  v54 = boxed_opaque_existential_1;
  v64 = AssociatedConformanceWitness;
  dispatch thunk of AttributedStringProtocol.endIndex.getter();
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_0(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
  v36 = v63;
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v38 = v57;
    v39 = *(v57 + 32);
    v50 = AssociatedTypeWitness;
    v40 = v59;
    v39(v59, v17, v36);
    v41 = v62;
    v39((v40 + *(v62 + 48)), v14, v36);
    v42 = v60;
    outlined init with copy of (lower: AttributedString.Index, upper: AttributedString.Index)(v40, v60);
    v43 = *(v41 + 48);
    v44 = v61;
    v39(v61, v42, v36);
    v49 = a3;
    v45 = *(v38 + 8);
    v45(v42 + v43, v36);
    outlined init with take of Range<AttributedString.Index>(v40, v42, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    v39((v44 + *(v58 + 36)), (v42 + *(v41 + 48)), v36);
    v45(v42, v36);
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_0(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
    a5 = v56;
    dispatch thunk of AttributedStringProtocol.subscript.getter();

    v51(v53, v49);
    outlined destroy of Range<AttributedString.Index>(v44);
    __swift_destroy_boxed_opaque_existential_1(&v66);
    __swift_destroy_boxed_opaque_existential_1(v70);
    v46 = 0;
LABEL_9:
    v47 = type metadata accessor for AttributedSubstring();
    return (*(*(v47 - 8) + 56))(a5, v46, 1, v47);
  }

  __break(1u);
  return result;
}