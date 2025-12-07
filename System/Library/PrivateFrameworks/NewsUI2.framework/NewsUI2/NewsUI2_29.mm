uint64_t sub_2189FF0C4(uint64_t a1)
{
  v32 = sub_219BF1D54();
  v3 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x277D84F90];
  v33 = *(a1 + 16);
  if (v33)
  {
    v6 = a1;
    v25 = v1;
    v35 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v7 = a1 + 64;
    result = sub_219BF7174();
    v8 = result;
    v9 = 0;
    v10 = *(a1 + 36);
    v29 = a1;
    v30 = v3;
    v27 = v3 + 8;
    v28 = v3 + 16;
    v26 = a1 + 72;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v6 + 32))
    {
      v12 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_21;
      }

      if (v10 != *(v6 + 36))
      {
        goto LABEL_22;
      }

      v34 = v9;
      v13 = *(v6 + 56);
      v15 = v30;
      v14 = v31;
      v16 = v32;
      (*(v30 + 16))(v31, v13 + *(v30 + 72) * v8, v32);
      sub_219BF1D34();
      (*(v15 + 8))(v14, v16);
      sub_219BF73D4();
      sub_219BF7414();
      v17 = v29;
      sub_219BF7424();
      result = sub_219BF73E4();
      v11 = 1 << *(v17 + 32);
      if (v8 >= v11)
      {
        goto LABEL_23;
      }

      v18 = *(v7 + 8 * v12);
      if ((v18 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v6 = v17;
      if (v10 != *(v17 + 36))
      {
        goto LABEL_25;
      }

      v19 = v18 & (-2 << (v8 & 0x3F));
      if (v19)
      {
        v11 = __clz(__rbit64(v19)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v12 << 6;
        v21 = v12 + 1;
        v22 = (v26 + 8 * v12);
        while (v21 < (v11 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_2187BC250(v8, v10, 0);
            v11 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        result = sub_2187BC250(v8, v10, 0);
      }

LABEL_4:
      v9 = v34 + 1;
      v8 = v11;
      if (v34 + 1 == v33)
      {
        return v35;
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

uint64_t sub_2189FF3B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v1232 = a5;
  v1180 = a4;
  v1229 = a3;
  v1230 = a2;
  v1233 = a1;
  v1231 = a6;
  v1135 = type metadata accessor for TopicRecipesTagFeedGroup(0);
  MEMORY[0x28223BE20](v1135);
  v1179 = v1087 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1134 = type metadata accessor for TrendingRecipesTagFeedGroup(0);
  MEMORY[0x28223BE20](v1134);
  v1178 = v1087 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1133 = type metadata accessor for SavedRecipesTagFeedGroup(0);
  MEMORY[0x28223BE20](v1133);
  v1177 = v1087 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1132 = type metadata accessor for LatestRecipesTagFeedGroup(0);
  MEMORY[0x28223BE20](v1132);
  v1176 = v1087 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1131 = type metadata accessor for SponsoredBannerTagFeedGroup(0);
  MEMORY[0x28223BE20](v1131);
  v1175 = v1087 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1130 = type metadata accessor for AffinityTagFeedGroup(0);
  MEMORY[0x28223BE20](v1130);
  v1174 = v1087 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1129 = type metadata accessor for PuzzleScoreboardTagFeedGroup(0);
  MEMORY[0x28223BE20](v1129);
  v1173 = v1087 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1128 = type metadata accessor for PuzzleFullArchiveTagFeedGroup(0);
  MEMORY[0x28223BE20](v1128);
  v1172 = v1087 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1127 = type metadata accessor for PuzzleFeaturedTagFeedGroup(0);
  MEMORY[0x28223BE20](v1127);
  v1171 = v1087 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1126 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup(0);
  MEMORY[0x28223BE20](v1126);
  v1170 = v1087 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1125 = type metadata accessor for PuzzleArchiveTagFeedGroup(0);
  MEMORY[0x28223BE20](v1125);
  v1169 = v1087 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1138 = sub_219BED8D4();
  v1137 = *(v1138 - 8);
  MEMORY[0x28223BE20](v1138);
  v1181 = v1087 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1124 = type metadata accessor for PuzzleListTagFeedGroup(0);
  MEMORY[0x28223BE20](v1124);
  v1136 = v1087 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1123 = type metadata accessor for SportsEventTopicTagFeedGroup(0);
  MEMORY[0x28223BE20](v1123);
  v1168 = v1087 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1122 = type metadata accessor for SportsMastheadTagFeedGroup(0);
  MEMORY[0x28223BE20](v1122);
  v1167 = v1087 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1121 = type metadata accessor for SportsOnboardingTagFeedGroup(0);
  MEMORY[0x28223BE20](v1121);
  v1166 = v1087 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1120 = type metadata accessor for DateRangeTagFeedGroup(0);
  MEMORY[0x28223BE20](v1120);
  v1165 = v1087 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1119 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup(0);
  MEMORY[0x28223BE20](v1119);
  v1164 = v1087 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1118 = type metadata accessor for RecentStoriesTagFeedGroup(0);
  MEMORY[0x28223BE20](v1118);
  v1163 = v1087 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1117 = type metadata accessor for ForYouRecipesTagFeedGroup(0);
  MEMORY[0x28223BE20](v1117);
  v1162 = v1087 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1116 = type metadata accessor for ChannelRecipesTagFeedGroup(0);
  MEMORY[0x28223BE20](v1116);
  v1161 = v1087 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1115 = type metadata accessor for ForYouTagFeedGroup(0);
  MEMORY[0x28223BE20](v1115);
  v1160 = v1087 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1114 = type metadata accessor for HighlightsTagFeedGroup(0);
  MEMORY[0x28223BE20](v1114);
  v1159 = v1087 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1113 = type metadata accessor for SportsEventArticlesTagFeedGroup(0);
  MEMORY[0x28223BE20](v1113);
  v1158 = v1087 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1112 = type metadata accessor for SportsKeyPlayersTagFeedGroup(0);
  MEMORY[0x28223BE20](v1112);
  v1157 = v1087 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1111 = type metadata accessor for SportsInjuryReportsTagFeedGroup(0);
  MEMORY[0x28223BE20](v1111);
  v1156 = v1087 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1110 = type metadata accessor for SportsEventInfoTagFeedGroup(0);
  MEMORY[0x28223BE20](v1110);
  v1155 = v1087 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1109 = type metadata accessor for SportsBoxScoresTagFeedGroup(0);
  MEMORY[0x28223BE20](v1109);
  v1154 = v1087 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1108 = type metadata accessor for SportsBracketTagFeedGroup(0);
  MEMORY[0x28223BE20](v1108);
  v1153 = v1087 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1107 = type metadata accessor for SportsStandingsTagFeedGroup(0);
  MEMORY[0x28223BE20](v1107);
  v1152 = v1087 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1106 = type metadata accessor for MySportsTopicTagFeedGroup(0);
  MEMORY[0x28223BE20](v1106);
  v1151 = v1087 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1105 = type metadata accessor for SportsLinksTagFeedGroup(0);
  MEMORY[0x28223BE20](v1105);
  v1150 = v1087 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1104 = type metadata accessor for SportsScoresTagFeedGroup(0);
  MEMORY[0x28223BE20](v1104);
  v1149 = v1087 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1103 = type metadata accessor for SportsFavoritesTagFeedGroup(0);
  MEMORY[0x28223BE20](v1103);
  v1148 = v1087 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1102 = type metadata accessor for SportsTopStoriesTagFeedGroup(0);
  MEMORY[0x28223BE20](v1102);
  v1147 = v1087 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1101 = type metadata accessor for SportsScheduleTagFeedGroup(0);
  MEMORY[0x28223BE20](v1101);
  v1146 = v1087 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1100 = type metadata accessor for SportsNavigationTagFeedGroup(0);
  MEMORY[0x28223BE20](v1100);
  v1145 = v1087 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1099 = type metadata accessor for SportsRecordTagFeedGroup(0);
  MEMORY[0x28223BE20](v1099);
  v1144 = v1087 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1096 = type metadata accessor for CuratedTagFeedGroup(0);
  MEMORY[0x28223BE20](v1096);
  v1143 = v1087 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1098 = sub_219BED544();
  v1097 = *(v1098 - 8);
  MEMORY[0x28223BE20](v1098);
  v1095 = v1087 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1094 = type metadata accessor for WeatherTagFeedGroup(0);
  MEMORY[0x28223BE20](v1094);
  v1142 = v1087 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1091 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup(0);
  MEMORY[0x28223BE20](v1091);
  v1141 = v1087 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1089 = type metadata accessor for ChannelSectionTagFeedGroup(0);
  MEMORY[0x28223BE20](v1089);
  v1140 = v1087 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1092 = type metadata accessor for IssueListTagFeedGroup(0);
  MEMORY[0x28223BE20](v1092);
  v1090 = v1087 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v1093 = (v1087 - v51);
  v1088 = type metadata accessor for PromotedArticleListTagFeedGroup(0);
  MEMORY[0x28223BE20](v1088);
  v1139 = v1087 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1236 = type metadata accessor for TagFeedModel(0);
  v1225 = *(v1236 - 8);
  MEMORY[0x28223BE20](v1236);
  v1234 = v1087 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v56 = v1087 - v55;
  sub_21898BF70(0);
  v1235 = v57;
  v58 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v1224 = v1087 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v1223 = v1087 - v61;
  MEMORY[0x28223BE20](v62);
  v1222 = v1087 - v63;
  MEMORY[0x28223BE20](v64);
  v1221 = v1087 - v65;
  MEMORY[0x28223BE20](v66);
  v1220 = v1087 - v67;
  MEMORY[0x28223BE20](v68);
  v1219 = v1087 - v69;
  MEMORY[0x28223BE20](v70);
  v1218 = v1087 - v71;
  MEMORY[0x28223BE20](v72);
  v1217 = v1087 - v73;
  MEMORY[0x28223BE20](v74);
  v1216 = v1087 - v75;
  MEMORY[0x28223BE20](v76);
  v1215 = v1087 - v77;
  MEMORY[0x28223BE20](v78);
  v1214 = v1087 - v79;
  MEMORY[0x28223BE20](v80);
  v1182 = v1087 - v81;
  MEMORY[0x28223BE20](v82);
  v1213 = v1087 - v83;
  MEMORY[0x28223BE20](v84);
  v1212 = v1087 - v85;
  MEMORY[0x28223BE20](v86);
  v1211 = v1087 - v87;
  MEMORY[0x28223BE20](v88);
  v1210 = v1087 - v89;
  MEMORY[0x28223BE20](v90);
  v1209 = v1087 - v91;
  MEMORY[0x28223BE20](v92);
  v1208 = v1087 - v93;
  MEMORY[0x28223BE20](v94);
  v1207 = v1087 - v95;
  MEMORY[0x28223BE20](v96);
  v1206 = v1087 - v97;
  MEMORY[0x28223BE20](v98);
  v1205 = v1087 - v99;
  MEMORY[0x28223BE20](v100);
  v1204 = v1087 - v101;
  MEMORY[0x28223BE20](v102);
  v1203 = v1087 - v103;
  MEMORY[0x28223BE20](v104);
  v1202 = v1087 - v105;
  MEMORY[0x28223BE20](v106);
  v1201 = v1087 - v107;
  MEMORY[0x28223BE20](v108);
  v1200 = v1087 - v109;
  MEMORY[0x28223BE20](v110);
  v1199 = v1087 - v111;
  MEMORY[0x28223BE20](v112);
  v1198 = v1087 - v113;
  MEMORY[0x28223BE20](v114);
  v1197 = v1087 - v115;
  MEMORY[0x28223BE20](v116);
  v1196 = v1087 - v117;
  MEMORY[0x28223BE20](v118);
  v1195 = v1087 - v119;
  MEMORY[0x28223BE20](v120);
  v1194 = v1087 - v121;
  MEMORY[0x28223BE20](v122);
  v1193 = v1087 - v123;
  MEMORY[0x28223BE20](v124);
  v1192 = v1087 - v125;
  MEMORY[0x28223BE20](v126);
  v1191 = v1087 - v127;
  MEMORY[0x28223BE20](v128);
  v1190 = v1087 - v129;
  MEMORY[0x28223BE20](v130);
  v1189 = v1087 - v131;
  MEMORY[0x28223BE20](v132);
  v1188 = v1087 - v133;
  MEMORY[0x28223BE20](v134);
  v1187 = v1087 - v135;
  MEMORY[0x28223BE20](v136);
  v1186 = v1087 - v137;
  MEMORY[0x28223BE20](v138);
  v1185 = v1087 - v139;
  MEMORY[0x28223BE20](v140);
  v1184 = v1087 - v141;
  MEMORY[0x28223BE20](v142);
  v1183 = v1087 - v143;
  sub_21898BEA4(0);
  MEMORY[0x28223BE20](v144 - 8);
  v1087[42] = v1087 - ((v145 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v146);
  v1087[41] = v1087 - v147;
  MEMORY[0x28223BE20](v148);
  v1087[40] = v1087 - v149;
  MEMORY[0x28223BE20](v150);
  v1087[39] = v1087 - v151;
  MEMORY[0x28223BE20](v152);
  v1087[38] = v1087 - v153;
  MEMORY[0x28223BE20](v154);
  v1087[37] = v1087 - v155;
  MEMORY[0x28223BE20](v156);
  v1087[36] = v1087 - v157;
  MEMORY[0x28223BE20](v158);
  v1087[35] = v1087 - v159;
  MEMORY[0x28223BE20](v160);
  v1087[34] = v1087 - v161;
  MEMORY[0x28223BE20](v162);
  v1087[33] = v1087 - v163;
  MEMORY[0x28223BE20](v164);
  v1087[32] = v1087 - v165;
  MEMORY[0x28223BE20](v166);
  v1087[1] = v1087 - v167;
  MEMORY[0x28223BE20](v168);
  v1087[31] = v1087 - v169;
  MEMORY[0x28223BE20](v170);
  v1087[30] = v1087 - v171;
  MEMORY[0x28223BE20](v172);
  v1087[29] = v1087 - v173;
  MEMORY[0x28223BE20](v174);
  v1087[28] = v1087 - v175;
  MEMORY[0x28223BE20](v176);
  v1087[27] = v1087 - v177;
  MEMORY[0x28223BE20](v178);
  v1087[26] = v1087 - v179;
  MEMORY[0x28223BE20](v180);
  v1087[25] = v1087 - v181;
  MEMORY[0x28223BE20](v182);
  v1087[24] = v1087 - v183;
  MEMORY[0x28223BE20](v184);
  v1087[23] = v1087 - v185;
  MEMORY[0x28223BE20](v186);
  v1087[22] = v1087 - v187;
  MEMORY[0x28223BE20](v188);
  v1087[21] = v1087 - v189;
  MEMORY[0x28223BE20](v190);
  v1087[20] = v1087 - v191;
  MEMORY[0x28223BE20](v192);
  v1087[19] = v1087 - v193;
  MEMORY[0x28223BE20](v194);
  v1087[18] = v1087 - v195;
  MEMORY[0x28223BE20](v196);
  v1087[17] = v1087 - v197;
  MEMORY[0x28223BE20](v198);
  v1087[16] = v1087 - v199;
  MEMORY[0x28223BE20](v200);
  v1087[15] = v1087 - v201;
  MEMORY[0x28223BE20](v202);
  v1087[14] = v1087 - v203;
  MEMORY[0x28223BE20](v204);
  v1087[13] = v1087 - v205;
  MEMORY[0x28223BE20](v206);
  v1087[12] = v1087 - v207;
  MEMORY[0x28223BE20](v208);
  v1087[11] = v1087 - v209;
  MEMORY[0x28223BE20](v210);
  v1087[10] = v1087 - v211;
  MEMORY[0x28223BE20](v212);
  v1087[9] = v1087 - v213;
  MEMORY[0x28223BE20](v214);
  v1087[8] = v1087 - v215;
  MEMORY[0x28223BE20](v216);
  v1087[7] = v1087 - v217;
  MEMORY[0x28223BE20](v218);
  v1087[6] = v1087 - v219;
  MEMORY[0x28223BE20](v220);
  v1087[5] = v1087 - v221;
  MEMORY[0x28223BE20](v222);
  v1087[4] = v1087 - v223;
  MEMORY[0x28223BE20](v224);
  v1087[3] = v1087 - v225;
  MEMORY[0x28223BE20](v226);
  v1087[2] = v1087 - v227;
  MEMORY[0x28223BE20](v228);
  v229 = sub_219BF1904();
  v230 = *(v229 - 8);
  v1227 = v229;
  v1228 = v230;
  MEMORY[0x28223BE20](v229);
  v1226 = v1087 - ((v231 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = type metadata accessor for ArticleListTagFeedGroup(0);
  MEMORY[0x28223BE20](v232);
  v234 = v1087 - ((v233 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = type metadata accessor for PaywallTagFeedGroup(0);
  MEMORY[0x28223BE20](v235);
  v237 = v1087 - ((v236 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v238);
  v240 = (v1087 - v239);
  v241 = type metadata accessor for TagFeedGroup(0);
  MEMORY[0x28223BE20](v241);
  v243 = v1087 - ((v242 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A129D0(v1233, v243, type metadata accessor for TagFeedGroup);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v602 = v1139;
      sub_218A12A38(v243, v1139, type metadata accessor for PromotedArticleListTagFeedGroup);
      v603 = swift_allocBox();
      sub_218A129D0(v602, v604, type metadata accessor for PromotedArticleListTagFeedGroup);
      v605 = MEMORY[0x277D84F90];
      v606 = sub_2194AE960(MEMORY[0x277D84F90]);
      v607 = v1226;
      sub_219BED874();
      v608 = sub_219BF18F4();
      MEMORY[0x28223BE20](v608);
      v609 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v609;
      v1087[-4] = v1229;
      v1087[-3] = v603 | 4;
      v1087[-2] = v606;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v608);
      v611 = v610;

      (*(v1228 + 8))(v607, v1227);
      v1238 = v603 | 4;
      v612 = *(v611 + 16);
      if (v612)
      {
        v1237 = v605;
        v1233 = v603;

        sub_218C33FA0(v612);
        v613 = *(v1225 + 80);
        v1232 = v611;
        v614 = v611 + ((v613 + 32) & ~v613);
        v615 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v614, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v616 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v616 + 16) + 1, 1);
            v616 = v1237;
          }

          v618 = *(v616 + 16);
          v617 = *(v616 + 24);
          if (v618 >= v617 >> 1)
          {
            sub_218C342A8((v617 > 1), v618 + 1, 1);
            v616 = v1237;
          }

          *(v616 + 16) = v618 + 1;
          (*(v58 + 32))(v616 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v618, v1184, v1235);
          v1237 = v616;
          v614 += v615;
          --v612;
        }

        while (v612);
      }

      else
      {

        v616 = MEMORY[0x277D84F90];
      }

      v1041 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1042 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v616, v1235, v1041, v1042);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for PromotedArticleListTagFeedGroup;
      v1002 = &v1171;
      goto LABEL_442;
    case 2u:
      v556 = v1093;
      sub_218A12A38(v243, v1093, type metadata accessor for IssueListTagFeedGroup);
      sub_218A124B0(0);
      v557 = swift_allocBox();
      sub_218A129D0(v556, v1090, type metadata accessor for IssueListTagFeedGroup);
      sub_2186CC14C(&unk_280ECAA40, type metadata accessor for IssueListTagFeedGroup, &unk_219C97C28);
      sub_2186CC14C(qword_280ECAA50, type metadata accessor for IssueListTagFeedGroup, &unk_219C97C00);
      result = sub_219BEDE74();
      v558 = v1230;
      if (*(v1230 + 16))
      {
        result = sub_21870F700(*v556, v556[1]);
        if (v559)
        {
          v560 = *(*(v558 + 56) + 8 * result);

          sub_218A0BEE8(v557 | 0x1000000000000000, v560);

          v561 = type metadata accessor for IssueListTagFeedGroup;
          v562 = v556;
          return sub_218A12450(v562, v561);
        }
      }

      else
      {
        __break(1u);
LABEL_446:
        __break(1u);
      }

      __break(1u);
LABEL_448:
      __break(1u);
      goto LABEL_449;
    case 3u:
      v580 = v1140;
      sub_218A12A38(v243, v1140, type metadata accessor for ChannelSectionTagFeedGroup);
      v581 = swift_allocBox();
      sub_218A129D0(v580, v582, type metadata accessor for ChannelSectionTagFeedGroup);
      v583 = MEMORY[0x277D84F90];
      v584 = sub_2194AE960(MEMORY[0x277D84F90]);
      v585 = v1226;
      sub_219BED874();
      v586 = sub_219BF18F4();
      MEMORY[0x28223BE20](v586);
      v587 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v587;
      v1087[-4] = v1229;
      v1087[-3] = v581 | 0x1000000000000002;
      v1087[-2] = v584;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v586);
      v589 = v588;

      (*(v1228 + 8))(v585, v1227);
      v1238 = v581 | 0x1000000000000002;
      v590 = *(v589 + 16);
      if (v590)
      {
        v1237 = v583;
        v1233 = v581;

        sub_218C33FA0(v590);
        v591 = *(v1225 + 80);
        v1232 = v589;
        v592 = v589 + ((v591 + 32) & ~v591);
        v593 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v592, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v594 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v594 + 16) + 1, 1);
            v594 = v1237;
          }

          v596 = *(v594 + 16);
          v595 = *(v594 + 24);
          if (v596 >= v595 >> 1)
          {
            sub_218C342A8((v595 > 1), v596 + 1, 1);
            v594 = v1237;
          }

          *(v594 + 16) = v596 + 1;
          (*(v58 + 32))(v594 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v596, v1185, v1235);
          v1237 = v594;
          v592 += v593;
          --v590;
        }

        while (v590);
      }

      else
      {

        v594 = MEMORY[0x277D84F90];
      }

      v1037 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1038 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v594, v1235, v1037, v1038);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for ChannelSectionTagFeedGroup;
      v1002 = &v1172;
      goto LABEL_442;
    case 4u:
      v452 = v1141;
      sub_218A12A38(v243, v1141, type metadata accessor for ChannelSectionDirectoryTagFeedGroup);
      v453 = swift_allocBox();
      sub_218A129D0(v452, v454, type metadata accessor for ChannelSectionDirectoryTagFeedGroup);
      v455 = MEMORY[0x277D84F90];
      v456 = sub_2194AE960(MEMORY[0x277D84F90]);
      v457 = v1226;
      sub_219BED874();
      v458 = sub_219BF18F4();
      MEMORY[0x28223BE20](v458);
      v459 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v459;
      v1087[-4] = v1229;
      v1087[-3] = v453 | 0x1000000000000004;
      v1087[-2] = v456;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v458);
      v461 = v460;

      (*(v1228 + 8))(v457, v1227);
      v1238 = v453 | 0x1000000000000004;
      v462 = *(v461 + 16);
      if (v462)
      {
        v1237 = v455;
        v1233 = v453;

        sub_218C33FA0(v462);
        v463 = *(v1225 + 80);
        v1232 = v461;
        v464 = v461 + ((v463 + 32) & ~v463);
        v465 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v464, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v466 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v466 + 16) + 1, 1);
            v466 = v1237;
          }

          v468 = *(v466 + 16);
          v467 = *(v466 + 24);
          if (v468 >= v467 >> 1)
          {
            sub_218C342A8((v467 > 1), v468 + 1, 1);
            v466 = v1237;
          }

          *(v466 + 16) = v468 + 1;
          (*(v58 + 32))(v466 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v468, v1186, v1235);
          v1237 = v466;
          v464 += v465;
          --v462;
        }

        while (v462);
      }

      else
      {

        v466 = MEMORY[0x277D84F90];
      }

      v1023 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1024 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v466, v1235, v1023, v1024);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup;
      v1002 = &v1173;
      goto LABEL_442;
    case 5u:
      v687 = v243;
      v688 = v1142;
      sub_218A12A38(v687, v1142, type metadata accessor for WeatherTagFeedGroup);
      v689 = swift_allocBox();
      sub_218A129D0(v688, v690, type metadata accessor for WeatherTagFeedGroup);
      v691 = MEMORY[0x277D84F90];
      v692 = sub_2194AE960(MEMORY[0x277D84F90]);
      v693 = v1226;
      sub_219BED874();
      v694 = sub_219BF18F4();
      MEMORY[0x28223BE20](v694);
      v695 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v695;
      v1087[-4] = v1229;
      v1087[-3] = v689 | 6;
      v1087[-2] = v692;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v694);
      v697 = v696;

      (*(v1228 + 8))(v693, v1227);
      v1238 = v689 | 6;
      v698 = *(v697 + 16);
      if (v698)
      {
        v1237 = v691;
        v1233 = v689;

        sub_218C33FA0(v698);
        v699 = *(v1225 + 80);
        v1232 = v697;
        v700 = v697 + ((v699 + 32) & ~v699);
        v701 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v700, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v702 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v702 + 16) + 1, 1);
            v702 = v1237;
          }

          v704 = *(v702 + 16);
          v703 = *(v702 + 24);
          if (v704 >= v703 >> 1)
          {
            sub_218C342A8((v703 > 1), v704 + 1, 1);
            v702 = v1237;
          }

          *(v702 + 16) = v704 + 1;
          (*(v58 + 32))(v702 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v704, v1187, v1235);
          v1237 = v702;
          v700 += v701;
          --v698;
        }

        while (v698);
      }

      else
      {

        v702 = MEMORY[0x277D84F90];
      }

      v1051 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1052 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v702, v1235, v1051, v1052);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for WeatherTagFeedGroup;
      v1002 = &v1174;
      goto LABEL_442;
    case 6u:
      sub_218A12A38(v243, v240, type metadata accessor for PaywallTagFeedGroup);
      sub_218A125B4(0);
      v739 = swift_allocBox();
      sub_218A129D0(v240, v237, type metadata accessor for PaywallTagFeedGroup);
      sub_2186CC14C(&qword_280ED0B10, type metadata accessor for PaywallTagFeedGroup, &unk_219C0D34C);
      sub_2186CC14C(&qword_280ED0B18, type metadata accessor for PaywallTagFeedGroup, &unk_219C0D324);
      result = sub_219BEDE74();
      v740 = v1230;
      if (!*(v1230 + 16))
      {
        goto LABEL_446;
      }

      result = sub_21870F700(*v240, v240[1]);
      if ((v741 & 1) == 0)
      {
        goto LABEL_448;
      }

      v742 = *(*(v740 + 56) + 8 * result);

      sub_218A0BEE8(v739 | 0x1000000000000006, v742);

      v561 = type metadata accessor for PaywallTagFeedGroup;
      v562 = v240;
      return sub_218A12450(v562, v561);
    case 7u:
      v597 = v1097;
      v598 = v1095;
      v599 = v1098;
      (*(v1097 + 32))(v1095, v243, v1098);
      v600 = swift_allocBox();
      (*(v597 + 16))(v601, v598, v599);
      sub_218A0C198(v1229, v600 | 0x2000000000000000, v1232, v1231);

      return (*(v597 + 8))(v598, v599);
    case 8u:
      v778 = v1143;
      sub_218A12A38(v243, v1143, type metadata accessor for CuratedTagFeedGroup);
      v779 = swift_allocBox();
      sub_218A129D0(v778, v780, type metadata accessor for CuratedTagFeedGroup);
      v781 = MEMORY[0x277D84F90];
      v782 = sub_2194AE960(MEMORY[0x277D84F90]);
      v783 = v1226;
      sub_219BED874();
      v784 = sub_219BF18F4();
      MEMORY[0x28223BE20](v784);
      v785 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v785;
      v1087[-4] = v1229;
      v1087[-3] = v779 | 0x2000000000000004;
      v1087[-2] = v782;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v784);
      v787 = v786;

      (*(v1228 + 8))(v783, v1227);
      v1238 = v779 | 0x2000000000000004;
      v788 = *(v787 + 16);
      if (v788)
      {
        v1237 = v781;
        v1233 = v779;

        sub_218C33FA0(v788);
        v789 = *(v1225 + 80);
        v1232 = v787;
        v790 = v787 + ((v789 + 32) & ~v789);
        v791 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v790, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v792 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v792 + 16) + 1, 1);
            v792 = v1237;
          }

          v794 = *(v792 + 16);
          v793 = *(v792 + 24);
          if (v794 >= v793 >> 1)
          {
            sub_218C342A8((v793 > 1), v794 + 1, 1);
            v792 = v1237;
          }

          *(v792 + 16) = v794 + 1;
          (*(v58 + 32))(v792 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v794, v1188, v1235);
          v1237 = v792;
          v790 += v791;
          --v788;
        }

        while (v788);
      }

      else
      {

        v792 = MEMORY[0x277D84F90];
      }

      v1061 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1062 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v792, v1235, v1061, v1062);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for CuratedTagFeedGroup;
      v1002 = &v1175;
      goto LABEL_442;
    case 9u:
      v504 = v1144;
      sub_218A12A38(v243, v1144, type metadata accessor for SportsRecordTagFeedGroup);
      v505 = swift_allocBox();
      sub_218A129D0(v504, v506, type metadata accessor for SportsRecordTagFeedGroup);
      v507 = MEMORY[0x277D84F90];
      v508 = sub_2194AE960(MEMORY[0x277D84F90]);
      v509 = v1226;
      sub_219BED874();
      v510 = sub_219BF18F4();
      MEMORY[0x28223BE20](v510);
      v511 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v511;
      v1087[-4] = v1229;
      v1087[-3] = v505 | 0x2000000000000006;
      v1087[-2] = v508;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v510);
      v513 = v512;

      (*(v1228 + 8))(v509, v1227);
      v1238 = v505 | 0x2000000000000006;
      v514 = *(v513 + 16);
      if (v514)
      {
        v1237 = v507;
        v1233 = v505;

        sub_218C33FA0(v514);
        v515 = *(v1225 + 80);
        v1232 = v513;
        v516 = v513 + ((v515 + 32) & ~v515);
        v517 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v516, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v518 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v518 + 16) + 1, 1);
            v518 = v1237;
          }

          v520 = *(v518 + 16);
          v519 = *(v518 + 24);
          if (v520 >= v519 >> 1)
          {
            sub_218C342A8((v519 > 1), v520 + 1, 1);
            v518 = v1237;
          }

          *(v518 + 16) = v520 + 1;
          (*(v58 + 32))(v518 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v520, v1189, v1235);
          v1237 = v518;
          v516 += v517;
          --v514;
        }

        while (v514);
      }

      else
      {

        v518 = MEMORY[0x277D84F90];
      }

      v1029 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1030 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v518, v1235, v1029, v1030);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for SportsRecordTagFeedGroup;
      v1002 = &v1176;
      goto LABEL_442;
    case 0xAu:
      v760 = v243;
      v761 = v1145;
      sub_218A12A38(v760, v1145, type metadata accessor for SportsNavigationTagFeedGroup);
      v762 = swift_allocBox();
      sub_218A129D0(v761, v763, type metadata accessor for SportsNavigationTagFeedGroup);
      v764 = MEMORY[0x277D84F90];
      v765 = sub_2194AE960(MEMORY[0x277D84F90]);
      v766 = v1226;
      sub_219BED874();
      v767 = sub_219BF18F4();
      MEMORY[0x28223BE20](v767);
      v768 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v768;
      v1087[-4] = v1229;
      v1087[-3] = v762 | 0x3000000000000000;
      v1087[-2] = v765;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v767);
      v770 = v769;

      (*(v1228 + 8))(v766, v1227);
      v1238 = v762 | 0x3000000000000000;
      v771 = *(v770 + 16);
      if (v771)
      {
        v1237 = v764;
        v1233 = v762;

        sub_218C33FA0(v771);
        v772 = *(v1225 + 80);
        v1232 = v770;
        v773 = v770 + ((v772 + 32) & ~v772);
        v774 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v773, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v775 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v775 + 16) + 1, 1);
            v775 = v1237;
          }

          v777 = *(v775 + 16);
          v776 = *(v775 + 24);
          if (v777 >= v776 >> 1)
          {
            sub_218C342A8((v776 > 1), v777 + 1, 1);
            v775 = v1237;
          }

          *(v775 + 16) = v777 + 1;
          (*(v58 + 32))(v775 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v777, v1190, v1235);
          v1237 = v775;
          v773 += v774;
          --v771;
        }

        while (v771);
      }

      else
      {

        v775 = MEMORY[0x277D84F90];
      }

      v1059 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1060 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v775, v1235, v1059, v1060);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for SportsNavigationTagFeedGroup;
      v1002 = &v1177;
      goto LABEL_442;
    case 0xBu:
      v435 = v1146;
      sub_218A12A38(v243, v1146, type metadata accessor for SportsScheduleTagFeedGroup);
      v436 = swift_allocBox();
      sub_218A129D0(v435, v437, type metadata accessor for SportsScheduleTagFeedGroup);
      v438 = MEMORY[0x277D84F90];
      v439 = sub_2194AE960(MEMORY[0x277D84F90]);
      v440 = v1226;
      sub_219BED874();
      v441 = sub_219BF18F4();
      MEMORY[0x28223BE20](v441);
      v442 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v442;
      v1087[-4] = v1229;
      v1087[-3] = v436 | 0x3000000000000002;
      v1087[-2] = v439;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v441);
      v444 = v443;

      (*(v1228 + 8))(v440, v1227);
      v1238 = v436 | 0x3000000000000002;
      v445 = *(v444 + 16);
      if (v445)
      {
        v1237 = v438;
        v1233 = v436;

        sub_218C33FA0(v445);
        v446 = *(v1225 + 80);
        v1232 = v444;
        v447 = v444 + ((v446 + 32) & ~v446);
        v448 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v447, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v449 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v449 + 16) + 1, 1);
            v449 = v1237;
          }

          v451 = *(v449 + 16);
          v450 = *(v449 + 24);
          if (v451 >= v450 >> 1)
          {
            sub_218C342A8((v450 > 1), v451 + 1, 1);
            v449 = v1237;
          }

          *(v449 + 16) = v451 + 1;
          (*(v58 + 32))(v449 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v451, v1191, v1235);
          v1237 = v449;
          v447 += v448;
          --v445;
        }

        while (v445);
      }

      else
      {

        v449 = MEMORY[0x277D84F90];
      }

      v1021 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1022 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v449, v1235, v1021, v1022);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for SportsScheduleTagFeedGroup;
      v1002 = &v1178;
      goto LABEL_442;
    case 0xCu:
      v486 = v243;
      v487 = v1147;
      sub_218A12A38(v486, v1147, type metadata accessor for SportsTopStoriesTagFeedGroup);
      v488 = swift_allocBox();
      sub_218A129D0(v487, v489, type metadata accessor for SportsTopStoriesTagFeedGroup);
      v490 = MEMORY[0x277D84F90];
      v491 = sub_2194AE960(MEMORY[0x277D84F90]);
      v492 = v1226;
      sub_219BED874();
      v493 = sub_219BF18F4();
      MEMORY[0x28223BE20](v493);
      v494 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v494;
      v1087[-4] = v1229;
      v1087[-3] = v488 | 0x3000000000000004;
      v1087[-2] = v491;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v493);
      v496 = v495;

      (*(v1228 + 8))(v492, v1227);
      v1238 = v488 | 0x3000000000000004;
      v497 = *(v496 + 16);
      if (v497)
      {
        v1237 = v490;
        v1233 = v488;

        sub_218C33FA0(v497);
        v498 = *(v1225 + 80);
        v1232 = v496;
        v499 = v496 + ((v498 + 32) & ~v498);
        v500 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v499, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v501 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v501 + 16) + 1, 1);
            v501 = v1237;
          }

          v503 = *(v501 + 16);
          v502 = *(v501 + 24);
          if (v503 >= v502 >> 1)
          {
            sub_218C342A8((v502 > 1), v503 + 1, 1);
            v501 = v1237;
          }

          *(v501 + 16) = v503 + 1;
          (*(v58 + 32))(v501 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v503, v1192, v1235);
          v1237 = v501;
          v499 += v500;
          --v497;
        }

        while (v497);
      }

      else
      {

        v501 = MEMORY[0x277D84F90];
      }

      v1027 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1028 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v501, v1235, v1027, v1028);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for SportsTopStoriesTagFeedGroup;
      v1002 = &v1179;
      goto LABEL_442;
    case 0xDu:
      v722 = v1148;
      sub_218A12A38(v243, v1148, type metadata accessor for SportsFavoritesTagFeedGroup);
      v723 = swift_allocBox();
      sub_218A129D0(v722, v724, type metadata accessor for SportsFavoritesTagFeedGroup);
      v725 = MEMORY[0x277D84F90];
      v726 = sub_2194AE960(MEMORY[0x277D84F90]);
      v727 = v1226;
      sub_219BED874();
      v728 = sub_219BF18F4();
      MEMORY[0x28223BE20](v728);
      v729 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v729;
      v1087[-4] = v1229;
      v1087[-3] = v723 | 0x3000000000000006;
      v1087[-2] = v726;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v728);
      v731 = v730;

      (*(v1228 + 8))(v727, v1227);
      v1238 = v723 | 0x3000000000000006;
      v732 = *(v731 + 16);
      if (v732)
      {
        v1237 = v725;
        v1233 = v723;

        sub_218C33FA0(v732);
        v733 = *(v1225 + 80);
        v1232 = v731;
        v734 = v731 + ((v733 + 32) & ~v733);
        v735 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v734, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v736 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v736 + 16) + 1, 1);
            v736 = v1237;
          }

          v738 = *(v736 + 16);
          v737 = *(v736 + 24);
          if (v738 >= v737 >> 1)
          {
            sub_218C342A8((v737 > 1), v738 + 1, 1);
            v736 = v1237;
          }

          *(v736 + 16) = v738 + 1;
          (*(v58 + 32))(v736 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v738, v1193, v1235);
          v1237 = v736;
          v734 += v735;
          --v732;
        }

        while (v732);
      }

      else
      {

        v736 = MEMORY[0x277D84F90];
      }

      v1055 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1056 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v736, v1235, v1055, v1056);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for SportsFavoritesTagFeedGroup;
      v1002 = &v1180;
      goto LABEL_442;
    case 0xEu:
      v400 = v243;
      v401 = v1149;
      sub_218A12A38(v400, v1149, type metadata accessor for SportsScoresTagFeedGroup);
      v402 = swift_allocBox();
      sub_218A129D0(v401, v403, type metadata accessor for SportsScoresTagFeedGroup);
      v404 = MEMORY[0x277D84F90];
      v405 = sub_2194AE960(MEMORY[0x277D84F90]);
      v406 = v1226;
      sub_219BED874();
      v407 = sub_219BF18F4();
      MEMORY[0x28223BE20](v407);
      v408 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v408;
      v1087[-4] = v1229;
      v1087[-3] = v402 | 0x4000000000000000;
      v1087[-2] = v405;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v407);
      v410 = v409;

      (*(v1228 + 8))(v406, v1227);
      v1238 = v402 | 0x4000000000000000;
      v411 = *(v410 + 16);
      if (v411)
      {
        v1237 = v404;
        v1233 = v402;

        sub_218C33FA0(v411);
        v412 = *(v1225 + 80);
        v1232 = v410;
        v413 = v410 + ((v412 + 32) & ~v412);
        v414 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v413, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v415 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v415 + 16) + 1, 1);
            v415 = v1237;
          }

          v417 = *(v415 + 16);
          v416 = *(v415 + 24);
          if (v417 >= v416 >> 1)
          {
            sub_218C342A8((v416 > 1), v417 + 1, 1);
            v415 = v1237;
          }

          *(v415 + 16) = v417 + 1;
          (*(v58 + 32))(v415 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v417, v1194, v1235);
          v1237 = v415;
          v413 += v414;
          --v411;
        }

        while (v411);
      }

      else
      {

        v415 = MEMORY[0x277D84F90];
      }

      v1017 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1018 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v415, v1235, v1017, v1018);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for SportsScoresTagFeedGroup;
      v1002 = &v1181;
      goto LABEL_442;
    case 0xFu:
      v563 = v1150;
      sub_218A12A38(v243, v1150, type metadata accessor for SportsLinksTagFeedGroup);
      v564 = swift_allocBox();
      sub_218A129D0(v563, v565, type metadata accessor for SportsLinksTagFeedGroup);
      v566 = MEMORY[0x277D84F90];
      v567 = sub_2194AE960(MEMORY[0x277D84F90]);
      v568 = v1226;
      sub_219BED874();
      v569 = sub_219BF18F4();
      MEMORY[0x28223BE20](v569);
      v570 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v570;
      v1087[-4] = v1229;
      v1087[-3] = v564 | 0x4000000000000002;
      v1087[-2] = v567;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v569);
      v572 = v571;

      (*(v1228 + 8))(v568, v1227);
      v1238 = v564 | 0x4000000000000002;
      v573 = *(v572 + 16);
      if (v573)
      {
        v1237 = v566;
        v1233 = v564;

        sub_218C33FA0(v573);
        v574 = *(v1225 + 80);
        v1232 = v572;
        v575 = v572 + ((v574 + 32) & ~v574);
        v576 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v575, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v577 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v577 + 16) + 1, 1);
            v577 = v1237;
          }

          v579 = *(v577 + 16);
          v578 = *(v577 + 24);
          if (v579 >= v578 >> 1)
          {
            sub_218C342A8((v578 > 1), v579 + 1, 1);
            v577 = v1237;
          }

          *(v577 + 16) = v579 + 1;
          (*(v58 + 32))(v577 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v579, v1195, v1235);
          v1237 = v577;
          v575 += v576;
          --v573;
        }

        while (v573);
      }

      else
      {

        v577 = MEMORY[0x277D84F90];
      }

      v1035 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1036 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v577, v1235, v1035, v1036);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for SportsLinksTagFeedGroup;
      v1002 = &v1182;
      goto LABEL_442;
    case 0x10u:
      v365 = v243;
      v366 = v1151;
      sub_218A12A38(v365, v1151, type metadata accessor for MySportsTopicTagFeedGroup);
      v367 = swift_allocBox();
      sub_218A129D0(v366, v368, type metadata accessor for MySportsTopicTagFeedGroup);
      v369 = MEMORY[0x277D84F90];
      v370 = sub_2194AE960(MEMORY[0x277D84F90]);
      v371 = v1226;
      sub_219BED874();
      v372 = sub_219BF18F4();
      MEMORY[0x28223BE20](v372);
      v373 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v373;
      v1087[-4] = v1229;
      v1087[-3] = v367 | 0x4000000000000004;
      v1087[-2] = v370;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v372);
      v375 = v374;

      (*(v1228 + 8))(v371, v1227);
      v1238 = v367 | 0x4000000000000004;
      v376 = *(v375 + 16);
      if (v376)
      {
        v1237 = v369;
        v1233 = v367;

        sub_218C33FA0(v376);
        v377 = *(v1225 + 80);
        v1232 = v375;
        v378 = v375 + ((v377 + 32) & ~v377);
        v379 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v378, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v380 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v380 + 16) + 1, 1);
            v380 = v1237;
          }

          v382 = *(v380 + 16);
          v381 = *(v380 + 24);
          if (v382 >= v381 >> 1)
          {
            sub_218C342A8((v381 > 1), v382 + 1, 1);
            v380 = v1237;
          }

          *(v380 + 16) = v382 + 1;
          (*(v58 + 32))(v380 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v382, v1196, v1235);
          v1237 = v380;
          v378 += v379;
          --v376;
        }

        while (v376);
      }

      else
      {

        v380 = MEMORY[0x277D84F90];
      }

      v1013 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1014 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v380, v1235, v1013, v1014);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for MySportsTopicTagFeedGroup;
      v1002 = &v1183;
      goto LABEL_442;
    case 0x11u:
      v636 = v1152;
      sub_218A12A38(v243, v1152, type metadata accessor for SportsStandingsTagFeedGroup);
      v637 = swift_allocBox();
      sub_218A129D0(v636, v638, type metadata accessor for SportsStandingsTagFeedGroup);
      v639 = MEMORY[0x277D84F90];
      v640 = sub_2194AE960(MEMORY[0x277D84F90]);
      v641 = v1226;
      sub_219BED874();
      v642 = sub_219BF18F4();
      MEMORY[0x28223BE20](v642);
      v643 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v643;
      v1087[-4] = v1229;
      v1087[-3] = v637 | 0x4000000000000006;
      v1087[-2] = v640;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v642);
      v645 = v644;

      (*(v1228 + 8))(v641, v1227);
      v1238 = v637 | 0x4000000000000006;
      v646 = *(v645 + 16);
      if (v646)
      {
        v1237 = v639;
        v1233 = v637;

        sub_218C33FA0(v646);
        v647 = *(v1225 + 80);
        v1232 = v645;
        v648 = v645 + ((v647 + 32) & ~v647);
        v649 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v648, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v650 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v650 + 16) + 1, 1);
            v650 = v1237;
          }

          v652 = *(v650 + 16);
          v651 = *(v650 + 24);
          if (v652 >= v651 >> 1)
          {
            sub_218C342A8((v651 > 1), v652 + 1, 1);
            v650 = v1237;
          }

          *(v650 + 16) = v652 + 1;
          (*(v58 + 32))(v650 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v652, v1197, v1235);
          v1237 = v650;
          v648 += v649;
          --v646;
        }

        while (v646);
      }

      else
      {

        v650 = MEMORY[0x277D84F90];
      }

      v1045 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1046 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v650, v1235, v1045, v1046);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for SportsStandingsTagFeedGroup;
      v1002 = &v1184;
      goto LABEL_442;
    case 0x12u:
      v743 = v1153;
      sub_218A12A38(v243, v1153, type metadata accessor for SportsBracketTagFeedGroup);
      v744 = swift_allocBox();
      sub_218A129D0(v743, v745, type metadata accessor for SportsBracketTagFeedGroup);
      v746 = MEMORY[0x277D84F90];
      v747 = sub_2194AE960(MEMORY[0x277D84F90]);
      v748 = v1226;
      sub_219BED874();
      v749 = sub_219BF18F4();
      MEMORY[0x28223BE20](v749);
      v750 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v750;
      v1087[-4] = v1229;
      v1087[-3] = v744 | 0x5000000000000000;
      v1087[-2] = v747;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v749);
      v752 = v751;

      (*(v1228 + 8))(v748, v1227);
      v1238 = v744 | 0x5000000000000000;
      v753 = *(v752 + 16);
      if (v753)
      {
        v1237 = v746;
        v1233 = v744;

        sub_218C33FA0(v753);
        v754 = *(v1225 + 80);
        v1232 = v752;
        v755 = v752 + ((v754 + 32) & ~v754);
        v756 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v755, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v757 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v757 + 16) + 1, 1);
            v757 = v1237;
          }

          v759 = *(v757 + 16);
          v758 = *(v757 + 24);
          if (v759 >= v758 >> 1)
          {
            sub_218C342A8((v758 > 1), v759 + 1, 1);
            v757 = v1237;
          }

          *(v757 + 16) = v759 + 1;
          (*(v58 + 32))(v757 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v759, v1198, v1235);
          v1237 = v757;
          v755 += v756;
          --v753;
        }

        while (v753);
      }

      else
      {

        v757 = MEMORY[0x277D84F90];
      }

      v1057 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1058 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v757, v1235, v1057, v1058);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for SportsBracketTagFeedGroup;
      v1002 = &v1185;
      goto LABEL_442;
    case 0x13u:
      v881 = v1154;
      sub_218A12A38(v243, v1154, type metadata accessor for SportsBoxScoresTagFeedGroup);
      v882 = swift_allocBox();
      sub_218A129D0(v881, v883, type metadata accessor for SportsBoxScoresTagFeedGroup);
      v884 = MEMORY[0x277D84F90];
      v885 = sub_2194AE960(MEMORY[0x277D84F90]);
      v886 = v1226;
      sub_219BED874();
      v887 = sub_219BF18F4();
      MEMORY[0x28223BE20](v887);
      v888 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v888;
      v1087[-4] = v1229;
      v1087[-3] = v882 | 0x5000000000000002;
      v1087[-2] = v885;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v887);
      v890 = v889;

      (*(v1228 + 8))(v886, v1227);
      v1238 = v882 | 0x5000000000000002;
      v891 = *(v890 + 16);
      if (v891)
      {
        v1237 = v884;
        v1233 = v882;

        sub_218C33FA0(v891);
        v892 = *(v1225 + 80);
        v1232 = v890;
        v893 = v890 + ((v892 + 32) & ~v892);
        v894 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v893, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v895 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v895 + 16) + 1, 1);
            v895 = v1237;
          }

          v897 = *(v895 + 16);
          v896 = *(v895 + 24);
          if (v897 >= v896 >> 1)
          {
            sub_218C342A8((v896 > 1), v897 + 1, 1);
            v895 = v1237;
          }

          *(v895 + 16) = v897 + 1;
          (*(v58 + 32))(v895 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v897, v1199, v1235);
          v1237 = v895;
          v893 += v894;
          --v891;
        }

        while (v891);
      }

      else
      {

        v895 = MEMORY[0x277D84F90];
      }

      v1073 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1074 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v895, v1235, v1073, v1074);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for SportsBoxScoresTagFeedGroup;
      v1002 = &v1186;
      goto LABEL_442;
    case 0x14u:
      v670 = v1155;
      sub_218A12A38(v243, v1155, type metadata accessor for SportsEventInfoTagFeedGroup);
      v671 = swift_allocBox();
      sub_218A129D0(v670, v672, type metadata accessor for SportsEventInfoTagFeedGroup);
      v673 = MEMORY[0x277D84F90];
      v674 = sub_2194AE960(MEMORY[0x277D84F90]);
      v675 = v1226;
      sub_219BED874();
      v676 = sub_219BF18F4();
      MEMORY[0x28223BE20](v676);
      v677 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v677;
      v1087[-4] = v1229;
      v1087[-3] = v671 | 0x5000000000000004;
      v1087[-2] = v674;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v676);
      v679 = v678;

      (*(v1228 + 8))(v675, v1227);
      v1238 = v671 | 0x5000000000000004;
      v680 = *(v679 + 16);
      if (v680)
      {
        v1237 = v673;
        v1233 = v671;

        sub_218C33FA0(v680);
        v681 = *(v1225 + 80);
        v1232 = v679;
        v682 = v679 + ((v681 + 32) & ~v681);
        v683 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v682, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v684 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v684 + 16) + 1, 1);
            v684 = v1237;
          }

          v686 = *(v684 + 16);
          v685 = *(v684 + 24);
          if (v686 >= v685 >> 1)
          {
            sub_218C342A8((v685 > 1), v686 + 1, 1);
            v684 = v1237;
          }

          *(v684 + 16) = v686 + 1;
          (*(v58 + 32))(v684 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v686, v1200, v1235);
          v1237 = v684;
          v682 += v683;
          --v680;
        }

        while (v680);
      }

      else
      {

        v684 = MEMORY[0x277D84F90];
      }

      v1049 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1050 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v684, v1235, v1049, v1050);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for SportsEventInfoTagFeedGroup;
      v1002 = &v1187;
      goto LABEL_442;
    case 0x15u:
      v705 = v1156;
      sub_218A12A38(v243, v1156, type metadata accessor for SportsInjuryReportsTagFeedGroup);
      v706 = swift_allocBox();
      sub_218A129D0(v705, v707, type metadata accessor for SportsInjuryReportsTagFeedGroup);
      v708 = MEMORY[0x277D84F90];
      v709 = sub_2194AE960(MEMORY[0x277D84F90]);
      v710 = v1226;
      sub_219BED874();
      v711 = sub_219BF18F4();
      MEMORY[0x28223BE20](v711);
      v712 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v712;
      v1087[-4] = v1229;
      v1087[-3] = v706 | 0x5000000000000006;
      v1087[-2] = v709;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v711);
      v714 = v713;

      (*(v1228 + 8))(v710, v1227);
      v1238 = v706 | 0x5000000000000006;
      v715 = *(v714 + 16);
      if (v715)
      {
        v1237 = v708;
        v1233 = v706;

        sub_218C33FA0(v715);
        v716 = *(v1225 + 80);
        v1232 = v714;
        v717 = v714 + ((v716 + 32) & ~v716);
        v718 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v717, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v719 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v719 + 16) + 1, 1);
            v719 = v1237;
          }

          v721 = *(v719 + 16);
          v720 = *(v719 + 24);
          if (v721 >= v720 >> 1)
          {
            sub_218C342A8((v720 > 1), v721 + 1, 1);
            v719 = v1237;
          }

          *(v719 + 16) = v721 + 1;
          (*(v58 + 32))(v719 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v721, v1201, v1235);
          v1237 = v719;
          v717 += v718;
          --v715;
        }

        while (v715);
      }

      else
      {

        v719 = MEMORY[0x277D84F90];
      }

      v1053 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1054 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v719, v1235, v1053, v1054);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for SportsInjuryReportsTagFeedGroup;
      v1002 = &v1188;
      goto LABEL_442;
    case 0x16u:
      v847 = v1157;
      sub_218A12A38(v243, v1157, type metadata accessor for SportsKeyPlayersTagFeedGroup);
      v848 = swift_allocBox();
      sub_218A129D0(v847, v849, type metadata accessor for SportsKeyPlayersTagFeedGroup);
      v850 = MEMORY[0x277D84F90];
      v851 = sub_2194AE960(MEMORY[0x277D84F90]);
      v852 = v1226;
      sub_219BED874();
      v853 = sub_219BF18F4();
      MEMORY[0x28223BE20](v853);
      v854 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v854;
      v1087[-4] = v1229;
      v1087[-3] = v848 | 0x6000000000000000;
      v1087[-2] = v851;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v853);
      v856 = v855;

      (*(v1228 + 8))(v852, v1227);
      v1238 = v848 | 0x6000000000000000;
      v857 = *(v856 + 16);
      if (v857)
      {
        v1237 = v850;
        v1233 = v848;

        sub_218C33FA0(v857);
        v858 = *(v1225 + 80);
        v1232 = v856;
        v859 = v856 + ((v858 + 32) & ~v858);
        v860 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v859, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v861 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v861 + 16) + 1, 1);
            v861 = v1237;
          }

          v863 = *(v861 + 16);
          v862 = *(v861 + 24);
          if (v863 >= v862 >> 1)
          {
            sub_218C342A8((v862 > 1), v863 + 1, 1);
            v861 = v1237;
          }

          *(v861 + 16) = v863 + 1;
          (*(v58 + 32))(v861 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v863, v1202, v1235);
          v1237 = v861;
          v859 += v860;
          --v857;
        }

        while (v857);
      }

      else
      {

        v861 = MEMORY[0x277D84F90];
      }

      v1069 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1070 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v861, v1235, v1069, v1070);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for SportsKeyPlayersTagFeedGroup;
      v1002 = &v1189;
      goto LABEL_442;
    case 0x17u:
      v915 = v1158;
      sub_218A12A38(v243, v1158, type metadata accessor for SportsEventArticlesTagFeedGroup);
      v916 = swift_allocBox();
      sub_218A129D0(v915, v917, type metadata accessor for SportsEventArticlesTagFeedGroup);
      v918 = MEMORY[0x277D84F90];
      v919 = sub_2194AE960(MEMORY[0x277D84F90]);
      v920 = v1226;
      sub_219BED874();
      v921 = sub_219BF18F4();
      MEMORY[0x28223BE20](v921);
      v922 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v922;
      v1087[-4] = v1229;
      v1087[-3] = v916 | 0x6000000000000002;
      v1087[-2] = v919;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v921);
      v924 = v923;

      (*(v1228 + 8))(v920, v1227);
      v1238 = v916 | 0x6000000000000002;
      v925 = *(v924 + 16);
      if (v925)
      {
        v1237 = v918;
        v1233 = v916;

        sub_218C33FA0(v925);
        v926 = *(v1225 + 80);
        v1232 = v924;
        v927 = v924 + ((v926 + 32) & ~v926);
        v928 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v927, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v929 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v929 + 16) + 1, 1);
            v929 = v1237;
          }

          v931 = *(v929 + 16);
          v930 = *(v929 + 24);
          if (v931 >= v930 >> 1)
          {
            sub_218C342A8((v930 > 1), v931 + 1, 1);
            v929 = v1237;
          }

          *(v929 + 16) = v931 + 1;
          (*(v58 + 32))(v929 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v931, v1203, v1235);
          v1237 = v929;
          v927 += v928;
          --v925;
        }

        while (v925);
      }

      else
      {

        v929 = MEMORY[0x277D84F90];
      }

      v1077 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1078 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v929, v1235, v1077, v1078);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for SportsEventArticlesTagFeedGroup;
      v1002 = &v1190;
      goto LABEL_442;
    case 0x18u:
      v539 = v1159;
      sub_218A12A38(v243, v1159, type metadata accessor for HighlightsTagFeedGroup);
      v540 = swift_allocBox();
      sub_218A129D0(v539, v541, type metadata accessor for HighlightsTagFeedGroup);
      v542 = MEMORY[0x277D84F90];
      v543 = sub_2194AE960(MEMORY[0x277D84F90]);
      v544 = v1226;
      sub_219BED874();
      v545 = sub_219BF18F4();
      MEMORY[0x28223BE20](v545);
      v546 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v546;
      v1087[-4] = v1229;
      v1087[-3] = v540 | 0x6000000000000004;
      v1087[-2] = v543;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v545);
      v548 = v547;

      (*(v1228 + 8))(v544, v1227);
      v1238 = v540 | 0x6000000000000004;
      v549 = *(v548 + 16);
      if (v549)
      {
        v1237 = v542;
        v1233 = v540;

        sub_218C33FA0(v549);
        v550 = *(v1225 + 80);
        v1232 = v548;
        v551 = v548 + ((v550 + 32) & ~v550);
        v552 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v551, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v553 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v553 + 16) + 1, 1);
            v553 = v1237;
          }

          v555 = *(v553 + 16);
          v554 = *(v553 + 24);
          if (v555 >= v554 >> 1)
          {
            sub_218C342A8((v554 > 1), v555 + 1, 1);
            v553 = v1237;
          }

          *(v553 + 16) = v555 + 1;
          (*(v58 + 32))(v553 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v555, v1204, v1235);
          v1237 = v553;
          v551 += v552;
          --v549;
        }

        while (v549);
      }

      else
      {

        v553 = MEMORY[0x277D84F90];
      }

      v1033 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1034 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v553, v1235, v1033, v1034);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for HighlightsTagFeedGroup;
      v1002 = &v1191;
      goto LABEL_442;
    case 0x19u:
      v521 = v243;
      v522 = v1160;
      sub_218A12A38(v521, v1160, type metadata accessor for ForYouTagFeedGroup);
      v523 = swift_allocBox();
      sub_218A129D0(v522, v524, type metadata accessor for ForYouTagFeedGroup);
      v525 = MEMORY[0x277D84F90];
      v526 = sub_2194AE960(MEMORY[0x277D84F90]);
      v527 = v1226;
      sub_219BED874();
      v528 = sub_219BF18F4();
      MEMORY[0x28223BE20](v528);
      v529 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v529;
      v1087[-4] = v1229;
      v1087[-3] = v523 | 0x6000000000000006;
      v1087[-2] = v526;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v528);
      v531 = v530;

      (*(v1228 + 8))(v527, v1227);
      v1238 = v523 | 0x6000000000000006;
      v532 = *(v531 + 16);
      if (v532)
      {
        v1237 = v525;
        v1233 = v523;

        sub_218C33FA0(v532);
        v533 = *(v1225 + 80);
        v1232 = v531;
        v534 = v531 + ((v533 + 32) & ~v533);
        v535 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v534, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v536 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v536 + 16) + 1, 1);
            v536 = v1237;
          }

          v538 = *(v536 + 16);
          v537 = *(v536 + 24);
          if (v538 >= v537 >> 1)
          {
            sub_218C342A8((v537 > 1), v538 + 1, 1);
            v536 = v1237;
          }

          *(v536 + 16) = v538 + 1;
          (*(v58 + 32))(v536 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v538, v1205, v1235);
          v1237 = v536;
          v534 += v535;
          --v532;
        }

        while (v532);
      }

      else
      {

        v536 = MEMORY[0x277D84F90];
      }

      v1031 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1032 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v536, v1235, v1031, v1032);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for ForYouTagFeedGroup;
      v1002 = &v1192;
      goto LABEL_442;
    case 0x1Au:
      v983 = v1161;
      sub_218A12A38(v243, v1161, type metadata accessor for ChannelRecipesTagFeedGroup);
      v984 = swift_allocBox();
      sub_218A129D0(v983, v985, type metadata accessor for ChannelRecipesTagFeedGroup);
      v986 = MEMORY[0x277D84F90];
      v987 = sub_2194AE960(MEMORY[0x277D84F90]);
      v988 = v1226;
      sub_219BED874();
      v989 = sub_219BF18F4();
      MEMORY[0x28223BE20](v989);
      v990 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v990;
      v1087[-4] = v1229;
      v1087[-3] = v984 | 0x7000000000000000;
      v1087[-2] = v987;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v989);
      v992 = v991;

      (*(v1228 + 8))(v988, v1227);
      v1238 = v984 | 0x7000000000000000;
      v993 = *(v992 + 16);
      if (v993)
      {
        v1237 = v986;
        v1233 = v984;

        sub_218C33FA0(v993);
        v994 = *(v1225 + 80);
        v1232 = v992;
        v995 = v992 + ((v994 + 32) & ~v994);
        v996 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v995, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v997 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v997 + 16) + 1, 1);
            v997 = v1237;
          }

          v999 = *(v997 + 16);
          v998 = *(v997 + 24);
          if (v999 >= v998 >> 1)
          {
            sub_218C342A8((v998 > 1), v999 + 1, 1);
            v997 = v1237;
          }

          *(v997 + 16) = v999 + 1;
          (*(v58 + 32))(v997 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v999, v1206, v1235);
          v1237 = v997;
          v995 += v996;
          --v993;
        }

        while (v993);
      }

      else
      {

        v997 = MEMORY[0x277D84F90];
      }

      v1085 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1086 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v997, v1235, v1085, v1086);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for ChannelRecipesTagFeedGroup;
      v1002 = &v1193;
      goto LABEL_442;
    case 0x1Bu:
      v326 = v1162;
      sub_218A12A38(v243, v1162, type metadata accessor for ForYouRecipesTagFeedGroup);
      v327 = swift_allocBox();
      sub_218A129D0(v326, v328, type metadata accessor for ForYouRecipesTagFeedGroup);
      v329 = MEMORY[0x277D84F90];
      v330 = sub_2194AE960(MEMORY[0x277D84F90]);
      v331 = v1226;
      sub_219BED874();
      v332 = sub_219BF18F4();
      MEMORY[0x28223BE20](v332);
      v333 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v333;
      v1087[-4] = v1229;
      v1087[-3] = v327 | 0x7000000000000002;
      v1087[-2] = v330;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v332);
      v335 = v334;

      (*(v1228 + 8))(v331, v1227);
      v1238 = v327 | 0x7000000000000002;
      v336 = *(v335 + 16);
      if (v336)
      {
        v1237 = v329;
        v1233 = v327;

        sub_218C33FA0(v336);
        v337 = *(v1225 + 80);
        v1232 = v335;
        v338 = v335 + ((v337 + 32) & ~v337);
        v339 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v338, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v340 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v340 + 16) + 1, 1);
            v340 = v1237;
          }

          v342 = *(v340 + 16);
          v341 = *(v340 + 24);
          if (v342 >= v341 >> 1)
          {
            sub_218C342A8((v341 > 1), v342 + 1, 1);
            v340 = v1237;
          }

          *(v340 + 16) = v342 + 1;
          (*(v58 + 32))(v340 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v342, v1207, v1235);
          v1237 = v340;
          v338 += v339;
          --v336;
        }

        while (v336);
      }

      else
      {

        v340 = MEMORY[0x277D84F90];
      }

      v1009 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1010 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v340, v1235, v1009, v1010);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for ForYouRecipesTagFeedGroup;
      v1002 = &v1194;
      goto LABEL_442;
    case 0x1Cu:
      v932 = v1163;
      sub_218A12A38(v243, v1163, type metadata accessor for RecentStoriesTagFeedGroup);
      v933 = swift_allocBox();
      sub_218A129D0(v932, v934, type metadata accessor for RecentStoriesTagFeedGroup);
      v935 = MEMORY[0x277D84F90];
      v936 = sub_2194AE960(MEMORY[0x277D84F90]);
      v937 = v1226;
      sub_219BED874();
      v938 = sub_219BF18F4();
      MEMORY[0x28223BE20](v938);
      v939 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v939;
      v1087[-4] = v1229;
      v1087[-3] = v933 | 0x7000000000000004;
      v1087[-2] = v936;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v938);
      v941 = v940;

      (*(v1228 + 8))(v937, v1227);
      v1238 = v933 | 0x7000000000000004;
      v942 = *(v941 + 16);
      if (v942)
      {
        v1237 = v935;
        v1233 = v933;

        sub_218C33FA0(v942);
        v943 = *(v1225 + 80);
        v1232 = v941;
        v944 = v941 + ((v943 + 32) & ~v943);
        v945 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v944, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v946 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v946 + 16) + 1, 1);
            v946 = v1237;
          }

          v948 = *(v946 + 16);
          v947 = *(v946 + 24);
          if (v948 >= v947 >> 1)
          {
            sub_218C342A8((v947 > 1), v948 + 1, 1);
            v946 = v1237;
          }

          *(v946 + 16) = v948 + 1;
          (*(v58 + 32))(v946 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v948, v1208, v1235);
          v1237 = v946;
          v944 += v945;
          --v942;
        }

        while (v942);
      }

      else
      {

        v946 = MEMORY[0x277D84F90];
      }

      v1079 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1080 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v946, v1235, v1079, v1080);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for RecentStoriesTagFeedGroup;
      v1002 = &v1195;
      goto LABEL_442;
    case 0x1Du:
      v949 = v1164;
      sub_218A12A38(v243, v1164, type metadata accessor for RecentlyViewedRecipesTagFeedGroup);
      v950 = swift_allocBox();
      sub_218A129D0(v949, v951, type metadata accessor for RecentlyViewedRecipesTagFeedGroup);
      v952 = MEMORY[0x277D84F90];
      v953 = sub_2194AE960(MEMORY[0x277D84F90]);
      v954 = v1226;
      sub_219BED874();
      v955 = sub_219BF18F4();
      MEMORY[0x28223BE20](v955);
      v956 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v956;
      v1087[-4] = v1229;
      v1087[-3] = v950 | 0x7000000000000006;
      v1087[-2] = v953;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v955);
      v958 = v957;

      (*(v1228 + 8))(v954, v1227);
      v1238 = v950 | 0x7000000000000006;
      v959 = *(v958 + 16);
      if (v959)
      {
        v1237 = v952;
        v1233 = v950;

        sub_218C33FA0(v959);
        v960 = *(v1225 + 80);
        v1232 = v958;
        v961 = v958 + ((v960 + 32) & ~v960);
        v962 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v961, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v963 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v963 + 16) + 1, 1);
            v963 = v1237;
          }

          v965 = *(v963 + 16);
          v964 = *(v963 + 24);
          if (v965 >= v964 >> 1)
          {
            sub_218C342A8((v964 > 1), v965 + 1, 1);
            v963 = v1237;
          }

          *(v963 + 16) = v965 + 1;
          (*(v58 + 32))(v963 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v965, v1209, v1235);
          v1237 = v963;
          v961 += v962;
          --v959;
        }

        while (v959);
      }

      else
      {

        v963 = MEMORY[0x277D84F90];
      }

      v1081 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1082 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v963, v1235, v1081, v1082);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup;
      v1002 = &v1196;
      goto LABEL_442;
    case 0x1Eu:
      v795 = v243;
      v796 = v1165;
      sub_218A12A38(v795, v1165, type metadata accessor for DateRangeTagFeedGroup);
      v797 = swift_allocBox();
      sub_218A129D0(v796, v798, type metadata accessor for DateRangeTagFeedGroup);
      v799 = MEMORY[0x277D84F90];
      v800 = sub_2194AE960(MEMORY[0x277D84F90]);
      v801 = v1226;
      sub_219BED874();
      v802 = sub_219BF18F4();
      MEMORY[0x28223BE20](v802);
      v803 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v803;
      v1087[-4] = v1229;
      v1087[-3] = v797 | 0x8000000000000000;
      v1087[-2] = v800;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v802);
      v805 = v804;

      (*(v1228 + 8))(v801, v1227);
      v1238 = v797 | 0x8000000000000000;
      v806 = *(v805 + 16);
      if (v806)
      {
        v1237 = v799;
        v1233 = v797;

        sub_218C33FA0(v806);
        v807 = *(v1225 + 80);
        v1232 = v805;
        v808 = v805 + ((v807 + 32) & ~v807);
        v809 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v808, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v810 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v810 + 16) + 1, 1);
            v810 = v1237;
          }

          v812 = *(v810 + 16);
          v811 = *(v810 + 24);
          if (v812 >= v811 >> 1)
          {
            sub_218C342A8((v811 > 1), v812 + 1, 1);
            v810 = v1237;
          }

          *(v810 + 16) = v812 + 1;
          (*(v58 + 32))(v810 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v812, v1210, v1235);
          v1237 = v810;
          v808 += v809;
          --v806;
        }

        while (v806);
      }

      else
      {

        v810 = MEMORY[0x277D84F90];
      }

      v1063 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1064 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v810, v1235, v1063, v1064);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for DateRangeTagFeedGroup;
      v1002 = &v1197;
      goto LABEL_442;
    case 0x1Fu:
      v619 = v1166;
      sub_218A12A38(v243, v1166, type metadata accessor for SportsOnboardingTagFeedGroup);
      v620 = swift_allocBox();
      sub_218A129D0(v619, v621, type metadata accessor for SportsOnboardingTagFeedGroup);
      v622 = MEMORY[0x277D84F90];
      v623 = sub_2194AE960(MEMORY[0x277D84F90]);
      v624 = v1226;
      sub_219BED874();
      v625 = sub_219BF18F4();
      MEMORY[0x28223BE20](v625);
      v626 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v626;
      v1087[-4] = v1229;
      v1087[-3] = v620 | 0x8000000000000002;
      v1087[-2] = v623;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v625);
      v628 = v627;

      (*(v1228 + 8))(v624, v1227);
      v1238 = v620 | 0x8000000000000002;
      v629 = *(v628 + 16);
      if (v629)
      {
        v1237 = v622;
        v1233 = v620;

        sub_218C33FA0(v629);
        v630 = *(v1225 + 80);
        v1232 = v628;
        v631 = v628 + ((v630 + 32) & ~v630);
        v632 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v631, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v633 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v633 + 16) + 1, 1);
            v633 = v1237;
          }

          v635 = *(v633 + 16);
          v634 = *(v633 + 24);
          if (v635 >= v634 >> 1)
          {
            sub_218C342A8((v634 > 1), v635 + 1, 1);
            v633 = v1237;
          }

          *(v633 + 16) = v635 + 1;
          (*(v58 + 32))(v633 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v635, v1211, v1235);
          v1237 = v633;
          v631 += v632;
          --v629;
        }

        while (v629);
      }

      else
      {

        v633 = MEMORY[0x277D84F90];
      }

      v1043 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1044 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v633, v1235, v1043, v1044);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for SportsOnboardingTagFeedGroup;
      v1002 = &v1198;
      goto LABEL_442;
    case 0x20u:
      v813 = v1167;
      sub_218A12A38(v243, v1167, type metadata accessor for SportsMastheadTagFeedGroup);
      v814 = swift_allocBox();
      sub_218A129D0(v813, v815, type metadata accessor for SportsMastheadTagFeedGroup);
      v816 = MEMORY[0x277D84F90];
      v817 = sub_2194AE960(MEMORY[0x277D84F90]);
      v818 = v1226;
      sub_219BED874();
      v819 = sub_219BF18F4();
      MEMORY[0x28223BE20](v819);
      v820 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v820;
      v1087[-4] = v1229;
      v1087[-3] = v814 | 0x8000000000000004;
      v1087[-2] = v817;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v819);
      v822 = v821;

      (*(v1228 + 8))(v818, v1227);
      v1238 = v814 | 0x8000000000000004;
      v823 = *(v822 + 16);
      if (v823)
      {
        v1237 = v816;
        v1233 = v814;

        sub_218C33FA0(v823);
        v824 = *(v1225 + 80);
        v1232 = v822;
        v825 = v822 + ((v824 + 32) & ~v824);
        v826 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v825, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v827 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v827 + 16) + 1, 1);
            v827 = v1237;
          }

          v829 = *(v827 + 16);
          v828 = *(v827 + 24);
          if (v829 >= v828 >> 1)
          {
            sub_218C342A8((v828 > 1), v829 + 1, 1);
            v827 = v1237;
          }

          *(v827 + 16) = v829 + 1;
          (*(v58 + 32))(v827 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v829, v1212, v1235);
          v1237 = v827;
          v825 += v826;
          --v823;
        }

        while (v823);
      }

      else
      {

        v827 = MEMORY[0x277D84F90];
      }

      v1065 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1066 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v827, v1235, v1065, v1066);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for SportsMastheadTagFeedGroup;
      v1002 = &v1199;
      goto LABEL_442;
    case 0x21u:
      v418 = v1168;
      sub_218A12A38(v243, v1168, type metadata accessor for SportsEventTopicTagFeedGroup);
      v419 = swift_allocBox();
      sub_218A129D0(v418, v420, type metadata accessor for SportsEventTopicTagFeedGroup);
      v421 = MEMORY[0x277D84F90];
      v422 = sub_2194AE960(MEMORY[0x277D84F90]);
      v423 = v1226;
      sub_219BED874();
      v424 = sub_219BF18F4();
      MEMORY[0x28223BE20](v424);
      v425 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v425;
      v1087[-4] = v1229;
      v1087[-3] = v419 | 0x8000000000000006;
      v1087[-2] = v422;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v424);
      v427 = v426;

      (*(v1228 + 8))(v423, v1227);
      v1238 = v419 | 0x8000000000000006;
      v428 = *(v427 + 16);
      if (v428)
      {
        v1237 = v421;
        v1233 = v419;

        sub_218C33FA0(v428);
        v429 = *(v1225 + 80);
        v1232 = v427;
        v430 = v427 + ((v429 + 32) & ~v429);
        v431 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v430, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v432 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v432 + 16) + 1, 1);
            v432 = v1237;
          }

          v434 = *(v432 + 16);
          v433 = *(v432 + 24);
          if (v434 >= v433 >> 1)
          {
            sub_218C342A8((v433 > 1), v434 + 1, 1);
            v432 = v1237;
          }

          *(v432 + 16) = v434 + 1;
          (*(v58 + 32))(v432 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v434, v1213, v1235);
          v1237 = v432;
          v430 += v431;
          --v428;
        }

        while (v428);
      }

      else
      {

        v432 = MEMORY[0x277D84F90];
      }

      v1019 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1020 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v432, v1235, v1019, v1020);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for SportsEventTopicTagFeedGroup;
      v1002 = &v1200;
      goto LABEL_442;
    case 0x22u:
      v343 = v1136;
      sub_218A12A38(v243, v1136, type metadata accessor for PuzzleListTagFeedGroup);
      v344 = sub_218A0C5EC(v343);
      v345 = v1124;
      v346 = swift_allocBox();
      sub_218A129D0(v343, v347, type metadata accessor for PuzzleListTagFeedGroup);
      (*(v1137 + 16))(v1181, v343, v1138);
      if (*(v343 + *(v345 + 24)) <= 0)
      {

        v344 = sub_2194AE960(MEMORY[0x277D84F90]);
      }

      v349 = v1229;
      v348 = v1230;
      v350 = v1228;
      v351 = v1226;
      sub_219BED874();
      v352 = sub_219BF18F4();
      v1233 = v346;
      MEMORY[0x28223BE20](v352);
      v353 = v1232;
      v1087[-6] = v348;
      v1087[-5] = v353;
      v1087[-4] = v349;
      v1087[-3] = v346 | 0x9000000000000000;
      v1087[-2] = v344;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v352);
      v355 = v354;

      (*(v350 + 8))(v351, v1227);
      v1238 = v346 | 0x9000000000000000;
      v356 = sub_2193D015C(v355);
      if (v356)
      {
        v357 = v356;
        v1237 = MEMORY[0x277D84F90];

        result = sub_218C33FA0(v357);
        if (v357 < 0)
        {
LABEL_449:
          __break(1u);
          return result;
        }

        v359 = *(v1225 + 80);
        v1232 = v355;
        v360 = v355 + ((v359 + 32) & ~v359);
        v361 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v360, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v362 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v362 + 16) + 1, 1);
            v362 = v1237;
          }

          v364 = *(v362 + 16);
          v363 = *(v362 + 24);
          if (v364 >= v363 >> 1)
          {
            sub_218C342A8((v363 > 1), v364 + 1, 1);
            v362 = v1237;
          }

          *(v362 + 16) = v364 + 1;
          (*(v58 + 32))(v362 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v364, v1182, v1235);
          v1237 = v362;
          v360 += v361;
          --v357;
        }

        while (v357);
      }

      else
      {

        v362 = MEMORY[0x277D84F90];
      }

      v1011 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1012 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v362, v1235, v1011, v1012);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      (*(v1137 + 8))(v1181, v1138);
      v561 = type metadata accessor for PuzzleListTagFeedGroup;
      v1002 = &v1168;
LABEL_442:
      v562 = *(v1002 - 32);
      return sub_218A12450(v562, v561);
    case 0x23u:
      v292 = v1169;
      sub_218A12A38(v243, v1169, type metadata accessor for PuzzleArchiveTagFeedGroup);
      v293 = swift_allocBox();
      sub_218A129D0(v292, v294, type metadata accessor for PuzzleArchiveTagFeedGroup);
      v295 = MEMORY[0x277D84F90];
      v296 = sub_2194AE960(MEMORY[0x277D84F90]);
      v297 = v1226;
      sub_219BED874();
      v298 = sub_219BF18F4();
      MEMORY[0x28223BE20](v298);
      v299 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v299;
      v1087[-4] = v1229;
      v1087[-3] = v293 | 0x9000000000000002;
      v1087[-2] = v296;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v298);
      v301 = v300;

      (*(v1228 + 8))(v297, v1227);
      v1238 = v293 | 0x9000000000000002;
      v302 = *(v301 + 16);
      if (v302)
      {
        v1237 = v295;
        v1233 = v293;

        sub_218C33FA0(v302);
        v303 = *(v1225 + 80);
        v1232 = v301;
        v304 = v301 + ((v303 + 32) & ~v303);
        v305 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v304, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v306 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v306 + 16) + 1, 1);
            v306 = v1237;
          }

          v308 = *(v306 + 16);
          v307 = *(v306 + 24);
          if (v308 >= v307 >> 1)
          {
            sub_218C342A8((v307 > 1), v308 + 1, 1);
            v306 = v1237;
          }

          *(v306 + 16) = v308 + 1;
          (*(v58 + 32))(v306 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v308, v1214, v1235);
          v1237 = v306;
          v304 += v305;
          --v302;
        }

        while (v302);
      }

      else
      {

        v306 = MEMORY[0x277D84F90];
      }

      v1005 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1006 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v306, v1235, v1005, v1006);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for PuzzleArchiveTagFeedGroup;
      v1002 = &v1201;
      goto LABEL_442;
    case 0x24u:
      v309 = v1170;
      sub_218A12A38(v243, v1170, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);
      v310 = swift_allocBox();
      sub_218A129D0(v309, v311, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);
      v312 = MEMORY[0x277D84F90];
      v313 = sub_2194AE960(MEMORY[0x277D84F90]);
      v314 = v1226;
      sub_219BED874();
      v315 = sub_219BF18F4();
      MEMORY[0x28223BE20](v315);
      v316 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v316;
      v1087[-4] = v1229;
      v1087[-3] = v310 | 0x9000000000000004;
      v1087[-2] = v313;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v315);
      v318 = v317;

      (*(v1228 + 8))(v314, v1227);
      v1238 = v310 | 0x9000000000000004;
      v319 = *(v318 + 16);
      if (v319)
      {
        v1237 = v312;
        v1233 = v310;

        sub_218C33FA0(v319);
        v320 = *(v1225 + 80);
        v1232 = v318;
        v321 = v318 + ((v320 + 32) & ~v320);
        v322 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v321, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v323 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v323 + 16) + 1, 1);
            v323 = v1237;
          }

          v325 = *(v323 + 16);
          v324 = *(v323 + 24);
          if (v325 >= v324 >> 1)
          {
            sub_218C342A8((v324 > 1), v325 + 1, 1);
            v323 = v1237;
          }

          *(v323 + 16) = v325 + 1;
          (*(v58 + 32))(v323 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v325, v1215, v1235);
          v1237 = v323;
          v321 += v322;
          --v319;
        }

        while (v319);
      }

      else
      {

        v323 = MEMORY[0x277D84F90];
      }

      v1007 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1008 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v323, v1235, v1007, v1008);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup;
      v1002 = &v1202;
      goto LABEL_442;
    case 0x25u:
      v275 = v1171;
      sub_218A12A38(v243, v1171, type metadata accessor for PuzzleFeaturedTagFeedGroup);
      v276 = swift_allocBox();
      sub_218A129D0(v275, v277, type metadata accessor for PuzzleFeaturedTagFeedGroup);
      v278 = MEMORY[0x277D84F90];
      v279 = sub_2194AE960(MEMORY[0x277D84F90]);
      v280 = v1226;
      sub_219BED874();
      v281 = sub_219BF18F4();
      MEMORY[0x28223BE20](v281);
      v282 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v282;
      v1087[-4] = v1229;
      v1087[-3] = v276 | 0x9000000000000006;
      v1087[-2] = v279;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v281);
      v284 = v283;

      (*(v1228 + 8))(v280, v1227);
      v1238 = v276 | 0x9000000000000006;
      v285 = *(v284 + 16);
      if (v285)
      {
        v1237 = v278;
        v1233 = v276;

        sub_218C33FA0(v285);
        v286 = *(v1225 + 80);
        v1232 = v284;
        v287 = v284 + ((v286 + 32) & ~v286);
        v288 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v287, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v289 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v289 + 16) + 1, 1);
            v289 = v1237;
          }

          v291 = *(v289 + 16);
          v290 = *(v289 + 24);
          if (v291 >= v290 >> 1)
          {
            sub_218C342A8((v290 > 1), v291 + 1, 1);
            v289 = v1237;
          }

          *(v289 + 16) = v291 + 1;
          (*(v58 + 32))(v289 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v291, v1216, v1235);
          v1237 = v289;
          v287 += v288;
          --v285;
        }

        while (v285);
      }

      else
      {

        v289 = MEMORY[0x277D84F90];
      }

      v1003 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1004 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v289, v1235, v1003, v1004);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for PuzzleFeaturedTagFeedGroup;
      v1002 = &v1203;
      goto LABEL_442;
    case 0x26u:
      v966 = v1172;
      sub_218A12A38(v243, v1172, type metadata accessor for PuzzleFullArchiveTagFeedGroup);
      v967 = swift_allocBox();
      sub_218A129D0(v966, v968, type metadata accessor for PuzzleFullArchiveTagFeedGroup);
      v969 = MEMORY[0x277D84F90];
      v970 = sub_2194AE960(MEMORY[0x277D84F90]);
      v971 = v1226;
      sub_219BED874();
      v972 = sub_219BF18F4();
      MEMORY[0x28223BE20](v972);
      v973 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v973;
      v1087[-4] = v1229;
      v1087[-3] = v967 | 0xA000000000000000;
      v1087[-2] = v970;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v972);
      v975 = v974;

      (*(v1228 + 8))(v971, v1227);
      v1238 = v967 | 0xA000000000000000;
      v976 = *(v975 + 16);
      if (v976)
      {
        v1237 = v969;
        v1233 = v967;

        sub_218C33FA0(v976);
        v977 = *(v1225 + 80);
        v1232 = v975;
        v978 = v975 + ((v977 + 32) & ~v977);
        v979 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v978, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v980 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v980 + 16) + 1, 1);
            v980 = v1237;
          }

          v982 = *(v980 + 16);
          v981 = *(v980 + 24);
          if (v982 >= v981 >> 1)
          {
            sub_218C342A8((v981 > 1), v982 + 1, 1);
            v980 = v1237;
          }

          *(v980 + 16) = v982 + 1;
          (*(v58 + 32))(v980 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v982, v1217, v1235);
          v1237 = v980;
          v978 += v979;
          --v976;
        }

        while (v976);
      }

      else
      {

        v980 = MEMORY[0x277D84F90];
      }

      v1083 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1084 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v980, v1235, v1083, v1084);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for PuzzleFullArchiveTagFeedGroup;
      v1002 = &v1204;
      goto LABEL_442;
    case 0x27u:
      v864 = v1173;
      sub_218A12A38(v243, v1173, type metadata accessor for PuzzleScoreboardTagFeedGroup);
      v865 = swift_allocBox();
      sub_218A129D0(v864, v866, type metadata accessor for PuzzleScoreboardTagFeedGroup);
      v867 = MEMORY[0x277D84F90];
      v868 = sub_2194AE960(MEMORY[0x277D84F90]);
      v869 = v1226;
      sub_219BED874();
      v870 = sub_219BF18F4();
      MEMORY[0x28223BE20](v870);
      v871 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v871;
      v1087[-4] = v1229;
      v1087[-3] = v865 | 0xA000000000000002;
      v1087[-2] = v868;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v870);
      v873 = v872;

      (*(v1228 + 8))(v869, v1227);
      v1238 = v865 | 0xA000000000000002;
      v874 = *(v873 + 16);
      if (v874)
      {
        v1237 = v867;
        v1233 = v865;

        sub_218C33FA0(v874);
        v875 = *(v1225 + 80);
        v1232 = v873;
        v876 = v873 + ((v875 + 32) & ~v875);
        v877 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v876, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v878 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v878 + 16) + 1, 1);
            v878 = v1237;
          }

          v880 = *(v878 + 16);
          v879 = *(v878 + 24);
          if (v880 >= v879 >> 1)
          {
            sub_218C342A8((v879 > 1), v880 + 1, 1);
            v878 = v1237;
          }

          *(v878 + 16) = v880 + 1;
          (*(v58 + 32))(v878 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v880, v1218, v1235);
          v1237 = v878;
          v876 += v877;
          --v874;
        }

        while (v874);
      }

      else
      {

        v878 = MEMORY[0x277D84F90];
      }

      v1071 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1072 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v878, v1235, v1071, v1072);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for PuzzleScoreboardTagFeedGroup;
      v1002 = &v1205;
      goto LABEL_442;
    case 0x28u:
      v469 = v1174;
      sub_218A12A38(v243, v1174, type metadata accessor for AffinityTagFeedGroup);
      v470 = swift_allocBox();
      sub_218A129D0(v469, v471, type metadata accessor for AffinityTagFeedGroup);
      v472 = MEMORY[0x277D84F90];
      v473 = sub_2194AE960(MEMORY[0x277D84F90]);
      v474 = v1226;
      sub_219BED874();
      v475 = sub_219BF18F4();
      MEMORY[0x28223BE20](v475);
      v476 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v476;
      v1087[-4] = v1229;
      v1087[-3] = v470 | 0xA000000000000004;
      v1087[-2] = v473;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v475);
      v478 = v477;

      (*(v1228 + 8))(v474, v1227);
      v1238 = v470 | 0xA000000000000004;
      v479 = *(v478 + 16);
      if (v479)
      {
        v1237 = v472;
        v1233 = v470;

        sub_218C33FA0(v479);
        v480 = *(v1225 + 80);
        v1232 = v478;
        v481 = v478 + ((v480 + 32) & ~v480);
        v482 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v481, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v483 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v483 + 16) + 1, 1);
            v483 = v1237;
          }

          v485 = *(v483 + 16);
          v484 = *(v483 + 24);
          if (v485 >= v484 >> 1)
          {
            sub_218C342A8((v484 > 1), v485 + 1, 1);
            v483 = v1237;
          }

          *(v483 + 16) = v485 + 1;
          (*(v58 + 32))(v483 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v485, v1219, v1235);
          v1237 = v483;
          v481 += v482;
          --v479;
        }

        while (v479);
      }

      else
      {

        v483 = MEMORY[0x277D84F90];
      }

      v1025 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1026 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v483, v1235, v1025, v1026);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for AffinityTagFeedGroup;
      v1002 = &v1206;
      goto LABEL_442;
    case 0x29u:
      v653 = v1175;
      sub_218A12A38(v243, v1175, type metadata accessor for SponsoredBannerTagFeedGroup);
      v654 = swift_allocBox();
      sub_218A129D0(v653, v655, type metadata accessor for SponsoredBannerTagFeedGroup);
      v656 = MEMORY[0x277D84F90];
      v657 = sub_2194AE960(MEMORY[0x277D84F90]);
      v658 = v1226;
      sub_219BED874();
      v659 = sub_219BF18F4();
      MEMORY[0x28223BE20](v659);
      v660 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v660;
      v1087[-4] = v1229;
      v1087[-3] = v654 | 0xA000000000000006;
      v1087[-2] = v657;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v659);
      v662 = v661;

      (*(v1228 + 8))(v658, v1227);
      v1238 = v654 | 0xA000000000000006;
      v663 = *(v662 + 16);
      if (v663)
      {
        v1237 = v656;
        v1233 = v654;

        sub_218C33FA0(v663);
        v664 = *(v1225 + 80);
        v1232 = v662;
        v665 = v662 + ((v664 + 32) & ~v664);
        v666 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v665, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v667 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v667 + 16) + 1, 1);
            v667 = v1237;
          }

          v669 = *(v667 + 16);
          v668 = *(v667 + 24);
          if (v669 >= v668 >> 1)
          {
            sub_218C342A8((v668 > 1), v669 + 1, 1);
            v667 = v1237;
          }

          *(v667 + 16) = v669 + 1;
          (*(v58 + 32))(v667 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v669, v1220, v1235);
          v1237 = v667;
          v665 += v666;
          --v663;
        }

        while (v663);
      }

      else
      {

        v667 = MEMORY[0x277D84F90];
      }

      v1047 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1048 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v667, v1235, v1047, v1048);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for SponsoredBannerTagFeedGroup;
      v1002 = &v1207;
      goto LABEL_442;
    case 0x2Au:
      v898 = v1176;
      sub_218A12A38(v243, v1176, type metadata accessor for LatestRecipesTagFeedGroup);
      v899 = swift_allocBox();
      sub_218A129D0(v898, v900, type metadata accessor for LatestRecipesTagFeedGroup);
      v901 = MEMORY[0x277D84F90];
      v902 = sub_2194AE960(MEMORY[0x277D84F90]);
      v903 = v1226;
      sub_219BED874();
      v904 = sub_219BF18F4();
      MEMORY[0x28223BE20](v904);
      v905 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v905;
      v1087[-4] = v1229;
      v1087[-3] = v899 | 0xB000000000000000;
      v1087[-2] = v902;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v904);
      v907 = v906;

      (*(v1228 + 8))(v903, v1227);
      v1238 = v899 | 0xB000000000000000;
      v908 = *(v907 + 16);
      if (v908)
      {
        v1237 = v901;
        v1233 = v899;

        sub_218C33FA0(v908);
        v909 = *(v1225 + 80);
        v1232 = v907;
        v910 = v907 + ((v909 + 32) & ~v909);
        v911 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v910, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v912 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v912 + 16) + 1, 1);
            v912 = v1237;
          }

          v914 = *(v912 + 16);
          v913 = *(v912 + 24);
          if (v914 >= v913 >> 1)
          {
            sub_218C342A8((v913 > 1), v914 + 1, 1);
            v912 = v1237;
          }

          *(v912 + 16) = v914 + 1;
          (*(v58 + 32))(v912 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v914, v1221, v1235);
          v1237 = v912;
          v910 += v911;
          --v908;
        }

        while (v908);
      }

      else
      {

        v912 = MEMORY[0x277D84F90];
      }

      v1075 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1076 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v912, v1235, v1075, v1076);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for LatestRecipesTagFeedGroup;
      v1002 = &v1208;
      goto LABEL_442;
    case 0x2Bu:
      v258 = v1177;
      sub_218A12A38(v243, v1177, type metadata accessor for SavedRecipesTagFeedGroup);
      v259 = swift_allocBox();
      sub_218A129D0(v258, v260, type metadata accessor for SavedRecipesTagFeedGroup);
      v261 = MEMORY[0x277D84F90];
      v262 = sub_2194AE960(MEMORY[0x277D84F90]);
      v263 = v1226;
      sub_219BED874();
      v264 = sub_219BF18F4();
      MEMORY[0x28223BE20](v264);
      v265 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v265;
      v1087[-4] = v1229;
      v1087[-3] = v259 | 0xB000000000000002;
      v1087[-2] = v262;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v264);
      v267 = v266;

      (*(v1228 + 8))(v263, v1227);
      v1238 = v259 | 0xB000000000000002;
      v268 = *(v267 + 16);
      if (v268)
      {
        v1237 = v261;
        v1233 = v259;

        sub_218C33FA0(v268);
        v269 = *(v1225 + 80);
        v1232 = v267;
        v270 = v267 + ((v269 + 32) & ~v269);
        v271 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v270, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v272 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v272 + 16) + 1, 1);
            v272 = v1237;
          }

          v274 = *(v272 + 16);
          v273 = *(v272 + 24);
          if (v274 >= v273 >> 1)
          {
            sub_218C342A8((v273 > 1), v274 + 1, 1);
            v272 = v1237;
          }

          *(v272 + 16) = v274 + 1;
          (*(v58 + 32))(v272 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v274, v1222, v1235);
          v1237 = v272;
          v270 += v271;
          --v268;
        }

        while (v268);
      }

      else
      {

        v272 = MEMORY[0x277D84F90];
      }

      v1000 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1001 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v272, v1235, v1000, v1001);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for SavedRecipesTagFeedGroup;
      v1002 = &v1209;
      goto LABEL_442;
    case 0x2Cu:
      v383 = v1178;
      sub_218A12A38(v243, v1178, type metadata accessor for TrendingRecipesTagFeedGroup);
      v384 = swift_allocBox();
      sub_218A129D0(v383, v385, type metadata accessor for TrendingRecipesTagFeedGroup);
      v386 = MEMORY[0x277D84F90];
      v387 = sub_2194AE960(MEMORY[0x277D84F90]);
      v388 = v1226;
      sub_219BED874();
      v389 = sub_219BF18F4();
      MEMORY[0x28223BE20](v389);
      v390 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v390;
      v1087[-4] = v1229;
      v1087[-3] = v384 | 0xB000000000000004;
      v1087[-2] = v387;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v389);
      v392 = v391;

      (*(v1228 + 8))(v388, v1227);
      v1238 = v384 | 0xB000000000000004;
      v393 = *(v392 + 16);
      if (v393)
      {
        v1237 = v386;
        v1233 = v384;

        sub_218C33FA0(v393);
        v394 = *(v1225 + 80);
        v1232 = v392;
        v395 = v392 + ((v394 + 32) & ~v394);
        v396 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v395, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v397 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v397 + 16) + 1, 1);
            v397 = v1237;
          }

          v399 = *(v397 + 16);
          v398 = *(v397 + 24);
          if (v399 >= v398 >> 1)
          {
            sub_218C342A8((v398 > 1), v399 + 1, 1);
            v397 = v1237;
          }

          *(v397 + 16) = v399 + 1;
          (*(v58 + 32))(v397 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v399, v1223, v1235);
          v1237 = v397;
          v395 += v396;
          --v393;
        }

        while (v393);
      }

      else
      {

        v397 = MEMORY[0x277D84F90];
      }

      v1015 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1016 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v397, v1235, v1015, v1016);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for TrendingRecipesTagFeedGroup;
      v1002 = &v1210;
      goto LABEL_442;
    case 0x2Du:
      v830 = v1179;
      sub_218A12A38(v243, v1179, type metadata accessor for TopicRecipesTagFeedGroup);
      v831 = swift_allocBox();
      sub_218A129D0(v830, v832, type metadata accessor for TopicRecipesTagFeedGroup);
      v833 = MEMORY[0x277D84F90];
      v834 = sub_2194AE960(MEMORY[0x277D84F90]);
      v835 = v1226;
      sub_219BED874();
      v836 = sub_219BF18F4();
      MEMORY[0x28223BE20](v836);
      v837 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v837;
      v1087[-4] = v1229;
      v1087[-3] = v831 | 0xB000000000000006;
      v1087[-2] = v834;
      sub_218DDE400(sub_218A12438, &v1087[-8], v836);
      v839 = v838;

      (*(v1228 + 8))(v835, v1227);
      v1238 = v831 | 0xB000000000000006;
      v840 = *(v839 + 16);
      if (v840)
      {
        v1237 = v833;
        v1233 = v831;

        sub_218C33FA0(v840);
        v841 = *(v1225 + 80);
        v1232 = v839;
        v842 = v839 + ((v841 + 32) & ~v841);
        v843 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v842, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v844 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v844 + 16) + 1, 1);
            v844 = v1237;
          }

          v846 = *(v844 + 16);
          v845 = *(v844 + 24);
          if (v846 >= v845 >> 1)
          {
            sub_218C342A8((v845 > 1), v846 + 1, 1);
            v844 = v1237;
          }

          *(v844 + 16) = v846 + 1;
          (*(v58 + 32))(v844 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v846, v1224, v1235);
          v1237 = v844;
          v842 += v843;
          --v840;
        }

        while (v840);
      }

      else
      {

        v844 = MEMORY[0x277D84F90];
      }

      v1067 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1068 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v844, v1235, v1067, v1068);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for TopicRecipesTagFeedGroup;
      v1002 = &v1211;
      goto LABEL_442;
    default:
      sub_218A12A38(v243, v234, type metadata accessor for ArticleListTagFeedGroup);
      v244 = swift_allocBox();
      sub_218A129D0(v234, v245, type metadata accessor for ArticleListTagFeedGroup);
      v246 = sub_2194AE960(MEMORY[0x277D84F90]);
      v247 = v1226;
      sub_219BED874();
      v248 = sub_219BF18F4();
      v1233 = v1087;
      MEMORY[0x28223BE20](v248);
      v249 = v1232;
      v1087[-6] = v1230;
      v1087[-5] = v249;
      v1087[-4] = v1229;
      v1087[-3] = v244 | 2;
      v1087[-2] = v246;
      sub_218DDE400(sub_218A12AA0, &v1087[-8], v248);
      v251 = v250;

      (*(v1228 + 8))(v247, v1227);
      v1238 = v244 | 2;
      v252 = *(v251 + 16);
      if (v252)
      {
        v1237 = MEMORY[0x277D84F90];
        v1232 = v244;

        sub_218C33FA0(v252);
        v253 = *(v1225 + 80);
        v1230 = v251;
        v254 = v251 + ((v253 + 32) & ~v253);
        v1233 = *(v1225 + 72);
        do
        {
          sub_218A129D0(v254, v56, type metadata accessor for TagFeedModel);
          sub_218A129D0(v56, v1234, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          sub_219BE5FB4();
          sub_218A12450(v56, type metadata accessor for TagFeedModel);
          v255 = v1237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C342A8(0, *(v255 + 16) + 1, 1);
            v255 = v1237;
          }

          v257 = *(v255 + 16);
          v256 = *(v255 + 24);
          if (v257 >= v256 >> 1)
          {
            sub_218C342A8((v256 > 1), v257 + 1, 1);
            v255 = v1237;
          }

          *(v255 + 16) = v257 + 1;
          (*(v58 + 32))(v255 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v257, v1183, v1235);
          v1237 = v255;
          v254 += v1233;
          --v252;
        }

        while (v252);
      }

      else
      {

        v255 = MEMORY[0x277D84F90];
      }

      v1039 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v1040 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v255, v1235, v1039, v1040);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();

      v561 = type metadata accessor for ArticleListTagFeedGroup;
      v562 = v234;
      return sub_218A12450(v562, v561);
  }
}

uint64_t sub_218A0BEE8(uint64_t a1, uint64_t a2)
{
  sub_21898BEA4(0);
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v5);
  v7 = (v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14[1] = a1;
  sub_218A12814(0, &qword_280E8BFE8, sub_21898BF70, MEMORY[0x277D84560]);
  sub_21898BF70(0);
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09BA0;
  *v7 = a2;
  swift_storeEnumTagMultiPayload();
  sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);

  sub_219BE5FB4();
  v11 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
  v12 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
  MEMORY[0x21CEB9150](v10, v9, v11, v12);
  sub_2186F7410();
  return sub_219BE6924();
}

uint64_t sub_218A0C198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v26 = a2;
  v28 = a1;
  v31 = a4;
  sub_21898BEA4(0);
  MEMORY[0x28223BE20](v6 - 8);
  v30 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A12694(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v27);
  v29 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  sub_2194424B0(a2);
  v32 = *(a3 + 24);
  v17 = v32;
  sub_2186FAF08();
  sub_2186CC14C(&qword_280E8E558, sub_2186FAF08, MEMORY[0x277D85380]);
  v18 = v17;
  sub_219BEE0F4();

  sub_219BF07D4();
  (*(v10 + 8))(v12, v9);
  swift_storeEnumTagMultiPayload();
  v32 = v26;
  sub_218A12814(0, &qword_280E8BFE8, sub_21898BF70, MEMORY[0x277D84560]);
  sub_21898BF70(0);
  v20 = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_219C09BA0;
  sub_218A129D0(v16, v29, type metadata accessor for TagFeedModel);
  sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);

  sub_219BE5FB4();
  v22 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
  v23 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
  MEMORY[0x21CEB9150](v21, v20, v22, v23);
  sub_2186F7410();
  sub_219BE6924();
  return sub_218A12450(v16, type metadata accessor for TagFeedModel);
}

void *sub_218A0C5EC(uint64_t a1)
{
  v2 = type metadata accessor for TagFeedModelPlaceholder(0);
  v37 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v40 = v34 - v6;
  v39 = sub_219BF1D54();
  v7 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + *(type metadata accessor for PuzzleListTagFeedGroup(0) + 20));
  v36 = *(v9 + 16);
  if (v36)
  {
    v10 = 0;
    v35 = v9 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v34[1] = v7 + 32;
    v34[2] = v7 + 16;
    v11 = MEMORY[0x277D84F98];
    v34[0] = v9;
    while (v10 < *(v9 + 16))
    {
      v12 = v38;
      v13 = v39;
      (*(v7 + 16))(v38, v35 + *(v7 + 72) * v10, v39);
      v14 = sub_219BF1D24();
      v16 = v15;
      v17 = v7;
      v18 = v40;
      (*(v7 + 32))(v40, v12, v13);
      v19 = v4;
      sub_218A12A38(v18, v4, type metadata accessor for TagFeedModelPlaceholder);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v11;
      v22 = sub_21870F700(v14, v16);
      v23 = v11[2];
      v24 = (v21 & 1) == 0;
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        goto LABEL_18;
      }

      v26 = v21;
      if (v11[3] >= v25)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_219490C5C();
        }
      }

      else
      {
        sub_21947EC7C(v25, isUniquelyReferenced_nonNull_native);
        v27 = sub_21870F700(v14, v16);
        if ((v26 & 1) != (v28 & 1))
        {
          goto LABEL_20;
        }

        v22 = v27;
      }

      v4 = v19;
      v7 = v17;
      if (v26)
      {

        v11 = v41;
        sub_218A1277C(v4, v41[7] + *(v37 + 72) * v22);
      }

      else
      {
        v11 = v41;
        v41[(v22 >> 6) + 8] |= 1 << v22;
        v29 = (v11[6] + 16 * v22);
        *v29 = v14;
        v29[1] = v16;
        sub_218A12A38(v4, v11[7] + *(v37 + 72) * v22, type metadata accessor for TagFeedModelPlaceholder);
        v30 = v11[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_19;
        }

        v11[2] = v32;
      }

      ++v10;
      v9 = v34[0];
      if (v36 == v10)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    result = sub_219BF79A4();
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_218A0C984(unsigned int (**a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (**a6)(unint64_t, uint64_t)@<X5>, void (**a7)(unint64_t, uint64_t)@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  v75 = a8;
  v73 = a6;
  v57 = a9;
  sub_218A12934(0);
  MEMORY[0x28223BE20](v15 - 8);
  v68 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BF70(0);
  v18 = v17;
  v62 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v67 = v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v60 = v55 - v21;
  MEMORY[0x28223BE20](v22);
  v61 = (v55 - v23);
  sub_218954350(0);
  v56 = v24;
  v66 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v63 = v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898C06C(0);
  v59 = v26;
  MEMORY[0x28223BE20](v26);
  v28 = v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BEA4(0);
  MEMORY[0x28223BE20](v29 - 8);
  v55[1] = v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BBC4(0);
  MEMORY[0x28223BE20](v31 - 8);
  v65 = (v55 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BEE5A4();

  v74 = sub_218FD2A54(a2, a3, a4, a5);
  v33 = v75;
  v34 = v73;
  sub_218A0D260(a1, a7, v75, a2, a3, a4, a5, v73, v74);
  v76 = v35;
  v36 = a1;
  v37 = v66;
  v64 = v36;
  v69 = a2;
  v70 = a3;
  v71 = a4;
  v72 = a5;
  v38 = v56;
  v73 = a7;
  v39 = v33;
  v40 = v65;
  sub_218A0DFA0(a5, v34, a7, v39, v65);
  if ((v37[6])(v40, 1, v38) == 1)
  {
    sub_218A12450(v40, sub_21898BBC4);
    v77[4] = v76;
    (v37[2])(v63, v64, v38);
    sub_2186CC14C(&unk_280EE5860, sub_218954350, MEMORY[0x277D6D728]);

    sub_219BF56A4();
    v41 = *(v59 + 36);
    v42 = sub_2186CC14C(&unk_280EE5850, sub_218954350, MEMORY[0x277D6D730]);
    sub_219BF5E84();
    if (*&v28[v41] == v77[0])
    {
      v43 = MEMORY[0x277D84F90];
    }

    else
    {
      v65 = (v62 + 16);
      v66 = (v62 + 8);
      v63 = (v62 + 32);
      v64 = (v62 + 48);
      v43 = MEMORY[0x277D84F90];
      v59 = v18;
      v46 = v61;
      v58 = v42;
      do
      {
        v47 = sub_219BF5EC4();
        (*v65)(v46);
        v47(v77, 0);
        v48 = v38;
        sub_219BF5E94();
        v49 = v68;
        sub_218A0F078(v46, v74, v75, v76, v68, v72);
        (*v66)(v46, v18);
        if ((*v64)(v49, 1, v18) == 1)
        {
          sub_218A12450(v49, sub_218A12934);
        }

        else
        {
          v50 = *v63;
          v51 = v60;
          (*v63)(v60, v49, v18);
          v50(v67, v51, v18);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = sub_2191F70F8(0, v43[2] + 1, 1, v43);
          }

          v53 = v43[2];
          v52 = v43[3];
          if (v53 >= v52 >> 1)
          {
            v43 = sub_2191F70F8((v52 > 1), v53 + 1, 1, v43);
          }

          v43[2] = v53 + 1;
          v54 = v43 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v53;
          v18 = v59;
          v50(v54, v67, v59);
          v46 = v61;
        }

        v38 = v48;
        sub_219BF5E84();
      }

      while (*&v28[v41] != v77[0]);
    }

    sub_218A12450(v28, sub_21898C06C);
    v44 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
    v45 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
    MEMORY[0x21CEB9170](v43, v18, v44, v45);
    type metadata accessor for TagFeedModel(0);
    sub_2186F7410();
    sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
    sub_219BE6924();
  }

  else
  {

    (v37[4])(v57, v40, v38);
  }
}

void sub_218A0D260(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (**a8)(unint64_t, uint64_t), uint64_t **a9)
{
  v92 = a8;
  v103 = a6;
  v104 = a7;
  v101 = a4;
  v102 = a5;
  v105 = a2;
  v106 = a3;
  v94 = *a9;
  v97 = type metadata accessor for CuratedTagFeedGroup(0);
  MEMORY[0x28223BE20](v97);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A12934(0);
  MEMORY[0x28223BE20](v12 - 8);
  v99 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BF70(0);
  v107 = v14;
  v96 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v98 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v95 = &v80 - v17;
  MEMORY[0x28223BE20](v18);
  v100 = (&v80 - v19);
  sub_21898C06C(0);
  v90 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BEA4(0);
  MEMORY[0x28223BE20](v23 - 8);
  v85 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BBC4(0);
  MEMORY[0x28223BE20](v25 - 8);
  v91 = (&v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218954350(0);
  v28 = v27;
  v89 = *(v27 - 1);
  MEMORY[0x28223BE20](v27);
  v84 = &v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v88 = &v80 - v31;
  v32 = type metadata accessor for TagFeedBlueprintCollapsedSection(0);
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v87 = &v80 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v93 = &v80 - v36;
  v86 = type metadata accessor for TagFeedSectionGapDescriptor(0);
  MEMORY[0x28223BE20](v86);
  v38 = &v80 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE6934();
  v39 = v109[4];
  v40 = (v39 >> 58) & 0x3C | (v39 >> 1) & 3;
  if (v40 == 10)
  {
    v42 = v97;
    v43 = swift_projectBox();
    sub_218A129D0(v43, v11, type metadata accessor for CuratedTagFeedGroup);
    if (sub_219BEE554())
    {
      v44 = sub_219BED884();
      if (__OFADD__(*v45, 1))
      {
        __break(1u);

        (*v92)(v39, v32);
        sub_218A12450(v42, sub_21898C06C);

        __break(1u);
      }

      else
      {
        ++*v45;
        v44(v109, 0);
        swift_allocBox();
        sub_218A12A38(v11, v46, type metadata accessor for CuratedTagFeedGroup);
      }
    }

    else
    {
      sub_219BE6934();
      sub_218A12450(v11, type metadata accessor for CuratedTagFeedGroup);
    }
  }

  else if (v40 || (v41 = swift_projectBox(), (*(v33 + 48))(v41, 1, v32) == 1))
  {

    sub_219BE6934();
  }

  else
  {
    v83 = v33;
    sub_218A129D0(v41, v38, type metadata accessor for TagFeedSectionGapDescriptor);
    v47 = v38;
    v48 = v93;
    sub_218A12A38(v47, v93, type metadata accessor for TagFeedBlueprintCollapsedSection);
    v49 = v101;

    v50 = v102;

    v51 = v103;

    v52 = v104;

    v94 = sub_218FD2A54(v49, v50, v51, v52);
    v53 = v92;
    sub_218A0D260(v48, v105, v106, v49, v50, v51, v52, v92, v94);
    v97 = v54;
    v55 = v91;
    sub_218A0DFA0(v52, v53, v105, v106, v91);
    v56 = v89;
    if ((*(v89 + 48))(v55, 1, v28) == 1)
    {
      v81 = v32;
      v82 = v39;
      sub_218A12450(v55, sub_21898BBC4);
      v108 = v97;
      (*(v56 + 16))(v84, v93, v28);
      sub_2186CC14C(&unk_280EE5860, sub_218954350, MEMORY[0x277D6D728]);

      sub_219BF56A4();
      v57 = *(v90 + 36);
      sub_2186CC14C(&unk_280EE5850, sub_218954350, MEMORY[0x277D6D730]);
      sub_219BF5E84();
      if (*&v22[v57] == v109[0])
      {
        v58 = MEMORY[0x277D84F90];
      }

      else
      {
        v91 = (v96 + 16);
        v92 = (v96 + 8);
        v90 = v96 + 48;
        v71 = (v96 + 32);
        v58 = MEMORY[0x277D84F90];
        v84 = v28;
        v72 = v100;
        do
        {
          v73 = sub_219BF5EC4();
          v74 = v107;
          (*v91)(v72);
          v73(v109, 0);
          sub_219BF5E94();
          v75 = v99;
          sub_218A0F078(v72, v94, v106, v97, v99, v104);
          (*v92)(v72, v74);
          if ((*v90)(v75, 1, v74) == 1)
          {
            sub_218A12450(v75, sub_218A12934);
          }

          else
          {
            v76 = *v71;
            v77 = v95;
            (*v71)(v95, v75, v74);
            v76(v98, v77, v74);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v58 = sub_2191F70F8(0, *(v58 + 2) + 1, 1, v58);
            }

            v79 = *(v58 + 2);
            v78 = *(v58 + 3);
            if (v79 >= v78 >> 1)
            {
              v58 = sub_2191F70F8((v78 > 1), v79 + 1, 1, v58);
            }

            *(v58 + 2) = v79 + 1;
            v76(&v58[((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v79], v98, v107);
            v28 = v84;
          }

          sub_219BF5E84();
          v72 = v100;
        }

        while (*&v22[v57] != v109[0]);
      }

      sub_218A12450(v22, sub_21898C06C);
      v59 = sub_2186CC14C(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v60 = sub_2186CC14C(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v58, v107, v59, v60);
      type metadata accessor for TagFeedModel(0);
      sub_2186F7410();
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      v61 = v88;
      sub_219BE6924();

      v32 = v81;
      v56 = v89;
      v62 = v93;
    }

    else
    {

      v61 = v88;
      (*(v56 + 32))(v88, v55, v28);
      v62 = v93;
    }

    v63 = (v62 + *(v32 + 20));
    v64 = *v63;
    v65 = v63[1];
    v66 = *(v62 + *(v32 + 24));

    sub_218A12450(v62, type metadata accessor for TagFeedBlueprintCollapsedSection);
    v67 = v87;
    (*(v56 + 32))(v87, v61, v28);
    v68 = (v67 + *(v32 + 20));
    *v68 = v64;
    v68[1] = v65;
    *(v67 + *(v32 + 24)) = v66;
    swift_allocBox();
    v70 = v69;
    sub_218A12A38(v67, v69, type metadata accessor for TagFeedBlueprintCollapsedSection);
    (*(v83 + 56))(v70, 0, 1, v32);
  }
}

void sub_218A0DFA0(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v142 = a1;
  v9 = type metadata accessor for TagFeedGroup(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v125 = v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_219BF2934();
  v130 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v140 = v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v139 = v114 - v14;
  v135 = sub_219BF3464();
  v129 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v127 = v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v134 = v114 - v17;
  v18 = sub_219BF1D54();
  v143 = *(v18 - 8);
  v144 = v18;
  MEMORY[0x28223BE20](v18);
  v132 = v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v136 = v114 - v21;
  MEMORY[0x28223BE20](v22);
  v138 = v114 - v23;
  MEMORY[0x28223BE20](v24);
  v133 = v114 - v25;
  MEMORY[0x28223BE20](v26);
  v126 = v114 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = v114 - v29;
  sub_218A1299C(0);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = v114 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for PuzzleListTagFeedGroup(0);
  MEMORY[0x28223BE20](v131);
  v137 = v114 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350(0);
  v145 = v35;
  sub_219BE6934();
  sub_21943EC40(v148, v33);

  v36 = (*(v10 + 48))(v33, 1, v9);
  v37 = sub_218A1299C;
  if (v36 == 1)
  {
    goto LABEL_25;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v37 = type metadata accessor for TagFeedGroup;
  if (EnumCaseMultiPayload != 34)
  {
    goto LABEL_25;
  }

  v114[1] = v9;
  v119 = a2;
  v120 = a3;
  v121 = a4;
  v39 = v137;
  sub_218A12A38(v33, v137, type metadata accessor for PuzzleListTagFeedGroup);
  v40 = sub_2189FF0C4(v142);
  v41 = *(v39 + *(v131 + 20));
  v42 = *(v41 + 16);
  v43 = MEMORY[0x277D84F90];
  v128 = a5;
  v146 = v40;
  if (v42)
  {
    v148 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v44 = v144;
    v147 = *(v143 + 16);
    v45 = v41 + ((*(v143 + 80) + 32) & ~*(v143 + 80));
    v46 = *(v143 + 72);
    v47 = (v143 + 8);
    do
    {
      v147(v30, v45, v44);
      sub_219BF1D34();
      (*v47)(v30, v44);
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      v45 += v46;
      --v42;
    }

    while (v42);
    v43 = v148;
    a5 = v128;
    v33 = v146;
    if (!(v148 >> 62))
    {
LABEL_7:
      if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_8;
      }

LABEL_31:
      sub_218A12450(v137, type metadata accessor for PuzzleListTagFeedGroup);

      goto LABEL_27;
    }
  }

  else
  {
    v33 = v40;
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_7;
    }
  }

  if (!sub_219BF7214())
  {
    goto LABEL_31;
  }

LABEL_8:
  if ((v43 & 0xC000000000000001) != 0)
  {
    goto LABEL_79;
  }

  if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_82;
  }

  v147 = *(v43 + 32);
  swift_unknownObjectRetain();
LABEL_11:

  a5 = v33 & 0xFFFFFFFFFFFFFF8;
  if (v33 >> 62)
  {
    v43 = sub_219BF7214();
  }

  else
  {
    v43 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v48 = 0;
  v49 = v33 & 0xC000000000000001;
  while (1)
  {
    if (v43 == v48)
    {

      swift_unknownObjectRelease();
      sub_218A12450(v137, type metadata accessor for PuzzleListTagFeedGroup);
      v61 = 1;
      a5 = v128;
      goto LABEL_28;
    }

    if (v49)
    {
      v51 = MEMORY[0x21CECE0F0](v48, v33);
      if (__OFADD__(v48, 1))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v48 >= *(a5 + 16))
      {
        goto LABEL_77;
      }

      v51 = *(v33 + 8 * v48 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v48, 1))
      {
LABEL_24:
        __break(1u);
LABEL_25:
        v59 = v33;
        v60 = v37;
        goto LABEL_26;
      }
    }

    v52 = [v51 identifier];
    v53 = sub_219BF5414();
    v55 = v54;

    v56 = [v147 identifier];
    v57 = sub_219BF5414();
    v33 = v58;

    if (v53 == v57 && v55 == v33)
    {
      break;
    }

    v50 = sub_219BF78F4();
    swift_unknownObjectRelease();

    ++v48;
    v33 = v146;
    if (v50)
    {
      goto LABEL_33;
    }
  }

  swift_unknownObjectRelease();

LABEL_33:

  v62 = v142 + 64;
  v63 = 1 << *(v142 + 32);
  v64 = -1;
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  v65 = v64 & *(v142 + 64);
  v66 = (v63 + 63) >> 6;
  v124 = v143 + 16;
  v146 = v143 + 32;
  v118 = (v129 + 8);
  v117 = *MEMORY[0x277D33A20];
  v116 = (v130 + 104);
  v67 = (v130 + 8);
  v122 = (v143 + 8);

  v69 = 0;
  v70 = v144;
  a5 = v128;
  if (v65)
  {
    while (1)
    {
      v71 = v69;
LABEL_40:
      v72 = *(v68 + 56);
      v73 = v143;
      v129 = *(v143 + 72);
      v74 = v133;
      v123 = *(v143 + 16);
      v123(v133, v72 + v129 * (__clz(__rbit64(v65)) | (v71 << 6)), v70);
      v130 = *(v73 + 32);
      (v130)(v138, v74, v70);
      v75 = v134;
      sub_219BF1D44();
      sub_219BF3444();
      v115 = *v118;
      v115(v75, v135);
      (*v116)(v140, v117, v141);
      sub_2186CC14C(&qword_27CC0C710, MEMORY[0x277D33A28], MEMORY[0x277D33A40]);
      sub_219BF5874();
      sub_219BF5874();
      v43 = v149;
      if (v148 == v150 && v149 == v151)
      {
        break;
      }

      v76 = sub_219BF78F4();
      v77 = *v67;
      v33 = v141;
      (*v67)(v140, v141);
      v77(v139, v33);

      if (v76)
      {
        goto LABEL_47;
      }

      v65 &= v65 - 1;
      v70 = v144;
      (*v122)(v138, v144);
      v69 = v71;
      a5 = v128;
      v68 = v142;
      if (!v65)
      {
        goto LABEL_37;
      }
    }

    v78 = *v67;
    v79 = v141;
    (*v67)(v140, v141);
    v78(v139, v79);

LABEL_47:

    v80 = v126;
    v81 = v144;
    (v130)(v126, v138, v144);
    v82 = v127;
    sub_219BF1D44();
    v140 = *v122;
    (v140)(v80, v81);
    sub_219BF3434();
    v84 = v83;
    v115(v82, v135);
    v85.n128_u64[0] = 1.0;
    a5 = v128;
    if (v84 != 1.0 && v84 != 0.0)
    {
      sub_218A12450(v137, type metadata accessor for PuzzleListTagFeedGroup);
      swift_unknownObjectRelease();
      goto LABEL_27;
    }

    v86 = v142;
    v43 = *(v142 + 16);
    if (v43)
    {
      v87 = sub_21947D334(*(v142 + 16), 0);
      sub_2194ABEBC(&v148, &v87[(*(v143 + 80) + 32) & ~*(v143 + 80)], v43, v86);
      v89 = v88;
      v90 = v148;

      v85.n128_f64[0] = sub_21892DE98(v90);
      if (v89 != v43)
      {
LABEL_85:
        __break(1u);
        return;
      }

      v91 = v121;
      v92 = v120;
      v93 = v119;
      v81 = v144;
    }

    else
    {
      v87 = MEMORY[0x277D84F90];
      v91 = v121;
      v92 = v120;
      v93 = v119;
    }

    v142 = *(v87 + 2);
    if (v142)
    {
      v94 = 0;
      v33 = MEMORY[0x277D84F90];
      v95 = v87;
      v141 = v87;
      while (1)
      {
        if (v94 >= *(v87 + 2))
        {
          goto LABEL_78;
        }

        v96 = (*(v143 + 80) + 32) & ~*(v143 + 80);
        (v123)(v136, &v95[v96], v81, v85);
        v97 = [sub_219BF1D34() identifier];
        swift_unknownObjectRelease();
        v98 = sub_219BF5414();
        v100 = v99;

        v101 = [v147 identifier];
        v102 = sub_219BF5414();
        v104 = v103;

        if (v98 == v102 && v100 == v104)
        {
          break;
        }

        v106 = sub_219BF78F4();

        if (v106)
        {
          goto LABEL_66;
        }

        v81 = v144;
        (v140)(v136, v144);
        v91 = v121;
        v92 = v120;
        v93 = v119;
        v43 = v129;
LABEL_57:
        ++v94;
        v95 += v43;
        v87 = v141;
        if (v142 == v94)
        {
          goto LABEL_72;
        }
      }

LABEL_66:
      (v130)(v132, v136, v144);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v148 = v33;
      v91 = v121;
      v92 = v120;
      v93 = v119;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_218C34958(0, *(v33 + 16) + 1, 1);
        v33 = v148;
      }

      v109 = *(v33 + 16);
      v108 = *(v33 + 24);
      if (v109 >= v108 >> 1)
      {
        sub_218C34958((v108 > 1), v109 + 1, 1);
        v33 = v148;
      }

      *(v33 + 16) = v109 + 1;
      v43 = v129;
      v81 = v144;
      (v130)(v33 + v96 + v109 * v129, v132, v144);
      a5 = v128;
      goto LABEL_57;
    }

    v33 = MEMORY[0x277D84F90];
LABEL_72:

    v110 = sub_219BED8D4();
    (*(*(v110 - 8) + 16))(v125, v137, v110);
    if ((*&v84 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v84 > -9.22337204e18)
      {
        if (v84 < 9.22337204e18)
        {
          v111 = v131;
          v112 = v125;
          *&v125[*(v131 + 20)] = v33;
          *(v112 + *(v111 + 24)) = v84;
          swift_storeEnumTagMultiPayload();
          v113 = sub_2194AEB98(MEMORY[0x277D84F90]);
          sub_2189FF3B0(v112, v113, v93, v92, v91, a5);
          swift_unknownObjectRelease();

          sub_218A12450(v112, type metadata accessor for TagFeedGroup);
          sub_218A12450(v137, type metadata accessor for PuzzleListTagFeedGroup);
          v61 = 0;
          goto LABEL_28;
        }

        goto LABEL_84;
      }

LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  while (1)
  {
LABEL_37:
    v71 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      v147 = MEMORY[0x21CECE0F0](0, v43);
      goto LABEL_11;
    }

    if (v71 >= v66)
    {
      break;
    }

    v65 = *(v62 + 8 * v71);
    ++v69;
    if (v65)
    {
      goto LABEL_40;
    }
  }

  swift_unknownObjectRelease();
  v60 = type metadata accessor for PuzzleListTagFeedGroup;
  v59 = v137;
LABEL_26:
  sub_218A12450(v59, v60);
LABEL_27:
  v61 = 1;
LABEL_28:
  (*(*(v145 - 8) + 56))(a5, v61, 1);
}

uint64_t sub_218A0F078@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>, uint64_t a6)
{
  v225 = a5;
  v217 = a4;
  v218 = a3;
  v214 = a2;
  v190 = a6;
  v189 = sub_219BF0B74();
  v188 = *(v189 - 8);
  MEMORY[0x28223BE20](v189);
  v187 = &v162 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F1164(0);
  v202 = v8;
  v191 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v201 = &v162 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_219BEEAD4();
  v185 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v184 = &v162 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = sub_219BF1D54();
  v194 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  v165 = &v162 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v183 = &v162 - v13;
  MEMORY[0x28223BE20](v14);
  v171 = &v162 - v15;
  sub_2186F7328(0);
  v197 = v16;
  v196 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v195 = &v162 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_219BEDB94();
  v181 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v180 = &v162 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F107C(0);
  v210 = *(v19 - 8);
  v211 = v19;
  MEMORY[0x28223BE20](v19);
  v209 = &v162 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_219BF0AC4();
  v177 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v176 = &v162 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FB04C(0);
  v207 = *(v22 - 8);
  v208 = v22;
  MEMORY[0x28223BE20](v22);
  v206 = &v162 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A12968(0);
  MEMORY[0x28223BE20](v24 - 8);
  v168 = &v162 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_219BF07A4();
  v174 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v173 = &v162 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F7240(0);
  v200 = v27;
  v199 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v198 = &v162 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88(0);
  v167 = v29;
  v164 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v166 = &v162 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A127E0(0);
  MEMORY[0x28223BE20](v31 - 8);
  v172 = &v162 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_219BF1094();
  v204 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v162 = &v162 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v163 = &v162 - v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v162 - v37;
  sub_2186F7158(0);
  v179 = v39;
  v193 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v205 = &v162 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A12878(0);
  MEMORY[0x28223BE20](v41 - 8);
  v170 = &v162 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_219BF0BD4();
  v215 = *(v43 - 8);
  v216 = v43;
  MEMORY[0x28223BE20](v43);
  v222 = &v162 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_219BF0F34();
  v46 = *(v45 - 8);
  v212 = v45;
  v213 = v46;
  MEMORY[0x28223BE20](v45);
  v169 = &v162 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v50 = &v162 - v49;
  MEMORY[0x28223BE20](v51);
  v53 = &v162 - v52;
  sub_2186F0E54(0);
  v55 = v54;
  v56 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v58 = &v162 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v59);
  v219 = &v162 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v221 = &v162 - v62;
  MEMORY[0x28223BE20](v63);
  v65 = &v162 - v64;
  sub_21898BF70(0);
  v223 = a1;
  v224 = v66;
  sub_219BE5FC4();
  v220 = v59;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_218A128AC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8], "location offlineModel ");
      v114 = *(v113 + 48);
      v115 = sub_219BF1584();
      (*(*(v115 - 8) + 8))(&v65[v114], v115);
      v67 = type metadata accessor for TagFeedGapLocation;
      goto LABEL_3;
    case 2u:
      v211 = v56;
      (*(v56 + 32))(v58, v65, v55);
      sub_219BF07D4();
      sub_219BF0F14();
      v98 = v212;
      v99 = *(v213 + 8);
      v99(v53, v212);
      v100 = sub_219BEE584();
      swift_unknownObjectRelease();
      if (v100)
      {
        sub_219BF07D4();
        v223 = sub_219BF0F14();
        v99(v53, v98);
        sub_219BF07E4();
        sub_219BF07D4();
        v101 = v170;
        sub_219BF0E54();
        v99(v50, v98);
        v214 = sub_2194424B0(v217);
        v102 = v218[3];
        v217 = v218[2];
        v226 = v102;
        sub_2186FAF08();
        sub_2186CC14C(&qword_280E8E558, sub_2186FAF08, MEMORY[0x277D85380]);
        v218 = v102;
        v103 = v221;
        v104 = v222;
        sub_219BEE214();
        swift_unknownObjectRelease();

        sub_218A12450(v101, sub_218A12878);
        (*(v215 + 8))(v104, v216);

        swift_storeEnumTagMultiPayload();
        sub_218A129D0(v103, v219, type metadata accessor for TagFeedModel);
        sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
        v72 = v225;
        sub_219BE5FB4();
        sub_218A12450(v103, type metadata accessor for TagFeedModel);
        (*(v211 + 8))(v58, v55);
        goto LABEL_24;
      }

      (*(v211 + 8))(v58, v55);
      goto LABEL_5;
    case 3u:
    case 5u:
    case 6u:
    case 8u:
    case 9u:
      v67 = type metadata accessor for TagFeedModel;
LABEL_3:
      v68 = v67;
      v69 = v65;
      goto LABEL_4;
    case 4u:
      v105 = v193;
      v106 = v205;
      v107 = v179;
      (*(v193 + 32))(v205, v65, v179);
      sub_219BF07D4();
      v108 = v172;
      sub_219BF1074();
      v109 = v204 + 8;
      v211 = *(v204 + 8);
      (v211)(v38, v192);
      v110 = v212;
      v111 = v213;
      if ((*(v213 + 48))(v108, 1, v212) == 1)
      {
        (*(v105 + 8))(v106, v107);
        v68 = sub_218A127E0;
        v69 = v108;
LABEL_4:
        sub_218A12450(v69, v68);
        goto LABEL_5;
      }

      v204 = v109;
      v150 = v169;
      (*(v111 + 32))(v169, v108, v110);
      sub_219BF0F14();
      v151 = sub_219BEE584();
      swift_unknownObjectRelease();
      v152 = v110;
      v70 = v224;
      if (v151)
      {
        v214 = sub_219BF0F14();
        v223 = v218[2];
        v153 = v222;
        sub_219BF07E4();
        sub_2194424B0(v217);
        v154 = sub_219BEBD44();
        v155 = v170;
        (*(*(v154 - 8) + 56))(v170, 1, 1, v154);
        sub_219BEE204();

        sub_218A12450(v155, sub_218A12878);
        (*(v215 + 8))(v153, v216);
        v156 = v162;
        sub_219BF07D4();
        sub_219BF07D4();
        v157 = v163;
        sub_219BF1054();
        v158 = *(v213 + 8);
        v213 += 8;
        v223 = v158;
        v158(v53, v212);
        v159 = v192;
        v160 = v211;
        (v211)(v156, v192);
        sub_2186CC14C(&qword_280E8E558, sub_2186FAF08, MEMORY[0x277D85380]);
        v161 = v221;
        sub_219BF0814();
        swift_unknownObjectRelease();
        v160(v157, v159);
        (*(v164 + 8))(v166, v167);
        swift_storeEnumTagMultiPayload();
        sub_218A129D0(v161, v219, type metadata accessor for TagFeedModel);
        sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
        v72 = v225;
        sub_219BE5FB4();
        sub_218A12450(v161, type metadata accessor for TagFeedModel);
        v223(v169, v212);
        (*(v193 + 8))(v205, v107);
        goto LABEL_25;
      }

      (*(v111 + 8))(v150, v152);
      (*(v105 + 8))(v205, v107);
      goto LABEL_6;
    case 7u:
      sub_218A128AC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54, " fallback ");
      (*(v56 + 8))(&v65[*(v96 + 48)], v55);
      sub_2186EAD48(0);
      (*(*(v97 - 8) + 8))(v65, v97);
      goto LABEL_5;
    case 0xAu:
      v73 = v199;
      v74 = v198;
      v75 = v200;
      (*(v199 + 32))(v198, v65, v200);
      v137 = v173;
      sub_219BF07D4();
      v138 = sub_219BF06B4();
      v139 = *(v174 + 8);
      v140 = v175;
      v139(v137, v175);
      v141 = MEMORY[0x21CEC5300](v138);

      if ((v141 & 1) == 0)
      {
        goto LABEL_31;
      }

      sub_219BF07D4();
      v223 = sub_219BF06B4();
      v139(v137, v140);
      v142 = v222;
      sub_219BF07E4();
      sub_2194424B0(v217);
      v143 = v218[3];
      v217 = v218[2];
      v226 = v143;
      v144 = sub_219BF0744();
      v145 = v168;
      (*(*(v144 - 8) + 56))(v168, 1, 1, v144);
      sub_2186FAF08();
      sub_2186CC14C(&qword_280E8E558, sub_2186FAF08, MEMORY[0x277D85380]);
      v146 = v143;
      v147 = v221;
      v148 = v223;
      sub_219BEE1A4();

      sub_218A12450(v145, sub_218A12968);
      (*(v215 + 8))(v142, v216);

      swift_storeEnumTagMultiPayload();
      sub_218A129D0(v147, v219, type metadata accessor for TagFeedModel);
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      v72 = v225;
      sub_219BE5FB4();
      sub_218A12450(v147, type metadata accessor for TagFeedModel);
      v134 = *(v199 + 8);
      v135 = v198;
      v136 = &v227;
      goto LABEL_23;
    case 0xBu:
      (*(v207 + 32))(v206, v65, v208);
      v86 = v176;
      sub_219BF07D4();
      sub_219BF0AA4();
      (*(v177 + 8))(v86, v178);
      v87 = v222;
      sub_219BF07E4();
      sub_2194424B0(v217);
      v226 = v218[3];
      v88 = v226;
      sub_2186FAF08();
      sub_2186CC14C(&qword_280E8E558, sub_2186FAF08, MEMORY[0x277D85380]);
      v89 = v88;
      v90 = v221;
      sub_219BEE1B4();
      swift_unknownObjectRelease();

      (*(v215 + 8))(v87, v216);

      swift_storeEnumTagMultiPayload();
      sub_218A129D0(v90, v219, type metadata accessor for TagFeedModel);
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      v72 = v225;
      sub_219BE5FB4();
      sub_218A12450(v90, type metadata accessor for TagFeedModel);
      (*(v207 + 8))(v206, v208);
      goto LABEL_24;
    case 0xCu:
      (*(v210 + 32))(v209, v65, v211);
      v91 = v180;
      sub_219BF07D4();
      sub_219BEDB74();
      (*(v181 + 8))(v91, v182);
      v92 = v222;
      sub_219BF07E4();
      sub_2194424B0(v217);
      v226 = v218[3];
      v93 = v226;
      sub_2186FAF08();
      sub_2186CC14C(&qword_280E8E558, sub_2186FAF08, MEMORY[0x277D85380]);
      v94 = v93;
      v95 = v221;
      sub_219BEE124();
      swift_unknownObjectRelease();

      (*(v215 + 8))(v92, v216);

      swift_storeEnumTagMultiPayload();
      sub_218A129D0(v95, v219, type metadata accessor for TagFeedModel);
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      v72 = v225;
      sub_219BE5FB4();
      sub_218A12450(v95, type metadata accessor for TagFeedModel);
      (*(v210 + 8))(v209, v211);
      goto LABEL_24;
    case 0xDu:
      v73 = v196;
      v74 = v195;
      v75 = v197;
      (*(v196 + 32))(v195, v65, v197);
      v116 = v184;
      sub_219BF07D4();
      v117 = v183;
      sub_219BEEAB4();
      (*(v185 + 8))(v116, v186);
      v118 = sub_219BF1D24();
      v120 = v119;
      v121 = *(v194 + 8);
      v121(v117, v203);
      v122 = v190;
      if (*(v190 + 16))
      {
        v123 = sub_21870F700(v118, v120);
        v125 = v124;

        if (v125)
        {
          v126 = v194;
          v127 = *(v122 + 56) + *(v194 + 72) * v123;
          v128 = v165;
          v129 = v203;
          (*(v194 + 16))(v165, v127, v203);
          (*(v126 + 32))(v171, v128, v129);
          v130 = v222;
          sub_219BF07E4();
          sub_2194424B0(v217);
          v131 = v218[3];
          v223 = v218[2];
          v226 = v131;
          sub_2186FAF08();
          sub_2186CC14C(&qword_280E8E558, sub_2186FAF08, MEMORY[0x277D85380]);
          v132 = v131;
          v133 = v221;
          sub_219BEE144();

          (*(v215 + 8))(v130, v216);

          swift_storeEnumTagMultiPayload();
          sub_218A129D0(v133, v219, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          v72 = v225;
          sub_219BE5FB4();
          sub_218A12450(v133, type metadata accessor for TagFeedModel);
          v121(v171, v203);
          v134 = *(v196 + 8);
          v135 = v195;
          v136 = &v226;
LABEL_23:
          v134(v135, *(v136 - 32));
LABEL_24:
          v70 = v224;
LABEL_25:
          v71 = *(v70 - 8);
          return (*(v71 + 56))(v72, 0, 1, v70);
        }
      }

      else
      {
      }

LABEL_31:
      (*(v73 + 8))(v74, v75);
LABEL_5:
      v70 = v224;
LABEL_6:
      v71 = *(v70 - 8);
      v72 = v225;
      (*(v71 + 16))(v225, v223, v70);
      return (*(v71 + 56))(v72, 0, 1, v70);
    case 0xEu:
      v73 = v191;
      v74 = v201;
      v75 = v202;
      (*(v191 + 32))(v201, v65, v202);
      v76 = v187;
      sub_219BF07D4();
      v77 = sub_219BF0B44();
      v78 = *(v188 + 8);
      v79 = v189;
      v78(v76, v189);
      v80 = MEMORY[0x21CEC5310](v77);

      if ((v80 & 1) == 0)
      {
        goto LABEL_31;
      }

      sub_219BF07D4();
      v81 = sub_219BF0B44();
      v78(v76, v79);
      v82 = v222;
      sub_219BF07E4();
      sub_2194424B0(v217);
      v83 = v218[3];
      v223 = v218[2];
      v226 = v83;
      sub_2186FAF08();
      sub_2186CC14C(&qword_280E8E558, sub_2186FAF08, MEMORY[0x277D85380]);
      v84 = v83;
      v85 = v221;
      sub_219BEE1D4();

      (*(v215 + 8))(v82, v216);

      swift_storeEnumTagMultiPayload();
      sub_218A129D0(v85, v219, type metadata accessor for TagFeedModel);
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      v72 = v225;
      sub_219BE5FB4();
      sub_218A12450(v85, type metadata accessor for TagFeedModel);
      (*(v73 + 8))(v201, v202);
      goto LABEL_24;
    default:

      sub_2186F0CC0(0);
      v68 = type metadata accessor for TagFeedGapLocation;
      v69 = &v65[*(v112 + 48)];
      goto LABEL_4;
  }
}

uint64_t sub_218A111A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v119 = a4;
  v122 = a3;
  v127 = a2;
  v139 = a5;
  v116 = sub_219BF0B74();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v7 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F1164(0);
  v132 = *(v8 - 1);
  v133 = v8;
  MEMORY[0x28223BE20](v8);
  v131 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88(0);
  v111 = v10;
  v109 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v110 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A127E0(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_219BF1094();
  v128 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v107 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v108 = &v107 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v107 - v19;
  sub_2186F7158(0);
  v117 = v21;
  v126 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v129 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A12878(0);
  MEMORY[0x28223BE20](v23 - 8);
  v113 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_219BF0BD4();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v130 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_219BF0F34();
  v26 = *(v134 - 1);
  MEMORY[0x28223BE20](v134);
  v114 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v112 = &v107 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v107 - v31;
  sub_2186F0E54(0);
  v135 = *(v33 - 1);
  v136 = v33;
  MEMORY[0x28223BE20](v33);
  v35 = &v107 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v36);
  v123 = &v107 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v125 = &v107 - v39;
  MEMORY[0x28223BE20](v40);
  v42 = &v107 - v41;
  sub_21898BF70(0);
  v137 = a1;
  v138 = v43;
  sub_219BE5FC4();
  v124 = v36;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_218A128AC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8], "location offlineModel ");
      v82 = *(v81 + 48);
      v83 = sub_219BF1584();
      (*(*(v83 - 8) + 8))(&v42[v82], v83);
      v44 = type metadata accessor for TagFeedGapLocation;
      goto LABEL_3;
    case 2u:
      (*(v135 + 32))(v35, v42, v136);
      sub_219BF07D4();
      v57 = sub_219BF0F14();
      v58 = *(v26 + 8);
      v59 = v134;
      v58(v32, v134);
      v60 = [v57 identifier];
      swift_unknownObjectRelease();
      v61 = sub_219BF5414();
      v63 = v62;

      v64 = v127;
      if (*(v127 + 16))
      {
        v65 = sub_21870F700(v61, v63);
        v67 = v66;

        if (v67)
        {
          v137 = *(*(v64 + 56) + 8 * v65);
          swift_unknownObjectRetain();
          sub_219BF07E4();
          sub_218954350(0);
          sub_219BE6934();
          v68 = v141;
          v133 = v141;
          v69 = v112;
          sub_219BF07D4();
          v70 = v113;
          sub_219BF0E54();
          v58(v69, v59);
          sub_2194424B0(v68);
          v140 = *(v122 + 24);
          v71 = v140;
          sub_2186FAF08();
          sub_2186CC14C(&qword_280E8E558, sub_2186FAF08, MEMORY[0x277D85380]);
          v134 = v71;
          v72 = v125;
          v73 = v130;
          sub_219BEE214();

          sub_218A12450(v70, sub_218A12878);
          (*(v120 + 8))(v73, v121);

          swift_storeEnumTagMultiPayload();
          sub_218A129D0(v72, v123, type metadata accessor for TagFeedModel);
          sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
          v47 = v139;
          sub_219BE5FB4();
          swift_unknownObjectRelease();
          sub_218A12450(v72, type metadata accessor for TagFeedModel);
          (*(v135 + 8))(v35, v136);
          goto LABEL_19;
        }
      }

      else
      {
      }

      (*(v135 + 8))(v35, v136);
      goto LABEL_5;
    case 3u:
    case 5u:
    case 6u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
      v44 = type metadata accessor for TagFeedModel;
LABEL_3:
      v45 = v44;
      v46 = v42;
      goto LABEL_4;
    case 4u:
      v74 = v126;
      v75 = v129;
      v76 = v117;
      (*(v126 + 32))();
      sub_219BF07D4();
      sub_219BF1074();
      v77 = v128 + 8;
      v78 = *(v128 + 8);
      v78(v20, v118);
      v79 = v134;
      if ((*(v26 + 48))(v14, 1, v134) == 1)
      {
        (*(v74 + 8))(v75, v76);
        v45 = sub_218A127E0;
        v46 = v14;
LABEL_4:
        sub_218A12450(v46, v45);
        goto LABEL_5;
      }

      v128 = v77;
      (*(v26 + 32))(v114, v14, v79);
      v84 = [sub_219BF0F14() identifier];
      swift_unknownObjectRelease();
      v85 = sub_219BF5414();
      v87 = v86;

      v88 = v127;
      if (!*(v127 + 16))
      {

        goto LABEL_23;
      }

      v89 = sub_21870F700(v85, v87);
      v91 = v90;

      if ((v91 & 1) == 0)
      {
LABEL_23:
        (*(v26 + 8))(v114, v79);
        (*(v126 + 8))(v129, v76);
LABEL_5:
        v48 = v138;
        v47 = v139;
        v49 = *(v138 - 8);
        (*(v49 + 16))(v139, v137, v138);
        return (*(v49 + 56))(v47, 0, 1, v48);
      }

      v92 = *(*(v88 + 56) + 8 * v89);
      sub_218954350(0);
      v136 = v92;
      swift_unknownObjectRetain();
      sub_219BE6934();
      v93 = v141;
      v135 = v141;
      v137 = v26;
      v133 = *(v122 + 16);
      v94 = v76;
      v95 = v130;
      sub_219BF07E4();
      sub_2194424B0(v93);
      v96 = sub_219BEBD44();
      v97 = v113;
      (*(*(v96 - 8) + 56))(v113, 1, 1, v96);
      sub_219BEE204();

      sub_218A12450(v97, sub_218A12878);
      (*(v120 + 8))(v95, v121);
      v98 = v107;
      v99 = v94;
      v100 = v129;
      sub_219BF07D4();
      v101 = v112;
      sub_219BF07D4();
      v102 = v108;
      sub_219BF1054();
      v103 = *(v137 + 8);
      v137 += 8;
      v133 = v103;
      v103(v101, v79);
      v104 = v98;
      v105 = v118;
      v78(v104, v118);
      sub_2186CC14C(&qword_280E8E558, sub_2186FAF08, MEMORY[0x277D85380]);
      v106 = v125;
      sub_219BF0814();

      v78(v102, v105);
      (*(v109 + 8))(v110, v111);
      swift_storeEnumTagMultiPayload();
      sub_218A129D0(v106, v123, type metadata accessor for TagFeedModel);
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      v47 = v139;
      sub_219BE5FB4();
      swift_unknownObjectRelease();
      sub_218A12450(v106, type metadata accessor for TagFeedModel);
      v133(v114, v79);
      (*(v126 + 8))(v100, v99);
LABEL_19:
      v48 = v138;
      v49 = *(v138 - 8);
      return (*(v49 + 56))(v47, 0, 1, v48);
    case 7u:
      sub_218A128AC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54, " fallback ");
      (*(v135 + 8))(&v42[*(v55 + 48)], v136);
      sub_2186EAD48(0);
      (*(*(v56 - 8) + 8))(v42, v56);
      goto LABEL_5;
    case 0xEu:
      (*(v132 + 32))(v131, v42, v133);
      sub_219BF07D4();
      v137 = sub_219BF0B44();
      (*(v115 + 8))(v7, v116);
      v51 = v130;
      sub_219BF07E4();
      sub_218954350(0);
      sub_219BE6934();
      sub_2194424B0(v141);
      v140 = *(v122 + 24);
      v52 = v140;
      sub_2186FAF08();
      sub_2186CC14C(&qword_280E8E558, sub_2186FAF08, MEMORY[0x277D85380]);
      v136 = v52;
      v53 = v125;
      v54 = v137;
      sub_219BEE1D4();

      (*(v120 + 8))(v51, v121);

      swift_storeEnumTagMultiPayload();
      sub_218A129D0(v53, v123, type metadata accessor for TagFeedModel);
      sub_2186CC14C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      v47 = v139;
      sub_219BE5FB4();
      sub_218A12450(v53, type metadata accessor for TagFeedModel);
      (*(v132 + 8))(v131, v133);
      goto LABEL_19;
    default:

      sub_2186F0CC0(0);
      v45 = type metadata accessor for TagFeedGapLocation;
      v46 = &v42[*(v80 + 48)];
      goto LABEL_4;
  }
}

uint64_t sub_218A12450(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218A124B0(uint64_t a1)
{
  if (!qword_280E91F40)
  {
    type metadata accessor for IssueListTagFeedGroup(255);
    sub_2186CC14C(&unk_280ECAA40, type metadata accessor for IssueListTagFeedGroup, &unk_219C97C28);
    sub_2186CC14C(qword_280ECAA50, type metadata accessor for IssueListTagFeedGroup, &unk_219C97C00);
    v1 = sub_219BEDE84();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91F40);
    }
  }
}

void sub_218A125B4(uint64_t a1)
{
  if (!qword_280E91F48)
  {
    type metadata accessor for PaywallTagFeedGroup(255);
    sub_2186CC14C(&qword_280ED0B10, type metadata accessor for PaywallTagFeedGroup, &unk_219C0D34C);
    sub_2186CC14C(&qword_280ED0B18, type metadata accessor for PaywallTagFeedGroup, &unk_219C0D324);
    v1 = sub_219BEDE84();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91F48);
    }
  }
}

void sub_218A12694(uint64_t a1)
{
  if (!qword_280E90D78)
  {
    sub_219BF0D74();
    sub_2186FAF08();
    v1 = MEMORY[0x277D33038];
    sub_2186CC14C(&qword_280E90AD0, MEMORY[0x277D33038], MEMORY[0x277D33040]);
    sub_2186CC14C(&unk_280E90AD8, v1, MEMORY[0x277D33030]);
    v2 = sub_219BF0854();
    if (!v3)
    {
      atomic_store(v2, &qword_280E90D78);
    }
  }
}

uint64_t sub_218A1277C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagFeedModelPlaceholder(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_218A12814(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218A128AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_218A129D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218A12A38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_218A12AC0()
{
  v1 = v0;
  v2 = 0x6973736553707061;
  v3 = type metadata accessor for EngagementEvent(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A153EC(v1, v5);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v2 = 0x52656C6369747261;
      break;
    case 3u:
      v2 = 0x676E456F69647561;
      break;
    case 4u:
      v2 = 0x6769536C69616D65;
      break;
    case 5u:
      v2 = 0x7765695664656566;
      break;
    case 6u:
      v2 = 0x776F6C6C6F66;
      break;
    case 7u:
      v2 = 0x776F6C6C6F666E75;
      break;
    case 8u:
      v2 = 0x6E69776F6C6C6F66;
      break;
    case 9u:
      v2 = 0x4C656C6369747261;
      break;
    case 0xAu:
      v2 = 0x55656C6369747261;
      break;
    case 0xBu:
      v2 = 0x53656C6369747261;
      break;
    case 0xCu:
      v2 = 0xD000000000000019;
      break;
    case 0xDu:
      v2 = 0x53656C6369747261;
      break;
    case 0xEu:
      v2 = 0xD000000000000014;
      break;
    case 0xFu:
      v2 = 0x6956656C7A7A7570;
      break;
    default:
      break;
  }

  sub_218A154B4(v5, type metadata accessor for EngagementEvent);
  return v2;
}

uint64_t _s7NewsUI215EngagementEventO2eeoiySbAC_ACtFZ_0(uint64_t *a1, char *a2)
{
  v461 = a1;
  v462 = a2;
  v2 = sub_219BDF934();
  v455 = *(v2 - 8);
  v456 = v2;
  MEMORY[0x28223BE20](v2);
  v454 = &v368 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v453 = &v368 - v5;
  v6 = sub_219BDFC44();
  v451 = *(v6 - 8);
  v452 = v6;
  MEMORY[0x28223BE20](v6);
  v450 = &v368 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v449 = &v368 - v9;
  v10 = sub_219BDFF34();
  v447 = *(v10 - 8);
  v448 = v10;
  MEMORY[0x28223BE20](v10);
  v446 = &v368 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v445 = &v368 - v13;
  v444 = sub_219BE14C4();
  v443 = *(v444 - 8);
  MEMORY[0x28223BE20](v444);
  v395 = &v368 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v394 = &v368 - v16;
  v442 = sub_219BDFAF4();
  v441 = *(v442 - 8);
  MEMORY[0x28223BE20](v442);
  v440 = &v368 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v439 = &v368 - v19;
  v438 = sub_219BE01B4();
  v437 = *(v438 - 8);
  MEMORY[0x28223BE20](v438);
  v436 = &v368 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v435 = &v368 - v22;
  v434 = sub_219BDFAB4();
  v433 = *(v434 - 8);
  MEMORY[0x28223BE20](v434);
  v432 = &v368 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v431 = &v368 - v25;
  v430 = sub_219BE0234();
  v429 = *(v430 - 8);
  MEMORY[0x28223BE20](v430);
  v428 = &v368 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v427 = &v368 - v28;
  v426 = sub_219BDF514();
  v425 = *(v426 - 8);
  MEMORY[0x28223BE20](v426);
  v424 = &v368 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v423 = &v368 - v31;
  v422 = sub_219BDFC94();
  v421 = *(v422 - 8);
  MEMORY[0x28223BE20](v422);
  v420 = &v368 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v419 = &v368 - v34;
  v418 = sub_219BDFBD4();
  v417 = *(v418 - 8);
  MEMORY[0x28223BE20](v418);
  v416 = &v368 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v415 = &v368 - v37;
  v38 = sub_219BDFB64();
  v457 = *(v38 - 8);
  v458 = v38;
  MEMORY[0x28223BE20](v38);
  v414 = &v368 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v413 = &v368 - v41;
  v412 = sub_219BE0154();
  v411 = *(v412 - 8);
  MEMORY[0x28223BE20](v412);
  v410 = &v368 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v409 = &v368 - v44;
  v45 = sub_219BDD294();
  v46 = *(v45 - 8);
  v459 = v45;
  v460 = v46;
  MEMORY[0x28223BE20](v45);
  v393 = &v368 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v391 = &v368 - v49;
  MEMORY[0x28223BE20](v50);
  v392 = &v368 - v51;
  MEMORY[0x28223BE20](v52);
  v389 = &v368 - v53;
  MEMORY[0x28223BE20](v54);
  v390 = &v368 - v55;
  MEMORY[0x28223BE20](v56);
  v387 = &v368 - v57;
  MEMORY[0x28223BE20](v58);
  v388 = &v368 - v59;
  MEMORY[0x28223BE20](v60);
  v385 = &v368 - v61;
  MEMORY[0x28223BE20](v62);
  v386 = &v368 - v63;
  MEMORY[0x28223BE20](v64);
  v383 = &v368 - v65;
  MEMORY[0x28223BE20](v66);
  v384 = &v368 - v67;
  MEMORY[0x28223BE20](v68);
  v381 = &v368 - v69;
  MEMORY[0x28223BE20](v70);
  v382 = &v368 - v71;
  MEMORY[0x28223BE20](v72);
  v379 = &v368 - v73;
  MEMORY[0x28223BE20](v74);
  v380 = &v368 - v75;
  MEMORY[0x28223BE20](v76);
  v377 = &v368 - v77;
  MEMORY[0x28223BE20](v78);
  v378 = &v368 - v79;
  MEMORY[0x28223BE20](v80);
  v375 = &v368 - v81;
  MEMORY[0x28223BE20](v82);
  v376 = &v368 - v83;
  MEMORY[0x28223BE20](v84);
  v373 = &v368 - v85;
  MEMORY[0x28223BE20](v86);
  v374 = &v368 - v87;
  MEMORY[0x28223BE20](v88);
  v371 = &v368 - v89;
  MEMORY[0x28223BE20](v90);
  v372 = &v368 - v91;
  MEMORY[0x28223BE20](v92);
  v370 = &v368 - v93;
  MEMORY[0x28223BE20](v94);
  v369 = &v368 - v95;
  MEMORY[0x28223BE20](v96);
  v368 = &v368 - v97;
  v408 = sub_219BE05A4();
  v407 = *(v408 - 8);
  MEMORY[0x28223BE20](v408);
  v397 = &v368 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v99);
  v396 = &v368 - v100;
  v101 = type metadata accessor for EngagementEvent(0);
  MEMORY[0x28223BE20](v101);
  v406 = &v368 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v103);
  v405 = &v368 - v104;
  MEMORY[0x28223BE20](v105);
  v404 = &v368 - v106;
  MEMORY[0x28223BE20](v107);
  v403 = &v368 - v108;
  MEMORY[0x28223BE20](v109);
  v402 = &v368 - v110;
  MEMORY[0x28223BE20](v111);
  v401 = &v368 - v112;
  MEMORY[0x28223BE20](v113);
  v400 = &v368 - v114;
  MEMORY[0x28223BE20](v115);
  v399 = &v368 - v116;
  MEMORY[0x28223BE20](v117);
  v119 = (&v368 - v118);
  MEMORY[0x28223BE20](v120);
  v122 = (&v368 - v121);
  MEMORY[0x28223BE20](v123);
  v398 = &v368 - v124;
  MEMORY[0x28223BE20](v125);
  v127 = &v368 - v126;
  MEMORY[0x28223BE20](v128);
  v130 = &v368 - v129;
  MEMORY[0x28223BE20](v131);
  v133 = &v368 - v132;
  MEMORY[0x28223BE20](v134);
  v136 = &v368 - v135;
  MEMORY[0x28223BE20](v137);
  v139 = &v368 - v138;
  sub_218A15450(0);
  MEMORY[0x28223BE20](v140 - 8);
  v142 = &v368 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = &v142[*(v143 + 56)];
  sub_218A153EC(v461, v142);
  v461 = v144;
  sub_218A153EC(v462, v144);
  v462 = v142;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_218A153EC(v462, v136);
      v262 = v461;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v263 = v411;
        v264 = *(v411 + 32);
        v265 = v412;
        v264(v409, v136, v412);
        v264(v410, v262, v265);
        v266 = v370;
        sub_219BE0144();
        v267 = sub_219BDD284();
        v269 = v268;
        v270 = *(v460 + 8);
        v271 = v266;
        v272 = v459;
        v270(v271, v459);
        v273 = v372;
        sub_219BE0144();
        v274 = sub_219BDD284();
        v276 = v275;
        v270(v273, v272);
        if (v267 == v274 && v269 == v276)
        {
          v162 = 1;
        }

        else
        {
          v162 = sub_219BF78F4();
        }

        v145 = v462;

        v361 = *(v263 + 8);
        v361(v410, v265);
        v361(v409, v265);
        goto LABEL_111;
      }

      (*(v411 + 8))(v136, v412);
      v162 = 0;
      v337 = sub_218A15450;
      v145 = v462;
      goto LABEL_113;
    case 2u:
      v145 = v462;
      sub_218A153EC(v462, v133);
      v215 = v461;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v457 + 8))(v133, v458);
        goto LABEL_78;
      }

      v216 = v458;
      v217 = *(v457 + 32);
      v217(v413, v133, v458);
      v217(v414, v215, v216);
      v218 = v371;
      sub_219BDFB44();
      v219 = sub_219BDD284();
      v221 = v220;
      v222 = *(v460 + 8);
      v223 = v218;
      v224 = v459;
      v222(v223, v459);
      v225 = v374;
      sub_219BDFB44();
      v226 = sub_219BDD284();
      v228 = v227;
      v222(v225, v224);
      if (v219 == v226 && v221 == v228)
      {
        v162 = 1;
      }

      else
      {
        v162 = sub_219BF78F4();
      }

      v357 = v458;
      v358 = *(v457 + 8);
      v358(v414, v458);
      v358(v413, v357);
      goto LABEL_111;
    case 3u:
      v145 = v462;
      sub_218A153EC(v462, v130);
      v243 = v461;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        (*(v417 + 8))(v130, v418);
        goto LABEL_78;
      }

      v244 = v417;
      v245 = *(v417 + 32);
      v246 = v418;
      v245(v415, v130, v418);
      v245(v416, v243, v246);
      v247 = v373;
      sub_219BDFBB4();
      v461 = sub_219BDD284();
      v249 = v248;
      v250 = *(v460 + 8);
      v251 = v247;
      v252 = v459;
      v250(v251, v459);
      v253 = v376;
      sub_219BDFBB4();
      v254 = sub_219BDD284();
      v256 = v255;
      v250(v253, v252);
      if (v461 == v254 && v249 == v256)
      {
        v162 = 1;
      }

      else
      {
        v162 = sub_219BF78F4();
      }

      v360 = *(v244 + 8);
      v360(v416, v246);
      v360(v415, v246);
      goto LABEL_111;
    case 4u:
      v145 = v462;
      sub_218A153EC(v462, v127);
      v178 = v461;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        (*(v421 + 8))(v127, v422);
        goto LABEL_78;
      }

      v179 = v421;
      v180 = *(v421 + 32);
      v181 = v422;
      v180(v419, v127, v422);
      v180(v420, v178, v181);
      v182 = v375;
      sub_219BDFC84();
      v461 = sub_219BDD284();
      v184 = v183;
      v185 = *(v460 + 8);
      v186 = v182;
      v187 = v459;
      v185(v186, v459);
      v188 = v378;
      sub_219BDFC84();
      v189 = sub_219BDD284();
      v191 = v190;
      v185(v188, v187);
      if (v461 == v189 && v184 == v191)
      {
        v162 = 1;
      }

      else
      {
        v162 = sub_219BF78F4();
      }

      v354 = *(v179 + 8);
      v354(v420, v181);
      v354(v419, v181);
      goto LABEL_111;
    case 5u:
      v145 = v462;
      v277 = v398;
      sub_218A153EC(v462, v398);
      v278 = v461;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        (*(v425 + 8))(v277, v426);
        goto LABEL_78;
      }

      v279 = v425;
      v280 = *(v425 + 32);
      v281 = v426;
      v280(v423, v277, v426);
      v280(v424, v278, v281);
      v282 = v377;
      sub_219BDF504();
      v461 = sub_219BDD284();
      v458 = v283;
      v284 = v459;
      v285 = *(v460 + 8);
      v285(v282, v459);
      v286 = v380;
      sub_219BDF504();
      v287 = sub_219BDD284();
      v289 = v288;
      v290 = v286;
      v291 = v458;
      v285(v290, v284);
      if (v461 == v287 && v291 == v289)
      {
        v162 = 1;
      }

      else
      {
        v162 = sub_219BF78F4();
      }

      v362 = *(v279 + 8);
      v362(v424, v281);
      v362(v423, v281);
      goto LABEL_111;
    case 6u:
      v145 = v462;
      sub_218A153EC(v462, v122);
      v258 = *v122;
      v257 = v122[1];
      v259 = v461;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_53;
      }

      goto LABEL_37;
    case 7u:
      v145 = v462;
      sub_218A153EC(v462, v119);
      v258 = *v119;
      v257 = v119[1];
      v259 = v461;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
LABEL_53:

        goto LABEL_78;
      }

LABEL_37:
      v260 = *v259;
      v261 = v259[1];
      if (v258 == v260 && v257 == v261)
      {
        v162 = 1;
      }

      else
      {
        v162 = sub_219BF78F4();
      }

      goto LABEL_90;
    case 8u:
      v145 = v462;
      v321 = v399;
      sub_218A153EC(v462, v399);
      v322 = v461;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        (*(v429 + 8))(v321, v430);
        goto LABEL_78;
      }

      v323 = v429;
      v324 = *(v429 + 32);
      v325 = v430;
      v324(v427, v321, v430);
      v324(v428, v322, v325);
      v326 = v379;
      sub_219BE0224();
      v461 = sub_219BDD284();
      v328 = v327;
      v329 = v459;
      v330 = *(v460 + 8);
      v330(v326, v459);
      v331 = v382;
      sub_219BE0224();
      v332 = sub_219BDD284();
      v334 = v333;
      v330(v331, v329);
      if (v461 == v332 && v328 == v334)
      {
        v162 = 1;
      }

      else
      {
        v162 = sub_219BF78F4();
      }

      v365 = *(v323 + 8);
      v365(v428, v325);
      v365(v427, v325);
      goto LABEL_111;
    case 9u:
      v145 = v462;
      v200 = v400;
      sub_218A153EC(v462, v400);
      v201 = v461;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        (*(v433 + 8))(v200, v434);
        goto LABEL_78;
      }

      v202 = v433;
      v203 = *(v433 + 32);
      v204 = v434;
      v203(v431, v200, v434);
      v203(v432, v201, v204);
      v205 = v381;
      sub_219BDFAA4();
      v461 = sub_219BDD284();
      v458 = v206;
      v207 = v459;
      v208 = *(v460 + 8);
      v208(v205, v459);
      v209 = v384;
      sub_219BDFAA4();
      v210 = sub_219BDD284();
      v212 = v211;
      v213 = v209;
      v214 = v458;
      v208(v213, v207);
      if (v461 == v210 && v214 == v212)
      {
        v162 = 1;
      }

      else
      {
        v162 = sub_219BF78F4();
      }

      v356 = *(v202 + 8);
      v356(v432, v204);
      v356(v431, v204);
      goto LABEL_111;
    case 0xAu:
      v145 = v462;
      v306 = v401;
      sub_218A153EC(v462, v401);
      v307 = v461;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        (*(v437 + 8))(v306, v438);
        goto LABEL_78;
      }

      v308 = v437;
      v309 = *(v437 + 32);
      v310 = v438;
      v309(v435, v306, v438);
      v309(v436, v307, v310);
      v311 = v383;
      sub_219BE01A4();
      v461 = sub_219BDD284();
      v313 = v312;
      v314 = *(v460 + 8);
      v315 = v311;
      v316 = v459;
      v314(v315, v459);
      v317 = v386;
      sub_219BE01A4();
      v318 = sub_219BDD284();
      v320 = v319;
      v314(v317, v316);
      if (v461 == v318 && v313 == v320)
      {
        v162 = 1;
      }

      else
      {
        v162 = sub_219BF78F4();
      }

      v364 = *(v308 + 8);
      v364(v436, v310);
      v364(v435, v310);
      goto LABEL_111;
    case 0xBu:
      v145 = v462;
      v163 = v402;
      sub_218A153EC(v462, v402);
      v164 = v461;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        (*(v441 + 8))(v163, v442);
        goto LABEL_78;
      }

      v165 = v441;
      v166 = *(v441 + 32);
      v167 = v442;
      v166(v439, v163, v442);
      v166(v440, v164, v167);
      v168 = v385;
      sub_219BDFAE4();
      v461 = sub_219BDD284();
      v170 = v169;
      v171 = *(v460 + 8);
      v172 = v168;
      v173 = v459;
      v171(v172, v459);
      v174 = v388;
      sub_219BDFAE4();
      v175 = sub_219BDD284();
      v177 = v176;
      v171(v174, v173);
      if (v461 == v175 && v170 == v177)
      {
        v162 = 1;
      }

      else
      {
        v162 = sub_219BF78F4();
      }

      v353 = *(v165 + 8);
      v353(v440, v167);
      v353(v439, v167);
      goto LABEL_111;
    case 0xCu:
      v145 = v462;
      v192 = v403;
      sub_218A153EC(v462, v403);
      v193 = v461;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        (*(v443 + 8))(v192, v444);
        goto LABEL_78;
      }

      v194 = v443;
      v195 = *(v443 + 32);
      v196 = v394;
      v197 = v192;
      v198 = v444;
      v195(v394, v197, v444);
      v199 = v395;
      v195(v395, v193, v198);
      sub_218A15514();
      sub_219BF5874();
      sub_219BF5874();
      if (v465 == v463 && v466 == v464)
      {
        v162 = 1;
      }

      else
      {
        v162 = sub_219BF78F4();
      }

      v355 = *(v194 + 8);
      v355(v199, v198);
      v355(v196, v198);

LABEL_90:

      goto LABEL_111;
    case 0xDu:
      v145 = v462;
      v147 = v404;
      sub_218A153EC(v462, v404);
      v292 = v461;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        v336 = v447;
        v335 = v448;
        goto LABEL_75;
      }

      v294 = v447;
      v293 = v448;
      v295 = *(v447 + 32);
      v295(v445, v147, v448);
      v295(v446, v292, v293);
      v296 = v387;
      sub_219BDFF24();
      v461 = sub_219BDD284();
      v298 = v297;
      v299 = *(v460 + 8);
      v300 = v296;
      v301 = v459;
      v299(v300, v459);
      v302 = v390;
      sub_219BDFF24();
      v303 = sub_219BDD284();
      v305 = v304;
      v299(v302, v301);
      if (v461 == v303 && v298 == v305)
      {
        v162 = 1;
      }

      else
      {
        v162 = sub_219BF78F4();
      }

      v363 = *(v294 + 8);
      v363(v446, v293);
      v363(v445, v293);
      goto LABEL_111;
    case 0xEu:
      v145 = v462;
      v147 = v405;
      sub_218A153EC(v462, v405);
      v148 = v461;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        v336 = v451;
        v335 = v452;
        goto LABEL_75;
      }

      v150 = v451;
      v149 = v452;
      v151 = *(v451 + 32);
      v151(v449, v147, v452);
      v151(v450, v148, v149);
      v152 = v389;
      sub_219BDFC34();
      v461 = sub_219BDD284();
      v154 = v153;
      v155 = *(v460 + 8);
      v156 = v152;
      v157 = v459;
      v155(v156, v459);
      v158 = v392;
      sub_219BDFC34();
      v159 = sub_219BDD284();
      v161 = v160;
      v155(v158, v157);
      if (v461 == v159 && v154 == v161)
      {
        v162 = 1;
      }

      else
      {
        v162 = sub_219BF78F4();
      }

      v352 = *(v150 + 8);
      v352(v450, v149);
      v352(v449, v149);
      goto LABEL_111;
    case 0xFu:
      v145 = v462;
      v147 = v406;
      sub_218A153EC(v462, v406);
      v229 = v461;
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        v231 = v455;
        v230 = v456;
        v232 = *(v455 + 32);
        v232(v453, v147, v456);
        v232(v454, v229, v230);
        v233 = v391;
        sub_219BDF924();
        v461 = sub_219BDD284();
        v235 = v234;
        v236 = *(v460 + 8);
        v237 = v233;
        v238 = v459;
        v236(v237, v459);
        v239 = v393;
        sub_219BDF924();
        v240 = sub_219BDD284();
        v242 = v241;
        v236(v239, v238);
        if (v461 == v240 && v235 == v242)
        {
          v162 = 1;
        }

        else
        {
          v162 = sub_219BF78F4();
        }

        v359 = *(v231 + 8);
        v359(v454, v230);
        v359(v453, v230);
        goto LABEL_111;
      }

      v336 = v455;
      v335 = v456;
LABEL_75:
      (*(v336 + 8))(v147, v335);
      goto LABEL_78;
    default:
      v145 = v462;
      sub_218A153EC(v462, v139);
      v146 = v461;
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v407 + 8))(v139, v408);
LABEL_78:
        v162 = 0;
        v338 = sub_218A15450;
      }

      else
      {
        v339 = v407;
        v340 = *(v407 + 32);
        v341 = v408;
        v340(v396, v139, v408);
        v340(v397, v146, v341);
        v342 = v368;
        sub_219BE0594();
        v461 = sub_219BDD284();
        v458 = v343;
        v344 = v459;
        v345 = *(v460 + 8);
        v345(v342, v459);
        v346 = v369;
        sub_219BE0594();
        v347 = sub_219BDD284();
        v349 = v348;
        v350 = v346;
        v351 = v458;
        v345(v350, v344);
        if (v461 == v347 && v351 == v349)
        {
          v162 = 1;
        }

        else
        {
          v162 = sub_219BF78F4();
        }

        v366 = *(v339 + 8);
        v366(v397, v341);
        v366(v396, v341);
LABEL_111:
        v338 = type metadata accessor for EngagementEvent;
      }

      v337 = v338;
LABEL_113:
      sub_218A154B4(v145, v337);
      return v162 & 1;
  }
}

uint64_t sub_218A153EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EngagementEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_218A15450(uint64_t a1)
{
  if (!qword_27CC0C718)
  {
    type metadata accessor for EngagementEvent(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0C718);
    }
  }
}

uint64_t sub_218A154B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218A15514()
{
  result = qword_280EE8000;
  if (!qword_280EE8000)
  {
    sub_219BE14C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE8000);
  }

  return result;
}

void sub_218A1556C()
{
  v1 = [*(v0 + 24) purchaseLookUpEntriesByTagID];
  if (v1)
  {
    v2 = v1;
    sub_218A15F10();
    v3 = sub_219BF5214();
  }

  else
  {
    v3 = sub_2194AEBB8(MEMORY[0x277D84F90]);
  }

  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (v6)
  {
    v10 = v6;
LABEL_14:
    v6 = (v10 - 1) & v10;
    if (*(v3 + 16))
    {
      v12 = (*(v3 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v10)))));
      v14 = *v12;
      v13 = v12[1];

      v15 = sub_21870F700(v14, v13);
      if ((v16 & 1) != 0 && [*(*(v3 + 56) + 8 * v15) purchaseType] == 2)
      {
        v24 = v9;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21870B65C(0, *(v9 + 16) + 1, 1);
        }

        v18 = *(v9 + 16);
        v17 = *(v9 + 24);
        v19 = v18 + 1;
        if (v18 >= v17 >> 1)
        {
          v21 = v18 + 1;
          v23 = v18;
          sub_21870B65C((v17 > 1), v18 + 1, 1);
          v19 = v21;
          v18 = v23;
          v9 = v24;
        }

        *(v9 + 16) = v19;
        v20 = v9 + 16 * v18;
        *(v20 + 32) = v14;
        *(v20 + 40) = v13;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      MEMORY[0x28223BE20](v22);
      sub_218A15E44(0);
      swift_allocObject();
      sub_219BE30B4();

      return;
    }

    v10 = *(v3 + 64 + 8 * v11);
    ++v8;
    if (v10)
    {
      v8 = v11;
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_218A157F0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = *(a5 + 32);

  sub_218E97F2C(a6, v15, a3, a4, a7, sub_218846958, v14);
}

double sub_218A15904(unint64_t a1, char a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7)
{
  if (a2)
  {
    a3(a1);
    return result;
  }

  v10 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_34:
    v36 = a6;
    v37 = a7;
    v38 = sub_219BF7214();
    a7 = v37;
    a6 = v36;
    v11 = v38;
    if (v38)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_5:
      v12 = 0;
      v13 = a1 & 0xC000000000000001;
      v14 = MEMORY[0x277D84F90];
      v39 = a7;
      v40 = a6;
      v42 = v11;
      while (1)
      {
        v41 = v14;
        v15 = v12;
        v16 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
        while (1)
        {
          if (v13)
          {
            v17 = MEMORY[0x21CECE0F0](v15, a1, a3, a4);
            v12 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              goto LABEL_32;
            }
          }

          else
          {
            if (v15 >= *(v10 + 16))
            {
              goto LABEL_33;
            }

            v17 = *(a1 + 8 * v15 + 32);

            v12 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
LABEL_32:
              __break(1u);
LABEL_33:
              __break(1u);
              goto LABEL_34;
            }
          }

          v18 = [*(v17 + 16) v16[487]];
          if (!v18)
          {
            goto LABEL_8;
          }

          if ([v18 isWhitelisted])
          {
            break;
          }

          swift_unknownObjectRelease();
LABEL_8:

LABEL_9:
          ++v15;
          if (v12 == v11)
          {
            v40(v41);
            goto LABEL_37;
          }
        }

        v19 = v10;
        v20 = [*(v17 + 16) identifier];
        v21 = sub_219BF5414();
        v23 = v22;

        if (!*(a5 + 16))
        {

LABEL_20:

          swift_unknownObjectRelease();
          goto LABEL_21;
        }

        v24 = sub_21870F700(v21, v23);
        v26 = v25;

        if ((v26 & 1) == 0)
        {
          goto LABEL_20;
        }

        v27 = *(*(a5 + 56) + 8 * v24);
        if ([v27 purchaseValidationState] != 1)
        {

          swift_unknownObjectRelease();

LABEL_21:
          v10 = v19;
          v13 = a1 & 0xC000000000000001;
          v11 = v42;
          v16 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
          goto LABEL_9;
        }

        v28 = [*(v17 + 16) identifier];
        v29 = sub_219BF5414();
        v31 = v30;
        swift_unknownObjectRelease();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_218840D24(0, *(v41 + 2) + 1, 1, v41);
        }

        v10 = v19;
        v13 = a1 & 0xC000000000000001;
        v33 = *(v41 + 2);
        v32 = *(v41 + 3);
        v34 = v31;
        if (v33 >= v32 >> 1)
        {
          v41 = sub_218840D24((v32 > 1), v33 + 1, 1, v41);
        }

        a6 = v40;
        v14 = v41;
        *(v41 + 2) = v33 + 1;
        v35 = &v41[16 * v33];
        *(v35 + 4) = v29;
        *(v35 + 5) = v34;
        v11 = v42;
        a7 = v39;
        if (v12 == v42)
        {
          goto LABEL_36;
        }
      }
    }
  }

  v14 = MEMORY[0x277D84F90];
LABEL_36:
  a6(v14);
LABEL_37:

  return result;
}

uint64_t sub_218A15C38()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *sub_218A15D38(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_218A15EC0(0, &qword_280EE7AB8, MEMORY[0x277D839B0], MEMORY[0x277D6CB78]);
  swift_allocObject();
  v3[2] = sub_219BE2174();
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = a3;
  v8 = objc_opt_self();
  v9 = a1;
  swift_unknownObjectRetain();
  v10 = [v8 defaultCenter];
  [v10 addObserver:v4 selector:sel_purchaseListDidChange name:*MEMORY[0x277D30C30] object:0];

  return v4;
}

void sub_218A15E44(uint64_t a1)
{
  if (!qword_280EE6AA0)
  {
    sub_218A15EC0(255, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v1 = sub_219BE3114();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE6AA0);
    }
  }
}

void sub_218A15EC0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_218A15F10()
{
  result = qword_280E8E138;
  if (!qword_280E8E138)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8E138);
  }

  return result;
}

id sub_218A15F5C()
{
  v1 = OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController____lazy_storage___forceReloadButton;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController____lazy_storage___forceReloadButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController____lazy_storage___forceReloadButton);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75220]) initWithFrame_];
    [v4 addTarget:v0 action:sel_forceReloadButtonTapped forControlEvents:64];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_218A16000()
{
  v1 = OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController____lazy_storage___setupOfflineModeButton;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController____lazy_storage___setupOfflineModeButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController____lazy_storage___setupOfflineModeButton);
  }

  else
  {
    v4 = sub_218A16064(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_218A16064(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75220]) initWithFrame_];
  [v2 addTarget:a1 action:sel_alertForSetUpOfflineMode forControlEvents:64];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v5 = sub_219BF53D4();

  [v2 setTitle:v5 forState:{0, 0x8000000219CDF6D0}];

  return v2;
}

void sub_218A161D0()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 addSubview_];

    sub_2188050C0();
    sub_218A162E4();
    sub_218805AC0(0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_219C09BA0;
    v4 = sub_219BEB8B4();
    v5 = MEMORY[0x277D74BF0];
    *(v3 + 32) = v4;
    *(v3 + 40) = v5;
    sub_219BF6604();
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_218A162E4()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = objc_opt_self();
    v4 = [v3 secondarySystemBackgroundColor];
    [v2 setBackgroundColor_];

    v5 = *&v0[OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController_connectionLabel];
    [v5 setTextAlignment_];
    v6 = objc_opt_self();
    [v6 systemFontSize];
    v7 = [v6 boldSystemFontOfSize_];
    [v5 setFont_];

    v8 = [v3 labelColor];
    [v5 setTextColor_];

    v9 = sub_218A15F5C();
    sub_21903EC60(v9);

    v10 = sub_218A16000();
    sub_21903EE94(v10);

    v11 = *&v0[OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController_secondaryLabel];

    sub_21903F008(v11);
  }

  else
  {
    __break(1u);
  }
}

void sub_218A16498()
{
  v1 = v0;
  v21.receiver = v0;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, sel_viewDidLayoutSubviews);
  v2 = sub_218A17A10(v0);
  v3 = *&v0[OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController_connectionLabel];
  v4 = v2;
  [v3 sizeToFit];
  v5 = [v1 view];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 safeAreaLayoutGuide];

    [v7 layoutFrame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v22.origin.x = v9;
    v22.origin.y = v11;
    v22.size.width = v13;
    v22.size.height = v15;
    MidX = CGRectGetMidX(v22);
    [v3 center];
    [v3 setCenter_];
    [v3 frame];
    v17 = [v1 view];
    if (v17)
    {
      v18 = v17;
      [v17 safeAreaInsets];

      sub_219BF6B04();
      [v3 setFrame_];
      [v4 sizeToFit];
      [v3 center];
      v20 = v19;
      [v4 center];
      [v4 setCenter_];
      [v4 frame];
      [v3 frame];
      CGRectGetMaxY(v23);
      sub_219BF6B04();
      [v3 frame];
      CGRectGetHeight(v24);
      sub_219BF6B24();
      [v4 setFrame_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_218A1675C()
{
  v1 = v0;
  if (qword_280EE6070 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F62790);
  v3 = sub_219BE5414();
  v4 = sub_219BF6214();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136315138;
    if (qword_280EE3860 != -1)
    {
      swift_once();
    }

    v7 = sub_219BEA8E4();
    v9 = sub_2186D1058(v7, v8, &v18);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2186C1000, v3, v4, "LegacyOfflineStatusBannerViewController did press force reload button. Will execute command: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x21CECF960](v6, -1, -1);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  v10 = sub_218A15F5C();
  v11 = [v10 isEnabled];

  if (v11)
  {
    v12 = OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController____lazy_storage___forceReloadButton;
    [*(v1 + OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController____lazy_storage___forceReloadButton) setEnabled_];
    v13 = *(v1 + v12);
    sub_21903EC60(v13);
  }

  swift_getObjectType();
  if (qword_280EE3860 != -1)
  {
    swift_once();
  }

  sub_219BE70A4();
  v14 = *(v1 + OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController_enableReloadAction);
  v15 = sub_219BEA814();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = sub_219BEA834();

  MEMORY[0x21CEC15C0](v16);
}

void sub_218A16A34(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_218A15F5C();
    v4 = [v3 isEnabled];

    if ((v4 & 1) == 0)
    {
      v5 = OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController____lazy_storage___forceReloadButton;
      [*&v2[OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController____lazy_storage___forceReloadButton] setEnabled_];
      v6 = *&v2[v5];
      sub_21903EC60(v6);
    }
  }
}

void sub_218A16B24()
{
  sub_218A17CC4();
  sub_219BEA744();
  swift_allocObject();
  sub_219BEA6C4();
  sub_219BEA6E4();

  sub_219BEA714();

  sub_219BEA6D4();

  if (qword_280EE6070 != -1)
  {
    swift_once();
  }

  v0 = sub_219BE5434();
  __swift_project_value_buffer(v0, qword_280F62790);
  oslog = sub_219BE5414();
  v1 = sub_219BF6214();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2186C1000, oslog, v1, "LegacyOfflineStatusBannerViewController did press Set Up Offline Mode button.", v2, 2u);
    MEMORY[0x21CECF960](v2, -1, -1);
  }
}

uint64_t sub_218A16E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_219BE8494();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(v3 + OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController_featureAvailability) useOfflineMode])
  {
    sub_218805A40();
    return sub_219BE2114();
  }

  else
  {
    (*(v5 + 104))(v8, *MEMORY[0x277D6DF08], v4);
    sub_218805A40();
    sub_219BE2114();
    return (*(v5 + 8))(v8, v4);
  }
}

void sub_218A16FBC()
{
  v1 = OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController_connectionLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v2 = OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController_secondaryLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  *(v0 + OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController____lazy_storage___forceReloadButton) = 0;
  v3 = OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController_enableReloadAction;
  sub_218803FE0();
  *(v0 + v3) = [objc_allocWithZone(v4) init];
  *(v0 + OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController____lazy_storage___setupOfflineModeButton) = 0;
  sub_219BF7514();
  __break(1u);
}

void sub_218A170BC(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController_connectionLabel];
  v6 = [v5 text];
  if (!v6)
  {
LABEL_7:
    v13 = sub_219BF53D4();
    [v5 setText_];

    v14 = [v2 view];
    if (v14)
    {
      v15 = v14;
      [v14 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }

    return;
  }

  v7 = v6;
  v8 = sub_219BF5414();
  v10 = v9;

  if (v8 != a1 || v10 != a2)
  {
    v12 = sub_219BF78F4();

    if (v12)
    {
      return;
    }

    goto LABEL_7;
  }
}

void sub_218A17228(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController_secondaryLabel];
  v6 = [v5 text];
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = v6;
  v8 = sub_219BF5414();
  v10 = v9;

  if (v8 != a1 || v10 != a2)
  {
    v12 = sub_219BF78F4();

    if (v12)
    {
      return;
    }

LABEL_7:
    v13 = sub_219BF53D4();
    [v5 setText_];

    v17 = [v5 superview];
    v14 = [v2 view];
    if (v17)
    {
      if (!v14)
      {
LABEL_17:
        v14 = v17;
        goto LABEL_18;
      }

      v16 = v14;

      if (v17 != v16)
      {
        return;
      }
    }

    else if (v14)
    {
LABEL_18:

      return;
    }

    v15 = [v2 view];
    if (!v15)
    {
      __break(1u);
      return;
    }

    v17 = v15;
    [v15 setNeedsLayout];
    goto LABEL_17;
  }
}

void sub_218A173F0()
{
  v1 = *&v0[OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController_secondaryLabel];
  v2 = [v1 superview];
  v3 = [v0 view];
  if (!v2)
  {
    if (!v3)
    {
      return;
    }

    goto LABEL_8;
  }

  if (!v3)
  {
    v3 = v2;
LABEL_8:

    goto LABEL_9;
  }

  v4 = v3;

  if (v2 == v4)
  {
    return;
  }

LABEL_9:
  v5 = sub_218A15F5C();
  [v5 removeFromSuperview];

  v6 = sub_218A16000();
  [v6 removeFromSuperview];

  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = v7;
  [v7 addSubview_];

  v9 = [v0 view];
  if (!v9)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v10 = v9;
  [v9 setNeedsLayout];
}

void sub_218A17548()
{
  v1 = sub_218A16000();
  v2 = [v1 superview];

  v3 = [v0 view];
  if (!v2)
  {
    if (!v3)
    {
      return;
    }

    goto LABEL_8;
  }

  if (!v3)
  {
    v3 = v2;
LABEL_8:

    goto LABEL_9;
  }

  v4 = v3;

  if (v2 == v4)
  {
    return;
  }

LABEL_9:
  [*&v0[OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController_secondaryLabel] removeFromSuperview];
  v5 = sub_218A15F5C();
  [v5 removeFromSuperview];

  v6 = [v0 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = v6;
  [v6 addSubview_];

  v8 = [v0 view];
  if (!v8)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v9 = v8;
  [v8 setNeedsLayout];
}

void sub_218A17698(uint64_t a1, uint64_t a2)
{
  v5 = sub_218A15F5C();
  v6 = [v5 titleForState_];

  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = sub_219BF5414();
  v9 = v8;

  if (v7 != a1 || v9 != a2)
  {
    v11 = sub_219BF78F4();

    if (v11)
    {
      return;
    }

LABEL_7:
    v12 = OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController____lazy_storage___forceReloadButton;
    v13 = *&v2[OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController____lazy_storage___forceReloadButton];
    v14 = sub_219BF53D4();
    [v13 setTitle:v14 forState:0];

    v18 = [*&v2[v12] superview];
    v15 = [v2 view];
    if (v18)
    {
      if (!v15)
      {
LABEL_17:
        v15 = v18;
        goto LABEL_18;
      }

      v17 = v15;

      if (v18 != v17)
      {
        return;
      }
    }

    else if (v15)
    {
LABEL_18:

      return;
    }

    v16 = [v2 view];
    if (!v16)
    {
      __break(1u);
      return;
    }

    v18 = v16;
    [v16 setNeedsLayout];
    goto LABEL_17;
  }
}

void sub_218A17870()
{
  v1 = sub_218A15F5C();
  v2 = [v1 isEnabled];

  if ((v2 & 1) == 0)
  {
    v3 = OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController____lazy_storage___forceReloadButton;
    [*&v0[OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController____lazy_storage___forceReloadButton] setEnabled_];
    v4 = *&v0[v3];
    sub_21903EC60(v4);
  }

  v5 = OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController____lazy_storage___forceReloadButton;
  v6 = [*&v0[OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController____lazy_storage___forceReloadButton] superview];
  v7 = [v0 view];
  if (!v6)
  {
    if (!v7)
    {
      return;
    }

    goto LABEL_10;
  }

  if (!v7)
  {
    v7 = v6;
LABEL_10:

    goto LABEL_11;
  }

  v8 = v7;

  if (v6 == v8)
  {
    return;
  }

LABEL_11:
  [*&v0[OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController_secondaryLabel] removeFromSuperview];
  v9 = sub_218A16000();
  [v9 removeFromSuperview];

  v10 = [v0 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = v10;
  [v10 addSubview_];

  v12 = [v0 view];
  if (!v12)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v13 = v12;
  [v12 setNeedsLayout];
}

uint64_t sub_218A17A10(char *a1)
{
  v2 = sub_218A15F5C();
  v3 = [v2 superview];

  v4 = [a1 view];
  if (v3)
  {
    if (v4)
    {
      v5 = v4;

      if (v3 == v5)
      {
        goto LABEL_6;
      }

LABEL_9:
      v7 = sub_218A16000();
      v8 = [v7 superview];

      v9 = [a1 view];
      if (v8)
      {
        if (v9)
        {
          v10 = v9;

          if (v8 == v10)
          {
            goto LABEL_14;
          }

LABEL_17:
          v6 = OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController_secondaryLabel;
          return *&a1[v6];
        }

        v9 = v8;
      }

      else if (!v9)
      {
LABEL_14:
        v6 = OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController____lazy_storage___setupOfflineModeButton;
        return *&a1[v6];
      }

      goto LABEL_17;
    }

    v4 = v3;
LABEL_8:

    goto LABEL_9;
  }

  if (v4)
  {
    goto LABEL_8;
  }

LABEL_6:
  v6 = OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController____lazy_storage___forceReloadButton;
  return *&a1[v6];
}

uint64_t sub_218A17B2C(uint64_t a1)
{
  v3 = sub_219BF11C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v16 - v9;
  v11 = *(*(*(v1 + OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController_eventHandler) + 32) + 32);
  v12 = *(v4 + 16);
  v12(&v16 - v9, a1, v3, v8);
  (v12)(v6, v10, v3);
  v13 = OBJC_IVAR____TtC7NewsUI230OfflineStatusBannerDataManager_feedModeState;
  swift_beginAccess();
  (*(v4 + 24))(v11 + v13, v6, v3);
  swift_endAccess();
  sub_21882814C();
  v14 = *(v4 + 8);
  v14(v6, v3);
  return (v14)(v10, v3);
}

unint64_t sub_218A17CC4()
{
  result = qword_27CC0C770;
  if (!qword_27CC0C770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C770);
  }

  return result;
}

uint64_t type metadata accessor for RecipeBoxExpandRequest(uint64_t a1)
{
  result = qword_27CC0C778;
  if (!qword_27CC0C778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218A17D94(uint64_t a1)
{
  result = type metadata accessor for RecipeBoxGapLocation(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_218A17E20()
{
  sub_219BF7AA4();
  v1 = v0[3];
  sub_219BF5524();
  if (!v1)
  {
    sub_219BF7AC4();
    if (v0[5])
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_219BF7AC4();
    goto LABEL_6;
  }

  sub_219BF7AC4();
  sub_219BF5524();
  if (!v0[5])
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_219BF7AC4();
  sub_219BF5524();
LABEL_6:
  sub_218A18870(v3, v0[6]);
  return sub_219BF7AE4();
}

uint64_t sub_218A17EEC(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[5];
  v5 = v1[6];
  sub_219BF5524();
  if (v3)
  {
    sub_219BF7AC4();
    sub_219BF5524();
    if (v4)
    {
LABEL_3:
      sub_219BF7AC4();
      sub_219BF5524();
      goto LABEL_6;
    }
  }

  else
  {
    sub_219BF7AC4();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  sub_219BF7AC4();
LABEL_6:

  return sub_218A18870(a1, v5);
}

uint64_t sub_218A17FB0(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[5];
  v4 = v1[6];
  sub_219BF7AA4();
  sub_219BF5524();
  if (!v2)
  {
    sub_219BF7AC4();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_219BF7AC4();
    goto LABEL_6;
  }

  sub_219BF7AC4();
  sub_219BF5524();
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_219BF7AC4();
  sub_219BF5524();
LABEL_6:
  sub_218A18870(v6, v4);
  return sub_219BF7AE4();
}

uint64_t sub_218A18084(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_218A18C10(v5, v7) & 1;
}

unint64_t sub_218A180E4()
{
  result = qword_27CC0C788;
  if (!qword_27CC0C788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C788);
  }

  return result;
}

double sub_218A18138@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  *&v69 = a3;
  v65 = a1;
  v53 = a4;
  v6 = sub_219BF1F44();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PuzzleSetting(0);
  MEMORY[0x28223BE20](v10);
  v60 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v51 - v13;
  MEMORY[0x28223BE20](v15);
  *&v70 = &v51 - v16;
  v66 = type metadata accessor for PuzzleSettingsItem(0);
  MEMORY[0x28223BE20](v66);
  v18 = (&v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v22 = (&v51 - v21);
  v52 = v4;
  v23 = *(v4 + 48);
  v24 = *(v23 + 16);
  if (v24)
  {
    v63 = v6;
    v64 = a2;
    v25 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v26 = v23 + v25;
    v67 = *(v20 + 72);
    v68 = v25;
    v61 = (v7 + 32);
    v54 = (v7 + 8);
    v27 = MEMORY[0x277D84F90];
    v58 = v9;
    v62 = v14;
    v59 = v10;
    while (1)
    {
      sub_218A18E10(v26, v22, type metadata accessor for PuzzleSettingsItem);
      sub_218A18E10(v69, v70, type metadata accessor for PuzzleSetting);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        break;
      }

      if (EnumCaseMultiPayload != 1)
      {
        v36 = *v61;
        v37 = v63;
        (*v61)(v9, v70, v63);
        v38 = v60;
        sub_218A18E10(v22 + *(v66 + 28), v60, type metadata accessor for PuzzleSetting);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          sub_218A18CF0(v38, type metadata accessor for PuzzleSetting);
          v39 = v64;
          if (*v22 == v65 && v22[1] == v64 || (sub_219BF78F4() & 1) != 0)
          {
            v40 = v22[3];
            v57 = v22[2];
            v55 = v40;
            v41 = v22[5];
            v56 = v22[4];
            v9 = v58;
            v36(v18 + *(v66 + 28), v58, v63);
            swift_storeEnumTagMultiPayload();
            *v18 = v65;
            v18[1] = v39;
            v42 = v55;
            v18[2] = v57;
            v18[3] = v42;
            v18[4] = v56;
            v18[5] = v41;

LABEL_21:
            v14 = v62;
            goto LABEL_22;
          }

          v9 = v58;
          (*v54)(v58, v63);
        }

        else
        {
          (*v54)(v9, v37);
          sub_218A18CF0(v38, type metadata accessor for PuzzleSetting);
        }

        sub_218A18E10(v22, v18, type metadata accessor for PuzzleSettingsItem);
        goto LABEL_21;
      }

      v29 = *v70;
      sub_218A18E10(v22 + *(v66 + 28), v14, type metadata accessor for PuzzleSetting);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v35 = v14;
        goto LABEL_17;
      }

      if ((*v22 != v65 || v22[1] != v64) && (sub_219BF78F4() & 1) == 0)
      {
        goto LABEL_18;
      }

      v30 = v22[2];
      v31 = v22[3];
      v57 = v22[4];
      v32 = v29;
      v33 = v22[5];
      *(v18 + *(v66 + 28)) = v32;
      swift_storeEnumTagMultiPayload();
      v34 = v64;
      *v18 = v65;
      v18[1] = v34;
      v18[2] = v30;
      v18[3] = v31;
      v14 = v62;
      v18[4] = v57;
      v18[5] = v33;

      v9 = v58;

LABEL_22:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_2191F712C(0, v27[2] + 1, 1, v27);
      }

      v44 = v27[2];
      v43 = v27[3];
      if (v44 >= v43 >> 1)
      {
        v27 = sub_2191F712C((v43 > 1), v44 + 1, 1, v27);
      }

      sub_218A18CF0(v22, type metadata accessor for PuzzleSettingsItem);
      v27[2] = v44 + 1;
      v45 = v67;
      sub_218A18D50(v18, v27 + v68 + v44 * v67);
      v26 += v45;
      if (!--v24)
      {
        goto LABEL_30;
      }
    }

    v35 = v70;
LABEL_17:
    sub_218A18CF0(v35, type metadata accessor for PuzzleSetting);
LABEL_18:
    sub_218A18E10(v22, v18, type metadata accessor for PuzzleSettingsItem);
    goto LABEL_22;
  }

  v27 = MEMORY[0x277D84F90];
LABEL_30:
  v46 = *v52;
  v73 = v52[1];
  v74 = v46;
  v72 = v52[2];
  v47 = v46;
  v70 = v73;
  v69 = v72;
  sub_218A18DB4(&v74, v71);
  sub_218A18E10(&v73, v71, sub_2186E3374);
  sub_218A18E10(&v72, v71, sub_2186E3374);
  v48 = v53;
  *v53 = v47;
  v50 = v69;
  result = *&v70;
  v48[1] = v70;
  v48[2] = v50;
  *(v48 + 6) = v27;
  return result;
}

uint64_t sub_218A18870(uint64_t a1, uint64_t a2)
{
  v25 = sub_219BF1F44();
  v3 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for PuzzleSetting(0);
  MEMORY[0x28223BE20](v26);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PuzzleSettingsItem(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  result = MEMORY[0x21CECE850](v12, v9);
  if (v12)
  {
    v14 = v3;
    v15 = *(v7 + 28);
    v16 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v17 = *(v8 + 72);
    v22 = (v14 + 8);
    v23 = (v14 + 32);
    do
    {
      sub_218A18E10(v16, v11, type metadata accessor for PuzzleSettingsItem);
      sub_219BF5524();
      sub_219BF5524();
      if (*(v11 + 5))
      {
        sub_219BF7AC4();
        sub_219BF5524();
      }

      else
      {
        sub_219BF7AC4();
      }

      sub_218A18E10(&v11[v15], v6, type metadata accessor for PuzzleSetting);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          MEMORY[0x21CECE850](1);
          sub_219BF7AC4();
        }

        else
        {
          v19 = v24;
          v20 = v25;
          (*v23)(v24, v6, v25);
          MEMORY[0x21CECE850](2);
          sub_218A18BB8();
          sub_219BF52F4();
          (*v22)(v19, v20);
        }
      }

      else
      {
        MEMORY[0x21CECE850](0);
        sub_219BF5524();
      }

      result = sub_218A18CF0(v11, type metadata accessor for PuzzleSettingsItem);
      v16 += v17;
      --v12;
    }

    while (v12);
  }

  return result;
}

unint64_t sub_218A18BB8()
{
  result = qword_27CC0C790;
  if (!qword_27CC0C790)
  {
    sub_219BF1F44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C790);
  }

  return result;
}

uint64_t sub_218A18C10(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_219BF78F4() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_219BF78F4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = a2[5];
  if (v8)
  {
    if (v9 && (a1[4] == a2[4] && v8 == v9 || (sub_219BF78F4() & 1) != 0))
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

LABEL_20:
  v10 = a1[6];
  v11 = a2[6];

  return sub_21941A7B8(v10, v11);
}

uint64_t sub_218A18CF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218A18D50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleSettingsItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A18E10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_218A18E78(unint64_t a1@<X0>, void *a2@<X8>)
{
  sub_218A19610(0, &qword_27CC0C798, type metadata accessor for PuzzleSettingsItem, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v57 - v5;
  v7 = type metadata accessor for PuzzleSettingsItem(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16) || (v11 = sub_21870F700(25705, 0xE200000000000000), (v12 & 1) == 0) || (sub_2186D1230(*(a1 + 56) + 32 * v11, v69), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v20 = sub_219BE5434();
    __swift_project_value_buffer(v20, qword_280F625E0);

    v21 = sub_219BE5414();
    v22 = sub_219BF61F4();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v69[0] = v24;
      *v23 = 136315138;
      v25 = sub_219BF5224();
      v27 = v26;

      v28 = sub_2186D1058(v25, v27, v69);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_2186C1000, v21, v22, "Failed parsing PuzzleSettingsGroup. Missing id entry: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x21CECF960](v24, -1, -1);
      MEMORY[0x21CECF960](v23, -1, -1);
    }

    else
    {
    }

    goto LABEL_19;
  }

  v13 = v68;
  if (!*(a1 + 16))
  {
    v18 = 0;
    goto LABEL_32;
  }

  v14 = v67;
  v15 = sub_21870F700(0x656C746974, 0xE500000000000000);
  if ((v16 & 1) == 0)
  {
    v19 = 0;
    v18 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_23;
    }

LABEL_32:
    v66 = v18;
    goto LABEL_47;
  }

  sub_2186D1230(*(a1 + 56) + 32 * v15, v69);
  v17 = swift_dynamicCast();
  v18 = v68;
  if (v17)
  {
    v19 = v67;
  }

  else
  {
    v19 = 0;
  }

  if (!v17)
  {
    v18 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_32;
  }

LABEL_23:
  v62 = v8;
  v66 = v18;
  v34 = sub_21870F700(0x7265746F6F66, 0xE600000000000000);
  if (v35)
  {
    sub_2186D1230(*(a1 + 56) + 32 * v34, v69);
    v36 = swift_dynamicCast();
    if (v36)
    {
      v31 = v67;
    }

    else
    {
      v31 = 0;
    }

    if (v36)
    {
      v37 = v68;
    }

    else
    {
      v37 = 0;
    }

    v61 = v37;
    if (!*(a1 + 16))
    {
LABEL_47:
      if (qword_280EE5F80 == -1)
      {
LABEL_48:
        v48 = sub_219BE5434();
        __swift_project_value_buffer(v48, qword_280F625E0);

        v49 = sub_219BE5414();
        v50 = sub_219BF61F4();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v69[0] = v52;
          *v51 = 136315138;
          v53 = sub_219BF5224();
          v55 = v54;

          v56 = sub_2186D1058(v53, v55, v69);

          *(v51 + 4) = v56;
          _os_log_impl(&dword_2186C1000, v49, v50, "Failed parsing PuzzleSettingsGroup. Invalid items entry: %s", v51, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v52);
          MEMORY[0x21CECF960](v52, -1, -1);
          MEMORY[0x21CECF960](v51, -1, -1);
        }

        else
        {
        }

LABEL_19:
        v29 = 0;
        v13 = 0;
        v19 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = 0;
        goto LABEL_20;
      }

LABEL_55:
      swift_once();
      goto LABEL_48;
    }
  }

  else
  {
    v31 = 0;
    v61 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_47;
    }
  }

  v38 = sub_21870F700(0x736D657469, 0xE500000000000000);
  if ((v39 & 1) == 0)
  {
    goto LABEL_47;
  }

  sub_2186D1230(*(a1 + 56) + 32 * v38, v69);
  sub_218A19610(0, &qword_27CC0C7A0, sub_218A19674, MEMORY[0x277D83940]);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_47;
  }

  v59 = v14;

  v40 = v67;
  v65 = *(v67 + 16);
  if (v65)
  {
    v41 = 0;
    v63 = (v62 + 48);
    v64 = v67 + 32;
    v33 = MEMORY[0x277D84F90];
    v60 = v13;
    while (v41 < *(v40 + 16))
    {
      v42 = v40;

      sub_21994E14C(v43, v6);
      if ((*v63)(v6, 1, v7) == 1)
      {
        sub_218A196D8(v6);
      }

      else
      {
        sub_218A18D50(v6, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_2191F712C(0, v33[2] + 1, 1, v33);
        }

        v45 = v33[2];
        v44 = v33[3];
        v46 = v45 + 1;
        if (v45 >= v44 >> 1)
        {
          v58 = v45 + 1;
          v47 = sub_2191F712C((v44 > 1), v45 + 1, 1, v33);
          v46 = v58;
          v33 = v47;
        }

        v33[2] = v46;
        sub_218A18D50(v10, v33 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v45);
        v13 = v60;
      }

      ++v41;
      v40 = v42;
      if (v65 == v41)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_55;
  }

  v33 = MEMORY[0x277D84F90];
LABEL_53:

  v30 = v66;
  v32 = v61;
  v29 = v59;
LABEL_20:
  *a2 = v29;
  a2[1] = v13;
  a2[2] = v19;
  a2[3] = v30;
  a2[4] = v31;
  a2[5] = v32;
  a2[6] = v33;
}

void sub_218A19610(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218A19674()
{
  if (!qword_280E8FA40[0])
  {
    v0 = sub_219BF52A4();
    if (!v1)
    {
      atomic_store(v0, qword_280E8FA40);
    }
  }
}

uint64_t sub_218A196D8(uint64_t a1)
{
  sub_218A19610(0, &qword_27CC0C798, type metadata accessor for PuzzleSettingsItem, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for TodayRebuildSavedStoriesModifier(uint64_t a1)
{
  result = qword_27CC0C7A8;
  if (!qword_27CC0C7A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218A197D8(uint64_t a1)
{
  sub_2186CFDE4(319, qword_280EC2CE0, &protocol descriptor for TodaySectionFactoryType);
  if (v1 <= 0x3F)
  {
    sub_2186D0BA8();
    if (v2 <= 0x3F)
    {
      sub_219BF0BD4();
      if (v3 <= 0x3F)
      {
        sub_2186CFDE4(319, &unk_280EBDA70, &protocol descriptor for OfflineContentManagerType);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_218A198AC(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v85 = a3;
  v87 = a2;
  sub_2188497B8(0, &unk_280EE4B30, MEMORY[0x277D6DF88]);
  v86 = v4;
  v84 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v83 = (&v68 - v5);
  v6 = type metadata accessor for SavedStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v6 - 8);
  v76 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2188118D4(0);
  MEMORY[0x28223BE20](v8 - 8);
  v81 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v75 = &v68 - v11;
  MEMORY[0x28223BE20](v12);
  v79 = &v68 - v13;
  sub_21880B928(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v77 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v68 - v19;
  sub_218A1AC00(0);
  v22 = v21 - 8;
  MEMORY[0x28223BE20](v21);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187FAD00(0);
  v26 = v25;
  v88 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v70 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v68 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v68 - v32;
  MEMORY[0x28223BE20](v34);
  v72 = &v68 - v35;
  v37 = MEMORY[0x28223BE20](v36);
  v82 = &v68 - v38;
  v78 = v16;
  v39 = *(v16 + 16);
  v80 = a1;
  v40 = a1;
  v41 = v15;
  v74 = v16 + 16;
  v73 = v39;
  (v39)(v20, v40, v15, v37);
  sub_218A1ABB8(&qword_280EE3738, sub_21880B928, MEMORY[0x277D6EC68]);
  sub_219BF56A4();
  v42 = *(v22 + 44);
  sub_218A1ABB8(&qword_280EE3730, sub_21880B928, MEMORY[0x277D6EC70]);
  sub_219BF5E84();
  if (*&v24[v42] == v91[0])
  {
LABEL_5:
    sub_218A1AC94(v24, sub_218A1AC00);
    sub_218A1AD58();
    v46 = swift_allocError();
    v48 = v83;
    v47 = v84;
    *v83 = v46;
    v49 = v86;
    (*(v47 + 104))(v48, *MEMORY[0x277D6DF68], v86);
    v87(v48);
    return (*(v47 + 8))(v48, v49);
  }

  else
  {
    v43 = (v88 + 16);
    v89 = (v88 + 8);
    v90 = (v88 + 32);
    while (1)
    {
      v44 = sub_219BF5EC4();
      (*v43)(v33);
      v44(v91, 0);
      sub_219BF5E94();
      v45 = *v90;
      (*v90)(v30, v33, v26);
      sub_219BE6934();
      LODWORD(v44) = (v91[0] >> 58) & 0x3C | (LODWORD(v91[0]) >> 1) & 3;

      if (v44 == 24)
      {
        break;
      }

      (*v89)(v30, v26);
      sub_219BF5E84();
      if (*&v24[v42] == v91[0])
      {
        goto LABEL_5;
      }
    }

    v69 = v41;
    sub_218A1AC94(v24, sub_218A1AC00);
    v51 = v72;
    v45(v72, v30, v26);
    v52 = v82;
    v45(v82, v51, v26);
    v53 = *(v88 + 56);
    v54 = v79;
    v53(v79, 1, 1, v26);
    sub_219BE6934();
    if (((v91[0] >> 58) & 0x3C | (LODWORD(v91[0]) >> 1) & 3) == 0x18)
    {
      v55 = swift_projectBox();
      v56 = v76;
      sub_218A1AE30(v55, v76, type metadata accessor for SavedStoriesTodayFeedGroup);

      v57 = v80;
      v58 = v71;
      v59 = sub_218A1A35C(v80, v71, v56);
      __swift_project_boxed_opaque_existential_1(v58, v58[3]);
      v60 = type metadata accessor for TodayRebuildSavedStoriesModifier(0);
      sub_218DE5CEC(v52, v58 + *(v60 + 24), v59, 0, v75);
      v61 = v81;

      sub_218A1AC94(v76, type metadata accessor for SavedStoriesTodayFeedGroup);
      sub_218A1AC94(v54, sub_2188118D4);
      v62 = v75;
      v53(v75, 0, 1, v26);
      sub_218A1ACF4(v62, v54);
    }

    else
    {

      v57 = v80;
      v61 = v81;
    }

    v63 = v77;
    v73(v77, v57, v69);
    sub_218A1AE30(v54, v61, sub_2188118D4);
    if ((*(v88 + 48))(v61, 1, v26) == 1)
    {
      sub_218A1AC94(v61, sub_2188118D4);
    }

    else
    {
      v64 = v70;
      v45(v70, v61, v26);
      sub_219BEB234();
      (*v89)(v64, v26);
    }

    type metadata accessor for TodayModel(0);
    sub_2188552DC();
    sub_2186EB3E8();
    sub_218A1ABB8(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
    sub_219BE78F4();
    __swift_project_boxed_opaque_existential_1(v91, v91[3]);
    if (sub_219BE6E54())
    {
      v66 = v83;
      v65 = v84;
      v67 = v86;
      (*(v84 + 104))(v83, *MEMORY[0x277D6DF80], v86);
    }

    else
    {
      v66 = v83;
      sub_219BE85C4();
      v67 = v86;
      v65 = v84;
    }

    v87(v66);
    (*(v65 + 8))(v66, v67);
    (*(v78 + 8))(v63, v69);
    sub_218A1AC94(v54, sub_2188118D4);
    (*v89)(v82, v26);
    return __swift_destroy_boxed_opaque_existential_1(v91);
  }
}

uint64_t sub_218A1A35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a2;
  v54 = a3;
  v3 = sub_219BF0644();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v52 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A1ADAC(0);
  v7 = v6;
  MEMORY[0x28223BE20](v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A1AE10(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v52 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v52 - v17;
  v19 = sub_218827310();
  if ((~v19 & 0xF000000000000007) != 0)
  {
    v21 = v19;
    type metadata accessor for TodayFeedServiceConfig(0);
    sub_218A1ABB8(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    sub_219BEE844();
    sub_21885AB78(v21);
    v20 = *(v4 + 56);
    v20(v18, 0, 1, v3);
  }

  else
  {
    v20 = *(v4 + 56);
    v20(v18, 1, 1, v3);
  }

  (*(v4 + 104))(v15, *MEMORY[0x277D32EF8], v3);
  v20(v15, 0, 1, v3);
  v22 = *(v7 + 48);
  sub_218A1AE30(v18, v9, sub_218A1AE10);
  sub_218A1AE30(v15, &v9[v22], sub_218A1AE10);
  v23 = *(v4 + 48);
  if (v23(v9, 1, v3) == 1)
  {
    sub_218A1AC94(v15, sub_218A1AE10);
    sub_218A1AC94(v18, sub_218A1AE10);
    if (v23(&v9[v22], 1, v3) == 1)
    {
      v24 = sub_218A1AC94(v9, sub_218A1AE10);
      goto LABEL_19;
    }

    goto LABEL_9;
  }

  sub_218A1AE30(v9, v12, sub_218A1AE10);
  if (v23(&v9[v22], 1, v3) == 1)
  {
    sub_218A1AC94(v15, sub_218A1AE10);
    sub_218A1AC94(v18, sub_218A1AE10);
    (*(v4 + 8))(v12, v3);
LABEL_9:
    sub_218A1AC94(v9, sub_218A1ADAC);
    goto LABEL_10;
  }

  v38 = v52;
  (*(v4 + 32))(v52, &v9[v22], v3);
  sub_218A1ABB8(&unk_280E90EE0, MEMORY[0x277D32F00], MEMORY[0x277D32F10]);
  v39 = sub_219BF53A4();
  v40 = *(v4 + 8);
  v40(v38, v3);
  sub_218A1AC94(v15, sub_218A1AE10);
  sub_218A1AC94(v18, sub_218A1AE10);
  v40(v12, v3);
  v24 = sub_218A1AC94(v9, sub_218A1AE10);
  if (v39)
  {
LABEL_19:
    v41 = *(v53 + 40);
    MEMORY[0x28223BE20](v24);
    *(&v52 - 2) = v42;

    sub_2195E6068(sub_218A1AE98, (&v52 - 4), v41);
    type metadata accessor for SavedStoriesTodayFeedGroup(0);
    v43 = sub_219A79734();
    if ((v35 & 1) == 0)
    {
LABEL_20:
      v32 = v43;
      goto LABEL_21;
    }

    v46 = v35;
    v47 = v34;
    v48 = v33;
    sub_219BF7934();
    swift_unknownObjectRetain_n();
    v49 = swift_dynamicCastClass();
    if (!v49)
    {
      swift_unknownObjectRelease();
      v49 = MEMORY[0x277D84F90];
    }

    v50 = *(v49 + 16);

    if (__OFSUB__(v46 >> 1, v47))
    {
      __break(1u);
    }

    else if (v50 == (v46 >> 1) - v47)
    {
      goto LABEL_26;
    }

    swift_unknownObjectRelease();
    v35 = v46;
    v34 = v47;
    v33 = v48;
    goto LABEL_20;
  }

LABEL_10:
  type metadata accessor for SavedStoriesTodayFeedGroup(0);
  v25 = sub_219A79734();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  if ((v30 & 1) == 0)
  {

LABEL_12:
    v32 = v25;
    v33 = v27;
    v34 = v29;
    v35 = v31;
LABEL_21:
    sub_218B666EC(v32, v33, v34, v35);
    v45 = v44;
LABEL_28:
    swift_unknownObjectRelease();
    return v45;
  }

  sub_219BF7934();
  swift_unknownObjectRetain_n();

  v36 = swift_dynamicCastClass();
  if (!v36)
  {
    swift_unknownObjectRelease();
    v36 = MEMORY[0x277D84F90];
  }

  v37 = *(v36 + 16);

  if (__OFSUB__(v31 >> 1, v29))
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v37 != (v31 >> 1) - v29)
  {
LABEL_31:
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

LABEL_26:
  v45 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v45)
  {
    v45 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

  return v45;
}

uint64_t sub_218A1AA34(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for TodayRebuildSavedStoriesModifier(0) + 28));
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  return (*(v6 + 48))(v2, v3, v5, v6) & 1;
}

uint64_t sub_218A1AABC(uint64_t a1)
{
  v2 = sub_218A1ABB8(&qword_27CC0C7D8, type metadata accessor for TodayRebuildSavedStoriesModifier, &unk_219C1266C);

  return MEMORY[0x2821D4040](a1, v2);
}

uint64_t sub_218A1ABB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_218A1AC00(uint64_t a1)
{
  if (!qword_280E8D4A0)
  {
    sub_21880B928(255);
    sub_218A1ABB8(&qword_280EE3730, sub_21880B928, MEMORY[0x277D6EC70]);
    v1 = sub_219BF7494();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D4A0);
    }
  }
}

uint64_t sub_218A1AC94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218A1ACF4(uint64_t a1, uint64_t a2)
{
  sub_2188118D4(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_218A1AD58()
{
  result = qword_27CC0C7C0;
  if (!qword_27CC0C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C7C0);
  }

  return result;
}

void sub_218A1ADAC(uint64_t a1)
{
  if (!qword_27CC0C7C8)
  {
    sub_218A1AE10(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0C7C8);
    }
  }
}

uint64_t sub_218A1AE30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_218A1AECC()
{
  result = qword_27CC0C7E0;
  if (!qword_27CC0C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C7E0);
  }

  return result;
}

uint64_t sub_218A1AF20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A1B730(0, &qword_27CC0C818, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for PuzzleArchiveTagFeedGroup(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218A1B678();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_218A1B794(&unk_280E92630, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_218A1B6CC(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218A1B1CC(uint64_t a1)
{
  v2 = sub_218A1B678();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218A1B208(uint64_t a1)
{
  v2 = sub_218A1B678();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218A1B284(void *a1)
{
  sub_218A1B730(0, &qword_27CC0C828, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218A1B678();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_218A1B794(&qword_280E92640, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218A1B4E4(uint64_t a1)
{
  result = sub_218A1B794(&unk_27CC1C5D0, type metadata accessor for PuzzleArchiveTagFeedGroup, &unk_219C128C0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_218A1B53C(void *a1)
{
  a1[1] = sub_218A1B794(&qword_27CC0C800, type metadata accessor for PuzzleArchiveTagFeedGroup, &unk_219C127EC);
  a1[2] = sub_218A1B794(&qword_27CC0C808, type metadata accessor for PuzzleArchiveTagFeedGroup, &unk_219C12898);
  result = sub_218A1B794(&qword_27CC0C810, type metadata accessor for PuzzleArchiveTagFeedGroup, &unk_219C12870);
  a1[3] = result;
  return result;
}

uint64_t sub_218A1B5E8(uint64_t a1)
{
  v2 = sub_218A1B794(&qword_27CC0C800, type metadata accessor for PuzzleArchiveTagFeedGroup, &unk_219C127EC);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_218A1B678()
{
  result = qword_27CC0C820;
  if (!qword_27CC0C820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C820);
  }

  return result;
}

uint64_t sub_218A1B6CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleArchiveTagFeedGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218A1B730(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218A1B678();
    v7 = a3(a1, &type metadata for PuzzleArchiveTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218A1B794(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_218A1B7F0()
{
  result = qword_27CC0C830;
  if (!qword_27CC0C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C830);
  }

  return result;
}

unint64_t sub_218A1B848()
{
  result = qword_27CC0C838;
  if (!qword_27CC0C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C838);
  }

  return result;
}

unint64_t sub_218A1B8A0()
{
  result = qword_27CC0C840;
  if (!qword_27CC0C840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C840);
  }

  return result;
}

uint64_t sub_218A1B8F4()
{
  sub_218A1C0F4(v0 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_startIndexPath);
  sub_218A1C0F4(v0 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_endIndexPath);

  return swift_deallocClassInstance();
}

uint64_t _s4ItemCMa(uint64_t a1)
{
  result = qword_27CC0C848;
  if (!qword_27CC0C848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218A1B9C4(uint64_t a1)
{
  sub_218A1BFC4(319, &unk_280EE9BB0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_218A1BAB4@<X0>(uint64_t *a1@<X8>)
{
  v3 = MEMORY[0x277D83D88];
  sub_218A1BFC4(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  sub_218A1BFC4(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C12A40;
  *(inited + 32) = 0x6F6974616D696E61;
  *(inited + 40) = 0xE90000000000006ELL;
  v8 = *(v1 + 64);
  v31 = *(v1 + 48);
  v32 = v8;
  v33 = *(v1 + 80);
  v9 = *(v1 + 32);
  v29 = *(v1 + 16);
  v30 = v9;
  *(inited + 72) = &_s4PlanC9AnimationON;
  v10 = swift_allocObject();
  *(inited + 48) = v10;
  *(v10 + 80) = v33;
  v11 = v32;
  *(v10 + 48) = v31;
  *(v10 + 64) = v11;
  v12 = v30;
  *(v10 + 16) = v29;
  *(v10 + 32) = v12;
  *(inited + 80) = 1684957547;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = *(v1 + 81);
  *(inited + 120) = &_s4ItemC4KindON;
  strcpy((inited + 128), "startIndexPath");
  *(inited + 143) = -18;
  sub_218A1BF30(v1 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_startIndexPath, v6);
  v13 = sub_219BF5484();
  v14 = MEMORY[0x277D837D0];
  *(inited + 144) = v13;
  *(inited + 152) = v15;
  *(inited + 168) = v14;
  strcpy((inited + 176), "endIndexPath");
  *(inited + 189) = 0;
  *(inited + 190) = -5120;
  sub_218A1BF30(v1 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_endIndexPath, v6);
  *(inited + 192) = sub_219BF5484();
  *(inited + 200) = v16;
  *(inited + 216) = v14;
  *(inited + 224) = 0x6172467472617473;
  *(inited + 232) = 0xEA0000000000656DLL;
  v17 = *(v1 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_startFrame + 32);
  v18 = *(v1 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_startFrame + 16);
  v26 = *(v1 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_startFrame);
  v27 = v18;
  v28 = v17;
  sub_218A1BFC4(0, &qword_280E8DB18, type metadata accessor for CGRect, v3);
  *(inited + 240) = sub_219BF5484();
  *(inited + 248) = v19;
  *(inited + 264) = v14;
  *(inited + 272) = 0x656D617246646E65;
  *(inited + 280) = 0xE800000000000000;
  v20 = *(v1 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_endFrame + 32);
  v21 = *(v1 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_endFrame + 16);
  v26 = *(v1 + OBJC_IVAR____TtCCC7NewsUI225AudioPlaylistFeedAnimator4Plan4Item_endFrame);
  v27 = v21;
  v28 = v20;
  v22 = sub_219BF5484();
  *(inited + 312) = v14;
  *(inited + 288) = v22;
  *(inited + 296) = v23;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2188317B0();
  swift_arrayDestroy();
  sub_218A1BFC4(0, &qword_27CC0C860, _s4ItemCMa, MEMORY[0x277D6CC20]);
  a1[3] = v24;
  a1[4] = sub_218A1C028();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_218A1BEA4(uint64_t a1)
{
  sub_218A1C0B0(&qword_27CC0C870, &unk_219C12AE0);

  return sub_219BE2324();
}

uint64_t sub_218A1BF30(uint64_t a1, uint64_t a2)
{
  sub_218A1BFC4(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_218A1BFC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_218A1C028()
{
  result = qword_27CC0C868;
  if (!qword_27CC0C868)
  {
    sub_218A1BFC4(255, &qword_27CC0C860, _s4ItemCMa, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C868);
  }

  return result;
}

uint64_t sub_218A1C0B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s4ItemCMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218A1C0F4(uint64_t a1)
{
  sub_218A1BFC4(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218A1C180()
{
  v0 = type metadata accessor for TodayModel(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218853400(0);
  sub_219BE5FC4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_218A1C3F0(0, &qword_280ED7560, type metadata accessor for TodayGapLocation, MEMORY[0x277D333C8], "location offlineModel ");
      v13 = *(v12 + 48);
      v14 = sub_219BF1584();
      (*(*(v14 - 8) + 8))(&v2[v13], v14);
      v3 = type metadata accessor for TodayGapLocation;
      goto LABEL_3;
    case 2u:
      sub_218853698(v2, type metadata accessor for TodayModel);
      return 1;
    case 3u:
    case 4u:
    case 5u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
    case 0xFu:
      v3 = type metadata accessor for TodayModel;
LABEL_3:
      v4 = v3;
      v5 = v2;
      goto LABEL_4;
    case 6u:
      sub_218A1C3F0(0, &qword_280E90E70, sub_2186EAD48, sub_2186EAB88, " fallback ");
      v8 = *(v7 + 48);
      sub_2186EAB88(0);
      (*(*(v9 - 8) + 8))(&v2[v8], v9);
      sub_2186EAD48(0);
      (*(*(v10 - 8) + 8))(v2, v10);
      return 0;
    default:

      sub_2186EA920(0);
      v4 = type metadata accessor for TodayGapLocation;
      v5 = &v2[*(v11 + 48)];
LABEL_4:
      sub_218853698(v5, v4);
      return 0;
  }
}

void sub_218A1C3F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}