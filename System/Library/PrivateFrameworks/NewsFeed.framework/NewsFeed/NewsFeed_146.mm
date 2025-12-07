char *sub_1D68901F8(char *a1, char *a2)
{
  v127 = a2;
  v172 = a1;
  v3 = type metadata accessor for FeedRecipe(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  *(&v126 + 1) = &v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for FeedCustomItem(0);
  MEMORY[0x1EEE9AC00](v124, v6);
  *&v126 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FeedPuzzleStatistic(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FormatOptionsNodeStatementContext(0);
  v128 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v125 = &v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v130 = &v123 - v21;
  v22 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v123 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v30 = &v123 - v29;
  v31 = *v2;
  v32 = *(v2 + 1) | ((*(v2 + 5) | (v2[7] << 16)) << 32);
  v33 = *(v2 + 1);
  v34 = *(v2 + 2);
  v36 = *(v2 + 3);
  v35 = *(v2 + 4);
  v37 = *(v2 + 5);
  v38 = v2[48];
  switch((2 * v2[49]) | ((v38 & 8) != 0))
  {
    case 1:
      v98 = *v2;
      v40 = v172;
      v99 = v131;
      sub_1D5FB5410();
      if (!v99)
      {
        v149 = v153;
        v150[0] = v154[0];
        *(v150 + 9) = *(v154 + 9);
        v148[2] = v152[2];
        v148[3] = v152[3];
        v148[4] = v152[4];
        v148[5] = v152[5];
        v148[0] = v152[0];
        v148[1] = v152[1];
        v145 = v153;
        v146[0] = v154[0];
        *(v146 + 9) = *(v154 + 9);
        v141 = v152[2];
        v142 = v152[3];
        v143 = v152[4];
        v144 = v152[5];
        LOBYTE(v138[0]) = v98;
        v139 = v152[0];
        v140 = v152[1];
        v40 = sub_1D6AD7608(&v139);
        sub_1D5ECF320(v148);
      }

      break;
    case 2:
      v162 = *v2;
      v163 = v32;
      v165 = BYTE6(v32);
      v164 = WORD2(v32);
      v166 = v33;
      v167 = v34;
      v168 = v36;
      v169 = v35;
      v170 = v37;
      v171 = v38 & 0xF7;
      v40 = &v162;
      v72 = v131;
      v44 = sub_1D6892A30(v172, v127);
      if (!v72)
      {
        goto LABEL_15;
      }

      break;
    case 3:
    case 4:
      v39 = (v31 | (v32 << 8));
      v40 = *(v2 + 1);

      v41 = v39;
      v42 = v39;
      v43 = v131;
      v44 = sub_1D6F6F34C(v172, v41, v40, v34, v42, v40, v34);
      if (!v43)
      {
LABEL_15:
        v40 = v44;
      }

      break;
    case 5:
      v70 = *v2;
      v40 = v172;
      v71 = v131;
      sub_1D5FB543C();
      if (!v71)
      {
        LOBYTE(v152[0]) = v70;
        v40 = FormatAudioTrackBinding.Text.text(from:)(v25);
        v56 = type metadata accessor for FeedHeadline;
        v57 = v25;
        goto LABEL_13;
      }

      break;
    case 6:
      v58 = *v2;
      v40 = v172;
      v59 = v131;
      sub_1D5FB526C(v152);
      if (!v59)
      {
        v60 = v130;
        sub_1D68B021C(v40, v130, type metadata accessor for FormatOptionsNodeStatementContext);
        v61 = (*(v128 + 80) + 16) & ~*(v128 + 80);
        v62 = swift_allocObject();
        sub_1D5D5E40C(v60, v62 + v61, type metadata accessor for FormatOptionsNodeStatementContext);
        LOBYTE(v148[0]) = v58;
        v63 = swift_allocObject();
        *(v63 + 16) = sub_1D68B04C8;
        *(v63 + 24) = v62;
        ObjectType = swift_getObjectType();

        v65 = swift_unknownObjectRetain();
        v40 = sub_1D6E410E4(v65, sub_1D68B04F0, v63, v148, ObjectType);

        swift_unknownObjectRelease();

        sub_1D5EE5B54(v152);
      }

      break;
    case 7:
      v100 = *v2;
      v40 = v172;
      v101 = v131;
      sub_1D5FB5240();
      if (!v101)
      {
        LOBYTE(v152[0]) = v100;
        v40 = FormatWebEmbedBinding.Text.text(from:)(v15);
        v56 = type metadata accessor for FeedWebEmbed;
        v57 = v15;
        goto LABEL_13;
      }

      break;
    case 8:
      v109 = *(v2 + 3);
      v110 = *(v2 + 4);
      *(&v126 + 1) = *(v2 + 5);
      v111 = v32;
      v112 = v33;
      v113 = v31;
      v40 = v172;
      v114 = v131;
      sub_1D5FB5214();
      if (!v114)
      {
        LOBYTE(v148[0]) = v113;
        *(v148 + 1) = v111;
        BYTE7(v148[0]) = BYTE6(v111);
        *(v148 + 5) = WORD2(v111);
        *(&v148[0] + 1) = v112;
        *&v148[1] = v34;
        *(&v148[1] + 1) = v109;
        *&v148[2] = v110;
        *(&v148[2] + 1) = *(&v126 + 1);
        LOBYTE(v148[3]) = v38 & 0xF7;
        v116 = v130;
        sub_1D68B021C(v40, v130, type metadata accessor for FormatOptionsNodeStatementContext);
        v117 = (*(v128 + 80) + 16) & ~*(v128 + 80);
        v118 = swift_allocObject();
        sub_1D5D5E40C(v116, v118 + v117, type metadata accessor for FormatOptionsNodeStatementContext);
        v40 = FormatPuzzleBinding.Text.text(from:computedContext:selectors:)(v152, v127, sub_1D68B04C8, v118);

        sub_1D5F2DF58(v152);
      }

      break;
    case 9:
      v77 = *(v2 + 1) | ((*(v2 + 5) | (v2[7] << 16)) << 32);
      v78 = *(v2 + 1);
      v79 = *v2;
      v40 = v172;
      v80 = v131;
      sub_1D5FB51E8();
      if (!v80)
      {
        v138[0] = v139;
        v138[1] = v140;
        v138[2] = v141;
        v138[3] = v142;
        v133 = v79;
        v136 = BYTE6(v77);
        v135 = WORD2(v77);
        v134 = v77;
        v137 = v78;
        v132[0] = v139;
        v132[1] = v140;
        v132[2] = v141;
        v132[3] = v142;
        v81 = v125;
        sub_1D68B021C(v40, v125, type metadata accessor for FormatOptionsNodeStatementContext);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v82 = *v81;
          sub_1D5EB9920(0);
          v84 = *(v83 + 48);
          v85 = *(v82 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);
          v86 = *(v82 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
          v87 = *(v82 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 32);
          v152[3] = *(v82 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 48);
          v152[4] = v86;
          *&v152[5] = v85;
          v88 = *(v82 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
          v152[0] = *(v82 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
          v152[1] = v88;
          v152[2] = v87;
          sub_1D5CF6A5C(v152, v148);

          sub_1D5EB9994(0);
          (*(*(v89 - 8) + 8))(&v81[v84], v89);
        }

        else
        {
          v119 = *v81;

          v120 = *(v119 + 96);
          v152[2] = *(v119 + 80);
          v152[3] = v120;
          v152[4] = *(v119 + 112);
          *&v152[5] = *(v119 + 128);
          v121 = *(v119 + 64);
          v152[0] = *(v119 + 48);
          v152[1] = v121;
          sub_1D5CF6A5C(v152, v148);
        }

        LOWORD(v148[0]) = v152[0];
        *(v148 + 8) = *(v152 + 8);
        *(&v148[1] + 8) = *(&v152[1] + 8);
        *(&v148[2] + 8) = *(&v152[2] + 8);
        *(&v148[3] + 8) = *(&v152[3] + 8);
        *(&v148[4] + 8) = *(&v152[4] + 8);
        v40 = FormatPuzzleTypeBinding.Text.text(from:config:)(v132, v148);
        v152[2] = v148[2];
        v152[3] = v148[3];
        v152[4] = v148[4];
        *&v152[5] = *&v148[5];
        v152[0] = v148[0];
        v152[1] = v148[1];
        sub_1D5D09C48(v152);
        sub_1D5F2DE58(v138);
      }

      break;
    case 10:
      v107 = *v2;
      v40 = v172;
      v108 = v131;
      sub_1D5FB51BC();
      if (!v108)
      {
        LOBYTE(v152[0]) = v107;
        v40 = FormatPuzzleStatisticBinding.Text.text(from:)(v11);
        v56 = type metadata accessor for FeedPuzzleStatistic;
        v57 = v11;
        goto LABEL_13;
      }

      break;
    case 11:
      v66 = *v2;
      v67 = v126;
      v40 = v172;
      v68 = v131;
      sub_1D5FB4FE0(v28);
      if (!v68)
      {
        if (v66)
        {
          v69 = (v67 + *(v124 + 20) + 16);
        }

        else
        {
          v69 = v67;
        }

        v40 = *v69;

        v56 = type metadata accessor for FeedCustomItem;
        v57 = v67;
        goto LABEL_13;
      }

      break;
    case 12:
      v73 = *(v2 + 1) | ((*(v2 + 5) | (v2[7] << 16)) << 32);
      v74 = *(v2 + 1);
      v75 = *v2;
      v40 = v172;
      v76 = v131;
      sub_1D5FB4FB4();
      if (!v76)
      {
        LOBYTE(v148[0]) = v75;
        BYTE7(v148[0]) = BYTE6(v73);
        *(v148 + 5) = WORD2(v73);
        *(v148 + 1) = v73;
        BYTE8(v148[0]) = v74;
        sub_1D67CEAD8(v152);
        v40 = v122;
        swift_unknownObjectRelease();
      }

      break;
    case 13:
      v102 = *v2;
      v40 = v172;
      v103 = v131;
      sub_1D5FB4F88();
      if (!v103)
      {
        v150[5] = v158;
        v150[6] = v159;
        v150[7] = v160;
        v150[1] = v154[1];
        v150[2] = v155;
        v150[3] = v156;
        v150[4] = v157;
        v148[4] = v152[4];
        v148[5] = v152[5];
        v149 = v153;
        v150[0] = v154[0];
        v148[0] = v152[0];
        v148[1] = v152[1];
        v148[2] = v152[2];
        v148[3] = v152[3];
        v146[5] = v158;
        v146[6] = v159;
        v146[7] = v160;
        v146[1] = v154[1];
        v146[2] = v155;
        v146[3] = v156;
        v146[4] = v157;
        v143 = v152[4];
        v144 = v152[5];
        v145 = v153;
        v146[0] = v154[0];
        v139 = v152[0];
        v140 = v152[1];
        v151 = v161;
        LOBYTE(v138[0]) = v102;
        v147 = v161;
        v141 = v152[2];
        v142 = v152[3];
        v104 = v130;
        sub_1D68B021C(v40, v130, type metadata accessor for FormatOptionsNodeStatementContext);
        v105 = (*(v128 + 80) + 16) & ~*(v128 + 80);
        v106 = swift_allocObject();
        sub_1D5D5E40C(v104, v106 + v105, type metadata accessor for FormatOptionsNodeStatementContext);
        v40 = FormatPaywallBinding.Text.text(from:selectors:)(&v139, sub_1D68B04C8);

        sub_1D5F2DFAC(v148);
      }

      break;
    case 14:
      v45 = *(v2 + 3);
      v46 = *(v2 + 4);
      v47 = *(v2 + 5);
      v48 = *(v2 + 1) | ((*(v2 + 5) | (v2[7] << 16)) << 32);
      v49 = *(v2 + 1);
      v50 = *v2;
      v40 = v172;
      v51 = v131;
      sub_1D5FB4F5C(v28);
      if (!v51)
      {
        LOBYTE(v152[0]) = v50;
        *(v152 + 1) = v48;
        BYTE7(v152[0]) = BYTE6(v48);
        *(v152 + 5) = WORD2(v48);
        *(&v152[0] + 1) = v49;
        *&v152[1] = v34;
        *(&v152[1] + 1) = v45;
        *&v152[2] = v46;
        *(&v152[2] + 1) = v47;
        v52 = v130;
        sub_1D68B021C(v40, v130, type metadata accessor for FormatOptionsNodeStatementContext);
        v53 = (*(v128 + 80) + 16) & ~*(v128 + 80);
        v54 = swift_allocObject();
        sub_1D5D5E40C(v52, v54 + v53, type metadata accessor for FormatOptionsNodeStatementContext);
        v55 = *(&v126 + 1);
        v40 = sub_1D7006CB0(*(&v126 + 1), sub_1D68B04C8, v54);

        v56 = type metadata accessor for FeedRecipe;
        v57 = v55;
LABEL_13:
        sub_1D5D511FC(v57, v56);
      }

      break;
    default:
      v90 = *(v2 + 3);
      *&v126 = *(v2 + 4);
      *(&v126 + 1) = v37;
      v91 = v32;
      v92 = v33;
      v93 = v31;
      v40 = v172;
      v94 = v131;
      sub_1D5FB543C();
      if (!v94)
      {
        LOBYTE(v152[0]) = v93;
        *(v152 + 1) = v91;
        BYTE7(v152[0]) = BYTE6(v91);
        *(v152 + 5) = WORD2(v91);
        *(&v152[0] + 1) = v92;
        *&v152[1] = v34;
        *(&v152[1] + 1) = v90;
        v152[2] = v126;
        LOBYTE(v152[3]) = v38 & 0xF7;
        v95 = v130;
        sub_1D68B021C(v40, v130, type metadata accessor for FormatOptionsNodeStatementContext);
        v96 = (*(v128 + 80) + 16) & ~*(v128 + 80);
        v97 = swift_allocObject();
        sub_1D5D5E40C(v95, v97 + v96, type metadata accessor for FormatOptionsNodeStatementContext);
        v40 = FormatHeadlineBinding.Text.text(from:computedContext:selectors:)(v30, v127, sub_1D68B04C8, v97);

        sub_1D5D511FC(v30, type metadata accessor for FeedHeadline);
      }

      break;
  }

  return v40;
}

uint64_t sub_1D6891050(uint64_t a1, char *a2)
{
  v3 = *(v2 + 1);
  v4 = *(v2 + 2);
  switch((2 * v2[49]) | ((v2[48] & 8) != 0))
  {
    case 2:
      result = sub_1D68939C8(a1, a2);
      break;
    case 3:
    case 4:
      v7 = *v2 | ((*(v2 + 1) | ((*(v2 + 5) | (v2[7] << 16)) << 32)) << 8);

      result = sub_1D6F71740(a1, v7, v3, v4, v7, v3, v4);
      break;
    default:
      type metadata accessor for FormatLayoutError(0);
      sub_1D68ADD5C(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      *v5 = 0xD000000000000066;
      v5[1] = 0x80000001D73C3700;
      swift_storeEnumTagMultiPayload();
      result = swift_willThrow();
      break;
  }

  return result;
}

uint64_t sub_1D68911E8(uint64_t a1, char *a2)
{
  v81 = a2;
  v125 = a1;
  v3 = type metadata accessor for FeedRecipe(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FeedPuzzleStatistic(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FeedWeather(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v2 + 8);
  v82 = *v2;
  v24 = *(v2 + 16);
  v25 = *(v2 + 24);
  v27 = *(v2 + 32);
  v26 = *(v2 + 40);
  v28 = *(v2 + 48);
  switch(v28 >> 4)
  {
    case 1u:
      v53 = v125;
      v54 = v83;
      sub_1D6750B04(*(v125 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), &v102);
      if (!v54)
      {
        v55 = *(&v102 + 1);
        LOBYTE(v102) = v82;
        v56 = swift_allocObject();
        *(v56 + 16) = sub_1D68AF314;
        *(v56 + 24) = v53;
        ObjectType = swift_getObjectType();
        swift_retain_n();
        v58 = swift_unknownObjectRetain();
        v27 = sub_1D6E410E4(v58, sub_1D68AF30C, v56, &v102, ObjectType);

        swift_unknownObjectRelease_n();
      }

      break;
    case 2u:
      v48 = v83;
      sub_1D6751EC0(*(v125 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), &v102);
      if (!v48)
      {
        v99 = v108;
        v100[0] = v109[0];
        *(v100 + 9) = *(v109 + 9);
        v95 = v104;
        v96 = v105;
        v97 = v106;
        v98 = v107;
        v93 = v102;
        v94 = v103;
        v90 = v108;
        v91[0] = v109[0];
        *(v91 + 9) = *(v109 + 9);
        v86 = v104;
        v87 = v105;
        v88 = v106;
        v89 = v107;
        LOBYTE(v121) = v82;
        v84 = v102;
        v85 = v103;
        v27 = sub_1D6AD7608(&v84);
        sub_1D5ECF320(&v93);
      }

      break;
    case 3u:
      v49 = v24;
      v27 = v23;
      v50 = v125;
      v51 = v83;
      sub_1D67507D8(*(v125 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), v18);
      if (!v51)
      {
        v27 = sub_1D689484C(v18, v50, v82, v27, v49, sub_1D6894EF8);
        sub_1D5D511FC(v18, type metadata accessor for FeedWeather);
      }

      break;
    case 4u:
      v37 = v83;
      sub_1D6751B6C(*(v125 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), &v102);
      if (!v37)
      {
        v100[5] = v113;
        v100[6] = v114;
        v100[7] = v115;
        v100[1] = v109[1];
        v100[2] = v110;
        v100[3] = v111;
        v100[4] = v112;
        v97 = v106;
        v98 = v107;
        v99 = v108;
        v100[0] = v109[0];
        v93 = v102;
        v94 = v103;
        v95 = v104;
        v96 = v105;
        v91[5] = v113;
        v91[6] = v114;
        v91[7] = v115;
        v91[1] = v109[1];
        v91[2] = v110;
        v91[3] = v111;
        v91[4] = v112;
        v88 = v106;
        v89 = v107;
        v90 = v108;
        v91[0] = v109[0];
        v84 = v102;
        v85 = v103;
        v101 = v116;
        LOBYTE(v121) = v82;
        v92 = v116;
        v86 = v104;
        v87 = v105;

        v27 = FormatPaywallBinding.Text.text(from:selectors:)(&v84, sub_1D68B04D0);

        sub_1D5F2DFAC(&v93);
      }

      break;
    case 5u:
      v59 = v125;
      v60 = v83;
      sub_1D67505CC(*(v125 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), &v102);
      if (!v60)
      {
        v61 = v102;
        LOBYTE(v102) = v82;

        v62 = FCFeedDescriptor.feedTag.getter();
        v63 = swift_allocObject();
        *(v63 + 16) = sub_1D68B04D0;
        *(v63 + 24) = v59;
        v64 = swift_getObjectType();

        v27 = sub_1D6E410E4(v62, sub_1D68AF30C, v63, &v102, v64);

        swift_unknownObjectRelease();
      }

      break;
    case 6u:
      v65 = v125;
      v66 = v83;
      sub_1D67505CC(*(v125 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), &v102);
      if (!v66)
      {
        v67 = v102;
        v68 = [objc_msgSend(v102 backingTag)];
        swift_unknownObjectRelease();
        if (v68)
        {
          LOBYTE(v102) = v82;
          v69 = swift_getObjectType();
          v70 = swift_allocObject();
          *(v70 + 16) = sub_1D68B04D0;
          *(v70 + 24) = v65;
          swift_retain_n();
          v27 = sub_1D6E410E4(v68, sub_1D68AF30C, v70, &v102, v69);

          swift_unknownObjectRelease();
        }

        else
        {
          type metadata accessor for FormatLayoutError(0);
          sub_1D68ADD5C(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
          v27 = swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }
      }

      break;
    case 7u:
      v52 = v83;
      sub_1D6751840(*(v125 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), v14);
      if (!v52)
      {
        LOBYTE(v102) = v82;
        v27 = FormatWebEmbedBinding.Text.text(from:)(v14);
        sub_1D5D511FC(v14, type metadata accessor for FeedWebEmbed);
      }

      break;
    case 8u:
      v76 = v23;
      v77 = v83;
      sub_1D6750380(*(v125 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), &v102);
      if (!v77)
      {
        *&v93 = v82;
        BYTE8(v93) = v76;
        sub_1D67CEAD8(&v102);
        v27 = v79;
        swift_unknownObjectRelease();
      }

      break;
    case 9u:
      v43 = v26;
      v44 = v24;
      v45 = v23;
      v46 = v125;
      v47 = v83;
      sub_1D67515C4(*(v125 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), &v102);
      if (!v47)
      {
        *&v93 = v82;
        *(&v93 + 1) = v45;
        *&v94 = v44;
        *(&v94 + 1) = v25;
        *&v95 = v27;
        *(&v95 + 1) = v43;
        LOBYTE(v96) = v28 & 0xF;

        v27 = FormatPuzzleBinding.Text.text(from:computedContext:selectors:)(&v102, v81, sub_1D68B04D0, v46);

        sub_1D5F2DF58(&v102);
      }

      break;
    case 0xAu:
      v27 = v23;
      v71 = v125;
      v72 = v83;
      sub_1D6751370(*(v125 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), &v121);
      if (!v72)
      {
        v120[0] = v121;
        v120[1] = v122;
        v120[2] = v123;
        v120[3] = v124;
        v117[0] = v121;
        v117[1] = v122;
        v117[2] = v123;
        v117[3] = v124;
        v73 = *(v71 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
        v93 = *(v71 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
        v94 = v73;
        v74 = *(v71 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
        v75 = *(v71 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 32);
        v96 = *(v71 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 48);
        v97 = v74;
        v95 = v75;
        v118 = v82;
        v119 = v27;
        *&v98 = *(v71 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);
        v86 = v75;
        v87 = v96;
        v88 = *(v71 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
        *&v89 = *(v71 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);
        v84 = v93;
        v85 = v73;
        sub_1D5CF6A5C(&v93, &v102);
        v27 = FormatPuzzleTypeBinding.Text.text(from:config:)(v117, &v84);
        v104 = v86;
        v105 = v87;
        v106 = v88;
        *&v107 = v89;
        v102 = v84;
        v103 = v85;
        sub_1D5D09C48(&v102);
        sub_1D5F2DE58(v120);
      }

      break;
    case 0xBu:
      v34 = v83;
      sub_1D6751050(*(v125 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), v10);
      if (!v34)
      {
        LOBYTE(v102) = v82;
        v27 = FormatPuzzleStatisticBinding.Text.text(from:)(v10);
        v35 = type metadata accessor for FeedPuzzleStatistic;
        v36 = v10;
        goto LABEL_10;
      }

      break;
    case 0xCu:
      v38 = v26;
      v39 = v24;
      v40 = v23;
      v41 = v125;
      v42 = v83;
      sub_1D6750D28(*(v125 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), v6);
      if (!v42)
      {
        *&v102 = v82;
        *(&v102 + 1) = v40;
        *&v103 = v39;
        *(&v103 + 1) = v25;
        *&v104 = v27;
        *(&v104 + 1) = v38;

        v27 = sub_1D7006CB0(v6, sub_1D68B04D0, v41);

        v35 = type metadata accessor for FeedRecipe;
        v36 = v6;
LABEL_10:
        sub_1D5D511FC(v36, v35);
      }

      break;
    default:
      v29 = v26;
      v30 = v24;
      v31 = v23;
      v32 = v125;
      v33 = v83;
      sub_1D6752174(*(v125 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), v22);
      if (!v33)
      {
        *&v102 = v82;
        *(&v102 + 1) = v31;
        *&v103 = v30;
        *(&v103 + 1) = v25;
        *&v104 = v27;
        *(&v104 + 1) = v29;
        LOBYTE(v105) = v28 & 0xF;

        v27 = FormatHeadlineBinding.Text.text(from:computedContext:selectors:)(v22, v81, sub_1D68B04D0, v32);

        sub_1D5D511FC(v22, type metadata accessor for FeedHeadline);
      }

      break;
  }

  return v27;
}

uint64_t sub_1D6891E18(uint64_t a1, char *a2)
{
  v81 = a2;
  v125 = a1;
  v3 = type metadata accessor for FeedRecipe(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FeedPuzzleStatistic(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FeedWeather(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v2 + 8);
  v82 = *v2;
  v24 = *(v2 + 16);
  v25 = *(v2 + 24);
  v27 = *(v2 + 32);
  v26 = *(v2 + 40);
  v28 = *(v2 + 48);
  switch(v28 >> 4)
  {
    case 1u:
      v53 = v125;
      v54 = v83;
      sub_1D6750B04(*(v125 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8), &v102);
      if (!v54)
      {
        v55 = *(&v102 + 1);
        LOBYTE(v102) = v82;
        v56 = swift_allocObject();
        *(v56 + 16) = sub_1D68AFFBC;
        *(v56 + 24) = v53;
        ObjectType = swift_getObjectType();
        swift_retain_n();
        v58 = swift_unknownObjectRetain();
        v27 = sub_1D6E410E4(v58, sub_1D68B04F0, v56, &v102, ObjectType);

        swift_unknownObjectRelease_n();
      }

      break;
    case 2u:
      v48 = v83;
      sub_1D6751EC0(*(v125 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8), &v102);
      if (!v48)
      {
        v99 = v108;
        v100[0] = v109[0];
        *(v100 + 9) = *(v109 + 9);
        v95 = v104;
        v96 = v105;
        v97 = v106;
        v98 = v107;
        v93 = v102;
        v94 = v103;
        v90 = v108;
        v91[0] = v109[0];
        *(v91 + 9) = *(v109 + 9);
        v86 = v104;
        v87 = v105;
        v88 = v106;
        v89 = v107;
        LOBYTE(v121) = v82;
        v84 = v102;
        v85 = v103;
        v27 = sub_1D6AD7608(&v84);
        sub_1D5ECF320(&v93);
      }

      break;
    case 3u:
      v49 = v24;
      v27 = v23;
      v50 = v125;
      v51 = v83;
      sub_1D67507D8(*(v125 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8), v18);
      if (!v51)
      {
        v27 = sub_1D689484C(v18, v50, v82, v27, v49, sub_1D6895310);
        sub_1D5D511FC(v18, type metadata accessor for FeedWeather);
      }

      break;
    case 4u:
      v37 = v83;
      sub_1D6751B6C(*(v125 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8), &v102);
      if (!v37)
      {
        v100[5] = v113;
        v100[6] = v114;
        v100[7] = v115;
        v100[1] = v109[1];
        v100[2] = v110;
        v100[3] = v111;
        v100[4] = v112;
        v97 = v106;
        v98 = v107;
        v99 = v108;
        v100[0] = v109[0];
        v93 = v102;
        v94 = v103;
        v95 = v104;
        v96 = v105;
        v91[5] = v113;
        v91[6] = v114;
        v91[7] = v115;
        v91[1] = v109[1];
        v91[2] = v110;
        v91[3] = v111;
        v91[4] = v112;
        v88 = v106;
        v89 = v107;
        v90 = v108;
        v91[0] = v109[0];
        v84 = v102;
        v85 = v103;
        v101 = v116;
        LOBYTE(v121) = v82;
        v92 = v116;
        v86 = v104;
        v87 = v105;

        v27 = FormatPaywallBinding.Text.text(from:selectors:)(&v84, sub_1D68B04D4);

        sub_1D5F2DFAC(&v93);
      }

      break;
    case 5u:
      v59 = v125;
      v60 = v83;
      sub_1D67505CC(*(v125 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8), &v102);
      if (!v60)
      {
        v61 = v102;
        LOBYTE(v102) = v82;

        v62 = FCFeedDescriptor.feedTag.getter();
        v63 = swift_allocObject();
        *(v63 + 16) = sub_1D68B04D4;
        *(v63 + 24) = v59;
        v64 = swift_getObjectType();

        v27 = sub_1D6E410E4(v62, sub_1D68B04F0, v63, &v102, v64);

        swift_unknownObjectRelease();
      }

      break;
    case 6u:
      v65 = v125;
      v66 = v83;
      sub_1D67505CC(*(v125 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8), &v102);
      if (!v66)
      {
        v67 = v102;
        v68 = [objc_msgSend(v102 backingTag)];
        swift_unknownObjectRelease();
        if (v68)
        {
          LOBYTE(v102) = v82;
          v69 = swift_getObjectType();
          v70 = swift_allocObject();
          *(v70 + 16) = sub_1D68B04D4;
          *(v70 + 24) = v65;
          swift_retain_n();
          v27 = sub_1D6E410E4(v68, sub_1D68B04F0, v70, &v102, v69);

          swift_unknownObjectRelease();
        }

        else
        {
          type metadata accessor for FormatLayoutError(0);
          sub_1D68ADD5C(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
          v27 = swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }
      }

      break;
    case 7u:
      v52 = v83;
      sub_1D6751840(*(v125 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8), v14);
      if (!v52)
      {
        LOBYTE(v102) = v82;
        v27 = FormatWebEmbedBinding.Text.text(from:)(v14);
        sub_1D5D511FC(v14, type metadata accessor for FeedWebEmbed);
      }

      break;
    case 8u:
      v76 = v23;
      v77 = v83;
      sub_1D6750380(*(v125 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8), &v102);
      if (!v77)
      {
        *&v93 = v82;
        BYTE8(v93) = v76;
        sub_1D67CEAD8(&v102);
        v27 = v79;
        swift_unknownObjectRelease();
      }

      break;
    case 9u:
      v43 = v26;
      v44 = v24;
      v45 = v23;
      v46 = v125;
      v47 = v83;
      sub_1D67515C4(*(v125 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8), &v102);
      if (!v47)
      {
        *&v93 = v82;
        *(&v93 + 1) = v45;
        *&v94 = v44;
        *(&v94 + 1) = v25;
        *&v95 = v27;
        *(&v95 + 1) = v43;
        LOBYTE(v96) = v28 & 0xF;

        v27 = FormatPuzzleBinding.Text.text(from:computedContext:selectors:)(&v102, v81, sub_1D68B04D4, v46);

        sub_1D5F2DF58(&v102);
      }

      break;
    case 0xAu:
      v27 = v23;
      v71 = v125;
      v72 = v83;
      sub_1D6751370(*(v125 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8), &v121);
      if (!v72)
      {
        v120[0] = v121;
        v120[1] = v122;
        v120[2] = v123;
        v120[3] = v124;
        v117[0] = v121;
        v117[1] = v122;
        v117[2] = v123;
        v117[3] = v124;
        v73 = *(v71 + 64);
        v93 = *(v71 + 48);
        v94 = v73;
        v74 = *(v71 + 112);
        v75 = *(v71 + 80);
        v96 = *(v71 + 96);
        v97 = v74;
        v95 = v75;
        v118 = v82;
        v119 = v27;
        *&v98 = *(v71 + 128);
        v86 = v75;
        v87 = v96;
        v88 = *(v71 + 112);
        *&v89 = *(v71 + 128);
        v84 = v93;
        v85 = v73;
        sub_1D5CF6A5C(&v93, &v102);
        v27 = FormatPuzzleTypeBinding.Text.text(from:config:)(v117, &v84);
        v104 = v86;
        v105 = v87;
        v106 = v88;
        *&v107 = v89;
        v102 = v84;
        v103 = v85;
        sub_1D5D09C48(&v102);
        sub_1D5F2DE58(v120);
      }

      break;
    case 0xBu:
      v36 = v83;
      sub_1D6751050(*(v125 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8), v10);
      if (!v36)
      {
        LOBYTE(v102) = v82;
        v27 = FormatPuzzleStatisticBinding.Text.text(from:)(v10);
        v34 = type metadata accessor for FeedPuzzleStatistic;
        v35 = v10;
        goto LABEL_10;
      }

      break;
    case 0xCu:
      v38 = v26;
      v39 = v24;
      v40 = v23;
      v41 = v125;
      v42 = v83;
      sub_1D6750D28(*(v125 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8), v6);
      if (!v42)
      {
        *&v102 = v82;
        *(&v102 + 1) = v40;
        *&v103 = v39;
        *(&v103 + 1) = v25;
        *&v104 = v27;
        *(&v104 + 1) = v38;

        v27 = sub_1D7006CB0(v6, sub_1D68B04D4, v41);

        v34 = type metadata accessor for FeedRecipe;
        v35 = v6;
        goto LABEL_10;
      }

      break;
    default:
      v29 = v26;
      v30 = v24;
      v31 = v23;
      v32 = v125;
      v33 = v83;
      sub_1D6752174(*(v125 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8), v22);
      if (!v33)
      {
        *&v102 = v82;
        *(&v102 + 1) = v31;
        *&v103 = v30;
        *(&v103 + 1) = v25;
        *&v104 = v27;
        *(&v104 + 1) = v29;
        LOBYTE(v105) = v28 & 0xF;

        v27 = FormatHeadlineBinding.Text.text(from:computedContext:selectors:)(v22, v81, sub_1D68B04D4, v32);

        v34 = type metadata accessor for FeedHeadline;
        v35 = v22;
LABEL_10:
        sub_1D5D511FC(v35, v34);
      }

      break;
  }

  return v27;
}

uint64_t sub_1D6892A30(uint64_t a1, char *a2)
{
  v122 = a2;
  v156 = a1;
  v3 = type metadata accessor for FeedRecipe(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v123 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FeedPuzzleStatistic(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeedWeather(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FormatOptionsNodeStatementContext(0);
  v124 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v121 = &v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v126 = &v121 - v23;
  v24 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v2 + 8);
  v127 = *v2;
  v29 = *(v2 + 24);
  v30 = *(v2 + 48);
  switch(v30 >> 4)
  {
    case 1u:
      v75 = v156;
      v76 = v128;
      sub_1D5FB6008(v142);
      if (!v76)
      {
        v77 = *(&v142[0] + 1);
        v78 = v126;
        sub_1D68B021C(v75, v126, type metadata accessor for FormatOptionsNodeStatementContext);
        v79 = (*(v124 + 80) + 16) & ~*(v124 + 80);
        v80 = swift_allocObject();
        sub_1D5D5E40C(v78, v80 + v79, type metadata accessor for FormatOptionsNodeStatementContext);
        LOBYTE(v142[0]) = v127;
        v81 = swift_allocObject();
        *(v81 + 16) = sub_1D68B0284;
        *(v81 + 24) = v80;
        ObjectType = swift_getObjectType();

        v83 = swift_unknownObjectRetain();
        v29 = sub_1D6E410E4(v83, sub_1D68B04F0, v81, v142, ObjectType);

        swift_unknownObjectRelease_n();
      }

      break;
    case 2u:
      v69 = v128;
      sub_1D5FB5E2C();
      if (!v69)
      {
        v139 = v143;
        v140[0] = v144[0];
        *(v140 + 9) = *(v144 + 9);
        v138[2] = v142[2];
        v138[3] = v142[3];
        v138[4] = v142[4];
        v138[5] = v142[5];
        v138[0] = v142[0];
        v138[1] = v142[1];
        v135 = v143;
        v136[0] = v144[0];
        *(v136 + 9) = *(v144 + 9);
        v131 = v142[2];
        v132 = v142[3];
        v133 = v142[4];
        v134 = v142[5];
        LOBYTE(v155[0]) = v127;
        v129 = v142[0];
        v130 = v142[1];
        v29 = sub_1D6AD7608(&v129);
        sub_1D5ECF320(v138);
      }

      break;
    case 3u:
      v70 = *(v2 + 16);
      v71 = v28;
      v72 = v156;
      v73 = v128;
      sub_1D5FB5E00();
      if (!v73)
      {
        v29 = sub_1D6894AF0(v17, v72, v127, v71, v70, sub_1D6895728);
        sub_1D5D511FC(v17, type metadata accessor for FeedWeather);
      }

      break;
    case 4u:
      v44 = v156;
      v45 = v128;
      sub_1D5FB5C24();
      if (!v45)
      {
        v140[5] = v148;
        v140[6] = v149;
        v140[7] = v150;
        v140[1] = v144[1];
        v140[2] = v145;
        v140[3] = v146;
        v140[4] = v147;
        v138[4] = v142[4];
        v138[5] = v142[5];
        v139 = v143;
        v140[0] = v144[0];
        v138[0] = v142[0];
        v138[1] = v142[1];
        v138[2] = v142[2];
        v138[3] = v142[3];
        v136[5] = v148;
        v136[6] = v149;
        v136[7] = v150;
        v136[1] = v144[1];
        v136[2] = v145;
        v136[3] = v146;
        v136[4] = v147;
        v133 = v142[4];
        v134 = v142[5];
        v135 = v143;
        v136[0] = v144[0];
        v129 = v142[0];
        v130 = v142[1];
        v141 = v151;
        v46 = v126;
        LOBYTE(v155[0]) = v127;
        v137 = v151;
        v131 = v142[2];
        v132 = v142[3];
        sub_1D68B021C(v44, v126, type metadata accessor for FormatOptionsNodeStatementContext);
        v47 = (*(v124 + 80) + 16) & ~*(v124 + 80);
        v48 = swift_allocObject();
        sub_1D5D5E40C(v46, v48 + v47, type metadata accessor for FormatOptionsNodeStatementContext);
        v29 = FormatPaywallBinding.Text.text(from:selectors:)(&v129, sub_1D68B04C8);

        sub_1D5F2DFAC(v138);
      }

      break;
    case 5u:
      v84 = v156;
      v85 = v128;
      sub_1D5FB5A80(v142);
      if (!v85)
      {
        v86 = *&v142[0];
        v87 = v126;
        sub_1D68B021C(v84, v126, type metadata accessor for FormatOptionsNodeStatementContext);
        v88 = (*(v124 + 80) + 16) & ~*(v124 + 80);
        v89 = swift_allocObject();
        sub_1D5D5E40C(v87, v89 + v88, type metadata accessor for FormatOptionsNodeStatementContext);
        LOBYTE(v142[0]) = v127;
        v90 = FCFeedDescriptor.feedTag.getter();
        v91 = swift_allocObject();
        *(v91 + 16) = sub_1D68B04C8;
        *(v91 + 24) = v89;
        v92 = swift_getObjectType();

        v29 = sub_1D6E410E4(v90, sub_1D68B04F0, v91, v142, v92);

        swift_unknownObjectRelease();
      }

      break;
    case 6u:
      v93 = v156;
      v94 = v128;
      sub_1D5FB5A80(v142);
      if (!v94)
      {
        v95 = *&v142[0];
        v96 = [objc_msgSend(*&v142[0] backingTag)];
        swift_unknownObjectRelease();
        if (v96)
        {
          v97 = v126;
          sub_1D68B021C(v93, v126, type metadata accessor for FormatOptionsNodeStatementContext);
          v98 = (*(v124 + 80) + 16) & ~*(v124 + 80);
          v99 = swift_allocObject();
          sub_1D5D5E40C(v97, v99 + v98, type metadata accessor for FormatOptionsNodeStatementContext);
          LOBYTE(v142[0]) = v127;
          v100 = swift_getObjectType();
          v101 = swift_allocObject();
          *(v101 + 16) = sub_1D68B04C8;
          *(v101 + 24) = v99;

          v29 = sub_1D6E410E4(v96, sub_1D68B04F0, v101, v142, v100);

          swift_unknownObjectRelease();
        }

        else
        {
          type metadata accessor for FormatLayoutError(0);
          sub_1D68ADD5C(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }
      }

      break;
    case 7u:
      v74 = v128;
      sub_1D5FB5A54();
      if (!v74)
      {
        LOBYTE(v142[0]) = v127;
        v29 = FormatWebEmbedBinding.Text.text(from:)(v13);
        sub_1D5D511FC(v13, type metadata accessor for FeedWebEmbed);
      }

      break;
    case 8u:
      v114 = v28;
      v115 = v128;
      sub_1D5FB5878();
      if (!v115)
      {
        *&v138[0] = v127;
        BYTE8(v138[0]) = v114;
        sub_1D67CEAD8(v142);
        v29 = v120;
        swift_unknownObjectRelease();
      }

      break;
    case 9u:
      v59 = *(v2 + 32);
      v60 = *(v2 + 40);
      v61 = *(v2 + 16);
      v62 = v28;
      v63 = v156;
      v64 = v128;
      sub_1D5FB569C();
      if (!v64)
      {
        v65 = v30 & 0xF;
        v66 = v126;
        *&v138[0] = v127;
        *(&v138[0] + 1) = v62;
        *&v138[1] = v61;
        *(&v138[1] + 1) = v29;
        *&v138[2] = v59;
        *(&v138[2] + 1) = v60;
        LOBYTE(v138[3]) = v65;
        sub_1D68B021C(v63, v126, type metadata accessor for FormatOptionsNodeStatementContext);
        v67 = (*(v124 + 80) + 16) & ~*(v124 + 80);
        v68 = swift_allocObject();
        sub_1D5D5E40C(v66, v68 + v67, type metadata accessor for FormatOptionsNodeStatementContext);
        v29 = FormatPuzzleBinding.Text.text(from:computedContext:selectors:)(v142, v122, sub_1D68B04C8, v68);

        sub_1D5F2DF58(v142);
      }

      break;
    case 0xAu:
      v102 = v28;
      v103 = v156;
      v104 = v128;
      sub_1D5FB54C0();
      if (!v104)
      {
        v155[0] = v129;
        v155[1] = v130;
        v155[2] = v131;
        v155[3] = v132;
        v153 = v127;
        v154 = v102;
        v152[0] = v129;
        v152[1] = v130;
        v152[2] = v131;
        v152[3] = v132;
        v105 = v121;
        sub_1D68B021C(v103, v121, type metadata accessor for FormatOptionsNodeStatementContext);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v106 = *v105;
          sub_1D5EB9920(0);
          v108 = *(v107 + 48);
          v109 = *(v106 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);
          v110 = *(v106 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
          v111 = *(v106 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 32);
          v142[3] = *(v106 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 48);
          v142[4] = v110;
          *&v142[5] = v109;
          v112 = *(v106 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
          v142[0] = *(v106 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
          v142[1] = v112;
          v142[2] = v111;
          sub_1D5CF6A5C(v142, v138);

          sub_1D5EB9994(0);
          (*(*(v113 - 8) + 8))(&v105[v108], v113);
        }

        else
        {
          v116 = *v105;

          v117 = *(v116 + 96);
          v142[2] = *(v116 + 80);
          v142[3] = v117;
          v142[4] = *(v116 + 112);
          *&v142[5] = *(v116 + 128);
          v118 = *(v116 + 64);
          v142[0] = *(v116 + 48);
          v142[1] = v118;
          sub_1D5CF6A5C(v142, v138);
        }

        LOWORD(v138[0]) = v142[0];
        *(v138 + 8) = *(v142 + 8);
        *(&v138[1] + 8) = *(&v142[1] + 8);
        *(&v138[2] + 8) = *(&v142[2] + 8);
        *(&v138[3] + 8) = *(&v142[3] + 8);
        *(&v138[4] + 8) = *(&v142[4] + 8);
        v29 = FormatPuzzleTypeBinding.Text.text(from:config:)(v152, v138);
        v142[2] = v138[2];
        v142[3] = v138[3];
        v142[4] = v138[4];
        *&v142[5] = *&v138[5];
        v142[0] = v138[0];
        v142[1] = v138[1];
        sub_1D5D09C48(v142);
        sub_1D5F2DE58(v155);
      }

      break;
    case 0xBu:
      v43 = v128;
      sub_1D5FB5494();
      if (!v43)
      {
        LOBYTE(v142[0]) = v127;
        v29 = FormatPuzzleStatisticBinding.Text.text(from:)(v9);
        sub_1D5D511FC(v9, type metadata accessor for FeedPuzzleStatistic);
      }

      break;
    case 0xCu:
      v49 = *(v2 + 32);
      v50 = *(v2 + 40);
      v51 = *(v2 + 16);
      v52 = v28;
      v53 = v123;
      v54 = v156;
      v55 = v128;
      sub_1D5FB5468();
      if (!v55)
      {
        *&v142[0] = v127;
        *(&v142[0] + 1) = v52;
        *&v142[1] = v51;
        *(&v142[1] + 1) = v29;
        *&v142[2] = v49;
        *(&v142[2] + 1) = v50;
        v56 = v126;
        sub_1D68B021C(v54, v126, type metadata accessor for FormatOptionsNodeStatementContext);
        v57 = (*(v124 + 80) + 16) & ~*(v124 + 80);
        v58 = swift_allocObject();
        sub_1D5D5E40C(v56, v58 + v57, type metadata accessor for FormatOptionsNodeStatementContext);
        v29 = sub_1D7006CB0(v53, sub_1D68B04C8, v58);

        v41 = type metadata accessor for FeedRecipe;
        v42 = v53;
        goto LABEL_10;
      }

      break;
    default:
      v31 = *(v2 + 32);
      v32 = *(v2 + 40);
      v33 = *(v2 + 16);
      v34 = v28;
      v35 = v156;
      v36 = v128;
      sub_1D5FB61AC();
      if (!v36)
      {
        v37 = v30 & 0xF;
        v38 = v126;
        *&v142[0] = v127;
        *(&v142[0] + 1) = v34;
        *&v142[1] = v33;
        *(&v142[1] + 1) = v29;
        *&v142[2] = v31;
        *(&v142[2] + 1) = v32;
        LOBYTE(v142[3]) = v37;
        sub_1D68B021C(v35, v126, type metadata accessor for FormatOptionsNodeStatementContext);
        v39 = (*(v124 + 80) + 16) & ~*(v124 + 80);
        v40 = swift_allocObject();
        sub_1D5D5E40C(v38, v40 + v39, type metadata accessor for FormatOptionsNodeStatementContext);
        v29 = FormatHeadlineBinding.Text.text(from:computedContext:selectors:)(v27, v122, sub_1D68B04C8, v40);

        v41 = type metadata accessor for FeedHeadline;
        v42 = v27;
LABEL_10:
        sub_1D5D511FC(v42, v41);
      }

      break;
  }

  return v29;
}

uint64_t sub_1D68939C8(uint64_t a1, char *a2)
{
  v108 = a2;
  v156 = a1;
  v3 = type metadata accessor for FeedRecipe(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v109 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FeedPuzzleStatistic(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeedWeather(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FormatDecorationContext(0);
  v110 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v111 = v20;
  v112 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v2 + 8);
  v113 = *v2;
  v26 = *(v2 + 24);
  v27 = *(v2 + 32);
  v28 = *(v2 + 48);
  switch(v28 >> 4)
  {
    case 1u:
      v66 = v156;
      v67 = v114;
      sub_1D5F55B34(&v133);
      if (!v67)
      {
        v68 = *(&v133 + 1);
        v69 = v112;
        sub_1D68B021C(v66, v112, type metadata accessor for FormatDecorationContext);
        v70 = (*(v110 + 80) + 16) & ~*(v110 + 80);
        v71 = swift_allocObject();
        sub_1D5D5E40C(v69, v71 + v70, type metadata accessor for FormatDecorationContext);
        LOBYTE(v133) = v113;
        v72 = swift_allocObject();
        *(v72 + 16) = sub_1D68B0050;
        *(v72 + 24) = v71;
        ObjectType = swift_getObjectType();

        v74 = swift_unknownObjectRetain();
        v26 = sub_1D6E410E4(v74, sub_1D68B04F0, v72, &v133, ObjectType);

        swift_unknownObjectRelease_n();
      }

      break;
    case 2u:
      v60 = v114;
      sub_1D5F55870(&v133);
      if (!v60)
      {
        v130 = v139;
        v131[0] = v140[0];
        *(v131 + 9) = *(v140 + 9);
        v126 = v135;
        v127 = v136;
        v128 = v137;
        v129 = v138;
        v124 = v133;
        v125 = v134;
        v121 = v139;
        v122[0] = v140[0];
        *(v122 + 9) = *(v140 + 9);
        v117 = v135;
        v118 = v136;
        v119 = v137;
        v120 = v138;
        LOBYTE(v152) = v113;
        v115 = v133;
        v116 = v134;
        v26 = sub_1D6AD7608(&v115);
        sub_1D5ECF320(&v124);
      }

      break;
    case 3u:
      v61 = *(v2 + 16);
      v62 = v25;
      v63 = v156;
      v64 = v114;
      sub_1D5F55520(v17);
      if (!v64)
      {
        v26 = sub_1D6894AF0(v17, v63, v113, v62, v61, sub_1D6895FB4);
        sub_1D5D511FC(v17, type metadata accessor for FeedWeather);
      }

      break;
    case 4u:
      v38 = v156;
      v39 = v114;
      sub_1D5F551BC(&v133);
      if (!v39)
      {
        v131[5] = v144;
        v131[6] = v145;
        v131[7] = v146;
        v131[1] = v140[1];
        v131[2] = v141;
        v131[3] = v142;
        v131[4] = v143;
        v128 = v137;
        v129 = v138;
        v130 = v139;
        v131[0] = v140[0];
        v124 = v133;
        v125 = v134;
        v126 = v135;
        v127 = v136;
        v122[5] = v144;
        v122[6] = v145;
        v122[7] = v146;
        v122[1] = v140[1];
        v122[2] = v141;
        v122[3] = v142;
        v122[4] = v143;
        v119 = v137;
        v120 = v138;
        v121 = v139;
        v122[0] = v140[0];
        v115 = v133;
        v116 = v134;
        v132 = v147;
        v40 = v112;
        LOBYTE(v152) = v113;
        v123 = v147;
        v117 = v135;
        v118 = v136;
        sub_1D68B021C(v38, v112, type metadata accessor for FormatDecorationContext);
        v41 = (*(v110 + 80) + 16) & ~*(v110 + 80);
        v42 = swift_allocObject();
        sub_1D5D5E40C(v40, v42 + v41, type metadata accessor for FormatDecorationContext);
        v26 = FormatPaywallBinding.Text.text(from:selectors:)(&v115, sub_1D68B04C4);

        sub_1D5F2DFAC(&v124);
      }

      break;
    case 5u:
      v75 = v156;
      v76 = v114;
      sub_1D5F54F8C(&v133);
      if (!v76)
      {
        v77 = v133;
        v78 = v112;
        sub_1D68B021C(v75, v112, type metadata accessor for FormatDecorationContext);
        v79 = (*(v110 + 80) + 16) & ~*(v110 + 80);
        v80 = swift_allocObject();
        sub_1D5D5E40C(v78, v80 + v79, type metadata accessor for FormatDecorationContext);
        LOBYTE(v133) = v113;
        v81 = FCFeedDescriptor.feedTag.getter();
        v82 = swift_allocObject();
        *(v82 + 16) = sub_1D68B04C4;
        *(v82 + 24) = v80;
        v83 = swift_getObjectType();

        v26 = sub_1D6E410E4(v81, sub_1D68B04F0, v82, &v133, v83);

        swift_unknownObjectRelease();
      }

      break;
    case 6u:
      v84 = v156;
      v85 = v114;
      sub_1D5F54F8C(&v133);
      if (!v85)
      {
        v114 = 0;
        v86 = v133;
        v87 = [objc_msgSend(v133 backingTag)];
        swift_unknownObjectRelease();
        if (v87)
        {
          v88 = v84;
          v89 = v112;
          sub_1D68B021C(v88, v112, type metadata accessor for FormatDecorationContext);
          v90 = (*(v110 + 80) + 16) & ~*(v110 + 80);
          v91 = swift_allocObject();
          sub_1D5D5E40C(v89, v91 + v90, type metadata accessor for FormatDecorationContext);
          LOBYTE(v133) = v113;
          v92 = swift_getObjectType();
          v93 = swift_allocObject();
          *(v93 + 16) = sub_1D68B04C4;
          *(v93 + 24) = v91;

          v26 = sub_1D6E410E4(v87, sub_1D68B04F0, v93, &v133, v92);

          swift_unknownObjectRelease();
        }

        else
        {
          type metadata accessor for FormatLayoutError(0);
          sub_1D68ADD5C(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }
      }

      break;
    case 7u:
      v65 = v114;
      sub_1D5F54C3C(v13);
      if (!v65)
      {
        LOBYTE(v133) = v113;
        v26 = FormatWebEmbedBinding.Text.text(from:)(v13);
        sub_1D5D511FC(v13, type metadata accessor for FeedWebEmbed);
      }

      break;
    case 8u:
      v103 = v25;
      v104 = v114;
      sub_1D5F549CC(&v133);
      if (!v104)
      {
        *&v124 = v113;
        BYTE8(v124) = v103;
        sub_1D67CEAD8(&v133);
        v26 = v106;
        swift_unknownObjectRelease();
      }

      break;
    case 9u:
      v52 = *(v2 + 40);
      v53 = *(v2 + 16);
      v54 = v25;
      v55 = v156;
      v56 = v114;
      sub_1D5F54740(&v133);
      if (!v56)
      {
        *&v124 = v113;
        *(&v124 + 1) = v54;
        *&v125 = v53;
        *(&v125 + 1) = v26;
        *&v126 = v27;
        *(&v126 + 1) = v52;
        LOBYTE(v127) = v28 & 0xF;
        v57 = v112;
        sub_1D68B021C(v55, v112, type metadata accessor for FormatDecorationContext);
        v58 = (*(v110 + 80) + 16) & ~*(v110 + 80);
        v59 = swift_allocObject();
        sub_1D5D5E40C(v57, v59 + v58, type metadata accessor for FormatDecorationContext);
        v26 = FormatPuzzleBinding.Text.text(from:computedContext:selectors:)(&v133, v108, sub_1D68B04C4, v59);

        sub_1D5F2DF58(&v133);
      }

      break;
    case 0xAu:
      v94 = v25;
      v95 = v156;
      v96 = v114;
      sub_1D5F544DC(&v152);
      if (!v96)
      {
        v151[0] = v152;
        v151[1] = v153;
        v151[2] = v154;
        v151[3] = v155;
        v149 = v113;
        v150 = v94;
        v148[0] = v152;
        v148[1] = v153;
        v148[2] = v154;
        v148[3] = v155;
        v97 = *(v95 + 24);
        v124 = *(v95 + 8);
        v125 = v97;
        v98 = *(v95 + 40);
        v99 = *(v95 + 56);
        v100 = *(v95 + 72);
        *&v129 = *(v95 + 88);
        v127 = v99;
        v128 = v100;
        v126 = v98;
        v101 = *(v95 + 56);
        v117 = *(v95 + 40);
        v118 = v101;
        v119 = *(v95 + 72);
        *&v120 = *(v95 + 88);
        v102 = *(v95 + 24);
        v115 = *(v95 + 8);
        v116 = v102;
        sub_1D5CF6A5C(&v124, &v133);
        v26 = FormatPuzzleTypeBinding.Text.text(from:config:)(v148, &v115);
        v135 = v117;
        v136 = v118;
        v137 = v119;
        *&v138 = v120;
        v133 = v115;
        v134 = v116;
        sub_1D5D09C48(&v133);
        sub_1D5F2DE58(v151);
      }

      break;
    case 0xBu:
      v37 = v114;
      sub_1D5F54198(v9);
      if (!v37)
      {
        LOBYTE(v133) = v113;
        v26 = FormatPuzzleStatisticBinding.Text.text(from:)(v9);
        sub_1D5D511FC(v9, type metadata accessor for FeedPuzzleStatistic);
      }

      break;
    case 0xCu:
      v43 = *(v2 + 40);
      v44 = *(v2 + 16);
      v45 = v25;
      v46 = v109;
      v47 = v156;
      v48 = v114;
      sub_1D5F53E4C(v109);
      if (!v48)
      {
        *&v133 = v113;
        *(&v133 + 1) = v45;
        *&v134 = v44;
        *(&v134 + 1) = v26;
        *&v135 = v27;
        *(&v135 + 1) = v43;
        v49 = v112;
        sub_1D68B021C(v47, v112, type metadata accessor for FormatDecorationContext);
        v50 = (*(v110 + 80) + 16) & ~*(v110 + 80);
        v51 = swift_allocObject();
        sub_1D5D5E40C(v49, v51 + v50, type metadata accessor for FormatDecorationContext);
        v26 = sub_1D7006CB0(v46, sub_1D68B04C4, v51);

        sub_1D5D511FC(v46, type metadata accessor for FeedRecipe);
      }

      break;
    default:
      v29 = *(v2 + 40);
      v30 = *(v2 + 16);
      v31 = v25;
      v32 = v156;
      v33 = v114;
      sub_1D5F55D7C(v24);
      if (!v33)
      {
        *&v133 = v113;
        *(&v133 + 1) = v31;
        *&v134 = v30;
        *(&v134 + 1) = v26;
        *&v135 = v27;
        *(&v135 + 1) = v29;
        LOBYTE(v136) = v28 & 0xF;
        v34 = v112;
        sub_1D68B021C(v32, v112, type metadata accessor for FormatDecorationContext);
        v35 = (*(v110 + 80) + 16) & ~*(v110 + 80);
        v36 = swift_allocObject();
        sub_1D5D5E40C(v34, v36 + v35, type metadata accessor for FormatDecorationContext);
        v26 = FormatHeadlineBinding.Text.text(from:computedContext:selectors:)(v24, v108, sub_1D68B04C4, v36);

        sub_1D5D511FC(v24, type metadata accessor for FeedHeadline);
      }

      break;
  }

  return v26;
}

uint64_t sub_1D689484C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = a5;
  if (BYTE1(a5) <= 1u)
  {
    if (!BYTE1(a5))
    {
      if (a5 > 0xFDu)
      {
        v18 = 1;
      }

      else
      {
        v18 = a3;
      }

      if (a5 <= 0xFDu)
      {
        v19 = a4;
      }

      else
      {
        v19 = 0;
      }

      v41 = v19;
      if (a5 <= 0xFDu)
      {
        v20 = a5;
      }

      else
      {
        v20 = 0;
      }

      v21 = *(type metadata accessor for FeedWeather(0) + 36);
      v22 = a4;
      v23 = v20;
      sub_1D5E1DCBC(a3, v22, v8);
      v24 = a6(a1 + v21, a2, v18, v41, v20);
      if (v6)
      {
        v25 = v18;
        v26 = v41;
        v27 = v20;
        return sub_1D5E1E15C(v25, v26, v27);
      }

      v35 = v24;
      v36 = v18;
      v37 = v41;
      v38 = v23;
      goto LABEL_58;
    }

    if (a5 > 0xFDu)
    {
      v32 = 1;
    }

    else
    {
      v32 = a3;
    }

    if (a5 <= 0xFDu)
    {
      v33 = a4;
    }

    else
    {
      v33 = 0;
    }

    v40 = v32;
    v42 = v33;
    if (a5 <= 0xFDu)
    {
      v15 = a5;
    }

    else
    {
      v15 = 0;
    }

    v16 = a1 + *(type metadata accessor for FeedWeather(0) + 36);
    v17 = *(type metadata accessor for FeedWeather.Temperature(0) + 20);
LABEL_49:
    sub_1D5E1DCBC(a3, a4, v8);
    v34 = a6(v16 + v17, a2, v40, v42, v15);
    if (v6)
    {
      v25 = v40;
      v26 = v42;
      v27 = v15;
      return sub_1D5E1E15C(v25, v26, v27);
    }

    v35 = v34;
    v36 = v40;
    v37 = v42;
    v38 = v15;
LABEL_58:
    sub_1D5E1E15C(v36, v37, v38);
    return v35;
  }

  if (BYTE1(a5) == 2)
  {
    if (a5 > 0xFDu)
    {
      v28 = 1;
    }

    else
    {
      v28 = a3;
    }

    if (a5 <= 0xFDu)
    {
      v29 = a4;
    }

    else
    {
      v29 = 0;
    }

    v40 = v28;
    v42 = v29;
    if (a5 <= 0xFDu)
    {
      v15 = a5;
    }

    else
    {
      v15 = 0;
    }

    v16 = a1 + *(type metadata accessor for FeedWeather(0) + 36);
    v17 = *(type metadata accessor for FeedWeather.Temperature(0) + 24);
    goto LABEL_49;
  }

  if (BYTE1(a5) == 3)
  {
    if (a5 > 0xFDu)
    {
      v13 = 1;
    }

    else
    {
      v13 = a3;
    }

    if (a5 <= 0xFDu)
    {
      v14 = a4;
    }

    else
    {
      v14 = 0;
    }

    v40 = v13;
    v42 = v14;
    if (a5 <= 0xFDu)
    {
      v15 = a5;
    }

    else
    {
      v15 = 0;
    }

    v16 = a1 + *(type metadata accessor for FeedWeather(0) + 36);
    v17 = *(type metadata accessor for FeedWeather.Temperature(0) + 28);
    goto LABEL_49;
  }

  if (!(a4 | a3) && !a5)
  {
    v30 = *(a1 + 16);

    return v30;
  }

  if (a3 == 1 && !a4 && !a5)
  {
    return FormatWeatherConditionCode.rawValue.getter();
  }

  v39 = (a1 + *(type metadata accessor for FeedWeather(0) + 40));
  result = v39[1];
  if (result)
  {
    v35 = *v39;

    return v35;
  }

  return result;
}

uint64_t sub_1D6894AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = a5;
  if (BYTE1(a5) <= 1u)
  {
    if (!BYTE1(a5))
    {
      if (a5 > 0xFDu)
      {
        v18 = 1;
      }

      else
      {
        v18 = a3;
      }

      if (a5 <= 0xFDu)
      {
        v19 = a4;
      }

      else
      {
        v19 = 0;
      }

      v41 = v19;
      if (a5 <= 0xFDu)
      {
        v20 = a5;
      }

      else
      {
        v20 = 0;
      }

      v21 = *(type metadata accessor for FeedWeather(0) + 36);
      v22 = a4;
      v23 = v20;
      sub_1D5E1DCBC(a3, v22, v8);
      v24 = a6(a1 + v21, a2, v18, v41, v20);
      if (v6)
      {
        v25 = v18;
        v26 = v41;
        v27 = v20;
        return sub_1D5E1E15C(v25, v26, v27);
      }

      v35 = v24;
      v36 = v18;
      v37 = v41;
      v38 = v23;
      goto LABEL_58;
    }

    if (a5 > 0xFDu)
    {
      v32 = 1;
    }

    else
    {
      v32 = a3;
    }

    if (a5 <= 0xFDu)
    {
      v33 = a4;
    }

    else
    {
      v33 = 0;
    }

    v40 = v32;
    v42 = v33;
    if (a5 <= 0xFDu)
    {
      v15 = a5;
    }

    else
    {
      v15 = 0;
    }

    v16 = a1 + *(type metadata accessor for FeedWeather(0) + 36);
    v17 = *(type metadata accessor for FeedWeather.Temperature(0) + 20);
LABEL_49:
    sub_1D5E1DCBC(a3, a4, v8);
    v34 = a6(v16 + v17, a2, v40, v42, v15);
    if (v6)
    {
      v25 = v40;
      v26 = v42;
      v27 = v15;
      return sub_1D5E1E15C(v25, v26, v27);
    }

    v35 = v34;
    v36 = v40;
    v37 = v42;
    v38 = v15;
LABEL_58:
    sub_1D5E1E15C(v36, v37, v38);
    return v35;
  }

  if (BYTE1(a5) == 2)
  {
    if (a5 > 0xFDu)
    {
      v28 = 1;
    }

    else
    {
      v28 = a3;
    }

    if (a5 <= 0xFDu)
    {
      v29 = a4;
    }

    else
    {
      v29 = 0;
    }

    v40 = v28;
    v42 = v29;
    if (a5 <= 0xFDu)
    {
      v15 = a5;
    }

    else
    {
      v15 = 0;
    }

    v16 = a1 + *(type metadata accessor for FeedWeather(0) + 36);
    v17 = *(type metadata accessor for FeedWeather.Temperature(0) + 24);
    goto LABEL_49;
  }

  if (BYTE1(a5) == 3)
  {
    if (a5 > 0xFDu)
    {
      v13 = 1;
    }

    else
    {
      v13 = a3;
    }

    if (a5 <= 0xFDu)
    {
      v14 = a4;
    }

    else
    {
      v14 = 0;
    }

    v40 = v13;
    v42 = v14;
    if (a5 <= 0xFDu)
    {
      v15 = a5;
    }

    else
    {
      v15 = 0;
    }

    v16 = a1 + *(type metadata accessor for FeedWeather(0) + 36);
    v17 = *(type metadata accessor for FeedWeather.Temperature(0) + 28);
    goto LABEL_49;
  }

  if (!(a4 | a3) && !a5)
  {
    v30 = *(a1 + 16);

    return v30;
  }

  if (a3 == 1 && !a4 && !a5)
  {
    return FormatWeatherConditionCode.rawValue.getter();
  }

  v39 = (a1 + *(type metadata accessor for FeedWeather(0) + 40));
  result = v39[1];
  if (result)
  {
    v35 = *v39;

    return v35;
  }

  return result;
}

uint64_t sub_1D6894D94()
{
  v0 = sub_1D6C4356C();
  v1 = *(*(v0 + 40) + 16);
  swift_beginAccess();
  if (*(*(v1 + 16) + 16))
  {
    v6 = *(v0 + 56);

    sub_1D6F622E0(v2);
    sub_1D5B886D0(v3);

    return v6;
  }

  else
  {
    v5 = sub_1D6E46E28();

    return v5;
  }
}

uint64_t sub_1D6894E34()
{
  v0 = off_1F513B080[0];
  type metadata accessor for FormatDecorationContext(0);
  v1 = v0();
  v2 = *(*(v1 + 40) + 16);
  swift_beginAccess();
  if (*(*(v2 + 16) + 16))
  {
    v7 = *(v1 + 56);

    sub_1D6F622E0(v3);
    sub_1D5B886D0(v4);

    return v7;
  }

  else
  {
    v6 = sub_1D6E46E28();

    return v6;
  }
}

uint64_t *sub_1D6894EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v45 = a2;
  v8 = sub_1D7258AAC();
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v42 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68A8C44(0, &qword_1EDF43B60, sub_1D61D3F98, MEMORY[0x1E6968070]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v41 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v41 - v23;
  v46 = a3;
  v25 = a3;
  v26 = a4;
  sub_1D61D37BC(v25, a4, a5);
  (*(v13 + 16))(v16, v20, v12);
  sub_1D725791C();
  if (round(v27) == 0.0)
  {
    sub_1D725792C();
  }

  v28 = *(v13 + 8);
  v28(v20, v12);
  (*(v13 + 32))(v24, v16, v12);
  v51 = v45;
  v48 = v46;
  v49 = a4;
  v50 = a5 & 1;
  v29 = v24;
  v30 = off_1F51AF338[0];
  sub_1D5E1DCD0(v46, v26, a5);
  type metadata accessor for FormatNodeContext(0);
  v31 = v30();
  v32 = &v48;
  v33 = v47;
  v34 = FormatBoolean.value(contextLayoutOptions:)(v31);
  if (v33)
  {

    v28(v29, v12);
    sub_1D5D2F2C4(v48, v49, v50);
  }

  else
  {
    v35 = v34;
    sub_1D5D2F2C4(v48, v49, v50);

    if (v35)
    {
      v36 = 1;
    }

    else
    {
      v36 = 5;
    }

    v37 = [objc_allocWithZone(MEMORY[0x1E696AD30]) init];
    v38 = v42;
    sub_1D72589EC();
    v39 = sub_1D72589DC();
    (*(v43 + 8))(v38, v44);
    [v37 setLocale_];

    [v37 setUnitOptions_];
    if (qword_1EDF10AC8 != -1)
    {
      swift_once();
    }

    [v37 setNumberFormatter_];
    sub_1D61D3F98();
    v32 = sub_1D726321C();

    v28(v29, v12);
  }

  return v32;
}

uint64_t *sub_1D6895310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v45 = a2;
  v8 = sub_1D7258AAC();
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v42 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68A8C44(0, &qword_1EDF43B60, sub_1D61D3F98, MEMORY[0x1E6968070]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v41 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v41 - v23;
  v46 = a3;
  v25 = a3;
  v26 = a4;
  sub_1D61D37BC(v25, a4, a5);
  (*(v13 + 16))(v16, v20, v12);
  sub_1D725791C();
  if (round(v27) == 0.0)
  {
    sub_1D725792C();
  }

  v28 = *(v13 + 8);
  v28(v20, v12);
  (*(v13 + 32))(v24, v16, v12);
  v51 = v45;
  v48 = v46;
  v49 = a4;
  v50 = a5 & 1;
  v29 = v24;
  v30 = off_1F51B94D0[0];
  sub_1D5E1DCD0(v46, v26, a5);
  type metadata accessor for FormatNodeBinderContext(0);
  v31 = v30();
  v32 = &v48;
  v33 = v47;
  v34 = FormatBoolean.value(contextLayoutOptions:)(v31);
  if (v33)
  {

    v28(v29, v12);
    sub_1D5D2F2C4(v48, v49, v50);
  }

  else
  {
    v35 = v34;
    sub_1D5D2F2C4(v48, v49, v50);

    if (v35)
    {
      v36 = 1;
    }

    else
    {
      v36 = 5;
    }

    v37 = [objc_allocWithZone(MEMORY[0x1E696AD30]) init];
    v38 = v42;
    sub_1D72589EC();
    v39 = sub_1D72589DC();
    (*(v43 + 8))(v38, v44);
    [v37 setLocale_];

    [v37 setUnitOptions_];
    if (qword_1EDF10AC8 != -1)
    {
      swift_once();
    }

    [v37 setNumberFormatter_];
    sub_1D61D3F98();
    v32 = sub_1D726321C();

    v28(v29, v12);
  }

  return v32;
}

uint64_t *sub_1D6895728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v41 = a2;
  v8 = sub_1D7258AAC();
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v38 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68A8C44(0, &qword_1EDF43B60, sub_1D61D3F98, MEMORY[0x1E6968070]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v38 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v46 = &v38 - v23;
  sub_1D61D37BC(a3, a4, a5);
  (*(v13 + 16))(v16, v20, v12);
  sub_1D725791C();
  if (round(v24) == 0.0)
  {
    sub_1D725792C();
  }

  v25 = *(v13 + 8);
  v25(v20, v12);
  v26 = v46;
  (*(v13 + 32))(v46, v16, v12);
  v43 = a3;
  v44 = a4;
  v45 = a5 & 1;
  sub_1D5E1DCD0(a3, a4, a5);
  v27 = sub_1D6C4356C();
  v28 = &v43;
  v29 = v42;
  v30 = FormatBoolean.value(contextLayoutOptions:)(v27);
  if (v29)
  {

    v25(v26, v12);
    sub_1D5D2F2C4(v43, v44, v45);
  }

  else
  {
    v31 = v30;
    sub_1D5D2F2C4(v43, v44, v45);

    if (v31)
    {
      v32 = 1;
    }

    else
    {
      v32 = 5;
    }

    v33 = [objc_allocWithZone(MEMORY[0x1E696AD30]) init];
    v34 = v38;
    sub_1D72589EC();
    v35 = sub_1D72589DC();
    (*(v39 + 8))(v34, v40);
    [v33 setLocale_];

    [v33 setUnitOptions_];
    if (qword_1EDF10AC8 != -1)
    {
      swift_once();
    }

    [v33 setNumberFormatter_];
    sub_1D61D3F98();
    v36 = v46;
    v28 = sub_1D726321C();

    v25(v36, v12);
  }

  return v28;
}

uint64_t *sub_1D6895B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v9 = sub_1D7258AAC();
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v44 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68A8C44(0, &qword_1EDF43B60, sub_1D61D3F98, MEMORY[0x1E6968070]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v43 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v49 = &v43 - v24;
  sub_1D61D37BC(a3, a4, a5);
  (*(v14 + 16))(v17, v21, v13);
  sub_1D725791C();
  if (round(v25) == 0.0)
  {
    sub_1D725792C();
  }

  v47 = *(v14 + 8);
  v47(v21, v13);
  v26 = v49;
  (*(v14 + 32))(v49, v17, v13);
  v50 = a3;
  v51 = a4;
  v52 = a5 & 1;
  v27 = *(a2 + 48);
  type metadata accessor for FormatVariableCollection();
  v28 = swift_allocObject();
  *(v28 + 16) = MEMORY[0x1E69E7CC8];
  type metadata accessor for FormatOptionCollection();
  swift_allocObject();
  sub_1D5E1DCD0(a3, a4, a5);
  v29 = sub_1D5D2488C(MEMORY[0x1E69E7CC0], v28);
  type metadata accessor for FormatContextLayoutOptions();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = v27;
  *(inited + 32) = 0x3FF0000000000000;
  *(inited + 40) = v29;
  v31 = MEMORY[0x1E69E7CD0];
  *(inited + 48) = 0;
  *(inited + 56) = v31;
  v32 = &v50;
  v33 = v48;
  v34 = FormatBoolean.value(contextLayoutOptions:)(inited);
  if (v33)
  {
    swift_setDeallocating();

    v47(v26, v13);
    sub_1D5D2F2C4(v50, v51, v52);
  }

  else
  {
    v35 = v34;
    v36 = v47;
    sub_1D5D2F2C4(v50, v51, v52);
    swift_setDeallocating();

    if (v35)
    {
      v37 = 1;
    }

    else
    {
      v37 = 5;
    }

    v38 = [objc_allocWithZone(MEMORY[0x1E696AD30]) init];
    v39 = v44;
    sub_1D72589EC();
    v40 = sub_1D72589DC();
    (*(v45 + 8))(v39, v46);
    [v38 setLocale_];

    [v38 setUnitOptions_];
    if (qword_1EDF10AC8 != -1)
    {
      swift_once();
    }

    [v38 setNumberFormatter_];
    sub_1D61D3F98();
    v41 = v49;
    v32 = sub_1D726321C();

    v36(v41, v13);
  }

  return v32;
}

uint64_t *sub_1D6895FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v48 = a2;
  v8 = sub_1D7258AAC();
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v44 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68A8C44(0, &qword_1EDF43B60, sub_1D61D3F98, MEMORY[0x1E6968070]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v43 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v53 = &v43 - v23;
  v47 = a3;
  v24 = a3;
  v25 = a4;
  v26 = a4;
  v27 = a5;
  sub_1D61D37BC(v24, v26, a5);
  (*(v13 + 16))(v16, v20, v12);
  sub_1D725791C();
  if (round(v28) == 0.0)
  {
    sub_1D725792C();
  }

  v29 = *(v13 + 8);
  v29(v20, v12);
  v30 = v53;
  (*(v13 + 32))(v53, v16, v12);
  v50 = v47;
  v51 = v25;
  v52 = v27 & 1;
  v31 = off_1F513B080[0];
  sub_1D5E1DCD0(v47, v25, v27);
  type metadata accessor for FormatDecorationContext(0);
  v32 = v31();
  v33 = &v50;
  v34 = v49;
  v35 = FormatBoolean.value(contextLayoutOptions:)(v32);
  if (v34)
  {

    v29(v30, v12);
    sub_1D5D2F2C4(v50, v51, v52);
  }

  else
  {
    v36 = v35;
    sub_1D5D2F2C4(v50, v51, v52);

    if (v36)
    {
      v37 = 1;
    }

    else
    {
      v37 = 5;
    }

    v38 = [objc_allocWithZone(MEMORY[0x1E696AD30]) init];
    v39 = v44;
    sub_1D72589EC();
    v40 = sub_1D72589DC();
    (*(v45 + 8))(v39, v46);
    [v38 setLocale_];

    [v38 setUnitOptions_];
    if (qword_1EDF10AC8 != -1)
    {
      swift_once();
    }

    [v38 setNumberFormatter_];
    sub_1D61D3F98();
    v41 = v53;
    v33 = sub_1D726321C();

    v29(v41, v12);
  }

  return v33;
}

uint64_t sub_1D68963C8(void **a1, unsigned __int8 a2)
{
  v2 = *a1;
  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        if (qword_1EDF3AFB0 != -1)
        {
          swift_once();
        }

        type metadata accessor for FormatCommandAction();
        swift_allocObject();
        v35 = v2;
      }

      else
      {
        if (qword_1EDF3AFE8 != -1)
        {
          swift_once();
        }

        v15 = qword_1EDF3AFF0;
        type metadata accessor for FormatCommandAction();
        swift_allocObject();

        v16 = v2;
        v18 = v15;
      }

      return sub_1D6203B70(v18, v2, 0, 0, v17);
    }

    else if (a2 == 2)
    {
      if (qword_1EDF3ACA8 != -1)
      {
        swift_once();
      }

      v41 = v2;
      v43 = 0x80;
      v42 = 0;
      type metadata accessor for FormatCommandAction();
      swift_allocObject();
      v19 = v2;

      return sub_1D62037BC(v20, &v41, v21);
    }

    else if (a2 == 3)
    {
      if (qword_1EDF3AAD8 != -1)
      {
        swift_once();
      }

      type metadata accessor for FormatCommandAction();
      swift_allocObject();
      v9 = v2;

      return sub_1D6204178(v10, v2, v11);
    }

    else
    {
      if (qword_1EDF16C38 != -1)
      {
        swift_once();
      }

      sub_1D68AFCB0(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1D72816C0;
      *(v31 + 32) = v2;
      type metadata accessor for FormatCommandAction();
      swift_allocObject();
      v32 = v2;

      return sub_1D6203FC0(v33, v31, v34);
    }
  }

  else if (a2 > 7u)
  {
    if (a2 == 8)
    {
      if (qword_1EDF3AB68 != -1)
      {
        swift_once();
      }

      v28 = qword_1EDF3AB70;

      v29 = [v2 sourceChannel];
      type metadata accessor for FormatCommandAction();
      swift_allocObject();
      v30 = sub_1D68A8EEC(v28, v29);
LABEL_43:
      v38 = v30;

      return v38;
    }

    if (a2 == 9)
    {
      if (qword_1EDF3B010 != -1)
      {
        swift_once();
      }

      v13 = qword_1EDF3B020;

      v14 = [v2 sourceChannel];
      type metadata accessor for FormatCommandAction();
      swift_allocObject();
      v6 = v13;
      v7 = v14;
      v8 = 1;
      return sub_1D620338C(v6, v7, v8, 0, v5);
    }

    if (qword_1EDF16A20 != -1)
    {
      swift_once();
    }

    type metadata accessor for FormatCommandAction();
    swift_allocObject();

    return sub_1D6202F80(v39, 1, v40);
  }

  else
  {
    if (a2 != 5)
    {
      if (a2 == 6)
      {
        if (qword_1EDF3B010 != -1)
        {
          swift_once();
        }

        v3 = qword_1EDF3B020;

        v4 = [v2 sourceChannel];
        type metadata accessor for FormatCommandAction();
        swift_allocObject();
        v6 = v3;
        v7 = v4;
        v8 = 0;
        return sub_1D620338C(v6, v7, v8, 0, v5);
      }

      if (qword_1EDF3AB00 != -1)
      {
        swift_once();
      }

      v36 = qword_1EDF3AB10;

      v37 = [v2 sourceChannel];
      type metadata accessor for FormatCommandAction();
      swift_allocObject();
      v30 = sub_1D68A926C(v36, v37, 256);
      goto LABEL_43;
    }

    sub_1D68AFCB0(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1D72816C0;
    *(v22 + 32) = v2;
    type metadata accessor for Commands.RemoveIssues.Prompt();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = &unk_1F50F3278;
    v23[4] = 0;
    v23[5] = 0;
    v24 = qword_1EDF16C58;
    v25 = v2;
    if (v24 != -1)
    {
      swift_once();
    }

    type metadata accessor for FormatCommandAction();
    swift_allocObject();

    return sub_1D6203E08(v26, v23, v27);
  }
}

void sub_1D6896A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6, __n128 a7)
{
  v9 = *(a1 + 16);
  if (!(a6 >> 6))
  {
    sub_1D6896CAC(v9, a2, a3, a4, a5, a7);
    return;
  }

  if (a6 >> 6 == 1)
  {
    v12 = [v9 eventLeagueTag];
    sub_1D6896CAC(v12, a2, a3, a4, a5, v13);
    swift_unknownObjectRelease();
    return;
  }

  v15 = [v9 eventCompetitorTags];
  if (v15)
  {
    v16 = v15;
    sub_1D5B5534C(0, &qword_1EDF04500, &protocolRef_FCSportsProviding);
    v17 = sub_1D726267C();

    if (!(v17 >> 62))
    {
      goto LABEL_7;
    }

LABEL_14:
    v18 = sub_1D7263BFC();
    if (v18 > a3)
    {
      goto LABEL_8;
    }

LABEL_15:

    type metadata accessor for FormatLayoutError(0);
    sub_1D68ADD5C(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    *v21 = v18;
    v21[1] = a3;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v17 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_14;
  }

LABEL_7:
  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v18 <= a3)
  {
    goto LABEL_15;
  }

LABEL_8:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x1DA6FB460](a3, v17);
    goto LABEL_12;
  }

  if (a3 < 0)
  {
    __break(1u);
  }

  else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) > a3)
  {
    v19 = *(v17 + 8 * a3 + 32);
    swift_unknownObjectRetain();
LABEL_12:

    sub_1D6896CAC(v19, a2, a4, a5, a6 & 0x3F, v20);
    swift_unknownObjectRelease();
    return;
  }

  __break(1u);
}

char *sub_1D6896CAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, __n128 a6)
{
  v94 = a3;
  v95 = a1;
  sub_1D68A8C44(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v91 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v90 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v90 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v90 - v22;
  v93 = sub_1D72585BC();
  MEMORY[0x1EEE9AC00](v93, v24);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v90 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v90 - v31;
  *&v37 = MEMORY[0x1EEE9AC00](v33, v34).n128_u64[0];
  v39 = &v90 - v38;
  v92 = a2;
  v97 = a2;
  if (a5 > 1u)
  {
    if (a5 == 2)
    {
      v91 = v35;
      v41 = [v95 identifier];
      if (!v41)
      {
        sub_1D726207C();
        v41 = sub_1D726203C();
      }

      v42 = [objc_opt_self() nss:v41 NewsURLForTagID:?];

      sub_1D72584EC();
      sub_1D6B79708(v94, MEMORY[0x1E69E7CC0], v39);
      v43 = *(v91 + 1);
      v44 = v93;
      v43(v28, v93);
      if (qword_1EDF3AF88 != -1)
      {
        swift_once();
      }

      v45 = qword_1EDF3AF90;
      v46 = (v92 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
      v47 = *(v92 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
      if (v47)
      {
        v48 = v46[3];
        v49 = v46[4];
        v50 = v46[1];

        sub_1D69F65B4(v39, v50, v47, v48, v49, v19);

        v51 = v91;
      }

      else
      {
        v51 = v91;
        (*(v91 + 2))(v19, v39, v44);
      }

      (*(v51 + 7))(v19, 0, 1, v44);
      type metadata accessor for FormatCommandAction();
      swift_allocObject();
      v28 = sub_1D62029B4(v45, v19);
      v43(v39, v44);
      return v28;
    }

    if (v94 | a4)
    {
      if (v94 ^ 1 | a4)
      {
        v61 = v36;
        v62 = v35;
        swift_getObjectType();
        FCTagProviding.recipeCatalogSearchURL.getter(v23);
        v63 = v93;
        if ((*(v62 + 6))(v23, 1, v93) == 1)
        {
          v64 = v62;
          sub_1D68AF29C(v23, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          v65 = objc_opt_self();
          sub_1D7257B5C();
          v66 = sub_1D726265C();
          v67 = [v65 nss:v66 NewsURLForRecipeCatalog:?];

          sub_1D72584EC();
          if (qword_1EDF3AF88 != -1)
          {
            swift_once();
          }

          v68 = qword_1EDF3AF90;
          v69 = v93;
          v70 = (v92 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
          v71 = *(v92 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
          v72 = v91;
          if (v71)
          {
            v73 = v70[3];
            v74 = v70[4];
            v75 = v70[1];

            sub_1D69F65B4(v61, v75, v71, v73, v74, v72);

            v62 = v64;
          }

          else
          {
            (*(v62 + 2))(v91, v61, v93);
          }

          (*(v62 + 7))(v72, 0, 1, v69);
          type metadata accessor for FormatCommandAction();
          swift_allocObject();
          v28 = sub_1D62029B4(v68, v72);
          (*(v62 + 1))(v61, v69);
        }

        else
        {
          v80 = v62;
          (*(v62 + 4))(v32, v23, v63);
          if (qword_1EDF3AF88 != -1)
          {
            swift_once();
          }

          v81 = qword_1EDF3AF90;
          v82 = (v92 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
          v83 = *(v92 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
          if (v83)
          {
            v84 = v82[3];
            v85 = v82[4];
            v86 = v82[1];

            sub_1D69F65B4(v32, v86, v83, v84, v85, v15);

            v87 = v93;
            v88 = v80;
          }

          else
          {
            v88 = v62;
            v89 = *(v62 + 2);
            v87 = v93;
            v89(v15, v32, v93);
          }

          (*(v88 + 7))(v15, 0, 1, v87);
          type metadata accessor for FormatCommandAction();
          swift_allocObject();
          v28 = sub_1D62029B4(v81, v15);
          (*(v88 + 1))(v32, v87);
        }

        return v28;
      }

      if (qword_1EDF16D48 != -1)
      {
        swift_once();
      }

      type metadata accessor for FormatCommandAction();
      swift_allocObject();
      v53 = v95;
      swift_unknownObjectRetain();

      v55 = sub_1D68A90AC(v54, v53);
    }

    else
    {
      if (qword_1EDF3AB68 != -1)
      {
        swift_once();
      }

      v59 = qword_1EDF3AB70;
      type metadata accessor for FormatCommandAction();
      swift_allocObject();

      v60 = v95;
      swift_unknownObjectRetain();
      v55 = sub_1D68A8EEC(v59, v60);
    }

    v28 = v55;
LABEL_37:

    return v28;
  }

  if (!a5)
  {
    if (v94)
    {
      v40 = 1;
    }

    else
    {
      v56 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);
      v57 = *(v56() + 16);

      v96 = v57;
      if (FeedKind.rawValue.getter() == 0xD000000000000013 && 0x80000001D73B7810 == v58)
      {
        v40 = 1;
      }

      else
      {
        v40 = sub_1D72646CC();
      }
    }

    if (qword_1EDF3AB00 != -1)
    {
      swift_once();
    }

    v76 = v40 & 1 | 0x100;
    type metadata accessor for FormatCommandAction();
    swift_allocObject();
    v77 = v95;
    swift_unknownObjectRetain();

    v28 = sub_1D68A926C(v78, v77, v76);
    goto LABEL_37;
  }

  type metadata accessor for FormatLayoutError(0);
  sub_1D68ADD5C(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
  swift_allocError();
  *v52 = 0xD000000000000014;
  v52[1] = 0x80000001D73DA510;
  v52[5] = &type metadata for FormatVersions.StarSky;
  v52[6] = &off_1F51F6CD8;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return v28;
}

char *sub_1D6897724(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, __n128 a6)
{
  v94 = a2;
  v102 = a1;
  sub_1D68A8C44(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v93 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v92 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v92 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v92 - v22;
  v24 = sub_1D72585BC();
  MEMORY[0x1EEE9AC00](v24, v25);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v92 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v92 - v32;
  *&v39 = MEMORY[0x1EEE9AC00](v34, v35).n128_u64[0];
  v41 = &v92 - v40;
  if (a5 > 1u)
  {
    if (a5 == 2)
    {
      v92 = v37;
      v93 = v36;
      v43 = [v102 identifier];
      if (!v43)
      {
        sub_1D726207C();
        v43 = sub_1D726203C();
      }

      v44 = [objc_opt_self() nss:v43 NewsURLForTagID:?];

      sub_1D72584EC();
      sub_1D6B7A1EC(a3, MEMORY[0x1E69E7CC0], v41);
      v45 = *(v92 + 8);
      v45(v29, v93);
      if (qword_1EDF3AF88 != -1)
      {
        swift_once();
      }

      v46 = qword_1EDF3AF90;
      v47 = *(v94 + 88);
      v96 = *(v94 + 72);
      v97 = v47;
      v48 = *(&v96 + 1);
      if (*(&v96 + 1))
      {
        v49 = v96;
        v51 = *(&v97 + 1);
        v50 = v97;

        sub_1D68AFF0C(&v96, v95);
        sub_1D69F65B4(v41, v49, v48, v50, v51, v19);
        sub_1D68AFF68(&v96);
        v52 = v93;
        v53 = v92;
      }

      else
      {
        v53 = v92;
        v52 = v93;
        (*(v92 + 16))(v19, v41, v93);
      }

      (*(v53 + 56))(v19, 0, 1, v52);
      type metadata accessor for FormatCommandAction();
      swift_allocObject();
      v29 = sub_1D62029B4(v46, v19);
      v45(v41, v52);
    }

    else
    {
      if (!(a3 | a4))
      {
        if (qword_1EDF3AB68 != -1)
        {
          swift_once();
        }

        v59 = qword_1EDF3AB70;
        type metadata accessor for FormatCommandAction();
        swift_allocObject();

        v60 = v102;
        swift_unknownObjectRetain();
        v29 = sub_1D68A8EEC(v59, v60);
        goto LABEL_36;
      }

      if (a3 ^ 1 | a4)
      {
        v61 = v38;
        v62 = v36;
        v63 = v37;
        swift_getObjectType();
        FCTagProviding.recipeCatalogSearchURL.getter(v23);
        if ((*(v63 + 48))(v23, 1, v62) == 1)
        {
          v64 = v63;
          v65 = v62;
          sub_1D68AF29C(v23, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          v66 = objc_opt_self();
          sub_1D7257B5C();
          v67 = sub_1D726265C();
          v68 = [v66 nss:v67 NewsURLForRecipeCatalog:?];

          sub_1D72584EC();
          if (qword_1EDF3AF88 != -1)
          {
            swift_once();
          }

          v69 = qword_1EDF3AF90;
          v70 = *(v94 + 88);
          v100 = *(v94 + 72);
          v101 = v70;
          v71 = *(&v100 + 1);
          v72 = v93;
          if (*(&v100 + 1))
          {
            v73 = v100;
            v75 = *(&v101 + 1);
            v74 = v101;

            sub_1D68AFF0C(&v100, v95);
            sub_1D69F65B4(v61, v73, v71, v74, v75, v72);
            sub_1D68AFF68(&v100);
            v76 = v65;
            v77 = v64;
          }

          else
          {
            v77 = v63;
            v76 = v65;
            (*(v63 + 16))(v93, v61, v65);
          }

          (*(v77 + 56))(v72, 0, 1, v76);
          type metadata accessor for FormatCommandAction();
          swift_allocObject();
          v29 = sub_1D62029B4(v69, v72);
          (*(v77 + 8))(v61, v76);
        }

        else
        {
          v82 = v63;
          v83 = v62;
          (*(v63 + 32))(v33, v23, v62);
          if (qword_1EDF3AF88 != -1)
          {
            swift_once();
          }

          v84 = qword_1EDF3AF90;
          v85 = *(v94 + 88);
          v98 = *(v94 + 72);
          v99 = v85;
          v86 = *(&v98 + 1);
          if (*(&v98 + 1))
          {
            v87 = v98;
            v89 = *(&v99 + 1);
            v88 = v99;

            sub_1D68AFF0C(&v98, v95);
            sub_1D69F65B4(v33, v87, v86, v88, v89, v15);
            sub_1D68AFF68(&v98);
            v90 = v83;
            v91 = v82;
          }

          else
          {
            v91 = v63;
            v90 = v83;
            (*(v63 + 16))(v15, v33, v83);
          }

          (*(v91 + 56))(v15, 0, 1, v90);
          type metadata accessor for FormatCommandAction();
          swift_allocObject();
          v29 = sub_1D62029B4(v84, v15);
          (*(v91 + 8))(v33, v90);
        }
      }

      else
      {
        if (qword_1EDF16D48 != -1)
        {
          swift_once();
        }

        type metadata accessor for FormatCommandAction();
        swift_allocObject();
        v55 = v102;
        swift_unknownObjectRetain();

        v29 = sub_1D68A90AC(v56, v55);
      }
    }
  }

  else
  {
    if (!a5)
    {
      if (a3)
      {
        v42 = 1;
      }

      else
      {
        type metadata accessor for FormatVariableCollection();
        v57 = swift_allocObject();
        *(v57 + 16) = MEMORY[0x1E69E7CC8];
        type metadata accessor for FormatOptionCollection();
        swift_initStackObject();
        sub_1D5D2488C(MEMORY[0x1E69E7CC0], v57);

        v95[0] = 0;
        if (FeedKind.rawValue.getter() == 0xD000000000000013 && 0x80000001D73B7810 == v58)
        {
          v42 = 1;
        }

        else
        {
          v42 = sub_1D72646CC();
        }
      }

      if (qword_1EDF3AB00 != -1)
      {
        swift_once();
      }

      v78 = v42 & 1 | 0x100;
      type metadata accessor for FormatCommandAction();
      swift_allocObject();
      v79 = v102;
      swift_unknownObjectRetain();

      v29 = sub_1D68A926C(v80, v79, v78);
LABEL_36:

      return v29;
    }

    type metadata accessor for FormatLayoutError(0);
    sub_1D68ADD5C(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    *v54 = 0xD000000000000014;
    v54[1] = 0x80000001D73DA510;
    v54[5] = &type metadata for FormatVersions.StarSky;
    v54[6] = &off_1F51F6CD8;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v29;
}

uint64_t sub_1D6898218(uint64_t *a1, char a2, __n128 a3)
{
  v5 = MEMORY[0x1E69E6720];
  sub_1D68A8C44(0, &unk_1EDF35458, type metadata accessor for FeedHeadlineAudioCommandContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v60 - v8;
  sub_1D68A8C44(0, qword_1EDF42030, type metadata accessor for FeedHeadline, v5);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v60 - v12;
  switch(a2)
  {
    case 1:
      if (qword_1EDF3AFB0 != -1)
      {
        swift_once();
      }

      v41 = qword_1EDF3AFB8;
      goto LABEL_32;
    case 2:
      if (qword_1EDF3ACA8 != -1)
      {
        swift_once();
      }

      v32 = qword_1EDF3ACB0;
      v33 = a1[5];
      v34 = *a1;
      v35 = a1[1];
      *&v61 = v33;
      *(&v61 + 1) = sub_1D5B4AA6C;
      v62 = 0;
      v63 = 0;
      v64 = v34;
      v65 = v35;
      v67 = 0;
      v66 = 0;
      type metadata accessor for FormatCommandAction();
      swift_allocObject();

      swift_unknownObjectRetain();

      return sub_1D62037BC(v32, &v61, v36);
    case 3:
      if (qword_1EDF3B028 != -1)
      {
        swift_once();
      }

      v17 = qword_1EDF3B030;
      goto LABEL_49;
    case 4:
      if (qword_1EDF3AE18 != -1)
      {
        swift_once();
      }

      v18 = qword_1EDF3AE20;
      v19 = a1[5];
      type metadata accessor for FormatCommandAction();
      swift_allocObject();

      swift_unknownObjectRetain();
      v20 = sub_1D68A9450(v18, v19, 1024);
      goto LABEL_53;
    case 5:
      if (qword_1EDF3AE68 != -1)
      {
        swift_once();
      }

      v46 = qword_1EDF3AE70;
      goto LABEL_45;
    case 6:
      if (qword_1EDF3AE50 != -1)
      {
        swift_once();
      }

      v46 = qword_1EDF3AE58;
LABEL_45:
      v49 = a1[5];
      v51 = *a1;
      v50 = a1[1];
      type metadata accessor for FormatCommandAction();
      swift_allocObject();

      swift_unknownObjectRetain();

      v20 = sub_1D68A96A8(v46, v49, v51, v50);
      goto LABEL_53;
    case 7:
      if (qword_1EDF3B010 != -1)
      {
        swift_once();
      }

      v37 = qword_1EDF3B020;
      v38 = a1[5];

      v39 = [v38 sourceChannel];
      type metadata accessor for FormatCommandAction();
      swift_allocObject();
      swift_unknownObjectRetain();
      return sub_1D620338C(v37, v39, 0, v38, v40);
    case 8:
      if (qword_1EDF3AB00 != -1)
      {
        swift_once();
      }

      v54 = qword_1EDF3AB10;
      v55 = a1[5];

      v56 = [v55 sourceChannel];
      type metadata accessor for FormatCommandAction();
      swift_allocObject();
      v20 = sub_1D68A926C(v54, v56, (v56 != 0) << 8);
      goto LABEL_53;
    case 9:
      if (qword_1EDF3AB68 != -1)
      {
        swift_once();
      }

      v29 = qword_1EDF3AB70;
      v30 = a1[5];

      v31 = [v30 sourceChannel];
      type metadata accessor for FormatCommandAction();
      swift_allocObject();
      v20 = sub_1D68A8EEC(v29, v31);
      goto LABEL_53;
    case 10:
      if (qword_1EDF3AFD8 != -1)
      {
        swift_once();
      }

      v17 = qword_1EDF3AFE0;
      goto LABEL_49;
    case 11:
      if (qword_1EDF3AC48 != -1)
      {
        swift_once();
      }

      v17 = qword_1EDF3AC58;
LABEL_49:
      v52 = a1[5];
      type metadata accessor for FormatCommandAction();
      swift_allocObject();

      swift_unknownObjectRetain();
      return sub_1D6203604(v17, v52, v53);
    case 12:
      if (qword_1EDF3AC28 != -1)
      {
        swift_once();
      }

      v21 = qword_1EDF3AC38;
      v22 = a1[5];

      v23 = [v22 identifier];
      v24 = sub_1D726207C();
      v26 = v25;

      type metadata accessor for FormatCommandAction();
      swift_allocObject();
      return sub_1D62031B0(v21, v24, v26, v27);
    case 13:
      if (qword_1EDF16A20 != -1)
      {
        swift_once();
      }

      type metadata accessor for FormatCommandAction();
      swift_allocObject();

      return sub_1D6202F80(v47, 1, v48);
    case 14:
    case 16:
    case 17:
      if (qword_1EDF3B0A0 != -1)
      {
        swift_once();
      }

      sub_1D68B021C(a1, v9, type metadata accessor for FeedHeadline);
      v14 = type metadata accessor for FeedHeadlineAudioCommandContext(0);
      (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
      type metadata accessor for FormatCommandAction();
      swift_allocObject();

      v16 = sub_1D68A9DE8(v15, v9);
      goto LABEL_54;
    case 15:
      if (qword_1EDF3B088 != -1)
      {
        swift_once();
      }

      sub_1D68B021C(a1, v13, type metadata accessor for FeedHeadline);
      v44 = type metadata accessor for FeedHeadline(0);
      (*(*(v44 - 8) + 56))(v13, 0, 1, v44);
      type metadata accessor for FormatCommandAction();
      swift_allocObject();

      v20 = sub_1D68A9928(v45, v13);
LABEL_53:
      v16 = v20;
LABEL_54:

      result = v16;
      break;
    case 18:
      if (qword_1EDF3ACD0 != -1)
      {
        swift_once();
      }

      v57 = qword_1EDF3ACE0;
      v58 = a1[5];
      type metadata accessor for FormatCommandAction();
      swift_allocObject();

      swift_unknownObjectRetain();
      result = sub_1D6202DC8(v57, v58, v59);
      break;
    default:
      if (qword_1EDF3AFE8 != -1)
      {
        swift_once();
      }

      v41 = qword_1EDF3AFF0;
LABEL_32:
      v42 = a1[5];
      type metadata accessor for FormatCommandAction();
      swift_allocObject();

      swift_unknownObjectRetain();
      result = sub_1D6203B70(v41, v42, 0, 1, v43);
      break;
  }

  return result;
}

uint64_t sub_1D6898BC4(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      if (qword_1EDF16DB0 != -1)
      {
        v14 = a1;
        swift_once();
        a1 = v14;
      }

      sub_1D5F2DEAC(a1, v15);
      type metadata accessor for FormatCommandAction();
      swift_allocObject();

      v3 = sub_1D68AA7F8(v7, v15);
    }

    else
    {
      if (qword_1EDF16D98 != -1)
      {
        v13 = a1;
        swift_once();
        a1 = v13;
      }

      sub_1D5F2DEAC(a1, v15);
      type metadata accessor for FormatCommandAction();
      swift_allocObject();

      v3 = sub_1D68AA2A8(v4, v15);
    }
  }

  else if (a2 == 2)
  {
    if (qword_1EDF16D88 != -1)
    {
      v10 = a1;
      swift_once();
      a1 = v10;
    }

    sub_1D5F2DEAC(a1, v15);
    type metadata accessor for FormatCommandAction();
    swift_allocObject();

    v3 = sub_1D68AAD48(v5, v15);
  }

  else if (a2 == 3)
  {
    if (qword_1EDF16D60 != -1)
    {
      v11 = a1;
      swift_once();
      a1 = v11;
    }

    sub_1D5F2DEAC(a1, v15);
    type metadata accessor for FormatCommandAction();
    swift_allocObject();

    v3 = sub_1D68AB298(v2, v15);
  }

  else
  {
    if (qword_1EDF16D78 != -1)
    {
      v12 = a1;
      swift_once();
      a1 = v12;
    }

    sub_1D5F2DEAC(a1, v15);
    type metadata accessor for FormatCommandAction();
    swift_allocObject();

    v3 = sub_1D68AB7E8(v6, v15);
  }

  v8 = v3;

  return v8;
}

uint64_t sub_1D6898EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  swift_getObjectType();
  a6(0);
  return sub_1D725D92C() & 1;
}

uint64_t sub_1D6898F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  swift_getObjectType();
  a6(0);
  return sub_1D725D97C();
}

double sub_1D6898FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  type metadata accessor for FeedHeadline(0);
  sub_1D68AD6BC();
  sub_1D5B80300();

  sub_1D725D95C();

  return result;
}

double sub_1D68990BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  type metadata accessor for FeedHeadlineAudioCommandContext(0);
  sub_1D68ADCBC();
  sub_1D5B82160();

  sub_1D725D95C();

  return result;
}

double sub_1D68991BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  sub_1D68AE534();
  sub_1D5B8D474();

  sub_1D725D95C();

  return result;
}

double sub_1D68992B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  sub_1D68AE3D8();
  sub_1D5B90AC0();

  sub_1D725D95C();

  return result;
}

double sub_1D68993AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  sub_1D68AE2E8();
  sub_1D5B81000();

  sub_1D725D95C();

  return result;
}

double sub_1D68994A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  sub_1D68AE144();
  sub_1D5B840B4();

  sub_1D725D95C();

  return result;
}

double sub_1D689959C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  type metadata accessor for LiveActivityCommandContext(0);
  sub_1D68AF1FC();
  sub_1D5B662E0();

  sub_1D725D95C();

  return result;
}

uint64_t sub_1D689969C(uint64_t a1, uint64_t a2, char a3, int a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v62 = a5;
  v63 = a6;
  v65 = a4;
  sub_1D68ACC0C(0);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9, v11);
  v69 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D725D38C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v59 - v20;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v68 = &v59 - v28;
  v31 = MEMORY[0x1EEE9AC00](v29, v30);
  v33 = &v59 - v32;
  v61 = v17;
  if (a3)
  {
    v34 = v10;
    if (a3 == 1)
    {
      *v21 = a1 & 1;
      v35 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v21 = a1;
      v35 = MEMORY[0x1E69D7858];
    }

    (*(v14 + 104))(v21, *v35, v13, v31);
  }

  else
  {
    v36 = a2;
    v34 = v10;
    *v21 = a1;
    *(v21 + 1) = v36;
    (*(v14 + 104))(v21, *MEMORY[0x1E69D7870], v13, v31);
  }

  v64 = v25;
  v60 = *(v14 + 32);
  v60(v33, v21, v13);
  v37 = *(v14 + 56);
  v67 = v33;
  v38 = v37(v33, 0, 1, v13);
  v70 = v65;
  v66 = v14;
  if (v65 == 2)
  {
    v39 = v68;
    v40 = v68;
    v41 = 1;
  }

  else
  {
    v62(v38);
    v39 = v68;
    sub_1D725DE0C();
    v40 = v39;
    v41 = 0;
  }

  v37(v40, v41, 1, v13);
  v42 = *(v34 + 48);
  v43 = MEMORY[0x1E69D7880];
  v44 = MEMORY[0x1E69E6720];
  v45 = v67;
  v46 = v69;
  sub_1D68AE904(v67, v69, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  sub_1D68AE904(v39, v46 + v42, &unk_1EDF3B690, v43, v44, sub_1D68A8C44);
  v47 = v66;
  v48 = *(v66 + 48);
  if (v48(v46, 1, v13) != 1)
  {
    v52 = v64;
    sub_1D68AE904(v46, v64, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    if (v48(v46 + v42, 1, v13) != 1)
    {
      v54 = v61;
      v60(v61, (v46 + v42), v13);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880], MEMORY[0x1E69D7888]);
      v55 = v46;
      v51 = sub_1D7261FBC();
      v56 = *(v47 + 8);
      v56(v54, v13);
      v57 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v68, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v67, &unk_1EDF3B690, v57);
      v56(v52, v13);
      sub_1D68AF29C(v55, &unk_1EDF3B690, v57);
      return v51 & 1;
    }

    v53 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v68, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    v50 = v69;
    sub_1D68AF29C(v67, &unk_1EDF3B690, v53);
    (*(v47 + 8))(v52, v13);
    goto LABEL_15;
  }

  v49 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v39, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v50 = v69;
  sub_1D68AF29C(v45, &unk_1EDF3B690, v49);
  if (v48(v50 + v42, 1, v13) != 1)
  {
LABEL_15:
    sub_1D5D511FC(v50, sub_1D68ACC0C);
    v51 = 0;
    return v51 & 1;
  }

  sub_1D68AF29C(v50, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v51 = 1;
  return v51 & 1;
}

uint64_t sub_1D6899D00(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  LODWORD(v62) = a5;
  v60 = a4;
  sub_1D68ACC0C(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v63 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D725D38C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v59 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v57 - v18;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = (&v57 - v26);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v64 = &v57 - v31;
  if (a3)
  {
    if (a3 == 1)
    {
      *v19 = a1 & 1;
      v32 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v19 = a1;
      v32 = MEMORY[0x1E69D7858];
    }

    v33 = v13[13];
    v33(v19, *v32, v12, v30);
  }

  else
  {
    *v19 = a1;
    *(v19 + 1) = a2;
    v33 = v13[13];
    v33(v19, *MEMORY[0x1E69D7870], v12, v30);
  }

  v61 = v23;
  v34 = v13[4];
  v35 = v64;
  v57 = v13 + 4;
  v58 = v34;
  v34(v64, v19, v12);
  v36 = v13[7];
  v37 = 1;
  v36(v35, 0, 1, v12);
  if ((v62 & 0x100) == 0)
  {
    v38 = v60;
    if (v62)
    {
      v38 = 0;
    }

    *v27 = v38;
    (v33)(v27, *MEMORY[0x1E69D7868], v12);
    v37 = 0;
  }

  v36(v27, v37, 1, v12);
  v39 = *(v9 + 48);
  v40 = MEMORY[0x1E69D7880];
  v41 = MEMORY[0x1E69E6720];
  v42 = v12;
  v44 = v63;
  v43 = v64;
  sub_1D68AE904(v64, v63, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  v62 = v39;
  sub_1D68AE904(v27, v44 + v39, &unk_1EDF3B690, v40, v41, sub_1D68A8C44);
  v45 = v13[6];
  if (v45(v44, 1, v42) != 1)
  {
    v49 = v61;
    sub_1D68AE904(v44, v61, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    v50 = v62;
    if (v45(v44 + v62, 1, v42) != 1)
    {
      v52 = v59;
      v58(v59, v44 + v50, v42);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880], MEMORY[0x1E69D7888]);
      v53 = v44;
      v48 = sub_1D7261FBC();
      v54 = v13[1];
      v54(v52, v42);
      v55 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v27, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v64, &unk_1EDF3B690, v55);
      v54(v49, v42);
      sub_1D68AF29C(v53, &unk_1EDF3B690, v55);
      return v48 & 1;
    }

    v51 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v27, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    v47 = v63;
    sub_1D68AF29C(v64, &unk_1EDF3B690, v51);
    (v13[1])(v49, v42);
    goto LABEL_16;
  }

  v46 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v27, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v47 = v63;
  sub_1D68AF29C(v43, &unk_1EDF3B690, v46);
  if (v45(v47 + v62, 1, v42) != 1)
  {
LABEL_16:
    sub_1D5D511FC(v47, sub_1D68ACC0C);
    v48 = 0;
    return v48 & 1;
  }

  sub_1D68AF29C(v47, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v48 = 1;
  return v48 & 1;
}

uint64_t sub_1D689A358(uint64_t a1, uint64_t a2, char a3, int a4)
{
  LODWORD(v59) = a4;
  sub_1D68ACC0C(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v60 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D725D38C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v53 - v18;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v53 - v24;
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v30 = &v53 - v29;
  v56 = v15;
  v57 = v31;
  if (a3)
  {
    if (a3 == 1)
    {
      *v19 = a1 & 1;
      v32 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v19 = a1;
      v32 = MEMORY[0x1E69D7858];
    }

    (*(v12 + 104))(v19, *v32, v11, v28);
  }

  else
  {
    *v19 = a1;
    *(v19 + 1) = a2;
    (*(v12 + 104))(v19, *MEMORY[0x1E69D7870], v11, v28);
  }

  v33 = v59;
  v55 = *(v12 + 32);
  v55(v30, v19, v11);
  v58 = v12;
  v59 = v30;
  v34 = *(v12 + 56);
  v35 = 1;
  v34(v30, 0, 1, v11);
  if (v33 != 2)
  {
    sub_1D726284C();
    v35 = 0;
  }

  v34(v25, v35, 1, v11);
  v36 = *(v8 + 48);
  v37 = MEMORY[0x1E69D7880];
  v38 = MEMORY[0x1E69E6720];
  v40 = v59;
  v39 = v60;
  sub_1D68AE904(v59, v60, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  sub_1D68AE904(v25, v39 + v36, &unk_1EDF3B690, v37, v38, sub_1D68A8C44);
  v41 = v58;
  v42 = *(v58 + 48);
  if (v42(v39, 1, v11) != 1)
  {
    v54 = v25;
    v46 = v57;
    sub_1D68AE904(v39, v57, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    if (v42(v39 + v36, 1, v11) != 1)
    {
      v48 = v56;
      v55(v56, (v39 + v36), v11);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880], MEMORY[0x1E69D7888]);
      v49 = v39;
      v45 = sub_1D7261FBC();
      v50 = *(v41 + 8);
      v50(v48, v11);
      v51 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v54, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v59, &unk_1EDF3B690, v51);
      v50(v46, v11);
      sub_1D68AF29C(v49, &unk_1EDF3B690, v51);
      return v45 & 1;
    }

    v47 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v54, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    v44 = v60;
    sub_1D68AF29C(v59, &unk_1EDF3B690, v47);
    (*(v41 + 8))(v46, v11);
    goto LABEL_14;
  }

  v43 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v25, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v44 = v60;
  sub_1D68AF29C(v40, &unk_1EDF3B690, v43);
  if (v42(v44 + v36, 1, v11) != 1)
  {
LABEL_14:
    sub_1D5D511FC(v44, sub_1D68ACC0C);
    v45 = 0;
    return v45 & 1;
  }

  sub_1D68AF29C(v44, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v45 = 1;
  return v45 & 1;
}

uint64_t sub_1D689A970(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_1D68ACC0C(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v67 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D725D38C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v62 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v60 - v20;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v64 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v68 = (&v60 - v27);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v69 = &v60 - v31;
  v65 = v11;
  if (a3)
  {
    if (a3 == 1)
    {
      *v21 = a1 & 1;
      v32 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v21 = a1;
      v32 = MEMORY[0x1E69D7858];
    }

    v33 = *(v15 + 104);
    v33(v21, *v32, v14, v30);
  }

  else
  {
    *v21 = a1;
    *(v21 + 1) = a2;
    v33 = *(v15 + 104);
    v33(v21, *MEMORY[0x1E69D7870], v14, v30);
  }

  v35 = v15 + 32;
  v34 = *(v15 + 32);
  v36 = v15;
  v37 = v69;
  v60 = v35;
  v61 = v34;
  v34(v69, v21, v14);
  v38 = *(v36 + 56);
  v39 = 1;
  v38(v37, 0, 1, v14);
  v66 = a5;
  v40 = v68;
  if (a5)
  {
    *v68 = a4;
    v40[1] = a5;
    (v33)(v40, *MEMORY[0x1E69D7870], v14);
    v39 = 0;
  }

  v38(v40, v39, 1, v14);
  v41 = v14;
  v42 = *(v65 + 48);
  v43 = MEMORY[0x1E69D7880];
  v44 = MEMORY[0x1E69E6720];
  v45 = v40;
  v46 = v69;
  v47 = v67;
  sub_1D68AE904(v69, v67, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  v65 = v42;
  v48 = v47 + v42;
  v49 = v41;
  sub_1D68AE904(v45, v48, &unk_1EDF3B690, v43, v44, sub_1D68A8C44);
  v63 = v36;
  v50 = *(v36 + 48);
  if (v50(v47, 1, v41) != 1)
  {
    v53 = v64;
    sub_1D68AE904(v47, v64, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    v54 = v65;
    if (v50(v47 + v65, 1, v41) != 1)
    {
      v56 = v62;
      v61(v62, v47 + v54, v41);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880], MEMORY[0x1E69D7888]);

      v52 = sub_1D7261FBC();
      v57 = *(v63 + 8);
      v57(v56, v49);
      v58 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v68, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v69, &unk_1EDF3B690, v58);
      v57(v53, v49);
      sub_1D68AF29C(v47, &unk_1EDF3B690, v58);
      return v52 & 1;
    }

    v55 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v68, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    sub_1D68AF29C(v69, &unk_1EDF3B690, v55);
    (*(v63 + 8))(v53, v41);
    goto LABEL_14;
  }

  v51 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v45, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  sub_1D68AF29C(v46, &unk_1EDF3B690, v51);
  if (v50(v47 + v65, 1, v41) != 1)
  {
LABEL_14:
    sub_1D5D511FC(v47, sub_1D68ACC0C);
    v52 = 0;
    return v52 & 1;
  }

  sub_1D68AF29C(v47, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v52 = 1;
  return v52 & 1;
}

uint64_t sub_1D689B000(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  LODWORD(v59) = a5;
  v57 = a4;
  sub_1D68ACC0C(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v60 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D725D38C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v56 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v54 - v18;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = (&v54 - v26);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v61 = &v54 - v31;
  if (a3)
  {
    if (a3 == 1)
    {
      *v19 = a1 & 1;
      v32 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v19 = a1;
      v32 = MEMORY[0x1E69D7858];
    }

    v33 = v13[13];
    v33(v19, *v32, v12, v30);
  }

  else
  {
    *v19 = a1;
    *(v19 + 1) = a2;
    v33 = v13[13];
    v33(v19, *MEMORY[0x1E69D7870], v12, v30);
  }

  v58 = v23;
  v34 = v13[4];
  v35 = v61;
  v54 = v13 + 4;
  v55 = v34;
  v34(v61, v19, v12);
  v36 = v13[7];
  v37 = 1;
  v36(v35, 0, 1, v12);
  if ((v59 & 1) == 0)
  {
    *v27 = v57;
    (v33)(v27, *MEMORY[0x1E69D7858], v12);
    v37 = 0;
  }

  v36(v27, v37, 1, v12);
  v38 = v12;
  v39 = *(v9 + 48);
  v40 = MEMORY[0x1E69D7880];
  v41 = MEMORY[0x1E69E6720];
  v43 = v60;
  v42 = v61;
  sub_1D68AE904(v61, v60, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  v59 = v39;
  sub_1D68AE904(v27, v43 + v39, &unk_1EDF3B690, v40, v41, sub_1D68A8C44);
  v44 = v13[6];
  if (v44(v43, 1, v38) != 1)
  {
    v47 = v58;
    sub_1D68AE904(v43, v58, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    v48 = v59;
    if (v44(v43 + v59, 1, v38) != 1)
    {
      v50 = v56;
      v55(v56, v43 + v48, v38);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880], MEMORY[0x1E69D7888]);
      v46 = sub_1D7261FBC();
      v51 = v13[1];
      v51(v50, v38);
      v52 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v27, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v61, &unk_1EDF3B690, v52);
      v51(v47, v38);
      sub_1D68AF29C(v43, &unk_1EDF3B690, v52);
      return v46 & 1;
    }

    v49 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v27, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    sub_1D68AF29C(v61, &unk_1EDF3B690, v49);
    (v13[1])(v47, v38);
    goto LABEL_14;
  }

  v45 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v27, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  sub_1D68AF29C(v42, &unk_1EDF3B690, v45);
  if (v44(v43 + v59, 1, v38) != 1)
  {
LABEL_14:
    sub_1D5D511FC(v43, sub_1D68ACC0C);
    v46 = 0;
    return v46 & 1;
  }

  sub_1D68AF29C(v43, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v46 = 1;
  return v46 & 1;
}

uint64_t sub_1D689B648(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unsigned __int8 a5)
{
  v61 = a4;
  sub_1D68ACC0C(0);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9, v11);
  v63 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D725D38C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v60 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v57 - v19;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v64 = (&v57 - v27);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v66 = &v57 - v31;
  if (a3)
  {
    if (a3 == 1)
    {
      *v20 = a1 & 1;
      v32 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v20 = a1;
      v32 = MEMORY[0x1E69D7858];
    }

    v33 = *(v14 + 104);
    v33(v20, *v32, v13, v30);
  }

  else
  {
    *v20 = a1;
    *(v20 + 1) = a2;
    v33 = *(v14 + 104);
    v33(v20, *MEMORY[0x1E69D7870], v13, v30);
  }

  v34 = v14 + 32;
  v35 = *(v14 + 32);
  v36 = v14;
  v37 = v66;
  v58 = v35;
  v59 = v34;
  v35(v66, v20, v13);
  v65 = v36;
  v38 = *(v36 + 56);
  v39 = 1;
  v38(v37, 0, 1, v13);
  v40 = a5;
  v62 = v24;
  if (a5 > 1u)
  {
    v41 = v64;
    v42 = v65;
    if (v40 != 2)
    {
      goto LABEL_12;
    }

    *v64 = 0;
  }

  else
  {
    v41 = v64;
    v42 = v65;
    *v64 = v61;
  }

  (v33)(v41, *MEMORY[0x1E69D7868], v13);
  v39 = 0;
LABEL_12:
  v38(v41, v39, 1, v13);
  v43 = *(v10 + 48);
  v44 = MEMORY[0x1E69D7880];
  v45 = MEMORY[0x1E69E6720];
  v46 = v66;
  v47 = v63;
  sub_1D68AE904(v66, v63, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  sub_1D68AE904(v41, v47 + v43, &unk_1EDF3B690, v44, v45, sub_1D68A8C44);
  v48 = *(v42 + 48);
  if (v48(v47, 1, v13) != 1)
  {
    v51 = v62;
    sub_1D68AE904(v47, v62, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    if (v48(v47 + v43, 1, v13) != 1)
    {
      v53 = v60;
      v58(v60, v47 + v43, v13);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880], MEMORY[0x1E69D7888]);
      v50 = sub_1D7261FBC();
      v54 = *(v65 + 8);
      v54(v53, v13);
      v55 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v64, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v66, &unk_1EDF3B690, v55);
      v54(v51, v13);
      sub_1D68AF29C(v47, &unk_1EDF3B690, v55);
      return v50 & 1;
    }

    v52 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v64, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    sub_1D68AF29C(v66, &unk_1EDF3B690, v52);
    (*(v65 + 8))(v51, v13);
    goto LABEL_17;
  }

  v49 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v41, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  sub_1D68AF29C(v46, &unk_1EDF3B690, v49);
  if (v48(v47 + v43, 1, v13) != 1)
  {
LABEL_17:
    sub_1D5D511FC(v47, sub_1D68ACC0C);
    v50 = 0;
    return v50 & 1;
  }

  sub_1D68AF29C(v47, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v50 = 1;
  return v50 & 1;
}

uint64_t sub_1D689BCA4(uint64_t a1, uint64_t a2, char a3, int a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v62 = a5;
  v63 = a6;
  v65 = a4;
  sub_1D68ACC0C(0);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9, v11);
  v69 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D725D38C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v59 - v20;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v68 = &v59 - v28;
  v31 = MEMORY[0x1EEE9AC00](v29, v30);
  v33 = &v59 - v32;
  v61 = v17;
  if (a3)
  {
    v34 = v10;
    if (a3 == 1)
    {
      *v21 = a1 & 1;
      v35 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v21 = a1;
      v35 = MEMORY[0x1E69D7858];
    }

    (*(v14 + 104))(v21, *v35, v13, v31);
  }

  else
  {
    v36 = a2;
    v34 = v10;
    *v21 = a1;
    *(v21 + 1) = v36;
    (*(v14 + 104))(v21, *MEMORY[0x1E69D7870], v13, v31);
  }

  v64 = v25;
  v60 = *(v14 + 32);
  v60(v33, v21, v13);
  v37 = *(v14 + 56);
  v67 = v33;
  v38 = v37(v33, 0, 1, v13);
  v70 = v65;
  v66 = v14;
  if (v65 == 3)
  {
    v39 = v68;
    v40 = v68;
    v41 = 1;
  }

  else
  {
    v62(v38);
    v39 = v68;
    sub_1D725DE0C();
    v40 = v39;
    v41 = 0;
  }

  v37(v40, v41, 1, v13);
  v42 = *(v34 + 48);
  v43 = MEMORY[0x1E69D7880];
  v44 = MEMORY[0x1E69E6720];
  v45 = v67;
  v46 = v69;
  sub_1D68AE904(v67, v69, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  sub_1D68AE904(v39, v46 + v42, &unk_1EDF3B690, v43, v44, sub_1D68A8C44);
  v47 = v66;
  v48 = *(v66 + 48);
  if (v48(v46, 1, v13) != 1)
  {
    v52 = v64;
    sub_1D68AE904(v46, v64, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    if (v48(v46 + v42, 1, v13) != 1)
    {
      v54 = v61;
      v60(v61, (v46 + v42), v13);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880], MEMORY[0x1E69D7888]);
      v55 = v46;
      v51 = sub_1D7261FBC();
      v56 = *(v47 + 8);
      v56(v54, v13);
      v57 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v68, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v67, &unk_1EDF3B690, v57);
      v56(v52, v13);
      sub_1D68AF29C(v55, &unk_1EDF3B690, v57);
      return v51 & 1;
    }

    v53 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v68, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    v50 = v69;
    sub_1D68AF29C(v67, &unk_1EDF3B690, v53);
    (*(v47 + 8))(v52, v13);
    goto LABEL_15;
  }

  v49 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v39, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v50 = v69;
  sub_1D68AF29C(v45, &unk_1EDF3B690, v49);
  if (v48(v50 + v42, 1, v13) != 1)
  {
LABEL_15:
    sub_1D5D511FC(v50, sub_1D68ACC0C);
    v51 = 0;
    return v51 & 1;
  }

  sub_1D68AF29C(v50, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v51 = 1;
  return v51 & 1;
}

uint64_t sub_1D689C308(uint64_t a1, uint64_t a2, char a3, int a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v62 = a5;
  v63 = a6;
  v65 = a4;
  sub_1D68ACC0C(0);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9, v11);
  v69 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D725D38C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v59 - v20;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v68 = &v59 - v28;
  v31 = MEMORY[0x1EEE9AC00](v29, v30);
  v33 = &v59 - v32;
  v61 = v17;
  if (a3)
  {
    v34 = v10;
    if (a3 == 1)
    {
      *v21 = a1 & 1;
      v35 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v21 = a1;
      v35 = MEMORY[0x1E69D7858];
    }

    (*(v14 + 104))(v21, *v35, v13, v31);
  }

  else
  {
    v36 = a2;
    v34 = v10;
    *v21 = a1;
    *(v21 + 1) = v36;
    (*(v14 + 104))(v21, *MEMORY[0x1E69D7870], v13, v31);
  }

  v64 = v25;
  v60 = *(v14 + 32);
  v60(v33, v21, v13);
  v37 = *(v14 + 56);
  v67 = v33;
  v38 = v37(v33, 0, 1, v13);
  v70 = v65;
  v66 = v14;
  if (v65 == 4)
  {
    v39 = v68;
    v40 = v68;
    v41 = 1;
  }

  else
  {
    v62(v38);
    v39 = v68;
    sub_1D725DE0C();
    v40 = v39;
    v41 = 0;
  }

  v37(v40, v41, 1, v13);
  v42 = *(v34 + 48);
  v43 = MEMORY[0x1E69D7880];
  v44 = MEMORY[0x1E69E6720];
  v45 = v67;
  v46 = v69;
  sub_1D68AE904(v67, v69, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  sub_1D68AE904(v39, v46 + v42, &unk_1EDF3B690, v43, v44, sub_1D68A8C44);
  v47 = v66;
  v48 = *(v66 + 48);
  if (v48(v46, 1, v13) != 1)
  {
    v52 = v64;
    sub_1D68AE904(v46, v64, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    if (v48(v46 + v42, 1, v13) != 1)
    {
      v54 = v61;
      v60(v61, (v46 + v42), v13);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880], MEMORY[0x1E69D7888]);
      v55 = v46;
      v51 = sub_1D7261FBC();
      v56 = *(v47 + 8);
      v56(v54, v13);
      v57 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v68, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v67, &unk_1EDF3B690, v57);
      v56(v52, v13);
      sub_1D68AF29C(v55, &unk_1EDF3B690, v57);
      return v51 & 1;
    }

    v53 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v68, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    v50 = v69;
    sub_1D68AF29C(v67, &unk_1EDF3B690, v53);
    (*(v47 + 8))(v52, v13);
    goto LABEL_15;
  }

  v49 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v39, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v50 = v69;
  sub_1D68AF29C(v45, &unk_1EDF3B690, v49);
  if (v48(v50 + v42, 1, v13) != 1)
  {
LABEL_15:
    sub_1D5D511FC(v50, sub_1D68ACC0C);
    v51 = 0;
    return v51 & 1;
  }

  sub_1D68AF29C(v50, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v51 = 1;
  return v51 & 1;
}

double sub_1D689C96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  type metadata accessor for FeedHeadline(0);
  sub_1D68AD6BC();
  sub_1D5B80300();

  sub_1D725D94C();

  return result;
}

double sub_1D689CA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  type metadata accessor for FeedHeadlineAudioCommandContext(0);
  sub_1D68ADCBC();
  sub_1D5B82160();

  sub_1D725D94C();

  return result;
}

double sub_1D689CB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  sub_1D68AE534();
  sub_1D5B8D474();

  sub_1D725D94C();

  return result;
}

double sub_1D689CC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  sub_1D68AE3D8();
  sub_1D5B90AC0();

  sub_1D725D94C();

  return result;
}

double sub_1D689CD5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  sub_1D68AE2E8();
  sub_1D5B81000();

  sub_1D725D94C();

  return result;
}

double sub_1D689CE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  sub_1D68AE144();
  sub_1D5B840B4();

  sub_1D725D94C();

  return result;
}

double sub_1D689CF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  type metadata accessor for LiveActivityCommandContext(0);
  sub_1D68AF1FC();
  sub_1D5B662E0();

  sub_1D725D94C();

  return result;
}

double sub_1D689D04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  type metadata accessor for FeedHeadline(0);
  sub_1D68AD6BC();
  sub_1D5B80300();

  sub_1D725D94C();

  return result;
}

double sub_1D689D14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  type metadata accessor for FeedHeadlineAudioCommandContext(0);
  sub_1D68ADCBC();
  sub_1D5B82160();

  sub_1D725D94C();

  return result;
}

double sub_1D689D24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, ValueMetadata *, void, void, void, __n128, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;

  (a9)(a5, a6, a8, v15, &type metadata for FeedPuzzle, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E69D8888], ObjectType, a2);

  return result;
}

double sub_1D689D33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  sub_1D68AE534();
  sub_1D5B8D474();

  sub_1D725D94C();

  return result;
}

double sub_1D689D434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  sub_1D68AE3D8();
  sub_1D5B90AC0();

  sub_1D725D94C();

  return result;
}

double sub_1D689D52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  sub_1D68AE2E8();
  sub_1D5B81000();

  sub_1D725D94C();

  return result;
}

double sub_1D689D624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  sub_1D68AE144();
  sub_1D5B840B4();

  sub_1D725D94C();

  return result;
}

double sub_1D689D71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  type metadata accessor for LiveActivityCommandContext(0);
  sub_1D68AF1FC();
  sub_1D5B662E0();

  sub_1D725D94C();

  return result;
}

uint64_t sub_1D689D81C(uint64_t a1, __int16 a2, void (*a3)(uint64_t *), __n128 a4)
{
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = (&v17 - v9);
  if ((a2 & 0x100) != 0)
  {
    v15 = sub_1D725D38C();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  }

  else
  {
    if (a2)
    {
      v11 = 0;
    }

    else
    {
      v11 = a1;
    }

    *v10 = v11;
    v12 = *MEMORY[0x1E69D7868];
    v13 = sub_1D725D38C();
    v14 = *(v13 - 8);
    (*(v14 + 104))(v10, v12, v13);
    (*(v14 + 56))(v10, 0, 1, v13);
  }

  a3(v10);
  return sub_1D68AF29C(v10, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
}

uint64_t sub_1D689D9E8(uint64_t a1, unsigned __int8 a2, void (*a3)(void *), __n128 a4)
{
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = (&v16 - v9);
  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      v14 = sub_1D725D38C();
      (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
      goto LABEL_7;
    }

    *v10 = 0;
  }

  else
  {
    *v10 = a1;
  }

  v11 = *MEMORY[0x1E69D7868];
  v12 = sub_1D725D38C();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v10, v11, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
LABEL_7:
  a3(v10);
  return sub_1D68AF29C(v10, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
}

uint64_t sub_1D689DBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void), uint64_t a9, uint64_t (*a10)(uint64_t))
{
  v59 = a6;
  v60 = a2;
  v61 = a5;
  v57 = a4;
  v62 = a3;
  sub_1D68ACC0C(0);
  v63 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D725D38C();
  v64 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v56 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v55 - v21;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v58 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v55 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v55 - v32;
  v67 = a7;
  swift_getObjectType();
  sub_1D5B5534C(0, &qword_1EDF3C770, &protocolRef_FCTagProviding);
  a8();
  v59 = a9;
  sub_1D725D96C();
  if (v61)
  {
    if (v61 == 1)
    {
      *v22 = v62 & 1;
      v34 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v22 = v62;
      v34 = MEMORY[0x1E69D7858];
    }

    v36 = v64;
    (*(v64 + 104))(v22, *v34, v16);
  }

  else
  {
    v35 = v57;
    *v22 = v62;
    *(v22 + 1) = v35;
    v36 = v64;
    (*(v64 + 104))(v22, *MEMORY[0x1E69D7870], v16);
  }

  v37 = v63;
  v63 = *(v36 + 32);
  (v63)(v33, v22, v16);
  v38 = *(v36 + 56);
  v39 = v38(v33, 0, 1, v16);
  v65 = v66;
  if (v66 == 2)
  {
    v40 = v29;
    v41 = 1;
  }

  else
  {
    a10(v39);
    sub_1D725DE0C();
    v40 = v29;
    v41 = 0;
  }

  v38(v40, v41, 1, v16);
  v42 = v37[12];
  v43 = MEMORY[0x1E69D7880];
  v44 = MEMORY[0x1E69E6720];
  sub_1D68AE904(v33, v15, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  sub_1D68AE904(v29, &v15[v42], &unk_1EDF3B690, v43, v44, sub_1D68A8C44);
  v45 = *(v64 + 48);
  if (v45(v15, 1, v16) != 1)
  {
    v48 = v58;
    sub_1D68AE904(v15, v58, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    if (v45(&v15[v42], 1, v16) != 1)
    {
      v50 = v56;
      (v63)(v56, &v15[v42], v16);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880], MEMORY[0x1E69D7888]);
      v51 = v48;
      v47 = sub_1D7261FBC();
      v52 = *(v64 + 8);
      v52(v50, v16);
      v53 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v29, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v33, &unk_1EDF3B690, v53);
      v52(v51, v16);
      sub_1D68AF29C(v15, &unk_1EDF3B690, v53);
      return v47 & 1;
    }

    v49 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v29, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    sub_1D68AF29C(v33, &unk_1EDF3B690, v49);
    (*(v64 + 8))(v48, v16);
    goto LABEL_15;
  }

  v46 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v29, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  sub_1D68AF29C(v33, &unk_1EDF3B690, v46);
  if (v45(&v15[v42], 1, v16) != 1)
  {
LABEL_15:
    sub_1D5D511FC(v15, sub_1D68ACC0C);
    v47 = 0;
    return v47 & 1;
  }

  sub_1D68AF29C(v15, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v47 = 1;
  return v47 & 1;
}

uint64_t sub_1D689E278(uint64_t a1, double (*a2)(char *, char *, uint64_t), char *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, __int16 a8)
{
  LODWORD(v60) = a5;
  v63 = a3;
  v59 = a2;
  sub_1D68ACC0C(0);
  v61 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v65 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D725D38C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v58 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v57 - v20;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v64 = &v57 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v57 - v31;
  v68 = a7;
  v69 = a8;
  swift_getObjectType();
  sub_1D5B61274();
  sub_1D725D96C();
  if (v60)
  {
    if (v60 == 1)
    {
      *v21 = v63 & 1;
      v33 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v21 = v63;
      v33 = MEMORY[0x1E69D7858];
    }

    (*(v15 + 104))(v21, *v33, v14);
  }

  else
  {
    *v21 = v63;
    *(v21 + 1) = a4;
    (*(v15 + 104))(v21, *MEMORY[0x1E69D7870], v14);
  }

  v34 = v64;
  v59 = *(v15 + 32);
  v60 = v25;
  v59(v32, v21, v14);
  v35 = *(v15 + 56);
  v63 = v32;
  v35(v32, 0, 1, v14);
  v66 = v67;
  v62 = v15;
  if (v67 == 2)
  {
    v36 = v34;
    v37 = 1;
  }

  else
  {
    sub_1D68ACF0C();
    sub_1D725DE0C();
    v36 = v34;
    v37 = 0;
  }

  v35(v36, v37, 1, v14);
  v38 = v34;
  v39 = v14;
  v40 = *(v61 + 48);
  v41 = MEMORY[0x1E69D7880];
  v42 = MEMORY[0x1E69E6720];
  v43 = v63;
  v44 = v65;
  sub_1D68AE904(v63, v65, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  sub_1D68AE904(v34, v44 + v40, &unk_1EDF3B690, v41, v42, sub_1D68A8C44);
  v45 = v62;
  v46 = *(v62 + 48);
  if (v46(v44, 1, v39) != 1)
  {
    v50 = v60;
    sub_1D68AE904(v44, v60, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    if (v46(v44 + v40, 1, v39) != 1)
    {
      v52 = v58;
      v59(v58, (v44 + v40), v39);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880], MEMORY[0x1E69D7888]);
      v53 = v44;
      v49 = sub_1D7261FBC();
      v54 = *(v45 + 8);
      v54(v52, v39);
      v55 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v64, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v63, &unk_1EDF3B690, v55);
      v54(v50, v39);
      sub_1D68AF29C(v53, &unk_1EDF3B690, v55);
      return v49 & 1;
    }

    v51 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v64, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    v48 = v65;
    sub_1D68AF29C(v63, &unk_1EDF3B690, v51);
    (*(v45 + 8))(v50, v39);
    goto LABEL_15;
  }

  v47 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v38, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v48 = v65;
  sub_1D68AF29C(v43, &unk_1EDF3B690, v47);
  if (v46(v48 + v40, 1, v39) != 1)
  {
LABEL_15:
    sub_1D5D511FC(v48, sub_1D68ACC0C);
    v49 = 0;
    return v49 & 1;
  }

  sub_1D68AF29C(v48, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v49 = 1;
  return v49 & 1;
}

uint64_t sub_1D689E92C(uint64_t a1, double (*a2)(char *, char *, uint64_t), char *a3, void *a4, int a5, uint64_t a6, uint64_t a7)
{
  LODWORD(v61) = a5;
  v59 = a4;
  v60 = a2;
  v62 = a3;
  sub_1D68ACC0C(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v64 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D725D38C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v58 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v57 - v17;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v65 = (&v57 - v25);
  MEMORY[0x1EEE9AC00](v26, v27);
  v66 = &v57 - v28;
  swift_getObjectType();
  type metadata accessor for FeedHeadline(0);
  sub_1D5B80300();
  sub_1D725D96C();
  v63 = v8;
  if (v61)
  {
    if (v61 == 1)
    {
      *v18 = v62 & 1;
      v29 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v18 = v62;
      v29 = MEMORY[0x1E69D7858];
    }

    v31 = v12[13];
    (v31)(v18, *v29, v11);
  }

  else
  {
    v30 = v59;
    *v18 = v62;
    *(v18 + 1) = v30;
    v31 = v12[13];
    (v31)(v18, *MEMORY[0x1E69D7870], v11);
  }

  v32 = v12;
  v33 = v66;
  v62 = v22;
  v34 = v32[4];
  v59 = v32 + 4;
  v60 = v34;
  v34(v66, v18, v11);
  v35 = v32[7];
  v36 = 1;
  v35(v33, 0, 1, v11);
  if ((v69 & 1) == 0)
  {
    v37 = v67;
    if (v68)
    {
      v37 = 0.0;
    }

    *v65 = v37;
    v31();
    v36 = 0;
  }

  v38 = v11;
  v39 = v65;
  v35(v65, v36, 1, v38);
  v40 = v64;
  v41 = *(v63 + 48);
  v42 = MEMORY[0x1E69D7880];
  v43 = MEMORY[0x1E69E6720];
  v44 = v66;
  sub_1D68AE904(v66, v64, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  v63 = v41;
  sub_1D68AE904(v39, v40 + v41, &unk_1EDF3B690, v42, v43, sub_1D68A8C44);
  v61 = v32;
  v45 = v32[6];
  if (v45(v40, 1, v38) != 1)
  {
    v49 = v62;
    sub_1D68AE904(v40, v62, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    v50 = v63;
    if (v45(v40 + v63, 1, v38) != 1)
    {
      v52 = v58;
      v60(v58, (v40 + v50), v38);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880], MEMORY[0x1E69D7888]);
      v53 = v40;
      v48 = sub_1D7261FBC();
      v54 = v61[1];
      v54(v52, v38);
      v55 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v65, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v66, &unk_1EDF3B690, v55);
      v54(v49, v38);
      sub_1D68AF29C(v53, &unk_1EDF3B690, v55);
      return v48 & 1;
    }

    v51 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v65, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    v47 = v64;
    sub_1D68AF29C(v66, &unk_1EDF3B690, v51);
    (v61[1])(v49, v38);
    goto LABEL_16;
  }

  v46 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v39, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v47 = v64;
  sub_1D68AF29C(v44, &unk_1EDF3B690, v46);
  if (v45(v47 + v63, 1, v38) != 1)
  {
LABEL_16:
    sub_1D5D511FC(v47, sub_1D68ACC0C);
    v48 = 0;
    return v48 & 1;
  }

  sub_1D68AF29C(v47, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v48 = 1;
  return v48 & 1;
}

uint64_t sub_1D689F00C(uint64_t a1, double (*a2)(char *, char *, uint64_t), char *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v54[1] = a7;
  v55 = a2;
  LODWORD(v56) = a5;
  v59 = a3;
  sub_1D68ACC0C(0);
  v57 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v61 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D725D38C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v54[0] = v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v54 - v17;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v60 = v54 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = v54 - v28;
  swift_getObjectType();
  type metadata accessor for FeedHeadlineAudioCommandContext(0);
  sub_1D5B82160();
  sub_1D725D96C();
  if (v56)
  {
    if (v56 == 1)
    {
      *v18 = v59 & 1;
      v30 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v18 = v59;
      v30 = MEMORY[0x1E69D7858];
    }

    (*(v12 + 104))(v18, *v30, v11);
  }

  else
  {
    *v18 = v59;
    *(v18 + 1) = a4;
    (*(v12 + 104))(v18, *MEMORY[0x1E69D7870], v11);
  }

  v31 = v60;
  v55 = *(v12 + 32);
  v56 = v22;
  v55(v29, v18, v11);
  v32 = *(v12 + 56);
  v59 = v29;
  v32(v29, 0, 1, v11);
  v62 = v63;
  v58 = v12;
  if (v63 == 4)
  {
    v33 = v31;
    v34 = 1;
  }

  else
  {
    sub_1D68ADC30();
    sub_1D725DE0C();
    v33 = v31;
    v34 = 0;
  }

  v32(v33, v34, 1, v11);
  v35 = v31;
  v36 = v11;
  v37 = *(v57 + 48);
  v38 = MEMORY[0x1E69D7880];
  v39 = MEMORY[0x1E69E6720];
  v40 = v59;
  v41 = v61;
  sub_1D68AE904(v59, v61, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  sub_1D68AE904(v31, v41 + v37, &unk_1EDF3B690, v38, v39, sub_1D68A8C44);
  v42 = v58;
  v43 = *(v58 + 48);
  if (v43(v41, 1, v36) != 1)
  {
    v47 = v56;
    sub_1D68AE904(v41, v56, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    if (v43(v41 + v37, 1, v36) != 1)
    {
      v49 = v54[0];
      v55(v54[0], (v41 + v37), v36);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880], MEMORY[0x1E69D7888]);
      v50 = v41;
      v46 = sub_1D7261FBC();
      v51 = *(v42 + 8);
      v51(v49, v36);
      v52 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v60, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v59, &unk_1EDF3B690, v52);
      v51(v47, v36);
      sub_1D68AF29C(v50, &unk_1EDF3B690, v52);
      return v46 & 1;
    }

    v48 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v60, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    v45 = v61;
    sub_1D68AF29C(v59, &unk_1EDF3B690, v48);
    (*(v42 + 8))(v47, v36);
    goto LABEL_15;
  }

  v44 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v35, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v45 = v61;
  sub_1D68AF29C(v40, &unk_1EDF3B690, v44);
  if (v43(v45 + v37, 1, v36) != 1)
  {
LABEL_15:
    sub_1D5D511FC(v45, sub_1D68ACC0C);
    v46 = 0;
    return v46 & 1;
  }

  sub_1D68AF29C(v45, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v46 = 1;
  return v46 & 1;
}

uint64_t sub_1D689F6B8(uint64_t a1, double (*a2)(char *, char *, uint64_t), char *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v62) = a5;
  v58 = a4;
  v63 = a3;
  v60 = a2;
  sub_1D68ACC0C(0);
  v61 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v65 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D725D38C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v57 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v56 - v20;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v64 = &v56 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v56 - v31;
  v67 = a7;
  v68 = a8;
  v69 = a9;
  swift_getObjectType();
  sub_1D725D96C();
  v59 = v25;
  if (v62)
  {
    if (v62 == 1)
    {
      *v21 = v63 & 1;
      v33 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v21 = v63;
      v33 = MEMORY[0x1E69D7858];
    }

    (*(v15 + 104))(v21, *v33, v14);
  }

  else
  {
    v34 = v58;
    *v21 = v63;
    *(v21 + 1) = v34;
    (*(v15 + 104))(v21, *MEMORY[0x1E69D7870], v14);
  }

  v35 = v64;
  v60 = *(v15 + 32);
  v60(v32, v21, v14);
  v62 = v15;
  v63 = v32;
  v36 = *(v15 + 56);
  v37 = 1;
  v36(v32, 0, 1, v14);
  if (v66 != 2)
  {
    sub_1D726284C();
    v37 = 0;
  }

  v36(v35, v37, 1, v14);
  v38 = *(v61 + 48);
  v39 = MEMORY[0x1E69D7880];
  v40 = MEMORY[0x1E69E6720];
  v41 = v35;
  v42 = v63;
  v43 = v65;
  sub_1D68AE904(v63, v65, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  sub_1D68AE904(v35, v43 + v38, &unk_1EDF3B690, v39, v40, sub_1D68A8C44);
  v44 = v62;
  v45 = *(v62 + 48);
  if (v45(v43, 1, v14) != 1)
  {
    v49 = v59;
    sub_1D68AE904(v43, v59, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    if (v45(v43 + v38, 1, v14) != 1)
    {
      v51 = v57;
      v60(v57, (v43 + v38), v14);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880], MEMORY[0x1E69D7888]);
      v52 = v43;
      v48 = sub_1D7261FBC();
      v53 = *(v44 + 8);
      v53(v51, v14);
      v54 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v64, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v63, &unk_1EDF3B690, v54);
      v53(v49, v14);
      sub_1D68AF29C(v52, &unk_1EDF3B690, v54);
      return v48 & 1;
    }

    v50 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v64, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    v47 = v65;
    sub_1D68AF29C(v63, &unk_1EDF3B690, v50);
    (*(v44 + 8))(v49, v14);
    goto LABEL_14;
  }

  v46 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v41, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v47 = v65;
  sub_1D68AF29C(v42, &unk_1EDF3B690, v46);
  if (v45(v47 + v38, 1, v14) != 1)
  {
LABEL_14:
    sub_1D5D511FC(v47, sub_1D68ACC0C);
    v48 = 0;
    return v48 & 1;
  }

  sub_1D68AF29C(v47, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v48 = 1;
  return v48 & 1;
}

uint64_t sub_1D689FD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, __int16 a8)
{
  v57 = a5;
  v55 = a4;
  v58 = a3;
  sub_1D68ACC0C(0);
  v59 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D725D38C();
  v60 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v54 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v54 - v19;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v56 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v54 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v54 - v30;
  v63 = a7;
  v64 = a8;
  swift_getObjectType();
  sub_1D68AFCB0(0, qword_1EDF2D128, &type metadata for SaveContent, type metadata accessor for SaveCommandContext);
  sub_1D5B66B90();
  sub_1D725D96C();
  if (v57)
  {
    if (v57 == 1)
    {
      *v20 = v58 & 1;
      v32 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v20 = v58;
      v32 = MEMORY[0x1E69D7858];
    }

    v34 = v60;
    (*(v60 + 104))(v20, *v32, v14);
  }

  else
  {
    v33 = v55;
    *v20 = v58;
    *(v20 + 1) = v33;
    v34 = v60;
    (*(v60 + 104))(v20, *MEMORY[0x1E69D7870], v14);
  }

  v35 = v59;
  v59 = *(v34 + 32);
  (v59)(v31, v20, v14);
  v36 = *(v34 + 56);
  v36(v31, 0, 1, v14);
  v61 = v62;
  if (v62 == 2)
  {
    v37 = v27;
    v38 = 1;
  }

  else
  {
    sub_1D68AF9C0();
    sub_1D725DE0C();
    v37 = v27;
    v38 = 0;
  }

  v36(v37, v38, 1, v14);
  v39 = v35[12];
  v40 = MEMORY[0x1E69D7880];
  v41 = MEMORY[0x1E69E6720];
  sub_1D68AE904(v31, v13, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  sub_1D68AE904(v27, &v13[v39], &unk_1EDF3B690, v40, v41, sub_1D68A8C44);
  v42 = v60;
  v43 = *(v60 + 48);
  if (v43(v13, 1, v14) != 1)
  {
    v46 = v56;
    sub_1D68AE904(v13, v56, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    if (v43(&v13[v39], 1, v14) != 1)
    {
      v49 = v54;
      (v59)(v54, &v13[v39], v14);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880], MEMORY[0x1E69D7888]);
      v50 = v46;
      v45 = sub_1D7261FBC();
      v51 = *(v42 + 8);
      v51(v49, v14);
      v52 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v27, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v31, &unk_1EDF3B690, v52);
      v51(v50, v14);
      sub_1D68AF29C(v13, &unk_1EDF3B690, v52);
      return v45 & 1;
    }

    v47 = v42;
    v48 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v27, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    sub_1D68AF29C(v31, &unk_1EDF3B690, v48);
    (*(v47 + 8))(v46, v14);
    goto LABEL_15;
  }

  v44 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v27, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  sub_1D68AF29C(v31, &unk_1EDF3B690, v44);
  if (v43(&v13[v39], 1, v14) != 1)
  {
LABEL_15:
    sub_1D5D511FC(v13, sub_1D68ACC0C);
    v45 = 0;
    return v45 & 1;
  }

  sub_1D68AF29C(v13, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v45 = 1;
  return v45 & 1;
}

uint64_t sub_1D68A0424(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, int a5, uint64_t a6, uint64_t a7)
{
  LODWORD(v56) = a5;
  v54 = a4;
  v57 = a3;
  sub_1D68ACC0C(0);
  v58 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D725D38C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v53 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v53 - v16;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v53 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v53 - v28;
  swift_getObjectType();
  sub_1D725D96C();
  v55 = v21;
  if (v56)
  {
    if (v56 == 1)
    {
      *v17 = v57 & 1;
      v30 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v17 = v57;
      v30 = MEMORY[0x1E69D7858];
    }

    (*(v11 + 104))(v17, *v30, v10);
  }

  else
  {
    v31 = v54;
    *v17 = v57;
    *(v17 + 1) = v31;
    (*(v11 + 104))(v17, *MEMORY[0x1E69D7870], v10);
  }

  v32 = v58;
  v56 = *(v11 + 32);
  v56(v29, v17, v10);
  v57 = v11;
  v58 = v29;
  v33 = *(v11 + 56);
  v34 = 1;
  v33(v29, 0, 1, v10);
  if (v60 != 2)
  {
    sub_1D726284C();
    v34 = 0;
  }

  v33(v25, v34, 1, v10);
  v35 = *(v32 + 48);
  v36 = MEMORY[0x1E69D7880];
  v37 = MEMORY[0x1E69E6720];
  v38 = v10;
  v40 = v58;
  v39 = v59;
  sub_1D68AE904(v58, v59, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  sub_1D68AE904(v25, v39 + v35, &unk_1EDF3B690, v36, v37, sub_1D68A8C44);
  v41 = v57;
  v42 = *(v57 + 48);
  if (v42(v39, 1, v38) != 1)
  {
    v54 = v25;
    v46 = v55;
    sub_1D68AE904(v39, v55, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    if (v42(v39 + v35, 1, v38) != 1)
    {
      v48 = v53;
      v56(v53, (v39 + v35), v38);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880], MEMORY[0x1E69D7888]);
      v49 = v39;
      v45 = sub_1D7261FBC();
      v50 = *(v41 + 8);
      v50(v48, v38);
      v51 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v54, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v58, &unk_1EDF3B690, v51);
      v50(v46, v38);
      sub_1D68AF29C(v49, &unk_1EDF3B690, v51);
      return v45 & 1;
    }

    v47 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v54, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    v44 = v59;
    sub_1D68AF29C(v58, &unk_1EDF3B690, v47);
    (*(v41 + 8))(v46, v38);
    goto LABEL_14;
  }

  v43 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v25, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v44 = v59;
  sub_1D68AF29C(v40, &unk_1EDF3B690, v43);
  if (v42(v44 + v35, 1, v38) != 1)
  {
LABEL_14:
    sub_1D5D511FC(v44, sub_1D68ACC0C);
    v45 = 0;
    return v45 & 1;
  }

  sub_1D68AF29C(v44, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v45 = 1;
  return v45 & 1;
}

uint64_t sub_1D68A0AA4(uint64_t a1, uint64_t a2, uint64_t a3, double (*a4)(void, void, void), int a5, uint64_t a6, uint64_t a7)
{
  LODWORD(v60) = a5;
  v55 = a4;
  v61 = a3;
  sub_1D68ACC0C(0);
  v57 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v58 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D725D38C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v53 - v17;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v56 = v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v59 = v53 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = v53 - v27;
  swift_getObjectType();
  sub_1D5B8D474();
  sub_1D725D96C();
  v54 = v14;
  if (v60)
  {
    if (v60 == 1)
    {
      *v18 = v61 & 1;
      v29 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v18 = v61;
      v29 = MEMORY[0x1E69D7858];
    }

    v31 = v11[13];
    v31(v18, *v29, v10);
  }

  else
  {
    v30 = v55;
    *v18 = v61;
    *(v18 + 1) = v30;
    v31 = v11[13];
    v31(v18, *MEMORY[0x1E69D7870], v10);
  }

  v32 = v59;
  v55 = v11[4];
  v53[1] = v11 + 4;
  v55(v28, v18, v10);
  v33 = v11[7];
  v34 = 1;
  v60 = v28;
  v33(v28, 0, 1, v10);
  v61 = v63;
  if (v63)
  {
    v35 = v61;
    *v32 = v62;
    *(v32 + 1) = v35;
    v31(v32, *MEMORY[0x1E69D7870], v10);
    v34 = 0;
  }

  v36 = v11;
  v33(v32, v34, 1, v10);
  v37 = v58;
  v38 = *(v57 + 48);
  v39 = MEMORY[0x1E69D7880];
  v40 = MEMORY[0x1E69E6720];
  v41 = v10;
  v42 = v60;
  sub_1D68AE904(v60, v58, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  v57 = v38;
  sub_1D68AE904(v32, v37 + v38, &unk_1EDF3B690, v39, v40, sub_1D68A8C44);
  v43 = v11[6];
  if (v43(v37, 1, v41) != 1)
  {
    v46 = v56;
    sub_1D68AE904(v37, v56, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    v47 = v57;
    if (v43(v37 + v57, 1, v41) != 1)
    {
      v49 = v54;
      v55(v54, v37 + v47, v41);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880], MEMORY[0x1E69D7888]);

      v45 = sub_1D7261FBC();
      v50 = v36[1];
      v50(v49, v41);
      v51 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v59, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v60, &unk_1EDF3B690, v51);

      v50(v46, v41);
      sub_1D68AF29C(v37, &unk_1EDF3B690, v51);
      return v45 & 1;
    }

    v48 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v59, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    sub_1D68AF29C(v60, &unk_1EDF3B690, v48);

    (v36[1])(v46, v41);
    goto LABEL_14;
  }

  v44 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v32, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  sub_1D68AF29C(v42, &unk_1EDF3B690, v44);

  if (v43(v37 + v57, 1, v41) != 1)
  {
LABEL_14:
    sub_1D5D511FC(v37, sub_1D68ACC0C);
    v45 = 0;
    return v45 & 1;
  }

  sub_1D68AF29C(v37, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v45 = 1;
  return v45 & 1;
}

uint64_t sub_1D68A118C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  LODWORD(v60) = a5;
  v58 = a4;
  v59 = a2;
  v61 = a3;
  sub_1D68ACC0C(0);
  v62 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v63 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D725D38C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v57 - v17;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v57 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v64 = &v57 - v29;
  swift_getObjectType();
  sub_1D5B90AC0();
  sub_1D725D96C();
  v57 = v14;
  if (v60)
  {
    if (v60 == 1)
    {
      *v18 = v61 & 1;
      v30 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v18 = v61;
      v30 = MEMORY[0x1E69D7858];
    }

    v32 = *(v11 + 104);
    v32(v18, *v30, v10);
  }

  else
  {
    v31 = v58;
    *v18 = v61;
    *(v18 + 1) = v31;
    v32 = *(v11 + 104);
    v32(v18, *MEMORY[0x1E69D7870], v10);
  }

  v33 = v64;
  v60 = *(v11 + 32);
  v61 = v22;
  v59 = v11 + 32;
  v60(v64, v18, v10);
  v34 = *(v11 + 56);
  v35 = v33;
  v36 = 1;
  v34(v35, 0, 1, v10);
  if ((v66 & 1) == 0)
  {
    *v26 = v65;
    v32(v26, *MEMORY[0x1E69D7858], v10);
    v36 = 0;
  }

  v34(v26, v36, 1, v10);
  v37 = v63;
  v38 = *(v62 + 48);
  v39 = MEMORY[0x1E69D7880];
  v40 = MEMORY[0x1E69E6720];
  v41 = v10;
  v42 = v64;
  sub_1D68AE904(v64, v63, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  v62 = v38;
  sub_1D68AE904(v26, v37 + v38, &unk_1EDF3B690, v39, v40, sub_1D68A8C44);
  v43 = *(v11 + 48);
  if (v43(v37, 1, v41) != 1)
  {
    v47 = v61;
    sub_1D68AE904(v37, v61, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    v48 = v62;
    if (v43(v37 + v62, 1, v41) != 1)
    {
      v50 = (v37 + v48);
      v51 = v57;
      v60(v57, v50, v41);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880], MEMORY[0x1E69D7888]);
      v52 = v11;
      v53 = v37;
      v46 = sub_1D7261FBC();
      v54 = *(v52 + 8);
      v54(v51, v41);
      v55 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v26, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v64, &unk_1EDF3B690, v55);
      v54(v47, v41);
      sub_1D68AF29C(v53, &unk_1EDF3B690, v55);
      return v46 & 1;
    }

    v49 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v26, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    v45 = v63;
    sub_1D68AF29C(v64, &unk_1EDF3B690, v49);
    (*(v11 + 8))(v47, v41);
    goto LABEL_14;
  }

  v44 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v26, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v45 = v63;
  sub_1D68AF29C(v42, &unk_1EDF3B690, v44);
  if (v43(v45 + v62, 1, v41) != 1)
  {
LABEL_14:
    sub_1D5D511FC(v45, sub_1D68ACC0C);
    v46 = 0;
    return v46 & 1;
  }

  sub_1D68AF29C(v45, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v46 = 1;
  return v46 & 1;
}

uint64_t sub_1D68A1838(uint64_t a1, double (*a2)(char *, char *, uint64_t), char *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  LODWORD(v57) = a5;
  v60 = a3;
  v56 = a2;
  sub_1D68ACC0C(0);
  v58 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v62 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D725D38C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v55 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v54 - v17;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v61 = &v54 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v54 - v28;
  swift_getObjectType();
  sub_1D5B81000();
  sub_1D725D96C();
  if (v57)
  {
    if (v57 == 1)
    {
      *v18 = v60 & 1;
      v30 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v18 = v60;
      v30 = MEMORY[0x1E69D7858];
    }

    (*(v12 + 104))(v18, *v30, v11);
  }

  else
  {
    *v18 = v60;
    *(v18 + 1) = a4;
    (*(v12 + 104))(v18, *MEMORY[0x1E69D7870], v11);
  }

  v31 = v61;
  v56 = *(v12 + 32);
  v57 = v22;
  v56(v29, v18, v11);
  v32 = *(v12 + 56);
  v60 = v29;
  v32(v29, 0, 1, v11);
  v63 = v64;
  v59 = v12;
  if (v64 == 3)
  {
    v33 = v31;
    v34 = 1;
  }

  else
  {
    sub_1D68AE25C();
    sub_1D725DE0C();
    v33 = v31;
    v34 = 0;
  }

  v32(v33, v34, 1, v11);
  v35 = v31;
  v36 = v11;
  v37 = *(v58 + 48);
  v38 = MEMORY[0x1E69D7880];
  v39 = MEMORY[0x1E69E6720];
  v40 = v60;
  v41 = v62;
  sub_1D68AE904(v60, v62, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  sub_1D68AE904(v31, v41 + v37, &unk_1EDF3B690, v38, v39, sub_1D68A8C44);
  v42 = v59;
  v43 = *(v59 + 48);
  if (v43(v41, 1, v36) != 1)
  {
    v47 = v57;
    sub_1D68AE904(v41, v57, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    if (v43(v41 + v37, 1, v36) != 1)
    {
      v49 = v55;
      v56(v55, (v41 + v37), v36);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880], MEMORY[0x1E69D7888]);
      v50 = v41;
      v46 = sub_1D7261FBC();
      v51 = *(v42 + 8);
      v51(v49, v36);
      v52 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v61, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v60, &unk_1EDF3B690, v52);
      v51(v47, v36);
      sub_1D68AF29C(v50, &unk_1EDF3B690, v52);
      return v46 & 1;
    }

    v48 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v61, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    v45 = v62;
    sub_1D68AF29C(v60, &unk_1EDF3B690, v48);
    (*(v42 + 8))(v47, v36);
    goto LABEL_15;
  }

  v44 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v35, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v45 = v62;
  sub_1D68AF29C(v40, &unk_1EDF3B690, v44);
  if (v43(v45 + v37, 1, v36) != 1)
  {
LABEL_15:
    sub_1D5D511FC(v45, sub_1D68ACC0C);
    v46 = 0;
    return v46 & 1;
  }

  sub_1D68AF29C(v45, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v46 = 1;
  return v46 & 1;
}

uint64_t sub_1D68A1EE0(uint64_t a1, double (*a2)(char *, char *, uint64_t), uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  LODWORD(v61) = a5;
  v64 = a3;
  v60 = a2;
  sub_1D68ACC0C(0);
  v62 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v65 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D725D38C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v57 - v18;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v63 = &v57 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v66 = &v57 - v29;
  swift_getObjectType();
  sub_1D5B840B4();
  sub_1D725D96C();
  v58 = v15;
  if (v61)
  {
    if (v61 == 1)
    {
      *v19 = v64 & 1;
      v30 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v19 = v64;
      v30 = MEMORY[0x1E69D7858];
    }

    v31 = *(v12 + 104);
    v31(v19, *v30, v11);
  }

  else
  {
    *v19 = v64;
    *(v19 + 1) = a4;
    v31 = *(v12 + 104);
    v31(v19, *MEMORY[0x1E69D7870], v11);
  }

  v32 = v12;
  v33 = v66;
  v60 = *(v32 + 32);
  v61 = v32 + 32;
  v60(v66, v19, v11);
  v64 = v32;
  v34 = *(v32 + 56);
  v35 = 1;
  v34(v33, 0, 1, v11);
  v59 = v23;
  if (v68 > 1u)
  {
    v36 = v63;
    v37 = v64;
    if (v68 != 2)
    {
      goto LABEL_12;
    }

    *v63 = 0;
  }

  else
  {
    v36 = v63;
    v37 = v64;
    *v63 = v67;
  }

  v31(v36, *MEMORY[0x1E69D7868], v11);
  v35 = 0;
LABEL_12:
  v34(v36, v35, 1, v11);
  v38 = *(v62 + 48);
  v39 = MEMORY[0x1E69D7880];
  v40 = MEMORY[0x1E69E6720];
  v41 = v11;
  v42 = v65;
  v43 = v66;
  sub_1D68AE904(v66, v65, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  sub_1D68AE904(v36, v42 + v38, &unk_1EDF3B690, v39, v40, sub_1D68A8C44);
  v44 = *(v37 + 48);
  if (v44(v42, 1, v41) != 1)
  {
    v48 = v59;
    sub_1D68AE904(v42, v59, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    v49 = v41;
    if (v44(v42 + v38, 1, v41) != 1)
    {
      v51 = v58;
      v60(v58, (v42 + v38), v41);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880], MEMORY[0x1E69D7888]);
      v52 = v48;
      v53 = v42;
      v47 = sub_1D7261FBC();
      v54 = *(v64 + 8);
      v54(v51, v49);
      v55 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v63, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v66, &unk_1EDF3B690, v55);
      v54(v52, v49);
      sub_1D68AF29C(v53, &unk_1EDF3B690, v55);
      return v47 & 1;
    }

    v50 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v63, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    v46 = v65;
    sub_1D68AF29C(v66, &unk_1EDF3B690, v50);
    (*(v64 + 8))(v48, v41);
    goto LABEL_17;
  }

  v45 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v36, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v46 = v65;
  sub_1D68AF29C(v43, &unk_1EDF3B690, v45);
  if (v44(v46 + v38, 1, v41) != 1)
  {
LABEL_17:
    sub_1D5D511FC(v46, sub_1D68ACC0C);
    v47 = 0;
    return v47 & 1;
  }

  sub_1D68AF29C(v46, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v47 = 1;
  return v47 & 1;
}

uint64_t sub_1D68A25AC(uint64_t a1, double (*a2)(char *, char *, uint64_t), char *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v54[1] = a7;
  v55 = a2;
  LODWORD(v56) = a5;
  v59 = a3;
  sub_1D68ACC0C(0);
  v57 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v61 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D725D38C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v54[0] = v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v54 - v17;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v60 = v54 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = v54 - v28;
  swift_getObjectType();
  type metadata accessor for LiveActivityCommandContext(0);
  sub_1D5B662E0();
  sub_1D725D96C();
  if (v56)
  {
    if (v56 == 1)
    {
      *v18 = v59 & 1;
      v30 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v18 = v59;
      v30 = MEMORY[0x1E69D7858];
    }

    (*(v12 + 104))(v18, *v30, v11);
  }

  else
  {
    *v18 = v59;
    *(v18 + 1) = a4;
    (*(v12 + 104))(v18, *MEMORY[0x1E69D7870], v11);
  }

  v31 = v60;
  v55 = *(v12 + 32);
  v56 = v22;
  v55(v29, v18, v11);
  v32 = *(v12 + 56);
  v59 = v29;
  v32(v29, 0, 1, v11);
  v62 = v63;
  v58 = v12;
  if (v63 == 3)
  {
    v33 = v31;
    v34 = 1;
  }

  else
  {
    sub_1D68AF170();
    sub_1D725DE0C();
    v33 = v31;
    v34 = 0;
  }

  v32(v33, v34, 1, v11);
  v35 = v31;
  v36 = v11;
  v37 = *(v57 + 48);
  v38 = MEMORY[0x1E69D7880];
  v39 = MEMORY[0x1E69E6720];
  v40 = v59;
  v41 = v61;
  sub_1D68AE904(v59, v61, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  sub_1D68AE904(v31, v41 + v37, &unk_1EDF3B690, v38, v39, sub_1D68A8C44);
  v42 = v58;
  v43 = *(v58 + 48);
  if (v43(v41, 1, v36) != 1)
  {
    v47 = v56;
    sub_1D68AE904(v41, v56, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    if (v43(v41 + v37, 1, v36) != 1)
    {
      v49 = v54[0];
      v55(v54[0], (v41 + v37), v36);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880], MEMORY[0x1E69D7888]);
      v50 = v41;
      v46 = sub_1D7261FBC();
      v51 = *(v42 + 8);
      v51(v49, v36);
      v52 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v60, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v59, &unk_1EDF3B690, v52);
      v51(v47, v36);
      sub_1D68AF29C(v50, &unk_1EDF3B690, v52);
      return v46 & 1;
    }

    v48 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v60, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    v45 = v61;
    sub_1D68AF29C(v59, &unk_1EDF3B690, v48);
    (*(v42 + 8))(v47, v36);
    goto LABEL_15;
  }

  v44 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v35, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v45 = v61;
  sub_1D68AF29C(v40, &unk_1EDF3B690, v44);
  if (v43(v45 + v37, 1, v36) != 1)
  {
LABEL_15:
    sub_1D5D511FC(v45, sub_1D68ACC0C);
    v46 = 0;
    return v46 & 1;
  }

  sub_1D68AF29C(v45, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v46 = 1;
  return v46 & 1;
}

uint64_t sub_1D68A2C58(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, int a5, uint64_t a6, char a7)
{
  LODWORD(v58) = a5;
  v61 = a3;
  sub_1D68ACC0C(0);
  v59 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v63 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D725D38C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v57 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v55 - v18;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v62 = &v55 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v55 - v29;
  v66 = a7 & 1;
  swift_getObjectType();
  sub_1D5B84108();
  sub_1D725D96C();
  if (v58)
  {
    if (v58 == 1)
    {
      *v19 = v61 & 1;
      v31 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v19 = v61;
      v31 = MEMORY[0x1E69D7858];
    }

    (*(v13 + 104))(v19, *v31, v12);
  }

  else
  {
    *v19 = v61;
    *(v19 + 1) = a4;
    (*(v13 + 104))(v19, *MEMORY[0x1E69D7870], v12);
  }

  v32 = v62;
  v58 = v23;
  v56 = *(v13 + 32);
  v56(v30, v19, v12);
  v33 = *(v13 + 56);
  v61 = v30;
  v33(v30, 0, 1, v12);
  v64 = v65;
  v60 = v13;
  if (v65 == 2)
  {
    v34 = v32;
    v35 = 1;
  }

  else
  {
    sub_1D68AF620();
    sub_1D725DE0C();
    v34 = v32;
    v35 = 0;
  }

  v33(v34, v35, 1, v12);
  v36 = v32;
  v37 = v12;
  v38 = *(v59 + 48);
  v39 = MEMORY[0x1E69D7880];
  v40 = MEMORY[0x1E69E6720];
  v41 = v61;
  v42 = v63;
  sub_1D68AE904(v61, v63, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  sub_1D68AE904(v32, v42 + v38, &unk_1EDF3B690, v39, v40, sub_1D68A8C44);
  v43 = v60;
  v44 = *(v60 + 48);
  if (v44(v42, 1, v37) != 1)
  {
    v48 = v58;
    sub_1D68AE904(v42, v58, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    if (v44(v42 + v38, 1, v37) != 1)
    {
      v50 = v57;
      v56(v57, (v42 + v38), v37);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880], MEMORY[0x1E69D7888]);
      v51 = v42;
      v47 = sub_1D7261FBC();
      v52 = *(v43 + 8);
      v52(v50, v37);
      v53 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v62, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v61, &unk_1EDF3B690, v53);
      v52(v48, v37);
      sub_1D68AF29C(v51, &unk_1EDF3B690, v53);
      return v47 & 1;
    }

    v49 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v62, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    v46 = v63;
    sub_1D68AF29C(v61, &unk_1EDF3B690, v49);
    (*(v43 + 8))(v48, v37);
    goto LABEL_15;
  }

  v45 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v36, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v46 = v63;
  sub_1D68AF29C(v41, &unk_1EDF3B690, v45);
  if (v44(v46 + v38, 1, v37) != 1)
  {
LABEL_15:
    sub_1D5D511FC(v46, sub_1D68ACC0C);
    v47 = 0;
    return v47 & 1;
  }

  sub_1D68AF29C(v46, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v47 = 1;
  return v47 & 1;
}

uint64_t sub_1D68A3310(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, int a5, uint64_t a6, char a7)
{
  LODWORD(v58) = a5;
  v61 = a3;
  sub_1D68ACC0C(0);
  v59 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v63 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D725D38C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v57 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v55 - v18;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v62 = &v55 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v55 - v29;
  v66 = a7 & 1;
  swift_getObjectType();
  sub_1D5B8D5CC();
  sub_1D725D96C();
  if (v58)
  {
    if (v58 == 1)
    {
      *v19 = v61 & 1;
      v31 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v19 = v61;
      v31 = MEMORY[0x1E69D7858];
    }

    (*(v13 + 104))(v19, *v31, v12);
  }

  else
  {
    *v19 = v61;
    *(v19 + 1) = a4;
    (*(v13 + 104))(v19, *MEMORY[0x1E69D7870], v12);
  }

  v32 = v62;
  v58 = v23;
  v56 = *(v13 + 32);
  v56(v30, v19, v12);
  v33 = *(v13 + 56);
  v61 = v30;
  v33(v30, 0, 1, v12);
  v64 = v65;
  v60 = v13;
  if (v65 == 4)
  {
    v34 = v32;
    v35 = 1;
  }

  else
  {
    sub_1D68AF4A4();
    sub_1D725DE0C();
    v34 = v32;
    v35 = 0;
  }

  v33(v34, v35, 1, v12);
  v36 = v32;
  v37 = v12;
  v38 = *(v59 + 48);
  v39 = MEMORY[0x1E69D7880];
  v40 = MEMORY[0x1E69E6720];
  v41 = v61;
  v42 = v63;
  sub_1D68AE904(v61, v63, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  sub_1D68AE904(v32, v42 + v38, &unk_1EDF3B690, v39, v40, sub_1D68A8C44);
  v43 = v60;
  v44 = *(v60 + 48);
  if (v44(v42, 1, v37) != 1)
  {
    v48 = v58;
    sub_1D68AE904(v42, v58, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    if (v44(v42 + v38, 1, v37) != 1)
    {
      v50 = v57;
      v56(v57, (v42 + v38), v37);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880], MEMORY[0x1E69D7888]);
      v51 = v42;
      v47 = sub_1D7261FBC();
      v52 = *(v43 + 8);
      v52(v50, v37);
      v53 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v62, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v61, &unk_1EDF3B690, v53);
      v52(v48, v37);
      sub_1D68AF29C(v51, &unk_1EDF3B690, v53);
      return v47 & 1;
    }

    v49 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v62, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    v46 = v63;
    sub_1D68AF29C(v61, &unk_1EDF3B690, v49);
    (*(v43 + 8))(v48, v37);
    goto LABEL_15;
  }

  v45 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v36, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v46 = v63;
  sub_1D68AF29C(v41, &unk_1EDF3B690, v45);
  if (v44(v46 + v38, 1, v37) != 1)
  {
LABEL_15:
    sub_1D5D511FC(v46, sub_1D68ACC0C);
    v47 = 0;
    return v47 & 1;
  }

  sub_1D68AF29C(v46, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v47 = 1;
  return v47 & 1;
}

uint64_t sub_1D68A39C8(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, int a5, uint64_t a6, char a7)
{
  LODWORD(v58) = a5;
  v61 = a3;
  sub_1D68ACC0C(0);
  v59 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v63 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D725D38C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v57 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v55 - v18;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v62 = &v55 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v55 - v29;
  v66 = a7 & 1;
  swift_getObjectType();
  sub_1D5B8131C();
  sub_1D725D96C();
  if (v58)
  {
    if (v58 == 1)
    {
      *v19 = v61 & 1;
      v31 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v19 = v61;
      v31 = MEMORY[0x1E69D7858];
    }

    (*(v13 + 104))(v19, *v31, v12);
  }

  else
  {
    *v19 = v61;
    *(v19 + 1) = a4;
    (*(v13 + 104))(v19, *MEMORY[0x1E69D7870], v12);
  }

  v32 = v62;
  v58 = v23;
  v56 = *(v13 + 32);
  v56(v30, v19, v12);
  v33 = *(v13 + 56);
  v61 = v30;
  v33(v30, 0, 1, v12);
  v64 = v65;
  v60 = v13;
  if (v65 == 3)
  {
    v34 = v32;
    v35 = 1;
  }

  else
  {
    sub_1D68AF384();
    sub_1D725DE0C();
    v34 = v32;
    v35 = 0;
  }

  v33(v34, v35, 1, v12);
  v36 = v32;
  v37 = v12;
  v38 = *(v59 + 48);
  v39 = MEMORY[0x1E69D7880];
  v40 = MEMORY[0x1E69E6720];
  v41 = v61;
  v42 = v63;
  sub_1D68AE904(v61, v63, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  sub_1D68AE904(v32, v42 + v38, &unk_1EDF3B690, v39, v40, sub_1D68A8C44);
  v43 = v60;
  v44 = *(v60 + 48);
  if (v44(v42, 1, v37) != 1)
  {
    v48 = v58;
    sub_1D68AE904(v42, v58, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    if (v44(v42 + v38, 1, v37) != 1)
    {
      v50 = v57;
      v56(v57, (v42 + v38), v37);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880], MEMORY[0x1E69D7888]);
      v51 = v42;
      v47 = sub_1D7261FBC();
      v52 = *(v43 + 8);
      v52(v50, v37);
      v53 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v62, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v61, &unk_1EDF3B690, v53);
      v52(v48, v37);
      sub_1D68AF29C(v51, &unk_1EDF3B690, v53);
      return v47 & 1;
    }

    v49 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v62, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    v46 = v63;
    sub_1D68AF29C(v61, &unk_1EDF3B690, v49);
    (*(v43 + 8))(v48, v37);
    goto LABEL_15;
  }

  v45 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v36, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v46 = v63;
  sub_1D68AF29C(v41, &unk_1EDF3B690, v45);
  if (v44(v46 + v38, 1, v37) != 1)
  {
LABEL_15:
    sub_1D5D511FC(v46, sub_1D68ACC0C);
    v47 = 0;
    return v47 & 1;
  }

  sub_1D68AF29C(v46, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v47 = 1;
  return v47 & 1;
}

uint64_t sub_1D68A4080(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  LODWORD(v57) = a5;
  v60 = a3;
  sub_1D68ACC0C(0);
  v58 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v62 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D725D38C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v56 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v55 - v18;
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v61 = &v55 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v55 - v29;
  v65 = a7;
  swift_getObjectType();
  sub_1D68AFD00();
  sub_1D725D96C();
  if (v57)
  {
    if (v57 == 1)
    {
      *v19 = v60 & 1;
      v31 = MEMORY[0x1E69D7878];
    }

    else
    {
      *v19 = v60;
      v31 = MEMORY[0x1E69D7858];
    }

    (*(v13 + 104))(v19, *v31, v12);
  }

  else
  {
    *v19 = v60;
    *(v19 + 1) = a4;
    (*(v13 + 104))(v19, *MEMORY[0x1E69D7870], v12);
  }

  v32 = v61;
  v57 = v23;
  v55 = *(v13 + 32);
  v55(v30, v19, v12);
  v33 = *(v13 + 56);
  v60 = v30;
  v33(v30, 0, 1, v12);
  v63 = v64;
  v59 = v13;
  if (v64 == 2)
  {
    v34 = v32;
    v35 = 1;
  }

  else
  {
    sub_1D68AFD54();
    sub_1D725DE0C();
    v34 = v32;
    v35 = 0;
  }

  v33(v34, v35, 1, v12);
  v36 = v32;
  v37 = v12;
  v38 = *(v58 + 48);
  v39 = MEMORY[0x1E69D7880];
  v40 = MEMORY[0x1E69E6720];
  v41 = v60;
  v42 = v62;
  sub_1D68AE904(v60, v62, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
  sub_1D68AE904(v32, v42 + v38, &unk_1EDF3B690, v39, v40, sub_1D68A8C44);
  v43 = v59;
  v44 = *(v59 + 48);
  if (v44(v42, 1, v37) != 1)
  {
    v48 = v57;
    sub_1D68AE904(v42, v57, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720], sub_1D68A8C44);
    if (v44(v42 + v38, 1, v37) != 1)
    {
      v50 = v56;
      v55(v56, (v42 + v38), v37);
      sub_1D68ADD5C(&unk_1EDF3B6A0, MEMORY[0x1E69D7880], MEMORY[0x1E69D7888]);
      v51 = v42;
      v47 = sub_1D7261FBC();
      v52 = *(v43 + 8);
      v52(v50, v37);
      v53 = MEMORY[0x1E69D7880];
      sub_1D68AF29C(v61, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
      sub_1D68AF29C(v60, &unk_1EDF3B690, v53);
      v52(v48, v37);
      sub_1D68AF29C(v51, &unk_1EDF3B690, v53);
      return v47 & 1;
    }

    v49 = MEMORY[0x1E69D7880];
    sub_1D68AF29C(v61, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
    v46 = v62;
    sub_1D68AF29C(v60, &unk_1EDF3B690, v49);
    (*(v43 + 8))(v48, v37);
    goto LABEL_15;
  }

  v45 = MEMORY[0x1E69D7880];
  sub_1D68AF29C(v36, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v46 = v62;
  sub_1D68AF29C(v41, &unk_1EDF3B690, v45);
  if (v44(v46 + v38, 1, v37) != 1)
  {
LABEL_15:
    sub_1D5D511FC(v46, sub_1D68ACC0C);
    v47 = 0;
    return v47 & 1;
  }

  sub_1D68AF29C(v46, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
  v47 = 1;
  return v47 & 1;
}

uint64_t sub_1D68A4730@<X0>(uint64_t (*a4)(void)@<X4>, uint64_t (*a6)(void *)@<X6>, uint64_t a7@<X8>)
{
  swift_getObjectType();
  sub_1D5B5534C(0, &qword_1EDF3C770, &protocolRef_FCTagProviding);
  a4();
  v10 = sub_1D725D96C();
  if (v14 == 2)
  {
    v11 = sub_1D725D38C();
    return (*(*(v11 - 8) + 56))(a7, 1, 1, v11);
  }

  else
  {
    a6(v10);
    sub_1D725DE0C();
    v13 = sub_1D725D38C();
    return (*(*(v13 - 8) + 56))(a7, 0, 1, v13);
  }
}

uint64_t sub_1D68A4888@<X0>(uint64_t a5@<X8>)
{
  swift_getObjectType();
  sub_1D5B61274();
  sub_1D725D96C();
  if (v9 == 2)
  {
    v6 = sub_1D725D38C();
    return (*(*(v6 - 8) + 56))(a5, 1, 1, v6);
  }

  else
  {
    sub_1D68ACF0C();
    sub_1D725DE0C();
    v8 = sub_1D725D38C();
    return (*(*(v8 - 8) + 56))(a5, 0, 1, v8);
  }
}

uint64_t sub_1D68A49B0@<X0>(double *a4@<X8>)
{
  swift_getObjectType();
  type metadata accessor for FeedHeadline(0);
  sub_1D5B80300();
  sub_1D725D96C();
  if (v13)
  {
    v5 = sub_1D725D38C();
    return (*(*(v5 - 8) + 56))(a4, 1, 1, v5);
  }

  else
  {
    v7 = v11;
    if (v12)
    {
      v7 = 0.0;
    }

    *a4 = v7;
    v8 = *MEMORY[0x1E69D7868];
    v9 = sub_1D725D38C();
    v10 = *(v9 - 8);
    (*(v10 + 104))(a4, v8, v9);
    return (*(v10 + 56))(a4, 0, 1, v9);
  }
}

uint64_t sub_1D68A4B28@<X0>(uint64_t a4@<X8>)
{
  swift_getObjectType();
  type metadata accessor for FeedHeadlineAudioCommandContext(0);
  sub_1D5B82160();
  sub_1D725D96C();
  if (v8 == 4)
  {
    v5 = sub_1D725D38C();
    return (*(*(v5 - 8) + 56))(a4, 1, 1, v5);
  }

  else
  {
    sub_1D68ADC30();
    sub_1D725DE0C();
    v7 = sub_1D725D38C();
    return (*(*(v7 - 8) + 56))(a4, 0, 1, v7);
  }
}

uint64_t sub_1D68A4C5C@<X0>(uint64_t a5@<X8>)
{
  swift_getObjectType();
  sub_1D68AFCB0(0, qword_1EDF2D128, &type metadata for SaveContent, type metadata accessor for SaveCommandContext);
  sub_1D5B66B90();
  sub_1D725D96C();
  if (v9 == 2)
  {
    v6 = sub_1D725D38C();
    return (*(*(v6 - 8) + 56))(a5, 1, 1, v6);
  }

  else
  {
    sub_1D68AF9C0();
    sub_1D725DE0C();
    v8 = sub_1D725D38C();
    return (*(*(v8 - 8) + 56))(a5, 0, 1, v8);
  }
}

uint64_t sub_1D68A4DB0@<X0>(uint64_t a4@<X8>)
{
  swift_getObjectType();
  sub_1D725D96C();
  if (v8 == 2)
  {
    v5 = 1;
  }

  else
  {
    sub_1D726284C();
    v5 = 0;
  }

  v6 = sub_1D725D38C();
  return (*(*(v6 - 8) + 56))(a4, v5, 1, v6);
}

uint64_t sub_1D68A4E94@<X0>(void *a4@<X8>)
{
  swift_getObjectType();
  sub_1D5B8D474();
  sub_1D725D96C();
  if (v11)
  {
    *a4 = v10;
    a4[1] = v11;
    v5 = *MEMORY[0x1E69D7870];
    v6 = sub_1D725D38C();
    v7 = *(v6 - 8);
    (*(v7 + 104))(a4, v5, v6);
    return (*(v7 + 56))(a4, 0, 1, v6);
  }

  else
  {
    v9 = sub_1D725D38C();
    return (*(*(v9 - 8) + 56))(a4, 1, 1, v9);
  }
}

uint64_t sub_1D68A4FEC@<X0>(void *a4@<X8>)
{
  swift_getObjectType();
  sub_1D5B90AC0();
  sub_1D725D96C();
  if (v11)
  {
    v5 = sub_1D725D38C();
    return (*(*(v5 - 8) + 56))(a4, 1, 1, v5);
  }

  else
  {
    *a4 = v10;
    v7 = *MEMORY[0x1E69D7858];
    v8 = sub_1D725D38C();
    v9 = *(v8 - 8);
    (*(v9 + 104))(a4, v7, v8);
    return (*(v9 + 56))(a4, 0, 1, v8);
  }
}

uint64_t sub_1D68A515C@<X0>(uint64_t a4@<X8>)
{
  swift_getObjectType();
  sub_1D5B81000();
  sub_1D725D96C();
  if (v8 == 3)
  {
    v5 = sub_1D725D38C();
    return (*(*(v5 - 8) + 56))(a4, 1, 1, v5);
  }

  else
  {
    sub_1D68AE25C();
    sub_1D725DE0C();
    v7 = sub_1D725D38C();
    return (*(*(v7 - 8) + 56))(a4, 0, 1, v7);
  }
}

uint64_t sub_1D68A5280@<X0>(void *a4@<X8>)
{
  swift_getObjectType();
  sub_1D5B840B4();
  sub_1D725D96C();
  if (v11 <= 1u)
  {
    *a4 = v10;
LABEL_5:
    v5 = *MEMORY[0x1E69D7868];
    v6 = sub_1D725D38C();
    v7 = *(v6 - 8);
    (*(v7 + 104))(a4, v5, v6);
    return (*(v7 + 56))(a4, 0, 1, v6);
  }

  if (v11 == 2)
  {
    *a4 = 0;
    goto LABEL_5;
  }

  v9 = sub_1D725D38C();
  return (*(*(v9 - 8) + 56))(a4, 1, 1, v9);
}

uint64_t sub_1D68A5404@<X0>(uint64_t a4@<X8>)
{
  swift_getObjectType();
  type metadata accessor for LiveActivityCommandContext(0);
  sub_1D5B662E0();
  sub_1D725D96C();
  if (v8 == 3)
  {
    v5 = sub_1D725D38C();
    return (*(*(v5 - 8) + 56))(a4, 1, 1, v5);
  }

  else
  {
    sub_1D68AF170();
    sub_1D725DE0C();
    v7 = sub_1D725D38C();
    return (*(*(v7 - 8) + 56))(a4, 0, 1, v7);
  }
}

uint64_t sub_1D68A5538@<X0>(uint64_t a4@<X8>)
{
  swift_getObjectType();
  sub_1D5B84108();
  sub_1D725D96C();
  if (v8 == 2)
  {
    v5 = sub_1D725D38C();
    return (*(*(v5 - 8) + 56))(a4, 1, 1, v5);
  }

  else
  {
    sub_1D68AF620();
    sub_1D725DE0C();
    v7 = sub_1D725D38C();
    return (*(*(v7 - 8) + 56))(a4, 0, 1, v7);
  }
}

uint64_t sub_1D68A5664@<X0>(uint64_t a4@<X8>)
{
  swift_getObjectType();
  sub_1D5B8D5CC();
  sub_1D725D96C();
  if (v8 == 4)
  {
    v5 = sub_1D725D38C();
    return (*(*(v5 - 8) + 56))(a4, 1, 1, v5);
  }

  else
  {
    sub_1D68AF4A4();
    sub_1D725DE0C();
    v7 = sub_1D725D38C();
    return (*(*(v7 - 8) + 56))(a4, 0, 1, v7);
  }
}

uint64_t sub_1D68A5790@<X0>(uint64_t a4@<X8>)
{
  swift_getObjectType();
  sub_1D5B8131C();
  sub_1D725D96C();
  if (v8 == 3)
  {
    v5 = sub_1D725D38C();
    return (*(*(v5 - 8) + 56))(a4, 1, 1, v5);
  }

  else
  {
    sub_1D68AF384();
    sub_1D725DE0C();
    v7 = sub_1D725D38C();
    return (*(*(v7 - 8) + 56))(a4, 0, 1, v7);
  }
}

uint64_t sub_1D68A58BC@<X0>(uint64_t a4@<X8>)
{
  swift_getObjectType();
  sub_1D68AFD00();
  sub_1D725D96C();
  if (v8 == 2)
  {
    v5 = sub_1D725D38C();
    return (*(*(v5 - 8) + 56))(a4, 1, 1, v5);
  }

  else
  {
    sub_1D68AFD54();
    sub_1D725DE0C();
    v7 = sub_1D725D38C();
    return (*(*(v7 - 8) + 56))(a4, 0, 1, v7);
  }
}

uint64_t sub_1D68A59E0(uint64_t a1, uint64_t a2)
{
  sub_1D7263D4C();

  v2 = sub_1D725F7AC();
  MEMORY[0x1DA6F9910](v2);

  MEMORY[0x1DA6F9910](0x7865746E6F63202CLL, 0xEA00000000003D74);
  sub_1D5B5AE94(0);
  swift_unknownObjectRetain();
  v3 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v3);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0x28646E616D6D6F43;
}

uint64_t sub_1D68A5AD0(uint64_t a1, uint64_t a2, __int16 a3)
{
  sub_1D7263D4C();

  v3 = sub_1D725F7AC();
  MEMORY[0x1DA6F9910](v3);

  MEMORY[0x1DA6F9910](0x7865746E6F63202CLL, 0xEA00000000003D74);
  sub_1D68AFCB0(0, &qword_1EDF0D658, &type metadata for FollowingCommandContext, MEMORY[0x1E69E6720]);
  swift_unknownObjectRetain();
  v4 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v4);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0x28646E616D6D6F43;
}

uint64_t sub_1D68A5BEC(__n128 a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v8 = MEMORY[0x1E69E6720];
  sub_1D68A8C44(0, a4, a5, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v16 - v11;
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_1D7263D4C();

  v16 = 0x28646E616D6D6F43;
  v17 = 0xE800000000000000;
  v13 = sub_1D725F7AC();
  MEMORY[0x1DA6F9910](v13);

  MEMORY[0x1DA6F9910](0x7865746E6F63202CLL, 0xEA00000000003D74);
  sub_1D68AE904(a3, v12, a4, a5, v8, sub_1D68A8C44);
  v14 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v14);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return v16;
}

uint64_t sub_1D68A5D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D7263D4C();

  v5 = sub_1D725F7AC();
  MEMORY[0x1DA6F9910](v5);

  MEMORY[0x1DA6F9910](0x7865746E6F63202CLL, 0xEA00000000003D74);
  sub_1D68ACBB0(a2);
  sub_1D68AFCB0(0, qword_1EDF2A2F8, &type metadata for LikingCommandContext, MEMORY[0x1E69E6720]);
  v6 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v6);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0x28646E616D6D6F43;
}

uint64_t sub_1D68A5E90(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  sub_1D7263D4C();

  v5 = sub_1D725F7AC();
  MEMORY[0x1DA6F9910](v5);

  MEMORY[0x1DA6F9910](0x7865746E6F63202CLL, 0xEA00000000003D74);
  sub_1D68AF8C4(a2, v3);
  sub_1D68AF944(0);
  v6 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v6);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0x28646E616D6D6F43;
}

uint64_t sub_1D68A5F88(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0xE000000000000000;
  sub_1D7263D4C();

  v8 = 0x28646E616D6D6F43;
  v9 = 0xE800000000000000;
  v3 = sub_1D725F7AC();
  MEMORY[0x1DA6F9910](v3);

  MEMORY[0x1DA6F9910](0x7865746E6F63202CLL, 0xEA00000000003D74);
  v4 = MEMORY[0x1E69E6720];
  sub_1D68AE904(a2, v7, &qword_1EDF12E30, &type metadata for FeedPuzzle, MEMORY[0x1E69E6720], sub_1D68AFCB0);
  sub_1D68AFCB0(0, &qword_1EDF12E30, &type metadata for FeedPuzzle, v4);
  v5 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v5);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return v8;
}

uint64_t sub_1D68A60C4(uint64_t a1, char a2)
{
  sub_1D7263D4C();

  v2 = sub_1D725F7AC();
  MEMORY[0x1DA6F9910](v2);

  MEMORY[0x1DA6F9910](0x7865746E6F63202CLL, 0xEA00000000003D74);
  sub_1D68AFCB0(0, &unk_1EC88D670, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6720]);
  v3 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v3);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0x28646E616D6D6F43;
}

uint64_t sub_1D68A61D4(uint64_t a1, void *a2)
{
  sub_1D7263D4C();

  v3 = sub_1D725F7AC();
  MEMORY[0x1DA6F9910](v3);

  MEMORY[0x1DA6F9910](0x7865746E6F63202CLL, 0xEA00000000003D74);
  sub_1D68AFCB0(0, &unk_1EC88D6B8, &type metadata for ExportToGroceryListContext, MEMORY[0x1E69E6720]);
  v4 = a2;
  v5 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v5);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0x28646E616D6D6F43;
}

unint64_t sub_1D68A62E4(uint64_t a1)
{
  v27 = a1;
  v2 = *(v1 + 8);
  v3 = type metadata accessor for FormatLayoutError(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D68A8C44(0, &qword_1EDF337F0, type metadata accessor for FormatOption, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for FormatOption(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v1;
  v17 = *(v1 + 48);
  if (v17 >> 14)
  {
    v18 = *(v1 + 16);
    if (v17 >> 14 == 1)
    {
      v26 = *(v1 + 16);

      FormatOptionCollection.subscript.getter(v16, v2, v10);
      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {
        sub_1D68AF29C(v10, &qword_1EDF337F0, type metadata accessor for FormatOption);
        *v6 = v16;
        v6[1] = v2;
        swift_storeEnumTagMultiPayload();
        sub_1D68ADD5C(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
        swift_allocError();
        sub_1D68B021C(v6, v19, type metadata accessor for FormatLayoutError);
        swift_willThrow();
        sub_1D5D511FC(v6, type metadata accessor for FormatLayoutError);
      }

      else
      {

        sub_1D5D5E40C(v10, v15, type metadata accessor for FormatOption);

        v24 = v27;
        v23 = v28;
        sub_1D6B744A8(v27, &v35);
        if (v23)
        {
          sub_1D5D511FC(v15, type metadata accessor for FormatOption);
        }

        else
        {

          v16 = sub_1D6B7DB60(v35, v16, v2, v26, v24);
          sub_1D5D511FC(v15, type metadata accessor for FormatOption);
        }
      }
    }

    else
    {
      v20 = *(v1 + 40);
      v29 = *v1;
      v30 = v2;
      v31 = v18;
      v32 = *(v1 + 24);
      v33 = v20;
      v34 = v17 & 0x3FFF;
      v21 = v28;
      v22 = sub_1D688E6FC(v27, 0);
      if (!v21)
      {
        return v22;
      }
    }
  }

  else
  {
  }

  return v16;
}

double sub_1D68A66CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t *, uint64_t, uint64_t, uint64_t, ValueMetadata *, unint64_t, unint64_t, uint64_t, uint64_t))
{
  v20 = *a6;
  ObjectType = swift_getObjectType();
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  v15 = sub_1D5B5534C(0, &qword_1EDF3C770, &protocolRef_FCTagProviding);
  v16 = sub_1D68AE048();
  v17 = sub_1D5B8A1B8();

  a9(a5, &v20, a8, v14, v15, &type metadata for IgnoringCommandState, v16, v17, ObjectType, a2);

  return result;
}

uint64_t sub_1D68A67D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_getObjectType();
  sub_1D5B5534C(0, &qword_1EDF3C770, &protocolRef_FCTagProviding);
  return sub_1D725D92C() & 1;
}

uint64_t sub_1D68A6860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_getObjectType();
  sub_1D5B5534C(0, &qword_1EDF3C770, &protocolRef_FCTagProviding);
  return sub_1D725D97C();
}

double sub_1D68A68F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  sub_1D5B5534C(0, &qword_1EDF3C770, &protocolRef_FCTagProviding);
  sub_1D68AD174();
  sub_1D5B65B58();

  sub_1D725D95C();

  return result;
}

double sub_1D68A69F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  sub_1D5B5534C(0, &qword_1EDF3C770, &protocolRef_FCTagProviding);
  sub_1D68AD174();
  sub_1D5B65B58();

  sub_1D725D94C();

  return result;
}

double sub_1D68A6AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  sub_1D5B5534C(0, &qword_1EDF3C770, &protocolRef_FCTagProviding);
  sub_1D68AD174();
  sub_1D5B65B58();

  sub_1D725D94C();

  return result;
}

uint64_t sub_1D68A6C00(char *a1, void (*a2)(char *), __n128 a3, uint64_t a4, uint64_t (*a5)(__n128), uint64_t a6)
{
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v13 = &v17 - v12;
  v18 = *a1;
  if (v18 == 2)
  {
    v14 = sub_1D725D38C();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  }

  else
  {
    a5(v11);
    sub_1D725DE0C();
    v15 = sub_1D725D38C();
    (*(*(v15 - 8) + 56))(v13, 0, 1, v15);
  }

  a2(v13);
  return sub_1D68AF29C(v13, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
}

double sub_1D68A6D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t *, uint64_t, uint64_t, ValueMetadata *, ValueMetadata *, unint64_t, unint64_t, uint64_t, uint64_t))
{
  v13 = *(a6 + 4);
  v20 = *a6;
  v21 = v13;
  ObjectType = swift_getObjectType();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v16 = sub_1D674BF04();
  v17 = sub_1D5B61274();

  a9(a5, &v20, a8, v15, &type metadata for FollowingCommandContext, &type metadata for FollowingCommandState, v16, v17, ObjectType, a2);

  return result;
}

double sub_1D68A6F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, __int128 *, uint64_t, uint64_t, ValueMetadata *, void, void, void, __n128, uint64_t, uint64_t))
{
  v13 = *(a6 + 2);
  v18 = *a6;
  v19 = v13;
  ObjectType = swift_getObjectType();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;

  (a9)(a5, &v18, a8, v15, &type metadata for LikingCommandContext, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E69D8888], ObjectType, a2);

  return result;
}

uint64_t sub_1D68A7068@<X0>(uint64_t a4@<X8>)
{
  swift_getObjectType();
  sub_1D725D96C();
  if (v8 == 2)
  {
    v5 = 1;
  }

  else
  {
    sub_1D726284C();
    v5 = 0;
  }

  v6 = sub_1D725D38C();
  return (*(*(v6 - 8) + 56))(a4, v5, 1, v6);
}

uint64_t sub_1D68A7150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_getObjectType();
  sub_1D68AFCB0(0, qword_1EDF2D128, &type metadata for SaveContent, type metadata accessor for SaveCommandContext);
  return sub_1D725D92C() & 1;
}

uint64_t sub_1D68A71FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_getObjectType();
  sub_1D68AFCB0(0, qword_1EDF2D128, &type metadata for SaveContent, type metadata accessor for SaveCommandContext);
  return sub_1D725D97C();
}

double sub_1D68A72AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t *, uint64_t, uint64_t, uint64_t, ValueMetadata *, unint64_t, unint64_t, uint64_t, uint64_t))
{
  v13 = *(a6 + 4);
  v22 = *a6;
  v23 = v13;
  ObjectType = swift_getObjectType();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  sub_1D68AFCB0(0, qword_1EDF2D128, &type metadata for SaveContent, type metadata accessor for SaveCommandContext);
  v17 = v16;
  v18 = sub_1D5F9407C();
  v19 = sub_1D5B66B90();

  a9(a5, &v22, a8, v15, v17, &type metadata for SavingCommandState, v18, v19, ObjectType, a2);

  return result;
}

uint64_t sub_1D68A73CC(unsigned __int8 *a1, void (*a2)(char *), __n128 a3)
{
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v12 - v7;
  if (*a1 == 2)
  {
    v9 = sub_1D725D38C();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  else
  {
    sub_1D726284C();
    v10 = sub_1D725D38C();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  a2(v8);
  return sub_1D68AF29C(v8, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
}

uint64_t sub_1D68A752C(void *a1, void (*a2)(void *), __n128 a3)
{
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = (&v15 - v7);
  v9 = a1[1];
  if (v9)
  {
    *v8 = *a1;
    v8[1] = v9;
    v10 = *MEMORY[0x1E69D7870];
    v11 = sub_1D725D38C();
    v12 = *(v11 - 8);
    (*(v12 + 104))(v8, v10, v11);
    (*(v12 + 56))(v8, 0, 1, v11);
  }

  else
  {
    v13 = sub_1D725D38C();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  }

  a2(v8);
  return sub_1D68AF29C(v8, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
}

uint64_t sub_1D68A76EC(uint64_t a1, void (*a2)(void *), __n128 a3)
{
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = (&v14 - v7);
  if (*(a1 + 8))
  {
    v9 = sub_1D725D38C();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  else
  {
    *v8 = *a1;
    v10 = *MEMORY[0x1E69D7858];
    v11 = sub_1D725D38C();
    v12 = *(v11 - 8);
    (*(v12 + 104))(v8, v10, v11);
    (*(v12 + 56))(v8, 0, 1, v11);
  }

  a2(v8);
  return sub_1D68AF29C(v8, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
}

uint64_t sub_1D68A78B4(char *a1, void (*a2)(char *), __n128 a3, uint64_t a4, uint64_t (*a5)(__n128), uint64_t a6)
{
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v13 = &v17 - v12;
  v18 = *a1;
  if (v18 == 3)
  {
    v14 = sub_1D725D38C();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  }

  else
  {
    a5(v11);
    sub_1D725DE0C();
    v15 = sub_1D725D38C();
    (*(*(v15 - 8) + 56))(v13, 0, 1, v15);
  }

  a2(v13);
  return sub_1D68AF29C(v13, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
}

double sub_1D68A7A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  sub_1D68AF6AC();
  sub_1D5B84108();

  sub_1D725D95C();

  return result;
}

double sub_1D68A7B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  sub_1D68AF6AC();
  sub_1D5B84108();

  sub_1D725D94C();

  return result;
}

double sub_1D68A7C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  sub_1D68AF6AC();
  sub_1D5B84108();

  sub_1D725D94C();

  return result;
}

double sub_1D68A7D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  sub_1D5EDDD28();
  sub_1D5B8D5CC();

  sub_1D725D95C();

  return result;
}

double sub_1D68A7E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  sub_1D5EDDD28();
  sub_1D5B8D5CC();

  sub_1D725D94C();

  return result;
}

double sub_1D68A7EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  sub_1D5EDDD28();
  sub_1D5B8D5CC();

  sub_1D725D94C();

  return result;
}

uint64_t sub_1D68A7FE0(char *a1, void (*a2)(char *), __n128 a3, uint64_t a4, uint64_t (*a5)(__n128), uint64_t a6)
{
  sub_1D68A8C44(0, &unk_1EDF3B690, MEMORY[0x1E69D7880], MEMORY[0x1E69E6720]);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v13 = &v17 - v12;
  v18 = *a1;
  if (v18 == 4)
  {
    v14 = sub_1D725D38C();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  }

  else
  {
    a5(v11);
    sub_1D725DE0C();
    v15 = sub_1D725D38C();
    (*(*(v15 - 8) + 56))(v13, 0, 1, v15);
  }

  a2(v13);
  return sub_1D68AF29C(v13, &unk_1EDF3B690, MEMORY[0x1E69D7880]);
}

double sub_1D68A816C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  sub_1D61892D0();
  sub_1D5B8131C();

  sub_1D725D95C();

  return result;
}

double sub_1D68A825C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  sub_1D61892D0();
  sub_1D5B8131C();

  sub_1D725D94C();

  return result;
}

double sub_1D68A834C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  sub_1D61892D0();
  sub_1D5B8131C();

  sub_1D725D94C();

  return result;
}

double sub_1D68A843C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t *, uint64_t, uint64_t, ValueMetadata *, ValueMetadata *, unint64_t, unint64_t, uint64_t, uint64_t))
{
  v19 = *a6;
  ObjectType = swift_getObjectType();
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  v15 = sub_1D68AFDE0();
  v16 = sub_1D68AFD00();

  a9(a5, &v19, a8, v14, &type metadata for ExportToGroceryListContext, &type metadata for ExportToGroceryListCommandState, v15, v16, ObjectType, a2);

  return result;
}

uint64_t sub_1D68A8528(uint64_t *a1)
{
  v1 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext(0);
  v2 = v1();
  v3 = *(*(v2 + 40) + 16);
  swift_beginAccess();
  if (*(*(v3 + 16) + 16))
  {
    v8 = *(v2 + 56);

    sub_1D6F622E0(v4);
    sub_1D5B886D0(v5);

    return v8;
  }

  else
  {
    v7 = sub_1D6E46E28();

    return v7;
  }
}

uint64_t sub_1D68A85F4(uint64_t *a1)
{
  v1 = off_1F51B94D0[0];
  type metadata accessor for FormatNodeBinderContext(0);
  v2 = v1();
  v3 = *(*(v2 + 40) + 16);
  swift_beginAccess();
  if (*(*(v3 + 16) + 16))
  {
    v8 = *(v2 + 56);

    sub_1D6F622E0(v4);
    sub_1D5B886D0(v5);

    return v8;
  }

  else
  {
    v7 = sub_1D6E46E28();

    return v7;
  }
}

uint64_t _s8NewsFeed20FormatCommandBindingO2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v29 = *a1;
  v30 = v2;
  v3 = a2[1];
  v32 = *a2;
  v33 = v3;
  v5 = *a2;
  v4 = a2[1];
  *v34 = a2[2];
  *v31 = a1[2];
  v6 = *v31;
  *&v31[15] = *(a1 + 47);
  *&v34[15] = *(a2 + 47);
  v35[0] = v29;
  v35[1] = v2;
  *v36 = v6;
  *(&v36[1] + 7) = *&v31[15];
  *&v36[3] = v5;
  *&v36[5] = v4;
  *v37 = a2[2];
  *&v37[15] = *(a2 + 47);
  v7 = (*&v31[15] >> 8);
  if (v31[18])
  {
    v8 = 8;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 & 0xFFFFFFF8 | (v7 >> 11) & 7;
  if (v34[18])
  {
    v10 = 8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 & 0xFFFFFFF8 | (*&v34[16] >> 11) & 7;
  if (v9 > 4)
  {
    if (v9 <= 6)
    {
      if (v9 != 5)
      {
        if (v11 == 6)
        {
          v19 = v29;
          v20 = *(&v29 + 1);
          v22 = (*(&v29 + 1) | ((*(&v29 + 5) | (BYTE7(v29) << 16)) << 32)) >> 48;
          v21 = *(&v29 + 5);
          v23 = *(&v29 + 1);
          v24 = v2;
          LOBYTE(v25) = BYTE8(v30);
          v15 = v32;
          *&v16 = v33;
          BYTE8(v16) = BYTE8(v33);
          sub_1D62B5248(&v32, v28);
          sub_1D62B5248(&v29, v28);
          sub_1D62B5248(&v29, v28);
          sub_1D62B5248(&v32, v28);
          v12 = _s8NewsFeed24FormatSportsEventBindingV7CommandO2eeoiySbAE_AEtFZ_0(&v19, &v15);
          goto LABEL_41;
        }

        sub_1D68B0420(v29, *(&v29 + 1), v2, BYTE8(v30));
        goto LABEL_39;
      }

      if (v11 != 5)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (v9 == 7)
      {
        if (v11 == 7)
        {
          v19 = v29;
          v20 = *(&v29 + 1);
          v22 = (*(&v29 + 1) | ((*(&v29 + 5) | (BYTE7(v29) << 16)) << 32)) >> 48;
          v21 = *(&v29 + 5);
          v23 = *(&v29 + 1);
          v24 = v2;
          v25 = *(&v30 + 1);
          v26 = *v31;
          v27 = v7 & 0xC7FF;
          v15 = v32;
          v16 = v33;
          v17 = *v34;
          v18 = *&v34[16] & 0xC7FF;
          sub_1D62B5248(&v32, v28);
          sub_1D62B5248(&v29, v28);
          sub_1D62B5248(&v29, v28);
          sub_1D62B5248(&v32, v28);
          v12 = _s8NewsFeed12FormatStringO2eeoiySbAC_ACtFZ_0(&v19, &v15);
          goto LABEL_41;
        }

        sub_1D5E1DA6C(v29, *(&v29 + 1), v2, *(&v30 + 1), *v31, *&v31[8], v7 & 0xFFFFC7FF);
        goto LABEL_39;
      }

      if (v9 != 8)
      {
        if (v11 != 9)
        {
          goto LABEL_39;
        }

        goto LABEL_31;
      }

      if (v11 != 8)
      {
        goto LABEL_39;
      }
    }

LABEL_33:
    sub_1D5D511FC(v35, sub_1D68B03C4);
    v13 = v29 == v32;
    return v13 & 1;
  }

  if (v9 <= 1)
  {
    if (!v9)
    {
      if (!v11)
      {
        v19 = v29;
        v20 = *(&v29 + 1);
        v22 = (*(&v29 + 1) | ((*(&v29 + 5) | (BYTE7(v29) << 16)) << 32)) >> 48;
        v21 = *(&v29 + 5);
        v23 = *(&v29 + 1);
        v24 = v2;
        LOBYTE(v25) = BYTE8(v30);
        v15 = v32;
        *&v16 = v33;
        BYTE8(v16) = BYTE8(v33);
        sub_1D62B5248(&v32, v28);
        sub_1D62B5248(&v29, v28);
        sub_1D62B5248(&v29, v28);
        sub_1D62B5248(&v32, v28);
        v12 = _s8NewsFeed18FormatGroupBindingV7CommandO2eeoiySbAE_AEtFZ_0(&v19, &v15);
        goto LABEL_41;
      }

      sub_1D68B0450(v29, *(&v29 + 1), v2, DWORD2(v30));
      goto LABEL_39;
    }

    if (v11 == 1)
    {
      goto LABEL_33;
    }

LABEL_39:
    sub_1D62B5248(&v32, v28);
    sub_1D5D511FC(v35, sub_1D68B03C4);
    v13 = 0;
    return v13 & 1;
  }

  if (v9 != 2)
  {
    if (v9 == 3)
    {
      if (v11 == 3)
      {
        v19 = v29;
        v20 = *(&v29 + 1);
        v22 = (*(&v29 + 1) | ((*(&v29 + 5) | (BYTE7(v29) << 16)) << 32)) >> 48;
        v21 = *(&v29 + 5);
        v23 = *(&v29 + 1);
        LOBYTE(v24) = v2;
        v15 = v32;
        LOBYTE(v16) = v33;
        sub_1D62B5248(&v32, v28);
        sub_1D62B5248(&v29, v28);
        sub_1D62B5248(&v29, v28);
        sub_1D62B5248(&v32, v28);
        v12 = _s8NewsFeed16FormatTagBindingV7CommandO2eeoiySbAE_AEtFZ_0(&v19, &v15);
LABEL_41:
        v13 = v12;
        sub_1D5D511FC(v35, sub_1D68B03C4);
        sub_1D5D085FC(&v32);
        sub_1D5D085FC(&v29);
        return v13 & 1;
      }

      sub_1D5E1DA1C(v29, *(&v29 + 1), v2);
      goto LABEL_39;
    }

    if (v11 != 4)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  if (v11 != 2)
  {
    goto LABEL_39;
  }

LABEL_31:
  sub_1D5D511FC(v35, sub_1D68B03C4);
  v13 = v29 ^ v32 ^ 1;
  return v13 & 1;
}

unint64_t sub_1D68A8AFC(uint64_t a1)
{
  result = sub_1D68A8B24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D68A8B24()
{
  result = qword_1EC88D630;
  if (!qword_1EC88D630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D630);
  }

  return result;
}

unint64_t sub_1D68A8B78(void *a1)
{
  a1[1] = sub_1D5C6CE4C();
  a1[2] = sub_1D66FF5D8();
  result = sub_1D68A8BB0();
  a1[3] = result;
  return result;
}

unint64_t sub_1D68A8BB0()
{
  result = qword_1EC88D638;
  if (!qword_1EC88D638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D638);
  }

  return result;
}

uint64_t sub_1D68A8C14(uint64_t result, char a2)
{
  *(result + 48) = *(result + 48) & 0xC7FF | ((a2 & 7) << 11);
  *(result + 50) = (a2 & 8) != 0;
  return result;
}

void sub_1D68A8C44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D68A8CA8()
{
  type metadata accessor for FormatLayoutError(0);
  sub_1D68ADD5C(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
  swift_allocError();
  *v0 = 0xD00000000000007ALL;
  v0[1] = 0x80000001D73C3800;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_1D68A8D54(uint64_t a1)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 2);
  switch((2 * v1[49]) | ((v1[48] & 8) != 0))
  {
    case 2:
      result = sub_1D68A8CA8();
      break;
    case 3:
    case 4:
      v6 = *v1 | ((*(v1 + 1) | ((*(v1 + 5) | (v1[7] << 16)) << 32)) << 8);

      result = sub_1D6F6EEBC(a1, v6, v2, v3, v6, v2, v3);
      break;
    default:
      type metadata accessor for FormatLayoutError(0);
      sub_1D68ADD5C(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      *v4 = 0xD00000000000006ELL;
      v4[1] = 0x80000001D73C3790;
      swift_storeEnumTagMultiPayload();
      result = swift_willThrow();
      break;
  }

  return result;
}

uint64_t sub_1D68A8EEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  *(v3 + 16) = sub_1D725F7AC();
  *(v3 + 24) = v6;
  *(v3 + 32) = 1;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v3 + 40) = sub_1D68ACFE4;
  *(v3 + 48) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v3 + 56) = sub_1D68AD008;
  *(v3 + 64) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v3 + 72) = sub_1D68AD028;
  *(v3 + 80) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v3 + 88) = sub_1D68AD034;
  *(v3 + 96) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v3 + 136) = sub_1D68AD040;
  *(v3 + 144) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v3 + 104) = sub_1D68AD04C;
  *(v3 + 112) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v3 + 120) = sub_1D68AD080;
  *(v3 + 128) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v3 + 152) = sub_1D68AD0CC;
  *(v3 + 160) = v14;
  swift_retain_n();
  swift_unknownObjectRetain_n();
  return v3;
}

uint64_t sub_1D68A90AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  *(v3 + 16) = sub_1D725F7AC();
  *(v3 + 24) = v6;
  *(v3 + 32) = 1;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v3 + 40) = sub_1D68B04F4;
  *(v3 + 48) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v3 + 56) = sub_1D68B04D8;
  *(v3 + 64) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v3 + 72) = sub_1D68ADDA4;
  *(v3 + 80) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v3 + 88) = sub_1D68ADDFC;
  *(v3 + 96) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v3 + 136) = sub_1D68ADE54;
  *(v3 + 144) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v3 + 104) = sub_1D68ADEAC;
  *(v3 + 112) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v3 + 120) = sub_1D68ADF24;
  *(v3 + 128) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v3 + 152) = sub_1D68B0500;
  *(v3 + 160) = v14;
  swift_retain_n();
  swift_unknownObjectRetain_n();
  return v3;
}

uint64_t sub_1D68A926C(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = v3;

  *(v4 + 16) = sub_1D725F7AC();
  *(v4 + 24) = v8;
  *(v4 + 32) = 1;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v4 + 40) = sub_1D68ACCD8;
  *(v4 + 48) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v4 + 56) = sub_1D68ACD54;
  *(v4 + 64) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v4 + 72) = sub_1D68ACDD4;
  *(v4 + 80) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v4 + 88) = sub_1D68ACE2C;
  *(v4 + 96) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  *(v4 + 136) = sub_1D68ACE84;
  *(v4 + 144) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v4 + 104) = sub_1D68ACEDC;
  *(v4 + 112) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v4 + 120) = sub_1D68ACEF4;
  *(v4 + 128) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v4 + 152) = sub_1D68ACF00;
  *(v4 + 160) = v16;
  swift_retain_n();
  swift_unknownObjectRetain_n();
  return v4;
}

uint64_t sub_1D68A9450(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;

  *(v4 + 16) = sub_1D725F7AC();
  *(v4 + 24) = v8;
  *(v4 + 32) = 1;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = v5;
  *(v4 + 40) = sub_1D68AF758;
  *(v4 + 48) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = v5;
  *(v4 + 56) = sub_1D68AF764;
  *(v4 + 64) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = v5;
  *(v4 + 72) = sub_1D68AF784;
  *(v4 + 80) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = v5;
  *(v4 + 88) = sub_1D68AF7DC;
  *(v4 + 96) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = v5;
  *(v4 + 136) = sub_1D68AF834;
  *(v4 + 144) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = v5;
  *(v4 + 104) = sub_1D68AF88C;
  *(v4 + 112) = v14;

  sub_1D68AF8C4(a2, v5);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = v5;
  *(v4 + 120) = sub_1D68AF8DC;
  *(v4 + 128) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = v5;
  *(v4 + 152) = sub_1D68AF938;
  *(v4 + 160) = v16;

  sub_1D68AF8C4(a2, v5);

  sub_1D68AF8C4(a2, v5);

  sub_1D68AF8C4(a2, v5);

  sub_1D68AF8C4(a2, v5);

  sub_1D68AF8C4(a2, v5);

  sub_1D68AF8C4(a2, v5);
  return v4;
}

uint64_t sub_1D68A96A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;

  *(v5 + 16) = sub_1D725F7AC();
  *(v5 + 24) = v10;
  *(v5 + 32) = 1;
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a4;
  *(v5 + 40) = sub_1D68ACA40;
  *(v5 + 48) = v11;
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  *(v5 + 56) = sub_1D68ACA4C;
  *(v5 + 64) = v12;
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  *(v5 + 72) = sub_1D68ACA6C;
  *(v5 + 80) = v13;
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  *(v5 + 88) = sub_1D68ACAC4;
  *(v5 + 96) = v14;
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  *(v5 + 136) = sub_1D68ACB1C;
  *(v5 + 144) = v15;
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  *(v5 + 104) = sub_1D68ACB74;
  *(v5 + 112) = v16;

  sub_1D68ACBB0(a2);
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  *(v5 + 120) = sub_1D68ACBF4;
  *(v5 + 128) = v17;
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  *(v5 + 152) = sub_1D68ACC00;
  *(v5 + 160) = v18;

  sub_1D68ACBB0(a2);

  sub_1D68ACBB0(a2);

  sub_1D68ACBB0(a2);

  sub_1D68ACBB0(a2);

  sub_1D68ACBB0(a2);

  sub_1D68ACBB0(a2);
  return v5;
}

uint64_t sub_1D68A9928(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E6720];
  sub_1D68A8C44(0, qword_1EDF42030, type metadata accessor for FeedHeadline, MEMORY[0x1E69E6720]);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v10);
  v12 = &v38 - v11;

  *(v3 + 16) = sub_1D725F7AC();
  *(v3 + 24) = v13;
  *(v3 + 32) = 1;
  v42 = sub_1D68A8C44;
  v43 = v6;
  sub_1D68AE904(a2, v12, qword_1EDF42030, type metadata accessor for FeedHeadline, v6, sub_1D68A8C44);
  v14 = *(v8 + 80);
  v40 = v9;
  v41 = v14;
  v15 = (v14 + 24) & ~v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  sub_1D68AE978(v12, v16 + v15, qword_1EDF42030, type metadata accessor for FeedHeadline);
  *(v3 + 40) = sub_1D68AD214;
  *(v3 + 48) = v16;
  v39 = a2;
  v17 = v42;
  sub_1D68AE904(a2, v12, qword_1EDF42030, type metadata accessor for FeedHeadline, v6, v42);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  v38 = a1;
  sub_1D68AE978(v12, v18 + v15, qword_1EDF42030, type metadata accessor for FeedHeadline);
  *(v3 + 56) = sub_1D68AD248;
  *(v3 + 64) = v18;
  v19 = a2;
  v20 = v43;
  sub_1D68AE904(v19, v12, qword_1EDF42030, type metadata accessor for FeedHeadline, v43, v17);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  sub_1D68AE978(v12, v21 + v15, qword_1EDF42030, type metadata accessor for FeedHeadline);
  *(v3 + 72) = sub_1D68AD290;
  *(v3 + 80) = v21;
  v22 = v39;
  v23 = v20;
  v24 = v42;
  sub_1D68AE904(v39, v12, qword_1EDF42030, type metadata accessor for FeedHeadline, v23, v42);
  v25 = swift_allocObject();
  v26 = v38;
  *(v25 + 16) = v38;
  sub_1D68AE978(v12, v25 + v15, qword_1EDF42030, type metadata accessor for FeedHeadline);
  *(v3 + 88) = sub_1D68AD2C4;
  *(v3 + 96) = v25;
  v27 = v22;
  v28 = v43;
  sub_1D68AE904(v27, v12, qword_1EDF42030, type metadata accessor for FeedHeadline, v43, v24);
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  sub_1D68AE978(v12, v29 + v15, qword_1EDF42030, type metadata accessor for FeedHeadline);
  *(v3 + 136) = sub_1D68AD2F8;
  *(v3 + 144) = v29;
  v30 = v39;
  v31 = v28;
  v32 = v42;
  sub_1D68AE904(v39, v12, qword_1EDF42030, type metadata accessor for FeedHeadline, v31, v42);
  v33 = swift_allocObject();
  *(v33 + 16) = v26;
  sub_1D68AE978(v12, v33 + v15, qword_1EDF42030, type metadata accessor for FeedHeadline);
  *(v3 + 104) = sub_1D68AD32C;
  *(v3 + 112) = v33;

  v34 = v30;
  sub_1D68AE904(v30, v12, qword_1EDF42030, type metadata accessor for FeedHeadline, v43, v32);
  v35 = swift_allocObject();
  *(v35 + 16) = v26;
  sub_1D68AE978(v12, v35 + v15, qword_1EDF42030, type metadata accessor for FeedHeadline);
  *(v3 + 120) = sub_1D68AD360;
  *(v3 + 128) = v35;
  sub_1D68AE978(v34, v12, qword_1EDF42030, type metadata accessor for FeedHeadline);
  v36 = swift_allocObject();
  *(v36 + 16) = v26;
  sub_1D68AE978(v12, v36 + v15, qword_1EDF42030, type metadata accessor for FeedHeadline);
  *(v3 + 152) = sub_1D68AD678;
  *(v3 + 160) = v36;
  swift_retain_n();
  return v3;
}

uint64_t sub_1D68A9DE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E6720];
  sub_1D68A8C44(0, &unk_1EDF35458, type metadata accessor for FeedHeadlineAudioCommandContext, MEMORY[0x1E69E6720]);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v10);
  v12 = &v38 - v11;

  *(v3 + 16) = sub_1D725F7AC();
  *(v3 + 24) = v13;
  *(v3 + 32) = 1;
  v42 = sub_1D68A8C44;
  v43 = v6;
  sub_1D68AE904(a2, v12, &unk_1EDF35458, type metadata accessor for FeedHeadlineAudioCommandContext, v6, sub_1D68A8C44);
  v14 = *(v8 + 80);
  v40 = v9;
  v41 = v14;
  v15 = (v14 + 24) & ~v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  sub_1D68AE978(v12, v16 + v15, &unk_1EDF35458, type metadata accessor for FeedHeadlineAudioCommandContext);
  *(v3 + 40) = sub_1D68AD7A4;
  *(v3 + 48) = v16;
  v39 = a2;
  v17 = v42;
  sub_1D68AE904(a2, v12, &unk_1EDF35458, type metadata accessor for FeedHeadlineAudioCommandContext, v6, v42);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  v38 = a1;
  sub_1D68AE978(v12, v18 + v15, &unk_1EDF35458, type metadata accessor for FeedHeadlineAudioCommandContext);
  *(v3 + 56) = sub_1D68AD7D8;
  *(v3 + 64) = v18;
  v19 = a2;
  v20 = v43;
  sub_1D68AE904(v19, v12, &unk_1EDF35458, type metadata accessor for FeedHeadlineAudioCommandContext, v43, v17);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  sub_1D68AE978(v12, v21 + v15, &unk_1EDF35458, type metadata accessor for FeedHeadlineAudioCommandContext);
  *(v3 + 72) = sub_1D68AD820;
  *(v3 + 80) = v21;
  v22 = v39;
  v23 = v20;
  v24 = v42;
  sub_1D68AE904(v39, v12, &unk_1EDF35458, type metadata accessor for FeedHeadlineAudioCommandContext, v23, v42);
  v25 = swift_allocObject();
  v26 = v38;
  *(v25 + 16) = v38;
  sub_1D68AE978(v12, v25 + v15, &unk_1EDF35458, type metadata accessor for FeedHeadlineAudioCommandContext);
  *(v3 + 88) = sub_1D68AD854;
  *(v3 + 96) = v25;
  v27 = v22;
  v28 = v43;
  sub_1D68AE904(v27, v12, &unk_1EDF35458, type metadata accessor for FeedHeadlineAudioCommandContext, v43, v24);
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  sub_1D68AE978(v12, v29 + v15, &unk_1EDF35458, type metadata accessor for FeedHeadlineAudioCommandContext);
  *(v3 + 136) = sub_1D68AD888;
  *(v3 + 144) = v29;
  v30 = v39;
  v31 = v28;
  v32 = v42;
  sub_1D68AE904(v39, v12, &unk_1EDF35458, type metadata accessor for FeedHeadlineAudioCommandContext, v31, v42);
  v33 = swift_allocObject();
  *(v33 + 16) = v26;
  sub_1D68AE978(v12, v33 + v15, &unk_1EDF35458, type metadata accessor for FeedHeadlineAudioCommandContext);
  *(v3 + 104) = sub_1D68AD8BC;
  *(v3 + 112) = v33;

  v34 = v30;
  sub_1D68AE904(v30, v12, &unk_1EDF35458, type metadata accessor for FeedHeadlineAudioCommandContext, v43, v32);
  v35 = swift_allocObject();
  *(v35 + 16) = v26;
  sub_1D68AE978(v12, v35 + v15, &unk_1EDF35458, type metadata accessor for FeedHeadlineAudioCommandContext);
  *(v3 + 120) = sub_1D68AD8F0;
  *(v3 + 128) = v35;
  sub_1D68AE978(v34, v12, &unk_1EDF35458, type metadata accessor for FeedHeadlineAudioCommandContext);
  v36 = swift_allocObject();
  *(v36 + 16) = v26;
  sub_1D68AE978(v12, v36 + v15, &unk_1EDF35458, type metadata accessor for FeedHeadlineAudioCommandContext);
  *(v3 + 152) = sub_1D68ADC10;
  *(v3 + 160) = v36;
  swift_retain_n();
  return v3;
}

uint64_t sub_1D68AA2A8(uint64_t a1, __int128 *a2)
{
  v3 = v2;

  *(v3 + 16) = sub_1D725F7AC();
  *(v3 + 24) = v6;
  *(v3 + 32) = 1;
  v7 = MEMORY[0x1E69E6720];
  sub_1D68AE904(a2, &v65, &qword_1EDF12E30, &type metadata for FeedPuzzle, MEMORY[0x1E69E6720], sub_1D68AFCB0);
  v8 = swift_allocObject();
  v9 = v73;
  *(v8 + 168) = v74;
  v10 = v76;
  *(v8 + 184) = v75;
  *(v8 + 200) = v10;
  *(v8 + 216) = v77;
  v11 = v69;
  *(v8 + 104) = v70;
  v12 = v72;
  *(v8 + 120) = v71;
  *(v8 + 136) = v12;
  *(v8 + 152) = v9;
  v13 = v65;
  *(v8 + 40) = v66;
  v14 = v68;
  *(v8 + 56) = v67;
  *(v8 + 72) = v14;
  *(v8 + 88) = v11;
  *(v8 + 16) = a1;
  *(v8 + 24) = v13;
  *(v3 + 40) = sub_1D68B048C;
  *(v3 + 48) = v8;
  sub_1D68AE904(a2, &v65, &qword_1EDF12E30, &type metadata for FeedPuzzle, v7, sub_1D68AFCB0);
  v15 = swift_allocObject();
  v16 = v73;
  *(v15 + 168) = v74;
  v17 = v76;
  *(v15 + 184) = v75;
  *(v15 + 200) = v17;
  *(v15 + 216) = v77;
  v18 = v69;
  *(v15 + 104) = v70;
  v19 = v72;
  *(v15 + 120) = v71;
  *(v15 + 136) = v19;
  *(v15 + 152) = v16;
  v20 = v65;
  *(v15 + 40) = v66;
  v21 = v68;
  *(v15 + 56) = v67;
  *(v15 + 72) = v21;
  *(v15 + 88) = v18;
  *(v15 + 16) = a1;
  *(v15 + 24) = v20;
  *(v3 + 56) = sub_1D68B0494;
  *(v3 + 64) = v15;
  sub_1D68AE904(a2, &v65, &qword_1EDF12E30, &type metadata for FeedPuzzle, v7, sub_1D68AFCB0);
  v22 = swift_allocObject();
  v23 = v73;
  *(v22 + 168) = v74;
  v24 = v76;
  *(v22 + 184) = v75;
  *(v22 + 200) = v24;
  *(v22 + 216) = v77;
  v25 = v69;
  *(v22 + 104) = v70;
  v26 = v72;
  *(v22 + 120) = v71;
  *(v22 + 136) = v26;
  *(v22 + 152) = v23;
  v27 = v65;
  *(v22 + 40) = v66;
  v28 = v68;
  *(v22 + 56) = v67;
  *(v22 + 72) = v28;
  *(v22 + 88) = v25;
  *(v22 + 16) = a1;
  *(v22 + 24) = v27;
  *(v3 + 72) = sub_1D68AE0E8;
  *(v3 + 80) = v22;
  sub_1D68AE904(a2, &v65, &qword_1EDF12E30, &type metadata for FeedPuzzle, v7, sub_1D68AFCB0);
  v29 = swift_allocObject();
  v30 = v73;
  *(v29 + 168) = v74;
  v31 = v76;
  *(v29 + 184) = v75;
  *(v29 + 200) = v31;
  *(v29 + 216) = v77;
  v32 = v69;
  *(v29 + 104) = v70;
  v33 = v72;
  *(v29 + 120) = v71;
  *(v29 + 136) = v33;
  *(v29 + 152) = v30;
  v34 = v65;
  *(v29 + 40) = v66;
  v35 = v68;
  *(v29 + 56) = v67;
  *(v29 + 72) = v35;
  *(v29 + 88) = v32;
  *(v29 + 16) = a1;
  *(v29 + 24) = v34;
  *(v3 + 88) = sub_1D68AE0F4;
  *(v3 + 96) = v29;
  sub_1D68AE904(a2, &v65, &qword_1EDF12E30, &type metadata for FeedPuzzle, v7, sub_1D68AFCB0);
  v36 = swift_allocObject();
  v37 = v73;
  *(v36 + 168) = v74;
  v38 = v76;
  *(v36 + 184) = v75;
  *(v36 + 200) = v38;
  *(v36 + 216) = v77;
  v39 = v69;
  *(v36 + 104) = v70;
  v40 = v72;
  *(v36 + 120) = v71;
  *(v36 + 136) = v40;
  *(v36 + 152) = v37;
  v41 = v65;
  *(v36 + 40) = v66;
  v42 = v68;
  *(v36 + 56) = v67;
  *(v36 + 72) = v42;
  *(v36 + 88) = v39;
  *(v36 + 16) = a1;
  *(v36 + 24) = v41;
  *(v3 + 136) = sub_1D68AE100;
  *(v3 + 144) = v36;
  sub_1D68AE904(a2, &v65, &qword_1EDF12E30, &type metadata for FeedPuzzle, v7, sub_1D68AFCB0);
  v43 = swift_allocObject();
  v44 = v73;
  *(v43 + 168) = v74;
  v45 = v76;
  *(v43 + 184) = v75;
  *(v43 + 200) = v45;
  *(v43 + 216) = v77;
  v46 = v69;
  *(v43 + 104) = v70;
  v47 = v72;
  *(v43 + 120) = v71;
  *(v43 + 136) = v47;
  *(v43 + 152) = v44;
  v48 = v65;
  *(v43 + 40) = v66;
  v49 = v68;
  *(v43 + 56) = v67;
  *(v43 + 72) = v49;
  *(v43 + 88) = v46;
  *(v43 + 16) = a1;
  *(v43 + 24) = v48;
  *(v3 + 104) = sub_1D68AE10C;
  *(v3 + 112) = v43;

  sub_1D68AE904(a2, &v65, &qword_1EDF12E30, &type metadata for FeedPuzzle, v7, sub_1D68AFCB0);
  v50 = swift_allocObject();
  v51 = v73;
  *(v50 + 168) = v74;
  v52 = v76;
  *(v50 + 184) = v75;
  *(v50 + 200) = v52;
  *(v50 + 216) = v77;
  v53 = v69;
  *(v50 + 104) = v70;
  v54 = v72;
  *(v50 + 120) = v71;
  *(v50 + 136) = v54;
  *(v50 + 152) = v51;
  v55 = v65;
  *(v50 + 40) = v66;
  v56 = v68;
  *(v50 + 56) = v67;
  *(v50 + 72) = v56;
  *(v50 + 88) = v53;
  *(v50 + 16) = a1;
  *(v50 + 24) = v55;
  *(v3 + 120) = sub_1D68AE124;
  *(v3 + 128) = v50;
  v57 = swift_allocObject();
  v58 = a2[8];
  *(v57 + 168) = a2[9];
  v59 = a2[11];
  *(v57 + 184) = a2[10];
  *(v57 + 200) = v59;
  *(v57 + 216) = a2[12];
  v60 = a2[4];
  *(v57 + 104) = a2[5];
  v61 = a2[7];
  *(v57 + 120) = a2[6];
  *(v57 + 136) = v61;
  *(v57 + 152) = v58;
  v62 = *a2;
  *(v57 + 40) = a2[1];
  v63 = a2[3];
  *(v57 + 56) = a2[2];
  *(v57 + 72) = v63;
  *(v57 + 88) = v60;
  *(v57 + 16) = a1;
  *(v57 + 24) = v62;
  *(v3 + 152) = sub_1D68B04CC;
  *(v3 + 160) = v57;
  swift_retain_n();
  return v3;
}

uint64_t sub_1D68AA7F8(uint64_t a1, __int128 *a2)
{
  v3 = v2;

  *(v3 + 16) = sub_1D725F7AC();
  *(v3 + 24) = v6;
  *(v3 + 32) = 1;
  v7 = MEMORY[0x1E69E6720];
  sub_1D68AE904(a2, &v65, &qword_1EDF12E30, &type metadata for FeedPuzzle, MEMORY[0x1E69E6720], sub_1D68AFCB0);
  v8 = swift_allocObject();
  v9 = v73;
  *(v8 + 168) = v74;
  v10 = v76;
  *(v8 + 184) = v75;
  *(v8 + 200) = v10;
  *(v8 + 216) = v77;
  v11 = v69;
  *(v8 + 104) = v70;
  v12 = v72;
  *(v8 + 120) = v71;
  *(v8 + 136) = v12;
  *(v8 + 152) = v9;
  v13 = v65;
  *(v8 + 40) = v66;
  v14 = v68;
  *(v8 + 56) = v67;
  *(v8 + 72) = v14;
  *(v8 + 88) = v11;
  *(v8 + 16) = a1;
  *(v8 + 24) = v13;
  *(v3 + 40) = sub_1D68B048C;
  *(v3 + 48) = v8;
  sub_1D68AE904(a2, &v65, &qword_1EDF12E30, &type metadata for FeedPuzzle, v7, sub_1D68AFCB0);
  v15 = swift_allocObject();
  v16 = v73;
  *(v15 + 168) = v74;
  v17 = v76;
  *(v15 + 184) = v75;
  *(v15 + 200) = v17;
  *(v15 + 216) = v77;
  v18 = v69;
  *(v15 + 104) = v70;
  v19 = v72;
  *(v15 + 120) = v71;
  *(v15 + 136) = v19;
  *(v15 + 152) = v16;
  v20 = v65;
  *(v15 + 40) = v66;
  v21 = v68;
  *(v15 + 56) = v67;
  *(v15 + 72) = v21;
  *(v15 + 88) = v18;
  *(v15 + 16) = a1;
  *(v15 + 24) = v20;
  *(v3 + 56) = sub_1D68B0494;
  *(v3 + 64) = v15;
  sub_1D68AE904(a2, &v65, &qword_1EDF12E30, &type metadata for FeedPuzzle, v7, sub_1D68AFCB0);
  v22 = swift_allocObject();
  v23 = v73;
  *(v22 + 168) = v74;
  v24 = v76;
  *(v22 + 184) = v75;
  *(v22 + 200) = v24;
  *(v22 + 216) = v77;
  v25 = v69;
  *(v22 + 104) = v70;
  v26 = v72;
  *(v22 + 120) = v71;
  *(v22 + 136) = v26;
  *(v22 + 152) = v23;
  v27 = v65;
  *(v22 + 40) = v66;
  v28 = v68;
  *(v22 + 56) = v67;
  *(v22 + 72) = v28;
  *(v22 + 88) = v25;
  *(v22 + 16) = a1;
  *(v22 + 24) = v27;
  *(v3 + 72) = sub_1D68AE214;
  *(v3 + 80) = v22;
  sub_1D68AE904(a2, &v65, &qword_1EDF12E30, &type metadata for FeedPuzzle, v7, sub_1D68AFCB0);
  v29 = swift_allocObject();
  v30 = v73;
  *(v29 + 168) = v74;
  v31 = v76;
  *(v29 + 184) = v75;
  *(v29 + 200) = v31;
  *(v29 + 216) = v77;
  v32 = v69;
  *(v29 + 104) = v70;
  v33 = v72;
  *(v29 + 120) = v71;
  *(v29 + 136) = v33;
  *(v29 + 152) = v30;
  v34 = v65;
  *(v29 + 40) = v66;
  v35 = v68;
  *(v29 + 56) = v67;
  *(v29 + 72) = v35;
  *(v29 + 88) = v32;
  *(v29 + 16) = a1;
  *(v29 + 24) = v34;
  *(v3 + 88) = sub_1D68AE220;
  *(v3 + 96) = v29;
  sub_1D68AE904(a2, &v65, &qword_1EDF12E30, &type metadata for FeedPuzzle, v7, sub_1D68AFCB0);
  v36 = swift_allocObject();
  v37 = v73;
  *(v36 + 168) = v74;
  v38 = v76;
  *(v36 + 184) = v75;
  *(v36 + 200) = v38;
  *(v36 + 216) = v77;
  v39 = v69;
  *(v36 + 104) = v70;
  v40 = v72;
  *(v36 + 120) = v71;
  *(v36 + 136) = v40;
  *(v36 + 152) = v37;
  v41 = v65;
  *(v36 + 40) = v66;
  v42 = v68;
  *(v36 + 56) = v67;
  *(v36 + 72) = v42;
  *(v36 + 88) = v39;
  *(v36 + 16) = a1;
  *(v36 + 24) = v41;
  *(v3 + 136) = sub_1D68AE22C;
  *(v3 + 144) = v36;
  sub_1D68AE904(a2, &v65, &qword_1EDF12E30, &type metadata for FeedPuzzle, v7, sub_1D68AFCB0);
  v43 = swift_allocObject();
  v44 = v73;
  *(v43 + 168) = v74;
  v45 = v76;
  *(v43 + 184) = v75;
  *(v43 + 200) = v45;
  *(v43 + 216) = v77;
  v46 = v69;
  *(v43 + 104) = v70;
  v47 = v72;
  *(v43 + 120) = v71;
  *(v43 + 136) = v47;
  *(v43 + 152) = v44;
  v48 = v65;
  *(v43 + 40) = v66;
  v49 = v68;
  *(v43 + 56) = v67;
  *(v43 + 72) = v49;
  *(v43 + 88) = v46;
  *(v43 + 16) = a1;
  *(v43 + 24) = v48;
  *(v3 + 104) = sub_1D68AE238;
  *(v3 + 112) = v43;

  sub_1D68AE904(a2, &v65, &qword_1EDF12E30, &type metadata for FeedPuzzle, v7, sub_1D68AFCB0);
  v50 = swift_allocObject();
  v51 = v73;
  *(v50 + 168) = v74;
  v52 = v76;
  *(v50 + 184) = v75;
  *(v50 + 200) = v52;
  *(v50 + 216) = v77;
  v53 = v69;
  *(v50 + 104) = v70;
  v54 = v72;
  *(v50 + 120) = v71;
  *(v50 + 136) = v54;
  *(v50 + 152) = v51;
  v55 = v65;
  *(v50 + 40) = v66;
  v56 = v68;
  *(v50 + 56) = v67;
  *(v50 + 72) = v56;
  *(v50 + 88) = v53;
  *(v50 + 16) = a1;
  *(v50 + 24) = v55;
  *(v3 + 120) = sub_1D68AE250;
  *(v3 + 128) = v50;
  v57 = swift_allocObject();
  v58 = a2[8];
  *(v57 + 168) = a2[9];
  v59 = a2[11];
  *(v57 + 184) = a2[10];
  *(v57 + 200) = v59;
  *(v57 + 216) = a2[12];
  v60 = a2[4];
  *(v57 + 104) = a2[5];
  v61 = a2[7];
  *(v57 + 120) = a2[6];
  *(v57 + 136) = v61;
  *(v57 + 152) = v58;
  v62 = *a2;
  *(v57 + 40) = a2[1];
  v63 = a2[3];
  *(v57 + 56) = a2[2];
  *(v57 + 72) = v63;
  *(v57 + 88) = v60;
  *(v57 + 16) = a1;
  *(v57 + 24) = v62;
  *(v3 + 152) = sub_1D68B04CC;
  *(v3 + 160) = v57;
  swift_retain_n();
  return v3;
}

uint64_t sub_1D68AAD48(uint64_t a1, __int128 *a2)
{
  v3 = v2;

  *(v3 + 16) = sub_1D725F7AC();
  *(v3 + 24) = v6;
  *(v3 + 32) = 1;
  v7 = MEMORY[0x1E69E6720];
  sub_1D68AE904(a2, &v65, &qword_1EDF12E30, &type metadata for FeedPuzzle, MEMORY[0x1E69E6720], sub_1D68AFCB0);
  v8 = swift_allocObject();
  v9 = v73;
  *(v8 + 168) = v74;
  v10 = v76;
  *(v8 + 184) = v75;
  *(v8 + 200) = v10;
  *(v8 + 216) = v77;
  v11 = v69;
  *(v8 + 104) = v70;
  v12 = v72;
  *(v8 + 120) = v71;
  *(v8 + 136) = v12;
  *(v8 + 152) = v9;
  v13 = v65;
  *(v8 + 40) = v66;
  v14 = v68;
  *(v8 + 56) = v67;
  *(v8 + 72) = v14;
  *(v8 + 88) = v11;
  *(v8 + 16) = a1;
  *(v8 + 24) = v13;
  *(v3 + 40) = sub_1D68B048C;
  *(v3 + 48) = v8;
  sub_1D68AE904(a2, &v65, &qword_1EDF12E30, &type metadata for FeedPuzzle, v7, sub_1D68AFCB0);
  v15 = swift_allocObject();
  v16 = v73;
  *(v15 + 168) = v74;
  v17 = v76;
  *(v15 + 184) = v75;
  *(v15 + 200) = v17;
  *(v15 + 216) = v77;
  v18 = v69;
  *(v15 + 104) = v70;
  v19 = v72;
  *(v15 + 120) = v71;
  *(v15 + 136) = v19;
  *(v15 + 152) = v16;
  v20 = v65;
  *(v15 + 40) = v66;
  v21 = v68;
  *(v15 + 56) = v67;
  *(v15 + 72) = v21;
  *(v15 + 88) = v18;
  *(v15 + 16) = a1;
  *(v15 + 24) = v20;
  *(v3 + 56) = sub_1D68B0494;
  *(v3 + 64) = v15;
  sub_1D68AE904(a2, &v65, &qword_1EDF12E30, &type metadata for FeedPuzzle, v7, sub_1D68AFCB0);
  v22 = swift_allocObject();
  v23 = v73;
  *(v22 + 168) = v74;
  v24 = v76;
  *(v22 + 184) = v75;
  *(v22 + 200) = v24;
  *(v22 + 216) = v77;
  v25 = v69;
  *(v22 + 104) = v70;
  v26 = v72;
  *(v22 + 120) = v71;
  *(v22 + 136) = v26;
  *(v22 + 152) = v23;
  v27 = v65;
  *(v22 + 40) = v66;
  v28 = v68;
  *(v22 + 56) = v67;
  *(v22 + 72) = v28;
  *(v22 + 88) = v25;
  *(v22 + 16) = a1;
  *(v22 + 24) = v27;
  *(v3 + 72) = sub_1D68AE388;
  *(v3 + 80) = v22;
  sub_1D68AE904(a2, &v65, &qword_1EDF12E30, &type metadata for FeedPuzzle, v7, sub_1D68AFCB0);
  v29 = swift_allocObject();
  v30 = v73;
  *(v29 + 168) = v74;
  v31 = v76;
  *(v29 + 184) = v75;
  *(v29 + 200) = v31;
  *(v29 + 216) = v77;
  v32 = v69;
  *(v29 + 104) = v70;
  v33 = v72;
  *(v29 + 120) = v71;
  *(v29 + 136) = v33;
  *(v29 + 152) = v30;
  v34 = v65;
  *(v29 + 40) = v66;
  v35 = v68;
  *(v29 + 56) = v67;
  *(v29 + 72) = v35;
  *(v29 + 88) = v32;
  *(v29 + 16) = a1;
  *(v29 + 24) = v34;
  *(v3 + 88) = sub_1D68AE394;
  *(v3 + 96) = v29;
  sub_1D68AE904(a2, &v65, &qword_1EDF12E30, &type metadata for FeedPuzzle, v7, sub_1D68AFCB0);
  v36 = swift_allocObject();
  v37 = v73;
  *(v36 + 168) = v74;
  v38 = v76;
  *(v36 + 184) = v75;
  *(v36 + 200) = v38;
  *(v36 + 216) = v77;
  v39 = v69;
  *(v36 + 104) = v70;
  v40 = v72;
  *(v36 + 120) = v71;
  *(v36 + 136) = v40;
  *(v36 + 152) = v37;
  v41 = v65;
  *(v36 + 40) = v66;
  v42 = v68;
  *(v36 + 56) = v67;
  *(v36 + 72) = v42;
  *(v36 + 88) = v39;
  *(v36 + 16) = a1;
  *(v36 + 24) = v41;
  *(v3 + 136) = sub_1D68AE3A0;
  *(v3 + 144) = v36;
  sub_1D68AE904(a2, &v65, &qword_1EDF12E30, &type metadata for FeedPuzzle, v7, sub_1D68AFCB0);
  v43 = swift_allocObject();
  v44 = v73;
  *(v43 + 168) = v74;
  v45 = v76;
  *(v43 + 184) = v75;
  *(v43 + 200) = v45;
  *(v43 + 216) = v77;
  v46 = v69;
  *(v43 + 104) = v70;
  v47 = v72;
  *(v43 + 120) = v71;
  *(v43 + 136) = v47;
  *(v43 + 152) = v44;
  v48 = v65;
  *(v43 + 40) = v66;
  v49 = v68;
  *(v43 + 56) = v67;
  *(v43 + 72) = v49;
  *(v43 + 88) = v46;
  *(v43 + 16) = a1;
  *(v43 + 24) = v48;
  *(v3 + 104) = sub_1D68AE3AC;
  *(v3 + 112) = v43;

  sub_1D68AE904(a2, &v65, &qword_1EDF12E30, &type metadata for FeedPuzzle, v7, sub_1D68AFCB0);
  v50 = swift_allocObject();
  v51 = v73;
  *(v50 + 168) = v74;
  v52 = v76;
  *(v50 + 184) = v75;
  *(v50 + 200) = v52;
  *(v50 + 216) = v77;
  v53 = v69;
  *(v50 + 104) = v70;
  v54 = v72;
  *(v50 + 120) = v71;
  *(v50 + 136) = v54;
  *(v50 + 152) = v51;
  v55 = v65;
  *(v50 + 40) = v66;
  v56 = v68;
  *(v50 + 56) = v67;
  *(v50 + 72) = v56;
  *(v50 + 88) = v53;
  *(v50 + 16) = a1;
  *(v50 + 24) = v55;
  *(v3 + 120) = sub_1D68AE3C4;
  *(v3 + 128) = v50;
  v57 = swift_allocObject();
  v58 = a2[8];
  *(v57 + 168) = a2[9];
  v59 = a2[11];
  *(v57 + 184) = a2[10];
  *(v57 + 200) = v59;
  *(v57 + 216) = a2[12];
  v60 = a2[4];
  *(v57 + 104) = a2[5];
  v61 = a2[7];
  *(v57 + 120) = a2[6];
  *(v57 + 136) = v61;
  *(v57 + 152) = v58;
  v62 = *a2;
  *(v57 + 40) = a2[1];
  v63 = a2[3];
  *(v57 + 56) = a2[2];
  *(v57 + 72) = v63;
  *(v57 + 88) = v60;
  *(v57 + 16) = a1;
  *(v57 + 24) = v62;
  *(v3 + 152) = sub_1D68B04CC;
  *(v3 + 160) = v57;
  swift_retain_n();
  return v3;
}