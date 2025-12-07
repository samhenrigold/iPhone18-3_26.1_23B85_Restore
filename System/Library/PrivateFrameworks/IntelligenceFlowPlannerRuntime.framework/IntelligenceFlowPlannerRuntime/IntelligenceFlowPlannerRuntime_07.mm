uint64_t PlanPostProcessor.init(toolbox:planStatements:sessionState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = MEMORY[0x277D84F98];
  v8 = type metadata accessor for PlanPostProcessor(0);
  v9 = v8[5];
  v10 = sub_22C908AEC();
  sub_22C3699C8();
  v12 = v11;
  (*(v11 + 16))(&a4[v9], a1, v10);
  *&a4[v8[8]] = a2;
  v13 = v8[6];
  v14 = sub_22C9087BC();
  sub_22C3699C8();
  v16 = v15;
  (*(v15 + 16))(&a4[v13], a3, v14);
  v17 = &a4[v8[7]];
  sub_22C90878C();
  sub_22C901FAC();
  sub_22C908C5C();
  sub_22C4208F4(&qword_2814357B0, MEMORY[0x277D1C338], MEMORY[0x277D1C348]);
  v18 = sub_22C909F0C();
  (*(v16 + 8))(a3, v14);
  (*(v12 + 8))(a1, v10);
  result = type metadata accessor for TranscriptValueFetcher(0);
  *&v17[*(result + 20)] = v18;
  return result;
}

uint64_t PlanPostProcessor.process()()
{
  v2 = v0;
  v3 = *(v0 + *(type metadata accessor for PlanPostProcessor(0) + 32));
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  v6 = sub_22C408E64(v3, KeyPath, v5);

  if (v1)
  {
    sub_22C371664();
    return v3;
  }

  else
  {
    sub_22C407CD4(v6, v2);
    v8 = v7;

    v21 = v8;

    sub_22C41DC30(&v21);

    v10 = v21;
    v11 = *(v21 + 16);
    v12 = MEMORY[0x277D84F90];
    if (v11)
    {
      v21 = MEMORY[0x277D84F90];
      sub_22C3B6E5C(0, v11, 0);
      v13 = 40;
      v14 = v21;
      do
      {
        v15 = *(v10 + v13);
        v21 = v14;
        v16 = *(v14 + 16);
        v17 = *(v14 + 24);

        if (v16 >= v17 >> 1)
        {
          sub_22C3B6E5C(v17 > 1, v16 + 1, 1);
          v14 = v21;
        }

        *(v14 + 16) = v16 + 1;
        *(v14 + 8 * v16 + 32) = v15;
        v13 += 16;
        --v11;
      }

      while (v11);

      v12 = MEMORY[0x277D84F90];
    }

    else
    {

      v14 = MEMORY[0x277D84F90];
    }

    v18 = 0;
    v21 = v12;
    v19 = *(v14 + 16);
    while (1)
    {
      if (v19 == v18)
      {

        v3 = v21;
        sub_22C371664();
        return v3;
      }

      if (v18 >= *(v14 + 16))
      {
        break;
      }

      v20 = v18 + 1;

      sub_22C3CD9A4();
      v18 = v20;
    }

    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t sub_22C40A56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  sub_22C369824();
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_22C40A630(uint64_t a1)
{
  v848 = sub_22C906FBC();
  v847 = *(v848 - 8);
  MEMORY[0x28223BE20](v848);
  v903 = &v837 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v869 = sub_22C90731C();
  v868 = *(v869 - 8);
  MEMORY[0x28223BE20](v869);
  v927 = &v837 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v987 = sub_22C906DDC();
  v995 = *(v987 - 8);
  MEMORY[0x28223BE20](v987);
  v986 = &v837 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1003 = sub_22C906FFC();
  v1002 = *(v1003 - 1);
  MEMORY[0x28223BE20](v1003);
  v1001 = &v837 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v972 = sub_22C9083DC();
  v971 = *(v972 - 8);
  MEMORY[0x28223BE20](v972);
  v975 = &v837 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v978 = sub_22C906D7C();
  v988 = *(v978 - 8);
  MEMORY[0x28223BE20](v978);
  v980 = &v837 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C3A5908(&qword_27D9BC068, &qword_22C920590);
  MEMORY[0x28223BE20](v8 - 8);
  v947 = &v837 - v9;
  v957 = sub_22C9088CC();
  v939 = *(v957 - 8);
  MEMORY[0x28223BE20](v957);
  v938 = &v837 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v994 = sub_22C90880C();
  v997 = *(v994 - 8);
  MEMORY[0x28223BE20](v994);
  v993 = &v837 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v887 = sub_22C90734C();
  v886 = *(v887 - 8);
  MEMORY[0x28223BE20](v887);
  v885 = &v837 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v970 = type metadata accessor for PlanPostProcessor.ImplicitSearchRequest(0);
  v13 = MEMORY[0x28223BE20](v970);
  v950 = (&v837 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v936 = (&v837 - v15);
  v1008 = type metadata accessor for PlanPostProcessor(0);
  v16 = MEMORY[0x28223BE20](v1008);
  v949 = &v837 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v935 = &v837 - v18;
  v19 = sub_22C3A5908(&qword_27D9BC070, &qword_22C911F30);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v851 = &v837 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v839 = &v837 - v23;
  MEMORY[0x28223BE20](v22);
  v900 = &v837 - v24;
  v954 = sub_22C9063DC();
  v953 = *(v954 - 8);
  v25 = MEMORY[0x28223BE20](v954);
  v894 = &v837 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v959 = &v837 - v28;
  MEMORY[0x28223BE20](v27);
  v866 = &v837 - v29;
  v30 = sub_22C90700C();
  MEMORY[0x28223BE20](v30 - 8);
  v955 = &v837 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v922 = sub_22C90827C();
  v923 = *(v922 - 8);
  v32 = MEMORY[0x28223BE20](v922);
  v920 = &v837 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v840 = &v837 - v34;
  v1010 = sub_22C90941C();
  v1004 = *(v1010 - 8);
  v35 = MEMORY[0x28223BE20](v1010);
  v990 = &v837 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v890 = &v837 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v850 = &v837 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v849 = &v837 - v42;
  MEMORY[0x28223BE20](v41);
  v841 = &v837 - v43;
  v44 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  v45 = MEMORY[0x28223BE20](v44 - 8);
  v979 = &v837 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v893 = &v837 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v967 = &v837 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v969 = &v837 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v984 = &v837 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v985 = &v837 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v966 = &v837 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v968 = &v837 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v867 = &v837 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v889 = &v837 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v888 = &v837 - v66;
  MEMORY[0x28223BE20](v65);
  v909 = &v837 - v67;
  v1023 = type metadata accessor for PlanPostProcessor.ExpressionContext(0);
  v1016 = *(v1023 - 1);
  v68 = MEMORY[0x28223BE20](v1023);
  v921 = &v837 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = MEMORY[0x28223BE20](v68);
  v902 = &v837 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v842 = &v837 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v951 = &v837 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v926 = &v837 - v77;
  v78 = MEMORY[0x28223BE20](v76);
  v854 = &v837 - v79;
  v80 = MEMORY[0x28223BE20](v78);
  v965 = &v837 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v983 = &v837 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v883 = &v837 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v884 = &v837 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v880 = &v837 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v881 = &v837 - v91;
  v92 = MEMORY[0x28223BE20](v90);
  v952 = &v837 - v93;
  v94 = MEMORY[0x28223BE20](v92);
  v1013 = (&v837 - v95);
  v96 = MEMORY[0x28223BE20](v94);
  v864 = &v837 - v97;
  v98 = MEMORY[0x28223BE20](v96);
  v991 = (&v837 - v99);
  v100 = MEMORY[0x28223BE20](v98);
  v1029 = (&v837 - v101);
  v102 = MEMORY[0x28223BE20](v100);
  v943 = &v837 - v103;
  v104 = MEMORY[0x28223BE20](v102);
  *&v1021 = &v837 - v105;
  v106 = MEMORY[0x28223BE20](v104);
  v996 = &v837 - v107;
  v108 = MEMORY[0x28223BE20](v106);
  v1011 = &v837 - v109;
  MEMORY[0x28223BE20](v108);
  v904 = &v837 - v110;
  v111 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v112 = MEMORY[0x28223BE20](v111 - 8);
  v944 = &v837 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = MEMORY[0x28223BE20](v112);
  v941 = &v837 - v115;
  v116 = MEMORY[0x28223BE20](v114);
  v946 = &v837 - v117;
  v118 = MEMORY[0x28223BE20](v116);
  v940 = &v837 - v119;
  v120 = MEMORY[0x28223BE20](v118);
  v875 = &v837 - v121;
  v122 = MEMORY[0x28223BE20](v120);
  v982 = &v837 - v123;
  MEMORY[0x28223BE20](v122);
  v865 = &v837 - v124;
  v125 = sub_22C9070DC();
  v126 = *(v125 - 1);
  v1019 = v125;
  v1020 = v126;
  v127 = MEMORY[0x28223BE20](v125);
  v945 = &v837 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = MEMORY[0x28223BE20](v127);
  v932 = &v837 - v130;
  v131 = MEMORY[0x28223BE20](v129);
  v873 = &v837 - v132;
  v133 = MEMORY[0x28223BE20](v131);
  v910 = &v837 - v134;
  v135 = MEMORY[0x28223BE20](v133);
  v853 = &v837 - v136;
  v137 = MEMORY[0x28223BE20](v135);
  v999 = &v837 - v138;
  v139 = MEMORY[0x28223BE20](v137);
  v977 = &v837 - v140;
  v141 = MEMORY[0x28223BE20](v139);
  v961 = &v837 - v142;
  v143 = MEMORY[0x28223BE20](v141);
  v942 = &v837 - v144;
  v145 = MEMORY[0x28223BE20](v143);
  v838 = &v837 - v146;
  v147 = MEMORY[0x28223BE20](v145);
  v871 = &v837 - v148;
  MEMORY[0x28223BE20](v147);
  v845 = &v837 - v149;
  v150 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  v151 = MEMORY[0x28223BE20](v150 - 8);
  v895 = &v837 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = MEMORY[0x28223BE20](v151);
  v878 = &v837 - v154;
  MEMORY[0x28223BE20](v153);
  v933 = &v837 - v155;
  v976 = sub_22C90832C();
  v962 = *(v976 - 8);
  v156 = MEMORY[0x28223BE20](v976);
  v974 = &v837 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = MEMORY[0x28223BE20](v156);
  v929 = &v837 - v159;
  MEMORY[0x28223BE20](v158);
  v919 = &v837 - v160;
  v989 = sub_22C90769C();
  v992 = *(v989 - 8);
  v161 = MEMORY[0x28223BE20](v989);
  v899 = &v837 - ((v162 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = MEMORY[0x28223BE20](v161);
  v956 = &v837 - v164;
  v165 = MEMORY[0x28223BE20](v163);
  v908 = &v837 - v166;
  v167 = MEMORY[0x28223BE20](v165);
  v958 = &v837 - v168;
  MEMORY[0x28223BE20](v167);
  v917 = &v837 - v169;
  v931 = sub_22C906ACC();
  v930 = *(v931 - 8);
  v170 = MEMORY[0x28223BE20](v931);
  v898 = &v837 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v170);
  v915 = &v837 - v172;
  v1022 = sub_22C90654C();
  v1018 = *(v1022 - 8);
  v173 = MEMORY[0x28223BE20](v1022);
  v918 = &v837 - ((v174 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = MEMORY[0x28223BE20](v173);
  v897 = (&v837 - v176);
  v177 = MEMORY[0x28223BE20](v175);
  v924 = &v837 - v178;
  v179 = MEMORY[0x28223BE20](v177);
  v852 = &v837 - v180;
  v181 = MEMORY[0x28223BE20](v179);
  v998 = &v837 - v182;
  v183 = MEMORY[0x28223BE20](v181);
  v964 = &v837 - v184;
  v185 = MEMORY[0x28223BE20](v183);
  v891 = (&v837 - v186);
  v187 = MEMORY[0x28223BE20](v185);
  v892 = (&v837 - v188);
  v189 = MEMORY[0x28223BE20](v187);
  v862 = &v837 - v190;
  v191 = MEMORY[0x28223BE20](v189);
  v863 = &v837 - v192;
  v193 = MEMORY[0x28223BE20](v191);
  v973 = (&v837 - v194);
  v195 = MEMORY[0x28223BE20](v193);
  v882 = &v837 - v196;
  v197 = MEMORY[0x28223BE20](v195);
  v844 = &v837 - v198;
  MEMORY[0x28223BE20](v197);
  v200 = (&v837 - v199);
  v201 = sub_22C901FAC();
  v1030 = *(v201 - 8);
  v202 = MEMORY[0x28223BE20](v201);
  v901 = &v837 - ((v203 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = MEMORY[0x28223BE20](v202);
  v925 = &v837 - v205;
  v206 = MEMORY[0x28223BE20](v204);
  v859 = &v837 - v207;
  v208 = MEMORY[0x28223BE20](v206);
  v1007 = &v837 - v209;
  v210 = MEMORY[0x28223BE20](v208);
  v872 = &v837 - v211;
  v212 = MEMORY[0x28223BE20](v210);
  v874 = &v837 - v213;
  v214 = MEMORY[0x28223BE20](v212);
  v1014 = &v837 - v215;
  v216 = MEMORY[0x28223BE20](v214);
  v907 = &v837 - v217;
  v218 = MEMORY[0x28223BE20](v216);
  v914 = &v837 - v219;
  v220 = MEMORY[0x28223BE20](v218);
  v916 = &v837 - v221;
  v222 = MEMORY[0x28223BE20](v220);
  v1017 = &v837 - v223;
  v224 = MEMORY[0x28223BE20](v222);
  v906 = &v837 - v225;
  v226 = MEMORY[0x28223BE20](v224);
  v913 = &v837 - v227;
  v228 = MEMORY[0x28223BE20](v226);
  v928 = &v837 - v229;
  v230 = MEMORY[0x28223BE20](v228);
  v948 = &v837 - v231;
  v232 = MEMORY[0x28223BE20](v230);
  v934 = &v837 - v233;
  v234 = MEMORY[0x28223BE20](v232);
  v960 = &v837 - v235;
  v236 = MEMORY[0x28223BE20](v234);
  v860 = &v837 - v237;
  v238 = MEMORY[0x28223BE20](v236);
  v861 = &v837 - v239;
  v240 = MEMORY[0x28223BE20](v238);
  v877 = &v837 - v241;
  v242 = MEMORY[0x28223BE20](v240);
  v846 = &v837 - v243;
  v244 = MEMORY[0x28223BE20](v242);
  v905 = &v837 - v245;
  v246 = MEMORY[0x28223BE20](v244);
  v870 = &v837 - v247;
  v248 = MEMORY[0x28223BE20](v246);
  v879 = &v837 - v249;
  v250 = MEMORY[0x28223BE20](v248);
  v858 = &v837 - v251;
  MEMORY[0x28223BE20](v250);
  v253 = &v837 - v252;
  v254 = sub_22C3A5908(&qword_27D9BC078, &unk_22C922810);
  v255 = MEMORY[0x28223BE20](v254 - 8);
  v843 = &v837 - ((v256 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = MEMORY[0x28223BE20](v255);
  v855 = &v837 - v258;
  v259 = MEMORY[0x28223BE20](v257);
  v981 = &v837 - v260;
  v261 = MEMORY[0x28223BE20](v259);
  v1000 = &v837 - v262;
  v263 = MEMORY[0x28223BE20](v261);
  v857 = &v837 - v264;
  v265 = MEMORY[0x28223BE20](v263);
  v963 = &v837 - v266;
  v267 = MEMORY[0x28223BE20](v265);
  v937 = &v837 - v268;
  v269 = MEMORY[0x28223BE20](v267);
  v271 = &v837 - v270;
  v272 = MEMORY[0x28223BE20](v269);
  v1009 = &v837 - v273;
  v274 = MEMORY[0x28223BE20](v272);
  v876 = &v837 - v275;
  v276 = MEMORY[0x28223BE20](v274);
  v912 = &v837 - v277;
  v278 = MEMORY[0x28223BE20](v276);
  v280 = &v837 - v279;
  v281 = MEMORY[0x28223BE20](v278);
  v283 = &v837 - v282;
  v284 = MEMORY[0x28223BE20](v281);
  v911 = &v837 - v285;
  v286 = MEMORY[0x28223BE20](v284);
  v288 = &v837 - v287;
  v289 = MEMORY[0x28223BE20](v286);
  v896 = &v837 - v290;
  MEMORY[0x28223BE20](v289);
  v292 = &v837 - v291;
  sub_22C9068FC();
  v293 = *v1031;
  v1027 = v292;
  v294 = v1022;
  v856 = v293;
  sub_22C605618(v253, v293);
  v295 = *(v1030 + 1);
  v1012 = v253;
  v1028 = v201;
  v1024 = v295;
  v1025 = v1030 + 8;
  v295(v253, v201);
  v1015 = a1;
  sub_22C90702C();
  v296 = v1018;
  v297 = *(v1018 + 11);
  v1006 = v1018 + 88;
  v1005 = v297;
  v298 = v297(v200, v294);
  v299 = *MEMORY[0x277D1DAA8];
  v300 = MEMORY[0x277D1DEE8];
  if (v298 != *MEMORY[0x277D1DAA8])
  {
    v310 = v200;
    v311 = MEMORY[0x277D1DED8];
    if (v298 == *MEMORY[0x277D1D9F8])
    {
      v312 = MEMORY[0x277D1DA48];
      v313 = (v296 + 96);
      v314 = *(v296 + 12);
      v1029 = v313;
      v314(v310, v294);
      v315 = (v1030 + 32);
      v316 = v1014;
      v317 = v1028;
      *&v1021 = *(v1030 + 4);
      (v1021)(v1014, v310, v1028);
      sub_22C3DB138(v1027, v271, &qword_27D9BC078, &unk_22C922810);
      if (sub_22C370B74(v271, 1, v1023) == 1)
      {
        sub_22C36DD28(v271, &qword_27D9BC078, &unk_22C922810);
        v318 = v1019;
        goto LABEL_154;
      }

      v1016 = v314;
      LODWORD(v1017) = v299;
      v339 = sub_22C42074C(v271, v1013);
      v340 = v1008;
      MEMORY[0x28223BE20](v339);
      *(&v837 - 2) = v316;
      v341 = v1026;
      v343 = sub_22C5EC5FC(sub_22C4211C0, (&v837 - 4), v342);
      v318 = v1019;
      v1026 = v341;
      if (v343)
      {
        goto LABEL_22;
      }

      v996 = *(v340 + 24);
      v370 = v993;
      sub_22C90878C();
      v371 = v982;
      sub_22C646D68();
      v372 = v997 + 8;
      v995 = *(v997 + 8);
      (v995)(v370, v994);
      if (sub_22C370B74(v371, 1, v318) == 1)
      {
        sub_22C36DD28(v371, &qword_27D9BAA18, &qword_22C911C40);
      }

      else
      {
        v997 = v372;
        v401 = v1020;
        v402 = *(v1020 + 32);
        v403 = v977;
        v992 = v1020 + 32;
        v991 = v402;
        (v402)(v977, v371, v318);
        v404 = v964;
        sub_22C90702C();
        if (v1005(v404, v294) == *v312)
        {
          v1016(v404, v294);
          v405 = v962;
          (*(v962 + 32))(v974, v404, v976);
          v406 = v993;
          sub_22C90878C();
          v1032 = sub_22C9087DC();
          MEMORY[0x28223BE20](v1032);
          *(&v837 - 2) = v1014;
          sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
          sub_22C3D32C8(&qword_27D9BC090, &qword_27D9BA9F0, &qword_22C912420, MEMORY[0x277D1E9D0]);
          v407 = v947;
          v408 = v957;
          v409 = v1026;
          sub_22C907D9C();
          v1026 = v409;

          (v995)(v406, v994);
          v410 = sub_22C370B74(v407, 1, v408);
          v411 = v1007;
          if (v410 == 1)
          {
            (*(v405 + 8))(v974, v976);
            v318 = v1019;
            (*(v1020 + 8))(v977, v1019);
            sub_22C36DD28(v407, &qword_27D9BC068, &qword_22C920590);
          }

          else
          {
            (*(v939 + 32))(v938, v407, v408);
            v500 = sub_22C90887C();
            v501 = 0;
            v1003 = *(v500 + 16);
            v1008 = v1020 + 16;
            v1011 = v1020 + 8;
            LODWORD(v1001) = *MEMORY[0x277D1DA50];
            LODWORD(v1000) = *MEMORY[0x277D1DA78];
            v1002 = v1018 + 8;
            v989 = v315;
            while (v1003 != v501)
            {
              if (v501 >= *(v500 + 16))
              {
                __break(1u);
LABEL_288:
                __break(1u);
                goto LABEL_289;
              }

              v502 = v1019;
              v503 = v1020;
              v504 = (*(v503 + 80) + 32) & ~*(v503 + 80);
              v505 = v500;
              v506 = *(v1020 + 16);
              v507 = v999;
              v506(v999, v500 + v504 + *(v1020 + 72) * v501, v1019);
              v508 = v998;
              sub_22C90702C();
              v509 = *(v503 + 8);
              v509(v507, v502);
              v510 = v1022;
              v511 = v1005(v508, v1022);
              if (v511 == v1001 || v511 == v1000)
              {
                v1007 = v504;
                v988 = v506;

                v594 = *v1002;
                v595 = (*v1002)(v508, v510);
                v596 = v974;
                v597 = MEMORY[0x2318B57A0](v595);
                v598 = v895;
                sub_22C6053E0(v597, v895);

                v599 = v1028;
                if (sub_22C370B74(v598, 1, v1028) == 1)
                {
                  v600 = &qword_27D9BC030;
                  v601 = &unk_22C911CC0;
                  v602 = v598;
                  goto LABEL_191;
                }

                v1003 = v594;
                v647 = v874;
                (v1021)(v874, v598, v599);
                v648 = v993;
                sub_22C90878C();
                v649 = v875;
                sub_22C646D68();
                (v995)(v648, v994);
                v318 = v1019;
                if (sub_22C370B74(v649, 1, v1019) == 1)
                {
                  v1024(v647, v599);
                  v600 = &qword_27D9BAA18;
                  v601 = &qword_22C911C40;
                  v602 = v649;
LABEL_191:
                  sub_22C36DD28(v602, v600, v601);
                  v650 = v509;
LABEL_192:
                  v651 = v988;
LABEL_193:
                  v652 = v894;
                  sub_22C90402C();
                  v653 = sub_22C9063CC();
                  v654 = sub_22C90AACC();
                  if (os_log_type_enabled(v653, v654))
                  {
                    v655 = swift_slowAlloc();
                    *v655 = 0;
                    _os_log_impl(&dword_22C366000, v653, v654, "inserting pickOne expression into plan", v655, 2u);
                    MEMORY[0x2318B9880](v655, -1, -1);
                  }

                  (*(v953 + 8))(v652, v954);
                  sub_22C9068FC();
                  v656 = v905;
                  v1029 = *(v1030 + 2);
                  (v1029)(v905, v1014, v1028);
                  v657 = v973;
                  MEMORY[0x2318B4810](v656);
                  v658 = *MEMORY[0x277D1DAE8];
                  v659 = *(v1018 + 13);
                  v1018 += 104;
                  v659(v657, v658, v510);
                  sub_22C9070BC();
                  LOBYTE(v1032) = 1;
                  v660 = v910;
                  sub_22C90708C();
                  v661 = v900;
                  v651(v900, v660, v1019);
                  sub_22C5916E4();
                  v283 = v662;
                  v1032 = v662;
                  sub_22C41D500(0, 0, 1, v661);
                  v663 = v893;
                  sub_22C3DB138(v1013, v893, &qword_27D9BC028, &unk_22C9134B0);
                  v664 = v1010;
                  if (sub_22C370B74(v663, 1, v1010) == 1)
                  {
                    sub_22C36DD28(v663, &qword_27D9BC028, &unk_22C9134B0);
                    goto LABEL_225;
                  }

                  v665 = v1004;
                  v666 = v890;
                  (*(v1004 + 32))(v890, v663, v664);
                  if (sub_22C5FB484())
                  {
                    *&v1021 = v650;
                    sub_22C9087AC();
                    v667 = v872;
                    sub_22C90882C();

                    v668 = v1012;
                    v669 = v1028;
                    v670 = v1029;
                    (v1029)(v1012, v667, v1028);
                    sub_22C5C89CC(0, v283);
                    sub_22C90707C();
                    sub_22C9068FC();
                    sub_22C3A5908(&qword_27D9BAC28, &unk_22C911F40);
                    v671 = (v1030[80] + 32) & ~v1030[80];
                    v672 = swift_allocObject();
                    *(v672 + 16) = xmmword_22C90F800;
                    (v670)(v672 + v671, v667, v669);
                    v673 = v973;
                    *v973 = v672;
                    v674 = *MEMORY[0x277D1DEE8];
                    v675 = sub_22C906F2C();
                    (*(*(v675 - 8) + 104))(v673, v674, v675);
                    v659(v673, v1017, v1022);
                    sub_22C9070BC();
                    v1033 = 1;
                    v676 = v873;
                    sub_22C90708C();
                    v677 = v851;
                    v988(v851, v676, v1019);
                    v678 = *(v283 + 16);
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v1032 = v283;
                    if (!isUniquelyReferenced_nonNull_native || v678 >= *(v283 + 24) >> 1)
                    {
                      sub_22C5916E4();
                      v283 = v680;
                      v1032 = v680;
                    }

                    v681 = v1004;
                    v682 = v976;
                    v650 = v1021;
                    sub_22C41D500(0, 0, 1, v677);
                    v650(v873, v1019);
                    v1024(v872, v1028);
                    (*(v681 + 8))(v890, v1010);
                  }

                  else
                  {
                    (*(v665 + 8))(v666, v664);
LABEL_225:
                    v668 = v1012;
                    v682 = v976;
                  }

                  v721 = v1014;
                  v722 = v1028;
                  (v1029)(v668, v1014, v1028);
                  v723 = v1013;
                  v724 = v1009;
                  sub_22C420958(v1013, v1009, type metadata accessor for PlanPostProcessor.ExpressionContext);
                  sub_22C36C640(v724, 0, 1, v1023);
                  sub_22C6029B4();
                  v725 = v1019;
                  v650(v910, v1019);
                  (*(v939 + 8))(v938, v957);
                  (*(v962 + 8))(v974, v682);
                  v650(v977, v725);
                  sub_22C4207B0(v723, type metadata accessor for PlanPostProcessor.ExpressionContext);
                  sub_22C36DD28(v1027, &qword_27D9BC078, &unk_22C922810);
                  v588 = v721;
                  v589 = v722;
LABEL_227:
                  v1024(v588, v589);
                  return v283;
                }

                v715 = v853;
                (v991)(v853, v649, v318);
                v716 = v852;
                sub_22C90702C();
                *&v1021 = v509;
                v509(v715, v318);
                v1024(v647, v599);
                v717 = v1005(v716, v510);
                if (v717 != v1017)
                {
                  v1003(v716, v510);
                  v650 = v1021;
                  goto LABEL_192;
                }

                v1016(v716, v510);
                v718 = sub_22C906F2C();
                v719 = *(v718 - 8);
                v720 = (*(v719 + 88))(v716, v718);
                v651 = v988;
                if (v720 != *MEMORY[0x277D1DED8])
                {
                  (*(v719 + 8))(v716, v718);
                  v650 = v1021;
                  goto LABEL_193;
                }

                (*(v719 + 96))(v716, v718);
                v650 = v1021;
                if (*v716 == 1)
                {
                  goto LABEL_193;
                }

                (*(v939 + 8))(v938, v957);
                (*(v962 + 8))(v596, v976);
                v650(v977, v318);
LABEL_22:
                v344 = v1023;
                v283 = v1013;
LABEL_153:
                v316 = v1014;
                v317 = v1028;
                (*(v1030 + 2))(v1012, v1014, v1028);
                v576 = v1009;
                sub_22C420958(v283, v1009, type metadata accessor for PlanPostProcessor.ExpressionContext);
                sub_22C36C640(v576, 0, 1, v344);
                sub_22C6029B4();
                sub_22C4207B0(v283, type metadata accessor for PlanPostProcessor.ExpressionContext);
LABEL_154:
                v1024(v316, v317);
LABEL_155:
                sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
                v577 = v1020;
                v578 = (*(v1020 + 80) + 32) & ~*(v1020 + 80);
                v283 = swift_allocObject();
                *(v283 + 16) = xmmword_22C90F800;
                (*(v577 + 16))(v283 + v578, v1015, v318);
LABEL_156:
                sub_22C36DD28(v1027, &qword_27D9BC078, &unk_22C922810);
                return v283;
              }

              ++v501;
              (*v1002)(v508, v510);
              v411 = v1007;
              v500 = v505;
            }

            (*(v939 + 8))(v938, v957);
            (*(v962 + 8))(v974, v976);
            v318 = v1019;
            (*v1011)(v977, v1019);
          }

          v283 = v1013;
          v459 = v979;
LABEL_147:
          sub_22C3DB138(v283, v459, &qword_27D9BC028, &unk_22C9134B0);
          v568 = v1010;
          v569 = sub_22C370B74(v459, 1, v1010);
          v570 = v1004;
          v344 = v1023;
          v571 = v990;
          if (v569 == 1)
          {
            sub_22C36DD28(v459, &qword_27D9BC028, &unk_22C9134B0);
          }

          else
          {
            (*(v1004 + 32))(v990, v459, v568);
            if (sub_22C5FB484())
            {
              v572 = v1028;
              v1029 = *(v1030 + 2);
              (v1029)(v411, v1014, v1028);
              v573 = v937;
              v574 = v1026;
              sub_22C4177E0(v937);
              v1026 = v574;
              if (!v574)
              {
                sub_22C36C640(v573, 0, 1, v344);
                sub_22C6029B4();
                sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
                v580 = v572;
                v283 = swift_allocObject();
                v1031 = xmmword_22C90F800;
                *(v283 + 16) = xmmword_22C90F800;
                sub_22C9068FC();
                sub_22C3A5908(&qword_27D9BAC28, &unk_22C911F40);
                v581 = (v1030[80] + 32) & ~v1030[80];
                v582 = swift_allocObject();
                *(v582 + 16) = v1031;
                v583 = v1014;
                (v1029)(v582 + v581, v1014, v580);
                v584 = v973;
                *v973 = v582;
                v585 = *MEMORY[0x277D1DEE8];
                v586 = sub_22C906F2C();
                (*(*(v586 - 8) + 104))(v584, v585, v586);
                v587 = (*(v1018 + 13))(v584, v1017, v1022);
                MEMORY[0x2318B4570](v587);
                sub_22C9070BC();
                LOBYTE(v1032) = 1;
                sub_22C90708C();
                (*(v570 + 8))(v990, v1010);
                sub_22C4207B0(v1013, type metadata accessor for PlanPostProcessor.ExpressionContext);
                sub_22C36DD28(v1027, &qword_27D9BC078, &unk_22C922810);
                v588 = v583;
                v589 = v580;
                goto LABEL_227;
              }

              v575 = v1024;
              v1024(v411, v572);
              (*(v570 + 8))(v571, v1010);
              sub_22C4207B0(v283, type metadata accessor for PlanPostProcessor.ExpressionContext);
              sub_22C36DD28(v1027, &qword_27D9BC078, &unk_22C922810);
              v575(v1014, v572);
              return v283;
            }

            (*(v570 + 8))(v571, v568);
          }

          goto LABEL_153;
        }

        (*(v401 + 8))(v403, v318);
        (*(v1018 + 1))(v404, v294);
      }

      v283 = v1013;
      v459 = v979;
      v411 = v1007;
      goto LABEL_147;
    }

    v324 = v1028;
    if (v298 == *MEMORY[0x277D1DAC0])
    {
      (*(v296 + 12))(v200, v294);
      v325 = v1002;
      v326 = v1001;
      v327 = v1003;
      (*(v1002 + 4))(v1001, v200, v1003);
      v328 = v1000;
      sub_22C3DB138(v1027, v1000, &qword_27D9BC078, &unk_22C922810);
      v329 = v1023;
      if (sub_22C370B74(v328, 1, v1023) == 1)
      {
        (*(v325 + 1))(v326, v327);
        v307 = &qword_27D9BC078;
        v308 = &unk_22C922810;
        v309 = v328;
        goto LABEL_97;
      }

      v364 = v983;
      sub_22C42074C(v328, v983);
      sub_22C906FDC();
      v365 = v1009;
      sub_22C420958(v364, v1009, type metadata accessor for PlanPostProcessor.ExpressionContext);
      sub_22C36C640(v365, 0, 1, v329);
      sub_22C6029B4();
      sub_22C4207B0(v364, type metadata accessor for PlanPostProcessor.ExpressionContext);
      (*(v325 + 1))(v326, v327);
LABEL_105:
      v318 = v1019;
      goto LABEL_155;
    }

    v351 = v1023;
    if (v298 == *MEMORY[0x277D1DAA0])
    {
      v352 = v200;
      (*(v296 + 12))(v200, v294);
      v353 = v995;
      v354 = v986;
      v355 = v987;
      (*(v995 + 32))(v986, v352, v987);
      v356 = v981;
      sub_22C3DB138(v1027, v981, &qword_27D9BC078, &unk_22C922810);
      v357 = sub_22C370B74(v356, 1, v351);
      v318 = v1019;
      if (v357 == 1)
      {
        (*(v353 + 8))(v354, v355);
        v358 = v356;
        goto LABEL_28;
      }

      v379 = v965;
      sub_22C42074C(v356, v965);
      sub_22C906DAC();
      v380 = v1009;
      sub_22C420958(v379, v1009, type metadata accessor for PlanPostProcessor.ExpressionContext);
      sub_22C36C640(v380, 0, 1, v351);
      sub_22C6029B4();
      sub_22C906DBC();
      sub_22C420958(v379, v380, type metadata accessor for PlanPostProcessor.ExpressionContext);
      sub_22C36C640(v380, 0, 1, v1023);
      sub_22C6029B4();
      sub_22C4207B0(v379, type metadata accessor for PlanPostProcessor.ExpressionContext);
      v377 = *(v995 + 8);
      v378 = v354;
LABEL_48:
      v377(v378, v355);
      goto LABEL_155;
    }

    if (v298 == *MEMORY[0x277D1DA98])
    {
      v374 = *(v296 + 12);
      v374(v200, v294);
      v283 = v980;
      v375 = v200;
      v355 = v978;
      (*(v988 + 4))(v980, v375, v978);
      v376 = v963;
      sub_22C3DB138(v1027, v963, &qword_27D9BC078, &unk_22C922810);
      if (sub_22C370B74(v376, 1, v351) == 1)
      {
        sub_22C36DD28(v376, &qword_27D9BC078, &unk_22C922810);
        v318 = v1019;
LABEL_46:
        v377 = *(v988 + 1);
        v378 = v980;
        goto LABEL_48;
      }

      v1030 = v374;
      v448 = v299;
      v363 = v952;
      v449 = sub_22C42074C(v376, v952);
      MEMORY[0x28223BE20](v449);
      *(&v837 - 2) = v283;
      v450 = v940;
      v451 = v1026;
      sub_22C6B0590(sub_22C4208A0, (&v837 - 4), v452);
      v1026 = v451;
      v318 = v1019;
      if (sub_22C370B74(v450, 1, v1019) == 1)
      {
        sub_22C36DD28(v450, &qword_27D9BAA18, &qword_22C911C40);
        type metadata accessor for PlanPostProcessorError(0);
        sub_22C4208F4(&qword_27D9BC088, type metadata accessor for PlanPostProcessorError, &unk_22C9120B0);
        v453 = swift_allocError();
        sub_22C9068FC();
        swift_storeEnumTagMultiPayload();
        v1026 = v453;
        swift_willThrow();
        sub_22C4207B0(v363, type metadata accessor for PlanPostProcessor.ExpressionContext);
        sub_22C36DD28(v1027, &qword_27D9BC078, &unk_22C922810);
        v454 = *(v988 + 1);
        v455 = v283;
LABEL_205:
        v454(v455, v978);
        return v283;
      }

      v520 = v1020;
      v521 = v932;
      (*(v1020 + 32))(v932, v450, v318);
      v322 = v924;
      sub_22C90702C();
      if (v1005(v322, v294) == v448)
      {
        v522 = v897;
        (*(v1018 + 2))(v897, v322, v294);
        (v1030)(v522, v294);
        v523 = sub_22C906F2C();
        v524 = *(v523 - 8);
        v525 = (*(v524 + 88))(v522, v523);
        if (v525 == *MEMORY[0x277D1DED0])
        {
          v526 = v881;
          v527 = sub_22C417F2C(v881);
          MEMORY[0x2318B4220](v527);
          v528 = v1009;
          sub_22C420958(v526, v1009, type metadata accessor for PlanPostProcessor.ExpressionContext);
          v529 = v1023;
          sub_22C36C640(v528, 0, 1, v1023);
          sub_22C6029B4();
          sub_22C906D6C();
          v530 = v880;
          sub_22C41840C(v880);
          sub_22C4186E4(v528);
          sub_22C4207B0(v530, type metadata accessor for PlanPostProcessor.ExpressionContext);
          sub_22C36C640(v528, 0, 1, v529);
          v363 = v952;
          sub_22C6029B4();
          v531 = v526;
          v322 = v924;
LABEL_246:
          sub_22C4207B0(v531, type metadata accessor for PlanPostProcessor.ExpressionContext);
          (*(v1020 + 8))(v932, v318);
          sub_22C4207B0(v363, type metadata accessor for PlanPostProcessor.ExpressionContext);
          (*(v1018 + 1))(v322, v294);
          v355 = v978;
          goto LABEL_46;
        }

        v620 = v1023;
        if (v525 == *MEMORY[0x277D1DEF8])
        {
          (*(v524 + 96))(v522, v523);
          v1030 = *v522;
          v621 = v884;
          sub_22C41840C(v884);
          v622 = v621;
          v283 = v883;
          v623 = sub_22C420958(v622, v883, type metadata accessor for PlanPostProcessor.ExpressionContext);
          v624 = v859;
          MEMORY[0x2318B4220](v623);
          v382 = v857;
          sub_22C605618(v624, v856);
          v1024(v624, v324);
          if (sub_22C370B74(v382, 1, v620) == 1)
          {
            sub_22C36DD28(v382, &qword_27D9BC078, &unk_22C922810);
          }

          else
          {
LABEL_240:
            sub_22C4207B0(v283, type metadata accessor for PlanPostProcessor.ExpressionContext);
            sub_22C42074C(v382, v283);
          }

          v740 = v956;
          sub_22C907D5C();
          v741 = sub_22C90768C();
          v743 = v742;
          (*(v992 + 8))(v740, v989);
          v744 = sub_22C907D2C();
          v746 = v745;
          v747 = sub_22C90704C();
          if (v747 == 2 || (v747 & 1) == 0)
          {
            MEMORY[0x2318B4220]();
            v1030 = sub_22C90A27C();

            v751 = sub_22C4165AC(v741, v743, v744, v746, v952);

            v750 = v1009;
            v752 = v883;
            sub_22C4189AC(v1030, v751, v1009);

            v749 = v752;
            v363 = v952;
          }

          else
          {

            MEMORY[0x2318B4220](v748);
            v749 = v883;
            v750 = v1009;
            sub_22C420958(v883, v1009, type metadata accessor for PlanPostProcessor.ExpressionContext);
          }

          v753 = v1023;
          sub_22C36C640(v750, 0, 1, v1023);
          sub_22C6029B4();
          sub_22C906D6C();
          v531 = v884;
          sub_22C4186E4(v750);
          sub_22C36C640(v750, 0, 1, v753);
          sub_22C6029B4();
          sub_22C4207B0(v749, type metadata accessor for PlanPostProcessor.ExpressionContext);
          v318 = v1019;
          v294 = v1022;
          goto LABEL_246;
        }

        (*(v524 + 8))(v522, v523);
        v520 = v1020;
        v521 = v932;
      }

      type metadata accessor for PlanPostProcessorError(0);
      sub_22C4208F4(&qword_27D9BC088, type metadata accessor for PlanPostProcessorError, &unk_22C9120B0);
      v686 = swift_allocError();
      sub_22C9068FC();
      swift_storeEnumTagMultiPayload();
      v1026 = v686;
      swift_willThrow();
      v687 = *(v520 + 8);
      v283 = v520 + 8;
      v687(v521, v318);
      sub_22C4207B0(v363, type metadata accessor for PlanPostProcessor.ExpressionContext);
      sub_22C36DD28(v1027, &qword_27D9BC078, &unk_22C922810);
      (*(v1018 + 1))(v322, v294);
      v454 = *(v988 + 1);
      v455 = v980;
      goto LABEL_205;
    }

    if (v298 == *MEMORY[0x277D1DA50])
    {
      v415 = *(v296 + 12);
      v415(v200, v294);
      v416 = v200;
      v417 = v975;
      v418 = (*(v971 + 32))(v975, v416, v972);
      MEMORY[0x28223BE20](v418);
      *(&v837 - 2) = v417;
      v419 = v941;
      v420 = v1026;
      sub_22C6B0590(sub_22C42086C, (&v837 - 4), v421);
      v1026 = v420;
      v318 = v1019;
      if (sub_22C370B74(v419, 1, v1019) == 1)
      {
        v422 = v993;
        v423 = sub_22C90878C();
        v424 = v1012;
        MEMORY[0x2318B5880](v423);
        v425 = v946;
        sub_22C646D68();
        v1024(v424, v324);
        (*(v997 + 8))(v422, v994);
        v426 = sub_22C370B74(v419, 1, v318);
        v427 = v945;
        if (v426 != 1)
        {
          sub_22C36DD28(v419, &qword_27D9BAA18, &qword_22C911C40);
        }
      }

      else
      {
        v425 = v946;
        (*(v1020 + 32))(v946, v419, v318);
        sub_22C36C640(v425, 0, 1, v318);
        v427 = v945;
      }

      v513 = v944;
      sub_22C3DB138(v425, v944, &qword_27D9BAA18, &qword_22C911C40);
      if (sub_22C370B74(v513, 1, v318) == 1)
      {
        sub_22C36DD28(v425, &qword_27D9BAA18, &qword_22C911C40);
        sub_22C36DD28(v513, &qword_27D9BAA18, &qword_22C911C40);
      }

      else
      {
        v283 = v1020;
        (*(v1020 + 32))(v427, v513, v318);
        v559 = v918;
        sub_22C90702C();
        v560 = v1022;
        if (v1005(v559, v1022) == *MEMORY[0x277D1DA78])
        {
          v415(v559, v560);
          v561 = v930;
          v562 = v898;
          v563 = v931;
          (*(v930 + 32))(v898, v559, v931);
          v564 = v899;
          sub_22C906ABC();
          v565 = v1026;
          v566 = sub_22C418E5C(v975, v564, v1015);
          v1026 = v565;
          if (!v565)
          {
            v283 = v566;
          }

          (*(v992 + 8))(v564, v989);
          (*(v561 + 8))(v562, v563);
          (*(v1020 + 8))(v427, v318);
          sub_22C36DD28(v425, &qword_27D9BAA18, &qword_22C911C40);
          sub_22C36DD28(v1027, &qword_27D9BC078, &unk_22C922810);
          (*(v971 + 8))(v975, v972);
          return v283;
        }

        (*(v283 + 8))(v427, v318);
        sub_22C36DD28(v425, &qword_27D9BAA18, &qword_22C911C40);
        (*(v1018 + 1))(v559, v560);
      }

      (*(v971 + 8))(v975, v972);
      goto LABEL_155;
    }

    LODWORD(v1017) = *MEMORY[0x277D1DAA8];
    v318 = v1019;
    if (v298 == *MEMORY[0x277D1DA78])
    {
      (*(v296 + 12))(v200, v294);
      v460 = v930;
      v461 = v915;
      v462 = v931;
      (*(v930 + 32))(v915, v200, v931);
      v463 = sub_22C906A8C();
      v464 = v917;
      sub_22C906ABC();
      v465 = v1026;
      v466 = sub_22C412664(v463, v464, v1015);
      v1026 = v465;
      if (!v465)
      {
        v283 = v466;
      }

      (*(v992 + 8))(v464, v989);
      (*(v460 + 8))(v461, v462);
      goto LABEL_156;
    }

    if (v298 != *MEMORY[0x277D1DA48])
    {
      if (v298 == *MEMORY[0x277D1DAE8])
      {
        (*(v296 + 12))(v200, v294);
        v590 = v886;
        v591 = v885;
        v592 = v887;
        (*(v886 + 32))(v885, v310, v887);
        v593 = v876;
        sub_22C3DB138(v1027, v876, &qword_27D9BC078, &unk_22C922810);
        if (sub_22C370B74(v593, 1, v351) != 1)
        {
          v683 = v864;
          v684 = sub_22C42074C(v593, v864);
          MEMORY[0x2318B4800](v684);
          v685 = v1009;
          sub_22C417F2C(v1009);
          sub_22C36C640(v685, 0, 1, v351);
          sub_22C6029B4();
          sub_22C4207B0(v683, type metadata accessor for PlanPostProcessor.ExpressionContext);
          (*(v590 + 8))(v591, v592);
          goto LABEL_155;
        }

        (*(v590 + 8))(v591, v592);
        v358 = v593;
      }

      else
      {
        if (v298 == *MEMORY[0x277D1DAE0])
        {
          (*(v296 + 12))(v200, v294);
          v628 = v868;
          v283 = v927;
          v629 = v869;
          (*(v868 + 32))(v927, v200, v869);
          v390 = v855;
          sub_22C3DB138(v1027, v855, &qword_27D9BC078, &unk_22C922810);
          if (sub_22C370B74(v390, 1, v351) != 1)
          {
            sub_22C42074C(v390, v854);
            v630 = sub_22C41840C(v926);
            v1029 = MEMORY[0x2318B47E0](v630);
            v631 = v1031;
            v632 = v925;
            v1023 = v1029[2];
            if (v1023)
            {
              v633 = 0;
              v1022 = v1029 + ((v1030[80] + 32) & ~v1030[80]);
              do
              {
                if (v633 >= v1029[2])
                {
                  goto LABEL_288;
                }

                v634 = *(v1030 + 9);
                v635 = *(v1030 + 2);
                v635(v632, v1022 + v634 * v633, v324);
                sub_22C420958(v926, v951, type metadata accessor for PlanPostProcessor.ExpressionContext);
                swift_isUniquelyReferenced_nonNull_native();
                v636 = *v631;
                v1032 = v636;
                sub_22C628274();
                if (__OFADD__(*(v636 + 16), (v638 & 1) == 0))
                {
LABEL_289:
                  __break(1u);
                  goto LABEL_290;
                }

                v639 = v637;
                v640 = v638;
                sub_22C3A5908(&qword_27D9BC080, &qword_22C911F38);
                if (sub_22C90B15C())
                {
                  v632 = v925;
                  sub_22C628274();
                  v324 = v1028;
                  if ((v640 & 1) != (v642 & 1))
                  {
                    goto LABEL_294;
                  }

                  v639 = v641;
                }

                else
                {
                  v324 = v1028;
                  v632 = v925;
                }

                v643 = v1032;
                if (v640)
                {
                  sub_22C420808(v951, v1032[7] + *(v1016 + 9) * v639);
                  v1024(v632, v324);
                }

                else
                {
                  v1032[(v639 >> 6) + 8] |= 1 << v639;
                  v635((v643[6] + v639 * v634), v632, v324);
                  sub_22C42074C(v951, v643[7] + *(v1016 + 9) * v639);
                  v1024(v632, v324);
                  v644 = v643[2];
                  v395 = __OFADD__(v644, 1);
                  v645 = v644 + 1;
                  if (v395)
                  {
                    goto LABEL_292;
                  }

                  v643[2] = v645;
                }

                v283 = v927;
                ++v633;
                v646 = v1031;
                *v1031 = v643;
                v631 = v646;
              }

              while (v1023 != v633);
            }

            sub_22C4207B0(v926, type metadata accessor for PlanPostProcessor.ExpressionContext);
            sub_22C4207B0(v854, type metadata accessor for PlanPostProcessor.ExpressionContext);
            (*(v868 + 8))(v283, v869);
            goto LABEL_105;
          }
        }

        else
        {
          if (v298 != *MEMORY[0x277D1DAB8])
          {
            sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
            v761 = v296;
            v762 = v1020;
            v763 = (*(v1020 + 80) + 32) & ~*(v1020 + 80);
            v283 = swift_allocObject();
            *(v283 + 16) = xmmword_22C90F800;
            (*(v762 + 16))(v283 + v763, v1015, v318);
            sub_22C36DD28(v1027, &qword_27D9BC078, &unk_22C922810);
            (*(v761 + 1))(v200, v294);
            return v283;
          }

          (*(v296 + 12))(v200, v294);
          v628 = v847;
          v283 = v903;
          v629 = v848;
          (*(v847 + 32))(v903, v200, v848);
          v390 = v843;
          sub_22C3DB138(v1027, v843, &qword_27D9BC078, &unk_22C922810);
          if (sub_22C370B74(v390, 1, v351) != 1)
          {
            goto LABEL_266;
          }
        }

        (*(v628 + 8))(v283, v629);
        v358 = v390;
      }

LABEL_28:
      sub_22C36DD28(v358, &qword_27D9BC078, &unk_22C922810);
      goto LABEL_155;
    }

    LODWORD(v1014) = v298;
    v546 = v1028;
    v1016 = *(v296 + 12);
    v1013 = (v296 + 96);
    v1016(v200, v294);
    v547 = v962;
    v548 = v919;
    v549 = v976;
    (*(v962 + 32))(v919, v200, v976);
    v550 = *(v547 + 16);
    v1029 = (v547 + 16);
    *&v1021 = v550;
    v551 = v550(v929, v548, v549);
    v552 = MEMORY[0x2318B57A0](v551);
    v553 = v933;
    sub_22C6053E0(v552, v933);

    v554 = sub_22C9082BC();
    sub_22C602B1C();
    v554(&v1032, 0);
    sub_22C36C640(v553, 1, 1, v546);
    v555 = sub_22C9082BC();
    sub_22C602B1C();
    v555(&v1032, 0);
    if (sub_22C370B74(v1027, 1, v1023) == 1)
    {
      LODWORD(v1009) = 0;
      v556 = v546;
      v557 = v1022;
      v558 = v1004;
      goto LABEL_210;
    }

    v625 = MEMORY[0x2318B57A0]();
    v626 = v878;
    sub_22C6053E0(v625, v878);

    v627 = sub_22C370B74(v626, 1, v546);
    v558 = v1004;
    if (v627 == 1)
    {
      sub_22C36DD28(v626, &qword_27D9BC030, &unk_22C911CC0);
      LODWORD(v1009) = 1;
    }

    else
    {
      v688 = v858;
      v689 = (*(v1030 + 4))(v858, v626, v546);
      MEMORY[0x28223BE20](v689);
      *(&v837 - 2) = v688;
      v690 = v865;
      v691 = v1026;
      sub_22C6B0590(sub_22C4211C0, (&v837 - 4), v692);
      v1026 = v691;
      v693 = v1019;
      if (sub_22C370B74(v690, 1, v1019) != 1)
      {
        v754 = v1020;
        v755 = v845;
        (*(v1020 + 32))(v845, v690, v693);
        v756 = v844;
        sub_22C90702C();
        (*(v754 + 8))(v755, v693);
        v557 = v1022;
        v757 = v1005(v756, v1022);
        if (v757 != v1017)
        {
          (*(v1018 + 1))(v756, v557);
          v834 = v688;
          v556 = v1028;
          v1024(v834, v1028);
          LODWORD(v1009) = 1;
LABEL_210:
          v694 = v1023;
          v695 = v896;
          sub_22C3DB138(v1027, v896, &qword_27D9BC078, &unk_22C922810);
          v696 = sub_22C370B74(v695, 1, v694);
          v697 = v1010;
          if (v696 == 1)
          {
            sub_22C36DD28(v695, &qword_27D9BC078, &unk_22C922810);
            if (v1009)
            {
              sub_22C9087AC();
              v698 = v877;
              sub_22C90882C();

              sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
              *&v1031 = *(v1020 + 72);
              v283 = swift_allocObject();
              *(v283 + 16) = xmmword_22C90F870;
              sub_22C9068FC();
              v1030 = *(v1030 + 2);
              v699 = v556;
              v700 = v905;
              (v1030)(v905, v698, v699);
              v701 = v973;
              MEMORY[0x2318B4810](v700);
              (*(v1018 + 13))(v701, *MEMORY[0x277D1DAE8], v557);
              sub_22C9070BC();
              LOBYTE(v1032) = 1;
              sub_22C90708C();
              v702 = v698;
              v703 = v1028;
              (v1030)(v861, v702, v1028);
              sub_22C90702C();
              sub_22C9070CC();
              MEMORY[0x2318B4580]();
              sub_22C9070BC();
              LOBYTE(v1032) = 1;
              sub_22C90708C();
              v1024(v877, v703);
              v704 = *(v962 + 8);
              v705 = v976;
              v704(v929, v976);
              v706 = v919;
              v707 = v705;
            }

            else
            {
              sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
              v283 = swift_allocObject();
              *(v283 + 16) = xmmword_22C90F800;
              sub_22C9068FC();
              v712 = v862;
              v713 = v929;
              v714 = v976;
              (v1021)(v862, v929, v976);
              (*(v1018 + 13))(v712, v1014, v557);
              sub_22C9070CC();
              MEMORY[0x2318B4580]();
              sub_22C9070BC();
              LOBYTE(v1032) = 1;
              sub_22C90708C();
              v704 = *(v962 + 8);
              v704(v713, v714);
              v706 = v919;
              v707 = v714;
            }

            v704(v706, v707);
            goto LABEL_156;
          }

          v708 = v904;
          sub_22C42074C(v695, v904);
          v709 = v909;
          sub_22C3DB138(v708, v909, &qword_27D9BC028, &unk_22C9134B0);
          if (sub_22C370B74(v709, 1, v697))
          {
            v710 = v888;
            sub_22C36C640(v888, 1, 1, v697);
            v711 = v1020;
          }

          else
          {
            v726 = v849;
            (*(v558 + 16))(v849, v709, v697);
            v727 = v888;
            sub_22C5FB388(v888);
            v728 = v726;
            v710 = v727;
            (*(v558 + 8))(v728, v697);
            v729 = sub_22C370B74(v727, 1, v697);
            v711 = v1020;
            if (v729 != 1)
            {
              v764 = v710;
              v765 = *(v558 + 32);
              v766 = v841;
              v765(v841, v764, v697);
              sub_22C36DD28(v709, &qword_27D9BC028, &unk_22C9134B0);
              v765(v709, v766, v697);
              sub_22C36C640(v709, 0, 1, v697);
LABEL_230:
              if (!*(sub_22C9082EC() + 16))
              {
                v730 = *(v904 + v694[7]);
                if (*(v730 + 16))
                {

                  v731 = *(v730 + 16);
                  if (v731)
                  {
                    v1032 = MEMORY[0x277D84F90];
                    sub_22C3B7040(0, v731, 0);
                    v732 = v1032;
                    v1023 = *(v923 + 16);
                    *&v1021 = (*(v923 + 80) + 32) & ~*(v923 + 80);
                    v733 = v730 + v1021;
                    v1016 = *(v923 + 72);
                    v1013 = (v923 + 8);
                    v923 += 16;
                    v1011 = v923 + 16;
                    v734 = v922;
                    v735 = v840;
                    do
                    {
                      v1029 = v731;
                      v736 = v920;
                      (v1023)(v920, v733, v734);
                      sub_22C90825C();
                      sub_22C90826C();
                      sub_22C90823C();
                      v734 = v922;
                      sub_22C90824C();
                      (*v1013)(v736, v734);
                      v1032 = v732;
                      v738 = *(v732 + 16);
                      v737 = *(v732 + 24);
                      if (v738 >= v737 >> 1)
                      {
                        sub_22C3B7040(v737 > 1, v738 + 1, 1);
                        v732 = v1032;
                      }

                      *(v732 + 16) = v738 + 1;
                      v739 = v1016;
                      (*v1011)(v732 + v1021 + v738 * v1016, v735, v734);
                      v733 += v739;
                      v731 = v1029 - 1;
                    }

                    while (v1029 != 1);
                  }
                }

                v711 = v1020;
              }

              sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
              v767 = ((*(v711 + 80) + 32) & ~*(v711 + 80));
              v283 = swift_allocObject();
              v1021 = xmmword_22C90F800;
              *(v283 + 16) = xmmword_22C90F800;
              v768 = sub_22C9068FC();
              v769 = v929;
              MEMORY[0x2318B57A0](v768);
              sub_22C3DB138(v909, v889, &qword_27D9BC028, &unk_22C9134B0);
              v770 = v882;
              sub_22C90829C();
              v771 = *(v1018 + 13);
              v1018 += 104;
              v1029 = v771;
              (v771)(v770, v1014, v1022);
              sub_22C9070CC();
              MEMORY[0x2318B4580]();
              sub_22C9070BC();
              LOBYTE(v1032) = 1;
              v1023 = v767;
              sub_22C90708C();
              if (v1009)
              {
                v772 = v866;
                sub_22C90402C();
                v773 = sub_22C9063CC();
                v774 = sub_22C90AACC();
                if (os_log_type_enabled(v773, v774))
                {
                  v775 = swift_slowAlloc();
                  *v775 = 0;
                  _os_log_impl(&dword_22C366000, v773, v774, "inserting pickOne expression into plan", v775, 2u);
                  MEMORY[0x2318B9880](v775, -1, -1);
                }

                (*(v953 + 8))(v772, v954);
                v1011 = *(v1008 + 24);
                sub_22C9087AC();
                v776 = v870;
                sub_22C90882C();

                v777 = (v1030 + 16);
                v778 = *(v1030 + 2);
                v779 = v1028;
                v778(v1012, v776, v1028);
                sub_22C5C89CC(0, v283);
                sub_22C90707C();
                sub_22C9068FC();
                v780 = v905;
                v1016 = v777;
                v1014 = v778;
                v778(v905, v776, v779);
                v781 = v973;
                MEMORY[0x2318B4810](v780);
                (v1029)(v781, *MEMORY[0x277D1DAE8], v1022);
                sub_22C9070BC();
                LOBYTE(v1032) = 1;
                v782 = v871;
                sub_22C90708C();
                v784 = v1019;
                v783 = v1020;
                v785 = v900;
                v1013 = *(v1020 + 16);
                (v1013)(v900, v782, v1019);
                swift_isUniquelyReferenced_nonNull_native();
                sub_22C5916E4();
                v283 = v786;
                v1032 = v786;
                sub_22C41D500(0, 0, 1, v785);
                v787 = v867;
                sub_22C3DB138(v904, v867, &qword_27D9BC028, &unk_22C9134B0);
                v788 = v1010;
                if (sub_22C370B74(v787, 1, v1010) == 1)
                {
                  (*(v783 + 8))(v782, v784);
                  v1024(v776, v1028);
                  v789 = *(v962 + 8);
                  v790 = v976;
                  v789(v929, v976);
                  v789(v919, v790);
                  sub_22C36DD28(v1027, &qword_27D9BC078, &unk_22C922810);
                  v791 = &qword_27D9BC028;
                  v792 = &unk_22C9134B0;
                  v793 = v787;
LABEL_284:
                  sub_22C36DD28(v793, v791, v792);
                  sub_22C36DD28(v909, &qword_27D9BC028, &unk_22C9134B0);
                  sub_22C4207B0(v904, type metadata accessor for PlanPostProcessor.ExpressionContext);
                  return v283;
                }

                v796 = v1004;
                v797 = v850;
                (*(v1004 + 32))(v850, v787, v788);
                if (sub_22C5FB484())
                {
                  sub_22C9087AC();
                  v798 = v846;
                  sub_22C90882C();

                  v799 = v1028;
                  v800 = v1014;
                  (v1014)(v1012, v798, v1028);
                  sub_22C5C89CC(0, v283);
                  sub_22C90707C();
                  sub_22C9068FC();
                  sub_22C3A5908(&qword_27D9BAC28, &unk_22C911F40);
                  v801 = (v1030[80] + 32) & ~v1030[80];
                  v802 = swift_allocObject();
                  *(v802 + 16) = v1021;
                  (v800)(v802 + v801, v798, v799);
                  v803 = v973;
                  *v973 = v802;
                  v804 = *MEMORY[0x277D1DEE8];
                  v805 = sub_22C906F2C();
                  (*(*(v805 - 8) + 104))(v803, v804, v805);
                  (v1029)(v803, v1017, v1022);
                  sub_22C9070BC();
                  v1033 = 1;
                  v806 = v838;
                  sub_22C90708C();
                  v807 = v839;
                  v808 = v1019;
                  (v1013)(v839, v806, v1019);
                  v809 = *(v283 + 16);
                  v810 = swift_isUniquelyReferenced_nonNull_native();
                  v1032 = v283;
                  if (!v810 || v809 >= *(v283 + 24) >> 1)
                  {
                    sub_22C5916E4();
                    v283 = v811;
                    v1032 = v811;
                  }

                  v812 = v1020;
                  v813 = v1004;
                  sub_22C41D500(0, 0, 1, v807);
                  v814 = *(v812 + 8);
                  v814(v806, v808);
                  v815 = v1028;
                  v816 = v1024;
                  v1024(v846, v1028);
                  (*(v813 + 8))(v850, v1010);
                  v814(v871, v808);
                  v816(v870, v815);
                }

                else
                {
                  (*(v796 + 8))(v797, v788);
                  (*(v1020 + 8))(v871, v1019);
                  v1024(v870, v1028);
                }

                v794 = *(v962 + 8);
                v795 = v929;
              }

              else
              {
                v794 = *(v962 + 8);
                v795 = v769;
              }

              v835 = v976;
              v794(v795, v976);
              v794(v919, v835);
              v791 = &qword_27D9BC078;
              v792 = &unk_22C922810;
              v793 = v1027;
              goto LABEL_284;
            }
          }

          sub_22C36DD28(v710, &qword_27D9BC028, &unk_22C9134B0);
          goto LABEL_230;
        }

        v1016(v756, v557);
        v758 = sub_22C906F2C();
        v759 = *(v758 - 8);
        if ((*(v759 + 88))(v756, v758) == *v311)
        {
          (*(v759 + 96))(v756, v758);
          LODWORD(v1009) = *v756;
          v760 = v688;
          v556 = v1028;
          v1024(v760, v1028);
        }

        else
        {
          (*(v759 + 8))(v756, v758);
          v836 = v688;
          v556 = v1028;
          v1024(v836, v1028);
          LODWORD(v1009) = 1;
        }

LABEL_209:
        v557 = v1022;
        goto LABEL_210;
      }

      sub_22C36DD28(v690, &qword_27D9BAA18, &qword_22C911C40);
      v1024(v688, v546);
      LODWORD(v1009) = 1;
    }

    v556 = v546;
    goto LABEL_209;
  }

  LODWORD(v1014) = v298;
  v301 = MEMORY[0x277D1DEF8];
  (*(v296 + 12))(v200, v294);
  v302 = sub_22C906F2C();
  v303 = *(v302 - 8);
  v304 = (*(v303 + 88))(v200, v302);
  if (v304 == *v301)
  {
    v305 = v304;
    (*(v303 + 96))(v200, v302);
    v306 = v200[1];
    v1029 = *v200;
    sub_22C3DB138(v1027, v288, &qword_27D9BC078, &unk_22C922810);
    v283 = v1023;
    if (sub_22C370B74(v288, 1, v1023) == 1)
    {

      v307 = &qword_27D9BC078;
      v308 = &unk_22C922810;
      v309 = v288;
LABEL_97:
      sub_22C36DD28(v309, v307, v308);
      goto LABEL_105;
    }

    v330 = v302;
    v331 = v303;
    *&v1021 = v330;
    v332 = v1011;
    sub_22C42074C(v288, v1011);
    if (*(v332 + *(v283 + 24)) == 1)
    {
      v333 = v1029;
      v334 = sub_22C90A27C();
      v336 = v335;
      v337 = v334 == v333 && v335 == v306;
      if (v337 || (v338 = v334, (sub_22C90B4FC() & 1) != 0))
      {
        sub_22C4207B0(v1011, type metadata accessor for PlanPostProcessor.ExpressionContext);

        goto LABEL_105;
      }

      v428 = v959;
      sub_22C903F8C();

      v429 = sub_22C9063CC();
      v430 = sub_22C90AACC();

      *&v1031 = v429;
      if (os_log_type_enabled(v429, v430))
      {
        v431 = swift_slowAlloc();
        v432 = swift_slowAlloc();
        v1032 = v432;
        *v431 = 136315138;
        v433 = sub_22C36F9F4(v333, v306, &v1032);

        *(v431 + 4) = v433;
        v434 = v1031;
        _os_log_impl(&dword_22C366000, v1031, v430, "converting property index to camelCase: '%s'", v431, 0xCu);
        sub_22C36FF94(v432);
        MEMORY[0x2318B9880](v432, -1, -1);
        MEMORY[0x2318B9880](v431, -1, -1);

        (*(v953 + 8))(v959, v954);
      }

      else
      {

        (*(v953 + 8))(v428, v954);
      }

      v514 = v1018;
      v515 = v1019;
      v516 = v1020;
      v517 = v942;
      (*(v1020 + 16))(v942, v1015, v1019);
      v518 = v973;
      *v973 = v338;
      v518[1] = v336;
      (*(v331 + 104))(v518, v305, v1021);
      (*(v514 + 13))(v518, v1014, v1022);
      sub_22C90703C();
      sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
      v519 = (*(v516 + 80) + 32) & ~*(v516 + 80);
      v283 = swift_allocObject();
      *(v283 + 16) = xmmword_22C90F800;
      (*(v516 + 32))(v283 + v519, v517, v515);
LABEL_127:
      v458 = v1011;
      goto LABEL_128;
    }

    v366 = v296;
    if ((sub_22C4161D4() & 1) == 0)
    {

      v398 = v966;
      sub_22C3DB138(v332, v966, &qword_27D9BC028, &unk_22C9134B0);
      v399 = v1010;
      if (sub_22C370B74(v398, 1, v1010) == 1)
      {
        sub_22C4207B0(v332, type metadata accessor for PlanPostProcessor.ExpressionContext);
        sub_22C36DD28(v398, &qword_27D9BC028, &unk_22C9134B0);
        v400 = v968;
        sub_22C36C640(v968, 1, 1, v399);
      }

      else
      {
        v400 = v968;
        sub_22C5FB388(v968);
        (*(v1004 + 8))(v398, v399);
        if (sub_22C370B74(v400, 1, v399) != 1)
        {
          sub_22C36DD28(v400, &qword_27D9BC028, &unk_22C9134B0);
          sub_22C9087AC();
          v532 = v928;
          sub_22C90882C();

          v533 = *(v1030 + 2);
          v534 = v913;
          v535 = v1028;
          v1029 = (v1030 + 16);
          v1019 = v533;
          v533(v913, v532);
          v536 = v911;
          v537 = v1026;
          sub_22C4177E0(v911);
          v1026 = v537;
          if (v537)
          {
            v538 = v1024;
            v1024(v534, v535);
            v538(v532, v535);
            v458 = v1011;
            goto LABEL_128;
          }

          sub_22C36C640(v536, 0, 1, v283);
          sub_22C6029B4();
          sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
          *&v1031 = *(v1020 + 72);
          v603 = (*(v1020 + 80) + 32) & ~*(v1020 + 80);
          v283 = swift_allocObject();
          *(v283 + 16) = xmmword_22C90F870;
          v1023 = (v283 + v603);
          sub_22C9068FC();
          sub_22C3A5908(&qword_27D9BAC28, &unk_22C911F40);
          v604 = (v1030[80] + 32) & ~v1030[80];
          v605 = swift_allocObject();
          *(v605 + 16) = xmmword_22C90F800;
          v606 = v1019;
          v1019(v605 + v604, v532, v535);
          v607 = v892;
          *v892 = v605;
          (*(v331 + 104))(v607, *MEMORY[0x277D1DEE8], v1021);
          (*(v366 + 13))(v607, v1014, v1022);
          sub_22C9070CC();
          sub_22C9070BC();
          LOBYTE(v1032) = 1;
          sub_22C90708C();
          v608 = v928;
          v609 = v1028;
          v606(v1012, v928, v1028);
          v610 = sub_22C90702C();
          MEMORY[0x2318B4580](v610);
          sub_22C9070BC();
          LOBYTE(v1032) = 1;
          sub_22C90708C();
          v1024(v608, v609);
          goto LABEL_127;
        }

        sub_22C4207B0(v332, type metadata accessor for PlanPostProcessor.ExpressionContext);
      }

      v307 = &qword_27D9BC028;
      v308 = &unk_22C9134B0;
      v309 = v400;
      goto LABEL_97;
    }

    if (sub_22C907D2C() == 0x6E45686372616573 && v367 == 0xEC00000079746974)
    {
    }

    else
    {
      v369 = sub_22C90B4FC();

      if ((v369 & 1) == 0)
      {
        goto LABEL_113;
      }
    }

    v435 = v958;
    sub_22C907D5C();
    v436 = sub_22C90768C();
    v438 = v437;
    v439 = *(v992 + 8);
    v992 += 8;
    v439(v435, v989);
    if (v436 == 0x657461676976616ELL && v438 == 0xEB000000006F745FLL)
    {
      goto LABEL_110;
    }

    v441 = sub_22C90B4FC();

    if (v441)
    {
      goto LABEL_111;
    }

    v442 = v908;
    sub_22C907D5C();
    v443 = sub_22C90768C();
    v445 = v444;
    v439(v442, v989);
    if (v443 == 0x64656D5F79616C70 && v445 == 0xEA00000000006169)
    {
LABEL_110:
    }

    else
    {
      v447 = sub_22C90B4FC();

      if ((v447 & 1) == 0)
      {
LABEL_113:
        v496 = v949;
        sub_22C420958(v1031, v949, type metadata accessor for PlanPostProcessor);
        v497 = v948;
        sub_22C9068FC();
        v498 = sub_22C9070CC();
        v499 = v950;
        *v950 = v1029;
        *(v499 + 8) = v306;
        swift_storeEnumTagMultiPayload();
        v283 = sub_22C416734(v499, v497, v332, v498 & 1);
        sub_22C4207B0(v499, type metadata accessor for PlanPostProcessor.ImplicitSearchRequest);
        v1024(v497, v1028);
        sub_22C4207B0(v496, type metadata accessor for PlanPostProcessor);
        v458 = v332;
        goto LABEL_128;
      }
    }

LABEL_111:
    v467 = v956;
    sub_22C907D5C();
    v468 = sub_22C90768C();
    v470 = v469;
    v439(v467, v989);
    v471 = sub_22C907D2C();
    v473 = sub_22C4165AC(v468, v470, v471, v472, v332);
    v475 = v474;

    if (v475)
    {

      v476 = v1031;
      v1022 = v475;
      sub_22C9087AC();
      v477 = v960;
      sub_22C90882C();

      v478 = v1020;
      v479 = *(v1020 + 16);
      v1023 = (v1020 + 16);
      v1029 = v479;
      (v479)(v961, v1015, v1019);
      *&v1021 = v473;
      v480 = *(v1030 + 2);
      v480(v1012, v477, v1028);
      sub_22C90707C();
      v481 = v476;
      v482 = v935;
      sub_22C420958(v481, v935, type metadata accessor for PlanPostProcessor);
      v483 = *(sub_22C3A5908(&qword_27D9BC098, &unk_22C911F50) + 48);
      v484 = v936;
      v485 = v1022;
      *v936 = v1021;
      *(v484 + 8) = v485;
      v486 = v477;
      v487 = v1028;
      v480((v484 + v483), v486, v1028);
      swift_storeEnumTagMultiPayload();
      v488 = v934;
      sub_22C9068FC();
      v489 = sub_22C9070CC();
      v490 = sub_22C416734(v484, v488, v1011, v489 & 1);
      v491 = v1024;
      v1024(v488, v487);
      sub_22C4207B0(v484, type metadata accessor for PlanPostProcessor.ImplicitSearchRequest);
      sub_22C4207B0(v482, type metadata accessor for PlanPostProcessor);
      sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
      v492 = (*(v478 + 80) + 32) & ~*(v478 + 80);
      v493 = swift_allocObject();
      *(v493 + 16) = xmmword_22C90F800;
      v494 = v961;
      v495 = v1019;
      (v1029)(v493 + v492, v961, v1019);
      v1032 = v490;
      sub_22C3CD204(v493);
      (*(v478 + 8))(v494, v495);
      v491(v960, v487);
      sub_22C4207B0(v1011, type metadata accessor for PlanPostProcessor.ExpressionContext);
      v283 = v1032;
      goto LABEL_156;
    }

    goto LABEL_113;
  }

  v319 = v303;
  v1013 = v200;
  v320 = *v300;
  if (v304 != v320)
  {
    sub_22C3DB138(v1027, v280, &qword_27D9BC078, &unk_22C922810);
    v345 = v1023;
    v346 = sub_22C370B74(v280, 1, v1023);
    v347 = v1028;
    if (v346 == 1)
    {
      v348 = &qword_27D9BC078;
      v349 = &unk_22C922810;
      v350 = v280;
    }

    else
    {
      v373 = v991;
      sub_22C42074C(v280, v991);
      if (v373[v345[6]] == 1)
      {
        sub_22C4207B0(v373, type metadata accessor for PlanPostProcessor.ExpressionContext);
LABEL_104:
        (*(v319 + 8))(v1013, v302);
        goto LABEL_105;
      }

      v412 = v967;
      sub_22C3DB138(v373, v967, &qword_27D9BC028, &unk_22C9134B0);
      v413 = v1010;
      if (sub_22C370B74(v412, 1, v1010) == 1)
      {
        sub_22C4207B0(v373, type metadata accessor for PlanPostProcessor.ExpressionContext);
        sub_22C36DD28(v412, &qword_27D9BC028, &unk_22C9134B0);
        v414 = v969;
        sub_22C36C640(v969, 1, 1, v413);
      }

      else
      {
        v414 = v969;
        sub_22C5FB388(v969);
        (*(v1004 + 8))(v412, v413);
        if (sub_22C370B74(v414, 1, v413) != 1)
        {
          sub_22C36DD28(v414, &qword_27D9BC028, &unk_22C9134B0);
          sub_22C9087AC();
          v539 = v916;
          sub_22C90882C();

          v540 = v347;
          v541 = *(v1030 + 2);
          v542 = v914;
          v1029 = (v1030 + 16);
          *&v1021 = v541;
          v541(v914, v539, v540);
          v543 = v912;
          v544 = v1026;
          sub_22C4177E0(v912);
          v1026 = v544;
          if (v544)
          {
            v283 = v1028;
            v545 = v1024;
            v1024(v542, v1028);
            v545(v539, v283);
          }

          else
          {
            sub_22C36C640(v543, 0, 1, v345);
            sub_22C6029B4();
            sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
            *&v1031 = *(v1020 + 72);
            v611 = (*(v1020 + 80) + 32) & ~*(v1020 + 80);
            v283 = swift_allocObject();
            *(v283 + 16) = xmmword_22C90F870;
            v1023 = (v283 + v611);
            sub_22C9068FC();
            sub_22C3A5908(&qword_27D9BAC28, &unk_22C911F40);
            v612 = v539;
            v613 = (v1030[80] + 32) & ~v1030[80];
            v614 = swift_allocObject();
            *(v614 + 16) = xmmword_22C90F800;
            v615 = v614 + v613;
            v616 = v612;
            v617 = v1021;
            (v1021)(v615, v612, v1028);
            v618 = v891;
            *v891 = v614;
            (*(v319 + 104))(v618, v320, v302);
            (*(v1018 + 13))(v618, v1014, v1022);
            sub_22C9070CC();
            sub_22C9070BC();
            LOBYTE(v1032) = 1;
            sub_22C90708C();
            v617(v1012, v616, v1028);
            v619 = sub_22C90702C();
            MEMORY[0x2318B4580](v619);
            sub_22C9070BC();
            LOBYTE(v1032) = 1;
            sub_22C90708C();
            v1024(v616, v1028);
          }

          sub_22C4207B0(v991, type metadata accessor for PlanPostProcessor.ExpressionContext);
          sub_22C36DD28(v1027, &qword_27D9BC078, &unk_22C922810);
          (*(v319 + 8))(v1013, v302);
          return v283;
        }

        sub_22C4207B0(v373, type metadata accessor for PlanPostProcessor.ExpressionContext);
      }

      v348 = &qword_27D9BC028;
      v349 = &unk_22C9134B0;
      v350 = v414;
    }

    sub_22C36DD28(v350, v348, v349);
    goto LABEL_104;
  }

  v321 = v1013;
  (*(v303 + 96))(v1013, v302);
  v322 = *v321;
  sub_22C3DB138(v1027, v283, &qword_27D9BC078, &unk_22C922810);
  v323 = sub_22C370B74(v283, 1, v1023);
  v324 = v1028;
  if (v323 == 1)
  {

    v307 = &qword_27D9BC078;
    v308 = &unk_22C922810;
    v309 = v283;
    goto LABEL_97;
  }

  v359 = v996;
  sub_22C42074C(v283, v996);
  sub_22C420958(v359, v1021, type metadata accessor for PlanPostProcessor.ExpressionContext);
  v360 = v984;
  sub_22C3DB138(v359, v984, &qword_27D9BC028, &unk_22C9134B0);
  v361 = v1010;
  if (sub_22C370B74(v360, 1, v1010) == 1)
  {
    sub_22C36DD28(v360, &qword_27D9BC028, &unk_22C9134B0);
    v362 = v985;
    sub_22C36C640(v985, 1, 1, v361);
    v363 = v1017;
  }

  else
  {
    v362 = v985;
    sub_22C5FB388(v985);
    (*(v1004 + 8))(v360, v361);
    v381 = sub_22C370B74(v362, 1, v361);
    v363 = v1017;
    if (v381 != 1)
    {
      sub_22C36DD28(v362, &qword_27D9BC028, &unk_22C9134B0);
      v456 = v943;
      v457 = v1026;
      sub_22C4177E0(v943);
      v1026 = v457;
      if (v457)
      {

        sub_22C4207B0(v1021, type metadata accessor for PlanPostProcessor.ExpressionContext);
        v458 = v359;
LABEL_128:
        sub_22C4207B0(v458, type metadata accessor for PlanPostProcessor.ExpressionContext);
        goto LABEL_156;
      }

      v567 = v1021;
      sub_22C4207B0(v1021, type metadata accessor for PlanPostProcessor.ExpressionContext);
      sub_22C42074C(v456, v567);
      goto LABEL_51;
    }
  }

  sub_22C36DD28(v362, &qword_27D9BC028, &unk_22C9134B0);
LABEL_51:
  v382 = v1031;
  v1022 = *(v322 + 2);
  if (!v1022)
  {
LABEL_64:

    sub_22C4207B0(v1021, type metadata accessor for PlanPostProcessor.ExpressionContext);
    sub_22C4207B0(v996, type metadata accessor for PlanPostProcessor.ExpressionContext);
    goto LABEL_105;
  }

  v383 = 0;
  v1018 = &v322[(v1030[80] + 32) & ~v1030[80]];
  v1023 = v1030 + 16;
  while (1)
  {
    if (v383 >= *(v322 + 2))
    {
      __break(1u);
LABEL_239:
      __break(1u);
      goto LABEL_240;
    }

    v384 = *(v1030 + 9);
    v385 = *(v1030 + 2);
    v385(v363, &v1018[v384 * v383], v324);
    sub_22C420958(v1021, v1029, type metadata accessor for PlanPostProcessor.ExpressionContext);
    swift_isUniquelyReferenced_nonNull_native();
    v382 = *v382;
    v1032 = v382;
    sub_22C628274();
    v388 = v382[2];
    v389 = (v387 & 1) == 0;
    v363 = v388 + v389;
    if (__OFADD__(v388, v389))
    {
      goto LABEL_239;
    }

    v283 = v386;
    v390 = v387;
    sub_22C3A5908(&qword_27D9BC080, &qword_22C911F38);
    if (sub_22C90B15C())
    {
      v363 = v1017;
      sub_22C628274();
      v324 = v1028;
      if ((v390 & 1) != (v392 & 1))
      {
        goto LABEL_294;
      }

      v283 = v391;
    }

    else
    {
      v324 = v1028;
      v363 = v1017;
    }

    v393 = v1032;
    if ((v390 & 1) == 0)
    {
      break;
    }

    sub_22C420808(v1029, v1032[7] + *(v1016 + 9) * v283);
    v1024(v363, v324);
LABEL_63:
    ++v383;
    v397 = v1031;
    *v1031 = v393;
    v382 = v397;
    if (v1022 == v383)
    {
      goto LABEL_64;
    }
  }

  v1032[(v283 >> 6) + 8] |= 1 << v283;
  v385(v393[6] + v283 * v384, v363, v324);
  sub_22C42074C(v1029, v393[7] + *(v1016 + 9) * v283);
  v1024(v363, v324);
  v394 = v393[2];
  v395 = __OFADD__(v394, 1);
  v396 = v394 + 1;
  if (!v395)
  {
    v393[2] = v396;
    goto LABEL_63;
  }

  __break(1u);
LABEL_266:
  sub_22C42074C(v390, v842);
  v817 = sub_22C41840C(v902);
  v1029 = MEMORY[0x2318B4480](v817);
  v818 = v1031;
  v819 = v901;
  v1023 = v1029[2];
  if (!v1023)
  {
LABEL_279:

    sub_22C4207B0(v902, type metadata accessor for PlanPostProcessor.ExpressionContext);
    sub_22C4207B0(v842, type metadata accessor for PlanPostProcessor.ExpressionContext);
    (*(v847 + 8))(v283, v848);
    goto LABEL_105;
  }

  v820 = 0;
  v1022 = v1029 + ((v1030[80] + 32) & ~v1030[80]);
  while (v820 < v1029[2])
  {
    v821 = *(v1030 + 9);
    v822 = *(v1030 + 2);
    v822(v819, v1022 + v821 * v820, v324);
    sub_22C420958(v902, v921, type metadata accessor for PlanPostProcessor.ExpressionContext);
    swift_isUniquelyReferenced_nonNull_native();
    v823 = *v818;
    v1032 = v823;
    sub_22C628274();
    if (__OFADD__(*(v823 + 16), (v825 & 1) == 0))
    {
      goto LABEL_291;
    }

    v826 = v824;
    v827 = v825;
    sub_22C3A5908(&qword_27D9BC080, &qword_22C911F38);
    if (sub_22C90B15C())
    {
      v819 = v901;
      sub_22C628274();
      v324 = v1028;
      if ((v827 & 1) != (v829 & 1))
      {
        goto LABEL_294;
      }

      v826 = v828;
    }

    else
    {
      v324 = v1028;
      v819 = v901;
    }

    v830 = v1032;
    if (v827)
    {
      sub_22C420808(v921, v1032[7] + *(v1016 + 9) * v826);
      v1024(v819, v324);
    }

    else
    {
      v1032[(v826 >> 6) + 8] |= 1 << v826;
      v822((v830[6] + v826 * v821), v819, v324);
      sub_22C42074C(v921, v830[7] + *(v1016 + 9) * v826);
      v1024(v819, v324);
      v831 = v830[2];
      v395 = __OFADD__(v831, 1);
      v832 = v831 + 1;
      if (v395)
      {
        goto LABEL_293;
      }

      v830[2] = v832;
    }

    v283 = v903;
    ++v820;
    v833 = v1031;
    *v1031 = v830;
    v818 = v833;
    if (v1023 == v820)
    {
      goto LABEL_279;
    }
  }

LABEL_290:
  __break(1u);
LABEL_291:
  __break(1u);
LABEL_292:
  __break(1u);
LABEL_293:
  __break(1u);
LABEL_294:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

char *sub_22C412664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v462 = a3;
  v489 = a1;
  v4 = sub_22C3A5908(&qword_27D9BC078, &unk_22C922810);
  MEMORY[0x28223BE20](v4 - 8);
  v456 = &v370 - v5;
  v483 = sub_22C90941C();
  v518 = *(v483 - 8);
  MEMORY[0x28223BE20](v483);
  v488 = &v370 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C90700C();
  MEMORY[0x28223BE20](v7 - 8);
  v440 = &v370 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v395 = sub_22C9063DC();
  v513 = *(v395 - 8);
  MEMORY[0x28223BE20](v395);
  v394 = &v370 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  MEMORY[0x28223BE20](v10 - 8);
  v400 = &v370 - v11;
  v12 = sub_22C3A5908(&qword_27D9BC068, &qword_22C920590);
  MEMORY[0x28223BE20](v12 - 8);
  v414 = &v370 - v13;
  v427 = sub_22C9088CC();
  v508 = *(v427 - 8);
  MEMORY[0x28223BE20](v427);
  v475 = &v370 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v492 = sub_22C90654C();
  v507 = *(v492 - 8);
  v15 = MEMORY[0x28223BE20](v492);
  v505 = &v370 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v438 = (&v370 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v383 = &v370 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v472 = &v370 - v22;
  MEMORY[0x28223BE20](v21);
  v431 = &v370 - v23;
  v428 = sub_22C90832C();
  v506 = *(v428 - 8);
  MEMORY[0x28223BE20](v428);
  v439 = &v370 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v387 = &v370 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v448 = &v370 - v28;
  v500 = sub_22C9070DC();
  v486 = *(v500 - 8);
  v29 = MEMORY[0x28223BE20](v500);
  v410 = &v370 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v445 = &v370 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v430 = &v370 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v398 = &v370 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v397 = &v370 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v411 = &v370 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v412 = &v370 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v382 = &v370 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v474 = &v370 - v46;
  MEMORY[0x28223BE20](v45);
  v441 = &v370 - v47;
  v408 = type metadata accessor for PlanPostProcessor.ImplicitSearchRequest(0);
  MEMORY[0x28223BE20](v408);
  v403 = &v370 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v461 = sub_22C90769C();
  v517 = *(v461 - 8);
  MEMORY[0x28223BE20](v461);
  v460 = &v370 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v457 = sub_22C907D6C();
  v515 = *(v457 - 8);
  v50 = MEMORY[0x28223BE20](v457);
  v480 = &v370 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v407 = &v370 - v52;
  v458 = type metadata accessor for PlanPostProcessor.ExpressionContext(0);
  v53 = MEMORY[0x28223BE20](v458);
  v455 = &v370 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x28223BE20](v53);
  v402 = &v370 - v56;
  MEMORY[0x28223BE20](v55);
  v406 = &v370 - v57;
  v58 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  v59 = MEMORY[0x28223BE20](v58 - 8);
  v454 = &v370 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x28223BE20](v59);
  v453 = (&v370 - v62);
  v63 = MEMORY[0x28223BE20](v61);
  v452 = &v370 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v405 = &v370 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v401 = (&v370 - v68);
  v69 = MEMORY[0x28223BE20](v67);
  v404 = &v370 - v70;
  MEMORY[0x28223BE20](v69);
  v413 = &v370 - v71;
  v417 = sub_22C90952C();
  v509 = *(v417 - 8);
  MEMORY[0x28223BE20](v417);
  v416 = &v370 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v494 = sub_22C9093BC();
  v504 = *(v494 - 8);
  MEMORY[0x28223BE20](v494);
  v415 = &v370 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v437 = sub_22C9026BC();
  v497 = *(v437 - 8);
  MEMORY[0x28223BE20](v437);
  v436 = &v370 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v435 = sub_22C907DEC();
  v496 = *(v435 - 8);
  MEMORY[0x28223BE20](v435);
  v434 = &v370 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v433 = sub_22C9020CC();
  v491 = *(v433 - 8);
  MEMORY[0x28223BE20](v433);
  v432 = &v370 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v484 = sub_22C90880C();
  v490 = *(v484 - 8);
  MEMORY[0x28223BE20](v484);
  v485 = &v370 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_22C3A5908(&qword_27D9BC0A0, &unk_22C922F30);
  MEMORY[0x28223BE20](v78 - 8);
  v451 = &v370 - v79;
  v466 = sub_22C906ECC();
  v487 = *(v466 - 8);
  MEMORY[0x28223BE20](v466);
  v442 = &v370 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v512 = sub_22C90981C();
  v520 = *(v512 - 8);
  v81 = MEMORY[0x28223BE20](v512);
  v522 = &v370 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = MEMORY[0x28223BE20](v81);
  v479 = &v370 - v84;
  MEMORY[0x28223BE20](v83);
  v502 = &v370 - v85;
  v516 = sub_22C901FAC();
  v495 = *(v516 - 8);
  v86 = MEMORY[0x28223BE20](v516);
  v409 = &v370 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = MEMORY[0x28223BE20](v86);
  v499 = &v370 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v444 = &v370 - v91;
  v92 = MEMORY[0x28223BE20](v90);
  v396 = &v370 - v93;
  v94 = MEMORY[0x28223BE20](v92);
  v399 = &v370 - v95;
  v96 = MEMORY[0x28223BE20](v94);
  v98 = &v370 - v97;
  v99 = MEMORY[0x28223BE20](v96);
  v101 = &v370 - v100;
  v102 = MEMORY[0x28223BE20](v99);
  v510 = &v370 - v103;
  v104 = MEMORY[0x28223BE20](v102);
  v106 = &v370 - v105;
  MEMORY[0x28223BE20](v104);
  v108 = &v370 - v107;
  v109 = sub_22C3A5908(&qword_27D9BAA00, &qword_22C911F60);
  v110 = MEMORY[0x28223BE20](v109 - 8);
  v112 = &v370 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v110);
  v114 = &v370 - v113;
  v115 = sub_22C3A5908(&qword_27D9BC0A8, &qword_22C911F68);
  v116 = MEMORY[0x28223BE20](v115);
  v463 = &v370 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = MEMORY[0x28223BE20](v116);
  v120 = (&v370 - v119);
  v464 = v118;
  v121 = i;
  v122 = sub_22C41C208(&v370 + *(v118 + 48) - v119, a2);
  if (v121)
  {
    return v114;
  }

  v493 = v114;
  v503 = v112;
  v511 = v108;
  v514 = v106;
  v374 = v101;
  v380 = v98;
  v501 = 0;
  v459 = a2;
  *v120 = v122;
  v450 = v120;
  v123 = v463;
  sub_22C3DB138(v120, v463, &qword_27D9BC0A8, &qword_22C911F68);
  v519 = *v123;
  v124 = *(v464 + 48);
  v125 = sub_22C90658C();
  (*(*(v125 - 8) + 8))(&v123[v124], v125);
  v127 = v489 + 64;
  v126 = *(v489 + 64);
  v128 = 1 << *(v489 + 32);
  v129 = -1;
  v524 = MEMORY[0x277D84F90];
  if (v128 < 64)
  {
    v129 = ~(-1 << v128);
  }

  v130 = v129 & v126;
  v131 = (v128 + 63) >> 6;
  v478 = (v490 + 8);
  v426 = (v487 + 4);
  v425 = (v496 + 8);
  v424 = (v497 + 11);
  v423 = *MEMORY[0x277D1CBF0];
  v422 = v487 + 1;
  v393 = (v497 + 1);
  v392 = (v497 + 12);
  v391 = (v491 + 32);
  v390 = (v504 + 8);
  v389 = (v509 + 1);
  v388 = (v491 + 8);
  v449 = (v517 + 2);
  v465 = (v518 + 8);
  v446 = (v515 + 4);
  v420 = *MEMORY[0x277D1DA48];
  v468 = *MEMORY[0x277D1DA50];
  v470 = *MEMORY[0x277D1DA78];
  v421 = *MEMORY[0x277D1DAA8];
  HIDWORD(v371) = *MEMORY[0x277D1DED8];
  v376 = *MEMORY[0x277D1DAE8];
  v419 = *MEMORY[0x277D1DEE8];
  v515 = (v495 + 16);
  v509 = (v495 + 32);
  v517 = (v520 + 8);
  v518 = v520 + 16;
  v471 = (v520 + 32);
  v497 = (v495 + 8);
  v447 = (v486 + 32);
  v481 = (v507 + 88);
  v487 = (v486 + 8);
  v473 = (v507 + 8);
  v386 = (v507 + 96);
  v385 = (v506 + 32);
  v379 = (v508 + 32);
  v482 = (v486 + 16);
  v378 = (v508 + 8);
  v384 = (v506 + 8);
  v375 = (v513 + 8);
  v429 = (v507 + 104);

  v132 = 0;
  v508 = MEMORY[0x277D84F98];
  v418 = xmmword_22C90F800;
  v133 = v505;
  v491 = v127;
  v490 = v131;
LABEL_5:
  v134 = v503;
  if (!v130)
  {
    while (1)
    {
      v135 = v132 + 1;
      if (__OFADD__(v132, 1))
      {
        goto LABEL_102;
      }

      if (v135 >= v131)
      {
        v506 = v132;
        v202 = sub_22C3A5908(&qword_27D9BAA30, &unk_22C911F70);
        sub_22C36C640(v134, 1, 1, v202);
        v507 = 0;
        goto LABEL_12;
      }

      v130 = *(v127 + 8 * v135);
      ++v132;
      if (v130)
      {
        v506 = v135;
        goto LABEL_11;
      }
    }
  }

  v506 = v132;
  v135 = v132;
LABEL_11:
  v507 = (v130 - 1) & v130;
  v136 = __clz(__rbit64(v130)) | (v135 << 6);
  v137 = (*(v489 + 48) + 16 * v136);
  v139 = *v137;
  v138 = v137[1];
  v140 = v495;
  v141 = v511;
  v142 = v516;
  (*(v495 + 16))(v511, *(v489 + 56) + *(v495 + 72) * v136, v516);
  v143 = sub_22C3A5908(&qword_27D9BAA30, &unk_22C911F70);
  v144 = *(v143 + 48);
  v145 = v503;
  *v503 = v139;
  *(v145 + 1) = v138;
  v146 = v142;
  v134 = v145;
  (*(v140 + 32))(&v145[v144], v141, v146);
  sub_22C36C640(v134, 0, 1, v143);

  v133 = v505;
LABEL_12:
  v147 = v134;
  v148 = v493;
  sub_22C3DB08C(v147, v493, &qword_27D9BAA00, &qword_22C911F60);
  v149 = sub_22C3A5908(&qword_27D9BAA30, &unk_22C911F70);
  if (sub_22C370B74(v148, 1, v149) != 1)
  {
    v150 = *v148;
    v151 = v148[1];
    v152 = v148 + *(v149 + 48);
    v153 = v514;
    v154 = v516;
    v496 = *v509;
    (v496)(v514, v152, v516);
    v513 = *v515;
    (v513)(v510, v153, v154);
    v101 = 0;
    v155 = v519;
    v156 = *(v519 + 16);
    v157 = v494;
    v158 = v512;
    v159 = v499;
    for (i = v150; ; v150 = i)
    {
      if (v156 == v101)
      {
        v163 = v511;
        v164 = v514;
        v165 = v150;
        v166 = v516;
        (v513)(v511, v514, v516);
        v167 = v508;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v523 = v167;
        sub_22C62C9F4(v163, v165, v151, isUniquelyReferenced_nonNull_native, v169, v170, v171, v172, v370, v371, v372, v373, v374, v375);

        v508 = v523;
        v173 = v510;
        goto LABEL_67;
      }

      if (v101 >= *(v155 + 16))
      {
        break;
      }

      (*(v520 + 16))(v522, v155 + ((*(v520 + 80) + 32) & ~*(v520 + 80)) + *(v520 + 72) * v101, v158);
      if (sub_22C9097DC() == v150 && v160 == v151)
      {

LABEL_24:
        v504 = v151;
        v174 = *v471;
        v175 = v479;
        (*v471)(v479, v522, v158);
        v174(v502, v175, v158);
        v176 = type metadata accessor for PlanPostProcessor(0);
        v177 = v498;
        MEMORY[0x28223BE20](v176);
        v178 = v514;
        *(&v370 - 2) = v514;
        v179 = v501;
        v181 = sub_22C5EC5FC(sub_22C4209B8, (&v370 - 4), v180);
        v501 = v179;
        if (v181)
        {
          v182 = (v513)(v159, v178, v516);
          v183 = v452;
          MEMORY[0x2318B6CE0](v182);
          v184 = v483;
          sub_22C36C640(v183, 0, 1, v483);
          sub_22C9068FC();
          sub_22C3DB138(v450, v463, &qword_27D9BC0A8, &qword_22C911F68);

          (*v449)(v460, v459, v461);
          sub_22C9097DC();
          v185 = v183;
          sub_22C907D4C();
          v186 = v454;
          sub_22C3DB138(v183, v454, &qword_27D9BC028, &unk_22C9134B0);
          if (sub_22C370B74(v186, 1, v184) == 1)
          {
            sub_22C36DD28(v183, &qword_27D9BC028, &unk_22C9134B0);
            sub_22C36DD28(v186, &qword_27D9BC028, &unk_22C9134B0);
            v187 = 1;
            v188 = v456;
            v189 = v458;
            v190 = v455;
            v191 = v453;
          }

          else
          {
            v191 = v453;
            sub_22C5FB67C(v453);
            sub_22C36DD28(v185, &qword_27D9BC028, &unk_22C9134B0);
            (*v465)(v186, v184);
            v187 = 0;
            v188 = v456;
            v189 = v458;
            v190 = v455;
          }

          v201 = v504;
          sub_22C36C640(v191, v187, 1, v184);
          sub_22C3DB08C(v191, v190, &qword_27D9BC028, &unk_22C9134B0);
          (*v446)(v190 + v189[5], v480, v457);
          *(v190 + v189[6]) = 0;
          *(v190 + v189[7]) = MEMORY[0x277D84F90];
          sub_22C42074C(v190, v188);
          sub_22C36C640(v188, 0, 1, v189);
          sub_22C6029B4();
          v158 = v512;
          v173 = v510;
          goto LABEL_65;
        }

        v192 = v177 + *(v176 + 24);
        v193 = v485;
        v477 = v192;
        sub_22C90878C();
        v194 = sub_22C9087DC();
        v195 = *v478;
        (*v478)(v193, v484);
        v523 = v194;
        v196 = sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
        sub_22C3D32C8(&qword_27D9BA9F8, &qword_27D9BA9F0, &qword_22C912420, MEMORY[0x277D1E9D8]);
        v197 = v451;
        sub_22C907EBC();

        v198 = v466;
        v199 = sub_22C370B74(v197, 1, v466);
        v469 = v196;
        if (v199 == 1)
        {
          sub_22C36DD28(v197, &qword_27D9BC0A0, &unk_22C922F30);
          v200 = v485;
          goto LABEL_29;
        }

        v203 = v442;
        (*v426)(v442, v197, v198);
        v204 = v434;
        sub_22C906EBC();
        v205 = v436;
        sub_22C907DAC();
        (*v425)(v204, v435);
        v206 = v437;
        v207 = (*v424)(v205, v437);
        v201 = v504;
        if (v207 == v423)
        {
          (*v392)(v205, v206);
          (*v391)(v432, v205, v433);
          v208 = v415;
          sub_22C90207C();
          v209 = v416;
          sub_22C90935C();
          (*v390)(v208, v157);
          v210 = v417;
          if (qword_27D9BA660 != -1)
          {
            swift_once();
          }

          sub_22C37AA60(v210, qword_27D9E3EC8);
          v211 = sub_22C90950C();
          (*v389)(v209, v210);
          v200 = v485;
          if (v211)
          {
            v212 = sub_22C90768C();
            v214 = v213;
            v215 = sub_22C9097DC();
            v217 = v216;
            v218 = v413;
            MEMORY[0x2318B6CE0]();
            sub_22C36C640(v218, 0, 1, v483);
            v219 = sub_22C4165AC(v212, v214, v215, v217, v218);
            v221 = v220;

            v222 = sub_22C36DD28(v218, &qword_27D9BC028, &unk_22C9134B0);
            if (v221)
            {
              v476 = v221;
              v469 = v219;
              v223 = v404;
              MEMORY[0x2318B6CE0](v222);
              v224 = v483;
              sub_22C36C640(v223, 0, 1, v483);
              sub_22C9068FC();
              sub_22C3DB138(v450, v463, &qword_27D9BC0A8, &qword_22C911F68);

              (*v449)(v460, v459, v461);
              sub_22C9097DC();
              v225 = v407;
              sub_22C907D4C();
              v226 = v405;
              sub_22C3DB138(v223, v405, &qword_27D9BC028, &unk_22C9134B0);
              if (sub_22C370B74(v226, 1, v224) == 1)
              {
                sub_22C36DD28(v223, &qword_27D9BC028, &unk_22C9134B0);
                sub_22C36DD28(v226, &qword_27D9BC028, &unk_22C9134B0);
                v227 = 1;
                v228 = v403;
                v229 = v457;
                v230 = v402;
                v231 = v401;
              }

              else
              {
                v231 = v401;
                sub_22C5FB67C(v401);
                sub_22C36DD28(v223, &qword_27D9BC028, &unk_22C9134B0);
                (*v465)(v226, v224);
                v227 = 0;
                v228 = v403;
                v229 = v457;
                v230 = v402;
              }

              sub_22C36C640(v231, v227, 1, v224);
              sub_22C3DB08C(v231, v230, &qword_27D9BC028, &unk_22C9134B0);
              v295 = v458;
              (*v446)(v230 + *(v458 + 20), v225, v229);
              *(v230 + *(v295 + 24)) = 0;
              *(v230 + *(v295 + 28)) = MEMORY[0x277D84F90];
              v296 = v230;
              v297 = v406;
              sub_22C42074C(v296, v406);
              sub_22C9087AC();
              v298 = v511;
              sub_22C90882C();

              v299 = *(sub_22C3A5908(&qword_27D9BC098, &unk_22C911F50) + 48);
              v300 = v476;
              *v228 = v469;
              v228[1] = v300;
              v301 = v516;
              v302 = v513;
              (v513)(v228 + v299, v514, v516);
              swift_storeEnumTagMultiPayload();
              sub_22C416734(v228, v298, v297, 0);
              sub_22C4207B0(v228, type metadata accessor for PlanPostProcessor.ImplicitSearchRequest);
              sub_22C3CD9A4();
              sub_22C4207B0(v297, type metadata accessor for PlanPostProcessor.ExpressionContext);
              (*v388)(v432, v433);
              (*v422)(v442, v466);
              v173 = v510;
              (*v497)(v510, v301);
              (v496)(v173, v298, v301);
              v278 = v302;
              v158 = v512;
              goto LABEL_92;
            }

            (*v388)(v432, v433);
            (*v422)(v442, v466);
            v158 = v512;
LABEL_29:
            v201 = v504;
LABEL_43:
            sub_22C90878C();
            v232 = v200;
            v233 = v448;
            sub_22C646D68();
            v443 = v195;
            v195(v232, v484);
            v234 = v500;
            if (sub_22C370B74(v233, 1, v500) == 1)
            {
              v235 = sub_22C36DD28(v233, &qword_27D9BAA18, &qword_22C911C40);
              v236 = v488;
              goto LABEL_58;
            }

            v237 = *v447;
            v238 = v441;
            (*v447)(v441, v233, v234);
            v239 = v431;
            sub_22C90702C();
            v240 = v492;
            v476 = *v481;
            v241 = (v476)(v239, v492);
            if (v241 == v420)
            {
              v381 = v237;
              v377 = *v386;
              v377(v239, v240);
              v242 = v239;
              v243 = v428;
              (*v385)(v439, v242, v428);
              v244 = v485;
              sub_22C90878C();
              v101 = &v370;
              v523 = sub_22C9087DC();
              MEMORY[0x28223BE20](v523);
              *(&v370 - 2) = v514;
              sub_22C3D32C8(&qword_27D9BC090, &qword_27D9BA9F0, &qword_22C912420, MEMORY[0x277D1E9D0]);
              v245 = v414;
              v246 = v427;
              v247 = v501;
              sub_22C907D9C();
              v501 = v247;

              v443(v244, v484);
              if (sub_22C370B74(v245, 1, v246) == 1)
              {
                (*v384)(v439, v243);
                (*v487)(v441, v500);
                v235 = sub_22C36DD28(v245, &qword_27D9BC068, &qword_22C920590);
                v236 = v488;
                v158 = v512;
                goto LABEL_58;
              }

              v248 = v475;
              (*v379)(v475, v245, v246);
              v249 = sub_22C90887C();
              v250 = 0;
              v469 = *(v249 + 16);
              v236 = v488;
              v158 = v512;
              for (j = v249; ; v249 = j)
              {
                if (v469 == v250)
                {

                  (*v378)(v248, v427);
                  (*v384)(v439, v428);
                  v235 = (*v487)(v441, v500);
                  goto LABEL_58;
                }

                if (v250 >= *(v249 + 16))
                {
                  goto LABEL_103;
                }

                v251 = v486;
                v252 = (*(v486 + 80) + 32) & ~*(v486 + 80);
                v253 = *(v486 + 72);
                v101 = v250;
                v254 = v249 + v252 + v253 * v250;
                v255 = *(v486 + 16);
                v256 = v474;
                v257 = v500;
                v255(v474, v254, v500);
                v258 = v472;
                sub_22C90702C();
                v259 = *(v251 + 8);
                v259(v256, v257);
                v260 = v492;
                v261 = (v476)(v258, v492);
                if (v261 == v468 || v261 == v470)
                {
                  break;
                }

                v250 = v101 + 1;
                (*v473)(v258, v260);
                v236 = v488;
                v248 = v475;
                v158 = v512;
                v201 = v504;
              }

              v372 = v255;
              v373 = v253;
              v469 = v252;
              v370 = v259;

              v287 = *v473;
              v288 = (*v473)(v258, v260);
              v289 = MEMORY[0x2318B57A0](v288);
              v290 = v400;
              sub_22C6053E0(v289, v400);

              v291 = v516;
              v292 = sub_22C370B74(v290, 1, v516);
              v293 = v485;
              if (v292 == 1)
              {
                sub_22C36DD28(v290, &qword_27D9BC030, &unk_22C911CC0);
                v294 = v399;
                v201 = v504;
                goto LABEL_82;
              }

              v303 = v374;
              (v496)(v374, v290, v291);
              sub_22C90878C();
              v304 = v293;
              v305 = v387;
              sub_22C646D68();
              v443(v304, v484);
              v306 = v500;
              v307 = sub_22C370B74(v305, 1, v500);
              v201 = v504;
              if (v307 == 1)
              {
                (*v497)(v303, v291);
                sub_22C36DD28(v305, &qword_27D9BAA18, &qword_22C911C40);
                goto LABEL_81;
              }

              v308 = v382;
              v381();
              v309 = v383;
              sub_22C90702C();
              v370(v308, v306);
              (*v497)(v374, v291);
              v310 = v492;
              v311 = (v476)(v309, v492);
              if (v311 == v421)
              {
                v377(v309, v310);
                v312 = sub_22C906F2C();
                v313 = *(v312 - 8);
                v314 = (*(v313 + 88))(v309, v312);
                v315 = v428;
                v294 = v399;
                if (v314 != HIDWORD(v371))
                {
                  (*(v313 + 8))(v309, v312);
                  goto LABEL_82;
                }

                (*(v313 + 96))(v309, v312);
                if ((*v309 & 1) == 0)
                {
                  (*v378)(v475, v427);
                  (*v384)(v439, v315);
                  v370(v441, v500);
                  v158 = v512;
                  v173 = v510;
                  goto LABEL_94;
                }
              }

              else
              {
                v287(v309, v310);
LABEL_81:
                v294 = v399;
              }

LABEL_82:
              v316 = v394;
              sub_22C90402C();
              v317 = sub_22C9063CC();
              v318 = sub_22C90AACC();
              if (os_log_type_enabled(v317, v318))
              {
                v319 = swift_slowAlloc();
                *v319 = 0;
                _os_log_impl(&dword_22C366000, v317, v318, "inserting pickOne expression into plan", v319, 2u);
                MEMORY[0x2318B9880](v319, -1, -1);
              }

              (*v375)(v316, v395);
              sub_22C9087AC();
              v320 = v380;
              sub_22C90882C();

              v321 = v320;
              v322 = v516;
              v323 = v513;
              (v513)(v511, v321, v516);
              v323(v294, v514, v322);
              v324 = v438;
              MEMORY[0x2318B4810](v294);
              j = *v429;
              j(v324, v376, v492);
              sub_22C9070BC();
              LOBYTE(v523) = 1;
              v325 = v412;
              sub_22C90708C();
              v372(v411, v325, v500);
              v326 = v524;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_22C5916E4();
                v326 = v358;
              }

              v327 = v469;
              v328 = *(v326 + 16);
              if (v328 >= *(v326 + 24) >> 1)
              {
                sub_22C5916E4();
                v476 = v359;
              }

              else
              {
                v476 = v326;
              }

              v329 = *v497;
              v330 = v510;
              (*v497)(v510, v322);
              v331 = v476;
              *(v476 + 16) = v328 + 1;
              (v381)(v331 + v327 + v328 * v373, v411, v500);
              v524 = v331;
              v332 = v330;
              v333 = v380;
              v334 = (v513)(v332, v380, v322);
              v335 = v488;
              MEMORY[0x2318B6CE0](v334);
              v336 = sub_22C5FB484();
              (*v465)(v335, v483);
              if (v336)
              {
                v337 = v329;
                sub_22C9087AC();
                v338 = v396;
                sub_22C90882C();

                v339 = v513;
                (v513)(v511, v338, v322);
                sub_22C3A5908(&qword_27D9BAC28, &unk_22C911F40);
                v340 = (*(v495 + 80) + 32) & ~*(v495 + 80);
                v341 = swift_allocObject();
                *(v341 + 16) = v418;
                v339(v341 + v340, v510, v322);
                v342 = v438;
                *v438 = v341;
                v343 = sub_22C906F2C();
                (*(*(v343 - 8) + 104))(v342, v419, v343);
                j(v342, v421, v492);
                sub_22C9070BC();
                LOBYTE(v523) = 1;
                v344 = v397;
                sub_22C90708C();
                v372(v398, v344, v500);
                v345 = *(v331 + 16);
                if (v345 >= *(v331 + 24) >> 1)
                {
                  sub_22C5916E4();
                  v476 = v360;
                }

                v346 = v380;
                v347 = v500;
                v348 = v370;
                v370(v397, v500);
                v348(v412, v347);
                v349 = v346;
                v350 = v516;
                v337(v349, v516);
                (*v378)(v475, v427);
                (*v384)(v439, v428);
                v348(v441, v347);
                v351 = v510;
                v337(v510, v350);
                v352 = v476;
                *(v476 + 16) = v345 + 1;
                (v381)(v352 + v469 + v345 * v373, v398, v347);
                v524 = v352;
                v353 = v350;
                v173 = v351;
                (v496)(v351, v396, v353);
                v158 = v512;
                v278 = v513;
LABEL_92:
                v201 = v504;
              }

              else
              {
                v354 = v500;
                v355 = v370;
                v370(v412, v500);
                v329(v333, v322);
                (*v378)(v475, v427);
                (*v384)(v439, v428);
                v355(v441, v354);
                v158 = v512;
                v173 = v510;
LABEL_94:
                v278 = v513;
              }
            }

            else
            {
              (*v487)(v238, v234);
              v235 = (*v473)(v239, v240);
              v236 = v488;
              v158 = v512;
LABEL_58:
              MEMORY[0x2318B6CE0](v235);
              v263 = sub_22C5FB484();
              (*v465)(v236, v483);
              if (v263)
              {
                sub_22C9087AC();
                v264 = v444;
                sub_22C90882C();

                v265 = v264;
                v266 = v516;
                v267 = v513;
                (v513)(v511, v265, v516);
                sub_22C3A5908(&qword_27D9BAC28, &unk_22C911F40);
                v268 = (*(v495 + 80) + 32) & ~*(v495 + 80);
                v269 = swift_allocObject();
                *(v269 + 16) = v418;
                v267(v269 + v268, v510, v266);
                v270 = v438;
                *v438 = v269;
                v271 = sub_22C906F2C();
                (*(*(v271 - 8) + 104))(v270, v419, v271);
                (*v429)(v270, v421, v492);
                sub_22C9070BC();
                LOBYTE(v523) = 1;
                v272 = v430;
                sub_22C90708C();
                (*v482)(v445, v272, v500);
                v273 = v524;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_22C5916E4();
                  v273 = v356;
                }

                v274 = *(v273 + 16);
                if (v274 >= *(v273 + 24) >> 1)
                {
                  sub_22C5916E4();
                  v273 = v357;
                }

                v275 = v486;
                v276 = v500;
                (*(v486 + 8))(v272, v500);
                v173 = v510;
                v277 = v516;
                (*v497)(v510, v516);
                *(v273 + 16) = v274 + 1;
                (*(v275 + 32))(v273 + ((*(v275 + 80) + 32) & ~*(v275 + 80)) + *(v275 + 72) * v274, v445, v276);
                v524 = v273;
                (v496)(v173, v444, v277);
                v158 = v512;
              }

              else
              {
                v173 = v510;
              }

LABEL_65:
              v278 = v513;
            }

            v279 = v511;
            v166 = v516;
            v278(v511, v173, v516);
            v280 = v508;
            v281 = swift_isUniquelyReferenced_nonNull_native();
            v523 = v280;
            sub_22C62C9F4(v279, i, v201, v281, v282, v283, v284, v285, v370, v371, v372, v373, v374, v375);

            v508 = v523;
            (*v517)(v502, v158);
            v164 = v514;
LABEL_67:
            v101 = v497;
            v286 = *v497;
            (*v497)(v173, v166);
            v286(v164, v166);
            v133 = v505;
            v132 = v506;
            v127 = v491;
            v131 = v490;
            v130 = v507;
            goto LABEL_5;
          }

          (*v388)(v432, v433);
          (*v422)(v442, v466);
        }

        else
        {
          (*v422)(v203, v198);
          (*v393)(v205, v206);
          v200 = v485;
        }

        v158 = v512;
        goto LABEL_43;
      }

      v162 = sub_22C90B4FC();

      if (v162)
      {
        goto LABEL_24;
      }

      (*v517)(v522, v158);
      ++v101;
      v155 = v519;
    }

    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  sub_22C9068FC();
  (*v449)(v460, v459, v461);
  sub_22C906AAC();
  (*v429)(v133, v470, v492);
  sub_22C9070CC();
  MEMORY[0x2318B4580]();
  sub_22C9070BC();
  LOBYTE(v523) = 1;
  v101 = v410;
  sub_22C90708C();
  v361 = v524;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_104:
    sub_22C5916E4();
    v361 = v368;
  }

  v362 = v500;
  v363 = v486;
  v364 = v450;
  v365 = *(v361 + 16);
  if (v365 >= *(v361 + 24) >> 1)
  {
    sub_22C5916E4();
    v361 = v369;
  }

  *(v361 + 16) = v365 + 1;
  (*(v363 + 32))(v361 + ((*(v363 + 80) + 32) & ~*(v363 + 80)) + *(v363 + 72) * v365, v101, v362);
  sub_22C5AD878(v361);
  v114 = v366;
  sub_22C36DD28(v364, &qword_27D9BC0A8, &qword_22C911F68);
  return v114;
}

uint64_t sub_22C4161D4()
{
  v1 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - v5;
  v7 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - v8;
  v10 = sub_22C90941C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C3DB138(v0, v9, &qword_27D9BC028, &unk_22C9134B0);
  if (sub_22C370B74(v9, 1, v10) == 1)
  {
    v14 = &qword_27D9BC028;
    v15 = &unk_22C9134B0;
    v16 = v9;
LABEL_5:
    sub_22C36DD28(v16, v14, v15);
    return 0;
  }

  (*(v11 + 32))(v13, v9, v10);
  v17 = sub_22C9093DC();
  sub_22C58B0F8(v17);

  (*(v11 + 8))(v13, v10);
  v18 = sub_22C90952C();
  if (sub_22C370B74(v6, 1, v18) == 1)
  {
LABEL_4:
    v14 = &qword_27D9BB0C0;
    v15 = &qword_22C90D960;
    v16 = v6;
    goto LABEL_5;
  }

  sub_22C3DB138(v6, v4, &qword_27D9BB0C0, &qword_22C90D960);
  v20 = *(v18 - 8);
  v21 = (*(v20 + 88))(v4, v18);
  if (v21 == *MEMORY[0x277D72D50])
  {
    (*(v20 + 96))(v4, v18);
    v22 = sub_22C9094EC();
    v23 = swift_projectBox();
    v24 = (*(*(v22 - 8) + 88))(v23, v22);
    if (v24 == *MEMORY[0x277D72D00] || v24 == *MEMORY[0x277D72CD8] || v24 == *MEMORY[0x277D72CC0])
    {
    }

    else
    {
      v29 = v24;
      v30 = *MEMORY[0x277D72C98];

      if (v29 != v30)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    v27 = v21;
    v28 = *MEMORY[0x277D72D28];
    (*(v20 + 8))(v4, v18);
    if (v27 != v28)
    {
      goto LABEL_4;
    }
  }

  sub_22C36DD28(v6, &qword_27D9BB0C0, &qword_22C90D960);
  return 1;
}

uint64_t sub_22C4165AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1 == 0x657461676976616ELL && a2 == 0xEB000000006F745FLL;
  if (!v10 && (sub_22C90B4FC() & 1) == 0 || ((v11 = 0x697461676976616ELL, a3 == 0x6E45686372616573) ? (v12 = a4 == 0xEC00000079746974) : (v12 = 0), !v12 && (sub_22C90B4FC() & 1) == 0))
  {
    v13 = a1 == 0x64656D5F79616C70 && a2 == 0xEA00000000006169;
    if (!v13 && (sub_22C90B4FC() & 1) == 0)
    {
      return sub_22C41BB98(a5);
    }

    v11 = 0x616964656DLL;
    v14 = a3 == 0x6E45686372616573 && a4 == 0xEC00000079746974;
    if (!v14 && (sub_22C90B4FC() & 1) == 0)
    {
      return sub_22C41BB98(a5);
    }
  }

  return v11;
}

uint64_t sub_22C416734(uint64_t a1, char *a2, uint64_t a3, int a4)
{
  LODWORD(v111) = a4;
  v117 = a3;
  v125 = a2;
  v127 = a1;
  v119 = sub_22C90941C();
  v106 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v105 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C3A5908(&qword_27D9BC070, &qword_22C911F30);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v101 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v108 = &v99 - v8;
  v116 = sub_22C9070DC();
  v9 = *(v116 - 8);
  v10 = MEMORY[0x28223BE20](v116);
  v103 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v120 = &v99 - v12;
  v13 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v99 - v14;
  v16 = sub_22C90700C();
  MEMORY[0x28223BE20](v16 - 8);
  v114 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v107 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v109 = &v99 - v21;
  v124 = sub_22C90654C();
  v122 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v23 = (&v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_22C901FAC();
  v126 = *(v24 - 8);
  v25 = MEMORY[0x28223BE20](v24);
  v104 = &v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v121 = &v99 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v99 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v99 - v32;
  v34 = type metadata accessor for PlanPostProcessor.ImplicitSearchRequest(0);
  MEMORY[0x28223BE20](v34);
  v36 = &v99 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C420958(v127, v36, type metadata accessor for PlanPostProcessor.ImplicitSearchRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v38 = *(v36 + 1);
  v110 = *v36;
  v112 = v38;
  v127 = v9;
  v123 = v24;
  if (EnumCaseMultiPayload == 1)
  {
    v39 = sub_22C3A5908(&qword_27D9BC098, &unk_22C911F50);
    v40 = v126;
    (*(v126 + 32))(v33, &v36[*(v39 + 48)], v24);
    sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
    v113 = ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v118 = swift_allocObject();
    v99 = xmmword_22C90F800;
    *(v118 + 16) = xmmword_22C90F800;
    v41 = *(v40 + 16);
    v115 = (v40 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v41(v31, v125, v24);
    v102 = sub_22C909F0C();
    sub_22C36C640(v109, 1, 1, v119);
    sub_22C3A5908(&qword_27D9BAE50, &unk_22C911F80);
    sub_22C90827C();
    *(swift_allocObject() + 16) = v99;
    v41(v15, v33, v24);
    v42 = v41;
    sub_22C36C640(v15, 0, 1, v24);
    v43 = v112;

    sub_22C90824C();
    sub_22C90828C();
    v44 = *MEMORY[0x277D1DA48];
    v112 = *(v122 + 104);
    v112(v23, v44, v124);
    v45 = v114;
    sub_22C9070BC();
    v132 = 1;
    sub_22C90708C();
  }

  else
  {
    type metadata accessor for PlanPostProcessor(0);
    sub_22C9087AC();
    sub_22C90882C();

    sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
    v102 = *(v9 + 72);
    v46 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_22C90F870;
    v118 = v47;
    *&v99 = v47 + v46;
    v48 = *(v126 + 16);
    v115 = (v126 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v100 = v31;
    v48(v31, v125, v24);
    v113 = v48;
    sub_22C3A5908(&qword_27D9BC0B8, &qword_22C91CB80);
    v49 = (sub_22C3A5908(&qword_27D9BAA38, &unk_22C911F90) - 8);
    v50 = (*(*v49 + 80) + 32) & ~*(*v49 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_22C90F800;
    v52 = (v51 + v50);
    v53 = v49[14];
    *v52 = 0x745F686372616573;
    v52[1] = 0xEB000000006D7265;
    v48((v51 + v50 + v53), v33, v24);
    sub_22C909F0C();
    sub_22C3DB138(v117, v109, &qword_27D9BC028, &unk_22C9134B0);
    sub_22C90828C();
    v45 = v114;
    v54 = v33;
    v55 = *(v122 + 104);
    v56 = v124;
    v55(v23, *MEMORY[0x277D1DA48], v124);
    sub_22C9070BC();
    v129 = 1;
    v43 = v99;
    v57 = v23;
    v58 = v100;
    sub_22C90708C();
    v59 = v113;
    v113(v58, v54, v123);
    v42 = v59;
    v60 = v112;
    *v57 = v110;
    v57[1] = v60;
    v61 = *MEMORY[0x277D1DEF8];
    v62 = sub_22C906F2C();
    (*(*(v62 - 8) + 104))(v57, v61, v62);
    v63 = *MEMORY[0x277D1DAA8];
    v112 = v55;
    v64 = (v55)(v57, v63, v56);
    v33 = v54;
    MEMORY[0x2318B4580](v64);
    sub_22C9070BC();
    v128 = 1;
    sub_22C90708C();
    v31 = v58;
    v23 = v57;
    v24 = v123;
  }

  v65 = v126 + 8;
  v111 = *(v126 + 8);
  v111(v33, v24);
  v102 = *(type metadata accessor for PlanPostProcessor(0) + 24);
  sub_22C9087AC();
  v66 = v121;
  sub_22C90882C();

  v42(v33, v66, v24);
  v67 = *(v118 + 16);
  if (v67)
  {
    v109 = v65;
    v68 = v118;
    v69 = *(v127 + 80);
    v110 = v67;
    *&v99 = (v69 + 32) & ~v69;
    sub_22C90707C();
    v42(v33, v125, v24);
    v113 = v42;
    v42(v31, v66, v24);
    MEMORY[0x2318B4810](v31);
    v70 = v122 + 104;
    v112(v23, *MEMORY[0x277D1DAE8], v124);
    sub_22C9070BC();
    v131 = 1;
    v71 = v120;
    v72 = v68;
    sub_22C90708C();
    v73 = *(v127 + 16);
    v45 = v108;
    v43 = v116;
    v73(v108, v71, v116);
    v133 = v72;
    v74 = v110 >= *(v72 + 24) >> 1;
    v122 = v70;
    v100 = v73;
    if (!v74)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  sub_22C5916E4();
  v72 = v97;
  v133 = v97;
LABEL_6:
  v75 = v117;
  sub_22C41D500(0, 0, 1, v45);
  v76 = v107;
  sub_22C3DB138(v75, v107, &qword_27D9BC028, &unk_22C9134B0);
  v77 = v119;
  v78 = sub_22C370B74(v76, 1, v119);
  v79 = v123;
  if (v78 != 1)
  {
    v80 = v106;
    v81 = v76;
    v82 = v105;
    (*(v106 + 32))(v105, v81, v77);
    if ((sub_22C5FB484() & 1) == 0)
    {
      (*(v80 + 8))(v82, v77);
      (*(v127 + 8))(v120, v116);
      v111(v121, v79);
      return v72;
    }

    sub_22C9087AC();
    v83 = v104;
    sub_22C90882C();

    v84 = v113;
    v113(v33, v83, v79);
    if (*(v72 + 16))
    {
      sub_22C90707C();
      v84(v33, v125, v79);
      sub_22C3A5908(&qword_27D9BAC28, &unk_22C911F40);
      v85 = (*(v126 + 80) + 32) & ~*(v126 + 80);
      v86 = swift_allocObject();
      *(v86 + 16) = xmmword_22C90F800;
      v84((v86 + v85), v83, v79);
      *v23 = v86;
      v87 = *MEMORY[0x277D1DEE8];
      v88 = sub_22C906F2C();
      (*(*(v88 - 8) + 104))(v23, v87, v88);
      v112(v23, *MEMORY[0x277D1DAA8], v124);
      sub_22C9070BC();
      v130 = 1;
      v89 = v103;
      sub_22C90708C();
      v33 = v101;
      v84 = v116;
      (v100)(v101, v89, v116);
      v133 = v72;
      if (*(v72 + 16) < *(v72 + 24) >> 1)
      {
        v90 = v72;
LABEL_12:
        v91 = v119;
        v92 = v106;
        v93 = v105;
        sub_22C41D500(0, 0, 1, v33);
        v94 = *(v127 + 8);
        v94(v103, v84);
        v95 = v111;
        v111(v104, v79);
        (*(v92 + 8))(v93, v91);
        v94(v120, v84);
        v95(v121, v79);
        return v90;
      }
    }

    else
    {
      __break(1u);
    }

    sub_22C5916E4();
    v90 = v98;
    v133 = v98;
    goto LABEL_12;
  }

  (*(v127 + 8))(v120, v43);
  v111(v121, v79);
  sub_22C36DD28(v76, &qword_27D9BC028, &unk_22C9134B0);
  return v72;
}

uint64_t sub_22C4177E0@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v2 = v1;
  v3 = sub_22C901FAC();
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3);
  v50 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for PlanPostProcessor.ExpressionContext(0);
  MEMORY[0x28223BE20](v57);
  v53 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C907D6C();
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x28223BE20](v6);
  v54 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v48 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v49 = (&v46 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v46 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v46 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v46 - v19;
  v21 = sub_22C90941C();
  v61 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v46 - v25;
  sub_22C3DB138(v2, v20, &qword_27D9BC028, &unk_22C9134B0);
  if (sub_22C370B74(v20, 1, v21) == 1)
  {
    sub_22C36DD28(v20, &qword_27D9BC028, &unk_22C9134B0);
    return sub_22C420958(v2, v58, type metadata accessor for PlanPostProcessor.ExpressionContext);
  }

  else
  {
    v47 = v2;
    v28 = *(v61 + 32);
    v28(v26, v20, v21);
    sub_22C5FB388(v18);
    if (sub_22C370B74(v18, 1, v21) == 1)
    {
      sub_22C36DD28(v18, &qword_27D9BC028, &unk_22C9134B0);
      type metadata accessor for PlanPostProcessorError(0);
      sub_22C4208F4(&qword_27D9BC088, type metadata accessor for PlanPostProcessorError, &unk_22C9120B0);
      swift_allocError();
      v30 = v29;
      v59 = 0;
      v60 = 0xE000000000000000;
      sub_22C90AF5C();

      v59 = 0xD000000000000022;
      v60 = 0x800000022C930410;
      v31 = v50;
      sub_22C9068FC();
      sub_22C4208F4(&qword_27D9BAA48, MEMORY[0x277D1C338], MEMORY[0x277D1C368]);
      v32 = v52;
      v33 = sub_22C90B47C();
      MEMORY[0x2318B7850](v33);

      (*(v51 + 8))(v31, v32);
      v34 = v60;
      *v30 = v59;
      v30[1] = v34;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return (*(v61 + 8))(v26, v21);
    }

    else
    {
      v52 = v26;
      v28(v24, v18, v21);
      (*(v61 + 16))(v15, v24, v21);
      sub_22C36C640(v15, 0, 1, v21);
      v35 = v57;
      v36 = v47;
      (*(v55 + 16))(v54, v47 + *(v57 + 20), v56);
      v37 = *(v36 + v35[7]);
      v38 = v48;
      sub_22C3DB138(v15, v48, &qword_27D9BC028, &unk_22C9134B0);
      v39 = sub_22C370B74(v38, 1, v21);

      if (v39 == 1)
      {
        sub_22C36DD28(v15, &qword_27D9BC028, &unk_22C9134B0);
        v40 = *(v61 + 8);
        v40(v24, v21);
        v40(v52, v21);
        sub_22C36DD28(v38, &qword_27D9BC028, &unk_22C9134B0);
        v41 = 1;
        v42 = v58;
        v43 = v49;
      }

      else
      {
        v43 = v49;
        sub_22C5FB67C(v49);
        sub_22C36DD28(v15, &qword_27D9BC028, &unk_22C9134B0);
        v44 = *(v61 + 8);
        v44(v24, v21);
        v44(v52, v21);
        v44(v38, v21);
        v41 = 0;
        v42 = v58;
      }

      sub_22C36C640(v43, v41, 1, v21);
      v45 = v53;
      sub_22C3DB08C(v43, v53, &qword_27D9BC028, &unk_22C9134B0);
      (*(v55 + 32))(v45 + v35[5], v54, v56);
      *(v45 + v35[6]) = 0;
      *(v45 + v35[7]) = v37;
      return sub_22C42074C(v45, v42);
    }
  }
}

uint64_t sub_22C417F2C@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v37 = type metadata accessor for PlanPostProcessor.ExpressionContext(0);
  MEMORY[0x28223BE20](v37);
  v39 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_22C907D6C();
  v36 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v38 = (&v34 - v10);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v34 - v12);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - v14;
  v16 = sub_22C90941C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C3DB138(v1, v15, &qword_27D9BC028, &unk_22C9134B0);
  if (sub_22C370B74(v15, 1, v16) == 1)
  {
    sub_22C36DD28(v15, &qword_27D9BC028, &unk_22C9134B0);
    return sub_22C420958(v1, v41, type metadata accessor for PlanPostProcessor.ExpressionContext);
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    v21 = swift_allocBox();
    (*(v17 + 16))(v22, v19, v16);
    *v13 = v21;
    (*(v17 + 104))(v13, *MEMORY[0x277D72AB0], v16);
    sub_22C36C640(v13, 0, 1, v16);
    v23 = v36;
    v24 = v37;
    v25 = *(v36 + 16);
    v26 = v1 + *(v37 + 20);
    v35 = v4;
    v25(v4, v26, v40);
    v27 = *(v1 + v24[7]);
    sub_22C3DB138(v13, v8, &qword_27D9BC028, &unk_22C9134B0);
    v28 = sub_22C370B74(v8, 1, v16);
    v34 = v27;

    if (v28 == 1)
    {
      sub_22C36DD28(v13, &qword_27D9BC028, &unk_22C9134B0);
      (*(v17 + 8))(v19, v16);
      sub_22C36DD28(v8, &qword_27D9BC028, &unk_22C9134B0);
      v29 = 1;
      v30 = v41;
      v31 = v38;
    }

    else
    {
      v31 = v38;
      sub_22C5FB67C(v38);
      sub_22C36DD28(v13, &qword_27D9BC028, &unk_22C9134B0);
      v32 = *(v17 + 8);
      v32(v19, v16);
      v32(v8, v16);
      v29 = 0;
      v30 = v41;
    }

    sub_22C36C640(v31, v29, 1, v16);
    v33 = v39;
    sub_22C3DB08C(v31, v39, &qword_27D9BC028, &unk_22C9134B0);
    (*(v23 + 32))(v33 + v24[5], v35, v40);
    *(v33 + v24[6]) = 0;
    *(v33 + v24[7]) = v34;
    return sub_22C42074C(v33, v30);
  }
}

uint64_t sub_22C41840C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22C907D6C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v24 - v12);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v16 = sub_22C90941C();
  sub_22C36C640(v15, 1, 1, v16);
  v17 = type metadata accessor for PlanPostProcessor.ExpressionContext(0);
  v18 = *(v4 + 16);
  v19 = v1 + v17[5];
  v25 = v6;
  v18(v6, v19, v3);
  v20 = *(v1 + v17[7]);
  sub_22C3DB138(v15, v10, &qword_27D9BC028, &unk_22C9134B0);
  v21 = sub_22C370B74(v10, 1, v16);

  if (v21 == 1)
  {
    sub_22C36DD28(v15, &qword_27D9BC028, &unk_22C9134B0);
    sub_22C36DD28(v10, &qword_27D9BC028, &unk_22C9134B0);
    v22 = 1;
  }

  else
  {
    sub_22C5FB67C(v13);
    sub_22C36DD28(v15, &qword_27D9BC028, &unk_22C9134B0);
    (*(*(v16 - 8) + 8))(v10, v16);
    v22 = 0;
  }

  sub_22C36C640(v13, v22, 1, v16);
  sub_22C3DB08C(v13, a1, &qword_27D9BC028, &unk_22C9134B0);
  result = (*(v4 + 32))(a1 + v17[5], v25, v3);
  *(a1 + v17[6]) = 0;
  *(a1 + v17[7]) = v20;
  return result;
}

uint64_t sub_22C4186E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22C907D6C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v23 - v13);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  sub_22C3DB138(v2, &v23 - v15, &qword_27D9BC028, &unk_22C9134B0);
  v17 = type metadata accessor for PlanPostProcessor.ExpressionContext(0);
  v18 = *(v5 + 16);
  v19 = v2 + v17[5];
  v23 = v7;
  v24 = v4;
  v18(v7, v19, v4);
  sub_22C3DB138(v16, v11, &qword_27D9BC028, &unk_22C9134B0);
  v20 = sub_22C90941C();
  if (sub_22C370B74(v11, 1, v20) == 1)
  {
    sub_22C36DD28(v16, &qword_27D9BC028, &unk_22C9134B0);
    sub_22C36DD28(v11, &qword_27D9BC028, &unk_22C9134B0);
    v21 = 1;
  }

  else
  {
    sub_22C5FB67C(v14);
    sub_22C36DD28(v16, &qword_27D9BC028, &unk_22C9134B0);
    (*(*(v20 - 8) + 8))(v11, v20);
    v21 = 0;
  }

  sub_22C36C640(v14, v21, 1, v20);
  sub_22C3DB08C(v14, a1, &qword_27D9BC028, &unk_22C9134B0);
  result = (*(v5 + 32))(a1 + v17[5], v23, v24);
  *(a1 + v17[6]) = 1;
  *(a1 + v17[7]) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_22C4189AC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v40 = a3;
  v37[1] = a1;
  v43 = a5;
  v42 = sub_22C907D6C();
  v45 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v44 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v38 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v41 = (v37 - v11);
  MEMORY[0x28223BE20](v10);
  v13 = v37 - v12;
  v14 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v37 - v15;
  v17 = sub_22C90827C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PlanPostProcessor.ExpressionContext(0);
  v22 = v21[7];
  v39 = v5;
  v23 = *(v5 + v22);
  v24 = sub_22C901FAC();
  sub_22C36C640(v16, 1, 1, v24);

  sub_22C90824C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C5927FC();
    v23 = v35;
  }

  v25 = *(v23 + 16);
  v26 = v38;
  if (v25 >= *(v23 + 24) >> 1)
  {
    sub_22C5927FC();
    v23 = v36;
  }

  *(v23 + 16) = v25 + 1;
  (*(v18 + 32))(v23 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v25, v20, v17);
  v27 = v39;
  sub_22C3DB138(v39, v13, &qword_27D9BC028, &unk_22C9134B0);
  v28 = v42;
  (*(v45 + 16))(v44, v27 + v21[5], v42);
  v29 = *(v27 + v21[6]);
  sub_22C3DB138(v13, v26, &qword_27D9BC028, &unk_22C9134B0);
  v30 = sub_22C90941C();
  if (sub_22C370B74(v26, 1, v30) == 1)
  {
    sub_22C36DD28(v13, &qword_27D9BC028, &unk_22C9134B0);
    sub_22C36DD28(v26, &qword_27D9BC028, &unk_22C9134B0);
    v31 = 1;
    v32 = v41;
  }

  else
  {
    v32 = v41;
    sub_22C5FB67C(v41);
    sub_22C36DD28(v13, &qword_27D9BC028, &unk_22C9134B0);
    (*(*(v30 - 8) + 8))(v26, v30);
    v31 = 0;
  }

  sub_22C36C640(v32, v31, 1, v30);
  v33 = v43;
  sub_22C3DB08C(v32, v43, &qword_27D9BC028, &unk_22C9134B0);
  result = (*(v45 + 32))(v33 + v21[5], v44, v28);
  *(v33 + v21[6]) = v29;
  *(v33 + v21[7]) = v23;
  return result;
}

char *sub_22C418E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v332 = a3;
  v294 = a1;
  v329 = type metadata accessor for PlanPostProcessor.ExpressionContext(0);
  MEMORY[0x28223BE20](v329);
  v328 = &v265 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v327 = sub_22C90769C();
  v376 = *(v327 - 8);
  MEMORY[0x28223BE20](v327);
  v326 = &v265 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v325 = sub_22C907D6C();
  v375 = *(v325 - 8);
  MEMORY[0x28223BE20](v325);
  v324 = &v265 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C3A5908(&qword_27D9BC078, &unk_22C922810);
  MEMORY[0x28223BE20](v7 - 8);
  v323 = &v265 - v8;
  v9 = sub_22C90833C();
  MEMORY[0x28223BE20](v9 - 8);
  v340 = &v265 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C90700C();
  MEMORY[0x28223BE20](v11 - 8);
  v305 = &v265 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  MEMORY[0x28223BE20](v13 - 8);
  v283 = &v265 - v14;
  v15 = sub_22C3A5908(&qword_27D9BC068, &qword_22C920590);
  MEMORY[0x28223BE20](v15 - 8);
  v297 = &v265 - v16;
  v300 = sub_22C9088CC();
  v365 = *(v300 - 8);
  MEMORY[0x28223BE20](v300);
  v296 = &v265 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v368 = sub_22C90654C();
  v374 = *(v368 - 8);
  v18 = MEMORY[0x28223BE20](v368);
  v360 = &v265 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v302 = (&v265 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v277 = &v265 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v355 = &v265 - v25;
  MEMORY[0x28223BE20](v24);
  v301 = &v265 - v26;
  v335 = sub_22C90832C();
  v357 = *(v335 - 8);
  MEMORY[0x28223BE20](v335);
  v303 = &v265 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v337 = sub_22C90880C();
  v362 = *(v337 - 8);
  MEMORY[0x28223BE20](v337);
  v336 = &v265 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v278 = &v265 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v289 = &v265 - v33;
  MEMORY[0x28223BE20](v32);
  v322 = &v265 - v34;
  v354 = sub_22C9070DC();
  v366 = *(v354 - 8);
  v35 = MEMORY[0x28223BE20](v354);
  v284 = &v265 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v318 = &v265 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v286 = &v265 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v282 = &v265 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v276 = &v265 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v290 = &v265 - v46;
  MEMORY[0x28223BE20](v45);
  v313 = &v265 - v47;
  v371 = sub_22C901FAC();
  v333 = *(v371 - 8);
  v48 = MEMORY[0x28223BE20](v371);
  v359 = &v265 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v48);
  v369 = &v265 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v317 = &v265 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v281 = &v265 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v285 = &v265 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v280 = &v265 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v378 = &v265 - v61;
  MEMORY[0x28223BE20](v60);
  v373 = &v265 - v62;
  v288 = sub_22C9063DC();
  v352 = *(v288 - 8);
  v63 = MEMORY[0x28223BE20](v288);
  v287 = &v265 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v279 = &v265 - v65;
  v66 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  v67 = MEMORY[0x28223BE20](v66 - 8);
  v321 = &v265 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = MEMORY[0x28223BE20](v67);
  v320 = (&v265 - v70);
  v71 = MEMORY[0x28223BE20](v69);
  v319 = &v265 - v72;
  MEMORY[0x28223BE20](v71);
  v330 = &v265 - v73;
  v379 = sub_22C90941C();
  v350 = *(v379 - 8);
  v74 = MEMORY[0x28223BE20](v379);
  v381 = &v265 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v74);
  v77 = &v265 - v76;
  v78 = sub_22C3A5908(&qword_27D9BC0C0, &unk_22C911FA0);
  MEMORY[0x28223BE20](v78 - 8);
  v80 = &v265 - v79;
  v81 = sub_22C90981C();
  v347 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v380 = &v265 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v363 = sub_22C90839C();
  v361 = *(v363 - 8);
  v83 = MEMORY[0x28223BE20](v363);
  v85 = &v265 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = MEMORY[0x28223BE20](v83);
  v88 = &v265 - v87;
  MEMORY[0x28223BE20](v86);
  v372 = &v265 - v89;
  v90 = sub_22C3A5908(&qword_27D9BC0A8, &qword_22C911F68);
  v91 = MEMORY[0x28223BE20](v90);
  v334 = (&v265 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = MEMORY[0x28223BE20](v91);
  v95 = (&v265 - v94);
  v96 = v384;
  v97 = sub_22C41C208(&v265 + *(v93 + 48) - v94, a2);
  if (v96)
  {
    return v88;
  }

  v343 = v88;
  v311 = v85;
  v382 = 0;
  v351 = v80;
  v383 = v77;
  v377 = v81;
  v312 = a2;
  *v95 = v97;
  v314 = v95;
  v98 = v334;
  sub_22C3DB138(v95, v334, &qword_27D9BC0A8, &qword_22C911F68);
  v356 = *v98;
  v310 = v90;
  v99 = *(v90 + 48);
  v100 = sub_22C90658C();
  (*(*(v100 - 8) + 8))(v98 + v99, v100);
  v101 = sub_22C9083CC();
  v102 = 0;
  v367 = v361 + 16;
  v348 = (v347 + 4);
  v370 = v350 + 1;
  v306 = (v350 + 4);
  v364 = (v333 + 8);
  v316 = (v362 + 1);
  v315 = (v366 + 32);
  v362 = (v374 + 88);
  v293 = *MEMORY[0x277D1DA48];
  v358 = (v366 + 8);
  v353 = (v374 + 8);
  v275 = (v374 + 96);
  v274 = (v357 + 32);
  v271 = (v365 + 32);
  v345 = v366 + 16;
  v346 = *MEMORY[0x277D1DA50];
  v341 = *MEMORY[0x277D1DA78];
  v295 = *MEMORY[0x277D1DAA8];
  v266 = *MEMORY[0x277D1DED8];
  v270 = (v365 + 8);
  v273 = (v357 + 8);
  v269 = (v352 + 8);
  v292 = xmmword_22C90F800;
  v299 = (v374 + 104);
  v267 = *MEMORY[0x277D1DAE8];
  ++v347;
  v309 = (v350 + 2);
  v291 = *MEMORY[0x277D1DEE8];
  v308 = (v376 + 16);
  v307 = (v375 + 32);
  v352 = *(v101 + 16);
  v298 = (v333 + 32);
  v338 = (v333 + 16);
  v344 = (v361 + 32);
  v350 = (v361 + 8);
  v331 = MEMORY[0x277D84F90];
  v384 = MEMORY[0x277D84F90];
  v103 = v385;
  v104 = v360;
  v105 = v363;
  v106 = v372;
  v107 = v381;
  v108 = v361;
  v349 = v101;
  while (1)
  {
    v109 = v369;
    if (v102 == v352)
    {
      break;
    }

    if (v102 >= *(v101 + 16))
    {
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v110 = *(v108 + 72);
    v375 = (*(v108 + 80) + 32) & ~*(v108 + 80);
    v376 = v102;
    v374 = v110;
    v111 = v101 + v375 + v110 * v102;
    v112 = *(v108 + 16);
    v113 = v112(v106, v111, v105);
    MEMORY[0x28223BE20](v113);
    *(&v265 - 2) = v106;
    v114 = v351;
    v115 = v382;
    sub_22C6B0844(sub_22C4209D8, (&v265 - 4), v356);
    v116 = v377;
    if (sub_22C370B74(v114, 1, v377) == 1)
    {

      sub_22C36DD28(v114, &qword_27D9BC0C0, &unk_22C911FA0);
      type metadata accessor for PlanPostProcessorError(0);
      sub_22C4208F4(&qword_27D9BC088, type metadata accessor for PlanPostProcessorError, &unk_22C9120B0);
      v249 = swift_allocError();
      v250 = v106;
      v252 = v251;
      *v251 = sub_22C90825C();
      v252[1] = v253;
      swift_storeEnumTagMultiPayload();
      v88 = v249;
      swift_willThrow();
LABEL_77:
      sub_22C36DD28(v314, &qword_27D9BC0A8, &qword_22C911F68);
      (*v350)(v250, v363);
      return v88;
    }

    v365 = v112;
    (*v348)(v380, v114, v116);
    v117 = sub_22C90836C();
    if (v118)
    {
      v119 = v383;
      MEMORY[0x2318B6CE0](v117);
      v120 = v371;
    }

    else
    {
      MEMORY[0x2318B6CE0](v117);
      v121 = v330;
      sub_22C5FB388(v330);
      v122 = v121;
      v123 = v107;
      v124 = v379;
      (*v370)(v123, v379);
      v125 = sub_22C370B74(v121, 1, v124);
      v120 = v371;
      if (v125 == 1)
      {

        sub_22C36DD28(v122, &qword_27D9BC028, &unk_22C9134B0);
        v254 = v279;
        sub_22C90402C();
        v255 = sub_22C9063CC();
        v256 = sub_22C90AADC();
        if (os_log_type_enabled(v255, v256))
        {
          v257 = swift_slowAlloc();
          *v257 = 0;
          _os_log_impl(&dword_22C366000, v255, v256, "indexed update parameter MUST have a collection TypeInstance", v257, 2u);
          MEMORY[0x2318B9880](v257, -1, -1);
        }

        (*v269)(v254, v288);
        type metadata accessor for PlanPostProcessorError(0);
        sub_22C4208F4(&qword_27D9BC088, type metadata accessor for PlanPostProcessorError, &unk_22C9120B0);
        v258 = swift_allocError();
        v260 = v259;
        v250 = v372;
        *v259 = sub_22C90825C();
        v260[1] = v261;
        swift_storeEnumTagMultiPayload();
        v88 = v258;
        swift_willThrow();
        (*v347)(v380, v116);
        goto LABEL_77;
      }

      v119 = v383;
      (*v306)();
    }

    v126 = type metadata accessor for PlanPostProcessor(0);
    v127 = *(v103 + *(v126 + 32));
    MEMORY[0x28223BE20](v126);
    *(&v265 - 2) = v106;
    v128 = sub_22C5EC5FC(sub_22C4209F8, (&v265 - 4), v127);
    v382 = v115;
    if (v128)
    {
      sub_22C90838C();
      v129 = v319;
      v130 = v119;
      v131 = v379;
      (*v309)(v319, v130, v379);
      sub_22C36C640(v129, 0, 1, v131);
      sub_22C9068FC();
      sub_22C3DB138(v314, v334, &qword_27D9BC0A8, &qword_22C911F68);

      (*v308)(v326, v312, v327);
      sub_22C90825C();
      v132 = v324;
      sub_22C907D4C();
      v133 = v321;
      sub_22C3DB138(v129, v321, &qword_27D9BC028, &unk_22C9134B0);
      if (sub_22C370B74(v133, 1, v131) == 1)
      {
        sub_22C36DD28(v129, &qword_27D9BC028, &unk_22C9134B0);
        sub_22C36DD28(v133, &qword_27D9BC028, &unk_22C9134B0);
        v134 = 1;
        v135 = v329;
        v136 = v131;
        v137 = v328;
        v138 = v325;
        v105 = v363;
        v139 = v320;
      }

      else
      {
        v139 = v320;
        sub_22C5FB67C(v320);
        sub_22C36DD28(v129, &qword_27D9BC028, &unk_22C9134B0);
        (*v370)(v133, v131);
        v134 = 0;
        v135 = v329;
        v136 = v131;
        v137 = v328;
        v138 = v325;
        v105 = v363;
      }

      v150 = v365;
      sub_22C36C640(v139, v134, 1, v136);
      sub_22C3DB08C(v139, v137, &qword_27D9BC028, &unk_22C9134B0);
      (*v307)(v137 + v135[5], v132, v138);
      *(v137 + v135[6]) = 0;
      *(v137 + v135[7]) = MEMORY[0x277D84F90];
      v151 = v137;
      v152 = v323;
      sub_22C42074C(v151, v323);
      sub_22C36C640(v152, 0, 1, v135);
      sub_22C6029B4();
      v153 = v311;
      v106 = v372;
      v150(v311, v372, v105);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v107 = v381;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C5928C4();
        v384 = v237;
      }

      v104 = v360;
      v155 = *(v384 + 16);
      v156 = v155 + 1;
      if (v155 >= *(v384 + 24) >> 1)
      {
        sub_22C5928C4();
        v384 = v157;
      }

      goto LABEL_38;
    }

    v304 = v127;
    sub_22C90838C();
    v339 = *(v126 + 24);
    v140 = v336;
    sub_22C90878C();
    v141 = v378;
    sub_22C90838C();
    v142 = v322;
    sub_22C646D68();
    v365 = *v364;
    (v365)(v141, v120);
    v143 = *v316;
    (*v316)(v140, v337);
    v144 = v354;
    v145 = sub_22C370B74(v142, 1, v354);
    v146 = v335;
    if (v145 == 1)
    {
      v147 = v142;
      v148 = &qword_27D9BAA18;
      v149 = &qword_22C911C40;
LABEL_15:
      sub_22C36DD28(v147, v148, v149);
      goto LABEL_25;
    }

    v158 = *v315;
    v159 = v313;
    (*v315)(v313, v142, v144);
    v160 = v301;
    sub_22C90702C();
    v161 = v160;
    v162 = v160;
    v163 = v368;
    v357 = *v362;
    v164 = (v357)(v162, v368);
    if (v164 != v293)
    {
      (*v358)(v159, v144);
      (*v353)(v161, v163);
      goto LABEL_25;
    }

    v272 = v158;
    v268 = *v275;
    v268(v161, v163);
    (*v274)(v303, v161, v146);
    sub_22C90878C();
    v165 = v378;
    sub_22C90838C();
    v387 = sub_22C9087DC();
    MEMORY[0x28223BE20](v387);
    *(&v265 - 2) = v165;
    sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
    sub_22C3D32C8(&qword_27D9BC090, &qword_27D9BA9F0, &qword_22C912420, MEMORY[0x277D1E9D0]);
    v166 = v297;
    v167 = v300;
    v168 = v382;
    sub_22C907D9C();
    v382 = v168;

    v120 = v371;
    v143(v336, v337);
    (v365)(v165, v120);
    if (sub_22C370B74(v166, 1, v167) == 1)
    {
      (*v273)(v303, v335);
      (*v358)(v313, v354);
      v147 = v166;
      v148 = &qword_27D9BC068;
      v149 = &qword_22C920590;
      goto LABEL_15;
    }

    (*v271)(v296, v166, v167);
    v184 = sub_22C90887C();
    v185 = 0;
    v342 = *(v184 + 16);
    v186 = v354;
    for (i = v290; ; (*v358)(i, v186))
    {
      v107 = v381;
      if (v342 == v185)
      {

        (*v270)(v296, v300);
        (*v273)(v303, v335);
        (*v358)(v313, v186);
        v194 = v289;
        sub_22C36C640(v289, 1, 1, v186);
        sub_22C36DD28(v194, &qword_27D9BAA18, &qword_22C911C40);
        v120 = v371;
        v169 = v317;
        goto LABEL_26;
      }

      v109 = v355;
      if (v185 >= *(v184 + 16))
      {
        goto LABEL_80;
      }

      v188 = (*(v366 + 80) + 32) & ~*(v366 + 80);
      v189 = *(v366 + 72);
      v190 = *(v366 + 16);
      v190(i, v184 + v188 + v189 * v185, v186);
      sub_22C90702C();
      v191 = v368;
      v192 = (v357)(v109, v368);
      if (v192 == v346 || v192 == v341)
      {
        break;
      }

      ++v185;
      (*v353)(v109, v191);
    }

    v342 = v189;

    v195 = *v353;
    (*v353)(v109, v191);
    v196 = v289;
    v272(v289, i, v186);
    sub_22C36C640(v196, 0, 1, v186);
    v197 = sub_22C36DD28(v196, &qword_27D9BAA18, &qword_22C911C40);
    v198 = MEMORY[0x2318B57A0](v197);
    v199 = v283;
    sub_22C6053E0(v198, v283);

    v200 = v371;
    if (sub_22C370B74(v199, 1, v371) == 1)
    {
      sub_22C36DD28(v199, &qword_27D9BC030, &unk_22C911CC0);
      v201 = v288;
      v202 = v313;
      v120 = v200;
LABEL_61:
      sub_22C90402C();
      v223 = sub_22C9063CC();
      v224 = sub_22C90AACC();
      if (os_log_type_enabled(v223, v224))
      {
        v225 = swift_slowAlloc();
        *v225 = 0;
        _os_log_impl(&dword_22C366000, v223, v224, "inserting pickOne expression into plan", v225, 2u);
        v226 = v225;
        v201 = v288;
        MEMORY[0x2318B9880](v226, -1, -1);
      }

      (*v269)(v287, v201);
      sub_22C9087AC();
      v227 = v285;
      sub_22C90882C();

      (*v338)(v378, v227, v120);
      v228 = v281;
      sub_22C90838C();
      v229 = v302;
      MEMORY[0x2318B4810](v228);
      (*v299)(v229, v267, v368);
      sub_22C9070BC();
      v388 = 1;
      v230 = v282;
      sub_22C90708C();
      v190(v286, v230, v354);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C5916E4();
        v331 = v242;
      }

      v107 = v381;
      v231 = *(v331 + 16);
      if (v231 >= *(v331 + 24) >> 1)
      {
        sub_22C5916E4();
        v331 = v243;
      }

      v232 = *v358;
      v233 = v230;
      v234 = v354;
      (*v358)(v233, v354);
      (*v270)(v296, v300);
      (*v273)(v303, v335);
      v232(v202, v234);
      v235 = v373;
      (v365)(v373, v120);
      v236 = v331;
      *(v331 + 16) = v231 + 1;
      v272((v236 + v188 + v231 * v342), v286, v234);
      (*v298)(v235, v285, v120);
      v169 = v317;
      goto LABEL_26;
    }

    v203 = v280;
    v204 = (*v298)(v280, v199, v200);
    MEMORY[0x28223BE20](v204);
    *(&v265 - 2) = v203;
    v205 = v278;
    v206 = v382;
    sub_22C6B0590(sub_22C4211C0, (&v265 - 4), v304);
    v382 = v206;
    v207 = sub_22C370B74(v205, 1, v186);
    v208 = v313;
    if (v207 == 1)
    {
      sub_22C36DD28(v205, &qword_27D9BAA18, &qword_22C911C40);
      (v365)(v203, v200);
      v201 = v288;
      v120 = v200;
LABEL_60:
      v202 = v208;
      goto LABEL_61;
    }

    v209 = v276;
    v272(v276, v205, v186);
    v210 = v277;
    sub_22C90702C();
    v211 = *v358;
    v212 = v186;
    v213 = v210;
    (*v358)(v209, v212);
    v214 = v210;
    v215 = v368;
    v216 = (v357)(v214, v368);
    if (v216 != v295)
    {
      v195(v213, v215);
      goto LABEL_58;
    }

    v217 = v211;
    v268(v213, v215);
    v218 = sub_22C906F2C();
    v219 = *(v218 - 8);
    v220 = (*(v219 + 88))(v213, v218);
    if (v220 != v266)
    {
      (*(v219 + 8))(v213, v218);
LABEL_58:
      v222 = v203;
      v120 = v371;
LABEL_59:
      (v365)(v222, v120);
      v201 = v288;
      goto LABEL_60;
    }

    (*(v219 + 96))(v213, v218);
    v221 = *v213;
    v120 = v371;
    if (v221 == 1)
    {
      v222 = v280;
      goto LABEL_59;
    }

    (*v270)(v296, v300);
    (*v273)(v303, v335);
    v217(v208, v354);
    (v365)(v280, v120);
LABEL_25:
    v169 = v317;
    v107 = v381;
LABEL_26:
    v170 = sub_22C5FB484();
    v171 = v333;
    if (v170)
    {
      sub_22C9087AC();
      sub_22C90882C();

      v172 = *(v171 + 16);
      v172(v378, v169, v120);
      sub_22C3A5908(&qword_27D9BAC28, &unk_22C911F40);
      v173 = (*(v171 + 80) + 32) & ~*(v171 + 80);
      v174 = swift_allocObject();
      *(v174 + 16) = v292;
      v172((v174 + v173), v373, v120);
      v175 = v302;
      *v302 = v174;
      v176 = sub_22C906F2C();
      (*(*(v176 - 8) + 104))(v175, v291, v176);
      v177 = (*v299)(v175, v295, v368);
      MEMORY[0x2318B4570](v177);
      sub_22C9070BC();
      v389 = 1;
      sub_22C90708C();
      v178 = v331;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C5916E4();
        v178 = v240;
      }

      v179 = *(v178 + 16);
      if (v179 >= *(v178 + 24) >> 1)
      {
        sub_22C5916E4();
        v178 = v241;
      }

      v180 = v373;
      (v365)(v373, v120);
      *(v178 + 16) = v179 + 1;
      v181 = (*(v366 + 80) + 32) & ~*(v366 + 80);
      v331 = v178;
      (*(v366 + 32))(v178 + v181 + *(v366 + 72) * v179, v318, v354);
      (*v298)(v180, v169, v120);
    }

    else
    {
      v180 = v373;
    }

    sub_22C90825C();
    sub_22C90836C();
    sub_22C90837C();
    (*v338)(v378, v180, v120);
    sub_22C90834C();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C5928C4();
      v384 = v238;
    }

    v104 = v360;
    v105 = v363;
    v155 = *(v384 + 16);
    v156 = v155 + 1;
    v106 = v372;
    v182 = v373;
    if (v155 >= *(v384 + 24) >> 1)
    {
      sub_22C5928C4();
      v384 = v239;
    }

    (v365)(v182, v371);
    v153 = v343;
LABEL_38:
    v102 = v376 + 1;
    (*v370)(v383, v379);
    (*v347)(v380, v377);
    v183 = v384;
    *(v384 + 16) = v156;
    (*v344)(v183 + v375 + v155 * v374, v153, v105);
    (*v350)(v106, v105);
    v108 = v361;
    v101 = v349;
    v103 = v385;
  }

  v244 = sub_22C9068FC();
  MEMORY[0x2318B5880](v244);
  sub_22C9083BC();
  (*v299)(v104, v346, v368);
  sub_22C9070CC();
  MEMORY[0x2318B4580]();
  sub_22C9070BC();
  v386 = 1;
  v109 = v284;
  sub_22C90708C();
  v245 = v331;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_70;
  }

LABEL_81:
  sub_22C5916E4();
  v245 = v263;
LABEL_70:
  v246 = v314;
  v247 = *(v245 + 16);
  if (v247 >= *(v245 + 24) >> 1)
  {
    sub_22C5916E4();
    v245 = v264;
  }

  *(v245 + 16) = v247 + 1;
  (*(v366 + 32))(v245 + ((*(v366 + 80) + 32) & ~*(v366 + 80)) + *(v366 + 72) * v247, v109, v354);
  sub_22C5AD878(v245);
  v88 = v248;
  sub_22C36DD28(v246, &qword_27D9BC0A8, &qword_22C911F68);
  return v88;
}

uint64_t sub_22C41BB98(uint64_t a1)
{
  v2 = sub_22C9094EC();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2);
  v37 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  v10 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = sub_22C90941C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = (&v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_22C3DB138(a1, v12, &qword_27D9BC028, &unk_22C9134B0);
  if (sub_22C370B74(v12, 1, v13) == 1)
  {
    v20 = &qword_27D9BC028;
    v21 = &unk_22C9134B0;
    v22 = v12;
  }

  else
  {
    sub_22C5FB67C(v17);
    v23 = *(v14 + 8);
    v23(v12, v13);
    (*(v14 + 32))(v19, v17, v13);
    v24 = sub_22C9093DC();
    sub_22C58B0F8(v24);

    v25 = sub_22C90952C();
    if (sub_22C370B74(v9, 1, v25) == 1)
    {
      v23(v19, v13);
    }

    else
    {
      sub_22C3DB138(v9, v7, &qword_27D9BB0C0, &qword_22C90D960);
      v26 = *(v25 - 8);
      if ((*(v26 + 88))(v7, v25) == *MEMORY[0x277D72D50])
      {
        (*(v26 + 96))(v7, v25);
        v27 = swift_projectBox();
        v29 = v38;
        v28 = v39;
        v30 = (*(v38 + 88))(v27, v39);
        if (v30 == *MEMORY[0x277D72C50])
        {
          v31 = v37;
          (*(v29 + 16))(v37, v27, v28);
          (*(v29 + 96))(v31, v28);
          v32 = *v31;
          v23(v19, v13);

          if (v32 == 6)
          {
            sub_22C36DD28(v9, &qword_27D9BB0C0, &qword_22C90D960);
            return 0x6E6F697461727564;
          }
        }

        else
        {
          v34 = v30;
          if (v30 == *MEMORY[0x277D72CD0])
          {
            v23(v19, v13);

            sub_22C36DD28(v9, &qword_27D9BB0C0, &qword_22C90D960);
            return 0x7265626D756ELL;
          }

          if (v30 == *MEMORY[0x277D72CE0])
          {
            v23(v19, v13);

            sub_22C36DD28(v9, &qword_27D9BB0C0, &qword_22C90D960);
            return 0x676E69727473;
          }

          if (v30 == *MEMORY[0x277D72CB8])
          {
            v23(v19, v13);

            sub_22C36DD28(v9, &qword_27D9BB0C0, &qword_22C90D960);
            return 1702125924;
          }

          if (v30 == *MEMORY[0x277D72CA8])
          {
            v23(v19, v13);

            sub_22C36DD28(v9, &qword_27D9BB0C0, &qword_22C90D960);
            return 7107189;
          }

          v35 = *MEMORY[0x277D72CD8];
          v23(v19, v13);

          if (v34 == v35)
          {
            sub_22C36DD28(v9, &qword_27D9BB0C0, &qword_22C90D960);
            return 0x6E6F73726570;
          }
        }
      }

      else
      {
        v23(v19, v13);
        (*(v26 + 8))(v7, v25);
      }
    }

    v20 = &qword_27D9BB0C0;
    v21 = &qword_22C90D960;
    v22 = v9;
  }

  sub_22C36DD28(v22, v20, v21);
  return 0;
}

uint64_t sub_22C41C208(uint64_t a1, uint64_t a2)
{
  v91 = a1;
  v3 = sub_22C90769C();
  v92 = *(v3 - 8);
  v93 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C9063DC();
  v87 = *(v6 - 8);
  v88 = v6;
  MEMORY[0x28223BE20](v6);
  v86 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_22C908A7C();
  v81 = *(v83 - 8);
  v8 = MEMORY[0x28223BE20](v83);
  v80 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v82 = &v75 - v10;
  v11 = sub_22C908DAC();
  v77 = *(v11 - 8);
  v78 = v11;
  MEMORY[0x28223BE20](v11);
  v76 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C908EAC();
  v84 = *(v13 - 8);
  v85 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_22C3A5908(&qword_27D9BC0A8, &qword_22C911F68);
  v16 = MEMORY[0x28223BE20](v90);
  v79 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v89 = &v75 - v18;
  v19 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v75 - v20;
  v22 = sub_22C908ABC();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v75 - v27;
  type metadata accessor for PlanPostProcessor(0);
  sub_22C908ADC();
  if (sub_22C370B74(v21, 1, v22) == 1)
  {
    sub_22C36DD28(v21, &qword_27D9BC0B0, &unk_22C912AD0);
    v29 = v86;
    sub_22C90402C();
    (*(v92 + 16))(v5, a2, v93);
    v30 = sub_22C9063CC();
    v31 = sub_22C90AADC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v94 = v33;
      *v32 = 136315138;
      v34 = sub_22C90768C();
      v36 = v35;
      (*(v92 + 8))(v5, v93);
      v37 = sub_22C36F9F4(v34, v36, &v94);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_22C366000, v30, v31, "no tool exists for ID %s", v32, 0xCu);
      sub_22C36FF94(v33);
      MEMORY[0x2318B9880](v33, -1, -1);
      MEMORY[0x2318B9880](v32, -1, -1);
    }

    else
    {

      (*(v92 + 8))(v5, v93);
    }

    (*(v87 + 8))(v29, v88);
    type metadata accessor for PlanPostProcessorError(0);
    sub_22C4208F4(&qword_27D9BC088, type metadata accessor for PlanPostProcessorError, &unk_22C9120B0);
    swift_allocError();
    v47 = v46;
    v44 = a2;
    *v46 = sub_22C90768C();
    v47[1] = v48;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v44;
  }

  (*(v23 + 32))(v28, v21, v22);
  (*(v23 + 16))(v26, v28, v22);
  v38 = (*(v23 + 88))(v26, v22);
  if (v38 == *MEMORY[0x277D1E8E0])
  {
    (*(v23 + 96))(v26, v22);
    v39 = v84;
    v40 = v26;
    v41 = v85;
    (*(v84 + 32))(v15, v40, v85);
    v42 = v90;
    v43 = *(v90 + 48);
    v44 = sub_22C908DCC();
    (*(v39 + 8))(v15, v41);
    (*(v23 + 8))(v28, v22);
    v45 = MEMORY[0x277D1DB18];
LABEL_10:
    v52 = *v45;
    v53 = sub_22C90658C();
    v54 = v89;
    (*(*(v53 - 8) + 104))(&v89[v43], v52, v53);
LABEL_11:
    v55 = *(v42 + 48);
    sub_22C90658C();
    (*(*(v53 - 8) + 32))(v91, &v54[v55], v53);
    return v44;
  }

  v42 = v90;
  if (v38 == *MEMORY[0x277D1E8C8])
  {
    (*(v23 + 96))(v26, v22);
    v49 = v84;
    v50 = v26;
    v51 = v85;
    (*(v84 + 32))(v15, v50, v85);
    v43 = *(v42 + 48);
    v44 = sub_22C908DCC();
    (*(v49 + 8))(v15, v51);
    (*(v23 + 8))(v28, v22);
    v45 = MEMORY[0x277D1DB00];
    goto LABEL_10;
  }

  if (v38 == *MEMORY[0x277D1E8D0])
  {
    (*(v23 + 96))(v26, v22);
    v58 = v76;
    v57 = v77;
    v59 = v26;
    v60 = v78;
    (*(v77 + 32))(v76, v59, v78);
    v61 = *(v42 + 48);
    v44 = sub_22C908D8C();
    (*(v57 + 8))(v58, v60);
    (*(v23 + 8))(v28, v22);
    v62 = *MEMORY[0x277D1DB08];
    v53 = sub_22C90658C();
    v54 = v89;
    (*(*(v53 - 8) + 104))(&v89[v61], v62, v53);
    goto LABEL_11;
  }

  if (v38 == *MEMORY[0x277D1E8D8])
  {
    v63 = v90;
    (*(v23 + 96))(v26, v22);
    v64 = v81;
    v65 = v82;
    v66 = v83;
    (*(v81 + 32))(v82, v26, v83);
    v67 = v80;
    (*(v64 + 16))(v80, v65, v66);
    if ((*(v64 + 88))(v67, v66) == *MEMORY[0x277D1E8B8])
    {
      (*(v64 + 96))(v67, v66);
      v69 = v84;
      v68 = v85;
      (*(v84 + 32))(v15, v67, v85);
      v70 = v63;
      v93 = *(v63 + 48);
      v44 = sub_22C908DCC();
      (*(v69 + 8))(v15, v68);
      v42 = v70;
      (*(v64 + 8))(v82, v83);
      (*(v23 + 8))(v28, v22);
      v71 = *MEMORY[0x277D1DB10];
      v53 = sub_22C90658C();
      v72 = *(v53 - 8);
      v73 = v79;
      v74 = v93;
      (*(v72 + 104))(&v79[v93], v71, v53);
      v54 = v89;
      (*(v72 + 32))(&v89[*(v42 + 48)], &v73[v74], v53);
      goto LABEL_11;
    }
  }

  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

uint64_t sub_22C41CD60(uint64_t a1)
{
  v1 = sub_22C9097DC();
  v3 = v2;
  if (v1 == sub_22C90825C() && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_22C90B4FC();
  }

  return v6 & 1;
}

uint64_t sub_22C41CDF8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_22C901FAC();
  sub_22C369824();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  v13 = sub_22C9068FC();
  a3(v13);
  v14 = sub_22C901F6C();
  v15 = *(v6 + 8);
  v15(v10, v4);
  v15(v12, v4);
  return v14 & 1;
}

uint64_t sub_22C41CF28(uint64_t a1, uint64_t a2)
{
  v2 = sub_22C901FAC();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v8 = v7 - v6;
  sub_22C9068FC();
  v9 = sub_22C901F6C();
  (*(v4 + 8))(v8, v2);
  return v9 & 1;
}

uint64_t sub_22C41D000()
{
  type metadata accessor for PlanPostProcessorError(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  v4 = v3 - v2;
  sub_22C36A7F8();
  sub_22C420958(v0, v4, v5);
  return sub_22C90A1AC();
}

uint64_t sub_22C41D080()
{
  type metadata accessor for PlanPostProcessorError(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  v4 = v3 - v2;
  sub_22C36A7F8();
  sub_22C420958(v0, v4, v5);
  v6 = qword_22C9120F8[swift_getEnumCaseMultiPayload()];
  sub_22C4207B0(v4, type metadata accessor for PlanPostProcessorError);
  return v6;
}

uint64_t sub_22C41D12C()
{
  v1 = v0;
  v2 = sub_22C901FAC();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v8 = v7 - v6;
  type metadata accessor for PlanPostProcessorError(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v12 = (v11 - v10);
  sub_22C36A7F8();
  sub_22C420958(v1, v12, v13);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 3u:
      v17 = *v12;
      v18 = v12[1];
      sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22C90F800;
      v20 = 0x6574656D61726170;
      v21 = 0xEB00000000644972;
      goto LABEL_5;
    case 2u:
      v17 = *v12;
      v18 = v12[1];
      sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22C90F800;
      v20 = 0x64496C6F6F74;
      v21 = 0xE600000000000000;
LABEL_5:
      *(inited + 32) = v20;
      *(inited + 40) = v21;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = v17;
      *(inited + 56) = v18;
      v16 = sub_22C909F0C();
      break;
    default:
      (*(v4 + 32))(v8, v12, v2);
      sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_22C90F800;
      *(v14 + 32) = 0xD000000000000010;
      *(v14 + 40) = 0x800000022C930560;
      *(v14 + 72) = v2;
      v15 = sub_22C36D548((v14 + 48));
      (*(v4 + 16))(v15, v8, v2);
      v16 = sub_22C909F0C();
      (*(v4 + 8))(v8, v2);
      break;
  }

  return v16;
}

uint64_t sub_22C41D428(uint64_t a1)
{
  v2 = sub_22C4208F4(&qword_27D9BC138, type metadata accessor for PlanPostProcessorError, &unk_22C912028);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C41D494(uint64_t a1)
{
  v2 = sub_22C4208F4(&qword_27D9BC138, type metadata accessor for PlanPostProcessorError, &unk_22C912028);

  return MEMORY[0x28211F4A8](a1, v2);
}

void sub_22C41D500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = sub_22C9070DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v10;
  v15 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = v15 + v12 * a1;
  swift_arrayDestroy();
  v17 = __OFSUB__(a3, v13);
  v18 = a3 - v13;
  if (v17)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v24 = v16 + v12 * a3;
  if (v18)
  {
    v19 = *(v9 + 16);
    if (!__OFSUB__(v19, a2))
    {
      sub_22C3D7198(v15 + v12 * a2, v19 - a2, v24);
      v20 = *(v9 + 16);
      v17 = __OFADD__(v20, v18);
      v21 = v20 + v18;
      if (!v17)
      {
        *(v9 + 16) = v21;
        goto LABEL_7;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_7:
  if (a3 < 1 || v12 * a3 < 1)
  {
LABEL_14:
    sub_22C36DD28(a4, &qword_27D9BC070, &qword_22C911F30);
    return;
  }

  v23 = 0;
  while ((v23 & 1) == 0)
  {
    (*(v11 + 16))(v16, a4, v14);
    v16 += v12;
    v23 = 1;
    if (v16 >= v24)
    {
      goto LABEL_14;
    }
  }

LABEL_19:
  __break(1u);
}

uint64_t sub_22C41D69C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = result;
  v10 = *v4;
  v11 = *v4 + 32;
  v12 = v11 + 8 * result;
  sub_22C3A5908(&qword_27D9BAF08, &qword_22C90D7B0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v5);
  v14 = a3 - v5;
  if (v13)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = *(v10 + 16);
  if (__OFSUB__(v15, a2))
  {
    goto LABEL_16;
  }

  result = sub_22C3D874C((v11 + 8 * a2), v15 - a2, (v12 + 8 * a3));
  v16 = *(v10 + 16);
  v13 = __OFADD__(v16, v14);
  v17 = v16 + v14;
  if (v13)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *(v10 + 16) = v17;
LABEL_7:
  if (a3 < 1)
  {
  }

  else
  {
    v18 = v10 + 8 * v9;
    *(v18 + 32) = a4;
    if (v18 + 40 < (v12 + 8 * a3))
    {

      __break(1u);
    }
  }

  return result;
}

void *sub_22C41D7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v68 = a4;
  v69 = a3;
  v8 = sub_22C901FAC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v72 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v59 = &v51 - v12;
  sub_22C3A5908(&qword_27D9BC108, &unk_22C911FE0);
  v13 = sub_22C90B1CC();
  v14 = v13;
  v15 = 0;
  v60 = a1;
  v16 = *(a1 + 64);
  v52 = a1 + 64;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v58 = v9 + 16;
  v70 = v9 + 32;
  v55 = v13 + 64;
  v54 = v9;
  v56 = v13;
  v53 = v20;
  v57 = v8;
  if (v19)
  {
    while (1)
    {
      v67 = v5;
      v21 = __clz(__rbit64(v19));
      v64 = (v19 - 1) & v19;
LABEL_10:
      v24 = v21 | (v15 << 6);
      v26 = v59;
      v25 = v60;
      v27 = *(v60 + 48);
      v28 = *(v9 + 72);
      v29 = *(v9 + 16);
      v66 = v28 * v24;
      v29(v59, v27 + v28 * v24, v8);
      v30 = *(*(v25 + 56) + 8 * v24);
      v65 = *(v9 + 32);
      v65(v72, v26, v8);
      v5 = *(v30 + 16);
      if (v5)
      {
        v31 = a2;
        sub_22C3A5908(&qword_27D9BAC28, &unk_22C911F40);
        v32 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v33 = swift_allocObject();
        v34 = j__malloc_size(v33);
        if (!v28)
        {
          goto LABEL_26;
        }

        if (v34 - v32 == 0x8000000000000000 && v28 == -1)
        {
          goto LABEL_28;
        }

        v33[2] = v5;
        v33[3] = 2 * ((v34 - v32) / v28);
        sub_22C3D1670(v71);
        v37 = v36;
        v62 = v71[1];
        v63 = v71[0];
        v61 = v71[2];
        swift_bridgeObjectRetain_n();

        sub_22C36A674(v63);
        if (v37 != v5)
        {
          goto LABEL_27;
        }

        v38 = v68;
        v39 = v69;
      }

      else
      {

        v39 = v69;

        v38 = v68;

        v31 = a2;
        v33 = MEMORY[0x277D84F90];
      }

      v71[0] = v33;
      v40 = v39;
      v41 = v67;
      sub_22C41E01C(v71, v31, v40, v38);
      v5 = v41;
      if (v41)
      {
        goto LABEL_29;
      }

      a2 = v31;
      sub_22C7F5258();
      v43 = v42;
      v45 = v44;

      v14 = v56;
      *(v55 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v8 = v57;
      v65((v14[6] + v66), v72, v57);
      v46 = (v14[7] + 16 * v24);
      *v46 = v43;
      v46[1] = v45;
      v47 = v14[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        break;
      }

      v14[2] = v49;
      v9 = v54;
      v20 = v53;
      v19 = v64;
      if (!v64)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        return v14;
      }

      v23 = *(v52 + 8 * v15);
      ++v22;
      if (v23)
      {
        v67 = v5;
        v21 = __clz(__rbit64(v23));
        v64 = (v23 - 1) & v23;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:

  __break(1u);
  return result;
}

uint64_t sub_22C41DC30(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C2A0();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_22C41E190(v6);
  *a1 = v2;
  return result;
}

void sub_22C41DCC4(uint64_t a1)
{
  sub_22C41DDC0(319);
  if (v1 <= 0x3F)
  {
    sub_22C908AEC();
    if (v2 <= 0x3F)
    {
      sub_22C9087BC();
      if (v3 <= 0x3F)
      {
        type metadata accessor for TranscriptValueFetcher(319);
        if (v4 <= 0x3F)
        {
          sub_22C41DFB8(319, &qword_28142FA00, MEMORY[0x277D1DF58], MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22C41DDC0(uint64_t a1)
{
  if (!qword_28142FA30)
  {
    sub_22C901FAC();
    type metadata accessor for PlanPostProcessor.ExpressionContext(255);
    sub_22C4208F4(&qword_2814357B0, MEMORY[0x277D1C338], MEMORY[0x277D1C348]);
    v1 = sub_22C909F2C();
    if (!v2)
    {
      atomic_store(v1, &qword_28142FA30);
    }
  }
}

void sub_22C41DEB4(uint64_t a1)
{
  sub_22C41DFB8(319, &qword_28142FA88, MEMORY[0x277D72B00], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22C907D6C();
    if (v2 <= 0x3F)
    {
      sub_22C41DFB8(319, &qword_28142F9F8, MEMORY[0x277D1E3C8], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C41DFB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22C41E01C(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void))
{
  v9 = *(sub_22C901FAC() - 8);
  v10 = *a1;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C2B8();
    v10 = v11;
  }

  v12 = *(v10 + 16);
  v14[0] = v10 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v14[1] = v12;

  sub_22C41E294(v14, a2, a3, a4);
  *a1 = v10;
  if (v4)
  {
  }

  else
  {
  }
}

uint64_t sub_22C41E190(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22C90B45C();
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
        sub_22C3A5908(&qword_27D9BAE40, &qword_22C90D6E8);
        v6 = sub_22C90A64C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_22C41E898(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_22C41E48C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C41E294(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void))
{
  v8 = a1[1];
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  result = sub_22C90B45C();
  if (result >= v8)
  {
    if ((v8 & 0x8000000000000000) == 0)
    {
      if (v8)
      {

        sub_22C41E4FC(0, v8, 1, a1, a2, a3, a4);
      }

      else
      {
      }

      goto LABEL_12;
    }
  }

  else
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22C901FAC();
        v12 = sub_22C90A64C();
        *(v12 + 16) = v11;
      }

      v13 = *(sub_22C901FAC() - 8);
      v14[0] = (v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80)));
      v14[1] = v11;

      sub_22C41ED70(v14, v15, a1, v10, a2, a3, a4);
      *(v12 + 16) = 0;

LABEL_12:
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22C41E48C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 16 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 24);
        *(v9 + 16) = *v9;
        *v9 = v7;
        *(v9 + 8) = v10;
        v9 -= 16;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22C41E4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v55 = a7;
  v13 = sub_22C901FAC();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v65 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v75 = &v55 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v55 - v19;
  v57 = a2;
  if (a3 != a2)
  {
    v22 = *(v14 + 16);
    v21 = v14 + 16;
    v23 = *a4;
    v70 = (*(v21 + 64) + 32) & ~*(v21 + 64);
    v71 = v22;
    v24 = *(v21 + 56);
    v66 = (v21 - 8);
    v67 = v13;
    v25 = (v23 + v24 * (a3 - 1));
    v62 = -v24;
    v63 = (v21 + 16);
    v26 = a1 - a3;
    v64 = v23;
    v56 = v24;
    v27 = v23 + v24 * a3;
    v72 = &v55 - v19;
    v73 = v21;
    v68 = a6;
    v69 = a5;
    while (2)
    {
      v60 = v25;
      v61 = a3;
      v58 = v27;
      v59 = v26;
      v28 = v26;
      do
      {
        v29 = v71;
        v71(v20, v27, v13);
        v29(v75, v25, v13);
        v30 = *(a6 + 16);
        v74 = v28;
        if (a5)
        {

          sub_22C7DBC48();
          v32 = v31;
          v34 = v33;

          if (v34)
          {
            goto LABEL_17;
          }

          v35 = v69;

          sub_22C7DBC48();
          v37 = v36;
          v39 = v38;

          if (v39)
          {
            goto LABEL_18;
          }

          v40 = v35;
        }

        else
        {
          v41 = v70;
          sub_22C7D9A98(v20, a6 + v70, v30);
          if (v43)
          {
LABEL_17:
            __break(1u);
LABEL_18:
            __break(1u);
LABEL_19:
            __break(1u);
            return;
          }

          v32 = v42;
          sub_22C7D9A98(v75, a6 + v41, *(a6 + 16));
          v40 = v69;
          if (v45)
          {
            goto LABEL_18;
          }

          v37 = v44;
        }

        v13 = v67;
        v46 = *v66;
        (*v66)(v75, v67);
        v20 = v72;
        v46(v72, v13);
        a6 = v68;
        a5 = v40;
        if (v37 >= v32)
        {
          break;
        }

        if (!v64)
        {
          goto LABEL_19;
        }

        v47 = v68;
        v48 = v40;
        v49 = v74;
        v50 = *v63;
        v51 = v65;
        (*v63)(v65, v27, v13);
        swift_arrayInitWithTakeFrontToBack();
        v52 = v51;
        v20 = v72;
        v50(v25, v52, v13);
        v53 = v49;
        a5 = v48;
        a6 = v47;
        v25 += v62;
        v27 += v62;
        v54 = __CFADD__(v53, 1);
        v28 = v53 + 1;
      }

      while (!v54);
      a3 = v61 + 1;
      v25 = &v60[v56];
      v26 = v59 - 1;
      v27 = v58 + v56;
      if (v61 + 1 != v57)
      {
        continue;
      }

      break;
    }
  }
}

void sub_22C41E898(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v88 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v83 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9);
        v11 = (*a3 + 16 * v7);
        v12 = 16 * v7;
        v15 = *v11;
        v14 = v11 + 4;
        v13 = v15;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v14;
          v14 += 2;
          v20 = (v10 < v13) ^ (v19 >= v17);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 16 * v6;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v12);
                v26 = v24 + v21;
                v27 = *v25;
                v28 = v25[1];
                *v25 = *(v26 - 16);
                *(v26 - 16) = v27;
                *(v26 - 8) = v28;
              }

              ++v23;
              v21 -= 16;
              v12 += 16;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v29 = *a3;
            v30 = *a3 + 16 * v9 - 16;
            v31 = v7 - v9;
            do
            {
              v32 = *(v29 + 16 * v9);
              v33 = v31;
              v34 = v30;
              do
              {
                if (v32 >= *v34)
                {
                  break;
                }

                if (!v29)
                {
                  goto LABEL_111;
                }

                v35 = *(v34 + 24);
                *(v34 + 16) = *v34;
                *v34 = v32;
                *(v34 + 8) = v35;
                v34 -= 16;
              }

              while (!__CFADD__(v33++, 1));
              ++v9;
              v30 += 16;
              --v31;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v85 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C590218(0, v8[2] + 1, 1, v8);
        v8 = v81;
      }

      v38 = v8[2];
      v37 = v8[3];
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        sub_22C590218(v37 > 1, v38 + 1, 1, v8);
        v8 = v82;
      }

      v8[2] = v39;
      v40 = v8 + 4;
      v41 = &v8[2 * v38 + 4];
      *v41 = v7;
      v41[1] = v9;
      v86 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v38)
      {
        while (1)
        {
          v42 = v39 - 1;
          v43 = &v40[2 * v39 - 2];
          v44 = &v8[2 * v39];
          if (v39 >= 4)
          {
            break;
          }

          if (v39 == 3)
          {
            v45 = v8[4];
            v46 = v8[5];
            v55 = __OFSUB__(v46, v45);
            v47 = v46 - v45;
            v48 = v55;
LABEL_56:
            if (v48)
            {
              goto LABEL_96;
            }

            v60 = *v44;
            v59 = v44[1];
            v61 = __OFSUB__(v59, v60);
            v62 = v59 - v60;
            v63 = v61;
            if (v61)
            {
              goto LABEL_99;
            }

            v64 = v43[1];
            v65 = v64 - *v43;
            if (__OFSUB__(v64, *v43))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v62, v65))
            {
              goto LABEL_104;
            }

            if (v62 + v65 >= v47)
            {
              if (v47 < v65)
              {
                v42 = v39 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v39 < 2)
          {
            goto LABEL_98;
          }

          v67 = *v44;
          v66 = v44[1];
          v55 = __OFSUB__(v66, v67);
          v62 = v66 - v67;
          v63 = v55;
LABEL_71:
          if (v63)
          {
            goto LABEL_101;
          }

          v69 = *v43;
          v68 = v43[1];
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_103;
          }

          if (v70 < v62)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v42 - 1 >= v39)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v74 = &v40[2 * v42 - 2];
          v75 = *v74;
          v76 = &v40[2 * v42];
          v77 = v76[1];
          sub_22C41FEA4((*a3 + 16 * *v74), (*a3 + 16 * *v76), (*a3 + 16 * v77), v86);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v77 < v75)
          {
            goto LABEL_91;
          }

          v78 = v8;
          v79 = v8[2];
          if (v42 > v79)
          {
            goto LABEL_92;
          }

          *v74 = v75;
          v74[1] = v77;
          if (v42 >= v79)
          {
            goto LABEL_93;
          }

          v39 = v79 - 1;
          memmove(&v40[2 * v42], v76 + 2, 16 * (v79 - 1 - v42));
          v78[2] = v79 - 1;
          v80 = v79 > 2;
          v8 = v78;
          v5 = 0;
          if (!v80)
          {
            goto LABEL_85;
          }
        }

        v49 = &v40[2 * v39];
        v50 = *(v49 - 8);
        v51 = *(v49 - 7);
        v55 = __OFSUB__(v51, v50);
        v52 = v51 - v50;
        if (v55)
        {
          goto LABEL_94;
        }

        v54 = *(v49 - 6);
        v53 = *(v49 - 5);
        v55 = __OFSUB__(v53, v54);
        v47 = v53 - v54;
        v48 = v55;
        if (v55)
        {
          goto LABEL_95;
        }

        v56 = v44[1];
        v57 = v56 - *v44;
        if (__OFSUB__(v56, *v44))
        {
          goto LABEL_97;
        }

        v55 = __OFADD__(v47, v57);
        v58 = v47 + v57;
        if (v55)
        {
          goto LABEL_100;
        }

        if (v58 >= v52)
        {
          v72 = *v43;
          v71 = v43[1];
          v55 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v55)
          {
            goto LABEL_105;
          }

          if (v47 < v73)
          {
            v42 = v39 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v85;
      a4 = v83;
      if (v85 >= v6)
      {
        v88 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_22C41FB7C(&v88, *result, a3);
LABEL_89:
}

uint64_t sub_22C41ED70(void (**a1)(char *, char *, uint64_t), uint64_t a2, char **a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void, void))
{
  v175 = a4;
  v177 = a1;
  v204 = sub_22C901FAC();
  v11 = MEMORY[0x28223BE20](v204);
  v183 = &v175 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v196 = &v175 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v207 = &v175 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v175 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v192 = &v175 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v175 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v176 = &v175 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v175 - v28;
  v208 = MEMORY[0x277D84F90];
  v188 = a7;
  v189 = a3;
  v30 = a3[1];
  if (v30 >= 1)
  {
    v200 = (v27 + 8);
    v201 = v27 + 16;
    v191 = v27;
    v199 = (v27 + 32);
    v31 = v30;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v32 = v31;
    v33 = 0;
    v34 = MEMORY[0x277D84F90];
    v202 = a5;
    v203 = a6;
    v35 = v204;
    v36 = v207;
    v206 = v19;
    v187 = v24;
    v178 = v29;
    while (1)
    {
      v37 = v33++;
      v180 = v34;
      v179 = v37;
      if (v33 < v32)
      {
        v198 = v32;
        v38 = v29;
        v39 = *v189;
        v40 = *(v191 + 72);
        v193 = v33;
        v41 = v39 + v40 * v33;
        v42 = *(v191 + 16);
        v42(v38, v41, v35);
        v205 = v40;
        v186 = v39;
        v43 = v39 + v40 * v37;
        v44 = v176;
        v195 = v42;
        v42(v176, v43, v35);
        v45 = v190;
        LODWORD(v197) = sub_22C408814(v178, v44, a5, a6);
        v190 = v45;
        if (v45)
        {
          v174 = *v200;
          (*v200)(v44, v35);
          v174(v178, v35);
          goto LABEL_129;
        }

        v46 = v35;
        v47 = *v200;
        (*v200)(v44, v46);
        v194 = v47;
        v47(v178, v46);
        v48 = v37 + 2;
        v49 = v205;
        v50 = (v186 + v205 * (v37 + 2));
        v36 = v207;
        v51 = v187;
        v33 = v193;
        v52 = v198;
        while (1)
        {
          v53 = v48;
          if (v33 + 1 >= v52)
          {
            break;
          }

          v193 = v33;
          v54 = v204;
          v55 = v195;
          v195(v51, v50, v204);
          v55(v192, v41, v54);
          v56 = (*(v191 + 80) + 32) & ~*(v191 + 80);
          if (a5)
          {

            sub_22C7DBC48();
            v58 = v57;
            v60 = v59;

            if (v60)
            {
              goto LABEL_155;
            }

            sub_22C7DBC48();
            v62 = v61;
            v64 = v63;

            if (v64)
            {
              goto LABEL_156;
            }
          }

          else
          {
            sub_22C7D9A98(v51, a6 + v56, *(a6 + 16));
            if (v66)
            {
              goto LABEL_155;
            }

            v58 = v65;
            sub_22C7D9A98(v192, a6 + v56, *(a6 + 16));
            if (v68)
            {
              goto LABEL_156;
            }

            v62 = v67;
          }

          v69 = v204;
          v70 = v194;
          (v194)(v192, v204);
          v71 = v187;
          v70(v187, v69);
          v72 = v62 < v58;
          v51 = v71;
          v73 = !v72;
          v74 = v197 ^ v73;
          v49 = v205;
          v50 += v205;
          v41 += v205;
          v33 = v193 + 1;
          v48 = v53 + 1;
          a5 = v202;
          a6 = v203;
          v36 = v207;
          v52 = v198;
          if ((v74 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        v33 = v52;
LABEL_20:
        if (v197)
        {
          v34 = v180;
          if (v33 < v179)
          {
            goto LABEL_151;
          }

          if (v179 >= v33)
          {
            v35 = v204;
          }

          else
          {
            if (v52 >= v53)
            {
              v75 = v53;
            }

            else
            {
              v75 = v52;
            }

            v76 = v49 * (v75 - 1);
            v77 = v49 * v75;
            v78 = v179 * v49;
            v79 = v33;
            v80 = v179;
            v193 = v33;
            do
            {
              if (v80 != --v79)
              {
                v81 = *v189;
                if (!*v189)
                {
                  goto LABEL_158;
                }

                v82 = *v199;
                v83 = v204;
                (*v199)(v183, v81 + v78, v204);
                v84 = v78 < v76 || v81 + v78 >= (v81 + v77);
                if (v84)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v78 != v76)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                v82((v81 + v76), v183, v83);
                a5 = v202;
                v33 = v193;
                v34 = v180;
                v49 = v205;
              }

              ++v80;
              v76 -= v49;
              v77 -= v49;
              v78 += v49;
            }

            while (v80 < v79);
            a6 = v203;
            v35 = v204;
            v36 = v207;
          }

          v19 = v206;
        }

        else
        {
          v35 = v204;
          v19 = v206;
          v34 = v180;
        }
      }

      v85 = v189[1];
      v86 = v179;
      if (v33 < v85)
      {
        if (__OFSUB__(v33, v179))
        {
          goto LABEL_148;
        }

        if (v33 - v179 < v175)
        {
          if (__OFADD__(v179, v175))
          {
            goto LABEL_149;
          }

          if (v179 + v175 >= v85)
          {
            v87 = v189[1];
          }

          else
          {
            v87 = v179 + v175;
          }

          if (v87 < v179)
          {
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:

            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:

            __break(1u);
LABEL_158:

            __break(1u);
LABEL_159:

            __break(1u);
LABEL_160:

            __break(1u);
            return result;
          }

          if (v33 != v87)
          {
            v88 = *v189;
            v197 = ((*(v191 + 80) + 32) & ~*(v191 + 80));
            v89 = *(v191 + 72);
            v198 = *(v191 + 16);
            v90 = v88 + v89 * (v33 - 1);
            v194 = -v89;
            v195 = v88;
            v91 = v179 - v33;
            v181 = v89;
            v92 = v88 + v33 * v89;
            v182 = v87;
            do
            {
              v193 = v33;
              v184 = v92;
              v185 = v91;
              v93 = v91;
              v186 = v90;
              while (1)
              {
                v205 = v93;
                v94 = v19;
                v95 = v19;
                v96 = a6;
                v97 = v198;
                v198(v94, v92, v35);
                v97(v36, v90, v35);
                v98 = v96;
                if (a5)
                {

                  sub_22C7DBC48();
                  v100 = v99;
                  v102 = v101;

                  if (v102)
                  {
                    goto LABEL_153;
                  }

                  v36 = v207;
                  sub_22C7DBC48();
                  v104 = v103;
                  v106 = v105;

                  if (v106)
                  {
                    goto LABEL_152;
                  }
                }

                else
                {
                  v107 = v197;
                  sub_22C7D9A98(v95, &v197[v96], *(v96 + 16));
                  if (v109)
                  {
                    goto LABEL_153;
                  }

                  v100 = v108;
                  v36 = v207;
                  sub_22C7D9A98(v207, &v107[v98], *(v98 + 16));
                  if (v111)
                  {
                    goto LABEL_152;
                  }

                  v104 = v110;
                }

                v112 = *v200;
                v35 = v204;
                (*v200)(v36, v204);
                v112(v206, v35);
                if (v104 >= v100)
                {
                  break;
                }

                a5 = v202;
                a6 = v203;
                v113 = v205;
                if (!v195)
                {
                  goto LABEL_154;
                }

                v114 = *v199;
                v115 = v196;
                (*v199)(v196, v92, v35);
                swift_arrayInitWithTakeFrontToBack();
                v114(v90, v115, v35);
                v90 += v194;
                v92 += v194;
                v84 = __CFADD__(v113, 1);
                v93 = v113 + 1;
                v19 = v206;
                v36 = v207;
                if (v84)
                {
                  goto LABEL_67;
                }
              }

              a5 = v202;
              a6 = v203;
              v19 = v206;
LABEL_67:
              v33 = v193 + 1;
              v90 = (v186 + v181);
              v91 = v185 - 1;
              v92 = &v184[v181];
            }

            while (v193 + 1 != v182);
            v33 = v182;
            v34 = v180;
            v86 = v179;
          }
        }
      }

      v116 = v191;
      if (v33 < v86)
      {
        goto LABEL_147;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C590218(0, *(v34 + 16) + 1, 1, v34);
        v34 = v169;
      }

      v118 = *(v34 + 16);
      v117 = *(v34 + 24);
      v119 = v118 + 1;
      if (v118 >= v117 >> 1)
      {
        sub_22C590218(v117 > 1, v118 + 1, 1, v34);
        v120 = v116;
        v34 = v170;
      }

      else
      {
        v120 = v116;
      }

      *(v34 + 16) = v119;
      v121 = v34 + 32;
      v122 = (v34 + 32 + 16 * v118);
      *v122 = v86;
      v122[1] = v33;
      v208 = v34;
      v195 = *v177;
      if (!v195)
      {
        goto LABEL_159;
      }

      if (v118)
      {
        v35 = v204;
        v193 = v33;
        v194 = v34 + 32;
        while (1)
        {
          v123 = v119 - 1;
          v124 = (v121 + 16 * (v119 - 1));
          v125 = (v34 + 16 * v119);
          v36 = v207;
          if (v119 >= 4)
          {
            break;
          }

          if (v119 == 3)
          {
            v126 = *(v34 + 32);
            v127 = *(v34 + 40);
            v136 = __OFSUB__(v127, v126);
            v128 = v127 - v126;
            v129 = v136;
LABEL_90:
            if (v129)
            {
              goto LABEL_137;
            }

            v141 = *v125;
            v140 = v125[1];
            v142 = __OFSUB__(v140, v141);
            v143 = v140 - v141;
            v144 = v142;
            if (v142)
            {
              goto LABEL_140;
            }

            v145 = v124[1];
            v146 = v145 - *v124;
            if (__OFSUB__(v145, *v124))
            {
              goto LABEL_143;
            }

            if (__OFADD__(v143, v146))
            {
              goto LABEL_145;
            }

            if (v143 + v146 >= v128)
            {
              if (v128 < v146)
              {
                v123 = v119 - 2;
              }

              goto LABEL_112;
            }

            goto LABEL_105;
          }

          if (v119 < 2)
          {
            goto LABEL_139;
          }

          v148 = *v125;
          v147 = v125[1];
          v136 = __OFSUB__(v147, v148);
          v143 = v147 - v148;
          v144 = v136;
LABEL_105:
          if (v144)
          {
            goto LABEL_142;
          }

          v150 = *v124;
          v149 = v124[1];
          v136 = __OFSUB__(v149, v150);
          v151 = v149 - v150;
          if (v136)
          {
            goto LABEL_144;
          }

          if (v151 < v143)
          {
            v208 = v34;
            goto LABEL_122;
          }

LABEL_112:
          if (v123 - 1 >= v119)
          {
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
            goto LABEL_150;
          }

          v155 = v190;
          v156 = *v189;
          if (!*v189)
          {
            goto LABEL_157;
          }

          v157 = v34;
          v158 = (v121 + 16 * (v123 - 1));
          v159 = *v158;
          v160 = v123;
          v161 = v121 + 16 * v123;
          v162 = *v161;
          v163 = *(v161 + 8);
          v164 = *(v120 + 72);
          v205 = v156 + v164 * *v158;
          v197 = (v156 + v164 * v163);
          v198 = (v156 + v164 * v162);
          v165 = v202;

          v166 = v203;

          v167 = v188;

          sub_22C420028(v205, v198, v197, v195, v165, v166, v167);
          if (v155)
          {
            v208 = v157;
            goto LABEL_129;
          }

          v190 = 0;
          if (v163 < v159)
          {
            goto LABEL_132;
          }

          v34 = v157;
          v168 = *(v157 + 16);
          if (v160 > v168)
          {
            goto LABEL_133;
          }

          *v158 = v159;
          v158[1] = v163;
          if (v160 >= v168)
          {
            goto LABEL_134;
          }

          v119 = v168 - 1;
          sub_22C56BFF0((v161 + 16), v168 - 1 - v160, v161);
          *(v34 + 16) = v168 - 1;
          v72 = v168 > 2;
          a6 = v203;
          v35 = v204;
          v120 = v191;
          v19 = v206;
          v33 = v193;
          v121 = v194;
          if (!v72)
          {
            v208 = v34;
            goto LABEL_121;
          }
        }

        v130 = v121 + 16 * v119;
        v131 = *(v130 - 64);
        v132 = *(v130 - 56);
        v136 = __OFSUB__(v132, v131);
        v133 = v132 - v131;
        if (v136)
        {
          goto LABEL_135;
        }

        v135 = *(v130 - 48);
        v134 = *(v130 - 40);
        v136 = __OFSUB__(v134, v135);
        v128 = v134 - v135;
        v129 = v136;
        if (v136)
        {
          goto LABEL_136;
        }

        v137 = v125[1];
        v138 = v137 - *v125;
        if (__OFSUB__(v137, *v125))
        {
          goto LABEL_138;
        }

        v136 = __OFADD__(v128, v138);
        v139 = v128 + v138;
        if (v136)
        {
          goto LABEL_141;
        }

        if (v139 >= v133)
        {
          v153 = *v124;
          v152 = v124[1];
          v136 = __OFSUB__(v152, v153);
          v154 = v152 - v153;
          if (v136)
          {
            goto LABEL_146;
          }

          if (v128 < v154)
          {
            v123 = v119 - 2;
          }

          goto LABEL_112;
        }

        goto LABEL_90;
      }

      v35 = v204;
LABEL_121:
      v36 = v207;
LABEL_122:
      v32 = v189[1];
      a5 = v202;
      v29 = v178;
      if (v33 >= v32)
      {
        goto LABEL_127;
      }
    }
  }

  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
LABEL_127:
  v171 = *v177;
  if (!*v177)
  {
    goto LABEL_160;
  }

  v172 = v188;

  sub_22C41FCA8(&v208, v171, v189, a5, a6, v172);
LABEL_129:
}

uint64_t sub_22C41FB7C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_22C56BFD8();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_22C41FEA4((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_22C41FCA8(char **a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v10 = *a1;

  v25 = a6;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v10 = sub_22C56BFD8();
  }

  for (*a1 = v10; ; v10 = *a1)
  {
    v11 = *(v10 + 2);
    if (v11 < 2)
    {
LABEL_11:

      return 1;
    }

    v12 = *a3;
    if (!*a3)
    {
      break;
    }

    v13 = *&v10[16 * v11];
    v14 = &v10[16 * v11 - 16];
    v16 = *(v14 + 4);
    v15 = *(v14 + 5);
    v17 = *(*(sub_22C901FAC() - 8) + 72);
    v27 = v12 + v17 * v13;
    v18 = v12 + v17 * v16;
    v19 = (v12 + v17 * v15);

    sub_22C420028(v27, v18, v19, a2, a4, a5, v25);
    if (v7)
    {
      goto LABEL_11;
    }

    if (v15 < v13)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_22C56BFD8();
    }

    if (v11 - 2 >= *(v10 + 2))
    {
      goto LABEL_13;
    }

    v20 = &v10[16 * v11];
    *v20 = v13;
    *(v20 + 1) = v15;
    *a1 = v10;
    sub_22C56BF4C(v11 - 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_22C41FEA4(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_22C3A4F80(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  sub_22C3A4F80(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_15:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    if (*(v10 - 2) < *v14)
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_28:
  v16 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v16])
  {
    memmove(v6, v4, 16 * v16);
  }

  return 1;
}

void sub_22C420028(uint64_t a1, uint64_t a2, char *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v90 = a7;
  v95 = a3;
  v12 = sub_22C901FAC();
  v100 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v96 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v16 = MEMORY[0x28223BE20](v15);
  v104 = &v88 - v17;
  MEMORY[0x28223BE20](v16);
  v94 = &v88 - v19;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    return;
  }

  v22 = a2 - a1;
  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_75;
  }

  v101 = a5;
  v24 = &v95[-a2];
  if (&v95[-a2] == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_76;
  }

  v26 = a1;
  v27 = a2;
  v28 = v95;
  v93 = v18;
  v29 = v22 / v21;
  v30 = v26;
  v107 = v26;
  v106 = a4;
  v98 = v100 + 16;
  v99 = a6;
  v97 = (v100 + 8);
  v31 = v24 / v21;
  if (v22 / v21 >= v24 / v21)
  {
    v57 = v27;
    sub_22C3D735C(v27, v24 / v21, a4);
    v102 = a4;
    v58 = a4 + v31 * v21;
    v59 = v30;
    v60 = -v21;
    v61 = v58;
    v62 = v93;
    v92 = v59;
LABEL_44:
    v103 = v57;
    v94 = &v57[v60];
    v89 = v61;
    v63 = v61;
    while (1)
    {
      if (v58 <= v102)
      {
        v107 = v103;
        v105 = v63;
        goto LABEL_73;
      }

      if (v103 <= v92)
      {
        break;
      }

      v95 = v28;
      v91 = v63;
      v104 = v58;
      v64 = v58 + v60;
      v65 = v100;
      v66 = *(v100 + 16);
      v66(v62, v58 + v60, v12);
      v66(v96, v94, v12);
      v67 = (*(v65 + 80) + 32) & ~*(v65 + 80);
      v68 = v99;
      if (v101)
      {

        sub_22C7DBC48();
        v70 = v69;
        v72 = v71;

        if (v72)
        {
          goto LABEL_79;
        }

        sub_22C7DBC48();
        v74 = v73;
        v76 = v75;

        if (v76)
        {
          goto LABEL_80;
        }
      }

      else
      {
        sub_22C7D9A98(v62, v99 + v67, *(v99 + 16));
        if (v78)
        {
          goto LABEL_79;
        }

        v70 = v77;
        sub_22C7D9A98(v96, v68 + v67, *(v68 + 16));
        if (v80)
        {
          goto LABEL_80;
        }

        v74 = v79;
      }

      v81 = v95;
      v82 = &v95[v60];
      v83 = *v97;
      (*v97)(v96, v12);
      v83(v93, v12);
      if (v74 < v70)
      {
        v58 = v104;
        v85 = v81 < v103 || v82 >= v103;
        v28 = (v81 + v60);
        if (v85)
        {
          v57 = v94;
          swift_arrayInitWithTakeFrontToBack();
          v61 = v91;
          v62 = v93;
        }

        else
        {
          v61 = v91;
          v62 = v93;
          v86 = v94;
          v57 = v94;
          if (v81 != v103)
          {
            v87 = v91;
            swift_arrayInitWithTakeBackToFront();
            v57 = v86;
            v61 = v87;
          }
        }

        goto LABEL_44;
      }

      if (v81 < v104 || v82 >= v104)
      {
        swift_arrayInitWithTakeFrontToBack();
        v28 = (v81 + v60);
        v58 = v64;
        v63 = v64;
        v62 = v93;
      }

      else
      {
        v63 = v64;
        v28 = (v81 + v60);
        v58 = v64;
        v62 = v93;
        if (v104 != v81)
        {
          swift_arrayInitWithTakeBackToFront();
          v28 = (v81 + v60);
          v58 = v64;
          v63 = v64;
        }
      }
    }

    v107 = v103;
    v105 = v89;
  }

  else
  {
    sub_22C3D735C(v26, v29, a4);
    v96 = a4 + v29 * v21;
    v105 = v96;
    v32 = a4;
    v33 = v99;
    v34 = v27;
    v35 = v30;
    v36 = v94;
    while (v32 < v96 && v34 < v28)
    {
      v38 = v100;
      v39 = *(v100 + 16);
      v103 = v34;
      v39(v36);
      v102 = v32;
      (v39)(v104, v32, v12);
      v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      if (v101)
      {

        sub_22C7DBC48();
        v42 = v41;
        v44 = v43;

        if (v44)
        {
          goto LABEL_77;
        }

        sub_22C7DBC48();
        v46 = v45;
        v48 = v47;

        if (v48)
        {
          goto LABEL_78;
        }
      }

      else
      {
        sub_22C7D9A98(v36, v33 + v40, *(v33 + 16));
        if (v50)
        {
          goto LABEL_77;
        }

        v42 = v49;
        sub_22C7D9A98(v104, v33 + v40, *(v33 + 16));
        if (v52)
        {
          goto LABEL_78;
        }

        v46 = v51;
      }

      v53 = *v97;
      (*v97)(v104, v12);
      v36 = v94;
      v53(v94, v12);
      if (v46 >= v42)
      {
        v32 = v102 + v21;
        v56 = v35 < v102 || v35 >= v32;
        v33 = v99;
        v28 = v95;
        if (v56)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v35 != v102)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v106 = v32;
        v34 = v103;
      }

      else
      {
        v32 = v102;
        v54 = v103 + v21;
        v55 = v35 < v103 || v35 >= v54;
        v33 = v99;
        v28 = v95;
        if (v55)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v35 != v103)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v34 = v54;
      }

      v35 += v21;
      v107 = v35;
    }
  }

LABEL_73:
  sub_22C8381A0(&v107, &v106, &v105);
}

uint64_t sub_22C42074C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlanPostProcessor.ExpressionContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C4207B0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22C420808(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlanPostProcessor.ExpressionContext(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C4208F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C420958(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22C36985C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void *sub_22C420A2C(uint64_t isStackAllocationSafe, uint64_t a2, uint64_t a3)
{
  v5 = isStackAllocationSafe;
  v14[2] = *MEMORY[0x277D85DE8];
  v14[0] = isStackAllocationSafe;
  v14[1] = a2;
  v6 = *(a3 + 32);
  v13[4] = v14;
  v13[5] = a3;
  v7 = ((1 << v6) + 63) >> 6;
  if (v6 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v8 = v13 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_22C88FAFC(0, v7, v8);
    sub_22C420BD4(v8, v7, v5, a2, a3);
    v10 = v9;
  }

  else
  {
    v12 = swift_slowAlloc();
    v10 = sub_22C420F10(v12, v7, sub_22C421048);

    MEMORY[0x2318B9880](v12, -1, -1);
  }

  return v10;
}

void sub_22C420BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25[1] = a2;
  v27 = a1;
  v7 = sub_22C901FAC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v37 = v25 - v13;
  MEMORY[0x28223BE20](v12);
  v30 = v25 - v14;
  v31 = a4;
  v29 = *(a4 + 16);
  if (!v29)
  {
    v26 = 0;
    goto LABEL_14;
  }

  v26 = 0;
  v15 = 0;
  v28 = (v8 + 32);
  v33 = v8 + 16;
  v34 = a5 + 56;
  v35 = (v8 + 8);
  v36 = a5;
  while (2)
  {
    v16 = v30;
    sub_22C4054B8(v15, v31);
    v32 = v15 + 1;
    (*v28)(v37, v16, v7);
    sub_22C4208F4(&qword_2814357B0, MEMORY[0x277D1C338], MEMORY[0x277D1C348]);
    v17 = sub_22C909F7C();
    v18 = ~(-1 << *(a5 + 32));
    do
    {
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = 1 << (v17 & v18);
      if ((v21 & *(v34 + 8 * v20)) == 0)
      {
        (*v35)(v37, v7);
        goto LABEL_10;
      }

      (*(v8 + 16))(v11, *(v36 + 48) + *(v8 + 72) * v19, v7);
      sub_22C4208F4(&qword_27D9BAA28, MEMORY[0x277D1C338], MEMORY[0x277D1C358]);
      v22 = sub_22C90A0BC();
      v23 = *(v8 + 8);
      v23(v11, v7);
      v17 = v19 + 1;
    }

    while ((v22 & 1) == 0);
    v23(v37, v7);
    v24 = *(v27 + 8 * v20);
    *(v27 + 8 * v20) = v24 | v21;
    if ((v24 & v21) != 0)
    {
LABEL_10:
      a5 = v36;
      goto LABEL_11;
    }

    a5 = v36;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      return;
    }

    ++v26;
LABEL_11:
    v15 = v32;
    if (v32 != v29)
    {
      continue;
    }

    break;
  }

LABEL_14:

  sub_22C7EC3CC();
}

void *sub_22C420F10(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    result = a3(&v7, v6, a2);
    if (!v3)
    {
      return v7;
    }
  }

  return result;
}

unint64_t sub_22C420F8C()
{
  result = qword_27D9BC0D0;
  if (!qword_27D9BC0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC0D0);
  }

  return result;
}

uint64_t sub_22C420FE0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

void sub_22C421010(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_22C420BD4(a1, a2, *a3, a3[1], a4);
  if (!v5)
  {
    *a5 = v7;
  }
}

uint64_t sub_22C421064(uint64_t a1)
{
  result = sub_22C901FAC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22C4210D0(uint64_t a1)
{
  sub_22C42113C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_22C42113C(uint64_t a1)
{
  if (!qword_27D9BC130)
  {
    sub_22C901FAC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D9BC130);
    }
  }
}

uint64_t sub_22C4211E0()
{
  sub_22C369980();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v1[2] = v7;
  v8 = sub_22C3A5908(&qword_27D9BC0C8, &qword_22C911FB0);
  v1[9] = v8;
  sub_22C369914(v8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v9 = sub_22C9070DC();
  v1[12] = v9;
  sub_22C3699B8(v9);
  v1[13] = v10;
  v1[14] = sub_22C3699D4();
  v11 = sub_22C90880C();
  v1[15] = v11;
  sub_22C3699B8(v11);
  v1[16] = v12;
  v1[17] = sub_22C3699D4();
  v13 = sub_22C9087BC();
  v1[18] = v13;
  sub_22C3699B8(v13);
  v1[19] = v14;
  v1[20] = sub_22C3699D4();
  v15 = sub_22C908AEC();
  v1[21] = v15;
  sub_22C3699B8(v15);
  v1[22] = v16;
  v1[23] = sub_22C3699D4();
  v17 = type metadata accessor for PlanPostProcessor(0);
  v1[24] = v17;
  sub_22C369914(v17);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v18 = sub_22C902D3C();
  v1[27] = v18;
  sub_22C3699B8(v18);
  v1[28] = v19;
  v1[29] = sub_22C3699D4();

  return MEMORY[0x2822009F8](sub_22C421444, 0, 0);
}

void sub_22C421444()
{
  v1 = v0[8];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v1[3];
  v5 = v1[4];
  sub_22C374168(v1, v4);
  (*(v5 + 8))(v3, v2, v4, v5);
  v0[30] = sub_22C421F38(*(v0[4] + 24));
  v0[31] = v6;
  sub_22C59B7A0();
  sub_22C4223EC();
  v0[32] = v7;
  v8 = v0[8];
  v9 = v0[6];
  v10 = swift_task_alloc();
  v0[33] = v10;
  v11 = *(v0 + 2);
  *(v10 + 16) = v8;
  *(v10 + 24) = v11;
  *(v10 + 40) = v9;
  v12 = swift_task_alloc();
  v0[34] = v12;
  *v12 = v0;
  v12[1] = sub_22C421658;
  sub_22C36D5F8();

  __asm { BR              X3 }
}

uint64_t sub_22C421658()
{
  v2 = *v1;
  sub_22C369970();
  *v3 = v2;
  *(v2 + 280) = v4;
  *(v2 + 288) = v0;

  if (v0)
  {

    v5 = sub_22C421E64;
  }

  else
  {

    v5 = sub_22C4217C4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_22C4217C4()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[6];
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  v5 = sub_22C8F46A0(sub_22C423120, v4, v1);
  if (v2)
  {
    v6 = sub_22C388584();
    v7(v6);

    sub_22C369BC4();

    sub_22C369A24();

    v24();
  }

  else
  {
    v8 = v0[26];
    v10 = v0[23];
    v9 = v0[24];
    v11 = v0[22];
    v61 = v0[21];
    v12 = v0[19];
    v13 = v0[20];
    v65 = v0[25];
    v56 = v0[6];
    v57 = v0[18];
    v59 = v5;

    v14 = v10;
    sub_22C90718C();
    v15 = *(v12 + 16);
    v15(v13, v56, v57);
    *v8 = MEMORY[0x277D84F98];
    (*(v11 + 16))(&v8[v9[5]], v10, v61);
    *&v8[v9[8]] = v59;
    v16 = v13;
    v15(&v8[v9[6]], v13, v57);
    v17 = &v8[v9[7]];
    v18 = v16;
    sub_22C90878C();
    sub_22C901FAC();
    sub_22C908C5C();
    sub_22C42429C(&qword_2814357B0, MEMORY[0x277D1C338], MEMORY[0x277D1C348]);
    v19 = MEMORY[0x277D84F90];
    v20 = sub_22C909F0C();
    (*(v12 + 8))(v18, v57);
    (*(v11 + 8))(v14, v61);
    *&v17[*(type metadata accessor for TranscriptValueFetcher(0) + 20)] = v20;
    sub_22C42313C(v8, v65);
    v21 = PlanPostProcessor.process()();
    v22 = v0[17];
    v23 = *(v0[4] + 48);
    sub_22C90878C();
    v25 = sub_22C4006B0(v21, v23, v22);
    (*(v0[16] + 8))(v0[17], v0[15]);

    v26 = *(v25 + 16);
    if (v26)
    {
      v27 = v0[13];
      v60 = v0[9];
      sub_22C3B6D88();
      v28 = 0;
      v67 = v19;
      sub_22C36BA94();
      v62 = v27;
      v63 = *(v25 + 16);
      v53 = v29;
      v54 = v26;
      v58 = v25 + v29;
      v55 = v25;
      while (v63 != v28)
      {
        if (v28 >= *(v25 + 16))
        {
          goto LABEL_21;
        }

        v30 = *(v60 + 48);
        v31 = v0[11];
        v32 = v0[12];
        v33 = v0[10];
        v64 = v62[9];
        v66 = v0[14];
        v34 = v62[2];
        v34(v31 + v30, v58 + v64 * v28, v32);
        *v33 = v28;
        v35 = *(v60 + 48);
        v36 = v62[4];
        v36(v33 + v35, v31 + v30, v32);
        v34(v66, v33 + v35, v32);
        if (v28 == 0x100000000)
        {
          goto LABEL_22;
        }

        v37 = v0[10];
        sub_22C90705C();
        sub_22C3770B0(v37, &qword_27D9BC0C8, &qword_22C911FB0);
        v39 = *(v67 + 16);
        v38 = *(v67 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_22C369AB0(v38);
          sub_22C3B6D88();
        }

        v40 = v0[14];
        v41 = v0[12];
        *(v67 + 16) = v39 + 1;
        v36((v67 + v53 + v39 * v64), v40, v41);
        ++v28;
        v25 = v55;
        if (v54 == v28)
        {
          v42 = v0[28];
          v43 = v0[29];
          v45 = v0[26];
          v44 = v0[27];

          sub_22C4231A0(v45);
          (*(v42 + 8))(v43, v44);
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v47 = v0[28];
      v46 = v0[29];
      v49 = v0[26];
      v48 = v0[27];

      sub_22C4231A0(v49);
      (*(v47 + 8))(v46, v48);
      v67 = MEMORY[0x277D84F90];
LABEL_17:
      sub_22C369BC4();

      v50 = v0[1];
      v51 = v0[30];
      v52 = v0[31];

      v50(v67, v51, v52);
    }
  }
}

uint64_t sub_22C421E64()
{
  v0 = sub_22C388584();
  v1(v0);
  sub_22C369BC4();

  sub_22C369A24();

  return v2();
}

uint64_t sub_22C421F38(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BB640, &unk_22C912190);
  v3 = sub_22C369914(v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v63 - v4;
  v6 = sub_22C902D0C();
  sub_22C369824();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22C3698E4();
  v69 = v10;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v63 - v13;
  MEMORY[0x28223BE20](v12);
  v68 = &v63 - v15;
  result = sub_22C902D2C();
  v17 = result;
  v18 = 0;
  v19 = *(result + 16);
  v70 = (v8 + 16);
  v20 = (v8 + 8);
  v67 = v8;
  v65 = (v8 + 32);
  v66 = MEMORY[0x277D84F90];
  while (v19 != v18)
  {
    if (v18 >= *(v17 + 16))
    {
      __break(1u);
      return result;
    }

    if (*(v17 + 8 * v18 + 32) >> 62)
    {
      sub_22C36C640(v5, 1, 1, v6);
LABEL_12:
      result = sub_22C3770B0(v5, &qword_27D9BB640, &unk_22C912190);
      ++v18;
    }

    else
    {
      v21 = swift_projectBox();
      (*v70)(v14, v21, v6);

      sub_22C43B5B0(v14, a1, v22, v23, v24, v25, v26, v27, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
      (*v20)(v14, v6);
      sub_22C36C640(v5, 0, 1, v6);

      if (sub_22C370B74(v5, 1, v6) == 1)
      {
        goto LABEL_12;
      }

      v28 = *v65;
      (*v65)(v68, v5, v6);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C592484();
        v66 = v36;
      }

      v31 = *(v66 + 16);
      v30 = *(v66 + 24);
      v32 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        sub_22C369AB0(v30);
        v63 = v37;
        sub_22C592484();
        v32 = v63;
        v66 = v38;
      }

      ++v18;
      *(v66 + 16) = v32;
      sub_22C36BA94();
      result = (v64)(v34 + v33 + *(v35 + 72) * v31, v68, v6);
    }
  }

  v43 = v66;
  v44 = *(v66 + 16);
  if (v44)
  {
    v71 = MEMORY[0x277D84F90];
    sub_22C3B5E2C(0, v44, 0, v39, v40, v41, v42);
    v45 = v71;
    sub_22C36BA94();
    v47 = v43 + v46;
    v49 = *(v48 + 72);
    v67 = *(v48 + 16);
    v68 = v49;
    do
    {
      v50 = v69;
      v67(v69, v47, v6);
      sub_22C42429C(&qword_27D9BC188, MEMORY[0x277D1D800], MEMORY[0x277D1D818]);
      v51 = sub_22C90B47C();
      v53 = v52;
      (*v20)(v50, v6);
      v71 = v45;
      v55 = *(v45 + 16);
      v54 = *(v45 + 24);
      if (v55 >= v54 >> 1)
      {
        v57 = sub_22C369AB0(v54);
        sub_22C3B5E2C(v57, v55 + 1, 1, v58, v59, v60, v61);
        v45 = v71;
      }

      *(v45 + 16) = v55 + 1;
      v56 = v45 + 16 * v55;
      *(v56 + 32) = v51;
      *(v56 + 40) = v53;
      v47 += v68;
      --v44;
    }

    while (v44);
  }

  else
  {

    v45 = MEMORY[0x277D84F90];
  }

  v71 = v45;
  sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
  sub_22C3F035C();
  v62 = sub_22C90A04C();

  return v62;
}

void sub_22C4223EC()
{
  v1 = sub_22C902D0C();
  sub_22C369824();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C902D2C();
  v8 = *(v7 + 16);
  if (v8)
  {
    v19[1] = v0;
    v21 = MEMORY[0x277D84F90];
    sub_22C3B69C4(0, v8, 0);
    v9 = 0;
    v10 = v21;
    v19[2] = v3 + 32;
    v20 = (v3 + 16);
    while (v9 < *(v7 + 16))
    {
      if (*(v7 + 8 * v9 + 32) >> 62)
      {

        sub_22C424248();
        swift_allocError();
        swift_willThrow();

        return;
      }

      v11 = v7;
      v12 = v8;
      v13 = swift_projectBox();
      (*v20)(v6, v13, v1);
      v21 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        v18 = sub_22C369AB0(v14);
        sub_22C3B69C4(v18, v15 + 1, 1);
        v10 = v21;
      }

      ++v9;
      *(v10 + 16) = v15 + 1;
      sub_22C36BA94();
      (*(v3 + 32))(v10 + v16 + *(v3 + 72) * v15, v6, v1);
      v8 = v12;
      v17 = v12 == v9;
      v7 = v11;
      if (v17)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:
  }
}

uint64_t sub_22C422628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_22C902D0C();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C4226F0, 0, 0);
}

uint64_t sub_22C4226F0()
{
  sub_22C369980();
  v1 = *(v0 + 32);
  sub_22C422B3C(*(v0 + 80), *(v0 + 24));

  sub_22C374168((v1 + 40), *(v1 + 64));
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_22C4227B0;

  return sub_22C424C78();
}

uint64_t sub_22C4227B0()
{
  sub_22C369980();
  v2 = *v1;
  sub_22C369970();
  *v3 = v2;
  *(v4 + 96) = v0;

  if (v0)
  {
    v5 = sub_22C422924;
  }

  else
  {
    v5 = sub_22C4228B8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22C4228B8()
{
  sub_22C369980();
  v0 = sub_22C386FB4();
  v1(v0);

  sub_22C369A24();

  return v2();
}

uint64_t sub_22C422924()
{
  sub_22C369980();
  v0 = sub_22C386FB4();
  v1(v0);

  sub_22C369A24();

  return v2();
}

uint64_t sub_22C422990(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_22C422A58;

  return sub_22C422628(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_22C422A58()
{
  sub_22C369980();
  v1 = *v0;
  sub_22C369970();
  *v2 = v1;

  sub_22C369A24();

  return v3();
}

uint64_t sub_22C422B3C(char *a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BC160, &unk_22C912170);
  MEMORY[0x28223BE20](v4 - 8);
  v33 = &v28 - v5;
  v6 = sub_22C3A5908(&qword_27D9BC168, &unk_22C9123C0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v9 = sub_22C902D0C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v32 = &v28 - v14;
  v34 = v10[2];
  v34(v13, a2, v9);
  v15 = v10[11];
  if (v15(v13, v9) == *MEMORY[0x277D1D7D8])
  {
    v29 = a2;
    v30 = v10 + 2;
    v31 = a1;
    v16 = v10[12];
    v16(v13, v9);
    v17 = swift_projectBox();
    sub_22C4241D8(v17, v8);
    v18 = *(v6 + 48);
    v19 = *(v6 + 64);
    if (*v8 || v15(&v8[v18], v9) != *MEMORY[0x277D1D7C8])
    {
      v24 = v10[1];
      v24(&v8[v19], v9);
      v24(&v8[v18], v9);

      a1 = v31;
    }

    else
    {
      v16(&v8[v18], v9);
      v20 = *(*&v8[v18] + 16);

      v21 = v32;
      v28 = v10[4];
      v28(v32, &v8[v19], v9);

      if (qword_27D9BA608 != -1)
      {
        swift_once();
      }

      v22 = sub_22C3A5908(&qword_27D9BC170, &unk_22C912180);
      sub_22C37AA60(v22, qword_27D9BC140);
      v23 = v33;
      sub_22C90308C();
      v26 = sub_22C3A5908(&qword_27D9BC178, &unk_22C914830);
      v27 = sub_22C370B74(v23, 1, v26);
      if (v27 != 1)
      {
        sub_22C3770B0(v23, &qword_27D9BC160, &unk_22C912170);
        v28(v31, v21, v9);
        return v20;
      }

      (v10[1])(v21, v9);

      sub_22C3770B0(v23, &qword_27D9BC160, &unk_22C912170);
      a1 = v31;
    }

    a2 = v29;
  }

  else
  {
    (v10[1])(v13, v9);
  }

  v34(a1, a2, v9);
  return 0;
}

uint64_t sub_22C422FEC@<X0>(uint64_t *a2@<X8>)
{
  v4 = sub_22C9075EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C9087AC();
  MEMORY[0x2318B4A90]();
  sub_22C9075AC();
  v8 = sub_22C9075CC();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v10 = v8;
  result = (*(v5 + 8))(v7, v4);
  *a2 = v10;
  return result;
}

uint64_t sub_22C42313C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlanPostProcessor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C4231A0(uint64_t a1)
{
  v2 = type metadata accessor for PlanPostProcessor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C4231FC()
{
  v0 = sub_22C3A5908(&qword_27D9BC170, &unk_22C912180);
  sub_22C3F0160(v0, qword_27D9BC140);
  sub_22C37AA60(v0, qword_27D9BC140);
  return sub_22C90306C();
}

uint64_t sub_22C423278(uint64_t a1)
{
  v2 = sub_22C42442C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C4232B4(uint64_t a1)
{
  v2 = sub_22C42442C();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C423318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v182 = a1;
  v177 = a3;
  v181 = a4;
  v5 = sub_22C3A5908(&qword_27D9BB640, &unk_22C912190);
  v6 = sub_22C369914(v5);
  MEMORY[0x28223BE20](v6);
  v167 = &v152 - v7;
  v172 = sub_22C902C9C();
  sub_22C369824();
  v171 = v8;
  MEMORY[0x28223BE20](v9);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v10);
  v173 = &v152 - v11;
  sub_22C902D1C();
  sub_22C369824();
  v178 = v13;
  v179 = v12;
  MEMORY[0x28223BE20](v12);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v14);
  v174 = &v152 - v15;
  v16 = sub_22C902D0C();
  sub_22C369824();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v20);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v21);
  sub_22C3698D4();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = (&v152 - v24);
  MEMORY[0x28223BE20](v23);
  v27 = &v152 - v26;
  v28 = sub_22C3A5908(&qword_27D9BC190, &unk_22C9121A0);
  v29 = sub_22C369914(v28);
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v152 - v31;
  v33 = *(v30 + 56);
  v34 = *(v18 + 16);
  v34(&v152 - v31, v182, v16);
  v180 = v33;
  v182 = a2;
  v34(&v32[v33], a2, v16);
  v35 = *(v18 + 88);
  v36 = v35(v32, v16);
  v37 = *MEMORY[0x277D1D7E8];
  v187 = v32;
  if (v36 == v37)
  {
    v175 = v36;
    v34(v27, v32, v16);
    (*(v18 + 96))(v27, v16);
    v38 = *v27;
    if (*(*v27 + 32) == 3)
    {
      v176 = v16;
      v39 = v18;
      v41 = *(v38 + 16);
      v40 = *(v38 + 24);
      v42 = v177;
      v43 = *(v177 + 16);

      v44 = (v42 + 40);
      v45 = v43 + 1;
      while (--v45)
      {
        v46 = v44 + 2;
        v47 = *v44;
        v185 = *(v44 - 1);
        v186 = v47;
        v183 = v41;
        v184 = v40;
        sub_22C3858B4();
        v48 = sub_22C90AD8C();
        v44 = v46;
        if (v48)
        {
          v49 = swift_allocObject();
          *(v49 + 16) = v41;
          *(v49 + 24) = v40;
          *(v49 + 32) = 3;
          goto LABEL_19;
        }
      }

      sub_22C4242E4(v41, v40, 3);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_22C912120;
      *(v49 + 32) = 3;
LABEL_19:
      v74 = v181;
      *v181 = v49;
      v75 = v39;
      v76 = *(v39 + 104);
      v77 = v176;
      v76(v74, v175, v176);
      v78 = sub_22C3726A4();
      sub_22C36C640(v78, v79, v80, v77);

      v81 = *(v75 + 8);
      v82 = v187;
      v81(&v187[v180], v77);
      return (v81)(v82, v77);
    }

LABEL_26:
    v34(v181, v182, v16);
    v84 = sub_22C3726A4();
    sub_22C36C640(v84, v85, v86, v16);
    return sub_22C3770B0(v187, &qword_27D9BC190, &unk_22C9121A0);
  }

  if (v36 != *MEMORY[0x277D1D7C0])
  {
    goto LABEL_26;
  }

  v175 = v36;
  v177 = v18 + 16;
  v164 = v34;
  v34(v25, v187, v16);
  v50 = *(v18 + 96);
  v176 = v16;
  v162 = v50;
  (v50)(v25, v16);
  v51 = *v25;
  v52 = sub_22C3A5908(&qword_27D9BC198, &unk_22C916710);
  v53 = swift_projectBox();
  v163 = v52;
  v160 = *(v53 + *(v52 + 48));
  v54 = v178;
  v55 = v179;
  v161 = *(v178 + 88);
  v56 = v161();
  if (v56 != *MEMORY[0x277D1D820])
  {
    goto LABEL_20;
  }

  v158 = v56;
  v159 = v51;
  v157 = v18;
  v57 = *(v54 + 16);
  v58 = v174;
  v155 = v54 + 16;
  v154 = v57;
  v57(v174, v53, v55);
  v153 = *(v54 + 96);
  v153(v58, v55);
  v59 = v58[1];
  v156 = *v58;
  v60 = v180;
  v61 = v35(&v187[v180], v176);
  if (v61 != v175)
  {
LABEL_23:

    goto LABEL_24;
  }

  v62 = v187;
  v63 = &v187[v60];
  v64 = v169;
  v65 = v176;
  v164(v169, v63, v176);
  (v162)(v64, v65);
  v66 = *v64;
  v67 = swift_projectBox();
  v174 = *(v67 + *(v163 + 48));
  if (v161() != v158)
  {

    goto LABEL_23;
  }

  v152 = v66;
  v68 = v168;
  v154(v168, v67, v55);
  v153(v68, v55);
  v70 = *v68;
  v69 = v68[1];
  if (v156 == 0x686372616573 && v59 == 0xE600000000000000)
  {

    v73 = v173;
  }

  else
  {
    v72 = sub_22C90B4FC();

    v73 = v173;
    if ((v72 & 1) == 0)
    {

LABEL_24:

      goto LABEL_25;
    }
  }

  if (v70 == 0x686372616573 && v69 == 0xE600000000000000)
  {

    v89 = v172;
  }

  else
  {
    v88 = sub_22C90B4FC();

    v89 = v172;
    if ((v88 & 1) == 0)
    {

LABEL_20:

LABEL_25:
      v16 = v176;
      v34 = v164;
      goto LABEL_26;
    }
  }

  v90 = v174;
  v91 = v174 + 64;
  v92 = 1 << v174[32];
  if (v92 < 64)
  {
    v93 = ~(-1 << v92);
  }

  else
  {
    v93 = -1;
  }

  v94 = v93 & *(v174 + 8);
  v95 = (v92 + 63) >> 6;
  v169 = (v171 + 16);
  v96 = (v171 + 8);
  v155 = v157 + 32;
  result = swift_bridgeObjectRetain_n();
  v97 = 0;
  v161 = v90;
  v168 = v95;
  v162 = v91;
  if (v94)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v98 = v97 + 1;
    if (__OFADD__(v97, 1))
    {
      break;
    }

    if (v98 >= v95)
    {

      v140 = v163;
      v141 = swift_allocBox();
      v143 = v142;
      v144 = *(v140 + 48);
      *v142 = 0x686372616573;
      v142[1] = 0xE600000000000000;
      (*(v178 + 104))(v142, v158, v179);
      *(v143 + v144) = v161;
      v145 = v181;
      *v181 = v141;
      v146 = v157;
      v147 = v176;
      (*(v157 + 104))(v145, v175, v176);
      v148 = sub_22C3726A4();
      sub_22C36C640(v148, v149, v150, v147);

      v151 = *(v146 + 8);
      v151(v62 + v180, v147);
      return (v151)(v62, v147);
    }

    v94 = *&v91[8 * v98];
    ++v97;
    if (v94)
    {
      v97 = v98;
      do
      {
LABEL_43:
        v99 = *(v174 + 6);
        v156 = *(v171 + 72);
        v100 = *(v171 + 16);
        v100(v73, v99 + v156 * (__clz(__rbit64(v94)) | (v97 << 6)), v89);
        if (qword_27D9BA610 != -1)
        {
          swift_once();
        }

        v182 = (v94 - 1) & v94;
        v101 = off_27D9BC158;
        v102 = sub_22C902C7C();
        v104 = v103;
        if (*(v101 + 2))
        {
          v105 = v102;
          sub_22C90B62C();
          sub_22C909FFC();
          v106 = sub_22C90B66C();
          v107 = ~(-1 << v101[32]);
          while (1)
          {
            v108 = v106 & v107;
            if (((*&v101[(((v106 & v107) >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> (v106 & v107)) & 1) == 0)
            {
              break;
            }

            v109 = (*(v101 + 6) + 16 * v108);
            if (*v109 != v105 || v109[1] != v104)
            {
              v111 = sub_22C90B4FC();
              v106 = v108 + 1;
              if ((v111 & 1) == 0)
              {
                continue;
              }
            }

            v73 = v173;
            v89 = v172;
            v100(v170, v173, v172);
            v112 = v160;
            if (*(v160 + 16))
            {
              sub_22C6287BC();
              if (v114)
              {
                v115 = v157;
                v116 = *(v112 + 56) + *(v157 + 72) * v113;
                v117 = v165;
                v118 = v176;
                v164(v165, v116, v176);
                v119 = *(v115 + 32);
                v120 = v166;
                v119(v166, v117, v118);
                v121 = v161;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v185 = v121;
                v123 = v120;
                v124 = v170;
                sub_22C62CBD4(v123, v170, isUniquelyReferenced_nonNull_native, v125, v126, v127, v128, v129, v152, v153, v154, v155);
                v130 = *v96;
                (*v96)(v124, v89);
                result = (v130)(v73, v89);
                v161 = v185;
                goto LABEL_57;
              }
            }

            v131 = v161;
            sub_22C6287BC();
            v62 = v187;
            if (v133)
            {
              v134 = v132;
              swift_isUniquelyReferenced_nonNull_native();
              v185 = v131;
              sub_22C3A5908(&qword_27D9BC1A0, &unk_22C9121B0);
              sub_22C90B15C();
              v135 = v185;
              (*v96)(*(v185 + 6) + v134 * v156, v89);
              v136 = v167;
              v137 = v176;
              (*(v157 + 32))(v167, *(v135 + 7) + *(v157 + 72) * v134, v176);
              sub_22C42429C(&qword_27D9BC1A8, MEMORY[0x277D1D780], MEMORY[0x277D1D788]);
              v161 = v135;
              v62 = v187;
              sub_22C90B17C();
              v138 = 0;
            }

            else
            {
              v138 = 1;
              v137 = v176;
              v136 = v167;
            }

            sub_22C36C640(v136, v138, 1, v137);
            sub_22C3770B0(v136, &qword_27D9BB640, &unk_22C912190);
            v139 = *v96;
            (*v96)(v170, v89);
            result = (v139)(v73, v89);
            goto LABEL_62;
          }
        }

        v73 = v173;
        v89 = v172;
        (*v96)(v173, v172);

LABEL_57:
        v62 = v187;
LABEL_62:
        v91 = v162;
        v95 = v168;
        v94 = v182;
      }

      while (v182);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C4241D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BC168, &unk_22C9123C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22C424248()
{
  result = qword_27D9BC180;
  if (!qword_27D9BC180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC180);
  }

  return result;
}

uint64_t sub_22C42429C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C4242E4(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 3:
    case 4:
    case 5:
    case 6:

      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PostInferenceHandlingError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22C4243D8()
{
  result = qword_27D9BC1B0;
  if (!qword_27D9BC1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC1B0);
  }

  return result;
}

unint64_t sub_22C42442C()
{
  result = qword_27D9BC1B8;
  if (!qword_27D9BC1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC1B8);
  }

  return result;
}

uint64_t sub_22C424488(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C4244C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}