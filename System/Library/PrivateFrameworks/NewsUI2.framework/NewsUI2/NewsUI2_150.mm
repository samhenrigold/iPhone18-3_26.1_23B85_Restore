uint64_t sub_21977C57C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v122 = a2;
  v139 = a3;
  v4 = MEMORY[0x277D83D88];
  sub_21977F410(0, qword_280EC9FB0, type metadata accessor for SearchFeedKnobsConfig, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v120 = &v112 - v6;
  sub_21977F410(0, qword_280ED7D40, type metadata accessor for SearchFeedConfig, v4);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v112 - v8;
  v118 = type metadata accessor for SearchFeedContentConfig(0);
  MEMORY[0x28223BE20](v118);
  v11 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SearchFeedConfig(0);
  v117 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v119 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21977F410(0, qword_280ECA088, type metadata accessor for SearchFeedGroupConfig, v4);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v112 - v15;
  v17 = type metadata accessor for SearchResultsGroup(0);
  v156 = *(v17 - 8);
  MEMORY[0x28223BE20](v17 - 8);
  v165 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21977F634(0);
  v169 = v19;
  v121 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v155 = (&v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21977F410(0, &qword_280E8E948, sub_21977F634, v4);
  MEMORY[0x28223BE20](v21 - 8);
  v166 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v173 = (&v112 - v24);
  sub_21977F710(0, &qword_280E92298, type metadata accessor for TopResultSearchFeedGroupConfigData, sub_21977F6A0, sub_21977F6D8);
  v153 = v25;
  v171 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v152 = &v112 - v26;
  sub_21977F710(0, &qword_280E923E0, type metadata accessor for SportsSearchFeedGroupConfigData, sub_21977F79C, sub_21977F7D4);
  v151 = v27;
  v167 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v150 = &v112 - v28;
  sub_21977F710(0, &qword_280E92128, type metadata accessor for SavedRecipesSearchFeedGroupConfigData, sub_21977F80C, sub_21977F844);
  v149 = v29;
  v163 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v148 = &v112 - v30;
  sub_21977F710(0, &qword_280E923A0, type metadata accessor for RecipesSearchFeedGroupConfigData, sub_21977F87C, sub_21977F8B4);
  v147 = v31;
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v146 = &v112 - v33;
  sub_21977F710(0, &qword_280E923D8, type metadata accessor for TopicsSearchFeedGroupConfigData, sub_21977F8EC, sub_21977F924);
  v145 = v34;
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v144 = &v112 - v36;
  sub_21977F710(0, &qword_280E92358, type metadata accessor for ChannelsSearchFeedGroupConfigData, sub_21977F95C, sub_21977F994);
  v143 = v37;
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v142 = &v112 - v39;
  sub_21977F710(0, &qword_280E92360, type metadata accessor for ArticlesSearchFeedGroupConfigData, sub_21977F9CC, sub_21977FA04);
  v141 = v40;
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v140 = &v112 - v42;
  v170 = type metadata accessor for SearchFeedGroupConfig(0);
  v161 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v138 = &v112 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v137 = &v112 - v45;
  MEMORY[0x28223BE20](v46);
  v154 = &v112 - v47;
  MEMORY[0x28223BE20](v48);
  v162 = &v112 - v49;
  MEMORY[0x28223BE20](v50);
  *&v168 = &v112 - v51;
  MEMORY[0x28223BE20](v52);
  v172 = &v112 - v53;
  if (sub_218FB8908())
  {
    return sub_21977FBA8(a1, v139, type metadata accessor for SearchFeedServiceConfig);
  }

  v114 = v11;
  v115 = v9;
  v55 = MEMORY[0x277D84FA0];
  v175 = MEMORY[0x277D84FA0];
  result = type metadata accessor for SearchFeedServiceConfig(0);
  v56 = *(result + 20);
  v116 = a1;
  v57 = a1 + v56;
  v113 = v12;
  v58 = *(v12 + 20);
  v112 = v57;
  v59 = *(v57 + v58);
  v60 = *(v59 + 16);
  v164 = v16;
  v160 = v60;
  if (!v60)
  {
    v63 = MEMORY[0x277D84F90];
    v64 = MEMORY[0x277D84F90];
    v65 = v169;
    v66 = v166;
    v67 = v173;
LABEL_6:
    v171 = v63;
    v163 = v64;
    v61 = 0;
    v172 = *(v122 + 16);
    v64 = *(v172 + 16);
    v68 = (v121 + 56);
    v69 = (v121 + 48);
    v63 = (v161 + 48);
    v70 = &unk_219C09000;
    v168 = xmmword_219C09BA0;
    while (1)
    {
      if (v61 == v64)
      {
        v71 = 1;
        v61 = v64;
        v72 = v165;
      }

      else
      {
        if ((v61 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v93 = sub_2191FB510((v70 > 1), v67, 1, v64);
          v94 = v162;
          v64 = v93;
          goto LABEL_24;
        }

        v70 = *(v172 + 16);
        v72 = v165;
        if (v61 >= v70)
        {
          goto LABEL_22;
        }

        v73 = v172 + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + *(v156 + 72) * v61;
        v74 = *(v65 + 48);
        v75 = v155;
        *v155 = v61;
        sub_21977FBA8(v73, v75 + v74, type metadata accessor for SearchResultsGroup);
        v76 = v75;
        v66 = v166;
        sub_21977FAD0(v76, v166, sub_21977F634);
        v71 = 0;
        ++v61;
        v67 = v173;
      }

      (*v68)(v66, v71, 1, v65);
      sub_21977FA3C(v66, v67);
      if ((*v69)(v67, 1, v65) == 1)
      {

        v85 = v112;
        v86 = v119;
        sub_21872AFC8(v112, v119, &qword_280EE9C40, MEMORY[0x277CC9578]);
        v87 = v113;
        sub_21872AFC8(v85 + *(v113 + 24), v86 + *(v113 + 24), &qword_280E91B80, MEMORY[0x277D32028]);
        *(v86 + *(v87 + 20)) = v163;
        v88 = v115;
        sub_21977FBA8(v86, v115, type metadata accessor for SearchFeedConfig);
        (*(v117 + 56))(v88, 0, 1, v87);
        v89 = v85 + *(v118 + 20);
        v90 = v120;
        sub_21977FBA8(v89, v120, type metadata accessor for SearchFeedKnobsConfig);
        v91 = type metadata accessor for SearchFeedKnobsConfig(0);
        (*(*(v91 - 8) + 56))(v90, 0, 1, v91);
        v92 = v114;
        sub_2193C1C74(v88, v90, v114);
        sub_218FB8C64(v92, v139);
        sub_21977FC80(v92, type metadata accessor for SearchFeedContentConfig);
        return sub_21977FC80(v86, type metadata accessor for SearchFeedConfig);
      }

      v77 = v67;
      v78 = *v67;
      sub_21977FAD0(v77 + *(v65 + 48), v72, type metadata accessor for SearchResultsGroup);
      v79 = v164;
      sub_21977E9A8(v72, v171, v164);
      if ((*v63)(v79, 1, v170) == 1)
      {
        sub_21977FC80(v72, type metadata accessor for SearchResultsGroup);
        sub_21977FB38(v79, qword_280ECA088, type metadata accessor for SearchFeedGroupConfig);
        v65 = v169;
        v67 = v173;
      }

      else
      {
        sub_21977FAD0(v79, v137, type metadata accessor for SearchFeedGroupConfig);
        v80 = sub_21977E8DC(v78, &v175);
        sub_21870F424(0, &qword_280E8B660, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
        v81 = swift_allocObject();
        *(v81 + 16) = v168;
        *(v81 + 32) = v80;
        sub_218C9907C(v81, v138);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v163 = sub_2191FB510(0, v163[2] + 1, 1, v163);
        }

        v65 = v169;
        v83 = v163[2];
        v82 = v163[3];
        if (v83 >= v82 >> 1)
        {
          v163 = sub_2191FB510((v82 > 1), v83 + 1, 1, v163);
        }

        sub_21977FC80(v137, type metadata accessor for SearchFeedGroupConfig);
        sub_21977FC80(v165, type metadata accessor for SearchResultsGroup);
        v84 = v163;
        v163[2] = v83 + 1;
        sub_21977FAD0(v138, v84 + ((*(v161 + 80) + 32) & ~*(v161 + 80)) + *(v161 + 72) * v83, type metadata accessor for SearchFeedGroupConfig);
        v67 = v173;
      }
    }
  }

  v61 = 0;
  v158 = (*(v161 + 80) + 32) & ~*(v161 + 80);
  v157 = v59 + v158;
  v136 = (v171 + 4);
  v135 = v171 + 1;
  v134 = (v167 + 32);
  v133 = v167 + 8;
  v132 = v163 + 4;
  v131 = v163 + 1;
  v130 = (v32 + 32);
  v129 = v32 + 8;
  v128 = (v35 + 32);
  v127 = v35 + 8;
  v126 = (v38 + 32);
  v125 = v38 + 8;
  v124 = (v41 + 32);
  v123 = v41 + 8;
  v62 = MEMORY[0x277D84FA0];
  v63 = MEMORY[0x277D84F90];
  v64 = MEMORY[0x277D84F90];
  v65 = v169;
  v159 = v59;
  while (v61 < *(v59 + 16))
  {
    v95 = *(v161 + 72);
    v96 = v172;
    sub_21977FBA8(v157 + v95 * v61, v172, type metadata accessor for SearchFeedGroupConfig);
    sub_21977FBA8(v96, v168, type metadata accessor for SearchFeedGroupConfig);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v167 = v95;
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v98 = v142;
          v99 = v143;
          (*v126)(v142, v168, v143);
          v100 = sub_219BEDD54();
          v101 = &v157;
        }

        else
        {
          v98 = v144;
          v99 = v145;
          (*v128)(v144, v168, v145);
          v100 = sub_219BEDD54();
          v101 = &v159;
        }
      }

      else
      {
        v98 = v140;
        v99 = v141;
        (*v124)(v140, v168, v141);
        v100 = sub_219BEDD54();
        v101 = &v155;
      }
    }

    else if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v98 = v150;
        v99 = v151;
        (*v134)(v150, v168, v151);
        v100 = sub_219BEDD54();
        v101 = &v165;
      }

      else
      {
        v98 = v152;
        v99 = v153;
        (*v136)(v152, v168, v153);
        v100 = sub_219BEDD54();
        v101 = &v167;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v98 = v146;
      v99 = v147;
      (*v130)(v146, v168, v147);
      v100 = sub_219BEDD54();
      v101 = &v161;
    }

    else
    {
      v98 = v148;
      v99 = v149;
      (*v132)(v148, v168, v149);
      v100 = sub_219BEDD54();
      v101 = &v163;
    }

    (**(v101 - 32))(v98, v99);
    if (!v100)
    {
      sub_21977FBA8(v172, v154, type metadata accessor for SearchFeedGroupConfig);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = sub_2191FB510(0, v63[2] + 1, 1, v63);
      }

      v66 = v63[2];
      v111 = v63[3];
      v67 = (v66 + 1);
      if (v66 >= v111 >> 1)
      {
        v93 = sub_2191FB510((v111 > 1), v66 + 1, 1, v63);
        v94 = v154;
        v63 = v93;
      }

      else
      {
        v93 = v63;
        v94 = v154;
      }

      v55 = v62;
      goto LABEL_24;
    }

    v171 = v63;
    v163 = v64;
    v102 = *(v100 + 16);
    if (v102)
    {
      v103 = 0;
      v55 = v175;
      v104 = v62 + 56;
      do
      {
        while (1)
        {
          v105 = *(v100 + 32 + 8 * v103++);
          v106 = sub_219BF7A94();
          v107 = -1 << *(v62 + 32);
          v108 = v106 & ~v107;
          if ((*(v104 + ((v108 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v108))
          {
            break;
          }

LABEL_47:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v174 = v55;
          sub_2194A2CF0(v105, v108, isUniquelyReferenced_nonNull_native);
          v55 = v174;
          v175 = v174;
          v62 = v174;
          if (v103 == v102)
          {
            goto LABEL_50;
          }

          v104 = v174 + 56;
        }

        v109 = ~v107;
        while (*(*(v62 + 48) + 8 * v108) != v105)
        {
          v108 = (v108 + 1) & v109;
          if (((*(v104 + ((v108 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v108) & 1) == 0)
          {
            goto LABEL_47;
          }
        }
      }

      while (v103 != v102);
    }

    v55 = v62;
LABEL_50:

    sub_21977FBA8(v172, v162, type metadata accessor for SearchFeedGroupConfig);
    v64 = v163;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v64 = sub_2191FB510(0, v64[2] + 1, 1, v64);
    }

    v65 = v169;
    v63 = v171;
    v66 = v64[2];
    v70 = v64[3];
    v67 = (v66 + 1);
    if (v66 >= v70 >> 1)
    {
      goto LABEL_23;
    }

    v93 = v64;
    v94 = v162;
LABEL_24:
    ++v61;
    sub_21977FC80(v172, type metadata accessor for SearchFeedGroupConfig);
    v93[2] = v67;
    result = sub_21977FAD0(v94, v93 + v158 + v66 * v167, type metadata accessor for SearchFeedGroupConfig);
    v62 = v55;
    v59 = v159;
    v66 = v166;
    v67 = v173;
    if (v61 == v160)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21977DBEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SearchFeedGapLocation(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21977F410(0, qword_280EC3738, type metadata accessor for SearchFeedServiceConfig, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  sub_218ABE008(0);
  sub_219BF0F54();
  v11 = type metadata accessor for SearchFeedServiceConfig(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    sub_21977FB38(v10, qword_280EC3738, type metadata accessor for SearchFeedServiceConfig);
  }

  else
  {
    v12 = sub_218FB8908();
    sub_21977FC80(v10, type metadata accessor for SearchFeedServiceConfig);
    if ((v12 & 1) == 0)
    {
      v18 = *(a2 + OBJC_IVAR____TtC7NewsUI217SearchDataManager_feedService);
      sub_21977F300(0, &qword_280E90B40, sub_218713104, sub_219268458, MEMORY[0x277D33010]);
      sub_21977F474();
      return sub_219BEDF24();
    }
  }

  sub_21977FBA8(a3, v7, type metadata accessor for SearchFeedGapLocation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_21977FC80(v7, type metadata accessor for SearchFeedGapLocation);
  v14 = *(a2 + OBJC_IVAR____TtC7NewsUI217SearchDataManager_feedService);
  if (EnumCaseMultiPayload == 1)
  {
    return sub_219BF0CE4();
  }

  v18 = v14;
  sub_21977F300(0, &qword_280E90B40, sub_218713104, sub_219268458, MEMORY[0x277D33010]);
  sub_21977F474();

  v16 = sub_219BEDF34();

  return v16;
}

BOOL sub_21977DF30(uint64_t a1)
{
  v2 = type metadata accessor for SearchFeedGroup(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return 0;
  }

  v10 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v11 = *(v6 + 72);
  v12 = v9 - 1;
  do
  {
    v13 = v12;
    sub_21977FBA8(v10, v8, type metadata accessor for SearchFeedGroup);
    sub_21977FAD0(v8, v4, type metadata accessor for SearchFeedGroup);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_21977FC80(v4, type metadata accessor for SearchFeedGroup);
    result = EnumCaseMultiPayload != 4;
    if (EnumCaseMultiPayload != 4)
    {
      break;
    }

    v12 = v13 - 1;
    v10 += v11;
  }

  while (v13);
  return result;
}

uint64_t sub_21977E0B4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  sub_21977F300(0, &qword_280E91310, type metadata accessor for SearchFeedServiceConfig, sub_2186FF508, MEMORY[0x277D326E0]);
  sub_219BE3204();
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = *(a5 + 16);
  *(v9 + 32) = *a5;
  *(v9 + 48) = v10;
  *(v9 + 64) = *(a5 + 32);
  *(v9 + 80) = *(a5 + 48);

  sub_218E0E0F8(a5, &v23);
  v11 = sub_219BE2E54();
  v12 = sub_219BE2F74();

  if (qword_280E8D828 != -1)
  {
    swift_once();
  }

  v13 = qword_280F61720;
  sub_2186E8390(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_219C0B8C0;
  sub_219BF5CD4();
  v15 = MEMORY[0x277D83A80];
  *(v14 + 56) = MEMORY[0x277D839F8];
  *(v14 + 64) = v15;
  *(v14 + 32) = v16;
  v17 = MEMORY[0x277D837D0];
  *(v14 + 96) = MEMORY[0x277D837D0];
  v18 = sub_2186FC3BC();
  *(v14 + 104) = v18;
  *(v14 + 72) = a3;
  *(v14 + 80) = a4;
  v23 = 0;
  v24 = 0xE000000000000000;
  v25 = v12;
  sub_21870F424(0, &unk_280EE6EB8, &type metadata for SearchExpandResult, MEMORY[0x277D6CF30]);

  sub_219BF7484();
  v19 = v23;
  v20 = v24;
  *(v14 + 136) = v17;
  *(v14 + 144) = v18;
  *(v14 + 112) = v19;
  *(v14 + 120) = v20;
  v21 = sub_219BF6214();
  sub_219BE5314("Search successfully expanded gap, time=%fms, identifier=%{public}@, fetchResultData=%@", 86, 2, &dword_2186C1000, v13, v21, v14);

  return v12;
}

void sub_21977E388(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (qword_280E8D828 != -1)
  {
    swift_once();
  }

  v6 = qword_280F61720;
  sub_2186E8390(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C0B8C0;
  sub_219BF5CD4();
  v8 = MEMORY[0x277D83A80];
  *(v7 + 56) = MEMORY[0x277D839F8];
  *(v7 + 64) = v8;
  *(v7 + 32) = v9;
  v10 = MEMORY[0x277D837D0];
  *(v7 + 96) = MEMORY[0x277D837D0];
  v11 = sub_2186FC3BC();
  *(v7 + 104) = v11;
  *(v7 + 72) = a2;
  *(v7 + 80) = a3;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);

  sub_219BF7484();
  *(v7 + 136) = v10;
  *(v7 + 144) = v11;
  *(v7 + 112) = 0;
  *(v7 + 120) = 0xE000000000000000;
  v12 = sub_219BF6214();
  sub_219BE5314("Search failed expanded gap, time=%fms, identifier=%{public}@, error=%{public}@", 78, 2, &dword_2186C1000, v6, v12, v7);
}

uint64_t sub_21977E650(__int128 *a1)
{
  swift_getObjectType();
  v3 = a1[1];
  v11 = *a1;
  v12[0] = v3;
  *(v12 + 9) = *(a1 + 25);
  v4 = swift_allocObject();
  v5 = a1[1];
  v4[1] = *a1;
  v4[2] = v5;
  *(v4 + 41) = *(a1 + 25);
  sub_218E0DF9C(&v11, &v10);
  type metadata accessor for SearchResults(0);
  sub_219BE31F4();

  *(swift_allocObject() + 16) = v1;
  v6 = v1;
  v7 = sub_219BE2E54();
  v8 = sub_219BE2F64();

  return v8;
}

void sub_21977E790(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *(a3 + 24);
  v11 = *(a3 + 8);
  v5 = v11;
  v12[0] = v6;
  *(v12 + 9) = *(a3 + 33);
  v7 = *(v12 + 9);
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 24) = v5;
  *(a4 + 40) = v6;
  *(a4 + 49) = v7;
  sub_218E0DF9C(&v11, v10);

  *(a4 + 16) = sub_219BEF6F4();
  v10[0] = sub_219BEF704();
  v8 = MEMORY[0x277D6D310];
  sub_21977F410(0, &unk_280E8F530, MEMORY[0x277D6D310], MEMORY[0x277D83940]);
  sub_21977FD98(&qword_280E8F520, &unk_280E8F530, v8);
  sub_21977FD50(&unk_280EE5DD0, 255, MEMORY[0x277D6D310], MEMORY[0x277D6D308]);
  v9 = sub_219BF56C4();

  *(a4 + 72) = v9;
}

uint64_t sub_21977E8DC(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  while (1)
  {
    v4 = *a2;
    if (!*(*a2 + 16))
    {
      break;
    }

    v5 = sub_219BF7A94();
    v6 = -1 << *(v4 + 32);
    v7 = v5 & ~v6;
    if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      break;
    }

    v8 = ~v6;
    while (*(*(v4 + 48) + 8 * v7) != a1)
    {
      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        return a1;
      }
    }

    if (__OFADD__(a1++, 1))
    {
      __break(1u);
      return a1;
    }
  }

  return a1;
}

uint64_t sub_21977E9A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  sub_21977FC10(0);
  v6 = v5;
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SearchFeedGroupConfig(0);
  v29 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  if (!v13)
  {
    return (*(v29 + 56))(v28, 1, 1, v9, v10);
  }

  v14 = a2 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
  v15 = *(v29 + 72);
  while (1)
  {
    sub_21977FBA8(v14, v12, type metadata accessor for SearchFeedGroupConfig);
    v16 = &v8[*(v6 + 48)];
    sub_21977FBA8(v12, v8, type metadata accessor for SearchFeedGroupConfig);
    sub_21977FBA8(a1, v16, type metadata accessor for SearchResultsGroup);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    type metadata accessor for SearchResultsGroup(0);
    v18 = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      break;
    }

    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        if (v18 == 4)
        {
          goto LABEL_24;
        }
      }

      else if (!v18)
      {
        v19 = v28;
        sub_21977FAD0(v12, v28, type metadata accessor for SearchFeedGroupConfig);
        (*(v29 + 56))(v19, 0, 1, v9);
        sub_21977FC80(v16, type metadata accessor for SearchModel);
        return sub_21977FC80(v8, type metadata accessor for SearchFeedGroupConfig);
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      if (v18 == 5)
      {
        goto LABEL_25;
      }
    }

    else if (v18 == 6)
    {
LABEL_25:
      v21 = v16 + 8;

      v26 = v28;
      sub_21977FAD0(v12, v28, type metadata accessor for SearchFeedGroupConfig);
      (*(v29 + 56))(v26, 0, 1, v9);
      v23 = &qword_280EC6990;
      v24 = &qword_280EC69A0;
      v25 = &protocol descriptor for StreamingRecipeResults;
      goto LABEL_27;
    }

LABEL_4:
    sub_21977FC80(v12, type metadata accessor for SearchFeedGroupConfig);
    sub_21977FC80(v8, type metadata accessor for SearchFeedGroupConfig);
    sub_21977FC80(v16, type metadata accessor for SearchResultsGroup);
    v14 += v15;
    if (!--v13)
    {
      return (*(v29 + 56))(v28, 1, 1, v9, v10);
    }
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      if (v18 == 2)
      {
        goto LABEL_24;
      }
    }

    else if (v18 == 1)
    {
LABEL_24:
      v21 = v16 + 8;

      v22 = v28;
      sub_21977FAD0(v12, v28, type metadata accessor for SearchFeedGroupConfig);
      (*(v29 + 56))(v22, 0, 1, v9);
      v23 = &qword_280ED01D0;
      v24 = &qword_280ED01E0;
      v25 = &protocol descriptor for StreamingTagResults;
      goto LABEL_27;
    }

    goto LABEL_4;
  }

  if (v18 != 3)
  {
    goto LABEL_4;
  }

  v21 = v16 + 8;

  v27 = v28;
  sub_21977FAD0(v12, v28, type metadata accessor for SearchFeedGroupConfig);
  (*(v29 + 56))(v27, 0, 1, v9);
  v23 = &qword_280EC30F0;
  v24 = qword_280EC3100;
  v25 = &protocol descriptor for StreamingArticleResults;
LABEL_27:
  sub_21977FCE0(v21, v23, v24, v25);
  return sub_21977FC80(v8, type metadata accessor for SearchFeedGroupConfig);
}

uint64_t sub_21977EE20(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC7NewsUI217SearchDataManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 16))(v2, &off_282A865C0, a1, a2, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21977EED4(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC7NewsUI217SearchDataManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 24))(v2, &off_282A865C0, a1, a2, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21977EF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + OBJC_IVAR____TtC7NewsUI217SearchDataManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    v11 = (*(v9 + 32))(v3, &off_282A865C0, a1, a2, a3, ObjectType, v9);
    swift_unknownObjectRelease();
    return v11;
  }

  return result;
}

uint64_t sub_21977F02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + OBJC_IVAR____TtC7NewsUI217SearchDataManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 40))(v3, &off_282A865C0, a1, a2, a3, ObjectType, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21977F178(void *a1)
{
  v3 = *(type metadata accessor for SearchFeedGapLocation(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for SearchExpandRequest(0) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  return sub_21977B854(a1, (v1 + v4), *(v1 + v5), v1 + v7, *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_21977F300(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_21977F410(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_21977F474()
{
  result = qword_280E90B48;
  if (!qword_280E90B48)
  {
    sub_21977F300(255, &qword_280E90B40, sub_218713104, sub_219268458, MEMORY[0x277D33010]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E90B48);
  }

  return result;
}

uint64_t sub_21977F52C(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResults(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for SearchExpandRequest(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_21977C128(a1, v1 + v4, v1 + v7, *(v1 + v8), *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_21977F634(uint64_t a1)
{
  if (!qword_280E8E950)
  {
    type metadata accessor for SearchResultsGroup(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8E950);
    }
  }
}

void sub_21977F710(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    a5();
    v8 = sub_219BEDD94();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_21977FA3C(uint64_t a1, uint64_t a2)
{
  sub_21977F410(0, &qword_280E8E948, sub_21977F634, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21977FAD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21977FB38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21977F410(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21977FBA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_21977FC10(uint64_t a1)
{
  if (!qword_27CC1EDF0)
  {
    type metadata accessor for SearchFeedGroupConfig(255);
    type metadata accessor for SearchResultsGroup(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1EDF0);
    }
  }
}

uint64_t sub_21977FC80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21977FCE0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_2186E8390(0, a2, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_21977FD50(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21977FD98(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_21977F410(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21977FE18(uint64_t a1)
{
  v2 = (a1 + OBJC_IVAR____TtC7NewsUI217SearchDataManager_searchService);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = v1[2];
  v7 = v1[1];
  v8[0] = v5;
  *(v8 + 9) = *(v1 + 41);
  return (*(v4 + 8))(&v7, v3, v4);
}

double sub_21977FEB8(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  if (v3)
  {
    v21 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v3, 0);
    v5 = v21;
    v6 = a1 + 40;
    do
    {
      v7 = *(v6 - 8);
      v8 = *(v7 + 16);
      j__swift_retain();
      j__swift_retain();
      v9 = [v8 identifier];
      v10 = sub_219BF5414();
      v12 = v11;

      j__swift_release(v7);
      j__swift_release(v7);
      v14 = *(v21 + 16);
      v13 = *(v21 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_21870B65C((v13 > 1), v14 + 1, 1);
      }

      v6 += 16;
      *(v21 + 16) = v14 + 1;
      v15 = v21 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
    if (!*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_12;
    }
  }

  v16 = sub_218845F78(v5);

  v17 = v2 + OBJC_IVAR____TtC7NewsUI217SearchDataManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v18 = *(v17 + 8);
    ObjectType = swift_getObjectType();
    (*(v18 + 8))(v2, &off_282A865C0, MEMORY[0x277D84FA0], v16, MEMORY[0x277D84FA0], ObjectType, v18);

    swift_unknownObjectRelease();
    return result;
  }

LABEL_12:

  return result;
}

__n128 __swift_memcpy90_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_219780110(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 90))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21978016C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 90) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 90) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

void sub_21978020C(uint64_t a1, uint64_t a2)
{
  v62 = a1;
  v50 = sub_219BDBD34();
  v53 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v58 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v59 = &v42 - v5;
  sub_21880A6FC(0, &unk_280EE3478, MEMORY[0x277D2D1D8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v51 = &v42 - v7;
  v8 = sub_219BDF2A4();
  v56 = *(v8 - 8);
  v57 = v8;
  MEMORY[0x28223BE20](v8);
  v54 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDEEF4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BEBD94();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_219BE13E4();
  MEMORY[0x28223BE20](v15 - 8);
  v65 = sub_219BDF0B4();
  v55 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_219BDF7C4();
  v52 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEC254();
  v61 = v19;
  sub_219BDF7B4();
  sub_219BEC244();
  sub_219BE13D4();
  v63 = v17;
  sub_219BDF0A4();
  v66 = a2;
  sub_219BEC274();
  Width = CGRectGetWidth(v67);
  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (Width <= -2147483650.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (Width >= 2147483650.0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_219BEC274();
  Height = CGRectGetHeight(v68);
  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (Height <= -2147483650.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (Height < 2147483650.0)
  {
    sub_219BDEEE4();
    v49 = "_TtC7NewsUI215BannerAdTracker";
    sub_219780D90(&qword_280EE8928, MEMORY[0x277D2D760], MEMORY[0x277D2D758]);
    sub_219BDCCC4();
    (*(v11 + 8))(v13, v10);
    sub_21880A6FC(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v23 = v22;
    v24 = sub_219BDCD44();
    v25 = *(v24 - 8);
    v26 = *(v25 + 72);
    v44 = *(v25 + 80);
    v27 = (v44 + 32) & ~v44;
    v46 = v26;
    v47 = v23;
    v28 = swift_allocObject();
    v60 = xmmword_219C09BA0;
    *(v28 + 16) = xmmword_219C09BA0;
    v29 = *MEMORY[0x277CEAD18];
    v43 = *(v25 + 104);
    v45 = v29;
    v48 = v24;
    v43(v28 + v27, v29, v24);
    sub_219780D90(&qword_280EE8680, MEMORY[0x277D2DD68], MEMORY[0x277D2DD60]);
    sub_219BDCCC4();

    v30 = swift_allocObject();
    *(v30 + 16) = v60;
    v31 = v29;
    v32 = v43;
    v43(v30 + v27, v31, v24);
    sub_219780D90(&qword_280EE88B8, MEMORY[0x277D2D898], MEMORY[0x277D2D890]);
    sub_219BDCCC4();

    v33 = v51;
    sub_219BEC284();
    v34 = sub_219BEBE04();
    (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
    v35 = v54;
    sub_219BDF294();
    v36 = swift_allocObject();
    *(v36 + 16) = v60;
    v32(v36 + v27, v45, v48);
    sub_219780D90(&qword_280EE8808, MEMORY[0x277D2D9D8], MEMORY[0x277D2D9D0]);
    v37 = v57;
    sub_219BDCCC4();

    (*(v56 + 8))(v35, v37);
    sub_219BE0A34();
    v38 = v58;
    sub_219BEC264();
    sub_219BEC294();
    v39 = v59;
    sub_219BDBC44();
    v40 = *(v53 + 8);
    v41 = v50;
    v40(v38, v50);
    sub_219780D90(&qword_280EE8238, MEMORY[0x277D2EA00], MEMORY[0x277D2E9F8]);
    sub_219BDCC64();
    v40(v39, v41);
    sub_219BEC264();
    sub_219BDCC74();
    v40(v39, v41);
    (*(v55 + 8))(v63, v65);
    (*(v52 + 8))(v61, v64);
    return;
  }

LABEL_13:
  __break(1u);
}

double sub_219780BE0(uint64_t a1)
{
  v2 = sub_219BEC2A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v5);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  sub_219BDD154();

  return result;
}

void sub_219780D20(uint64_t a1)
{
  v3 = *(sub_219BEC2A4() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_21978020C(a1, v4);
}

uint64_t sub_219780D90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PuzzleEmbedOpenLeaderboardMessageHandler.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC7NewsUI240PuzzleEmbedOpenLeaderboardMessageHandler_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PuzzleEmbedOpenLeaderboardMessageHandler.delegate.modify(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7NewsUI240PuzzleEmbedOpenLeaderboardMessageHandler_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_219780F34;
}

id PuzzleEmbedOpenLeaderboardMessageHandler.__allocating_init(scriptsManager:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC7NewsUI240PuzzleEmbedOpenLeaderboardMessageHandler_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC7NewsUI240PuzzleEmbedOpenLeaderboardMessageHandler_scriptsManager] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id PuzzleEmbedOpenLeaderboardMessageHandler.init(scriptsManager:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC7NewsUI240PuzzleEmbedOpenLeaderboardMessageHandler_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7NewsUI240PuzzleEmbedOpenLeaderboardMessageHandler_scriptsManager] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id PuzzleEmbedOpenLeaderboardMessageHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PuzzleEmbedOpenLeaderboardMessageHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_219781188(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC7NewsUI240PuzzleEmbedOpenLeaderboardMessageHandler_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2197811F4(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7NewsUI240PuzzleEmbedOpenLeaderboardMessageHandler_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_219781848;
}

void _s7NewsUI240PuzzleEmbedOpenLeaderboardMessageHandlerC10didReceive_14securityOriginySo9SWMessage_p_So0m8SecurityL0_ptF_0(void *a1)
{
  v2 = v1;
  v4 = [a1 body];
  v5 = sub_219BF5214();

  v6 = sub_2187A1A2C(v5);

  if (v6)
  {
    if (*(v6 + 16) && (v7 = sub_21870F700(0x736E6F6974706FLL, 0xE700000000000000), (v8 & 1) != 0))
    {
      sub_2186D1230(*(v6 + 56) + 32 * v7, v33);
      sub_218A19674();
      if (swift_dynamicCast())
      {
        v9 = v32;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v10 = sub_219BE5434();
    __swift_project_value_buffer(v10, qword_280F625E0);

    v11 = sub_219BE5414();
    v12 = sub_219BF6214();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v33[0] = v14;
      *v13 = 136315138;
      v15 = sub_219BF5224();
      v17 = v16;

      v18 = sub_2186D1058(v15, v17, v33);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_2186C1000, v11, v12, "PuzzleEmbedOpenLeaderboardMessageHandler received: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x21CECF960](v14, -1, -1);
      MEMORY[0x21CECF960](v13, -1, -1);
    }

    else
    {
    }

    v28 = v2 + OBJC_IVAR____TtC7NewsUI240PuzzleEmbedOpenLeaderboardMessageHandler_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v29 = *(v28 + 8);
      ObjectType = swift_getObjectType();
      (*(v29 + 8))(v2, &protocol witness table for PuzzleEmbedOpenLeaderboardMessageHandler, v9, ObjectType, v29);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v19 = sub_219BE5434();
    __swift_project_value_buffer(v19, qword_280F625E0);
    swift_unknownObjectRetain();
    oslog = sub_219BE5414();
    v20 = sub_219BF61F4();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33[0] = v22;
      *v21 = 136315138;
      v23 = [a1 body];
      sub_219BF5214();

      v24 = sub_219BF5224();
      v26 = v25;

      v27 = sub_2186D1058(v24, v26, v33);

      *(v21 + 4) = v27;
      _os_log_impl(&dword_2186C1000, oslog, v20, "PuzzleEmbedSubmitScoreHandler received invalid message %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x21CECF960](v22, -1, -1);
      MEMORY[0x21CECF960](v21, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_2197818A4()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_21978196C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

double sub_219781A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20[0] = a6;
  v20[1] = a4;
  v20[2] = a3;
  v6 = sub_219BE6CF4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D83D88];
  sub_2186D8E7C(0, &unk_27CC1D910, MEMORY[0x277D6D5C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v20 - v12;
  sub_2186D8E7C(0, &unk_27CC1EE20, MEMORY[0x277D6EB98], v10);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v20 - v15;
  swift_getObjectType();
  sub_219BEAF54();

  sub_219BEA924();
  sub_219BE6394();
  v17 = sub_219BE63A4();
  (*(*(v17 - 8) + 56))(v13, 0, 1, v17);
  sub_219782F30(v20[0]);
  (*(v7 + 104))(v9, *MEMORY[0x277D6D7E8], v6);
  sub_219BEA754();
  v18 = sub_219BEA764();
  (*(*(v18 - 8) + 56))(v16, 0, 1, v18);
  sub_219BE7094();
  sub_219783398(v16, &unk_27CC1EE20, MEMORY[0x277D6EB98]);

  return result;
}

double sub_219781D84(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_280EE9A10 != -1)
    {
      swift_once();
    }

    type metadata accessor for FeedPerformanceCommandHandler();
    sub_219783408(&unk_27CC1EE10, v3, type metadata accessor for FeedPerformanceCommandHandler, &unk_219CA2AE0);
    sub_219BDCA54();
  }

  return result;
}

uint64_t sub_219781E70()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_219781F5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_219BDBD34();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  sub_219BE1CC4();
  if (sub_219BE1CB4() & 1) == 0 || ([*(v2 + 72) isRunningPPT] & 1) != 0 || (*(v2 + 80))
  {
    return 0;
  }

  if (qword_280EE9A10 != -1)
  {
    swift_once();
  }

  sub_219783408(qword_280EB0BB0, v12, type metadata accessor for FeedPerformanceCommandHandler, &unk_219CA2AA0);
  sub_219BDC7D4();
  if (v39)
  {
    return 0;
  }

  v13 = [objc_opt_self() sharedApplication];
  v14 = [v13 applicationState];

  if (v14)
  {
    return 0;
  }

  sub_219BDB174();
  if (v15 >= 30.0 || (*(a2 + *(type metadata accessor for FeedPerformanceCommandContext(0) + 28)) & 1) != 0)
  {
    return 0;
  }

  v38 = *(v3 + 56);
  v16 = [v38 possiblyUnfetchedAppConfiguration];
  if ([v16 respondsToSelector_])
  {
    v17 = [v16 todayPerformanceAlertsEnabled];
    swift_unknownObjectRelease();
    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v19 = result;
    v20 = [v38 possiblyUnfetchedAppConfiguration];
    if ([v20 respondsToSelector_])
    {
      v21 = [v20 todayPerformanceAlertsMinNewsVersion];
    }

    else
    {
      v21 = 0;
    }

    swift_unknownObjectRelease();
    v22 = [v19 isNewsVersionAllowed_];

    if (!v22)
    {
      return 0;
    }

    v23 = [*(v3 + 64) dateOfLastNetworkIssue];
    if (v23)
    {
      v24 = v23;
      sub_219BDBCA4();

      (*(v6 + 32))(v11, v8, v5);
      sub_219BDBC64();
      v26 = fabs(v25);
      sub_219BF5D04();
      v28 = v27;
      (*(v6 + 8))(v11, v5);
      if (v26 < v28 * 5.0)
      {
        return 0;
      }
    }

    sub_219BEAF54();
    if (qword_280EE38E8 != -1)
    {
      swift_once();
    }

    if (sub_219BEA954())
    {
      sub_219BDB174();
      v30 = v29;
      v31 = [v38 possiblyUnfetchedAppConfiguration];
      if ([v31 respondsToSelector_])
      {
        [v31 todayPerformanceAlertPrewarmThreshold];
        goto LABEL_36;
      }

      goto LABEL_38;
    }

    if (qword_280EE38D0 != -1)
    {
      swift_once();
    }

    if (sub_219BEA954())
    {
      sub_219BDB174();
      v30 = v33;
      v34 = [v38 possiblyUnfetchedAppConfiguration];
      if ([v34 respondsToSelector_])
      {
        [v34 todayPerformanceAlertGapExpansionThreshold];
        goto LABEL_36;
      }
    }

    else
    {
      if (qword_280EE38D8 != -1)
      {
        swift_once();
      }

      if ((sub_219BEA954() & 1) == 0)
      {
        return 1;
      }

      sub_219BDB174();
      v30 = v35;
      v36 = [v38 possiblyUnfetchedAppConfiguration];
      if ([v36 respondsToSelector_])
      {
        [v36 todayPerformanceAlertSpinnerThreshold];
LABEL_36:
        v37 = v32;
        swift_unknownObjectRelease();
        return v37 < v30;
      }
    }

LABEL_38:
    swift_unknownObjectRelease();
    return v30 > 1.79769313e308;
  }

  __break(1u);
  return result;
}

void sub_219782508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v44 = a1;
  v8 = type metadata accessor for FeedPerformanceCommandContext(0);
  v45 = *(v8 - 8);
  v9 = *(v45 + 64);
  MEMORY[0x28223BE20](v8);
  sub_2186D8E7C(0, qword_280EDB700, type metadata accessor for TodayFeedGroup, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v43 - v11;
  sub_219BEAF54();
  if (qword_280EE38E8 != -1)
  {
    swift_once();
  }

  if (sub_219BEA954())
  {
    v43 = a2;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_219BF7314();

    *&aBlock = 0xD000000000000019;
    *(&aBlock + 1) = 0x8000000219D35020;
    sub_219BDB174();
    v51 = sub_219BF5CC4();
    v13 = sub_219BF7894();
    MEMORY[0x21CECC330](v13);

    MEMORY[0x21CECC330](29549, 0xE200000000000000);
    v14 = *(&aBlock + 1);
    v15 = aBlock;
    goto LABEL_16;
  }

  if (qword_280EE38D0 != -1)
  {
    swift_once();
  }

  if (sub_219BEA954())
  {
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_219BF7314();

    strcpy(&aBlock, "Today Perf: ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    sub_219782E9C(a4 + *(v8 + 24), v12);
    v16 = type metadata accessor for TodayFeedGroup(0);
    v17 = (*(*(v16 - 8) + 48))(v12, 1, v16);
    v43 = a2;
    if (v17 == 1)
    {
      sub_219783398(v12, qword_280EDB700, type metadata accessor for TodayFeedGroup);
      v18 = 0xE700000000000000;
      v19 = 0x6E776F6E6B6E55;
    }

    else
    {
      v21 = sub_2189978F8();
      v18 = v22;
      sub_218FBA768(v12);
      v19 = v21;
    }

    MEMORY[0x21CECC330](v19, v18);

    MEMORY[0x21CECC330](0x742070756F726720, 0xEC000000206B6F6FLL);
    sub_219BDB174();
    v51 = sub_219BF5CC4();
    v23 = sub_219BF7894();
    MEMORY[0x21CECC330](v23);

    MEMORY[0x21CECC330](29549, 0xE200000000000000);
    v14 = *(&aBlock + 1);
    v15 = aBlock;
LABEL_16:
    v24 = sub_219BF53D4();
    v25 = sub_219BF53D4();

    v26 = [objc_opt_self() alertControllerWithTitle:v24 message:v25 preferredStyle:1];

    sub_219782D54(a4, &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v27 = (*(v45 + 80) + 48) & ~*(v45 + 80);
    v28 = swift_allocObject();
    v29 = v43;
    v28[2] = v44;
    v28[3] = v29;
    v28[4] = v15;
    v28[5] = v14;
    sub_219782DB8(&v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
    swift_unknownObjectRetain();
    v30 = sub_219BF53D4();
    v49 = sub_219782E1C;
    v50 = v28;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v47 = sub_218B66540;
    v48 = &block_descriptor_167;
    v31 = _Block_copy(&aBlock);

    v32 = objc_opt_self();
    v33 = [v32 actionWithTitle:v30 style:0 handler:v31];
    _Block_release(v31);

    [v26 addAction_];
    v34 = sub_219BF53D4();
    v35 = [v32 actionWithTitle:v34 style:0 handler:0];

    [v26 addAction_];
    v36 = swift_allocObject();
    swift_weakInit();

    v37 = sub_219BF53D4();
    v49 = sub_219782E94;
    v50 = v36;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v47 = sub_218B66540;
    v48 = &block_descriptor_7_4;
    v38 = _Block_copy(&aBlock);

    v39 = [v32 actionWithTitle:v37 style:0 handler:v38];
    _Block_release(v38);

    [v26 addAction_];
    __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
    v40 = sub_219BE7174();
    if (v40)
    {
      v41 = v40;
      v42 = [v40 rootViewController];

      if (v42)
      {
        [v42 presentViewController:v26 animated:1 completion:0];
      }
    }

    *(v5 + 80) = 1;
    return;
  }

  if (qword_280EE38D8 != -1)
  {
    swift_once();
  }

  if (sub_219BEA954())
  {
    v43 = a2;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_219BF7314();

    *&aBlock = 0xD00000000000002ALL;
    *(&aBlock + 1) = 0x8000000219D34EF0;
    sub_219BDB174();
    v51 = sub_219BF5CC4();
    v20 = sub_219BF7894();
    MEMORY[0x21CECC330](v20);

    MEMORY[0x21CECC330](29549, 0xE200000000000000);
    v14 = *(&aBlock + 1);
    v15 = aBlock;
    goto LABEL_16;
  }
}

uint64_t sub_219782D54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedPerformanceCommandContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219782DB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedPerformanceCommandContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_219782E1C(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedPerformanceCommandContext(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_219781A58(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_219782E9C(uint64_t a1, uint64_t a2)
{
  sub_2186D8E7C(0, qword_280EDB700, type metadata accessor for TodayFeedGroup, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_219782F30(uint64_t a1)
{
  v2 = sub_219BE6804();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186D8E7C(0, &qword_280E91DB0, MEMORY[0x277D31F08], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_219BEDFD4();
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x28223BE20](v9);
  v31 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BF0BD4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FeedPerformanceCommandContext(0);
  v15 = sub_218827310();
  if ((~v15 & 0xF000000000000007) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v17 = v15;
  v27 = v5;
  v29 = v2;
  sub_2186D8E7C(0, &qword_27CC1EE30, MEMORY[0x277D6D6D8], MEMORY[0x277D84560]);
  v18 = *(v3 + 72);
  v28 = v3;
  v26 = ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 2 * v18;
  v19 = swift_allocObject();
  v30 = a1;
  v16 = v19;
  *(v19 + 16) = xmmword_219C09EC0;
  type metadata accessor for TodayFeedServiceConfig(0);
  sub_219783408(&qword_280EC6590, 255, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
  sub_219BE67F4();
  sub_219BEE7A4();
  sub_219BE67D4();
  (*(v12 + 8))(v14, v11);
  sub_218FBA0A4(v17, v8);
  v21 = v32;
  v20 = v33;
  if ((*(v32 + 48))(v8, 1, v33) == 1)
  {
    sub_21885AB78(v17);
    sub_219783398(v8, &qword_280E91DB0, MEMORY[0x277D31F08]);
  }

  else
  {
    v22 = v31;
    (*(v21 + 32))(v31, v8, v20);
    v23 = v27;
    sub_219BE67E4();
    v16 = sub_2191F9528(1, 3, 1, v16);
    v24 = sub_21885AB78(v17);
    (*(v21 + 8))(v22, v20, v24);
    *(v16 + 2) = 3;
    (*(v28 + 32))(&v16[v26], v23, v29);
  }

  return v16;
}

uint64_t sub_219783398(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2186D8E7C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219783408(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_219783480@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_219BEEA84();
  v24 = *(v5 - 8);
  v6 = v24;
  v25 = v5;
  MEMORY[0x28223BE20](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AudioHistoryFeedContentConfig(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v2[1];
  v23[0] = *v2;
  v23[1] = v12;
  sub_2192204A8(a1, v11);
  v13 = type metadata accessor for AudioHistoryFeedServiceConfig(0);
  v14 = *(v2 + v13[6]);
  v15 = *(v2 + v13[7]);
  v16 = *(v6 + 16);
  v17 = v2 + v13[9];
  v18 = v25;
  v16(v8, v17, v25);
  *a2 = v23[0];
  *(a2 + 1) = v12;
  sub_2192204A8(v11, &a2[v13[5]]);
  *&a2[v13[6]] = v14;
  *&a2[v13[7]] = v15;
  v19 = v18;
  v16(&a2[v13[9]], v8, v18);
  v20 = v14;
  swift_unknownObjectRetain();

  v21 = [v15 autoRefreshMinimumInterval];
  (*(v24 + 8))(v8, v19);
  sub_21922050C(v11);
  result = v21;
  *&a2[v13[8]] = v21;
  return result;
}

unint64_t sub_2197836E0()
{
  result = qword_27CC1EE38;
  if (!qword_27CC1EE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1EE38);
  }

  return result;
}

uint64_t sub_219783744(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v27 = a3;
  v28 = a2;
  sub_219783D38(0, &qword_27CC0B708, MEMORY[0x277D6DF88]);
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - v5;
  sub_218E49B5C(0);
  MEMORY[0x28223BE20](v7 - 8);
  sub_219783D38(0, &qword_27CC0B150, MEMORY[0x277D6EC60]);
  v24 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  v30 = v3;
  sub_21894BC68(sub_219783E2C, v29);
  v13 = v12;
  sub_218953B70(0);
  v15 = v14;
  v16 = sub_218701D04(&qword_27CC12A18, sub_218953B70, MEMORY[0x277D6D720]);
  v17 = sub_218701D04(&qword_27CC12A20, sub_218953B70, MEMORY[0x277D6D718]);
  MEMORY[0x21CEB9170](v13, v15, v16, v17);
  type metadata accessor for RecipeBoxSectionDescriptor(0);
  type metadata accessor for RecipeBoxModel(0);
  sub_218701D04(qword_280EBA6F0, type metadata accessor for RecipeBoxSectionDescriptor, &unk_219C6261C);
  sub_218701D04(&qword_280EDBED0, type metadata accessor for RecipeBoxModel, &unk_219C63468);
  sub_219BEB2D4();
  v18 = sub_21917BCEC();
  sub_219BEEFF4();
  sub_219BEEFE4();
  type metadata accessor for RecipeBoxFeedServiceConfig(0);
  sub_218701D04(&qword_280EBA8B0, type metadata accessor for RecipeBoxFeedServiceConfig, &unk_219C60268);
  v19 = sub_219BEEFC4();

  v20 = 0;
  if (v19)
  {
    v20 = sub_219BEDC74();
  }

  else
  {
    v32 = 0;
    v33 = 0;
  }

  v31 = v19;
  v34 = v20;
  v21 = v24;
  sub_219BEB2C4();
  sub_21885AB78(v18);
  sub_219BE8584();
  v28(v6);
  (*(v25 + 8))(v6, v26);
  return (*(v9 + 8))(v11, v21);
}

uint64_t sub_219783B68(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
  v4 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  v5 = off_282A95BF0;
  type metadata accessor for RecipeBoxSectionFactory();
  return v5(a1, v4, v2);
}

uint64_t sub_219783C14(uint64_t a1)
{
  v2 = sub_21917FC00();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_219783C54()
{
  result = qword_27CC1EE40;
  if (!qword_27CC1EE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1EE40);
  }

  return result;
}

void sub_219783D38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for RecipeBoxSectionDescriptor(255);
    v8[1] = type metadata accessor for RecipeBoxModel(255);
    v8[2] = sub_218701D04(qword_280EBA6F0, type metadata accessor for RecipeBoxSectionDescriptor, &unk_219C6261C);
    v8[3] = sub_218701D04(&qword_280EDBED0, type metadata accessor for RecipeBoxModel, &unk_219C63468);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_219783E4C()
{
  if (v0[25])
  {

    sub_219BF5C14();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  __swift_destroy_boxed_opaque_existential_1(v0 + 15);
  __swift_destroy_boxed_opaque_existential_1(v0 + 20);

  return swift_deallocClassInstance();
}

BOOL sub_219783EF4(uint64_t a1, uint64_t a2)
{
  sub_21875FDEC(0, &qword_280E8EAA0, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_219580F2C();
  if (v8 && !*(v2 + 200))
  {
    v9 = v8;
    v10 = sub_219BF5BF4();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v2;
    v11[5] = a1;
    v11[6] = a2;

    swift_unknownObjectRetain();
    *(v2 + 200) = sub_218AB3D80(0, 0, v7, &unk_219CA2EF0, v11);

    v8 = v9;
  }

  return !v8;
}

uint64_t sub_219784054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  sub_2197880CC(0, &qword_27CC1EE90, MEMORY[0x277D839B0], MEMORY[0x277D85780]);
  v6[15] = v7;
  v6[16] = *(v7 - 8);
  v6[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21978413C, 0, 0);
}

uint64_t sub_21978413C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = *__swift_project_boxed_opaque_existential_1((v0[12] + 160), *(v0[12] + 184));
  v5 = MEMORY[0x277D839B0];
  sub_2197880CC(0, &qword_27CC1EE98, MEMORY[0x277D839B0], MEMORY[0x277D857B8]);
  v0[10] = v6;
  v0[11] = sub_219787FD4();
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  v7 = (v4 + OBJC_IVAR____TtC7NewsUI213WelcomeStatus__multicaster);
  os_unfair_lock_lock(v7);
  sub_219788050(0);
  (*(v2 + 104))(v1, *MEMORY[0x277D85778], v3);
  sub_2197880CC(0, &qword_280EE7E60, v5, MEMORY[0x277D6CA80]);
  sub_219BE1C04();
  (*(v2 + 8))(v1, v3);
  os_unfair_lock_unlock(v7);
  v8 = v0[10];
  v9 = __swift_project_boxed_opaque_existential_1(v0 + 7, v8);
  v10 = *(v8 - 8);
  v11 = swift_task_alloc();
  (*(v10 + 16))(v11, v9, v8);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_219BF5C84();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v12 = v0[5];
  v13 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v12);
  v15 = swift_task_alloc();
  v0[18] = v15;
  *v15 = v0;
  v15[1] = sub_21978440C;

  return MEMORY[0x282200310](v0 + 20, 0, 0, v14, v12, v13);
}

uint64_t sub_21978440C()
{

  if (!v0)
  {

    return MEMORY[0x2822009F8](sub_21978451C, 0, 0);
  }

  return result;
}

uint64_t sub_21978451C()
{
  v1 = *(v0 + 160);
  if (v1 == 2)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    ObjectType = swift_getObjectType();
    v5 = swift_task_alloc();
    *(v0 + 152) = v5;
    *v5 = v0;
    v5[1] = sub_219784628;
    v6 = *(v0 + 112);

    return MEMORY[0x2821930B0]((v1 & 1) == 0, ObjectType, v6);
  }
}

uint64_t sub_219784628()
{

  return MEMORY[0x2822009F8](sub_219784724, 0, 0);
}

uint64_t sub_219784724()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

void sub_219784790(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 identifier];
  v5 = sub_219BF5414();
  v7 = v6;

  if (v5 == sub_219BF4584() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_219BF78F4();

    if ((v10 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v11 = [v3 puzzleTypeID];
  if (!v11)
  {
LABEL_10:
    v13 = 0;
    v15 = 0;
    goto LABEL_11;
  }

  v12 = v11;
  v13 = sub_219BF5414();
  v15 = v14;

LABEL_11:
  *a2 = v13;
  a2[1] = v15;
}

void sub_21978489C(uint64_t a1, unint64_t a2)
{
  v5 = sub_219BDB954();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v10 = sub_219BF53D4();
  v11 = [v9 nss:v10 NewsURLForPuzzleTypeID:?];

  if (v11)
  {
    sub_219BDB8B4();

    __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
    sub_219BE6DC4();
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v12 = sub_219BE5434();
    __swift_project_value_buffer(v12, qword_280F625E0);

    v17 = sub_219BE5414();
    v13 = sub_219BF61F4();

    if (os_log_type_enabled(v17, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_2186D1058(a1, a2, &v18);
      _os_log_impl(&dword_2186C1000, v17, v13, "PuzzleGameCenterActivitiesHandler: Failed to generate URL for puzzleType ID = %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x21CECF960](v15, -1, -1);
      MEMORY[0x21CECF960](v14, -1, -1);
    }

    else
    {
      v16 = v17;
    }
  }
}

uint64_t sub_219784B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_219BF3A44();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219784BF8, 0, 0);
}

uint64_t sub_219784BF8()
{
  sub_219BF45C4();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_219784CA0;
  v2 = v0[9];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];

  return sub_219784DF8(v5, v3, v4, v2);
}

uint64_t sub_219784CA0()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_219784DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_219BF3A44();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v5[9] = *(v7 + 64);
  v5[10] = swift_task_alloc();
  sub_21875FDEC(0, &qword_280E8EAA0, MEMORY[0x277D85720]);
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219784F10, 0, 0);
}

uint64_t sub_219784F10()
{
  v28 = v0;
  v1 = [objc_msgSend(*(v0[6] + 16) appConfiguration)];
  swift_unknownObjectRelease();
  v2 = [v1 puzzleTypeLeaderboards];

  sub_2186C6148(0, &qword_27CC1EE70, 0x277D31258);
  v3 = sub_219BF5214();

  if (*(v3 + 16) && (v4 = sub_21870F700(v0[2], v0[3]), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    v0[12] = v6;
    v7 = v6;

    v8 = sub_219BF4584();
    v10 = sub_219786390(v8, v9);
    v0[13] = v10;

    if (v10)
    {
      v11 = v0[6];
      v13 = v0[2];
      v12 = v0[3];
      v14 = v11[13];
      v15 = v11[14];
      __swift_project_boxed_opaque_existential_1(v11 + 10, v14);
      sub_2197880CC(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      v16 = swift_allocObject();
      v0[14] = v16;
      *(v16 + 16) = xmmword_219C09BA0;
      *(v16 + 32) = v13;
      *(v16 + 40) = v12;

      v17 = swift_task_alloc();
      v0[15] = v17;
      *v17 = v0;
      v17[1] = sub_2197852B0;

      return MEMORY[0x282192240](v16, v14, v15);
    }
  }

  else
  {
  }

  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v18 = sub_219BE5434();
  __swift_project_value_buffer(v18, qword_280F625E0);

  v19 = sub_219BE5414();
  v20 = sub_219BF6214();

  if (os_log_type_enabled(v19, v20))
  {
    v22 = v0[2];
    v21 = v0[3];
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v27 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_2186D1058(v22, v21, &v27);
    _os_log_impl(&dword_2186C1000, v19, v20, "PuzzleGameCenterActivitiesHandler: No leaderboard configured for puzzle type %s. Navigating to puzzle feed.", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x21CECF960](v24, -1, -1);
    MEMORY[0x21CECF960](v23, -1, -1);
  }

  sub_21978489C(v0[2], v0[3]);

  v25 = v0[1];

  return v25();
}

uint64_t sub_2197852B0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_219785E44;
  }

  else
  {

    v4 = sub_2197853CC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2197853CC(uint64_t a1, uint64_t a2)
{
  v21 = v2;
  v3 = v2[16];
  if (v3 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_3;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x21CECE0F0](0, v2[16]);
      goto LABEL_6;
    }

    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v4 = *(v2[16] + 32);
      swift_unknownObjectRetain();
LABEL_6:
      v2[18] = v4;
      v5 = v2[6];

      v6 = v5[13];
      v7 = v5[14];
      __swift_project_boxed_opaque_existential_1(v5 + 10, v6);
      v8 = swift_task_alloc();
      v2[19] = v8;
      *v8 = v2;
      v8[1] = sub_219785694;

      return MEMORY[0x282192218](v4, v6, v7);
    }

    __break(1u);
    goto LABEL_18;
  }

  if (qword_280EE5F80 != -1)
  {
LABEL_18:
    swift_once();
  }

  v9 = sub_219BE5434();
  __swift_project_value_buffer(v9, qword_280F625E0);

  v10 = sub_219BE5414();
  v11 = sub_219BF61F4();

  if (os_log_type_enabled(v10, v11))
  {
    v13 = v2[2];
    v12 = v2[3];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_2186D1058(v13, v12, &v20);
    _os_log_impl(&dword_2186C1000, v10, v11, "PuzzleGameCenterActivitiesHandler: Failed to load puzzle type %s. Navigating to puzzle feed.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x21CECF960](v15, -1, -1);
    MEMORY[0x21CECF960](v14, -1, -1);
  }

  v17 = v2[12];
  v16 = v2[13];
  sub_21978489C(v2[2], v2[3]);

  v18 = v2[1];

  return v18();
}

uint64_t sub_219785694(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v4 = sub_219786004;
  }

  else
  {
    v4 = sub_2197857A8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2197857A8()
{
  v1 = v0[6];
  v2 = v1[13];
  v3 = v1[14];
  __swift_project_boxed_opaque_existential_1(v1 + 10, v2);
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_219785868;
  v5 = v0[20];

  return MEMORY[0x282192268](v5, v2, v3);
}

uint64_t sub_219785868(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_2197861C4;
  }

  else
  {

    *(v4 + 192) = a1;
    v5 = sub_219785998;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_219785998()
{
  v42 = v0;
  v1 = v0[24];
  v2 = v0[13];
  v3 = v0[4];
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = sub_218D66430(sub_219787B04, v4, v1);

  if (v5)
  {
    v6 = qword_280EE5F80;
    swift_unknownObjectRetain();
    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_219BE5434();
    __swift_project_value_buffer(v7, qword_280F625E0);
    swift_unknownObjectRetain();
    v8 = sub_219BE5414();
    v9 = sub_219BF6214();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v41[0] = v11;
      *v10 = 136315138;
      v12 = [v5 identifier];
      v13 = sub_219BF5414();
      v15 = v14;

      v16 = sub_2186D1058(v13, v15, v41);

      *(v10 + 4) = v16;
      _os_log_impl(&dword_2186C1000, v8, v9, "PuzzleGameCenterActivitiesHandler: Navigating to puzzle %s.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x21CECF960](v11, -1, -1);
      MEMORY[0x21CECF960](v10, -1, -1);
    }

    v40 = v0[13];
    v39 = v0[12];
    v18 = v0[10];
    v17 = v0[11];
    v19 = v0[8];
    v21 = v0[6];
    v20 = v0[7];
    v22 = v0[5];
    v23 = sub_219BF5BF4();
    (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
    (*(v19 + 16))(v18, v22, v20);
    sub_219BF5BD4();
    swift_unknownObjectRetain();

    v24 = sub_219BF5BC4();
    v25 = (*(v19 + 80) + 48) & ~*(v19 + 80);
    v26 = swift_allocObject();
    v27 = MEMORY[0x277D85700];
    *(v26 + 2) = v24;
    *(v26 + 3) = v27;
    *(v26 + 4) = v21;
    *(v26 + 5) = v5;
    (*(v19 + 32))(&v26[v25], v18, v20);
    sub_218AB3D80(0, 0, v17, &unk_219CA2EE0, v26);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease_n();
  }

  else
  {
    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v28 = sub_219BE5434();
    __swift_project_value_buffer(v28, qword_280F625E0);

    v29 = sub_219BE5414();
    v30 = sub_219BF6214();

    if (os_log_type_enabled(v29, v30))
    {
      v32 = v0[2];
      v31 = v0[3];
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v41[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_2186D1058(v32, v31, v41);
      _os_log_impl(&dword_2186C1000, v29, v30, "PuzzleGameCenterActivitiesHandler: No valid latest published puzzles for puzzle type %s. Navigating to puzzle feed.", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x21CECF960](v34, -1, -1);
      MEMORY[0x21CECF960](v33, -1, -1);
    }

    v36 = v0[12];
    v35 = v0[13];
    sub_21978489C(v0[2], v0[3]);
    swift_unknownObjectRelease();
  }

  v37 = v0[1];

  return v37();
}

uint64_t sub_219785E44()
{

  v1 = v0[17];
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F625E0);
  v3 = v1;
  v4 = sub_219BE5414();
  v5 = sub_219BF61F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2186C1000, v4, v5, "PuzzleGameCenterActivitiesHandler: failed to navigate to latest published puzzle for puzzleTypeID %@... Navigating to puzzle feed.", v6, 0xCu);
    sub_218962D30(v7);
    MEMORY[0x21CECF960](v7, -1, -1);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  v11 = v0[12];
  v10 = v0[13];
  v13 = v0[2];
  v12 = v0[3];

  sub_21978489C(v13, v12);

  v14 = v0[1];

  return v14();
}

uint64_t sub_219786004()
{
  swift_unknownObjectRelease();
  v1 = v0[21];
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F625E0);
  v3 = v1;
  v4 = sub_219BE5414();
  v5 = sub_219BF61F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2186C1000, v4, v5, "PuzzleGameCenterActivitiesHandler: failed to navigate to latest published puzzle for puzzleTypeID %@... Navigating to puzzle feed.", v6, 0xCu);
    sub_218962D30(v7);
    MEMORY[0x21CECF960](v7, -1, -1);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  v11 = v0[12];
  v10 = v0[13];
  v13 = v0[2];
  v12 = v0[3];

  sub_21978489C(v13, v12);

  v14 = v0[1];

  return v14();
}

uint64_t sub_2197861C4()
{

  swift_unknownObjectRelease();
  v1 = v0[23];
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F625E0);
  v3 = v1;
  v4 = sub_219BE5414();
  v5 = sub_219BF61F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2186C1000, v4, v5, "PuzzleGameCenterActivitiesHandler: failed to navigate to latest published puzzle for puzzleTypeID %@... Navigating to puzzle feed.", v6, 0xCu);
    sub_218962D30(v7);
    MEMORY[0x21CECF960](v7, -1, -1);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  v11 = v0[12];
  v10 = v0[13];
  v13 = v0[2];
  v12 = v0[3];

  sub_21978489C(v13, v12);

  v14 = v0[1];

  return v14();
}

void *sub_219786390(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 leaderboards];
  sub_2186C6148(0, &qword_27CC1EE88, 0x277D31240);
  v7 = sub_219BF5924();

  if (v7 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v9 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x21CECE0F0](v9, v7);
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v13 = [v10 leaderboardID];
      v14 = sub_219BF5414();
      v16 = v15;

      if (v14 == a1 && v16 == a2)
      {

        return v11;
      }

      v18 = sub_219BF78F4();

      if (v18)
      {

        return v11;
      }

      ++v9;
      if (v12 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  return 0;
}

uint64_t sub_219786550(void **a1, void *a2)
{
  sub_219787C8C(0);
  v56 = v4;
  MEMORY[0x28223BE20](v4);
  v54 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v53 = v50 - v7;
  sub_219787CF4(0);
  v52 = v8;
  MEMORY[0x28223BE20](v8);
  v55 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21875FDEC(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v50 - v11;
  v13 = sub_219BDBD34();
  v59 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v57 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v58 = v50 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = v50 - v18;
  *&v21 = MEMORY[0x28223BE20](v20).n128_u64[0];
  v60 = v50 - v22;
  v23 = *a1;
  v24 = [a2 leaderboardID];
  v25 = sub_219BF5414();
  v27 = v26;

  if (v25 == sub_219BF4584() && v27 == v28)
  {
  }

  else
  {
    v29 = sub_219BF78F4();

    result = 0;
    if ((v29 & 1) == 0)
    {
      return result;
    }
  }

  v31 = [a2 difficulty];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 integerValue];
    if (v33 != [v23 difficulty] || (v34 = objc_msgSend(v23, sel_publishDate)) == 0)
    {

      return 0;
    }

    v35 = v34;
    sub_219BDBCA4();

    v37 = v59;
    v36 = v60;
    v38 = *(v59 + 32);
    v38(v60, v19, v13);
    sub_219BF45A4();
    if ((*(v37 + 48))(v12, 1, v13) == 1)
    {
      (*(v37 + 8))(v36, v13);

      sub_219787D8C(v12, &qword_280EE9C40, MEMORY[0x277CC9578]);
      return 0;
    }

    v39 = v58;
    v51 = v38;
    v38(v58, v12, v13);
    sub_219BF4594();
    v40 = v57;
    sub_219BDBBF4();
    v50[1] = sub_218760594(&qword_280EE9C90, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    result = sub_219BF5354();
    if ((result & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v41 = *(v37 + 16);
    v42 = v53;
    v41(v53, v39, v13);
    v43 = v56;
    v41((v42 + *(v56 + 48)), v40, v13);
    v44 = v54;
    sub_219787DE8(v42, v54);
    v50[0] = *(v43 + 48);
    v45 = v55;
    v46 = v51;
    v51(v55, v44, v13);
    v47 = *(v37 + 8);
    v47(v44 + v50[0], v13);
    sub_219787E4C(v42, v44);
    v46(v45 + *(v52 + 36), v44 + *(v56 + 48), v13);
    v47(v44, v13);
    v48 = v60;
    if ((sub_219BF5344() & 1) == 0)
    {

      sub_219787EB0(v45);
      v47(v57, v13);
      v47(v58, v13);
      v47(v48, v13);
      return 0;
    }

    v49 = sub_219BF5354();

    sub_219787EB0(v45);
    v47(v57, v13);
    v47(v58, v13);
    v47(v48, v13);
    if ((v49 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_219786BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  sub_219BF5BD4();
  v6[19] = sub_219BF5BC4();
  v8 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_219786C3C, v8, v7);
}

void *sub_219786C3C()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 128) + 120), *(*(v0 + 128) + 144));
  sub_219787C28();
  result = sub_219BE1E34();
  if (*(v0 + 80))
  {
    v2 = *(v0 + 144);
    v3 = *(v0 + 136);

    sub_2186CB1F0((v0 + 56), v0 + 16);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    sub_2193225F8(v3, v2);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219786E84(uint64_t a1)
{
  sub_21875FDEC(0, &qword_280E8EAA0, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v3 - 8);
  v96 = &v84 - v4;
  sub_21875FDEC(0, &qword_27CC1EE50, MEMORY[0x277D34458]);
  MEMORY[0x28223BE20](v5 - 8);
  v92 = &v84 - v6;
  v97 = sub_219BF45B4();
  v95 = *(v97 - 8);
  v7 = *(v95 + 64);
  MEMORY[0x28223BE20](v97);
  v93 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v94 = &v84 - v9;
  v10 = sub_219BF3EE4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BF45F4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v91 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v90 = &v84 - v18;
  MEMORY[0x28223BE20](v19);
  v89 = &v84 - v20;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v84 - v23;
  (*(v11 + 16))(v13, a1, v10, v22);
  if ((*(v11 + 88))(v13, v10) != *MEMORY[0x277D34280])
  {
    return (*(v11 + 8))(v13, v10);
  }

  (*(v11 + 96))(v13, v10);
  v87 = v15;
  v88 = v14;
  v26 = *(v15 + 32);
  v25 = (v15 + 32);
  v85 = v26;
  v26(v24, v13, v14);
  v86 = v1;
  v27 = [objc_msgSend(*(v1 + 16) appConfiguration)];
  swift_unknownObjectRelease();
  v28 = [v27 puzzleGameCenterActivities];

  sub_2186C6148(0, &qword_27CC1EE58, 0x277D31268);
  v29 = sub_219BF5924();

  v98 = v29;
  MEMORY[0x28223BE20](v30);
  *(&v84 - 2) = v24;
  sub_2187381BC(0, &qword_27CC1EE60, &qword_27CC1EE58, 0x277D31268, MEMORY[0x277D83940]);
  sub_21978790C();
  sub_219BF5694();

  if (v100)
  {
    v91 = v100;
    v31 = v99;
    v32 = v92;
    sub_219BF45E4();
    v33 = v95;
    v34 = v97;
    v35 = (*(v95 + 48))(v32, 1, v97);
    v36 = v24;
    v84 = v31;
    if (v35 == 1)
    {
      sub_219787D8C(v32, &qword_27CC1EE50, MEMORY[0x277D34458]);
      if (qword_280EE5F80 != -1)
      {
        swift_once();
      }

      v37 = sub_219BE5434();
      __swift_project_value_buffer(v37, qword_280F625E0);
      v39 = v87;
      v38 = v88;
      v40 = v90;
      (*(v87 + 16))(v90, v36, v88);
      v41 = sub_219BE5414();
      v42 = sub_219BF6214();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v97 = v36;
        v44 = v43;
        v45 = swift_slowAlloc();
        v99 = v45;
        *v44 = 136315138;
        v46 = sub_219BF4584();
        v47 = v40;
        v49 = v48;
        v50 = *(v39 + 8);
        v50(v47, v38);
        v51 = sub_2186D1058(v46, v49, &v99);

        *(v44 + 4) = v51;
        _os_log_impl(&dword_2186C1000, v41, v42, "PuzzleGameCenterActivitiesHandler: No associated leaderboard found for activity %s. Navigating to puzzle feed.", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v45);
        MEMORY[0x21CECF960](v45, -1, -1);
        v52 = v44;
        v36 = v97;
        MEMORY[0x21CECF960](v52, -1, -1);
      }

      else
      {

        v50 = *(v39 + 8);
        v50(v40, v38);
      }

      sub_21978489C(v84, v91);

      return (v50)(v36, v38);
    }

    else
    {
      v90 = *(v33 + 32);
      v71 = v94;
      (v90)(v94, v32, v34);
      v72 = sub_219BF5BF4();
      (*(*(v72 - 8) + 56))(v96, 1, 1, v72);
      (*(v33 + 16))(v93, v71, v34);
      v73 = v87;
      v74 = v88;
      v75 = v89;
      (*(v87 + 16))(v89, v24, v88);
      v76 = *(v33 + 80);
      v92 = v25;
      v77 = (v76 + 56) & ~v76;
      v78 = (v7 + *(v73 + 80) + v77) & ~*(v73 + 80);
      v79 = swift_allocObject();
      *(v79 + 2) = 0;
      *(v79 + 3) = 0;
      v80 = v84;
      *(v79 + 4) = v86;
      *(v79 + 5) = v80;
      v81 = v90;
      *(v79 + 6) = v91;
      v82 = &v79[v77];
      v83 = v97;
      (v81)(v82, v93, v97);
      v85(&v79[v78], v75, v74);

      sub_218AB3D80(0, 0, v96, &unk_219CA2EC0, v79);

      (*(v33 + 8))(v94, v83);
      return (*(v73 + 8))(v24, v74);
    }
  }

  else
  {
    v54 = v24;
    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v55 = sub_219BE5434();
    __swift_project_value_buffer(v55, qword_280F625E0);
    v57 = v87;
    v56 = v88;
    v58 = v91;
    v59 = v24;
    (*(v87 + 16))(v91, v24, v88);
    v60 = sub_219BE5414();
    v61 = sub_219BF6214();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v99 = v63;
      *v62 = 136315138;
      v64 = sub_219BF4584();
      v65 = v58;
      v67 = v66;
      v68 = *(v57 + 8);
      v68(v65, v56);
      v69 = sub_2186D1058(v64, v67, &v99);

      *(v62 + 4) = v69;
      v56 = v88;
      _os_log_impl(&dword_2186C1000, v60, v61, "PuzzleGameCenterActivitiesHandler: Could not find puzzle type for activity %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      MEMORY[0x21CECF960](v63, -1, -1);
      v70 = v62;
      v59 = v54;
      MEMORY[0x21CECF960](v70, -1, -1);
    }

    else
    {

      v68 = *(v57 + 8);
      v68(v58, v56);
    }

    return (v68)(v59, v56);
  }
}

unint64_t sub_21978790C()
{
  result = qword_27CC1EE68;
  if (!qword_27CC1EE68)
  {
    sub_2187381BC(255, &qword_27CC1EE60, &qword_27CC1EE58, 0x277D31268, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1EE68);
  }

  return result;
}

uint64_t sub_219787990(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_219BF45B4() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_219BF45F4() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v14 = v1[6];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_2187609C8;

  return sub_219784B30(a1, v10, v11, v12, v13, v14, v1 + v6, v1 + v9);
}

uint64_t sub_219787B24(uint64_t a1)
{
  v4 = *(sub_219BF3A44() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2187608D4;

  return sub_219786BA0(a1, v6, v7, v8, v9, v1 + v5);
}

unint64_t sub_219787C28()
{
  result = qword_280ED81C0;
  if (!qword_280ED81C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280ED81C0);
  }

  return result;
}

void sub_219787C8C(uint64_t a1)
{
  if (!qword_27CC1EE78)
  {
    sub_219BDBD34();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1EE78);
    }
  }
}

void sub_219787CF4(uint64_t a1)
{
  if (!qword_27CC1EE80)
  {
    sub_219BDBD34();
    sub_218760594(&qword_280EE9C90, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v1 = sub_219BF5394();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1EE80);
    }
  }
}

uint64_t sub_219787D8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21875FDEC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219787DE8(uint64_t a1, uint64_t a2)
{
  sub_219787C8C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219787E4C(uint64_t a1, uint64_t a2)
{
  sub_219787C8C(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219787EB0(uint64_t a1)
{
  sub_219787CF4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219787F0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2187609C8;

  return sub_219784054(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_219787FD4()
{
  result = qword_27CC1EEA0;
  if (!qword_27CC1EEA0)
  {
    sub_2197880CC(255, &qword_27CC1EE98, MEMORY[0x277D839B0], MEMORY[0x277D857B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1EEA0);
  }

  return result;
}

void sub_219788050(uint64_t a1)
{
  if (!qword_280EE6500)
  {
    sub_2197880CC(255, &qword_280EE7E60, MEMORY[0x277D839B0], MEMORY[0x277D6CA80]);
    v1 = sub_219BE3C24();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE6500);
    }
  }
}

void sub_2197880CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id sub_21978811C()
{
  v1 = sub_219BDF444();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AudioFeedTrack(0);
  result = sub_219BDD6D4();
  if (v5)
  {
    result = [*(v0 + 8) duration];
  }

  else
  {
    v6 = *&result;
  }

  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v6 <= -2147483650.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v6 < 2147483650.0)
  {
    sub_21978822C(v3);
    return sub_219BE1784();
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_21978822C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (([*v1 isFullTrackAvailableToAll] & 1) == 0)
  {
    v4 = *(v1 + 8);
    if ([v3 respondsToSelector_])
    {
      v5 = v4;
      v6 = [v3 narrativeTrackSample];
      if (v6)
      {
        v7 = v6;
        sub_2197883C8();
        v8 = sub_219BF6DD4();

        if (v8)
        {
          v9 = MEMORY[0x277D2DA98];
          goto LABEL_8;
        }
      }

      else
      {
      }
    }
  }

  v9 = MEMORY[0x277D2DA90];
LABEL_8:
  v10 = *v9;
  v11 = sub_219BDF444();
  v12 = *(*(v11 - 8) + 104);

  return v12(a1, v10, v11);
}

id AudioFeedTrack.upsellEndTime.getter()
{
  v1 = *(v0 + *(type metadata accessor for AudioFeedTrack(0) + 40));
  if (v1)
  {
    [v1 duration];
    return [*(v0 + 8) embeddedUpsellStartTime];
  }

  else
  {
    v3 = *(v0 + 8);

    return [v3 embeddedUpsellEndTime];
  }
}

unint64_t sub_2197883C8()
{
  result = qword_280E8E2C0;
  if (!qword_280E8E2C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8E2C0);
  }

  return result;
}

double sub_219788414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  if (a5)
  {
    v15 = qword_280E8D830;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = qword_280F61728;
    v17 = sub_219BF6214();
    sub_219BE5314("Scheduling observation on blueprint", 35, 2, &dword_2186C1000, v16, v17, MEMORY[0x277D84F90]);
  }

  else
  {
  }

  v18 = swift_allocObject();
  *(v18 + 16) = [objc_allocWithZone(MEMORY[0x277D82BB8]) init];
  sub_219BE86A4();
  sub_219BE6F64();

  v19 = swift_allocObject();
  *(v19 + 16) = a5 & 1;
  *(v19 + 24) = a7;
  *(v19 + 32) = a8;
  *(v19 + 40) = a9;
  *(v19 + 48) = a10;
  *(v19 + 56) = v18;
  *(v19 + 64) = sub_21978A100;
  *(v19 + 72) = v14;

  sub_219BE20F4();

  swift_beginAccess();
  v20 = *(v18 + 16);
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  if (v20)
  {
    v21 = v20;
    sub_219BE1A04();
  }

  else
  {
    sub_219BE1A14();
  }

  __swift_destroy_boxed_opaque_existential_1(v24);

  return result;
}

double sub_219788680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  if (a5)
  {
    v16 = qword_280E8D830;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = qword_280F61728;
    v18 = sub_219BF6214();
    sub_219BE5314("Scheduling observation on blueprint", 35, 2, &dword_2186C1000, v17, v18, MEMORY[0x277D84F90]);
  }

  else
  {
  }

  v19 = swift_allocObject();
  *(v19 + 16) = [objc_allocWithZone(MEMORY[0x277D82BB8]) init];
  type metadata accessor for TagFeedViewController();
  sub_2186CC3D4(&unk_27CC1CBA0, type metadata accessor for TagFeedViewController, &unk_219C2F124);
  sub_219BE7B54();
  v20 = swift_allocObject();
  *(v20 + 16) = a5 & 1;
  *(v20 + 24) = a7;
  *(v20 + 32) = a8;
  *(v20 + 40) = a9;
  *(v20 + 48) = a10;
  *(v20 + 56) = v19;
  *(v20 + 64) = sub_219789F0C;
  *(v20 + 72) = v15;

  sub_219BE20F4();

  swift_beginAccess();
  v21 = *(v19 + 16);
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  if (v21)
  {
    v22 = v21;
    sub_219BE1A04();
  }

  else
  {
    sub_219BE1A14();
  }

  __swift_destroy_boxed_opaque_existential_1(v24);

  return result;
}

uint64_t sub_219788914(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v12 = a5(0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - v14;
  v16 = sub_219BDC104();
  (*(*(v16 - 8) + 16))(v15, a1, v16);
  v17 = *(v13 + 56);
  v18 = a6(0);
  (*(*(v18 - 8) + 16))(&v15[v17], a2, v18);
  a3(v15);
  return sub_219789FE0(v15, a7);
}

void sub_219788A44(uint64_t a1, int a2, uint64_t (*a3)(char *), uint64_t a4, uint64_t (*a5)(char *), uint64_t a6, uint64_t a7, void (*a8)(char *, char *))
{
  v59 = a7;
  v60 = a8;
  v67 = a5;
  v68 = a6;
  v69 = a3;
  sub_218747BDC(0);
  MEMORY[0x28223BE20](v10 - 8);
  v62 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDC104();
  v64 = *(v12 - 8);
  v65 = v12;
  MEMORY[0x28223BE20](v12);
  v63 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192DCACC(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218853400(0);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v66 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2188118D4(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218811750(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v28 = &v56 - v27;
  v70 = a2;
  if (a2)
  {
    v56 = a4;
    v57 = &v56 - v27;
    v61 = v19;
    v58 = v25;
    v29 = v18;
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    v30 = qword_280F61728;
    v31 = sub_219BF6214();
    sub_219789F7C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_219C09BA0;
    sub_21880B928(0);
    sub_2186CC3D4(&unk_27CC1EEF0, sub_21880B928, MEMORY[0x277D6EC78]);
    v33 = sub_219BF7894();
    v35 = v34;
    *(v32 + 56) = MEMORY[0x277D837D0];
    *(v32 + 64) = sub_2186FC3BC();
    *(v32 + 32) = v33;
    *(v32 + 40) = v35;
    sub_219BE5314("Observed new blueprint %{public}@", 33, 2, &dword_2186C1000, v30, v31, v32);

    v18 = v29;
    v28 = v57;
    v25 = v58;
    v19 = v61;
    a4 = v56;
  }

  sub_218D64620(v69, a4, v23);
  if ((*(v26 + 48))(v23, 1, v25) == 1)
  {
    sub_219789FE0(v23, sub_2188118D4);
    if (v70)
    {
      if (qword_280E8D830 != -1)
      {
        swift_once();
      }

      v36 = qword_280F61728;
      v37 = sub_219BF6214();
      sub_219BE5314("Failed to find section statisfying section condition", 52, 2, &dword_2186C1000, v36, v37, MEMORY[0x277D84F90]);
    }
  }

  else
  {
    (*(v26 + 32))(v28, v23, v25);
    sub_218D6553C(v67, v68, v16);
    if ((*(v19 + 48))(v16, 1, v18) == 1)
    {
      sub_219789FE0(v16, sub_2192DCACC);
      if (v70)
      {
        if (qword_280E8D830 != -1)
        {
          swift_once();
        }

        v38 = qword_280F61728;
        v39 = sub_219BF6214();
        sub_219BE5314("Failed to find item statisfying item condition", 46, 2, &dword_2186C1000, v38, v39, MEMORY[0x277D84F90]);
      }
    }

    else
    {
      v40 = v66;
      (*(v19 + 32))(v66, v16, v18);
      sub_21880B928(0);
      v41 = v62;
      sub_219BEB2F4();
      v43 = v64;
      v42 = v65;
      if ((*(v64 + 48))(v41, 1, v65) == 1)
      {
        sub_219789FE0(v41, sub_218747BDC);
        if (v70)
        {
          v61 = v19;
          v44 = v28;
          if (qword_280E8D830 != -1)
          {
            swift_once();
          }

          v45 = qword_280F61728;
          v46 = sub_219BF6214();
          sub_219789F7C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
          v47 = swift_allocObject();
          *(v47 + 16) = xmmword_219C09BA0;
          sub_2186CC3D4(&qword_27CC1EEE8, sub_218853400, MEMORY[0x277D6D410]);
          v40 = v66;
          v48 = sub_219BF7894();
          v50 = v49;
          *(v47 + 56) = MEMORY[0x277D837D0];
          *(v47 + 64) = sub_2186FC3BC();
          *(v47 + 32) = v48;
          *(v47 + 40) = v50;
          sub_219BE5314("Failed to find index path for item %{public}@", 45, 2, &dword_2186C1000, v45, v46, v47);

          v28 = v44;
          v19 = v61;
        }
      }

      else
      {
        (*(v43 + 32))(v63, v41, v42);
        if (v70)
        {
          if (qword_280E8D830 != -1)
          {
            swift_once();
          }

          v51 = qword_280F61728;
          v52 = sub_219BF6214();
          sub_219BE5314("Found valid item in section", 27, 2, &dword_2186C1000, v51, v52, MEMORY[0x277D84F90]);
        }

        v53 = v59;
        swift_beginAccess();
        v54 = *(v53 + 16);
        *(v53 + 16) = 0;

        v55 = v63;
        v60(v63, v40);
        (*(v43 + 8))(v55, v42);
      }

      (*(v19 + 8))(v40, v18);
    }

    (*(v26 + 8))(v28, v25);
  }
}

void sub_2197892F4(uint64_t a1, int a2, uint64_t (*a3)(char *), uint64_t a4, uint64_t (*a5)(char *), uint64_t a6, uint64_t a7, void (*a8)(char *, char *))
{
  v59 = a7;
  v60 = a8;
  v67 = a5;
  v68 = a6;
  v69 = a3;
  sub_218747BDC(0);
  MEMORY[0x28223BE20](v10 - 8);
  v62 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDC104();
  v64 = *(v12 - 8);
  v65 = v12;
  MEMORY[0x28223BE20](v12);
  v63 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A12934(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BF70(0);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v66 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BBC4(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21978A040(0, &qword_280EE5840, MEMORY[0x277D6D710]);
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v28 = &v56 - v27;
  v70 = a2;
  if (a2)
  {
    v56 = a4;
    v57 = &v56 - v27;
    v61 = v19;
    v58 = v25;
    v29 = v18;
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    v30 = qword_280F61728;
    v31 = sub_219BF6214();
    sub_219789F7C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_219C09BA0;
    sub_218954408(0);
    sub_2186CC3D4(&unk_27CC1EED8, sub_218954408, MEMORY[0x277D6EC78]);
    v33 = sub_219BF7894();
    v35 = v34;
    *(v32 + 56) = MEMORY[0x277D837D0];
    *(v32 + 64) = sub_2186FC3BC();
    *(v32 + 32) = v33;
    *(v32 + 40) = v35;
    sub_219BE5314("Observed new blueprint %{public}@", 33, 2, &dword_2186C1000, v30, v31, v32);

    v18 = v29;
    v28 = v57;
    v25 = v58;
    v19 = v61;
    a4 = v56;
  }

  sub_218D64C9C(v69, a4, v23);
  if ((*(v26 + 48))(v23, 1, v25) == 1)
  {
    sub_219789FE0(v23, sub_21898BBC4);
    if (v70)
    {
      if (qword_280E8D830 != -1)
      {
        swift_once();
      }

      v36 = qword_280F61728;
      v37 = sub_219BF6214();
      sub_219BE5314("Failed to find section statisfying section condition", 52, 2, &dword_2186C1000, v36, v37, MEMORY[0x277D84F90]);
    }
  }

  else
  {
    (*(v26 + 32))(v28, v23, v25);
    sub_218D65FE0(v67, v68, v16);
    if ((*(v19 + 48))(v16, 1, v18) == 1)
    {
      sub_219789FE0(v16, sub_218A12934);
      if (v70)
      {
        if (qword_280E8D830 != -1)
        {
          swift_once();
        }

        v38 = qword_280F61728;
        v39 = sub_219BF6214();
        sub_219BE5314("Failed to find item statisfying item condition", 46, 2, &dword_2186C1000, v38, v39, MEMORY[0x277D84F90]);
      }
    }

    else
    {
      v40 = v66;
      (*(v19 + 32))(v66, v16, v18);
      sub_218954408(0);
      v41 = v62;
      sub_219BEB2F4();
      v43 = v64;
      v42 = v65;
      if ((*(v64 + 48))(v41, 1, v65) == 1)
      {
        sub_219789FE0(v41, sub_218747BDC);
        if (v70)
        {
          v61 = v19;
          v44 = v28;
          if (qword_280E8D830 != -1)
          {
            swift_once();
          }

          v45 = qword_280F61728;
          v46 = sub_219BF6214();
          sub_219789F7C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
          v47 = swift_allocObject();
          *(v47 + 16) = xmmword_219C09BA0;
          sub_2186CC3D4(&unk_27CC1EEC8, sub_21898BF70, MEMORY[0x277D6D410]);
          v40 = v66;
          v48 = sub_219BF7894();
          v50 = v49;
          *(v47 + 56) = MEMORY[0x277D837D0];
          *(v47 + 64) = sub_2186FC3BC();
          *(v47 + 32) = v48;
          *(v47 + 40) = v50;
          sub_219BE5314("Failed to find index path for item %{public}@", 45, 2, &dword_2186C1000, v45, v46, v47);

          v28 = v44;
          v19 = v61;
        }
      }

      else
      {
        (*(v43 + 32))(v63, v41, v42);
        if (v70)
        {
          if (qword_280E8D830 != -1)
          {
            swift_once();
          }

          v51 = qword_280F61728;
          v52 = sub_219BF6214();
          sub_219BE5314("Found valid item in section", 27, 2, &dword_2186C1000, v51, v52, MEMORY[0x277D84F90]);
        }

        v53 = v59;
        swift_beginAccess();
        v54 = *(v53 + 16);
        *(v53 + 16) = 0;

        v55 = v63;
        v60(v63, v40);
        (*(v43 + 8))(v55, v42);
      }

      (*(v19 + 8))(v40, v18);
    }

    (*(v26 + 8))(v28, v25);
  }
}

BOOL sub_219789BC0()
{
  sub_21978A040(0, &qword_280EE5840, MEMORY[0x277D6D710]);
  sub_219BE6934();

  return ((v1 >> 58) & 0x3C | (v1 >> 1) & 3) == 1;
}

void sub_219789CF0(void *a1, uint64_t a2, uint64_t a3)
{

  v6 = sub_219BF53D4();

  v7 = [a1 objectForKey_];

  if (v7)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(&v12, &v13);
    type metadata accessor for TagFeedViewController();
    v8 = swift_dynamicCast();
    MEMORY[0x28223BE20](v8);
    sub_219789F7C(0, &qword_27CC1CB90, sub_2196D7430, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE30B4();

    v9 = sub_219BE1C44();
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = a3;

    sub_219BE2F74();
  }

  else
  {
    __break(1u);
  }
}

void sub_219789F7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219789FE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21978A040(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TagFeedSectionDescriptor;
    v8[1] = type metadata accessor for TagFeedModel(255);
    v8[2] = sub_2186F7410();
    v8[3] = sub_2186CC3D4(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t objectdestroy_13Tm_1()
{

  return swift_deallocObject();
}

uint64_t sub_21978A200@<X0>(id a1@<X1>, char a2@<W0>, uint64_t a3@<X8>)
{
  v5 = [a1 indexPathsForVisibleItems];
  v6 = sub_219BDC104();
  v7 = sub_219BF5924();

  v8 = *(v7 + 16);
  if (a2)
  {
    if (v8)
    {
      v13 = *(v6 - 8);
      (*(v13 + 16))(a3, v7 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * (v8 - 1), v6);
LABEL_6:

      v9 = v13;
      v10 = 0;
      goto LABEL_8;
    }
  }

  else if (v8)
  {
    v13 = *(v6 - 8);
    (*(v13 + 16))(a3, v7 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v6);
    goto LABEL_6;
  }

  v9 = *(v6 - 8);
  v10 = 1;
LABEL_8:
  v11 = *(v9 + 56);

  return v11(a3, v10, 1, v6);
}

void *sub_21978A40C()
{
  ObjectType = swift_getObjectType();
  if (sub_219BED0C4())
  {
    sub_219BE2CF4();
    ObjectType = v4;
    if (swift_conformsToProtocol2())
    {
      return ObjectType;
    }

    __break(1u);
  }

  v2 = sub_2187DEAC4(&qword_280ECFA60, v1, type metadata accessor for TodayViewController, &unk_219CA3028);
  ObjectType = MEMORY[0x21CEBDAF0](ObjectType, v2);
  if (ObjectType)
  {
    swift_getObjectType();
    if (!swift_conformsToProtocol2())
    {

      return 0;
    }
  }

  return ObjectType;
}

id sub_21978A564()
{
  ObjectType = swift_getObjectType();

  v2 = v0;
  sub_219BE58F4();

  v4.receiver = v2;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_21978A878()
{
  v0 = sub_219BEDA44();
  MEMORY[0x28223BE20](v0);
  sub_219BEDA34();
  sub_2187DEAC4(&qword_280E92580, 255, MEMORY[0x277D31D00], MEMORY[0x277D31CF8]);
  return sub_219BF1C54();
}

void sub_21978A96C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC7NewsUI219TodayViewController_blueprintViewController);

    sub_219BE8664();
    v4 = sub_219BE7BC4();

    [v4 reloadData];
  }
}

void sub_21978AA04(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 traitCollection];
  [v4 horizontalSizeClass];

  sub_2187DEAC4(&qword_280ECFA70, v5, type metadata accessor for TodayViewController, &unk_219CA346C);
  sub_219BE5E44();
  v8 = [a1 traitCollection];
  v6 = [a1 traitCollection];
  [v6 horizontalSizeClass];

  sub_2187DEAC4(&qword_280ECFA68, v7, type metadata accessor for TodayViewController, &unk_219CA3140);
  sub_219BE6504();
}

void sub_21978AB68(unsigned __int8 *a1, uint64_t a2)
{
  v3 = sub_219BEE644();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187E2B14(0, &unk_280EE56F0, MEMORY[0x277D6D878], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = type metadata accessor for TodayExpandContext(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if ((v13 - 2) >= 2)
    {
      if (v13)
      {
        v16 = MEMORY[0x277D320A0];
      }

      else
      {
        v16 = MEMORY[0x277D320A8];
      }

      v17 = *(Strong + OBJC_IVAR____TtC7NewsUI219TodayViewController_eventHandler);
      v18 = sub_219BE6DF4();
      (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
      sub_218809CC0(v9, v12);
      sub_21881AB5C(v9, &unk_280EE56F0, MEMORY[0x277D6D878], MEMORY[0x277D83D88], sub_2187E2B14);
      (*(v4 + 104))(v6, *v16, v3);
      v19 = *(v17 + 40);
      ObjectType = swift_getObjectType();
      (*(v19 + 80))(v12, v6, ObjectType, v19);
      (*(v4 + 8))(v6, v3);
      sub_2187F691C(v12, type metadata accessor for TodayExpandContext);
    }
  }
}

void sub_21978AE5C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC7NewsUI219TodayViewController_refreshControl;
    if ([*(Strong + OBJC_IVAR____TtC7NewsUI219TodayViewController_refreshControl) isRefreshing])
    {
      [*&v3[v4] endRefreshing];
    }
  }
}

void sub_21978AED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_21978AF2C();
  }
}

uint64_t sub_21978AF2C()
{
  v1 = v0;
  sub_2187E2B14(0, &unk_280EE56F0, MEMORY[0x277D6D878], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for TodayExpandContext(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280EE6070 != -1)
  {
    swift_once();
  }

  v8 = sub_219BE5434();
  __swift_project_value_buffer(v8, qword_280F62790);
  v9 = sub_219BE5414();
  v10 = sub_219BF6214();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2186C1000, v9, v10, "TodayViewController did receive force reload request from offline status banner", v11, 2u);
    MEMORY[0x21CECF960](v11, -1, -1);
  }

  v12 = *(v1 + OBJC_IVAR____TtC7NewsUI219TodayViewController_eventHandler);
  v13 = sub_219BE6DF4();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  sub_218809CC0(v4, v7);
  sub_21881AB5C(v4, &unk_280EE56F0, MEMORY[0x277D6D878], MEMORY[0x277D83D88], sub_2187E2B14);
  v14 = *(v12 + 40);
  ObjectType = swift_getObjectType();
  (*(v14 + 96))(v7, ObjectType, v14);
  return sub_2187F691C(v7, type metadata accessor for TodayExpandContext);
}

id sub_21978B1B8(char a1)
{
  v2 = v1;
  v19.receiver = v2;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, sel_viewWillDisappear_, a1 & 1);
  v4 = *(*&v2[OBJC_IVAR____TtC7NewsUI219TodayViewController_eventHandler] + 40);
  ObjectType = swift_getObjectType();
  (*(v4 + 152))(ObjectType, v4);
  sub_219BE6AB4();
  sub_2187DEAC4(&qword_280ECFAA8, v6, type metadata accessor for TodayViewController, &unk_219CA3180);
  sub_219BE1D64();
  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = [result window];

  if (!v9)
  {
    return sub_219BE5904();
  }

  v10 = [v9 windowScene];

  if (!v10)
  {
    return sub_219BE5904();
  }

  v11 = [v10 title];

  if (!v11)
  {
    return sub_219BE5904();
  }

  v12 = sub_219BF5414();
  v14 = v13;

  if (v12 == *&v2[OBJC_IVAR____TtC7NewsUI219TodayViewController_windowTitle] && v14 == *&v2[OBJC_IVAR____TtC7NewsUI219TodayViewController_windowTitle + 8])
  {

    goto LABEL_9;
  }

  v15 = sub_219BF78F4();

  if ((v15 & 1) == 0)
  {
    return sub_219BE5904();
  }

LABEL_9:
  result = [v2 view];
  if (result)
  {
    v16 = result;
    v17 = [result window];

    if (v17)
    {
      v18 = [v17 windowScene];

      if (v18)
      {
        [v18 setTitle_];
      }
    }

    return sub_219BE5904();
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_21978B46C(char a1)
{
  v2 = v1;
  v11.receiver = v2;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_viewDidDisappear_, a1 & 1);
  v4 = OBJC_IVAR____TtC7NewsUI219TodayViewController_didDisappearCompletions;
  swift_beginAccess();
  v5 = *&v2[v4];
  v6 = *(v5 + 16);

  if (v6)
  {
    v7 = 0;
    v8 = v5 + 40;
    while (v7 < *(v5 + 16))
    {
      ++v7;
      v9 = *(v8 - 8);

      v9(v10);

      v8 += 16;
      if (v6 == v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    *&v2[v4] = MEMORY[0x277D84F90];

    [*&v2[OBJC_IVAR____TtC7NewsUI219TodayViewController_refreshControl] endRefreshing];
  }
}

void sub_21978B6A0()
{
  v1 = v0;
  sub_219BE1D04();
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_219791A24;
  *(v4 + 24) = v3;
  v9[4] = sub_218807D50;
  v9[5] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_218807CE4;
  v9[3] = &block_descriptor_168;
  v5 = _Block_copy(v9);
  v6 = v1;

  [v2 performWithoutAnimation_];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v7 = *(*&v6[OBJC_IVAR____TtC7NewsUI219TodayViewController_eventHandler] + 40);
    ObjectType = swift_getObjectType();
    (*(v7 + 160))(ObjectType, v7);
  }
}

double sub_21978B858(char a1, uint64_t a2)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;

      sub_219BE1E74();
    }
  }

  return result;
}

void sub_21978B8F4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v40 = a3;
  v41 = a2;
  v4 = sub_219BDC104();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TodayFeedGroup(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187296E8(0, &qword_280EE3720, MEMORY[0x277D6EC60]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = v37 - v14;
  v39 = *(a1 + OBJC_IVAR____TtC7NewsUI219TodayViewController_blueprintViewController);
  sub_219BE86A4();
  v42 = v43;
  sub_2187DD900(0);
  sub_2187DEAC4(&qword_280EE5530, 255, sub_2187DD900, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  sub_218CD34B0(0);
  v37[1] = v16;
  sub_219BEEB04();
  sub_218829720();
  v38 = v10;
  sub_2187F691C(v10, type metadata accessor for TodayFeedGroup);
  v17 = sub_219BEB194();
  LOBYTE(a1) = v18;

  (*(v13 + 8))(v15, v12);
  if (a1)
  {
LABEL_8:
    v35 = *MEMORY[0x277D6D868];
    v36 = sub_219BE6DF4();
    (*(*(v36 - 8) + 104))(v40, v35, v36);
  }

  else
  {
    sub_219BE8664();
    v19 = sub_219BE7BC4();

    v20 = [v19 indexPathsForVisibleItems];

    v21 = sub_219BF5924();
    v22 = 0;
    v23 = *(v21 + 16);
    while (1)
    {
      if (v23 == v22)
      {

        goto LABEL_8;
      }

      if (v22 >= *(v21 + 16))
      {
        break;
      }

      (*(v5 + 16))(v7, v21 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v22++, v4);
      v24 = sub_219BDC0F4();
      (*(v5 + 8))(v7, v4);
      if (v24 == v17)
      {

        sub_219BE8664();
        v25 = sub_219BE7BC4();

        [v25 adjustedContentInset];
        v27 = v26;

        v28 = v38;
        sub_219BEEB04();
        v29 = sub_218829720();
        v31 = v30;
        sub_2187F691C(v28, type metadata accessor for TodayFeedGroup);
        v32 = v40;
        *v40 = v29;
        v32[1] = v31;
        v32[2] = 0;
        *(v32 + 3) = v27 + -64.0;
        v33 = *MEMORY[0x277D6D870];
        v34 = sub_219BE6DF4();
        (*(*(v34 - 8) + 104))(v32, v33, v34);
        return;
      }
    }

    __break(1u);
  }
}

double sub_21978BD94(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BE89F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    (*(v4 + 104))(v6, *MEMORY[0x277D6E0F8], v3);
    v10 = *&v9[OBJC_IVAR____TtC7NewsUI219TodayViewController_tracker];
    v15[3] = sub_219BDD274();
    v15[4] = sub_2187DEAC4(&qword_280EE8EE0, 255, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    v15[0] = v10;
    v16 = 0u;
    v17 = 0u;
    v18 = 1;
    sub_219BE8314();
    swift_allocObject();

    v11 = sub_219BE82F4();
    __swift_project_boxed_opaque_existential_1(&v9[OBJC_IVAR____TtC7NewsUI219TodayViewController_tipModelAvailability], *&v9[OBJC_IVAR____TtC7NewsUI219TodayViewController_tipModelAvailability + 24]);
    v12 = sub_21956A754();
    if (v14 != 0xFF)
    {
      sub_218CF5D64(v12, v13, v14);
      __swift_project_boxed_opaque_existential_1((a2 + 48), *(a2 + 72));
      sub_218F20180(v11);
    }
  }

  return result;
}

void sub_21978BF90(uint64_t a1, uint64_t a2, char a3)
{
  sub_219BE8664();
  v4 = sub_219BE7BC4();

  [v4 ts:a3 & 1 scrollToTop:1 dismissKeyboard:?];
}

uint64_t sub_21978C008(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a4;
  v42 = a3;
  v47 = a2;
  v45 = a1;
  v5 = sub_219BDE294();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D83D88];
  sub_2187E2B14(0, &unk_280EE58B0, sub_2187FAD00, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v40 - v11;
  sub_2187E2B14(0, qword_280ED9010, type metadata accessor for TodayRouteModel, v9);
  MEMORY[0x28223BE20](v13 - 8);
  v46 = &v40 - v14;
  v15 = type metadata accessor for TodayRouteModel(0);
  v43 = *(v15 - 8);
  v44 = v15;
  MEMORY[0x28223BE20](v15);
  v40 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187FAD00(0);
  v18 = v17;
  v19 = *(v17 - 8);
  *&v20 = MEMORY[0x28223BE20](v17).n128_u64[0];
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [v4 tabBarSplitViewFocusable];
  if (v23)
  {
    [v23 toggleSplitViewFocusTo_];
    swift_unknownObjectRelease();
  }

  v24 = *&v4[OBJC_IVAR____TtC7NewsUI219TodayViewController_eventHandler];
  sub_219BDC0F4();
  sub_2187296E8(0, &qword_280EE3720, MEMORY[0x277D6EC60]);
  sub_219BEB364();
  v25 = *(v24 + 40);
  ObjectType = swift_getObjectType();
  v27 = v22;
  v28 = ObjectType;
  v29 = *(v19 + 16);
  v45 = v27;
  v29(v12);
  (*(v19 + 56))(v12, 0, 1, v18);
  (*(v6 + 104))(v8, *MEMORY[0x277D2FF08], v5);
  v30 = *(v25 + 112);
  v42 = v18;
  v31 = v47;
  v32 = v25;
  v33 = v46;
  v30(v47, v12, v8, v28, v32);
  (*(v6 + 8))(v8, v5);
  sub_21881AB5C(v12, &unk_280EE58B0, sub_2187FAD00, MEMORY[0x277D83D88], sub_2187E2B14);
  if ((*(v43 + 48))(v33, 1, v44) == 1)
  {
    (*(v19 + 8))(v45, v42);
    return sub_21881AB5C(v33, qword_280ED9010, type metadata accessor for TodayRouteModel, MEMORY[0x277D83D88], sub_2187E2B14);
  }

  else
  {
    v35 = v40;
    sub_2195D8A88(v33, v40);
    sub_2192B2CB0(v31, v35);
    v36 = *(v24 + 40);
    v37 = swift_getObjectType();
    v38 = *(*(v24 + 88) + 32);
    v39 = *(v36 + 104);

    v39(v31, v35, v38, v41, v37, v36);

    sub_2187F691C(v35, type metadata accessor for TodayRouteModel);
    return (*(v19 + 8))(v45, v42);
  }
}

double sub_21978C56C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_2187DEAC4(&qword_280ECFA70, v4, type metadata accessor for TodayViewController, &unk_219CA346C);
  v6 = MEMORY[0x21CEBCBD0](ObjectType, v5);
  if (v6)
  {
    v7 = v6;
    swift_getObjectType();
    if (sub_219BE90B4())
    {
      sub_218F02BA0();
    }
  }

  return sub_2192A6298(a2);
}

uint64_t sub_21978C63C(uint64_t a1, uint64_t a2)
{
  sub_2187E2B98(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  sub_2192A6A64(a2);
  sub_2187E2B78(0);
  v10 = v9;
  v11 = *(v9 - 8);
  (*(v11 + 16))(v8, a2, v9);
  (*(v11 + 56))(v8, 0, 1, v10);
  swift_beginAccess();
  sub_21979162C(v8, v5);

  sub_219BE2744();

  return sub_2187F691C(v8, sub_2187E2B98);
}

uint64_t sub_21978C7C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BF0B74();
  v119 = *(v3 - 8);
  v120 = v3;
  MEMORY[0x28223BE20](v3);
  v116 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308(0);
  v117 = *(v5 - 8);
  v118 = v5;
  MEMORY[0x28223BE20](v5);
  v115 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BEDB94();
  v113 = *(v7 - 8);
  v114 = v7;
  MEMORY[0x28223BE20](v7);
  v110 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB140(0);
  v111 = *(v9 - 8);
  v112 = v9;
  MEMORY[0x28223BE20](v9);
  v109 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_2187E2B14(0, &unk_27CC10910, MEMORY[0x277D335C0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v108 = &v79 - v13;
  v104 = sub_219BF0AC4();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EFC0C(0);
  v106 = *(v15 - 8);
  v107 = v15;
  MEMORY[0x28223BE20](v15);
  v105 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_219BF04A4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v97 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018(0);
  v99 = v18;
  v98 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v96 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_219BF07A4();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v91 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAF38(0);
  v93 = v21;
  v92 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v89 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_219BF1094();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v83 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187E2B14(0, &unk_280E90A30, MEMORY[0x277D33058], v11);
  MEMORY[0x28223BE20](v24 - 8);
  v84 = &v79 - v25;
  sub_2186EAC68(0);
  v90 = v26;
  v88 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v87 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_219BEC504();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v29 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAD48(0);
  v31 = v30;
  v82 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v79 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_219BF0F34();
  v121 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v36 = &v79 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88(0);
  v122 = *(v37 - 8);
  v123 = v37;
  MEMORY[0x28223BE20](v37);
  v39 = &v79 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for TodayModel(0);
  MEMORY[0x28223BE20](v40);
  v42 = &v79 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218853400(0);
  v124 = a2;
  sub_219BE5FC4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2186EAB00(0, &qword_280ED7560, type metadata accessor for TodayGapLocation, MEMORY[0x277D333C8], "location offlineModel ");
      v67 = *(v66 + 48);
      v68 = sub_219BF1584();
      (*(*(v68 - 8) + 8))(&v42[v67], v68);
      v43 = type metadata accessor for TodayGapLocation;
      goto LABEL_3;
    case 2u:
      v51 = v122;
      v50 = v123;
      (*(v122 + 32))(v39, v42, v123);
      sub_219BF07D4();
      sub_219BF0F14();
      (*(v121 + 8))(v36, v34);
      sub_219BE5F84();
      v52 = sub_219BF4FC4();
      swift_unknownObjectRelease();

      (*(v51 + 8))(v39, v50);
      return v52;
    case 3u:
      v53 = v88;
      v54 = v87;
      v55 = v90;
      (*(v88 + 32))(v87, v42, v90);
      v56 = v83;
      sub_219BF07D4();
      v57 = v84;
      sub_219BF1074();
      (*(v85 + 8))(v56, v86);
      v58 = v121;
      if ((*(v121 + 48))(v57, 1, v34) == 1)
      {
        sub_21881AB5C(v57, &unk_280E90A30, MEMORY[0x277D33058], MEMORY[0x277D83D88], sub_2187E2B14);
        (*(v53 + 8))(v54, v55);
        return 0;
      }

      else
      {
        sub_219BF0F14();
        (*(v58 + 8))(v57, v34);
        sub_219BE5F84();
        v78 = sub_219BF4FC4();
        swift_unknownObjectRelease();

        (*(v53 + 8))(v54, v55);
        return v78;
      }

    case 4u:
    case 5u:
    case 7u:
    case 8u:
    case 9u:
    case 0xEu:
      v43 = type metadata accessor for TodayModel;
LABEL_3:
      v44 = v43;
      v45 = v42;
      goto LABEL_4;
    case 6u:
      sub_2186EAB00(0, &qword_280E90E70, sub_2186EAD48, sub_2186EAB88, " fallback ");
      v121 = *(v47 + 48);
      v48 = v82;
      (*(v82 + 32))(v33, v42, v31);
      sub_219BF07D4();
      sub_219BEC4F4();
      (*(v80 + 8))(v29, v81);
      sub_219BE5F84();
      v49 = sub_219BF4FC4();
      swift_unknownObjectRelease();

      (*(v48 + 8))(v33, v31);
      (*(v122 + 8))(&v42[v121], v123);
      return v49;
    case 0xAu:
      v70 = v92;
      v71 = v89;
      v69 = v93;
      (*(v92 + 32))(v89, v42, v93);
      v75 = v91;
      sub_219BF07D4();
      v73 = sub_219BF06B4();
      (*(v94 + 8))(v75, v95);
      v74 = sub_219BF4FB4();
      goto LABEL_15;
    case 0xBu:
      v70 = v98;
      v71 = v96;
      v69 = v99;
      (*(v98 + 32))(v96, v42, v99);
      v76 = v97;
      sub_219BF07D4();
      sub_219BF0404();
      (*(v100 + 8))(v76, v101);
      goto LABEL_18;
    case 0xCu:
      v60 = v105;
      v59 = v106;
      v61 = v107;
      (*(v106 + 32))(v105, v42, v107);
      v62 = v102;
      sub_219BF07D4();
      sub_219BF0AA4();
      (*(v103 + 8))(v62, v104);
      v63 = sub_219BF1D14();
      v64 = v108;
      (*(*(v63 - 8) + 56))(v108, 1, 1, v63);
      v52 = sub_219BF4FD4();
      swift_unknownObjectRelease();
      sub_21881AB5C(v64, &unk_27CC10910, MEMORY[0x277D335C0], MEMORY[0x277D83D88], sub_2187E2B14);
      (*(v59 + 8))(v60, v61);
      return v52;
    case 0xDu:
      v70 = v111;
      v69 = v112;
      v71 = v109;
      (*(v111 + 32))(v109, v42, v112);
      v77 = v110;
      sub_219BF07D4();
      sub_219BEDB74();
      (*(v113 + 8))(v77, v114);
LABEL_18:
      v52 = sub_219BF4FA4();
      swift_unknownObjectRelease();
      goto LABEL_19;
    case 0xFu:
      v70 = v117;
      v69 = v118;
      v71 = v115;
      (*(v117 + 32))(v115, v42, v118);
      v72 = v116;
      sub_219BF07D4();
      v73 = sub_219BF0B44();
      (*(v119 + 8))(v72, v120);
      v74 = sub_219BF4F94();
LABEL_15:
      v52 = v74;

LABEL_19:
      (*(v70 + 8))(v71, v69);
      return v52;
    default:

      sub_2186EA920(0);
      v44 = type metadata accessor for TodayGapLocation;
      v45 = &v42[*(v65 + 48)];
LABEL_4:
      sub_2187F691C(v45, v44);
      return 0;
  }
}

uint64_t sub_21978D9DC(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D83D88];
  sub_2187E2B14(0, &unk_280EE56F0, MEMORY[0x277D6D878], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = type metadata accessor for TodayExpandContext(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187E2B14(0, &unk_280EE5D20, sub_218853400, v3);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v22 - v11;
  sub_218853400(0);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE1D74();
  sub_2187296E8(0, &qword_280EE3720, MEMORY[0x277D6EC60]);
  sub_219BEB1C4();

  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    sub_21881AB5C(v12, &unk_280EE5D20, sub_218853400, MEMORY[0x277D83D88], sub_2187E2B14);
    v18 = a2[3];
    v19 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v18);
    return MEMORY[0x21CEC0B20](0, v18, v19);
  }

  else
  {
    (*(v15 + 32))(v17, v12, v14);
    v21 = sub_219BE6DF4();
    (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
    sub_218809CC0(v6, v9);
    sub_21881AB5C(v6, &unk_280EE56F0, MEMORY[0x277D6D878], MEMORY[0x277D83D88], sub_2187E2B14);
    sub_219A16420(a2, v17, v9);
    sub_2187F691C(v9, type metadata accessor for TodayExpandContext);
    return (*(v15 + 8))(v17, v14);
  }
}

void sub_21978DDD4(uint64_t a1, char a2)
{
  v3 = sub_219BEB384();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BEB394();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    sub_219BE8644();
    if (qword_280E92A48 != -1)
    {
      swift_once();
    }

    v11 = sub_219BF01B4();
    v12 = __swift_project_value_buffer(v11, qword_280F61940);
    v10[3] = v11;
    v10[4] = sub_2187DEAC4(&qword_280E91000, 255, MEMORY[0x277D32BC8], MEMORY[0x277D32BC0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v12, v11);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    v16 = sub_219BF54E4();
    v18 = v17;

    v10[5] = v16;
    v10[6] = v18;
    (*(v8 + 104))(v10, *MEMORY[0x277D6EC80], v7);
    (*(v4 + 104))(v6, *MEMORY[0x277D6ECB0], v3);
    sub_219BE6BD4();

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
  }
}

void sub_21978E23C(uint64_t a1)
{
  swift_getObjectType();
  sub_2187DEAC4(&qword_280ECFA68, v1, type metadata accessor for TodayViewController, &unk_219CA3140);
  v2 = sub_219BE64F4();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 navigationBar];

    sub_219BF6C44();
  }
}

uint64_t sub_21978E3C4(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC7NewsUI219TodayViewController_eventHandler);
  sub_2192A5788(a2);
  v5 = *(v4 + 40);
  ObjectType = swift_getObjectType();
  return (*(v5 + 128))(a2, ObjectType, v5);
}

uint64_t sub_21978E578()
{
  v1 = MEMORY[0x277D83D88];
  sub_2187E2B14(0, &qword_280EE64B0, MEMORY[0x277D34D28], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_219BE3D34();
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D35210];
  sub_2187E2B14(0, &qword_280EE62C8, MEMORY[0x277D35210], v1);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - v10;
  v12 = sub_219BE4584();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v0 + OBJC_IVAR____TtC7NewsUI219TodayViewController_mastheadPaywall);
  v17 = OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_subscribeButtonDestination;
  swift_beginAccess();
  sub_218809F48(v16 + v17, v11, &qword_280EE62C8, v8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v18 = &qword_280EE62C8;
    v19 = MEMORY[0x277D35210];
    v20 = MEMORY[0x277D83D88];
    v21 = v11;
    return sub_21881AB5C(v21, v18, v19, v20, sub_2187E2B14);
  }

  (*(v13 + 32))(v15, v11, v12);
  v22 = OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_paywallModel;
  swift_beginAccess();
  sub_218809F48(v16 + v22, v4, &qword_280EE64B0, MEMORY[0x277D34D28]);
  v24 = v26;
  v23 = v27;
  if ((*(v26 + 48))(v4, 1, v27) == 1)
  {
    (*(v13 + 8))(v15, v12);
    v18 = &qword_280EE64B0;
    v19 = MEMORY[0x277D34D28];
    v20 = MEMORY[0x277D83D88];
    v21 = v4;
    return sub_21881AB5C(v21, v18, v19, v20, sub_2187E2B14);
  }

  (*(v24 + 32))(v7, v4, v23);
  swift_getObjectType();
  sub_219BE4364();
  (*(v24 + 8))(v7, v23);
  return (*(v13 + 8))(v15, v12);
}

id sub_21978E9A0()
{
  swift_getObjectType();
  if ((sub_219BED0C4() & 1) == 0)
  {
    sub_2187DEAC4(&qword_280ECFA68, v1, type metadata accessor for TodayViewController, &unk_219CA3140);
    v3 = sub_219BE64F4();
    if (!v3)
    {
      return [objc_allocWithZone(sub_219BEA3E4()) init];
    }

    v4 = v3;
    v5 = [v3 navigationBar];

    if (!v5)
    {
      return [objc_allocWithZone(sub_219BEA3E4()) init];
    }

    v6 = [v0 traitCollection];
    v7 = [v6 horizontalSizeClass];

    if (v7 == 1)
    {
      v8 = objc_allocWithZone(sub_219BE9E44());
      v9 = v5;
      v2 = sub_219BE9E24();
      sub_219BE9E34();

      return v2;
    }

    v11 = [v0 navigationItem];
    sub_219BE8664();
    sub_219BE7BC4();

    sub_2186C6148(0, &qword_280E8DA80, 0x277D75348);
    sub_219BF6D44();
    v12 = objc_allocWithZone(sub_219BEA4D4());
    return sub_219BEA4C4();
  }

  return 0;
}

uint64_t sub_21978EDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = *a5;
  swift_beginAccess();
  v13 = *(a1 + v12);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v12) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_2191F67A4(0, v13[2] + 1, 1, v13);
    *(a1 + v12) = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_2191F67A4((v15 > 1), v16 + 1, 1, v13);
  }

  v13[2] = v16 + 1;
  v17 = &v13[2 * v16];
  v17[4] = a6;
  v17[5] = v11;
  *(a1 + v12) = v13;
  return swift_endAccess();
}

void sub_21978EEE4(uint64_t a1)
{
  sub_219BE8664();
  v1 = sub_219BE7BC4();

  [v1 ts:1 scrollToTop:1 dismissKeyboard:?];
}

void sub_21978EF58(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_219BE1E74();
    sub_219BE8664();
    v4 = sub_219BE7BC4();

    [v4 ts:1 scrollToTop:1 dismissKeyboard:?];
  }
}

void sub_21978F018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_219BDE294();
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x28223BE20](v4);
  v68 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_2187E2B14(0, qword_280ED9010, type metadata accessor for TodayRouteModel, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v61 - v8;
  v10 = type metadata accessor for TodayRouteModel(0);
  v66 = *(v10 - 8);
  v67 = v10;
  MEMORY[0x28223BE20](v10);
  v65 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE8C14();
  v71 = *(v12 - 8);
  v72 = v12;
  MEMORY[0x28223BE20](v12);
  v74 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187E2B14(0, &unk_280EE58B0, sub_2187FAD00, v6);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v61 - v18;
  sub_2187FAD00(0);
  v75 = *(v20 - 8);
  v76 = v20;
  MEMORY[0x28223BE20](v20);
  v73 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187E2B14(0, &unk_280EE5D20, sub_218853400, v6);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v61 - v23;
  sub_218853400(0);
  v78 = *(v25 - 8);
  v79 = v25;
  MEMORY[0x28223BE20](v25);
  v80 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187296E8(0, &qword_280EE3720, MEMORY[0x277D6EC60]);
  v28 = v27;
  v77 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v61 - v29;
  sub_2187E2B14(0, &qword_27CC110E0, MEMORY[0x277D32A48], v6);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v61 - v32;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    v64 = v9;
    sub_218809F48(a1, v33, &qword_27CC110E0, MEMORY[0x277D32A48]);
    v36 = sub_219BEFD14();
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v33, 1, v36) == 1)
    {

      sub_21881AB5C(v33, &qword_27CC110E0, MEMORY[0x277D32A48], MEMORY[0x277D83D88], sub_2187E2B14);
      return;
    }

    v63 = v16;
    sub_219BEFD04();
    v39 = v38;
    (*(v37 + 8))(v33, v36);
    if (v39)
    {
      sub_219BE86A4();
      v81 = v82;
      sub_2187DD900(0);
      sub_2187DEAC4(&qword_280EE5530, 255, sub_2187DD900, MEMORY[0x277D6D8C8]);
      sub_219BE7B94();

      sub_219BEB1C4();
      v40 = v78;
      v41 = v79;
      if ((*(v78 + 48))(v24, 1, v79) == 1)
      {
        (*(v77 + 8))(v30, v28);

        sub_21881AB5C(v24, &unk_280EE5D20, sub_218853400, MEMORY[0x277D83D88], sub_2187E2B14);
        return;
      }

      (*(v40 + 32))(v80, v24, v41);
      sub_219BEB244();

      v43 = v75;
      v42 = v76;
      if ((*(v75 + 48))(v19, 1, v76) == 1)
      {

        (*(v40 + 8))(v80, v41);
        (*(v77 + 8))(v30, v28);
        sub_21881AB5C(v19, &unk_280EE58B0, sub_2187FAD00, MEMORY[0x277D83D88], sub_2187E2B14);
        return;
      }

      v44 = v73;
      (*(v43 + 32))(v73, v19, v42);
      v45 = *&v35[OBJC_IVAR____TtC7NewsUI219TodayViewController_eventHandler];
      sub_219BE8C04();
      v46 = *(v45 + 40);
      ObjectType = swift_getObjectType();
      v47 = v63;
      (*(v43 + 16))(v63, v44, v42);
      (*(v43 + 56))(v47, 0, 1, v42);
      v48 = v68;
      v49 = v69;
      v50 = v70;
      (*(v69 + 104))(v68, *MEMORY[0x277D2FF08], v70);
      v51 = *(v46 + 112);
      v52 = v46;
      v53 = v64;
      v51(v80, v47, v48, ObjectType, v52);
      (*(v49 + 8))(v48, v50);
      sub_21881AB5C(v47, &unk_280EE58B0, sub_2187FAD00, MEMORY[0x277D83D88], sub_2187E2B14);
      if ((*(v66 + 48))(v53, 1, v67) == 1)
      {
        (*(v71 + 8))(v74, v72);
        (*(v75 + 8))(v73, v76);
        (*(v78 + 8))(v80, v79);
        (*(v77 + 8))(v30, v28);
        sub_21881AB5C(v53, qword_280ED9010, type metadata accessor for TodayRouteModel, MEMORY[0x277D83D88], sub_2187E2B14);
      }

      else
      {
        v54 = v65;
        sub_2195D8A88(v53, v65);
        v55 = v80;
        sub_2192B2CB0(v80, v54);
        v56 = *(v45 + 40);
        v70 = swift_getObjectType();
        v57 = *(*(v45 + 88) + 32);
        v58 = *(v56 + 104);

        v59 = v55;
        v60 = v74;
        v58(v59, v54, v57, v74, v70, v56);

        sub_2187F691C(v54, type metadata accessor for TodayRouteModel);
        (*(v71 + 8))(v60, v72);
        (*(v75 + 8))(v73, v76);
        (*(v78 + 8))(v80, v79);
        (*(v77 + 8))(v30, v28);
      }
    }
  }
}

uint64_t sub_21978FC40(uint64_t a1)
{
  sub_219BE86A4();
  v1 = sub_219BE6F64();

  return v1;
}

double sub_21978FC94(uint64_t a1)
{
  sub_219BE86A4();
  sub_219BE6F74();

  return result;
}

uint64_t sub_21978FCE8(uint64_t a1, uint64_t a2)
{
  v3 = sub_2187DEAC4(qword_27CC1CBD0, a2, type metadata accessor for TodayViewController, &unk_219CA30C0);

  return MEMORY[0x2821D40A0](a1, v3);
}

uint64_t sub_21978FD64(uint64_t a1, uint64_t a2)
{
  v4 = sub_2187DEAC4(qword_27CC1CBD0, a2, type metadata accessor for TodayViewController, &unk_219CA30C0);

  return MEMORY[0x2821D40A8](a1, a2, v4);
}

void sub_21978FDE0(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *(a1 + 8);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 64);
  v44 = ObjectType;
  v9 = v1 + OBJC_IVAR____TtC7NewsUI219TodayViewController_mastheadViewProviderDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 8);
    v11 = swift_getObjectType();
    v13 = sub_2187DEAC4(&qword_280ECFA70, v12, type metadata accessor for TodayViewController, &unk_219CA346C);
    v14 = (*(v10 + 48))(v1, v13, v11, v10);
    swift_unknownObjectRelease();
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v14 = 1;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  v45[0] = *a1;
  v45[1] = v5;
  v15 = *(a1 + 32);
  v46 = *(a1 + 16);
  v47 = v15;
  v48 = *(a1 + 48);
  v49 = *(a1 + 64);
  if (v14)
  {
    sub_2186C6148(0, &qword_280E8D9D0, 0x277D750C8);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = v8;

    v18 = v6;
    v19 = v7;

    v43 = v16;
    v20 = sub_219BF6E14();
    sub_2186C6148(0, &qword_280E8E5D0, 0x277D751E0);
    v21 = v20;

    v22 = sub_219BF6334();
    sub_219908E08(v22, v45);

    v23 = sub_219BF6334();
    sub_219908E08(v23, v45);
    sub_2189D2C8C(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_219C146A0;
    *(v24 + 32) = v22;
    v25 = objc_allocWithZone(MEMORY[0x277D751F0]);
    v26 = v22;
    v27 = v23;
    v28 = sub_219BF5904();

    v29 = [v25 initWithBarButtonItems:v28 representativeItem:{v27, 0, 0, 0, sub_219791244, v43}];

    v30 = *(v2 + OBJC_IVAR____TtC7NewsUI219TodayViewController_paywallBarButtonItemGroup);
    *(v2 + OBJC_IVAR____TtC7NewsUI219TodayViewController_paywallBarButtonItemGroup) = v29;

    v32 = sub_2187DEAC4(&qword_280ECFA70, v31, type metadata accessor for TodayViewController, &unk_219CA346C);
    v33 = MEMORY[0x21CEBCBD0](v44, v32);
    if (v33)
    {
      v34 = v33;
      swift_getObjectType();
      v35 = sub_219BE90B4();
    }

    else
    {
      v35 = 0;
    }

    sub_219791160(v35 & 1);

    sub_21881AB5C(a1, &qword_280ECE5A0, &type metadata for MastheadCallToAction, MEMORY[0x277D83D88], sub_2189D2C8C);
    return;
  }

LABEL_8:
  v36 = OBJC_IVAR____TtC7NewsUI219TodayViewController_paywallBarButtonItemGroup;
  v37 = *(v1 + OBJC_IVAR____TtC7NewsUI219TodayViewController_paywallBarButtonItemGroup);
  if (v37)
  {
    v38 = v37;
    v39 = sub_219BF65B4();
    v40 = [v39 pinnedTrailingGroup];

    if (v40)
    {

      if (v40 == v38)
      {
        v41 = sub_219BF65B4();
        [v41 setPinnedTrailingGroup_];

        sub_218F02BA0();
      }
    }

    v42 = *(v2 + v36);
    *(v2 + v36) = 0;
  }
}

void *sub_219790278(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_unknownObjectRetain();

    sub_218F027EC();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2197902E8(uint64_t a1)
{
  sub_219BE2CF4();
  v1 = sub_219BE8854();

  return v1 & 1;
}

double sub_219790338(uint64_t a1)
{
  sub_219BE2CF4();
  sub_219BE8864();
  v2 = v1;

  return v2;
}

uint64_t sub_219790394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v35 = a6;
  v36 = a7;
  v34 = a5;
  v33 = a4;
  v32 = a3;
  v31 = a2;
  v38 = a1;
  v43 = sub_219BEFA44();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v40 = (&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = sub_219BEFA64();
  v39 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187296E8(0, &qword_280EE3720, MEMORY[0x277D6EC60]);
  v14 = v13;
  v44 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  sub_219BE86A4();
  v54 = v46;
  sub_2187DD900(0);
  sub_2187DEAC4(&qword_280EE5530, 255, sub_2187DD900, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  sub_218C3DA24(0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_219C09BA0;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_219C09EC0;
  v18 = sub_219BE6684();
  type metadata accessor for TodayFeedServiceConfig(0);
  sub_2187DEAC4(&qword_280EC6590, 255, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
  v45 = v14;
  v19 = sub_219BEB284();
  v46 = v31;
  v47 = v32;
  v48 = v33;
  v49 = v34;
  v50 = v35;
  v51 = v36;
  v52 = a8;
  v53 = a9;
  sub_219BE57D4();
  type metadata accessor for TodayModel(0);
  sub_2186EB3E8();
  sub_2187DEAC4(&qword_280EDF9E0, 255, type metadata accessor for TodayModel, &unk_219CCC5A4);
  sub_219BE57A4();
  v20 = sub_219BE6624();

  v21.n128_f64[0] = sub_21885AB78(v19);
  if (v20)
  {
    v22 = MEMORY[0x277D6D630];
    v23 = v18;
  }

  else
  {
    v23 = 0;
    v22 = 0;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
  }

  *(v17 + 32) = v20;
  *(v17 + 56) = v23;
  *(v17 + 64) = v22;
  v25 = v40;
  v24 = v41;
  *v40 = &unk_282A293C8;
  (*(v24 + 104))(v25, *MEMORY[0x277D32860], v43, v21);
  sub_219BEFA54();
  v26 = sub_219BE6644();
  (*(v39 + 8))(v12, v42);
  if (v26)
  {
    v27 = MEMORY[0x277D6D630];
  }

  else
  {
    v18 = 0;
    v27 = 0;
    *(v17 + 80) = 0;
    *(v17 + 88) = 0;
  }

  *(v17 + 72) = v26;
  *(v17 + 96) = v18;
  *(v17 + 104) = v27;
  sub_219BE5A14();
  sub_219BE6B74();
  sub_219BE6B44();

  v28 = sub_219BE59D4();
  (*(v44 + 8))(v16, v45);
  return v28;
}

uint64_t sub_219790994(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v53 = a1;
  v61 = sub_219BDE294();
  v58 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = sub_2187FAD00;
  v4 = MEMORY[0x277D83D88];
  v55 = MEMORY[0x277D83D88];
  v56 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187E2B14(0, &unk_280EE58B0, sub_2187FAD00, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v49 = &v47 - v6;
  sub_2187E2B14(0, qword_280ED9010, type metadata accessor for TodayRouteModel, v4);
  MEMORY[0x28223BE20](v7 - 8);
  v50 = &v47 - v8;
  v9 = type metadata accessor for TodayRouteModel(0);
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x28223BE20](v9);
  v47 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE8C14();
  v62 = *(v11 - 8);
  v63 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187FAD00(0);
  v15 = v14;
  v48 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187296E8(0, &qword_280EE3720, MEMORY[0x277D6EC60]);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v22 = &v47 - v21;
  v23 = *(v2 + OBJC_IVAR____TtC7NewsUI219TodayViewController_eventHandler);
  sub_219BE86A4();
  v64 = v65;
  sub_2187DD900(0);
  sub_2187DEAC4(&qword_280EE5530, 255, sub_2187DD900, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  sub_219BDC0F4();
  sub_219BEB364();
  v24 = v22;
  v25 = v53;
  (*(v20 + 8))(v24, v19);
  v57 = v13;
  v26 = v48;
  sub_219BE8C04();
  v27 = *(v23 + 40);
  ObjectType = swift_getObjectType();
  v29 = *(v26 + 16);
  v30 = v49;
  v54 = v17;
  v29(v49, v17, v15);
  v31 = *(v26 + 56);
  v32 = v30;
  v59 = v15;
  v31(v30, 0, 1, v15);
  v33 = v58;
  v34 = v56;
  v35 = v61;
  (*(v58 + 104))(v56, *MEMORY[0x277D2FEF8], v61);
  v36 = *(v27 + 112);
  v37 = v27;
  v38 = v50;
  v36(v25, v32, v34, ObjectType, v37);
  (*(v33 + 8))(v34, v35);
  sub_21881AB5C(v32, &unk_280EE58B0, v60, v55, sub_2187E2B14);
  if ((*(v51 + 48))(v38, 1, v52) == 1)
  {
    (*(v62 + 8))(v57, v63);
    (*(v26 + 8))(v54, v59);
    return sub_21881AB5C(v38, qword_280ED9010, type metadata accessor for TodayRouteModel, MEMORY[0x277D83D88], sub_2187E2B14);
  }

  else
  {
    v40 = v47;
    sub_2195D8A88(v38, v47);
    sub_2192B2CB0(v25, v40);
    v41 = *(v23 + 40);
    v42 = swift_getObjectType();
    v43 = *(*(v23 + 88) + 32);
    v44 = *(v41 + 104);

    v45 = v25;
    v46 = v57;
    v44(v45, v40, v43, v57, v42, v41);

    sub_2187F691C(v40, type metadata accessor for TodayRouteModel);
    (*(v62 + 8))(v46, v63);
    return (*(v26 + 8))(v54, v59);
  }
}

void sub_219791074(char a1)
{
  v2 = OBJC_IVAR____TtC7NewsUI219TodayViewController_paywallBarButtonItemGroup;
  v3 = *(v1 + OBJC_IVAR____TtC7NewsUI219TodayViewController_paywallBarButtonItemGroup);
  if (v3)
  {
    v4 = v1;
    v6 = v3;
    v7 = sub_219BF65B4();
    v8 = [v7 pinnedTrailingGroup];

    if (v8 && (v8, v8 == v6))
    {
      v10 = sub_219BF65B4();
      [v10 setPinnedTrailingGroup_];

      sub_218F02BA0();
      if ((a1 & 1) == 0)
      {
        return;
      }
    }

    else
    {

      if ((a1 & 1) == 0)
      {
        return;
      }
    }

    v9 = *(v4 + v2);
    *(v4 + v2) = 0;
  }
}

void sub_219791160(uint64_t a1)
{
  if (a1)
  {
    sub_219BE2CF4();
    v2 = sub_219BE8854();

    if ((v2 & 1) == 0)
    {
      v3 = *(v1 + OBJC_IVAR____TtC7NewsUI219TodayViewController_paywallBarButtonItemGroup);
      if (v3)
      {
        v4 = v3;
        v5 = sub_219BF65B4();
        v6 = [v5 pinnedTrailingGroup];

        if (!v6 || (v6, v6 != v4))
        {
          v7 = sub_219BF65B4();
          [v7 setPinnedTrailingGroup_];

          sub_21880D358();
        }
      }
    }
  }
}

void sub_21979124C()
{
  ObjectType = swift_getObjectType();
  if (sub_219BED0C4())
  {
    sub_219BE2CF4();
    v1 = sub_219BE8854();

    if (v1)
    {
      sub_219791074(0);
    }

    else
    {
      v3 = sub_2187DEAC4(&qword_280ECFA70, v2, type metadata accessor for TodayViewController, &unk_219CA346C);
      v4 = MEMORY[0x21CEBCBD0](ObjectType, v3);
      if (v4)
      {
        v5 = v4;
        swift_getObjectType();
        v6 = sub_219BE90B4();
      }

      else
      {
        v6 = 0;
      }

      sub_219791160(v6 & 1);
    }
  }
}

id sub_219791344(void *a1, uint64_t a2)
{
  v4 = sub_219BDB954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = &v22 - v10;
  if ([a1 style] == 2)
  {
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v12 = qword_280F616D8;
    v13 = sub_219BF6214();
    sub_219BE5314("TodayViewController: didReceiveDialogAction with dismissal", 58, 2, &dword_2186C1000, v12, v13, MEMORY[0x277D84F90]);
    sub_219A17DB8(a2);
  }

  result = [a1 style];
  if (!result)
  {
    result = [a1 deepLink];
    if (result)
    {
      v15 = result;
      sub_219BDB8B4();

      (*(v5 + 32))(v11, v7, v4);
      if (qword_280E8D7A0 != -1)
      {
        swift_once();
      }

      v16 = qword_280F616D8;
      sub_2188096E0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_219C09BA0;
      v18 = sub_219BDB804();
      v20 = v19;
      *(v17 + 56) = MEMORY[0x277D837D0];
      *(v17 + 64) = sub_2186FC3BC();
      *(v17 + 32) = v18;
      *(v17 + 40) = v20;
      v21 = sub_219BF6214();
      sub_219BE5314("TodayViewController: didReceiveDialogAction with deepLink=%{public}@", 68, 2, &dword_2186C1000, v16, v21, v17);

      sub_219A16F5C(v11, a2);
      return (*(v5 + 8))(v11, v4);
    }
  }

  return result;
}

uint64_t sub_21979162C(uint64_t a1, uint64_t a2)
{
  sub_2187E2B98(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_219791690()
{
  v1 = v0;
  sub_2187E2B98(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - v6;
  v8 = OBJC_IVAR____TtC7NewsUI219TodayViewController__lastImpression;
  sub_2187E2B78(0);
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_21979162C(v7, v4);
  sub_2187E2B14(0, &unk_280EE7410, sub_2187E2B98, MEMORY[0x277D6CCD0]);
  swift_allocObject();
  v10 = sub_219BE2724();
  sub_2187F691C(v7, sub_2187E2B98);
  *(v1 + v8) = v10;
  v11 = OBJC_IVAR____TtC7NewsUI219TodayViewController_visibilityEventManager;
  sub_2197919BC(0);
  swift_allocObject();
  *(v1 + v11) = sub_219BE1D34();
  v12 = OBJC_IVAR____TtC7NewsUI219TodayViewController_refreshControl;
  *(v1 + v12) = [objc_allocWithZone(MEMORY[0x277D75918]) init];
  v13 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC7NewsUI219TodayViewController_didAppearCompletions) = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC7NewsUI219TodayViewController_didDisappearCompletions) = v13;
  *(v1 + OBJC_IVAR____TtC7NewsUI219TodayViewController_mastheadViewProviderDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC7NewsUI219TodayViewController_miniMastheadViewProviderDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC7NewsUI219TodayViewController_deferLoadingContent) = 0;
  v14 = (v1 + OBJC_IVAR____TtC7NewsUI219TodayViewController_windowTitle);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  v17 = sub_219BDB5E4();
  v19 = v18;

  *v14 = v17;
  v14[1] = v19;
  *(v1 + OBJC_IVAR____TtC7NewsUI219TodayViewController_paywallBarButtonItemGroup) = 0;
  sub_219BF7514();
  __break(1u);
}

void sub_2197919BC(uint64_t a1)
{
  if (!qword_280EE7E00)
  {
    sub_2187F6A38();
    v1 = sub_219BE1D44();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE7E00);
    }
  }
}

void *sub_219791A34@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FE50, MEMORY[0x277D343D8], 1);
  result = sub_219BE1E34();
  if (!v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_219BF4E04();
  swift_allocObject();
  v5 = sub_219BF4DF4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B7A520();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21873E5D4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (v9)
  {
    v8 = type metadata accessor for MyMagazinesSharingActivityItemFactory();
    result = swift_allocObject();
    result[2] = v5;
    result[3] = v6;
    result[4] = v7;
    result[5] = v9;
    result[6] = v10;
    a2[3] = v8;
    a2[4] = &off_282A8F9D0;
    *a2 = result;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_219791C1C()
{
  v0 = type metadata accessor for WebViewerState(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_storeEnumTagMultiPayload();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_219B736EC(v4, v2);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    return sub_2194DD504(v2);
  }

  return result;
}

uint64_t type metadata accessor for ForYouTodayFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EBE540;
  if (!qword_280EBE540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219791DA4(uint64_t a1)
{
  sub_2189AE994(319);
  if (v1 <= 0x3F)
  {
    sub_2189AE9B4(319);
    if (v2 <= 0x3F)
    {
      sub_2186DEFE0(319, &qword_280E8EA30, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_219791D24(319);
        if (v4 <= 0x3F)
        {
          sub_2186DEFE0(319, &qword_280E8F0D8, &type metadata for ForYouTodayFeedGroupKnobs.SlotKnobs, MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_219791ED4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_219791F30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_219791FA4(void *a1)
{
  v3 = v1;
  sub_219794608(0, &qword_27CC1EFF0, sub_2197945B4, &type metadata for ForYouTodayFeedGroupKnobs.SlotKnobs.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197945B4();
  sub_219BF7B44();
  v12 = *v3;
  v11[15] = 0;
  sub_2189684CC();
  sub_219BF7834();
  if (!v2)
  {
    v11[14] = 1;
    sub_219BF77B4();
    v11[13] = 2;
    sub_219BF77B4();
    v11[12] = 3;
    sub_219BF77B4();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_219792198()
{
  v1 = 0x73746F6C73;
  v2 = 0x4165646172676564;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = 0x656D695474736166;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_219792224@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_219794174(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21979224C(uint64_t a1)
{
  v2 = sub_2197945B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219792288(uint64_t a1)
{
  v2 = sub_2197945B4();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2197922C4@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_2197942E4(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

BOOL sub_21979232C(uint64_t a1, uint64_t a2)
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
  return sub_219793AD4(v5, v7);
}

uint64_t sub_219792388@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  sub_2189AE9B4(0);
  v92 = v3;
  v88 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v87 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE8A90(0);
  MEMORY[0x28223BE20](v5 - 8);
  v86 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AE994(0);
  v83 = v7;
  v82 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v84 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v85 = &v67 - v10;
  v89 = type metadata accessor for ForYouTodayFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v89);
  v91 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219791D24(0);
  MEMORY[0x28223BE20](v12 - 8);
  v94 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AF700(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v81 = &v67 - v18;
  sub_2189AF720(0);
  MEMORY[0x28223BE20](v19 - 8);
  v95 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v93 = &v67 - v22;
  sub_219794608(0, &qword_280E8CD58, sub_219793760, &type metadata for ForYouTodayFeedGroupKnobs.CodingKeys, MEMORY[0x277D844C8]);
  v24 = v23;
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v27 = &v67 - v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219793760();
  v28 = v96;
  sub_219BF7B34();
  if (v28)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v77 = v16;
  v78 = 0;
  v79 = v25;
  v96 = a1;
  LOBYTE(v104) = 0;
  sub_2186DFEA8(&qword_280E91A28, sub_2189AE994, MEMORY[0x277D321B0]);
  v30 = v93;
  v31 = v83;
  sub_219BF7674();
  LOBYTE(v104) = 1;
  sub_2186DFEA8(&qword_280E91868, sub_2189AE9B4, MEMORY[0x277D32328]);
  v32 = v81;
  sub_219BF7674();
  LOBYTE(v102) = 2;
  sub_219BF7674();
  v76 = v104;
  v106 = v105;
  LOBYTE(v102) = 3;
  sub_219BF7674();
  v75 = v109;
  LOBYTE(v100) = 4;
  sub_219BF7674();
  v74 = v102;
  v73 = v103;
  LOBYTE(v98) = 5;
  sub_219BF7674();
  v72 = v100;
  v71 = v101;
  LOBYTE(v97) = 6;
  sub_219BF7674();
  v70 = v98;
  v69 = v99;
  LOBYTE(v97) = 7;
  sub_219BF7674();
  v33 = v108;
  type metadata accessor for ForYouTodayFeedGroupClusteringKnobs(0);
  LOBYTE(v97) = 8;
  sub_2186DFEA8(&qword_280E9D7D0, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs, &unk_219C75F84);
  sub_219BF7674();
  sub_2186DEFE0(0, &qword_280E8F0D8, &type metadata for ForYouTodayFeedGroupKnobs.SlotKnobs, MEMORY[0x277D83940]);
  v107 = 9;
  sub_219793988(&qword_280E8F0C8, sub_219793A18, MEMORY[0x277D83978]);
  sub_219BF7674();
  v67 = v97;
  v34 = v95;
  sub_219793A6C(v30, v95, sub_2189AF720);
  v35 = v82;
  v36 = *(v82 + 48);
  v37 = v36(v34, 1, v31);
  v68 = v27;
  v38 = v31;
  v80 = v24;
  if (v37 == 1)
  {
    v39 = v35;
    type metadata accessor for TodayFeedServiceConfig(0);
    sub_2186DFEA8(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v40 = v84;
    sub_219BEE974();
    if (v36(v95, 1, v38) != 1)
    {
      sub_2197940AC(v95, sub_2189AF720);
    }
  }

  else
  {
    v39 = v35;
    v40 = v84;
    (*(v35 + 32))(v84, v95, v38);
  }

  v41 = *MEMORY[0x277D31D60];
  v42 = sub_219BEDB04();
  v43 = *(v42 - 8);
  v44 = v86;
  (*(v43 + 104))(v86, v41, v42);
  (*(v43 + 56))(v44, 0, 1, v42);
  v45 = v85;
  sub_219BEEA04();
  sub_2197940AC(v44, sub_218CE8A90);
  (*(v39 + 8))(v40, v38);
  v46 = v91;
  (*(v39 + 32))(v91, v45, v38);
  v47 = v32;
  v48 = v77;
  sub_219793A6C(v32, v77, sub_2189AF700);
  v49 = v88;
  v50 = *(v88 + 48);
  v51 = v92;
  if (v50(v48, 1, v92) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig(0);
    sub_2186DFEA8(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v52 = v87;
    v46 = v91;
    sub_219BEEC74();
    v53 = v50(v48, 1, v51);
    v54 = v52;
    v55 = v96;
    v56 = v89;
    if (v53 != 1)
    {
      sub_2197940AC(v48, sub_2189AF700);
    }
  }

  else
  {
    v54 = v87;
    (*(v49 + 32))(v87, v48, v51);
    v55 = v96;
    v56 = v89;
  }

  (*(v49 + 32))(&v46[v56[5]], v54, v51);
  v57 = v76;
  if (v76 <= 1)
  {
    v57 = 1;
  }

  if (v106)
  {
    v57 = 1;
  }

  *&v46[v56[6]] = v57;
  v46[v56[7]] = v75 & 1;
  v58 = 0x4000000000000000;
  v59 = v74;
  if (v73)
  {
    v59 = 0x4000000000000000;
  }

  v60 = &v46[v56[8]];
  *v60 = v59;
  v60[8] = 0;
  if (!v71)
  {
    v58 = v72;
  }

  v61 = &v46[v56[9]];
  *v61 = v58;
  v61[8] = 0;
  v62 = v70;
  if (v69)
  {
    v62 = 0;
  }

  v63 = &v46[v56[10]];
  *v63 = v62;
  v63[8] = 0;
  v46[v56[11]] = (v33 == 2) | v33 & 1;
  v64 = v94;
  sub_219793A6C(v94, &v46[v56[12]], sub_219791D24);
  v65 = v46;
  if (v67)
  {
    v66 = v67;
  }

  else
  {
    v66 = MEMORY[0x277D84F90];
  }

  sub_2197940AC(v64, sub_219791D24);
  sub_2197940AC(v47, sub_2189AF700);
  sub_2197940AC(v93, sub_2189AF720);
  (*(v79 + 8))(v68, v80);
  *(v65 + v56[13]) = v66;
  sub_21979410C(v65, v90, type metadata accessor for ForYouTodayFeedGroupKnobs);
  return __swift_destroy_boxed_opaque_existential_1(v55);
}

uint64_t sub_2197930B8(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000017;
    v6 = 0x6972657473756C63;
    if (a1 != 8)
    {
      v6 = 0x626F6E4B746F6C73;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000014;
    if (a1 == 5)
    {
      v7 = 0x4165646172676564;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x73656C7572;
    v2 = 0xD000000000000010;
    v3 = 0xD00000000000001FLL;
    if (a1 != 3)
    {
      v3 = 0x656D695474736166;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6C6F6F706572;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_219793218(void *a1)
{
  v3 = v1;
  sub_219794608(0, &qword_280E8C520, sub_219793760, &type metadata for ForYouTodayFeedGroupKnobs.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219793760();
  sub_219BF7B44();
  LOBYTE(v13) = 0;
  sub_2189AE994(0);
  sub_2186DFEA8(&qword_280E91A30, sub_2189AE994, MEMORY[0x277D321A8]);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for ForYouTodayFeedGroupKnobs(0);
    LOBYTE(v13) = 1;
    sub_2189AE9B4(0);
    sub_2186DFEA8(&unk_280E91870, sub_2189AE9B4, MEMORY[0x277D32320]);
    sub_219BF7834();
    LOBYTE(v13) = 2;
    sub_219BF7824();
    LOBYTE(v13) = 3;
    sub_219BF7804();
    LOBYTE(v13) = 4;
    sub_219BF77B4();
    LOBYTE(v13) = 5;
    sub_219BF77B4();
    LOBYTE(v13) = 6;
    sub_219BF77B4();
    LOBYTE(v13) = 7;
    sub_219BF7804();
    LOBYTE(v13) = 8;
    type metadata accessor for ForYouTodayFeedGroupClusteringKnobs(0);
    sub_2186DFEA8(&qword_280E9D7D8, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs, &unk_219C75F5C);
    sub_219BF77E4();
    v13 = *(v3 + *(v10 + 52));
    v12[15] = 9;
    sub_2186DEFE0(0, &qword_280E8F0D8, &type metadata for ForYouTodayFeedGroupKnobs.SlotKnobs, MEMORY[0x277D83940]);
    sub_219793988(&qword_280E8F0D0, sub_2197937B4, MEMORY[0x277D83948]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21979368C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2197948A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2197936B4(uint64_t a1)
{
  v2 = sub_219793760();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2197936F0(uint64_t a1)
{
  v2 = sub_219793760();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_219793760()
{
  result = qword_280EBE570;
  if (!qword_280EBE570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBE570);
  }

  return result;
}

unint64_t sub_2197937B4()
{
  result = qword_280EBE580[0];
  if (!qword_280EBE580[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EBE580);
  }

  return result;
}

void sub_219793808(uint64_t a2@<X8>)
{
  v4 = *(v2 + *(type metadata accessor for ForYouTodayFeedGroupKnobs(0) + 52));
  v5 = *(v4 + 16);
  v13 = xmmword_219C14CF0;
  if (v5)
  {
    v6 = 0;
    v7 = (v4 + 80);
    while (v6 < *(v4 + 16))
    {
      v8 = *(v7 - 32);
      v9 = *(v7 - 3);
      v10 = *(v7 - 16);
      v11 = *(v7 - 1);
      v12 = *v7;
      v14 = *(v7 - 3);

      if (sub_219BEDB24())
      {
        v13 = v14;
        goto LABEL_9;
      }

      ++v6;
      v7 += 56;
      if (v5 == v6)
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
LABEL_9:
    *a2 = v13;
    *(a2 + 16) = v8;
    *(a2 + 24) = v9;
    *(a2 + 32) = v10;
    *(a2 + 40) = v11;
    *(a2 + 48) = v12;
  }
}

void sub_219793934(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_219793988(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_2186DEFE0(255, &qword_280E8F0D8, &type metadata for ForYouTodayFeedGroupKnobs.SlotKnobs, MEMORY[0x277D83940]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_219793A18()
{
  result = qword_280EBE578;
  if (!qword_280EBE578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBE578);
  }

  return result;
}

uint64_t sub_219793A6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL sub_219793AD4(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x21CEC48D0](*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v6 = *(a2 + 48);
  if ((*(a1 + 48) & 1) == 0)
  {
    if (*(a1 + 40) != *(a2 + 40))
    {
      v6 = 1;
    }

    return (v6 & 1) == 0;
  }

  return (*(a2 + 48) & 1) != 0;
}

uint64_t sub_219793B88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouTodayFeedGroupClusteringKnobs(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219791D24(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219794048(0);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TodayFeedServiceConfig(0);
  sub_2186DFEA8(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
  if ((sub_219BEE9F4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v39 = v5;
  v15 = type metadata accessor for ForYouTodayFeedGroupKnobs(0);
  if ((sub_219BEEC64() & 1) == 0 || *(a1 + v15[6]) != *(a2 + v15[6]) || *(a1 + v15[7]) != *(a2 + v15[7]))
  {
    goto LABEL_5;
  }

  v18 = v15[8];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 8);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*v19 != *v21)
    {
      LOBYTE(v22) = 1;
    }

    if (v22)
    {
      goto LABEL_5;
    }
  }

  v23 = v15[9];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 8);
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*v24 != *v26)
    {
      LOBYTE(v27) = 1;
    }

    if (v27)
    {
      goto LABEL_5;
    }
  }

  v28 = v15[10];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 8);
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*v29 != *v31)
    {
      LOBYTE(v32) = 1;
    }

    if (v32)
    {
      goto LABEL_5;
    }
  }

  if (*(a1 + v15[11]) == *(a2 + v15[11]))
  {
    v33 = v15[12];
    v34 = *(v12 + 48);
    sub_219793A6C(a1 + v33, v14, sub_219791D24);
    sub_219793A6C(a2 + v33, &v14[v34], sub_219791D24);
    v35 = *(v39 + 48);
    if (v35(v14, 1, v4) == 1)
    {
      if (v35(&v14[v34], 1, v4) == 1)
      {
        sub_2197940AC(v14, sub_219791D24);
LABEL_29:
        v16 = sub_219418444(*(a1 + v15[13]), *(a2 + v15[13]));
        return v16 & 1;
      }

      goto LABEL_32;
    }

    sub_219793A6C(v14, v10, sub_219791D24);
    if (v35(&v14[v34], 1, v4) == 1)
    {
      sub_2197940AC(v10, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
LABEL_32:
      v36 = sub_219794048;
LABEL_33:
      sub_2197940AC(v14, v36);
      goto LABEL_5;
    }

    sub_21979410C(&v14[v34], v7, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
    if ((MEMORY[0x21CEC6550](v10, v7) & 1) == 0)
    {
      sub_2197940AC(v7, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
      sub_2197940AC(v10, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
      v36 = sub_219791D24;
      goto LABEL_33;
    }

    v37 = MEMORY[0x21CEC6CC0](&v10[*(v4 + 20)], &v7[*(v4 + 20)]);
    sub_2197940AC(v7, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
    sub_2197940AC(v10, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
    sub_2197940AC(v14, sub_219791D24);
    if (v37)
    {
      goto LABEL_29;
    }
  }

LABEL_5:
  v16 = 0;
  return v16 & 1;
}

void sub_219794048(uint64_t a1)
{
  if (!qword_27CC1EFD8)
  {
    sub_219791D24(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1EFD8);
    }
  }
}

uint64_t sub_2197940AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21979410C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219794174(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746F6C73 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D695474736166 && a2 == 0xEB0000000074756FLL || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4165646172676564 && a2 == 0xEC00000072657466 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000219D35500 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2197942E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  sub_219794608(0, &qword_27CC1EFE0, sub_2197945B4, &type metadata for ForYouTodayFeedGroupKnobs.SlotKnobs.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197945B4();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v25;
  v29 = 0;
  sub_218968414();
  sub_219BF7734();
  v11 = v30;
  v28 = 1;
  v12 = sub_219BF76B4();
  v24 = v13;
  v14 = v12;
  v27 = 2;
  v15 = sub_219BF76B4();
  v23 = v16;
  v22 = v15;
  v26 = 3;
  v17 = sub_219BF76B4();
  v18 = v8;
  v20 = v19;
  (*(v9 + 8))(v18, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v10 = v11;
  *(v10 + 8) = v14;
  *(v10 + 16) = v24 & 1;
  *(v10 + 24) = v22;
  *(v10 + 32) = v23 & 1;
  *(v10 + 40) = v17;
  *(v10 + 48) = v20 & 1;
  return result;
}

unint64_t sub_2197945B4()
{
  result = qword_27CC1EFE8;
  if (!qword_27CC1EFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1EFE8);
  }

  return result;
}

void sub_219794608(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_219794694()
{
  result = qword_27CC1EFF8;
  if (!qword_27CC1EFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1EFF8);
  }

  return result;
}

unint64_t sub_2197946EC()
{
  result = qword_27CC1F000;
  if (!qword_27CC1F000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F000);
  }

  return result;
}

unint64_t sub_219794744()
{
  result = qword_27CC1F008;
  if (!qword_27CC1F008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F008);
  }

  return result;
}

unint64_t sub_21979479C()
{
  result = qword_27CC1F010;
  if (!qword_27CC1F010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F010);
  }

  return result;
}

unint64_t sub_2197947F4()
{
  result = qword_280EBE560;
  if (!qword_280EBE560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBE560);
  }

  return result;
}

unint64_t sub_21979484C()
{
  result = qword_280EBE568;
  if (!qword_280EBE568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBE568);
  }

  return result;
}

uint64_t sub_2197948A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F6F706572 && a2 == 0xE600000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCC90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000219CEBCB0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D695474736166 && a2 == 0xEB0000000074756FLL || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4165646172676564 && a2 == 0xEC00000072657466 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000219D35500 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219CF5000 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6972657473756C63 && a2 == 0xEF73626F6E4B676ELL || (sub_219BF78F4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x626F6E4B746F6C73 && a2 == 0xE900000000000073)
  {

    return 9;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_219794BE0(uint64_t a1)
{
  v2 = v1;
  sub_218F05538(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v54 = *(v4 - 8);
  v5 = *(v54 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v55 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v56 = &v47 - v7;
  v51 = sub_219BE22F4();
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_219BDB954();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F05538(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v47 - v15;
  if (qword_27CC08628 != -1)
  {
    swift_once();
  }

  v17 = sub_219BE5434();
  __swift_project_value_buffer(v17, qword_27CCD8BA0);
  (*(v14 + 16))(v16, a1, v13);
  v18 = sub_219BE5414();
  v19 = sub_219BF61F4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v49 = v5;
    v21 = v20;
    v22 = swift_slowAlloc();
    v48 = v2;
    v47 = v22;
    *&v65[0] = v22;
    *v21 = 136315138;
    sub_219BE2594();
    sub_219BE22A4();
    (*(v50 + 8))(v9, v51);
    sub_219795A50(&qword_27CC15940, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v23 = v53;
    v24 = sub_219BF7894();
    v26 = v25;
    (*(v52 + 8))(v11, v23);
    (*(v14 + 8))(v16, v13);
    v27 = sub_2186D1058(v24, v26, v65);

    *(v21 + 4) = v27;
    _os_log_impl(&dword_2186C1000, v18, v19, "Handling unsupported record URL: [%s]", v21, 0xCu);
    v28 = v47;
    __swift_destroy_boxed_opaque_existential_1(v47);
    v2 = v48;
    MEMORY[0x21CECF960](v28, -1, -1);
    v29 = v21;
    v5 = v49;
    MEMORY[0x21CECF960](v29, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v16, v13);
  }

  v30 = *(v2 + 24);
  v31 = swift_allocObject();
  *(v31 + 40) = &type metadata for AlertContentUnavailable;
  *(v31 + 48) = sub_2189F7CD8();
  *(v31 + 56) = 1;
  v32 = sub_219BDFA44();
  v33 = v56;
  (*(*(v32 - 8) + 56))(v56, 1, 1, v32);
  v66 = 0;
  memset(v65, 0, sizeof(v65));
  v64 = 0;
  memset(v63, 0, sizeof(v63));
  v62 = v30;
  sub_2187B1898(v63, &v58, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  if (*(&v59 + 1))
  {
    sub_21875F93C(&v58, v60);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v35 = qword_280ED32D8;
    v34 = qword_280ED32E0;
    v36 = qword_280ED32E8;

    sub_2188202A8(v34);
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  else
  {
    sub_218745CAC(&v58, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v35 = qword_280ED32D8;
    v34 = qword_280ED32E0;
    v36 = qword_280ED32E8;

    sub_2188202A8(v34);
  }

  v57 = v31;
  v59 = 0u;
  v58 = 0u;
  v37 = v55;
  sub_2187B1898(v33, v55, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218F05538);
  sub_2187B1898(v65, v60, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  v38 = (*(v54 + 80) + 24) & ~*(v54 + 80);
  v39 = (v5 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 47) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  sub_2189B4EAC(v37, v41 + v38);
  v42 = v41 + v39;
  v43 = v60[1];
  *v42 = v60[0];
  *(v42 + 16) = v43;
  *(v42 + 32) = v61;
  v44 = (v41 + v40);
  v45 = (v41 + ((v40 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v44 = 0;
  v44[1] = 0;
  *v45 = v35;
  v45[1] = v34;
  v45[2] = v36;

  sub_2188202A8(v34);
  sub_2186CF94C(0);
  sub_219795A50(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
  sub_219BEB464();

  sub_2187FABEC(v34, v36);
  sub_218745CAC(v63, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_218745CAC(v65, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218745CAC(v56, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218F05538);
  sub_218745CAC(&v58, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

  LOBYTE(v65[0]) = 1;
  sub_2186F8278(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2197957D0()
{
  v0 = sub_219BE26B4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE26A4();
  v4 = MEMORY[0x277D84560];
  sub_218F05538(0, &unk_280E8B6F0, sub_218A38BBC, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  v12 = xmmword_219C09BA0;
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x444964726F636572;
  *(inited + 40) = 0xE800000000000000;
  sub_218F05538(0, &unk_280E8C0A0, MEMORY[0x277D6CCB8], v4);
  v6 = sub_219BE26C4();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  result = swift_allocObject();
  *(result + 16) = v12;
  if ((*MEMORY[0x277D30A00] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    *(result + v8) = *MEMORY[0x277D30A00];
    (*(v7 + 104))(result + v8, *MEMORY[0x277D6CCB0], v6);
    *(inited + 48) = v10;
    sub_2194AE704(inited);
    swift_setDeallocating();
    sub_218F0559C(inited + 32);
    v11 = sub_219BE2694();

    (*(v1 + 8))(v3, v0);
    return v11;
  }

  return result;
}

uint64_t sub_219795A50(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_219795ADC(uint64_t a1)
{
  v1 = sub_219BF17D4();
  v3 = v2;
  if (v1 == sub_219BF17D4() && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_219BF78F4();
  }

  return v6 & 1;
}

uint64_t type metadata accessor for NameLogoMastheadView(uint64_t a1)
{
  result = qword_27CC1F048;
  if (!qword_27CC1F048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_219795C24(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = qword_27CC1F018;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v11 = qword_27CC1F020;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v12 = qword_27CC1F028;
  *&v4[v12] = [objc_allocWithZone(sub_219BEB3F4()) initWithFrame_];
  v13 = qword_27CC1F030;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v14 = qword_27CC1F038;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v15 = qword_27CC1F040;
  *&v4[v15] = [objc_allocWithZone(sub_219BEBF44()) initWithFrame_];
  v20.receiver = v4;
  v20.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  if (sub_219BED0C4())
  {
    v17 = qword_27CC1F020;
    [*&v16[qword_27CC1F020] addSubview_];
    [*&v16[v17] addSubview_];
    [*&v16[v17] addSubview_];
    [*&v16[v17] addSubview_];
    v18 = &v16[qword_27CC1F018];
    [*&v16[qword_27CC1F018] addSubview_];
  }

  else
  {
    [v16 addSubview_];
    [v16 addSubview_];
    [v16 addSubview_];
    v18 = &v16[qword_27CC1F040];
  }

  [v16 addSubview_];

  return v16;
}

void sub_219795EFC()
{
  v1 = *(v0 + qword_27CC1F040);
}

void sub_219795F7C(uint64_t a1)
{
  v2 = *(a1 + qword_27CC1F040);
}

void sub_219796010()
{
  v1 = qword_27CC1F018;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v2 = qword_27CC1F020;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v3 = qword_27CC1F028;
  *(v0 + v3) = [objc_allocWithZone(sub_219BEB3F4()) initWithFrame_];
  v4 = qword_27CC1F030;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v5 = qword_27CC1F038;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v6 = qword_27CC1F040;
  *(v0 + v6) = [objc_allocWithZone(sub_219BEBF44()) initWithFrame_];
  sub_219BF7514();
  __break(1u);
}

uint64_t sub_21979619C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 73))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 72);
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

uint64_t sub_2197961E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_219796254()
{
  v1 = 0x6C656E6E616863;
  if (*(v0 + 72) != 1)
  {
    v1 = 0x6369706F74;
  }

  if (*(v0 + 72))
  {
    return v1;
  }

  else
  {
    return 0x486567617373656DLL;
  }
}

uint64_t type metadata accessor for SearchPrewarmResult(uint64_t a1)
{
  result = qword_280ED0590;
  if (!qword_280ED0590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219796380(uint64_t a1)
{
  result = type metadata accessor for SearchResults(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_219796404(uint64_t a1)
{
  v23 = *(a1 + 16);
  if (!v23)
  {
    return;
  }

  v1 = 0;
  v22 = a1 + 32;
  v2 = MEMORY[0x277D84F90];
  while (1)
  {
    v3 = *(v22 + 8 * v1);
    v4 = v3 >> 62;
    if (v3 >> 62)
    {
      v5 = sub_219BF7214();
    }

    else
    {
      v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = v2 >> 62;
    if (v2 >> 62)
    {
      v21 = sub_219BF7214();
      v8 = v21 + v5;
      if (__OFADD__(v21, v5))
      {
LABEL_32:
        __break(1u);
        return;
      }
    }

    else
    {
      v7 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v8 = v7 + v5;
      if (__OFADD__(v7, v5))
      {
        goto LABEL_32;
      }
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v6)
      {
        v9 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v8 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_219BF7214();
      goto LABEL_15;
    }

    if (v6)
    {
      goto LABEL_14;
    }

LABEL_15:
    v2 = sub_219BF7364();
    v9 = v2 & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v10 = *(v9 + 16);
    v11 = *(v9 + 24);
    if (v4)
    {
      break;
    }

    v12 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v11 >> 1) - v10) < v5)
    {
      goto LABEL_35;
    }

    v25 = v2;
    v13 = v9 + 8 * v10 + 32;
    if (v4)
    {
      if (v12 < 1)
      {
        goto LABEL_37;
      }

      sub_2191FD124(0);
      sub_219798584(&qword_27CC1F0E8, sub_2191FD124, MEMORY[0x277D83988]);
      for (i = 0; i != v12; ++i)
      {
        v15 = sub_218A35350(v24, i, v3);
        v17 = *v16;

        (v15)(v24, 0);
        *(v13 + 8 * i) = v17;
      }
    }

    else
    {
      _s4ItemCMa_0();
      swift_arrayInitWithCopy();
    }

    v2 = v25;
    if (v5 >= 1)
    {
      v18 = *(v9 + 16);
      v19 = __OFADD__(v18, v5);
      v20 = v18 + v5;
      if (v19)
      {
        goto LABEL_36;
      }

      *(v9 + 16) = v20;
    }

LABEL_4:
    if (++v1 == v23)
    {
      return;
    }
  }

  v12 = sub_219BF7214();
  if (v12)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v5 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_2197966C4()
{
  v1 = [v0 representedElementKind];
  if (v1)
  {
    v2 = v1;
    v3 = sub_219BF5414();
    v5 = v4;

    if (v3 == 0x7265746F6F66 && v5 == 0xE600000000000000)
    {
    }

    else
    {
      v7 = sub_219BF78F4();

      if ((v7 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    [v0 frame];
    if (CGRectGetHeight(v11) <= 1.0)
    {
      return 0x6F74617261706573;
    }

    result = [v0 representedElementKind];
    if (result)
    {
      goto LABEL_8;
    }

    return result;
  }

LABEL_7:
  result = [v0 representedElementKind];
  if (result)
  {
LABEL_8:
    v9 = result;
    v10 = sub_219BF5414();

    return v10;
  }

  return result;
}

void *sub_2197967FC(void *a1, uint64_t a2, void *a3)
{
  i = v4;
  v181 = a3;
  v168 = a2;
  v167 = *v3;
  sub_218A98884(0);
  v174 = v7;
  v172 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v177 = &v163 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDC104();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v163 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197984BC(0);
  v171 = v13;
  MEMORY[0x28223BE20](v13);
  *&v173 = &v163 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A9DB94(0);
  v178 = v15;
  v170 = *(v15 - 8);
  *&v16 = MEMORY[0x28223BE20](v15).n128_u64[0];
  v18 = &v163 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 contentSize];
  v20 = v19;
  v22 = v21;
  v23 = &selRef_boldSystemFontOfSize_;
  v182 = a1;
  v24 = [a1 collectionViewLayout];
  v25 = [v24 layoutAttributesForElementsInRect_];

  if (!v25)
  {
    goto LABEL_22;
  }

  v176 = sub_218B72B54();
  v26 = sub_219BF5924();

  if (v26 >> 62)
  {
    goto LABEL_126;
  }

  v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v166 = v10;
  v163 = v12;
  v164 = v9;
  v165 = i;
  v179 = v27;
  v180 = v26;
  if (v27)
  {
    v23 = 0;
    v175 = (v26 & 0xC000000000000001);
    v28 = v26 & 0xFFFFFFFFFFFFFF8;
    v9 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v175)
      {
        v36 = MEMORY[0x21CECE0F0](v23, v180);
        v10 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v23 >= *(v28 + 16))
        {
          goto LABEL_117;
        }

        v36 = *(v180 + 8 * v23 + 32);
        v10 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          if (qword_280E8D8A0 != -1)
          {
            swift_once();
          }

          v180 = qword_280F61768;
          LODWORD(v179) = sub_219BF61F4();
          sub_2186F20D4(0);
          v44 = swift_allocObject();
          *(v44 + 16) = xmmword_219C09EC0;
          v188 = 0;
          v189 = 0xE000000000000000;
          v184 = 0;
          v185 = 0;
          v186 = v20;
          v187 = v22;
          type metadata accessor for CGRect(0);
          sub_219BF7484();
          v45 = v188;
          v46 = v189;
          v47 = MEMORY[0x277D837D0];
          *(v44 + 56) = MEMORY[0x277D837D0];
          v48 = sub_2186FC3BC();
          *(v44 + 64) = v48;
          *(v44 + 32) = v45;
          *(v44 + 40) = v46;
          v49 = v182;
          v50 = [v182 *(v23 + 1056)];
          v51 = [v50 description];
          v52 = sub_219BF5414();
          v53 = v23;
          v55 = v54;

          *(v44 + 96) = v47;
          *(v44 + 104) = v48;
          *(v44 + 72) = v52;
          *(v44 + 80) = v55;
          sub_219BE5314("AudioPlaylistFeedAnimator.Snapshot Failed to get layout attributes for %{public} in %{public}@", 94, 2, &dword_2186C1000, v180, v179, v44);

          v56 = [v49 (v53 + 3914)];
          sub_219798530();
          swift_allocError();
          *(v57 + 8) = 0;
          *(v57 + 16) = 0;
          *v57 = v56;
          *(v57 + 24) = v20;
          *(v57 + 32) = v22;
          *(v57 + 40) = 0;
          swift_willThrow();

          sub_218A6C9A4(0);
          (*(*(v58 - 8) + 8))(v168, v58);
          v59 = v169;
          goto LABEL_114;
        }
      }

      i = v36;
      v37 = [i indexPath];
      sub_219BDC0B4();

      v38 = [i representedElementKind];
      if (!v38)
      {
        break;
      }

      v12 = v38;
      v39 = sub_219BF5414();
      v41 = v40;

      if (v39 == 0x7265746F6F66 && v41 == 0xE600000000000000)
      {
      }

      else
      {
        v42 = sub_219BF78F4();

        if ((v42 & 1) == 0)
        {
          break;
        }
      }

      v30 = sub_2197966C4();
      v32 = v43;

LABEL_8:
      v33 = (v18 + *(v178 + 52));
      *v33 = v30;
      v33[1] = v32;
      [i copy];
      sub_219BF70B4();
      swift_unknownObjectRelease();
      swift_dynamicCast();
      v34 = v188;
      [i frame];
      [v181 convertRect:v182 fromCoordinateSpace:?];
      [v34 setFrame_];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v184 = v9;
      v26 = &v184;
      sub_21948C0B4(v34, v18, isUniquelyReferenced_nonNull_native);
      sub_2197985CC(v18, sub_218A9DB94);

      v9 = v184;
      ++v23;
      if (v10 == v179)
      {
        goto LABEL_26;
      }
    }

    v29 = [i representedElementKind];
    if (v29)
    {
      v12 = v29;
      v30 = sub_219BF5414();
      v32 = v31;
    }

    else
    {

      v30 = 0;
      v32 = 0;
    }

    goto LABEL_8;
  }

  v9 = MEMORY[0x277D84F98];
LABEL_26:
  v169[2] = v9;
  v12 = v9 + 64;
  v60 = 1 << *(v9 + 32);
  v61 = -1;
  if (v60 < 64)
  {
    v61 = ~(-1 << v60);
  }

  v62 = v61 & *(v9 + 64);
  v10 = (v60 + 63) >> 6;
  v175 = (v166 + 8);
  swift_bridgeObjectRetain_n();
  v63 = 0;
  v18 = MEMORY[0x277D84F90];
  for (i = MEMORY[0x277D84F90]; v62; *(i + 8 * v26 + 32) = v166)
  {
LABEL_35:
    while (1)
    {
      v66 = __clz(__rbit64(v62));
      v62 &= v62 - 1;
      v67 = v66 | (v63 << 6);
      v26 = v173;
      sub_21979862C(*(v9 + 48) + *(v170 + 72) * v67, v173, sub_218A9DB94);
      v68 = *(*(v9 + 56) + 8 * v67);
      *(v26 + *(v171 + 48)) = v68;
      v69 = (v26 + *(v178 + 52));
      v70 = v69[1];
      if (v70)
      {
        v71 = *v69 == 0x7265746F6F66 && v70 == 0xE600000000000000;
        if (v71 || (sub_219BF78F4() & 1) != 0)
        {
          break;
        }
      }

      v64 = v68;
      sub_2197985CC(v173, sub_2197984BC);
      if (!v62)
      {
        goto LABEL_31;
      }
    }

    v72 = [v68 indexPath];
    v73 = v163;
    sub_219BDC0B4();

    v74 = sub_219BDC0F4();
    (*v175)(v73, v164);
    sub_2197985CC(v173, sub_2197984BC);
    v75 = swift_isUniquelyReferenced_nonNull_native();
    v166 = v74;
    if ((v75 & 1) == 0)
    {
      i = sub_2191F72E0(0, *(i + 16) + 1, 1, i);
    }

    v26 = *(i + 16);
    v76 = *(i + 24);
    if (v26 >= v76 >> 1)
    {
      i = sub_2191F72E0((v76 > 1), v26 + 1, 1, i);
    }

    *(i + 16) = v26 + 1;
  }

  while (1)
  {
LABEL_31:
    v65 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
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
      v27 = sub_219BF7214();
      goto LABEL_4;
    }

    if (v65 >= v10)
    {
      break;
    }

    v62 = *(v12 + 8 * v65);
    ++v63;
    if (v62)
    {
      v63 = v65;
      goto LABEL_35;
    }
  }

  v77 = v169;
  v169[4] = i;
  if (qword_280E8D8A0 != -1)
  {
    swift_once();
  }

  v78 = qword_280F61768;
  i = sub_219BF6214();
  sub_2186F20D4(0);
  v175 = v79;
  v80 = swift_allocObject();
  v173 = xmmword_219C09EC0;
  *(v80 + 16) = xmmword_219C09EC0;
  v184 = *(v77[2] + 16);
  v81 = sub_219BF7894();
  v83 = v82;
  v84 = MEMORY[0x277D837D0];
  *(v80 + 56) = MEMORY[0x277D837D0];
  v85 = sub_2186FC3BC();
  *(v80 + 64) = v85;
  *(v80 + 32) = v81;
  *(v80 + 40) = v83;
  sub_2194B5978();

  v86 = sub_219BF5224();
  v12 = v87;

  *(v80 + 96) = v84;
  *(v80 + 104) = v85;
  v176 = v85;
  *(v80 + 72) = v86;
  *(v80 + 80) = v12;
  v178 = v78;
  sub_219BE5314("AudioPlaylistFeedAnimator.Snapshot Got %{public}@ layouts attributes %{public}@", 79, 2, &dword_2186C1000, v78, i, v80);

  v184 = v18;
  v88 = v165;
  v26 = v179;
  if (v179)
  {
    v89 = 0;
    v9 = v180;
    v18 = v180 & 0xC000000000000001;
    v12 = v180 & 0xFFFFFFFFFFFFFF8;
    v10 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
    do
    {
      if (v18)
      {
        v90 = MEMORY[0x21CECE0F0](v89, v9);
      }

      else
      {
        if (v89 >= *(v12 + 16))
        {
          goto LABEL_119;
        }

        v90 = *(v9 + 8 * v89 + 32);
      }

      i = v90;
      v91 = v89 + 1;
      if (__OFADD__(v89, 1))
      {
        goto LABEL_118;
      }

      [v90 frame];
      v20 = v92;
      v22 = v93;
      v95 = v94;
      v97 = v96;
      [v182 bounds];
      v192.origin.x = v98;
      v192.origin.y = v99;
      v192.size.width = v100;
      v192.size.height = v101;
      v191.origin.x = v20;
      v191.origin.y = v22;
      v191.size.width = v95;
      v191.size.height = v97;
      if (CGRectIntersectsRect(v191, v192))
      {
        sub_219BF73D4();
        sub_219BF7414();
        v9 = v180;
        sub_219BF7424();
        sub_219BF73E4();
        v26 = v179;
      }

      else
      {
      }

      ++v89;
    }

    while (v91 != v26);
    v18 = v184;
  }

  else
  {
    v9 = v180;
  }

  if (v18 < 0 || (v18 & 0x4000000000000000) != 0)
  {
    v102 = sub_219BF7214();
  }

  else
  {
    v102 = *(v18 + 16);
  }

  i = 0;
  v10 = v18 & 0xC000000000000001;
  v26 = MEMORY[0x277D84F90];
  while (v102 != i)
  {
    if (v10)
    {
      v103 = MEMORY[0x21CECE0F0](i, v18);
    }

    else
    {
      if (i >= *(v18 + 16))
      {
        goto LABEL_121;
      }

      v103 = *(v18 + 8 * i + 32);
    }

    v12 = v103;
    v104 = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_120;
    }

    v105 = sub_219A34608(v103, v182, v181);
    if (v88)
    {

      v190 = v88;
      v126 = v88;
      sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
      v127 = swift_dynamicCast();
      v59 = v169;
      if ((v127 & 1) == 0)
      {
        goto LABEL_107;
      }

      v128 = v189;

      switch(v128)
      {
        case 3:
          v155 = sub_219BF61F4();
          v156 = swift_allocObject();
          *(v156 + 16) = xmmword_219C09BA0;
          v184 = 0;
          v185 = 0xE000000000000000;
          v183 = v88;
          sub_219BF7484();
          v157 = v184;
          v158 = v185;
          v159 = v176;
          *(v156 + 56) = MEMORY[0x277D837D0];
          *(v156 + 64) = v159;
          *(v156 + 32) = v157;
          *(v156 + 40) = v158;
          sub_219BE5314("AudioPlaylistFeedAnimator Found an unexpected configured header %{public}@", 74, 2, &dword_2186C1000, v178, v155, v156, v163);
          break;
        case 2:
          v150 = sub_219BF61F4();
          v151 = swift_allocObject();
          *(v151 + 16) = xmmword_219C09BA0;
          v184 = 0;
          v185 = 0xE000000000000000;
          v183 = v88;
          sub_219BF7484();
          v152 = v184;
          v153 = v185;
          v154 = v176;
          *(v151 + 56) = MEMORY[0x277D837D0];
          *(v151 + 64) = v154;
          *(v151 + 32) = v152;
          *(v151 + 40) = v153;
          sub_219BE5314("AudioPlaylistFeedAnimator Failed to get a snapshot of a view given its layout attributes %{public}@", 99, 2, &dword_2186C1000, v178, v150, v151, v163);
          break;
        case 0:
          v129 = sub_219BF61F4();
          v130 = swift_allocObject();
          *(v130 + 16) = xmmword_219C09BA0;
          v184 = 0;
          v185 = 0xE000000000000000;
          v183 = v88;
          sub_219BF7484();
          v131 = v184;
          v132 = v185;
          v133 = v176;
          *(v130 + 56) = MEMORY[0x277D837D0];
          *(v130 + 64) = v133;
          *(v130 + 32) = v131;
          *(v130 + 40) = v132;
          sub_219BE5314("AudioPlaylistFeedAnimator Failed to lookup a view for some layout attributes %{public}@", 87, 2, &dword_2186C1000, v178, v129, v130, v163);
          break;
        default:
LABEL_107:

          v134 = sub_219BF61F4();
          v135 = swift_allocObject();
          *(v135 + 16) = xmmword_219C09BA0;
          v184 = 0;
          v185 = 0xE000000000000000;
          v188 = v88;
          sub_219BF7484();
          v136 = v184;
          v137 = v185;
          v138 = v176;
          *(v135 + 56) = MEMORY[0x277D837D0];
          *(v135 + 64) = v138;
          *(v135 + 32) = v136;
          *(v135 + 40) = v137;
          sub_219BE5314("AudioPlaylistFeedAnimator Failed to make snapshot %{public}@", 60, 2, &dword_2186C1000, v178, v134, v135);

LABEL_113:
          sub_219798530();
          swift_allocError();
          *v160 = v88;
          *(v160 + 8) = 0u;
          *(v160 + 24) = 0u;
          *(v160 + 40) = 1;
          swift_willThrow();

          sub_218A6C9A4(0);
          (*(*(v161 - 8) + 8))(v168, v161);

LABEL_114:
          swift_deallocPartialClassInstance();
          return v59;
      }

      goto LABEL_113;
    }

    v9 = v105;

    ++i;
    if (v9)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_2191F7194(0, *(v26 + 16) + 1, 1, v26);
      }

      v12 = *(v26 + 16);
      v106 = *(v26 + 24);
      if (v12 >= v106 >> 1)
      {
        v26 = sub_2191F7194((v106 > 1), v12 + 1, 1, v26);
      }

      *(v26 + 16) = v12 + 1;
      *(v26 + 8 * v12 + 32) = v9;
      i = v104;
    }
  }

  sub_219796404(v26);
  v108 = v88;
  if (v88)
  {
    goto LABEL_129;
  }

  v9 = v107;

  if (v9 >> 62)
  {
    v18 = sub_219BF7214();
  }

  else
  {
    v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v171 = 0;
  if (!v18)
  {
    v26 = MEMORY[0x277D84F98];
LABEL_109:

    v139 = v169;
    v169[3] = v26;
    v140 = sub_219BF6214();
    v141 = swift_allocObject();
    *(v141 + 16) = v173;
    v184 = *(v139[3] + 16);
    v142 = sub_219BF7894();
    v143 = MEMORY[0x277D837D0];
    v144 = v176;
    *(v141 + 56) = MEMORY[0x277D837D0];
    *(v141 + 64) = v144;
    *(v141 + 32) = v142;
    *(v141 + 40) = v145;
    _s4ItemCMa_0();
    sub_218A98990();
    v146 = sub_219BF5224();
    *(v141 + 96) = v143;
    *(v141 + 104) = v144;
    *(v141 + 72) = v146;
    *(v141 + 80) = v147;
    v148 = v140;
    v59 = v139;
    sub_219BE5314("AudioPlaylistFeedAnimator.Snapshot Got %{public}@ onScreenItems %{public}@", 74, 2, &dword_2186C1000, v178, v148, v141);

    sub_218A6C9A4(0);
    (*(*(v149 - 8) + 8))(v168, v149);
    return v59;
  }

  i = 0;
  v179 = v9 & 0xFFFFFFFFFFFFFF8;
  v180 = v9 & 0xC000000000000001;
  v26 = MEMORY[0x277D84F98];
  while (2)
  {
    if (v180)
    {
      v12 = MEMORY[0x21CECE0F0](i, v9);
      v110 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_122;
      }
    }

    else
    {
      if (i >= *(v179 + 16))
      {
        goto LABEL_123;
      }

      v12 = *(v9 + 8 * i + 32);

      v110 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_122;
      }
    }

    v111 = *(v12 + 40);

    v112 = [v111 indexPath];
    v108 = v177;
    sub_219BDC0B4();

    v10 = *(v12 + 24);

    v108[*(v174 + 52)] = v10;

    v113 = swift_isUniquelyReferenced_nonNull_native();
    v184 = v26;
    v114 = sub_21931EADC(v108);
    v116 = *(v26 + 16);
    v117 = (v115 & 1) == 0;
    v118 = __OFADD__(v116, v117);
    v119 = v116 + v117;
    if (v118)
    {
      goto LABEL_124;
    }

    v120 = v115;
    if (*(v26 + 24) >= v119)
    {
      if ((v113 & 1) == 0)
      {
        v125 = v114;
        sub_219491034();
        v114 = v125;
        v26 = v184;
        if ((v120 & 1) == 0)
        {
          goto LABEL_95;
        }

        goto LABEL_84;
      }

LABEL_94:
      v26 = v184;
      if ((v120 & 1) == 0)
      {
LABEL_95:
        *(v26 + 8 * (v114 >> 6) + 64) |= 1 << v114;
        v10 = v114;
        v122 = v177;
        sub_21979862C(v177, *(v26 + 48) + *(v172 + 72) * v114, sub_218A98884);
        *(*(v26 + 56) + 8 * v10) = v12;

        sub_2197985CC(v122, sub_218A98884);
        v123 = *(v26 + 16);
        v118 = __OFADD__(v123, 1);
        v124 = v123 + 1;
        if (v118)
        {
          goto LABEL_125;
        }

        *(v26 + 16) = v124;
        goto LABEL_85;
      }

LABEL_84:
      v109 = *(v26 + 56);
      v10 = *(v109 + 8 * v114);
      *(v109 + 8 * v114) = v12;

      sub_2197985CC(v177, sub_218A98884);
LABEL_85:
      ++i;
      if (v110 == v18)
      {
        goto LABEL_109;
      }

      continue;
    }

    break;
  }

  sub_21947F2AC(v119, v113);
  v114 = sub_21931EADC(v177);
  if ((v120 & 1) == (v121 & 1))
  {
    goto LABEL_94;
  }

  sub_219BF79A4();
  __break(1u);
LABEL_129:

  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_219797CFC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_219797D68(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_219797DF4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_219797FD0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t sub_2197982C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (sub_219BF53A4())
  {
    v14[0] = a5;
    v14[1] = a6;
    v14[2] = a9;
    v14[3] = a10;
    type metadata accessor for KeyPair(0, v14);
    v12 = sub_219BF53A4();
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_2197983D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_219BF7AA4();
  sub_219BF52F4();
  sub_219BF52F4();
  return sub_219BF7AE4();
}

uint64_t sub_219798464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 16);
  v4 = *(a3 - 8);
  sub_219BF7AA4();
  sub_219798388(v7, a2, v4, v5);
  return sub_219BF7AE4();
}

void sub_2197984BC(uint64_t a1)
{
  if (!qword_27CC1F0D8)
  {
    sub_218A9DB94(255);
    sub_218B72B54();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1F0D8);
    }
  }
}

unint64_t sub_219798530()
{
  result = qword_27CC1F0E0;
  if (!qword_27CC1F0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F0E0);
  }

  return result;
}

uint64_t sub_219798584(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2197985CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21979862C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2197986A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2197986E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

void sub_219798754(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = [v1 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 < 2)
  {
    v15.receiver = v1;
    v15.super_class = ObjectType;
    v6 = objc_msgSendSuper2(&v15, sel_popToRootViewControllerAnimated_, a1 & 1);
    if (!v6)
    {
      return;
    }

    goto LABEL_17;
  }

  if (v5 == 2)
  {
    if ((*(v1 + qword_280EA07E8) & 1) == 0)
    {
      v16.receiver = v1;
      v16.super_class = ObjectType;
      v6 = objc_msgSendSuper2(&v16, sel_popToRootViewControllerAnimated_, a1 & 1);
      if (!v6)
      {
        return;
      }

      goto LABEL_17;
    }

    v7 = [v1 viewControllers];
    sub_218805E54();
    v8 = sub_219BF5924();

    if (v8 >> 62)
    {
      v9 = sub_219BF7214();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9 >= 3)
    {
      v10 = [v1 viewControllers];
      v11 = sub_219BF5924();

      if ((v11 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x21CECE0F0](1, v11);
      }

      else
      {
        if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
          __break(1u);
          return;
        }

        v12 = *(v11 + 40);
      }

      v13 = v12;

      sub_219798980(v13, a1 & 1);
    }
  }

  else
  {
    v17.receiver = v1;
    v17.super_class = ObjectType;
    v6 = objc_msgSendSuper2(&v17, sel_popToRootViewControllerAnimated_, a1 & 1);
    if (v6)
    {
LABEL_17:
      v14 = v6;
      sub_218805E54();
      sub_219BF5924();
    }
  }
}

id sub_219798980(uint64_t a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = [v3 traitCollection];
  v8 = [v7 horizontalSizeClass];

  if (v8 < 2)
  {
    v12.receiver = v3;
    v12.super_class = ObjectType;
    result = objc_msgSendSuper2(&v12, sel_popToViewController_animated_, a1, a2 & 1);
    if (!result)
    {
      return result;
    }

    goto LABEL_13;
  }

  if (v8 != 2)
  {
    v15.receiver = v3;
    v15.super_class = ObjectType;
    result = objc_msgSendSuper2(&v15, sel_popToViewController_animated_, a1, a2 & 1);
    if (!result)
    {
      return result;
    }

LABEL_13:
    v10 = result;
    sub_218805E54();
    v11 = sub_219BF5924();

    return v11;
  }

  if ((v3[qword_280EA07E8] & 1) == 0)
  {
    v13.receiver = v3;
    v13.super_class = ObjectType;
    result = objc_msgSendSuper2(&v13, sel_popToViewController_animated_, a1, a2 & 1);
    if (!result)
    {
      return result;
    }

    goto LABEL_13;
  }

  if (*&v3[qword_280EA07F0] == a1)
  {
    return MEMORY[0x277D84F90];
  }

  v14.receiver = v3;
  v14.super_class = ObjectType;
  result = objc_msgSendSuper2(&v14, sel_popToViewController_animated_, a1, a2 & 1);
  if (result)
  {
    goto LABEL_13;
  }

  return result;
}

id sub_219798B08()
{
  result = [v0 tabBarController];
  if (result)
  {
    v2 = result;
    v3 = [result selectedViewController];

    if (v3)
    {

      if (v3 == v0)
      {
        v4 = [v0 topViewController];
        if (v4)
        {
          v5 = v4;
          sub_2186CFDE4(0, &qword_280EE44A0, MEMORY[0x277D6E610]);
          sub_219BF6584();

          if (*(&v8 + 1))
          {
            sub_219799AD8();
            if (swift_dynamicCast())
            {
              return v6;
            }

            else
            {
              return 0;
            }
          }
        }

        else
        {
          v9 = 0;
          v7 = 0u;
          v8 = 0u;
        }

        sub_219799A14(&v7);
      }
    }

    return 0;
  }

  return result;
}