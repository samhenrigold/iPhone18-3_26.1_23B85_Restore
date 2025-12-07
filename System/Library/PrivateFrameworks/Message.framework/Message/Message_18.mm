BOOL sub_1B0765644()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_passAndActionID);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 != 2;
}

uint64_t sub_1B07656DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v166 = a1;
  v169 = a2;
  v167 = a3;
  v168 = a4;
  v125 = sub_1B039BBE8;
  v126 = sub_1B07AAFA4;
  v127 = sub_1B0394C30;
  v128 = sub_1B0394C24;
  v129 = sub_1B039BA2C;
  v130 = sub_1B039BA88;
  v131 = sub_1B039BB94;
  v132 = sub_1B0394C24;
  v133 = sub_1B039BBA0;
  v134 = sub_1B039BC08;
  v135 = sub_1B07AB020;
  v136 = sub_1B039BC08;
  v137 = sub_1B0398F5C;
  v138 = sub_1B0398F5C;
  v139 = sub_1B0399178;
  v140 = sub_1B0398F5C;
  v141 = sub_1B0398F5C;
  v142 = sub_1B039BA94;
  v143 = sub_1B0398F5C;
  v144 = sub_1B0398F5C;
  v145 = sub_1B0399178;
  v146 = sub_1B0398F5C;
  v147 = sub_1B0398F5C;
  v148 = sub_1B03991EC;
  v149 = sub_1B0398F5C;
  v150 = sub_1B0398F5C;
  v151 = sub_1B03991EC;
  v183 = 0;
  v182 = 0;
  v181 = 0;
  v180 = 0;
  v179 = 0;
  v152 = 0;
  v160 = 0;
  v153 = _s6LoggerVMa(0);
  v154 = (*(*(v153 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v155 = v73 - v154;
  v156 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v157 = v73 - v156;
  v158 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v159 = v73 - v158;
  v161 = sub_1B0E439A8();
  v162 = *(v161 - 8);
  v163 = v161 - 8;
  v164 = (*(v162 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v160);
  v165 = v73 - v164;
  v171 = type metadata accessor for InProgressMessageDownload.Section(v8);
  v170 = (*(*(v171 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v169);
  v172 = (v73 - v170);
  v183 = v9;
  v182 = v10;
  v181 = v11;
  v180 = v12;
  sub_1B0760600(v10, (v73 - v170));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B07AC2FC(v172);
      goto LABEL_7;
    }

    if (EnumCaseMultiPayload != 2)
    {
      v121 = v172[2];
      v122 = v172[4];
      v123 = v172[6];

LABEL_7:
      v124 = 1;
      return v124 & 1;
    }

    v120 = *v172;
    v179 = v120;
    if ((sub_1B0759C14() & 1) == 0)
    {
      (*(v162 + 16))(v165, v167, v161);
      sub_1B0394784(v167, v159);
      sub_1B0394784(v159, v157);
      sub_1B03F4FD0(v159, v155);
      v13 = (v157 + *(v153 + 20));
      v84 = *v13;
      v85 = *(v13 + 1);
      sub_1B039480C(v157);
      v83 = 24;
      v97 = 7;
      v14 = swift_allocObject();
      v15 = v85;
      v88 = v14;
      *(v14 + 16) = v84;
      *(v14 + 20) = v15;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v16 = swift_allocObject();
      v17 = v85;
      v86 = v16;
      *(v16 + 16) = v84;
      *(v16 + 20) = v17;

      v96 = 32;
      v18 = swift_allocObject();
      v19 = v86;
      v92 = v18;
      *(v18 + 16) = v125;
      *(v18 + 24) = v19;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v155);

      v20 = swift_allocObject();
      v21 = v168;
      v98 = v20;
      *(v20 + 16) = v126;
      *(v20 + 24) = v21;

      v118 = sub_1B0E43988();
      v119 = sub_1B0E45908();
      v94 = 17;
      v100 = swift_allocObject();
      v90 = 16;
      *(v100 + 16) = 16;
      v101 = swift_allocObject();
      v95 = 4;
      *(v101 + 16) = 4;
      v22 = swift_allocObject();
      v87 = v22;
      *(v22 + 16) = v127;
      *(v22 + 24) = 0;
      v23 = swift_allocObject();
      v24 = v87;
      v102 = v23;
      *(v23 + 16) = v128;
      *(v23 + 24) = v24;
      v103 = swift_allocObject();
      *(v103 + 16) = 0;
      v104 = swift_allocObject();
      *(v104 + 16) = 1;
      v25 = swift_allocObject();
      v26 = v88;
      v89 = v25;
      *(v25 + 16) = v129;
      *(v25 + 24) = v26;
      v27 = swift_allocObject();
      v28 = v89;
      v105 = v27;
      *(v27 + 16) = v130;
      *(v27 + 24) = v28;
      v106 = swift_allocObject();
      *(v106 + 16) = v90;
      v107 = swift_allocObject();
      *(v107 + 16) = v95;
      v29 = swift_allocObject();
      v91 = v29;
      *(v29 + 16) = v131;
      *(v29 + 24) = 0;
      v30 = swift_allocObject();
      v31 = v91;
      v108 = v30;
      *(v30 + 16) = v132;
      *(v30 + 24) = v31;
      v109 = swift_allocObject();
      *(v109 + 16) = 0;
      v110 = swift_allocObject();
      *(v110 + 16) = v95;
      v32 = swift_allocObject();
      v33 = v92;
      v93 = v32;
      *(v32 + 16) = v133;
      *(v32 + 24) = v33;
      v34 = swift_allocObject();
      v35 = v93;
      v111 = v34;
      *(v34 + 16) = v134;
      *(v34 + 24) = v35;
      v112 = swift_allocObject();
      *(v112 + 16) = 0;
      v113 = swift_allocObject();
      *(v113 + 16) = v95;
      v36 = swift_allocObject();
      v37 = v98;
      v99 = v36;
      *(v36 + 16) = v135;
      *(v36 + 24) = v37;
      v38 = swift_allocObject();
      v39 = v99;
      v115 = v38;
      *(v38 + 16) = v136;
      *(v38 + 24) = v39;
      v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v114 = sub_1B0E46A48();
      v116 = v40;

      v41 = v100;
      v42 = v116;
      *v116 = v137;
      v42[1] = v41;

      v43 = v101;
      v44 = v116;
      v116[2] = v138;
      v44[3] = v43;

      v45 = v102;
      v46 = v116;
      v116[4] = v139;
      v46[5] = v45;

      v47 = v103;
      v48 = v116;
      v116[6] = v140;
      v48[7] = v47;

      v49 = v104;
      v50 = v116;
      v116[8] = v141;
      v50[9] = v49;

      v51 = v105;
      v52 = v116;
      v116[10] = v142;
      v52[11] = v51;

      v53 = v106;
      v54 = v116;
      v116[12] = v143;
      v54[13] = v53;

      v55 = v107;
      v56 = v116;
      v116[14] = v144;
      v56[15] = v55;

      v57 = v108;
      v58 = v116;
      v116[16] = v145;
      v58[17] = v57;

      v59 = v109;
      v60 = v116;
      v116[18] = v146;
      v60[19] = v59;

      v61 = v110;
      v62 = v116;
      v116[20] = v147;
      v62[21] = v61;

      v63 = v111;
      v64 = v116;
      v116[22] = v148;
      v64[23] = v63;

      v65 = v112;
      v66 = v116;
      v116[24] = v149;
      v66[25] = v65;

      v67 = v113;
      v68 = v116;
      v116[26] = v150;
      v68[27] = v67;

      v69 = v115;
      v70 = v116;
      v116[28] = v151;
      v70[29] = v69;
      sub_1B0394964();

      if (os_log_type_enabled(v118, v119))
      {
        v71 = v152;
        v76 = sub_1B0E45D78();
        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v75 = 0;
        v77 = sub_1B03949A8(0, v74, v74);
        v78 = sub_1B03949A8(v75, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v79 = &v178;
        v178 = v76;
        v80 = &v177;
        v177 = v77;
        v81 = &v176;
        v176 = v78;
        sub_1B0394A48(0, &v178);
        sub_1B0394A48(5, v79);
        v174 = v137;
        v175 = v100;
        sub_1B03949FC(&v174, v79, v80, v81);
        v82 = v71;
        if (v71)
        {

          __break(1u);
        }

        else
        {
          v174 = v138;
          v175 = v101;
          sub_1B03949FC(&v174, &v178, &v177, &v176);
          v73[13] = 0;
          v174 = v139;
          v175 = v102;
          sub_1B03949FC(&v174, &v178, &v177, &v176);
          v73[12] = 0;
          v174 = v140;
          v175 = v103;
          sub_1B03949FC(&v174, &v178, &v177, &v176);
          v73[11] = 0;
          v174 = v141;
          v175 = v104;
          sub_1B03949FC(&v174, &v178, &v177, &v176);
          v73[10] = 0;
          v174 = v142;
          v175 = v105;
          sub_1B03949FC(&v174, &v178, &v177, &v176);
          v73[9] = 0;
          v174 = v143;
          v175 = v106;
          sub_1B03949FC(&v174, &v178, &v177, &v176);
          v73[8] = 0;
          v174 = v144;
          v175 = v107;
          sub_1B03949FC(&v174, &v178, &v177, &v176);
          v73[7] = 0;
          v174 = v145;
          v175 = v108;
          sub_1B03949FC(&v174, &v178, &v177, &v176);
          v73[6] = 0;
          v174 = v146;
          v175 = v109;
          sub_1B03949FC(&v174, &v178, &v177, &v176);
          v73[5] = 0;
          v174 = v147;
          v175 = v110;
          sub_1B03949FC(&v174, &v178, &v177, &v176);
          v73[4] = 0;
          v174 = v148;
          v175 = v111;
          sub_1B03949FC(&v174, &v178, &v177, &v176);
          v73[3] = 0;
          v174 = v149;
          v175 = v112;
          sub_1B03949FC(&v174, &v178, &v177, &v176);
          v73[2] = 0;
          v174 = v150;
          v175 = v113;
          sub_1B03949FC(&v174, &v178, &v177, &v176);
          v73[1] = 0;
          v174 = v151;
          v175 = v115;
          sub_1B03949FC(&v174, &v178, &v177, &v176);
          _os_log_impl(&dword_1B0389000, v118, v119, "[%.*hhx-%.*X] Failing in-progress attachment download for UID %u.", v76, 0x1Du);
          v73[0] = 0;
          sub_1B03998A8(v77, 0, v74);
          sub_1B03998A8(v78, v73[0], MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v118);
      (*(v162 + 8))(v165, v161);
    }

    v124 = 1;
  }

  else
  {
    sub_1B07AE888(v172);
    v124 = 0;
  }

  return v124 & 1;
}

uint64_t sub_1B0766EFC(uint64_t a1)
{
  v19 = a1;
  v34 = 0;
  v33 = 0;
  v17 = 0;
  v20 = type metadata accessor for MessageSectionData.Segment(0);
  v16 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v5 - v16;
  v33 = v1;
  v18 = sub_1B075FC90(*(v1 + 12), 0);

  v34 = v18;
  v2 = type metadata accessor for MessageSectionData(v17);
  sub_1B07AB12C(v19 + *(v2 + 28), v21);
  v3 = (v21 + *(v20 + 24));
  v22 = v36;
  v23 = 177;
  memcpy(v36, v3, 0xB1uLL);
  sub_1B07AB440(v36, v32);
  sub_1B07AB694(v21);
  v24 = __dst;
  memcpy(__dst, v22, v23);
  if (sub_1B07AB810(v24) == 1)
  {
    v15 = v31;
    sub_1B075FEBC(v31);
    memcpy(v35, v15, sizeof(v35));
  }

  else
  {
    v14 = __dst;
    sub_1B075DC38(__dst, v25);
    sub_1B075E728(v14);
    memcpy(v35, v14, sizeof(v35));
  }

  v13 = v30;
  memcpy(v30, v35, 0xB1uLL);
  if (sub_1B075FACC(v30) != 1)
  {
    v6 = v34;
    v12 = v30;
    sub_1B07169CC(v30, &v27);
    v8 = v28;
    v9 = 177;
    memcpy(v28, v12, 0xB1uLL);
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v7 = (v6 + 24);
    v11 = &v26;
    swift_beginAccess();
    v10 = v29;
    memcpy(v29, v7, v9);
    memcpy(v7, v8, v9);
    sub_1B075E728(v10);
    swift_endAccess();
    sub_1B075E648(v12);
  }

  sub_1B07AB910(v19);

  return v18;
}

BOOL sub_1B0767178(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
      return a1 == a4;
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  return a1 == a4 && a2 == a5;
}

uint64_t *sub_1B076735C(unsigned __int8 *a1)
{
  sub_1B075DC38(a1, v4);
  sub_1B075DEC8(a1, (v1 + 8));
  return sub_1B075E728(a1);
}

uint64_t sub_1B07673D0(uint64_t a1)
{
  v8 = a1;
  v6 = 0;
  v5 = (*(*(_s31PreviouslyDownloadedMessageDataVMa(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v5;
  sub_1B075E87C(v2, &v5 - v5);
  v3 = type metadata accessor for InProgressMessageDownload.Completed(v6);
  sub_1B075EA98(v7, (v1 + *(v3 + 24)));
  return sub_1B075ECD0(v8);
}

uint64_t sub_1B07674B0(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26F0, &unk_1B0E9B4F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  sub_1B075EE10(v2, &v5 - v6);
  v3 = type metadata accessor for InProgressMessageDownload.Completed(0);
  sub_1B075F010(v7, (v1 + *(v3 + 28)));
  return sub_1B075F220(v8);
}

uint64_t sub_1B0767584(uint64_t a1)
{
  v2 = type metadata accessor for InProgressMessageDownload.Completed(0);
  result = a1;
  *(v1 + *(v2 + 32)) = a1;
  return result;
}

uint64_t sub_1B07675BC()
{
  v2 = *(v0 + *(type metadata accessor for InProgressMessageDownload.Completed(0) + 36));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B07675F4(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v1 + *(type metadata accessor for InProgressMessageDownload.Completed(0) + 36)) = a1;
}

uint64_t sub_1B0767640()
{
  v2 = *(v0 + *(type metadata accessor for InProgressMessageDownload.Completed(0) + 40));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B0767678(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v1 + *(type metadata accessor for InProgressMessageDownload.Completed(0) + 40)) = a1;
}

uint64_t sub_1B07676FC(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  sub_1B075F4A8(v2, &v5 - v6);
  v3 = type metadata accessor for InProgressMessageDownload.Completed(0);
  sub_1B075F6A0(v7, (v1 + *(v3 + 44)));
  return sub_1B075B1E0(v8);
}

uint64_t sub_1B07677D8(char a1, int a2)
{
  LOBYTE(v3) = a1 & 1;
  HIDWORD(v3) = a2;
  return v3;
}

void *sub_1B07677F4@<X0>(int a1@<W0>, const void *a2@<X1>, char *a3@<X2>, const void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, const void *a8@<X7>, char *a9@<X8>)
{
  *a9 = a1;
  memcpy(a9 + 8, a2, 0xB1uLL);
  v15 = type metadata accessor for InProgressMessageDownload.Completed(0);
  sub_1B07B48B8(a3, &a9[v15[6]]);
  sub_1B07B4A00(a4, &a9[v15[7]]);
  *&a9[v15[8]] = a5;
  *&a9[v15[9]] = a6;
  *&a9[v15[10]] = a7;
  return sub_1B07B4B30(a8, &a9[v15[11]]);
}

uint64_t sub_1B07678B8(uint64_t a1)
{
  v578 = a1;
  v577 = 0;
  v459 = sub_1B074E050;
  v460 = sub_1B0394C30;
  v461 = sub_1B0394C24;
  v462 = sub_1B074DFFC;
  v463 = sub_1B039BA88;
  v464 = sub_1B039BB94;
  v465 = sub_1B0394C24;
  v466 = sub_1B039BBA0;
  v467 = sub_1B039BC08;
  v468 = 0x786F626C69616DLL;
  v469 = sub_1B06BA324;
  v470 = sub_1B074E0E4;
  v471 = sub_1B039BCF8;
  v472 = sub_1B0398F5C;
  v473 = sub_1B0398F5C;
  v474 = sub_1B0399178;
  v475 = sub_1B0398F5C;
  v476 = sub_1B0398F5C;
  v477 = sub_1B039BA94;
  v478 = sub_1B0398F5C;
  v479 = sub_1B0398F5C;
  v480 = sub_1B0399178;
  v481 = sub_1B0398F5C;
  v482 = sub_1B0398F5C;
  v483 = sub_1B03991EC;
  v484 = sub_1B0398F5C;
  v485 = sub_1B0398F5C;
  v486 = sub_1B03993BC;
  v487 = sub_1B0398F5C;
  v488 = sub_1B0398F5C;
  v489 = sub_1B039BCEC;
  v490 = sub_1B074E050;
  v491 = sub_1B0394C24;
  v492 = sub_1B074DFFC;
  v493 = sub_1B039BA88;
  v494 = sub_1B0394C24;
  v495 = sub_1B039BBA0;
  v496 = sub_1B039BC08;
  v497 = sub_1B06BA324;
  v498 = sub_1B074E0E4;
  v499 = sub_1B039BCF8;
  v500 = sub_1B0398F5C;
  v501 = sub_1B0398F5C;
  v502 = sub_1B0399178;
  v503 = sub_1B0398F5C;
  v504 = sub_1B0398F5C;
  v505 = sub_1B039BA94;
  v506 = sub_1B0398F5C;
  v507 = sub_1B0398F5C;
  v508 = sub_1B0399178;
  v509 = sub_1B0398F5C;
  v510 = sub_1B0398F5C;
  v511 = sub_1B03991EC;
  v512 = sub_1B0398F5C;
  v513 = sub_1B0398F5C;
  v514 = sub_1B03993BC;
  v515 = sub_1B0398F5C;
  v516 = sub_1B0398F5C;
  v517 = sub_1B039BCEC;
  v518 = sub_1B074E050;
  v519 = sub_1B0394C24;
  v520 = sub_1B074DFFC;
  v521 = sub_1B039BA88;
  v522 = sub_1B0394C24;
  v523 = sub_1B039BBA0;
  v524 = sub_1B039BC08;
  v525 = sub_1B06BA324;
  v526 = sub_1B074E0E4;
  v527 = sub_1B039BCF8;
  v528 = sub_1B0398F5C;
  v529 = sub_1B0398F5C;
  v530 = sub_1B0399178;
  v531 = sub_1B0398F5C;
  v532 = sub_1B0398F5C;
  v533 = sub_1B039BA94;
  v534 = sub_1B0398F5C;
  v535 = sub_1B0398F5C;
  v536 = sub_1B0399178;
  v537 = sub_1B0398F5C;
  v538 = sub_1B0398F5C;
  v539 = sub_1B03991EC;
  v540 = sub_1B0398F5C;
  v541 = sub_1B0398F5C;
  v542 = sub_1B03993BC;
  v543 = sub_1B0398F5C;
  v544 = sub_1B0398F5C;
  v545 = sub_1B039BCEC;
  v546 = 0xF000000000000000;
  v610 = 0;
  v609 = 0;
  v608 = 0;
  v607 = 0;
  v547 = 0;
  v598 = 0;
  v574 = 0;
  v548 = _s6LoggerVMa_1(0);
  v549 = (*(*(v548 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v550 = v251 - v549;
  v551 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v552 = v251 - v551;
  v553 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v554 = v251 - v553;
  v555 = sub_1B0E439A8();
  v556 = *(v555 - 8);
  v557 = v555 - 8;
  v558 = (*(v556 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v574);
  v559 = v251 - v558;
  v560 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v561 = v251 - v560;
  v562 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v563 = v251 - v562;
  v564 = sub_1B0E443C8();
  v565 = *(v564 - 8);
  v566 = v564 - 8;
  v567 = (*(v565 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v574);
  v568 = v251 - v567;
  v569 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection(v10);
  v570 = (*(*(v569 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v569);
  v571 = v251 - v570;
  v610 = v251 - v570;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20A0, &qword_1B0E9B528);
  v572 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v573 = (v251 - v572);
  v575 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20A8, &qword_1B0E9B530) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v574);
  v576 = (v251 - v575);
  v585 = type metadata accessor for InProgressMessageDownload.Section(v12);
  v579 = (*(*(v585 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v578);
  v580 = (v251 - v579);
  v581 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v582 = (v251 - v581);
  v609 = v251 - v581;
  v608 = v15;
  v607 = v1;
  v583 = (v1 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections);
  v584 = v606;
  swift_beginAccess();
  v586 = *v583;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  sub_1B07167A8();
  v587 = sub_1B0E44628();

  if (v587 != 1)
  {
LABEL_22:
    (*(v556 + 16))(v559, v578, v555);
    sub_1B074B69C(v578, v554);
    sub_1B074B69C(v554, v552);
    sub_1B074E41C(v554, v550);
    v175 = (v552 + *(v548 + 20));
    v262 = *v175;
    v263 = *(v175 + 1);
    v264 = *(v175 + 1);
    v265 = *(v175 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v552);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v261 = 36;
    v278 = 7;
    v176 = swift_allocObject();
    v177 = v263;
    v178 = v264;
    v179 = v265;
    v267 = v176;
    *(v176 + 16) = v262;
    *(v176 + 20) = v177;
    *(v176 + 24) = v178;
    *(v176 + 32) = v179;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v180 = swift_allocObject();
    v181 = v263;
    v182 = v264;
    v183 = v265;
    v260 = v180;
    *(v180 + 16) = v262;
    *(v180 + 20) = v181;
    *(v180 + 24) = v182;
    *(v180 + 32) = v183;

    v277 = 32;
    v184 = swift_allocObject();
    v185 = v260;
    v272 = v184;
    *(v184 + 16) = v459;
    *(v184 + 24) = v185;
    sub_1B0394868();
    sub_1B0394868();

    v186 = swift_allocObject();
    v187 = v263;
    v188 = v264;
    v189 = v265;
    v190 = v186;
    v191 = v550;
    v279 = v190;
    *(v190 + 16) = v262;
    *(v190 + 20) = v187;
    *(v190 + 24) = v188;
    *(v190 + 32) = v189;
    sub_1B074B764(v191);
    v302 = sub_1B0E43988();
    v303 = sub_1B0E45908();
    v275 = 17;
    v281 = swift_allocObject();
    v269 = 16;
    *(v281 + 16) = 16;
    v282 = swift_allocObject();
    v271 = 4;
    *(v282 + 16) = 4;
    v192 = swift_allocObject();
    v266 = v192;
    *(v192 + 16) = v460;
    *(v192 + 24) = 0;
    v193 = swift_allocObject();
    v194 = v266;
    v283 = v193;
    *(v193 + 16) = v461;
    *(v193 + 24) = v194;
    v284 = swift_allocObject();
    *(v284 + 16) = 0;
    v285 = swift_allocObject();
    *(v285 + 16) = 1;
    v195 = swift_allocObject();
    v196 = v267;
    v268 = v195;
    *(v195 + 16) = v462;
    *(v195 + 24) = v196;
    v197 = swift_allocObject();
    v198 = v268;
    v286 = v197;
    *(v197 + 16) = v463;
    *(v197 + 24) = v198;
    v287 = swift_allocObject();
    *(v287 + 16) = v269;
    v288 = swift_allocObject();
    *(v288 + 16) = v271;
    v199 = swift_allocObject();
    v270 = v199;
    *(v199 + 16) = v464;
    *(v199 + 24) = 0;
    v200 = swift_allocObject();
    v201 = v270;
    v289 = v200;
    *(v200 + 16) = v465;
    *(v200 + 24) = v201;
    v290 = swift_allocObject();
    *(v290 + 16) = 0;
    v291 = swift_allocObject();
    *(v291 + 16) = v271;
    v202 = swift_allocObject();
    v203 = v272;
    v273 = v202;
    *(v202 + 16) = v466;
    *(v202 + 24) = v203;
    v204 = swift_allocObject();
    v205 = v273;
    v292 = v204;
    *(v204 + 16) = v467;
    *(v204 + 24) = v205;
    v293 = swift_allocObject();
    *(v293 + 16) = 112;
    v294 = swift_allocObject();
    v276 = 8;
    *(v294 + 16) = 8;
    v274 = swift_allocObject();
    *(v274 + 16) = v468;
    v206 = swift_allocObject();
    v207 = v274;
    v295 = v206;
    *(v206 + 16) = v469;
    *(v206 + 24) = v207;
    v296 = swift_allocObject();
    *(v296 + 16) = 37;
    v297 = swift_allocObject();
    *(v297 + 16) = v276;
    v208 = swift_allocObject();
    v209 = v279;
    v280 = v208;
    *(v208 + 16) = v470;
    *(v208 + 24) = v209;
    v210 = swift_allocObject();
    v211 = v280;
    v299 = v210;
    *(v210 + 16) = v471;
    *(v210 + 24) = v211;
    v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v298 = sub_1B0E46A48();
    v300 = v212;

    v213 = v281;
    v214 = v300;
    *v300 = v472;
    v214[1] = v213;

    v215 = v282;
    v216 = v300;
    v300[2] = v473;
    v216[3] = v215;

    v217 = v283;
    v218 = v300;
    v300[4] = v474;
    v218[5] = v217;

    v219 = v284;
    v220 = v300;
    v300[6] = v475;
    v220[7] = v219;

    v221 = v285;
    v222 = v300;
    v300[8] = v476;
    v222[9] = v221;

    v223 = v286;
    v224 = v300;
    v300[10] = v477;
    v224[11] = v223;

    v225 = v287;
    v226 = v300;
    v300[12] = v478;
    v226[13] = v225;

    v227 = v288;
    v228 = v300;
    v300[14] = v479;
    v228[15] = v227;

    v229 = v289;
    v230 = v300;
    v300[16] = v480;
    v230[17] = v229;

    v231 = v290;
    v232 = v300;
    v300[18] = v481;
    v232[19] = v231;

    v233 = v291;
    v234 = v300;
    v300[20] = v482;
    v234[21] = v233;

    v235 = v292;
    v236 = v300;
    v300[22] = v483;
    v236[23] = v235;

    v237 = v293;
    v238 = v300;
    v300[24] = v484;
    v238[25] = v237;

    v239 = v294;
    v240 = v300;
    v300[26] = v485;
    v240[27] = v239;

    v241 = v295;
    v242 = v300;
    v300[28] = v486;
    v242[29] = v241;

    v243 = v296;
    v244 = v300;
    v300[30] = v487;
    v244[31] = v243;

    v245 = v297;
    v246 = v300;
    v300[32] = v488;
    v246[33] = v245;

    v247 = v299;
    v248 = v300;
    v300[34] = v489;
    v248[35] = v247;
    sub_1B0394964();

    if (os_log_type_enabled(v302, v303))
    {
      v249 = v547;
      v253 = sub_1B0E45D78();
      v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v254 = sub_1B03949A8(0, v252, v252);
      v255 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v256 = &v605;
      v605 = v253;
      v257 = &v604;
      v604 = v254;
      v258 = &v603;
      v603 = v255;
      sub_1B0394A48(3, &v605);
      sub_1B0394A48(6, v256);
      v601 = v472;
      v602 = v281;
      sub_1B03949FC(&v601, v256, v257, v258);
      v259 = v249;
      if (v249)
      {

        __break(1u);
      }

      else
      {
        v601 = v473;
        v602 = v282;
        sub_1B03949FC(&v601, &v605, &v604, &v603);
        v251[16] = 0;
        v601 = v474;
        v602 = v283;
        sub_1B03949FC(&v601, &v605, &v604, &v603);
        v251[15] = 0;
        v601 = v475;
        v602 = v284;
        sub_1B03949FC(&v601, &v605, &v604, &v603);
        v251[14] = 0;
        v601 = v476;
        v602 = v285;
        sub_1B03949FC(&v601, &v605, &v604, &v603);
        v251[13] = 0;
        v601 = v477;
        v602 = v286;
        sub_1B03949FC(&v601, &v605, &v604, &v603);
        v251[12] = 0;
        v601 = v478;
        v602 = v287;
        sub_1B03949FC(&v601, &v605, &v604, &v603);
        v251[11] = 0;
        v601 = v479;
        v602 = v288;
        sub_1B03949FC(&v601, &v605, &v604, &v603);
        v251[10] = 0;
        v601 = v480;
        v602 = v289;
        sub_1B03949FC(&v601, &v605, &v604, &v603);
        v251[9] = 0;
        v601 = v481;
        v602 = v290;
        sub_1B03949FC(&v601, &v605, &v604, &v603);
        v251[8] = 0;
        v601 = v482;
        v602 = v291;
        sub_1B03949FC(&v601, &v605, &v604, &v603);
        v251[7] = 0;
        v601 = v483;
        v602 = v292;
        sub_1B03949FC(&v601, &v605, &v604, &v603);
        v251[6] = 0;
        v601 = v484;
        v602 = v293;
        sub_1B03949FC(&v601, &v605, &v604, &v603);
        v251[5] = 0;
        v601 = v485;
        v602 = v294;
        sub_1B03949FC(&v601, &v605, &v604, &v603);
        v251[4] = 0;
        v601 = v486;
        v602 = v295;
        sub_1B03949FC(&v601, &v605, &v604, &v603);
        v251[3] = 0;
        v601 = v487;
        v602 = v296;
        sub_1B03949FC(&v601, &v605, &v604, &v603);
        v251[2] = 0;
        v601 = v488;
        v602 = v297;
        sub_1B03949FC(&v601, &v605, &v604, &v603);
        v251[1] = 0;
        v601 = v489;
        v602 = v299;
        sub_1B03949FC(&v601, &v605, &v604, &v603);
        _os_log_impl(&dword_1B0389000, v302, v303, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Expected a single section for whole message download", v253, 0x2Bu);
        sub_1B03998A8(v254, 0, v252);
        sub_1B03998A8(v255, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v302);
    (*(v556 + 8))(v559, v555);
    v444 = v574;
    v445 = v546;
    return v444;
  }

  v453 = (v458 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections);
  v454 = v600;
  swift_beginAccess();
  v456 = *v453;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v599 = v456;
  v455 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2090, &qword_1B0E9B520);
  sub_1B07ABB40();
  sub_1B0E45728();

  v457 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20B0, &qword_1B0E9B538);
  if ((*(*(v457 - 8) + 48))(v573, 1) == 1)
  {
    sub_1B07ABBC8(v573);
    v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2078, &qword_1B0E9B508);
    (*(*(v174 - 8) + 56))(v576, 1);
  }

  else
  {
    v450 = *v573;
    v451 = v573 + *(v457 + 48);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2078, &qword_1B0E9B508);
    v17 = v451;
    v452 = v16;
    v18 = v576 + *(v16 + 48);
    *v576 = v450;
    sub_1B076041C(v17, v18);
    (*(*(v452 - 8) + 56))(v576, 0, 1);
  }

  v449 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2078, &qword_1B0E9B508);
  if ((*(*(v449 - 8) + 48))(v576, 1) == 1)
  {
    sub_1B07ABF00(v576);
    goto LABEL_22;
  }

  v446 = *v576;
  v19 = v576 + *(v449 + 48);
  v598 = v446;
  sub_1B076041C(v19, v582);
  sub_1B0E46A48();
  SectionSpecifier.Part.init(arrayLiteral:)();
  v447 = v20;
  v448 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v446, v20);

  if (v448)
  {
    sub_1B0760600(v582, v580);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = v568;
      sub_1B07AC238(v580, v571);
      (*(v565 + 16))(v21, v571 + *(v569 + 28), v564);
      v440 = sub_1B0E44338();
      v441 = MFDataFromDispatchData(v440);
      MEMORY[0x1E69E5920](v440);
      (*(v565 + 8))(v568, v564);
      v442 = sub_1B0E42F38();
      v443 = v22;
      MEMORY[0x1E69E5920](v441);
      sub_1B07AC2FC(v571);
      sub_1B0760B84(v582);

      v444 = v442;
      v445 = v443;
    }

    else
    {
      v23 = v563;
      sub_1B0760B84(v580);
      (*(v556 + 16))(v23, v578, v555);
      sub_1B074B69C(v578, v554);
      sub_1B074B69C(v554, v552);
      sub_1B074E41C(v554, v550);
      v24 = (v552 + *(v548 + 20));
      v398 = *v24;
      v399 = *(v24 + 1);
      v400 = *(v24 + 1);
      v401 = *(v24 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v552);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v397 = 36;
      v414 = 7;
      v25 = swift_allocObject();
      v26 = v399;
      v27 = v400;
      v28 = v401;
      v403 = v25;
      *(v25 + 16) = v398;
      *(v25 + 20) = v26;
      *(v25 + 24) = v27;
      *(v25 + 32) = v28;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v29 = swift_allocObject();
      v30 = v399;
      v31 = v400;
      v32 = v401;
      v396 = v29;
      *(v29 + 16) = v398;
      *(v29 + 20) = v30;
      *(v29 + 24) = v31;
      *(v29 + 32) = v32;

      v413 = 32;
      v33 = swift_allocObject();
      v34 = v396;
      v408 = v33;
      *(v33 + 16) = v518;
      *(v33 + 24) = v34;
      sub_1B0394868();
      sub_1B0394868();

      v35 = swift_allocObject();
      v36 = v399;
      v37 = v400;
      v38 = v401;
      v39 = v35;
      v40 = v550;
      v415 = v39;
      *(v39 + 16) = v398;
      *(v39 + 20) = v36;
      *(v39 + 24) = v37;
      *(v39 + 32) = v38;
      sub_1B074B764(v40);
      v438 = sub_1B0E43988();
      v439 = sub_1B0E45908();
      v411 = 17;
      v417 = swift_allocObject();
      v405 = 16;
      *(v417 + 16) = 16;
      v418 = swift_allocObject();
      v407 = 4;
      *(v418 + 16) = 4;
      v41 = swift_allocObject();
      v402 = v41;
      *(v41 + 16) = v460;
      *(v41 + 24) = 0;
      v42 = swift_allocObject();
      v43 = v402;
      v419 = v42;
      *(v42 + 16) = v519;
      *(v42 + 24) = v43;
      v420 = swift_allocObject();
      *(v420 + 16) = 0;
      v421 = swift_allocObject();
      *(v421 + 16) = 1;
      v44 = swift_allocObject();
      v45 = v403;
      v404 = v44;
      *(v44 + 16) = v520;
      *(v44 + 24) = v45;
      v46 = swift_allocObject();
      v47 = v404;
      v422 = v46;
      *(v46 + 16) = v521;
      *(v46 + 24) = v47;
      v423 = swift_allocObject();
      *(v423 + 16) = v405;
      v424 = swift_allocObject();
      *(v424 + 16) = v407;
      v48 = swift_allocObject();
      v406 = v48;
      *(v48 + 16) = v464;
      *(v48 + 24) = 0;
      v49 = swift_allocObject();
      v50 = v406;
      v425 = v49;
      *(v49 + 16) = v522;
      *(v49 + 24) = v50;
      v426 = swift_allocObject();
      *(v426 + 16) = 0;
      v427 = swift_allocObject();
      *(v427 + 16) = v407;
      v51 = swift_allocObject();
      v52 = v408;
      v409 = v51;
      *(v51 + 16) = v523;
      *(v51 + 24) = v52;
      v53 = swift_allocObject();
      v54 = v409;
      v428 = v53;
      *(v53 + 16) = v524;
      *(v53 + 24) = v54;
      v429 = swift_allocObject();
      *(v429 + 16) = 112;
      v430 = swift_allocObject();
      v412 = 8;
      *(v430 + 16) = 8;
      v410 = swift_allocObject();
      *(v410 + 16) = v468;
      v55 = swift_allocObject();
      v56 = v410;
      v431 = v55;
      *(v55 + 16) = v525;
      *(v55 + 24) = v56;
      v432 = swift_allocObject();
      *(v432 + 16) = 37;
      v433 = swift_allocObject();
      *(v433 + 16) = v412;
      v57 = swift_allocObject();
      v58 = v415;
      v416 = v57;
      *(v57 + 16) = v526;
      *(v57 + 24) = v58;
      v59 = swift_allocObject();
      v60 = v416;
      v435 = v59;
      *(v59 + 16) = v527;
      *(v59 + 24) = v60;
      v437 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v434 = sub_1B0E46A48();
      v436 = v61;

      v62 = v417;
      v63 = v436;
      *v436 = v528;
      v63[1] = v62;

      v64 = v418;
      v65 = v436;
      v436[2] = v529;
      v65[3] = v64;

      v66 = v419;
      v67 = v436;
      v436[4] = v530;
      v67[5] = v66;

      v68 = v420;
      v69 = v436;
      v436[6] = v531;
      v69[7] = v68;

      v70 = v421;
      v71 = v436;
      v436[8] = v532;
      v71[9] = v70;

      v72 = v422;
      v73 = v436;
      v436[10] = v533;
      v73[11] = v72;

      v74 = v423;
      v75 = v436;
      v436[12] = v534;
      v75[13] = v74;

      v76 = v424;
      v77 = v436;
      v436[14] = v535;
      v77[15] = v76;

      v78 = v425;
      v79 = v436;
      v436[16] = v536;
      v79[17] = v78;

      v80 = v426;
      v81 = v436;
      v436[18] = v537;
      v81[19] = v80;

      v82 = v427;
      v83 = v436;
      v436[20] = v538;
      v83[21] = v82;

      v84 = v428;
      v85 = v436;
      v436[22] = v539;
      v85[23] = v84;

      v86 = v429;
      v87 = v436;
      v436[24] = v540;
      v87[25] = v86;

      v88 = v430;
      v89 = v436;
      v436[26] = v541;
      v89[27] = v88;

      v90 = v431;
      v91 = v436;
      v436[28] = v542;
      v91[29] = v90;

      v92 = v432;
      v93 = v436;
      v436[30] = v543;
      v93[31] = v92;

      v94 = v433;
      v95 = v436;
      v436[32] = v544;
      v95[33] = v94;

      v96 = v435;
      v97 = v436;
      v436[34] = v545;
      v97[35] = v96;
      sub_1B0394964();

      if (os_log_type_enabled(v438, v439))
      {
        v98 = v547;
        v389 = sub_1B0E45D78();
        v388 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v390 = sub_1B03949A8(0, v388, v388);
        v391 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v392 = &v592;
        v592 = v389;
        v393 = &v591;
        v591 = v390;
        v394 = &v590;
        v590 = v391;
        sub_1B0394A48(3, &v592);
        sub_1B0394A48(6, v392);
        v588 = v528;
        v589 = v417;
        sub_1B03949FC(&v588, v392, v393, v394);
        v395 = v98;
        if (v98)
        {

          __break(1u);
        }

        else
        {
          v588 = v529;
          v589 = v418;
          sub_1B03949FC(&v588, &v592, &v591, &v590);
          v387 = 0;
          v588 = v530;
          v589 = v419;
          sub_1B03949FC(&v588, &v592, &v591, &v590);
          v386 = 0;
          v588 = v531;
          v589 = v420;
          sub_1B03949FC(&v588, &v592, &v591, &v590);
          v385 = 0;
          v588 = v532;
          v589 = v421;
          sub_1B03949FC(&v588, &v592, &v591, &v590);
          v384 = 0;
          v588 = v533;
          v589 = v422;
          sub_1B03949FC(&v588, &v592, &v591, &v590);
          v383 = 0;
          v588 = v534;
          v589 = v423;
          sub_1B03949FC(&v588, &v592, &v591, &v590);
          v382 = 0;
          v588 = v535;
          v589 = v424;
          sub_1B03949FC(&v588, &v592, &v591, &v590);
          v381 = 0;
          v588 = v536;
          v589 = v425;
          sub_1B03949FC(&v588, &v592, &v591, &v590);
          v380 = 0;
          v588 = v537;
          v589 = v426;
          sub_1B03949FC(&v588, &v592, &v591, &v590);
          v379 = 0;
          v588 = v538;
          v589 = v427;
          sub_1B03949FC(&v588, &v592, &v591, &v590);
          v378 = 0;
          v588 = v539;
          v589 = v428;
          sub_1B03949FC(&v588, &v592, &v591, &v590);
          v377 = 0;
          v588 = v540;
          v589 = v429;
          sub_1B03949FC(&v588, &v592, &v591, &v590);
          v376 = 0;
          v588 = v541;
          v589 = v430;
          sub_1B03949FC(&v588, &v592, &v591, &v590);
          v375 = 0;
          v588 = v542;
          v589 = v431;
          sub_1B03949FC(&v588, &v592, &v591, &v590);
          v374 = 0;
          v588 = v543;
          v589 = v432;
          sub_1B03949FC(&v588, &v592, &v591, &v590);
          v373 = 0;
          v588 = v544;
          v589 = v433;
          sub_1B03949FC(&v588, &v592, &v591, &v590);
          v372 = 0;
          v588 = v545;
          v589 = v435;
          sub_1B03949FC(&v588, &v592, &v591, &v590);
          _os_log_impl(&dword_1B0389000, v438, v439, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Expected whole message download to be complete", v389, 0x2Bu);
          sub_1B03998A8(v390, 0, v388);
          sub_1B03998A8(v391, 1, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v438);
      (*(v556 + 8))(v563, v555);
      sub_1B0760B84(v582);

      v444 = v574;
      v445 = v546;
    }
  }

  else
  {
    (*(v556 + 16))(v561, v578, v555);
    sub_1B074B69C(v578, v554);
    sub_1B074B69C(v554, v552);
    sub_1B074E41C(v554, v550);
    v99 = (v552 + *(v548 + 20));
    v330 = *v99;
    v331 = *(v99 + 1);
    v332 = *(v99 + 1);
    v333 = *(v99 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v552);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v329 = 36;
    v346 = 7;
    v100 = swift_allocObject();
    v101 = v331;
    v102 = v332;
    v103 = v333;
    v335 = v100;
    *(v100 + 16) = v330;
    *(v100 + 20) = v101;
    *(v100 + 24) = v102;
    *(v100 + 32) = v103;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v104 = swift_allocObject();
    v105 = v331;
    v106 = v332;
    v107 = v333;
    v328 = v104;
    *(v104 + 16) = v330;
    *(v104 + 20) = v105;
    *(v104 + 24) = v106;
    *(v104 + 32) = v107;

    v345 = 32;
    v108 = swift_allocObject();
    v109 = v328;
    v340 = v108;
    *(v108 + 16) = v490;
    *(v108 + 24) = v109;
    sub_1B0394868();
    sub_1B0394868();

    v110 = swift_allocObject();
    v111 = v331;
    v112 = v332;
    v113 = v333;
    v114 = v110;
    v115 = v550;
    v347 = v114;
    *(v114 + 16) = v330;
    *(v114 + 20) = v111;
    *(v114 + 24) = v112;
    *(v114 + 32) = v113;
    sub_1B074B764(v115);
    v370 = sub_1B0E43988();
    v371 = sub_1B0E45908();
    v343 = 17;
    v349 = swift_allocObject();
    v337 = 16;
    *(v349 + 16) = 16;
    v350 = swift_allocObject();
    v339 = 4;
    *(v350 + 16) = 4;
    v116 = swift_allocObject();
    v334 = v116;
    *(v116 + 16) = v460;
    *(v116 + 24) = 0;
    v117 = swift_allocObject();
    v118 = v334;
    v351 = v117;
    *(v117 + 16) = v491;
    *(v117 + 24) = v118;
    v352 = swift_allocObject();
    *(v352 + 16) = 0;
    v353 = swift_allocObject();
    *(v353 + 16) = 1;
    v119 = swift_allocObject();
    v120 = v335;
    v336 = v119;
    *(v119 + 16) = v492;
    *(v119 + 24) = v120;
    v121 = swift_allocObject();
    v122 = v336;
    v354 = v121;
    *(v121 + 16) = v493;
    *(v121 + 24) = v122;
    v355 = swift_allocObject();
    *(v355 + 16) = v337;
    v356 = swift_allocObject();
    *(v356 + 16) = v339;
    v123 = swift_allocObject();
    v338 = v123;
    *(v123 + 16) = v464;
    *(v123 + 24) = 0;
    v124 = swift_allocObject();
    v125 = v338;
    v357 = v124;
    *(v124 + 16) = v494;
    *(v124 + 24) = v125;
    v358 = swift_allocObject();
    *(v358 + 16) = 0;
    v359 = swift_allocObject();
    *(v359 + 16) = v339;
    v126 = swift_allocObject();
    v127 = v340;
    v341 = v126;
    *(v126 + 16) = v495;
    *(v126 + 24) = v127;
    v128 = swift_allocObject();
    v129 = v341;
    v360 = v128;
    *(v128 + 16) = v496;
    *(v128 + 24) = v129;
    v361 = swift_allocObject();
    *(v361 + 16) = 112;
    v362 = swift_allocObject();
    v344 = 8;
    *(v362 + 16) = 8;
    v342 = swift_allocObject();
    *(v342 + 16) = v468;
    v130 = swift_allocObject();
    v131 = v342;
    v363 = v130;
    *(v130 + 16) = v497;
    *(v130 + 24) = v131;
    v364 = swift_allocObject();
    *(v364 + 16) = 37;
    v365 = swift_allocObject();
    *(v365 + 16) = v344;
    v132 = swift_allocObject();
    v133 = v347;
    v348 = v132;
    *(v132 + 16) = v498;
    *(v132 + 24) = v133;
    v134 = swift_allocObject();
    v135 = v348;
    v367 = v134;
    *(v134 + 16) = v499;
    *(v134 + 24) = v135;
    v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v366 = sub_1B0E46A48();
    v368 = v136;

    v137 = v349;
    v138 = v368;
    *v368 = v500;
    v138[1] = v137;

    v139 = v350;
    v140 = v368;
    v368[2] = v501;
    v140[3] = v139;

    v141 = v351;
    v142 = v368;
    v368[4] = v502;
    v142[5] = v141;

    v143 = v352;
    v144 = v368;
    v368[6] = v503;
    v144[7] = v143;

    v145 = v353;
    v146 = v368;
    v368[8] = v504;
    v146[9] = v145;

    v147 = v354;
    v148 = v368;
    v368[10] = v505;
    v148[11] = v147;

    v149 = v355;
    v150 = v368;
    v368[12] = v506;
    v150[13] = v149;

    v151 = v356;
    v152 = v368;
    v368[14] = v507;
    v152[15] = v151;

    v153 = v357;
    v154 = v368;
    v368[16] = v508;
    v154[17] = v153;

    v155 = v358;
    v156 = v368;
    v368[18] = v509;
    v156[19] = v155;

    v157 = v359;
    v158 = v368;
    v368[20] = v510;
    v158[21] = v157;

    v159 = v360;
    v160 = v368;
    v368[22] = v511;
    v160[23] = v159;

    v161 = v361;
    v162 = v368;
    v368[24] = v512;
    v162[25] = v161;

    v163 = v362;
    v164 = v368;
    v368[26] = v513;
    v164[27] = v163;

    v165 = v363;
    v166 = v368;
    v368[28] = v514;
    v166[29] = v165;

    v167 = v364;
    v168 = v368;
    v368[30] = v515;
    v168[31] = v167;

    v169 = v365;
    v170 = v368;
    v368[32] = v516;
    v170[33] = v169;

    v171 = v367;
    v172 = v368;
    v368[34] = v517;
    v172[35] = v171;
    sub_1B0394964();

    if (os_log_type_enabled(v370, v371))
    {
      v173 = v547;
      v321 = sub_1B0E45D78();
      v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v322 = sub_1B03949A8(0, v320, v320);
      v323 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v324 = &v597;
      v597 = v321;
      v325 = &v596;
      v596 = v322;
      v326 = &v595;
      v595 = v323;
      sub_1B0394A48(3, &v597);
      sub_1B0394A48(6, v324);
      v593 = v500;
      v594 = v349;
      sub_1B03949FC(&v593, v324, v325, v326);
      v327 = v173;
      if (v173)
      {

        __break(1u);
      }

      else
      {
        v593 = v501;
        v594 = v350;
        sub_1B03949FC(&v593, &v597, &v596, &v595);
        v319 = 0;
        v593 = v502;
        v594 = v351;
        sub_1B03949FC(&v593, &v597, &v596, &v595);
        v318 = 0;
        v593 = v503;
        v594 = v352;
        sub_1B03949FC(&v593, &v597, &v596, &v595);
        v317 = 0;
        v593 = v504;
        v594 = v353;
        sub_1B03949FC(&v593, &v597, &v596, &v595);
        v316 = 0;
        v593 = v505;
        v594 = v354;
        sub_1B03949FC(&v593, &v597, &v596, &v595);
        v315 = 0;
        v593 = v506;
        v594 = v355;
        sub_1B03949FC(&v593, &v597, &v596, &v595);
        v314 = 0;
        v593 = v507;
        v594 = v356;
        sub_1B03949FC(&v593, &v597, &v596, &v595);
        v313 = 0;
        v593 = v508;
        v594 = v357;
        sub_1B03949FC(&v593, &v597, &v596, &v595);
        v312 = 0;
        v593 = v509;
        v594 = v358;
        sub_1B03949FC(&v593, &v597, &v596, &v595);
        v311 = 0;
        v593 = v510;
        v594 = v359;
        sub_1B03949FC(&v593, &v597, &v596, &v595);
        v310 = 0;
        v593 = v511;
        v594 = v360;
        sub_1B03949FC(&v593, &v597, &v596, &v595);
        v309 = 0;
        v593 = v512;
        v594 = v361;
        sub_1B03949FC(&v593, &v597, &v596, &v595);
        v308 = 0;
        v593 = v513;
        v594 = v362;
        sub_1B03949FC(&v593, &v597, &v596, &v595);
        v307 = 0;
        v593 = v514;
        v594 = v363;
        sub_1B03949FC(&v593, &v597, &v596, &v595);
        v306 = 0;
        v593 = v515;
        v594 = v364;
        sub_1B03949FC(&v593, &v597, &v596, &v595);
        v305 = 0;
        v593 = v516;
        v594 = v365;
        sub_1B03949FC(&v593, &v597, &v596, &v595);
        v304 = 0;
        v593 = v517;
        v594 = v367;
        sub_1B03949FC(&v593, &v597, &v596, &v595);
        _os_log_impl(&dword_1B0389000, v370, v371, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Expected a top-level part for whole message download", v321, 0x2Bu);
        sub_1B03998A8(v322, 0, v320);
        sub_1B03998A8(v323, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v370);
    (*(v556 + 8))(v561, v555);
    sub_1B0760B84(v582);

    v444 = v574;
    v445 = v546;
  }

  return v444;
}

uint64_t sub_1B076CC6C(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v684 = v1;
  v714 = v2;
  v713 = v3;
  v712 = v4;
  v716 = v5;
  v715 = v6;
  v685 = v7;
  v686 = v3;
  v709 = 0;
  v767 = 0;
  v766 = 0;
  v765 = 0;
  v764 = 0;
  v763 = 0;
  v762 = 0;
  v761 = 0;
  v760 = 0;
  v758 = 0;
  v687 = 0;
  v744 = 0;
  v743 = 0;
  v742 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
  v688 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8 - 8);
  v689 = v279 - v688;
  v690 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26F0, &unk_1B0E9B4F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v709);
  v691 = v279 - v690;
  v10 = _s31PreviouslyDownloadedMessageDataVMa(v9);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v692 = v279 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v693 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2080, &qword_1B0E9B510) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v709);
  v694 = (v279 - v693);
  v695 = _s6LoggerVMa_1(v12);
  v697 = *(*(v695 - 8) + 64);
  MEMORY[0x1EEE9AC00](v709);
  v699 = (v697 + 15) & 0xFFFFFFFFFFFFFFF0;
  v696 = v279 - v699;
  MEMORY[0x1EEE9AC00](v13);
  v698 = v279 - v699;
  MEMORY[0x1EEE9AC00](v14);
  v700 = v279 - v699;
  v701 = sub_1B0E439A8();
  v702 = *(v701 - 8);
  v703 = v702;
  v705 = *(v702 + 64);
  MEMORY[0x1EEE9AC00](v709);
  v707 = (v705 + 15) & 0xFFFFFFFFFFFFFFF0;
  v704 = v279 - v707;
  MEMORY[0x1EEE9AC00](v15);
  v706 = v279 - v707;
  MEMORY[0x1EEE9AC00](v16);
  v708 = v279 - v707;
  v710 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection(v17);
  MEMORY[0x1EEE9AC00](v709);
  v711 = (v279 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v767 = v711;
  v717 = type metadata accessor for InProgressMessageDownload.Section(v19);
  v718 = *(v717 - 8);
  v719 = v718;
  v721 = *(v718 + 64);
  MEMORY[0x1EEE9AC00](v715);
  v723 = (v721 + 15) & 0xFFFFFFFFFFFFFFF0;
  v720 = (v279 - v723);
  MEMORY[0x1EEE9AC00](v20);
  v722 = v279 - v723;
  MEMORY[0x1EEE9AC00](v21);
  v724 = (v279 - v723);
  v766 = v279 - v723;
  v764 = v22;
  v765 = v23;
  v763 = v24;
  v762 = v25;
  v761 = v26;
  v760 = v1;
  if ((sub_1B077136C() & 1) == 0 || ((v682 = &v759, swift_beginAccess(), v683 = *(v684 + 20), swift_endAccess(), v683 != 1) ? (v681 = v686) : (v681 = 1), (v680 = v681, v758 = v681 & 1, , (v680 & 1) == 0) ? (v679 = sub_1B0765644()) : (v679 = 1), v678 = v679, , !v678))
  {
    v277 = type metadata accessor for InProgressMessageDownload.Completed(0);
    (*(*(v277 - 8) + 56))(v685, 1);
    return v687;
  }

  if (v680)
  {
    v661 = v687;
  }

  else
  {
    v27 = v687;
    v668 = (v684 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections);
    v671 = 32;
    v669 = v746;
    v672 = 0;
    swift_beginAccess();
    v670 = *v668;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    v745 = v670;
    v673 = v279;
    MEMORY[0x1EEE9AC00](v279);
    v675 = &v279[-4];
    v279[-2] = sub_1B077148C;
    v279[-1] = v28;
    v676 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2090, &qword_1B0E9B520);
    v674 = v676;
    sub_1B07ABB40();
    sub_1B0E456F8();
    v677 = v27;
    if (v27)
    {
      __break(1u);
      goto LABEL_44;
    }

    sub_1B039E440(&v745);
    v665 = v746[3];
    v666 = v746[4];
    v667 = v747;
    if (v747 == 255)
    {
      v661 = v677;
    }

    else
    {
      v662 = v665;
      v663 = v666;
      v664 = v667;
      v655 = v667;
      v657 = v666;
      v656 = v665;
      v742 = v665;
      v743 = v666;
      v658 = v667 & 1;
      v744 = v667 & 1;
      v659 = v741;
      swift_beginAccess();
      sub_1B0E44698();
      swift_endAccess();
      v660 = v741[3];
      sub_1B076041C(v722, v724);

      sub_1B0760600(v724, v720);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B07AC238(v720, v711);
        if (sub_1B0771570(v711, v715, v716, v712, v714))
        {
          if ((sub_1B077136C() & 1) == 0)
          {
            (*(v703 + 16))(v708, v714, v701);
            sub_1B074B69C(v714, v700);
            sub_1B074B69C(v700, v698);
            sub_1B074E41C(v700, v696);
            v30 = (v698 + *(v695 + 20));
            v590 = *v30;
            v591 = *(v30 + 1);
            v592 = *(v30 + 1);
            v593 = *(v30 + 4);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B074B764(v698);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v589 = 36;
            v627 = 7;
            v31 = swift_allocObject();
            v32 = v591;
            v33 = v592;
            v34 = v593;
            v602 = v31;
            *(v31 + 16) = v590;
            *(v31 + 20) = v32;
            *(v31 + 24) = v33;
            *(v31 + 32) = v34;
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v35 = swift_allocObject();
            v36 = v591;
            v37 = v592;
            v38 = v593;
            v588 = v35;
            *(v35 + 16) = v590;
            *(v35 + 20) = v36;
            *(v35 + 24) = v37;
            *(v35 + 32) = v38;

            v626 = 32;
            v39 = swift_allocObject();
            v40 = v588;
            v615 = v39;
            *(v39 + 16) = sub_1B074E050;
            *(v39 + 24) = v40;
            sub_1B0394868();
            sub_1B0394868();

            v41 = swift_allocObject();
            v42 = v591;
            v43 = v592;
            v44 = v593;
            v45 = v41;
            v46 = v696;
            v628 = v45;
            *(v45 + 16) = v590;
            *(v45 + 20) = v42;
            *(v45 + 24) = v43;
            *(v45 + 32) = v44;
            sub_1B074B764(v46);
            v653 = sub_1B0E43988();
            v594 = v653;
            v652 = sub_1B0E45908();
            v595 = v652;
            v622 = 17;
            v631 = swift_allocObject();
            v596 = v631;
            v605 = 16;
            *(v631 + 16) = 16;
            v632 = swift_allocObject();
            v597 = v632;
            v613 = 4;
            *(v632 + 16) = 4;
            v47 = swift_allocObject();
            v598 = v47;
            *(v47 + 16) = sub_1B0394C30;
            v608 = 0;
            *(v47 + 24) = 0;
            v48 = swift_allocObject();
            v49 = v598;
            v633 = v48;
            v599 = v48;
            *(v48 + 16) = sub_1B0394C24;
            *(v48 + 24) = v49;
            v634 = swift_allocObject();
            v600 = v634;
            v611 = 0;
            *(v634 + 16) = 0;
            v635 = swift_allocObject();
            v601 = v635;
            *(v635 + 16) = 1;
            v50 = swift_allocObject();
            v51 = v602;
            v603 = v50;
            *(v50 + 16) = sub_1B074DFFC;
            *(v50 + 24) = v51;
            v52 = swift_allocObject();
            v53 = v603;
            v636 = v52;
            v604 = v52;
            *(v52 + 16) = sub_1B039BA88;
            *(v52 + 24) = v53;
            v637 = swift_allocObject();
            v606 = v637;
            *(v637 + 16) = v605;
            v638 = swift_allocObject();
            v607 = v638;
            *(v638 + 16) = v613;
            v54 = swift_allocObject();
            v55 = v608;
            v609 = v54;
            *(v54 + 16) = sub_1B039BB94;
            *(v54 + 24) = v55;
            v56 = swift_allocObject();
            v57 = v609;
            v639 = v56;
            v610 = v56;
            *(v56 + 16) = sub_1B0394C24;
            *(v56 + 24) = v57;
            v640 = swift_allocObject();
            v612 = v640;
            *(v640 + 16) = v611;
            v641 = swift_allocObject();
            v614 = v641;
            *(v641 + 16) = v613;
            v58 = swift_allocObject();
            v59 = v615;
            v616 = v58;
            *(v58 + 16) = sub_1B039BBA0;
            *(v58 + 24) = v59;
            v60 = swift_allocObject();
            v61 = v616;
            v642 = v60;
            v617 = v60;
            *(v60 + 16) = sub_1B039BC08;
            *(v60 + 24) = v61;
            v643 = swift_allocObject();
            v618 = v643;
            *(v643 + 16) = 112;
            v644 = swift_allocObject();
            v619 = v644;
            v624 = 8;
            *(v644 + 16) = 8;
            v620 = swift_allocObject();
            *(v620 + 16) = 0x786F626C69616DLL;
            v62 = swift_allocObject();
            v63 = v620;
            v645 = v62;
            v621 = v62;
            *(v62 + 16) = sub_1B06BA324;
            *(v62 + 24) = v63;
            v646 = swift_allocObject();
            v623 = v646;
            *(v646 + 16) = 37;
            v647 = swift_allocObject();
            v625 = v647;
            *(v647 + 16) = v624;
            v64 = swift_allocObject();
            v65 = v628;
            v629 = v64;
            *(v64 + 16) = sub_1B074E0E4;
            *(v64 + 24) = v65;
            v66 = swift_allocObject();
            v67 = v629;
            v650 = v66;
            v630 = v66;
            *(v66 + 16) = sub_1B039BCF8;
            *(v66 + 24) = v67;
            v651 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
            v648 = sub_1B0E46A48();
            v649 = v68;

            v69 = v631;
            v70 = v649;
            *v649 = sub_1B0398F5C;
            v70[1] = v69;

            v71 = v632;
            v72 = v649;
            v649[2] = sub_1B0398F5C;
            v72[3] = v71;

            v73 = v633;
            v74 = v649;
            v649[4] = sub_1B0399178;
            v74[5] = v73;

            v75 = v634;
            v76 = v649;
            v649[6] = sub_1B0398F5C;
            v76[7] = v75;

            v77 = v635;
            v78 = v649;
            v649[8] = sub_1B0398F5C;
            v78[9] = v77;

            v79 = v636;
            v80 = v649;
            v649[10] = sub_1B039BA94;
            v80[11] = v79;

            v81 = v637;
            v82 = v649;
            v649[12] = sub_1B0398F5C;
            v82[13] = v81;

            v83 = v638;
            v84 = v649;
            v649[14] = sub_1B0398F5C;
            v84[15] = v83;

            v85 = v639;
            v86 = v649;
            v649[16] = sub_1B0399178;
            v86[17] = v85;

            v87 = v640;
            v88 = v649;
            v649[18] = sub_1B0398F5C;
            v88[19] = v87;

            v89 = v641;
            v90 = v649;
            v649[20] = sub_1B0398F5C;
            v90[21] = v89;

            v91 = v642;
            v92 = v649;
            v649[22] = sub_1B03991EC;
            v92[23] = v91;

            v93 = v643;
            v94 = v649;
            v649[24] = sub_1B0398F5C;
            v94[25] = v93;

            v95 = v644;
            v96 = v649;
            v649[26] = sub_1B0398F5C;
            v96[27] = v95;

            v97 = v645;
            v98 = v649;
            v649[28] = sub_1B03993BC;
            v98[29] = v97;

            v99 = v646;
            v100 = v649;
            v649[30] = sub_1B0398F5C;
            v100[31] = v99;

            v101 = v647;
            v102 = v649;
            v649[32] = sub_1B0398F5C;
            v102[33] = v101;

            v103 = v649;
            v104 = v650;
            v649[34] = sub_1B039BCEC;
            v103[35] = v104;
            sub_1B0394964();

            if (os_log_type_enabled(v653, v652))
            {
              v105 = v677;
              v582 = sub_1B0E45D78();
              v579 = v582;
              v580 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
              v583 = sub_1B03949A8(0, v580, v580);
              v581 = v583;
              v584 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
              v729 = v582;
              v728 = v583;
              v727 = v584;
              v585 = &v729;
              sub_1B0394A48(3, &v729);
              sub_1B0394A48(6, v585);
              v725 = sub_1B0398F5C;
              v726 = v596;
              sub_1B03949FC(&v725, v585, &v728, &v727);
              v586 = v105;
              v587 = v105;
              if (v105)
              {
                v577 = 0;

                __break(1u);
              }

              else
              {
                v725 = sub_1B0398F5C;
                v726 = v597;
                sub_1B03949FC(&v725, &v729, &v728, &v727);
                v575 = 0;
                v576 = 0;
                v725 = sub_1B0399178;
                v726 = v599;
                sub_1B03949FC(&v725, &v729, &v728, &v727);
                v573 = 0;
                v574 = 0;
                v725 = sub_1B0398F5C;
                v726 = v600;
                sub_1B03949FC(&v725, &v729, &v728, &v727);
                v571 = 0;
                v572 = 0;
                v725 = sub_1B0398F5C;
                v726 = v601;
                sub_1B03949FC(&v725, &v729, &v728, &v727);
                v569 = 0;
                v570 = 0;
                v725 = sub_1B039BA94;
                v726 = v604;
                sub_1B03949FC(&v725, &v729, &v728, &v727);
                v567 = 0;
                v568 = 0;
                v725 = sub_1B0398F5C;
                v726 = v606;
                sub_1B03949FC(&v725, &v729, &v728, &v727);
                v565 = 0;
                v566 = 0;
                v725 = sub_1B0398F5C;
                v726 = v607;
                sub_1B03949FC(&v725, &v729, &v728, &v727);
                v563 = 0;
                v564 = 0;
                v725 = sub_1B0399178;
                v726 = v610;
                sub_1B03949FC(&v725, &v729, &v728, &v727);
                v561 = 0;
                v562 = 0;
                v725 = sub_1B0398F5C;
                v726 = v612;
                sub_1B03949FC(&v725, &v729, &v728, &v727);
                v559 = 0;
                v560 = 0;
                v725 = sub_1B0398F5C;
                v726 = v614;
                sub_1B03949FC(&v725, &v729, &v728, &v727);
                v557 = 0;
                v558 = 0;
                v725 = sub_1B03991EC;
                v726 = v617;
                sub_1B03949FC(&v725, &v729, &v728, &v727);
                v555 = 0;
                v556 = 0;
                v725 = sub_1B0398F5C;
                v726 = v618;
                sub_1B03949FC(&v725, &v729, &v728, &v727);
                v553 = 0;
                v554 = 0;
                v725 = sub_1B0398F5C;
                v726 = v619;
                sub_1B03949FC(&v725, &v729, &v728, &v727);
                v551 = 0;
                v552 = 0;
                v725 = sub_1B03993BC;
                v726 = v621;
                sub_1B03949FC(&v725, &v729, &v728, &v727);
                v549 = 0;
                v550 = 0;
                v725 = sub_1B0398F5C;
                v726 = v623;
                sub_1B03949FC(&v725, &v729, &v728, &v727);
                v547 = 0;
                v548 = 0;
                v725 = sub_1B0398F5C;
                v726 = v625;
                sub_1B03949FC(&v725, &v729, &v728, &v727);
                v545 = 0;
                v546 = 0;
                v725 = sub_1B039BCEC;
                v726 = v630;
                sub_1B03949FC(&v725, &v729, &v728, &v727);
                v543 = 0;
                v544 = 0;
                _os_log_impl(&dword_1B0389000, v594, v595, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Did extract attachments from full message download. Waiting for file writers.", v579, 0x2Bu);
                sub_1B03998A8(v581, 0, v580);
                sub_1B03998A8(v584, 1, MEMORY[0x1E69E7CA0] + 8);
                sub_1B0E45D58();

                v578 = v543;
              }
            }

            else
            {
              v106 = v677;

              v578 = v106;
            }

            v541 = v578;

            (*(v703 + 8))(v708, v701);
            v107 = type metadata accessor for InProgressMessageDownload.Completed(0);
            (*(*(v107 - 8) + 56))(v685, 1);
            sub_1B07AC2FC(v711);
            sub_1B0760B84(v724);
            sub_1B07AC53C(v656, v657, v655 & 1);
            return v541;
          }

          v654 = v677;
        }

        else
        {
          (*(v703 + 16))(v706, v714, v701);
          sub_1B074B69C(v714, v700);
          sub_1B074B69C(v700, v698);
          sub_1B074E41C(v700, v696);
          v108 = (v698 + *(v695 + 20));
          v477 = *v108;
          v478 = *(v108 + 1);
          v479 = *(v108 + 1);
          v480 = *(v108 + 4);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B074B764(v698);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v476 = 36;
          v514 = 7;
          v109 = swift_allocObject();
          v110 = v478;
          v111 = v479;
          v112 = v480;
          v489 = v109;
          *(v109 + 16) = v477;
          *(v109 + 20) = v110;
          *(v109 + 24) = v111;
          *(v109 + 32) = v112;
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v113 = swift_allocObject();
          v114 = v478;
          v115 = v479;
          v116 = v480;
          v475 = v113;
          *(v113 + 16) = v477;
          *(v113 + 20) = v114;
          *(v113 + 24) = v115;
          *(v113 + 32) = v116;

          v513 = 32;
          v117 = swift_allocObject();
          v118 = v475;
          v502 = v117;
          *(v117 + 16) = sub_1B074E050;
          *(v117 + 24) = v118;
          sub_1B0394868();
          sub_1B0394868();

          v119 = swift_allocObject();
          v120 = v478;
          v121 = v479;
          v122 = v480;
          v123 = v119;
          v124 = v696;
          v515 = v123;
          *(v123 + 16) = v477;
          *(v123 + 20) = v120;
          *(v123 + 24) = v121;
          *(v123 + 32) = v122;
          sub_1B074B764(v124);
          v540 = sub_1B0E43988();
          v481 = v540;
          v539 = sub_1B0E458F8();
          v482 = v539;
          v509 = 17;
          v518 = swift_allocObject();
          v483 = v518;
          v492 = 16;
          *(v518 + 16) = 16;
          v519 = swift_allocObject();
          v484 = v519;
          v500 = 4;
          *(v519 + 16) = 4;
          v125 = swift_allocObject();
          v485 = v125;
          *(v125 + 16) = sub_1B0394C30;
          v495 = 0;
          *(v125 + 24) = 0;
          v126 = swift_allocObject();
          v127 = v485;
          v520 = v126;
          v486 = v126;
          *(v126 + 16) = sub_1B0394C24;
          *(v126 + 24) = v127;
          v521 = swift_allocObject();
          v487 = v521;
          v498 = 0;
          *(v521 + 16) = 0;
          v522 = swift_allocObject();
          v488 = v522;
          *(v522 + 16) = 1;
          v128 = swift_allocObject();
          v129 = v489;
          v490 = v128;
          *(v128 + 16) = sub_1B074DFFC;
          *(v128 + 24) = v129;
          v130 = swift_allocObject();
          v131 = v490;
          v523 = v130;
          v491 = v130;
          *(v130 + 16) = sub_1B039BA88;
          *(v130 + 24) = v131;
          v524 = swift_allocObject();
          v493 = v524;
          *(v524 + 16) = v492;
          v525 = swift_allocObject();
          v494 = v525;
          *(v525 + 16) = v500;
          v132 = swift_allocObject();
          v133 = v495;
          v496 = v132;
          *(v132 + 16) = sub_1B039BB94;
          *(v132 + 24) = v133;
          v134 = swift_allocObject();
          v135 = v496;
          v526 = v134;
          v497 = v134;
          *(v134 + 16) = sub_1B0394C24;
          *(v134 + 24) = v135;
          v527 = swift_allocObject();
          v499 = v527;
          *(v527 + 16) = v498;
          v528 = swift_allocObject();
          v501 = v528;
          *(v528 + 16) = v500;
          v136 = swift_allocObject();
          v137 = v502;
          v503 = v136;
          *(v136 + 16) = sub_1B039BBA0;
          *(v136 + 24) = v137;
          v138 = swift_allocObject();
          v139 = v503;
          v529 = v138;
          v504 = v138;
          *(v138 + 16) = sub_1B039BC08;
          *(v138 + 24) = v139;
          v530 = swift_allocObject();
          v505 = v530;
          *(v530 + 16) = 112;
          v531 = swift_allocObject();
          v506 = v531;
          v511 = 8;
          *(v531 + 16) = 8;
          v507 = swift_allocObject();
          *(v507 + 16) = 0x786F626C69616DLL;
          v140 = swift_allocObject();
          v141 = v507;
          v532 = v140;
          v508 = v140;
          *(v140 + 16) = sub_1B06BA324;
          *(v140 + 24) = v141;
          v533 = swift_allocObject();
          v510 = v533;
          *(v533 + 16) = 37;
          v534 = swift_allocObject();
          v512 = v534;
          *(v534 + 16) = v511;
          v142 = swift_allocObject();
          v143 = v515;
          v516 = v142;
          *(v142 + 16) = sub_1B074E0E4;
          *(v142 + 24) = v143;
          v144 = swift_allocObject();
          v145 = v516;
          v537 = v144;
          v517 = v144;
          *(v144 + 16) = sub_1B039BCF8;
          *(v144 + 24) = v145;
          v538 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
          v535 = sub_1B0E46A48();
          v536 = v146;

          v147 = v518;
          v148 = v536;
          *v536 = sub_1B0398F5C;
          v148[1] = v147;

          v149 = v519;
          v150 = v536;
          v536[2] = sub_1B0398F5C;
          v150[3] = v149;

          v151 = v520;
          v152 = v536;
          v536[4] = sub_1B0399178;
          v152[5] = v151;

          v153 = v521;
          v154 = v536;
          v536[6] = sub_1B0398F5C;
          v154[7] = v153;

          v155 = v522;
          v156 = v536;
          v536[8] = sub_1B0398F5C;
          v156[9] = v155;

          v157 = v523;
          v158 = v536;
          v536[10] = sub_1B039BA94;
          v158[11] = v157;

          v159 = v524;
          v160 = v536;
          v536[12] = sub_1B0398F5C;
          v160[13] = v159;

          v161 = v525;
          v162 = v536;
          v536[14] = sub_1B0398F5C;
          v162[15] = v161;

          v163 = v526;
          v164 = v536;
          v536[16] = sub_1B0399178;
          v164[17] = v163;

          v165 = v527;
          v166 = v536;
          v536[18] = sub_1B0398F5C;
          v166[19] = v165;

          v167 = v528;
          v168 = v536;
          v536[20] = sub_1B0398F5C;
          v168[21] = v167;

          v169 = v529;
          v170 = v536;
          v536[22] = sub_1B03991EC;
          v170[23] = v169;

          v171 = v530;
          v172 = v536;
          v536[24] = sub_1B0398F5C;
          v172[25] = v171;

          v173 = v531;
          v174 = v536;
          v536[26] = sub_1B0398F5C;
          v174[27] = v173;

          v175 = v532;
          v176 = v536;
          v536[28] = sub_1B03993BC;
          v176[29] = v175;

          v177 = v533;
          v178 = v536;
          v536[30] = sub_1B0398F5C;
          v178[31] = v177;

          v179 = v534;
          v180 = v536;
          v536[32] = sub_1B0398F5C;
          v180[33] = v179;

          v181 = v536;
          v182 = v537;
          v536[34] = sub_1B039BCEC;
          v181[35] = v182;
          sub_1B0394964();

          if (os_log_type_enabled(v540, v539))
          {
            v183 = v677;
            v469 = sub_1B0E45D78();
            v466 = v469;
            v467 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
            v470 = sub_1B03949A8(0, v467, v467);
            v468 = v470;
            v471 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
            v734 = v469;
            v733 = v470;
            v732 = v471;
            v472 = &v734;
            sub_1B0394A48(3, &v734);
            sub_1B0394A48(6, v472);
            v730 = sub_1B0398F5C;
            v731 = v483;
            sub_1B03949FC(&v730, v472, &v733, &v732);
            v473 = v183;
            v474 = v183;
            if (v183)
            {
              v464 = 0;

              __break(1u);
            }

            else
            {
              v730 = sub_1B0398F5C;
              v731 = v484;
              sub_1B03949FC(&v730, &v734, &v733, &v732);
              v462 = 0;
              v463 = 0;
              v730 = sub_1B0399178;
              v731 = v486;
              sub_1B03949FC(&v730, &v734, &v733, &v732);
              v460 = 0;
              v461 = 0;
              v730 = sub_1B0398F5C;
              v731 = v487;
              sub_1B03949FC(&v730, &v734, &v733, &v732);
              v458 = 0;
              v459 = 0;
              v730 = sub_1B0398F5C;
              v731 = v488;
              sub_1B03949FC(&v730, &v734, &v733, &v732);
              v456 = 0;
              v457 = 0;
              v730 = sub_1B039BA94;
              v731 = v491;
              sub_1B03949FC(&v730, &v734, &v733, &v732);
              v454 = 0;
              v455 = 0;
              v730 = sub_1B0398F5C;
              v731 = v493;
              sub_1B03949FC(&v730, &v734, &v733, &v732);
              v452 = 0;
              v453 = 0;
              v730 = sub_1B0398F5C;
              v731 = v494;
              sub_1B03949FC(&v730, &v734, &v733, &v732);
              v450 = 0;
              v451 = 0;
              v730 = sub_1B0399178;
              v731 = v497;
              sub_1B03949FC(&v730, &v734, &v733, &v732);
              v448 = 0;
              v449 = 0;
              v730 = sub_1B0398F5C;
              v731 = v499;
              sub_1B03949FC(&v730, &v734, &v733, &v732);
              v446 = 0;
              v447 = 0;
              v730 = sub_1B0398F5C;
              v731 = v501;
              sub_1B03949FC(&v730, &v734, &v733, &v732);
              v444 = 0;
              v445 = 0;
              v730 = sub_1B03991EC;
              v731 = v504;
              sub_1B03949FC(&v730, &v734, &v733, &v732);
              v442 = 0;
              v443 = 0;
              v730 = sub_1B0398F5C;
              v731 = v505;
              sub_1B03949FC(&v730, &v734, &v733, &v732);
              v440 = 0;
              v441 = 0;
              v730 = sub_1B0398F5C;
              v731 = v506;
              sub_1B03949FC(&v730, &v734, &v733, &v732);
              v438 = 0;
              v439 = 0;
              v730 = sub_1B03993BC;
              v731 = v508;
              sub_1B03949FC(&v730, &v734, &v733, &v732);
              v436 = 0;
              v437 = 0;
              v730 = sub_1B0398F5C;
              v731 = v510;
              sub_1B03949FC(&v730, &v734, &v733, &v732);
              v434 = 0;
              v435 = 0;
              v730 = sub_1B0398F5C;
              v731 = v512;
              sub_1B03949FC(&v730, &v734, &v733, &v732);
              v432 = 0;
              v433 = 0;
              v730 = sub_1B039BCEC;
              v731 = v517;
              sub_1B03949FC(&v730, &v734, &v733, &v732);
              v430 = 0;
              v431 = 0;
              _os_log_impl(&dword_1B0389000, v481, v482, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Failed to extract attachments from full message download.", v466, 0x2Bu);
              sub_1B03998A8(v468, 0, v467);
              sub_1B03998A8(v471, 1, MEMORY[0x1E69E7CA0] + 8);
              sub_1B0E45D58();

              v465 = v430;
            }
          }

          else
          {
            v184 = v677;

            v465 = v184;
          }

          v429 = v465;

          (*(v703 + 8))(v706, v701);
          v427 = 0;
          sub_1B0E46A48();
          SectionSpecifier.Part.init(arrayLiteral:)();
          v426 = v185;
          sub_1B07AC570(v711, v694);
          v425 = 1;
          swift_storeEnumTagMultiPayload();
          (*(v719 + 56))(v694, 0, v425, v717);
          v735[3] = v426;
          v428 = v735;
          swift_beginAccess();
          sub_1B0E44788();
          swift_endAccess();
          v654 = v429;
        }

        v423 = v654;
        sub_1B07AC2FC(v711);
        v424 = v423;
      }

      else
      {
        v186 = v704;
        sub_1B0760B84(v720);
        (*(v703 + 16))(v186, v714, v701);
        sub_1B074B69C(v714, v700);
        sub_1B074B69C(v700, v698);
        sub_1B074E41C(v700, v696);
        v187 = (v698 + *(v695 + 20));
        v359 = *v187;
        v360 = *(v187 + 1);
        v361 = *(v187 + 1);
        v362 = *(v187 + 4);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B074B764(v698);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v358 = 36;
        v396 = 7;
        v188 = swift_allocObject();
        v189 = v360;
        v190 = v361;
        v191 = v362;
        v371 = v188;
        *(v188 + 16) = v359;
        *(v188 + 20) = v189;
        *(v188 + 24) = v190;
        *(v188 + 32) = v191;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v192 = swift_allocObject();
        v193 = v360;
        v194 = v361;
        v195 = v362;
        v357 = v192;
        *(v192 + 16) = v359;
        *(v192 + 20) = v193;
        *(v192 + 24) = v194;
        *(v192 + 32) = v195;

        v395 = 32;
        v196 = swift_allocObject();
        v197 = v357;
        v384 = v196;
        *(v196 + 16) = sub_1B074E050;
        *(v196 + 24) = v197;
        sub_1B0394868();
        sub_1B0394868();

        v198 = swift_allocObject();
        v199 = v360;
        v200 = v361;
        v201 = v362;
        v202 = v198;
        v203 = v696;
        v397 = v202;
        *(v202 + 16) = v359;
        *(v202 + 20) = v199;
        *(v202 + 24) = v200;
        *(v202 + 32) = v201;
        sub_1B074B764(v203);
        v422 = sub_1B0E43988();
        v363 = v422;
        v421 = sub_1B0E458F8();
        v364 = v421;
        v391 = 17;
        v400 = swift_allocObject();
        v365 = v400;
        v374 = 16;
        *(v400 + 16) = 16;
        v401 = swift_allocObject();
        v366 = v401;
        v382 = 4;
        *(v401 + 16) = 4;
        v204 = swift_allocObject();
        v367 = v204;
        *(v204 + 16) = sub_1B0394C30;
        v377 = 0;
        *(v204 + 24) = 0;
        v205 = swift_allocObject();
        v206 = v367;
        v402 = v205;
        v368 = v205;
        *(v205 + 16) = sub_1B0394C24;
        *(v205 + 24) = v206;
        v403 = swift_allocObject();
        v369 = v403;
        v380 = 0;
        *(v403 + 16) = 0;
        v404 = swift_allocObject();
        v370 = v404;
        *(v404 + 16) = 1;
        v207 = swift_allocObject();
        v208 = v371;
        v372 = v207;
        *(v207 + 16) = sub_1B074DFFC;
        *(v207 + 24) = v208;
        v209 = swift_allocObject();
        v210 = v372;
        v405 = v209;
        v373 = v209;
        *(v209 + 16) = sub_1B039BA88;
        *(v209 + 24) = v210;
        v406 = swift_allocObject();
        v375 = v406;
        *(v406 + 16) = v374;
        v407 = swift_allocObject();
        v376 = v407;
        *(v407 + 16) = v382;
        v211 = swift_allocObject();
        v212 = v377;
        v378 = v211;
        *(v211 + 16) = sub_1B039BB94;
        *(v211 + 24) = v212;
        v213 = swift_allocObject();
        v214 = v378;
        v408 = v213;
        v379 = v213;
        *(v213 + 16) = sub_1B0394C24;
        *(v213 + 24) = v214;
        v409 = swift_allocObject();
        v381 = v409;
        *(v409 + 16) = v380;
        v410 = swift_allocObject();
        v383 = v410;
        *(v410 + 16) = v382;
        v215 = swift_allocObject();
        v216 = v384;
        v385 = v215;
        *(v215 + 16) = sub_1B039BBA0;
        *(v215 + 24) = v216;
        v217 = swift_allocObject();
        v218 = v385;
        v411 = v217;
        v386 = v217;
        *(v217 + 16) = sub_1B039BC08;
        *(v217 + 24) = v218;
        v412 = swift_allocObject();
        v387 = v412;
        *(v412 + 16) = 112;
        v413 = swift_allocObject();
        v388 = v413;
        v393 = 8;
        *(v413 + 16) = 8;
        v389 = swift_allocObject();
        *(v389 + 16) = 0x786F626C69616DLL;
        v219 = swift_allocObject();
        v220 = v389;
        v414 = v219;
        v390 = v219;
        *(v219 + 16) = sub_1B06BA324;
        *(v219 + 24) = v220;
        v415 = swift_allocObject();
        v392 = v415;
        *(v415 + 16) = 37;
        v416 = swift_allocObject();
        v394 = v416;
        *(v416 + 16) = v393;
        v221 = swift_allocObject();
        v222 = v397;
        v398 = v221;
        *(v221 + 16) = sub_1B074E0E4;
        *(v221 + 24) = v222;
        v223 = swift_allocObject();
        v224 = v398;
        v419 = v223;
        v399 = v223;
        *(v223 + 16) = sub_1B039BCF8;
        *(v223 + 24) = v224;
        v420 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v417 = sub_1B0E46A48();
        v418 = v225;

        v226 = v400;
        v227 = v418;
        *v418 = sub_1B0398F5C;
        v227[1] = v226;

        v228 = v401;
        v229 = v418;
        v418[2] = sub_1B0398F5C;
        v229[3] = v228;

        v230 = v402;
        v231 = v418;
        v418[4] = sub_1B0399178;
        v231[5] = v230;

        v232 = v403;
        v233 = v418;
        v418[6] = sub_1B0398F5C;
        v233[7] = v232;

        v234 = v404;
        v235 = v418;
        v418[8] = sub_1B0398F5C;
        v235[9] = v234;

        v236 = v405;
        v237 = v418;
        v418[10] = sub_1B039BA94;
        v237[11] = v236;

        v238 = v406;
        v239 = v418;
        v418[12] = sub_1B0398F5C;
        v239[13] = v238;

        v240 = v407;
        v241 = v418;
        v418[14] = sub_1B0398F5C;
        v241[15] = v240;

        v242 = v408;
        v243 = v418;
        v418[16] = sub_1B0399178;
        v243[17] = v242;

        v244 = v409;
        v245 = v418;
        v418[18] = sub_1B0398F5C;
        v245[19] = v244;

        v246 = v410;
        v247 = v418;
        v418[20] = sub_1B0398F5C;
        v247[21] = v246;

        v248 = v411;
        v249 = v418;
        v418[22] = sub_1B03991EC;
        v249[23] = v248;

        v250 = v412;
        v251 = v418;
        v418[24] = sub_1B0398F5C;
        v251[25] = v250;

        v252 = v413;
        v253 = v418;
        v418[26] = sub_1B0398F5C;
        v253[27] = v252;

        v254 = v414;
        v255 = v418;
        v418[28] = sub_1B03993BC;
        v255[29] = v254;

        v256 = v415;
        v257 = v418;
        v418[30] = sub_1B0398F5C;
        v257[31] = v256;

        v258 = v416;
        v259 = v418;
        v418[32] = sub_1B0398F5C;
        v259[33] = v258;

        v260 = v418;
        v261 = v419;
        v418[34] = sub_1B039BCEC;
        v260[35] = v261;
        sub_1B0394964();

        if (os_log_type_enabled(v422, v421))
        {
          v262 = v677;
          v351 = sub_1B0E45D78();
          v348 = v351;
          v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v352 = sub_1B03949A8(0, v349, v349);
          v350 = v352;
          v353 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v740 = v351;
          v739 = v352;
          v738 = v353;
          v354 = &v740;
          sub_1B0394A48(3, &v740);
          sub_1B0394A48(6, v354);
          v736 = sub_1B0398F5C;
          v737 = v365;
          sub_1B03949FC(&v736, v354, &v739, &v738);
          v355 = v262;
          v356 = v262;
          if (v262)
          {
            v346 = 0;

            __break(1u);
          }

          else
          {
            v736 = sub_1B0398F5C;
            v737 = v366;
            sub_1B03949FC(&v736, &v740, &v739, &v738);
            v344 = 0;
            v345 = 0;
            v736 = sub_1B0399178;
            v737 = v368;
            sub_1B03949FC(&v736, &v740, &v739, &v738);
            v342 = 0;
            v343 = 0;
            v736 = sub_1B0398F5C;
            v737 = v369;
            sub_1B03949FC(&v736, &v740, &v739, &v738);
            v340 = 0;
            v341 = 0;
            v736 = sub_1B0398F5C;
            v737 = v370;
            sub_1B03949FC(&v736, &v740, &v739, &v738);
            v338 = 0;
            v339 = 0;
            v736 = sub_1B039BA94;
            v737 = v373;
            sub_1B03949FC(&v736, &v740, &v739, &v738);
            v336 = 0;
            v337 = 0;
            v736 = sub_1B0398F5C;
            v737 = v375;
            sub_1B03949FC(&v736, &v740, &v739, &v738);
            v334 = 0;
            v335 = 0;
            v736 = sub_1B0398F5C;
            v737 = v376;
            sub_1B03949FC(&v736, &v740, &v739, &v738);
            v332 = 0;
            v333 = 0;
            v736 = sub_1B0399178;
            v737 = v379;
            sub_1B03949FC(&v736, &v740, &v739, &v738);
            v330 = 0;
            v331 = 0;
            v736 = sub_1B0398F5C;
            v737 = v381;
            sub_1B03949FC(&v736, &v740, &v739, &v738);
            v328 = 0;
            v329 = 0;
            v736 = sub_1B0398F5C;
            v737 = v383;
            sub_1B03949FC(&v736, &v740, &v739, &v738);
            v326 = 0;
            v327 = 0;
            v736 = sub_1B03991EC;
            v737 = v386;
            sub_1B03949FC(&v736, &v740, &v739, &v738);
            v324 = 0;
            v325 = 0;
            v736 = sub_1B0398F5C;
            v737 = v387;
            sub_1B03949FC(&v736, &v740, &v739, &v738);
            v322 = 0;
            v323 = 0;
            v736 = sub_1B0398F5C;
            v737 = v388;
            sub_1B03949FC(&v736, &v740, &v739, &v738);
            v320 = 0;
            v321 = 0;
            v736 = sub_1B03993BC;
            v737 = v390;
            sub_1B03949FC(&v736, &v740, &v739, &v738);
            v318 = 0;
            v319 = 0;
            v736 = sub_1B0398F5C;
            v737 = v392;
            sub_1B03949FC(&v736, &v740, &v739, &v738);
            v316 = 0;
            v317 = 0;
            v736 = sub_1B0398F5C;
            v737 = v394;
            sub_1B03949FC(&v736, &v740, &v739, &v738);
            v314 = 0;
            v315 = 0;
            v736 = sub_1B039BCEC;
            v737 = v399;
            sub_1B03949FC(&v736, &v740, &v739, &v738);
            v312 = 0;
            v313 = 0;
            _os_log_impl(&dword_1B0389000, v363, v364, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Got a completed full message that’s not a completed section.", v348, 0x2Bu);
            sub_1B03998A8(v350, 0, v349);
            sub_1B03998A8(v353, 1, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();

            v347 = v312;
          }
        }

        else
        {
          v263 = v677;

          v347 = v263;
        }

        v311 = v347;

        (*(v703 + 8))(v704, v701);
        v424 = v311;
      }

      v310 = v424;
      sub_1B0760B84(v724);
      sub_1B07AC53C(v656, v657, v655 & 1);
      v661 = v310;
    }
  }

  v264 = v661;
  v289 = *(v684 + 16);
  v298 = 32;
  v290 = &v757;
  v305 = 0;
  swift_beginAccess();
  v265 = *(v684 + 24);
  v266 = *(v684 + 40);
  v267 = *(v684 + 56);
  v768[3] = *(v684 + 72);
  v768[2] = v267;
  v768[1] = v266;
  v768[0] = v265;
  v268 = *(v684 + 88);
  v269 = *(v684 + 104);
  v270 = *(v684 + 120);
  v768[7] = *(v684 + 136);
  v768[6] = v270;
  v768[5] = v269;
  v768[4] = v268;
  v271 = *(v684 + 152);
  v272 = *(v684 + 168);
  v273 = *(v684 + 184);
  v769 = *(v684 + 200);
  v768[10] = v273;
  v768[9] = v272;
  v768[8] = v271;
  sub_1B075DC38(v768, v756);
  swift_endAccess();
  v291 = (v684 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_existingData);
  v292 = &v755;
  swift_beginAccess();
  sub_1B075E87C(v291, v692);
  swift_endAccess();
  v293 = (v684 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_downloadedHeader);
  v294 = &v754;
  swift_beginAccess();
  sub_1B075EE10(v293, v691);
  swift_endAccess();
  v295 = (v684 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_passAndActionID);
  v296 = &v753;
  swift_beginAccess();
  v297 = *v295;
  swift_endAccess();
  v299 = (v684 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections);
  v302 = &v752;
  swift_beginAccess();
  v300 = *v299;
  v301 = sub_1B07167A8();
  v303 = sub_1B0E446B8();
  swift_endAccess();
  v751 = v303;
  v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20B8, &qword_1B0E9B540);
  v304 = v306;
  v307 = sub_1B07AC484();
  v274 = sub_1B0E44F58();
  v308 = v264;
  v309 = v274;
  if (!v264)
  {
    v282 = v309;
    sub_1B039E440(&v751);
    v283 = v684 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections;
    v284 = &v750;
    v286 = 0;
    swift_beginAccess();
    v285 = sub_1B0E446B8();
    swift_endAccess();
    v749 = v285;
    v275 = sub_1B0E44F58();
    v287 = 0;
    v288 = v275;
    v280 = v275;
    sub_1B039E440(&v749);
    v279[0] = (v684 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_cleanedUpFullMessageData);
    v279[1] = &v748;
    v281 = 0;
    swift_beginAccess();
    sub_1B075F4A8(v279[0], v689);
    swift_endAccess();
    sub_1B07677F4(v289, v768, v692, v691, v297, v282, v280, v689, v685);
    v276 = type metadata accessor for InProgressMessageDownload.Completed(v281);
    (*(*(v276 - 8) + 56))(v685, 0, 1);
    return v287;
  }

LABEL_44:
  __break(1u);
  result = 0;
  __break(1u);
  return result;
}

uint64_t sub_1B077136C()
{
  v3[4] = 0;
  swift_beginAccess();
  type metadata accessor for InProgressMessageDownload.Section(0);
  sub_1B07167A8();
  v2 = sub_1B0E446B8();
  swift_endAccess();
  v3[0] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20B8, &qword_1B0E9B540);
  sub_1B07AC484();
  v1 = sub_1B0E44F48();
  sub_1B039E440(v3);
  return v1 & 1;
}

uint64_t sub_1B077148C(uint64_t a1)
{
  sub_1B0E46A48();
  SectionSpecifier.Part.init(arrayLiteral:)();
  v4 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(a1, v1);

  return v4 & 1;
}

uint64_t sub_1B07714F8(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v6 = *a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20B0, &qword_1B0E9B538);
  return a2(v6, &a1[*(v2 + 48)]) & 1;
}

uint64_t sub_1B0771570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v108 = a1;
  v110 = a2;
  v111 = a3;
  v114 = a4;
  v112 = a5;
  v116 = sub_1B07AC8AC;
  v38 = sub_1B074E050;
  v39 = sub_1B07AAFA4;
  v40 = sub_1B0394C30;
  v41 = sub_1B0394C24;
  v42 = sub_1B074DFFC;
  v43 = sub_1B039BA88;
  v44 = sub_1B039BB94;
  v45 = sub_1B0394C24;
  v46 = sub_1B039BBA0;
  v47 = sub_1B039BC08;
  v48 = sub_1B06BA324;
  v49 = sub_1B074E0E4;
  v50 = sub_1B039BCF8;
  v51 = sub_1B07AB020;
  v52 = sub_1B039BC08;
  v53 = sub_1B0398F5C;
  v54 = sub_1B0398F5C;
  v55 = sub_1B0399178;
  v56 = sub_1B0398F5C;
  v57 = sub_1B0398F5C;
  v58 = sub_1B039BA94;
  v59 = sub_1B0398F5C;
  v60 = sub_1B0398F5C;
  v61 = sub_1B0399178;
  v62 = sub_1B0398F5C;
  v63 = sub_1B0398F5C;
  v64 = sub_1B03991EC;
  v65 = sub_1B0398F5C;
  v66 = sub_1B0398F5C;
  v67 = sub_1B03993BC;
  v68 = sub_1B0398F5C;
  v69 = sub_1B0398F5C;
  v70 = sub_1B039BCEC;
  v71 = sub_1B0398F5C;
  v72 = sub_1B0398F5C;
  v73 = sub_1B03991EC;
  v137 = 0;
  v136 = 0;
  v134 = 0;
  v135 = 0;
  v133 = 0;
  v132 = 0;
  v131 = 0;
  v113 = &v130;
  v130 = 0;
  v129 = 0;
  v127[0] = 0;
  v127[1] = 0;
  v123 = 0;
  v122 = 0;
  v97 = 0;
  v74 = _s6LoggerVMa_1(0);
  v75 = (*(*(v74 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v76 = &v22[-v75];
  v77 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v78 = &v22[-v77];
  v79 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v22[-v79];
  v81 = sub_1B0E439A8();
  v82 = *(v81 - 8);
  v83 = v81 - 8;
  v84 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v81);
  v85 = &v22[-v84];
  v86 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v22[-v84]);
  v87 = &v22[-v86];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2080, &qword_1B0E9B510);
  v88 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v89 = &v22[-v88];
  v90 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v97);
  v91 = &v22[-v90];
  v103 = sub_1B0E443C8();
  v101 = *(v103 - 8);
  v102 = v103 - 8;
  v95 = *(v101 + 64);
  v92 = (v95 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v108);
  v93 = &v22[-v92];
  v94 = (v95 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v12 = &v22[-v94];
  v104 = &v22[-v94];
  v96 = (v95 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v115 = &v22[-v96];
  v137 = &v22[-v96];
  v136 = v14;
  v134 = v15;
  v135 = v16;
  v133 = v17;
  v132 = v18;
  v131 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20C0, &qword_1B0E9B548);
  v130 = sub_1B0E46A48();
  v98 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection(v97);
  v20 = *(v98 + 28);
  v99 = *(v101 + 16);
  v100 = v101 + 16;
  v99(v12, v108 + v20, v103);
  v107 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  v105 = *(v101 + 8);
  v106 = v101 + 8;
  v105(v104, v103);

  v119[2] = v108;
  v119[3] = v109;
  v119[4] = v110;
  v119[5] = v111;
  v119[6] = v112;
  v119[7] = v113;
  v119[8] = v114;
  sub_1B077E63C(v107, v116, v119, v115);
  v117 = 0;
  v118 = 0;

  v99(v91, v115, v103);
  (*(v101 + 56))(v91, 0, 1, v103);
  v33 = (v109 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_cleanedUpFullMessageData);
  v34 = &v128;
  swift_beginAccess();
  sub_1B075F6A0(v91, v33);
  swift_endAccess();
  v35 = v130;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v126 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20C8, &qword_1B0E9B550);
  sub_1B07AC8FC();
  sub_1B0E45798();
  for (i = v117; ; i = v30)
  {
    v30 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20D0, &qword_1B0E9B558);
    sub_1B0E46518();
    v31 = v124;
    v32 = v125;
    if (!v124)
    {
      break;
    }

    v28 = v31;
    v29 = v32;
    v26 = v32;
    v27 = v31;
    v123 = v31;
    v122 = v32;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    *v89 = v26;
    v23 = type metadata accessor for InProgressMessageDownload.Section(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v23 - 8) + 56))(v89, 0, 1);
    v24 = &v121;
    v121 = v27;
    v25 = &v120;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2090, &qword_1B0E9B520);
    sub_1B0E44788();
    swift_endAccess();
  }

  sub_1B039E440(v127);
  v105(v115, v103);
  sub_1B039E440(&v130);
  return 1;
}

uint64_t sub_1B0773254@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6[0] = a2;
  v8 = a1;
  v17 = 0;
  v16 = 0;
  v6[2] = 0;
  v14 = type metadata accessor for InProgressMessageDownload.Section(0);
  v7 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v15 = v6 - v7;
  v9 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection(v2);
  v10 = *(v9 - 8);
  v11 = v9 - 8;
  v12 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v13 = (v6 - v12);
  v17 = v6 - v12;
  v16 = v3;
  sub_1B0760600(v3, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B07AC238(v15, v13);
    sub_1B07AC570(v13, v6[0]);
    (*(v10 + 56))(v6[0], 0, 1, v9);
    return sub_1B07AC2FC(v13);
  }

  else
  {
    sub_1B0760B84(v15);
    return (*(v10 + 56))(v6[0], 1, 1, v9);
  }
}

uint64_t sub_1B077341C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v20 = a2;
  v21 = a1;
  v26 = 0;
  memset(__b, 0, sizeof(__b));
  v23 = type metadata accessor for InProgressMessageDownload.Section(0);
  v22 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v12 - v22);
  v26 = v2;
  sub_1B0760600(v2, (&v12 - v22));
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v13 = *v24;
    v14 = v24[1];
    v17 = v24[2];
    v15 = v24[3];
    v18 = v24[4];
    v16 = v24[5];
    v19 = v24[6];
    __b[0] = v13;
    __b[1] = v14;
    __b[2] = v17;
    __b[3] = v15;
    __b[4] = v18;
    __b[5] = v16;
    __b[6] = v19;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v5 = v14;
    v6 = v15;
    v7 = v16;
    v8 = v20;
    v9 = v17;
    v10 = v18;
    v11 = v19;
    *v20 = v13;
    v8[1] = v5;
    v8[2] = v9;
    v8[3] = v6;
    v8[4] = v10;
    v8[5] = v7;
    v8[6] = v11;
  }

  else
  {
    result = sub_1B0760B84(v24);
    v4 = v20;
    *v20 = 0;
    v4[1] = 0;
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = 0;
    v4[6] = 0;
  }

  return result;
}

uint64_t *sub_1B07735E0(unsigned int a1, int a2, uint64_t a3)
{
  v304 = a3;
  v306 = a2;
  v305 = a1;
  v326 = 0;
  v325 = 0;
  v297 = 0;
  v324 = 0;
  v323 = 0;
  v322 = 0;
  v295 = 0;
  v296 = a1;
  v298 = _s6LoggerVMa_1(0);
  v300 = *(*(v298 - 8) + 64);
  MEMORY[0x1EEE9AC00](0);
  v302 = (v300 + 15) & 0xFFFFFFFFFFFFFFF0;
  v299 = &v120 - v302;
  MEMORY[0x1EEE9AC00](v4);
  v301 = &v120 - v302;
  MEMORY[0x1EEE9AC00](v5);
  v303 = &v120 - v302;
  v307 = sub_1B0E439A8();
  v308 = *(v307 - 8);
  v309 = v308;
  MEMORY[0x1EEE9AC00](v305);
  v310 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v326 = v7 & 1;
  v325 = v8;
  v324 = v9;
  v323 = v3;
  if (sub_1B0765644())
  {
    v269 = (v294 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_passAndActionID);
    v268 = v294 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_passAndActionID;
    swift_beginAccess();
    if (*v269 == 2)
    {
      LODWORD(v118) = 0;
      v117 = 295;
      LOBYTE(v116) = 2;
      sub_1B0E465A8();
      __break(1u);
    }

    v13 = v310;
    v186 = *(v268 + 4);
    swift_endAccess();
    v322 = v186;
    (*(v309 + 16))(v13, v304, v307);
    sub_1B074B69C(v304, v303);
    sub_1B074B69C(v303, v301);
    sub_1B074E41C(v303, v299);
    v14 = (v301 + *(v298 + 20));
    v182 = *v14;
    v183 = *(v14 + 1);
    v184 = *(v14 + 1);
    v185 = *(v14 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v301);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v181 = 36;
    v234 = 7;
    v15 = swift_allocObject();
    v16 = v183;
    v17 = v184;
    v18 = v185;
    v198 = v15;
    *(v15 + 16) = v182;
    *(v15 + 20) = v16;
    *(v15 + 24) = v17;
    *(v15 + 32) = v18;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v19 = swift_allocObject();
    v20 = v183;
    v21 = v184;
    v22 = v185;
    v180 = v19;
    *(v19 + 16) = v182;
    *(v19 + 20) = v20;
    *(v19 + 24) = v21;
    *(v19 + 32) = v22;

    v228 = 32;
    v233 = 32;
    v23 = swift_allocObject();
    v24 = v180;
    v211 = v23;
    *(v23 + 16) = sub_1B074E050;
    *(v23 + 24) = v24;
    sub_1B0394868();
    sub_1B0394868();

    v25 = swift_allocObject();
    v26 = v183;
    v27 = v184;
    v28 = v185;
    v29 = v25;
    v30 = v299;
    v220 = v29;
    *(v29 + 16) = v182;
    *(v29 + 20) = v26;
    *(v29 + 24) = v27;
    *(v29 + 32) = v28;
    sub_1B074B764(v30);
    v188 = 20;
    v187 = swift_allocObject();
    *(v187 + 16) = v186;

    v31 = swift_allocObject();
    v32 = v187;
    v225 = v31;
    *(v31 + 16) = sub_1B07AC984;
    *(v31 + 24) = v32;

    v189 = swift_allocObject();
    *(v189 + 16) = v306;

    v33 = swift_allocObject();
    v34 = v189;
    v235 = v33;
    *(v33 + 16) = sub_1B07AC984;
    *(v33 + 24) = v34;

    v267 = sub_1B0E43988();
    v190 = v267;
    v266 = sub_1B0E458E8();
    v191 = v266;
    v229 = 17;
    v239 = swift_allocObject();
    v192 = v239;
    v201 = 16;
    *(v239 + 16) = 16;
    v240 = swift_allocObject();
    v193 = v240;
    v209 = 4;
    *(v240 + 16) = 4;
    v35 = swift_allocObject();
    v194 = v35;
    *(v35 + 16) = sub_1B0394C30;
    v204 = 0;
    *(v35 + 24) = 0;
    v36 = swift_allocObject();
    v37 = v194;
    v241 = v36;
    v195 = v36;
    *(v36 + 16) = sub_1B0394C24;
    *(v36 + 24) = v37;
    v242 = swift_allocObject();
    v196 = v242;
    v207 = 0;
    *(v242 + 16) = 0;
    v243 = swift_allocObject();
    v197 = v243;
    *(v243 + 16) = 1;
    v38 = swift_allocObject();
    v39 = v198;
    v199 = v38;
    *(v38 + 16) = sub_1B074DFFC;
    *(v38 + 24) = v39;
    v40 = swift_allocObject();
    v41 = v199;
    v244 = v40;
    v200 = v40;
    *(v40 + 16) = sub_1B039BA88;
    *(v40 + 24) = v41;
    v245 = swift_allocObject();
    v202 = v245;
    *(v245 + 16) = v201;
    v246 = swift_allocObject();
    v203 = v246;
    *(v246 + 16) = v209;
    v42 = swift_allocObject();
    v43 = v204;
    v205 = v42;
    *(v42 + 16) = sub_1B039BB94;
    *(v42 + 24) = v43;
    v44 = swift_allocObject();
    v45 = v205;
    v247 = v44;
    v206 = v44;
    *(v44 + 16) = sub_1B0394C24;
    *(v44 + 24) = v45;
    v248 = swift_allocObject();
    v208 = v248;
    *(v248 + 16) = v207;
    v249 = swift_allocObject();
    v210 = v249;
    *(v249 + 16) = v209;
    v46 = swift_allocObject();
    v47 = v211;
    v212 = v46;
    *(v46 + 16) = sub_1B039BBA0;
    *(v46 + 24) = v47;
    v48 = swift_allocObject();
    v49 = v212;
    v250 = v48;
    v213 = v48;
    *(v48 + 16) = sub_1B039BC08;
    *(v48 + 24) = v49;
    v251 = swift_allocObject();
    v214 = v251;
    *(v251 + 16) = 112;
    v252 = swift_allocObject();
    v215 = v252;
    v231 = 8;
    *(v252 + 16) = 8;
    v238 = 24;
    v216 = swift_allocObject();
    *(v216 + 16) = 0x786F626C69616DLL;
    v50 = swift_allocObject();
    v51 = v216;
    v253 = v50;
    v217 = v50;
    *(v50 + 16) = sub_1B06BA324;
    *(v50 + 24) = v51;
    v254 = swift_allocObject();
    v218 = v254;
    *(v254 + 16) = 37;
    v255 = swift_allocObject();
    v219 = v255;
    *(v255 + 16) = v231;
    v52 = swift_allocObject();
    v53 = v220;
    v221 = v52;
    *(v52 + 16) = sub_1B074E0E4;
    *(v52 + 24) = v53;
    v54 = swift_allocObject();
    v55 = v221;
    v256 = v54;
    v222 = v54;
    *(v54 + 16) = sub_1B039BCF8;
    *(v54 + 24) = v55;
    v257 = swift_allocObject();
    v223 = v257;
    *(v257 + 16) = v228;
    v258 = swift_allocObject();
    v224 = v258;
    *(v258 + 16) = v231;
    v56 = swift_allocObject();
    v57 = v225;
    v226 = v56;
    *(v56 + 16) = sub_1B03FB220;
    *(v56 + 24) = v57;
    v58 = swift_allocObject();
    v59 = v226;
    v259 = v58;
    v227 = v58;
    *(v58 + 16) = sub_1B039BCF8;
    *(v58 + 24) = v59;
    v260 = swift_allocObject();
    v230 = v260;
    *(v260 + 16) = v228;
    v261 = swift_allocObject();
    v232 = v261;
    *(v261 + 16) = v231;
    v60 = swift_allocObject();
    v61 = v235;
    v236 = v60;
    *(v60 + 16) = sub_1B03FB220;
    *(v60 + 24) = v61;
    v62 = swift_allocObject();
    v63 = v236;
    v264 = v62;
    v237 = v62;
    *(v62 + 16) = sub_1B039BCF8;
    *(v62 + 24) = v63;
    v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v262 = sub_1B0E46A48();
    v263 = v64;

    v65 = v239;
    v66 = v263;
    *v263 = sub_1B0398F5C;
    v66[1] = v65;

    v67 = v240;
    v68 = v263;
    v263[2] = sub_1B0398F5C;
    v68[3] = v67;

    v69 = v241;
    v70 = v263;
    v263[4] = sub_1B0399178;
    v70[5] = v69;

    v71 = v242;
    v72 = v263;
    v263[6] = sub_1B0398F5C;
    v72[7] = v71;

    v73 = v243;
    v74 = v263;
    v263[8] = sub_1B0398F5C;
    v74[9] = v73;

    v75 = v244;
    v76 = v263;
    v263[10] = sub_1B039BA94;
    v76[11] = v75;

    v77 = v245;
    v78 = v263;
    v263[12] = sub_1B0398F5C;
    v78[13] = v77;

    v79 = v246;
    v80 = v263;
    v263[14] = sub_1B0398F5C;
    v80[15] = v79;

    v81 = v247;
    v82 = v263;
    v263[16] = sub_1B0399178;
    v82[17] = v81;

    v83 = v248;
    v84 = v263;
    v263[18] = sub_1B0398F5C;
    v84[19] = v83;

    v85 = v249;
    v86 = v263;
    v263[20] = sub_1B0398F5C;
    v86[21] = v85;

    v87 = v250;
    v88 = v263;
    v263[22] = sub_1B03991EC;
    v88[23] = v87;

    v89 = v251;
    v90 = v263;
    v263[24] = sub_1B0398F5C;
    v90[25] = v89;

    v91 = v252;
    v92 = v263;
    v263[26] = sub_1B0398F5C;
    v92[27] = v91;

    v93 = v253;
    v94 = v263;
    v263[28] = sub_1B03993BC;
    v94[29] = v93;

    v95 = v254;
    v96 = v263;
    v263[30] = sub_1B0398F5C;
    v96[31] = v95;

    v97 = v255;
    v98 = v263;
    v263[32] = sub_1B0398F5C;
    v98[33] = v97;

    v99 = v256;
    v100 = v263;
    v263[34] = sub_1B039BCEC;
    v100[35] = v99;

    v101 = v257;
    v102 = v263;
    v263[36] = sub_1B0398F5C;
    v102[37] = v101;

    v103 = v258;
    v104 = v263;
    v263[38] = sub_1B0398F5C;
    v104[39] = v103;

    v105 = v259;
    v106 = v263;
    v263[40] = sub_1B039BCEC;
    v106[41] = v105;

    v107 = v260;
    v108 = v263;
    v263[42] = sub_1B0398F5C;
    v108[43] = v107;

    v109 = v261;
    v110 = v263;
    v263[44] = sub_1B0398F5C;
    v110[45] = v109;

    v111 = v263;
    v112 = v264;
    v263[46] = sub_1B039BCEC;
    v111[47] = v112;
    sub_1B0394964();

    if (os_log_type_enabled(v267, v266))
    {
      v113 = v295;
      v173 = sub_1B0E45D78();
      v170 = v173;
      v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v174 = sub_1B03949A8(0, v171, v171);
      v172 = v174;
      v175 = 3;
      v176 = sub_1B03949A8(3, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v321 = v173;
      v320 = v174;
      v319 = v176;
      v177 = &v321;
      sub_1B0394A48(v175, &v321);
      sub_1B0394A48(8, v177);
      v317 = sub_1B0398F5C;
      v318 = v192;
      sub_1B03949FC(&v317, v177, &v320, &v319);
      v178 = v113;
      v179 = v113;
      if (v113)
      {
        v168 = 0;

        __break(1u);
      }

      else
      {
        v317 = sub_1B0398F5C;
        v318 = v193;
        sub_1B03949FC(&v317, &v321, &v320, &v319);
        v166 = 0;
        v167 = 0;
        v317 = sub_1B0399178;
        v318 = v195;
        sub_1B03949FC(&v317, &v321, &v320, &v319);
        v164 = 0;
        v165 = 0;
        v317 = sub_1B0398F5C;
        v318 = v196;
        sub_1B03949FC(&v317, &v321, &v320, &v319);
        v162 = 0;
        v163 = 0;
        v317 = sub_1B0398F5C;
        v318 = v197;
        sub_1B03949FC(&v317, &v321, &v320, &v319);
        v160 = 0;
        v161 = 0;
        v317 = sub_1B039BA94;
        v318 = v200;
        sub_1B03949FC(&v317, &v321, &v320, &v319);
        v158 = 0;
        v159 = 0;
        v317 = sub_1B0398F5C;
        v318 = v202;
        sub_1B03949FC(&v317, &v321, &v320, &v319);
        v156 = 0;
        v157 = 0;
        v317 = sub_1B0398F5C;
        v318 = v203;
        sub_1B03949FC(&v317, &v321, &v320, &v319);
        v154 = 0;
        v155 = 0;
        v317 = sub_1B0399178;
        v318 = v206;
        sub_1B03949FC(&v317, &v321, &v320, &v319);
        v152 = 0;
        v153 = 0;
        v317 = sub_1B0398F5C;
        v318 = v208;
        sub_1B03949FC(&v317, &v321, &v320, &v319);
        v150 = 0;
        v151 = 0;
        v317 = sub_1B0398F5C;
        v318 = v210;
        sub_1B03949FC(&v317, &v321, &v320, &v319);
        v148 = 0;
        v149 = 0;
        v317 = sub_1B03991EC;
        v318 = v213;
        sub_1B03949FC(&v317, &v321, &v320, &v319);
        v146 = 0;
        v147 = 0;
        v317 = sub_1B0398F5C;
        v318 = v214;
        sub_1B03949FC(&v317, &v321, &v320, &v319);
        v144 = 0;
        v145 = 0;
        v317 = sub_1B0398F5C;
        v318 = v215;
        sub_1B03949FC(&v317, &v321, &v320, &v319);
        v142 = 0;
        v143 = 0;
        v317 = sub_1B03993BC;
        v318 = v217;
        sub_1B03949FC(&v317, &v321, &v320, &v319);
        v140 = 0;
        v141 = 0;
        v317 = sub_1B0398F5C;
        v318 = v218;
        sub_1B03949FC(&v317, &v321, &v320, &v319);
        v138 = 0;
        v139 = 0;
        v317 = sub_1B0398F5C;
        v318 = v219;
        sub_1B03949FC(&v317, &v321, &v320, &v319);
        v136 = 0;
        v137 = 0;
        v317 = sub_1B039BCEC;
        v318 = v222;
        sub_1B03949FC(&v317, &v321, &v320, &v319);
        v134 = 0;
        v135 = 0;
        v317 = sub_1B0398F5C;
        v318 = v223;
        sub_1B03949FC(&v317, &v321, &v320, &v319);
        v132 = 0;
        v133 = 0;
        v317 = sub_1B0398F5C;
        v318 = v224;
        sub_1B03949FC(&v317, &v321, &v320, &v319);
        v130 = 0;
        v131 = 0;
        v317 = sub_1B039BCEC;
        v318 = v227;
        sub_1B03949FC(&v317, &v321, &v320, &v319);
        v128 = 0;
        v129 = 0;
        v317 = sub_1B0398F5C;
        v318 = v230;
        sub_1B03949FC(&v317, &v321, &v320, &v319);
        v126 = 0;
        v127 = 0;
        v317 = sub_1B0398F5C;
        v318 = v232;
        sub_1B03949FC(&v317, &v321, &v320, &v319);
        v124 = 0;
        v125 = 0;
        v317 = sub_1B039BCEC;
        v318 = v237;
        sub_1B03949FC(&v317, &v321, &v320, &v319);
        v122 = 0;
        v123 = 0;
        _os_log_impl(&dword_1B0389000, v190, v191, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] In-progress download already has action ID %s while trying to store %s", v170, 0x3Fu);
        sub_1B03998A8(v172, 0, v171);
        sub_1B03998A8(v176, 3, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v169 = v122;
      }
    }

    else
    {
      v114 = v295;

      v169 = v114;
    }

    v121 = v169;

    (*(v309 + 8))(v310, v307);
    return v121;
  }

  v10 = v295;
  v283 = (v294 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections);
  v287 = 32;
  v284 = v316;
  swift_beginAccess();
  v285 = *v283;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v315 = v285;
  v286 = &v120;
  MEMORY[0x1EEE9AC00](&v120);
  v288 = &v120;
  MEMORY[0x1EEE9AC00](&v120);
  v289 = &v116;
  v118 = sub_1B07ACA04;
  v119 = v11;
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2090, &qword_1B0E9B520);
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2078, &qword_1B0E9B508);
  sub_1B07ACA38();
  v12 = sub_1B0E44F58();
  v292 = v10;
  v293 = v12;
  if (!v10)
  {
    v270 = v293;
    sub_1B039E440(&v315);
    v314 = v270;
    v278 = 0;
    v271 = type metadata accessor for InProgressMessageDownload.Section(0);
    v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20D8, &unk_1B0E9B560);
    v273 = sub_1B07167A8();
    sub_1B07ACAC0();
    v275 = sub_1B0E445E8();
    v274 = (v294 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections);
    v277 = 33;
    v276 = v313;
    swift_beginAccess();
    *v274 = v275;

    swift_endAccess();
    v312 = sub_1B07677D8(v296 & 1, v306);
    v280 = v312 | (HIDWORD(v312) << 32);
    v279 = (v294 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_passAndActionID);
    v281 = v311;
    swift_beginAccess();
    *v279 = v280;
    swift_endAccess();
    return v292;
  }

  result = v286;
  __break(1u);
  return result;
}

uint64_t sub_1B0775DB8@<X0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v358 = a4;
  v446 = a1;
  v448 = a2;
  v447 = a3;
  v359 = sub_1B074E050;
  v360 = sub_1B07AD09C;
  v361 = sub_1B0394C30;
  v362 = sub_1B0394C24;
  v363 = sub_1B074DFFC;
  v364 = sub_1B039BA88;
  v365 = sub_1B039BB94;
  v366 = sub_1B0394C24;
  v367 = sub_1B039BBA0;
  v368 = sub_1B039BC08;
  v369 = 0x786F626C69616DLL;
  v370 = sub_1B06BA324;
  v371 = sub_1B074E0E4;
  v372 = sub_1B039BCF8;
  v373 = sub_1B07AD0A4;
  v374 = sub_1B039BCF8;
  v375 = sub_1B0398F5C;
  v376 = sub_1B0398F5C;
  v377 = sub_1B0399178;
  v378 = sub_1B0398F5C;
  v379 = sub_1B0398F5C;
  v380 = sub_1B039BA94;
  v381 = sub_1B0398F5C;
  v382 = sub_1B0398F5C;
  v383 = sub_1B0399178;
  v384 = sub_1B0398F5C;
  v385 = sub_1B0398F5C;
  v386 = sub_1B03991EC;
  v387 = sub_1B0398F5C;
  v388 = sub_1B0398F5C;
  v389 = sub_1B03993BC;
  v390 = sub_1B0398F5C;
  v391 = sub_1B0398F5C;
  v392 = sub_1B039BCEC;
  v393 = sub_1B0398F5C;
  v394 = sub_1B0398F5C;
  v395 = sub_1B039BCEC;
  v396 = sub_1B074E050;
  v397 = sub_1B07AD09C;
  v398 = sub_1B0394C24;
  v399 = sub_1B074DFFC;
  v400 = sub_1B039BA88;
  v401 = sub_1B0394C24;
  v402 = sub_1B039BBA0;
  v403 = sub_1B039BC08;
  v404 = sub_1B06BA324;
  v405 = sub_1B074E0E4;
  v406 = sub_1B039BCF8;
  v407 = sub_1B07AD0A4;
  v408 = sub_1B039BCF8;
  v409 = sub_1B0398F5C;
  v410 = sub_1B0398F5C;
  v411 = sub_1B0399178;
  v412 = sub_1B0398F5C;
  v413 = sub_1B0398F5C;
  v414 = sub_1B039BA94;
  v415 = sub_1B0398F5C;
  v416 = sub_1B0398F5C;
  v417 = sub_1B0399178;
  v418 = sub_1B0398F5C;
  v419 = sub_1B0398F5C;
  v420 = sub_1B03991EC;
  v421 = sub_1B0398F5C;
  v422 = sub_1B0398F5C;
  v423 = sub_1B03993BC;
  v424 = sub_1B0398F5C;
  v425 = sub_1B0398F5C;
  v426 = sub_1B039BCEC;
  v427 = sub_1B0398F5C;
  v428 = sub_1B0398F5C;
  v429 = sub_1B039BCEC;
  v466 = 0;
  v465 = 0;
  v464 = 0;
  v430 = 0;
  v458 = 0;
  v438 = 0;
  v431 = _s6LoggerVMa_1(0);
  v432 = (*(*(v431 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v433 = &v194 - v432;
  v434 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v435 = &v194 - v434;
  v436 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v437 = &v194 - v436;
  v439 = sub_1B0E439A8();
  v440 = *(v439 - 8);
  v441 = v439 - 8;
  v442 = (*(v440 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v438);
  v443 = &v194 - v442;
  v444 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v445 = &v194 - v444;
  v450 = type metadata accessor for InProgressMessageDownload.Section(v10);
  v449 = (*(*(v450 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v448);
  v451 = (&v194 - v449);
  v466 = v11;
  v465 = v12;
  v464 = v13;
  sub_1B0760600(v12, (&v194 - v449));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B07AC2FC(v451);
      goto LABEL_20;
    }

    if (EnumCaseMultiPayload != 2)
    {
      v196 = v451[2];
      v197 = v451[4];
      v198 = v451[6];

LABEL_20:
      v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2078, &qword_1B0E9B508);
      v194 = (v358 + *(v195 + 48));
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v192 = v448;
      v193 = v194;
      *v358 = v446;
      sub_1B0760600(v192, v193);
      return (*(*(v195 - 8) + 56))(v358, 0, 1);
    }

    v357 = *v451;
    v458 = v357;
    if ((sub_1B0759C14() & 1) == 0)
    {
      (*(v440 + 16))(v445, v447, v439);
      sub_1B074B69C(v447, v437);
      sub_1B074B69C(v437, v435);
      sub_1B074E41C(v437, v433);
      v14 = (v435 + *(v431 + 20));
      v308 = *v14;
      v309 = *(v14 + 1);
      v310 = *(v14 + 1);
      v311 = *(v14 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v435);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v307 = 36;
      v328 = 7;
      v15 = swift_allocObject();
      v16 = v309;
      v17 = v310;
      v18 = v311;
      v314 = v15;
      *(v15 + 16) = v308;
      *(v15 + 20) = v16;
      *(v15 + 24) = v17;
      *(v15 + 32) = v18;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v19 = swift_allocObject();
      v20 = v309;
      v21 = v310;
      v22 = v311;
      v306 = v19;
      *(v19 + 16) = v308;
      *(v19 + 20) = v20;
      *(v19 + 24) = v21;
      *(v19 + 32) = v22;

      v327 = 32;
      v23 = swift_allocObject();
      v24 = v306;
      v319 = v23;
      *(v23 + 16) = v359;
      *(v23 + 24) = v24;
      sub_1B0394868();
      sub_1B0394868();

      v25 = swift_allocObject();
      v26 = v309;
      v27 = v310;
      v28 = v311;
      v29 = v25;
      v30 = v433;
      v323 = v29;
      *(v29 + 16) = v308;
      *(v29 + 20) = v26;
      *(v29 + 24) = v27;
      *(v29 + 32) = v28;
      sub_1B074B764(v30);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v321 = 24;
      v312 = swift_allocObject();
      *(v312 + 16) = v446;

      v31 = swift_allocObject();
      v32 = v312;
      v329 = v31;
      *(v31 + 16) = v360;
      *(v31 + 24) = v32;

      v355 = sub_1B0E43988();
      v356 = sub_1B0E458E8();
      v325 = 17;
      v331 = swift_allocObject();
      v316 = 16;
      *(v331 + 16) = 16;
      v332 = swift_allocObject();
      v318 = 4;
      *(v332 + 16) = 4;
      v33 = swift_allocObject();
      v313 = v33;
      *(v33 + 16) = v361;
      *(v33 + 24) = 0;
      v34 = swift_allocObject();
      v35 = v313;
      v333 = v34;
      *(v34 + 16) = v362;
      *(v34 + 24) = v35;
      v334 = swift_allocObject();
      *(v334 + 16) = 0;
      v335 = swift_allocObject();
      *(v335 + 16) = 1;
      v36 = swift_allocObject();
      v37 = v314;
      v315 = v36;
      *(v36 + 16) = v363;
      *(v36 + 24) = v37;
      v38 = swift_allocObject();
      v39 = v315;
      v336 = v38;
      *(v38 + 16) = v364;
      *(v38 + 24) = v39;
      v337 = swift_allocObject();
      *(v337 + 16) = v316;
      v338 = swift_allocObject();
      *(v338 + 16) = v318;
      v40 = swift_allocObject();
      v317 = v40;
      *(v40 + 16) = v365;
      *(v40 + 24) = 0;
      v41 = swift_allocObject();
      v42 = v317;
      v339 = v41;
      *(v41 + 16) = v366;
      *(v41 + 24) = v42;
      v340 = swift_allocObject();
      *(v340 + 16) = 0;
      v341 = swift_allocObject();
      *(v341 + 16) = v318;
      v43 = swift_allocObject();
      v44 = v319;
      v320 = v43;
      *(v43 + 16) = v367;
      *(v43 + 24) = v44;
      v45 = swift_allocObject();
      v46 = v320;
      v342 = v45;
      *(v45 + 16) = v368;
      *(v45 + 24) = v46;
      v343 = swift_allocObject();
      *(v343 + 16) = 112;
      v344 = swift_allocObject();
      v326 = 8;
      *(v344 + 16) = 8;
      v322 = swift_allocObject();
      *(v322 + 16) = v369;
      v47 = swift_allocObject();
      v48 = v322;
      v345 = v47;
      *(v47 + 16) = v370;
      *(v47 + 24) = v48;
      v346 = swift_allocObject();
      *(v346 + 16) = 37;
      v347 = swift_allocObject();
      *(v347 + 16) = v326;
      v49 = swift_allocObject();
      v50 = v323;
      v324 = v49;
      *(v49 + 16) = v371;
      *(v49 + 24) = v50;
      v51 = swift_allocObject();
      v52 = v324;
      v348 = v51;
      *(v51 + 16) = v372;
      *(v51 + 24) = v52;
      v349 = swift_allocObject();
      *(v349 + 16) = 34;
      v350 = swift_allocObject();
      *(v350 + 16) = v326;
      v53 = swift_allocObject();
      v54 = v329;
      v330 = v53;
      *(v53 + 16) = v373;
      *(v53 + 24) = v54;
      v55 = swift_allocObject();
      v56 = v330;
      v352 = v55;
      *(v55 + 16) = v374;
      *(v55 + 24) = v56;
      v354 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v351 = sub_1B0E46A48();
      v353 = v57;

      v58 = v331;
      v59 = v353;
      *v353 = v375;
      v59[1] = v58;

      v60 = v332;
      v61 = v353;
      v353[2] = v376;
      v61[3] = v60;

      v62 = v333;
      v63 = v353;
      v353[4] = v377;
      v63[5] = v62;

      v64 = v334;
      v65 = v353;
      v353[6] = v378;
      v65[7] = v64;

      v66 = v335;
      v67 = v353;
      v353[8] = v379;
      v67[9] = v66;

      v68 = v336;
      v69 = v353;
      v353[10] = v380;
      v69[11] = v68;

      v70 = v337;
      v71 = v353;
      v353[12] = v381;
      v71[13] = v70;

      v72 = v338;
      v73 = v353;
      v353[14] = v382;
      v73[15] = v72;

      v74 = v339;
      v75 = v353;
      v353[16] = v383;
      v75[17] = v74;

      v76 = v340;
      v77 = v353;
      v353[18] = v384;
      v77[19] = v76;

      v78 = v341;
      v79 = v353;
      v353[20] = v385;
      v79[21] = v78;

      v80 = v342;
      v81 = v353;
      v353[22] = v386;
      v81[23] = v80;

      v82 = v343;
      v83 = v353;
      v353[24] = v387;
      v83[25] = v82;

      v84 = v344;
      v85 = v353;
      v353[26] = v388;
      v85[27] = v84;

      v86 = v345;
      v87 = v353;
      v353[28] = v389;
      v87[29] = v86;

      v88 = v346;
      v89 = v353;
      v353[30] = v390;
      v89[31] = v88;

      v90 = v347;
      v91 = v353;
      v353[32] = v391;
      v91[33] = v90;

      v92 = v348;
      v93 = v353;
      v353[34] = v392;
      v93[35] = v92;

      v94 = v349;
      v95 = v353;
      v353[36] = v393;
      v95[37] = v94;

      v96 = v350;
      v97 = v353;
      v353[38] = v394;
      v97[39] = v96;

      v98 = v352;
      v99 = v353;
      v353[40] = v395;
      v99[41] = v98;
      sub_1B0394964();

      if (os_log_type_enabled(v355, v356))
      {
        v100 = v430;
        v299 = sub_1B0E45D78();
        v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v300 = sub_1B03949A8(0, v298, v298);
        v301 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v302 = &v457;
        v457 = v299;
        v303 = &v456;
        v456 = v300;
        v304 = &v455;
        v455 = v301;
        sub_1B0394A48(3, &v457);
        sub_1B0394A48(7, v302);
        v453 = v375;
        v454 = v331;
        sub_1B03949FC(&v453, v302, v303, v304);
        v305 = v100;
        if (v100)
        {

          __break(1u);
        }

        else
        {
          v453 = v376;
          v454 = v332;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          v297 = 0;
          v453 = v377;
          v454 = v333;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          v296 = 0;
          v453 = v378;
          v454 = v334;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          v295 = 0;
          v453 = v379;
          v454 = v335;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          v294 = 0;
          v453 = v380;
          v454 = v336;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          v293 = 0;
          v453 = v381;
          v454 = v337;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          v292 = 0;
          v453 = v382;
          v454 = v338;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          v291 = 0;
          v453 = v383;
          v454 = v339;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          v290 = 0;
          v453 = v384;
          v454 = v340;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          v289 = 0;
          v453 = v385;
          v454 = v341;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          v288 = 0;
          v453 = v386;
          v454 = v342;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          v287 = 0;
          v453 = v387;
          v454 = v343;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          v286 = 0;
          v453 = v388;
          v454 = v344;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          v285 = 0;
          v453 = v389;
          v454 = v345;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          v284 = 0;
          v453 = v390;
          v454 = v346;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          v283 = 0;
          v453 = v391;
          v454 = v347;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          v282 = 0;
          v453 = v392;
          v454 = v348;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          v281 = 0;
          v453 = v393;
          v454 = v349;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          v280 = 0;
          v453 = v394;
          v454 = v350;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          v279 = 0;
          v453 = v395;
          v454 = v352;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          _os_log_impl(&dword_1B0389000, v355, v356, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Did not receive all data for attachment section '[%{public}s]'. Failing.", v299, 0x35u);
          sub_1B03998A8(v300, 0, v298);
          sub_1B03998A8(v301, 2, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v355);
      (*(v440 + 8))(v445, v439);
    }

    v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2078, &qword_1B0E9B508);
    v277 = (v358 + *(v278 + 48));
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v101 = v448;
    v102 = v277;
    *v358 = v446;
    sub_1B0760600(v101, v102);
    (*(*(v278 - 8) + 56))(v358, 0, 1);
  }

  else
  {
    (*(v440 + 16))(v443, v447, v439);
    sub_1B074B69C(v447, v437);
    sub_1B074B69C(v437, v435);
    sub_1B074E41C(v437, v433);
    v104 = (v435 + *(v431 + 20));
    v228 = *v104;
    v229 = *(v104 + 1);
    v230 = *(v104 + 1);
    v231 = *(v104 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v435);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v227 = 36;
    v248 = 7;
    v105 = swift_allocObject();
    v106 = v229;
    v107 = v230;
    v108 = v231;
    v234 = v105;
    *(v105 + 16) = v228;
    *(v105 + 20) = v106;
    *(v105 + 24) = v107;
    *(v105 + 32) = v108;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v109 = swift_allocObject();
    v110 = v229;
    v111 = v230;
    v112 = v231;
    v226 = v109;
    *(v109 + 16) = v228;
    *(v109 + 20) = v110;
    *(v109 + 24) = v111;
    *(v109 + 32) = v112;

    v247 = 32;
    v113 = swift_allocObject();
    v114 = v226;
    v239 = v113;
    *(v113 + 16) = v396;
    *(v113 + 24) = v114;
    sub_1B0394868();
    sub_1B0394868();

    v115 = swift_allocObject();
    v116 = v229;
    v117 = v230;
    v118 = v231;
    v119 = v115;
    v120 = v433;
    v243 = v119;
    *(v119 + 16) = v228;
    *(v119 + 20) = v116;
    *(v119 + 24) = v117;
    *(v119 + 32) = v118;
    sub_1B074B764(v120);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v241 = 24;
    v232 = swift_allocObject();
    *(v232 + 16) = v446;

    v121 = swift_allocObject();
    v122 = v232;
    v249 = v121;
    *(v121 + 16) = v397;
    *(v121 + 24) = v122;

    v275 = sub_1B0E43988();
    v276 = sub_1B0E458E8();
    v245 = 17;
    v251 = swift_allocObject();
    v236 = 16;
    *(v251 + 16) = 16;
    v252 = swift_allocObject();
    v238 = 4;
    *(v252 + 16) = 4;
    v123 = swift_allocObject();
    v233 = v123;
    *(v123 + 16) = v361;
    *(v123 + 24) = 0;
    v124 = swift_allocObject();
    v125 = v233;
    v253 = v124;
    *(v124 + 16) = v398;
    *(v124 + 24) = v125;
    v254 = swift_allocObject();
    *(v254 + 16) = 0;
    v255 = swift_allocObject();
    *(v255 + 16) = 1;
    v126 = swift_allocObject();
    v127 = v234;
    v235 = v126;
    *(v126 + 16) = v399;
    *(v126 + 24) = v127;
    v128 = swift_allocObject();
    v129 = v235;
    v256 = v128;
    *(v128 + 16) = v400;
    *(v128 + 24) = v129;
    v257 = swift_allocObject();
    *(v257 + 16) = v236;
    v258 = swift_allocObject();
    *(v258 + 16) = v238;
    v130 = swift_allocObject();
    v237 = v130;
    *(v130 + 16) = v365;
    *(v130 + 24) = 0;
    v131 = swift_allocObject();
    v132 = v237;
    v259 = v131;
    *(v131 + 16) = v401;
    *(v131 + 24) = v132;
    v260 = swift_allocObject();
    *(v260 + 16) = 0;
    v261 = swift_allocObject();
    *(v261 + 16) = v238;
    v133 = swift_allocObject();
    v134 = v239;
    v240 = v133;
    *(v133 + 16) = v402;
    *(v133 + 24) = v134;
    v135 = swift_allocObject();
    v136 = v240;
    v262 = v135;
    *(v135 + 16) = v403;
    *(v135 + 24) = v136;
    v263 = swift_allocObject();
    *(v263 + 16) = 112;
    v264 = swift_allocObject();
    v246 = 8;
    *(v264 + 16) = 8;
    v242 = swift_allocObject();
    *(v242 + 16) = v369;
    v137 = swift_allocObject();
    v138 = v242;
    v265 = v137;
    *(v137 + 16) = v404;
    *(v137 + 24) = v138;
    v266 = swift_allocObject();
    *(v266 + 16) = 37;
    v267 = swift_allocObject();
    *(v267 + 16) = v246;
    v139 = swift_allocObject();
    v140 = v243;
    v244 = v139;
    *(v139 + 16) = v405;
    *(v139 + 24) = v140;
    v141 = swift_allocObject();
    v142 = v244;
    v268 = v141;
    *(v141 + 16) = v406;
    *(v141 + 24) = v142;
    v269 = swift_allocObject();
    *(v269 + 16) = 34;
    v270 = swift_allocObject();
    *(v270 + 16) = v246;
    v143 = swift_allocObject();
    v144 = v249;
    v250 = v143;
    *(v143 + 16) = v407;
    *(v143 + 24) = v144;
    v145 = swift_allocObject();
    v146 = v250;
    v272 = v145;
    *(v145 + 16) = v408;
    *(v145 + 24) = v146;
    v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v271 = sub_1B0E46A48();
    v273 = v147;

    v148 = v251;
    v149 = v273;
    *v273 = v409;
    v149[1] = v148;

    v150 = v252;
    v151 = v273;
    v273[2] = v410;
    v151[3] = v150;

    v152 = v253;
    v153 = v273;
    v273[4] = v411;
    v153[5] = v152;

    v154 = v254;
    v155 = v273;
    v273[6] = v412;
    v155[7] = v154;

    v156 = v255;
    v157 = v273;
    v273[8] = v413;
    v157[9] = v156;

    v158 = v256;
    v159 = v273;
    v273[10] = v414;
    v159[11] = v158;

    v160 = v257;
    v161 = v273;
    v273[12] = v415;
    v161[13] = v160;

    v162 = v258;
    v163 = v273;
    v273[14] = v416;
    v163[15] = v162;

    v164 = v259;
    v165 = v273;
    v273[16] = v417;
    v165[17] = v164;

    v166 = v260;
    v167 = v273;
    v273[18] = v418;
    v167[19] = v166;

    v168 = v261;
    v169 = v273;
    v273[20] = v419;
    v169[21] = v168;

    v170 = v262;
    v171 = v273;
    v273[22] = v420;
    v171[23] = v170;

    v172 = v263;
    v173 = v273;
    v273[24] = v421;
    v173[25] = v172;

    v174 = v264;
    v175 = v273;
    v273[26] = v422;
    v175[27] = v174;

    v176 = v265;
    v177 = v273;
    v273[28] = v423;
    v177[29] = v176;

    v178 = v266;
    v179 = v273;
    v273[30] = v424;
    v179[31] = v178;

    v180 = v267;
    v181 = v273;
    v273[32] = v425;
    v181[33] = v180;

    v182 = v268;
    v183 = v273;
    v273[34] = v426;
    v183[35] = v182;

    v184 = v269;
    v185 = v273;
    v273[36] = v427;
    v185[37] = v184;

    v186 = v270;
    v187 = v273;
    v273[38] = v428;
    v187[39] = v186;

    v188 = v272;
    v189 = v273;
    v273[40] = v429;
    v189[41] = v188;
    sub_1B0394964();

    if (os_log_type_enabled(v275, v276))
    {
      v190 = v430;
      v219 = sub_1B0E45D78();
      v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v220 = sub_1B03949A8(0, v218, v218);
      v221 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v222 = &v463;
      v463 = v219;
      v223 = &v462;
      v462 = v220;
      v224 = &v461;
      v461 = v221;
      sub_1B0394A48(3, &v463);
      sub_1B0394A48(7, v222);
      v459 = v409;
      v460 = v251;
      sub_1B03949FC(&v459, v222, v223, v224);
      v225 = v190;
      if (v190)
      {

        __break(1u);
      }

      else
      {
        v459 = v410;
        v460 = v252;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        v217 = 0;
        v459 = v411;
        v460 = v253;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        v216 = 0;
        v459 = v412;
        v460 = v254;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        v215 = 0;
        v459 = v413;
        v460 = v255;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        v214 = 0;
        v459 = v414;
        v460 = v256;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        v213 = 0;
        v459 = v415;
        v460 = v257;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        v212 = 0;
        v459 = v416;
        v460 = v258;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        v211 = 0;
        v459 = v417;
        v460 = v259;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        v210 = 0;
        v459 = v418;
        v460 = v260;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        v209 = 0;
        v459 = v419;
        v460 = v261;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        v208 = 0;
        v459 = v420;
        v460 = v262;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        v207 = 0;
        v459 = v421;
        v460 = v263;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        v206 = 0;
        v459 = v422;
        v460 = v264;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        v205 = 0;
        v459 = v423;
        v460 = v265;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        v204 = 0;
        v459 = v424;
        v460 = v266;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        v203 = 0;
        v459 = v425;
        v460 = v267;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        v202 = 0;
        v459 = v426;
        v460 = v268;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        v201 = 0;
        v459 = v427;
        v460 = v269;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        v200 = 0;
        v459 = v428;
        v460 = v270;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        v199 = 0;
        v459 = v429;
        v460 = v272;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        _os_log_impl(&dword_1B0389000, v275, v276, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Did not receive all data for section '[%{public}s]'. Failing.", v219, 0x35u);
        sub_1B03998A8(v220, 0, v218);
        sub_1B03998A8(v221, 2, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v275);
    (*(v440 + 8))(v443, v439);
    v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2078, &qword_1B0E9B508);
    (*(*(v191 - 8) + 56))(v358, 1);
    return sub_1B07AE888(v451);
  }
}

uint64_t sub_1B0779AAC(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v6 = *a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20B0, &qword_1B0E9B538);
  return a2(v6, &a1[*(v2 + 48)]);
}

uint64_t sub_1B0779B28(uint64_t a1)
{
  v5 = a1;
  v10 = 0;
  v7 = type metadata accessor for InProgressMessageDownload.Section(0);
  v6 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v3 - v6);
  v10 = v1;
  sub_1B0760600(v1, (v3 - v6));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B07AC2FC(v8);
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload != 2)
    {
      v3[1] = v8[2];
      v3[2] = v8[4];
      v3[3] = v8[6];

LABEL_9:
      v4 = 1;
      return v4 & 1;
    }
  }

  else
  {
    sub_1B07AE888(v8);
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1B0779C84(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v43 = a1;
  v44 = a2;
  v33 = a3;
  v37 = a4;
  v38 = a5;
  v39 = a6;
  v40 = a7;
  v41 = a8;
  v45 = a9;
  v42 = sub_1B07B4794;
  v61 = 0;
  v62 = 0;
  v60 = 0;
  v59 = 0;
  v57 = 0;
  v58 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v25 = 0;
  v34 = sub_1B0E443C8();
  v31 = *(v34 - 8);
  v32 = v34 - 8;
  v24 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v35 = v23 - v24;
  v26 = type metadata accessor for Message(v9);
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  v29 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v10 = v23 - v29;
  v30 = v23 - v29;
  v61 = v43;
  v62 = v11;
  v60 = v12;
  v59 = v13;
  v57 = v14;
  v58 = v15;
  v56 = v16;
  v55 = v17;
  v54 = v18;
  v20 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection(v19);
  (*(v31 + 16))(v35, v33 + *(v20 + 28), v34);
  Message.init(_:)(v35, v10);
  v21 = v36;

  v49 = v37;
  v50 = v38;
  v51 = v39;
  v52 = v40;
  v53 = v41;
  Message.extractAttachments(lineEnding:writeAttachment:writeWithoutAttachments:cache:)(2, v42, v48, v43, v44, v45);
  v46 = v21;
  v47 = v21;
  if (v21)
  {
    v23[1] = v47;
  }

  return (*(v27 + 8))(v30, v26);
}

void sub_1B0779FD8(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a1;
  v23 = a3;
  v24 = a4;
  v26 = a5;
  v15 = a6;
  v38 = 0;
  v37 = 0;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  v33 = 0;
  v31 = 0;
  v16 = sub_1B0E443C8();
  v17 = *(v16 - 8);
  v18 = v16 - 8;
  v19 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v20 = &v12 - v19;
  v38 = v7;
  v37 = a2;
  v35 = v8;
  v36 = v9;
  v34 = v10;
  v33 = v11;
  sub_1B07B47AC(v7, v32);
  v25 = v39;
  sub_1B077A2F0(v21, v39);
  v22 = *(a2 + 16);
  v27 = *v21;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v28 = sub_1B077A6CC(v22, v27, v23, v24, v25, v26);

  if (v28)
  {
    v14 = v28;
    v13 = v28;
    v31 = v28;
    v40 = *v21;
    sub_1B074E7A8(&v40, &v30);

    v12 = v29;
    v29[0] = v40;
    v29[1] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20C8, &qword_1B0E9B550);
    sub_1B0E452E8();
    sub_1B0E44358();
    sub_1B0754C0C(v20, v26);
    (*(v17 + 8))(v20, v16);
    sub_1B0757864(v26);
  }

  sub_1B0754BBC();
}

void *sub_1B077A2F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v28 = 0u;
  v29 = 0u;
  v37 = a1;
  memcpy(__dst, (a1 + 32), 0x21uLL);
  sub_1B07ACB48(__dst, v33);
  memcpy(v32, __dst, 0x21uLL);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20E0, &qword_1B0EDE9F0);
  sub_1B03F1A20(sub_1B077E718, 0, v2, MEMORY[0x1E69E73E0], &type metadata for Media.MediaType, v18, v34);
  sub_1B07ACDC4(v32);
  v30 = v34[0];
  v31 = v34[1];
  if (*(&v34[0] + 1))
  {
    v35 = v30;
    v36 = v31;
  }

  else
  {
    topLevel = *Media.TopLevelType.text.unsafeMutableAddressor();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v3._countAndFlagsBits = sub_1B0E44838();
    v4 = Media.Subtype.init(stringLiteral:)(v3);
    v42 = Media.MediaType.init(topLevel:sub:)(topLevel, v4);
    *&v35 = v42.topLevel.stringValue._countAndFlagsBits;
    *(&v35 + 1) = v42.topLevel.stringValue._object;
    *&v36 = v42.sub.stringValue._countAndFlagsBits;
    *(&v36 + 1) = v42.sub.stringValue._object;
  }

  v11 = v35;
  v12 = v36;
  v28 = v35;
  v29 = v36;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v40 = *(a1 + 24);
  v23 = v40;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20E8, &qword_1B0E9B570);
  sub_1B03F1A20(sub_1B077FAC8, 0, v5, MEMORY[0x1E69E73E0], &type metadata for BodyStructure.Encoding, v18, &v24);
  v21 = v24;
  v22 = v25;
  if (v25)
  {
    v26 = v21;
    v27 = v22;
  }

  else
  {
    v26 = static BodyStructure.Encoding.sevenBit.getter();
    v27 = v6;
  }

  v9 = v26;
  v10 = v27;
  v7 = sub_1B0E450E8();
  sub_1B075A08C(v11, *(&v11 + 1), v12, *(&v12 + 1), v13, v14, v9, v10, v39, v7);
  memcpy(__b, v39, sizeof(__b));

  memcpy(v20, __b, sizeof(v20));
  sub_1B075CFDC(v20, v19);
  sub_1B07AD030(a1);
  sub_1B0754BBC();
  return memcpy(a2, v20, 0x48uLL);
}

void *sub_1B077A6CC(unsigned int a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v609 = a1;
  v620 = a2;
  v619 = a3;
  v618 = a4;
  v489 = a5;
  v607 = a6;
  v7 = v6;
  v608 = v7;
  v490 = sub_1B074E050;
  v491 = sub_1B07AD09C;
  v492 = sub_1B03F7AE0;
  v493 = sub_1B0394C30;
  v494 = sub_1B0394C24;
  v495 = sub_1B074DFFC;
  v496 = sub_1B039BA88;
  v497 = sub_1B039BB94;
  v498 = sub_1B0394C24;
  v499 = sub_1B039BBA0;
  v500 = sub_1B039BC08;
  v501 = 0x786F626C69616DLL;
  v502 = sub_1B06BA324;
  v503 = sub_1B074E0E4;
  v504 = sub_1B039BCF8;
  v505 = sub_1B07AD0A4;
  v506 = sub_1B039BCF8;
  v507 = sub_1B07AD0B0;
  v508 = sub_1B039BCF8;
  v509 = sub_1B07AD0C4;
  v510 = sub_1B039BCF8;
  v511 = sub_1B07AD0D8;
  v512 = sub_1B03B0DF8;
  v513 = sub_1B07AB020;
  v514 = sub_1B039BC08;
  v515 = sub_1B0398F5C;
  v516 = sub_1B0398F5C;
  v517 = sub_1B0399178;
  v518 = sub_1B0398F5C;
  v519 = sub_1B0398F5C;
  v520 = sub_1B039BA94;
  v521 = sub_1B0398F5C;
  v522 = sub_1B0398F5C;
  v523 = sub_1B0399178;
  v524 = sub_1B0398F5C;
  v525 = sub_1B0398F5C;
  v526 = sub_1B03991EC;
  v527 = sub_1B0398F5C;
  v528 = sub_1B0398F5C;
  v529 = sub_1B03993BC;
  v530 = sub_1B0398F5C;
  v531 = sub_1B0398F5C;
  v532 = sub_1B039BCEC;
  v533 = sub_1B0398F5C;
  v534 = sub_1B0398F5C;
  v535 = sub_1B039BCEC;
  v536 = sub_1B0398F5C;
  v537 = sub_1B0398F5C;
  v538 = sub_1B039BCEC;
  v539 = sub_1B0398F5C;
  v540 = sub_1B0398F5C;
  v541 = sub_1B039BCEC;
  v542 = sub_1B0398F5C;
  v543 = sub_1B0398F5C;
  v544 = sub_1B0399260;
  v545 = sub_1B0398F5C;
  v546 = sub_1B0398F5C;
  v547 = sub_1B03991EC;
  v548 = sub_1B074E050;
  v549 = sub_1B07AD09C;
  v550 = sub_1B03F7AE0;
  v551 = sub_1B0394C24;
  v552 = sub_1B074DFFC;
  v553 = sub_1B039BA88;
  v554 = sub_1B0394C24;
  v555 = sub_1B039BBA0;
  v556 = sub_1B039BC08;
  v557 = sub_1B06BA324;
  v558 = sub_1B074E0E4;
  v559 = sub_1B039BCF8;
  v560 = sub_1B07AD0A4;
  v561 = sub_1B039BCF8;
  v562 = sub_1B07AD0B0;
  v563 = sub_1B039BCF8;
  v564 = sub_1B07AD0C4;
  v565 = sub_1B039BCF8;
  v566 = sub_1B07AB020;
  v567 = sub_1B039BC08;
  v568 = sub_1B0398F5C;
  v569 = sub_1B0398F5C;
  v570 = sub_1B0399178;
  v571 = sub_1B0398F5C;
  v572 = sub_1B0398F5C;
  v573 = sub_1B039BA94;
  v574 = sub_1B0398F5C;
  v575 = sub_1B0398F5C;
  v576 = sub_1B0399178;
  v577 = sub_1B0398F5C;
  v578 = sub_1B0398F5C;
  v579 = sub_1B03991EC;
  v580 = sub_1B0398F5C;
  v581 = sub_1B0398F5C;
  v582 = sub_1B03993BC;
  v583 = sub_1B0398F5C;
  v584 = sub_1B0398F5C;
  v585 = sub_1B039BCEC;
  v586 = sub_1B0398F5C;
  v587 = sub_1B0398F5C;
  v588 = sub_1B039BCEC;
  v589 = sub_1B0398F5C;
  v590 = sub_1B0398F5C;
  v591 = sub_1B039BCEC;
  v592 = sub_1B0398F5C;
  v593 = sub_1B0398F5C;
  v594 = sub_1B039BCEC;
  v595 = sub_1B0398F5C;
  v596 = sub_1B0398F5C;
  v597 = sub_1B03991EC;
  v648 = 0;
  v647 = 0;
  v645 = 0;
  v646 = 0;
  v644 = 0;
  v643 = 0;
  v642 = 0;
  v598 = 0;
  v634 = 0;
  v632 = 0;
  v599 = 0;
  v600 = _s6LoggerVMa_1(0);
  v601 = (*(*(v600 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v602 = v286 - v601;
  v603 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v604 = v286 - v603;
  v605 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v606 = v286 - v605;
  v610 = sub_1B0E439A8();
  v611 = *(v610 - 8);
  v612 = v610 - 8;
  v614 = *(v611 + 64);
  v613 = (v614 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v609);
  v615 = v286 - v613;
  v616 = (v614 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v617 = v286 - v616;
  v648 = v14;
  v647 = v15;
  v645 = v16;
  v646 = v17;
  v644 = a5;
  v643 = v18;
  v642 = v19;
  v621 = sub_1B075A230();
  v622 = v20;
  v623 = v619(v620, v621);

  if (v623)
  {
    v488 = v623;
    v408 = v623;
    v634 = v623;
    _s26AttachmentDecoderAndWriterCMa();
    sub_1B075CFDC(v489, v633);
    MEMORY[0x1E69E5928](v408);
    v409 = sub_1B0754968(v489, v408);
    v632 = v409;
    (*(v611 + 16))(v617, v607, v610);
    sub_1B074B69C(v607, v606);
    sub_1B074B69C(v606, v604);
    sub_1B074E41C(v606, v602);
    v21 = (v604 + *(v600 + 20));
    v412 = *v21;
    v413 = *(v21 + 1);
    v414 = *(v21 + 1);
    v415 = *(v21 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v604);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v411 = 36;
    v447 = 7;
    v22 = swift_allocObject();
    v23 = v413;
    v24 = v414;
    v25 = v415;
    v424 = v22;
    *(v22 + 16) = v412;
    *(v22 + 20) = v23;
    *(v22 + 24) = v24;
    *(v22 + 32) = v25;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v26 = swift_allocObject();
    v27 = v413;
    v28 = v414;
    v29 = v415;
    v410 = v26;
    *(v26 + 16) = v412;
    *(v26 + 20) = v27;
    *(v26 + 24) = v28;
    *(v26 + 32) = v29;

    v446 = 32;
    v30 = swift_allocObject();
    v31 = v410;
    v428 = v30;
    *(v30 + 16) = v490;
    *(v30 + 24) = v31;
    sub_1B0394868();
    sub_1B0394868();

    v32 = swift_allocObject();
    v33 = v413;
    v34 = v414;
    v35 = v415;
    v36 = v32;
    v37 = v602;
    v432 = v36;
    *(v36 + 16) = v412;
    *(v36 + 20) = v33;
    *(v36 + 24) = v34;
    *(v36 + 32) = v35;
    sub_1B074B764(v37);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v430 = 24;
    v416 = swift_allocObject();
    *(v416 + 16) = v620;

    v38 = swift_allocObject();
    v39 = v416;
    v434 = v38;
    *(v38 + 16) = v491;
    *(v38 + 24) = v39;

    sub_1B075CFDC(v489, v631);
    sub_1B075CFDC(v489, v630);
    v418 = *v489;
    v419 = v489[1];
    v420 = v489[2];
    v421 = v489[3];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0754BBC();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v417 = 48;
    v40 = swift_allocObject();
    v41 = v419;
    v42 = v420;
    v43 = v421;
    v436 = v40;
    v40[2] = v418;
    v40[3] = v41;
    v40[4] = v42;
    v40[5] = v43;
    v44 = swift_allocObject();
    v45 = v419;
    v46 = v420;
    v47 = v421;
    v439 = v44;
    v44[2] = v418;
    v44[3] = v45;
    v44[4] = v46;
    v44[5] = v47;
    sub_1B0754BBC();
    sub_1B075CFDC(v489, v629);
    v442 = swift_allocObject();
    memcpy((v442 + 16), v489, 0x48uLL);
    sub_1B07575C4();

    v422 = swift_allocObject();
    *(v422 + 16) = v609;

    v48 = swift_allocObject();
    v49 = v422;
    v448 = v48;
    *(v48 + 16) = v492;
    *(v48 + 24) = v49;

    v486 = sub_1B0E43988();
    v487 = sub_1B0E458D8();
    v444 = 17;
    v450 = swift_allocObject();
    v426 = 16;
    *(v450 + 16) = 16;
    v451 = swift_allocObject();
    v445 = 4;
    *(v451 + 16) = 4;
    v50 = swift_allocObject();
    v423 = v50;
    *(v50 + 16) = v493;
    *(v50 + 24) = 0;
    v51 = swift_allocObject();
    v52 = v423;
    v452 = v51;
    *(v51 + 16) = v494;
    *(v51 + 24) = v52;
    v453 = swift_allocObject();
    *(v453 + 16) = 0;
    v454 = swift_allocObject();
    *(v454 + 16) = 1;
    v53 = swift_allocObject();
    v54 = v424;
    v425 = v53;
    *(v53 + 16) = v495;
    *(v53 + 24) = v54;
    v55 = swift_allocObject();
    v56 = v425;
    v455 = v55;
    *(v55 + 16) = v496;
    *(v55 + 24) = v56;
    v456 = swift_allocObject();
    *(v456 + 16) = v426;
    v457 = swift_allocObject();
    *(v457 + 16) = v445;
    v57 = swift_allocObject();
    v427 = v57;
    *(v57 + 16) = v497;
    *(v57 + 24) = 0;
    v58 = swift_allocObject();
    v59 = v427;
    v458 = v58;
    *(v58 + 16) = v498;
    *(v58 + 24) = v59;
    v459 = swift_allocObject();
    *(v459 + 16) = 0;
    v460 = swift_allocObject();
    *(v460 + 16) = v445;
    v60 = swift_allocObject();
    v61 = v428;
    v429 = v60;
    *(v60 + 16) = v499;
    *(v60 + 24) = v61;
    v62 = swift_allocObject();
    v63 = v429;
    v461 = v62;
    *(v62 + 16) = v500;
    *(v62 + 24) = v63;
    v462 = swift_allocObject();
    *(v462 + 16) = 112;
    v463 = swift_allocObject();
    v441 = 8;
    *(v463 + 16) = 8;
    v431 = swift_allocObject();
    *(v431 + 16) = v501;
    v64 = swift_allocObject();
    v65 = v431;
    v464 = v64;
    *(v64 + 16) = v502;
    *(v64 + 24) = v65;
    v465 = swift_allocObject();
    *(v465 + 16) = 37;
    v466 = swift_allocObject();
    *(v466 + 16) = v441;
    v66 = swift_allocObject();
    v67 = v432;
    v433 = v66;
    *(v66 + 16) = v503;
    *(v66 + 24) = v67;
    v68 = swift_allocObject();
    v69 = v433;
    v467 = v68;
    *(v68 + 16) = v504;
    *(v68 + 24) = v69;
    v468 = swift_allocObject();
    v438 = 34;
    *(v468 + 16) = 34;
    v469 = swift_allocObject();
    *(v469 + 16) = v441;
    v70 = swift_allocObject();
    v71 = v434;
    v435 = v70;
    *(v70 + 16) = v505;
    *(v70 + 24) = v71;
    v72 = swift_allocObject();
    v73 = v435;
    v470 = v72;
    *(v72 + 16) = v506;
    *(v72 + 24) = v73;
    v471 = swift_allocObject();
    *(v471 + 16) = v438;
    v472 = swift_allocObject();
    *(v472 + 16) = v441;
    v74 = swift_allocObject();
    v75 = v436;
    v437 = v74;
    *(v74 + 16) = v507;
    *(v74 + 24) = v75;
    v76 = swift_allocObject();
    v77 = v437;
    v473 = v76;
    *(v76 + 16) = v508;
    *(v76 + 24) = v77;
    v474 = swift_allocObject();
    *(v474 + 16) = v438;
    v475 = swift_allocObject();
    *(v475 + 16) = v441;
    v78 = swift_allocObject();
    v79 = v439;
    v440 = v78;
    *(v78 + 16) = v509;
    *(v78 + 24) = v79;
    v80 = swift_allocObject();
    v81 = v440;
    v476 = v80;
    *(v80 + 16) = v510;
    *(v80 + 24) = v81;
    v477 = swift_allocObject();
    *(v477 + 16) = 0;
    v478 = swift_allocObject();
    *(v478 + 16) = v441;
    v82 = swift_allocObject();
    v83 = v442;
    v443 = v82;
    *(v82 + 16) = v511;
    *(v82 + 24) = v83;
    v84 = swift_allocObject();
    v85 = v443;
    v479 = v84;
    *(v84 + 16) = v512;
    *(v84 + 24) = v85;
    v480 = swift_allocObject();
    *(v480 + 16) = 0;
    v481 = swift_allocObject();
    *(v481 + 16) = v445;
    v86 = swift_allocObject();
    v87 = v448;
    v449 = v86;
    *(v86 + 16) = v513;
    *(v86 + 24) = v87;
    v88 = swift_allocObject();
    v89 = v449;
    v483 = v88;
    *(v88 + 16) = v514;
    *(v88 + 24) = v89;
    v485 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v482 = sub_1B0E46A48();
    v484 = v90;

    v91 = v450;
    v92 = v484;
    *v484 = v515;
    v92[1] = v91;

    v93 = v451;
    v94 = v484;
    v484[2] = v516;
    v94[3] = v93;

    v95 = v452;
    v96 = v484;
    v484[4] = v517;
    v96[5] = v95;

    v97 = v453;
    v98 = v484;
    v484[6] = v518;
    v98[7] = v97;

    v99 = v454;
    v100 = v484;
    v484[8] = v519;
    v100[9] = v99;

    v101 = v455;
    v102 = v484;
    v484[10] = v520;
    v102[11] = v101;

    v103 = v456;
    v104 = v484;
    v484[12] = v521;
    v104[13] = v103;

    v105 = v457;
    v106 = v484;
    v484[14] = v522;
    v106[15] = v105;

    v107 = v458;
    v108 = v484;
    v484[16] = v523;
    v108[17] = v107;

    v109 = v459;
    v110 = v484;
    v484[18] = v524;
    v110[19] = v109;

    v111 = v460;
    v112 = v484;
    v484[20] = v525;
    v112[21] = v111;

    v113 = v461;
    v114 = v484;
    v484[22] = v526;
    v114[23] = v113;

    v115 = v462;
    v116 = v484;
    v484[24] = v527;
    v116[25] = v115;

    v117 = v463;
    v118 = v484;
    v484[26] = v528;
    v118[27] = v117;

    v119 = v464;
    v120 = v484;
    v484[28] = v529;
    v120[29] = v119;

    v121 = v465;
    v122 = v484;
    v484[30] = v530;
    v122[31] = v121;

    v123 = v466;
    v124 = v484;
    v484[32] = v531;
    v124[33] = v123;

    v125 = v467;
    v126 = v484;
    v484[34] = v532;
    v126[35] = v125;

    v127 = v468;
    v128 = v484;
    v484[36] = v533;
    v128[37] = v127;

    v129 = v469;
    v130 = v484;
    v484[38] = v534;
    v130[39] = v129;

    v131 = v470;
    v132 = v484;
    v484[40] = v535;
    v132[41] = v131;

    v133 = v471;
    v134 = v484;
    v484[42] = v536;
    v134[43] = v133;

    v135 = v472;
    v136 = v484;
    v484[44] = v537;
    v136[45] = v135;

    v137 = v473;
    v138 = v484;
    v484[46] = v538;
    v138[47] = v137;

    v139 = v474;
    v140 = v484;
    v484[48] = v539;
    v140[49] = v139;

    v141 = v475;
    v142 = v484;
    v484[50] = v540;
    v142[51] = v141;

    v143 = v476;
    v144 = v484;
    v484[52] = v541;
    v144[53] = v143;

    v145 = v477;
    v146 = v484;
    v484[54] = v542;
    v146[55] = v145;

    v147 = v478;
    v148 = v484;
    v484[56] = v543;
    v148[57] = v147;

    v149 = v479;
    v150 = v484;
    v484[58] = v544;
    v150[59] = v149;

    v151 = v480;
    v152 = v484;
    v484[60] = v545;
    v152[61] = v151;

    v153 = v481;
    v154 = v484;
    v484[62] = v546;
    v154[63] = v153;

    v155 = v483;
    v156 = v484;
    v484[64] = v547;
    v156[65] = v155;
    sub_1B0394964();

    if (os_log_type_enabled(v486, v487))
    {
      v157 = v598;
      v401 = sub_1B0E45D78();
      v400 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v402 = sub_1B03949A8(0, v400, v400);
      v403 = sub_1B03949A8(4, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v404 = &v628;
      v628 = v401;
      v405 = &v627;
      v627 = v402;
      v406 = &v626;
      v626 = v403;
      sub_1B0394A48(3, &v628);
      sub_1B0394A48(11, v404);
      v624 = v515;
      v625 = v450;
      sub_1B03949FC(&v624, v404, v405, v406);
      v407 = v157;
      if (v157)
      {

        __break(1u);
      }

      else
      {
        v624 = v516;
        v625 = v451;
        sub_1B03949FC(&v624, &v628, &v627, &v626);
        v399 = 0;
        v624 = v517;
        v625 = v452;
        sub_1B03949FC(&v624, &v628, &v627, &v626);
        v398 = 0;
        v624 = v518;
        v625 = v453;
        sub_1B03949FC(&v624, &v628, &v627, &v626);
        v397 = 0;
        v624 = v519;
        v625 = v454;
        sub_1B03949FC(&v624, &v628, &v627, &v626);
        v396 = 0;
        v624 = v520;
        v625 = v455;
        sub_1B03949FC(&v624, &v628, &v627, &v626);
        v395 = 0;
        v624 = v521;
        v625 = v456;
        sub_1B03949FC(&v624, &v628, &v627, &v626);
        v394 = 0;
        v624 = v522;
        v625 = v457;
        sub_1B03949FC(&v624, &v628, &v627, &v626);
        v393 = 0;
        v624 = v523;
        v625 = v458;
        sub_1B03949FC(&v624, &v628, &v627, &v626);
        v392 = 0;
        v624 = v524;
        v625 = v459;
        sub_1B03949FC(&v624, &v628, &v627, &v626);
        v391 = 0;
        v624 = v525;
        v625 = v460;
        sub_1B03949FC(&v624, &v628, &v627, &v626);
        v390 = 0;
        v624 = v526;
        v625 = v461;
        sub_1B03949FC(&v624, &v628, &v627, &v626);
        v389 = 0;
        v624 = v527;
        v625 = v462;
        sub_1B03949FC(&v624, &v628, &v627, &v626);
        v388 = 0;
        v624 = v528;
        v625 = v463;
        sub_1B03949FC(&v624, &v628, &v627, &v626);
        v387 = 0;
        v624 = v529;
        v625 = v464;
        sub_1B03949FC(&v624, &v628, &v627, &v626);
        v386 = 0;
        v624 = v530;
        v625 = v465;
        sub_1B03949FC(&v624, &v628, &v627, &v626);
        v385 = 0;
        v624 = v531;
        v625 = v466;
        sub_1B03949FC(&v624, &v628, &v627, &v626);
        v384 = 0;
        v624 = v532;
        v625 = v467;
        sub_1B03949FC(&v624, &v628, &v627, &v626);
        v383 = 0;
        v624 = v533;
        v625 = v468;
        sub_1B03949FC(&v624, &v628, &v627, &v626);
        v382 = 0;
        v624 = v534;
        v625 = v469;
        sub_1B03949FC(&v624, &v628, &v627, &v626);
        v381 = 0;
        v624 = v535;
        v625 = v470;
        sub_1B03949FC(&v624, &v628, &v627, &v626);
        v380 = 0;
        v624 = v536;
        v625 = v471;
        sub_1B03949FC(&v624, &v628, &v627, &v626);
        v379 = 0;
        v624 = v537;
        v625 = v472;
        sub_1B03949FC(&v624, &v628, &v627, &v626);
        v378 = 0;
        v624 = v538;
        v625 = v473;
        sub_1B03949FC(&v624, &v628, &v627, &v626);
        v377 = 0;
        v624 = v539;
        v625 = v474;
        sub_1B03949FC(&v624, &v628, &v627, &v626);
        v376 = 0;
        v624 = v540;
        v625 = v475;
        sub_1B03949FC(&v624, &v628, &v627, &v626);
        v375 = 0;
        v624 = v541;
        v625 = v476;
        sub_1B03949FC(&v624, &v628, &v627, &v626);
        v374 = 0;
        v624 = v542;
        v625 = v477;
        sub_1B03949FC(&v624, &v628, &v627, &v626);
        v373 = 0;
        v624 = v543;
        v625 = v478;
        sub_1B03949FC(&v624, &v628, &v627, &v626);
        v372 = 0;
        v624 = v544;
        v625 = v479;
        sub_1B03949FC(&v624, &v628, &v627, &v626);
        v371 = 0;
        v624 = v545;
        v625 = v480;
        sub_1B03949FC(&v624, &v628, &v627, &v626);
        v370 = 0;
        v624 = v546;
        v625 = v481;
        sub_1B03949FC(&v624, &v628, &v627, &v626);
        v369 = 0;
        v624 = v547;
        v625 = v483;
        sub_1B03949FC(&v624, &v628, &v627, &v626);
        _os_log_impl(&dword_1B0389000, v486, v487, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Did create attachment writer for attachment '[%{public}s]' %{public}s/%{public}s, byte count %{iec-bytes}ld, UID %u.", v401, 0x59u);
        sub_1B03998A8(v402, 0, v400);
        sub_1B03998A8(v403, 4, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v486);
    (*(v611 + 8))(v617, v610);
    MEMORY[0x1E69E5920](v408);
    return v409;
  }

  else
  {
    (*(v611 + 16))(v615, v607, v610);
    sub_1B074B69C(v607, v606);
    sub_1B074B69C(v606, v604);
    sub_1B074E41C(v606, v602);
    v158 = (v604 + *(v600 + 20));
    v297 = *v158;
    v298 = *(v158 + 1);
    v299 = *(v158 + 1);
    v300 = *(v158 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v604);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v296 = 36;
    v330 = 7;
    v159 = swift_allocObject();
    v160 = v298;
    v161 = v299;
    v162 = v300;
    v309 = v159;
    *(v159 + 16) = v297;
    *(v159 + 20) = v160;
    *(v159 + 24) = v161;
    *(v159 + 32) = v162;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v163 = swift_allocObject();
    v164 = v298;
    v165 = v299;
    v166 = v300;
    v295 = v163;
    *(v163 + 16) = v297;
    *(v163 + 20) = v164;
    *(v163 + 24) = v165;
    *(v163 + 32) = v166;

    v329 = 32;
    v167 = swift_allocObject();
    v168 = v295;
    v313 = v167;
    *(v167 + 16) = v548;
    *(v167 + 24) = v168;
    sub_1B0394868();
    sub_1B0394868();

    v169 = swift_allocObject();
    v170 = v298;
    v171 = v299;
    v172 = v300;
    v173 = v169;
    v174 = v602;
    v317 = v173;
    *(v173 + 16) = v297;
    *(v173 + 20) = v170;
    *(v173 + 24) = v171;
    *(v173 + 32) = v172;
    sub_1B074B764(v174);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v315 = 24;
    v301 = swift_allocObject();
    *(v301 + 16) = v620;

    v175 = swift_allocObject();
    v176 = v301;
    v319 = v175;
    *(v175 + 16) = v549;
    *(v175 + 24) = v176;

    sub_1B075CFDC(v489, v641);
    sub_1B075CFDC(v489, v640);
    v303 = *v489;
    v304 = v489[1];
    v305 = v489[2];
    v306 = v489[3];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0754BBC();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v302 = 48;
    v177 = swift_allocObject();
    v178 = v304;
    v179 = v305;
    v180 = v306;
    v321 = v177;
    v177[2] = v303;
    v177[3] = v178;
    v177[4] = v179;
    v177[5] = v180;
    v181 = swift_allocObject();
    v182 = v304;
    v183 = v305;
    v184 = v306;
    v325 = v181;
    v181[2] = v303;
    v181[3] = v182;
    v181[4] = v183;
    v181[5] = v184;
    sub_1B0754BBC();
    v307 = swift_allocObject();
    *(v307 + 16) = v609;

    v185 = swift_allocObject();
    v186 = v307;
    v331 = v185;
    *(v185 + 16) = v550;
    *(v185 + 24) = v186;

    v366 = sub_1B0E43988();
    v367 = sub_1B0E458E8();
    v327 = 17;
    v333 = swift_allocObject();
    v311 = 16;
    *(v333 + 16) = 16;
    v334 = swift_allocObject();
    v328 = 4;
    *(v334 + 16) = 4;
    v187 = swift_allocObject();
    v308 = v187;
    *(v187 + 16) = v493;
    *(v187 + 24) = 0;
    v188 = swift_allocObject();
    v189 = v308;
    v335 = v188;
    *(v188 + 16) = v551;
    *(v188 + 24) = v189;
    v336 = swift_allocObject();
    *(v336 + 16) = 0;
    v337 = swift_allocObject();
    *(v337 + 16) = 1;
    v190 = swift_allocObject();
    v191 = v309;
    v310 = v190;
    *(v190 + 16) = v552;
    *(v190 + 24) = v191;
    v192 = swift_allocObject();
    v193 = v310;
    v338 = v192;
    *(v192 + 16) = v553;
    *(v192 + 24) = v193;
    v339 = swift_allocObject();
    *(v339 + 16) = v311;
    v340 = swift_allocObject();
    *(v340 + 16) = v328;
    v194 = swift_allocObject();
    v312 = v194;
    *(v194 + 16) = v497;
    *(v194 + 24) = 0;
    v195 = swift_allocObject();
    v196 = v312;
    v341 = v195;
    *(v195 + 16) = v554;
    *(v195 + 24) = v196;
    v342 = swift_allocObject();
    *(v342 + 16) = 0;
    v343 = swift_allocObject();
    *(v343 + 16) = v328;
    v197 = swift_allocObject();
    v198 = v313;
    v314 = v197;
    *(v197 + 16) = v555;
    *(v197 + 24) = v198;
    v199 = swift_allocObject();
    v200 = v314;
    v344 = v199;
    *(v199 + 16) = v556;
    *(v199 + 24) = v200;
    v345 = swift_allocObject();
    *(v345 + 16) = 112;
    v346 = swift_allocObject();
    v324 = 8;
    *(v346 + 16) = 8;
    v316 = swift_allocObject();
    *(v316 + 16) = v501;
    v201 = swift_allocObject();
    v202 = v316;
    v347 = v201;
    *(v201 + 16) = v557;
    *(v201 + 24) = v202;
    v348 = swift_allocObject();
    *(v348 + 16) = 37;
    v349 = swift_allocObject();
    *(v349 + 16) = v324;
    v203 = swift_allocObject();
    v204 = v317;
    v318 = v203;
    *(v203 + 16) = v558;
    *(v203 + 24) = v204;
    v205 = swift_allocObject();
    v206 = v318;
    v350 = v205;
    *(v205 + 16) = v559;
    *(v205 + 24) = v206;
    v351 = swift_allocObject();
    v323 = 34;
    *(v351 + 16) = 34;
    v352 = swift_allocObject();
    *(v352 + 16) = v324;
    v207 = swift_allocObject();
    v208 = v319;
    v320 = v207;
    *(v207 + 16) = v560;
    *(v207 + 24) = v208;
    v209 = swift_allocObject();
    v210 = v320;
    v353 = v209;
    *(v209 + 16) = v561;
    *(v209 + 24) = v210;
    v354 = swift_allocObject();
    *(v354 + 16) = v323;
    v355 = swift_allocObject();
    *(v355 + 16) = v324;
    v211 = swift_allocObject();
    v212 = v321;
    v322 = v211;
    *(v211 + 16) = v562;
    *(v211 + 24) = v212;
    v213 = swift_allocObject();
    v214 = v322;
    v356 = v213;
    *(v213 + 16) = v563;
    *(v213 + 24) = v214;
    v357 = swift_allocObject();
    *(v357 + 16) = v323;
    v358 = swift_allocObject();
    *(v358 + 16) = v324;
    v215 = swift_allocObject();
    v216 = v325;
    v326 = v215;
    *(v215 + 16) = v564;
    *(v215 + 24) = v216;
    v217 = swift_allocObject();
    v218 = v326;
    v359 = v217;
    *(v217 + 16) = v565;
    *(v217 + 24) = v218;
    v360 = swift_allocObject();
    *(v360 + 16) = 0;
    v361 = swift_allocObject();
    *(v361 + 16) = v328;
    v219 = swift_allocObject();
    v220 = v331;
    v332 = v219;
    *(v219 + 16) = v566;
    *(v219 + 24) = v220;
    v221 = swift_allocObject();
    v222 = v332;
    v363 = v221;
    *(v221 + 16) = v567;
    *(v221 + 24) = v222;
    v365 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v362 = sub_1B0E46A48();
    v364 = v223;

    v224 = v333;
    v225 = v364;
    *v364 = v568;
    v225[1] = v224;

    v226 = v334;
    v227 = v364;
    v364[2] = v569;
    v227[3] = v226;

    v228 = v335;
    v229 = v364;
    v364[4] = v570;
    v229[5] = v228;

    v230 = v336;
    v231 = v364;
    v364[6] = v571;
    v231[7] = v230;

    v232 = v337;
    v233 = v364;
    v364[8] = v572;
    v233[9] = v232;

    v234 = v338;
    v235 = v364;
    v364[10] = v573;
    v235[11] = v234;

    v236 = v339;
    v237 = v364;
    v364[12] = v574;
    v237[13] = v236;

    v238 = v340;
    v239 = v364;
    v364[14] = v575;
    v239[15] = v238;

    v240 = v341;
    v241 = v364;
    v364[16] = v576;
    v241[17] = v240;

    v242 = v342;
    v243 = v364;
    v364[18] = v577;
    v243[19] = v242;

    v244 = v343;
    v245 = v364;
    v364[20] = v578;
    v245[21] = v244;

    v246 = v344;
    v247 = v364;
    v364[22] = v579;
    v247[23] = v246;

    v248 = v345;
    v249 = v364;
    v364[24] = v580;
    v249[25] = v248;

    v250 = v346;
    v251 = v364;
    v364[26] = v581;
    v251[27] = v250;

    v252 = v347;
    v253 = v364;
    v364[28] = v582;
    v253[29] = v252;

    v254 = v348;
    v255 = v364;
    v364[30] = v583;
    v255[31] = v254;

    v256 = v349;
    v257 = v364;
    v364[32] = v584;
    v257[33] = v256;

    v258 = v350;
    v259 = v364;
    v364[34] = v585;
    v259[35] = v258;

    v260 = v351;
    v261 = v364;
    v364[36] = v586;
    v261[37] = v260;

    v262 = v352;
    v263 = v364;
    v364[38] = v587;
    v263[39] = v262;

    v264 = v353;
    v265 = v364;
    v364[40] = v588;
    v265[41] = v264;

    v266 = v354;
    v267 = v364;
    v364[42] = v589;
    v267[43] = v266;

    v268 = v355;
    v269 = v364;
    v364[44] = v590;
    v269[45] = v268;

    v270 = v356;
    v271 = v364;
    v364[46] = v591;
    v271[47] = v270;

    v272 = v357;
    v273 = v364;
    v364[48] = v592;
    v273[49] = v272;

    v274 = v358;
    v275 = v364;
    v364[50] = v593;
    v275[51] = v274;

    v276 = v359;
    v277 = v364;
    v364[52] = v594;
    v277[53] = v276;

    v278 = v360;
    v279 = v364;
    v364[54] = v595;
    v279[55] = v278;

    v280 = v361;
    v281 = v364;
    v364[56] = v596;
    v281[57] = v280;

    v282 = v363;
    v283 = v364;
    v364[58] = v597;
    v283[59] = v282;
    sub_1B0394964();

    if (os_log_type_enabled(v366, v367))
    {
      v284 = v598;
      v288 = sub_1B0E45D78();
      v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v289 = sub_1B03949A8(0, v287, v287);
      v290 = sub_1B03949A8(4, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v291 = &v639;
      v639 = v288;
      v292 = &v638;
      v638 = v289;
      v293 = &v637;
      v637 = v290;
      sub_1B0394A48(3, &v639);
      sub_1B0394A48(10, v291);
      v635 = v568;
      v636 = v333;
      sub_1B03949FC(&v635, v291, v292, v293);
      v294 = v284;
      if (v284)
      {

        __break(1u);
      }

      else
      {
        v635 = v569;
        v636 = v334;
        sub_1B03949FC(&v635, &v639, &v638, &v637);
        v286[27] = 0;
        v635 = v570;
        v636 = v335;
        sub_1B03949FC(&v635, &v639, &v638, &v637);
        v286[26] = 0;
        v635 = v571;
        v636 = v336;
        sub_1B03949FC(&v635, &v639, &v638, &v637);
        v286[25] = 0;
        v635 = v572;
        v636 = v337;
        sub_1B03949FC(&v635, &v639, &v638, &v637);
        v286[24] = 0;
        v635 = v573;
        v636 = v338;
        sub_1B03949FC(&v635, &v639, &v638, &v637);
        v286[23] = 0;
        v635 = v574;
        v636 = v339;
        sub_1B03949FC(&v635, &v639, &v638, &v637);
        v286[22] = 0;
        v635 = v575;
        v636 = v340;
        sub_1B03949FC(&v635, &v639, &v638, &v637);
        v286[21] = 0;
        v635 = v576;
        v636 = v341;
        sub_1B03949FC(&v635, &v639, &v638, &v637);
        v286[20] = 0;
        v635 = v577;
        v636 = v342;
        sub_1B03949FC(&v635, &v639, &v638, &v637);
        v286[19] = 0;
        v635 = v578;
        v636 = v343;
        sub_1B03949FC(&v635, &v639, &v638, &v637);
        v286[18] = 0;
        v635 = v579;
        v636 = v344;
        sub_1B03949FC(&v635, &v639, &v638, &v637);
        v286[17] = 0;
        v635 = v580;
        v636 = v345;
        sub_1B03949FC(&v635, &v639, &v638, &v637);
        v286[16] = 0;
        v635 = v581;
        v636 = v346;
        sub_1B03949FC(&v635, &v639, &v638, &v637);
        v286[15] = 0;
        v635 = v582;
        v636 = v347;
        sub_1B03949FC(&v635, &v639, &v638, &v637);
        v286[14] = 0;
        v635 = v583;
        v636 = v348;
        sub_1B03949FC(&v635, &v639, &v638, &v637);
        v286[13] = 0;
        v635 = v584;
        v636 = v349;
        sub_1B03949FC(&v635, &v639, &v638, &v637);
        v286[12] = 0;
        v635 = v585;
        v636 = v350;
        sub_1B03949FC(&v635, &v639, &v638, &v637);
        v286[11] = 0;
        v635 = v586;
        v636 = v351;
        sub_1B03949FC(&v635, &v639, &v638, &v637);
        v286[10] = 0;
        v635 = v587;
        v636 = v352;
        sub_1B03949FC(&v635, &v639, &v638, &v637);
        v286[9] = 0;
        v635 = v588;
        v636 = v353;
        sub_1B03949FC(&v635, &v639, &v638, &v637);
        v286[8] = 0;
        v635 = v589;
        v636 = v354;
        sub_1B03949FC(&v635, &v639, &v638, &v637);
        v286[7] = 0;
        v635 = v590;
        v636 = v355;
        sub_1B03949FC(&v635, &v639, &v638, &v637);
        v286[6] = 0;
        v635 = v591;
        v636 = v356;
        sub_1B03949FC(&v635, &v639, &v638, &v637);
        v286[5] = 0;
        v635 = v592;
        v636 = v357;
        sub_1B03949FC(&v635, &v639, &v638, &v637);
        v286[4] = 0;
        v635 = v593;
        v636 = v358;
        sub_1B03949FC(&v635, &v639, &v638, &v637);
        v286[3] = 0;
        v635 = v594;
        v636 = v359;
        sub_1B03949FC(&v635, &v639, &v638, &v637);
        v286[2] = 0;
        v635 = v595;
        v636 = v360;
        sub_1B03949FC(&v635, &v639, &v638, &v637);
        v286[1] = 0;
        v635 = v596;
        v636 = v361;
        sub_1B03949FC(&v635, &v639, &v638, &v637);
        v286[0] = 0;
        v635 = v597;
        v636 = v363;
        sub_1B03949FC(&v635, &v639, &v638, &v637);
        _os_log_impl(&dword_1B0389000, v366, v367, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Failed to create file writer for attachment '[%{public}s]' %{public}s/%{public}s, UID %u.", v288, 0x4Fu);
        sub_1B03998A8(v289, 0, v287);
        sub_1B03998A8(v290, 4, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v366);
    (*(v611 + 8))(v615, v610);
    return 0;
  }
}

uint64_t sub_1B077E63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = sub_1B0E44838();
  sub_1B0A6014C(a1, 0x20000, v4, v5, a2, a3, a4);
}

uint64_t sub_1B077E718@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, 0x21uLL);
  sub_1B07B4718(__dst, v7);
  result = sub_1B077E780(__dst);
  *a2 = result;
  a2[1] = v3;
  a2[2] = v4;
  a2[3] = v5;
  return result;
}

uint64_t sub_1B077E780(void *__src)
{
  v134 = 0u;
  v135 = 0u;
  memcpy(__dst, __src, 0x21uLL);
  if (LOBYTE(__dst[4]))
  {
    switch(LOBYTE(__dst[4]))
    {
      case 1u:
        v21 = *__dst;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v22._countAndFlagsBits = sub_1B0E44838();
        v90 = Media.TopLevelType.init(stringLiteral:)(v22);
        v23.stringValue._countAndFlagsBits = sub_1B07AAE14(v21, *(&v21 + 1));
        v23.stringValue._object = v24;
        v150 = Media.MediaType.init(topLevel:sub:)(v90, v23);
        *&v91 = v150.topLevel.stringValue._countAndFlagsBits;
        *(&v91 + 1) = v150.topLevel.stringValue._object;
        *&v92 = v150.sub.stringValue._countAndFlagsBits;
        *(&v92 + 1) = v150.sub.stringValue._object;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v134 = v91;
        v135 = v92;

        v132 = v91;
        break;
      case 2u:
        v25 = *__dst;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v26._countAndFlagsBits = sub_1B0E44838();
        v87 = Media.TopLevelType.init(stringLiteral:)(v26);
        v27.stringValue._countAndFlagsBits = sub_1B07AAE14(v25, *(&v25 + 1));
        v27.stringValue._object = v28;
        v151 = Media.MediaType.init(topLevel:sub:)(v87, v27);
        *&v88 = v151.topLevel.stringValue._countAndFlagsBits;
        *(&v88 + 1) = v151.topLevel.stringValue._object;
        *&v89 = v151.sub.stringValue._countAndFlagsBits;
        *(&v89 + 1) = v151.sub.stringValue._object;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v134 = v88;
        v135 = v89;

        v132 = v88;
        break;
      case 3u:
        v29 = *__dst;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v30._countAndFlagsBits = sub_1B0E44838();
        v84 = Media.TopLevelType.init(stringLiteral:)(v30);
        v31.stringValue._countAndFlagsBits = sub_1B07AAE14(v29, *(&v29 + 1));
        v31.stringValue._object = v32;
        v152 = Media.MediaType.init(topLevel:sub:)(v84, v31);
        *&v85 = v152.topLevel.stringValue._countAndFlagsBits;
        *(&v85 + 1) = v152.topLevel.stringValue._object;
        *&v86 = v152.sub.stringValue._countAndFlagsBits;
        *(&v86 + 1) = v152.sub.stringValue._object;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v134 = v85;
        v135 = v86;

        v132 = v85;
        break;
      case 4u:
        v33 = *__dst;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v34._countAndFlagsBits = sub_1B0E44838();
        v81 = Media.TopLevelType.init(stringLiteral:)(v34);
        v35.stringValue._countAndFlagsBits = sub_1B07AAE14(v33, *(&v33 + 1));
        v35.stringValue._object = v36;
        v153 = Media.MediaType.init(topLevel:sub:)(v81, v35);
        *&v82 = v153.topLevel.stringValue._countAndFlagsBits;
        *(&v82 + 1) = v153.topLevel.stringValue._object;
        *&v83 = v153.sub.stringValue._countAndFlagsBits;
        *(&v83 + 1) = v153.sub.stringValue._object;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v134 = v82;
        v135 = v83;

        v132 = v82;
        break;
      case 5u:
        v37 = *__dst;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v38._countAndFlagsBits = sub_1B0E44838();
        v78 = Media.TopLevelType.init(stringLiteral:)(v38);
        v39.stringValue._countAndFlagsBits = sub_1B07AAE14(v37, *(&v37 + 1));
        v39.stringValue._object = v40;
        v154 = Media.MediaType.init(topLevel:sub:)(v78, v39);
        *&v79 = v154.topLevel.stringValue._countAndFlagsBits;
        *(&v79 + 1) = v154.topLevel.stringValue._object;
        *&v80 = v154.sub.stringValue._countAndFlagsBits;
        *(&v80 + 1) = v154.sub.stringValue._object;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v134 = v79;
        v135 = v80;

        v132 = v79;
        break;
      case 6u:
        v41 = *__dst;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v42._countAndFlagsBits = sub_1B0E44838();
        v75 = Media.TopLevelType.init(stringLiteral:)(v42);
        v43.stringValue._countAndFlagsBits = sub_1B07AAE14(v41, *(&v41 + 1));
        v43.stringValue._object = v44;
        v155 = Media.MediaType.init(topLevel:sub:)(v75, v43);
        *&v76 = v155.topLevel.stringValue._countAndFlagsBits;
        *(&v76 + 1) = v155.topLevel.stringValue._object;
        *&v77 = v155.sub.stringValue._countAndFlagsBits;
        *(&v77 + 1) = v155.sub.stringValue._object;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v134 = v76;
        v135 = v77;

        v132 = v76;
        break;
      case 7u:
        v45 = *__dst;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v46._countAndFlagsBits = sub_1B0E44838();
        v72 = Media.TopLevelType.init(stringLiteral:)(v46);
        v47.stringValue._countAndFlagsBits = sub_1B07AAE14(v45, *(&v45 + 1));
        v47.stringValue._object = v48;
        v156 = Media.MediaType.init(topLevel:sub:)(v72, v47);
        *&v73 = v156.topLevel.stringValue._countAndFlagsBits;
        *(&v73 + 1) = v156.topLevel.stringValue._object;
        *&v74 = v156.sub.stringValue._countAndFlagsBits;
        *(&v74 + 1) = v156.sub.stringValue._object;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v134 = v73;
        v135 = v74;

        v132 = v73;
        break;
      case 8u:
        v49 = *__dst;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v50._countAndFlagsBits = sub_1B0E44838();
        v69 = Media.TopLevelType.init(stringLiteral:)(v50);
        v51.stringValue._countAndFlagsBits = sub_1B07AAE14(v49, *(&v49 + 1));
        v51.stringValue._object = v52;
        v157 = Media.MediaType.init(topLevel:sub:)(v69, v51);
        *&v70 = v157.topLevel.stringValue._countAndFlagsBits;
        *(&v70 + 1) = v157.topLevel.stringValue._object;
        *&v71 = v157.sub.stringValue._countAndFlagsBits;
        *(&v71 + 1) = v157.sub.stringValue._object;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v134 = v70;
        v135 = v71;

        v132 = v70;
        break;
      case 9u:
        v53 = *__dst;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v54._countAndFlagsBits = sub_1B0E44838();
        v66 = Media.TopLevelType.init(stringLiteral:)(v54);
        v55.stringValue._countAndFlagsBits = sub_1B07AAE14(v53, *(&v53 + 1));
        v55.stringValue._object = v56;
        v158 = Media.MediaType.init(topLevel:sub:)(v66, v55);
        *&v67 = v158.topLevel.stringValue._countAndFlagsBits;
        *(&v67 + 1) = v158.topLevel.stringValue._object;
        *&v68 = v158.sub.stringValue._countAndFlagsBits;
        *(&v68 + 1) = v158.sub.stringValue._object;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v134 = v67;
        v135 = v68;

        v132 = v67;
        break;
      default:
        v57 = *__dst;
        v61 = __dst[2];
        v63 = __dst[3];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v62 = Media.TopLevelType.init(_:)(v57);
        v58.stringValue._countAndFlagsBits = sub_1B07AAE14(v61, v63);
        v58.stringValue._object = v59;
        v159 = Media.MediaType.init(topLevel:sub:)(v62, v58);
        *&v64 = v159.topLevel.stringValue._countAndFlagsBits;
        *(&v64 + 1) = v159.topLevel.stringValue._object;
        *&v65 = v159.sub.stringValue._countAndFlagsBits;
        *(&v65 + 1) = v159.sub.stringValue._object;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v134 = v64;
        v135 = v65;

        v132 = v64;
        break;
    }
  }

  else
  {
    *&__dst[5] = *__dst;
    v137 = *__dst;
    if (__dst[1] == 1)
    {
      topLevel = *Media.TopLevelType.multipart.unsafeMutableAddressor();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub = *Media.Subtype.mixed.unsafeMutableAddressor();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v138 = Media.MediaType.init(topLevel:sub:)(topLevel, sub);
      *&v130 = v138.topLevel.stringValue._countAndFlagsBits;
      *(&v130 + 1) = v138.topLevel.stringValue._object;
      *&v131 = v138.sub.stringValue._countAndFlagsBits;
      *(&v131 + 1) = v138.sub.stringValue._object;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v134 = v130;
      v135 = v131;
      v132 = v130;
    }

    else
    {
      switch(*(&v137 + 1))
      {
        case 2:
          v125 = *Media.TopLevelType.multipart.unsafeMutableAddressor();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v1._countAndFlagsBits = sub_1B0E44838();
          v2 = Media.Subtype.init(stringLiteral:)(v1);
          v139 = Media.MediaType.init(topLevel:sub:)(v125, v2);
          *&v126 = v139.topLevel.stringValue._countAndFlagsBits;
          *(&v126 + 1) = v139.topLevel.stringValue._object;
          *&v127 = v139.sub.stringValue._countAndFlagsBits;
          *(&v127 + 1) = v139.sub.stringValue._object;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v134 = v126;
          v135 = v127;
          v132 = v126;
          break;
        case 3:
          v121 = *Media.TopLevelType.multipart.unsafeMutableAddressor();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v122 = *Media.Subtype.alternative.unsafeMutableAddressor();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v140 = Media.MediaType.init(topLevel:sub:)(v121, v122);
          *&v123 = v140.topLevel.stringValue._countAndFlagsBits;
          *(&v123 + 1) = v140.topLevel.stringValue._object;
          *&v124 = v140.sub.stringValue._countAndFlagsBits;
          *(&v124 + 1) = v140.sub.stringValue._object;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v134 = v123;
          v135 = v124;
          v132 = v123;
          break;
        case 4:
          v117 = *Media.TopLevelType.multipart.unsafeMutableAddressor();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v118 = *Media.Subtype.related.unsafeMutableAddressor();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v141 = Media.MediaType.init(topLevel:sub:)(v117, v118);
          *&v119 = v141.topLevel.stringValue._countAndFlagsBits;
          *(&v119 + 1) = v141.topLevel.stringValue._object;
          *&v120 = v141.sub.stringValue._countAndFlagsBits;
          *(&v120 + 1) = v141.sub.stringValue._object;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v134 = v119;
          v135 = v120;
          v132 = v119;
          break;
        case 5:
          v114 = *Media.TopLevelType.multipart.unsafeMutableAddressor();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v3._countAndFlagsBits = sub_1B0E44838();
          v4 = Media.Subtype.init(stringLiteral:)(v3);
          v142 = Media.MediaType.init(topLevel:sub:)(v114, v4);
          *&v115 = v142.topLevel.stringValue._countAndFlagsBits;
          *(&v115 + 1) = v142.topLevel.stringValue._object;
          *&v116 = v142.sub.stringValue._countAndFlagsBits;
          *(&v116 + 1) = v142.sub.stringValue._object;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v134 = v115;
          v135 = v116;
          v132 = v115;
          break;
        case 6:
          v111 = *Media.TopLevelType.multipart.unsafeMutableAddressor();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v5._countAndFlagsBits = sub_1B0E44838();
          v6 = Media.Subtype.init(stringLiteral:)(v5);
          v143 = Media.MediaType.init(topLevel:sub:)(v111, v6);
          *&v112 = v143.topLevel.stringValue._countAndFlagsBits;
          *(&v112 + 1) = v143.topLevel.stringValue._object;
          *&v113 = v143.sub.stringValue._countAndFlagsBits;
          *(&v113 + 1) = v143.sub.stringValue._object;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v134 = v112;
          v135 = v113;
          v132 = v112;
          break;
        case 7:
          v108 = *Media.TopLevelType.multipart.unsafeMutableAddressor();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v7._countAndFlagsBits = sub_1B0E44838();
          v8 = Media.Subtype.init(stringLiteral:)(v7);
          v144 = Media.MediaType.init(topLevel:sub:)(v108, v8);
          *&v109 = v144.topLevel.stringValue._countAndFlagsBits;
          *(&v109 + 1) = v144.topLevel.stringValue._object;
          *&v110 = v144.sub.stringValue._countAndFlagsBits;
          *(&v110 + 1) = v144.sub.stringValue._object;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v134 = v109;
          v135 = v110;
          v132 = v109;
          break;
        case 8:
          v105 = *Media.TopLevelType.multipart.unsafeMutableAddressor();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v9._countAndFlagsBits = sub_1B0E44838();
          v10 = Media.Subtype.init(stringLiteral:)(v9);
          v145 = Media.MediaType.init(topLevel:sub:)(v105, v10);
          *&v106 = v145.topLevel.stringValue._countAndFlagsBits;
          *(&v106 + 1) = v145.topLevel.stringValue._object;
          *&v107 = v145.sub.stringValue._countAndFlagsBits;
          *(&v107 + 1) = v145.sub.stringValue._object;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v134 = v106;
          v135 = v107;
          v132 = v106;
          break;
        case 9:
          v102 = *Media.TopLevelType.multipart.unsafeMutableAddressor();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v11._countAndFlagsBits = sub_1B0E44838();
          v12 = Media.Subtype.init(stringLiteral:)(v11);
          v146 = Media.MediaType.init(topLevel:sub:)(v102, v12);
          *&v103 = v146.topLevel.stringValue._countAndFlagsBits;
          *(&v103 + 1) = v146.topLevel.stringValue._object;
          *&v104 = v146.sub.stringValue._countAndFlagsBits;
          *(&v104 + 1) = v146.sub.stringValue._object;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v134 = v103;
          v135 = v104;
          v132 = v103;
          break;
        case 0xALL:
          v99 = *Media.TopLevelType.multipart.unsafeMutableAddressor();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v13._countAndFlagsBits = sub_1B0E44838();
          v14 = Media.Subtype.init(stringLiteral:)(v13);
          v147 = Media.MediaType.init(topLevel:sub:)(v99, v14);
          *&v100 = v147.topLevel.stringValue._countAndFlagsBits;
          *(&v100 + 1) = v147.topLevel.stringValue._object;
          *&v101 = v147.sub.stringValue._countAndFlagsBits;
          *(&v101 + 1) = v147.sub.stringValue._object;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v134 = v100;
          v135 = v101;
          v132 = v100;
          break;
        case 0xBLL:
          v96 = *Media.TopLevelType.multipart.unsafeMutableAddressor();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v15._countAndFlagsBits = sub_1B0E44838();
          v16 = Media.Subtype.init(stringLiteral:)(v15);
          v148 = Media.MediaType.init(topLevel:sub:)(v96, v16);
          *&v97 = v148.topLevel.stringValue._countAndFlagsBits;
          *(&v97 + 1) = v148.topLevel.stringValue._object;
          *&v98 = v148.sub.stringValue._countAndFlagsBits;
          *(&v98 + 1) = v148.sub.stringValue._object;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v134 = v97;
          v135 = v98;
          v132 = v97;
          break;
        default:
          v17 = v137;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v18._countAndFlagsBits = sub_1B0E44838();
          v93 = Media.TopLevelType.init(stringLiteral:)(v18);
          v19.stringValue._countAndFlagsBits = sub_1B07AAE14(v17, *(&v17 + 1));
          v19.stringValue._object = v20;
          v149 = Media.MediaType.init(topLevel:sub:)(v93, v19);
          *&v94 = v149.topLevel.stringValue._countAndFlagsBits;
          *(&v94 + 1) = v149.topLevel.stringValue._object;
          *&v95 = v149.sub.stringValue._countAndFlagsBits;
          *(&v95 + 1) = v149.sub.stringValue._object;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v134 = v94;
          v135 = v95;

          v132 = v94;
          break;
      }
    }
  }

  sub_1B07AD0E0(__src);
  sub_1B06FF6F0(&v134);
  return v132;
}

uint64_t sub_1B077FAC8@<X0>(uint64_t *a1@<X8>, unsigned __int8 *a2@<X0>)
{
  result = BodyStructure.Encoding.init(_:)(*a2);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B077FB0C()
{
  v2 = *(v0 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B077FB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

uint64_t sub_1B077FBE8()
{
  v2 = *(v0 + 40);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B077FC20(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t sub_1B077FC6C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t sub_1B077FC8C(const void *a1, char *a2)
{
  v25 = a1;
  v22 = a2;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v34 = 0;
  v23 = (*(*(_s31PreviouslyDownloadedMessageDataVMa(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v24 = v6 - v23;
  v41 = v3;
  v40 = v4;
  v39 = v2;
  sub_1B075DC38(v3, v38);
  v26 = __dst;
  memcpy(__dst, v25, 0xB1uLL);
  if (sub_1B075FACC(__dst) != 1)
  {
    v15 = __dst;
    v19 = 177;
    memcpy(v35, __dst, 0xB1uLL);
    v34 = __dst;
    v16 = (v21 + 24);
    v17 = &v33;
    swift_beginAccess();
    v18 = v36;
    memcpy(v36, v16, v19);
    sub_1B075DC38(v18, v32);
    swift_endAccess();
    v20 = v31;
    memcpy(v31, v18, v19);
    v14 = sub_1B075FACC(v20) == 1;
    v13 = v14;
    sub_1B075E728(v31);
    if (v13)
    {
      v12 = v35;
      sub_1B07169CC(v35, &v28);
      v8 = v29;
      v9 = 177;
      memcpy(v29, v12, 0xB1uLL);
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      v7 = (v21 + 24);
      v11 = &v27;
      swift_beginAccess();
      v10 = v30;
      memcpy(v30, v7, v9);
      memcpy(v7, v8, v9);
      sub_1B075E728(v10);
      swift_endAccess();
      sub_1B075E648(v12);
    }

    else
    {
      sub_1B075E648(v35);
    }
  }

  sub_1B075E87C(v22, v24);
  v6[0] = (v21 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_existingData);
  v6[1] = &v37;
  swift_beginAccess();
  sub_1B075EA98(v24, v6[0]);
  return swift_endAccess();
}

uint64_t sub_1B077FF34(uint64_t a1, uint64_t a2)
{
  v414 = a1;
  v412 = a2;
  v413 = 0;
  v326 = sub_1B074E050;
  v327 = sub_1B07AAFA4;
  v328 = sub_1B0394C30;
  v329 = sub_1B0394C24;
  v330 = sub_1B074DFFC;
  v331 = sub_1B039BA88;
  v332 = sub_1B039BB94;
  v333 = sub_1B0394C24;
  v334 = sub_1B039BBA0;
  v335 = sub_1B039BC08;
  v336 = 0x786F626C69616DLL;
  v337 = sub_1B06BA324;
  v338 = sub_1B074E0E4;
  v339 = sub_1B039BCF8;
  v340 = sub_1B07AB020;
  v341 = sub_1B039BC08;
  v342 = sub_1B0398F5C;
  v343 = sub_1B0398F5C;
  v344 = sub_1B0399178;
  v345 = sub_1B0398F5C;
  v346 = sub_1B0398F5C;
  v347 = sub_1B039BA94;
  v348 = sub_1B0398F5C;
  v349 = sub_1B0398F5C;
  v350 = sub_1B0399178;
  v351 = sub_1B0398F5C;
  v352 = sub_1B0398F5C;
  v353 = sub_1B03991EC;
  v354 = sub_1B0398F5C;
  v355 = sub_1B0398F5C;
  v356 = sub_1B03993BC;
  v357 = sub_1B0398F5C;
  v358 = sub_1B0398F5C;
  v359 = sub_1B039BCEC;
  v360 = sub_1B0398F5C;
  v361 = sub_1B0398F5C;
  v362 = sub_1B03991EC;
  v363 = sub_1B074E050;
  v364 = sub_1B07AAFA4;
  v365 = sub_1B0394C24;
  v366 = sub_1B074DFFC;
  v367 = sub_1B039BA88;
  v368 = sub_1B0394C24;
  v369 = sub_1B039BBA0;
  v370 = sub_1B039BC08;
  v371 = sub_1B06BA324;
  v372 = sub_1B074E0E4;
  v373 = sub_1B039BCF8;
  v374 = sub_1B07AB020;
  v375 = sub_1B039BC08;
  v376 = sub_1B0398F5C;
  v377 = sub_1B0398F5C;
  v378 = sub_1B0399178;
  v379 = sub_1B0398F5C;
  v380 = sub_1B0398F5C;
  v381 = sub_1B039BA94;
  v382 = sub_1B0398F5C;
  v383 = sub_1B0398F5C;
  v384 = sub_1B0399178;
  v385 = sub_1B0398F5C;
  v386 = sub_1B0398F5C;
  v387 = sub_1B03991EC;
  v388 = sub_1B0398F5C;
  v389 = sub_1B0398F5C;
  v390 = sub_1B03993BC;
  v391 = sub_1B0398F5C;
  v392 = sub_1B0398F5C;
  v393 = sub_1B039BCEC;
  v394 = sub_1B0398F5C;
  v395 = sub_1B0398F5C;
  v396 = sub_1B03991EC;
  v439 = 0;
  v438 = 0;
  v437 = 0;
  v397 = 0;
  v420 = 0;
  v398 = _s6LoggerVMa_1(0);
  v399 = (*(*(v398 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v400 = v187 - v399;
  v401 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v402 = v187 - v401;
  v403 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v404 = v187 - v403;
  v405 = sub_1B0E439A8();
  v406 = *(v405 - 8);
  v407 = v405 - 8;
  v408 = (*(v406 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v405);
  v409 = v187 - v408;
  v410 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v187 - v408);
  v411 = v187 - v410;
  v415 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26F0, &unk_1B0E9B4F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v414);
  v416 = v187 - v415;
  v417 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v421 = v187 - v417;
  v439 = v10;
  v438 = v11;
  v437 = v2;
  v418 = (v2 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_downloadedHeader);
  v419 = v436;
  swift_beginAccess();
  sub_1B075EE10(v418, v421);
  swift_endAccess();
  v422 = type metadata accessor for MessageHeader(v420);
  v423 = *(v422 - 8);
  v424 = v422 - 8;
  v324 = (*(v423 + 48))(v421, 1) == 1;
  v323 = v324;
  sub_1B075F220(v421);
  if (v323)
  {
    (*(v406 + 16))(v411, v412, v405);
    sub_1B074B69C(v412, v404);
    sub_1B074B69C(v404, v402);
    sub_1B074E41C(v404, v400);
    v12 = (v402 + *(v398 + 20));
    v276 = *v12;
    v277 = *(v12 + 1);
    v278 = *(v12 + 1);
    v279 = *(v12 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v402);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v275 = 36;
    v294 = 7;
    v13 = swift_allocObject();
    v14 = v277;
    v15 = v278;
    v16 = v279;
    v281 = v13;
    *(v13 + 16) = v276;
    *(v13 + 20) = v14;
    *(v13 + 24) = v15;
    *(v13 + 32) = v16;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v17 = swift_allocObject();
    v18 = v277;
    v19 = v278;
    v20 = v279;
    v274 = v17;
    *(v17 + 16) = v276;
    *(v17 + 20) = v18;
    *(v17 + 24) = v19;
    *(v17 + 32) = v20;

    v293 = 32;
    v21 = swift_allocObject();
    v22 = v274;
    v285 = v21;
    *(v21 + 16) = v363;
    *(v21 + 24) = v22;
    sub_1B0394868();
    sub_1B0394868();

    v23 = swift_allocObject();
    v24 = v277;
    v25 = v278;
    v26 = v279;
    v27 = v23;
    v28 = v400;
    v289 = v27;
    *(v27 + 16) = v276;
    *(v27 + 20) = v24;
    *(v27 + 24) = v25;
    *(v27 + 32) = v26;
    sub_1B074B764(v28);

    v29 = swift_allocObject();
    v30 = v325;
    v295 = v29;
    *(v29 + 16) = v364;
    *(v29 + 24) = v30;

    v321 = sub_1B0E43988();
    v322 = sub_1B0E458D8();
    v291 = 17;
    v297 = swift_allocObject();
    v283 = 16;
    *(v297 + 16) = 16;
    v298 = swift_allocObject();
    v292 = 4;
    *(v298 + 16) = 4;
    v31 = swift_allocObject();
    v280 = v31;
    *(v31 + 16) = v328;
    *(v31 + 24) = 0;
    v32 = swift_allocObject();
    v33 = v280;
    v299 = v32;
    *(v32 + 16) = v365;
    *(v32 + 24) = v33;
    v300 = swift_allocObject();
    *(v300 + 16) = 0;
    v301 = swift_allocObject();
    *(v301 + 16) = 1;
    v34 = swift_allocObject();
    v35 = v281;
    v282 = v34;
    *(v34 + 16) = v366;
    *(v34 + 24) = v35;
    v36 = swift_allocObject();
    v37 = v282;
    v302 = v36;
    *(v36 + 16) = v367;
    *(v36 + 24) = v37;
    v303 = swift_allocObject();
    *(v303 + 16) = v283;
    v304 = swift_allocObject();
    *(v304 + 16) = v292;
    v38 = swift_allocObject();
    v284 = v38;
    *(v38 + 16) = v332;
    *(v38 + 24) = 0;
    v39 = swift_allocObject();
    v40 = v284;
    v305 = v39;
    *(v39 + 16) = v368;
    *(v39 + 24) = v40;
    v306 = swift_allocObject();
    *(v306 + 16) = 0;
    v307 = swift_allocObject();
    *(v307 + 16) = v292;
    v41 = swift_allocObject();
    v42 = v285;
    v286 = v41;
    *(v41 + 16) = v369;
    *(v41 + 24) = v42;
    v43 = swift_allocObject();
    v44 = v286;
    v308 = v43;
    *(v43 + 16) = v370;
    *(v43 + 24) = v44;
    v309 = swift_allocObject();
    *(v309 + 16) = 112;
    v310 = swift_allocObject();
    v288 = 8;
    *(v310 + 16) = 8;
    v287 = swift_allocObject();
    *(v287 + 16) = v336;
    v45 = swift_allocObject();
    v46 = v287;
    v311 = v45;
    *(v45 + 16) = v371;
    *(v45 + 24) = v46;
    v312 = swift_allocObject();
    *(v312 + 16) = 37;
    v313 = swift_allocObject();
    *(v313 + 16) = v288;
    v47 = swift_allocObject();
    v48 = v289;
    v290 = v47;
    *(v47 + 16) = v372;
    *(v47 + 24) = v48;
    v49 = swift_allocObject();
    v50 = v290;
    v314 = v49;
    *(v49 + 16) = v373;
    *(v49 + 24) = v50;
    v315 = swift_allocObject();
    *(v315 + 16) = 0;
    v316 = swift_allocObject();
    *(v316 + 16) = v292;
    v51 = swift_allocObject();
    v52 = v295;
    v296 = v51;
    *(v51 + 16) = v374;
    *(v51 + 24) = v52;
    v53 = swift_allocObject();
    v54 = v296;
    v318 = v53;
    *(v53 + 16) = v375;
    *(v53 + 24) = v54;
    v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v317 = sub_1B0E46A48();
    v319 = v55;

    v56 = v297;
    v57 = v319;
    *v319 = v376;
    v57[1] = v56;

    v58 = v298;
    v59 = v319;
    v319[2] = v377;
    v59[3] = v58;

    v60 = v299;
    v61 = v319;
    v319[4] = v378;
    v61[5] = v60;

    v62 = v300;
    v63 = v319;
    v319[6] = v379;
    v63[7] = v62;

    v64 = v301;
    v65 = v319;
    v319[8] = v380;
    v65[9] = v64;

    v66 = v302;
    v67 = v319;
    v319[10] = v381;
    v67[11] = v66;

    v68 = v303;
    v69 = v319;
    v319[12] = v382;
    v69[13] = v68;

    v70 = v304;
    v71 = v319;
    v319[14] = v383;
    v71[15] = v70;

    v72 = v305;
    v73 = v319;
    v319[16] = v384;
    v73[17] = v72;

    v74 = v306;
    v75 = v319;
    v319[18] = v385;
    v75[19] = v74;

    v76 = v307;
    v77 = v319;
    v319[20] = v386;
    v77[21] = v76;

    v78 = v308;
    v79 = v319;
    v319[22] = v387;
    v79[23] = v78;

    v80 = v309;
    v81 = v319;
    v319[24] = v388;
    v81[25] = v80;

    v82 = v310;
    v83 = v319;
    v319[26] = v389;
    v83[27] = v82;

    v84 = v311;
    v85 = v319;
    v319[28] = v390;
    v85[29] = v84;

    v86 = v312;
    v87 = v319;
    v319[30] = v391;
    v87[31] = v86;

    v88 = v313;
    v89 = v319;
    v319[32] = v392;
    v89[33] = v88;

    v90 = v314;
    v91 = v319;
    v319[34] = v393;
    v91[35] = v90;

    v92 = v315;
    v93 = v319;
    v319[36] = v394;
    v93[37] = v92;

    v94 = v316;
    v95 = v319;
    v319[38] = v395;
    v95[39] = v94;

    v96 = v318;
    v97 = v319;
    v319[40] = v396;
    v97[41] = v96;
    sub_1B0394964();

    if (os_log_type_enabled(v321, v322))
    {
      v98 = v397;
      v267 = sub_1B0E45D78();
      v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v268 = sub_1B03949A8(0, v266, v266);
      v269 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v270 = &v429;
      v429 = v267;
      v271 = &v428;
      v428 = v268;
      v272 = &v427;
      v427 = v269;
      sub_1B0394A48(3, &v429);
      sub_1B0394A48(7, v270);
      v425 = v376;
      v426 = v297;
      sub_1B03949FC(&v425, v270, v271, v272);
      v273 = v98;
      if (v98)
      {

        __break(1u);
      }

      else
      {
        v425 = v377;
        v426 = v298;
        sub_1B03949FC(&v425, &v429, &v428, &v427);
        v265 = 0;
        v425 = v378;
        v426 = v299;
        sub_1B03949FC(&v425, &v429, &v428, &v427);
        v264 = 0;
        v425 = v379;
        v426 = v300;
        sub_1B03949FC(&v425, &v429, &v428, &v427);
        v263 = 0;
        v425 = v380;
        v426 = v301;
        sub_1B03949FC(&v425, &v429, &v428, &v427);
        v262 = 0;
        v425 = v381;
        v426 = v302;
        sub_1B03949FC(&v425, &v429, &v428, &v427);
        v261 = 0;
        v425 = v382;
        v426 = v303;
        sub_1B03949FC(&v425, &v429, &v428, &v427);
        v260 = 0;
        v425 = v383;
        v426 = v304;
        sub_1B03949FC(&v425, &v429, &v428, &v427);
        v259 = 0;
        v425 = v384;
        v426 = v305;
        sub_1B03949FC(&v425, &v429, &v428, &v427);
        v258 = 0;
        v425 = v385;
        v426 = v306;
        sub_1B03949FC(&v425, &v429, &v428, &v427);
        v257 = 0;
        v425 = v386;
        v426 = v307;
        sub_1B03949FC(&v425, &v429, &v428, &v427);
        v256 = 0;
        v425 = v387;
        v426 = v308;
        sub_1B03949FC(&v425, &v429, &v428, &v427);
        v255 = 0;
        v425 = v388;
        v426 = v309;
        sub_1B03949FC(&v425, &v429, &v428, &v427);
        v254 = 0;
        v425 = v389;
        v426 = v310;
        sub_1B03949FC(&v425, &v429, &v428, &v427);
        v253 = 0;
        v425 = v390;
        v426 = v311;
        sub_1B03949FC(&v425, &v429, &v428, &v427);
        v252 = 0;
        v425 = v391;
        v426 = v312;
        sub_1B03949FC(&v425, &v429, &v428, &v427);
        v251 = 0;
        v425 = v392;
        v426 = v313;
        sub_1B03949FC(&v425, &v429, &v428, &v427);
        v250 = 0;
        v425 = v393;
        v426 = v314;
        sub_1B03949FC(&v425, &v429, &v428, &v427);
        v249 = 0;
        v425 = v394;
        v426 = v315;
        sub_1B03949FC(&v425, &v429, &v428, &v427);
        v248 = 0;
        v425 = v395;
        v426 = v316;
        sub_1B03949FC(&v425, &v429, &v428, &v427);
        v247 = 0;
        v425 = v396;
        v426 = v318;
        sub_1B03949FC(&v425, &v429, &v428, &v427);
        _os_log_impl(&dword_1B0389000, v321, v322, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Added message header for %u.", v267, 0x31u);
        sub_1B03998A8(v268, 0, v266);
        sub_1B03998A8(v269, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v321);
    (*(v406 + 8))(v411, v405);
    sub_1B075CC34(v414, v416);
    (*(v423 + 56))(v416, 0, 1, v422);
    v245 = (v325 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_downloadedHeader);
    v246 = v430;
    swift_beginAccess();
    sub_1B075F010(v416, v245);
    return swift_endAccess();
  }

  else
  {
    (*(v406 + 16))(v409, v412, v405);
    sub_1B074B69C(v412, v404);
    sub_1B074B69C(v404, v402);
    sub_1B074E41C(v404, v400);
    v100 = (v402 + *(v398 + 20));
    v198 = *v100;
    v199 = *(v100 + 1);
    v200 = *(v100 + 1);
    v201 = *(v100 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v402);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v197 = 36;
    v216 = 7;
    v101 = swift_allocObject();
    v102 = v199;
    v103 = v200;
    v104 = v201;
    v203 = v101;
    *(v101 + 16) = v198;
    *(v101 + 20) = v102;
    *(v101 + 24) = v103;
    *(v101 + 32) = v104;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v105 = swift_allocObject();
    v106 = v199;
    v107 = v200;
    v108 = v201;
    v196 = v105;
    *(v105 + 16) = v198;
    *(v105 + 20) = v106;
    *(v105 + 24) = v107;
    *(v105 + 32) = v108;

    v215 = 32;
    v109 = swift_allocObject();
    v110 = v196;
    v207 = v109;
    *(v109 + 16) = v326;
    *(v109 + 24) = v110;
    sub_1B0394868();
    sub_1B0394868();

    v111 = swift_allocObject();
    v112 = v199;
    v113 = v200;
    v114 = v201;
    v115 = v111;
    v116 = v400;
    v211 = v115;
    *(v115 + 16) = v198;
    *(v115 + 20) = v112;
    *(v115 + 24) = v113;
    *(v115 + 32) = v114;
    sub_1B074B764(v116);

    v117 = swift_allocObject();
    v118 = v325;
    v217 = v117;
    *(v117 + 16) = v327;
    *(v117 + 24) = v118;

    v243 = sub_1B0E43988();
    v244 = sub_1B0E458E8();
    v213 = 17;
    v219 = swift_allocObject();
    v205 = 16;
    *(v219 + 16) = 16;
    v220 = swift_allocObject();
    v214 = 4;
    *(v220 + 16) = 4;
    v119 = swift_allocObject();
    v202 = v119;
    *(v119 + 16) = v328;
    *(v119 + 24) = 0;
    v120 = swift_allocObject();
    v121 = v202;
    v221 = v120;
    *(v120 + 16) = v329;
    *(v120 + 24) = v121;
    v222 = swift_allocObject();
    *(v222 + 16) = 0;
    v223 = swift_allocObject();
    *(v223 + 16) = 1;
    v122 = swift_allocObject();
    v123 = v203;
    v204 = v122;
    *(v122 + 16) = v330;
    *(v122 + 24) = v123;
    v124 = swift_allocObject();
    v125 = v204;
    v224 = v124;
    *(v124 + 16) = v331;
    *(v124 + 24) = v125;
    v225 = swift_allocObject();
    *(v225 + 16) = v205;
    v226 = swift_allocObject();
    *(v226 + 16) = v214;
    v126 = swift_allocObject();
    v206 = v126;
    *(v126 + 16) = v332;
    *(v126 + 24) = 0;
    v127 = swift_allocObject();
    v128 = v206;
    v227 = v127;
    *(v127 + 16) = v333;
    *(v127 + 24) = v128;
    v228 = swift_allocObject();
    *(v228 + 16) = 0;
    v229 = swift_allocObject();
    *(v229 + 16) = v214;
    v129 = swift_allocObject();
    v130 = v207;
    v208 = v129;
    *(v129 + 16) = v334;
    *(v129 + 24) = v130;
    v131 = swift_allocObject();
    v132 = v208;
    v230 = v131;
    *(v131 + 16) = v335;
    *(v131 + 24) = v132;
    v231 = swift_allocObject();
    *(v231 + 16) = 112;
    v232 = swift_allocObject();
    v210 = 8;
    *(v232 + 16) = 8;
    v209 = swift_allocObject();
    *(v209 + 16) = v336;
    v133 = swift_allocObject();
    v134 = v209;
    v233 = v133;
    *(v133 + 16) = v337;
    *(v133 + 24) = v134;
    v234 = swift_allocObject();
    *(v234 + 16) = 37;
    v235 = swift_allocObject();
    *(v235 + 16) = v210;
    v135 = swift_allocObject();
    v136 = v211;
    v212 = v135;
    *(v135 + 16) = v338;
    *(v135 + 24) = v136;
    v137 = swift_allocObject();
    v138 = v212;
    v236 = v137;
    *(v137 + 16) = v339;
    *(v137 + 24) = v138;
    v237 = swift_allocObject();
    *(v237 + 16) = 0;
    v238 = swift_allocObject();
    *(v238 + 16) = v214;
    v139 = swift_allocObject();
    v140 = v217;
    v218 = v139;
    *(v139 + 16) = v340;
    *(v139 + 24) = v140;
    v141 = swift_allocObject();
    v142 = v218;
    v240 = v141;
    *(v141 + 16) = v341;
    *(v141 + 24) = v142;
    v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v239 = sub_1B0E46A48();
    v241 = v143;

    v144 = v219;
    v145 = v241;
    *v241 = v342;
    v145[1] = v144;

    v146 = v220;
    v147 = v241;
    v241[2] = v343;
    v147[3] = v146;

    v148 = v221;
    v149 = v241;
    v241[4] = v344;
    v149[5] = v148;

    v150 = v222;
    v151 = v241;
    v241[6] = v345;
    v151[7] = v150;

    v152 = v223;
    v153 = v241;
    v241[8] = v346;
    v153[9] = v152;

    v154 = v224;
    v155 = v241;
    v241[10] = v347;
    v155[11] = v154;

    v156 = v225;
    v157 = v241;
    v241[12] = v348;
    v157[13] = v156;

    v158 = v226;
    v159 = v241;
    v241[14] = v349;
    v159[15] = v158;

    v160 = v227;
    v161 = v241;
    v241[16] = v350;
    v161[17] = v160;

    v162 = v228;
    v163 = v241;
    v241[18] = v351;
    v163[19] = v162;

    v164 = v229;
    v165 = v241;
    v241[20] = v352;
    v165[21] = v164;

    v166 = v230;
    v167 = v241;
    v241[22] = v353;
    v167[23] = v166;

    v168 = v231;
    v169 = v241;
    v241[24] = v354;
    v169[25] = v168;

    v170 = v232;
    v171 = v241;
    v241[26] = v355;
    v171[27] = v170;

    v172 = v233;
    v173 = v241;
    v241[28] = v356;
    v173[29] = v172;

    v174 = v234;
    v175 = v241;
    v241[30] = v357;
    v175[31] = v174;

    v176 = v235;
    v177 = v241;
    v241[32] = v358;
    v177[33] = v176;

    v178 = v236;
    v179 = v241;
    v241[34] = v359;
    v179[35] = v178;

    v180 = v237;
    v181 = v241;
    v241[36] = v360;
    v181[37] = v180;

    v182 = v238;
    v183 = v241;
    v241[38] = v361;
    v183[39] = v182;

    v184 = v240;
    v185 = v241;
    v241[40] = v362;
    v185[41] = v184;
    sub_1B0394964();

    if (os_log_type_enabled(v243, v244))
    {
      v186 = v397;
      v189 = sub_1B0E45D78();
      v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v190 = sub_1B03949A8(0, v188, v188);
      v191 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v192 = &v435;
      v435 = v189;
      v193 = &v434;
      v434 = v190;
      v194 = &v433;
      v433 = v191;
      sub_1B0394A48(3, &v435);
      sub_1B0394A48(7, v192);
      v431 = v342;
      v432 = v219;
      sub_1B03949FC(&v431, v192, v193, v194);
      v195 = v186;
      if (v186)
      {

        __break(1u);
      }

      else
      {
        v431 = v343;
        v432 = v220;
        sub_1B03949FC(&v431, &v435, &v434, &v433);
        v187[19] = 0;
        v431 = v344;
        v432 = v221;
        sub_1B03949FC(&v431, &v435, &v434, &v433);
        v187[18] = 0;
        v431 = v345;
        v432 = v222;
        sub_1B03949FC(&v431, &v435, &v434, &v433);
        v187[17] = 0;
        v431 = v346;
        v432 = v223;
        sub_1B03949FC(&v431, &v435, &v434, &v433);
        v187[16] = 0;
        v431 = v347;
        v432 = v224;
        sub_1B03949FC(&v431, &v435, &v434, &v433);
        v187[15] = 0;
        v431 = v348;
        v432 = v225;
        sub_1B03949FC(&v431, &v435, &v434, &v433);
        v187[14] = 0;
        v431 = v349;
        v432 = v226;
        sub_1B03949FC(&v431, &v435, &v434, &v433);
        v187[13] = 0;
        v431 = v350;
        v432 = v227;
        sub_1B03949FC(&v431, &v435, &v434, &v433);
        v187[12] = 0;
        v431 = v351;
        v432 = v228;
        sub_1B03949FC(&v431, &v435, &v434, &v433);
        v187[11] = 0;
        v431 = v352;
        v432 = v229;
        sub_1B03949FC(&v431, &v435, &v434, &v433);
        v187[10] = 0;
        v431 = v353;
        v432 = v230;
        sub_1B03949FC(&v431, &v435, &v434, &v433);
        v187[9] = 0;
        v431 = v354;
        v432 = v231;
        sub_1B03949FC(&v431, &v435, &v434, &v433);
        v187[8] = 0;
        v431 = v355;
        v432 = v232;
        sub_1B03949FC(&v431, &v435, &v434, &v433);
        v187[7] = 0;
        v431 = v356;
        v432 = v233;
        sub_1B03949FC(&v431, &v435, &v434, &v433);
        v187[6] = 0;
        v431 = v357;
        v432 = v234;
        sub_1B03949FC(&v431, &v435, &v434, &v433);
        v187[5] = 0;
        v431 = v358;
        v432 = v235;
        sub_1B03949FC(&v431, &v435, &v434, &v433);
        v187[4] = 0;
        v431 = v359;
        v432 = v236;
        sub_1B03949FC(&v431, &v435, &v434, &v433);
        v187[3] = 0;
        v431 = v360;
        v432 = v237;
        sub_1B03949FC(&v431, &v435, &v434, &v433);
        v187[2] = 0;
        v431 = v361;
        v432 = v238;
        sub_1B03949FC(&v431, &v435, &v434, &v433);
        v187[1] = 0;
        v431 = v362;
        v432 = v240;
        sub_1B03949FC(&v431, &v435, &v434, &v433);
        _os_log_impl(&dword_1B0389000, v243, v244, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] InProgressMessageDownload already has new headers for %u.", v189, 0x31u);
        sub_1B03998A8(v190, 0, v188);
        sub_1B03998A8(v191, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v243);
    return (*(v406 + 8))(v409, v405);
  }
}

void *sub_1B0783B74@<X0>(void *a1@<X8>)
{
  v20 = v1;
  if (BodyStructure.isAttachment.getter())
  {
    v15 = sub_1B0783CF0();
    v16 = v2;
    if (v2)
    {
      v17 = v15;
      v18 = v16;
    }

    else
    {
      v17 = static BodyStructure.Encoding.sevenBit.getter();
      v18 = v3;
    }

    v11 = v17;
    v12 = v18;
    __src[0] = BodyStructure.mediaType.getter();
    __src[1] = v4;
    __src[2] = v5;
    __src[3] = v6;
    __src[4] = v11;
    __src[5] = v12;
    __src[6] = sub_1B0783E20();
    LOBYTE(__src[7]) = 1;
    memcpy(__dst, __src, sizeof(__dst));
  }

  else
  {
    v19[0] = BodyStructure.mediaType.getter();
    v19[1] = v7;
    v19[2] = v8;
    v19[3] = v9;
    LOBYTE(v19[7]) = 0;
    memcpy(__dst, v19, sizeof(__dst));
  }

  return memcpy(a1, __dst, 0x39uLL);
}

uint64_t sub_1B0783CF0()
{
  v8 = v0;
  sub_1B07169CC(v0, v7);
  memcpy(__dst, v0, 0xB1uLL);
  if (sub_1B0717014(__dst) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    memcpy(v11, v2, sizeof(v11));
    sub_1B0717020(v11);
    return 0;
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    memcpy(v10, v1, sizeof(v10));
    memcpy(v12, &v10[1], sizeof(v12));
    sub_1B0717138(v12, v6);
    v4 = v12[7];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0717224();
    sub_1B071728C(v10);
    return v4;
  }
}

uint64_t sub_1B0783E20()
{
  v12 = v0;
  memcpy(__dst, v0, 0xB1uLL);
  if (sub_1B0717014(__dst) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    memcpy(v15, v2, sizeof(v15));
    sub_1B07AD120(v15, v11);
    v16 = v15[0];
    sub_1B074E7A8(&v16, v10);
    v9 = v16;
    v8[22] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20F0, &qword_1B0E9B578);
    sub_1B07AD3B4();
    sub_1B0E44FD8();
    sub_1B039E440(&v9);
    v4 = v10[1];
    sub_1B0717020(v15);
    return v4;
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    memcpy(v14, v1, sizeof(v14));
    sub_1B07AD43C(v14, v8);
    memcpy(v17, &v14[1], sizeof(v17));
    sub_1B0717138(v17, v7);
    v5 = v17[9];
    sub_1B0717224();
    sub_1B071728C(v14);
    return v5;
  }
}

uint64_t sub_1B0783FE8(void *a1, const void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  result = sub_1B0783E20();
  if (__OFADD__(*a1, result))
  {
    __break(1u);
  }

  else
  {
    *a1 += result;
  }

  return result;
}

void *sub_1B0784064(void *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, void), uint64_t a5, void *a6, uint64_t a7)
{
  v27 = 0u;
  v28 = 0u;
  v26 = 0uLL;
  v25 = 0;
  v36 = a1;
  v34 = a2;
  v35 = a3;
  v32 = a4;
  v33 = a5;
  v31 = a6;
  v30 = a7;
  v29 = v7;
  sub_1B0784344(a1);
  result = memcpy(__dst, v37, 0x39uLL);
  if (BYTE8(__dst[3]))
  {
    if (BYTE8(__dst[3]) == 1)
    {
      v9 = __dst[0];
      v10 = __dst[1];
      v11 = __dst[2];
      v13 = *&__dst[3];
      v27 = __dst[0];
      v28 = __dst[1];
      v26 = __dst[2];
      v25 = *&__dst[3];
      sub_1B075F8C8(a6);
      v12 = a1[2];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v24[0] = v12;
      sub_1B07167A8();
      sub_1B0E44778();
      sub_1B039E440(v24);
      v14 = v24[1];
      v15 = v24[2];

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B075A08C(v9, *(&v9 + 1), v10, *(&v10 + 1), v14, v15, v11, *(&v11 + 1), v38, v13);
      sub_1B078EDE4(a1, a2, a3, a4, a5, v38, a7);
      sub_1B0754BBC();
    }
  }

  else
  {
    v16 = __dst[0];
    sub_1B078794C(a1);
    return sub_1B07AD750(v16, *(&v16 + 1));
  }

  return result;
}

void *sub_1B0784344(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v397 = v2;
  v504 = v3;
  v503 = v4;
  v398 = v1;
  v399 = sub_1B074E050;
  v400 = sub_1B07ADC58;
  v401 = sub_1B07ADCBC;
  v402 = sub_1B0394C30;
  v403 = sub_1B0394C24;
  v404 = sub_1B074DFFC;
  v405 = sub_1B039BA88;
  v406 = sub_1B039BB94;
  v407 = sub_1B0394C24;
  v408 = sub_1B039BBA0;
  v409 = sub_1B039BC08;
  v410 = 0x786F626C69616DLL;
  v411 = sub_1B06BA324;
  v412 = sub_1B074E0E4;
  v413 = sub_1B039BCF8;
  v414 = sub_1B07AD0A4;
  v415 = sub_1B039BCF8;
  v416 = sub_1B07AB020;
  v417 = sub_1B039BC08;
  v418 = sub_1B0398F5C;
  v419 = sub_1B0398F5C;
  v420 = sub_1B0399178;
  v421 = sub_1B0398F5C;
  v422 = sub_1B0398F5C;
  v423 = sub_1B039BA94;
  v424 = sub_1B0398F5C;
  v425 = sub_1B0398F5C;
  v426 = sub_1B0399178;
  v427 = sub_1B0398F5C;
  v428 = sub_1B0398F5C;
  v429 = sub_1B03991EC;
  v430 = sub_1B0398F5C;
  v431 = sub_1B0398F5C;
  v432 = sub_1B03993BC;
  v433 = sub_1B0398F5C;
  v434 = sub_1B0398F5C;
  v435 = sub_1B039BCEC;
  v436 = sub_1B0398F5C;
  v437 = sub_1B0398F5C;
  v438 = sub_1B039BCEC;
  v439 = sub_1B0398F5C;
  v440 = sub_1B0398F5C;
  v441 = sub_1B03991EC;
  v442 = sub_1B074E050;
  v443 = sub_1B07ADC58;
  v444 = sub_1B07ADCBC;
  v445 = sub_1B0394C24;
  v446 = sub_1B074DFFC;
  v447 = sub_1B039BA88;
  v448 = sub_1B0394C24;
  v449 = sub_1B039BBA0;
  v450 = sub_1B039BC08;
  v451 = sub_1B06BA324;
  v452 = sub_1B074E0E4;
  v453 = sub_1B039BCF8;
  v454 = sub_1B07AD0A4;
  v455 = sub_1B039BCF8;
  v456 = sub_1B07AB020;
  v457 = sub_1B039BC08;
  v458 = sub_1B0398F5C;
  v459 = sub_1B0398F5C;
  v460 = sub_1B0399178;
  v461 = sub_1B0398F5C;
  v462 = sub_1B0398F5C;
  v463 = sub_1B039BA94;
  v464 = sub_1B0398F5C;
  v465 = sub_1B0398F5C;
  v466 = sub_1B0399178;
  v467 = sub_1B0398F5C;
  v468 = sub_1B0398F5C;
  v469 = sub_1B03991EC;
  v470 = sub_1B0398F5C;
  v471 = sub_1B0398F5C;
  v472 = sub_1B03993BC;
  v473 = sub_1B0398F5C;
  v474 = sub_1B0398F5C;
  v475 = sub_1B039BCEC;
  v476 = sub_1B0398F5C;
  v477 = sub_1B0398F5C;
  v478 = sub_1B039BCEC;
  v479 = sub_1B0398F5C;
  v480 = sub_1B0398F5C;
  v481 = sub_1B03991EC;
  v539 = 0;
  v538 = 0;
  v537 = 0;
  v482 = 0;
  v508 = 0;
  v483 = type metadata accessor for MessageSectionData(0);
  v484 = *(v483 - 8);
  v485 = v484;
  v486 = *(v484 + 64);
  v487 = (v486 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v488 = (v216 - v487);
  v489 = _s6LoggerVMa_1(v5);
  v490 = (*(*(v489 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v508);
  v491 = v216 - v490;
  v492 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v493 = v216 - v492;
  v494 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v495 = v216 - v494;
  v496 = sub_1B0E439A8();
  v497 = *(v496 - 8);
  v498 = v496 - 8;
  v499 = (*(v497 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v508);
  v500 = v216 - v499;
  v501 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v502 = v216 - v501;
  v505 = type metadata accessor for MessageSectionData.Segment(v12);
  v506 = (*(*(v505 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v504);
  v507 = v216 - v506;
  v539 = v13;
  v538 = v14;
  v537 = v1;
  v510 = *(v13 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E46A48();
  SectionSpecifier.Part.init(arrayLiteral:)();
  v509 = v15;
  v511 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v510, v15);

  if (v511)
  {
    memset(v512, 0, 32);
    v512[56] = 0;
    memcpy(__dst, v512, 0x39uLL);
  }

  else
  {
    v392 = (v398 + 24);
    v393 = &v534;
    swift_beginAccess();
    v394 = v536;
    v395 = 177;
    memcpy(v536, v392, 0xB1uLL);
    sub_1B075DC38(v536, v533);
    swift_endAccess();
    v396 = v532;
    memcpy(v532, v394, v395);
    if (sub_1B075FACC(v396) == 1)
    {
      sub_1B07AB12C(v504 + *(v483 + 28), v507);
      v16 = (v507 + *(v505 + 24));
      v388 = v530;
      v389 = 177;
      memcpy(v530, v16, 0xB1uLL);
      sub_1B07AB440(v530, v529);
      sub_1B07AB694(v507);
      v390 = v531;
      memcpy(v531, v388, v389);
      if (sub_1B07AB810(v390) == 1)
      {
        sub_1B075FEBC(v535);
      }

      else
      {
        v387 = v531;
        sub_1B075DC38(v531, v513);
        sub_1B075E728(v387);
        memcpy(v535, v387, 0xB1uLL);
      }

      if (sub_1B075FACC(v532) != 1)
      {
        sub_1B075E728(v532);
      }
    }

    else
    {
      v391 = v535;
      memcpy(v535, v532, 0xB1uLL);
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    }

    v384 = v527;
    v385 = 177;
    memcpy(v527, v535, 0xB1uLL);
    v386 = v528;
    memcpy(v528, v527, 0xB1uLL);
    if (sub_1B075FACC(v528) == 1)
    {
      (*(v497 + 16))(v500, v503, v496);
      sub_1B074B69C(v503, v495);
      sub_1B074B69C(v495, v493);
      sub_1B074E41C(v495, v491);
      v116 = (v493 + *(v489 + 20));
      v227 = *v116;
      v228 = *(v116 + 1);
      v229 = *(v116 + 1);
      v230 = *(v116 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v493);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v226 = 36;
      v252 = 7;
      v117 = swift_allocObject();
      v118 = v228;
      v119 = v229;
      v120 = v230;
      v237 = v117;
      *(v117 + 16) = v227;
      *(v117 + 20) = v118;
      *(v117 + 24) = v119;
      *(v117 + 32) = v120;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v121 = swift_allocObject();
      v122 = v228;
      v123 = v229;
      v124 = v230;
      v225 = v121;
      *(v121 + 16) = v227;
      *(v121 + 20) = v122;
      *(v121 + 24) = v123;
      *(v121 + 32) = v124;

      v251 = 32;
      v125 = swift_allocObject();
      v126 = v225;
      v241 = v125;
      *(v125 + 16) = v399;
      *(v125 + 24) = v126;
      sub_1B0394868();
      sub_1B0394868();

      v127 = swift_allocObject();
      v128 = v228;
      v129 = v229;
      v130 = v230;
      v131 = v127;
      v132 = v491;
      v244 = v131;
      *(v131 + 16) = v227;
      *(v131 + 20) = v128;
      *(v131 + 24) = v129;
      *(v131 + 32) = v130;
      sub_1B074B764(v132);
      sub_1B07AD790(v504, v488);
      v233 = *(v485 + 80);
      v231 = (v233 + 16) & ~v233;
      v232 = swift_allocObject();
      sub_1B07ADB58(v488, v232 + v231);

      v133 = swift_allocObject();
      v134 = v232;
      v247 = v133;
      *(v133 + 16) = v400;
      *(v133 + 24) = v134;

      sub_1B07AD790(v504, v488);
      v234 = (v233 + 16) & ~v233;
      v235 = swift_allocObject();
      sub_1B07ADB58(v488, v235 + v234);

      v135 = swift_allocObject();
      v136 = v235;
      v253 = v135;
      *(v135 + 16) = v401;
      *(v135 + 24) = v136;

      v283 = sub_1B0E43988();
      v284 = sub_1B0E458E8();
      v249 = 17;
      v256 = swift_allocObject();
      v239 = 16;
      *(v256 + 16) = 16;
      v257 = swift_allocObject();
      v250 = 4;
      *(v257 + 16) = 4;
      v137 = swift_allocObject();
      v236 = v137;
      *(v137 + 16) = v402;
      *(v137 + 24) = 0;
      v138 = swift_allocObject();
      v139 = v236;
      v258 = v138;
      *(v138 + 16) = v403;
      *(v138 + 24) = v139;
      v259 = swift_allocObject();
      *(v259 + 16) = 0;
      v260 = swift_allocObject();
      *(v260 + 16) = 1;
      v140 = swift_allocObject();
      v141 = v237;
      v238 = v140;
      *(v140 + 16) = v404;
      *(v140 + 24) = v141;
      v142 = swift_allocObject();
      v143 = v238;
      v261 = v142;
      *(v142 + 16) = v405;
      *(v142 + 24) = v143;
      v262 = swift_allocObject();
      *(v262 + 16) = v239;
      v263 = swift_allocObject();
      *(v263 + 16) = v250;
      v144 = swift_allocObject();
      v240 = v144;
      *(v144 + 16) = v406;
      *(v144 + 24) = 0;
      v145 = swift_allocObject();
      v146 = v240;
      v264 = v145;
      *(v145 + 16) = v407;
      *(v145 + 24) = v146;
      v265 = swift_allocObject();
      *(v265 + 16) = 0;
      v266 = swift_allocObject();
      *(v266 + 16) = v250;
      v147 = swift_allocObject();
      v148 = v241;
      v242 = v147;
      *(v147 + 16) = v408;
      *(v147 + 24) = v148;
      v149 = swift_allocObject();
      v150 = v242;
      v267 = v149;
      *(v149 + 16) = v409;
      *(v149 + 24) = v150;
      v268 = swift_allocObject();
      *(v268 + 16) = 112;
      v269 = swift_allocObject();
      v246 = 8;
      *(v269 + 16) = 8;
      v255 = 24;
      v243 = swift_allocObject();
      *(v243 + 16) = v410;
      v151 = swift_allocObject();
      v152 = v243;
      v270 = v151;
      *(v151 + 16) = v411;
      *(v151 + 24) = v152;
      v271 = swift_allocObject();
      *(v271 + 16) = 37;
      v272 = swift_allocObject();
      *(v272 + 16) = v246;
      v153 = swift_allocObject();
      v154 = v244;
      v245 = v153;
      *(v153 + 16) = v412;
      *(v153 + 24) = v154;
      v155 = swift_allocObject();
      v156 = v245;
      v273 = v155;
      *(v155 + 16) = v413;
      *(v155 + 24) = v156;
      v274 = swift_allocObject();
      *(v274 + 16) = 34;
      v275 = swift_allocObject();
      *(v275 + 16) = v246;
      v157 = swift_allocObject();
      v158 = v247;
      v248 = v157;
      *(v157 + 16) = v414;
      *(v157 + 24) = v158;
      v159 = swift_allocObject();
      v160 = v248;
      v276 = v159;
      *(v159 + 16) = v415;
      *(v159 + 24) = v160;
      v277 = swift_allocObject();
      *(v277 + 16) = 0;
      v278 = swift_allocObject();
      *(v278 + 16) = v250;
      v161 = swift_allocObject();
      v162 = v253;
      v254 = v161;
      *(v161 + 16) = v416;
      *(v161 + 24) = v162;
      v163 = swift_allocObject();
      v164 = v254;
      v280 = v163;
      *(v163 + 16) = v417;
      *(v163 + 24) = v164;
      v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v279 = sub_1B0E46A48();
      v281 = v165;

      v166 = v256;
      v167 = v281;
      *v281 = v418;
      v167[1] = v166;

      v168 = v257;
      v169 = v281;
      v281[2] = v419;
      v169[3] = v168;

      v170 = v258;
      v171 = v281;
      v281[4] = v420;
      v171[5] = v170;

      v172 = v259;
      v173 = v281;
      v281[6] = v421;
      v173[7] = v172;

      v174 = v260;
      v175 = v281;
      v281[8] = v422;
      v175[9] = v174;

      v176 = v261;
      v177 = v281;
      v281[10] = v423;
      v177[11] = v176;

      v178 = v262;
      v179 = v281;
      v281[12] = v424;
      v179[13] = v178;

      v180 = v263;
      v181 = v281;
      v281[14] = v425;
      v181[15] = v180;

      v182 = v264;
      v183 = v281;
      v281[16] = v426;
      v183[17] = v182;

      v184 = v265;
      v185 = v281;
      v281[18] = v427;
      v185[19] = v184;

      v186 = v266;
      v187 = v281;
      v281[20] = v428;
      v187[21] = v186;

      v188 = v267;
      v189 = v281;
      v281[22] = v429;
      v189[23] = v188;

      v190 = v268;
      v191 = v281;
      v281[24] = v430;
      v191[25] = v190;

      v192 = v269;
      v193 = v281;
      v281[26] = v431;
      v193[27] = v192;

      v194 = v270;
      v195 = v281;
      v281[28] = v432;
      v195[29] = v194;

      v196 = v271;
      v197 = v281;
      v281[30] = v433;
      v197[31] = v196;

      v198 = v272;
      v199 = v281;
      v281[32] = v434;
      v199[33] = v198;

      v200 = v273;
      v201 = v281;
      v281[34] = v435;
      v201[35] = v200;

      v202 = v274;
      v203 = v281;
      v281[36] = v436;
      v203[37] = v202;

      v204 = v275;
      v205 = v281;
      v281[38] = v437;
      v205[39] = v204;

      v206 = v276;
      v207 = v281;
      v281[40] = v438;
      v207[41] = v206;

      v208 = v277;
      v209 = v281;
      v281[42] = v439;
      v209[43] = v208;

      v210 = v278;
      v211 = v281;
      v281[44] = v440;
      v211[45] = v210;

      v212 = v280;
      v213 = v281;
      v281[46] = v441;
      v213[47] = v212;
      sub_1B0394964();

      if (os_log_type_enabled(v283, v284))
      {
        v214 = v482;
        v218 = sub_1B0E45D78();
        v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v219 = sub_1B03949A8(0, v217, v217);
        v220 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v221 = &v525;
        v525 = v218;
        v222 = &v524;
        v524 = v219;
        v223 = &v523;
        v523 = v220;
        sub_1B0394A48(3, &v525);
        sub_1B0394A48(8, v221);
        v521 = v418;
        v522 = v256;
        sub_1B03949FC(&v521, v221, v222, v223);
        v224 = v214;
        if (v214)
        {

          __break(1u);
        }

        else
        {
          v521 = v419;
          v522 = v257;
          sub_1B03949FC(&v521, &v525, &v524, &v523);
          v216[21] = 0;
          v521 = v420;
          v522 = v258;
          sub_1B03949FC(&v521, &v525, &v524, &v523);
          v216[20] = 0;
          v521 = v421;
          v522 = v259;
          sub_1B03949FC(&v521, &v525, &v524, &v523);
          v216[19] = 0;
          v521 = v422;
          v522 = v260;
          sub_1B03949FC(&v521, &v525, &v524, &v523);
          v216[18] = 0;
          v521 = v423;
          v522 = v261;
          sub_1B03949FC(&v521, &v525, &v524, &v523);
          v216[17] = 0;
          v521 = v424;
          v522 = v262;
          sub_1B03949FC(&v521, &v525, &v524, &v523);
          v216[16] = 0;
          v521 = v425;
          v522 = v263;
          sub_1B03949FC(&v521, &v525, &v524, &v523);
          v216[15] = 0;
          v521 = v426;
          v522 = v264;
          sub_1B03949FC(&v521, &v525, &v524, &v523);
          v216[14] = 0;
          v521 = v427;
          v522 = v265;
          sub_1B03949FC(&v521, &v525, &v524, &v523);
          v216[13] = 0;
          v521 = v428;
          v522 = v266;
          sub_1B03949FC(&v521, &v525, &v524, &v523);
          v216[12] = 0;
          v521 = v429;
          v522 = v267;
          sub_1B03949FC(&v521, &v525, &v524, &v523);
          v216[11] = 0;
          v521 = v430;
          v522 = v268;
          sub_1B03949FC(&v521, &v525, &v524, &v523);
          v216[10] = 0;
          v521 = v431;
          v522 = v269;
          sub_1B03949FC(&v521, &v525, &v524, &v523);
          v216[9] = 0;
          v521 = v432;
          v522 = v270;
          sub_1B03949FC(&v521, &v525, &v524, &v523);
          v216[8] = 0;
          v521 = v433;
          v522 = v271;
          sub_1B03949FC(&v521, &v525, &v524, &v523);
          v216[7] = 0;
          v521 = v434;
          v522 = v272;
          sub_1B03949FC(&v521, &v525, &v524, &v523);
          v216[6] = 0;
          v521 = v435;
          v522 = v273;
          sub_1B03949FC(&v521, &v525, &v524, &v523);
          v216[5] = 0;
          v521 = v436;
          v522 = v274;
          sub_1B03949FC(&v521, &v525, &v524, &v523);
          v216[4] = 0;
          v521 = v437;
          v522 = v275;
          sub_1B03949FC(&v521, &v525, &v524, &v523);
          v216[3] = 0;
          v521 = v438;
          v522 = v276;
          sub_1B03949FC(&v521, &v525, &v524, &v523);
          v216[2] = 0;
          v521 = v439;
          v522 = v277;
          sub_1B03949FC(&v521, &v525, &v524, &v523);
          v216[1] = 0;
          v521 = v440;
          v522 = v278;
          sub_1B03949FC(&v521, &v525, &v524, &v523);
          v216[0] = 0;
          v521 = v441;
          v522 = v280;
          sub_1B03949FC(&v521, &v525, &v524, &v523);
          _os_log_impl(&dword_1B0389000, v283, v284, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Trying to insert data for section [%{public}s], UID %u, but we don’t have any BodyStructure.", v218, 0x3Bu);
          sub_1B03998A8(v219, 0, v217);
          sub_1B03998A8(v220, 2, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v283);
      (*(v497 + 8))(v500, v496);
      memset(v526, 0, 56);
      v526[56] = 2;
      memcpy(__dst, v526, 0x39uLL);
    }

    else
    {
      v382 = 177;
      memcpy(v544, v528, sizeof(v544));
      v380 = v504[2];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v381 = v540;
      BodyStructure.find(_:)(v380, v540);

      v383 = v542;
      memcpy(v542, v381, v382);
      if (sub_1B075FACC(v383) == 1)
      {
        (*(v497 + 16))(v502, v503, v496);
        sub_1B074B69C(v503, v495);
        sub_1B074B69C(v495, v493);
        sub_1B074E41C(v495, v491);
        v17 = (v493 + *(v489 + 20));
        v318 = *v17;
        v319 = *(v17 + 1);
        v320 = *(v17 + 1);
        v321 = *(v17 + 4);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B074B764(v493);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v317 = 36;
        v343 = 7;
        v18 = swift_allocObject();
        v19 = v319;
        v20 = v320;
        v21 = v321;
        v328 = v18;
        *(v18 + 16) = v318;
        *(v18 + 20) = v19;
        *(v18 + 24) = v20;
        *(v18 + 32) = v21;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v22 = swift_allocObject();
        v23 = v319;
        v24 = v320;
        v25 = v321;
        v316 = v22;
        *(v22 + 16) = v318;
        *(v22 + 20) = v23;
        *(v22 + 24) = v24;
        *(v22 + 32) = v25;

        v342 = 32;
        v26 = swift_allocObject();
        v27 = v316;
        v332 = v26;
        *(v26 + 16) = v442;
        *(v26 + 24) = v27;
        sub_1B0394868();
        sub_1B0394868();

        v28 = swift_allocObject();
        v29 = v319;
        v30 = v320;
        v31 = v321;
        v32 = v28;
        v33 = v491;
        v335 = v32;
        *(v32 + 16) = v318;
        *(v32 + 20) = v29;
        *(v32 + 24) = v30;
        *(v32 + 32) = v31;
        sub_1B074B764(v33);
        sub_1B07AD790(v504, v488);
        v324 = *(v485 + 80);
        v322 = (v324 + 16) & ~v324;
        v323 = swift_allocObject();
        sub_1B07ADB58(v488, v323 + v322);

        v34 = swift_allocObject();
        v35 = v323;
        v338 = v34;
        *(v34 + 16) = v443;
        *(v34 + 24) = v35;

        sub_1B07AD790(v504, v488);
        v325 = (v324 + 16) & ~v324;
        v326 = swift_allocObject();
        sub_1B07ADB58(v488, v326 + v325);

        v36 = swift_allocObject();
        v37 = v326;
        v344 = v36;
        *(v36 + 16) = v444;
        *(v36 + 24) = v37;

        v374 = sub_1B0E43988();
        v375 = sub_1B0E458E8();
        v340 = 17;
        v347 = swift_allocObject();
        v330 = 16;
        *(v347 + 16) = 16;
        v348 = swift_allocObject();
        v341 = 4;
        *(v348 + 16) = 4;
        v38 = swift_allocObject();
        v327 = v38;
        *(v38 + 16) = v402;
        *(v38 + 24) = 0;
        v39 = swift_allocObject();
        v40 = v327;
        v349 = v39;
        *(v39 + 16) = v445;
        *(v39 + 24) = v40;
        v350 = swift_allocObject();
        *(v350 + 16) = 0;
        v351 = swift_allocObject();
        *(v351 + 16) = 1;
        v41 = swift_allocObject();
        v42 = v328;
        v329 = v41;
        *(v41 + 16) = v446;
        *(v41 + 24) = v42;
        v43 = swift_allocObject();
        v44 = v329;
        v352 = v43;
        *(v43 + 16) = v447;
        *(v43 + 24) = v44;
        v353 = swift_allocObject();
        *(v353 + 16) = v330;
        v354 = swift_allocObject();
        *(v354 + 16) = v341;
        v45 = swift_allocObject();
        v331 = v45;
        *(v45 + 16) = v406;
        *(v45 + 24) = 0;
        v46 = swift_allocObject();
        v47 = v331;
        v355 = v46;
        *(v46 + 16) = v448;
        *(v46 + 24) = v47;
        v356 = swift_allocObject();
        *(v356 + 16) = 0;
        v357 = swift_allocObject();
        *(v357 + 16) = v341;
        v48 = swift_allocObject();
        v49 = v332;
        v333 = v48;
        *(v48 + 16) = v449;
        *(v48 + 24) = v49;
        v50 = swift_allocObject();
        v51 = v333;
        v358 = v50;
        *(v50 + 16) = v450;
        *(v50 + 24) = v51;
        v359 = swift_allocObject();
        *(v359 + 16) = 112;
        v360 = swift_allocObject();
        v337 = 8;
        *(v360 + 16) = 8;
        v346 = 24;
        v334 = swift_allocObject();
        *(v334 + 16) = v410;
        v52 = swift_allocObject();
        v53 = v334;
        v361 = v52;
        *(v52 + 16) = v451;
        *(v52 + 24) = v53;
        v362 = swift_allocObject();
        *(v362 + 16) = 37;
        v363 = swift_allocObject();
        *(v363 + 16) = v337;
        v54 = swift_allocObject();
        v55 = v335;
        v336 = v54;
        *(v54 + 16) = v452;
        *(v54 + 24) = v55;
        v56 = swift_allocObject();
        v57 = v336;
        v364 = v56;
        *(v56 + 16) = v453;
        *(v56 + 24) = v57;
        v365 = swift_allocObject();
        *(v365 + 16) = 34;
        v366 = swift_allocObject();
        *(v366 + 16) = v337;
        v58 = swift_allocObject();
        v59 = v338;
        v339 = v58;
        *(v58 + 16) = v454;
        *(v58 + 24) = v59;
        v60 = swift_allocObject();
        v61 = v339;
        v367 = v60;
        *(v60 + 16) = v455;
        *(v60 + 24) = v61;
        v368 = swift_allocObject();
        *(v368 + 16) = 0;
        v369 = swift_allocObject();
        *(v369 + 16) = v341;
        v62 = swift_allocObject();
        v63 = v344;
        v345 = v62;
        *(v62 + 16) = v456;
        *(v62 + 24) = v63;
        v64 = swift_allocObject();
        v65 = v345;
        v371 = v64;
        *(v64 + 16) = v457;
        *(v64 + 24) = v65;
        v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v370 = sub_1B0E46A48();
        v372 = v66;

        v67 = v347;
        v68 = v372;
        *v372 = v458;
        v68[1] = v67;

        v69 = v348;
        v70 = v372;
        v372[2] = v459;
        v70[3] = v69;

        v71 = v349;
        v72 = v372;
        v372[4] = v460;
        v72[5] = v71;

        v73 = v350;
        v74 = v372;
        v372[6] = v461;
        v74[7] = v73;

        v75 = v351;
        v76 = v372;
        v372[8] = v462;
        v76[9] = v75;

        v77 = v352;
        v78 = v372;
        v372[10] = v463;
        v78[11] = v77;

        v79 = v353;
        v80 = v372;
        v372[12] = v464;
        v80[13] = v79;

        v81 = v354;
        v82 = v372;
        v372[14] = v465;
        v82[15] = v81;

        v83 = v355;
        v84 = v372;
        v372[16] = v466;
        v84[17] = v83;

        v85 = v356;
        v86 = v372;
        v372[18] = v467;
        v86[19] = v85;

        v87 = v357;
        v88 = v372;
        v372[20] = v468;
        v88[21] = v87;

        v89 = v358;
        v90 = v372;
        v372[22] = v469;
        v90[23] = v89;

        v91 = v359;
        v92 = v372;
        v372[24] = v470;
        v92[25] = v91;

        v93 = v360;
        v94 = v372;
        v372[26] = v471;
        v94[27] = v93;

        v95 = v361;
        v96 = v372;
        v372[28] = v472;
        v96[29] = v95;

        v97 = v362;
        v98 = v372;
        v372[30] = v473;
        v98[31] = v97;

        v99 = v363;
        v100 = v372;
        v372[32] = v474;
        v100[33] = v99;

        v101 = v364;
        v102 = v372;
        v372[34] = v475;
        v102[35] = v101;

        v103 = v365;
        v104 = v372;
        v372[36] = v476;
        v104[37] = v103;

        v105 = v366;
        v106 = v372;
        v372[38] = v477;
        v106[39] = v105;

        v107 = v367;
        v108 = v372;
        v372[40] = v478;
        v108[41] = v107;

        v109 = v368;
        v110 = v372;
        v372[42] = v479;
        v110[43] = v109;

        v111 = v369;
        v112 = v372;
        v372[44] = v480;
        v112[45] = v111;

        v113 = v371;
        v114 = v372;
        v372[46] = v481;
        v114[47] = v113;
        sub_1B0394964();

        if (os_log_type_enabled(v374, v375))
        {
          v115 = v482;
          v309 = sub_1B0E45D78();
          v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v310 = sub_1B03949A8(0, v308, v308);
          v311 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v312 = &v519;
          v519 = v309;
          v313 = &v518;
          v518 = v310;
          v314 = &v517;
          v517 = v311;
          sub_1B0394A48(3, &v519);
          sub_1B0394A48(8, v312);
          v515 = v458;
          v516 = v347;
          sub_1B03949FC(&v515, v312, v313, v314);
          v315 = v115;
          if (v115)
          {

            __break(1u);
          }

          else
          {
            v515 = v459;
            v516 = v348;
            sub_1B03949FC(&v515, &v519, &v518, &v517);
            v307 = 0;
            v515 = v460;
            v516 = v349;
            sub_1B03949FC(&v515, &v519, &v518, &v517);
            v306 = 0;
            v515 = v461;
            v516 = v350;
            sub_1B03949FC(&v515, &v519, &v518, &v517);
            v305 = 0;
            v515 = v462;
            v516 = v351;
            sub_1B03949FC(&v515, &v519, &v518, &v517);
            v304 = 0;
            v515 = v463;
            v516 = v352;
            sub_1B03949FC(&v515, &v519, &v518, &v517);
            v303 = 0;
            v515 = v464;
            v516 = v353;
            sub_1B03949FC(&v515, &v519, &v518, &v517);
            v302 = 0;
            v515 = v465;
            v516 = v354;
            sub_1B03949FC(&v515, &v519, &v518, &v517);
            v301 = 0;
            v515 = v466;
            v516 = v355;
            sub_1B03949FC(&v515, &v519, &v518, &v517);
            v300 = 0;
            v515 = v467;
            v516 = v356;
            sub_1B03949FC(&v515, &v519, &v518, &v517);
            v299 = 0;
            v515 = v468;
            v516 = v357;
            sub_1B03949FC(&v515, &v519, &v518, &v517);
            v298 = 0;
            v515 = v469;
            v516 = v358;
            sub_1B03949FC(&v515, &v519, &v518, &v517);
            v297 = 0;
            v515 = v470;
            v516 = v359;
            sub_1B03949FC(&v515, &v519, &v518, &v517);
            v296 = 0;
            v515 = v471;
            v516 = v360;
            sub_1B03949FC(&v515, &v519, &v518, &v517);
            v295 = 0;
            v515 = v472;
            v516 = v361;
            sub_1B03949FC(&v515, &v519, &v518, &v517);
            v294 = 0;
            v515 = v473;
            v516 = v362;
            sub_1B03949FC(&v515, &v519, &v518, &v517);
            v293 = 0;
            v515 = v474;
            v516 = v363;
            sub_1B03949FC(&v515, &v519, &v518, &v517);
            v292 = 0;
            v515 = v475;
            v516 = v364;
            sub_1B03949FC(&v515, &v519, &v518, &v517);
            v291 = 0;
            v515 = v476;
            v516 = v365;
            sub_1B03949FC(&v515, &v519, &v518, &v517);
            v290 = 0;
            v515 = v477;
            v516 = v366;
            sub_1B03949FC(&v515, &v519, &v518, &v517);
            v289 = 0;
            v515 = v478;
            v516 = v367;
            sub_1B03949FC(&v515, &v519, &v518, &v517);
            v288 = 0;
            v515 = v479;
            v516 = v368;
            sub_1B03949FC(&v515, &v519, &v518, &v517);
            v287 = 0;
            v515 = v480;
            v516 = v369;
            sub_1B03949FC(&v515, &v519, &v518, &v517);
            v286 = 0;
            v515 = v481;
            v516 = v371;
            sub_1B03949FC(&v515, &v519, &v518, &v517);
            _os_log_impl(&dword_1B0389000, v374, v375, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Trying to insert data for section [%{public}s], UID %u, but the BodyStructure for that message doesn’t have that part in it.", v309, 0x3Bu);
            sub_1B03998A8(v310, 0, v308);
            sub_1B03998A8(v311, 2, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v374);
        (*(v497 + 8))(v502, v496);
        v285 = v520;
        memset(v520, 0, 56);
        v520[56] = 2;
        sub_1B075E648(v528);
        memcpy(__dst, v285, 0x39uLL);
      }

      else
      {
        v377 = v543;
        memcpy(v543, v542, 0xB1uLL);
        v376 = v541;
        sub_1B0783B74(v541);
        v378 = v514;
        v379 = 57;
        memcpy(v514, v376, 0x39uLL);
        sub_1B075E648(v377);
        sub_1B075E648(v528);
        memcpy(__dst, v378, v379);
      }
    }
  }

  return memcpy(v397, __dst, 0x39uLL);
}

uint64_t sub_1B078794C(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v1067 = v2;
  v1066 = v3;
  v1062 = v4;
  v1063 = v5;
  v1064 = v6;
  v1065 = v7;
  v840 = v1;
  v841 = sub_1B074E050;
  v842 = sub_1B07ADC58;
  v843 = sub_1B07AAFA4;
  v844 = sub_1B0394C30;
  v845 = sub_1B0394C24;
  v846 = sub_1B074DFFC;
  v847 = sub_1B039BA88;
  v848 = sub_1B039BB94;
  v849 = sub_1B0394C24;
  v850 = sub_1B039BBA0;
  v851 = sub_1B039BC08;
  v852 = 0x786F626C69616DLL;
  v853 = sub_1B06BA324;
  v854 = sub_1B074E0E4;
  v855 = sub_1B039BCF8;
  v856 = sub_1B07AD0A4;
  v857 = sub_1B039BCF8;
  v858 = sub_1B07AB020;
  v859 = sub_1B039BC08;
  v860 = sub_1B0398F5C;
  v861 = sub_1B0398F5C;
  v862 = sub_1B0399178;
  v863 = sub_1B0398F5C;
  v864 = sub_1B0398F5C;
  v865 = sub_1B039BA94;
  v866 = sub_1B0398F5C;
  v867 = sub_1B0398F5C;
  v868 = sub_1B0399178;
  v869 = sub_1B0398F5C;
  v870 = sub_1B0398F5C;
  v871 = sub_1B03991EC;
  v872 = sub_1B0398F5C;
  v873 = sub_1B0398F5C;
  v874 = sub_1B03993BC;
  v875 = sub_1B0398F5C;
  v876 = sub_1B0398F5C;
  v877 = sub_1B039BCEC;
  v878 = sub_1B0398F5C;
  v879 = sub_1B0398F5C;
  v880 = sub_1B039BCEC;
  v881 = sub_1B0398F5C;
  v882 = sub_1B0398F5C;
  v883 = sub_1B03991EC;
  v884 = sub_1B074E050;
  v885 = sub_1B07AE75C;
  v886 = sub_1B07AAFA4;
  v887 = sub_1B0394C24;
  v888 = sub_1B074DFFC;
  v889 = sub_1B039BA88;
  v890 = sub_1B0394C24;
  v891 = sub_1B039BBA0;
  v892 = sub_1B039BC08;
  v893 = sub_1B06BA324;
  v894 = sub_1B074E0E4;
  v895 = sub_1B039BCF8;
  v896 = sub_1B07AD0A4;
  v897 = sub_1B039BCF8;
  v898 = sub_1B07AB020;
  v899 = sub_1B039BC08;
  v900 = sub_1B07AE7C0;
  v901 = sub_1B03B0DF8;
  v902 = sub_1B0398F5C;
  v903 = sub_1B0398F5C;
  v904 = sub_1B0399178;
  v905 = sub_1B0398F5C;
  v906 = sub_1B0398F5C;
  v907 = sub_1B039BA94;
  v908 = sub_1B0398F5C;
  v909 = sub_1B0398F5C;
  v910 = sub_1B0399178;
  v911 = sub_1B0398F5C;
  v912 = sub_1B0398F5C;
  v913 = sub_1B03991EC;
  v914 = sub_1B0398F5C;
  v915 = sub_1B0398F5C;
  v916 = sub_1B03993BC;
  v917 = sub_1B0398F5C;
  v918 = sub_1B0398F5C;
  v919 = sub_1B039BCEC;
  v920 = sub_1B0398F5C;
  v921 = sub_1B0398F5C;
  v922 = sub_1B039BCEC;
  v923 = sub_1B0398F5C;
  v924 = sub_1B0398F5C;
  v925 = sub_1B03991EC;
  v926 = sub_1B0398F5C;
  v927 = sub_1B0398F5C;
  v928 = sub_1B0399260;
  v929 = sub_1B074E050;
  v930 = sub_1B07ADC58;
  v931 = sub_1B07AAFA4;
  v932 = sub_1B0394C24;
  v933 = sub_1B074DFFC;
  v934 = sub_1B039BA88;
  v935 = sub_1B0394C24;
  v936 = sub_1B039BBA0;
  v937 = sub_1B039BC08;
  v938 = sub_1B06BA324;
  v939 = sub_1B074E0E4;
  v940 = sub_1B039BCF8;
  v941 = sub_1B07AE824;
  v942 = sub_1B03B0DF8;
  v943 = sub_1B07AD0A4;
  v944 = sub_1B039BCF8;
  v945 = sub_1B07AB020;
  v946 = sub_1B039BC08;
  v947 = sub_1B0398F5C;
  v948 = sub_1B0398F5C;
  v949 = sub_1B0399178;
  v950 = sub_1B0398F5C;
  v951 = sub_1B0398F5C;
  v952 = sub_1B039BA94;
  v953 = sub_1B0398F5C;
  v954 = sub_1B0398F5C;
  v955 = sub_1B0399178;
  v956 = sub_1B0398F5C;
  v957 = sub_1B0398F5C;
  v958 = sub_1B03991EC;
  v959 = sub_1B0398F5C;
  v960 = sub_1B0398F5C;
  v961 = sub_1B03993BC;
  v962 = sub_1B0398F5C;
  v963 = sub_1B0398F5C;
  v964 = sub_1B039BCEC;
  v965 = sub_1B0398F5C;
  v966 = sub_1B0398F5C;
  v967 = sub_1B0399260;
  v968 = sub_1B0398F5C;
  v969 = sub_1B0398F5C;
  v970 = sub_1B039BCEC;
  v971 = sub_1B0398F5C;
  v972 = sub_1B0398F5C;
  v973 = sub_1B03991EC;
  v974 = sub_1B074E050;
  v975 = sub_1B07ADC58;
  v976 = sub_1B07AAFA4;
  v977 = sub_1B0394C24;
  v978 = sub_1B074DFFC;
  v979 = sub_1B039BA88;
  v980 = sub_1B0394C24;
  v981 = sub_1B039BBA0;
  v982 = sub_1B039BC08;
  v983 = sub_1B06BA324;
  v984 = sub_1B074E0E4;
  v985 = sub_1B039BCF8;
  v986 = sub_1B07AD0A4;
  v987 = sub_1B039BCF8;
  v988 = sub_1B07AB020;
  v989 = sub_1B039BC08;
  v990 = sub_1B0398F5C;
  v991 = sub_1B0398F5C;
  v992 = sub_1B0399178;
  v993 = sub_1B0398F5C;
  v994 = sub_1B0398F5C;
  v995 = sub_1B039BA94;
  v996 = sub_1B0398F5C;
  v997 = sub_1B0398F5C;
  v998 = sub_1B0399178;
  v999 = sub_1B0398F5C;
  v1000 = sub_1B0398F5C;
  v1001 = sub_1B03991EC;
  v1002 = sub_1B0398F5C;
  v1003 = sub_1B0398F5C;
  v1004 = sub_1B03993BC;
  v1005 = sub_1B0398F5C;
  v1006 = sub_1B0398F5C;
  v1007 = sub_1B039BCEC;
  v1008 = sub_1B0398F5C;
  v1009 = sub_1B0398F5C;
  v1010 = sub_1B039BCEC;
  v1011 = sub_1B0398F5C;
  v1012 = sub_1B0398F5C;
  v1013 = sub_1B03991EC;
  v1117 = 0;
  v1115 = 0;
  v1114 = 0;
  v1112 = 0u;
  v1113 = 0u;
  v1111 = 0;
  v1110 = 0;
  v1014 = 0;
  v1118 = 0;
  v1119 = 0;
  v1116 = 0;
  v1088 = 0;
  v1060 = 0;
  v1015 = *(type metadata accessor for MessageSectionData(0) - 8);
  v1016 = v1015;
  v1017 = *(v1015 + 64);
  v1018 = (v1017 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v1019 = (v461 - v1018);
  v1020 = _s6LoggerVMa_1(v8);
  v1021 = (*(*(v1020 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1060);
  v1022 = v461 - v1021;
  v1023 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v1024 = v461 - v1023;
  v1025 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v1026 = v461 - v1025;
  v1027 = sub_1B0E439A8();
  v1028 = *(v1027 - 8);
  v1029 = v1027 - 8;
  v1030 = (*(v1028 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1060);
  v1031 = v461 - v1030;
  v1032 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v1033 = v461 - v1032;
  v1034 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16);
  v1035 = v461 - v1034;
  v1036 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v1037 = v461 - v1036;
  v1038 = type metadata accessor for MessageSectionDataConcatenator.CreateResult(v19);
  v1039 = (*(*(v1038 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1038);
  v1040 = v461 - v1039;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2080, &qword_1B0E9B510);
  v1041 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v1042 = v461 - v1041;
  v1043 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v461 - v1041);
  v1044 = v461 - v1043;
  v1045 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v461 - v1043);
  v1046 = (v461 - v1045);
  v1047 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20F8, &qword_1B0E9B580) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1060);
  v1048 = v461 - v1047;
  v1049 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection(v23);
  v1051 = *(v1049 - 8);
  v1050 = v1049 - 8;
  v1052 = v1051;
  v1053 = *(v1051 + 64);
  v1054 = (v1053 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1049);
  v1055 = v461 - v1054;
  v1119 = v461 - v1054;
  v1056 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v1057 = v461 - v1056;
  v1118 = v461 - v1056;
  v1058 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v1059 = (v461 - v1058);
  v1117 = v461 - v1058;
  v1061 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2100, &qword_1B0E9B588) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1060);
  v1075 = v461 - v1061;
  v1076 = type metadata accessor for MessageSectionDataConcatenator(v28);
  v1073 = *(v1076 - 8);
  v1074 = v1076 - 8;
  v1068 = (*(v1073 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1067);
  v1069 = v461 - v1068;
  v1116 = v461 - v1068;
  v1070 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v30);
  v1071 = v461 - v1070;
  v1115 = v461 - v1070;
  v1114 = v31;
  *&v1112 = v32;
  *(&v1112 + 1) = v33;
  *&v1113 = v34;
  *(&v1113 + 1) = v35;
  v1111 = v36;
  v1110 = v1;
  v1072 = *(v31 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07977D8(v1072, v1075);

  if ((*(v1073 + 48))(v1075, 1, v1076) == 1)
  {
    sub_1B07ADD20(v1075, v37);
    v39 = sub_1B0791AC0(v1067);
    sub_1B08BFFF4(v39, v1067, v1066, v1062, v1063, v1064, v1040);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        (*(v1028 + 16))(v1037, v1065, v1027);
        sub_1B074B69C(v1065, v1026);
        sub_1B074B69C(v1026, v1024);
        sub_1B074E41C(v1026, v1022);
        v40 = (v1024 + *(v1020 + 20));
        v761 = *v40;
        v762 = *(v40 + 1);
        v763 = *(v40 + 1);
        v764 = *(v40 + 4);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B074B764(v1024);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v760 = 36;
        v783 = 7;
        v41 = swift_allocObject();
        v42 = v762;
        v43 = v763;
        v44 = v764;
        v768 = v41;
        *(v41 + 16) = v761;
        *(v41 + 20) = v42;
        *(v41 + 24) = v43;
        *(v41 + 32) = v44;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v45 = swift_allocObject();
        v46 = v762;
        v47 = v763;
        v48 = v764;
        v759 = v45;
        *(v45 + 16) = v761;
        *(v45 + 20) = v46;
        *(v45 + 24) = v47;
        *(v45 + 32) = v48;

        v782 = 32;
        v49 = swift_allocObject();
        v50 = v759;
        v772 = v49;
        *(v49 + 16) = v841;
        *(v49 + 24) = v50;
        sub_1B0394868();
        sub_1B0394868();

        v51 = swift_allocObject();
        v52 = v762;
        v53 = v763;
        v54 = v764;
        v55 = v51;
        v56 = v1022;
        v775 = v55;
        *(v55 + 16) = v761;
        *(v55 + 20) = v52;
        *(v55 + 24) = v53;
        *(v55 + 32) = v54;
        sub_1B074B764(v56);
        sub_1B07AD790(v1067, v1019);
        v765 = (*(v1016 + 80) + 16) & ~*(v1016 + 80);
        v766 = swift_allocObject();
        sub_1B07ADB58(v1019, v766 + v765);

        v57 = swift_allocObject();
        v58 = v766;
        v778 = v57;
        *(v57 + 16) = v842;
        *(v57 + 24) = v58;

        v59 = swift_allocObject();
        v60 = v840;
        v784 = v59;
        *(v59 + 16) = v843;
        *(v59 + 24) = v60;

        v814 = sub_1B0E43988();
        v815 = sub_1B0E458E8();
        v780 = 17;
        v787 = swift_allocObject();
        v770 = 16;
        *(v787 + 16) = 16;
        v788 = swift_allocObject();
        v781 = 4;
        *(v788 + 16) = 4;
        v61 = swift_allocObject();
        v767 = v61;
        *(v61 + 16) = v844;
        *(v61 + 24) = 0;
        v62 = swift_allocObject();
        v63 = v767;
        v789 = v62;
        *(v62 + 16) = v845;
        *(v62 + 24) = v63;
        v790 = swift_allocObject();
        *(v790 + 16) = 0;
        v791 = swift_allocObject();
        *(v791 + 16) = 1;
        v64 = swift_allocObject();
        v65 = v768;
        v769 = v64;
        *(v64 + 16) = v846;
        *(v64 + 24) = v65;
        v66 = swift_allocObject();
        v67 = v769;
        v792 = v66;
        *(v66 + 16) = v847;
        *(v66 + 24) = v67;
        v793 = swift_allocObject();
        *(v793 + 16) = v770;
        v794 = swift_allocObject();
        *(v794 + 16) = v781;
        v68 = swift_allocObject();
        v771 = v68;
        *(v68 + 16) = v848;
        *(v68 + 24) = 0;
        v69 = swift_allocObject();
        v70 = v771;
        v795 = v69;
        *(v69 + 16) = v849;
        *(v69 + 24) = v70;
        v796 = swift_allocObject();
        *(v796 + 16) = 0;
        v797 = swift_allocObject();
        *(v797 + 16) = v781;
        v71 = swift_allocObject();
        v72 = v772;
        v773 = v71;
        *(v71 + 16) = v850;
        *(v71 + 24) = v72;
        v73 = swift_allocObject();
        v74 = v773;
        v798 = v73;
        *(v73 + 16) = v851;
        *(v73 + 24) = v74;
        v799 = swift_allocObject();
        *(v799 + 16) = 112;
        v800 = swift_allocObject();
        v777 = 8;
        *(v800 + 16) = 8;
        v786 = 24;
        v774 = swift_allocObject();
        *(v774 + 16) = v852;
        v75 = swift_allocObject();
        v76 = v774;
        v801 = v75;
        *(v75 + 16) = v853;
        *(v75 + 24) = v76;
        v802 = swift_allocObject();
        *(v802 + 16) = 37;
        v803 = swift_allocObject();
        *(v803 + 16) = v777;
        v77 = swift_allocObject();
        v78 = v775;
        v776 = v77;
        *(v77 + 16) = v854;
        *(v77 + 24) = v78;
        v79 = swift_allocObject();
        v80 = v776;
        v804 = v79;
        *(v79 + 16) = v855;
        *(v79 + 24) = v80;
        v805 = swift_allocObject();
        *(v805 + 16) = 34;
        v806 = swift_allocObject();
        *(v806 + 16) = v777;
        v81 = swift_allocObject();
        v82 = v778;
        v779 = v81;
        *(v81 + 16) = v856;
        *(v81 + 24) = v82;
        v83 = swift_allocObject();
        v84 = v779;
        v807 = v83;
        *(v83 + 16) = v857;
        *(v83 + 24) = v84;
        v808 = swift_allocObject();
        *(v808 + 16) = 0;
        v809 = swift_allocObject();
        *(v809 + 16) = v781;
        v85 = swift_allocObject();
        v86 = v784;
        v785 = v85;
        *(v85 + 16) = v858;
        *(v85 + 24) = v86;
        v87 = swift_allocObject();
        v88 = v785;
        v811 = v87;
        *(v87 + 16) = v859;
        *(v87 + 24) = v88;
        v813 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v810 = sub_1B0E46A48();
        v812 = v89;

        v90 = v787;
        v91 = v812;
        *v812 = v860;
        v91[1] = v90;

        v92 = v788;
        v93 = v812;
        v812[2] = v861;
        v93[3] = v92;

        v94 = v789;
        v95 = v812;
        v812[4] = v862;
        v95[5] = v94;

        v96 = v790;
        v97 = v812;
        v812[6] = v863;
        v97[7] = v96;

        v98 = v791;
        v99 = v812;
        v812[8] = v864;
        v99[9] = v98;

        v100 = v792;
        v101 = v812;
        v812[10] = v865;
        v101[11] = v100;

        v102 = v793;
        v103 = v812;
        v812[12] = v866;
        v103[13] = v102;

        v104 = v794;
        v105 = v812;
        v812[14] = v867;
        v105[15] = v104;

        v106 = v795;
        v107 = v812;
        v812[16] = v868;
        v107[17] = v106;

        v108 = v796;
        v109 = v812;
        v812[18] = v869;
        v109[19] = v108;

        v110 = v797;
        v111 = v812;
        v812[20] = v870;
        v111[21] = v110;

        v112 = v798;
        v113 = v812;
        v812[22] = v871;
        v113[23] = v112;

        v114 = v799;
        v115 = v812;
        v812[24] = v872;
        v115[25] = v114;

        v116 = v800;
        v117 = v812;
        v812[26] = v873;
        v117[27] = v116;

        v118 = v801;
        v119 = v812;
        v812[28] = v874;
        v119[29] = v118;

        v120 = v802;
        v121 = v812;
        v812[30] = v875;
        v121[31] = v120;

        v122 = v803;
        v123 = v812;
        v812[32] = v876;
        v123[33] = v122;

        v124 = v804;
        v125 = v812;
        v812[34] = v877;
        v125[35] = v124;

        v126 = v805;
        v127 = v812;
        v812[36] = v878;
        v127[37] = v126;

        v128 = v806;
        v129 = v812;
        v812[38] = v879;
        v129[39] = v128;

        v130 = v807;
        v131 = v812;
        v812[40] = v880;
        v131[41] = v130;

        v132 = v808;
        v133 = v812;
        v812[42] = v881;
        v133[43] = v132;

        v134 = v809;
        v135 = v812;
        v812[44] = v882;
        v135[45] = v134;

        v136 = v811;
        v137 = v812;
        v812[46] = v883;
        v137[47] = v136;
        sub_1B0394964();

        if (os_log_type_enabled(v814, v815))
        {
          v138 = v1014;
          v752 = sub_1B0E45D78();
          v751 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v753 = sub_1B03949A8(0, v751, v751);
          v754 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v755 = &v1109;
          v1109 = v752;
          v756 = &v1108;
          v1108 = v753;
          v757 = &v1107;
          v1107 = v754;
          sub_1B0394A48(3, &v1109);
          sub_1B0394A48(8, v755);
          v1105 = v860;
          v1106 = v787;
          sub_1B03949FC(&v1105, v755, v756, v757);
          v758 = v138;
          if (v138)
          {

            __break(1u);
          }

          else
          {
            v1105 = v861;
            v1106 = v788;
            sub_1B03949FC(&v1105, &v1109, &v1108, &v1107);
            v750 = 0;
            v1105 = v862;
            v1106 = v789;
            sub_1B03949FC(&v1105, &v1109, &v1108, &v1107);
            v749 = 0;
            v1105 = v863;
            v1106 = v790;
            sub_1B03949FC(&v1105, &v1109, &v1108, &v1107);
            v748 = 0;
            v1105 = v864;
            v1106 = v791;
            sub_1B03949FC(&v1105, &v1109, &v1108, &v1107);
            v747 = 0;
            v1105 = v865;
            v1106 = v792;
            sub_1B03949FC(&v1105, &v1109, &v1108, &v1107);
            v746 = 0;
            v1105 = v866;
            v1106 = v793;
            sub_1B03949FC(&v1105, &v1109, &v1108, &v1107);
            v745 = 0;
            v1105 = v867;
            v1106 = v794;
            sub_1B03949FC(&v1105, &v1109, &v1108, &v1107);
            v744 = 0;
            v1105 = v868;
            v1106 = v795;
            sub_1B03949FC(&v1105, &v1109, &v1108, &v1107);
            v743 = 0;
            v1105 = v869;
            v1106 = v796;
            sub_1B03949FC(&v1105, &v1109, &v1108, &v1107);
            v742 = 0;
            v1105 = v870;
            v1106 = v797;
            sub_1B03949FC(&v1105, &v1109, &v1108, &v1107);
            v741 = 0;
            v1105 = v871;
            v1106 = v798;
            sub_1B03949FC(&v1105, &v1109, &v1108, &v1107);
            v740 = 0;
            v1105 = v872;
            v1106 = v799;
            sub_1B03949FC(&v1105, &v1109, &v1108, &v1107);
            v739 = 0;
            v1105 = v873;
            v1106 = v800;
            sub_1B03949FC(&v1105, &v1109, &v1108, &v1107);
            v738 = 0;
            v1105 = v874;
            v1106 = v801;
            sub_1B03949FC(&v1105, &v1109, &v1108, &v1107);
            v737 = 0;
            v1105 = v875;
            v1106 = v802;
            sub_1B03949FC(&v1105, &v1109, &v1108, &v1107);
            v736 = 0;
            v1105 = v876;
            v1106 = v803;
            sub_1B03949FC(&v1105, &v1109, &v1108, &v1107);
            v735 = 0;
            v1105 = v877;
            v1106 = v804;
            sub_1B03949FC(&v1105, &v1109, &v1108, &v1107);
            v734 = 0;
            v1105 = v878;
            v1106 = v805;
            sub_1B03949FC(&v1105, &v1109, &v1108, &v1107);
            v733 = 0;
            v1105 = v879;
            v1106 = v806;
            sub_1B03949FC(&v1105, &v1109, &v1108, &v1107);
            v732 = 0;
            v1105 = v880;
            v1106 = v807;
            sub_1B03949FC(&v1105, &v1109, &v1108, &v1107);
            v731 = 0;
            v1105 = v881;
            v1106 = v808;
            sub_1B03949FC(&v1105, &v1109, &v1108, &v1107);
            v730 = 0;
            v1105 = v882;
            v1106 = v809;
            sub_1B03949FC(&v1105, &v1109, &v1108, &v1107);
            v729 = 0;
            v1105 = v883;
            v1106 = v811;
            sub_1B03949FC(&v1105, &v1109, &v1108, &v1107);
            _os_log_impl(&dword_1B0389000, v814, v815, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Failed to insert data for section [%{public}s], UID %u.", v752, 0x3Bu);
            sub_1B03998A8(v753, 0, v751);
            sub_1B03998A8(v754, 2, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v814);
        return (*(v1028 + 8))(v1037, v1027);
      }

      sub_1B07AC238(v1040, v1057);
      v1118 = v1057;
      v818 = v1067[2];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B07AC570(v1057, v1046);
      v817 = type metadata accessor for InProgressMessageDownload.Section(0);
      v816 = 1;
      swift_storeEnumTagMultiPayload();
      (*(*(v817 - 8) + 56))(v1046, 0, v816);
      v819 = &v1104;
      v1104 = v818;
      v820 = &v1103;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2090, &qword_1B0E9B520);
      sub_1B0E44788();
      swift_endAccess();
      sub_1B07AC2FC(v1057);
    }

    else
    {
      sub_1B07AE938(v1040, v1069);
      v1116 = v1069;
      v823 = v1067[2];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B07AE9EC(v1069, v1046);
      v822 = type metadata accessor for InProgressMessageDownload.Section(0);
      v821 = 0;
      swift_storeEnumTagMultiPayload();
      (*(*(v822 - 8) + 56))(v1046, v821, 1);
      v824 = &v1090;
      v1090 = v823;
      v825 = &v1089;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2090, &qword_1B0E9B520);
      sub_1B0E44788();
      swift_endAccess();
      sub_1B07AE888(v1069);
    }

    v827 = v1014;
  }

  else
  {
    v38 = v1014;
    sub_1B07AE938(v1075, v1071);
    sub_1B08BFC60(v1067, v1048);
    v838 = v38;
    v839 = v38;
    if (v38)
    {
      v359 = v1031;
      v471 = v839;
      v470 = 0;
      v360 = v839;
      v1088 = v471;
      (*(v1028 + 16))(v359, v1065, v1027);
      sub_1B074B69C(v1065, v1026);
      sub_1B074B69C(v1026, v1024);
      sub_1B074E41C(v1026, v1022);
      v361 = (v1024 + *(v1020 + 20));
      v474 = *v361;
      v475 = *(v361 + 1);
      v476 = *(v361 + 1);
      v477 = *(v361 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v1024);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v473 = 36;
      v496 = 7;
      v362 = swift_allocObject();
      v363 = v475;
      v364 = v476;
      v365 = v477;
      v481 = v362;
      *(v362 + 16) = v474;
      *(v362 + 20) = v363;
      *(v362 + 24) = v364;
      *(v362 + 32) = v365;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v366 = swift_allocObject();
      v367 = v475;
      v368 = v476;
      v369 = v477;
      v472 = v366;
      *(v366 + 16) = v474;
      *(v366 + 20) = v367;
      *(v366 + 24) = v368;
      *(v366 + 32) = v369;

      v495 = 32;
      v370 = swift_allocObject();
      v371 = v472;
      v485 = v370;
      *(v370 + 16) = v974;
      *(v370 + 24) = v371;
      sub_1B0394868();
      sub_1B0394868();

      v372 = swift_allocObject();
      v373 = v475;
      v374 = v476;
      v375 = v477;
      v376 = v372;
      v377 = v1022;
      v488 = v376;
      *(v376 + 16) = v474;
      *(v376 + 20) = v373;
      *(v376 + 24) = v374;
      *(v376 + 32) = v375;
      sub_1B074B764(v377);
      sub_1B07AD790(v1067, v1019);
      v478 = (*(v1016 + 80) + 16) & ~*(v1016 + 80);
      v479 = swift_allocObject();
      sub_1B07ADB58(v1019, v479 + v478);

      v378 = swift_allocObject();
      v379 = v479;
      v491 = v378;
      *(v378 + 16) = v975;
      *(v378 + 24) = v379;

      v380 = swift_allocObject();
      v381 = v840;
      v497 = v380;
      *(v380 + 16) = v976;
      *(v380 + 24) = v381;

      v527 = sub_1B0E43988();
      v528 = sub_1B0E458E8();
      v493 = 17;
      v500 = swift_allocObject();
      v483 = 16;
      *(v500 + 16) = 16;
      v501 = swift_allocObject();
      v494 = 4;
      *(v501 + 16) = 4;
      v382 = swift_allocObject();
      v480 = v382;
      *(v382 + 16) = v844;
      *(v382 + 24) = 0;
      v383 = swift_allocObject();
      v384 = v480;
      v502 = v383;
      *(v383 + 16) = v977;
      *(v383 + 24) = v384;
      v503 = swift_allocObject();
      *(v503 + 16) = 0;
      v504 = swift_allocObject();
      *(v504 + 16) = 1;
      v385 = swift_allocObject();
      v386 = v481;
      v482 = v385;
      *(v385 + 16) = v978;
      *(v385 + 24) = v386;
      v387 = swift_allocObject();
      v388 = v482;
      v505 = v387;
      *(v387 + 16) = v979;
      *(v387 + 24) = v388;
      v506 = swift_allocObject();
      *(v506 + 16) = v483;
      v507 = swift_allocObject();
      *(v507 + 16) = v494;
      v389 = swift_allocObject();
      v484 = v389;
      *(v389 + 16) = v848;
      *(v389 + 24) = 0;
      v390 = swift_allocObject();
      v391 = v484;
      v508 = v390;
      *(v390 + 16) = v980;
      *(v390 + 24) = v391;
      v509 = swift_allocObject();
      *(v509 + 16) = 0;
      v510 = swift_allocObject();
      *(v510 + 16) = v494;
      v392 = swift_allocObject();
      v393 = v485;
      v486 = v392;
      *(v392 + 16) = v981;
      *(v392 + 24) = v393;
      v394 = swift_allocObject();
      v395 = v486;
      v511 = v394;
      *(v394 + 16) = v982;
      *(v394 + 24) = v395;
      v512 = swift_allocObject();
      *(v512 + 16) = 112;
      v513 = swift_allocObject();
      v490 = 8;
      *(v513 + 16) = 8;
      v499 = 24;
      v487 = swift_allocObject();
      *(v487 + 16) = v852;
      v396 = swift_allocObject();
      v397 = v487;
      v514 = v396;
      *(v396 + 16) = v983;
      *(v396 + 24) = v397;
      v515 = swift_allocObject();
      *(v515 + 16) = 37;
      v516 = swift_allocObject();
      *(v516 + 16) = v490;
      v398 = swift_allocObject();
      v399 = v488;
      v489 = v398;
      *(v398 + 16) = v984;
      *(v398 + 24) = v399;
      v400 = swift_allocObject();
      v401 = v489;
      v517 = v400;
      *(v400 + 16) = v985;
      *(v400 + 24) = v401;
      v518 = swift_allocObject();
      *(v518 + 16) = 34;
      v519 = swift_allocObject();
      *(v519 + 16) = v490;
      v402 = swift_allocObject();
      v403 = v491;
      v492 = v402;
      *(v402 + 16) = v986;
      *(v402 + 24) = v403;
      v404 = swift_allocObject();
      v405 = v492;
      v520 = v404;
      *(v404 + 16) = v987;
      *(v404 + 24) = v405;
      v521 = swift_allocObject();
      *(v521 + 16) = 0;
      v522 = swift_allocObject();
      *(v522 + 16) = v494;
      v406 = swift_allocObject();
      v407 = v497;
      v498 = v406;
      *(v406 + 16) = v988;
      *(v406 + 24) = v407;
      v408 = swift_allocObject();
      v409 = v498;
      v524 = v408;
      *(v408 + 16) = v989;
      *(v408 + 24) = v409;
      v526 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v523 = sub_1B0E46A48();
      v525 = v410;

      v411 = v500;
      v412 = v525;
      *v525 = v990;
      v412[1] = v411;

      v413 = v501;
      v414 = v525;
      v525[2] = v991;
      v414[3] = v413;

      v415 = v502;
      v416 = v525;
      v525[4] = v992;
      v416[5] = v415;

      v417 = v503;
      v418 = v525;
      v525[6] = v993;
      v418[7] = v417;

      v419 = v504;
      v420 = v525;
      v525[8] = v994;
      v420[9] = v419;

      v421 = v505;
      v422 = v525;
      v525[10] = v995;
      v422[11] = v421;

      v423 = v506;
      v424 = v525;
      v525[12] = v996;
      v424[13] = v423;

      v425 = v507;
      v426 = v525;
      v525[14] = v997;
      v426[15] = v425;

      v427 = v508;
      v428 = v525;
      v525[16] = v998;
      v428[17] = v427;

      v429 = v509;
      v430 = v525;
      v525[18] = v999;
      v430[19] = v429;

      v431 = v510;
      v432 = v525;
      v525[20] = v1000;
      v432[21] = v431;

      v433 = v511;
      v434 = v525;
      v525[22] = v1001;
      v434[23] = v433;

      v435 = v512;
      v436 = v525;
      v525[24] = v1002;
      v436[25] = v435;

      v437 = v513;
      v438 = v525;
      v525[26] = v1003;
      v438[27] = v437;

      v439 = v514;
      v440 = v525;
      v525[28] = v1004;
      v440[29] = v439;

      v441 = v515;
      v442 = v525;
      v525[30] = v1005;
      v442[31] = v441;

      v443 = v516;
      v444 = v525;
      v525[32] = v1006;
      v444[33] = v443;

      v445 = v517;
      v446 = v525;
      v525[34] = v1007;
      v446[35] = v445;

      v447 = v518;
      v448 = v525;
      v525[36] = v1008;
      v448[37] = v447;

      v449 = v519;
      v450 = v525;
      v525[38] = v1009;
      v450[39] = v449;

      v451 = v520;
      v452 = v525;
      v525[40] = v1010;
      v452[41] = v451;

      v453 = v521;
      v454 = v525;
      v525[42] = v1011;
      v454[43] = v453;

      v455 = v522;
      v456 = v525;
      v525[44] = v1012;
      v456[45] = v455;

      v457 = v524;
      v458 = v525;
      v525[46] = v1013;
      v458[47] = v457;
      sub_1B0394964();

      if (os_log_type_enabled(v527, v528))
      {
        v459 = v470;
        v463 = sub_1B0E45D78();
        v462 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v464 = sub_1B03949A8(0, v462, v462);
        v465 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v466 = &v1085;
        v1085 = v463;
        v467 = &v1084;
        v1084 = v464;
        v468 = &v1083;
        v1083 = v465;
        sub_1B0394A48(3, &v1085);
        sub_1B0394A48(8, v466);
        v1081 = v990;
        v1082 = v500;
        sub_1B03949FC(&v1081, v466, v467, v468);
        v469 = v459;
        if (v459)
        {

          __break(1u);
        }

        else
        {
          v1081 = v991;
          v1082 = v501;
          sub_1B03949FC(&v1081, &v1085, &v1084, &v1083);
          v461[24] = 0;
          v1081 = v992;
          v1082 = v502;
          sub_1B03949FC(&v1081, &v1085, &v1084, &v1083);
          v461[23] = 0;
          v1081 = v993;
          v1082 = v503;
          sub_1B03949FC(&v1081, &v1085, &v1084, &v1083);
          v461[22] = 0;
          v1081 = v994;
          v1082 = v504;
          sub_1B03949FC(&v1081, &v1085, &v1084, &v1083);
          v461[21] = 0;
          v1081 = v995;
          v1082 = v505;
          sub_1B03949FC(&v1081, &v1085, &v1084, &v1083);
          v461[20] = 0;
          v1081 = v996;
          v1082 = v506;
          sub_1B03949FC(&v1081, &v1085, &v1084, &v1083);
          v461[19] = 0;
          v1081 = v997;
          v1082 = v507;
          sub_1B03949FC(&v1081, &v1085, &v1084, &v1083);
          v461[18] = 0;
          v1081 = v998;
          v1082 = v508;
          sub_1B03949FC(&v1081, &v1085, &v1084, &v1083);
          v461[17] = 0;
          v1081 = v999;
          v1082 = v509;
          sub_1B03949FC(&v1081, &v1085, &v1084, &v1083);
          v461[16] = 0;
          v1081 = v1000;
          v1082 = v510;
          sub_1B03949FC(&v1081, &v1085, &v1084, &v1083);
          v461[15] = 0;
          v1081 = v1001;
          v1082 = v511;
          sub_1B03949FC(&v1081, &v1085, &v1084, &v1083);
          v461[14] = 0;
          v1081 = v1002;
          v1082 = v512;
          sub_1B03949FC(&v1081, &v1085, &v1084, &v1083);
          v461[13] = 0;
          v1081 = v1003;
          v1082 = v513;
          sub_1B03949FC(&v1081, &v1085, &v1084, &v1083);
          v461[12] = 0;
          v1081 = v1004;
          v1082 = v514;
          sub_1B03949FC(&v1081, &v1085, &v1084, &v1083);
          v461[11] = 0;
          v1081 = v1005;
          v1082 = v515;
          sub_1B03949FC(&v1081, &v1085, &v1084, &v1083);
          v461[10] = 0;
          v1081 = v1006;
          v1082 = v516;
          sub_1B03949FC(&v1081, &v1085, &v1084, &v1083);
          v461[9] = 0;
          v1081 = v1007;
          v1082 = v517;
          sub_1B03949FC(&v1081, &v1085, &v1084, &v1083);
          v461[8] = 0;
          v1081 = v1008;
          v1082 = v518;
          sub_1B03949FC(&v1081, &v1085, &v1084, &v1083);
          v461[7] = 0;
          v1081 = v1009;
          v1082 = v519;
          sub_1B03949FC(&v1081, &v1085, &v1084, &v1083);
          v461[6] = 0;
          v1081 = v1010;
          v1082 = v520;
          sub_1B03949FC(&v1081, &v1085, &v1084, &v1083);
          v461[5] = 0;
          v1081 = v1011;
          v1082 = v521;
          sub_1B03949FC(&v1081, &v1085, &v1084, &v1083);
          v461[4] = 0;
          v1081 = v1012;
          v1082 = v522;
          sub_1B03949FC(&v1081, &v1085, &v1084, &v1083);
          v461[3] = 0;
          v1081 = v1013;
          v1082 = v524;
          sub_1B03949FC(&v1081, &v1085, &v1084, &v1083);
          _os_log_impl(&dword_1B0389000, v527, v528, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Invalid state for section [%{public}s] data for %u.", v463, 0x3Bu);
          sub_1B03998A8(v464, 0, v462);
          sub_1B03998A8(v465, 2, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v527);
      (*(v1028 + 8))(v1031, v1027);
      v461[0] = v1067[2];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v460 = type metadata accessor for InProgressMessageDownload.Section(0);
      (*(*(v460 - 8) + 56))(v1046, 1);
      v461[1] = &v1087;
      v1087 = v461[0];
      v461[2] = &v1086;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2090, &qword_1B0E9B520);
      sub_1B0E44788();
      swift_endAccess();

      return sub_1B07AE888(v1071);
    }

    if ((*(v1051 + 48))(v1048, 1, v1049) == 1)
    {
      sub_1B07AEB1C(v1048);
      v830 = v1067[2];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B07AE9EC(v1071, v1046);
      v829 = type metadata accessor for InProgressMessageDownload.Section(0);
      v828 = 0;
      swift_storeEnumTagMultiPayload();
      (*(*(v829 - 8) + 56))(v1046, v828, 1);
      v831 = &v1080;
      v1080 = v830;
      v832 = &v1079;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2090, &qword_1B0E9B520);
      sub_1B0E44788();
      swift_endAccess();
    }

    else
    {
      sub_1B07AC238(v1048, v1059);
      v835 = v1067[2];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B07AC570(v1059, v1046);
      v834 = type metadata accessor for InProgressMessageDownload.Section(0);
      v833 = 1;
      swift_storeEnumTagMultiPayload();
      (*(*(v834 - 8) + 56))(v1046, 0, v833);
      v836 = &v1078;
      v1078 = v835;
      v837 = &v1077;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2090, &qword_1B0E9B520);
      sub_1B0E44788();
      swift_endAccess();
      sub_1B07AC2FC(v1059);
    }

    sub_1B07AE888(v1071);
    v827 = v838;
  }

  v722 = v827;
  v724 = v1067[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v723 = (v840 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections);
  v727 = &v1102;
  swift_beginAccess();
  v725 = *v723;
  v726 = &v1101;
  v1101 = v724;
  v728 = type metadata accessor for InProgressMessageDownload.Section(0);
  sub_1B07167A8();
  sub_1B0E44778();
  sub_1B039E440(v726);
  swift_endAccess();
  if ((*(*(v728 - 8) + 48))(v1044, 1))
  {
    return sub_1B07ADE14(v1044);
  }

  sub_1B07AE118(v1044, v1042);
  v721 = swift_getEnumCaseMultiPayload();
  if (v721)
  {
    if (v721 != 1)
    {
      sub_1B0760B84(v1042);
      return sub_1B07ADE14(v1044);
    }

    v249 = v1033;
    sub_1B07AC238(v1042, v1055);
    v1119 = v1055;
    (*(v1028 + 16))(v249, v1065, v1027);
    sub_1B074B69C(v1065, v1026);
    sub_1B074B69C(v1026, v1024);
    sub_1B074E41C(v1026, v1022);
    v250 = (v1024 + *(v1020 + 20));
    v564 = *v250;
    v565 = *(v250 + 1);
    v566 = *(v250 + 1);
    v567 = *(v250 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v1024);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v563 = 36;
    v590 = 7;
    v251 = swift_allocObject();
    v252 = v565;
    v253 = v566;
    v254 = v567;
    v573 = v251;
    *(v251 + 16) = v564;
    *(v251 + 20) = v252;
    *(v251 + 24) = v253;
    *(v251 + 32) = v254;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v255 = swift_allocObject();
    v256 = v565;
    v257 = v566;
    v258 = v567;
    v562 = v255;
    *(v255 + 16) = v564;
    *(v255 + 20) = v256;
    *(v255 + 24) = v257;
    *(v255 + 32) = v258;

    v589 = 32;
    v259 = swift_allocObject();
    v260 = v562;
    v577 = v259;
    *(v259 + 16) = v884;
    *(v259 + 24) = v260;
    sub_1B0394868();
    sub_1B0394868();

    v261 = swift_allocObject();
    v262 = v565;
    v263 = v566;
    v264 = v567;
    v265 = v261;
    v266 = v1022;
    v580 = v265;
    *(v265 + 16) = v564;
    *(v265 + 20) = v262;
    *(v265 + 24) = v263;
    *(v265 + 32) = v264;
    sub_1B074B764(v266);
    sub_1B07AC570(v1055, v1057);
    v570 = *(v1052 + 80);
    v568 = (v570 + 16) & ~v570;
    v569 = swift_allocObject();
    sub_1B07AC238(v1057, v569 + v568);

    v267 = swift_allocObject();
    v268 = v569;
    v582 = v267;
    *(v267 + 16) = v885;
    *(v267 + 24) = v268;

    v269 = swift_allocObject();
    v270 = v840;
    v585 = v269;
    *(v269 + 16) = v886;
    *(v269 + 24) = v270;

    sub_1B07AC570(v1055, v1057);
    v571 = (v570 + 16) & ~v570;
    v591 = swift_allocObject();
    sub_1B07AC238(v1057, v591 + v571);
    sub_1B07575C4();

    v623 = sub_1B0E43988();
    v624 = sub_1B0E458D8();
    v587 = 17;
    v593 = swift_allocObject();
    v575 = 16;
    *(v593 + 16) = 16;
    v594 = swift_allocObject();
    v584 = 4;
    *(v594 + 16) = 4;
    v271 = swift_allocObject();
    v572 = v271;
    *(v271 + 16) = v844;
    *(v271 + 24) = 0;
    v272 = swift_allocObject();
    v273 = v572;
    v595 = v272;
    *(v272 + 16) = v887;
    *(v272 + 24) = v273;
    v596 = swift_allocObject();
    *(v596 + 16) = 0;
    v597 = swift_allocObject();
    *(v597 + 16) = 1;
    v274 = swift_allocObject();
    v275 = v573;
    v574 = v274;
    *(v274 + 16) = v888;
    *(v274 + 24) = v275;
    v276 = swift_allocObject();
    v277 = v574;
    v598 = v276;
    *(v276 + 16) = v889;
    *(v276 + 24) = v277;
    v599 = swift_allocObject();
    *(v599 + 16) = v575;
    v600 = swift_allocObject();
    *(v600 + 16) = v584;
    v278 = swift_allocObject();
    v576 = v278;
    *(v278 + 16) = v848;
    *(v278 + 24) = 0;
    v279 = swift_allocObject();
    v280 = v576;
    v601 = v279;
    *(v279 + 16) = v890;
    *(v279 + 24) = v280;
    v602 = swift_allocObject();
    *(v602 + 16) = 0;
    v603 = swift_allocObject();
    *(v603 + 16) = v584;
    v281 = swift_allocObject();
    v282 = v577;
    v578 = v281;
    *(v281 + 16) = v891;
    *(v281 + 24) = v282;
    v283 = swift_allocObject();
    v284 = v578;
    v604 = v283;
    *(v283 + 16) = v892;
    *(v283 + 24) = v284;
    v605 = swift_allocObject();
    *(v605 + 16) = 112;
    v606 = swift_allocObject();
    v588 = 8;
    *(v606 + 16) = 8;
    v579 = swift_allocObject();
    *(v579 + 16) = v852;
    v285 = swift_allocObject();
    v286 = v579;
    v607 = v285;
    *(v285 + 16) = v893;
    *(v285 + 24) = v286;
    v608 = swift_allocObject();
    *(v608 + 16) = 37;
    v609 = swift_allocObject();
    *(v609 + 16) = v588;
    v287 = swift_allocObject();
    v288 = v580;
    v581 = v287;
    *(v287 + 16) = v894;
    *(v287 + 24) = v288;
    v289 = swift_allocObject();
    v290 = v581;
    v610 = v289;
    *(v289 + 16) = v895;
    *(v289 + 24) = v290;
    v611 = swift_allocObject();
    *(v611 + 16) = 34;
    v612 = swift_allocObject();
    *(v612 + 16) = v588;
    v291 = swift_allocObject();
    v292 = v582;
    v583 = v291;
    *(v291 + 16) = v896;
    *(v291 + 24) = v292;
    v293 = swift_allocObject();
    v294 = v583;
    v613 = v293;
    *(v293 + 16) = v897;
    *(v293 + 24) = v294;
    v614 = swift_allocObject();
    *(v614 + 16) = 0;
    v615 = swift_allocObject();
    *(v615 + 16) = v584;
    v295 = swift_allocObject();
    v296 = v585;
    v586 = v295;
    *(v295 + 16) = v898;
    *(v295 + 24) = v296;
    v297 = swift_allocObject();
    v298 = v586;
    v616 = v297;
    *(v297 + 16) = v899;
    *(v297 + 24) = v298;
    v617 = swift_allocObject();
    *(v617 + 16) = 0;
    v618 = swift_allocObject();
    *(v618 + 16) = v588;
    v299 = swift_allocObject();
    v300 = v591;
    v592 = v299;
    *(v299 + 16) = v900;
    *(v299 + 24) = v300;
    v301 = swift_allocObject();
    v302 = v592;
    v620 = v301;
    *(v301 + 16) = v901;
    *(v301 + 24) = v302;
    v622 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v619 = sub_1B0E46A48();
    v621 = v303;

    v304 = v593;
    v305 = v621;
    *v621 = v902;
    v305[1] = v304;

    v306 = v594;
    v307 = v621;
    v621[2] = v903;
    v307[3] = v306;

    v308 = v595;
    v309 = v621;
    v621[4] = v904;
    v309[5] = v308;

    v310 = v596;
    v311 = v621;
    v621[6] = v905;
    v311[7] = v310;

    v312 = v597;
    v313 = v621;
    v621[8] = v906;
    v313[9] = v312;

    v314 = v598;
    v315 = v621;
    v621[10] = v907;
    v315[11] = v314;

    v316 = v599;
    v317 = v621;
    v621[12] = v908;
    v317[13] = v316;

    v318 = v600;
    v319 = v621;
    v621[14] = v909;
    v319[15] = v318;

    v320 = v601;
    v321 = v621;
    v621[16] = v910;
    v321[17] = v320;

    v322 = v602;
    v323 = v621;
    v621[18] = v911;
    v323[19] = v322;

    v324 = v603;
    v325 = v621;
    v621[20] = v912;
    v325[21] = v324;

    v326 = v604;
    v327 = v621;
    v621[22] = v913;
    v327[23] = v326;

    v328 = v605;
    v329 = v621;
    v621[24] = v914;
    v329[25] = v328;

    v330 = v606;
    v331 = v621;
    v621[26] = v915;
    v331[27] = v330;

    v332 = v607;
    v333 = v621;
    v621[28] = v916;
    v333[29] = v332;

    v334 = v608;
    v335 = v621;
    v621[30] = v917;
    v335[31] = v334;

    v336 = v609;
    v337 = v621;
    v621[32] = v918;
    v337[33] = v336;

    v338 = v610;
    v339 = v621;
    v621[34] = v919;
    v339[35] = v338;

    v340 = v611;
    v341 = v621;
    v621[36] = v920;
    v341[37] = v340;

    v342 = v612;
    v343 = v621;
    v621[38] = v921;
    v343[39] = v342;

    v344 = v613;
    v345 = v621;
    v621[40] = v922;
    v345[41] = v344;

    v346 = v614;
    v347 = v621;
    v621[42] = v923;
    v347[43] = v346;

    v348 = v615;
    v349 = v621;
    v621[44] = v924;
    v349[45] = v348;

    v350 = v616;
    v351 = v621;
    v621[46] = v925;
    v351[47] = v350;

    v352 = v617;
    v353 = v621;
    v621[48] = v926;
    v353[49] = v352;

    v354 = v618;
    v355 = v621;
    v621[50] = v927;
    v355[51] = v354;

    v356 = v620;
    v357 = v621;
    v621[52] = v928;
    v357[53] = v356;
    sub_1B0394964();

    if (os_log_type_enabled(v623, v624))
    {
      v358 = v722;
      v555 = sub_1B0E45D78();
      v554 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v556 = sub_1B03949A8(0, v554, v554);
      v557 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v558 = &v1100;
      v1100 = v555;
      v559 = &v1099;
      v1099 = v556;
      v560 = &v1098;
      v1098 = v557;
      sub_1B0394A48(3, &v1100);
      sub_1B0394A48(9, v558);
      v1096 = v902;
      v1097 = v593;
      sub_1B03949FC(&v1096, v558, v559, v560);
      v561 = v358;
      if (v358)
      {

        __break(1u);
      }

      else
      {
        v1096 = v903;
        v1097 = v594;
        sub_1B03949FC(&v1096, &v1100, &v1099, &v1098);
        v553 = 0;
        v1096 = v904;
        v1097 = v595;
        sub_1B03949FC(&v1096, &v1100, &v1099, &v1098);
        v552 = 0;
        v1096 = v905;
        v1097 = v596;
        sub_1B03949FC(&v1096, &v1100, &v1099, &v1098);
        v551 = 0;
        v1096 = v906;
        v1097 = v597;
        sub_1B03949FC(&v1096, &v1100, &v1099, &v1098);
        v550 = 0;
        v1096 = v907;
        v1097 = v598;
        sub_1B03949FC(&v1096, &v1100, &v1099, &v1098);
        v549 = 0;
        v1096 = v908;
        v1097 = v599;
        sub_1B03949FC(&v1096, &v1100, &v1099, &v1098);
        v548 = 0;
        v1096 = v909;
        v1097 = v600;
        sub_1B03949FC(&v1096, &v1100, &v1099, &v1098);
        v547 = 0;
        v1096 = v910;
        v1097 = v601;
        sub_1B03949FC(&v1096, &v1100, &v1099, &v1098);
        v546 = 0;
        v1096 = v911;
        v1097 = v602;
        sub_1B03949FC(&v1096, &v1100, &v1099, &v1098);
        v545 = 0;
        v1096 = v912;
        v1097 = v603;
        sub_1B03949FC(&v1096, &v1100, &v1099, &v1098);
        v544 = 0;
        v1096 = v913;
        v1097 = v604;
        sub_1B03949FC(&v1096, &v1100, &v1099, &v1098);
        v543 = 0;
        v1096 = v914;
        v1097 = v605;
        sub_1B03949FC(&v1096, &v1100, &v1099, &v1098);
        v542 = 0;
        v1096 = v915;
        v1097 = v606;
        sub_1B03949FC(&v1096, &v1100, &v1099, &v1098);
        v541 = 0;
        v1096 = v916;
        v1097 = v607;
        sub_1B03949FC(&v1096, &v1100, &v1099, &v1098);
        v540 = 0;
        v1096 = v917;
        v1097 = v608;
        sub_1B03949FC(&v1096, &v1100, &v1099, &v1098);
        v539 = 0;
        v1096 = v918;
        v1097 = v609;
        sub_1B03949FC(&v1096, &v1100, &v1099, &v1098);
        v538 = 0;
        v1096 = v919;
        v1097 = v610;
        sub_1B03949FC(&v1096, &v1100, &v1099, &v1098);
        v537 = 0;
        v1096 = v920;
        v1097 = v611;
        sub_1B03949FC(&v1096, &v1100, &v1099, &v1098);
        v536 = 0;
        v1096 = v921;
        v1097 = v612;
        sub_1B03949FC(&v1096, &v1100, &v1099, &v1098);
        v535 = 0;
        v1096 = v922;
        v1097 = v613;
        sub_1B03949FC(&v1096, &v1100, &v1099, &v1098);
        v534 = 0;
        v1096 = v923;
        v1097 = v614;
        sub_1B03949FC(&v1096, &v1100, &v1099, &v1098);
        v533 = 0;
        v1096 = v924;
        v1097 = v615;
        sub_1B03949FC(&v1096, &v1100, &v1099, &v1098);
        v532 = 0;
        v1096 = v925;
        v1097 = v616;
        sub_1B03949FC(&v1096, &v1100, &v1099, &v1098);
        v531 = 0;
        v1096 = v926;
        v1097 = v617;
        sub_1B03949FC(&v1096, &v1100, &v1099, &v1098);
        v530 = 0;
        v1096 = v927;
        v1097 = v618;
        sub_1B03949FC(&v1096, &v1100, &v1099, &v1098);
        v529 = 0;
        v1096 = v928;
        v1097 = v620;
        sub_1B03949FC(&v1096, &v1100, &v1099, &v1098);
        _os_log_impl(&dword_1B0389000, v623, v624, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Completed section [%{public}s] for UID %u (%{iec-bytes}ld) bytes.", v555, 0x45u);
        sub_1B03998A8(v556, 0, v554);
        sub_1B03998A8(v557, 2, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v623);
    (*(v1028 + 8))(v1033, v1027);
    sub_1B07AC2FC(v1055);
    return sub_1B07ADE14(v1044);
  }

  else
  {
    (*(v1028 + 16))(v1035, v1065, v1027);
    sub_1B074B69C(v1065, v1026);
    sub_1B074B69C(v1026, v1024);
    sub_1B074E41C(v1026, v1022);
    v140 = (v1024 + *(v1020 + 20));
    v660 = *v140;
    v661 = *(v140 + 1);
    v662 = *(v140 + 1);
    v663 = *(v140 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v1024);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v659 = 36;
    v686 = 7;
    v141 = swift_allocObject();
    v142 = v661;
    v143 = v662;
    v144 = v663;
    v669 = v141;
    *(v141 + 16) = v660;
    *(v141 + 20) = v142;
    *(v141 + 24) = v143;
    *(v141 + 32) = v144;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v145 = swift_allocObject();
    v146 = v661;
    v147 = v662;
    v148 = v663;
    v658 = v145;
    *(v145 + 16) = v660;
    *(v145 + 20) = v146;
    *(v145 + 24) = v147;
    *(v145 + 32) = v148;

    v685 = 32;
    v149 = swift_allocObject();
    v150 = v658;
    v673 = v149;
    *(v149 + 16) = v929;
    *(v149 + 24) = v150;
    sub_1B0394868();
    sub_1B0394868();

    v151 = swift_allocObject();
    v152 = v661;
    v153 = v662;
    v154 = v663;
    v155 = v151;
    v156 = v1022;
    v676 = v155;
    *(v155 + 16) = v660;
    *(v155 + 20) = v152;
    *(v155 + 24) = v153;
    *(v155 + 32) = v154;
    sub_1B074B764(v156);
    sub_1B07AD790(v1067, v1019);
    v665 = *(v1016 + 80);
    v664 = (v665 + 16) & ~v665;
    v678 = swift_allocObject();
    sub_1B07ADB58(v1019, v678 + v664);
    sub_1B07575C4();

    sub_1B07AD790(v1067, v1019);
    v666 = (v665 + 16) & ~v665;
    v667 = swift_allocObject();
    sub_1B07ADB58(v1019, v667 + v666);

    v157 = swift_allocObject();
    v158 = v667;
    v681 = v157;
    *(v157 + 16) = v930;
    *(v157 + 24) = v158;

    v159 = swift_allocObject();
    v160 = v840;
    v687 = v159;
    *(v159 + 16) = v931;
    *(v159 + 24) = v160;

    v719 = sub_1B0E43988();
    v720 = sub_1B0E458D8();
    v683 = 17;
    v689 = swift_allocObject();
    v671 = 16;
    *(v689 + 16) = 16;
    v690 = swift_allocObject();
    v684 = 4;
    *(v690 + 16) = 4;
    v161 = swift_allocObject();
    v668 = v161;
    *(v161 + 16) = v844;
    *(v161 + 24) = 0;
    v162 = swift_allocObject();
    v163 = v668;
    v691 = v162;
    *(v162 + 16) = v932;
    *(v162 + 24) = v163;
    v692 = swift_allocObject();
    *(v692 + 16) = 0;
    v693 = swift_allocObject();
    *(v693 + 16) = 1;
    v164 = swift_allocObject();
    v165 = v669;
    v670 = v164;
    *(v164 + 16) = v933;
    *(v164 + 24) = v165;
    v166 = swift_allocObject();
    v167 = v670;
    v694 = v166;
    *(v166 + 16) = v934;
    *(v166 + 24) = v167;
    v695 = swift_allocObject();
    *(v695 + 16) = v671;
    v696 = swift_allocObject();
    *(v696 + 16) = v684;
    v168 = swift_allocObject();
    v672 = v168;
    *(v168 + 16) = v848;
    *(v168 + 24) = 0;
    v169 = swift_allocObject();
    v170 = v672;
    v697 = v169;
    *(v169 + 16) = v935;
    *(v169 + 24) = v170;
    v698 = swift_allocObject();
    *(v698 + 16) = 0;
    v699 = swift_allocObject();
    *(v699 + 16) = v684;
    v171 = swift_allocObject();
    v172 = v673;
    v674 = v171;
    *(v171 + 16) = v936;
    *(v171 + 24) = v172;
    v173 = swift_allocObject();
    v174 = v674;
    v700 = v173;
    *(v173 + 16) = v937;
    *(v173 + 24) = v174;
    v701 = swift_allocObject();
    *(v701 + 16) = 112;
    v702 = swift_allocObject();
    v680 = 8;
    *(v702 + 16) = 8;
    v675 = swift_allocObject();
    *(v675 + 16) = v852;
    v175 = swift_allocObject();
    v176 = v675;
    v703 = v175;
    *(v175 + 16) = v938;
    *(v175 + 24) = v176;
    v704 = swift_allocObject();
    *(v704 + 16) = 37;
    v705 = swift_allocObject();
    *(v705 + 16) = v680;
    v177 = swift_allocObject();
    v178 = v676;
    v677 = v177;
    *(v177 + 16) = v939;
    *(v177 + 24) = v178;
    v179 = swift_allocObject();
    v180 = v677;
    v706 = v179;
    *(v179 + 16) = v940;
    *(v179 + 24) = v180;
    v707 = swift_allocObject();
    *(v707 + 16) = 0;
    v708 = swift_allocObject();
    *(v708 + 16) = v680;
    v181 = swift_allocObject();
    v182 = v678;
    v679 = v181;
    *(v181 + 16) = v941;
    *(v181 + 24) = v182;
    v183 = swift_allocObject();
    v184 = v679;
    v709 = v183;
    *(v183 + 16) = v942;
    *(v183 + 24) = v184;
    v710 = swift_allocObject();
    *(v710 + 16) = 34;
    v711 = swift_allocObject();
    *(v711 + 16) = v680;
    v185 = swift_allocObject();
    v186 = v681;
    v682 = v185;
    *(v185 + 16) = v943;
    *(v185 + 24) = v186;
    v187 = swift_allocObject();
    v188 = v682;
    v712 = v187;
    *(v187 + 16) = v944;
    *(v187 + 24) = v188;
    v713 = swift_allocObject();
    *(v713 + 16) = 0;
    v714 = swift_allocObject();
    *(v714 + 16) = v684;
    v189 = swift_allocObject();
    v190 = v687;
    v688 = v189;
    *(v189 + 16) = v945;
    *(v189 + 24) = v190;
    v191 = swift_allocObject();
    v192 = v688;
    v716 = v191;
    *(v191 + 16) = v946;
    *(v191 + 24) = v192;
    v718 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v715 = sub_1B0E46A48();
    v717 = v193;

    v194 = v689;
    v195 = v717;
    *v717 = v947;
    v195[1] = v194;

    v196 = v690;
    v197 = v717;
    v717[2] = v948;
    v197[3] = v196;

    v198 = v691;
    v199 = v717;
    v717[4] = v949;
    v199[5] = v198;

    v200 = v692;
    v201 = v717;
    v717[6] = v950;
    v201[7] = v200;

    v202 = v693;
    v203 = v717;
    v717[8] = v951;
    v203[9] = v202;

    v204 = v694;
    v205 = v717;
    v717[10] = v952;
    v205[11] = v204;

    v206 = v695;
    v207 = v717;
    v717[12] = v953;
    v207[13] = v206;

    v208 = v696;
    v209 = v717;
    v717[14] = v954;
    v209[15] = v208;

    v210 = v697;
    v211 = v717;
    v717[16] = v955;
    v211[17] = v210;

    v212 = v698;
    v213 = v717;
    v717[18] = v956;
    v213[19] = v212;

    v214 = v699;
    v215 = v717;
    v717[20] = v957;
    v215[21] = v214;

    v216 = v700;
    v217 = v717;
    v717[22] = v958;
    v217[23] = v216;

    v218 = v701;
    v219 = v717;
    v717[24] = v959;
    v219[25] = v218;

    v220 = v702;
    v221 = v717;
    v717[26] = v960;
    v221[27] = v220;

    v222 = v703;
    v223 = v717;
    v717[28] = v961;
    v223[29] = v222;

    v224 = v704;
    v225 = v717;
    v717[30] = v962;
    v225[31] = v224;

    v226 = v705;
    v227 = v717;
    v717[32] = v963;
    v227[33] = v226;

    v228 = v706;
    v229 = v717;
    v717[34] = v964;
    v229[35] = v228;

    v230 = v707;
    v231 = v717;
    v717[36] = v965;
    v231[37] = v230;

    v232 = v708;
    v233 = v717;
    v717[38] = v966;
    v233[39] = v232;

    v234 = v709;
    v235 = v717;
    v717[40] = v967;
    v235[41] = v234;

    v236 = v710;
    v237 = v717;
    v717[42] = v968;
    v237[43] = v236;

    v238 = v711;
    v239 = v717;
    v717[44] = v969;
    v239[45] = v238;

    v240 = v712;
    v241 = v717;
    v717[46] = v970;
    v241[47] = v240;

    v242 = v713;
    v243 = v717;
    v717[48] = v971;
    v243[49] = v242;

    v244 = v714;
    v245 = v717;
    v717[50] = v972;
    v245[51] = v244;

    v246 = v716;
    v247 = v717;
    v717[52] = v973;
    v247[53] = v246;
    sub_1B0394964();

    if (os_log_type_enabled(v719, v720))
    {
      v248 = v722;
      v651 = sub_1B0E45D78();
      v650 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v652 = sub_1B03949A8(0, v650, v650);
      v653 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v654 = &v1095;
      v1095 = v651;
      v655 = &v1094;
      v1094 = v652;
      v656 = &v1093;
      v1093 = v653;
      sub_1B0394A48(3, &v1095);
      sub_1B0394A48(9, v654);
      v1091 = v947;
      v1092 = v689;
      sub_1B03949FC(&v1091, v654, v655, v656);
      v657 = v248;
      if (v248)
      {

        __break(1u);
      }

      else
      {
        v1091 = v948;
        v1092 = v690;
        sub_1B03949FC(&v1091, &v1095, &v1094, &v1093);
        v649 = 0;
        v1091 = v949;
        v1092 = v691;
        sub_1B03949FC(&v1091, &v1095, &v1094, &v1093);
        v648 = 0;
        v1091 = v950;
        v1092 = v692;
        sub_1B03949FC(&v1091, &v1095, &v1094, &v1093);
        v647 = 0;
        v1091 = v951;
        v1092 = v693;
        sub_1B03949FC(&v1091, &v1095, &v1094, &v1093);
        v646 = 0;
        v1091 = v952;
        v1092 = v694;
        sub_1B03949FC(&v1091, &v1095, &v1094, &v1093);
        v645 = 0;
        v1091 = v953;
        v1092 = v695;
        sub_1B03949FC(&v1091, &v1095, &v1094, &v1093);
        v644 = 0;
        v1091 = v954;
        v1092 = v696;
        sub_1B03949FC(&v1091, &v1095, &v1094, &v1093);
        v643 = 0;
        v1091 = v955;
        v1092 = v697;
        sub_1B03949FC(&v1091, &v1095, &v1094, &v1093);
        v642 = 0;
        v1091 = v956;
        v1092 = v698;
        sub_1B03949FC(&v1091, &v1095, &v1094, &v1093);
        v641 = 0;
        v1091 = v957;
        v1092 = v699;
        sub_1B03949FC(&v1091, &v1095, &v1094, &v1093);
        v640 = 0;
        v1091 = v958;
        v1092 = v700;
        sub_1B03949FC(&v1091, &v1095, &v1094, &v1093);
        v639 = 0;
        v1091 = v959;
        v1092 = v701;
        sub_1B03949FC(&v1091, &v1095, &v1094, &v1093);
        v638 = 0;
        v1091 = v960;
        v1092 = v702;
        sub_1B03949FC(&v1091, &v1095, &v1094, &v1093);
        v637 = 0;
        v1091 = v961;
        v1092 = v703;
        sub_1B03949FC(&v1091, &v1095, &v1094, &v1093);
        v636 = 0;
        v1091 = v962;
        v1092 = v704;
        sub_1B03949FC(&v1091, &v1095, &v1094, &v1093);
        v635 = 0;
        v1091 = v963;
        v1092 = v705;
        sub_1B03949FC(&v1091, &v1095, &v1094, &v1093);
        v634 = 0;
        v1091 = v964;
        v1092 = v706;
        sub_1B03949FC(&v1091, &v1095, &v1094, &v1093);
        v633 = 0;
        v1091 = v965;
        v1092 = v707;
        sub_1B03949FC(&v1091, &v1095, &v1094, &v1093);
        v632 = 0;
        v1091 = v966;
        v1092 = v708;
        sub_1B03949FC(&v1091, &v1095, &v1094, &v1093);
        v631 = 0;
        v1091 = v967;
        v1092 = v709;
        sub_1B03949FC(&v1091, &v1095, &v1094, &v1093);
        v630 = 0;
        v1091 = v968;
        v1092 = v710;
        sub_1B03949FC(&v1091, &v1095, &v1094, &v1093);
        v629 = 0;
        v1091 = v969;
        v1092 = v711;
        sub_1B03949FC(&v1091, &v1095, &v1094, &v1093);
        v628 = 0;
        v1091 = v970;
        v1092 = v712;
        sub_1B03949FC(&v1091, &v1095, &v1094, &v1093);
        v627 = 0;
        v1091 = v971;
        v1092 = v713;
        sub_1B03949FC(&v1091, &v1095, &v1094, &v1093);
        v626 = 0;
        v1091 = v972;
        v1092 = v714;
        sub_1B03949FC(&v1091, &v1095, &v1094, &v1093);
        v625 = 0;
        v1091 = v973;
        v1092 = v716;
        sub_1B03949FC(&v1091, &v1095, &v1094, &v1093);
        _os_log_impl(&dword_1B0389000, v719, v720, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Added %{iec-bytes}ld to section [%{public}s] for UID %u", v651, 0x45u);
        sub_1B03998A8(v652, 0, v650);
        sub_1B03998A8(v653, 2, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v719);
    (*(v1028 + 8))(v1035, v1027);
    sub_1B07AE888(v1042);
    return sub_1B07ADE14(v1044);
  }
}