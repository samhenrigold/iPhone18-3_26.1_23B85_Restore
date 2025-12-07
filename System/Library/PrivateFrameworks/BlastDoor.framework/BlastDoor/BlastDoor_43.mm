id sub_2143EB164()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C68, &qword_2146EE6E8);
  MEMORY[0x28223BE20](v2 - 8);
  v286 = &v281 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904870, &qword_2146EDB60);
  MEMORY[0x28223BE20](v4 - 8);
  v285 = &v281 - v5;
  v314 = type metadata accessor for LinkPresentation.AudioMetadata(0);
  v287 = *(v314 - 1);
  MEMORY[0x28223BE20](v314);
  v7 = &v281 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v312 = type metadata accessor for LinkPresentation.VideoMetadata(0);
  v290 = *(v312 - 8);
  v8 = MEMORY[0x28223BE20](v312);
  v311 = &v281 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v310 = &v281 - v10;
  v313 = type metadata accessor for LinkPresentation.IconMetadata(0);
  v289 = *(v313 - 8);
  MEMORY[0x28223BE20](v313);
  v307 = &v281 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v315 = type metadata accessor for LinkPresentation.ARAssetMetadata(0);
  v288 = *(v315 - 8);
  MEMORY[0x28223BE20](v315);
  v306 = &v281 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C60, &qword_2146EE6E0);
  MEMORY[0x28223BE20](v13 - 8);
  v284 = &v281 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C58, &unk_2146F6450);
  MEMORY[0x28223BE20](v15 - 8);
  v283 = &v281 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C50, &unk_2146EE6D0);
  MEMORY[0x28223BE20](v17 - 8);
  v282 = &v281 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904888, &unk_2146EDB80);
  MEMORY[0x28223BE20](v19 - 8);
  v281 = &v281 - v20;
  v21 = type metadata accessor for LinkPresentation.ImageMetadata(0);
  v291 = *(v21 - 1);
  v22 = MEMORY[0x28223BE20](v21);
  v309 = &v281 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v308 = &v281 - v25;
  MEMORY[0x28223BE20](v24);
  v317 = &v281 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C48, &qword_2146EE6C8);
  MEMORY[0x28223BE20](v27 - 8);
  v318 = &v281 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C40, &qword_2146EE6C0);
  MEMORY[0x28223BE20](v29 - 8);
  v316 = &v281 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C38, &qword_2146EE6B8);
  MEMORY[0x28223BE20](v31 - 8);
  v296 = &v281 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v304 = &v281 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v303 = &v281 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v302 = &v281 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v301 = &v281 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v300 = &v281 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v299 = &v281 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v298 = &v281 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v297 = &v281 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v52 = &v281 - v51;
  v53 = MEMORY[0x28223BE20](v50);
  v55 = &v281 - v54;
  MEMORY[0x28223BE20](v53);
  v57 = &v281 - v56;
  v294 = [objc_allocWithZone(_BlastDoorLPLinkMetadata) init];
  v305 = type metadata accessor for LinkPresentation.LinkMetadata(0);
  sub_213FB2E54(v0 + v305[5], v57, &unk_27C9131A0, &unk_2146E9D10);
  v58 = sub_2146D8958();
  v293 = *(v58 - 8);
  v319 = *(v293 + 48);
  v320 = v293 + 48;
  v59 = 0;
  if (v319(v57, 1, v58) != 1)
  {
    v59 = sub_2146D8898();
    (*(v293 + 8))(v57, v58);
  }

  v60 = v294;
  [v294 setOriginalURL_];

  v61 = v305;
  sub_213FB2E54(v1 + v305[6], v55, &unk_27C9131A0, &unk_2146E9D10);
  if (v319(v55, 1, v58) == 1)
  {
    v62 = 0;
  }

  else
  {
    v62 = sub_2146D8898();
    (*(v293 + 8))(v55, v58);
  }

  v63 = v296;
  [v60 setURL_];

  if (*(v1 + v61[7] + 8))
  {
    v64 = sub_2146D9588();
  }

  else
  {
    v64 = 0;
  }

  [v60 setTitle_];

  if (*(v1 + v61[8] + 8))
  {
    v65 = sub_2146D9588();
  }

  else
  {
    v65 = 0;
  }

  [v60 setSummary_];

  if (*(v1 + v61[9] + 8))
  {
    v66 = sub_2146D9588();
  }

  else
  {
    v66 = 0;
  }

  [v60 setSelectedText_];

  if (*(v1 + v61[10] + 8))
  {
    v67 = sub_2146D9588();
  }

  else
  {
    v67 = 0;
  }

  [v60 setSiteName_];

  if (*(v1 + v61[11] + 8))
  {
    v68 = sub_2146D9588();
  }

  else
  {
    v68 = 0;
  }

  [v60 setItemType_];

  sub_213FB2E54(v1 + v61[12], v52, &unk_27C9131A0, &unk_2146E9D10);
  if (v319(v52, 1, v58) == 1)
  {
    v69 = 0;
  }

  else
  {
    v69 = sub_2146D8898();
    (*(v293 + 8))(v52, v58);
  }

  [v60 setRelatedURL_];

  if (*(v1 + v61[13] + 8))
  {
    v70 = sub_2146D9588();
  }

  else
  {
    v70 = 0;
  }

  [v60 setCreator_];

  if (*(v1 + v61[14] + 8))
  {
    v71 = sub_2146D9588();
  }

  else
  {
    v71 = 0;
  }

  [v60 setCreatorFacebookProfile_];

  if (*(v1 + v61[15] + 8))
  {
    v72 = sub_2146D9588();
  }

  else
  {
    v72 = 0;
  }

  [v60 setCreatorTwitterUsername_];

  if (*(v1 + v61[16] + 8))
  {
    v73 = sub_2146D9588();
  }

  else
  {
    v73 = 0;
  }

  [v60 setTwitterCard_];

  [v60 setUsesActivityPub_];
  if (*(v1 + v61[19] + 8))
  {
    v74 = sub_2146D9588();
  }

  else
  {
    v74 = 0;
  }

  [v60 setAppleContentID_];

  if (*(v1 + v61[20] + 8))
  {
    v75 = sub_2146D9588();
  }

  else
  {
    v75 = 0;
  }

  [v60 setAppleSummary_];

  v76 = (v1 + v61[21]);
  v77 = v76[5];
  v354 = v76[4];
  v355 = v77;
  v356[0] = v76[6];
  *(v356 + 9) = *(v76 + 105);
  v78 = v76[1];
  v350 = *v76;
  v351 = v78;
  v79 = v76[3];
  v352 = v76[2];
  v353 = v79;
  if (sub_2144009B4(&v350) == 1)
  {
    v80 = 0;
  }

  else
  {
    v336 = v354;
    v337 = v355;
    v338[0] = v356[0];
    *(v338 + 9) = *(v356 + 9);
    v333 = v350;
    v334[0] = v351;
    v334[1] = v352;
    v335 = v353;
    v80 = sub_2143F7CD4();
  }

  [v60 setIcon_];

  sub_213FB2E54(v1 + v61[22], v63, &qword_27C904C38, &qword_2146EE6B8);
  if ((*(v289 + 48))(v63, 1, v313) == 1)
  {
    sub_213FB2DF4(v63, &qword_27C904C38, &qword_2146EE6B8);
    v81 = 0;
  }

  else
  {
    v81 = sub_2143F7F44();
    sub_214400B04(v63, type metadata accessor for LinkPresentation.IconMetadata);
  }

  [v60 setIconMetadata_];

  v82 = (v1 + v61[23]);
  v83 = *(v82 + 2);
  if (v83 == 1)
  {
    v84 = 0;
  }

  else
  {
    v333 = *v82;
    *&v334[0] = v83;
    *(v334 + 8) = *(v82 + 24);
    v84 = sub_2143F80EC();
  }

  [v60 setArAsset_];

  v85 = v316;
  sub_213FB2E54(v1 + v61[24], v316, &qword_27C904C40, &qword_2146EE6C0);
  if ((*(v288 + 48))(v85, 1, v315) == 1)
  {
    sub_213FB2DF4(v85, &qword_27C904C40, &qword_2146EE6C0);
    v86 = 0;
  }

  else
  {
    v87 = v85;
    v86 = sub_2143F88F4(off_278175140, type metadata accessor for LinkPresentation.ARAssetMetadata);
    sub_214400B04(v87, type metadata accessor for LinkPresentation.ARAssetMetadata);
  }

  [v60 setArAssetMetadata_];

  v88 = (v1 + v61[25]);
  v89 = v88[5];
  v347 = v88[4];
  v348 = v89;
  v349[0] = v88[6];
  *(v349 + 9) = *(v88 + 105);
  v90 = v88[1];
  v343 = *v88;
  v344 = v90;
  v91 = v88[3];
  v345 = v88[2];
  v346 = v91;
  if (sub_2144009B4(&v343) == 1)
  {
    v92 = 0;
  }

  else
  {
    v336 = v347;
    v337 = v348;
    v338[0] = v349[0];
    *(v338 + 9) = *(v349 + 9);
    v333 = v343;
    v334[0] = v344;
    v334[1] = v345;
    v335 = v346;
    v92 = sub_2143F7CD4();
  }

  [v60 setImage_];

  v93 = *(v1 + v61[26]);
  v292 = v1;
  if (v93)
  {
    v94 = *(v93 + 16);
    if (v94)
    {
      *&v321 = MEMORY[0x277D84F90];
      sub_2146D9FB8();
      v95 = (v93 + 32);
      do
      {
        v336 = v95[4];
        v337 = v95[5];
        v338[0] = v95[6];
        *(v338 + 9) = *(v95 + 105);
        v333 = *v95;
        v334[0] = v95[1];
        v334[1] = v95[2];
        v335 = v95[3];
        sub_2143F7CD4();
        sub_2146D9F98();
        sub_2146D9FC8();
        sub_2146D9FD8();
        sub_2146D9FA8();
        v95 += 8;
        --v94;
      }

      while (v94);
      v1 = v292;
      v60 = v294;
    }

    sub_21404A8B8(0, &qword_27C912A80, off_2781751E0);
    v96 = sub_2146D98E8();
  }

  else
  {
    v96 = 0;
  }

  v97 = v305;
  [v60 setAlternateImages_];

  v98 = v318;
  sub_213FB2E54(v1 + v97[27], v318, &qword_27C904C48, &qword_2146EE6C8);
  if ((*(v291 + 48))(v98, 1, v21) == 1)
  {
    sub_213FB2DF4(v98, &qword_27C904C48, &qword_2146EE6C8);
    v99 = 0;
  }

  else
  {
    v99 = sub_2143F8554(off_2781751F0, type metadata accessor for LinkPresentation.ImageMetadata);
    sub_214400B04(v98, type metadata accessor for LinkPresentation.ImageMetadata);
  }

  [v60 setImageMetadata_];

  v100 = *(v1 + v97[28]);
  v316 = v7;
  v318 = v58;
  if (v100)
  {
    v101 = *(v100 + 16);
    if (v101)
    {
      *&v321 = MEMORY[0x277D84F90];
      sub_2146D9FB8();
      if (*(v100 + 16))
      {
        v102 = 0;
        v103 = (v100 + 32);
        while (1)
        {
          v336 = v103[4];
          v337 = v103[5];
          v338[0] = v103[6];
          *(v338 + 9) = *(v103 + 105);
          v333 = *v103;
          v334[0] = v103[1];
          v334[1] = v103[2];
          v335 = v103[3];
          sub_2143F7CD4();
          sub_2146D9F98();
          sub_2146D9FC8();
          sub_2146D9FD8();
          sub_2146D9FA8();
          if (v101 - 1 == v102)
          {
            break;
          }

          v103 += 8;
          if (++v102 >= *(v100 + 16))
          {
            goto LABEL_73;
          }
        }
      }

      else
      {
LABEL_73:
        __break(1u);
      }

      v1 = v292;
      v60 = v294;
      v7 = v316;
      v58 = v318;
    }

    sub_21404A8B8(0, &qword_27C912A80, off_2781751E0);
    v104 = sub_2146D98E8();
  }

  else
  {
    v104 = 0;
  }

  v105 = v305;
  [v60 setContentImages_];

  v106 = *(v1 + v105[29]);
  if (v106)
  {
    v107 = *(v106 + 16);
    if (v107)
    {
      *&v333 = MEMORY[0x277D84F90];
      sub_2146D9FB8();
      v108 = v106 + ((*(v291 + 80) + 32) & ~*(v291 + 80));
      v295 = (v293 + 8);
      v109 = *(v291 + 72);
      v110 = &unk_27C9131A0;
      v111 = 0x278175000uLL;
      do
      {
        v113 = v317;
        sub_2144009D8(v108, v317, type metadata accessor for LinkPresentation.ImageMetadata);
        v114 = [objc_allocWithZone(*(v111 + 496)) init];
        v115 = v113 + v21[5];
        v116 = v297;
        sub_213FB2E54(v115, v297, v110, &unk_2146E9D10);
        if (v319(v116, 1, v58) == 1)
        {
          v117 = 0;
        }

        else
        {
          v296 = v107;
          v118 = v58;
          v119 = v109;
          v120 = v111;
          v121 = v21;
          v122 = v110;
          v123 = v116;
          v117 = sub_2146D8898();
          v124 = v123;
          v110 = v122;
          v21 = v121;
          v111 = v120;
          v109 = v119;
          v125 = v118;
          v107 = v296;
          (*v295)(v124, v125);
        }

        [v114 setURL_];

        if (*(v317 + v21[6] + 8))
        {
          v126 = sub_2146D9588();
        }

        else
        {
          v126 = 0;
        }

        [v114 setType_];

        v127 = v317;
        [v114 setSize_];
        if (*(v127 + v21[8] + 8))
        {
          v112 = sub_2146D9588();
        }

        else
        {
          v112 = 0;
        }

        [v114 setAccessibilityText_];

        sub_214400B04(v317, type metadata accessor for LinkPresentation.ImageMetadata);
        sub_2146D9F98();
        sub_2146D9FC8();
        sub_2146D9FD8();
        sub_2146D9FA8();
        v108 += v109;
        --v107;
        v58 = v318;
      }

      while (v107);
      v1 = v292;
      v60 = v294;
      v7 = v316;
    }

    sub_21404A8B8(0, &qword_27C912A98, off_2781751F0);
    v128 = sub_2146D98E8();
  }

  else
  {
    v128 = 0;
  }

  v129 = v305;
  v130 = v283;
  v131 = v281;
  [v60 setContentImagesMetadata_];

  sub_213FB2E54(v1 + v129[30], v131, &qword_27C904888, &unk_2146EDB80);
  v132 = type metadata accessor for LinkPresentation.Video(0);
  if ((*(*(v132 - 8) + 48))(v131, 1, v132) == 1)
  {
    sub_213FB2DF4(v131, &qword_27C904888, &unk_2146EDB80);
    v133 = 0;
  }

  else
  {
    v133 = sub_2143F8214();
    sub_214400B04(v131, type metadata accessor for LinkPresentation.Video);
  }

  v134 = v284;
  [v60 setVideo_];

  v135 = v305;
  v136 = v282;
  sub_213FB2E54(v1 + v305[31], v282, &qword_27C904C50, &unk_2146EE6D0);
  if ((*(v290 + 48))(v136, 1, v312) == 1)
  {
    sub_213FB2DF4(v136, &qword_27C904C50, &unk_2146EE6D0);
    v137 = 0;
  }

  else
  {
    v138 = v1;
    v139 = v136;
    v137 = sub_2143F8554(off_278175280, type metadata accessor for LinkPresentation.VideoMetadata);
    v140 = v139;
    v1 = v138;
    v135 = v305;
    sub_214400B04(v140, type metadata accessor for LinkPresentation.VideoMetadata);
  }

  [v60 setVideoMetadata_];

  sub_213FB2E54(v1 + v135[32], v130, &qword_27C904C58, &unk_2146F6450);
  v141 = type metadata accessor for LinkPresentation.Audio(0);
  if ((*(*(v141 - 8) + 48))(v130, 1, v141) == 1)
  {
    sub_213FB2DF4(v130, &qword_27C904C58, &unk_2146F6450);
    v142 = 0;
  }

  else
  {
    v142 = sub_2143F875C();
    sub_214400B04(v130, type metadata accessor for LinkPresentation.Audio);
  }

  [v60 setAudio_];

  sub_213FB2E54(v1 + v135[33], v134, &qword_27C904C60, &qword_2146EE6E0);
  if ((*(v287 + 48))(v134, 1, v314) == 1)
  {
    sub_213FB2DF4(v134, &qword_27C904C60, &qword_2146EE6E0);
    v143 = 0;
  }

  else
  {
    v143 = sub_2143F88F4(off_2781751A0, type metadata accessor for LinkPresentation.AudioMetadata);
    sub_214400B04(v134, type metadata accessor for LinkPresentation.AudioMetadata);
  }

  [v60 setAudioMetadata_];

  v144 = *(v1 + v135[34]);
  if (v144)
  {
    v145 = *(v144 + 16);
    if (v145)
    {
      *&v333 = MEMORY[0x277D84F90];
      sub_2146D9FB8();
      v146 = v144 + ((*(v288 + 80) + 32) & ~*(v288 + 80));
      v147 = *(v288 + 72);
      v148 = (v293 + 8);
      v149 = v306;
      do
      {
        sub_2144009D8(v146, v149, type metadata accessor for LinkPresentation.ARAssetMetadata);
        v151 = [objc_allocWithZone(_BlastDoorLPARAssetMetadata) init];
        v152 = v149 + *(v315 + 20);
        v153 = v298;
        sub_213FB2E54(v152, v298, &unk_27C9131A0, &unk_2146E9D10);
        if (v319(v153, 1, v58) == 1)
        {
          v154 = 0;
        }

        else
        {
          v154 = sub_2146D8898();
          (*v148)(v153, v58);
        }

        [v151 setURL_];

        v149 = v306;
        if (*&v306[*(v315 + 24) + 8])
        {
          v155 = sub_2146D9588();
        }

        else
        {
          v155 = 0;
        }

        [v151 setType_];

        if (*(v149 + *(v315 + 28) + 8))
        {
          v150 = sub_2146D9588();
        }

        else
        {
          v150 = 0;
        }

        [v151 setAccessibilityText_];

        sub_214400B04(v149, type metadata accessor for LinkPresentation.ARAssetMetadata);
        sub_2146D9F98();
        sub_2146D9FC8();
        sub_2146D9FD8();
        sub_2146D9FA8();
        v146 += v147;
        --v145;
        v58 = v318;
      }

      while (v145);
      v1 = v292;
      v60 = v294;
      v7 = v316;
    }

    sub_21404A8B8(0, &qword_27C912A90, off_278175140);
    v156 = sub_2146D98E8();
  }

  else
  {
    v156 = 0;
  }

  v157 = v305;
  [v60 setArAssets_];

  v158 = *(v1 + v157[35]);
  if (v158)
  {
    v159 = *(v158 + 16);
    if (v159)
    {
      *&v333 = MEMORY[0x277D84F90];
      sub_2146D9FB8();
      v160 = v158 + ((*(v289 + 80) + 32) & ~*(v289 + 80));
      v161 = *(v289 + 72);
      v162 = (v293 + 8);
      v163 = v307;
      do
      {
        sub_2144009D8(v160, v163, type metadata accessor for LinkPresentation.IconMetadata);
        v165 = [objc_allocWithZone(_BlastDoorLPIconMetadata) init];
        v166 = v163 + *(v313 + 20);
        v167 = v299;
        sub_213FB2E54(v166, v299, &unk_27C9131A0, &unk_2146E9D10);
        if (v319(v167, 1, v58) == 1)
        {
          v168 = 0;
        }

        else
        {
          v168 = sub_2146D8898();
          (*v162)(v167, v58);
        }

        [v165 setURL_];

        v163 = v307;
        if (*&v307[*(v313 + 24) + 8])
        {
          v164 = sub_2146D9588();
        }

        else
        {
          v164 = 0;
        }

        [v165 setAccessibilityText_];

        sub_214400B04(v163, type metadata accessor for LinkPresentation.IconMetadata);
        sub_2146D9F98();
        sub_2146D9FC8();
        sub_2146D9FD8();
        sub_2146D9FA8();
        v160 += v161;
        --v159;
        v58 = v318;
      }

      while (v159);
      v1 = v292;
      v60 = v294;
      v7 = v316;
    }

    sub_21404A8B8(0, &qword_27C912AA0, off_2781751D8);
    v169 = sub_2146D98E8();
  }

  else
  {
    v169 = 0;
  }

  v170 = v305;
  [v60 setIcons_];

  v171 = *(v1 + v170[36]);
  if (v171)
  {
    v172 = *(v171 + 16);
    if (v172)
    {
      *&v333 = MEMORY[0x277D84F90];
      sub_2146D9FB8();
      v173 = v171 + ((*(v291 + 80) + 32) & ~*(v291 + 80));
      v174 = (v293 + 8);
      v175 = *(v291 + 72);
      v176 = v308;
      do
      {
        sub_2144009D8(v173, v176, type metadata accessor for LinkPresentation.ImageMetadata);
        v178 = [objc_allocWithZone(_BlastDoorLPImageMetadata) init];
        v179 = v176 + v21[5];
        v180 = v300;
        sub_213FB2E54(v179, v300, &unk_27C9131A0, &unk_2146E9D10);
        if (v319(v180, 1, v58) == 1)
        {
          v181 = 0;
        }

        else
        {
          v181 = sub_2146D8898();
          (*v174)(v180, v58);
        }

        [v178 setURL_];

        v176 = v308;
        if (*&v308[v21[6] + 8])
        {
          v182 = sub_2146D9588();
        }

        else
        {
          v182 = 0;
        }

        [v178 setType_];

        [v178 setSize_];
        if (*(v176 + v21[8] + 8))
        {
          v177 = sub_2146D9588();
        }

        else
        {
          v177 = 0;
        }

        [v178 setAccessibilityText_];

        sub_214400B04(v176, type metadata accessor for LinkPresentation.ImageMetadata);
        sub_2146D9F98();
        sub_2146D9FC8();
        sub_2146D9FD8();
        sub_2146D9FA8();
        v173 += v175;
        --v172;
        v58 = v318;
      }

      while (v172);
      v1 = v292;
      v60 = v294;
      v7 = v316;
    }

    sub_21404A8B8(0, &qword_27C912A98, off_2781751F0);
    v183 = sub_2146D98E8();
  }

  else
  {
    v183 = 0;
  }

  v184 = v305;
  [v60 setImages_];

  v185 = *(v1 + v184[37]);
  if (v185)
  {
    v186 = *(v185 + 16);
    if (v186)
    {
      *&v333 = MEMORY[0x277D84F90];
      sub_2146D9FB8();
      v187 = v185 + ((*(v291 + 80) + 32) & ~*(v291 + 80));
      v188 = (v293 + 8);
      v189 = *(v291 + 72);
      v190 = v309;
      do
      {
        sub_2144009D8(v187, v190, type metadata accessor for LinkPresentation.ImageMetadata);
        v192 = [objc_allocWithZone(_BlastDoorLPImageMetadata) init];
        v193 = v190 + v21[5];
        v194 = v301;
        sub_213FB2E54(v193, v301, &unk_27C9131A0, &unk_2146E9D10);
        if (v319(v194, 1, v58) == 1)
        {
          v195 = 0;
        }

        else
        {
          v195 = sub_2146D8898();
          (*v188)(v194, v58);
        }

        [v192 setURL_];

        v190 = v309;
        if (*&v309[v21[6] + 8])
        {
          v196 = sub_2146D9588();
        }

        else
        {
          v196 = 0;
        }

        [v192 setType_];

        [v192 setSize_];
        if (*(v190 + v21[8] + 8))
        {
          v191 = sub_2146D9588();
        }

        else
        {
          v191 = 0;
        }

        [v192 setAccessibilityText_];

        sub_214400B04(v190, type metadata accessor for LinkPresentation.ImageMetadata);
        sub_2146D9F98();
        sub_2146D9FC8();
        sub_2146D9FD8();
        sub_2146D9FA8();
        v187 += v189;
        --v186;
        v58 = v318;
      }

      while (v186);
      v1 = v292;
      v60 = v294;
      v7 = v316;
    }

    sub_21404A8B8(0, &qword_27C912A98, off_2781751F0);
    v197 = sub_2146D98E8();
  }

  else
  {
    v197 = 0;
  }

  v198 = v305;
  [v60 setAvailableContentImages_];

  v199 = *(v1 + v198[38]);
  if (v199)
  {
    v200 = *(v199 + 16);
    if (v200)
    {
      *&v333 = MEMORY[0x277D84F90];
      sub_2146D9FB8();
      v201 = v199 + ((*(v290 + 80) + 32) & ~*(v290 + 80));
      v315 = v293 + 8;
      v202 = *(v290 + 72);
      v203 = &unk_27C9131A0;
      v204 = 0x278175000uLL;
      v205 = v310;
      do
      {
        sub_2144009D8(v201, v205, type metadata accessor for LinkPresentation.VideoMetadata);
        v207 = [objc_allocWithZone(*(v204 + 640)) init];
        v208 = v312;
        v209 = v302;
        sub_213FB2E54(v205 + *(v312 + 20), v302, v203, &unk_2146E9D10);
        v210 = v318;
        if (v319(v209, 1, v318) == 1)
        {
          v211 = 0;
        }

        else
        {
          v317 = v200;
          v212 = v202;
          v213 = v204;
          v214 = v203;
          v215 = v209;
          v211 = sub_2146D8898();
          v216 = v215;
          v203 = v214;
          v204 = v213;
          v202 = v212;
          v200 = v317;
          (*v315)(v216, v210);
        }

        [v207 setURL_];

        v205 = v310;
        if (*&v310[v208[6] + 8])
        {
          v217 = sub_2146D9588();
        }

        else
        {
          v217 = 0;
        }

        [v207 setType_];

        [v207 setSize_];
        if (*(v205 + v208[8] + 8))
        {
          v206 = sub_2146D9588();
        }

        else
        {
          v206 = 0;
        }

        [v207 setAccessibilityText_];

        sub_214400B04(v205, type metadata accessor for LinkPresentation.VideoMetadata);
        sub_2146D9F98();
        sub_2146D9FC8();
        sub_2146D9FD8();
        sub_2146D9FA8();
        v201 += v202;
        --v200;
        v7 = v316;
      }

      while (v200);
      v1 = v292;
      v60 = v294;
    }

    sub_21404A8B8(0, &qword_27C912AA8, off_278175280);
    v218 = sub_2146D98E8();
  }

  else
  {
    v218 = 0;
  }

  v219 = v305;
  [v60 setVideos_];

  v220 = *(v1 + v219[39]);
  if (v220)
  {
    v221 = *(v220 + 16);
    if (v221)
    {
      *&v333 = MEMORY[0x277D84F90];
      sub_2146D9FB8();
      v222 = v220 + ((*(v290 + 80) + 32) & ~*(v290 + 80));
      v315 = v293 + 8;
      v223 = *(v290 + 72);
      v224 = &unk_27C9131A0;
      v225 = 0x278175000uLL;
      v226 = v311;
      do
      {
        sub_2144009D8(v222, v226, type metadata accessor for LinkPresentation.VideoMetadata);
        v228 = [objc_allocWithZone(*(v225 + 640)) init];
        v229 = v312;
        v230 = v303;
        sub_213FB2E54(v226 + *(v312 + 20), v303, v224, &unk_2146E9D10);
        v231 = v318;
        if (v319(v230, 1, v318) == 1)
        {
          v232 = 0;
        }

        else
        {
          v317 = v221;
          v233 = v223;
          v234 = v225;
          v235 = v224;
          v236 = v230;
          v232 = sub_2146D8898();
          v237 = v236;
          v224 = v235;
          v225 = v234;
          v223 = v233;
          v221 = v317;
          (*v315)(v237, v231);
        }

        [v228 setURL_];

        if (*&v311[v229[6] + 8])
        {
          v238 = sub_2146D9588();
        }

        else
        {
          v238 = 0;
        }

        [v228 setType_];

        v226 = v311;
        [v228 setSize_];
        if (*(v226 + v229[8] + 8))
        {
          v227 = sub_2146D9588();
        }

        else
        {
          v227 = 0;
        }

        [v228 setAccessibilityText_];

        sub_214400B04(v226, type metadata accessor for LinkPresentation.VideoMetadata);
        sub_2146D9F98();
        sub_2146D9FC8();
        sub_2146D9FD8();
        sub_2146D9FA8();
        v222 += v223;
        --v221;
        v7 = v316;
      }

      while (v221);
      v1 = v292;
      v60 = v294;
    }

    sub_21404A8B8(0, &qword_27C912AA8, off_278175280);
    v239 = sub_2146D98E8();
  }

  else
  {
    v239 = 0;
  }

  v240 = v305;
  [v60 setStreamingVideos_];

  v241 = *(v1 + v240[40]);
  if (v241)
  {
    v242 = *(v241 + 16);
    if (v242)
    {
      *&v333 = MEMORY[0x277D84F90];
      sub_2146D9FB8();
      v243 = v241 + ((*(v287 + 80) + 32) & ~*(v287 + 80));
      v244 = *(v287 + 72);
      v315 = v293 + 8;
      v245 = 0x278175000uLL;
      v246 = &unk_27C9131A0;
      do
      {
        sub_2144009D8(v243, v7, type metadata accessor for LinkPresentation.AudioMetadata);
        v248 = [objc_allocWithZone(*(v245 + 416)) init];
        v249 = v304;
        sub_213FB2E54(&v7[v314[5]], v304, v246, &unk_2146E9D10);
        v250 = v318;
        if (v319(v249, 1, v318) == 1)
        {
          v251 = 0;
        }

        else
        {
          v317 = v242;
          v252 = v7;
          v253 = v246;
          v254 = v244;
          v255 = v245;
          v256 = v249;
          v251 = sub_2146D8898();
          v257 = v256;
          v245 = v255;
          v244 = v254;
          v246 = v253;
          v7 = v252;
          v242 = v317;
          (*v315)(v257, v250);
        }

        [v248 setURL_];

        if (*&v7[v314[6] + 8])
        {
          v258 = sub_2146D9588();
        }

        else
        {
          v258 = 0;
        }

        [v248 setType_];

        if (*&v7[v314[7] + 8])
        {
          v247 = sub_2146D9588();
        }

        else
        {
          v247 = 0;
        }

        [v248 setAccessibilityText_];

        sub_214400B04(v7, type metadata accessor for LinkPresentation.AudioMetadata);
        sub_2146D9F98();
        sub_2146D9FC8();
        v7 = v316;
        sub_2146D9FD8();
        sub_2146D9FA8();
        v243 += v244;
        --v242;
      }

      while (v242);
      v1 = v292;
      v60 = v294;
    }

    sub_21404A8B8(0, &qword_27C912AB0, off_2781751A0);
    v259 = sub_2146D98E8();
  }

  else
  {
    v259 = 0;
  }

  v260 = v305;
  [v60 setAudios_];

  v261 = v285;
  sub_213FB2E54(v1 + v260[41], v285, &qword_27C904870, &qword_2146EDB60);
  v262 = type metadata accessor for LinkPresentation.SpecializationMetadata(0);
  if ((*(*(v262 - 8) + 48))(v261, 1, v262) == 1)
  {
    sub_213FB2DF4(v261, &qword_27C904870, &qword_2146EDB60);
    v263 = 0;
  }

  else
  {
    v263 = sub_2143F8AE0();
    sub_214400B04(v261, type metadata accessor for LinkPresentation.SpecializationMetadata);
  }

  v264 = v286;
  [v60 setSpecialization_];

  v265 = v1 + v260[18];
  if (*(v265 + 32))
  {
    v266 = 0;
  }

  else
  {
    v268 = *(v265 + 16);
    v267 = *(v265 + 24);
    v270 = *v265;
    v269 = *(v265 + 8);
    v266 = [objc_allocWithZone(_BlastDoorLPPlatformColor) init];
    [v266 setR_];
    [v266 setG_];
    [v266 setB_];
    [v266 setA_];
  }

  [v60 setThemeColor_];

  v271 = (v1 + v260[42]);
  v272 = v271[9];
  v339 = v271[8];
  v340 = v272;
  v341 = v271[10];
  v342 = *(v271 + 22);
  v273 = v271[5];
  v336 = v271[4];
  v337 = v273;
  v274 = v271[7];
  v338[0] = v271[6];
  v338[1] = v274;
  v275 = v271[1];
  v333 = *v271;
  v334[0] = v275;
  v276 = v271[3];
  v334[1] = v271[2];
  v335 = v276;
  if (get_enum_tag_for_layout_string_9BlastDoor16LinkPresentationO13PostalAddressVSg_0(&v333) == 1)
  {
    v277 = 0;
  }

  else
  {
    v329 = v339;
    v330 = v340;
    v331 = v341;
    v332 = v342;
    v325 = v336;
    v326 = v337;
    v327 = v338[0];
    v328 = v338[1];
    v321 = v333;
    v322 = v334[0];
    v323 = v334[1];
    v324 = v335;
    v277 = sub_2143FF8F0();
  }

  [v60 setAssociatedApplication_];

  sub_213FB2E54(v1 + v260[43], v264, &qword_27C904C68, &qword_2146EE6E8);
  v278 = type metadata accessor for CollaborationMetadata(0);
  if ((*(*(v278 - 8) + 48))(v264, 1, v278) == 1)
  {
    sub_213FB2DF4(v264, &qword_27C904C68, &qword_2146EE6E8);
    v279 = 0;
  }

  else
  {
    v279 = sub_214499F88();
    sub_214400B04(v264, type metadata accessor for CollaborationMetadata);
  }

  [v60 setCollaborationMetadata_];

  return v60;
}

uint64_t sub_2143EDE48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2144008B4(&v56);
  v53 = v60;
  v54 = v61;
  v55[0] = v62[0];
  *(v55 + 9) = *(v62 + 9);
  v49 = v56;
  v50 = v57;
  v51 = v58;
  v52 = v59;
  v5 = [a1 bundleIdentifier];
  if (v5)
  {
    v6 = v5;
    v7 = sub_2146D95B8();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = [a1 icon];
  if (v10)
  {
    v11 = v10;
    sub_2143EE118(v11, &v42);
    if (v2)
    {

      v32 = v53;
      v33 = v54;
      v34[0] = v55[0];
      *(v34 + 9) = *(v55 + 9);
      v28 = v49;
      v29 = v50;
      v30 = v51;
      v31 = v52;
      return sub_213FB2DF4(&v28, &qword_27C904868, &qword_2146EDB58);
    }

    nullsub_1();
  }

  else
  {
    v46 = v60;
    v47 = v61;
    v48[0] = v62[0];
    *(v48 + 9) = *(v62 + 9);
    v42 = v56;
    v43 = v57;
    v44 = v58;
    v45 = v59;
  }

  v39 = v46;
  v40 = v47;
  v41[0] = v48[0];
  *(v41 + 9) = *(v48 + 9);
  v35 = v42;
  v36 = v43;
  v37 = v44;
  v38 = v45;
  v13 = [a1 caption];
  v14 = v9;
  if (v13)
  {
    v15 = v13;
    v63 = sub_2146D95B8();
    v17 = v16;
  }

  else
  {
    v63 = 0;
    v17 = 0;
  }

  v18 = v7;
  v19 = [a1 action];
  if (v19)
  {
    v20 = v19;
    v21 = sub_2146D95B8();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v24 = [a1 clipAction];

  v32 = v53;
  v33 = v54;
  v34[0] = v55[0];
  *(v34 + 9) = *(v55 + 9);
  v28 = v49;
  v29 = v50;
  v30 = v51;
  v31 = v52;
  result = sub_213FB2DF4(&v28, &qword_27C904868, &qword_2146EDB58);
  *a2 = v18;
  *(a2 + 8) = v14;
  v25 = v40;
  *(a2 + 80) = v39;
  *(a2 + 96) = v25;
  *(a2 + 112) = v41[0];
  *(a2 + 121) = *(v41 + 9);
  v26 = v36;
  *(a2 + 16) = v35;
  *(a2 + 32) = v26;
  v27 = v38;
  *(a2 + 48) = v37;
  *(a2 + 64) = v27;
  *(a2 + 144) = v63;
  *(a2 + 152) = v17;
  *(a2 + 160) = v21;
  *(a2 + 168) = v23;
  *(a2 + 176) = v24;
  return result;
}

void sub_2143EE118(void *a1@<X0>, uint64_t a2@<X8>)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    v47 = [v5 index];
    v7 = v6;
    v8 = [v5 MIMEType];
    if (v8)
    {
      v9 = v8;
      v10 = sub_2146D95B8();
      v45 = v11;
      v46 = v10;
    }

    else
    {
      v45 = 0;
      v46 = 0;
    }

    v15 = [v5 properties];
    v44 = [v15 type];

    v16 = [v5 properties];
    v17 = [v16 accessibilityText];

    if (v17)
    {
      v18 = sub_2146D95B8();
      v42 = v19;
      v43 = v18;
    }

    else
    {
      v42 = 0;
      v43 = 0;
    }

    v20 = [v5 properties];
    v21 = [v20 overlaidTextColor];

    if (v21)
    {
      [v21 r];
      v50 = v22;
      [v21 g];
      v40 = v23;
      [v21 b];
      v48 = v24;
      [v21 a];
      v38 = v25;

      *&v26 = v50;
      *(&v26 + 1) = v40;
      v51 = v26;
      *&v27 = v48;
      *(&v27 + 1) = v38;
    }

    else
    {
      v27 = 0uLL;
      v51 = 0u;
    }

    v49 = v27;
    v28 = [v5 properties];

    v29 = [v28 dominantColor];
    if (v29)
    {
      [v29 &selRef_specialization + 2];
      v41 = v30;
      [v29 &selRef_encodeInteger_forKey_ + 4];
      v39 = v31;
      [v29 &selRef_encodeInteger_forKey_ + 5];
      v36 = v32;
      [v29 &selRef_hasMmv + 5];
      v37 = v33;

      *&v34 = v41;
      *(&v34 + 1) = v39;
      *&v35 = v36;
      *(&v35 + 1) = v37;
    }

    else
    {

      v34 = 0uLL;
      v35 = 0uLL;
    }

    *a2 = v47;
    *(a2 + 8) = v46;
    *(a2 + 16) = v45;
    *(a2 + 24) = v44;
    *(a2 + 32) = v43;
    *(a2 + 40) = v42;
    *(a2 + 48) = v51;
    *(a2 + 64) = v49;
    *(a2 + 80) = v21 == 0;
    *(a2 + 88) = v34;
    *(a2 + 104) = v35;
    *(a2 + 120) = v29 == 0;
  }

  else
  {
    v12 = sub_2146D9F58();
    swift_allocError();
    v14 = v13;
    sub_2146D9F28();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D84168], v12);
    swift_willThrow();
  }
}

uint64_t sub_2143EE4E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v4 - 8);
  v29 = &v28 - v5;
  v6 = type metadata accessor for LinkPresentation.IconMetadata(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v7 + 20);
  v11 = sub_2146D8958();
  v12 = *(*(v11 - 8) + 56);
  v13 = 1;
  v32 = v10;
  v12(a2 + v10, 1, 1, v11);
  v14 = *(v6 + 24);
  v33 = a2;
  v15 = (a2 + v14);
  *v15 = 0;
  v15[1] = 0;
  v30 = [a1 version];
  v31 = a1;
  v16 = [a1 URL];
  v17 = v29;
  if (v16)
  {
    v18 = v16;
    sub_2146D88E8();

    v13 = 0;
  }

  v12(v17, v13, 1, v11);
  v19 = v31;
  v20 = [v31 accessibilityText];
  if (v20)
  {
    v21 = v20;
    v22 = sub_2146D95B8();
    v24 = v23;
  }

  else
  {

    v22 = 0;
    v24 = 0;
  }

  *v9 = v30;
  sub_21408AC04(v17, v9 + *(v6 + 20), &unk_27C9131A0, &unk_2146E9D10);
  v25 = (v9 + *(v6 + 24));
  *v25 = v22;
  v25[1] = v24;
  v26 = v33;
  sub_213FB2DF4(v33 + v32, &unk_27C9131A0, &unk_2146E9D10);
  return sub_214400A9C(v9, v26, type metadata accessor for LinkPresentation.IconMetadata);
}

void sub_2143EE758(void *a1@<X0>, void *a2@<X8>)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    v7 = [v5 index];
    v8 = v6;
    v9 = [v5 MIMEType];
    if (v9)
    {
      v10 = v9;
      v11 = sub_2146D95B8();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    v17 = [v5 properties];

    v18 = [v17 accessibilityText];
    v19 = sub_2146D95B8();
    v21 = v20;

    *a2 = v7;
    a2[1] = v11;
    a2[2] = v13;
    a2[3] = v19;
    a2[4] = v21;
  }

  else
  {
    v14 = sub_2146D9F58();
    swift_allocError();
    v16 = v15;
    sub_2146D9F28();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84168], v14);
    swift_willThrow();
  }
}

uint64_t sub_2143EE928@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - v8;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = [v11 index];
  }

  else
  {
    v12 = 0;
  }

  v13 = [a1 youTubeURL];
  if (v13)
  {
    v14 = v13;
    sub_2146D88E8();

    v15 = sub_2146D8958();
    (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
  }

  else
  {
    v16 = sub_2146D8958();
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  }

  v17 = [a1 streamingURL];
  if (v17)
  {
    v18 = v17;
    sub_2146D88E8();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = sub_2146D8958();
  (*(*(v20 - 8) + 56))(v7, v19, 1, v20);
  v21 = [a1 MIMEType];
  v41 = v7;
  if (v21)
  {
    v22 = v21;
    v23 = sub_2146D95B8();
    v39 = v24;
    v40 = v23;
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

  v25 = [a1 hasAudio];

  v26 = [a1 properties];
  v27 = [v26 hasAudio];

  v28 = [a1 properties];
  v29 = [v28 accessibilityText];

  v30 = sub_2146D95B8();
  v32 = v31;

  sub_21408AC04(v9, a2, &unk_27C9131A0, &unk_2146E9D10);
  v33 = type metadata accessor for LinkPresentation.Video(0);
  result = sub_21408AC04(v41, a2 + v33[5], &unk_27C9131A0, &unk_2146E9D10);
  v35 = (a2 + v33[6]);
  v36 = v39;
  *v35 = v40;
  v35[1] = v36;
  *(a2 + v33[7]) = v25;
  *(a2 + v33[8]) = v12;
  v37 = a2 + v33[9];
  *v37 = v27;
  *(v37 + 8) = v30;
  *(v37 + 16) = v32;
  return result;
}

uint64_t sub_2143EECA0@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v46 = a3;
  v43 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v42 - v7;
  v9 = a2(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v42 - v11);
  v13 = *(v10 + 20);
  v14 = sub_2146D8958();
  v15 = *(*(v14 - 8) + 56);
  v16 = 1;
  v45 = v13;
  v17 = a4 + v13;
  v18 = a4;
  v19 = v43;
  v15(v17, 1, 1, v14);
  v20 = (v18 + v9[6]);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v18 + v9[8]);
  *v21 = 0;
  v21[1] = 0;
  v44 = [v19 version];
  v22 = [v19 URL];
  v47 = v8;
  if (v22)
  {
    v23 = v22;
    sub_2146D88E8();

    v8 = v47;
    v16 = 0;
  }

  v15(v8, v16, 1, v14);
  v24 = [v19 type];
  if (v24)
  {
    v25 = v24;
    v26 = sub_2146D95B8();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  [v19 size];
  v30 = v29;
  v32 = v31;
  v33 = [v19 accessibilityText];
  if (v33)
  {
    v34 = v33;
    v35 = sub_2146D95B8();
    v37 = v36;
  }

  else
  {

    v35 = 0;
    v37 = 0;
  }

  *v12 = v44;
  sub_21408AC04(v47, v12 + v9[5], &unk_27C9131A0, &unk_2146E9D10);
  v38 = (v12 + v9[6]);
  *v38 = v26;
  v38[1] = v28;
  v39 = (v12 + v9[7]);
  *v39 = v30;
  v39[1] = v32;
  v40 = (v12 + v9[8]);
  *v40 = v35;
  v40[1] = v37;
  sub_213FB2DF4(v18 + v45, &unk_27C9131A0, &unk_2146E9D10);
  return sub_214400A9C(v12, v18, v46);
}

uint64_t sub_2143EEF80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = [a1 streamingURL];
  if (v7)
  {
    v8 = v7;
    sub_2146D88E8();

    v9 = sub_2146D8958();
    (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  }

  else
  {
    v10 = sub_2146D8958();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  }

  v11 = [a1 MIMEType];
  if (v11)
  {
    v12 = v11;
    v13 = sub_2146D95B8();
    v15 = v14;
  }

  else
  {

    v13 = 0;
    v15 = 0;
  }

  sub_21408AC04(v6, a2, &unk_27C9131A0, &unk_2146E9D10);
  result = type metadata accessor for LinkPresentation.Audio(0);
  v17 = (a2 + *(result + 20));
  *v17 = v13;
  v17[1] = v15;
  return result;
}

uint64_t sub_2143EF124@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v41 = a3;
  v38 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  v9 = a2(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v37 - v11);
  v13 = *(v10 + 20);
  v14 = sub_2146D8958();
  v15 = *(*(v14 - 8) + 56);
  v16 = 1;
  v40 = v13;
  v17 = a4 + v13;
  v18 = a4;
  v19 = v38;
  v15(v17, 1, 1, v14);
  v20 = (v18 + v9[6]);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v18 + v9[7]);
  *v21 = 0;
  v21[1] = 0;
  v39 = [v19 version];
  v22 = [v19 URL];
  v42 = v8;
  if (v22)
  {
    v23 = v22;
    sub_2146D88E8();

    v8 = v42;
    v16 = 0;
  }

  v15(v8, v16, 1, v14);
  v24 = [v19 type];
  if (v24)
  {
    v25 = v24;
    v26 = sub_2146D95B8();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  v29 = [v19 accessibilityText];
  if (v29)
  {
    v30 = v29;
    v31 = sub_2146D95B8();
    v33 = v32;
  }

  else
  {

    v31 = 0;
    v33 = 0;
  }

  *v12 = v39;
  sub_21408AC04(v42, v12 + v9[5], &unk_27C9131A0, &unk_2146E9D10);
  v34 = (v12 + v9[6]);
  *v34 = v26;
  v34[1] = v28;
  v35 = (v12 + v9[7]);
  *v35 = v31;
  v35[1] = v33;
  sub_213FB2DF4(v18 + v40, &unk_27C9131A0, &unk_2146E9D10);
  return sub_214400A9C(v12, v18, v41);
}

void sub_2143EF3D8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v1348 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912C10, &qword_21473AF48);
  MEMORY[0x28223BE20](v3 - 8);
  v1306 = &v1276 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904870, &qword_2146EDB60);
  v1304 = *(v5 - 8);
  v1305 = v5;
  MEMORY[0x28223BE20](v5);
  v1307 = &v1276 - v6;
  v7 = type metadata accessor for LinkPresentation.EncodedToken(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v1317 = &v1276 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v1316 = (&v1276 - v10);
  v1342 = sub_2146D8958();
  v1341 = *(v1342 - 8);
  MEMORY[0x28223BE20](v1342);
  v1315 = &v1276 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CloudKitSharingToken(0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v1314 = &v1276 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v1320 = (&v1276 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v1299 = &v1276 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v1298 = &v1276 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v1303 = &v1276 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v1302 = &v1276 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v1301 = &v1276 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v1300 = &v1276 - v28;
  MEMORY[0x28223BE20](v27);
  v1330 = &v1276 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904888, &unk_2146EDB80);
  MEMORY[0x28223BE20](v30 - 8);
  v1334 = &v1276 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v1328 = &v1276 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v1338 = &v1276 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v1337 = &v1276 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v1343 = (&v1276 - v40);
  MEMORY[0x28223BE20](v39);
  v1350 = (&v1276 - v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
  v43 = MEMORY[0x28223BE20](v42 - 8);
  v1311 = &v1276 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v1313 = &v1276 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v1319 = &v1276 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v1322 = &v1276 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v1324 = &v1276 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v1326 = &v1276 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v1329 = &v1276 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v1331 = &v1276 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v1332 = &v1276 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v1335 = &v1276 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v1336 = &v1276 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v1339 = &v1276 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v1344 = (&v1276 - v68);
  v69 = MEMORY[0x28223BE20](v67);
  v1349 = (&v1276 - v70);
  MEMORY[0x28223BE20](v69);
  v1351 = &v1276 - v71;
  v1347 = type metadata accessor for LinkPresentation.SpecializationMetadata(0);
  v1346 = *(v1347 - 8);
  v72 = MEMORY[0x28223BE20](v1347);
  v1296 = &v1276 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = MEMORY[0x28223BE20](v72);
  v1293 = (&v1276 - v75);
  v76 = MEMORY[0x28223BE20](v74);
  v1290 = (&v1276 - v77);
  v78 = MEMORY[0x28223BE20](v76);
  v1287 = (&v1276 - v79);
  v80 = MEMORY[0x28223BE20](v78);
  v1289 = (&v1276 - v81);
  v82 = MEMORY[0x28223BE20](v80);
  v1292 = (&v1276 - v83);
  v84 = MEMORY[0x28223BE20](v82);
  v1285 = (&v1276 - v85);
  v86 = MEMORY[0x28223BE20](v84);
  v1286 = (&v1276 - v87);
  v88 = MEMORY[0x28223BE20](v86);
  v1283 = (&v1276 - v89);
  v90 = MEMORY[0x28223BE20](v88);
  v1294 = &v1276 - v91;
  v92 = MEMORY[0x28223BE20](v90);
  v1284 = (&v1276 - v93);
  v94 = MEMORY[0x28223BE20](v92);
  v1288 = (&v1276 - v95);
  v96 = MEMORY[0x28223BE20](v94);
  v1279 = (&v1276 - v97);
  v98 = MEMORY[0x28223BE20](v96);
  v1291 = &v1276 - v99;
  v100 = MEMORY[0x28223BE20](v98);
  v1281 = (&v1276 - v101);
  v102 = MEMORY[0x28223BE20](v100);
  v1295 = (&v1276 - v103);
  v104 = MEMORY[0x28223BE20](v102);
  v1308 = &v1276 - v105;
  v106 = MEMORY[0x28223BE20](v104);
  v1282 = (&v1276 - v107);
  v108 = MEMORY[0x28223BE20](v106);
  v1280 = (&v1276 - v109);
  v110 = MEMORY[0x28223BE20](v108);
  v1297 = (&v1276 - v111);
  v112 = MEMORY[0x28223BE20](v110);
  v1309 = (&v1276 - v113);
  v114 = MEMORY[0x28223BE20](v112);
  v1310 = (&v1276 - v115);
  v116 = MEMORY[0x28223BE20](v114);
  v1312 = (&v1276 - v117);
  v118 = MEMORY[0x28223BE20](v116);
  v1318 = (&v1276 - v119);
  v120 = MEMORY[0x28223BE20](v118);
  v1321 = &v1276 - v121;
  v122 = MEMORY[0x28223BE20](v120);
  v1323 = (&v1276 - v123);
  v124 = MEMORY[0x28223BE20](v122);
  v1325 = (&v1276 - v125);
  v126 = MEMORY[0x28223BE20](v124);
  v1327 = (&v1276 - v127);
  v128 = MEMORY[0x28223BE20](v126);
  v1333 = &v1276 - v129;
  v130 = MEMORY[0x28223BE20](v128);
  v132 = &v1276 - v131;
  v133 = MEMORY[0x28223BE20](v130);
  v135 = &v1276 - v134;
  v136 = MEMORY[0x28223BE20](v133);
  v138 = (&v1276 - v137);
  v139 = MEMORY[0x28223BE20](v136);
  v141 = &v1276 - v140;
  v142 = MEMORY[0x28223BE20](v139);
  v144 = &v1276 - v143;
  v145 = MEMORY[0x28223BE20](v142);
  v147 = (&v1276 - v146);
  v148 = MEMORY[0x28223BE20](v145);
  v1340 = (&v1276 - v149);
  MEMORY[0x28223BE20](v148);
  v1345 = (&v1276 - v150);
  objc_opt_self();
  v151 = swift_dynamicCastObjCClass();
  if (v151)
  {
    v152 = v151;
    v1352 = a1;
    v153 = [v151 storeFrontIdentifier];
    if (v153)
    {
      v154 = v153;
      v155 = sub_2146D95B8();
      v157 = v156;
    }

    else
    {
      v155 = 0;
      v157 = 0;
    }

    v164 = [v152 storeIdentifier];
    if (v164)
    {
      v165 = v164;
      v166 = sub_2146D95B8();
      v1349 = v167;
    }

    else
    {
      v166 = 0;
      v1349 = 0;
    }

    v168 = [v152 name];
    if (v168)
    {
      v169 = v168;
      v170 = sub_2146D95B8();
      v172 = v171;
    }

    else
    {
      v170 = 0;
      v172 = 0;
    }

    v173 = [v152 artist];
    if (v173)
    {
      v174 = v173;
      v1339 = sub_2146D95B8();
      v176 = v175;
    }

    else
    {
      v1339 = 0;
      v176 = 0;
    }

    v177 = [v152 album];
    if (v177)
    {
      v178 = v177;
      v1338 = sub_2146D95B8();
      v1344 = v179;
    }

    else
    {
      v1338 = 0;
      v1344 = 0;
    }

    v180 = [v152 lyrics];
    if (v180)
    {
      v181 = v180;
      v1337 = sub_2146D95B8();
      v1343 = v182;
    }

    else
    {
      v1337 = 0;
      v1343 = 0;
    }

    v183 = [v152 artwork];
    if (v183)
    {
      *&v1405 = v183;
      v184 = v183;
      v185 = v1353;
      sub_213FC2A4C(&v1405, &v1398, &v1419);
      if (v185)
      {
LABEL_25:

LABEL_675:

        return;
      }

      v1353 = 0;

      nullsub_1();
    }

    else
    {
      sub_2144008B4(&v1419);
    }

    v1409 = v1423;
    v1410 = v1424;
    v1411[0] = v1425[0];
    *(v1411 + 9) = *(v1425 + 9);
    v1405 = v1419;
    v1406 = v1420;
    v1407 = v1421;
    v1408 = v1422;
    v186 = [v152 artworkMetadata];
    if (v186)
    {
      v1335 = v170;
      v187 = v152;
      v188 = v166;
      v189 = v155;
      *&v1398 = v186;
      v190 = v186;
      v191 = v1351;
      v192 = v1353;
      sub_213FC29FC(&v1398, &v1391, v1351);
      if (v192)
      {

        sub_213FB2DF4(&v1405, &qword_27C904868, &qword_2146EDB58);

LABEL_31:
        return;
      }

      v1353 = 0;

      v200 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v200 - 8) + 56))(v191, 0, 1, v200);
      v155 = v189;
      v166 = v188;
      v152 = v187;
      v170 = v1335;
    }

    else
    {
      v193 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v193 - 8) + 56))(v1351, 1, 1, v193);
    }

    v1336 = v155;
    v201 = [v152 previewURL];
    if (v201)
    {
      v202 = v1350;
      v203 = v201;
      sub_2146D88E8();

      v204 = v202;
      v205 = 0;
    }

    else
    {
      v205 = 1;
      v204 = v1350;
    }

    (*(v1341 + 56))(v204, v205, 1, v1342);
    v224 = [v152 offers];
    if (v224)
    {
      v225 = v224;
      v226 = v1349;
      v1342 = sub_2146D9918();
    }

    else
    {
      v226 = v1349;
      v1342 = 0;
    }

    v227 = [v152 lyricExcerpt];
    if (v227)
    {
      *&v1398 = v227;
      v228 = v227;
      v229 = v1353;
      sub_214400664(&v1398, &v1391, &v1354);
      if (v229)
      {

        sub_213FB2DF4(&v1405, &qword_27C904868, &qword_2146EDB58);

        sub_213FB2DF4(v1350, &unk_27C9131A0, &unk_2146E9D10);
        v230 = &qword_27C904878;
        v231 = &unk_2146EDB68;
        v232 = v1351;
LABEL_151:
        sub_213FB2DF4(v232, v230, v231);
        return;
      }

      v233 = v157;
      v1353 = 0;
    }

    else
    {
      v233 = v157;

      v1354 = xmmword_2146EA720;
      v1355 = 0u;
      memset(v1356, 0, 25);
    }

    v237 = v1340;
    *v1340 = v1336;
    v237[1] = v233;
    v237[2] = v166;
    v237[3] = v226;
    v237[4] = v170;
    v237[5] = v172;
    v238 = v1338;
    v237[6] = v1339;
    v237[7] = v176;
    v239 = v1344;
    v237[8] = v238;
    v237[9] = v239;
    v240 = v1343;
    v237[10] = v1337;
    v237[11] = v240;
    v241 = v1410;
    *(v237 + 10) = v1409;
    *(v237 + 11) = v241;
    *(v237 + 12) = v1411[0];
    *(v237 + 201) = *(v1411 + 9);
    v242 = v1406;
    *(v237 + 6) = v1405;
    *(v237 + 7) = v242;
    v243 = v1408;
    *(v237 + 8) = v1407;
    *(v237 + 9) = v243;
    v244 = type metadata accessor for LinkPresentation.SongMetadata(0);
    sub_21408AC04(v1351, v237 + v244[11], &qword_27C904878, &unk_2146EDB68);
    sub_21408AC04(v1350, v237 + v244[12], &unk_27C9131A0, &unk_2146E9D10);
    *(v237 + v244[13]) = v1342;
    v245 = (v237 + v244[14]);
    v246 = v1355;
    *v245 = v1354;
    v245[1] = v246;
    v245[2] = v1356[0];
    *(v245 + 41) = *(v1356 + 9);
    v247 = v1347;
    goto LABEL_67;
  }

  v1351 = v144;
  v1350 = v147;
  v1340 = v141;
  v1277 = v135;
  v1278 = v138;
  v158 = v1349;
  v1276 = v132;
  objc_opt_self();
  v159 = swift_dynamicCastObjCClass();
  if (v159)
  {
    v160 = v159;
    v161 = [v159 storeFrontIdentifier];
    if (v161)
    {
      v162 = v161;
      v1344 = sub_2146D95B8();
      v1351 = v163;
    }

    else
    {
      v1344 = 0;
      v1351 = 0;
    }

    v206 = v158;
    v207 = [v160 storeIdentifier];
    if (v207)
    {
      v208 = v207;
      v209 = sub_2146D95B8();
      v211 = v210;
    }

    else
    {
      v209 = 0;
      v211 = 0;
    }

    v1352 = a1;
    v212 = [v160 name];
    if (v212)
    {
      v213 = v212;
      v214 = sub_2146D95B8();
      v216 = v215;
    }

    else
    {
      v214 = 0;
      v216 = 0;
    }

    v217 = [v160 artist];
    if (v217)
    {
      v218 = v217;
      v1349 = sub_2146D95B8();
      v220 = v219;
    }

    else
    {
      v1349 = 0;
      v220 = 0;
    }

    v221 = [v160 artwork];
    if (v221)
    {
      *&v1405 = v221;
      v222 = v221;
      v223 = v1353;
      sub_213FC2A4C(&v1405, &v1398, &v1419);
      if (v223)
      {

LABEL_327:

        goto LABEL_328;
      }

      v1353 = 0;

      nullsub_1();
    }

    else
    {
      sub_2144008B4(&v1419);
    }

    v1409 = v1423;
    v1410 = v1424;
    v1411[0] = v1425[0];
    *(v1411 + 9) = *(v1425 + 9);
    v1405 = v1419;
    v1406 = v1420;
    v1407 = v1421;
    v1408 = v1422;
    v234 = [v160 artworkMetadata];
    if (v234)
    {
      *&v1398 = v234;
      v235 = v234;
      v236 = v1353;
      sub_213FC29FC(&v1398, &v1391, v206);
      if (v236)
      {

        sub_213FB2DF4(&v1405, &qword_27C904868, &qword_2146EDB58);

        return;
      }

      v1343 = v214;
      v249 = v211;
      v1353 = 0;

      v257 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v257 - 8) + 56))(v206, 0, 1, v257);
    }

    else
    {
      v1343 = v214;
      v249 = v211;
      v250 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v250 - 8) + 56))(v206, 1, 1, v250);
    }

    v258 = v206;
    v259 = [v160 offers];
    if (v259)
    {
      v260 = v259;
      v261 = sub_2146D9918();
    }

    else
    {

      v261 = 0;
    }

    v280 = v1350;
    v281 = v1351;
    v1350->isa = v1344;
    v280[1].isa = v281;
    v280[2].isa = v209;
    v280[3].isa = v249;
    v280[4].isa = v1343;
    v280[5].isa = v216;
    v280[6].isa = v1349;
    v280[7].isa = v220;
    v282 = v1410;
    *&v280[16].isa = v1409;
    *&v280[18].isa = v282;
    *&v280[20].isa = v1411[0];
    *(&v280[21].isa + 1) = *(v1411 + 9);
    v283 = v1406;
    *&v280[8].isa = v1405;
    *&v280[10].isa = v283;
    v284 = v1408;
    *&v280[12].isa = v1407;
    *&v280[14].isa = v284;
    v285 = v280;
    v286 = type metadata accessor for LinkPresentation.AlbumMetadata(0);
    sub_21408AC04(v258, v285 + *(v286 + 36), &qword_27C904878, &unk_2146EDB68);
    *(&v285->isa + *(v286 + 40)) = v261;
    v247 = v1347;
LABEL_91:
    swift_storeEnumTagMultiPayload();
    v248 = v285;
    goto LABEL_129;
  }

  objc_opt_self();
  v194 = swift_dynamicCastObjCClass();
  if (v194)
  {
    v195 = v194;
    v196 = a1;
    v197 = [v194 storeFrontIdentifier];
    if (v197)
    {
      v198 = v197;
      v1349 = sub_2146D95B8();
      v1350 = v199;
    }

    else
    {
      v1349 = 0;
      v1350 = 0;
    }

    v262 = v1344;
    v263 = [v195 storeIdentifier];
    if (v263)
    {
      v264 = v263;
      v1344 = sub_2146D95B8();
      v266 = v265;
    }

    else
    {
      v1344 = 0;
      v266 = 0;
    }

    v267 = [v195 name];
    if (v267)
    {
      v268 = v267;
      v1343 = sub_2146D95B8();
      v270 = v269;
    }

    else
    {
      v1343 = 0;
      v270 = 0;
    }

    v271 = [v195 genre];
    if (v271)
    {
      v272 = v271;
      v273 = sub_2146D95B8();
      v275 = v274;
    }

    else
    {
      v273 = 0;
      v275 = 0;
    }

    v276 = v1351;
    v277 = [v195 artwork];
    if (v277)
    {
      *&v1405 = v277;
      v278 = v277;
      v279 = v1353;
      sub_213FC2A4C(&v1405, &v1398, &v1419);
      if (v279)
      {

        goto LABEL_675;
      }

      v1353 = 0;

      nullsub_1();
      v276 = v1351;
    }

    else
    {
      sub_2144008B4(&v1419);
    }

    v1409 = v1423;
    v1410 = v1424;
    v1411[0] = v1425[0];
    *(v1411 + 9) = *(v1425 + 9);
    v1405 = v1419;
    v1406 = v1420;
    v1407 = v1421;
    v1408 = v1422;
    v287 = [v195 artworkMetadata];
    if (v287)
    {
      *&v1398 = v287;
      v288 = v287;
      v289 = v1353;
      sub_213FC29FC(&v1398, &v1391, v262);
      if (v289)
      {

        sub_213FB2DF4(&v1405, &qword_27C904868, &qword_2146EDB58);

LABEL_121:
        return;
      }

      v1353 = 0;

      v296 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v296 - 8) + 56))(v262, 0, 1, v296);
    }

    else
    {

      v290 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v290 - 8) + 56))(v262, 1, 1, v290);
    }

    v297 = v1350;
    *v276 = v1349;
    *(v276 + 8) = v297;
    *(v276 + 16) = v1344;
    *(v276 + 24) = v266;
    *(v276 + 32) = v1343;
    *(v276 + 40) = v270;
    *(v276 + 48) = v273;
    *(v276 + 56) = v275;
    v298 = v1410;
    *(v276 + 128) = v1409;
    *(v276 + 144) = v298;
    *(v276 + 160) = v1411[0];
    *(v276 + 169) = *(v1411 + 9);
    v299 = v1406;
    *(v276 + 64) = v1405;
    *(v276 + 80) = v299;
    v300 = v1408;
    *(v276 + 96) = v1407;
    *(v276 + 112) = v300;
    v301 = type metadata accessor for LinkPresentation.ArtistMetadata(0);
    sub_21408AC04(v262, v276 + *(v301 + 36), &qword_27C904878, &unk_2146EDB68);
    v247 = v1347;
LABEL_128:
    swift_storeEnumTagMultiPayload();
    v248 = v276;
    goto LABEL_129;
  }

  objc_opt_self();
  v251 = swift_dynamicCastObjCClass();
  if (v251)
  {
    v252 = v251;
    v253 = a1;
    v254 = [v251 storeFrontIdentifier];
    if (v254)
    {
      v255 = v254;
      v1350 = sub_2146D95B8();
      v1351 = v256;
    }

    else
    {
      v1350 = 0;
      v1351 = 0;
    }

    v302 = v1339;
    v303 = [v252 storeIdentifier];
    if (v303)
    {
      v304 = v303;
      v1349 = sub_2146D95B8();
      v306 = v305;
    }

    else
    {
      v1349 = 0;
      v306 = 0;
    }

    v307 = [v252 name];
    if (v307)
    {
      v308 = v307;
      v1344 = sub_2146D95B8();
      v310 = v309;
    }

    else
    {
      v1344 = 0;
      v310 = 0;
    }

    v311 = [v252 artist];
    if (v311)
    {
      v312 = v311;
      v313 = sub_2146D95B8();
      v315 = v314;
    }

    else
    {
      v313 = 0;
      v315 = 0;
    }

    v276 = v1340;
    v316 = [v252 artwork];
    if (v316)
    {
      *&v1405 = v316;
      v317 = v316;
      v318 = v1353;
      sub_213FC2A4C(&v1405, &v1398, &v1419);
      if (v318)
      {

LABEL_115:

        goto LABEL_327;
      }

      v1353 = 0;

      nullsub_1();
      v276 = v1340;
    }

    else
    {
      sub_2144008B4(&v1419);
    }

    v1409 = v1423;
    v1410 = v1424;
    v1411[0] = v1425[0];
    *(v1411 + 9) = *(v1425 + 9);
    v1405 = v1419;
    v1406 = v1420;
    v1407 = v1421;
    v1408 = v1422;
    v319 = [v252 artworkMetadata];
    if (v319)
    {
      *&v1398 = v319;
      v288 = v319;
      v320 = v1353;
      sub_213FC29FC(&v1398, &v1391, v302);
      if (v320)
      {
LABEL_120:

        sub_213FB2DF4(&v1405, &qword_27C904868, &qword_2146EDB58);

        goto LABEL_121;
      }

      v1353 = 0;

      v327 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v327 - 8) + 56))(v302, 0, 1, v327);
    }

    else
    {

      v321 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v321 - 8) + 56))(v302, 1, 1, v321);
    }

    v328 = v1351;
    *v276 = v1350;
    *(v276 + 8) = v328;
    *(v276 + 16) = v1349;
    *(v276 + 24) = v306;
    *(v276 + 32) = v1344;
    *(v276 + 40) = v310;
    *(v276 + 48) = v313;
    *(v276 + 56) = v315;
    v329 = v1410;
    *(v276 + 128) = v1409;
    *(v276 + 144) = v329;
    *(v276 + 160) = v1411[0];
    *(v276 + 169) = *(v1411 + 9);
    v330 = v1406;
    *(v276 + 64) = v1405;
    *(v276 + 80) = v330;
    v331 = v1408;
    *(v276 + 96) = v1407;
    *(v276 + 112) = v331;
    v332 = type metadata accessor for LinkPresentation.MusicVideoMetadata(0);
    sub_21408AC04(v302, v276 + *(v332 + 36), &qword_27C904878, &unk_2146EDB68);
    v247 = v1347;
    goto LABEL_128;
  }

  objc_opt_self();
  v291 = swift_dynamicCastObjCClass();
  if (v291)
  {
    v292 = v291;
    v293 = [v291 curatorProfileURL];
    v294 = v1337;
    if (v293)
    {
      v295 = v293;
      sub_2146D88E8();

      (*(v1341 + 56))(v294, 0, 1, v1342);
    }

    else
    {
      (*(v1341 + 56))(v1337, 1, 1, v1342);
    }

    v285 = v1278;
    sub_21408AC04(v294, v1343, &unk_27C9131A0, &unk_2146E9D10);
    v336 = [v292 curatorHandle];
    if (v336)
    {
      v337 = v336;
      v1349 = sub_2146D95B8();
      v1351 = v338;
    }

    else
    {
      v1349 = 0;
      v1351 = 0;
    }

    v339 = [v292 storeFrontIdentifier];
    if (v339)
    {
      v340 = v339;
      v1344 = sub_2146D95B8();
      v1350 = v341;
    }

    else
    {
      v1344 = 0;
      v1350 = 0;
    }

    v342 = [v292 storeIdentifier];
    if (v342)
    {
      v343 = v342;
      v1342 = sub_2146D95B8();
      v345 = v344;
    }

    else
    {
      v1342 = 0;
      v345 = 0;
    }

    v346 = [v292 name];
    if (v346)
    {
      v347 = v346;
      v1341 = sub_2146D95B8();
      v349 = v348;
    }

    else
    {
      v1341 = 0;
      v349 = 0;
    }

    v350 = [v292 curator];
    if (v350)
    {
      v351 = v350;
      v352 = sub_2146D95B8();
      v354 = v353;
    }

    else
    {
      v352 = 0;
      v354 = 0;
    }

    v355 = v1338;
    sub_213FB2E54(v1343, v1338, &unk_27C9131A0, &unk_2146E9D10);
    v356 = [v292 artwork];
    if (v356)
    {
      *&v1405 = v356;
      v357 = v356;
      v358 = v1353;
      sub_213FC2A4C(&v1405, &v1398, &v1419);
      if (v358)
      {

        sub_213FB2DF4(v1338, &unk_27C9131A0, &unk_2146E9D10);
        v232 = v1343;
        v230 = &unk_27C9131A0;
        v231 = &unk_2146E9D10;
        goto LABEL_151;
      }

      v1353 = 0;

      nullsub_1();
      v355 = v1338;
    }

    else
    {
      sub_2144008B4(&v1419);
    }

    v1409 = v1423;
    v1410 = v1424;
    v1411[0] = v1425[0];
    *(v1411 + 9) = *(v1425 + 9);
    v1405 = v1419;
    v1406 = v1420;
    v1407 = v1421;
    v1408 = v1422;
    v359 = [v292 artworkMetadata];
    if (v359)
    {
      *&v1398 = v359;
      v360 = v359;
      v361 = v1336;
      v362 = v1353;
      sub_213FC29FC(&v1398, &v1391, v1336);
      if (v362)
      {

        sub_213FB2DF4(&v1405, &qword_27C904868, &qword_2146EDB58);

        sub_213FB2DF4(v355, &unk_27C9131A0, &unk_2146E9D10);
        v232 = v1343;
        v230 = &unk_27C9131A0;
        v231 = &unk_2146E9D10;
        goto LABEL_151;
      }

      v1353 = 0;

      sub_213FB2DF4(v1343, &unk_27C9131A0, &unk_2146E9D10);
      v370 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v370 - 8) + 56))(v361, 0, 1, v370);
      v285 = v1278;
    }

    else
    {

      sub_213FB2DF4(v1343, &unk_27C9131A0, &unk_2146E9D10);
      v363 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      v361 = v1336;
      (*(*(v363 - 8) + 56))(v1336, 1, 1, v363);
    }

    v371 = v1350;
    v285->isa = v1344;
    v285[1].isa = v371;
    v285[2].isa = v1342;
    v285[3].isa = v345;
    v285[4].isa = v1341;
    v285[5].isa = v349;
    v285[6].isa = v352;
    v285[7].isa = v354;
    v372 = type metadata accessor for LinkPresentation.PlaylistMetadata(0);
    sub_21408AC04(v1338, v285 + v372[8], &unk_27C9131A0, &unk_2146E9D10);
    v373 = (&v285->isa + v372[9]);
    v374 = v1351;
    *v373 = v1349;
    v373[1] = v374;
    v375 = (v285 + v372[10]);
    v376 = v1410;
    v375[4] = v1409;
    v375[5] = v376;
    v375[6] = v1411[0];
    *(v375 + 105) = *(v1411 + 9);
    v377 = v1406;
    *v375 = v1405;
    v375[1] = v377;
    v378 = v1408;
    v375[2] = v1407;
    v375[3] = v378;
    sub_21408AC04(v361, v285 + v372[11], &qword_27C904878, &unk_2146EDB68);
    v247 = v1347;
    goto LABEL_91;
  }

  objc_opt_self();
  v322 = swift_dynamicCastObjCClass();
  if (v322)
  {
    v323 = v322;
    v253 = a1;
    v324 = [v322 storeFrontIdentifier];
    if (v324)
    {
      v325 = v324;
      v1350 = sub_2146D95B8();
      v1351 = v326;
    }

    else
    {
      v1350 = 0;
      v1351 = 0;
    }

    v379 = v1335;
    v380 = [v323 storeIdentifier];
    if (v380)
    {
      v381 = v380;
      v1349 = sub_2146D95B8();
      v383 = v382;
    }

    else
    {
      v1349 = 0;
      v383 = 0;
    }

    v384 = [v323 name];
    if (v384)
    {
      v385 = v384;
      v1344 = sub_2146D95B8();
      v387 = v386;
    }

    else
    {
      v1344 = 0;
      v387 = 0;
    }

    v388 = [v323 curator];
    if (v388)
    {
      v389 = v388;
      v390 = sub_2146D95B8();
      v392 = v391;
    }

    else
    {
      v390 = 0;
      v392 = 0;
    }

    v276 = v1277;
    v393 = [v323 artwork];
    if (v393)
    {
      *&v1405 = v393;
      v394 = v393;
      v395 = v1353;
      sub_213FC2A4C(&v1405, &v1398, &v1419);
      if (v395)
      {

LABEL_328:

        goto LABEL_675;
      }

      v1353 = 0;

      nullsub_1();
      v276 = v1277;
    }

    else
    {
      sub_2144008B4(&v1419);
    }

    v1409 = v1423;
    v1410 = v1424;
    v1411[0] = v1425[0];
    *(v1411 + 9) = *(v1425 + 9);
    v1405 = v1419;
    v1406 = v1420;
    v1407 = v1421;
    v1408 = v1422;
    v396 = [v323 artworkMetadata];
    if (v396)
    {
      *&v1398 = v396;
      v288 = v396;
      v397 = v1353;
      sub_213FC29FC(&v1398, &v1391, v379);
      if (v397)
      {
        goto LABEL_120;
      }

      v1353 = 0;

      v405 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v405 - 8) + 56))(v379, 0, 1, v405);
    }

    else
    {

      v398 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v398 - 8) + 56))(v379, 1, 1, v398);
    }

    v406 = v1351;
    *v276 = v1350;
    *(v276 + 8) = v406;
    *(v276 + 16) = v1349;
    *(v276 + 24) = v383;
    *(v276 + 32) = v1344;
    *(v276 + 40) = v387;
    *(v276 + 48) = v390;
    *(v276 + 56) = v392;
    v407 = v1410;
    *(v276 + 128) = v1409;
    *(v276 + 144) = v407;
    *(v276 + 160) = v1411[0];
    *(v276 + 169) = *(v1411 + 9);
    v408 = v1406;
    *(v276 + 64) = v1405;
    *(v276 + 80) = v408;
    v409 = v1408;
    *(v276 + 96) = v1407;
    *(v276 + 112) = v409;
    v410 = type metadata accessor for LinkPresentation.RadioMetadata(0);
    sub_21408AC04(v379, v276 + *(v410 + 36), &qword_27C904878, &unk_2146EDB68);
    v247 = v1347;
    goto LABEL_128;
  }

  objc_opt_self();
  v364 = swift_dynamicCastObjCClass();
  if (v364)
  {
    v365 = v364;
    v1352 = a1;
    v366 = [v364 storeFrontIdentifier];
    if (v366)
    {
      v367 = v366;
      v1350 = sub_2146D95B8();
      v369 = v368;
    }

    else
    {
      v1350 = 0;
      v369 = 0;
    }

    v411 = [v365 storeIdentifier];
    if (v411)
    {
      v412 = v411;
      v1349 = sub_2146D95B8();
      v414 = v413;
    }

    else
    {
      v1349 = 0;
      v414 = 0;
    }

    v415 = [v365 name];
    if (v415)
    {
      v416 = v415;
      v1344 = sub_2146D95B8();
      v418 = v417;
    }

    else
    {
      v1344 = 0;
      v418 = 0;
    }

    v419 = [v365 subtitle];
    if (v419)
    {
      v420 = v419;
      v1343 = sub_2146D95B8();
      v422 = v421;
    }

    else
    {
      v1343 = 0;
      v422 = 0;
    }

    v423 = [v365 genre];
    if (v423)
    {
      v424 = v423;
      v1342 = sub_2146D95B8();
      v426 = v425;
    }

    else
    {
      v1342 = 0;
      v426 = 0;
    }

    v427 = [v365 platform];
    if (v427)
    {
      v428 = v427;
      v1341 = sub_2146D95B8();
      v430 = v429;
    }

    else
    {
      v1341 = 0;
      v430 = 0;
    }

    v431 = [v365 icon];
    if (v431)
    {
      *&v1405 = v431;
      v184 = v431;
      v432 = v1353;
      sub_213FC2A4C(&v1405, &v1398, &v1419);
      if (v432)
      {
        goto LABEL_25;
      }

      v1351 = v369;
      v1353 = 0;

      nullsub_1();
    }

    else
    {
      v1351 = v369;
      sub_2144008B4(&v1419);
    }

    v1409 = v1423;
    v1410 = v1424;
    v1411[0] = v1425[0];
    *(v1411 + 9) = *(v1425 + 9);
    v1405 = v1419;
    v1406 = v1420;
    v1407 = v1421;
    v1408 = v1422;
    v433 = [v365 screenshots];
    if (v433)
    {
      v434 = v433;
      sub_21404A8B8(0, &qword_27C912A80, off_2781751E0);
      v435 = sub_2146D9918();

      v436 = v1353;
      v437 = sub_2143E35B4(v435);
      v1353 = v436;
      if (v436)
      {
        sub_213FB2DF4(&v1405, &qword_27C904868, &qword_2146EDB58);

        goto LABEL_211;
      }

      v1340 = v437;
    }

    else
    {
      v1340 = 0;
    }

    v445 = [v365 previewVideo];
    if (v445)
    {
      *&v1398 = v445;
      v446 = v445;
      v447 = v1334;
      v448 = v1353;
      sub_2144006B4(&v1398, &v1391, v1334);
      if (v448)
      {

        sub_213FB2DF4(&v1405, &qword_27C904868, &qword_2146EDB58);

        return;
      }

      v1353 = 0;

      v471 = type metadata accessor for LinkPresentation.Video(0);
      (*(*(v471 - 8) + 56))(v447, 0, 1, v471);
    }

    else
    {
      v467 = type metadata accessor for LinkPresentation.Video(0);
      v447 = v1334;
      (*(*(v467 - 8) + 56))(v1334, 1, 1, v467);
    }

    LODWORD(v1339) = [v365 isMessagesOnlyApp];
    v472 = [v365 messagesAppIcon];
    v276 = v1276;
    if (v472)
    {
      *&v1391 = v472;
      v473 = v472;
      v474 = v1353;
      sub_213FC2A4C(&v1391, &v1384, &v1398);
      if (v474)
      {

        sub_213FB2DF4(&v1405, &qword_27C904868, &qword_2146EDB58);

        sub_213FB2DF4(v447, &qword_27C904888, &unk_2146EDB80);
        return;
      }

      v1353 = 0;

      nullsub_1();
    }

    else
    {

      sub_2144008B4(&v1398);
    }

    v1395 = v1402;
    v1396 = v1403;
    v1397[0] = v1404[0];
    *(v1397 + 9) = *(v1404 + 9);
    v1391 = v1398;
    v1392 = v1399;
    v1393 = v1400;
    v1394 = v1401;
    v488 = v1351;
    *v276 = v1350;
    *(v276 + 8) = v488;
    *(v276 + 16) = v1349;
    *(v276 + 24) = v414;
    *(v276 + 32) = v1344;
    *(v276 + 40) = v418;
    *(v276 + 48) = v1343;
    *(v276 + 56) = v422;
    *(v276 + 64) = v1342;
    *(v276 + 72) = v426;
    *(v276 + 80) = v1341;
    *(v276 + 88) = v430;
    *(v276 + 201) = *(v1411 + 9);
    v489 = v1411[0];
    v490 = v1409;
    *(v276 + 176) = v1410;
    *(v276 + 192) = v489;
    v491 = v1407;
    *(v276 + 144) = v1408;
    *(v276 + 160) = v490;
    v492 = v1405;
    *(v276 + 112) = v1406;
    *(v276 + 128) = v491;
    *(v276 + 96) = v492;
    *(v276 + 224) = v1340;
    v493 = type metadata accessor for LinkPresentation.SoftwareMetadata(0);
    sub_21408AC04(v1334, v276 + v493[12], &qword_27C904888, &unk_2146EDB80);
    *(v276 + v493[13]) = v1339;
    v494 = (v276 + v493[14]);
    v495 = v1396;
    v494[4] = v1395;
    v494[5] = v495;
    v494[6] = v1397[0];
    *(v494 + 105) = *(v1397 + 9);
    v496 = v1392;
    *v494 = v1391;
    v494[1] = v496;
    v497 = v1394;
    v494[2] = v1393;
    v494[3] = v497;
    v247 = v1347;
    goto LABEL_128;
  }

  objc_opt_self();
  v399 = swift_dynamicCastObjCClass();
  v400 = a1;
  if (v399)
  {
    v401 = v399;
    v402 = [v399 storeIdentifier];
    if (v402)
    {
      v403 = v402;
      v1350 = sub_2146D95B8();
      v1351 = v404;
    }

    else
    {
      v1350 = 0;
      v1351 = 0;
    }

    v449 = v1333;
    v450 = [v401 storeIdentifier];
    if (v450)
    {
      v451 = v450;
      v1349 = sub_2146D95B8();
      v453 = v452;
    }

    else
    {
      v1349 = 0;
      v453 = 0;
    }

    v454 = a1;
    v455 = [v401 name];
    if (v455)
    {
      v456 = v455;
      v1344 = sub_2146D95B8();
      v458 = v457;
    }

    else
    {
      v1344 = 0;
      v458 = 0;
    }

    v459 = [v401 author];
    if (v459)
    {
      v460 = v459;
      v461 = sub_2146D95B8();
      v463 = v462;
    }

    else
    {
      v461 = 0;
      v463 = 0;
    }

    v464 = [v401 artwork];
    if (v464)
    {
      *&v1405 = v464;
      v465 = v464;
      v466 = v1353;
      sub_213FC2A4C(&v1405, &v1398, &v1419);
      if (v466)
      {

        goto LABEL_115;
      }

      v1353 = 0;

      nullsub_1();
    }

    else
    {
      sub_2144008B4(&v1419);
    }

    v1409 = v1423;
    v1410 = v1424;
    v1411[0] = v1425[0];
    *(v1411 + 9) = *(v1425 + 9);
    v1405 = v1419;
    v1406 = v1420;
    v1407 = v1421;
    v1408 = v1422;
    v468 = [v401 artworkMetadata];
    if (v468)
    {
      *&v1398 = v468;
      v190 = v468;
      v469 = v1332;
      v470 = v1353;
      sub_213FC29FC(&v1398, &v1391, v1332);
      if (v470)
      {

        sub_213FB2DF4(&v1405, &qword_27C904868, &qword_2146EDB58);

        goto LABEL_31;
      }

      v1353 = 0;

      v481 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v481 - 8) + 56))(v469, 0, 1, v481);
      v449 = v1333;
    }

    else
    {
      v475 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      v469 = v1332;
      (*(*(v475 - 8) + 56))(v1332, 1, 1, v475);
    }

    v482 = [v401 hasSpineOnRight];

    v483 = v1351;
    *v449 = v1350;
    *(v449 + 1) = v483;
    *(v449 + 2) = v1349;
    *(v449 + 3) = v453;
    *(v449 + 4) = v1344;
    *(v449 + 5) = v458;
    *(v449 + 6) = v461;
    *(v449 + 7) = v463;
    v484 = v1410;
    *(v449 + 8) = v1409;
    *(v449 + 9) = v484;
    *(v449 + 10) = v1411[0];
    *(v449 + 169) = *(v1411 + 9);
    v485 = v1406;
    *(v449 + 4) = v1405;
    *(v449 + 5) = v485;
    v486 = v1408;
    *(v449 + 6) = v1407;
    *(v449 + 7) = v486;
    v285 = v449;
    v487 = type metadata accessor for LinkPresentation.BookMetadata(0);
    sub_21408AC04(v469, v285 + *(v487 + 36), &qword_27C904878, &unk_2146EDB68);
    *(&v285->isa + *(v487 + 40)) = v482;
    v247 = v1347;
    goto LABEL_91;
  }

  objc_opt_self();
  v438 = swift_dynamicCastObjCClass();
  if (v438)
  {
    v439 = v438;
    v440 = [v438 storeFrontIdentifier];
    if (v440)
    {
      v441 = v440;
      v442 = sub_2146D95B8();
      v444 = v443;
    }

    else
    {
      v442 = 0;
      v444 = 0;
    }

    v498 = [v439 storeIdentifier];
    if (v498)
    {
      v499 = v498;
      v1350 = sub_2146D95B8();
      v501 = v500;
    }

    else
    {
      v1350 = 0;
      v501 = 0;
    }

    v502 = [v439 name];
    if (v502)
    {
      v503 = v502;
      v1349 = sub_2146D95B8();
      v1351 = v504;
    }

    else
    {
      v1349 = 0;
      v1351 = 0;
    }

    v505 = [v439 author];
    if (v505)
    {
      v506 = v505;
      v1344 = sub_2146D95B8();
      v508 = v507;
    }

    else
    {
      v1344 = 0;
      v508 = 0;
    }

    v509 = v400;
    v510 = [v439 narrator];
    if (v510)
    {
      v511 = v510;
      v1343 = sub_2146D95B8();
      v513 = v512;
    }

    else
    {
      v1343 = 0;
      v513 = 0;
    }

    v514 = [v439 artwork];
    if (v514)
    {
      *&v1405 = v514;
      v515 = v514;
      v516 = v1353;
      sub_213FC2A4C(&v1405, &v1398, &v1419);
      v1353 = v516;
      if (v516)
      {

        goto LABEL_675;
      }

      v1340 = v442;

      nullsub_1();
    }

    else
    {
      v1340 = v442;
      sub_2144008B4(&v1419);
    }

    v517 = v444;
    v1409 = v1423;
    v1410 = v1424;
    v1411[0] = v1425[0];
    *(v1411 + 9) = *(v1425 + 9);
    v1405 = v1419;
    v1406 = v1420;
    v1407 = v1421;
    v1408 = v1422;
    v518 = [v439 artworkMetadata];
    if (v518)
    {
      *&v1398 = v518;
      v190 = v518;
      v519 = v1331;
      v520 = v1353;
      sub_213FC29FC(&v1398, &v1391, v1331);
      v1353 = v520;
      if (v520)
      {

        sub_213FB2DF4(&v1405, &qword_27C904868, &qword_2146EDB58);

        goto LABEL_31;
      }

      v528 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v528 - 8) + 56))(v519, 0, 1, v528);
    }

    else
    {
      v521 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v521 - 8) + 56))(v1331, 1, 1, v521);
    }

    v529 = [v439 previewURL];
    if (v529)
    {
      v530 = v1328;
      v531 = v529;
      sub_2146D88E8();

      v532 = 0;
    }

    else
    {
      v532 = 1;
      v530 = v1328;
    }

    (*(v1341 + 56))(v530, v532, 1, v1342);
    v558 = v1327;
    *v1327 = v1340;
    v558[1] = v517;
    v558[2] = v1350;
    v558[3] = v501;
    v559 = v1351;
    v558[4] = v1349;
    v558[5] = v559;
    v558[6] = v1344;
    v558[7] = v508;
    v558[8] = v1343;
    v558[9] = v513;
    v560 = v1410;
    *(v558 + 9) = v1409;
    *(v558 + 10) = v560;
    *(v558 + 11) = v1411[0];
    *(v558 + 185) = *(v1411 + 9);
    v561 = v1406;
    *(v558 + 5) = v1405;
    *(v558 + 6) = v561;
    v562 = v1408;
    *(v558 + 7) = v1407;
    *(v558 + 8) = v562;
    v563 = type metadata accessor for LinkPresentation.AudioBookMetadata(0);
    sub_21408AC04(v1331, v558 + *(v563 + 40), &qword_27C904878, &unk_2146EDB68);
    sub_21408AC04(v530, v558 + *(v563 + 44), &unk_27C9131A0, &unk_2146E9D10);
    v247 = v1347;
    goto LABEL_302;
  }

  objc_opt_self();
  v476 = swift_dynamicCastObjCClass();
  v1352 = a1;
  if (v476)
  {
    v477 = v476;
    v478 = [v476 storeFrontIdentifier];
    if (v478)
    {
      v479 = v478;
      v1350 = sub_2146D95B8();
      v1351 = v480;
    }

    else
    {
      v1350 = 0;
      v1351 = 0;
    }

    v533 = [v477 storeIdentifier];
    if (v533)
    {
      v534 = v533;
      v1349 = sub_2146D95B8();
      v536 = v535;
    }

    else
    {
      v1349 = 0;
      v536 = 0;
    }

    v537 = [v477 episodeName];
    if (v537)
    {
      v538 = v537;
      v1344 = sub_2146D95B8();
      v540 = v539;
    }

    else
    {
      v1344 = 0;
      v540 = 0;
    }

    v541 = [v477 podcastName];
    if (v541)
    {
      v542 = v541;
      v1343 = sub_2146D95B8();
      v544 = v543;
    }

    else
    {
      v1343 = 0;
      v544 = 0;
    }

    v545 = [v477 artist];
    if (v545)
    {
      v546 = v545;
      v547 = sub_2146D95B8();
      v549 = v548;
    }

    else
    {
      v547 = 0;
      v549 = 0;
    }

    v550 = [v477 releaseDate];
    if (v550)
    {
      v551 = v1330;
      v552 = v550;
      sub_2146D8AE8();

      v553 = sub_2146D8B08();
      (*(*(v553 - 8) + 56))(v551, 0, 1, v553);
    }

    else
    {
      v554 = sub_2146D8B08();
      (*(*(v554 - 8) + 56))(v1330, 1, 1, v554);
    }

    v555 = [v477 artwork];
    if (v555)
    {
      *&v1405 = v555;
      v556 = v555;
      v557 = v1353;
      sub_213FC2A4C(&v1405, &v1398, &v1419);
      v1353 = v557;
      if (v557)
      {

        v230 = &qword_27C913090;
        v231 = &unk_2146E9DB0;
        v232 = v1330;
        goto LABEL_151;
      }

      nullsub_1();
    }

    else
    {
      sub_2144008B4(&v1419);
    }

    v1409 = v1423;
    v1410 = v1424;
    v1411[0] = v1425[0];
    *(v1411 + 9) = *(v1425 + 9);
    v1405 = v1419;
    v1406 = v1420;
    v1407 = v1421;
    v1408 = v1422;
    v564 = [v477 artworkMetadata];
    if (v564)
    {
      *&v1398 = v564;
      v565 = v564;
      v566 = v1353;
      sub_213FC29FC(&v1398, &v1391, v1329);
      v1353 = v566;
      if (v566)
      {

        sub_213FB2DF4(&v1405, &qword_27C904868, &qword_2146EDB58);

        v230 = &qword_27C913090;
        v231 = &unk_2146E9DB0;
        v232 = v1330;
        goto LABEL_151;
      }

      v573 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v573 - 8) + 56))(v1329, 0, 1, v573);
    }

    else
    {
      v567 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v567 - 8) + 56))(v1329, 1, 1, v567);
    }

    v574 = [v477 offers];
    if (v574)
    {
      v575 = v574;
      v576 = sub_2146D9918();
    }

    else
    {

      v576 = 0;
    }

    v285 = v1325;
    v593 = v1351;
    v1325->isa = v1350;
    v285[1].isa = v593;
    v285[2].isa = v1349;
    v285[3].isa = v536;
    v285[4].isa = v1344;
    v285[5].isa = v540;
    v285[6].isa = v1343;
    v285[7].isa = v544;
    v285[8].isa = v547;
    v285[9].isa = v549;
    v594 = type metadata accessor for LinkPresentation.PodcastEpisodeMetadata(0);
    sub_21408AC04(v1330, v285 + v594[9], &qword_27C913090, &unk_2146E9DB0);
    v595 = (v285 + v594[10]);
    v596 = v1410;
    v595[4] = v1409;
    v595[5] = v596;
    v595[6] = v1411[0];
    *(v595 + 105) = *(v1411 + 9);
    v597 = v1406;
    *v595 = v1405;
    v595[1] = v597;
    v598 = v1408;
    v595[2] = v1407;
    v595[3] = v598;
    sub_21408AC04(v1329, v285 + v594[11], &qword_27C904878, &unk_2146EDB68);
    *(&v285->isa + v594[12]) = v576;
    v247 = v1347;
    goto LABEL_91;
  }

  objc_opt_self();
  v522 = swift_dynamicCastObjCClass();
  if (v522)
  {
    v523 = v522;
    v524 = [v522 storeFrontIdentifier];
    if (v524)
    {
      v525 = v524;
      v1351 = sub_2146D95B8();
      v527 = v526;
    }

    else
    {
      v1351 = 0;
      v527 = 0;
    }

    v577 = [v523 storeIdentifier];
    if (v577)
    {
      v578 = v577;
      v1350 = sub_2146D95B8();
      v580 = v579;
    }

    else
    {
      v1350 = 0;
      v580 = 0;
    }

    v581 = [v523 name];
    if (v581)
    {
      v582 = v581;
      v1349 = sub_2146D95B8();
      v584 = v583;
    }

    else
    {
      v1349 = 0;
      v584 = 0;
    }

    v585 = [v523 artist];
    if (v585)
    {
      v586 = v585;
      v587 = sub_2146D95B8();
      v589 = v588;
    }

    else
    {
      v587 = 0;
      v589 = 0;
    }

    v590 = [v523 artwork];
    if (v590)
    {
      *&v1405 = v590;
      v591 = v590;
      v592 = v1353;
      sub_213FC2A4C(&v1405, &v1398, &v1419);
      v1353 = v592;
      if (v592)
      {

        goto LABEL_327;
      }

      nullsub_1();
    }

    else
    {
      sub_2144008B4(&v1419);
    }

    v1409 = v1423;
    v1410 = v1424;
    v1411[0] = v1425[0];
    *(v1411 + 9) = *(v1425 + 9);
    v1405 = v1419;
    v1406 = v1420;
    v1407 = v1421;
    v1408 = v1422;
    v599 = [v523 artworkMetadata];
    if (v599)
    {
      *&v1398 = v599;
      v600 = v599;
      v601 = v1353;
      sub_213FC29FC(&v1398, &v1391, v1326);
      v1353 = v601;
      if (v601)
      {

        sub_213FB2DF4(&v1405, &qword_27C904868, &qword_2146EDB58);

        return;
      }

      v609 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v609 - 8) + 56))(v1326, 0, 1, v609);
    }

    else
    {
      v602 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v602 - 8) + 56))(v1326, 1, 1, v602);
    }

    v610 = [v523 offers];
    if (v610)
    {
      v611 = v610;
      v612 = sub_2146D9918();
    }

    else
    {

      v612 = 0;
    }

    v237 = v1323;
    *v1323 = v1351;
    v237[1] = v527;
    v237[2] = v1350;
    v237[3] = v580;
    v237[4] = v1349;
    v237[5] = v584;
    v237[6] = v587;
    v237[7] = v589;
    v634 = v1410;
    *(v237 + 8) = v1409;
    *(v237 + 9) = v634;
    *(v237 + 10) = v1411[0];
    *(v237 + 169) = *(v1411 + 9);
    v635 = v1406;
    *(v237 + 4) = v1405;
    *(v237 + 5) = v635;
    v636 = v1408;
    *(v237 + 6) = v1407;
    *(v237 + 7) = v636;
    v637 = type metadata accessor for LinkPresentation.PodcastMetadata(0);
    sub_21408AC04(v1326, v237 + *(v637 + 36), &qword_27C904878, &unk_2146EDB68);
    *(v237 + *(v637 + 40)) = v612;
    v247 = v1347;
LABEL_67:
    swift_storeEnumTagMultiPayload();
    v248 = v237;
LABEL_129:
    v333 = v1345;
    sub_214400A9C(v248, v1345, type metadata accessor for LinkPresentation.SpecializationMetadata);
LABEL_130:
    v334 = v1348;
    v335 = v1346;
    sub_214400A9C(v333, v1348, type metadata accessor for LinkPresentation.SpecializationMetadata);
    (*(v335 + 56))(v334, 0, 1, v247);
    return;
  }

  objc_opt_self();
  v568 = swift_dynamicCastObjCClass();
  if (v568)
  {
    v569 = v568;
    v570 = [v568 storeFrontIdentifier];
    if (v570)
    {
      v571 = v570;
      v1350 = sub_2146D95B8();
      v1351 = v572;
    }

    else
    {
      v1350 = 0;
      v1351 = 0;
    }

    v613 = [v569 storeIdentifier];
    if (v613)
    {
      v614 = v613;
      v1349 = sub_2146D95B8();
      v616 = v615;
    }

    else
    {
      v1349 = 0;
      v616 = 0;
    }

    v617 = [v569 episodeName];
    if (v617)
    {
      v618 = v617;
      v1344 = sub_2146D95B8();
      v620 = v619;
    }

    else
    {
      v1344 = 0;
      v620 = 0;
    }

    v621 = [v569 seasonName];
    if (v621)
    {
      v622 = v621;
      v623 = sub_2146D95B8();
      v625 = v624;
    }

    else
    {
      v623 = 0;
      v625 = 0;
    }

    v626 = [v569 genre];
    if (v626)
    {
      v627 = v626;
      v628 = sub_2146D95B8();
      v630 = v629;
    }

    else
    {
      v628 = 0;
      v630 = 0;
    }

    v631 = [v569 artwork];
    if (v631)
    {
      *&v1405 = v631;
      v632 = v631;
      v633 = v1353;
      sub_213FC2A4C(&v1405, &v1398, &v1419);
      v1353 = v633;
      if (v633)
      {

        goto LABEL_328;
      }

      nullsub_1();
    }

    else
    {
      sub_2144008B4(&v1419);
    }

    v1409 = v1423;
    v1410 = v1424;
    v1411[0] = v1425[0];
    *(v1411 + 9) = *(v1425 + 9);
    v1405 = v1419;
    v1406 = v1420;
    v1407 = v1421;
    v1408 = v1422;
    v638 = [v569 artworkMetadata];
    if (v638)
    {
      *&v1398 = v638;
      v288 = v638;
      v639 = v1353;
      sub_213FC29FC(&v1398, &v1391, v1324);
      v1353 = v639;
      if (v639)
      {

LABEL_413:

        sub_213FB2DF4(&v1405, &qword_27C904868, &qword_2146EDB58);

        goto LABEL_121;
      }

      v648 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v648 - 8) + 56))(v1324, 0, 1, v648);
    }

    else
    {

      v640 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v640 - 8) + 56))(v1324, 1, 1, v640);
    }

    v649 = v1321;
    v650 = v1351;
    *v1321 = v1350;
    *(v649 + 1) = v650;
    *(v649 + 2) = v1349;
    *(v649 + 3) = v616;
    *(v649 + 4) = v1344;
    *(v649 + 5) = v620;
    *(v649 + 6) = v623;
    *(v649 + 7) = v625;
    *(v649 + 8) = v628;
    *(v649 + 9) = v630;
    v651 = v1410;
    *(v649 + 9) = v1409;
    *(v649 + 10) = v651;
    *(v649 + 11) = v1411[0];
    *(v649 + 185) = *(v1411 + 9);
    v652 = v1406;
    *(v649 + 5) = v1405;
    *(v649 + 6) = v652;
    v653 = v1408;
    *(v649 + 7) = v1407;
    *(v649 + 8) = v653;
    v654 = type metadata accessor for LinkPresentation.TVEpisodeMetadata(0);
    sub_21408AC04(v1324, &v649[*(v654 + 40)], &qword_27C904878, &unk_2146EDB68);
    v247 = v1347;
LABEL_372:
    swift_storeEnumTagMultiPayload();
    v248 = v649;
    goto LABEL_129;
  }

  objc_opt_self();
  v603 = swift_dynamicCastObjCClass();
  if (v603)
  {
    v604 = v603;
    v605 = [v603 storeFrontIdentifier];
    if (v605)
    {
      v606 = v605;
      v1351 = sub_2146D95B8();
      v608 = v607;
    }

    else
    {
      v1351 = 0;
      v608 = 0;
    }

    v655 = [v604 storeIdentifier];
    if (v655)
    {
      v656 = v655;
      v1350 = sub_2146D95B8();
      v658 = v657;
    }

    else
    {
      v1350 = 0;
      v658 = 0;
    }

    v659 = [v604 name];
    if (v659)
    {
      v660 = v659;
      v661 = sub_2146D95B8();
      v663 = v662;
    }

    else
    {
      v661 = 0;
      v663 = 0;
    }

    v664 = [v604 genre];
    if (v664)
    {
      v665 = v664;
      v666 = sub_2146D95B8();
      v668 = v667;
    }

    else
    {
      v666 = 0;
      v668 = 0;
    }

    v669 = [v604 artwork];
    if (v669)
    {
      *&v1405 = v669;
      v670 = v669;
      v671 = v1353;
      sub_213FC2A4C(&v1405, &v1398, &v1419);
      v1353 = v671;
      if (v671)
      {
LABEL_385:

        goto LABEL_327;
      }

      nullsub_1();
    }

    else
    {
      sub_2144008B4(&v1419);
    }

    v1409 = v1423;
    v1410 = v1424;
    v1411[0] = v1425[0];
    *(v1411 + 9) = *(v1425 + 9);
    v1405 = v1419;
    v1406 = v1420;
    v1407 = v1421;
    v1408 = v1422;
    v672 = [v604 artworkMetadata];
    if (v672)
    {
      *&v1398 = v672;
      v288 = v672;
      v673 = v1353;
      sub_213FC29FC(&v1398, &v1391, v1322);
      v1353 = v673;
      if (v673)
      {
LABEL_390:

LABEL_412:

        goto LABEL_413;
      }

      v681 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v681 - 8) + 56))(v1322, 0, 1, v681);
    }

    else
    {

      v674 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v674 - 8) + 56))(v1322, 1, 1, v674);
    }

    v682 = v1318;
    *v1318 = v1351;
    v682[1] = v608;
    v682[2] = v1350;
    v682[3] = v658;
    v682[4] = v661;
    v682[5] = v663;
    v682[6] = v666;
    v682[7] = v668;
    v683 = v1410;
    *(v682 + 8) = v1409;
    *(v682 + 9) = v683;
    *(v682 + 10) = v1411[0];
    *(v682 + 169) = *(v1411 + 9);
    v684 = v1406;
    *(v682 + 4) = v1405;
    *(v682 + 5) = v684;
    v685 = v1408;
    *(v682 + 6) = v1407;
    *(v682 + 7) = v685;
    v686 = type metadata accessor for LinkPresentation.TVSeasonMetadata(0);
    sub_21408AC04(v1322, v682 + *(v686 + 36), &qword_27C904878, &unk_2146EDB68);
    v247 = v1347;
LABEL_397:
    swift_storeEnumTagMultiPayload();
    v248 = v682;
    goto LABEL_129;
  }

  objc_opt_self();
  v641 = swift_dynamicCastObjCClass();
  if (v641)
  {
    v642 = v641;
    v643 = [v641 storeFrontIdentifier];
    if (v643)
    {
      v644 = v643;
      v645 = sub_2146D95B8();
      v647 = v646;
    }

    else
    {
      v645 = 0;
      v647 = 0;
    }

    v687 = [v642 storeIdentifier];
    if (v687)
    {
      v688 = v687;
      v689 = sub_2146D95B8();
      v691 = v690;
    }

    else
    {
      v689 = 0;
      v691 = 0;
    }

    v692 = [v642 name];
    if (v692)
    {
      v693 = v692;
      v694 = sub_2146D95B8();
      v696 = v695;
    }

    else
    {
      v694 = 0;
      v696 = 0;
    }

    v697 = [v642 artwork];
    if (v697)
    {
      *&v1405 = v697;
      v698 = v697;
      v699 = v1353;
      sub_213FC2A4C(&v1405, &v1398, &v1419);
      v1353 = v699;
      if (v699)
      {

        goto LABEL_327;
      }

      nullsub_1();
    }

    else
    {
      sub_2144008B4(&v1419);
    }

    v1409 = v1423;
    v1410 = v1424;
    v1411[0] = v1425[0];
    *(v1411 + 9) = *(v1425 + 9);
    v1405 = v1419;
    v1406 = v1420;
    v1407 = v1421;
    v1408 = v1422;
    v700 = [v642 artworkMetadata];
    if (v700)
    {
      *&v1398 = v700;
      v288 = v700;
      v701 = v1353;
      sub_213FC29FC(&v1398, &v1391, v1319);
      v1353 = v701;
      if (v701)
      {
        goto LABEL_412;
      }

      v709 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v709 - 8) + 56))(v1319, 0, 1, v709);
    }

    else
    {

      v702 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v702 - 8) + 56))(v1319, 1, 1, v702);
    }

    v237 = v1312;
    *v1312 = v645;
    v237[1] = v647;
    v237[2] = v689;
    v237[3] = v691;
    v237[4] = v694;
    v237[5] = v696;
    v710 = v1410;
    *(v237 + 7) = v1409;
    *(v237 + 8) = v710;
    *(v237 + 9) = v1411[0];
    *(v237 + 153) = *(v1411 + 9);
    v711 = v1406;
    *(v237 + 3) = v1405;
    *(v237 + 4) = v711;
    v712 = v1408;
    *(v237 + 5) = v1407;
    *(v237 + 6) = v712;
    v713 = type metadata accessor for LinkPresentation.TVShowMetadata(0);
    sub_21408AC04(v1319, v237 + *(v713 + 32), &qword_27C904878, &unk_2146EDB68);
    v247 = v1347;
    goto LABEL_67;
  }

  objc_opt_self();
  v675 = swift_dynamicCastObjCClass();
  if (v675)
  {
    v676 = v675;
    v677 = [v675 storeFrontIdentifier];
    if (v677)
    {
      v678 = v677;
      v1351 = sub_2146D95B8();
      v680 = v679;
    }

    else
    {
      v1351 = 0;
      v680 = 0;
    }

    v714 = [v676 storeIdentifier];
    if (v714)
    {
      v715 = v714;
      v1350 = sub_2146D95B8();
      v717 = v716;
    }

    else
    {
      v1350 = 0;
      v717 = 0;
    }

    v718 = [v676 name];
    if (v718)
    {
      v719 = v718;
      v720 = sub_2146D95B8();
      v722 = v721;
    }

    else
    {
      v720 = 0;
      v722 = 0;
    }

    v723 = [v676 genre];
    if (v723)
    {
      v724 = v723;
      v725 = sub_2146D95B8();
      v727 = v726;
    }

    else
    {
      v725 = 0;
      v727 = 0;
    }

    v728 = [v676 artwork];
    if (v728)
    {
      *&v1405 = v728;
      v670 = v728;
      v729 = v1353;
      sub_213FC2A4C(&v1405, &v1398, &v1419);
      v1353 = v729;
      if (v729)
      {
        goto LABEL_385;
      }

      nullsub_1();
    }

    else
    {
      sub_2144008B4(&v1419);
    }

    v1409 = v1423;
    v1410 = v1424;
    v1411[0] = v1425[0];
    *(v1411 + 9) = *(v1425 + 9);
    v1405 = v1419;
    v1406 = v1420;
    v1407 = v1421;
    v1408 = v1422;
    v730 = [v676 artworkMetadata];
    if (v730)
    {
      *&v1398 = v730;
      v288 = v730;
      v731 = v1353;
      sub_213FC29FC(&v1398, &v1391, v1313);
      v1353 = v731;
      if (v731)
      {
        goto LABEL_390;
      }

      v732 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v732 - 8) + 56))(v1313, 0, 1, v732);
    }

    else
    {

      v733 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v733 - 8) + 56))(v1313, 1, 1, v733);
    }

    sub_2144008B4(&v1398);
    v682 = v1310;
    *v1310 = v1351;
    v682[1] = v680;
    v682[2] = v1350;
    v682[3] = v717;
    v682[4] = v720;
    v682[5] = v722;
    v682[6] = v725;
    v682[7] = v727;
    v734 = v1410;
    *(v682 + 8) = v1409;
    *(v682 + 9) = v734;
    *(v682 + 10) = v1411[0];
    *(v682 + 169) = *(v1411 + 9);
    v735 = v1406;
    *(v682 + 4) = v1405;
    *(v682 + 5) = v735;
    v736 = v1408;
    *(v682 + 6) = v1407;
    *(v682 + 7) = v736;
    v737 = type metadata accessor for LinkPresentation.MovieMetadata(0);
    sub_21408AC04(v1313, v682 + v737[9], &qword_27C904878, &unk_2146EDB68);
    v738 = (v682 + v737[10]);
    v739 = v1403;
    v738[4] = v1402;
    v738[5] = v739;
    v738[6] = v1404[0];
    *(v738 + 105) = *(v1404 + 9);
    v740 = v1399;
    *v738 = v1398;
    v738[1] = v740;
    v741 = v1401;
    v738[2] = v1400;
    v738[3] = v741;
    v742 = (v682 + v737[11]);
    *v742 = 0;
    v742[1] = 0;
    v247 = v1347;
    goto LABEL_397;
  }

  objc_opt_self();
  v703 = swift_dynamicCastObjCClass();
  if (v703)
  {
    v704 = v703;
    v705 = [v703 storeFrontIdentifier];
    if (v705)
    {
      v706 = v705;
      v1351 = sub_2146D95B8();
      v708 = v707;
    }

    else
    {
      v1351 = 0;
      v708 = 0;
    }

    v746 = [v704 storeIdentifier];
    if (v746)
    {
      v747 = v746;
      v1350 = sub_2146D95B8();
      v749 = v748;
    }

    else
    {
      v1350 = 0;
      v749 = 0;
    }

    v750 = [v704 name];
    if (v750)
    {
      v751 = v750;
      v752 = sub_2146D95B8();
      v754 = v753;
    }

    else
    {
      v752 = 0;
      v754 = 0;
    }

    v755 = [v704 genre];
    if (v755)
    {
      v756 = v755;
      v757 = sub_2146D95B8();
      v759 = v758;
    }

    else
    {
      v757 = 0;
      v759 = 0;
    }

    v760 = [v704 artwork];
    if (v760)
    {
      *&v1405 = v760;
      v670 = v760;
      v761 = v1353;
      sub_213FC2A4C(&v1405, &v1398, &v1419);
      v1353 = v761;
      if (v761)
      {
        goto LABEL_385;
      }

      nullsub_1();
    }

    else
    {
      sub_2144008B4(&v1419);
    }

    v1409 = v1423;
    v1410 = v1424;
    v1411[0] = v1425[0];
    *(v1411 + 9) = *(v1425 + 9);
    v1405 = v1419;
    v1406 = v1420;
    v1407 = v1421;
    v1408 = v1422;
    v762 = [v704 artworkMetadata];
    if (v762)
    {
      *&v1398 = v762;
      v288 = v762;
      v763 = v1353;
      sub_213FC29FC(&v1398, &v1391, v1311);
      v1353 = v763;
      if (v763)
      {
        goto LABEL_390;
      }

      v764 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v764 - 8) + 56))(v1311, 0, 1, v764);
    }

    else
    {

      v765 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      (*(*(v765 - 8) + 56))(v1311, 1, 1, v765);
    }

    v682 = v1309;
    *v1309 = v1351;
    v682[1] = v708;
    v682[2] = v1350;
    v682[3] = v749;
    v682[4] = v752;
    v682[5] = v754;
    v682[6] = v757;
    v682[7] = v759;
    v766 = v1410;
    *(v682 + 8) = v1409;
    *(v682 + 9) = v766;
    *(v682 + 10) = v1411[0];
    *(v682 + 169) = *(v1411 + 9);
    v767 = v1406;
    *(v682 + 4) = v1405;
    *(v682 + 5) = v767;
    v768 = v1408;
    *(v682 + 6) = v1407;
    *(v682 + 7) = v768;
    v769 = type metadata accessor for LinkPresentation.MovieBundleMetadata(0);
    sub_21408AC04(v1311, v682 + *(v769 + 36), &qword_27C904878, &unk_2146EDB68);
    v247 = v1347;
    goto LABEL_397;
  }

  objc_opt_self();
  v1349 = swift_dynamicCastObjCClass();
  if (v1349)
  {
    *&v1391 = MEMORY[0x277D84F90];
    v743 = [(objc_class *)v1349 encodedTokens];
    if (v743)
    {
      v744 = v743;
      sub_21404A8B8(0, &unk_27C9131C0, off_278175128);
      v745 = sub_2146D9488();
    }

    else
    {
      v745 = sub_214046834(MEMORY[0x277D84F90]);
    }

    sub_21464225C(v745);
    v778 = v777;

    v779 = 0;
    v780 = *(v778 + 8);
    v1351 = v778 + 64;
    v1344 = v778;
    v781 = 1 << v778[32];
    v782 = -1;
    if (v781 < 64)
    {
      v782 = ~(-1 << v781);
    }

    v783 = v782 & v780;
    v784 = (v781 + 63) >> 6;
    if ((v782 & v780) != 0)
    {
      while (1)
      {
        v785 = v779;
LABEL_476:
        v787 = __clz(__rbit64(v783));
        v783 &= v783 - 1;
        v788 = v787 | (v785 << 6);
        v789 = (*(v1344 + 6) + 16 * v788);
        v791 = *v789;
        v790 = v789[1];
        sub_2140537E4(*(v1344 + 7) + 32 * v788, &v1398);
        *&v1405 = v791;
        *(&v1405 + 1) = v790;
        sub_213FDC730(&v1398, &v1406);

        v1350 = v785;
LABEL_477:
        v1419 = v1405;
        v1420 = v1406;
        v1421 = v1407;
        v792 = *(&v1405 + 1);
        if (!*(&v1405 + 1))
        {
          break;
        }

        v793 = v1419;
        v794 = sub_2146D9588();
        v795 = v1349;
        v796 = [(objc_class *)v1349 tokenDataForHandle:v794];

        v797 = sub_2146D8A58();
        v799 = v798;

        v800 = sub_2146D9588();
        v801 = [(objc_class *)v795 shareURLForHandle:v800];

        v802 = v1315;
        sub_2146D88E8();

        v803 = v1353;
        sub_2145A9478(v797, v799, v802, 0, 0, v1320);
        v1353 = v803;
        if (v803)
        {

          __swift_destroy_boxed_opaque_existential_1(&v1420);
          return;
        }

        v804 = v1320;
        v805 = v1314;
        sub_2144009D8(v1320, v1314, type metadata accessor for CloudKitSharingToken);
        v806 = v1316;
        sub_214070530(v793, v792, v805, v1316);
        v807 = v1317;
        sub_2144009D8(v806, v1317, type metadata accessor for LinkPresentation.EncodedToken);
        v745 = &v1391;
        sub_2143E330C(v807);
        sub_214400B04(v806, type metadata accessor for LinkPresentation.EncodedToken);
        sub_214400B04(v804, type metadata accessor for CloudKitSharingToken);
        __swift_destroy_boxed_opaque_existential_1(&v1420);
        v779 = v1350;
        if (!v783)
        {
          goto LABEL_469;
        }
      }

      v808 = [(objc_class *)v1349 application];
      if (v808)
      {
        v809 = v808;
        v810 = sub_2146D95B8();
        v812 = v811;
      }

      else
      {
        v810 = 0;
        v812 = 0;
      }

      v817 = [(objc_class *)v1349 kind];
      if (v817)
      {
        v818 = v817;
        v819 = sub_2146D95B8();
        v821 = v820;
      }

      else
      {
        v819 = 0;
        v821 = 0;
      }

      v822 = [(objc_class *)v1349 title];
      if (v822)
      {
        v823 = v822;
        v824 = sub_2146D95B8();
        v826 = v825;
      }

      else
      {
        v824 = 0;
        v826 = 0;
      }

      v827 = [(objc_class *)v1349 icon];
      if (v827)
      {
        v828 = v827;
        *&v1405 = v827;
        v829 = v1353;
        sub_213FC2A4C(&v1405, &v1398, &v1419);
        v1353 = v829;
        if (v829)
        {

          goto LABEL_675;
        }

        nullsub_1();
      }

      else
      {
        sub_2144008B4(&v1419);
      }

      v1409 = v1423;
      v1410 = v1424;
      v1411[0] = v1425[0];
      *(v1411 + 9) = *(v1425 + 9);
      v1405 = v1419;
      v1406 = v1420;
      v1407 = v1421;
      v1408 = v1422;
      v843 = [(objc_class *)v1349 thumbnail];
      if (v843)
      {
        v844 = v843;
        *&v1384 = v843;
        v845 = v1353;
        sub_213FC2A4C(&v1384, &v1431, &v1398);
        v1353 = v845;
        if (v845)
        {

          sub_213FB2DF4(&v1405, &qword_27C904868, &qword_2146EDB58);

          goto LABEL_675;
        }

        nullsub_1();
      }

      else
      {

        sub_2144008B4(&v1398);
      }

      v854 = v1391;
      *(&v1357[4] + 7) = v1402;
      *(&v1357[5] + 7) = v1403;
      *(&v1357[6] + 7) = v1404[0];
      v1357[7] = *(v1404 + 9);
      *(v1357 + 7) = v1398;
      *(&v1357[1] + 7) = v1399;
      *(&v1357[2] + 7) = v1400;
      *(&v1357[3] + 7) = v1401;
      v285 = v1297;
      *v1297 = v810;
      v285[1].isa = v812;
      v285[2].isa = v819;
      v285[3].isa = v821;
      v285[4].isa = v824;
      v285[5].isa = v826;
      v855 = v1408;
      *&v285[10].isa = v1407;
      *&v285[12].isa = v855;
      v856 = v1406;
      *&v285[6].isa = v1405;
      *&v285[8].isa = v856;
      *(&v285[19].isa + 1) = *(v1411 + 9);
      v857 = v1411[0];
      v858 = v1409;
      *&v285[16].isa = v1410;
      *&v285[18].isa = v857;
      *&v285[14].isa = v858;
      v859 = v1357[0];
      v860 = v1357[1];
      v861 = v1357[2];
      *(&v285[27].isa + 1) = v1357[3];
      *(&v285[25].isa + 1) = v861;
      *(&v285[23].isa + 1) = v860;
      *(&v285[21].isa + 1) = v859;
      v862 = v1357[4];
      v863 = v1357[5];
      v864 = v1357[7];
      *(&v285[33].isa + 1) = v1357[6];
      *(&v285[35].isa + 1) = v864;
      *(&v285[31].isa + 1) = v863;
      *(&v285[29].isa + 1) = v862;
      v285[38].isa = v854;
      v247 = v1347;
      goto LABEL_91;
    }

LABEL_469:
    if (v784 <= &v779->isa + 1)
    {
      v786 = &v779->isa + 1;
    }

    else
    {
      v786 = v784;
    }

    v1350 = (v786 - 1);
    while (1)
    {
      v785 = (&v779->isa + 1);
      if (__OFADD__(v779, 1))
      {
        break;
      }

      if (v785 >= v784)
      {
        v783 = 0;
        v1407 = 0u;
        v1406 = 0u;
        v1405 = 0u;
        goto LABEL_477;
      }

      v783 = *&v1351[8 * v785];
      v779 = (v779 + 1);
      if (v783)
      {
        goto LABEL_476;
      }
    }

    __break(1u);
    goto LABEL_528;
  }

  objc_opt_self();
  v770 = swift_dynamicCastObjCClass();
  if (v770)
  {
    v771 = v770;
    v772 = [v770 title];
    if (v772)
    {
      v773 = v772;
      v774 = sub_2146D95B8();
      v776 = v775;
    }

    else
    {
      v774 = 0;
      v776 = 0;
    }

    v830 = [v771 subtitle];
    if (v830)
    {
      v831 = v830;
      v832 = sub_2146D95B8();
      v834 = v833;
    }

    else
    {
      v832 = 0;
      v834 = 0;
    }

    v835 = [v771 action];
    if (v835)
    {
      v836 = v835;
      v837 = sub_2146D95B8();
      v839 = v838;
    }

    else
    {
      v837 = 0;
      v839 = 0;
    }

    v840 = [v771 image];
    if (v840)
    {
      v841 = v840;
      *&v1405 = v840;
      v842 = v1353;
      sub_213FC2A4C(&v1405, &v1398, &v1419);
      v1353 = v842;
      if (v842)
      {

        goto LABEL_327;
      }

      nullsub_1();
    }

    else
    {

      sub_2144008B4(&v1419);
    }

    v682 = v1280;
    *v1280 = v774;
    v682[1] = v776;
    v682[2] = v832;
    v682[3] = v834;
    v682[4] = v837;
    v682[5] = v839;
    v846 = v1424;
    *(v682 + 7) = v1423;
    *(v682 + 8) = v846;
    *(v682 + 9) = v1425[0];
    *(v682 + 153) = *(v1425 + 9);
    v847 = v1420;
    *(v682 + 3) = v1419;
    *(v682 + 4) = v847;
    v848 = v1422;
    *(v682 + 5) = v1421;
    *(v682 + 6) = v848;
    v247 = v1347;
    goto LABEL_397;
  }

  objc_opt_self();
  v813 = swift_dynamicCastObjCClass();
  if (v813)
  {
    v783 = v813;
    v814 = [v813 game];
    if (v814)
    {
      v815 = v814;
      v784 = sub_2146D95B8();
      v745 = v816;
    }

    else
    {
      v784 = 0;
      v745 = 0;
    }

    v865 = [v783 image];
    if (!v865)
    {
      sub_2144008B4(&v1419);
LABEL_529:
      v1409 = v1423;
      v1410 = v1424;
      v1411[0] = v1425[0];
      *(v1411 + 9) = *(v1425 + 9);
      v1405 = v1419;
      v1406 = v1420;
      v1407 = v1421;
      v1408 = v1422;
      v867 = [v783 icon];
      if (v867)
      {
        v868 = v867;
        *&v1391 = v867;
        v869 = v1353;
        sub_213FC2A4C(&v1391, &v1384, &v1398);
        v1353 = v869;
        if (v869)
        {
          sub_213FB2DF4(&v1405, &qword_27C904868, &qword_2146EDB58);

          goto LABEL_675;
        }

        nullsub_1();
      }

      else
      {
        sub_2144008B4(&v1398);
      }

      v1395 = v1402;
      v1396 = v1403;
      v1397[0] = v1404[0];
      *(v1397 + 9) = *(v1404 + 9);
      v1391 = v1398;
      v1392 = v1399;
      v1393 = v1400;
      v1394 = v1401;
      v877 = [v783 numberOfPlayers];
      v878 = [v783 minimumNumberOfPlayers];
      v879 = [v783 maximumNumberOfPlayers];

      *(&v1358[4] + 7) = v1395;
      *(&v1358[5] + 7) = v1396;
      *(&v1358[6] + 7) = v1397[0];
      v1358[7] = *(v1397 + 9);
      *(v1358 + 7) = v1391;
      *(&v1358[1] + 7) = v1392;
      *(&v1358[2] + 7) = v1393;
      *(&v1358[3] + 7) = v1394;
      v237 = v1282;
      *v1282 = v784;
      v237[1] = v745;
      *(v237 + 121) = *(v1411 + 9);
      v880 = v1411[0];
      v881 = v1409;
      *(v237 + 6) = v1410;
      *(v237 + 7) = v880;
      v882 = v1407;
      *(v237 + 4) = v1408;
      *(v237 + 5) = v881;
      v883 = v1405;
      *(v237 + 2) = v1406;
      *(v237 + 3) = v882;
      *(v237 + 1) = v883;
      v884 = v1358[0];
      v885 = v1358[1];
      v886 = v1358[2];
      *(v237 + 185) = v1358[3];
      *(v237 + 169) = v886;
      *(v237 + 153) = v885;
      *(v237 + 137) = v884;
      v887 = v1358[4];
      v888 = v1358[5];
      v889 = v1358[6];
      *(v237 + 249) = v1358[7];
      *(v237 + 233) = v889;
      *(v237 + 217) = v888;
      *(v237 + 201) = v887;
      *(v237 + 67) = v877;
      *(v237 + 68) = v878;
      *(v237 + 69) = v879;
      v247 = v1347;
      goto LABEL_67;
    }

    *&v1405 = v865;
    v785 = v865;
    v866 = v1353;
    sub_213FC2A4C(&v1405, &v1398, &v1419);
    v1353 = v866;
    if (v866)
    {

      goto LABEL_675;
    }

LABEL_528:

    nullsub_1();
    goto LABEL_529;
  }

  objc_opt_self();
  v849 = swift_dynamicCastObjCClass();
  if (v849)
  {
    v850 = v849;
    v851 = [v849 name];
    if (v851)
    {
      v852 = v851;
      v1339 = sub_2146D95B8();
      v1351 = v853;
    }

    else
    {
      v1339 = 0;
      v1351 = 0;
    }

    v890 = [v850 address];
    if (v890)
    {
      v891 = v890;
      v1338 = sub_2146D95B8();
      v1350 = v892;
    }

    else
    {
      v1338 = 0;
      v1350 = 0;
    }

    v893 = [v850 addressComponents];
    if (v893)
    {
      v894 = v893;
      sub_2144001E4(v894, &v1398);

      v1409 = v1402;
      v1410 = v1403;
      v1411[0] = v1404[0];
      v1411[1] = v1404[1];
      v1405 = v1398;
      v1406 = v1399;
      v1407 = v1400;
      v1408 = v1401;
      nullsub_1();
      v1423 = v1409;
      v1424 = v1410;
      v1425[0] = v1411[0];
      v1425[1] = v1411[1];
      v1419 = v1405;
      v1420 = v1406;
      v1421 = v1407;
      v1422 = v1408;
    }

    else
    {
      sub_214400940(&v1419);
    }

    v895 = [v850 category];
    if (v895)
    {
      v896 = v895;
      v1337 = sub_2146D95B8();
      v898 = v897;
    }

    else
    {
      v1337 = 0;
      v898 = 0;
    }

    v899 = [v850 categoryIcon];
    if (v899)
    {
      v900 = v899;
      *&v1405 = v899;
      v901 = v1353;
      sub_213FC2A4C(&v1405, &v1398, &v1431);
      v1353 = v901;
      if (v901)
      {
        sub_213FB2DF4(&v1419, &qword_27C904890, &qword_2146EDB90);

        return;
      }

      nullsub_1();
    }

    else
    {
      sub_2144008B4(&v1431);
    }

    v1416 = v1435;
    v1417 = v1436;
    v1418[0] = v1437[0];
    *(v1418 + 9) = *(v1437 + 9);
    v1412 = v1431;
    v1413 = v1432;
    v1414 = v1433;
    v1415 = v1434;
    v902 = [v850 searchQuery];
    if (v902)
    {
      v903 = v902;
      v1336 = sub_2146D95B8();
      v1349 = v904;
    }

    else
    {
      v1336 = 0;
      v1349 = 0;
    }

    v905 = [v850 directionsType];
    if (v905)
    {
      v906 = v905;
      v1335 = sub_2146D95B8();
      v1344 = v907;
    }

    else
    {
      v1335 = 0;
      v1344 = 0;
    }

    v908 = [v850 transportType];
    v909 = v908;
    if (v908)
    {
      v1334 = [v908 unsignedIntegerValue];
    }

    else
    {
      v1334 = 0;
    }

    v910 = [v850 directionsSourceAddress];
    if (v910)
    {
      v911 = v910;
      v1333 = sub_2146D95B8();
      v1343 = v912;
    }

    else
    {
      v1333 = 0;
      v1343 = 0;
    }

    v913 = [v850 directionsSourceAddressComponents];
    v914 = v1353;
    sub_2143E3A0C(v913, &v1398);

    v1409 = v1402;
    v1410 = v1403;
    v1411[0] = v1404[0];
    v1411[1] = v1404[1];
    v1405 = v1398;
    v1406 = v1399;
    v1407 = v1400;
    v1408 = v1401;
    v915 = [v850 directionsSourceLocationName];
    if (v915)
    {
      v916 = v915;
      v1332 = sub_2146D95B8();
      v1342 = v917;
    }

    else
    {
      v1332 = 0;
      v1342 = 0;
    }

    v918 = [v850 directionsDestinationAddress];
    if (v918)
    {
      v919 = v918;
      v1331 = sub_2146D95B8();
      v1341 = v920;
    }

    else
    {
      v1331 = 0;
      v1341 = 0;
    }

    v921 = [v850 directionsDestinationAddressComponents];
    sub_2143E3A0C(v921, &v1384);

    v1395 = v1388;
    v1396 = v1389;
    v1397[0] = v1390[0];
    v1397[1] = v1390[1];
    v1391 = v1384;
    v1392 = v1385;
    v1393 = v1386;
    v1394 = v1387;
    v922 = [v850 directionsDestinationLocationName];
    if (v922)
    {
      v923 = v922;
      v1330 = sub_2146D95B8();
      v1340 = v924;
    }

    else
    {
      v1330 = 0;
      v1340 = 0;
    }

    v925 = [v850 distance];
    v926 = v925;
    if (v925)
    {
      [v925 doubleValue];
      v928 = v927;
    }

    else
    {
      v928 = 0;
    }

    v929 = [v850 image];
    sub_2143E3984(v929, v1382);
    if (v914)
    {
      sub_213FB2DF4(&v1391, &qword_27C904890, &qword_2146EDB90);
      sub_213FB2DF4(&v1405, &qword_27C904890, &qword_2146EDB90);
      sub_213FB2DF4(&v1412, &qword_27C904868, &qword_2146EDB58);
      sub_213FB2DF4(&v1419, &qword_27C904890, &qword_2146EDB90);

      return;
    }

    v1379 = v1382[4];
    v1380 = v1382[5];
    v1381[0] = v1383[0];
    *(v1381 + 9) = *(v1383 + 9);
    v1375 = v1382[0];
    v1376 = v1382[1];
    v1377 = v1382[2];
    v1378 = v1382[3];
    v930 = [v850 darkImage];
    sub_2143E3984(v930, v1373);

    v1370 = v1373[4];
    v1371 = v1373[5];
    v1372[0] = v1374[0];
    *(v1372 + 9) = *(v1374 + 9);
    v1366 = v1373[0];
    v1367 = v1373[1];
    v1368 = v1373[2];
    v1369 = v1373[3];
    v945 = [v850 storeFrontImage];
    sub_2143E3984(v945, v1364);
    v1353 = 0;
    v968 = v926 == 0;
    v969 = v909 == 0;

    v970 = [v850 isPointOfInterest];
    v1363 = v969;
    v1362 = v968;
    *(&v1361[4] + 7) = v1379;
    *(&v1361[5] + 7) = v1380;
    *(&v1361[6] + 7) = v1381[0];
    v1361[7] = *(v1381 + 9);
    *(v1361 + 7) = v1375;
    *(&v1361[1] + 7) = v1376;
    *(&v1361[2] + 7) = v1377;
    *(&v1361[3] + 7) = v1378;
    *(&v1360[4] + 7) = v1370;
    *(&v1360[5] + 7) = v1371;
    *(&v1360[6] + 7) = v1372[0];
    v1360[7] = *(v1372 + 9);
    *(v1360 + 7) = v1366;
    *(&v1360[1] + 7) = v1367;
    *(&v1360[2] + 7) = v1368;
    *(&v1360[3] + 7) = v1369;
    *(&v1359[3] + 7) = v1364[3];
    *(&v1359[2] + 7) = v1364[2];
    *(&v1359[1] + 7) = v1364[1];
    *(v1359 + 7) = v1364[0];
    v1359[7] = *(v1365 + 9);
    *(&v1359[6] + 7) = v1365[0];
    *(&v1359[5] + 7) = v1364[5];
    *(&v1359[4] + 7) = v1364[4];
    v649 = v1308;
    v971 = v1351;
    *v1308 = v1339;
    *(v649 + 1) = v971;
    v972 = v1350;
    *(v649 + 2) = v1338;
    *(v649 + 3) = v972;
    v973 = v1424;
    *(v649 + 6) = v1423;
    *(v649 + 7) = v973;
    v974 = v1425[1];
    *(v649 + 8) = v1425[0];
    *(v649 + 9) = v974;
    v975 = v1420;
    *(v649 + 2) = v1419;
    *(v649 + 3) = v975;
    v976 = v1422;
    *(v649 + 4) = v1421;
    *(v649 + 5) = v976;
    *(v649 + 20) = v1337;
    *(v649 + 21) = v898;
    v977 = v1412;
    v978 = v1413;
    v979 = v1415;
    *(v649 + 13) = v1414;
    *(v649 + 14) = v979;
    *(v649 + 11) = v977;
    *(v649 + 12) = v978;
    v980 = v1416;
    v981 = v1417;
    v982 = v1418[0];
    *(v649 + 281) = *(v1418 + 9);
    *(v649 + 16) = v981;
    *(v649 + 17) = v982;
    *(v649 + 15) = v980;
    v983 = v1349;
    *(v649 + 38) = v1336;
    *(v649 + 39) = v983;
    v984 = v1344;
    *(v649 + 40) = v1335;
    *(v649 + 41) = v984;
    *(v649 + 42) = v1334;
    v649[344] = v969;
    v985 = v1343;
    *(v649 + 44) = v1333;
    *(v649 + 45) = v985;
    v986 = v1405;
    v987 = v1406;
    v988 = v1408;
    *(v649 + 25) = v1407;
    *(v649 + 26) = v988;
    *(v649 + 23) = v986;
    *(v649 + 24) = v987;
    v989 = v1409;
    v990 = v1410;
    v991 = v1411[1];
    *(v649 + 29) = v1411[0];
    *(v649 + 30) = v991;
    *(v649 + 27) = v989;
    *(v649 + 28) = v990;
    v992 = v1342;
    *(v649 + 62) = v1332;
    *(v649 + 63) = v992;
    *(v649 + 64) = v1331;
    *(v649 + 65) = v1341;
    v993 = v1391;
    v994 = v1392;
    v995 = v1394;
    *(v649 + 35) = v1393;
    *(v649 + 36) = v995;
    *(v649 + 33) = v993;
    *(v649 + 34) = v994;
    v996 = v1395;
    v997 = v1396;
    v998 = v1397[1];
    *(v649 + 39) = v1397[0];
    *(v649 + 40) = v998;
    *(v649 + 37) = v996;
    *(v649 + 38) = v997;
    *(v649 + 82) = v1330;
    *(v649 + 83) = v1340;
    *(v649 + 84) = v928;
    v649[680] = v968;
    v999 = v1361[0];
    v1000 = v1361[1];
    v1001 = v1361[3];
    *(v649 + 713) = v1361[2];
    *(v649 + 729) = v1001;
    *(v649 + 681) = v999;
    *(v649 + 697) = v1000;
    v1002 = v1361[4];
    v1003 = v1361[5];
    v1004 = v1361[7];
    *(v649 + 777) = v1361[6];
    *(v649 + 793) = v1004;
    *(v649 + 745) = v1002;
    *(v649 + 761) = v1003;
    v1005 = v1360[0];
    v1006 = v1360[1];
    v1007 = v1360[3];
    *(v649 + 841) = v1360[2];
    *(v649 + 857) = v1007;
    *(v649 + 809) = v1005;
    *(v649 + 825) = v1006;
    v1008 = v1360[4];
    v1009 = v1360[5];
    v1010 = v1360[7];
    *(v649 + 905) = v1360[6];
    *(v649 + 921) = v1010;
    *(v649 + 873) = v1008;
    *(v649 + 889) = v1009;
    v1011 = v1359[0];
    v1012 = v1359[1];
    v1013 = v1359[3];
    *(v649 + 969) = v1359[2];
    *(v649 + 985) = v1013;
    *(v649 + 937) = v1011;
    *(v649 + 953) = v1012;
    v1014 = v1359[4];
    v1015 = v1359[5];
    v1016 = v1359[7];
    *(v649 + 1033) = v1359[6];
    *(v649 + 1049) = v1016;
    *(v649 + 1001) = v1014;
    *(v649 + 1017) = v1015;
    v649[1065] = v970;
    v247 = v1347;
    goto LABEL_372;
  }

  objc_opt_self();
  v870 = swift_dynamicCastObjCClass();
  if (v870)
  {
    v871 = v870;
    v872 = [v870 name];
    if (v872)
    {
      v873 = v872;
      v874 = sub_2146D95B8();
      v876 = v875;
    }

    else
    {
      v874 = 0;
      v876 = 0;
    }

    v938 = [v871 numberOfItems];
    v939 = [v871 icon];
    if (v939)
    {
      v940 = v939;
      *&v1405 = v939;
      v941 = v1353;
      sub_213FC2A4C(&v1405, &v1398, &v1419);
      v1353 = v941;
      if (v941)
      {

        goto LABEL_675;
      }

      nullsub_1();
    }

    else
    {
      sub_2144008B4(&v1419);
    }

    v1409 = v1423;
    v1410 = v1424;
    v1411[0] = v1425[0];
    *(v1411 + 9) = *(v1425 + 9);
    v1405 = v1419;
    v1406 = v1420;
    v1407 = v1421;
    v1408 = v1422;
    v942 = [v871 image];
    if (v942)
    {
      v943 = v942;
      *&v1391 = v942;
      v944 = v1353;
      sub_213FC2A4C(&v1391, &v1384, &v1398);
      v1353 = v944;
      if (v944)
      {
        sub_213FB2DF4(&v1405, &qword_27C904868, &qword_2146EDB58);

        goto LABEL_675;
      }

      nullsub_1();
    }

    else
    {
      sub_2144008B4(&v1398);
    }

    v1395 = v1402;
    v1396 = v1403;
    v1397[0] = v1404[0];
    *(v1397 + 9) = *(v1404 + 9);
    v1391 = v1398;
    v1392 = v1399;
    v1393 = v1400;
    v1394 = v1401;
    v953 = [v871 darkImage];
    if (v953)
    {
      v954 = v953;
      *&v1431 = v953;
      v955 = v1353;
      sub_213FC2A4C(&v1431, &v1412, &v1384);
      v1353 = v955;
      if (v955)
      {
        sub_213FB2DF4(&v1391, &qword_27C904868, &qword_2146EDB58);
        sub_213FB2DF4(&v1405, &qword_27C904868, &qword_2146EDB58);

        return;
      }

      nullsub_1();
    }

    else
    {
      sub_2144008B4(&v1384);
    }

    v1435 = v1388;
    v1436 = v1389;
    v1437[0] = v1390[0];
    *(v1437 + 9) = *(v1390 + 9);
    v1431 = v1384;
    v1432 = v1385;
    v1433 = v1386;
    v1434 = v1387;
    v964 = [v871 addresses];
    if (v964)
    {
      v965 = v964;
      sub_21404A8B8(0, &qword_27C912C20, 0x277CBDB78);
      v966 = sub_2146D9918();

      v967 = v1353;
      v1351 = sub_2143E3784(v966);
      v1353 = v967;
    }

    else
    {
      v1351 = MEMORY[0x277D84F90];
    }

    v1017 = [v871 publisherName];
    if (v1017)
    {
      v1018 = v1017;
      v1349 = sub_2146D95B8();
      v1350 = v1019;
    }

    else
    {
      v1349 = 0;
      v1350 = 0;
    }

    v1020 = [v871 publisherIcon];
    v1021 = v1353;
    sub_2143E3984(v1020, v1429);
    v1353 = v1021;
    if (v1021)
    {
      sub_213FB2DF4(&v1431, &qword_27C904868, &qword_2146EDB58);
      sub_213FB2DF4(&v1391, &qword_27C904868, &qword_2146EDB58);
      sub_213FB2DF4(&v1405, &qword_27C904868, &qword_2146EDB58);

      return;
    }

    *(&v1428[4] + 4) = v1409;
    *(&v1428[5] + 4) = v1410;
    *(&v1428[6] + 4) = v1411[0];
    *(&v1428[6] + 13) = *(v1411 + 9);
    *(v1428 + 4) = v1405;
    *(&v1428[1] + 4) = v1406;
    *(&v1428[2] + 4) = v1407;
    *(&v1428[3] + 4) = v1408;
    *(&v1427[3] + 7) = v1394;
    *(&v1427[2] + 7) = v1393;
    *(&v1427[1] + 7) = v1392;
    *(v1427 + 7) = v1391;
    v1427[7] = *(v1397 + 9);
    *(&v1427[6] + 7) = v1397[0];
    *(&v1427[5] + 7) = v1396;
    *(&v1427[4] + 7) = v1395;
    *(&v1426[3] + 7) = v1434;
    *(&v1426[2] + 7) = v1433;
    *(&v1426[1] + 7) = v1432;
    *(v1426 + 7) = v1431;
    v1426[7] = *(v1437 + 9);
    *(&v1426[6] + 7) = v1437[0];
    *(&v1426[5] + 7) = v1436;
    *(&v1426[4] + 7) = v1435;
    v558 = v1295;
    *v1295 = v874;
    v558[1] = v876;
    *(v558 + 4) = v938;
    v1022 = v1428[0];
    v1023 = v1428[1];
    v1024 = v1428[2];
    *(v558 + 68) = v1428[3];
    *(v558 + 52) = v1024;
    *(v558 + 36) = v1023;
    *(v558 + 20) = v1022;
    v1025 = v1428[4];
    v1026 = v1428[5];
    v1027 = v1428[6];
    *(v558 + 129) = *(&v1428[6] + 13);
    *(v558 + 116) = v1027;
    *(v558 + 100) = v1026;
    *(v558 + 84) = v1025;
    v1028 = v1427[0];
    v1029 = v1427[1];
    v1030 = v1427[2];
    *(v558 + 193) = v1427[3];
    *(v558 + 177) = v1030;
    *(v558 + 161) = v1029;
    *(v558 + 145) = v1028;
    v1031 = v1427[4];
    v1032 = v1427[5];
    v1033 = v1427[6];
    *(v558 + 257) = v1427[7];
    *(v558 + 241) = v1033;
    *(v558 + 225) = v1032;
    *(v558 + 209) = v1031;
    v1034 = v1426[0];
    v1035 = v1426[1];
    v1036 = v1426[3];
    *(v558 + 305) = v1426[2];
    *(v558 + 321) = v1036;
    *(v558 + 273) = v1034;
    *(v558 + 289) = v1035;
    v1037 = v1426[4];
    v1038 = v1426[5];
    v1039 = v1426[7];
    *(v558 + 369) = v1426[6];
    *(v558 + 385) = v1039;
    *(v558 + 337) = v1037;
    *(v558 + 353) = v1038;
    v1040 = v1349;
    v558[51] = v1351;
    v558[52] = v1040;
    v558[53] = v1350;
    v1041 = v1429[0];
    v1042 = v1429[1];
    v1043 = v1429[3];
    *(v558 + 29) = v1429[2];
    *(v558 + 30) = v1043;
    *(v558 + 27) = v1041;
    *(v558 + 28) = v1042;
    v1044 = v1429[4];
    v1045 = v1429[5];
    v1046 = v1430[0];
    *(v558 + 537) = *(v1430 + 9);
    *(v558 + 32) = v1045;
    *(v558 + 33) = v1046;
    *(v558 + 31) = v1044;
    v247 = v1347;
LABEL_302:
    swift_storeEnumTagMultiPayload();
    v248 = v558;
    goto LABEL_129;
  }

  objc_opt_self();
  v931 = swift_dynamicCastObjCClass();
  if (v931)
  {
    v932 = v931;
    v933 = [v931 name];
    if (v933)
    {
      v934 = v933;
      v935 = sub_2146D95B8();
      v937 = v936;
    }

    else
    {
      v935 = 0;
      v937 = 0;
    }

    v956 = [v932 icon];
    if (v956)
    {
      v957 = v956;
      *&v1405 = v956;
      v958 = v1353;
      sub_213FC2A4C(&v1405, &v1398, &v1419);
      v1353 = v958;
      if (v958)
      {

        goto LABEL_675;
      }

      nullsub_1();
    }

    else
    {
      sub_2144008B4(&v1419);
    }

    v1409 = v1423;
    v1410 = v1424;
    v1411[0] = v1425[0];
    *(v1411 + 9) = *(v1425 + 9);
    v1405 = v1419;
    v1406 = v1420;
    v1407 = v1421;
    v1408 = v1422;
    v959 = [v932 numberOfPublishedCollections];

    v960 = v1281;
    *v1281 = v935;
    v960[1] = v937;
    v961 = v1410;
    *(v960 + 5) = v1409;
    *(v960 + 6) = v961;
    *(v960 + 7) = v1411[0];
    *(v960 + 121) = *(v1411 + 9);
    v962 = v1406;
    *(v960 + 1) = v1405;
    *(v960 + 2) = v962;
    v963 = v1408;
    *(v960 + 3) = v1407;
    *(v960 + 4) = v963;
    *(v960 + 35) = v959;
    v247 = v1347;
    goto LABEL_608;
  }

  objc_opt_self();
  v946 = swift_dynamicCastObjCClass();
  if (v946)
  {
    v947 = v946;
    v948 = [v946 name];
    if (v948)
    {
      v949 = v948;
      v950 = sub_2146D95B8();
      v952 = v951;
    }

    else
    {
      v950 = 0;
      v952 = 0;
    }

    v1048 = [v947 type];
    if (v1048)
    {
      v1049 = v1048;
      v1050 = sub_2146D95B8();
      v1052 = v1051;
    }

    else
    {
      v1050 = 0;
      v1052 = 0;
    }

    v1053 = [v947 size];
    v1054 = [v947 thumbnail];
    if (v1054)
    {
      v1055 = v1054;
      *&v1405 = v1054;
      v1056 = v1353;
      sub_213FC2A4C(&v1405, &v1398, &v1419);
      v1353 = v1056;
      if (v1056)
      {

        goto LABEL_328;
      }

      nullsub_1();
    }

    else
    {
      sub_2144008B4(&v1419);
    }

    v1409 = v1423;
    v1410 = v1424;
    v1411[0] = v1425[0];
    *(v1411 + 9) = *(v1425 + 9);
    v1405 = v1419;
    v1406 = v1420;
    v1407 = v1421;
    v1408 = v1422;
    v1057 = [v947 icon];
    if (v1057)
    {
      v1058 = v1057;
      *&v1391 = v1057;
      v1059 = v1353;
      sub_213FC2A4C(&v1391, &v1384, &v1398);
      v1353 = v1059;
      if (v1059)
      {
        sub_213FB2DF4(&v1405, &qword_27C904868, &qword_2146EDB58);

        goto LABEL_675;
      }

      nullsub_1();
    }

    else
    {
      sub_2144008B4(&v1398);
    }

    v1395 = v1402;
    v1396 = v1403;
    v1397[0] = v1404[0];
    *(v1397 + 9) = *(v1404 + 9);
    v1391 = v1398;
    v1392 = v1399;
    v1393 = v1400;
    v1394 = v1401;
    v1065 = [v947 creationDate];
    if (v1065)
    {
      v1066 = v1065;
      sub_2146D8AE8();

      v1067 = 0;
    }

    else
    {
      v1067 = 1;
    }

    v1068 = sub_2146D8B08();
    v1069 = v1300;
    (*(*(v1068 - 8) + 56))(v1300, v1067, 1, v1068);
    v1070 = v1410;
    v237 = v1291;
    *(v1291 + 104) = v1409;
    *(v237 + 15) = v1070;
    *(v237 + 17) = v1411[0];
    *(v237 + 145) = *(v1411 + 9);
    v1071 = v1406;
    *(v237 + 5) = v1405;
    *(v237 + 7) = v1071;
    v1072 = v1408;
    *(v237 + 9) = v1407;
    *(v237 + 11) = v1072;
    *(v237 + 273) = *(v1397 + 9);
    *(v237 + 33) = v1397[0];
    v1073 = v1395;
    *(v237 + 31) = v1396;
    *(v237 + 29) = v1073;
    v1074 = v1393;
    *(v237 + 27) = v1394;
    *(v237 + 25) = v1074;
    v1075 = v1391;
    *(v237 + 23) = v1392;
    *v237 = v950;
    v237[1] = v952;
    v237[2] = v1050;
    v237[3] = v1052;
    v237[4] = v1053;
    *(v237 + 21) = v1075;
    v1076 = type metadata accessor for LinkPresentation.FileMetadata(0);
    sub_21408AC04(v1069, v237 + *(v1076 + 36), &qword_27C913090, &unk_2146E9DB0);
    v247 = v1347;
    goto LABEL_67;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v1047 = v1353;
    sub_21438F834(0, 0xE000000000000000, &v1419);
    v1353 = v1047;
    if (!v1047)
    {
      v649 = v1279;
      *v1279 = v1419;
      v247 = v1347;
      goto LABEL_372;
    }
  }

  else
  {
    objc_opt_self();
    v1060 = swift_dynamicCastObjCClass();
    if (v1060)
    {
      v1061 = v1060;
      v1062 = [v1060 combinedTitle];
      if (v1062)
      {
        v1063 = v1062;
        v1350 = sub_2146D95B8();
        v1351 = v1064;
      }

      else
      {
        v1350 = 0;
        v1351 = 0;
      }

      v1084 = [v1061 title];
      if (v1084)
      {
        v1085 = v1084;
        v1349 = sub_2146D95B8();
        v1087 = v1086;
      }

      else
      {
        v1349 = 0;
        v1087 = 0;
      }

      v1088 = [v1061 subtitle];
      if (v1088)
      {
        v1089 = v1088;
        v1090 = sub_2146D95B8();
        v1092 = v1091;
      }

      else
      {
        v1090 = 0;
        v1092 = 0;
      }

      v1093 = [v1061 footnote];
      if (v1093)
      {
        v1094 = v1093;
        v1095 = sub_2146D95B8();
        v1097 = v1096;
      }

      else
      {
        v1095 = 0;
        v1097 = 0;
      }

      v1098 = [v1061 icon];
      v1099 = v1353;
      sub_2143E3984(v1098, v1438);
      v1353 = v1099;
      if (!v1099)
      {

        v285 = v1288;
        v1100 = v1351;
        v1288->isa = v1350;
        v285[1].isa = v1100;
        v285[2].isa = v1349;
        v285[3].isa = v1087;
        v285[4].isa = v1090;
        v285[5].isa = v1092;
        v285[6].isa = v1095;
        v285[7].isa = v1097;
        v1101 = v1438[5];
        *&v285[16].isa = v1438[4];
        *&v285[18].isa = v1101;
        *&v285[20].isa = v1439[0];
        *(&v285[21].isa + 1) = *(v1439 + 9);
        v1102 = v1438[1];
        *&v285[8].isa = v1438[0];
        *&v285[10].isa = v1102;
        v1103 = v1438[3];
        *&v285[12].isa = v1438[2];
        *&v285[14].isa = v1103;
        v247 = v1347;
        goto LABEL_91;
      }

LABEL_211:

      return;
    }

    objc_opt_self();
    v1077 = swift_dynamicCastObjCClass();
    if (v1077)
    {
      v1078 = v1077;
      v1079 = [v1077 title];
      if (v1079)
      {
        v1080 = v1079;
        v1081 = sub_2146D95B8();
        v1083 = v1082;
      }

      else
      {
        v1081 = 0;
        v1083 = 0;
      }

      v1110 = [v1078 subtitle];
      if (v1110)
      {
        v1111 = v1110;
        v1112 = sub_2146D95B8();
        v1114 = v1113;
      }

      else
      {
        v1112 = 0;
        v1114 = 0;
      }

      v1115 = [v1078 artwork];
      v1116 = v1353;
      sub_2143E3984(v1115, v1440);
      v1353 = v1116;
      if (v1116)
      {

        goto LABEL_675;
      }

      v285 = v1284;
      *v1284 = v1081;
      v285[1].isa = v1083;
      v285[2].isa = v1112;
      v285[3].isa = v1114;
      v1117 = v1440[5];
      *&v285[12].isa = v1440[4];
      *&v285[14].isa = v1117;
      *&v285[16].isa = v1441[0];
      *(&v285[17].isa + 1) = *(v1441 + 9);
      v1118 = v1440[1];
      *&v285[4].isa = v1440[0];
      *&v285[6].isa = v1118;
      v1119 = v1440[3];
      *&v285[8].isa = v1440[2];
      *&v285[10].isa = v1119;
      v247 = v1347;
      goto LABEL_91;
    }

    objc_opt_self();
    v1104 = swift_dynamicCastObjCClass();
    if (v1104)
    {
      v1105 = v1104;
      v1106 = [v1104 title];
      if (v1106)
      {
        v1107 = v1106;
        v1351 = sub_2146D95B8();
        v1109 = v1108;
      }

      else
      {
        v1351 = 0;
        v1109 = 0;
      }

      v1350 = [v1105 photoCount];
      v1349 = [v1105 videoCount];
      v1126 = [v1105 otherItemCount];
      v1127 = [v1105 keyPhoto];
      v1128 = v1353;
      sub_2143E3984(v1127, &v1419);
      v1353 = v1128;
      if (v1128)
      {

        goto LABEL_675;
      }

      v1409 = v1423;
      v1410 = v1424;
      v1411[0] = v1425[0];
      *(v1411 + 9) = *(v1425 + 9);
      v1405 = v1419;
      v1406 = v1420;
      v1407 = v1421;
      v1408 = v1422;
      v1129 = [v1105 expirationDate];
      if (v1129)
      {
        v1130 = v1129;
        v1131 = v1301;
        sub_2146D8AE8();

        v1132 = sub_2146D8B08();
        (*(*(v1132 - 8) + 56))(v1131, 0, 1, v1132);
      }

      else
      {
        v1141 = sub_2146D8B08();
        (*(*(v1141 - 8) + 56))(v1301, 1, 1, v1141);
      }

      v1142 = [v1105 earliestAssetDate];
      if (v1142)
      {
        v1143 = v1142;
        sub_2146D8AE8();

        v1144 = 0;
      }

      else
      {
        v1144 = 1;
      }

      v1145 = sub_2146D8B08();
      v1146 = *(*(v1145 - 8) + 56);
      v1147 = 1;
      v1146(v1302, v1144, 1, v1145);
      v1148 = [v1105 latestAssetDate];
      if (v1148)
      {
        v1149 = v1148;
        sub_2146D8AE8();

        v1147 = 0;
      }

      v1150 = v1303;
      v1146(v1303, v1147, 1, v1145);
      v1151 = v1410;
      v682 = v1294;
      *(v1294 + 104) = v1409;
      *(v682 + 15) = v1151;
      *(v682 + 17) = v1411[0];
      *(v682 + 145) = *(v1411 + 9);
      v1152 = v1406;
      *(v682 + 5) = v1405;
      *(v682 + 7) = v1152;
      v1153 = v1408;
      *(v682 + 9) = v1407;
      *v682 = v1351;
      v682[1] = v1109;
      v1154 = v1349;
      v682[2] = v1350;
      v682[3] = v1154;
      v682[4] = v1126;
      *(v682 + 11) = v1153;
      v1155 = type metadata accessor for LinkPresentation.PhotosMomentMetadata(0);
      sub_21408AC04(v1301, v682 + v1155[9], &qword_27C913090, &unk_2146E9DB0);
      sub_21408AC04(v1302, v682 + v1155[10], &qword_27C913090, &unk_2146E9DB0);
      sub_21408AC04(v1150, v682 + v1155[11], &qword_27C913090, &unk_2146E9DB0);
      v247 = v1347;
      goto LABEL_397;
    }

    objc_opt_self();
    v1120 = swift_dynamicCastObjCClass();
    if (v1120)
    {
      v1121 = [v1120 status];
      v1122 = v1121;
      if (v1121)
      {
        v1123 = [v1121 string];

        v1122 = sub_2146D95B8();
        v1125 = v1124;
      }

      else
      {

        v1125 = 0;
      }

      v1140 = v1353;
      sub_21438F84C(v1122, v1125, &v1419);
      v1353 = v1140;
      if (!v1140)
      {
        v649 = v1283;
        *v1283 = v1419;
        v247 = v1347;
        goto LABEL_372;
      }
    }

    else
    {
      objc_opt_self();
      v1133 = swift_dynamicCastObjCClass();
      if (v1133)
      {
        v1134 = v1133;
        v1135 = [v1133 message];
        if (v1135)
        {
          v1136 = v1135;
          v1137 = sub_2146D95B8();
          v1139 = v1138;
        }

        else
        {
          v1137 = 0;
          v1139 = 0;
        }

        v1162 = [v1134 originatorDisplayName];
        if (v1162)
        {
          v1163 = v1162;
          v1164 = sub_2146D95B8();
          v1166 = v1165;
        }

        else
        {

          v1164 = 0;
          v1166 = 0;
        }

        v1443.value._countAndFlagsBits = v1164;
        v1443.value._object = v1166;
        v1167 = v1353;
        sub_21438F4CC(v1137, v1139, v1443);
        v1353 = v1167;
        if (!v1167)
        {
          v1168 = v1420;
          v649 = v1286;
          *v1286 = v1419;
          *(v649 + 1) = v1168;
          v247 = v1347;
          goto LABEL_372;
        }
      }

      else
      {
        objc_opt_self();
        v1156 = swift_dynamicCastObjCClass();
        if (v1156)
        {
          v1157 = [v1156 subtitle];
          if (v1157)
          {
            v1158 = v1157;
            v1159 = sub_2146D95B8();
            v1161 = v1160;
          }

          else
          {

            v1159 = 0;
            v1161 = 0;
          }

          v1176 = v1353;
          sub_21438F864(v1159, v1161, &v1419);
          v1353 = v1176;
          if (!v1176)
          {
            v649 = v1285;
            *v1285 = v1419;
            v247 = v1347;
            goto LABEL_372;
          }
        }

        else
        {
          objc_opt_self();
          v1169 = swift_dynamicCastObjCClass();
          if (v1169)
          {
            v1170 = v1169;
            v1171 = [v1169 name];
            if (v1171)
            {
              v1172 = v1171;
              v1173 = sub_2146D95B8();
              v1175 = v1174;
            }

            else
            {
              v1173 = 0;
              v1175 = 0;
            }

            v1183 = [v1170 eventDate];
            if (v1183)
            {
              v1184 = v1183;
              v1185 = v1298;
              sub_2146D8AE8();

              v1186 = sub_2146D8B08();
              (*(*(v1186 - 8) + 56))(v1185, 0, 1, v1186);
            }

            else
            {
              v1187 = sub_2146D8B08();
              (*(*(v1187 - 8) + 56))(v1298, 1, 1, v1187);
            }

            v1188 = [v1170 expirationDate];
            if (v1188)
            {
              v1189 = v1188;
              sub_2146D8AE8();

              v1190 = 0;
            }

            else
            {
              v1190 = 1;
            }

            v1191 = sub_2146D8B08();
            v1192 = v1299;
            (*(*(v1191 - 8) + 56))(v1299, v1190, 1, v1191);
            v960 = v1292;
            *v1292 = v1173;
            v960[1] = v1175;
            v1193 = type metadata accessor for LinkPresentation.WalletPassMetadata(0);
            sub_21408AC04(v1298, v960 + *(v1193 + 20), &qword_27C913090, &unk_2146E9DB0);
            sub_21408AC04(v1192, v960 + *(v1193 + 24), &qword_27C913090, &unk_2146E9DB0);
            v247 = v1347;
LABEL_608:
            swift_storeEnumTagMultiPayload();
            v248 = v960;
            goto LABEL_129;
          }

          objc_opt_self();
          v1177 = swift_dynamicCastObjCClass();
          if (v1177)
          {
            v1178 = [v1177 subtitle];
            if (v1178)
            {
              v1179 = v1178;
              v1180 = sub_2146D95B8();
              v1182 = v1181;
            }

            else
            {

              v1180 = 0;
              v1182 = 0;
            }

            v1195 = v1353;
            sub_21438F87C(v1180, v1182, &v1419);
            v1353 = v1195;
            if (!v1195)
            {
              v649 = v1289;
              *v1289 = v1419;
              v247 = v1347;
              goto LABEL_372;
            }
          }

          else
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {

              v1194 = v1353;
              sub_21438F894(0, 0xE000000000000000, &v1419);
              v1353 = v1194;
              if (!v1194)
              {
                v649 = v1287;
                *v1287 = v1419;
                v247 = v1347;
                goto LABEL_372;
              }
            }

            else
            {
              objc_opt_self();
              v1196 = swift_dynamicCastObjCClass();
              if (v1196)
              {
                v1197 = [v1196 title];
                if (v1197)
                {
                  v1198 = v1197;
                  v1199 = sub_2146D95B8();
                  v1201 = v1200;
                }

                else
                {

                  v1199 = 0;
                  v1201 = 0;
                }

                v1209 = v1353;
                sub_21438F8AC(v1199, v1201, &v1419);
                v1353 = v1209;
                if (!v1209)
                {
                  v649 = v1290;
                  *v1290 = v1419;
                  v247 = v1347;
                  goto LABEL_372;
                }
              }

              else
              {
                objc_opt_self();
                v1202 = swift_dynamicCastObjCClass();
                if (v1202)
                {
                  v1203 = v1202;
                  v1204 = [v1202 groupName];
                  if (v1204)
                  {
                    v1205 = v1204;
                    v1206 = sub_2146D95B8();
                    v1208 = v1207;
                  }

                  else
                  {
                    v1206 = 0;
                    v1208 = 0;
                  }

                  v1216 = [v1203 urlParameters];
                  if (v1216)
                  {
                    v1217 = v1216;
                    v1218 = sub_2146D95B8();
                    v1220 = v1219;
                  }

                  else
                  {

                    v1218 = 0;
                    v1220 = 0;
                  }

                  v1444.value._countAndFlagsBits = v1218;
                  v1444.value._object = v1220;
                  v1221 = v1353;
                  sub_21438F4E4(v1206, v1208, v1444);
                  v1353 = v1221;
                  if (!v1221)
                  {
                    v1222 = v1420;
                    v649 = v1293;
                    *v1293 = v1419;
                    *(v649 + 1) = v1222;
                    v247 = v1347;
                    goto LABEL_372;
                  }
                }

                else
                {
                  objc_opt_self();
                  v1210 = swift_dynamicCastObjCClass();
                  if (v1210)
                  {
                    v1211 = v1210;
                    v1212 = [v1210 title];
                    if (v1212)
                    {
                      v1213 = v1212;
                      v1351 = sub_2146D95B8();
                      v1215 = v1214;
                    }

                    else
                    {
                      v1351 = 0;
                      v1215 = 0;
                    }

                    v1230 = [v1211 subtitle];
                    if (v1230)
                    {
                      v1231 = v1230;
                      v1350 = sub_2146D95B8();
                      v1233 = v1232;
                    }

                    else
                    {
                      v1350 = 0;
                      v1233 = 0;
                    }

                    v1234 = [v1211 information];
                    if (v1234)
                    {
                      v1235 = v1234;
                      v1349 = sub_2146D95B8();
                      v1237 = v1236;
                    }

                    else
                    {
                      v1349 = 0;
                      v1237 = 0;
                    }

                    v1238 = type metadata accessor for LinkPresentation.SharedObjectMetadata(0);
                    v1239 = swift_allocBox();
                    v1241 = v1240;
                    v1242 = [v1211 icon];
                    v1243 = v1353;
                    sub_2143E3984(v1242, &v1419);
                    v1353 = v1243;
                    if (v1243)
                    {

                      swift_deallocBox();
                      return;
                    }

                    v1409 = v1423;
                    v1410 = v1424;
                    v1411[0] = v1425[0];
                    *(v1411 + 9) = *(v1425 + 9);
                    v1405 = v1419;
                    v1406 = v1420;
                    v1407 = v1421;
                    v1408 = v1422;
                    v1244 = [v1211 isCollaboration];
                    v1245 = [v1211 specialization];
                    if (v1245)
                    {
                      *&v1398 = v1245;
                      v1246 = v1245;
                      v1247 = v1353;
                      sub_214400704(&v1398, &v1391, v1306);
                      v1353 = v1247;
                      if (v1247)
                      {
                        sub_213FB2DF4(&v1405, &qword_27C904868, &qword_2146EDB58);

                        swift_deallocBox();
                        return;
                      }

                      v1267 = v1306;
                      (*(v1304 + 56))(v1306, 0, 1, v1305);
                      sub_21408AC04(v1267, v1307, &qword_27C904870, &qword_2146EDB60);
                    }

                    else
                    {

                      (*(v1304 + 56))(v1306, 1, 1, v1305);
                      (*(v1346 + 56))(v1307, 1, 1, v1347);
                    }

                    *v1241 = v1351;
                    *(v1241 + 8) = v1215;
                    *(v1241 + 16) = v1350;
                    *(v1241 + 24) = v1233;
                    *(v1241 + 32) = v1349;
                    *(v1241 + 40) = v1237;
                    v1268 = v1406;
                    v1269 = v1408;
                    v1270 = v1407;
                    *(v1241 + 48) = v1405;
                    v1271 = v1409;
                    v1272 = v1411[0];
                    *(v1241 + 128) = v1410;
                    *(v1241 + 144) = v1272;
                    *(v1241 + 153) = *(v1411 + 9);
                    *(v1241 + 64) = v1268;
                    *(v1241 + 80) = v1270;
                    *(v1241 + 96) = v1269;
                    *(v1241 + 112) = v1271;
                    *(v1241 + 169) = v1244;
                    sub_21408AC04(v1307, v1241 + *(v1238 + 36), &qword_27C904870, &qword_2146EDB60);
                    v333 = v1345;
                    *v1345 = v1239;
                    v247 = v1347;
                    swift_storeEnumTagMultiPayload();
                    goto LABEL_130;
                  }

                  objc_opt_self();
                  v1223 = swift_dynamicCastObjCClass();
                  if (v1223)
                  {
                    v1224 = v1223;
                    v1225 = [v1223 title];
                    if (v1225)
                    {
                      v1226 = v1225;
                      v1227 = sub_2146D95B8();
                      v1229 = v1228;
                    }

                    else
                    {
                      v1227 = 0;
                      v1229 = 0;
                    }

                    v1262 = [v1224 subtitle];
                    if (v1262)
                    {
                      v1263 = v1262;
                      v1264 = sub_2146D95B8();
                      v1266 = v1265;
                    }

                    else
                    {
                      v1264 = 0;
                      v1266 = 0;
                    }

                    v1273 = [v1224 artwork];
                    v1274 = v1353;
                    sub_2143E3984(v1273, &v1419);
                    if (v1274)
                    {

                      return;
                    }

                    v1409 = v1423;
                    v1410 = v1424;
                    v1411[0] = v1425[0];
                    *(v1411 + 9) = *(v1425 + 9);
                    v1405 = v1419;
                    v1406 = v1420;
                    v1407 = v1421;
                    v1408 = v1422;
                    v1275 = [v1224 icon];
                    sub_2143E3984(v1275, &v1398);

                    v1395 = v1402;
                    v1396 = v1403;
                    v1397[0] = v1404[0];
                    *(v1397 + 9) = *(v1404 + 9);
                    v1391 = v1398;
                    v1392 = v1399;
                    v1393 = v1400;
                    v1394 = v1401;
                    sub_214279184(v1227, v1229, v1264, v1266, &v1405, &v1391, v1442);
                    v1353 = 0;

                    v649 = v1296;
                    memcpy(v1296, v1442, 0x149uLL);
                    v247 = v1347;
                    goto LABEL_372;
                  }

                  LODWORD(v1351) = sub_2146D9B88();
                  v1350 = *sub_214062480();
                  v1248 = swift_allocObject();
                  v1249 = v1352;
                  *(v1248 + 16) = v1352;
                  v1250 = swift_allocObject();
                  *(v1250 + 16) = 32;
                  v1251 = swift_allocObject();
                  *(v1251 + 16) = 8;
                  v1252 = swift_allocObject();
                  *(v1252 + 16) = sub_2144008E4;
                  *(v1252 + 24) = v1248;
                  v1253 = swift_allocObject();
                  *(v1253 + 16) = sub_2144008F4;
                  *(v1253 + 24) = v1252;
                  v1254 = swift_allocObject();
                  *(v1254 + 16) = sub_214400930;
                  *(v1254 + 24) = v1253;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912C18, &qword_21473AF50);
                  v1255 = swift_allocObject();
                  *(v1255 + 16) = xmmword_2146E68D0;
                  *(v1255 + 32) = sub_2144008EC;
                  *(v1255 + 40) = v1250;
                  *(v1255 + 48) = sub_214400B64;
                  *(v1255 + 56) = v1251;
                  *(v1255 + 64) = sub_214400938;
                  *(v1255 + 72) = v1254;
                  v1256 = v1249;

                  if (os_log_type_enabled(v1350, v1351))
                  {
                    v1257 = sub_2144AE990(12);
                    v1352 = swift_slowAlloc();
                    *&v1419 = v1352;
                    *v1257 = 258;
                    *(v1257 + 2) = 32;

                    *(v1257 + 3) = 8;

                    swift_getObjectType();
                    v1258 = sub_2146DAA78();
                    v1260 = sub_2144AEA38(v1258, v1259, &v1419);

                    *(v1257 + 4) = v1260;

                    _os_log_impl(&dword_213FAF000, v1350, v1351, "Unable to handle specialized metadata of type: %s", v1257, 0xCu);
                    v1261 = v1352;
                    __swift_destroy_boxed_opaque_existential_1(v1352);
                    MEMORY[0x216056AC0](v1261, -1, -1);
                    sub_2144AE998();
                  }

                  (*(v1346 + 56))(v1348, 1, 1, v1347);
                }
              }
            }
          }
        }
      }
    }
  }
}

id sub_2143F7CD4()
{
  v1 = *v0;
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[5];
  v6 = *(v0 + 6);
  v5 = *(v0 + 7);
  v8 = *(v0 + 8);
  v7 = *(v0 + 9);
  v9 = *(v0 + 80);
  v11 = *(v0 + 11);
  v10 = *(v0 + 12);
  v13 = *(v0 + 13);
  v12 = *(v0 + 14);
  v22 = *(v0 + 120);
  v14 = [objc_allocWithZone(_BlastDoorLPImageAttachmentSubstitute) init];
  [v14 setIndex_];
  v15 = v14;
  if (v3)
  {
    v16 = sub_2146D9588();
  }

  else
  {
    v16 = 0;
  }

  [v14 setMIMEType_];

  v17 = [objc_allocWithZone(_BlastDoorLPImageProperties) init];
  [v17 setType_];
  if (v4)
  {
    v18 = sub_2146D9588();
  }

  else
  {
    v18 = 0;
  }

  [v17 setAccessibilityText_];

  if (v9)
  {
    v19 = 0;
  }

  else
  {
    v19 = [objc_allocWithZone(_BlastDoorLPPlatformColor) init];
    [v19 setR_];
    [v19 setG_];
    [v19 setB_];
    [v19 setA_];
  }

  [v17 setOverlaidTextColor_];

  if (v22)
  {
    v20 = 0;
  }

  else
  {
    v20 = [objc_allocWithZone(_BlastDoorLPPlatformColor) init];
    [v20 setR_];
    [v20 setG_];
    [v20 setB_];
    [v20 setA_];
  }

  [v17 setDominantColor_];

  [v14 setProperties_];
  return v14;
}

id sub_2143F7F44()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = [objc_allocWithZone(_BlastDoorLPIconMetadata) init];
  v6 = type metadata accessor for LinkPresentation.IconMetadata(0);
  sub_213FB2E54(v1 + *(v6 + 20), v4, &unk_27C9131A0, &unk_2146E9D10);
  v7 = sub_2146D8958();
  v8 = *(v7 - 8);
  v9 = 0;
  if ((*(v8 + 48))(v4, 1, v7) != 1)
  {
    v9 = sub_2146D8898();
    (*(v8 + 8))(v4, v7);
  }

  [v5 setURL_];

  if (*(v1 + *(v6 + 24) + 8))
  {
    v10 = sub_2146D9588();
  }

  else
  {
    v10 = 0;
  }

  [v5 setAccessibilityText_];

  return v5;
}

id sub_2143F80EC()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = [objc_allocWithZone(_BlastDoorLPARAssetAttachmentSubstitute) init];
  [v3 setIndex_];
  v4 = v3;
  if (v2)
  {
    v5 = sub_2146D9588();
  }

  else
  {
    v5 = 0;
  }

  [v3 setMIMEType_];

  v6 = [objc_allocWithZone(_BlastDoorLPARAssetProperties) init];

  v7 = sub_2146D9588();

  [v6 setAccessibilityText_];

  [v3 setProperties_];
  return v3;
}

id sub_2143F8214()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - v6;
  v8 = type metadata accessor for LinkPresentation.Video(0);
  v9 = *(v1 + v8[8]);
  if (v9)
  {
    v10 = *(v9 + 16);
    v11 = [objc_allocWithZone(_BlastDoorLPVideoAttachmentSubstitute) init];
    [v11 setIndex_];
  }

  else
  {
    v11 = [objc_allocWithZone(_BlastDoorLPVideo) init];
  }

  v12 = objc_allocWithZone(_BlastDoorLPVideoProperties);
  v13 = v11;
  v14 = [v12 init];
  [v14 setHasAudio_];

  v15 = sub_2146D9588();

  [v14 setAccessibilityText_];

  if (*(v1 + v8[6] + 8))
  {
    v16 = sub_2146D9588();
  }

  else
  {
    v16 = 0;
  }

  [v13 setMIMEType_];

  sub_213FB2E54(v1 + v8[5], v7, &unk_27C9131A0, &unk_2146E9D10);
  v17 = sub_2146D8958();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v20 = 0;
  if (v19(v7, 1, v17) != 1)
  {
    v20 = sub_2146D8898();
    (*(v18 + 8))(v7, v17);
  }

  [v13 setStreamingURL_];

  sub_213FB2E54(v1, v5, &unk_27C9131A0, &unk_2146E9D10);
  if (v19(v5, 1, v17) == 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = sub_2146D8898();
    (*(v18 + 8))(v5, v17);
  }

  [v13 setYouTubeURL_];

  [v13 setProperties_];
  return v13;
}

id sub_2143F8554(Class *a1, uint64_t (*a2)(void))
{
  v5 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  v9 = [objc_allocWithZone(*a1) init];
  v10 = a2(0);
  sub_213FB2E54(v5 + v10[5], v8, &unk_27C9131A0, &unk_2146E9D10);
  v11 = sub_2146D8958();
  v12 = *(v11 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v8, 1, v11) != 1)
  {
    v13 = sub_2146D8898();
    (*(v12 + 8))(v8, v11);
  }

  [v9 setURL_];

  if (*(v5 + v10[6] + 8))
  {
    v14 = sub_2146D9588();
  }

  else
  {
    v14 = 0;
  }

  [v9 setType_];

  [v9 setSize_];
  if (*(v5 + v10[8] + 8))
  {
    v15 = sub_2146D9588();
  }

  else
  {
    v15 = 0;
  }

  [v9 setAccessibilityText_];

  return v9;
}

id sub_2143F875C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = [objc_allocWithZone(_BlastDoorLPAudio) init];
  sub_213FB2E54(v1, v4, &unk_27C9131A0, &unk_2146E9D10);
  v6 = sub_2146D8958();
  v7 = *(v6 - 8);
  v8 = 0;
  if ((*(v7 + 48))(v4, 1, v6) != 1)
  {
    v8 = sub_2146D8898();
    (*(v7 + 8))(v4, v6);
  }

  [v5 setStreamingURL_];

  if (*(v1 + *(type metadata accessor for LinkPresentation.Audio(0) + 20) + 8))
  {
    v9 = sub_2146D9588();
  }

  else
  {
    v9 = 0;
  }

  [v5 setMIMEType_];

  return v5;
}

id sub_2143F88F4(Class *a1, uint64_t (*a2)(void))
{
  v5 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  v9 = [objc_allocWithZone(*a1) init];
  v10 = a2(0);
  sub_213FB2E54(v5 + v10[5], v8, &unk_27C9131A0, &unk_2146E9D10);
  v11 = sub_2146D8958();
  v12 = *(v11 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v8, 1, v11) != 1)
  {
    v13 = sub_2146D8898();
    (*(v12 + 8))(v8, v11);
  }

  [v9 setURL_];

  if (*(v5 + v10[6] + 8))
  {
    v14 = sub_2146D9588();
  }

  else
  {
    v14 = 0;
  }

  [v9 setType_];

  if (*(v5 + v10[7] + 8))
  {
    v15 = sub_2146D9588();
  }

  else
  {
    v15 = 0;
  }

  [v9 setAccessibilityText_];

  return v9;
}

char *sub_2143F8AE0()
{
  v553 = 0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904870, &qword_2146EDB60);
  MEMORY[0x28223BE20](v0 - 8);
  v548 = &v490 - v1;
  v545 = type metadata accessor for LinkPresentation.SharedObjectMetadata(0);
  MEMORY[0x28223BE20](v545);
  v549 = &v490 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v540 = type metadata accessor for LinkPresentation.WalletPassMetadata(0);
  MEMORY[0x28223BE20](v540);
  v543 = &v490 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v546 = type metadata accessor for LinkPresentation.PhotosMomentMetadata(0);
  MEMORY[0x28223BE20](v546);
  v550 = &v490 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v544 = type metadata accessor for LinkPresentation.FileMetadata(0);
  MEMORY[0x28223BE20](v544);
  v547 = &v490 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v557 = sub_2146D8958();
  v554 = *(v557 - 8);
  MEMORY[0x28223BE20](v557);
  v555 = &v490 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904230, &qword_2146EAB88);
  MEMORY[0x28223BE20](v7 - 8);
  v556 = &v490 - v8;
  v558 = type metadata accessor for LinkPresentation.EncodedToken(0);
  v491 = *(v558 - 8);
  MEMORY[0x28223BE20](v558);
  v559 = &v490 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v536 = type metadata accessor for LinkPresentation.MovieBundleMetadata(0);
  MEMORY[0x28223BE20](v536);
  v542 = &v490 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v531 = type metadata accessor for LinkPresentation.MovieMetadata(0);
  MEMORY[0x28223BE20](v531);
  v541 = &v490 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v526 = type metadata accessor for LinkPresentation.TVShowMetadata(0);
  MEMORY[0x28223BE20](v526);
  v534 = &v490 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v528 = type metadata accessor for LinkPresentation.TVSeasonMetadata(0);
  MEMORY[0x28223BE20](v528);
  v537 = &v490 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v529 = type metadata accessor for LinkPresentation.TVEpisodeMetadata(0);
  MEMORY[0x28223BE20](v529);
  v539 = &v490 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v530 = type metadata accessor for LinkPresentation.PodcastMetadata(0);
  MEMORY[0x28223BE20](v530);
  v535 = &v490 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v515 = &v490 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v512 = &v490 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  *&v552 = &v490 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v521 = &v490 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v516 = &v490 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v523 = &v490 - v28;
  MEMORY[0x28223BE20](v27);
  v517 = &v490 - v29;
  v532 = type metadata accessor for LinkPresentation.PodcastEpisodeMetadata(0);
  MEMORY[0x28223BE20](v532);
  v538 = &v490 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v522 = type metadata accessor for LinkPresentation.AudioBookMetadata(0);
  MEMORY[0x28223BE20](v522);
  v527 = &v490 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v519 = type metadata accessor for LinkPresentation.BookMetadata(0);
  MEMORY[0x28223BE20](v519);
  v520 = &v490 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904888, &unk_2146EDB80);
  MEMORY[0x28223BE20](v33 - 8);
  v524 = &v490 - v34;
  v525 = type metadata accessor for LinkPresentation.SoftwareMetadata(0);
  MEMORY[0x28223BE20](v525);
  v533 = &v490 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v506 = type metadata accessor for LinkPresentation.RadioMetadata(0);
  MEMORY[0x28223BE20](v506);
  v513 = &v490 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v514 = type metadata accessor for LinkPresentation.PlaylistMetadata(0);
  MEMORY[0x28223BE20](v514);
  v518 = &v490 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v504 = type metadata accessor for LinkPresentation.ArtistMetadata(0);
  MEMORY[0x28223BE20](v504);
  v510 = &v490 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v503 = type metadata accessor for LinkPresentation.MusicVideoMetadata(0);
  MEMORY[0x28223BE20](v503);
  v507 = &v490 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v505 = type metadata accessor for LinkPresentation.AlbumMetadata(0);
  MEMORY[0x28223BE20](v505);
  v508 = &v490 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v42 = MEMORY[0x28223BE20](v41 - 8);
  v509 = &v490 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v493 = &v490 - v45;
  MEMORY[0x28223BE20](v44);
  v511 = &v490 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
  v48 = MEMORY[0x28223BE20](v47 - 8);
  v501 = &v490 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v48);
  v499 = &v490 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v495 = &v490 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v498 = &v490 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v500 = &v490 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v496 = &v490 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v551 = &v490 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v497 = &v490 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v66 = &v490 - v65;
  v67 = MEMORY[0x28223BE20](v64);
  v69 = &v490 - v68;
  v70 = MEMORY[0x28223BE20](v67);
  v502 = &v490 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v74 = &v490 - v73;
  v75 = MEMORY[0x28223BE20](v72);
  v77 = &v490 - v76;
  v78 = MEMORY[0x28223BE20](v75);
  v80 = &v490 - v79;
  MEMORY[0x28223BE20](v78);
  v494 = &v490 - v81;
  v82 = type metadata accessor for LinkPresentation.SongMetadata(0);
  MEMORY[0x28223BE20](v82);
  v84 = &v490 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for LinkPresentation.SpecializationMetadata(0);
  v492 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v87 = (&v490 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2144009D8(v560, v87, type metadata accessor for LinkPresentation.SpecializationMetadata);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v133 = v87;
      v130 = v508;
      sub_214400A9C(v133, v508, type metadata accessor for LinkPresentation.AlbumMetadata);
      sub_21404A8B8(0, &qword_27C912AE8, off_2781752A8);
      v134 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v130 + 8))
      {
        v135 = sub_2146D9588();
      }

      else
      {
        v135 = 0;
      }

      [v134 setStoreFrontIdentifier_];

      if (*(v130 + 24))
      {
        v325 = sub_2146D9588();
      }

      else
      {
        v325 = 0;
      }

      [v134 setStoreIdentifier_];

      if (*(v130 + 40))
      {
        v327 = sub_2146D9588();
      }

      else
      {
        v327 = 0;
      }

      [v134 setName_];

      if (*(v130 + 56))
      {
        v329 = sub_2146D9588();
      }

      else
      {
        v329 = 0;
      }

      [v134 setArtist_];

      v331 = *(v130 + 144);
      v589[4] = *(v130 + 128);
      v589[5] = v331;
      v589[6] = *(v130 + 160);
      *(&v589[6] + 9) = *(v130 + 169);
      v332 = *(v130 + 80);
      v589[0] = *(v130 + 64);
      v589[1] = v332;
      v333 = *(v130 + 112);
      v589[2] = *(v130 + 96);
      v589[3] = v333;
      if (sub_2144009B4(v589) == 1)
      {
        v334 = 0;
      }

      else
      {
        v586 = v589[4];
        v587 = v589[5];
        v588[0] = v589[6];
        *(v588 + 9) = *(&v589[6] + 9);
        v583 = v589[0];
        v584 = v589[1];
        v585[0] = v589[2];
        v585[1] = v589[3];
        v334 = sub_2143F7CD4();
      }

      [v134 setArtwork_];

      v335 = v505;
      sub_213FB2E54(v130 + *(v505 + 36), v80, &qword_27C904878, &unk_2146EDB68);
      v336 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      if ((*(*(v336 - 8) + 48))(v80, 1, v336) == 1)
      {
        sub_213FB2DF4(v80, &qword_27C904878, &unk_2146EDB68);
        v337 = 0;
      }

      else
      {
        v337 = sub_2143FFD20();
        sub_214400B04(v80, type metadata accessor for LinkPresentation.ArtworkMetadata);
      }

      v88 = v134;
      [v134 setArtworkMetadata_];

      if (*(v130 + *(v335 + 40)))
      {
        v338 = sub_2146D98E8();
      }

      else
      {
        v338 = 0;
      }

      [v134 setOffers_];

      v310 = type metadata accessor for LinkPresentation.AlbumMetadata;
      goto LABEL_475;
    case 2u:
      v126 = v507;
      sub_214400A9C(v87, v507, type metadata accessor for LinkPresentation.MusicVideoMetadata);
      sub_21404A8B8(0, &qword_27C912AF8, off_2781752D8);
      v88 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v126 + 8))
      {
        v127 = sub_2146D9588();
      }

      else
      {
        v127 = 0;
      }

      [v88 setStoreFrontIdentifier_];

      if (*(v126 + 24))
      {
        v280 = sub_2146D9588();
      }

      else
      {
        v280 = 0;
      }

      [v88 setStoreIdentifier_];

      if (*(v126 + 40))
      {
        v281 = sub_2146D9588();
      }

      else
      {
        v281 = 0;
      }

      [v88 setName_];

      if (*(v126 + 56))
      {
        v282 = sub_2146D9588();
      }

      else
      {
        v282 = 0;
      }

      [v88 setArtist_];

      v283 = *(v126 + 144);
      v589[4] = *(v126 + 128);
      v589[5] = v283;
      v589[6] = *(v126 + 160);
      *(&v589[6] + 9) = *(v126 + 169);
      v284 = *(v126 + 80);
      v589[0] = *(v126 + 64);
      v589[1] = v284;
      v285 = *(v126 + 112);
      v589[2] = *(v126 + 96);
      v589[3] = v285;
      if (sub_2144009B4(v589) == 1)
      {
        v286 = 0;
      }

      else
      {
        v586 = v589[4];
        v587 = v589[5];
        v588[0] = v589[6];
        *(v588 + 9) = *(&v589[6] + 9);
        v583 = v589[0];
        v584 = v589[1];
        v585[0] = v589[2];
        v585[1] = v589[3];
        v286 = sub_2143F7CD4();
      }

      [v88 setArtwork_];

      sub_213FB2E54(v126 + *(v503 + 36), v77, &qword_27C904878, &unk_2146EDB68);
      v287 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      if ((*(*(v287 - 8) + 48))(v77, 1, v287) == 1)
      {
        sub_213FB2DF4(v77, &qword_27C904878, &unk_2146EDB68);
        v288 = 0;
      }

      else
      {
        v288 = sub_2143FFD20();
        sub_214400B04(v77, type metadata accessor for LinkPresentation.ArtworkMetadata);
      }

      [v88 setArtworkMetadata_];

      v289 = type metadata accessor for LinkPresentation.MusicVideoMetadata;
      goto LABEL_424;
    case 3u:
      v129 = v87;
      v130 = v510;
      sub_214400A9C(v129, v510, type metadata accessor for LinkPresentation.ArtistMetadata);
      sub_21404A8B8(0, &qword_27C912AF0, off_2781752B0);
      v88 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v130 + 8))
      {
        v131 = sub_2146D9588();
      }

      else
      {
        v131 = 0;
      }

      v300 = v504;
      [v88 setStoreFrontIdentifier_];

      if (*(v130 + 24))
      {
        v301 = sub_2146D9588();
      }

      else
      {
        v301 = 0;
      }

      [v88 setStoreIdentifier_];

      if (*(v130 + 40))
      {
        v302 = sub_2146D9588();
      }

      else
      {
        v302 = 0;
      }

      [v88 setName_];

      if (*(v130 + 56))
      {
        v303 = sub_2146D9588();
      }

      else
      {
        v303 = 0;
      }

      [v88 setGenre_];

      v304 = *(v130 + 144);
      v589[4] = *(v130 + 128);
      v589[5] = v304;
      v589[6] = *(v130 + 160);
      *(&v589[6] + 9) = *(v130 + 169);
      v305 = *(v130 + 80);
      v589[0] = *(v130 + 64);
      v589[1] = v305;
      v306 = *(v130 + 112);
      v589[2] = *(v130 + 96);
      v589[3] = v306;
      if (sub_2144009B4(v589) == 1)
      {
        v307 = 0;
      }

      else
      {
        v586 = v589[4];
        v587 = v589[5];
        v588[0] = v589[6];
        *(v588 + 9) = *(&v589[6] + 9);
        v583 = v589[0];
        v584 = v589[1];
        v585[0] = v589[2];
        v585[1] = v589[3];
        v307 = sub_2143F7CD4();
      }

      [v88 setArtwork_];

      sub_213FB2E54(v130 + *(v300 + 36), v74, &qword_27C904878, &unk_2146EDB68);
      v308 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      if ((*(*(v308 - 8) + 48))(v74, 1, v308) == 1)
      {
        sub_213FB2DF4(v74, &qword_27C904878, &unk_2146EDB68);
        v309 = 0;
      }

      else
      {
        v309 = sub_2143FFD20();
        sub_214400B04(v74, type metadata accessor for LinkPresentation.ArtworkMetadata);
      }

      [v88 setArtworkMetadata_];

      v310 = type metadata accessor for LinkPresentation.ArtistMetadata;
      goto LABEL_475;
    case 4u:
      v84 = v518;
      sub_214400A9C(v87, v518, type metadata accessor for LinkPresentation.PlaylistMetadata);
      sub_21404A8B8(0, &qword_27C912B00, off_2781752E0);
      v88 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v84 + 1))
      {
        v111 = sub_2146D9588();
      }

      else
      {
        v111 = 0;
      }

      v228 = v557;
      v229 = v554;
      v230 = v514;
      v231 = v493;
      [v88 setStoreFrontIdentifier_];

      if (*(v84 + 3))
      {
        v232 = sub_2146D9588();
      }

      else
      {
        v232 = 0;
      }

      [v88 setStoreIdentifier_];

      if (*(v84 + 5))
      {
        v233 = sub_2146D9588();
      }

      else
      {
        v233 = 0;
      }

      [v88 setName_];

      if (*(v84 + 7))
      {
        v234 = sub_2146D9588();
      }

      else
      {
        v234 = 0;
      }

      [v88 setCurator_];

      sub_213FB2E54(&v84[v230[8]], v231, &unk_27C9131A0, &unk_2146E9D10);
      if ((v229[6])(v231, 1, v228) == 1)
      {
        v235 = 0;
      }

      else
      {
        v235 = sub_2146D8898();
        v229[1](v231, v228);
      }

      [v88 setCuratorProfileURL_];

      if (*&v84[v230[9] + 8])
      {
        v236 = sub_2146D9588();
      }

      else
      {
        v236 = 0;
      }

      v237 = v502;
      [v88 setCuratorHandle_];

      v238 = &v84[v230[10]];
      v239 = *(v238 + 5);
      v589[4] = *(v238 + 4);
      v589[5] = v239;
      v589[6] = *(v238 + 6);
      *(&v589[6] + 9) = *(v238 + 105);
      v240 = *(v238 + 1);
      v589[0] = *v238;
      v589[1] = v240;
      v241 = *(v238 + 3);
      v589[2] = *(v238 + 2);
      v589[3] = v241;
      if (sub_2144009B4(v589) == 1)
      {
        v242 = 0;
      }

      else
      {
        v586 = v589[4];
        v587 = v589[5];
        v588[0] = v589[6];
        *(v588 + 9) = *(&v589[6] + 9);
        v583 = v589[0];
        v584 = v589[1];
        v585[0] = v589[2];
        v585[1] = v589[3];
        v242 = sub_2143F7CD4();
      }

      [v88 setArtwork_];

      sub_213FB2E54(&v84[v230[11]], v237, &qword_27C904878, &unk_2146EDB68);
      v243 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      if ((*(*(v243 - 8) + 48))(v237, 1, v243) == 1)
      {
        sub_213FB2DF4(v237, &qword_27C904878, &unk_2146EDB68);
        v244 = 0;
      }

      else
      {
        v244 = sub_2143FFD20();
        sub_214400B04(v237, type metadata accessor for LinkPresentation.ArtworkMetadata);
      }

      [v88 setArtworkMetadata_];

      v245 = type metadata accessor for LinkPresentation.PlaylistMetadata;
      goto LABEL_376;
    case 5u:
      v126 = v513;
      sub_214400A9C(v87, v513, type metadata accessor for LinkPresentation.RadioMetadata);
      sub_21404A8B8(0, &qword_27C912B08, off_2781752F8);
      v88 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v126 + 8))
      {
        v146 = sub_2146D9588();
      }

      else
      {
        v146 = 0;
      }

      v364 = v506;
      [v88 setStoreFrontIdentifier_];

      if (*(v126 + 24))
      {
        v365 = sub_2146D9588();
      }

      else
      {
        v365 = 0;
      }

      [v88 setStoreIdentifier_];

      if (*(v126 + 40))
      {
        v366 = sub_2146D9588();
      }

      else
      {
        v366 = 0;
      }

      [v88 setName_];

      if (*(v126 + 56))
      {
        v367 = sub_2146D9588();
      }

      else
      {
        v367 = 0;
      }

      [v88 setCurator_];

      v368 = *(v126 + 144);
      v589[4] = *(v126 + 128);
      v589[5] = v368;
      v589[6] = *(v126 + 160);
      *(&v589[6] + 9) = *(v126 + 169);
      v369 = *(v126 + 80);
      v589[0] = *(v126 + 64);
      v589[1] = v369;
      v370 = *(v126 + 112);
      v589[2] = *(v126 + 96);
      v589[3] = v370;
      if (sub_2144009B4(v589) == 1)
      {
        v371 = 0;
      }

      else
      {
        v586 = v589[4];
        v587 = v589[5];
        v588[0] = v589[6];
        *(v588 + 9) = *(&v589[6] + 9);
        v583 = v589[0];
        v584 = v589[1];
        v585[0] = v589[2];
        v585[1] = v589[3];
        v371 = sub_2143F7CD4();
      }

      [v88 setArtwork_];

      sub_213FB2E54(v126 + *(v364 + 36), v69, &qword_27C904878, &unk_2146EDB68);
      v372 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      if ((*(*(v372 - 8) + 48))(v69, 1, v372) == 1)
      {
        sub_213FB2DF4(v69, &qword_27C904878, &unk_2146EDB68);
        v373 = 0;
      }

      else
      {
        v373 = sub_2143FFD20();
        sub_214400B04(v69, type metadata accessor for LinkPresentation.ArtworkMetadata);
      }

      [v88 setArtworkMetadata_];

      v289 = type metadata accessor for LinkPresentation.RadioMetadata;
LABEL_424:
      v354 = v289;
      v355 = v126;
      goto LABEL_621;
    case 6u:
      v153 = v87;
      v130 = v533;
      sub_214400A9C(v153, v533, type metadata accessor for LinkPresentation.SoftwareMetadata);
      sub_21404A8B8(0, &qword_27C912B10, off_278175300);
      v88 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v130 + 8))
      {
        v154 = sub_2146D9588();
      }

      else
      {
        v154 = 0;
      }

      v385 = v524;
      v384 = v525;
      [v88 setStoreFrontIdentifier_];

      if (*(v130 + 24))
      {
        v386 = sub_2146D9588();
      }

      else
      {
        v386 = 0;
      }

      [v88 setStoreIdentifier_];

      if (*(v130 + 40))
      {
        v387 = sub_2146D9588();
      }

      else
      {
        v387 = 0;
      }

      [v88 setName_];

      if (*(v130 + 56))
      {
        v388 = sub_2146D9588();
      }

      else
      {
        v388 = 0;
      }

      [v88 setSubtitle_];

      if (*(v130 + 72))
      {
        v389 = sub_2146D9588();
      }

      else
      {
        v389 = 0;
      }

      [v88 setGenre_];

      if (*(v130 + 88))
      {
        v390 = sub_2146D9588();
      }

      else
      {
        v390 = 0;
      }

      [v88 setPlatform_];

      v391 = *(v130 + 176);
      v589[4] = *(v130 + 160);
      v589[5] = v391;
      v589[6] = *(v130 + 192);
      *(&v589[6] + 9) = *(v130 + 201);
      v392 = *(v130 + 112);
      v589[0] = *(v130 + 96);
      v589[1] = v392;
      v393 = *(v130 + 144);
      v589[2] = *(v130 + 128);
      v589[3] = v393;
      if (sub_2144009B4(v589) == 1)
      {
        v394 = 0;
      }

      else
      {
        v586 = v589[4];
        v587 = v589[5];
        v588[0] = v589[6];
        *(v588 + 9) = *(&v589[6] + 9);
        v583 = v589[0];
        v584 = v589[1];
        v585[0] = v589[2];
        v585[1] = v589[3];
        v394 = sub_2143F7CD4();
      }

      [v88 setIcon_];

      v395 = *(v130 + 224);
      if (v395)
      {
        sub_2143E341C(v395);
        sub_21404A8B8(0, &qword_27C912A80, off_2781751E0);
        v396 = sub_2146D98E8();
      }

      else
      {
        v396 = 0;
      }

      [v88 setScreenshots_];

      sub_213FB2E54(v130 + v384[12], v385, &qword_27C904888, &unk_2146EDB80);
      v397 = type metadata accessor for LinkPresentation.Video(0);
      if ((*(*(v397 - 8) + 48))(v385, 1, v397) == 1)
      {
        sub_213FB2DF4(v385, &qword_27C904888, &unk_2146EDB80);
        v398 = 0;
      }

      else
      {
        v398 = sub_2143F8214();
        sub_214400B04(v385, type metadata accessor for LinkPresentation.Video);
      }

      [v88 setPreviewVideo_];

      [v88 setIsMessagesOnlyApp_];
      v399 = (v130 + v384[14]);
      v400 = v399[5];
      v586 = v399[4];
      v587 = v400;
      v588[0] = v399[6];
      *(v588 + 9) = *(v399 + 105);
      v401 = v399[1];
      v583 = *v399;
      v584 = v401;
      v402 = v399[3];
      v585[0] = v399[2];
      v585[1] = v402;
      if (sub_2144009B4(&v583) == 1)
      {
        v403 = 0;
      }

      else
      {
        v581 = v587;
        v582[0] = v588[0];
        *(v582 + 9) = *(v588 + 9);
        v576 = v583;
        v577 = v584;
        v578 = v585[0];
        v579 = v585[1];
        v580 = v586;
        v403 = sub_2143F7CD4();
      }

      [v88 setMessagesAppIcon_];

      v310 = type metadata accessor for LinkPresentation.SoftwareMetadata;
LABEL_475:
      v354 = v310;
      v355 = v130;
      goto LABEL_621;
    case 7u:
      v106 = v520;
      sub_214400A9C(v87, v520, type metadata accessor for LinkPresentation.BookMetadata);
      sub_21404A8B8(0, &qword_27C912B18, off_2781752C0);
      v88 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v106 + 8))
      {
        v132 = sub_2146D9588();
      }

      else
      {
        v132 = 0;
      }

      v311 = v519;
      v312 = v66;
      [v88 setStoreFrontIdentifier_];

      if (*(v106 + 24))
      {
        v313 = sub_2146D9588();
      }

      else
      {
        v313 = 0;
      }

      [v88 setStoreIdentifier_];

      if (*(v106 + 40))
      {
        v314 = sub_2146D9588();
      }

      else
      {
        v314 = 0;
      }

      [v88 setName_];

      if (*(v106 + 56))
      {
        v315 = sub_2146D9588();
      }

      else
      {
        v315 = 0;
      }

      [v88 setAuthor_];

      v316 = *(v106 + 144);
      v589[4] = *(v106 + 128);
      v589[5] = v316;
      v589[6] = *(v106 + 160);
      *(&v589[6] + 9) = *(v106 + 169);
      v317 = *(v106 + 80);
      v589[0] = *(v106 + 64);
      v589[1] = v317;
      v318 = *(v106 + 112);
      v589[2] = *(v106 + 96);
      v589[3] = v318;
      if (sub_2144009B4(v589) == 1)
      {
        v319 = 0;
      }

      else
      {
        v586 = v589[4];
        v587 = v589[5];
        v588[0] = v589[6];
        *(v588 + 9) = *(&v589[6] + 9);
        v583 = v589[0];
        v584 = v589[1];
        v585[0] = v589[2];
        v585[1] = v589[3];
        v319 = sub_2143F7CD4();
      }

      [v88 setArtwork_];

      sub_213FB2E54(v106 + *(v311 + 36), v312, &qword_27C904878, &unk_2146EDB68);
      v320 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      if ((*(*(v320 - 8) + 48))(v312, 1, v320) == 1)
      {
        sub_213FB2DF4(v312, &qword_27C904878, &unk_2146EDB68);
        v321 = 0;
      }

      else
      {
        v321 = sub_2143FFD20();
        sub_214400B04(v312, type metadata accessor for LinkPresentation.ArtworkMetadata);
      }

      [v88 setArtworkMetadata_];

      [v88 setHasSpineOnRight_];
      v216 = type metadata accessor for LinkPresentation.BookMetadata;
      goto LABEL_547;
    case 8u:
      v113 = v527;
      sub_214400A9C(v87, v527, type metadata accessor for LinkPresentation.AudioBookMetadata);
      sub_21404A8B8(0, &qword_27C912B20, off_2781752B8);
      v88 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v113 + 8))
      {
        v157 = sub_2146D9588();
      }

      else
      {
        v157 = 0;
      }

      v418 = v557;
      v419 = v522;
      v420 = v509;
      [v88 setStoreFrontIdentifier_];

      if (*(v113 + 24))
      {
        v421 = sub_2146D9588();
      }

      else
      {
        v421 = 0;
      }

      v422 = v554;
      [v88 setStoreIdentifier_];

      if (*(v113 + 40))
      {
        v423 = sub_2146D9588();
      }

      else
      {
        v423 = 0;
      }

      [v88 setName_];

      if (*(v113 + 56))
      {
        v424 = sub_2146D9588();
      }

      else
      {
        v424 = 0;
      }

      [v88 setAuthor_];

      if (*(v113 + 72))
      {
        v425 = sub_2146D9588();
      }

      else
      {
        v425 = 0;
      }

      [v88 setNarrator_];

      v426 = *(v113 + 160);
      v589[4] = *(v113 + 144);
      v589[5] = v426;
      v589[6] = *(v113 + 176);
      *(&v589[6] + 9) = *(v113 + 185);
      v427 = *(v113 + 96);
      v589[0] = *(v113 + 80);
      v589[1] = v427;
      v428 = *(v113 + 128);
      v589[2] = *(v113 + 112);
      v589[3] = v428;
      if (sub_2144009B4(v589) == 1)
      {
        v429 = 0;
      }

      else
      {
        v586 = v589[4];
        v587 = v589[5];
        v588[0] = v589[6];
        *(v588 + 9) = *(&v589[6] + 9);
        v583 = v589[0];
        v584 = v589[1];
        v585[0] = v589[2];
        v585[1] = v589[3];
        v429 = sub_2143F7CD4();
      }

      [v88 setArtwork_];

      v430 = v497;
      sub_213FB2E54(v113 + *(v419 + 40), v497, &qword_27C904878, &unk_2146EDB68);
      v431 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      if ((*(*(v431 - 8) + 48))(v430, 1, v431) == 1)
      {
        sub_213FB2DF4(v430, &qword_27C904878, &unk_2146EDB68);
        v432 = 0;
      }

      else
      {
        v432 = sub_2143FFD20();
        sub_214400B04(v430, type metadata accessor for LinkPresentation.ArtworkMetadata);
      }

      [v88 setArtworkMetadata_];

      sub_213FB2E54(v113 + *(v419 + 44), v420, &unk_27C9131A0, &unk_2146E9D10);
      if ((v422[6])(v420, 1, v418) == 1)
      {
        v433 = 0;
      }

      else
      {
        v433 = sub_2146D8898();
        v422[1](v420, v418);
      }

      [v88 setPreviewURL_];

      v274 = type metadata accessor for LinkPresentation.AudioBookMetadata;
      goto LABEL_620;
    case 9u:
      v113 = v538;
      sub_214400A9C(v87, v538, type metadata accessor for LinkPresentation.PodcastEpisodeMetadata);
      sub_21404A8B8(0, &qword_27C912B28, off_2781752E8);
      v88 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v113 + 8))
      {
        v114 = sub_2146D9588();
      }

      else
      {
        v114 = 0;
      }

      v256 = v532;
      v257 = v517;
      [v88 setStoreFrontIdentifier_];

      if (*(v113 + 24))
      {
        v258 = sub_2146D9588();
      }

      else
      {
        v258 = 0;
      }

      [v88 setStoreIdentifier_];

      if (*(v113 + 40))
      {
        v259 = sub_2146D9588();
      }

      else
      {
        v259 = 0;
      }

      [v88 setEpisodeName_];

      if (*(v113 + 56))
      {
        v260 = sub_2146D9588();
      }

      else
      {
        v260 = 0;
      }

      [v88 setPodcastName_];

      if (*(v113 + 72))
      {
        v261 = sub_2146D9588();
      }

      else
      {
        v261 = 0;
      }

      [v88 setArtist_];

      sub_213FB2E54(v113 + v256[9], v257, &qword_27C913090, &unk_2146E9DB0);
      v262 = sub_2146D8B08();
      v263 = *(v262 - 8);
      v264 = 0;
      if ((*(v263 + 48))(v257, 1, v262) != 1)
      {
        v264 = sub_2146D8AD8();
        (*(v263 + 8))(v257, v262);
      }

      [v88 setReleaseDate_];

      v265 = (v113 + v256[10]);
      v266 = v265[5];
      v589[4] = v265[4];
      v589[5] = v266;
      v589[6] = v265[6];
      *(&v589[6] + 9) = *(v265 + 105);
      v267 = v265[1];
      v589[0] = *v265;
      v589[1] = v267;
      v268 = v265[3];
      v589[2] = v265[2];
      v589[3] = v268;
      if (sub_2144009B4(v589) == 1)
      {
        v269 = 0;
      }

      else
      {
        v586 = v589[4];
        v587 = v589[5];
        v588[0] = v589[6];
        *(v588 + 9) = *(&v589[6] + 9);
        v583 = v589[0];
        v584 = v589[1];
        v585[0] = v589[2];
        v585[1] = v589[3];
        v269 = sub_2143F7CD4();
      }

      v270 = v551;
      [v88 setArtwork_];

      sub_213FB2E54(v113 + v256[11], v270, &qword_27C904878, &unk_2146EDB68);
      v271 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      if ((*(*(v271 - 8) + 48))(v270, 1, v271) == 1)
      {
        sub_213FB2DF4(v270, &qword_27C904878, &unk_2146EDB68);
        v272 = 0;
      }

      else
      {
        v272 = sub_2143FFD20();
        sub_214400B04(v270, type metadata accessor for LinkPresentation.ArtworkMetadata);
      }

      [v88 setArtworkMetadata_];

      if (*(v113 + v256[12]))
      {
        v273 = sub_2146D98E8();
      }

      else
      {
        v273 = 0;
      }

      [v88 setOffers_];

      v274 = type metadata accessor for LinkPresentation.PodcastEpisodeMetadata;
      goto LABEL_620;
    case 0xAu:
      v106 = v535;
      sub_214400A9C(v87, v535, type metadata accessor for LinkPresentation.PodcastMetadata);
      sub_21404A8B8(0, &qword_27C912B30, off_2781752F0);
      v88 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v106 + 8))
      {
        v156 = sub_2146D9588();
      }

      else
      {
        v156 = 0;
      }

      v406 = v530;
      v407 = v496;
      [v88 setStoreFrontIdentifier_];

      if (*(v106 + 24))
      {
        v408 = sub_2146D9588();
      }

      else
      {
        v408 = 0;
      }

      [v88 setStoreIdentifier_];

      if (*(v106 + 40))
      {
        v409 = sub_2146D9588();
      }

      else
      {
        v409 = 0;
      }

      [v88 setName_];

      if (*(v106 + 56))
      {
        v410 = sub_2146D9588();
      }

      else
      {
        v410 = 0;
      }

      [v88 setArtist_];

      v411 = *(v106 + 144);
      v589[4] = *(v106 + 128);
      v589[5] = v411;
      v589[6] = *(v106 + 160);
      *(&v589[6] + 9) = *(v106 + 169);
      v412 = *(v106 + 80);
      v589[0] = *(v106 + 64);
      v589[1] = v412;
      v413 = *(v106 + 112);
      v589[2] = *(v106 + 96);
      v589[3] = v413;
      if (sub_2144009B4(v589) == 1)
      {
        v414 = 0;
      }

      else
      {
        v586 = v589[4];
        v587 = v589[5];
        v588[0] = v589[6];
        *(v588 + 9) = *(&v589[6] + 9);
        v583 = v589[0];
        v584 = v589[1];
        v585[0] = v589[2];
        v585[1] = v589[3];
        v414 = sub_2143F7CD4();
      }

      [v88 setArtwork_];

      sub_213FB2E54(v106 + *(v406 + 36), v407, &qword_27C904878, &unk_2146EDB68);
      v415 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      if ((*(*(v415 - 8) + 48))(v407, 1, v415) == 1)
      {
        sub_213FB2DF4(v407, &qword_27C904878, &unk_2146EDB68);
        v416 = 0;
      }

      else
      {
        v416 = sub_2143FFD20();
        sub_214400B04(v407, type metadata accessor for LinkPresentation.ArtworkMetadata);
      }

      [v88 setArtworkMetadata_];

      if (*(v106 + *(v406 + 40)))
      {
        v417 = sub_2146D98E8();
      }

      else
      {
        v417 = 0;
      }

      [v88 setOffers_];

      v216 = type metadata accessor for LinkPresentation.PodcastMetadata;
      goto LABEL_547;
    case 0xBu:
      v106 = v539;
      sub_214400A9C(v87, v539, type metadata accessor for LinkPresentation.TVEpisodeMetadata);
      sub_21404A8B8(0, &qword_27C912B38, off_278175310);
      v88 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v106 + 8))
      {
        v110 = sub_2146D9588();
      }

      else
      {
        v110 = 0;
      }

      [v88 setStoreFrontIdentifier_];

      if (*(v106 + 24))
      {
        v217 = sub_2146D9588();
      }

      else
      {
        v217 = 0;
      }

      [v88 setStoreIdentifier_];

      if (*(v106 + 40))
      {
        v218 = sub_2146D9588();
      }

      else
      {
        v218 = 0;
      }

      [v88 setEpisodeName_];

      if (*(v106 + 56))
      {
        v219 = sub_2146D9588();
      }

      else
      {
        v219 = 0;
      }

      [v88 setSeasonName_];

      if (*(v106 + 72))
      {
        v220 = sub_2146D9588();
      }

      else
      {
        v220 = 0;
      }

      [v88 setGenre_];

      v221 = *(v106 + 160);
      v589[4] = *(v106 + 144);
      v589[5] = v221;
      v589[6] = *(v106 + 176);
      *(&v589[6] + 9) = *(v106 + 185);
      v222 = *(v106 + 96);
      v589[0] = *(v106 + 80);
      v589[1] = v222;
      v223 = *(v106 + 128);
      v589[2] = *(v106 + 112);
      v589[3] = v223;
      if (sub_2144009B4(v589) == 1)
      {
        v224 = 0;
      }

      else
      {
        v586 = v589[4];
        v587 = v589[5];
        v588[0] = v589[6];
        *(v588 + 9) = *(&v589[6] + 9);
        v583 = v589[0];
        v584 = v589[1];
        v585[0] = v589[2];
        v585[1] = v589[3];
        v224 = sub_2143F7CD4();
      }

      [v88 setArtwork_];

      v225 = v500;
      sub_213FB2E54(v106 + *(v529 + 40), v500, &qword_27C904878, &unk_2146EDB68);
      v226 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      if ((*(*(v226 - 8) + 48))(v225, 1, v226) == 1)
      {
        sub_213FB2DF4(v225, &qword_27C904878, &unk_2146EDB68);
        v227 = 0;
      }

      else
      {
        v227 = sub_2143FFD20();
        sub_214400B04(v225, type metadata accessor for LinkPresentation.ArtworkMetadata);
      }

      [v88 setArtworkMetadata_];

      v216 = type metadata accessor for LinkPresentation.TVEpisodeMetadata;
      goto LABEL_547;
    case 0xCu:
      v106 = v537;
      sub_214400A9C(v87, v537, type metadata accessor for LinkPresentation.TVSeasonMetadata);
      sub_21404A8B8(0, &qword_27C912B40, off_278175318);
      v88 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v106 + 8))
      {
        v112 = sub_2146D9588();
      }

      else
      {
        v112 = 0;
      }

      [v88 setStoreFrontIdentifier_];

      if (*(v106 + 24))
      {
        v246 = sub_2146D9588();
      }

      else
      {
        v246 = 0;
      }

      [v88 setStoreIdentifier_];

      if (*(v106 + 40))
      {
        v247 = sub_2146D9588();
      }

      else
      {
        v247 = 0;
      }

      [v88 setName_];

      if (*(v106 + 56))
      {
        v248 = sub_2146D9588();
      }

      else
      {
        v248 = 0;
      }

      [v88 setGenre_];

      v249 = *(v106 + 144);
      v589[4] = *(v106 + 128);
      v589[5] = v249;
      v589[6] = *(v106 + 160);
      *(&v589[6] + 9) = *(v106 + 169);
      v250 = *(v106 + 80);
      v589[0] = *(v106 + 64);
      v589[1] = v250;
      v251 = *(v106 + 112);
      v589[2] = *(v106 + 96);
      v589[3] = v251;
      if (sub_2144009B4(v589) == 1)
      {
        v252 = 0;
      }

      else
      {
        v586 = v589[4];
        v587 = v589[5];
        v588[0] = v589[6];
        *(v588 + 9) = *(&v589[6] + 9);
        v583 = v589[0];
        v584 = v589[1];
        v585[0] = v589[2];
        v585[1] = v589[3];
        v252 = sub_2143F7CD4();
      }

      [v88 setArtwork_];

      v253 = v498;
      sub_213FB2E54(v106 + *(v528 + 36), v498, &qword_27C904878, &unk_2146EDB68);
      v254 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      if ((*(*(v254 - 8) + 48))(v253, 1, v254) == 1)
      {
        sub_213FB2DF4(v253, &qword_27C904878, &unk_2146EDB68);
        v255 = 0;
      }

      else
      {
        v255 = sub_2143FFD20();
        sub_214400B04(v253, type metadata accessor for LinkPresentation.ArtworkMetadata);
      }

      [v88 setArtworkMetadata_];

      v216 = type metadata accessor for LinkPresentation.TVSeasonMetadata;
      goto LABEL_547;
    case 0xDu:
      v106 = v534;
      sub_214400A9C(v87, v534, type metadata accessor for LinkPresentation.TVShowMetadata);
      sub_21404A8B8(0, &qword_27C912B48, off_278175158);
      v88 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v106 + 8))
      {
        v152 = sub_2146D9588();
      }

      else
      {
        v152 = 0;
      }

      v374 = v526;
      v375 = v495;
      [v88 setStoreFrontIdentifier_];

      if (*(v106 + 24))
      {
        v376 = sub_2146D9588();
      }

      else
      {
        v376 = 0;
      }

      [v88 setStoreIdentifier_];

      if (*(v106 + 40))
      {
        v377 = sub_2146D9588();
      }

      else
      {
        v377 = 0;
      }

      [v88 setName_];

      v378 = *(v106 + 128);
      v589[4] = *(v106 + 112);
      v589[5] = v378;
      v589[6] = *(v106 + 144);
      *(&v589[6] + 9) = *(v106 + 153);
      v379 = *(v106 + 64);
      v589[0] = *(v106 + 48);
      v589[1] = v379;
      v380 = *(v106 + 96);
      v589[2] = *(v106 + 80);
      v589[3] = v380;
      if (sub_2144009B4(v589) == 1)
      {
        v381 = 0;
      }

      else
      {
        v586 = v589[4];
        v587 = v589[5];
        v588[0] = v589[6];
        *(v588 + 9) = *(&v589[6] + 9);
        v583 = v589[0];
        v584 = v589[1];
        v585[0] = v589[2];
        v585[1] = v589[3];
        v381 = sub_2143F7CD4();
      }

      [v88 setArtwork_];

      sub_213FB2E54(v106 + *(v374 + 32), v375, &qword_27C904878, &unk_2146EDB68);
      v382 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      if ((*(*(v382 - 8) + 48))(v375, 1, v382) == 1)
      {
        sub_213FB2DF4(v375, &qword_27C904878, &unk_2146EDB68);
        v383 = 0;
      }

      else
      {
        v383 = sub_2143FFD20();
        sub_214400B04(v375, type metadata accessor for LinkPresentation.ArtworkMetadata);
      }

      [v88 setArtworkMetadata_];

      v216 = type metadata accessor for LinkPresentation.TVShowMetadata;
      goto LABEL_547;
    case 0xEu:
      v106 = v541;
      sub_214400A9C(v87, v541, type metadata accessor for LinkPresentation.MovieMetadata);
      sub_21404A8B8(0, &qword_27C912B50, off_2781752D0);
      v88 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v106 + 8))
      {
        v107 = sub_2146D9588();
      }

      else
      {
        v107 = 0;
      }

      v205 = v531;
      v206 = v499;
      [v88 setStoreFrontIdentifier_];

      if (*(v106 + 24))
      {
        v207 = sub_2146D9588();
      }

      else
      {
        v207 = 0;
      }

      [v88 setStoreIdentifier_];

      if (*(v106 + 40))
      {
        v208 = sub_2146D9588();
      }

      else
      {
        v208 = 0;
      }

      [v88 setName_];

      if (*(v106 + 56))
      {
        v209 = sub_2146D9588();
      }

      else
      {
        v209 = 0;
      }

      [v88 setGenre_];

      v210 = *(v106 + 144);
      v589[4] = *(v106 + 128);
      v589[5] = v210;
      v589[6] = *(v106 + 160);
      *(&v589[6] + 9) = *(v106 + 169);
      v211 = *(v106 + 80);
      v589[0] = *(v106 + 64);
      v589[1] = v211;
      v212 = *(v106 + 112);
      v589[2] = *(v106 + 96);
      v589[3] = v212;
      if (sub_2144009B4(v589) == 1)
      {
        v213 = 0;
      }

      else
      {
        v586 = v589[4];
        v587 = v589[5];
        v588[0] = v589[6];
        *(v588 + 9) = *(&v589[6] + 9);
        v583 = v589[0];
        v584 = v589[1];
        v585[0] = v589[2];
        v585[1] = v589[3];
        v213 = sub_2143F7CD4();
      }

      [v88 setArtwork_];

      sub_213FB2E54(v106 + *(v205 + 36), v206, &qword_27C904878, &unk_2146EDB68);
      v214 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      if ((*(*(v214 - 8) + 48))(v206, 1, v214) == 1)
      {
        sub_213FB2DF4(v206, &qword_27C904878, &unk_2146EDB68);
        v215 = 0;
      }

      else
      {
        v215 = sub_2143FFD20();
        sub_214400B04(v206, type metadata accessor for LinkPresentation.ArtworkMetadata);
      }

      [v88 setArtworkMetadata_];

      v216 = type metadata accessor for LinkPresentation.MovieMetadata;
      goto LABEL_547;
    case 0xFu:
      v106 = v542;
      sub_214400A9C(v87, v542, type metadata accessor for LinkPresentation.MovieBundleMetadata);
      sub_21404A8B8(0, &qword_27C912B58, off_2781752C8);
      v88 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v106 + 8))
      {
        v128 = sub_2146D9588();
      }

      else
      {
        v128 = 0;
      }

      [v88 setStoreFrontIdentifier_];

      if (*(v106 + 24))
      {
        v290 = sub_2146D9588();
      }

      else
      {
        v290 = 0;
      }

      [v88 setStoreIdentifier_];

      if (*(v106 + 40))
      {
        v291 = sub_2146D9588();
      }

      else
      {
        v291 = 0;
      }

      [v88 setName_];

      if (*(v106 + 56))
      {
        v292 = sub_2146D9588();
      }

      else
      {
        v292 = 0;
      }

      [v88 setGenre_];

      v293 = *(v106 + 144);
      v589[4] = *(v106 + 128);
      v589[5] = v293;
      v589[6] = *(v106 + 160);
      *(&v589[6] + 9) = *(v106 + 169);
      v294 = *(v106 + 80);
      v589[0] = *(v106 + 64);
      v589[1] = v294;
      v295 = *(v106 + 112);
      v589[2] = *(v106 + 96);
      v589[3] = v295;
      if (sub_2144009B4(v589) == 1)
      {
        v296 = 0;
      }

      else
      {
        v586 = v589[4];
        v587 = v589[5];
        v588[0] = v589[6];
        *(v588 + 9) = *(&v589[6] + 9);
        v583 = v589[0];
        v584 = v589[1];
        v585[0] = v589[2];
        v585[1] = v589[3];
        v296 = sub_2143F7CD4();
      }

      [v88 setArtwork_];

      v297 = v501;
      sub_213FB2E54(v106 + *(v536 + 36), v501, &qword_27C904878, &unk_2146EDB68);
      v298 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      if ((*(*(v298 - 8) + 48))(v297, 1, v298) == 1)
      {
        sub_213FB2DF4(v297, &qword_27C904878, &unk_2146EDB68);
        v299 = 0;
      }

      else
      {
        v299 = sub_2143FFD20();
        sub_214400B04(v297, type metadata accessor for LinkPresentation.ArtworkMetadata);
      }

      [v88 setArtworkMetadata_];

      v216 = type metadata accessor for LinkPresentation.MovieBundleMetadata;
      goto LABEL_547;
    case 0x10u:
      memcpy(v589, v87, 0x138uLL);
      sub_21404A8B8(0, &qword_27C912B60, off_2781752A0);
      v104 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(&v589[0] + 1))
      {

        v105 = sub_2146D9588();
      }

      else
      {
        v105 = 0;
      }

      v177 = v554;
      [v104 setApplication_];

      if (*(&v589[1] + 1))
      {

        v178 = sub_2146D9588();
      }

      else
      {
        v178 = 0;
      }

      [v104 setKind_];

      if (*(&v589[2] + 1))
      {

        v179 = sub_2146D9588();
      }

      else
      {
        v179 = 0;
      }

      [v104 setTitle_];

      v586 = v589[7];
      v587 = v589[8];
      v588[0] = v589[9];
      *(v588 + 9) = *(&v589[9] + 9);
      v583 = v589[3];
      v584 = v589[4];
      v585[0] = v589[5];
      v585[1] = v589[6];
      if (sub_2144009B4(&v583) == 1)
      {
        v180 = 0;
      }

      else
      {
        v581 = v587;
        v582[0] = v588[0];
        *(v582 + 9) = *(v588 + 9);
        v576 = v583;
        v577 = v584;
        v578 = v585[0];
        v579 = v585[1];
        v580 = v586;
        v180 = sub_2143F7CD4();
      }

      v181 = v553;
      v182 = v559;
      v554 = v104;
      [v104 setIcon_];

      v183 = *&v589[19];

      sub_214326E60(v589);
      v185 = *(v183 + 2);
      if (v185)
      {
        v186 = *(v491 + 80);
        v551 = v183;
        v187 = &v183[(v186 + 32) & ~v186];
        v560 = *(v491 + 72);
        v553 = (v177 + 8);
        *&v184 = 138412290;
        v552 = v184;
        v188 = v556;
        do
        {
          sub_2144009D8(v187, v182, type metadata accessor for LinkPresentation.EncodedToken);
          v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904238, &unk_2146EAB90);
          (*(*(v189 - 8) + 56))(v188, 1, 1, v189);
          v190 = sub_2145A8688(v188);
          if (v181)
          {
            sub_213FB2DF4(v188, &qword_27C904230, &qword_2146EAB88);
            v192 = sub_2146D9BA8();
            if (qword_280B35360 != -1)
            {
              swift_once();
            }

            v193 = qword_280B35410;
            if (os_log_type_enabled(qword_280B35410, v192))
            {
              v194 = swift_slowAlloc();
              v195 = swift_slowAlloc();
              *v194 = v552;
              v196 = v181;
              v197 = _swift_stdlib_bridgeErrorToNSError();
              *(v194 + 4) = v197;
              *v195 = v197;
              _os_log_impl(&dword_213FAF000, v193, v192, "Error when attempting to recompose CloudSharingMetadata token: %@", v194, 0xCu);
              sub_213FB2DF4(v195, &qword_27C9041E0, &qword_214736EF0);
              v198 = v195;
              v182 = v559;
              MEMORY[0x216056AC0](v198, -1, -1);
              MEMORY[0x216056AC0](v194, -1, -1);
            }

            v181 = 0;
          }

          else
          {
            v199 = v190;
            v200 = v191;
            sub_213FB2DF4(v188, &qword_27C904230, &qword_2146EAB88);
            v201 = sub_2146D8A38();
            v202 = sub_2146D9588();
            v203 = v555;
            sub_21439ECA8(v555);
            v204 = sub_2146D8898();
            (*v553)(v203, v557);
            [v554 setTokenData:v201 handle:v202 url:v204];
            sub_213FB54FC(v199, v200);

            v188 = v556;
            v182 = v559;
          }

          sub_214400B04(v182, type metadata accessor for LinkPresentation.EncodedToken);
          v187 += v560;
          --v185;
        }

        while (v185);
      }

      return v554;
    case 0x11u:
      v139 = v87[9];
      v589[8] = v87[8];
      v589[9] = v139;
      *(&v589[9] + 9) = *(v87 + 153);
      v140 = v87[5];
      v589[4] = v87[4];
      v589[5] = v140;
      v141 = v87[6];
      v589[7] = v87[7];
      v589[6] = v141;
      v142 = v87[1];
      v589[0] = *v87;
      v589[1] = v142;
      v143 = v87[2];
      v589[3] = v87[3];
      v589[2] = v143;
      sub_21404A8B8(0, &qword_27C912B68, off_278175298);
      v88 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(&v589[0] + 1))
      {

        v144 = sub_2146D9588();
      }

      else
      {
        v144 = 0;
      }

      [v88 setTitle_];

      if (*(&v589[1] + 1))
      {

        v356 = sub_2146D9588();
      }

      else
      {
        v356 = 0;
      }

      [v88 setSubtitle_];

      if (*(&v589[2] + 1))
      {

        v357 = sub_2146D9588();
      }

      else
      {
        v357 = 0;
      }

      [v88 setAction_];

      v586 = v589[7];
      v587 = v589[8];
      v588[0] = v589[9];
      *(v588 + 9) = *(&v589[9] + 9);
      v583 = v589[3];
      v584 = v589[4];
      v585[0] = v589[5];
      v585[1] = v589[6];
      if (sub_2144009B4(&v583) == 1)
      {
        sub_214326E0C(v589);
        v100 = 0;
      }

      else
      {
        v573 = v586;
        v574 = v587;
        v575[0] = v588[0];
        *(v575 + 9) = *(v588 + 9);
        v569 = v583;
        v570 = v584;
        v571 = v585[0];
        v572 = v585[1];
        v578 = v589[5];
        v579 = v589[6];
        v576 = v589[3];
        v577 = v589[4];
        *(v582 + 9) = *(&v589[9] + 9);
        v582[0] = v589[9];
        v581 = v589[8];
        v580 = v589[7];
        sub_214400A40(&v576, &v561);
        v100 = sub_2143F7CD4();
        sub_214326E0C(v589);
        sub_213FB2DF4(&v589[3], &qword_27C904868, &qword_2146EDB58);
      }

      [v88 setImage_];
      goto LABEL_431;
    case 0x12u:
      memcpy(v589, v87, 0x118uLL);
      sub_21404A8B8(0, &qword_27C912B70, off_2781751D0);
      v88 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(&v589[0] + 1))
      {

        v155 = sub_2146D9588();
      }

      else
      {
        v155 = 0;
      }

      [v88 setGame_];

      v586 = v589[5];
      v587 = v589[6];
      v588[0] = v589[7];
      *(v588 + 9) = *(&v589[7] + 9);
      v583 = v589[1];
      v584 = v589[2];
      v585[0] = v589[3];
      v585[1] = v589[4];
      if (sub_2144009B4(&v583) == 1)
      {
        v404 = 0;
      }

      else
      {
        v581 = v587;
        v582[0] = v588[0];
        *(v582 + 9) = *(v588 + 9);
        v576 = v583;
        v577 = v584;
        v578 = v585[0];
        v579 = v585[1];
        v580 = v586;
        v404 = sub_2143F7CD4();
      }

      [v88 setImage_];

      v581 = v589[14];
      v582[0] = v589[15];
      *(v582 + 9) = *(&v589[15] + 9);
      v576 = v589[9];
      v577 = v589[10];
      v578 = v589[11];
      v579 = v589[12];
      v580 = v589[13];
      if (sub_2144009B4(&v576) == 1)
      {
        v405 = 0;
      }

      else
      {
        v573 = v580;
        v574 = v581;
        v575[0] = v582[0];
        *(v575 + 9) = *(v582 + 9);
        v569 = v576;
        v570 = v577;
        v571 = v578;
        v572 = v579;
        v405 = sub_2143F7CD4();
      }

      [v88 setIcon_];

      [v88 setNumberOfPlayers_];
      [v88 setMinimumNumberOfPlayers_];
      [v88 setMaximumNumberOfPlayers_];
      sub_214326DB8(v589);
      return v88;
    case 0x13u:
      memcpy(v589, v87, 0x42AuLL);
      sub_21404A8B8(0, &qword_27C912B78, off_278175220);
      v88 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(&v589[0] + 1))
      {

        v161 = sub_2146D9588();
      }

      else
      {
        v161 = 0;
      }

      [v88 setName_];

      if (*(&v589[1] + 1))
      {

        v457 = sub_2146D9588();
      }

      else
      {
        v457 = 0;
      }

      [v88 setAddress_];

      v586 = v589[6];
      v587 = v589[7];
      v588[0] = v589[8];
      v588[1] = v589[9];
      v583 = v589[2];
      v584 = v589[3];
      v585[0] = v589[4];
      v585[1] = v589[5];
      if (get_enum_tag_for_layout_string_9BlastDoor16LinkPresentationO13PostalAddressVSg_0(&v583) == 1)
      {
        v458 = 0;
      }

      else
      {
        v581 = v587;
        v582[0] = v588[0];
        v582[1] = v588[1];
        v576 = v583;
        v577 = v584;
        v578 = v585[0];
        v579 = v585[1];
        v580 = v586;
        v458 = sub_214400398();
      }

      [v88 setAddressComponents_];

      if (*(&v589[10] + 1))
      {

        v459 = sub_2146D9588();
      }

      else
      {
        v459 = 0;
      }

      [v88 setCategory_];

      v608 = v589[15];
      v609 = v589[16];
      v610[0] = v589[17];
      *(v610 + 9) = *(&v589[17] + 9);
      v604 = v589[11];
      v605 = v589[12];
      v606 = v589[13];
      v607 = v589[14];
      if (sub_2144009B4(&v604) == 1)
      {
        v460 = 0;
      }

      else
      {
        v581 = v609;
        v582[0] = v610[0];
        *(v582 + 9) = *(v610 + 9);
        v576 = v604;
        v577 = v605;
        v578 = v606;
        v579 = v607;
        v580 = v608;
        v460 = sub_2143F7CD4();
      }

      [v88 setCategoryIcon_];

      if (*(&v589[19] + 1))
      {

        v461 = sub_2146D9588();
      }

      else
      {
        v461 = 0;
      }

      [v88 setSearchQuery_];

      if (*(&v589[20] + 1))
      {

        v462 = sub_2146D9588();
      }

      else
      {
        v462 = 0;
      }

      [v88 setDirectionsType_];

      if (BYTE8(v589[21]))
      {
        v463 = 0;
      }

      else
      {
        v464 = *&v589[21];
        sub_21404A8B8(0, &qword_280B2E360, 0x277CCABB0);
        v463 = sub_214400754(v464);
      }

      [v88 setTransportType_];

      if (*(&v589[22] + 1))
      {

        v465 = sub_2146D9588();
      }

      else
      {
        v465 = 0;
      }

      [v88 setDirectionsSourceAddress_];

      v581 = v589[28];
      v582[0] = v589[29];
      v582[1] = v589[30];
      v576 = v589[23];
      v577 = v589[24];
      v578 = v589[25];
      v579 = v589[26];
      v580 = v589[27];
      if (get_enum_tag_for_layout_string_9BlastDoor16LinkPresentationO13PostalAddressVSg_0(&v576) == 1)
      {
        v466 = 0;
      }

      else
      {
        v573 = v580;
        v574 = v581;
        v575[0] = v582[0];
        v575[1] = v582[1];
        v569 = v576;
        v570 = v577;
        v571 = v578;
        v572 = v579;
        v466 = sub_214400398();
      }

      [v88 setDirectionsSourceAddressComponents_];

      if (*(&v589[31] + 1))
      {

        v467 = sub_2146D9588();
      }

      else
      {
        v467 = 0;
      }

      [v88 setDirectionsSourceLocationName_];

      if (*(&v589[32] + 1))
      {

        v468 = sub_2146D9588();
      }

      else
      {
        v468 = 0;
      }

      [v88 setDirectionsDestinationAddress_];

      v573 = v589[37];
      v574 = v589[38];
      v575[0] = v589[39];
      v575[1] = v589[40];
      v569 = v589[33];
      v570 = v589[34];
      v571 = v589[35];
      v572 = v589[36];
      if (get_enum_tag_for_layout_string_9BlastDoor16LinkPresentationO13PostalAddressVSg_0(&v569) == 1)
      {
        v469 = 0;
      }

      else
      {
        v565 = v573;
        v566 = v574;
        v567[0] = v575[0];
        v567[1] = v575[1];
        v561 = v569;
        v562 = v570;
        v563 = v571;
        v564 = v572;
        v469 = sub_214400398();
      }

      [v88 setDirectionsDestinationAddressComponents_];

      if (*(&v589[41] + 1))
      {

        v470 = sub_2146D9588();
      }

      else
      {
        v470 = 0;
      }

      [v88 setDirectionsDestinationLocationName_];

      if (BYTE8(v589[42]))
      {
        v471 = 0;
      }

      else
      {
        v471 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      }

      [v88 setDistance_];

      v565 = v589[47];
      v566 = v589[48];
      v567[0] = v589[49];
      *(v567 + 9) = *(&v589[49] + 9);
      v561 = v589[43];
      v562 = v589[44];
      v563 = v589[45];
      v564 = v589[46];
      if (sub_2144009B4(&v561) == 1)
      {
        v472 = 0;
      }

      else
      {
        v601 = v565;
        v602 = v566;
        v603[0] = v567[0];
        *(v603 + 9) = *(v567 + 9);
        v597 = v561;
        v598 = v562;
        v599 = v563;
        v600 = v564;
        v472 = sub_2143F7CD4();
      }

      [v88 setImage_];

      v601 = v589[55];
      v602 = v589[56];
      v603[0] = v589[57];
      *(v603 + 9) = *(&v589[57] + 9);
      v597 = v589[51];
      v598 = v589[52];
      v599 = v589[53];
      v600 = v589[54];
      if (sub_2144009B4(&v597) == 1)
      {
        v473 = 0;
      }

      else
      {
        v594 = v601;
        v595 = v602;
        v596[0] = v603[0];
        *(v596 + 9) = *(v603 + 9);
        v590 = v597;
        v591 = v598;
        v592 = v599;
        v593 = v600;
        v473 = sub_2143F7CD4();
      }

      [v88 setDarkImage_];

      v594 = v589[63];
      v595 = v589[64];
      v596[0] = v589[65];
      *(v596 + 9) = *(&v589[65] + 9);
      v590 = v589[59];
      v591 = v589[60];
      v592 = v589[61];
      v593 = v589[62];
      if (sub_2144009B4(&v590) == 1)
      {
        v474 = 0;
      }

      else
      {
        v567[6] = v594;
        v567[7] = v595;
        v568[0] = v596[0];
        *(v568 + 9) = *(v596 + 9);
        v567[2] = v590;
        v567[3] = v591;
        v567[4] = v592;
        v567[5] = v593;
        v474 = sub_2143F7CD4();
      }

      [v88 setStoreFrontImage_];

      [v88 setIsPointOfInterest_];
      sub_214326D64(v589);
      return v88;
    case 0x14u:
      memcpy(v589, v87, 0x229uLL);
      sub_21404A8B8(0, &qword_27C912B80, off_278175210);
      v88 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(&v589[0] + 1))
      {

        v145 = sub_2146D9588();
      }

      else
      {
        v145 = 0;
      }

      [v88 setName_];

      [v88 setNumberOfItems_];
      v586 = *(&v589[5] + 8);
      v587 = *(&v589[6] + 8);
      v588[0] = *(&v589[7] + 8);
      *(v588 + 9) = *(&v589[8] + 1);
      v583 = *(&v589[1] + 8);
      v584 = *(&v589[2] + 8);
      v585[0] = *(&v589[3] + 8);
      v585[1] = *(&v589[4] + 8);
      if (sub_2144009B4(&v583) == 1)
      {
        v358 = 0;
      }

      else
      {
        v581 = v587;
        v582[0] = v588[0];
        *(v582 + 9) = *(v588 + 9);
        v576 = v583;
        v577 = v584;
        v578 = v585[0];
        v579 = v585[1];
        v580 = v586;
        v358 = sub_2143F7CD4();
      }

      [v88 setIcon_];

      v581 = *(&v589[14] + 8);
      v582[0] = *(&v589[15] + 8);
      *(v582 + 9) = *(&v589[16] + 1);
      v576 = *(&v589[9] + 8);
      v577 = *(&v589[10] + 8);
      v578 = *(&v589[11] + 8);
      v579 = *(&v589[12] + 8);
      v580 = *(&v589[13] + 8);
      if (sub_2144009B4(&v576) == 1)
      {
        v359 = 0;
      }

      else
      {
        v573 = v580;
        v574 = v581;
        v575[0] = v582[0];
        *(v575 + 9) = *(v582 + 9);
        v569 = v576;
        v570 = v577;
        v571 = v578;
        v572 = v579;
        v359 = sub_2143F7CD4();
      }

      [v88 setImage_];

      v573 = *(&v589[21] + 8);
      v574 = *(&v589[22] + 8);
      v575[0] = *(&v589[23] + 8);
      *(v575 + 9) = *(&v589[24] + 1);
      v569 = *(&v589[17] + 8);
      v570 = *(&v589[18] + 8);
      v571 = *(&v589[19] + 8);
      v572 = *(&v589[20] + 8);
      if (sub_2144009B4(&v569) == 1)
      {
        v360 = 0;
      }

      else
      {
        v565 = v573;
        v566 = v574;
        v567[0] = v575[0];
        *(v567 + 9) = *(v575 + 9);
        v561 = v569;
        v562 = v570;
        v563 = v571;
        v564 = v572;
        v360 = sub_2143F7CD4();
      }

      [v88 setDarkImage_];

      v361 = *(&v589[25] + 1);
      if (*(&v589[25] + 1))
      {

        sub_2143E34EC(v362);

        sub_21404A8B8(0, &qword_27C912C20, 0x277CBDB78);
        v361 = sub_2146D98E8();
      }

      [v88 setAddresses_];

      if (*(&v589[26] + 1))
      {

        v363 = sub_2146D9588();
      }

      else
      {
        v363 = 0;
      }

      [v88 setPublisherName_];

      v565 = v589[31];
      v566 = v589[32];
      v567[0] = v589[33];
      *(v567 + 9) = *(&v589[33] + 9);
      v561 = v589[27];
      v562 = v589[28];
      v563 = v589[29];
      v564 = v589[30];
      if (sub_2144009B4(&v561) == 1)
      {
        sub_214326D10(v589);
        v100 = 0;
      }

      else
      {
        v601 = v565;
        v602 = v566;
        v603[0] = v567[0];
        *(v603 + 9) = *(v567 + 9);
        v597 = v561;
        v598 = v562;
        v599 = v563;
        v600 = v564;
        v606 = v589[29];
        v607 = v589[30];
        v604 = v589[27];
        v605 = v589[28];
        *(v610 + 9) = *(&v589[33] + 9);
        v609 = v589[32];
        v610[0] = v589[33];
        v608 = v589[31];
        sub_214400A40(&v604, &v590);
        v100 = sub_2143F7CD4();
        sub_214326D10(v589);
        sub_213FB2DF4(&v589[27], &qword_27C904868, &qword_2146EDB58);
      }

      [v88 setPublisherIcon_];
      goto LABEL_431;
    case 0x15u:
      v147 = v87[7];
      v589[6] = v87[6];
      v589[7] = v147;
      v589[8] = v87[8];
      v148 = v87[3];
      v589[2] = v87[2];
      v589[3] = v148;
      v149 = v87[4];
      v589[5] = v87[5];
      v589[4] = v149;
      v150 = *v87;
      v589[1] = v87[1];
      v589[0] = v150;
      sub_21404A8B8(0, &qword_27C912B88, off_278175218);
      v88 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(&v589[0] + 1))
      {

        v151 = sub_2146D9588();
      }

      else
      {
        v151 = 0;
      }

      [v88 setName_];

      [v88 setNumberOfPublishedCollections_];
      v586 = v589[5];
      v587 = v589[6];
      v588[0] = v589[7];
      *(v588 + 9) = *(&v589[7] + 9);
      v583 = v589[1];
      v584 = v589[2];
      v585[0] = v589[3];
      v585[1] = v589[4];
      if (sub_2144009B4(&v583) == 1)
      {
        sub_214326CBC(v589);
        v100 = 0;
        goto LABEL_430;
      }

      v573 = v586;
      v574 = v587;
      v575[0] = v588[0];
      *(v575 + 9) = *(v588 + 9);
      v569 = v583;
      v570 = v584;
      v571 = v585[0];
      v572 = v585[1];
      v578 = v589[3];
      v579 = v589[4];
      v576 = v589[1];
      v577 = v589[2];
      *(v582 + 9) = *(&v589[7] + 9);
      v582[0] = v589[7];
      v581 = v589[6];
      v580 = v589[5];
      sub_214400A40(&v576, &v561);
      v100 = sub_2143F7CD4();
      sub_214326CBC(v589);
      v279 = &v589[1];
      goto LABEL_429;
    case 0x16u:
      v106 = v547;
      sub_214400A9C(v87, v547, type metadata accessor for LinkPresentation.FileMetadata);
      sub_21404A8B8(0, &qword_27C912B90, off_2781751C0);
      v88 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v106 + 8))
      {
        v160 = sub_2146D9588();
      }

      else
      {
        v160 = 0;
      }

      v443 = v544;
      v444 = v523;
      [v88 setName_];

      if (*(v106 + 24))
      {
        v445 = sub_2146D9588();
      }

      else
      {
        v445 = 0;
      }

      [v88 setType_];

      [v88 setSize_];
      v446 = *(v106 + 120);
      v589[4] = *(v106 + 104);
      v589[5] = v446;
      v589[6] = *(v106 + 136);
      *(&v589[6] + 9) = *(v106 + 145);
      v447 = *(v106 + 56);
      v589[0] = *(v106 + 40);
      v589[1] = v447;
      v448 = *(v106 + 88);
      v589[2] = *(v106 + 72);
      v589[3] = v448;
      if (sub_2144009B4(v589) == 1)
      {
        v449 = 0;
      }

      else
      {
        v586 = v589[4];
        v587 = v589[5];
        v588[0] = v589[6];
        *(v588 + 9) = *(&v589[6] + 9);
        v583 = v589[0];
        v584 = v589[1];
        v585[0] = v589[2];
        v585[1] = v589[3];
        v449 = sub_2143F7CD4();
      }

      [v88 setThumbnail_];

      v450 = *(v106 + 248);
      v586 = *(v106 + 232);
      v587 = v450;
      v588[0] = *(v106 + 264);
      *(v588 + 9) = *(v106 + 273);
      v451 = *(v106 + 184);
      v583 = *(v106 + 168);
      v584 = v451;
      v452 = *(v106 + 216);
      v585[0] = *(v106 + 200);
      v585[1] = v452;
      if (sub_2144009B4(&v583) == 1)
      {
        v453 = 0;
      }

      else
      {
        v581 = v587;
        v582[0] = v588[0];
        *(v582 + 9) = *(v588 + 9);
        v576 = v583;
        v577 = v584;
        v578 = v585[0];
        v579 = v585[1];
        v580 = v586;
        v453 = sub_2143F7CD4();
      }

      [v88 setIcon_];

      sub_213FB2E54(v106 + *(v443 + 36), v444, &qword_27C913090, &unk_2146E9DB0);
      v454 = sub_2146D8B08();
      v455 = *(v454 - 8);
      v456 = 0;
      if ((*(v455 + 48))(v444, 1, v454) != 1)
      {
        v456 = sub_2146D8AD8();
        (*(v455 + 8))(v444, v454);
      }

      [v88 setCreationDate_];

      v216 = type metadata accessor for LinkPresentation.FileMetadata;
LABEL_547:
      v354 = v216;
      v355 = v106;
      goto LABEL_621;
    case 0x17u:
      sub_214400B04(v87, type metadata accessor for LinkPresentation.SpecializationMetadata);
      v159 = _BlastDoorLPAppleNewsMetadata;
      return [objc_allocWithZone(v159) init];
    case 0x18u:
      v120 = v87[9];
      v589[8] = v87[8];
      v589[9] = v120;
      v589[10] = v87[10];
      *(&v589[10] + 9) = *(v87 + 169);
      v121 = v87[5];
      v589[4] = v87[4];
      v589[5] = v121;
      v122 = v87[7];
      v589[6] = v87[6];
      v589[7] = v122;
      v123 = v87[1];
      v589[0] = *v87;
      v589[1] = v123;
      v124 = v87[3];
      v589[2] = v87[2];
      v589[3] = v124;
      sub_21404A8B8(0, &qword_27C912BA0, off_278175260);
      v88 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(&v589[0] + 1))
      {

        v125 = sub_2146D9588();
      }

      else
      {
        v125 = 0;
      }

      [v88 setCombinedTitle_];

      if (*(&v589[1] + 1))
      {

        v276 = sub_2146D9588();
      }

      else
      {
        v276 = 0;
      }

      [v88 setTitle_];

      if (*(&v589[2] + 1))
      {

        v277 = sub_2146D9588();
      }

      else
      {
        v277 = 0;
      }

      [v88 setSubtitle_];

      if (*(&v589[3] + 1))
      {

        v278 = sub_2146D9588();
      }

      else
      {
        v278 = 0;
      }

      [v88 setFootnote_];

      v586 = v589[8];
      v587 = v589[9];
      v588[0] = v589[10];
      *(v588 + 9) = *(&v589[10] + 9);
      v583 = v589[4];
      v584 = v589[5];
      v585[0] = v589[6];
      v585[1] = v589[7];
      if (sub_2144009B4(&v583) == 1)
      {
        sub_214326C68(v589);
        v100 = 0;
      }

      else
      {
        v573 = v586;
        v574 = v587;
        v575[0] = v588[0];
        *(v575 + 9) = *(v588 + 9);
        v569 = v583;
        v570 = v584;
        v571 = v585[0];
        v572 = v585[1];
        v578 = v589[6];
        v579 = v589[7];
        v576 = v589[4];
        v577 = v589[5];
        *(v582 + 9) = *(&v589[10] + 9);
        v582[0] = v589[10];
        v581 = v589[9];
        v580 = v589[8];
        sub_214400A40(&v576, &v561);
        v100 = sub_2143F7CD4();
        sub_214326C68(v589);
        v279 = &v589[4];
LABEL_429:
        sub_213FB2DF4(v279, &qword_27C904868, &qword_2146EDB58);
      }

LABEL_430:
      [v88 setIcon_];
      goto LABEL_431;
    case 0x19u:
      v115 = v87[7];
      v589[6] = v87[6];
      v589[7] = v115;
      v589[8] = v87[8];
      *(&v589[8] + 9) = *(v87 + 137);
      v116 = v87[3];
      v589[2] = v87[2];
      v589[3] = v116;
      v117 = v87[5];
      v589[4] = v87[4];
      v589[5] = v117;
      v118 = v87[1];
      v589[0] = *v87;
      v589[1] = v118;
      sub_21404A8B8(0, &qword_27C912BA8, off_278175180);
      v88 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(&v589[0] + 1))
      {

        v119 = sub_2146D9588();
      }

      else
      {
        v119 = 0;
      }

      [v88 setTitle_];

      if (*(&v589[1] + 1))
      {

        v275 = sub_2146D9588();
      }

      else
      {
        v275 = 0;
      }

      [v88 setSubtitle_];

      v586 = v589[6];
      v587 = v589[7];
      v588[0] = v589[8];
      *(v588 + 9) = *(&v589[8] + 9);
      v583 = v589[2];
      v584 = v589[3];
      v585[0] = v589[4];
      v585[1] = v589[5];
      if (sub_2144009B4(&v583) == 1)
      {
        sub_214326C14(v589);
        v100 = 0;
      }

      else
      {
        v573 = v586;
        v574 = v587;
        v575[0] = v588[0];
        *(v575 + 9) = *(v588 + 9);
        v569 = v583;
        v570 = v584;
        v571 = v585[0];
        v572 = v585[1];
        v578 = v589[4];
        v579 = v589[5];
        v576 = v589[2];
        v577 = v589[3];
        *(v582 + 9) = *(&v589[8] + 9);
        v582[0] = v589[8];
        v581 = v589[7];
        v580 = v589[6];
        sub_214400A40(&v576, &v561);
        v100 = sub_2143F7CD4();
        sub_214326C14(v589);
        sub_213FB2DF4(&v589[2], &qword_27C904868, &qword_2146EDB58);
      }

      [v88 setArtwork_];
      goto LABEL_431;
    case 0x1Au:
      v113 = v550;
      sub_214400A9C(v87, v550, type metadata accessor for LinkPresentation.PhotosMomentMetadata);
      sub_21404A8B8(0, &qword_27C912BB0, off_278175168);
      v88 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v113 + 8))
      {
        v165 = sub_2146D9588();
      }

      else
      {
        v165 = 0;
      }

      v475 = v546;
      v476 = v516;
      [v88 setTitle_];

      [v88 setPhotoCount_];
      [v88 setVideoCount_];
      [v88 setOtherItemCount_];
      v477 = *(v113 + 120);
      v589[4] = *(v113 + 104);
      v589[5] = v477;
      v589[6] = *(v113 + 136);
      *(&v589[6] + 9) = *(v113 + 145);
      v478 = *(v113 + 56);
      v589[0] = *(v113 + 40);
      v589[1] = v478;
      v479 = *(v113 + 88);
      v589[2] = *(v113 + 72);
      v589[3] = v479;
      if (sub_2144009B4(v589) == 1)
      {
        v480 = 0;
      }

      else
      {
        v586 = v589[4];
        v587 = v589[5];
        v588[0] = v589[6];
        *(v588 + 9) = *(&v589[6] + 9);
        v583 = v589[0];
        v584 = v589[1];
        v585[0] = v589[2];
        v585[1] = v589[3];
        v480 = sub_2143F7CD4();
      }

      [v88 setKeyPhoto_];

      sub_213FB2E54(v113 + v475[9], v476, &qword_27C913090, &unk_2146E9DB0);
      v481 = sub_2146D8B08();
      v482 = *(v481 - 8);
      v483 = *(v482 + 48);
      v484 = 0;
      if (v483(v476, 1, v481) != 1)
      {
        v484 = sub_2146D8AD8();
        (*(v482 + 8))(v476, v481);
      }

      [v88 setExpirationDate_];

      v485 = v521;
      sub_213FB2E54(v113 + v475[10], v521, &qword_27C913090, &unk_2146E9DB0);
      if (v483(v485, 1, v481) == 1)
      {
        v486 = 0;
      }

      else
      {
        v486 = sub_2146D8AD8();
        (*(v482 + 8))(v485, v481);
      }

      v487 = v552;
      [v88 setEarliestAssetDate_];

      sub_213FB2E54(v113 + v475[11], v487, &qword_27C913090, &unk_2146E9DB0);
      if (v483(v487, 1, v481) == 1)
      {
        v488 = 0;
      }

      else
      {
        v488 = sub_2146D8AD8();
        (*(v482 + 8))(v487, v481);
      }

      [v88 setLatestAssetDate_];

      v274 = type metadata accessor for LinkPresentation.PhotosMomentMetadata;
      goto LABEL_620;
    case 0x1Bu:
      v98 = *v87;
      v99 = *(v87 + 1);
      sub_21404A8B8(0, &qword_27C912BB8, off_278175178);
      v88 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (!v99)
      {
        v98 = 0;
        v99 = 0xE000000000000000;
      }

      sub_21404A8B8(0, &qword_27C912C28, 0x277CCA898);
      v100 = sub_21440079C(v98, v99);
      [v88 setStatus_];
      goto LABEL_431;
    case 0x1Cu:
      v162 = *(v87 + 1);
      v163 = *(v87 + 3);
      sub_21404A8B8(0, &qword_27C912BC0, off_278175170);
      v88 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (v162)
      {

        v164 = sub_2146D9588();
      }

      else
      {
        v164 = 0;
      }

      [v88 setMessage_];

      if (v163)
      {

        v176 = sub_2146D9588();
        swift_bridgeObjectRelease_n();
      }

      else
      {

        v176 = 0;
      }

      [v88 setOriginatorDisplayName_];
      goto LABEL_606;
    case 0x1Du:
      v136 = *(v87 + 1);
      v137 = &qword_27C912BC8;
      v138 = off_2781751B0;
      goto LABEL_75;
    case 0x1Eu:
      v113 = v543;
      sub_214400A9C(v87, v543, type metadata accessor for LinkPresentation.WalletPassMetadata);
      sub_21404A8B8(0, &qword_27C912BD0, off_278175290);
      v88 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v113 + 8))
      {
        v158 = sub_2146D9588();
      }

      else
      {
        v158 = 0;
      }

      v434 = v540;
      v435 = v512;
      [v88 setName_];

      sub_213FB2E54(v113 + *(v434 + 24), v435, &qword_27C913090, &unk_2146E9DB0);
      v436 = sub_2146D8B08();
      v437 = *(v436 - 8);
      v438 = *(v437 + 48);
      v439 = 0;
      if (v438(v435, 1, v436) != 1)
      {
        v439 = sub_2146D8AD8();
        (*(v437 + 8))(v435, v436);
      }

      [v88 setExpirationDate_];

      v440 = v113 + *(v434 + 20);
      v441 = v515;
      sub_213FB2E54(v440, v515, &qword_27C913090, &unk_2146E9DB0);
      if (v438(v441, 1, v436) == 1)
      {
        v442 = 0;
      }

      else
      {
        v442 = sub_2146D8AD8();
        (*(v437 + 8))(v441, v436);
      }

      [v88 setEventDate_];

      v274 = type metadata accessor for LinkPresentation.WalletPassMetadata;
LABEL_620:
      v354 = v274;
      v355 = v113;
      goto LABEL_621;
    case 0x1Fu:
      v136 = *(v87 + 1);
      v137 = &qword_27C912BD8;
      v138 = off_278175150;
LABEL_75:
      sub_21404A8B8(0, v137, v138);
      v88 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (v136)
      {
        v109 = sub_2146D9588();
      }

      else
      {
        v109 = 0;
      }

      [v88 setSubtitle_];
      goto LABEL_149;
    case 0x20u:
      sub_214400B04(v87, type metadata accessor for LinkPresentation.SpecializationMetadata);
      v159 = _BlastDoorLPSummarizedLinkMetadata;
      return [objc_allocWithZone(v159) init];
    case 0x21u:
      v108 = *(v87 + 1);
      sub_21404A8B8(0, &qword_27C912BE8, off_2781751B8);
      v88 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (v108)
      {
        v109 = sub_2146D9588();
      }

      else
      {
        v109 = 0;
      }

      [v88 setTitle_];
LABEL_149:

      return v88;
    case 0x22u:
      v101 = *(v87 + 1);
      v102 = *(v87 + 3);
      sub_21404A8B8(0, &qword_27C912BF0, off_278175230);
      v88 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (v101)
      {

        v103 = sub_2146D9588();
      }

      else
      {
        v103 = 0;
      }

      [v88 setGroupName_];

      if (v102)
      {

        v176 = sub_2146D9588();
        swift_bridgeObjectRelease_n();
      }

      else
      {

        v176 = 0;
      }

      [v88 setUrlParameters_];
LABEL_606:

      return v88;
    case 0x23u:
      memcpy(v589, v87, 0x149uLL);
      sub_21404A8B8(0, &qword_27C912C00, off_2781751C8);
      v88 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v90 = 0;
      v91 = *(&v589[1] + 1);
      if (!*(&v589[1] + 1))
      {
        goto LABEL_7;
      }

      if (*(&v589[1] + 1) == 1)
      {
        goto LABEL_623;
      }

      v92 = *&v589[1];
      sub_213FDC9D0(*&v589[1], *(&v589[1] + 1));
      v90 = sub_2146D9588();
      sub_213FDC6D0(v92, v91);
LABEL_7:
      [v88 setTitle_];

      v93 = *&v589[4];
      if (*&v589[4])
      {
        if (*&v589[4] == 1)
        {
LABEL_623:
          result = sub_2146DA018();
          __break(1u);
          return result;
        }

        v166 = *(&v589[3] + 1);
        sub_213FDC9D0(*(&v589[3] + 1), *&v589[4]);
        v94 = sub_2146D9588();
        sub_213FDC6D0(v166, v93);
      }

      else
      {
        v94 = 0;
      }

      [v88 setSubtitle_];

      v586 = v589[9];
      v587 = v589[10];
      v588[0] = v589[11];
      *(v588 + 9) = *(&v589[11] + 9);
      v583 = v589[5];
      v584 = v589[6];
      v585[0] = v589[7];
      v585[1] = v589[8];
      if (sub_2144009B4(&v583) == 1)
      {
        v167 = 0;
      }

      else
      {
        v581 = v587;
        v582[0] = v588[0];
        *(v582 + 9) = *(v588 + 9);
        v576 = v583;
        v577 = v584;
        v578 = v585[0];
        v579 = v585[1];
        v580 = v586;
        v167 = sub_2143F7CD4();
      }

      [v88 setArtwork_];

      v581 = v589[18];
      v582[0] = v589[19];
      *(v582 + 9) = *(&v589[19] + 9);
      v576 = v589[13];
      v577 = v589[14];
      v578 = v589[15];
      v579 = v589[16];
      v580 = v589[17];
      if (sub_2144009B4(&v576) == 1)
      {
        v100 = 0;
      }

      else
      {
        v573 = v580;
        v574 = v581;
        v575[0] = v582[0];
        *(v575 + 9) = *(v582 + 9);
        v569 = v576;
        v570 = v577;
        v571 = v578;
        v572 = v579;
        v100 = sub_2143F7CD4();
      }

      [v88 setIcon_];
      sub_214317B18(v589);
LABEL_431:

      return v88;
    case 0x24u:
      v95 = swift_projectBox();
      v96 = v549;
      sub_2144009D8(v95, v549, type metadata accessor for LinkPresentation.SharedObjectMetadata);
      sub_21404A8B8(0, &qword_27C912BF8, off_278175248);
      v88 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v96 + 8))
      {
        v97 = sub_2146D9588();
      }

      else
      {
        v97 = 0;
      }

      [v88 setTitle_];

      if (*(v96 + 24))
      {
        v168 = sub_2146D9588();
      }

      else
      {
        v168 = 0;
      }

      [v88 setSubtitle_];

      if (*(v96 + 40))
      {
        v169 = sub_2146D9588();
      }

      else
      {
        v169 = 0;
      }

      [v88 setInformation_];

      v170 = *(v96 + 128);
      v589[4] = *(v96 + 112);
      v589[5] = v170;
      v589[6] = *(v96 + 144);
      *(&v589[6] + 9) = *(v96 + 153);
      v171 = *(v96 + 64);
      v589[0] = *(v96 + 48);
      v589[1] = v171;
      v172 = *(v96 + 96);
      v589[2] = *(v96 + 80);
      v589[3] = v172;
      if (sub_2144009B4(v589) == 1)
      {
        v173 = 0;
      }

      else
      {
        v586 = v589[4];
        v587 = v589[5];
        v588[0] = v589[6];
        *(v588 + 9) = *(&v589[6] + 9);
        v583 = v589[0];
        v584 = v589[1];
        v585[0] = v589[2];
        v585[1] = v589[3];
        v173 = sub_2143F7CD4();
      }

      [v88 setIcon_];

      [v88 setIsCollaboration_];
      v174 = v548;
      sub_213FB2E54(v96 + *(v545 + 36), v548, &qword_27C904870, &qword_2146EDB60);
      if ((*(v492 + 48))(v174, 1, v85) == 1)
      {
        sub_213FB2DF4(v174, &qword_27C904870, &qword_2146EDB60);
        v175 = 0;
      }

      else
      {
        v175 = sub_2143F8AE0();
        sub_214400B04(v174, type metadata accessor for LinkPresentation.SpecializationMetadata);
      }

      [v88 setSpecialization_];

      sub_214400B04(v96, type metadata accessor for LinkPresentation.SharedObjectMetadata);

      return v88;
    default:
      sub_214400A9C(v87, v84, type metadata accessor for LinkPresentation.SongMetadata);
      sub_21404A8B8(0, &qword_27C912AE0, off_278175308);
      v88 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (*(v84 + 1))
      {
        v89 = sub_2146D9588();
      }

      else
      {
        v89 = 0;
      }

      v322 = v557;
      v323 = v511;
      [v88 setStoreFrontIdentifier_];

      if (*(v84 + 3))
      {
        v324 = sub_2146D9588();
      }

      else
      {
        v324 = 0;
      }

      [v88 setStoreIdentifier_];

      if (*(v84 + 5))
      {
        v326 = sub_2146D9588();
      }

      else
      {
        v326 = 0;
      }

      [v88 setName_];

      if (*(v84 + 7))
      {
        v328 = sub_2146D9588();
      }

      else
      {
        v328 = 0;
      }

      [v88 setArtist_];

      if (*(v84 + 9))
      {
        v330 = sub_2146D9588();
      }

      else
      {
        v330 = 0;
      }

      [v88 setAlbum_];

      if (*(v84 + 11))
      {
        v339 = sub_2146D9588();
      }

      else
      {
        v339 = 0;
      }

      [v88 setLyrics_];

      v340 = *(v84 + 11);
      v589[4] = *(v84 + 10);
      v589[5] = v340;
      v589[6] = *(v84 + 12);
      *(&v589[6] + 9) = *(v84 + 201);
      v341 = *(v84 + 7);
      v589[0] = *(v84 + 6);
      v589[1] = v341;
      v342 = *(v84 + 9);
      v589[2] = *(v84 + 8);
      v589[3] = v342;
      if (sub_2144009B4(v589) == 1)
      {
        v343 = 0;
      }

      else
      {
        v586 = v589[4];
        v587 = v589[5];
        v588[0] = v589[6];
        *(v588 + 9) = *(&v589[6] + 9);
        v583 = v589[0];
        v584 = v589[1];
        v585[0] = v589[2];
        v585[1] = v589[3];
        v343 = sub_2143F7CD4();
      }

      [v88 setArtwork_];

      v344 = v494;
      sub_213FB2E54(&v84[v82[11]], v494, &qword_27C904878, &unk_2146EDB68);
      v345 = type metadata accessor for LinkPresentation.ArtworkMetadata(0);
      if ((*(*(v345 - 8) + 48))(v344, 1, v345) == 1)
      {
        sub_213FB2DF4(v344, &qword_27C904878, &unk_2146EDB68);
        v346 = 0;
      }

      else
      {
        v346 = sub_2143FFD20();
        sub_214400B04(v344, type metadata accessor for LinkPresentation.ArtworkMetadata);
      }

      [v88 setArtworkMetadata_];

      sub_213FB2E54(&v84[v82[12]], v323, &unk_27C9131A0, &unk_2146E9D10);
      v347 = v554;
      if ((*(v554 + 6))(v323, 1, v322) == 1)
      {
        v348 = 0;
      }

      else
      {
        v348 = sub_2146D8898();
        v347[1](v323, v322);
      }

      [v88 setPreviewURL_];

      if (*&v84[v82[13]])
      {
        v349 = sub_2146D98E8();
      }

      else
      {
        v349 = 0;
      }

      [v88 setOffers_];

      v350 = &v84[v82[14]];
      v351 = *(v350 + 1);
      if (v351 == 1)
      {
        v352 = 0;
      }

      else
      {
        *&v583 = *v350;
        *(&v583 + 1) = v351;
        v353 = *(v350 + 2);
        v584 = *(v350 + 1);
        v585[0] = v353;
        *(v585 + 9) = *(v350 + 41);
        v352 = sub_214400088();
      }

      [v88 setLyricExcerpt_];

      v245 = type metadata accessor for LinkPresentation.SongMetadata;
LABEL_376:
      v354 = v245;
      v355 = v84;
LABEL_621:
      sub_214400B04(v355, v354);
      return v88;
  }
}