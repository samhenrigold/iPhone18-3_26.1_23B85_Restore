uint64_t sub_1C6CD576C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6CD57CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6CD5834(uint64_t a1, void (*a2)(void, uint64_t *, uint64_t *, uint64_t *, uint64_t, uint64_t), uint64_t a3, unsigned int *a4, uint64_t a5, unsigned int *a6, uint64_t (*a7)(void))
{
  v187 = a7;
  v218 = a6;
  v203 = a5;
  v192 = a3;
  v193 = a2;
  v189 = a1;
  v188 = sub_1C6D78A00();
  v190 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188, v8);
  v182 = &v180 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6CDB320(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v181 = &v180 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v186 = &v180 - v15;
  v16 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v204 = &v180 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata(0);
  MEMORY[0x1EEE9AC00](v197, v19);
  v198 = &v180 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v216 = &v180 - v23;
  sub_1C6CDB320(0, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v202 = &v180 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v209 = &v180 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v213 = &v180 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v180 - v35;
  v37 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  v225 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v38);
  v196 = &v180 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v41);
  v199 = &v180 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v200 = &v180 - v45;
  MEMORY[0x1EEE9AC00](v46, v47);
  v206 = &v180 - v48;
  MEMORY[0x1EEE9AC00](v49, v50);
  v215 = &v180 - v51;
  MEMORY[0x1EEE9AC00](v52, v53);
  v211 = (&v180 - v54);
  sub_1C6CDB320(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  MEMORY[0x1EEE9AC00](v55 - 8, v56);
  v201 = &v180 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58, v59);
  v207 = &v180 - v60;
  MEMORY[0x1EEE9AC00](v61, v62);
  v64 = &v180 - v63;
  MEMORY[0x1EEE9AC00](v65, v66);
  v68 = &v180 - v67;
  v69 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v70 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69, v71);
  v205 = &v180 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v73, v74);
  v208 = &v180 - v75;
  MEMORY[0x1EEE9AC00](v76, v77);
  v212 = &v180 - v78;
  MEMORY[0x1EEE9AC00](v79, v80);
  v82 = &v180 - v81;
  v185 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v184 = *(v185 - 8);
  v84 = MEMORY[0x1EEE9AC00](v185, v83);
  v195 = &v180 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = *a4;
  v183 = (v218)(0, v84);
  v217 = *(v183 + 24);
  v218 = a4;
  sub_1C6CD3B04(a4 + v217, v68, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, v86);
  v87 = *(v70 + 48);
  v88 = v87(v68, 1, v69);
  v214 = v69;
  if (v88 == 1)
  {
    v89 = v225;
    (*(v225 + 56))(v82, 1, 1, v37);
    sub_1C6D78A30();
    if (v87(v68, 1, v69) != 1)
    {
      sub_1C6CD3B70(v68, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, v90);
    }
  }

  else
  {
    sub_1C6CDB374(v68, v82, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    v89 = v225;
  }

  sub_1C6CD3B04(v82, v36, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, v90);
  v91 = *(v89 + 48);
  if (v91(v36, 1, v37) == 1)
  {
    sub_1C6CD3B70(v36, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, v92);
    sub_1C6B688CC();
    swift_allocError();
    *v93 = 1;
    *(v93 + 8) = 7;
    swift_willThrow();
    v94 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata;
    v95 = v82;
    return sub_1C6CD576C(v95, v94);
  }

  v210 = v91;
  sub_1C6CD576C(v82, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v96 = v36;
  v97 = v211;
  sub_1C6CDB374(v96, v211, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v98 = v215;
  sub_1C6CDB374(v97, v215, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v99 = v87;
  v100 = v216;
  sub_1C6CDB374(v98, v216, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v101 = *v100;
  LOBYTE(v97) = *(v100 + 8);
  sub_1C6CD576C(v100, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v223 = v101;
  v224 = v97;
  sub_1C6CD3B04(v218 + v217, v64, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, v102);
  v103 = v214;
  v104 = v99(v64, 1, v214);
  v211 = v99;
  if (v104 == 1)
  {
    v105 = v212;
    (*(v225 + 56))(v212, 1, 1, v37);
    sub_1C6D78A30();
    v106 = v99(v64, 1, v103);
    v108 = v105;
    v109 = v213;
    if (v106 != 1)
    {
      sub_1C6CD3B70(v64, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, v107);
    }
  }

  else
  {
    v108 = v212;
    sub_1C6CDB374(v64, v212, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    v109 = v213;
  }

  sub_1C6CD3B04(v108, v109, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, v107);
  if (v210(v109, 1, v37) == 1)
  {
    sub_1C6CD3B70(v109, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, v110);
    sub_1C6B688CC();
    swift_allocError();
    *v111 = 1;
    *(v111 + 8) = 7;
    swift_willThrow();
    v94 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata;
    v95 = v108;
    return sub_1C6CD576C(v95, v94);
  }

  sub_1C6CD576C(v108, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v112 = v103;
  v113 = v109;
  v114 = v206;
  sub_1C6CDB374(v113, v206, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6CDB374(v114, v98, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6CDB374(v98, v100, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v115 = *(v100 + 16);
  LOBYTE(v114) = *(v100 + 24);
  sub_1C6CD576C(v100, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v221 = v115;
  v222 = v114;
  v116 = v207;
  sub_1C6CD3B04(v218 + v217, v207, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, v117);
  v118 = v211;
  if (v211(v116, 1, v112) == 1)
  {
    v119 = v208;
    (*(v225 + 56))(v208, 1, 1, v37);
    sub_1C6D78A30();
    v120 = v118(v116, 1, v112);
    v122 = v209;
    if (v120 != 1)
    {
      sub_1C6CD3B70(v116, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, v121);
    }
  }

  else
  {
    v119 = v208;
    sub_1C6CDB374(v116, v208, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    v122 = v209;
  }

  sub_1C6CD3B04(v119, v122, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, v121);
  v123 = v210;
  if (v210(v122, 1, v37) == 1)
  {
    sub_1C6CD3B70(v122, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, v124);
    sub_1C6B688CC();
    swift_allocError();
    *v125 = 1;
    *(v125 + 8) = 7;
    swift_willThrow();
    v94 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata;
    v95 = v119;
    return sub_1C6CD576C(v95, v94);
  }

  sub_1C6CD576C(v119, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v126 = v122;
  v127 = v200;
  sub_1C6CDB374(v126, v200, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6CDB374(v127, v98, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6CDB374(v98, v100, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v128 = *(v100 + 32);
  LOBYTE(v127) = *(v100 + 40);
  sub_1C6CD576C(v100, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v219 = v128;
  v220 = v127;
  v129 = v201;
  sub_1C6CD3B04(v218 + v217, v201, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, v130);
  v131 = v211;
  if (v211(v129, 1, v112) == 1)
  {
    v132 = v205;
    v133 = v131;
    v134 = v37;
    (*(v225 + 56))(v205, 1, 1, v37);
    sub_1C6D78A30();
    v135 = v133(v129, 1, v112);
    v123 = v210;
    v137 = v135 == 1;
    v138 = v129;
    v139 = v202;
    if (!v137)
    {
      sub_1C6CD3B70(v138, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, v136);
    }
  }

  else
  {
    v134 = v37;
    v132 = v205;
    sub_1C6CDB374(v129, v205, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    v139 = v202;
  }

  v140 = v204;
  sub_1C6CD57CC(v203, v204, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession);
  sub_1C6CD3B04(v132, v139, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, v141);
  if (v123(v139, 1, v134) == 1)
  {
    sub_1C6CD3B70(v139, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, v142);
    sub_1C6B688CC();
    swift_allocError();
    *v143 = 1;
    *(v143 + 8) = 7;
    swift_willThrow();
LABEL_25:
    sub_1C6CD576C(v132, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    v94 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession;
    v95 = v140;
    return sub_1C6CD576C(v95, v94);
  }

  v145 = v139;
  v146 = v199;
  sub_1C6CDB374(v145, v199, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v147 = v146;
  v148 = v196;
  sub_1C6CD57CC(v147, v196, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v149 = v198;
  result = sub_1C6CDB374(v148, v198, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v150 = (v149 + *(v197 + 32));
  if (v150[1])
  {
    v151 = 0;
    v152 = 0;
    v153 = v195;
  }

  else
  {
    v154 = *v150;
    v155 = *(v140 + 32);
    v153 = v195;
    if (*(v155 + 16) <= v154)
    {
      v173 = v149;
      v174 = v154;
      sub_1C6B688CC();
      swift_allocError();
      *v175 = v174;
      *(v175 + 8) = 0;
      swift_willThrow();
      v176 = v173;
      v132 = v205;
      sub_1C6CD576C(v176, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
      sub_1C6CD576C(v199, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
      goto LABEL_25;
    }

    if ((v154 & 0x80000000) != 0)
    {
      __break(1u);
      return result;
    }

    v156 = v155 + 16 * v154;
    v151 = *(v156 + 32);
    v152 = *(v156 + 40);
  }

  sub_1C6CD576C(v149, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  sub_1C6CD576C(v199, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6CD576C(v205, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6CD576C(v140, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession);
  v157 = v194;
  v193(v191, &v223, &v221, &v219, v151, v152);
  if (v157)
  {
  }

  v225 = v187(0);
  v158 = *(v225 + 20);
  v159 = v189;
  sub_1C6CD3B70(v189 + v158, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, v160);
  sub_1C6CDB374(v153, v159 + v158, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v161 = (*(v184 + 56))(v159 + v158, 0, 1, v185);
  v162 = *(v183 + 28);
  v163 = MEMORY[0x1E69AAB70];
  v164 = v186;
  sub_1C6CD3B04(v218 + v162, v186, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], v161);
  v165 = *(v190 + 48);
  v166 = v188;
  v167 = v165(v164, 1, v188);
  result = sub_1C6CD3B70(v164, &qword_1EDCDFD00, v163, v168);
  if (v167 != 1)
  {
    v170 = v181;
    sub_1C6CD3B04(v218 + v162, v181, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], v169);
    if (v165(v170, 1, v166) == 1)
    {
      v171 = v182;
      sub_1C6D789F0();
      if (v165(v170, 1, v166) != 1)
      {
        sub_1C6CD3B70(v170, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], v172);
      }
    }

    else
    {
      v171 = v182;
      v172 = (*(v190 + 32))(v182, v170, v166);
    }

    v177 = *(v225 + 24);
    v178 = v189;
    sub_1C6CD3B70(v189 + v177, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], v172);
    v179 = v190;
    (*(v190 + 32))(v178 + v177, v171, v166);
    return (*(v179 + 56))(v178 + v177, 0, 1, v166);
  }

  return result;
}

uint64_t sub_1C6CD6CFC(char *a1, void (*a2)(void, uint64_t *, uint64_t *, uint64_t *, uint64_t, uint64_t), uint64_t a3, unsigned int *a4, uint64_t a5)
{
  v201 = a5;
  v191 = a3;
  v192 = a2;
  v187 = a1;
  v186 = sub_1C6D78A00();
  v188 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186, v6);
  v181 = &v180 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6CDB320(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v180 = &v180 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v185 = &v180 - v13;
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v202 = &v180 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata(0);
  MEMORY[0x1EEE9AC00](v196, v17);
  v197 = &v180 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v217 = &v180 - v21;
  sub_1C6CDB320(0, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v200 = &v180 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v206 = &v180 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v211 = &v180 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v180 - v33;
  v35 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  v218 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v36);
  v194 = &v180 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v195 = &v180 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v198 = &v180 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v203 = &v180 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v216 = &v180 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v209 = &v180 - v52;
  sub_1C6CDB320(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  MEMORY[0x1EEE9AC00](v53 - 8, v54);
  v199 = &v180 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56, v57);
  v204 = &v180 - v58;
  MEMORY[0x1EEE9AC00](v59, v60);
  v62 = &v180 - v61;
  MEMORY[0x1EEE9AC00](v63, v64);
  v66 = &v180 - v65;
  v67 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v68 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67, v69);
  v207 = &v180 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71, v72);
  v205 = &v180 - v73;
  MEMORY[0x1EEE9AC00](v74, v75);
  v210 = &v180 - v76;
  MEMORY[0x1EEE9AC00](v77, v78);
  v80 = &v180 - v79;
  v184 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v183 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184, v81);
  v190 = &v180 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = *a4;
  v182 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead(0);
  v83 = *(v182 + 28);
  v213 = a4;
  v214 = v83;
  sub_1C6CD3B04(a4 + v83, v66, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, v84);
  v85 = *(v68 + 48);
  v86 = v85(v66, 1, v67);
  v215 = v85;
  v212 = v67;
  v225 = v35;
  if (v86 == 1)
  {
    v87 = v62;
    v88 = v218;
    (*(v218 + 56))(v80, 1, 1, v35);
    sub_1C6D78A30();
    v89 = v85(v66, 1, v67);
    v91 = v88;
    v62 = v87;
    if (v89 != 1)
    {
      sub_1C6CD3B70(v66, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, v90);
    }
  }

  else
  {
    sub_1C6CDB374(v66, v80, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    v91 = v218;
  }

  sub_1C6CD3B04(v80, v34, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, v90);
  v92 = *(v91 + 48);
  if (v92(v34, 1, v225) == 1)
  {
    sub_1C6CD3B70(v34, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, v93);
    sub_1C6B688CC();
    swift_allocError();
    *v94 = 1;
    *(v94 + 8) = 7;
    swift_willThrow();
    v95 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata;
    v96 = v80;
    return sub_1C6CD576C(v96, v95);
  }

  v208 = v92;
  sub_1C6CD576C(v80, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v97 = v209;
  sub_1C6CDB374(v34, v209, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v98 = v97;
  v99 = v216;
  sub_1C6CDB374(v98, v216, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v100 = v217;
  sub_1C6CDB374(v99, v217, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v101 = *v100;
  v102 = *(v100 + 8);
  sub_1C6CD576C(v100, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v223 = v101;
  v224 = v102;
  v103 = v213;
  sub_1C6CD3B04(v213 + v214, v62, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, v104);
  v105 = v212;
  v106 = v215;
  if (v215(v62, 1, v212) == 1)
  {
    v107 = v210;
    v108 = v225;
    (*(v218 + 56))(v210, 1, 1, v225);
    sub_1C6D78A30();
    v109 = v106(v62, 1, v105);
    v111 = v211;
    if (v109 != 1)
    {
      sub_1C6CD3B70(v62, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, v110);
    }
  }

  else
  {
    v107 = v210;
    sub_1C6CDB374(v62, v210, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    v108 = v225;
    v111 = v211;
  }

  sub_1C6CD3B04(v107, v111, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, v110);
  if (v208(v111, 1, v108) == 1)
  {
    goto LABEL_17;
  }

  sub_1C6CD576C(v107, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v113 = v111;
  v114 = v203;
  sub_1C6CDB374(v113, v203, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v115 = v114;
  v116 = v216;
  sub_1C6CDB374(v115, v216, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v117 = v217;
  sub_1C6CDB374(v116, v217, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v118 = *(v117 + 16);
  LOBYTE(v116) = *(v117 + 24);
  sub_1C6CD576C(v117, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v221 = v118;
  v222 = v116;
  v119 = v215;
  v120 = v103 + v214;
  v121 = v204;
  sub_1C6CD3B04(v120, v204, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, v122);
  if (v119(v121, 1, v105) == 1)
  {
    v107 = v205;
    (*(v218 + 56))(v205, 1, 1, v108);
    sub_1C6D78A30();
    v123 = v105;
    v124 = v119(v121, 1, v105);
    v111 = v206;
    v126 = v207;
    if (v124 != 1)
    {
      sub_1C6CD3B70(v121, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, v125);
    }
  }

  else
  {
    v123 = v105;
    v107 = v205;
    sub_1C6CDB374(v121, v205, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    v111 = v206;
    v126 = v207;
  }

  sub_1C6CD3B04(v107, v111, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, v125);
  if (v208(v111, 1, v108) == 1)
  {
LABEL_17:
    sub_1C6CD3B70(v111, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, v112);
    sub_1C6B688CC();
    swift_allocError();
    *v127 = 1;
    *(v127 + 8) = 7;
    swift_willThrow();
    v95 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata;
    v96 = v107;
    return sub_1C6CD576C(v96, v95);
  }

  sub_1C6CD576C(v107, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v129 = v111;
  v130 = v198;
  sub_1C6CDB374(v129, v198, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v131 = v130;
  v132 = v216;
  sub_1C6CDB374(v131, v216, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v133 = v217;
  sub_1C6CDB374(v132, v217, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v134 = *(v133 + 32);
  LOBYTE(v132) = *(v133 + 40);
  sub_1C6CD576C(v133, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v219 = v134;
  v220 = v132;
  v135 = v213;
  v136 = v199;
  sub_1C6CD3B04(v213 + v214, v199, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, v137);
  v138 = v215;
  if (v215(v136, 1, v123) == 1)
  {
    (*(v218 + 56))(v126, 1, 1, v108);
    sub_1C6D78A30();
    v139 = v138(v136, 1, v123);
    v141 = v202;
    v142 = v200;
    if (v139 != 1)
    {
      sub_1C6CD3B70(v136, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, v140);
    }
  }

  else
  {
    sub_1C6CDB374(v136, v126, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    v141 = v202;
    v142 = v200;
  }

  sub_1C6CD57CC(v201, v141, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession);
  sub_1C6CD3B04(v126, v142, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, v143);
  if (v208(v142, 1, v108) == 1)
  {
    sub_1C6CD3B70(v142, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, v144);
    sub_1C6B688CC();
    swift_allocError();
    *v145 = 1;
    *(v145 + 8) = 7;
    swift_willThrow();
LABEL_25:
    sub_1C6CD576C(v126, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    v95 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession;
    v96 = v141;
    return sub_1C6CD576C(v96, v95);
  }

  v146 = v195;
  sub_1C6CDB374(v142, v195, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v147 = v194;
  sub_1C6CD57CC(v146, v194, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v148 = v197;
  result = sub_1C6CDB374(v147, v197, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v149 = (v148 + *(v196 + 32));
  if (v149[1])
  {
    v150 = 0;
    v151 = 0;
  }

  else
  {
    v152 = *v149;
    v153 = *(v141 + 32);
    if (*(v153 + 16) <= v152)
    {
      v175 = v152;
      sub_1C6B688CC();
      swift_allocError();
      *v176 = v175;
      v141 = v202;
      *(v176 + 8) = 0;
      swift_willThrow();
      sub_1C6CD576C(v148, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
      sub_1C6CD576C(v146, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
      goto LABEL_25;
    }

    if ((v152 & 0x80000000) != 0)
    {
      __break(1u);
      return result;
    }

    v154 = v153 + 16 * v152;
    v150 = *(v154 + 32);
    v151 = *(v154 + 40);
  }

  sub_1C6CD576C(v148, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  sub_1C6CD576C(v146, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6CD576C(v126, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6CD576C(v141, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession);
  v155 = v190;
  v156 = v193;
  v192(v189, &v223, &v221, &v219, v150, v151);
  if (v156)
  {
  }

  v225 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0);
  v157 = *(v225 + 24);
  v158 = v187;
  sub_1C6CD3B70(&v187[v157], &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, v159);
  sub_1C6CDB374(v155, &v158[v157], type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v160 = (*(v183 + 56))(&v158[v157], 0, 1, v184);
  v161 = *(v182 + 32);
  v162 = MEMORY[0x1E69AAB70];
  v163 = v185;
  sub_1C6CD3B04(v135 + v161, v185, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], v160);
  v164 = v135;
  v165 = v186;
  v218 = *(v188 + 48);
  v166 = (v218)(v163, 1, v186);
  sub_1C6CD3B70(v163, &qword_1EDCDFD00, v162, v167);
  if (v166 != 1)
  {
    v169 = v164 + v161;
    v170 = v180;
    sub_1C6CD3B04(v169, v180, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], v168);
    v171 = v218;
    v172 = v165;
    if ((v218)(v170, 1, v165) == 1)
    {
      v173 = v181;
      sub_1C6D789F0();
      if (v171(v170, 1, v165) != 1)
      {
        sub_1C6CD3B70(v170, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], v174);
      }
    }

    else
    {
      v173 = v181;
      v174 = (*(v188 + 32))(v181, v170, v165);
    }

    v177 = *(v225 + 28);
    sub_1C6CD3B70(&v158[v177], &qword_1EDCDFD00, MEMORY[0x1E69AAB70], v174);
    v178 = v188;
    (*(v188 + 32))(&v158[v177], v173, v172);
    (*(v178 + 56))(&v158[v177], 0, 1, v172);
    v164 = v213;
  }

  v179 = *(v164 + 1);

  *v158 = v179;
  return result;
}

uint64_t sub_1C6CD8154(uint64_t a1, void (*a2)(void, uint64_t *, uint64_t *, uint64_t *, uint64_t, uint64_t), uint64_t a3, unsigned int *a4, uint64_t a5)
{
  v166 = a5;
  v156 = a3;
  v157 = a2;
  v153 = a1;
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v167 = &v150 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata(0);
  MEMORY[0x1EEE9AC00](v161, v9);
  v162 = &v150 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v178 = &v150 - v13;
  sub_1C6CDB320(0, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v165 = &v150 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v172 = &v150 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v176 = &v150 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v150 - v25;
  v27 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  v191 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v28);
  v159 = &v150 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v160 = &v150 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v163 = &v150 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v169 = &v150 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v177 = &v150 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v173 = &v150 - v44;
  sub_1C6CDB320(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  MEMORY[0x1EEE9AC00](v45 - 8, v46);
  v164 = &v150 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48, v49);
  v170 = &v150 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v150 - v53;
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = &v150 - v57;
  v59 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v60 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v61);
  v168 = &v150 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63, v64);
  v171 = &v150 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v175 = &v150 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v72 = &v150 - v71;
  v152 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v151 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152, v73);
  v155 = &v150 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = *a4;
  v75 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared(0) + 28);
  v180 = a4;
  v181 = v75;
  sub_1C6CD3B04(a4 + v75, v58, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, v76);
  v77 = *(v60 + 48);
  v78 = v77(v58, 1, v59);
  v183 = v77;
  v184 = v59;
  v179 = v60 + 48;
  if (v78 == 1)
  {
    v79 = v191;
    (*(v191 + 56))(v72, 1, 1, v27);
    sub_1C6D78A30();
    v80 = v77(v58, 1, v59);
    v82 = v79;
    if (v80 != 1)
    {
      sub_1C6CD3B70(v58, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, v81);
    }
  }

  else
  {
    sub_1C6CDB374(v58, v72, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    v82 = v191;
  }

  sub_1C6CD3B04(v72, v26, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, v81);
  v182 = *(v82 + 48);
  if (v182(v26, 1, v27) == 1)
  {
    sub_1C6CD3B70(v26, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, v83);
    sub_1C6B688CC();
    swift_allocError();
LABEL_7:
    *v84 = 1;
    *(v84 + 8) = 7;
    swift_willThrow();
    v85 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata;
    v86 = v72;
    return sub_1C6CD576C(v86, v85);
  }

  v174 = v27;
  sub_1C6CD576C(v72, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v87 = v173;
  sub_1C6CDB374(v26, v173, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v88 = v177;
  sub_1C6CDB374(v87, v177, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v89 = v178;
  sub_1C6CDB374(v88, v178, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v90 = *v89;
  LOBYTE(v87) = *(v89 + 8);
  sub_1C6CD576C(v89, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v189 = v90;
  v190 = v87;
  v91 = v180;
  sub_1C6CD3B04(v180 + v181, v54, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, v92);
  v94 = v183;
  v93 = v184;
  if (v183(v54, 1, v184) == 1)
  {
    v95 = v175;
    (*(v191 + 56))(v175, 1, 1, v174);
    sub_1C6D78A30();
    if (v94(v54, 1, v93) != 1)
    {
      sub_1C6CD3B70(v54, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, v96);
    }
  }

  else
  {
    v95 = v175;
    sub_1C6CDB374(v54, v175, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  }

  v97 = v176;
  sub_1C6CD3B04(v95, v176, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, v96);
  if (v182(v97, 1, v174) == 1)
  {
    sub_1C6CD3B70(v97, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, v98);
    sub_1C6B688CC();
    swift_allocError();
    *v99 = 1;
    *(v99 + 8) = 7;
    swift_willThrow();
    v85 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata;
    v86 = v95;
    return sub_1C6CD576C(v86, v85);
  }

  sub_1C6CD576C(v95, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v100 = v97;
  v101 = v169;
  sub_1C6CDB374(v100, v169, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6CDB374(v101, v88, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6CDB374(v88, v89, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v102 = *(v89 + 16);
  LOBYTE(v101) = *(v89 + 24);
  sub_1C6CD576C(v89, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v187 = v102;
  v103 = v184;
  v188 = v101;
  v104 = v170;
  sub_1C6CD3B04(v91 + v181, v170, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, v105);
  v106 = v183;
  if (v183(v104, 1, v103) == 1)
  {
    v107 = v171;
    v108 = v174;
    (*(v191 + 56))(v171, 1, 1, v174);
    sub_1C6D78A30();
    v109 = v103;
    v110 = v107;
    v111 = v106(v104, 1, v109);
    v113 = v172;
    if (v111 != 1)
    {
      sub_1C6CD3B70(v104, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, v112);
    }
  }

  else
  {
    v110 = v171;
    sub_1C6CDB374(v104, v171, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    v113 = v172;
    v108 = v174;
  }

  sub_1C6CD3B04(v110, v113, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, v112);
  v114 = v182(v113, 1, v108);
  v116 = v180;
  if (v114 == 1)
  {
    sub_1C6CD3B70(v113, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, v115);
    sub_1C6B688CC();
    swift_allocError();
    v72 = v110;
    goto LABEL_7;
  }

  sub_1C6CD576C(v110, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v117 = v113;
  v118 = v163;
  sub_1C6CDB374(v117, v163, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6CDB374(v118, v88, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6CDB374(v88, v89, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v119 = *(v89 + 32);
  LOBYTE(v118) = *(v89 + 40);
  sub_1C6CD576C(v89, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v185 = v119;
  v120 = v184;
  v186 = v118;
  v121 = v164;
  sub_1C6CD3B04(v116 + v181, v164, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, v122);
  v123 = v183;
  if (v183(v121, 1, v120) == 1)
  {
    v124 = v168;
    (*(v191 + 56))(v168, 1, 1, v108);
    sub_1C6D78A30();
    v125 = v123(v121, 1, v120);
    v127 = v165;
    if (v125 != 1)
    {
      sub_1C6CD3B70(v121, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, v126);
    }
  }

  else
  {
    v124 = v168;
    sub_1C6CDB374(v121, v168, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    v127 = v165;
  }

  v128 = v167;
  sub_1C6CD57CC(v166, v167, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession);
  sub_1C6CD3B04(v124, v127, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, v129);
  if (v182(v127, 1, v108) == 1)
  {
    sub_1C6CD3B70(v127, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, v130);
    sub_1C6B688CC();
    swift_allocError();
    *v131 = 1;
    *(v131 + 8) = 7;
    swift_willThrow();
LABEL_26:
    sub_1C6CD576C(v124, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    v85 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession;
    v86 = v128;
    return sub_1C6CD576C(v86, v85);
  }

  v133 = v160;
  sub_1C6CDB374(v127, v160, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v134 = v159;
  sub_1C6CD57CC(v133, v159, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v135 = v162;
  result = sub_1C6CDB374(v134, v162, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v136 = (v135 + *(v161 + 32));
  if (v136[1])
  {
    v137 = 0;
    v138 = 0;
  }

  else
  {
    v139 = *v136;
    v140 = *(v128 + 32);
    if (*(v140 + 16) <= v139)
    {
      v148 = v139;
      sub_1C6B688CC();
      swift_allocError();
      *v149 = v148;
      v124 = v168;
      *(v149 + 8) = 0;
      swift_willThrow();
      sub_1C6CD576C(v135, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
      sub_1C6CD576C(v133, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
      goto LABEL_26;
    }

    if ((v139 & 0x80000000) != 0)
    {
      __break(1u);
      return result;
    }

    v141 = v140 + 16 * v139;
    v137 = *(v141 + 32);
    v138 = *(v141 + 40);
  }

  sub_1C6CD576C(v135, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  sub_1C6CD576C(v133, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6CD576C(v124, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6CD576C(v128, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession);
  v142 = v155;
  v143 = v158;
  v157(v154, &v189, &v187, &v185, v137, v138);
  if (v143)
  {
  }

  v144 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared(0) + 24);
  v145 = v153;
  sub_1C6CD3B70(v153 + v144, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, v146);
  sub_1C6CDB374(v142, v145 + v144, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  result = (*(v151 + 56))(v145 + v144, 0, 1, v152);
  v147 = *(v116 + 16);
  *v145 = *(v116 + 1);
  *(v145 + 8) = v147;
  return result;
}

void sub_1C6CD92CC(char *a1, uint64_t a2, int *a3, double a4)
{
  sub_1C6CDB320(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v29 - v9;
  v11 = sub_1C6D78A00();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a3;
  v17 = *(a2 + 32);
  if (*(v17 + 16) <= v16)
  {
    v25 = v16;
    sub_1C6B688CC();
    swift_allocError();
    *v26 = v25;
    *(v26 + 8) = 0;
    swift_willThrow();
  }

  else if ((v16 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v18 = v17 + 16 * v16;
    v20 = *(v18 + 32);
    v19 = *(v18 + 40);

    *a1 = v20;
    *(a1 + 1) = v19;
    v21 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen(0);
    sub_1C6CD3B04(a3 + *(v21 + 24), v10, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], v22);
    v23 = *(v12 + 48);
    if (v23(v10, 1, v11) == 1)
    {
      sub_1C6D789F0();
      if (v23(v10, 1, v11) != 1)
      {
        sub_1C6CD3B70(v10, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], v24);
      }
    }

    else
    {
      (*(v12 + 32))(v15, v10, v11);
    }

    v27 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen(0) + 24);
    sub_1C6CD3B70(&a1[v27], &qword_1EDCDFD00, MEMORY[0x1E69AAB70], v28);
    (*(v12 + 32))(&a1[v27], v15, v11);
    (*(v12 + 56))(&a1[v27], 0, 1, v11);
  }
}

void *sub_1C6CD95A4(void *result, uint64_t a2, int *a3)
{
  v3 = *a3;
  v4 = *(a2 + 32);
  if (*(v4 + 16) <= v3)
  {
    v9 = v3;
    sub_1C6B688CC();
    swift_allocError();
    *v10 = v9;
    *(v10 + 8) = 0;
    return swift_willThrow();
  }

  else if ((v3 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 + 16 * v3;
    v7 = *(v5 + 32);
    v6 = *(v5 + 40);
    v8 = result;

    *v8 = v7;
    v8[1] = v6;
  }

  return result;
}

void sub_1C6CD9648(char *a1, uint64_t a2, int *a3)
{
  v7 = sub_1C6D78A00();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6CDB320(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v42 - v18;
  v20 = *a3;
  v21 = *(a2 + 32);
  if (*(v21 + 16) <= v20)
  {
    v33 = v20;
    sub_1C6B688CC();
    swift_allocError();
    *v34 = v33;
    *(v34 + 8) = 0;
    swift_willThrow();
  }

  else if ((v20 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v43 = v11;
    v46 = v3;
    v22 = v21 + 16 * v20;
    v23 = *(v22 + 32);
    v24 = *(v22 + 40);

    *a1 = v23;
    *(a1 + 1) = v24;
    v45 = a1;
    v25 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView(0) + 24);
    v26 = v7;
    v27 = v8;
    v28 = MEMORY[0x1E69AAB70];
    sub_1C6CD3B04(a3 + v25, v19, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], v29);
    v44 = v27;
    v30 = *(v27 + 48);
    LODWORD(v23) = v30(v19, 1, v26);
    sub_1C6CD3B70(v19, &qword_1EDCDFD00, v28, v31);
    if (v23 != 1)
    {
      sub_1C6CD3B04(a3 + v25, v15, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], v32);
      if (v30(v15, 1, v26) == 1)
      {
        v35 = v43;
        sub_1C6D789F0();
        v36 = v30(v15, 1, v26);
        v38 = v44;
        if (v36 != 1)
        {
          sub_1C6CD3B70(v15, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], v37);
        }
      }

      else
      {
        v35 = v43;
        v38 = v44;
        (*(v44 + 32))(v43, v15, v26);
      }

      v39 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView(0) + 24);
      v40 = v45;
      sub_1C6CD3B70(&v45[v39], &qword_1EDCDFD00, MEMORY[0x1E69AAB70], v41);
      (*(v38 + 32))(&v40[v39], v35, v26);
      (*(v38 + 56))(&v40[v39], 0, 1, v26);
    }
  }
}

uint64_t sub_1C6CD99E0(uint64_t a1, void (*a2)(void, uint64_t *, uint64_t *, uint64_t *, uint64_t, uint64_t), uint64_t a3, unsigned int *a4, uint64_t a5, unsigned int *a6, uint64_t (*a7)(void))
{
  v154 = a7;
  v191 = a6;
  v168 = a5;
  v158 = a3;
  v159 = a2;
  v155 = a1;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v169 = &v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata(0);
  MEMORY[0x1EEE9AC00](v163, v11);
  v164 = &v152 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v178 = &v152 - v15;
  sub_1C6CDB320(0, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v167 = &v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v174 = &v152 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v177 = &v152 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v152 - v27;
  v29 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  v184 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v30);
  v161 = &v152 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v162 = &v152 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v165 = &v152 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v171 = &v152 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v183 = &v152 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v175 = &v152 - v46;
  sub_1C6CDB320(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  MEMORY[0x1EEE9AC00](v47 - 8, v48);
  v166 = &v152 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50, v51);
  v172 = &v152 - v52;
  MEMORY[0x1EEE9AC00](v53, v54);
  v56 = &v152 - v55;
  MEMORY[0x1EEE9AC00](v57, v58);
  v60 = &v152 - v59;
  v61 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v62 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61, v63);
  v170 = &v152 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65, v66);
  v173 = &v152 - v67;
  MEMORY[0x1EEE9AC00](v68, v69);
  v176 = &v152 - v70;
  MEMORY[0x1EEE9AC00](v71, v72);
  v74 = &v152 - v73;
  v153 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v152 = *(v153 - 8);
  v76 = MEMORY[0x1EEE9AC00](v153, v75);
  v157 = &v152 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = *a4;
  v78 = *((v191)(0, v76) + 24);
  v191 = a4;
  v179 = v78;
  sub_1C6CD3B04(a4 + v78, v60, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, v79);
  v80 = *(v62 + 48);
  v81 = v80(v60, 1, v61);
  v181 = v80;
  v182 = v62 + 48;
  v180 = v61;
  if (v81 == 1)
  {
    v82 = v184;
    (*(v184 + 56))(v74, 1, 1, v29);
    sub_1C6D78A30();
    v83 = v80(v60, 1, v61);
    v85 = v82;
    if (v83 != 1)
    {
      sub_1C6CD3B70(v60, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, v84);
    }
  }

  else
  {
    sub_1C6CDB374(v60, v74, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    v85 = v184;
  }

  sub_1C6CD3B04(v74, v28, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, v84);
  v184 = *(v85 + 48);
  if ((v184)(v28, 1, v29) == 1)
  {
    sub_1C6CD3B70(v28, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, v86);
    sub_1C6B688CC();
    swift_allocError();
    *v87 = 1;
    *(v87 + 8) = 7;
    swift_willThrow();
    v88 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata;
    v89 = v74;
    return sub_1C6CD576C(v89, v88);
  }

  sub_1C6CD576C(v74, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v90 = v175;
  sub_1C6CDB374(v28, v175, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v91 = v90;
  v92 = v183;
  sub_1C6CDB374(v91, v183, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v93 = v178;
  sub_1C6CDB374(v92, v178, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v94 = *v93;
  LOBYTE(v92) = *(v93 + 8);
  sub_1C6CD576C(v93, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v189 = v94;
  v190 = v92;
  sub_1C6CD3B04(v191 + v179, v56, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, v95);
  v96 = v180;
  v97 = v181;
  if (v181(v56, 1, v180) == 1)
  {
    v98 = v176;
    (*(v85 + 56))(v176, 1, 1, v29);
    sub_1C6D78A30();
    if (v97(v56, 1, v96) != 1)
    {
      sub_1C6CD3B70(v56, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, v99);
    }
  }

  else
  {
    v98 = v176;
    sub_1C6CDB374(v56, v176, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  }

  v100 = v177;
  sub_1C6CD3B04(v98, v177, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, v99);
  if ((v184)(v100, 1, v29) == 1)
  {
    sub_1C6CD3B70(v100, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, v101);
    sub_1C6B688CC();
    swift_allocError();
    *v102 = 1;
    *(v102 + 8) = 7;
    swift_willThrow();
    v88 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata;
    v89 = v98;
    return sub_1C6CD576C(v89, v88);
  }

  sub_1C6CD576C(v98, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v103 = v100;
  v104 = v171;
  sub_1C6CDB374(v103, v171, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v105 = v104;
  v106 = v183;
  sub_1C6CDB374(v105, v183, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6CDB374(v106, v93, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v107 = *(v93 + 16);
  LOBYTE(v106) = *(v93 + 24);
  sub_1C6CD576C(v93, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v187 = v107;
  v108 = v180;
  v188 = v106;
  v109 = v172;
  sub_1C6CD3B04(v191 + v179, v172, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, v110);
  v111 = v181;
  if (v181(v109, 1, v108) == 1)
  {
    v112 = v173;
    (*(v85 + 56))(v173, 1, 1, v29);
    sub_1C6D78A30();
    v113 = v111(v109, 1, v108);
    v115 = v174;
    if (v113 != 1)
    {
      sub_1C6CD3B70(v109, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, v114);
    }
  }

  else
  {
    v112 = v173;
    sub_1C6CDB374(v109, v173, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    v115 = v174;
  }

  sub_1C6CD3B04(v112, v115, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, v114);
  if ((v184)(v115, 1, v29) == 1)
  {
    sub_1C6CD3B70(v115, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, v116);
    sub_1C6B688CC();
    swift_allocError();
    *v117 = 1;
    *(v117 + 8) = 7;
    swift_willThrow();
    v88 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata;
    v89 = v112;
    return sub_1C6CD576C(v89, v88);
  }

  sub_1C6CD576C(v112, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v118 = v115;
  v119 = v165;
  sub_1C6CDB374(v118, v165, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v120 = v119;
  v121 = v183;
  sub_1C6CDB374(v120, v183, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6CDB374(v121, v93, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v122 = *(v93 + 32);
  LOBYTE(v121) = *(v93 + 40);
  sub_1C6CD576C(v93, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v185 = v122;
  v123 = v180;
  v186 = v121;
  v124 = v166;
  sub_1C6CD3B04(v191 + v179, v166, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, v125);
  v126 = v181;
  if (v181(v124, 1, v123) == 1)
  {
    v127 = v170;
    (*(v85 + 56))(v170, 1, 1, v29);
    sub_1C6D78A30();
    v128 = v126(v124, 1, v123);
    v130 = v167;
    if (v128 != 1)
    {
      sub_1C6CD3B70(v124, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, v129);
    }
  }

  else
  {
    v127 = v170;
    sub_1C6CDB374(v124, v170, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    v130 = v167;
  }

  v131 = v169;
  sub_1C6CD57CC(v168, v169, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession);
  sub_1C6CD3B04(v127, v130, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, v132);
  if ((v184)(v130, 1, v29) == 1)
  {
    sub_1C6CD3B70(v130, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, v133);
    sub_1C6B688CC();
    swift_allocError();
    *v134 = 1;
    *(v134 + 8) = 7;
    swift_willThrow();
LABEL_25:
    sub_1C6CD576C(v127, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    v88 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession;
    v89 = v131;
    return sub_1C6CD576C(v89, v88);
  }

  v136 = v162;
  sub_1C6CDB374(v130, v162, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v137 = v161;
  sub_1C6CD57CC(v136, v161, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v138 = v164;
  result = sub_1C6CDB374(v137, v164, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v139 = (v138 + *(v163 + 32));
  if (v139[1])
  {
    v140 = 0;
    v141 = 0;
  }

  else
  {
    v142 = *v139;
    v143 = *(v131 + 32);
    if (*(v143 + 16) <= v142)
    {
      v150 = v142;
      sub_1C6B688CC();
      swift_allocError();
      *v151 = v150;
      v127 = v170;
      *(v151 + 8) = 0;
      swift_willThrow();
      sub_1C6CD576C(v138, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
      sub_1C6CD576C(v136, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
      goto LABEL_25;
    }

    if ((v142 & 0x80000000) != 0)
    {
      __break(1u);
      return result;
    }

    v144 = v143 + 16 * v142;
    v140 = *(v144 + 32);
    v141 = *(v144 + 40);
  }

  sub_1C6CD576C(v138, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  sub_1C6CD576C(v136, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6CD576C(v127, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6CD576C(v131, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession);
  v145 = v157;
  v146 = v160;
  v159(v156, &v189, &v187, &v185, v140, v141);
  if (v146)
  {
  }

  v147 = *(v154(0) + 20);
  v148 = v155;
  sub_1C6CD3B70(v155 + v147, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, v149);
  sub_1C6CDB374(v145, v148 + v147, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  return (*(v152 + 56))(v148 + v147, 0, 1, v153);
}

uint64_t sub_1C6CDAB80(uint64_t a1, unsigned int *a2, uint64_t (*a3)(uint64_t, uint64_t *, uint64_t *, uint64_t *, void, void), uint64_t a4)
{
  v34 = a4;
  v35 = a3;
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69AA900];
  sub_1C6CDB320(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v32 - v13;
  v15 = sub_1C6D789A0();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended(0);
  sub_1C6CD3B04(a2 + *(v20 + 24), v14, &qword_1EDCE66F0, v10, v21);
  v22 = *(v16 + 48);
  if (v22(v14, 1, v15) == 1)
  {
    sub_1C6D78990();
    if (v22(v14, 1, v15) != 1)
    {
      sub_1C6CD3B70(v14, &qword_1EDCE66F0, MEMORY[0x1E69AA900], v23);
    }
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
  }

  v24 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended(0);
  v25 = *(v24 + 20);
  sub_1C6CD3B70(a1 + v25, &qword_1EDCE66F0, MEMORY[0x1E69AA900], v26);
  (*(v16 + 32))(a1 + v25, v19, v15);
  (*(v16 + 56))(a1 + v25, 0, 1, v15);
  v27 = *a2;
  v40 = 0;
  v41 = 1;
  v38 = 0;
  v39 = 1;
  v36 = 0;
  v37 = 1;
  v28 = v42;
  result = v35(v27, &v40, &v38, &v36, 0, 0);
  if (!v28)
  {
    v31 = *(v24 + 24);
    sub_1C6CD3B70(a1 + v31, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, v30);
    sub_1C6CDB374(v9, a1 + v31, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    return (*(v32 + 56))(a1 + v31, 0, 1, v33);
  }

  return result;
}

uint64_t sub_1C6CDB2D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6CDB320(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D79C00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C6CDB374(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1C6CDB408(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D79C00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C6CDB490(uint64_t a1)
{
  type metadata accessor for FCPersonalizationAction(319);
  if (v1 <= 0x3F)
  {
    sub_1C6CDB408(319, &qword_1EDCE5FD8, MEMORY[0x1E69B4588]);
    if (v2 <= 0x3F)
    {
      sub_1C6CDB408(319, &qword_1EDCE5E68, MEMORY[0x1E69B4AA0]);
      if (v3 <= 0x3F)
      {
        sub_1C6CDB408(319, &qword_1EDCE5FC8, MEMORY[0x1E69B45B0]);
        if (v4 <= 0x3F)
        {
          sub_1C6CDB650(319, &qword_1EDCDF3D8, MEMORY[0x1E69E72F0]);
          if (v5 <= 0x3F)
          {
            sub_1C6CDB650(319, &qword_1EDCE65B0, MEMORY[0x1E69E6530]);
            if (v6 <= 0x3F)
            {
              sub_1C6CDB408(319, &qword_1EDCE5E28, MEMORY[0x1E69B4EF0]);
              if (v7 <= 0x3F)
              {
                sub_1C6CDB408(319, &qword_1EDCE5E58, MEMORY[0x1E69B4B10]);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C6CDB650(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1C6D79C00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C6CDB6BC(uint64_t a1)
{
  result = type metadata accessor for PersonalizationAction(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackFinished.article.getter@<X0>(char *a1@<X8>)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished(0);
  sub_1C6B482A8(v1 + *(v7 + 20), v6);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B483C8(v6, a1);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B4833C(v6);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished(uint64_t a1)
{
  result = qword_1EDCE45B8;
  if (!qword_1EDCE45B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackFinished.init()@<X0>(uint64_t a2@<X8>)
{
  sub_1C6D78A30();
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished(0) + 20);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a2 + v3, 1, 1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackFinished.article.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished(0) + 20);
  sub_1C6B4833C(v1 + v3);
  sub_1C6B483C8(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_1C6CDBA14@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished(0);
  sub_1C6B482A8(a1 + *(v8 + 20), v7);
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B483C8(v7, a2);
  }

  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B4833C(v7);
  }

  return result;
}

uint64_t sub_1C6CDBBAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B48784(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished(0) + 20);
  sub_1C6B4833C(a2 + v9);
  sub_1C6B483C8(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEventTrackFinished.article.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished(0) + 20);
  *(v5 + 12) = v16;
  sub_1C6B482A8(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 1) = 0xE000000000000000;
    v18 = *(v10 + 20);
    v19 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
    (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B4833C(v9);
    }
  }

  else
  {
    sub_1C6B483C8(v9, v15);
  }

  return sub_1C6B48678;
}

BOOL Com_Apple_News_Personalization_SessionEventTrackFinished.hasArticle.getter()
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished(0);
  sub_1C6B482A8(v0 + *(v5 + 20), v4);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B4833C(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventTrackFinished.clearArticle()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished(0) + 20);
  sub_1C6B4833C(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackFinished.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackFinished.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C6CDC174()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D9348);
  __swift_project_value_buffer(v0, qword_1EC1D9348);
  sub_1C6B49B2C(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6D7E630;
  v5 = v4 + v3 + *(v2 + 56);
  *(v4 + v3) = 1;
  *v5 = "article";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C6D78D00();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionEventTrackFinished._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5B70 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9348);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackFinished.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6CDC414(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6CDC414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished(0);
  type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6CDCE60(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticle);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackFinished.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6CDC520(v3, a1, a2, a3);
  if (!v4)
  {
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6CDC520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished(0);
  sub_1C6B482A8(a1 + *(v14 + 20), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6B4833C(v8);
  }

  sub_1C6B483C8(v8, v13);
  sub_1C6CDCE60(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D78CF0();
  return sub_1C6B487E8(v13, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackFinished.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished(0);
  sub_1C6CDCE60(&qword_1EC1D9360, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTrackFinished);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CDC7FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6CDCE60(&qword_1EC1D9378, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTrackFinished);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6CDC878@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5B70 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9348);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6CDC920(uint64_t a1)
{
  v2 = sub_1C6CDCE60(&qword_1EC1D83E0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTrackFinished);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6CDC98C(uint64_t a1, uint64_t a2)
{
  sub_1C6CDCE60(&qword_1EC1D83E0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTrackFinished);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B26_SessionEventTrackFinishedV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24 - v11;
  sub_1C6B49A50(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished(0) + 20);
  v19 = *(v14 + 56);
  sub_1C6B482A8(a1 + v18, v17);
  sub_1C6B482A8(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1C6B4833C(v17);
LABEL_9:
      sub_1C6D78A40();
      sub_1C6CDCE60(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v21 = sub_1C6D79560();
      return v21 & 1;
    }

    goto LABEL_6;
  }

  sub_1C6B482A8(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    sub_1C6B487E8(v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
LABEL_6:
    sub_1C6B487E8(v17, sub_1C6B49A50);
    goto LABEL_7;
  }

  sub_1C6B483C8(&v17[v19], v8);
  v22 = static Com_Apple_News_Personalization_SessionArticle.== infix(_:_:)(v12, v8);
  sub_1C6B487E8(v8, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B487E8(v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B4833C(v17);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1C6CDCE60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t Com_Apple_News_Personalization_FeedType.string.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0;
  }

  result = *v0;
  switch(*v0)
  {
    case 1:
      result = 0x756F59726F66;
      break;
    case 2:
    case 3:
      result = 0x656E697A6167616DLL;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6C656E6E616863;
      break;
    case 7:
      result = 0x6369706F74;
      break;
    case 8:
      result = 0x697A6167614D796DLL;
      break;
    case 9:
      result = 6385509;
      break;
    case 0xALL:
      result = 0x6F69647561;
      break;
    case 0xBLL:
      result = 0x7369486F69647561;
      break;
    case 0xCLL:
      result = 0x616C506F69647561;
      break;
    case 0xDLL:
      result = 0x6465766173;
      break;
    case 0xELL:
      result = 0x79726F74736968;
      break;
    case 0xFLL:
      result = 0x686372616573;
      break;
    case 0x10:
      result = 0x6F48686372616573;
      break;
    case 0x11:
      result = 0x6957646572616873;
      break;
    case 0x12:
      result = 0x7374726F7073;
      break;
    case 0x13:
      result = 0x76457374726F7073;
      break;
    case 0x14:
      result = 0x7548656C7A7A7570;
      break;
    case 0x15:
      result = 0x7954656C7A7A7570;
      break;
    case 0x16:
      result = 0x6F42657069636572;
      break;
    case 0x17:
      result = 0x627548646F6F66;
      break;
    case 0x18:
      result = 0x6143657069636572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SessionDataProviderType.visitSessions(eventLimit:reversed:stoppableVisitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  v14 = *(a6 + 8);

  v14(sub_1C6CDD34C, v13, a2, a3, a4, a5, a6);
}

uint64_t sub_1C6CDD2C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  v7 = *(a2 + 16);
  v8 = *(*(a1 + 16) + 16);
  v9 = v7 + v8;
  if (__OFADD__(v7, v8))
  {
    __break(1u);
  }

  else
  {
    if (v9 < a3)
    {
      swift_beginAccess();
      *(a2 + 16) = v9;
    }

    return v9 >= a3;
  }

  return result;
}

uint64_t SessionDataProviderType.visitSessions(reversed:visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[2] = a2;
  v6[3] = a3;
  return (*(a5 + 8))(0, 0, a1, sub_1C6BF5054, v6, a4, a5);
}

uint64_t GenericSessionDataProviderType.visitSessions(reversed:visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[2] = a4;
  v6[3] = a5;
  v6[4] = a2;
  v6[5] = a3;
  return (*(a5 + 24))(0, 0, a1, sub_1C6CDD420, v6, a4, a5);
}

uint64_t GenericSessionDataProviderType.visitSessions(eventLimit:reversed:stoppableVisitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = v12;
  v13[5] = a1;
  v14 = *(a6 + 24);

  v14(sub_1C6CDD678, v13, a2, a3, a4, a5, a6);
}

uint64_t sub_1C6CDD53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v7 = *(a2 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = *(AssociatedConformanceWitness + 24);
  v10 = swift_checkMetadataState();
  result = v9(v10, AssociatedConformanceWitness);
  v12 = v7 + result;
  if (__OFADD__(v7, result))
  {
    __break(1u);
  }

  else
  {
    if (v12 >= a3)
    {
      return v12 >= a3;
    }

    v13 = v9(v10, AssociatedConformanceWitness);
    result = swift_beginAccess();
    v14 = *(a2 + 16);
    v15 = __OFADD__(v14, v13);
    v16 = v14 + v13;
    if (!v15)
    {
      *(a2 + 16) = v16;
      return v12 >= a3;
    }
  }

  __break(1u);
  return result;
}

id sub_1C6CDD6E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v27 = MEMORY[0x1E69E7CC0];
    v24 = a1;
    sub_1C6D79DF0();
    v4 = v24 + 64;
    result = sub_1C6D79CC0();
    v5 = v24;
    v6 = result;
    v7 = 0;
    v8 = *(v24 + 36);
    v25 = v2;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v5 + 32))
    {
      v11 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      if (v8 != *(v5 + 36))
      {
        goto LABEL_23;
      }

      v26 = v7;
      v12 = v4;
      v13 = *(*(v5 + 56) + 8 * v6);
      v14 = objc_allocWithZone(MEMORY[0x1E69B6DF8]);

      result = [v14 init];
      if (!result)
      {
        goto LABEL_27;
      }

      v15 = result;
      v16 = sub_1C6D79570();
      [v15 setTagID_];

      [v15 setScore_];

      sub_1C6D79DC0();
      sub_1C6D79E00();
      sub_1C6D79E10();
      result = sub_1C6D79DD0();
      v9 = 1 << *(v5 + 32);
      if (v6 >= v9)
      {
        goto LABEL_24;
      }

      v17 = *(v12 + 8 * v11);
      if ((v17 & (1 << v6)) == 0)
      {
        goto LABEL_25;
      }

      if (v8 != *(v5 + 36))
      {
        goto LABEL_26;
      }

      v4 = v12;
      v18 = v17 & (-2 << (v6 & 0x3F));
      if (v18)
      {
        v9 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
        v10 = v25;
      }

      else
      {
        v19 = v11 << 6;
        v20 = v11 + 1;
        v21 = (v24 + 72 + 8 * v11);
        v10 = v25;
        while (v20 < (v9 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_1C6B360A8(v6, v8, 0);
            v5 = v24;
            v9 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        result = sub_1C6B360A8(v6, v8, 0);
        v5 = v24;
      }

LABEL_4:
      v7 = v26 + 1;
      v6 = v9;
      if (v26 + 1 == v10)
      {
        return v27;
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
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

unint64_t sub_1C6CDD9A4(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_1C6CDE7E8(0);
    v2 = sub_1C6D79F20();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v14 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v14);
    ++v9;
    if (v6)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v16 = (*(v1 + 48) + 16 * (v15 | (v14 << 6)));
        v18 = *v16;
        v17 = v16[1];
        sub_1C6CDE850();

        swift_dynamicCast();
        result = sub_1C6B5DEA8(v18, v17);
        if (v19)
        {
          v10 = v1;
          v11 = 16 * result;
          v12 = (v2[6] + 16 * result);
          *v12 = v18;
          v12[1] = v17;

          v13 = v2[7] + v11;
          v1 = v10;
          *v13 = v25;
          *(v13 + 8) = v26;
          v9 = v14;
          if (!v6)
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
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          v21 = v2[7] + 16 * result;
          *v21 = v25;
          *(v21 + 8) = v26;
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v9 = v14;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v14 = v9;
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

void sub_1C6CDDBCC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C6CDE770(0);
    v2 = sub_1C6D79F20();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        v17 = sub_1C6D798B0();
        v18 = sub_1C6B5DEA8(v16, v15);
        if (v19)
        {
          v8 = (v2[6] + 16 * v18);
          *v8 = v16;
          v8[1] = v15;
          v9 = v18;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v17;

          v7 = v12;
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

          *(v2 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v18;
          v20 = (v2[6] + 16 * v18);
          *v20 = v16;
          v20[1] = v15;
          *(v2[7] + 8 * v18) = v17;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

id sub_1C6CDDDAC()
{
  v0 = sub_1C6D763C0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
  sub_1C6D76D00();
  [v5 setSubscribedChannelCtr_];
  sub_1C6D76CD0();
  [v5 setPaidNonpaidSubscriptionCtr_];
  sub_1C6D76CA0();
  [v5 setAutoSubscribeCtr_];
  sub_1C6D76D50();
  [v5 setComputedGlobalScoreCoefficient_];
  sub_1C6D76D40();
  [v5 setUserFeedbackScore_];
  sub_1C6D76D70();
  [v5 setRawUserFeedbackScore_];
  sub_1C6D76C90();
  [v5 setPersonalizationScore_];
  sub_1C6D76CC0();
  [v5 setRawPersonalizationScore_];
  sub_1C6D76C80();
  [v5 setAgedPersonalizationScore_];
  sub_1C6D76EA0();
  [v5 setConversionMultiplier_];
  sub_1C6D76F10();
  [v5 setDampenedStaticMultiplier_];
  sub_1C6D76DE0();
  [v5 setStaticMultiplier_];
  sub_1C6D76ED0();
  [v5 setQualitativeMultiplier_];
  sub_1C6D76E10();
  [v5 setPublisherDampener_];
  sub_1C6D76EC0();
  [v5 setPublisherFavorability_];
  v6 = sub_1C6D76EE0();
  sub_1C6CDD6E8(v6);

  sub_1C6B0C69C(0, &qword_1EDCEA508, 0x1E69B6DF8);
  v7 = sub_1C6D79760();

  [v5 setCohortMemberships_];

  sub_1C6D76D80();
  [v5 setMultiplier_];
  sub_1C6D76D60();
  [v5 setServerScoreDemocratizationFactor_];
  sub_1C6D76F00();
  [v5 setNicheContentMultiplier_];
  sub_1C6D76EF0();
  [v5 setContentTriggerDampener_];
  v8 = sub_1C6CDE5F8();
  [v5 setCoefficients_];

  v9 = sub_1C6D76DB0();
  if (*(v9 + 16) && (v10 = sub_1C6B5DEA8(42, 0xE100000000000000), (v11 & 1) != 0))
  {
    (*(v1 + 16))(v4, *(v9 + 56) + *(v1 + 72) * v10, v0);

    result = [objc_allocWithZone(MEMORY[0x1E69B6FC8]) init];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v13 = result;
    v14 = sub_1C6D79570();
    [v13 setIdentifier_];

    sub_1C6D763B0();
    [v13 setRawClicks_];
    sub_1C6D76390();
    [v13 setClicks_];
    sub_1C6D76380();
    [v13 setImpressions_];
    (*(v1 + 8))(v4, v0);
    [v5 setGlobalCohort_];
  }

  else
  {
  }

  v15 = sub_1C6D76D20();
  if ((v16 & 1) == 0)
  {
    [v5 setTabiScore_];
  }

  v17 = COERCE_DOUBLE(sub_1C6D76CF0());
  v19 = v18;
  if ((v18 & 1) == 0)
  {
    HIDWORD(v20) = HIDWORD(v17);
    *&v20 = v17;
    [v5 setShadowAgedPersonalizationScore_];
    v21 = COERCE_DOUBLE(sub_1C6D76C70());
    HIDWORD(v22) = HIDWORD(v21);
    *&v22 = v21;
    if (v23)
    {
      *&v22 = 0.0;
    }

    [v5 setShadowTabiScore_];
  }

  [v5 setHasShadowScores_];
  if (qword_1EDCEA7D8 != -1)
  {
    swift_once();
  }

  if (byte_1EDCEA7E0 == 1)
  {
    v24 = [v5 debugFields];
    sub_1C6D76C60();
    [v24 setUserConversionScore_];

    v25 = [v5 debugFields];
    sub_1C6D76E90();
    [v25 setBundlePaidMultiplier_];

    v26 = [v5 debugFields];
    sub_1C6D76E80();
    [v26 setBundleFreeMultiplier_];

    v27 = [v5 debugFields];
    sub_1C6D76E30();
    [v27 setFeaturedMultiplier_];

    v28 = [v5 debugFields];
    sub_1C6D76DC0();
    [v28 setAudioMultiplier_];

    v29 = [v5 debugFields];
    sub_1C6D76E60();
    [v29 setEvergreenMultiplier_];

    v30 = [v5 debugFields];
    sub_1C6D76DA0();
    [v30 setSeenPenalty_];

    v31 = [v5 debugFields];
    sub_1C6D76D90();
    [v31 setReadPenalty_];

    v32 = [v5 debugFields];
    sub_1C6D76DD0();
    [v32 setListenedPenalty_];

    v33 = [v5 debugFields];
    sub_1C6D76E20();
    [v33 setSparseTagsPenalty_];

    v34 = [v5 debugFields];
    sub_1C6D76DF0();
    [v34 setTimeDecayPenalty_];

    v35 = [v5 debugFields];
    sub_1C6D76E40();
    [v35 setMultiplierDampener_];

    v36 = [v5 debugFields];
    sub_1C6D76E00();
    [v36 setMutedVoteDampener_];

    v37 = [v5 debugFields];
    v38 = sub_1C6D76E50();
    sub_1C6CDDBCC(v38);

    sub_1C6B0C69C(0, &qword_1EDCEA8C0, 0x1E696AD98);
    v39 = sub_1C6D79480();

    [v37 setNicheContentScores_];

    v40 = [v5 debugFields];
    v41 = sub_1C6D76F20();
    sub_1C6CDDBCC(v41);

    v42 = sub_1C6D79480();

    [v40 setContentTriggerScores_];
  }

  return v5;
}

id sub_1C6CDE5F8()
{
  result = [objc_allocWithZone(MEMORY[0x1E69B6DF0]) init];
  if (result)
  {
    v1 = result;
    sub_1C6D76CB0();
    [v1 setAutofavoritedScoreCoefficient_];
    sub_1C6D76D50();
    [v1 setServerScoreCoefficient_];
    sub_1C6D76EB0();
    [v1 setConversionCoefficient_];
    sub_1C6D76E70();
    [v1 setHalfLifeCoefficient_];
    sub_1C6D76CE0();
    [v1 setSubscribedTopicScoreCoefficient_];
    sub_1C6D76D10();
    [v1 setSubscribedChannelScoreCoefficent_];
    sub_1C6D76CB0();
    [v1 setAutofavoritedScoreCoefficient_];
    sub_1C6D76D30();
    [v1 setTabiScoreCoefficient_];
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6CDE6E4()
{
  sub_1C6D771B0();
  sub_1C6D771A0();
  if (qword_1EDCEA7B8 != -1)
  {
    swift_once();
  }

  sub_1C6D77190();

  byte_1EDCEA7E0 = v1;
  return result;
}

void sub_1C6CDE770(uint64_t a1)
{
  if (!qword_1EDCEA450)
  {
    sub_1C6B0C69C(255, &qword_1EDCEA8C0, 0x1E696AD98);
    v1 = sub_1C6D79F30();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCEA450);
    }
  }
}

void sub_1C6CDE7E8(uint64_t a1)
{
  if (!qword_1EC1D9380)
  {
    sub_1C6CDE850();
    v1 = sub_1C6D79F30();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1D9380);
    }
  }
}

void sub_1C6CDE850()
{
  if (!qword_1EDCE65E0)
  {
    v0 = sub_1C6D79C00();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE65E0);
    }
  }
}

NewsPersonalization::AutoFavoriteResults::Result __swiftcall AutoFavoriteResults.Result.init(rejected:selected:)(Swift::OpaquePointer rejected, Swift::OpaquePointer selected)
{
  v2->_rawValue = rejected._rawValue;
  v2[1]._rawValue = selected._rawValue;
  result.selected = selected;
  result.rejected = rejected;
  return result;
}

uint64_t sub_1C6CDE8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1C6D76070();
  v7 = sub_1C6B1E978(a1, a2, v6);

  if (v7)
  {
    return 0;
  }

  v9 = sub_1C6D76080();
  v10 = sub_1C6B1E978(a1, a2, v9);

  if (v10)
  {
    return 1;
  }

  v11 = sub_1C6D76090();
  v12 = sub_1C6B1E978(a1, a2, v11);

  if (v12)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_1C6CDE994(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_1C6B1E6A8(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1C6CDEA98(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_1C6B1E6A8(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

id sub_1C6CDEB9C(uint64_t a1, uint64_t a2)
{
  sub_1C6CE3674(0, &qword_1EDCDF4C8, sub_1C6CE39A8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6D7EB10;
  result = [v2 defaultTags];
  if (result)
  {
    v7 = result;
    sub_1C6B18500();
    v8 = sub_1C6D79490();

    *(inited + 32) = v8;
    result = [v2 optionalTags];
    if (result)
    {
      v9 = result;
      v10 = sub_1C6D79490();

      *(inited + 40) = v10;
      if (*(*(inited + 32) + 16))
      {

        sub_1C6B5DEA8(a1, a2);
        v12 = v11;

        if (v12)
        {
          goto LABEL_8;
        }

        v10 = *(inited + 40);
      }

      if (!*(v10 + 16) || (, sub_1C6B5DEA8(a1, a2), v14 = v13, , (v14 & 1) == 0))
      {
        v15 = 0;
        goto LABEL_10;
      }

LABEL_8:
      v15 = 1;
LABEL_10:

      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t AutoFavoriteResults.RejectionReason.description.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v1 <= 3)
    {
      v7 = 0x7461636572706544;
      if (v1 != 2)
      {
        v7 = 0x776F6C6C61736944;
      }

      v8 = 0xD000000000000010;
      if (v1)
      {
        v8 = 0xD000000000000012;
      }

      if (v1 <= 1)
      {
        return v8;
      }

      else
      {
        return v7;
      }
    }

    else
    {
      v2 = 0x626967696C656E49;
      v3 = 0x636165522078614DLL;
      if (v1 != 7)
      {
        v3 = 0x646574754DLL;
      }

      if (v1 != 6)
      {
        v2 = v3;
      }

      v4 = 0x7373694D206D6547;
      if (v1 != 4)
      {
        v4 = 0x6465726F6E6749;
      }

      if (v1 <= 5)
      {
        return v4;
      }

      else
      {
        return v2;
      }
    }
  }

  else
  {
    sub_1C6D79D50();

    v6 = sub_1C6D7A0E0();
    MEMORY[0x1CCA55B00](v6);

    MEMORY[0x1CCA55B00](41, 0xE100000000000000);
    return 0xD000000000000014;
  }
}

uint64_t AutoFavoriteResults.appExternalSignalResults.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t AutoFavoriteResults.localNewsResults.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t AutoFavoriteResults.newsSignalChannelResults.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

uint64_t AutoFavoriteResults.newsSignalGemResults.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;
}

uint64_t AutoFavoriteResults.newsSignalTopicResults.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  a1[1] = v2;
}

uint64_t AutoFavoriteResults.webExternalSignalResults.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 88);
  *a1 = *(v1 + 80);
  a1[1] = v2;
}

void __swiftcall AutoFavoriteResults.init(appExternalSignalResults:localNewsResults:newsSignalChannelResults:newsSignalGemResults:newsSignalTopicResults:webExternalSignalResults:)(NewsPersonalization::AutoFavoriteResults *__return_ptr retstr, NewsPersonalization::AutoFavoriteResults::Result appExternalSignalResults, NewsPersonalization::AutoFavoriteResults::Result localNewsResults, NewsPersonalization::AutoFavoriteResults::Result newsSignalChannelResults, NewsPersonalization::AutoFavoriteResults::Result newsSignalGemResults, NewsPersonalization::AutoFavoriteResults::Result newsSignalTopicResults, NewsPersonalization::AutoFavoriteResults::Result webExternalSignalResults)
{
  v7 = *appExternalSignalResults.selected._rawValue;
  retstr->appExternalSignalResults = *appExternalSignalResults.rejected._rawValue;
  retstr->localNewsResults = v7;
  v8 = *localNewsResults.selected._rawValue;
  retstr->newsSignalChannelResults = *localNewsResults.rejected._rawValue;
  retstr->newsSignalGemResults = v8;
  v9 = *newsSignalChannelResults.selected._rawValue;
  retstr->newsSignalTopicResults = *newsSignalChannelResults.rejected._rawValue;
  retstr->webExternalSignalResults = v9;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1C6CDF0E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C6CDF130(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6CDF1E0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[10];
  v12 = v0[11];
  v30[0] = v1;
  v30[1] = v2;
  v30[2] = v3;
  v30[3] = v4;
  v30[4] = v5;
  v30[5] = v6;
  v30[6] = v7;
  v30[7] = v8;
  v30[8] = v10;
  v30[9] = v9;
  v30[10] = v11;
  v30[11] = v12;
  v29 = MEMORY[0x1E69E7CD0];

  v13 = 0;
  do
  {
    v14 = v30[2 * v13 + 1];
    v15 = *(v14 + 16);
    if (!v15)
    {

      v16 = MEMORY[0x1E69E7CC0];
      v23 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v23)
      {
        goto LABEL_2;
      }

LABEL_11:
      v24 = v16 + 5;
      do
      {
        v26 = *(v24 - 1);
        v25 = *v24;

        sub_1C6B1E6A8(&v28, v26, v25);

        v24 += 2;
        --v23;
      }

      while (v23);
      goto LABEL_2;
    }

    v28 = MEMORY[0x1E69E7CC0];

    swift_bridgeObjectRetain_n();
    sub_1C6B39280(0, v15, 0);
    v16 = v28;
    v17 = (v14 + 40);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;
      v28 = v16;
      v21 = v16[2];
      v20 = v16[3];

      if (v21 >= v20 >> 1)
      {
        sub_1C6B39280((v20 > 1), v21 + 1, 1);
        v16 = v28;
      }

      v16[2] = v21 + 1;
      v22 = &v16[2 * v21];
      v22[4] = v18;
      v22[5] = v19;
      v17 += 3;
      --v15;
    }

    while (v15);

    v23 = v16[2];
    if (v23)
    {
      goto LABEL_11;
    }

LABEL_2:
    ++v13;
  }

  while (v13 != 6);
  swift_arrayDestroy();
  return v29;
}

uint64_t sub_1C6CDF42C()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1C6CDF4B8;

  return sub_1C6CDFBF0();
}

uint64_t sub_1C6CDF4B8()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C6CDF5EC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1C6CDF5EC()
{
  if (qword_1EDCE23B8 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = qword_1EDCE23C0;
  sub_1C6B1D314(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C6D7E630;
  v0[2] = v1;
  v4 = v1;
  sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
  v5 = sub_1C6D795F0();
  v7 = v6;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1C6B2064C();
  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  v8 = sub_1C6D79AC0();
  sub_1C6D78D30("Failed to generate auto favorites, error=%{public}@", 51, 2, &dword_1C6B09000, v2, v8, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1C6CDF8E0(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1C6CDF988;

  return sub_1C6CDF42C();
}

uint64_t sub_1C6CDF988()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1C6CDFAC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C6BB6A40;

  return sub_1C6CDFBF0();
}

uint64_t sub_1C6CDFB54(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C6BE1AB0;

  return sub_1C6CE0188(a1);
}

uint64_t sub_1C6CDFBF0()
{
  *(v1 + 304) = v0;
  v2 = swift_task_alloc();
  *(v1 + 312) = v2;
  *v2 = v1;
  v2[1] = sub_1C6CDFC88;

  return sub_1C6CE0188(v1 + 16);
}

uint64_t sub_1C6CDFC88()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_1C6CE010C;
  }

  else
  {
    v2 = sub_1C6CDFD9C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C6CDFD9C()
{
  v1 = *(v0 + 64);
  *(v0 + 144) = *(v0 + 48);
  *(v0 + 160) = v1;
  v2 = *(v0 + 96);
  *(v0 + 176) = *(v0 + 80);
  *(v0 + 192) = v2;
  v3 = *(v0 + 32);
  *(v0 + 112) = *(v0 + 16);
  *(v0 + 128) = v3;
  if (qword_1EDCE23B8 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 304);
  v5 = qword_1EDCE23C0;
  sub_1C6B1D314(0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C6D7E630;
  v7 = sub_1C6CDF1E0();
  sub_1C6B11374();
  *(v6 + 56) = v8;
  *(v6 + 64) = sub_1C6CE361C();
  *(v6 + 32) = v7;
  v9 = sub_1C6D79AC0();
  sub_1C6D78D30("Generated auto favorites: %{public}@", 36, 2, &dword_1C6B09000, v5, v9, v6);

  v10 = v4[41];
  v11 = v4[42];
  __swift_project_boxed_opaque_existential_1(v4 + 38, v10);
  v12 = *(v0 + 128);
  *(v0 + 208) = *(v0 + 112);
  *(v0 + 224) = v12;
  v13 = *(v0 + 192);
  *(v0 + 272) = *(v0 + 176);
  *(v0 + 288) = v13;
  v14 = *(v0 + 160);
  *(v0 + 240) = *(v0 + 144);
  *(v0 + 256) = v14;
  v17 = (*(v11 + 8) + **(v11 + 8));
  v15 = swift_task_alloc();
  *(v0 + 328) = v15;
  *v15 = v0;
  v15[1] = sub_1C6CDFFD0;

  return v17(v0 + 208, v10, v11);
}

uint64_t sub_1C6CDFFD0()
{
  v2 = *v1;
  *(v2 + 336) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C6CE0124, 0, 0);
  }

  else
  {
    sub_1C6CE35EC(v2 + 112);
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1C6CE0124()
{
  sub_1C6CE35EC(v0 + 112);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C6CE0188(uint64_t a1)
{
  *(v2 + 944) = v1;
  *(v2 + 936) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C6CE01AC, 0, 0);
}

id sub_1C6CE01AC()
{
  v1 = [*(*(v0 + 944) + 216) allowlist];
  *(v0 + 952) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 944);
    v4 = v3[36];
    v5 = v3[37];
    __swift_project_boxed_opaque_existential_1(v3 + 33, v4);
    if ((*(v5 + 40))(v4, v5))
    {
      if (qword_1EDCE23B8 != -1)
      {
        goto LABEL_27;
      }

      while (1)
      {
        v37 = v0;
        v6 = qword_1EDCE23C0;
        v7 = sub_1C6D79AC0();
        sub_1C6D78D30("AutoFavoritesService attempted to generate auto favorites for user with no history, returning gems", 98, 2, &dword_1C6B09000, v6, v7, MEMORY[0x1E69E7CC0]);
        v36 = v2;
        result = [v2 defaultTags];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v9 = result;
        sub_1C6B18500();
        v10 = sub_1C6D79490();

        v11 = v10 + 64;
        v12 = -1;
        v13 = -1 << *(v10 + 32);
        if (-v13 < 64)
        {
          v12 = ~(-1 << -v13);
        }

        v2 = v12 & *(v10 + 64);
        v14 = (63 - v13) >> 6;
        v38 = v10;

        v15 = 0;
        for (i = MEMORY[0x1E69E7CC0]; v2; *(v27 + 12) = v25)
        {
LABEL_12:
          v18 = __clz(__rbit64(v2)) | (v15 << 6);
          v19 = (*(v38 + 48) + 16 * v18);
          v20 = *v19;
          v21 = v19[1];
          v22 = *(*(v38 + 56) + 8 * v18);
          swift_bridgeObjectRetain_n();
          v23 = v22;
          [v23 floatValue];
          v25 = v24;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            i = sub_1C6B65E60(0, i[2] + 1, 1, i);
          }

          v0 = i[2];
          v26 = i[3];
          if (v0 >= v26 >> 1)
          {
            i = sub_1C6B65E60((v26 > 1), v0 + 1, 1, i);
          }

          v2 &= v2 - 1;

          i[2] = v0 + 1;
          v27 = &i[3 * v0];
          v27[4] = v20;
          v27[5] = v21;
        }

        while (1)
        {
          v17 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v17 >= v14)
          {
            v33 = *(v37 + 936);

            v34 = sub_1C6BEEEB4(i);

            v35 = MEMORY[0x1E69E7CC0];
            *v33 = MEMORY[0x1E69E7CC0];
            v33[1] = v35;
            v33[2] = v35;
            v33[3] = v35;
            v33[4] = v35;
            v33[5] = v35;
            v33[6] = v35;
            v33[7] = v34;
            v33[8] = v35;
            v33[9] = v35;
            v33[10] = v35;
            v33[11] = v35;
            v28 = *(v37 + 8);
            goto LABEL_23;
          }

          v2 = *(v11 + 8 * v17);
          ++v15;
          if (v2)
          {
            v15 = v17;
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_27:
        swift_once();
      }
    }

    v29 = *(v0 + 944);
    v30 = v29[20];
    v31 = v29[21];
    __swift_project_boxed_opaque_existential_1(v29 + 17, v30);
    v39 = (*(v31 + 8) + **(v31 + 8));
    v32 = swift_task_alloc();
    *(v0 + 960) = v32;
    *v32 = v0;
    v32[1] = sub_1C6CE0630;

    return v39(v0 + 304, v30, v31);
  }

  else
  {
    sub_1C6CE3598();
    swift_allocError();
    swift_willThrow();
    v28 = *(v0 + 8);
LABEL_23:

    return v28();
  }
}

uint64_t sub_1C6CE0630()
{
  *(*v1 + 968) = v0;

  if (v0)
  {
    v2 = sub_1C6CE15A0;
  }

  else
  {
    v2 = sub_1C6CE0744;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C6CE0744()
{
  v1 = *(v0 + 944);
  v2 = *(v0 + 320);
  *(v0 + 560) = *(v0 + 304);
  *(v0 + 576) = v2;
  v3 = *(v0 + 352);
  *(v0 + 592) = *(v0 + 336);
  *(v0 + 608) = v3;
  v4 = v1[25];
  v5 = v1[26];
  __swift_project_boxed_opaque_existential_1(v1 + 22, v4);
  (*(v5 + 8))(0, v4, v5);
  v6 = swift_allocObject();
  *(v0 + 976) = v6;
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  *(v6 + 24) = v7;
  v8 = v1[5];
  v9 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v8);
  v10 = *(v0 + 608);
  *(v0 + 400) = *(v0 + 592);
  *(v0 + 416) = v10;
  v11 = *(v0 + 576);
  *(v0 + 368) = *(v0 + 560);
  *(v0 + 384) = v11;
  v14 = (*(v9 + 8) + **(v9 + 8));
  v12 = swift_task_alloc();
  *(v0 + 984) = v12;
  *v12 = v0;
  v12[1] = sub_1C6CE08FC;

  return v14(v0 + 808, v0 + 368, v8, v9);
}

uint64_t sub_1C6CE08FC()
{
  *(*v1 + 992) = v0;

  if (v0)
  {
    v2 = sub_1C6CE1604;
  }

  else
  {
    swift_bridgeObjectRelease_n();
    v2 = sub_1C6CE0A20;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C6CE0A20()
{
  v1 = *(v0 + 808);
  v2 = *(v0 + 816);
  *(v0 + 1008) = v2;
  *(v0 + 1000) = v1;
  sub_1C6B16F28(*(v0 + 944) + 56, v0 + 624);
  __swift_project_boxed_opaque_existential_1((v0 + 624), *(v0 + 648));
  v3 = *(v0 + 576);
  *(v0 + 432) = *(v0 + 560);
  *(v0 + 448) = v3;
  v4 = *(v0 + 608);
  *(v0 + 464) = *(v0 + 592);
  *(v0 + 480) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1016) = v5;
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v5, 0);
    v6 = v18;
    v7 = *(v18 + 16);
    v8 = 16 * v7;
    v9 = (v2 + 40);
    do
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v12 = *(v18 + 24);

      if (v7 >= v12 >> 1)
      {
        sub_1C6B39280((v12 > 1), v7 + 1, 1);
      }

      *(v18 + 16) = v7 + 1;
      v13 = v18 + v8;
      *(v13 + 32) = v11;
      *(v13 + 40) = v10;
      v8 += 16;
      v9 += 3;
      ++v7;
      --v5;
    }

    while (v5);
  }

  v14 = sub_1C6B1E610(v6);
  *(v0 + 1024) = v14;

  v15 = swift_task_alloc();
  *(v0 + 1032) = v15;
  *v15 = v0;
  v15[1] = sub_1C6CE0BEC;
  v16 = *(v0 + 952);

  return sub_1C6C68E2C(v0 + 744, v0 + 760, v0 + 776, v0 + 432, v0 + 664, v16, v14);
}

uint64_t sub_1C6CE0BEC()
{
  *(*v1 + 1040) = v0;

  if (v0)
  {
    v2 = sub_1C6CE18D4;
  }

  else
  {
    swift_bridgeObjectRelease_n();
    v2 = sub_1C6CE0D20;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C6CE0D20()
{
  v1 = *(v0 + 976);
  v2 = *(v0 + 760);
  v3 = *(v0 + 768);
  v57 = *(v0 + 776);
  v58 = *(v0 + 744);
  __swift_destroy_boxed_opaque_existential_1((v0 + 624));
  swift_bridgeObjectRetain_n();
  v4 = *(&v58 + 1);

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v0 + 1048) = v57;
  *(v0 + 1064) = v58;
  v5 = *(v0 + 1016);
  v6 = MEMORY[0x1E69E7CC0];
  *&v58 = v0;
  if (v5)
  {
    v7 = *(v0 + 1008);
    v59 = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v5, 0);
    v8 = 0;
    v6 = v59;
    v9 = *(v59 + 16);
    v10 = 16 * v9;
    v11 = (v7 + 40);
    v0 = v58;
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;
      v14 = v9 + 1;
      v15 = *(v59 + 24);

      if (v9 >= v15 >> 1)
      {
        sub_1C6B39280((v15 > 1), v14, 1);
      }

      v16 = *(v58 + 1016);
      ++v8;
      *(v59 + 16) = v14;
      v17 = v59 + v10;
      *(v17 + 32) = v13;
      *(v17 + 40) = v12;
      v10 += 16;
      v11 += 3;
      ++v9;
    }

    while (v8 != v16);
    v4 = *(&v58 + 1);
  }

  v18 = *(v4 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v60 = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v18, 0);
    v19 = v60;
    v20 = *(v60 + 16);
    v21 = 16 * v20;
    v22 = (v4 + 40);
    do
    {
      v24 = *(v22 - 1);
      v23 = *v22;
      v25 = v20 + 1;
      v26 = *(v60 + 24);

      if (v20 >= v26 >> 1)
      {
        sub_1C6B39280((v26 > 1), v25, 1);
      }

      *(v60 + 16) = v25;
      v27 = v60 + v21;
      *(v27 + 32) = v24;
      *(v27 + 40) = v23;
      v21 += 16;
      v22 += 3;
      ++v20;
      --v18;
    }

    while (v18);
    v0 = v58;
  }

  v28 = *(v0 + 976);
  sub_1C6B38560(v19);
  swift_beginAccess();
  v29 = *(v28 + 24);
  v30 = *(v29 + 16);
  v31 = MEMORY[0x1E69E7CC0];
  if (v30)
  {
    v61 = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v30, 0);
    v31 = v61;
    v32 = *(v61 + 16);
    v33 = 16 * v32;
    v34 = (v29 + 40);
    do
    {
      v36 = *(v34 - 1);
      v35 = *v34;
      v37 = v32 + 1;
      v38 = *(v61 + 24);

      if (v32 >= v38 >> 1)
      {
        sub_1C6B39280((v38 > 1), v37, 1);
      }

      *(v61 + 16) = v37;
      v39 = v61 + v33;
      *(v39 + 32) = v36;
      *(v39 + 40) = v35;
      v33 += 16;
      v34 += 3;
      ++v32;
      --v30;
    }

    while (v30);
  }

  sub_1C6B38560(v31);
  v40 = *(*(&v57 + 1) + 16);
  v41 = MEMORY[0x1E69E7CC0];
  if (v40)
  {
    v62 = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v40, 0);
    v41 = v62;
    v42 = *(v62 + 16);
    v43 = 16 * v42;
    v44 = (*(&v57 + 1) + 40);
    do
    {
      v46 = *(v44 - 1);
      v45 = *v44;
      v47 = v42 + 1;
      v48 = *(v62 + 24);

      if (v42 >= v48 >> 1)
      {
        sub_1C6B39280((v48 > 1), v47, 1);
      }

      *(v62 + 16) = v47;
      v49 = v62 + v43;
      *(v49 + 32) = v46;
      *(v49 + 40) = v45;
      v43 += 16;
      v44 += 3;
      ++v42;
      --v40;
    }

    while (v40);
  }

  v50 = *(v58 + 944);
  sub_1C6B38560(v41);
  v51 = sub_1C6B1E610(v6);
  *(v58 + 1080) = v51;

  __swift_project_boxed_opaque_existential_1((v50 + 96), *(v50 + 120));
  v52 = *(v58 + 576);
  *(v58 + 496) = *(v58 + 560);
  *(v58 + 512) = v52;
  v53 = *(v58 + 608);
  *(v58 + 528) = *(v58 + 592);
  *(v58 + 544) = v53;
  v54 = swift_task_alloc();
  *(v58 + 1088) = v54;
  *v54 = v58;
  v54[1] = sub_1C6CE11C0;
  v55 = *(v58 + 952);

  return sub_1C6BEA500(v58 + 840, v58 + 856, v58 + 496, v58 + 664, v55, v51);
}

uint64_t sub_1C6CE11C0()
{
  *(*v1 + 1096) = v0;

  if (v0)
  {
    v2 = sub_1C6CE1F08;
  }

  else
  {
    swift_bridgeObjectRelease_n();
    v2 = sub_1C6CE12F4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C6CE12F4()
{
  v1 = *(v0 + 856);
  v2 = *(v0 + 976);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  *(v0 + 208) = *(v0 + 840);
  v6 = *(v0 + 1048);
  v5 = *(v0 + 1064);
  *(v0 + 224) = *(v0 + 1000);
  *(v0 + 240) = v5;
  *(v0 + 256) = v3;
  *(v0 + 264) = v4;
  *(v0 + 272) = v6;
  *(v0 + 288) = v1;

  v7 = swift_task_alloc();
  *(v0 + 1104) = v7;
  *v7 = v0;
  v7[1] = sub_1C6CE13D4;
  v8 = *(v0 + 936);

  return sub_1C6CE24FC(v8, (v0 + 208));
}

uint64_t sub_1C6CE13D4()
{
  v2 = *v1;
  *(*v1 + 1112) = v0;

  v3 = v2[14];
  if (v0)
  {
    v2[7] = v2[13];
    v2[8] = v3;
    v4 = v2[15];
    v5 = v2[16];
    v6 = v2[18];
    v2[11] = v2[17];
    v2[12] = v6;
    v2[9] = v4;
    v2[10] = v5;
    sub_1C6CE35EC((v2 + 7));
    v7 = sub_1C6CE2100;
  }

  else
  {
    v2[1] = v2[13];
    v2[2] = v3;
    v8 = v2[15];
    v9 = v2[16];
    v10 = v2[18];
    v2[5] = v2[17];
    v2[6] = v10;
    v2[3] = v8;
    v2[4] = v9;
    sub_1C6CE35EC((v2 + 1));
    v7 = sub_1C6CE1528;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C6CE1528()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 664));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C6CE15A0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C6CE1604()
{
  if (qword_1EDCE23B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 992);
  v2 = qword_1EDCE23C0;
  sub_1C6B1D314(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C6D7E630;
  *(v0 + 728) = 0;
  *(v0 + 736) = 0xE000000000000000;
  *(v0 + 888) = v1;
  sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
  sub_1C6D79E60();
  v4 = *(v0 + 728);
  v5 = *(v0 + 736);
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1C6B2064C();
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v6 = sub_1C6D79AC0();
  sub_1C6D78D30("Failed to generate auto favorites based on local news channels: %{public}@", 74, 2, &dword_1C6B09000, v2, v6, v3);

  v7 = MEMORY[0x1E69E7CC0];
  *(v0 + 1008) = MEMORY[0x1E69E7CC0];
  *(v0 + 1000) = v7;
  sub_1C6B16F28(*(v0 + 944) + 56, v0 + 624);
  __swift_project_boxed_opaque_existential_1((v0 + 624), *(v0 + 648));
  v8 = *(v0 + 576);
  *(v0 + 432) = *(v0 + 560);
  *(v0 + 448) = v8;
  v9 = *(v0 + 608);
  *(v0 + 464) = *(v0 + 592);
  *(v0 + 480) = v9;
  v10 = v7[2];
  *(v0 + 1016) = v10;
  if (v10)
  {
    sub_1C6B39280(0, v10, 0);
    v11 = v7;
    v12 = v7[2];
    v13 = v7 + 5;
    v14 = 2 * v12;
    do
    {
      v16 = *(v13 - 1);
      v15 = *v13;
      v17 = v7[3];

      if (v12 >= v17 >> 1)
      {
        sub_1C6B39280((v17 > 1), v12 + 1, 1);
      }

      v7[2] = v12 + 1;
      v18 = &v7[v14];
      v18[4] = v16;
      v18[5] = v15;
      v14 += 2;
      v13 += 3;
      ++v12;
      --v10;
    }

    while (v10);
  }

  else
  {
    v11 = v7;
  }

  v19 = sub_1C6B1E610(v11);
  *(v0 + 1024) = v19;

  v20 = swift_task_alloc();
  *(v0 + 1032) = v20;
  *v20 = v0;
  v20[1] = sub_1C6CE0BEC;
  v21 = *(v0 + 952);

  return sub_1C6C68E2C(v0 + 744, v0 + 760, v0 + 776, v0 + 432, v0 + 664, v21, v19);
}

uint64_t sub_1C6CE18D4()
{
  v1 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 78);
  if (qword_1EDCE23B8 != -1)
  {
    swift_once();
  }

  v2 = v0[130];
  v3 = qword_1EDCE23C0;
  sub_1C6B1D314(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6D7E630;
  v0[99] = 0;
  v0[100] = 0xE000000000000000;
  v0[116] = v2;
  sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
  sub_1C6D79E60();
  v5 = v0[99];
  v6 = v1[100];
  v7 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v8 = sub_1C6B2064C();
  *(v4 + 64) = v8;
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  v9 = sub_1C6D79AC0();
  sub_1C6D78D30("Failed to generate auto favorites based on user event history: %{public}@", 73, 2, &dword_1C6B09000, v3, v9, v4);

  v1[112] = v2;
  v10 = v2;
  v11 = swift_dynamicCast();
  v12 = v1[130];
  if (v11 || (v1[113] = v12, v13 = v12, v14 = swift_dynamicCast(), v12 = v1[130], v14))
  {
    sub_1C6CE2178(v1[118], v1[122], v1[119]);
  }

  else
  {
    v15 = sub_1C6D79AA0();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1C6D7E630;
    v1[103] = 0;
    v1[104] = 0xE000000000000000;
    v1[114] = v12;
    sub_1C6D79E60();
    v17 = v1[103];
    v18 = v1[104];
    *(v16 + 56) = v7;
    *(v16 + 64) = v8;
    *(v16 + 32) = v17;
    *(v16 + 40) = v18;
    sub_1C6D78D30("Error did not cast to known tag suggestions error %{public}@", 60, 2, &dword_1C6B09000, v3, v15, v16);
  }

  v19 = MEMORY[0x1E69E7CC0];
  v1[134] = MEMORY[0x1E69E7CC0];
  v1[133] = v19;
  v1[132] = v19;
  v1[131] = v19;
  v20 = v1[127];
  v74 = v1;
  if (!v20)
  {
    v23 = v19;
    v33 = *(v19 + 16);
    if (!v33)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v21 = v1[126];
  sub_1C6B39280(0, v20, 0);
  v22 = 0;
  v23 = v19;
  v24 = *(v19 + 16);
  v25 = 16 * v24;
  v26 = (v21 + 40);
  do
  {
    v28 = *(v26 - 1);
    v27 = *v26;
    v29 = v24 + 1;
    v30 = *(v19 + 24);

    if (v24 >= v30 >> 1)
    {
      sub_1C6B39280((v30 > 1), v29, 1);
    }

    v31 = v74[127];
    ++v22;
    *(v19 + 16) = v29;
    v32 = v19 + v25;
    *(v32 + 32) = v28;
    *(v32 + 40) = v27;
    v25 += 16;
    v26 += 3;
    ++v24;
  }

  while (v22 != v31);
  v1 = v74;
  v33 = *(v19 + 16);
  if (v33)
  {
LABEL_15:
    sub_1C6B39280(0, v33, 0);
    v34 = (v19 + 40);
    v35 = *(v19 + 16);
    v36 = 16 * v35;
    do
    {
      v38 = *(v34 - 1);
      v37 = *v34;
      v39 = v35 + 1;
      v40 = *(v19 + 24);

      if (v35 >= v40 >> 1)
      {
        sub_1C6B39280((v40 > 1), v39, 1);
      }

      *(v19 + 16) = v39;
      v41 = v19 + v36;
      *(v41 + 32) = v38;
      *(v41 + 40) = v37;
      v36 += 16;
      v34 += 3;
      ++v35;
      --v33;
    }

    while (v33);
    v1 = v74;
  }

LABEL_20:
  v42 = v1[122];
  sub_1C6B38560(v19);
  v43 = v23;
  swift_beginAccess();
  v44 = *(v42 + 24);
  v45 = *(v44 + 16);
  v46 = MEMORY[0x1E69E7CC0];
  if (v45)
  {
    v73 = v23;
    v75 = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v45, 0);
    v47 = v75;
    v48 = *(v75 + 16);
    v49 = 16 * v48;
    v50 = (v44 + 40);
    do
    {
      v52 = *(v50 - 1);
      v51 = *v50;
      v53 = v48 + 1;
      v54 = *(v75 + 24);

      if (v48 >= v54 >> 1)
      {
        sub_1C6B39280((v54 > 1), v53, 1);
      }

      *(v75 + 16) = v53;
      v55 = v75 + v49;
      *(v55 + 32) = v52;
      *(v55 + 40) = v51;
      v49 += 16;
      v50 += 3;
      ++v48;
      --v45;
    }

    while (v45);
    v43 = v73;
    v1 = v74;
  }

  else
  {
    v47 = MEMORY[0x1E69E7CC0];
  }

  sub_1C6B38560(v47);
  v56 = v43;
  v57 = *(v46 + 16);
  if (v57)
  {
    sub_1C6B39280(0, v57, 0);
    v58 = (v46 + 40);
    v59 = *(v46 + 16);
    v60 = 16 * v59;
    do
    {
      v62 = *(v58 - 1);
      v61 = *v58;
      v63 = v59 + 1;
      v64 = *(v46 + 24);

      if (v59 >= v64 >> 1)
      {
        sub_1C6B39280((v64 > 1), v63, 1);
      }

      *(v46 + 16) = v63;
      v65 = v46 + v60;
      *(v65 + 32) = v62;
      *(v65 + 40) = v61;
      v60 += 16;
      v58 += 3;
      ++v59;
      --v57;
    }

    while (v57);
    v1 = v74;
  }

  v66 = v1[118];
  sub_1C6B38560(v46);
  v67 = sub_1C6B1E610(v56);
  v1[135] = v67;

  __swift_project_boxed_opaque_existential_1((v66 + 96), *(v66 + 120));
  v68 = *(v1 + 36);
  *(v1 + 31) = *(v1 + 35);
  *(v1 + 32) = v68;
  v69 = *(v1 + 38);
  *(v1 + 33) = *(v1 + 37);
  *(v1 + 34) = v69;
  v70 = swift_task_alloc();
  v1[136] = v70;
  *v70 = v1;
  v70[1] = sub_1C6CE11C0;
  v71 = v1[119];

  return sub_1C6BEA500((v1 + 105), (v1 + 107), (v1 + 62), (v1 + 83), v71, v67);
}

uint64_t sub_1C6CE1F08()
{
  if (qword_1EDCE23B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1096);
  v2 = qword_1EDCE23C0;
  sub_1C6B1D314(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C6D7E630;
  *(v0 + 872) = 0;
  *(v0 + 880) = 0xE000000000000000;
  *(v0 + 920) = v1;
  sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
  sub_1C6D79E60();
  v4 = *(v0 + 872);
  v5 = *(v0 + 880);
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1C6B2064C();
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v6 = sub_1C6D79AC0();
  sub_1C6D78D30("Failed to generate auto favorites based on external signals: %{public}@", 71, 2, &dword_1C6B09000, v2, v6, v3);

  v7 = *(v0 + 976);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  v10 = MEMORY[0x1E69E7CC0];
  v12 = *(v0 + 1048);
  v11 = *(v0 + 1064);
  *(v0 + 224) = *(v0 + 1000);
  *(v0 + 240) = v11;
  *(v0 + 208) = v10;
  *(v0 + 216) = v10;
  *(v0 + 256) = v8;
  *(v0 + 264) = v9;
  *(v0 + 272) = v12;
  *(v0 + 288) = v10;
  *(v0 + 296) = v10;

  v13 = swift_task_alloc();
  *(v0 + 1104) = v13;
  *v13 = v0;
  v13[1] = sub_1C6CE13D4;
  v14 = *(v0 + 936);

  return sub_1C6CE24FC(v14, (v0 + 208));
}

uint64_t sub_1C6CE2100()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 664));

  v1 = *(v0 + 8);

  return v1();
}

id sub_1C6CE2178(void *a1, unint64_t a2, void *i)
{
  v5 = a1[41];
  v6 = a1[42];
  __swift_project_boxed_opaque_existential_1(a1 + 38, v5);
  v7 = (*(v6 + 16))(v5, v6);
  if (!v7 || (v8 = *(v7 + 16), , !v8))
  {
    if (qword_1EDCE23B8 != -1)
    {
      goto LABEL_25;
    }

    while (1)
    {
      v36 = a2;
      v13 = qword_1EDCE23C0;
      v14 = sub_1C6D79AC0();
      sub_1C6D78D30("Failed to generate auto favorites as a result of a missing tag suggestions configuration, this user also has no auto favorites, this is indicative of a first ever launch, setting gems as auto favorites.", 202, 2, &dword_1C6B09000, v13, v14, MEMORY[0x1E69E7CC0]);
      result = [i defaultTags];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v15 = result;
      sub_1C6B18500();
      v16 = sub_1C6D79490();

      v17 = v16 + 64;
      v18 = 1 << *(v16 + 32);
      v19 = -1;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      v20 = v19 & *(v16 + 64);
      v21 = (v18 + 63) >> 6;
      v37 = v16;

      v22 = 0;
      for (i = MEMORY[0x1E69E7CC0]; v20; *(v34 + 12) = v31)
      {
LABEL_17:
        v24 = __clz(__rbit64(v20)) | (v22 << 6);
        v25 = (*(v37 + 48) + 16 * v24);
        v26 = *v25;
        v27 = v25[1];
        v28 = *(*(v37 + 56) + 8 * v24);
        swift_bridgeObjectRetain_n();
        v29 = v28;
        [v29 floatValue];
        v31 = v30;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          i = sub_1C6B65E60(0, i[2] + 1, 1, i);
        }

        v33 = i[2];
        v32 = i[3];
        a2 = v33 + 1;
        if (v33 >= v32 >> 1)
        {
          i = sub_1C6B65E60((v32 > 1), v33 + 1, 1, i);
        }

        v20 &= v20 - 1;

        i[2] = a2;
        v34 = &i[3 * v33];
        v34[4] = v26;
        v34[5] = v27;
      }

      while (1)
      {
        v23 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v23 >= v21)
        {

          v35 = sub_1C6BEEEB4(i);

          swift_beginAccess();
          *(v36 + 16) = MEMORY[0x1E69E7CC0];
          *(v36 + 24) = v35;
        }

        v20 = *(v17 + 8 * v23);
        ++v22;
        if (v20)
        {
          v22 = v23;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_25:
      swift_once();
    }
  }

  if (qword_1EDCE23B8 != -1)
  {
    swift_once();
  }

  v9 = qword_1EDCE23C0;
  v10 = sub_1C6D79AC0();
  v11 = MEMORY[0x1E69E7CC0];

  return sub_1C6D78D30("Failed to generate auto favorites as a result of a missing tag suggestions configuration however this user already has auto favorites, leaving them alone.", 154, 2, &dword_1C6B09000, v9, v10, v11);
}

uint64_t sub_1C6CE24FC(uint64_t a1, _OWORD *a2)
{
  v4 = a2[1];
  *(v3 + 40) = *a2;
  *(v3 + 56) = v4;
  v5 = a2[3];
  *(v3 + 72) = a2[2];
  *(v3 + 88) = v5;
  v6 = a2[5];
  *(v3 + 104) = a2[4];
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  *(v3 + 120) = v6;
  return MEMORY[0x1EEE6DFA0](sub_1C6CE2540, 0, 0);
}

uint64_t sub_1C6CE2540()
{
  v9 = v0;
  __swift_project_boxed_opaque_existential_1((v0[4] + 224), *(v0[4] + 248));
  v1 = sub_1C6CDF1E0();
  v2 = v1;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = sub_1C6B6732C(*(v1 + 16), 0);
    v5 = sub_1C6B67FC8(v8, v4 + 4, v3, v2);
    sub_1C6B688C4(v8[0]);
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

LABEL_5:
  v0[17] = sub_1C6D79320();

  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_1C6CE26D0;

  return MEMORY[0x1EEE44EE0](v0 + 2);
}

uint64_t sub_1C6CE26D0()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1C6CE2C7C;
  }

  else
  {

    v2 = sub_1C6CE27EC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C6CE27EC()
{
  v56 = v0;
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
LABEL_29:
    v2 = sub_1C6D79E90();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = MEMORY[0x1E69E7CC8];
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1CCA56240](v3, v1);
          v7 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v6 = *(v1 + 8 * v3 + 32);
          swift_unknownObjectRetain();
          v7 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }
        }

        v8 = [v6 identifier];
        v9 = sub_1C6D795A0();
        v11 = v10;

        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v54 = v4;
        v13 = sub_1C6B5DEA8(v9, v11);
        v15 = v4[2];
        v16 = (v14 & 1) == 0;
        v17 = __OFADD__(v15, v16);
        v18 = v15 + v16;
        if (v17)
        {
          goto LABEL_27;
        }

        v19 = v14;
        if (v4[3] < v18)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_14;
        }

        v24 = v13;
        sub_1C6B74D38();
        v13 = v24;
        if (v19)
        {
LABEL_4:
          v5 = v13;

          v4 = v54;
          *(v54[7] + 8 * v5) = v6;
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_5;
        }

LABEL_15:
        v4 = v54;
        v54[(v13 >> 6) + 8] |= 1 << v13;
        v21 = (v4[6] + 16 * v13);
        *v21 = v9;
        v21[1] = v11;
        *(v4[7] + 8 * v13) = v6;
        swift_unknownObjectRelease();
        v22 = v4[2];
        v17 = __OFADD__(v22, 1);
        v23 = v22 + 1;
        if (v17)
        {
          goto LABEL_28;
        }

        v4[2] = v23;
LABEL_5:
        ++v3;
        if (v7 == v2)
        {
          goto LABEL_31;
        }
      }

      sub_1C6B7207C(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_1C6B5DEA8(v9, v11);
      if ((v19 & 1) != (v20 & 1))
      {

        return sub_1C6D7A1C0();
      }

LABEL_14:
      if (v19)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  v4 = MEMORY[0x1E69E7CC8];
LABEL_31:
  v45 = v44[15];
  v46 = v44[16];
  v40 = v44[13];
  v41 = v44[14];
  v35 = v44[11];
  v36 = v44[12];
  v26 = v44[9];
  v38 = v44[10];
  v28 = v44[7];
  v27 = v44[8];
  v30 = v44[5];
  v29 = v44[6];
  v31 = v44[3];
  v32 = v44[4];

  v54 = v30;
  v55 = v29;

  sub_1C6CE2CE0(&v54, v4, v32, &v48);

  v54 = v28;
  v55 = v27;

  v43 = v48;
  sub_1C6CE2CE0(&v54, v4, v32, &v49);

  v54 = v26;
  v55 = v38;

  v39 = v49;
  sub_1C6CE2CE0(&v54, v4, v32, &v50);

  v54 = v35;
  v55 = v36;

  v37 = v50;
  sub_1C6CE2CE0(&v54, v4, v32, &v51);

  v54 = v40;
  v55 = v41;

  v42 = v51;
  sub_1C6CE2CE0(&v54, v4, v32, &v52);

  v54 = v45;
  v55 = v46;

  v47 = v52;
  sub_1C6CE2CE0(&v54, v4, v32, &v53);

  *v31 = v43;
  v31[1] = v39;
  v31[2] = v37;
  v31[3] = v42;
  v33 = v53;
  v31[4] = v47;
  v31[5] = v33;
  v34 = v44[1];

  return v34();
}

uint64_t sub_1C6CE2C7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t *sub_1C6CE2CE0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v4 = result[1];
  v56 = *result;
  v5 = *(v4 + 16);
  if (v5)
  {
    v7 = 0;
    v62 = *(v4 + 16);
    v58 = v5 - 1;
    v59 = v4 + 48;
    v8 = MEMORY[0x1E69E7CC0];
    v64 = MEMORY[0x1E69E7CC0];
    v60 = MEMORY[0x1E69E7CC0];
LABEL_3:
    while (2)
    {
      v61 = v8;
      v9 = (v59 + 24 * v7);
      v10 = v7;
      while (1)
      {
        if (v10 >= *(v4 + 16))
        {
          __break(1u);
          return result;
        }

        v12 = *(v9 - 2);
        v11 = *(v9 - 1);
        v13 = *v9;
        v14 = *(a2 + 16);

        if (!v14)
        {
          break;
        }

        v15 = sub_1C6B5DEA8(v12, v11);
        v17 = v16;

        if ((v17 & 1) == 0)
        {
          break;
        }

        v18 = *(*(a2 + 56) + 8 * v15);
        if ([swift_unknownObjectRetain() isDeprecated])
        {

          v8 = v61;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1C6B65E60(0, v61[2] + 1, 1, v61);
          }

          v28 = v8[2];
          v30 = v8[3];
          v29 = v28 + 1;
          if (v28 >= v30 >> 1)
          {
            v8 = sub_1C6B65E60((v30 > 1), v28 + 1, 1, v8);
          }

          result = swift_unknownObjectRelease();
          goto LABEL_25;
        }

        v19 = a2;
        v20 = v4;
        v22 = a3[46];
        v21 = a3[47];
        __swift_project_boxed_opaque_existential_1(a3 + 43, v22);
        v23 = (*(v21 + 8))(v18, v22, v21);

        if ((v23 & 1) == 0)
        {
          v32 = v60;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_1C6B65E60(0, v60[2] + 1, 1, v60);
          }

          v8 = v61;
          v34 = v32[2];
          v33 = v32[3];
          if (v34 >= v33 >> 1)
          {
            v60 = sub_1C6B65E60((v33 > 1), v34 + 1, 1, v32);
          }

          else
          {
            v60 = v32;
          }

          v7 = v10 + 1;

          result = swift_unknownObjectRelease();
          v60[2] = v34 + 1;
          v35 = &v60[3 * v34];
          v35[4] = v12;
          v35[5] = v11;
          *(v35 + 12) = v13;
          v4 = v20;
          a2 = v19;
          if (v58 != v10)
          {
            goto LABEL_3;
          }

LABEL_34:
          v36 = v8[2];
          if (!v36)
          {
            goto LABEL_41;
          }

LABEL_35:
          v65 = MEMORY[0x1E69E7CC0];
          sub_1C6B39554(0, v36, 0);
          v37 = v8;
          v38 = v65;
          v39 = v37 + 6;
          do
          {
            v40 = *(v39 - 2);
            v41 = *(v39 - 1);
            v42 = *v39;
            v44 = v65[2];
            v43 = v65[3];

            if (v44 >= v43 >> 1)
            {
              sub_1C6B39554((v43 > 1), v44 + 1, 1);
            }

            v65[2] = v44 + 1;
            v45 = &v65[5 * v44];
            v45[4] = v40;
            v45[5] = v41;
            *(v45 + 12) = v42;
            v45[7] = 2;
            *(v45 + 64) = 1;
            v39 += 6;
            --v36;
          }

          while (v36);

          goto LABEL_42;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v64 = sub_1C6B65E60(0, v64[2] + 1, 1, v64);
        }

        v4 = v20;
        v25 = v64[2];
        v24 = v64[3];
        a2 = v19;
        if (v25 >= v24 >> 1)
        {
          v64 = sub_1C6B65E60((v24 > 1), v25 + 1, 1, v64);
        }

        ++v10;

        result = swift_unknownObjectRelease();
        v64[2] = v25 + 1;
        v26 = &v64[3 * v25];
        v26[4] = v12;
        v26[5] = v11;
        *(v26 + 12) = v13;
        v9 += 6;
        if (v62 == v10)
        {
          v8 = v61;
          goto LABEL_34;
        }
      }

      v8 = v61;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1C6B65E60(0, v61[2] + 1, 1, v61);
      }

      v28 = v8[2];
      v27 = v8[3];
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v8 = sub_1C6B65E60((v27 > 1), v28 + 1, 1, v8);
      }

LABEL_25:
      v8[2] = v29;
      v31 = &v8[3 * v28];
      v31[4] = v12;
      v31[5] = v11;
      *(v31 + 12) = v13;
      v7 = v10 + 1;
      if (v58 != v10)
      {
        continue;
      }

      goto LABEL_34;
    }
  }

  v60 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0];
  v64 = MEMORY[0x1E69E7CC0];
  v36 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v36)
  {
    goto LABEL_35;
  }

LABEL_41:

  v38 = MEMORY[0x1E69E7CC0];
LABEL_42:

  sub_1C6B38DF0(v38);
  v46 = v60[2];
  if (v46)
  {
    v66 = MEMORY[0x1E69E7CC0];
    sub_1C6B39554(0, v46, 0);
    v47 = v66;
    v48 = v60 + 6;
    do
    {
      v50 = *(v48 - 2);
      v49 = *(v48 - 1);
      v51 = *v48;
      v53 = v66[2];
      v52 = v66[3];

      if (v53 >= v52 >> 1)
      {
        sub_1C6B39554((v52 > 1), v53 + 1, 1);
      }

      v66[2] = v53 + 1;
      v54 = &v66[5 * v53];
      v54[4] = v50;
      v54[5] = v49;
      *(v54 + 12) = v51;
      v54[7] = 6;
      *(v54 + 64) = 1;
      v48 += 6;
      --v46;
    }

    while (v46);
  }

  else
  {

    v47 = MEMORY[0x1E69E7CC0];
  }

  sub_1C6B38DF0(v47);
  v55 = sub_1C6BEEEB4(v64);

  *a4 = v56;
  a4[1] = v55;
  return result;
}

void *sub_1C6CE32AC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 28);
  __swift_destroy_boxed_opaque_existential_1(v0 + 33);
  __swift_destroy_boxed_opaque_existential_1(v0 + 38);
  __swift_destroy_boxed_opaque_existential_1(v0 + 43);
  return v0;
}

uint64_t sub_1C6CE3314()
{
  sub_1C6CE32AC();

  return swift_deallocClassInstance();
}

uint64_t sub_1C6CE339C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1C6B1B3B0(0, a3, a4);

  return sub_1C6D78290();
}

uint64_t sub_1C6CE33F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C6BE1AB0;

  return sub_1C6CDFB54(a1);
}

uint64_t sub_1C6CE348C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C6BB6A40;

  return sub_1C6CDFAC4();
}

uint64_t sub_1C6CE3528(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_1C6B1E6A8(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

unint64_t sub_1C6CE3598()
{
  result = qword_1EDCE2308;
  if (!qword_1EDCE2308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE2308);
  }

  return result;
}

unint64_t sub_1C6CE361C()
{
  result = qword_1EDCDF928;
  if (!qword_1EDCDF928)
  {
    sub_1C6B11374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCDF928);
  }

  return result;
}

void sub_1C6CE3674(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t objectdestroyTm_1(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return MEMORY[0x1EEE6BDD0](v2, 32, 7);
}

uint64_t sub_1C6CE3730()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C6BB6A40;

  return sub_1C6CDF8E0(v2, v3);
}

uint64_t sub_1C6CE37DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C6BE1AB0;

  return sub_1C6D30828(v2, v3, v4);
}

uint64_t objectdestroy_37Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C6CE38DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C6BE1AB0;

  return sub_1C6D30910(a1, v4, v5, v6);
}

void sub_1C6CE39A8(uint64_t a1)
{
  if (!qword_1EDCDFBD0)
  {
    sub_1C6B18500();
    v1 = sub_1C6D794F0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCDFBD0);
    }
  }
}

uint64_t sub_1C6CE3A10(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  v4 = (a3 >> 1) - a2;
  if (a3 >> 1 != a2)
  {
    if (a2 > v3)
    {
      v3 = a2;
    }

    v5 = v3 - a2;
    v6 = (result + 16 * a2 + 8);
    while (v5)
    {
      v8 = *(v6 - 1);
      v7 = *v6;

      sub_1C6B1E6A8(&v9, v8, v7);

      --v5;
      v6 += 2;
      if (!--v4)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1C6CE3AB4()
{
  result = qword_1EC1D9390;
  if (!qword_1EC1D9390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D9390);
  }

  return result;
}

uint64_t sub_1C6CE3B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v13 = *(v3 + 40);
  if (*(v13 + 16) && (v14 = sub_1C6B5DEA8(a2, a3), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 8 * v14);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  swift_endAccess();
  sub_1C6CE5BA0(a1, v12, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_1C6B66698(0, v16[2] + 1, 1, v16);
  }

  v18 = v16[2];
  v17 = v16[3];
  if (v18 >= v17 >> 1)
  {
    v16 = sub_1C6B66698((v17 > 1), v18 + 1, 1, v16);
  }

  v16[2] = v18 + 1;
  sub_1C6CE58A4(v12, v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v18, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v4 + 40);
  *(v4 + 40) = 0x8000000000000000;
  sub_1C6BC5534(v16, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + 40) = v21;
  return swift_endAccess();
}

uint64_t sub_1C6CE3D30(char *a1, uint64_t a2)
{
  v3 = v2;
  v90 = a2;
  v94 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  v91 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94, v5);
  v86[0] = v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v95 = v86 - v9;
  v89 = sub_1C6D77E20();
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89, v10);
  v87 = (v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1C6D75F50();
  v98 = *(v12 - 8);
  v99 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v92 = v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v86 - v17;
  v19 = sub_1C6D76F90();
  v100 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = (v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EDCE9828 != -1)
  {
    swift_once();
  }

  v23 = qword_1EDCE9830;
  sub_1C6B1D314(0);
  v96 = v24;
  v25 = swift_allocObject();
  v97 = xmmword_1C6D7E630;
  *(v25 + 16) = xmmword_1C6D7E630;
  v86[1] = sub_1C6CE590C(&unk_1EDCE6220, MEMORY[0x1E69E3698], MEMORY[0x1E69E36A0]);
  v26 = sub_1C6D7A0E0();
  v28 = v27;
  *(v25 + 56) = MEMORY[0x1E69E6158];
  v93 = sub_1C6B2064C();
  *(v25 + 64) = v93;
  *(v25 + 32) = v26;
  *(v25 + 40) = v28;
  v29 = v23;
  v30 = sub_1C6D79AC0();
  sub_1C6D78D30("Processing action %{public}@", 28, 2, &dword_1C6B09000, v23, v30, v25);

  v31 = *(v3 + 16);
  if (v31 == 2)
  {
    v32 = sub_1C6D79AC0();
    return sub_1C6D78D30("Session tracking disabled, done.", 32, 2, &dword_1C6B09000, v23, v32, MEMORY[0x1E69E7CC0]);
  }

  v34 = v100;
  (*(v100 + 16))(v22, a1, v19);
  v35 = (*(v34 + 88))(v22, v19);
  if (v35 == *MEMORY[0x1E69E3600])
  {
    (*(v34 + 96))(v22, v19);
    v37 = *v22;
    v36 = v22[1];
    sub_1C6D75F30();
    v38 = v103;
    sub_1C6B910A4(v37, v36, v18);
    if (v38)
    {
      (*(v98 + 8))(v18, v99);
    }

    else
    {

      return (*(v98 + 8))(v18, v99);
    }
  }

  v39 = v35;
  if (v35 == *MEMORY[0x1E69E35E8])
  {
    (*(v100 + 96))(v22, v19);
    v41 = *v22;
    v40 = v22[1];
    v42 = v92;
    sub_1C6D75F30();
    sub_1C6B92790(v41, v40, v42);
    (*(v98 + 8))(v42, v99);
  }

  if (v35 == *MEMORY[0x1E69E3638] || v35 == *MEMORY[0x1E69E3668] || v35 == *MEMORY[0x1E69E3650] || v35 == *MEMORY[0x1E69E3688] || v35 == *MEMORY[0x1E69E3658] || v35 == *MEMORY[0x1E69E3680] || v35 == *MEMORY[0x1E69E3610])
  {
    goto LABEL_17;
  }

  if (v35 != *MEMORY[0x1E69E35F8])
  {
    if (v35 == *MEMORY[0x1E69E3628])
    {
LABEL_17:
      (*(v100 + 8))(v22, v19);
      goto LABEL_18;
    }

    if (v35 != *MEMORY[0x1E69E35F0])
    {
      if (v35 != *MEMORY[0x1E69E3630] && v35 != *MEMORY[0x1E69E3660] && v35 != *MEMORY[0x1E69E3670] && v35 != *MEMORY[0x1E69E3690] && v35 != *MEMORY[0x1E69E3648] && v35 != *MEMORY[0x1E69E3640] && v35 != *MEMORY[0x1E69E3678] && v35 != *MEMORY[0x1E69E3608] && v35 != *MEMORY[0x1E69E3620])
      {
        v85 = *MEMORY[0x1E69E3618];
        result = (*(v100 + 8))(v22, v19);
        if (v39 != v85)
        {
          return result;
        }

        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  (*(v100 + 96))(v22, v19);
  __swift_destroy_boxed_opaque_existential_1(v22);
LABEL_18:
  v43 = *(v3 + 24);
  swift_beginAccess();
  v44 = *(v43 + 64);
  if (v44)
  {
    v45 = swift_allocObject();
    *(v45 + 16) = v97;

    v46 = sub_1C6D7A0E0();
    v47 = v93;
    *(v45 + 56) = MEMORY[0x1E69E6158];
    *(v45 + 64) = v47;
    *(v45 + 32) = v46;
    *(v45 + 40) = v48;
    v49 = sub_1C6D79AC0();
    v100 = v29;
    sub_1C6D78D30("Adding action to session. %{public}@", 36, 2, &dword_1C6B09000, v29, v49, v45);

    v50 = v87;
    (*(v88 + 16))(v87, v90, v89);
    v51 = sub_1C6CE59A8(v50, v31 & 0x101);
    v53 = v52;
    v54 = v44;
    v56 = v55;
    v58 = v57;
    v59 = *(*v54 + 104);
    v99 = v54;
    v60 = v54 + v59;
    swift_beginAccess();
    v61 = swift_beginAccess();
    MEMORY[0x1EEE9AC00](v61, v62);
    v86[-6] = a1;
    v86[-5] = v51;
    v86[-4] = v53;
    v86[-3] = v56;
    v86[-2] = v58;
    v86[-1] = v3 + 40;
    sub_1C6CE590C(&qword_1EDCE55C8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEvent);
    v63 = v103;
    sub_1C6D78C30();
    v64 = *(v60 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v60 + 16) = v64;
    v103 = v63;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v64 = sub_1C6B666CC(0, v64[2] + 1, 1, v64);
      *(v60 + 16) = v64;
    }

    v66 = v91;
    v68 = v64[2];
    v67 = v64[3];
    if (v68 >= v67 >> 1)
    {
      v64 = sub_1C6B666CC((v67 > 1), v68 + 1, 1, v64);
    }

    v64[2] = v68 + 1;
    v69 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v70 = *(v66 + 72);
    sub_1C6CE58A4(v95, v64 + v69 + v70 * v68, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    *(v60 + 16) = v64;
    swift_endAccess();
    swift_endAccess();
    sub_1C6B75B88(v51, v53);
    sub_1C6B75B88(v56, v58);
    v71 = *(v60 + 16);
    v72 = *(v71 + 16);
    v73 = v100;
    if (v72)
    {
      v74 = v86[0];
      sub_1C6CE5BA0(v71 + v69 + (v72 - 1) * v70, v86[0], type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      v75 = swift_allocObject();
      *(v75 + 16) = v97;
      v101 = 0;
      v102 = 0xE000000000000000;
      sub_1C6D79E60();
      v76 = v101;
      v77 = v102;
      v78 = v93;
      *(v75 + 56) = MEMORY[0x1E69E6158];
      *(v75 + 64) = v78;
      *(v75 + 32) = v76;
      *(v75 + 40) = v77;
      v79 = sub_1C6D79AC0();
      sub_1C6D78D30("Added event to session %{public}@", 33, 2, &dword_1C6B09000, v73, v79, v75);

      sub_1C6CE5C08(v74, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    }

    v80 = swift_allocObject();
    *(v80 + 16) = v97;
    v81 = *(*(v60 + 16) + 16);
    v82 = MEMORY[0x1E69E65A8];
    *(v80 + 56) = MEMORY[0x1E69E6530];
    *(v80 + 64) = v82;
    *(v80 + 32) = v81;
    sub_1C6D79AC0();
    sub_1C6D78D30("Session now has %lu events", v86[0]);
  }

  else
  {
    v83 = sub_1C6D79AC0();
    sub_1C6D78D30("No session, done.", 17, 2, &dword_1C6B09000, v29, v83, MEMORY[0x1E69E7CC0]);
    sub_1C6CE5954();
    swift_allocError();
    *v84 = xmmword_1C6D8FA00;
    return swift_willThrow();
  }
}

uint64_t sub_1C6CE4908(uint64_t a1)
{
  v2 = v1;
  sub_1C6B68B8C(0);
  v69 = v4;
  v67 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  v68 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1C6D75F50();
  v12 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v13);
  v64 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v65 = &v56 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v56 - v20;
  v22 = sub_1C6D78FA0();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 16) == 2)
  {
    if (qword_1EDCE9828 != -1)
    {
      swift_once();
    }

    v27 = qword_1EDCE9830;
    v28 = sub_1C6D79AC0();
    sub_1C6D78D30("Asked to create a notificaiton session but session tracking is disabled", 71, 2, &dword_1C6B09000, v27, v28, MEMORY[0x1E69E7CC0]);
    return 0;
  }

  else
  {
    v63 = a1;
    sub_1C6D78F90();
    v29 = sub_1C6D78F80();
    v31 = v30;
    v32 = v22;
    v33 = v29;
    (*(v23 + 8))(v26, v32);
    v34 = v31;
    v35 = *(v2 + 32);
    sub_1C6D75F30();
    v36 = sub_1C6B910A4(v33, v31, v21);
    v60 = v35;
    v61 = v33;
    v62 = v34;
    v38 = *(v12 + 8);
    v37 = v12 + 8;
    v39 = v66;
    v59 = v38;
    v38(v21, v66);
    v40 = v63;
    v41 = *(v63 + 16);
    v42 = MEMORY[0x1E69E7CC0];
    if (v41)
    {
      v57 = v36;
      v58 = v37;
      v70[0] = MEMORY[0x1E69E7CC0];
      sub_1C6B39624(0, v41, 0);
      v42 = v70[0];
      v43 = v40 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
      v67 = *(v67 + 72);
      do
      {
        v44 = sub_1C6CE5BA0(v43, v7, sub_1C6B68B8C);
        MEMORY[0x1EEE9AC00](v44, v45);
        *(&v56 - 2) = v47;
        *(&v56 - 1) = v46;
        sub_1C6CE590C(&qword_1EDCE55C8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEvent);
        sub_1C6D78C30();
        sub_1C6CE5C08(v7, sub_1C6B68B8C);
        v70[0] = v42;
        v49 = *(v42 + 16);
        v48 = *(v42 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_1C6B39624((v48 > 1), v49 + 1, 1);
          v42 = v70[0];
        }

        *(v42 + 16) = v49 + 1;
        sub_1C6CE58A4(v11, v42 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v49, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
        v43 += v67;
        --v41;
      }

      while (v41);
      v50 = v66;
      v36 = v57;
    }

    else
    {
      v50 = v39;
    }

    v51 = &v36[*(*v36 + 104)];
    swift_beginAccess();
    *(v51 + 2) = v42;

    v52 = v64;
    sub_1C6D75F40();
    v53 = v65;
    sub_1C6D75EC0();
    v54 = v59;
    v59(v52, v50);
    sub_1C6B92790(v61, v62, v53);
    v54(v53, v50);

    return 1;
  }
}

uint64_t sub_1C6CE5020(__int16 a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = sub_1C6B612F8(MEMORY[0x1E69E7CC0]);
  if (qword_1EDCE9828 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDCE9830;
  sub_1C6B1D314(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C6D7E630;
  sub_1C6D79E60();
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1C6B2064C();
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  v9 = sub_1C6D79AC0();
  sub_1C6D78D30("Session Tracker Initialized with Options %{public}@", 51, 2, &dword_1C6B09000, v7, v9, v8);

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

uint64_t sub_1C6CE5160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6CE57D8(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v12[-v8];
  type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended(0);
  v13 = a2;
  v14 = a3;
  sub_1C6CE590C(&qword_1EC1D7300, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventNotificationVended);
  sub_1C6D78C30();
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  return sub_1C6C50A14(v9, a1);
}

uint64_t sub_1C6CE52DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v27 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v4 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C6D75F50();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C6D789A0();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v25, v8, v16);
  sub_1C6D78980();
  v19 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended(0);
  v20 = *(v19 + 20);
  sub_1C6CE5848(a1 + v20, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  (*(v14 + 32))(a1 + v20, v18, v13);
  (*(v14 + 56))(a1 + v20, 0, 1, v13);
  ObjectType = swift_getObjectType();
  sub_1C6D71158(ObjectType);
  v22 = *(v19 + 24);
  sub_1C6CE5848(a1 + v22, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6CE58A4(v7, a1 + v22, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  return (*(v4 + 56))(a1 + v22, 0, 1, v27);
}

uint64_t sub_1C6CE55B0()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for SessionTrackingOption(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 65282;
  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 16)) - 65282;
  }

  if (v4 == 2)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 16)) - 65282;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 16)) - 65282;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

_WORD *storeEnumTagSinglePayload for SessionTrackingOption(_WORD *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65282;
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1C6CE576C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_WORD *sub_1C6CE5788(_WORD *result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void sub_1C6CE57D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D79C00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C6CE5848(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6CE57D8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6CE58A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6CE590C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C6CE5954()
{
  result = qword_1EC1D9398;
  if (!qword_1EC1D9398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D9398);
  }

  return result;
}

uint64_t sub_1C6CE59A8(uint64_t *a1, __int16 a2)
{
  v4 = sub_1C6D77E20();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 88))(a1, v4);
  if (v6 == *MEMORY[0x1E69B4AF8])
  {
    (*(v5 + 96))(a1, v4);
    result = *a1;
    v8 = a1[1];
    if (a2)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (v6 == *MEMORY[0x1E69B4B08])
  {
    (*(v5 + 96))(a1, v4);
    if ((a2 & 0x100) != 0)
    {
      return 0;
    }

    result = *a1;
    v8 = a1[1];
LABEL_7:
    sub_1C6B1C9F0(result, v8);
    return 0;
  }

  if (v6 != *MEMORY[0x1E69B4AF0])
  {
    if (v6 != *MEMORY[0x1E69B4B00])
    {
      (*(v5 + 8))(a1, v4);
    }

    return 0;
  }

  (*(v5 + 96))(a1, v4);
  result = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  if ((a2 & 1) == 0)
  {
    v12 = a1[2];
    v13 = v11;
    sub_1C6B1C9F0(result, v9);
    v11 = v13;
    v10 = v12;
    result = 0;
  }

  if ((a2 & 0x100) == 0)
  {
    v14 = result;
    sub_1C6B1C9F0(v10, v11);
    return v14;
  }

  return result;
}

uint64_t sub_1C6CE5BA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6CE5C08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_19NewsPersonalization14SessionTrackerC6ErrorsO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C6CE5CA0(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *sub_1C6CE5D44(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSgSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  v2 = ((4 * v1) & 0xC) == 0;
  v3 = ((4 * v1) & 0xC | (v1 >> 2)) ^ 0xF;
  if (v2)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

__n128 __swift_memcpy232_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_1C6CE5EBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C6CE5F04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 232) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6CE5F8C()
{
  v1 = sub_1C6D78A80();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v3 = v0[23];
  v4 = v0[26];
  if (v4 >> 60 == 15 || (v4 & 0xF000000000000000) == 0xB000000000000000)
  {
    v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
    MEMORY[0x1EEE9AC00](v6, v7);
    *(&v10 - 2) = v3;
    sub_1C6CE64F4();
    return sub_1C6D78C30();
  }

  else
  {
    v8 = v0[25];
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    sub_1C6BC372C(v8, v4);
    sub_1C6D78A70();
    sub_1C6CE64F4();
    return sub_1C6D78BE0();
  }
}

uint64_t sub_1C6CE6240()
{
  v1 = sub_1C6D78A80();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v3 = v0[24];
  v4 = v0[28];
  if (v4 >> 60 == 15 || (v4 & 0xF000000000000000) == 0xB000000000000000)
  {
    v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
    MEMORY[0x1EEE9AC00](v6, v7);
    *(&v10 - 2) = v3;
    sub_1C6CE64F4();
    return sub_1C6D78C30();
  }

  else
  {
    v8 = v0[27];
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    sub_1C6BC372C(v8, v4);
    sub_1C6D78A70();
    sub_1C6CE64F4();
    return sub_1C6D78BE0();
  }
}

unint64_t sub_1C6CE64F4()
{
  result = qword_1EDCEA770;
  if (!qword_1EDCEA770)
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCEA770);
  }

  return result;
}

uint64_t sub_1C6CE6564(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C6CE65E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
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

  return v7 + (v9 | v14) + 1;
}

void sub_1C6CE6768(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

double sub_1C6CE69E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 9);
  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = *(a3 + 9);
  v10 = [v3 biases];
  Com_Apple_News_Personalization_SessionEvent.OneOf_Event.string.getter();
  v11 = sub_1C6D79570();

  if ((v6 & 1) != 0 || (v19 = v4, LOBYTE(v20) = v5 & 1, Com_Apple_News_Personalization_FeedType.string.getter(), !v12))
  {
    v13 = 0;
    if ((v9 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v15 = 0;
    goto LABEL_9;
  }

  v13 = sub_1C6D79570();

  if (v9)
  {
    goto LABEL_8;
  }

LABEL_6:
  v19 = v7;
  LOBYTE(v20) = v8 & 1;
  Com_Apple_News_Personalization_GroupType.string.getter();
  if (!v14)
  {
    goto LABEL_8;
  }

  v15 = sub_1C6D79570();

LABEL_9:
  [v10 biasForEventType:v11 feedType:v13 groupType:{v15, v19, v20}];
  v17 = v16;

  return v17;
}

uint64_t Com_Apple_News_Personalization_RecipeSession.startedAt.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6CE993C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_RecipeSession(0);
  sub_1C6B823A4(v1 + *(v7 + 36), v6);
  v8 = sub_1C6D789A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1C6D78990();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B82438(v6);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_RecipeSession(uint64_t a1)
{
  result = qword_1EDCE5508;
  if (!qword_1EDCE5508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL Com_Apple_News_Personalization_RecipeSession.hasStartedAt.getter()
{
  sub_1C6CE993C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_RecipeSession(0);
  sub_1C6B823A4(v0 + *(v5 + 36), v4);
  v6 = sub_1C6D789A0();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B82438(v4);
  return v7;
}

uint64_t Com_Apple_News_Personalization_RecipeSession.startedAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSession(0) + 36);
  sub_1C6B82438(v1 + v3);
  v4 = sub_1C6D789A0();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

BOOL Com_Apple_News_Personalization_RecipeSession.hasEndedAt.getter()
{
  sub_1C6CE993C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_RecipeSession(0);
  sub_1C6B823A4(v0 + *(v5 + 40), v4);
  v6 = sub_1C6D789A0();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B82438(v4);
  return v7;
}

uint64_t Com_Apple_News_Personalization_RecipeSession.endedAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSession(0) + 40);
  sub_1C6B82438(v1 + v3);
  v4 = sub_1C6D789A0();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Com_Apple_News_Personalization_RecipeSession.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Com_Apple_News_Personalization_RecipeSession.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1C6CE70E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6CE993C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_RecipeSession(0);
  sub_1C6B823A4(a1 + *(v8 + 36), v7);
  v9 = sub_1C6D789A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_1C6D78990();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B82438(v7);
  }

  return result;
}

uint64_t sub_1C6CE7250(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D789A0();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSession(0) + 36);
  sub_1C6B82438(a2 + v10);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t (*Com_Apple_News_Personalization_RecipeSession.startedAt.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6CE993C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1C6D789A0();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSession(0) + 36);
  *(v5 + 12) = v16;
  sub_1C6B823A4(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D78990();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B82438(v9);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6B857BC;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_RecipeSession.clearStartedAt()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSession(0) + 36);
  sub_1C6B82438(v0 + v1);
  v2 = sub_1C6D789A0();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_RecipeSession.endedAt.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6CE993C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_RecipeSession(0);
  sub_1C6B823A4(v1 + *(v7 + 40), v6);
  v8 = sub_1C6D789A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1C6D78990();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B82438(v6);
  }

  return result;
}

uint64_t sub_1C6CE7768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6CE993C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_RecipeSession(0);
  sub_1C6B823A4(a1 + *(v8 + 40), v7);
  v9 = sub_1C6D789A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_1C6D78990();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B82438(v7);
  }

  return result;
}

uint64_t sub_1C6CE78D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D789A0();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSession(0) + 40);
  sub_1C6B82438(a2 + v10);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t (*Com_Apple_News_Personalization_RecipeSession.endedAt.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6CE993C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1C6D789A0();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSession(0) + 40);
  *(v5 + 12) = v16;
  sub_1C6B823A4(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D78990();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B82438(v9);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6B83270;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_RecipeSession.clearEndedAt()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSession(0) + 40);
  sub_1C6B82438(v0 + v1);
  v2 = sub_1C6D789A0();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_RecipeSession.events.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Com_Apple_News_Personalization_RecipeSession.clientVersion.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t Com_Apple_News_Personalization_RecipeSession.clientVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void Com_Apple_News_Personalization_RecipeSession.messageVersion.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_News_Personalization_RecipeSession.messageVersion.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

uint64_t Com_Apple_News_Personalization_RecipeSession.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSession(0) + 32);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_Personalization_RecipeSession.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSession(0) + 32);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_Personalization_RecipeSession.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  v2 = type metadata accessor for Com_Apple_News_Personalization_RecipeSession(0);
  sub_1C6D78A30();
  v3 = *(v2 + 36);
  v4 = sub_1C6D789A0();
  v7 = *(*(v4 - 8) + 56);
  (v7)((v4 - 8), a1 + v3, 1, 1, v4);
  v5 = a1 + *(v2 + 40);

  return v7(v5, 1, 1, v4);
}

uint64_t sub_1C6CE7FEC()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D93A0);
  __swift_project_value_buffer(v0, qword_1EC1D93A0);
  sub_1C6CE993C(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C6D80220;
  v5 = v20 + v4;
  v6 = v20 + v4 + *(v2 + 56);
  *(v20 + v4) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6D78D00();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "started_at";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "ended_at";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "events";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "client_version";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "message_version";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_RecipeSession._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5B80 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D93A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_RecipeSession.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C6D78AD0();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0);
            sub_1C6CE98F4(&qword_1EC1D7150, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent, &protocol conformance descriptor for Com_Apple_News_Personalization_RecipeSessionEvent);
            sub_1C6D78BA0();
            break;
          case 5:
LABEL_18:
            sub_1C6D78B80();
            break;
          case 6:
            sub_1C6CE904C();
            sub_1C6D78B00();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            goto LABEL_18;
          case 2:
            sub_1C6CE851C(a1, v5, a2, a3);
            break;
          case 3:
            sub_1C6CE85D0(a1, v5, a2, a3);
            break;
        }
      }

      result = sub_1C6D78AD0();
    }
  }

  return result;
}

uint64_t sub_1C6CE851C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Personalization_RecipeSession(0);
  sub_1C6D789A0();
  sub_1C6CE98F4(&unk_1EDCDFD10, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6CE85D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Personalization_RecipeSession(0);
  sub_1C6D789A0();
  sub_1C6CE98F4(&unk_1EDCDFD10, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_RecipeSession.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1C6D78CC0(), !v4))
  {
    result = sub_1C6CE884C(v3, a1, a2, a3);
    if (!v4)
    {
      sub_1C6CE8A68(v3, a1, a2, a3);
      if (*(v3[2] + 16))
      {
        type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0);
        sub_1C6CE98F4(&qword_1EC1D7150, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent, &protocol conformance descriptor for Com_Apple_News_Personalization_RecipeSessionEvent);
        sub_1C6D78CE0();
      }

      v11 = v3[4];
      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = v3[3] & 0xFFFFFFFFFFFFLL;
      }

      if (v12)
      {
        sub_1C6D78CC0();
      }

      if (v3[5])
      {
        sub_1C6CE904C();
        sub_1C6D78C70();
      }

      type metadata accessor for Com_Apple_News_Personalization_RecipeSession(0);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6CE884C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6CE993C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = sub_1C6D789A0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Personalization_RecipeSession(0);
  sub_1C6B823A4(a1 + *(v14 + 36), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6B82438(v8);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_1C6CE98F4(&unk_1EDCDFD10, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  sub_1C6D78CF0();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1C6CE8A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6CE993C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = sub_1C6D789A0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Personalization_RecipeSession(0);
  sub_1C6B823A4(a1 + *(v14 + 40), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6B82438(v8);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_1C6CE98F4(&unk_1EDCDFD10, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  sub_1C6D78CF0();
  return (*(v10 + 8))(v13, v9);
}

uint64_t Com_Apple_News_Personalization_RecipeSession.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_RecipeSession(0);
  sub_1C6CE98F4(&qword_1EC1D93C0, type metadata accessor for Com_Apple_News_Personalization_RecipeSession, &protocol conformance descriptor for Com_Apple_News_Personalization_RecipeSession);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CE8D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  sub_1C6D78A30();
  v4 = *(a1 + 36);
  v5 = sub_1C6D789A0();
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 40);

  return v8(v6, 1, 1, v5);
}

uint64_t sub_1C6CE8E3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6CE98F4(&qword_1EC1D93D0, type metadata accessor for Com_Apple_News_Personalization_RecipeSession, &protocol conformance descriptor for Com_Apple_News_Personalization_RecipeSession);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6CE8EB8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5B80 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D93A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6CE8F60(uint64_t a1)
{
  v2 = sub_1C6CE98F4(qword_1EDCE5520, type metadata accessor for Com_Apple_News_Personalization_RecipeSession, &protocol conformance descriptor for Com_Apple_News_Personalization_RecipeSession);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6CE8FCC(uint64_t a1, uint64_t a2)
{
  sub_1C6CE98F4(qword_1EDCE5520, type metadata accessor for Com_Apple_News_Personalization_RecipeSession, &protocol conformance descriptor for Com_Apple_News_Personalization_RecipeSession);

  return sub_1C6D78C20();
}

unint64_t sub_1C6CE904C()
{
  result = qword_1EC1D93B8;
  if (!qword_1EC1D93B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D93B8);
  }

  return result;
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B14_RecipeSessionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1C6D789A0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v50[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C6CE993C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v55 = &v50[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v50[-v14];
  sub_1C6B85620(0);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v50[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v50[-v23];
  v25 = *a1;
  v26 = a1[1];
  v57 = a1;
  if ((v25 != *a2 || v26 != a2[1]) && (sub_1C6D7A130() & 1) == 0)
  {
    goto LABEL_18;
  }

  v53 = v8;
  v54 = type metadata accessor for Com_Apple_News_Personalization_RecipeSession(0);
  v27 = *(v54 + 36);
  v28 = *(v17 + 48);
  v29 = v57;
  sub_1C6B823A4(v57 + v27, v24);
  sub_1C6B823A4(a2 + v27, &v24[v28]);
  v56 = v5;
  v30 = *(v5 + 48);
  if (v30(v24, 1, v4) == 1)
  {
    if (v30(&v24[v28], 1, v4) == 1)
    {
      v52 = a2;
      sub_1C6B82438(v24);
      goto LABEL_11;
    }

LABEL_9:
    v31 = v24;
LABEL_17:
    sub_1C6B856B4(v31);
    goto LABEL_18;
  }

  sub_1C6B823A4(v24, v15);
  if (v30(&v24[v28], 1, v4) == 1)
  {
    (*(v56 + 8))(v15, v4);
    goto LABEL_9;
  }

  v52 = a2;
  v32 = v56;
  v33 = v53;
  (*(v56 + 32))(v53, &v24[v28], v4);
  sub_1C6CE98F4(&qword_1EC1D6C58, MEMORY[0x1E69AA900], MEMORY[0x1E69AA908]);
  v51 = sub_1C6D79560();
  v34 = *(v32 + 8);
  v35 = v33;
  v29 = v57;
  v34(v35, v4);
  v34(v15, v4);
  sub_1C6B82438(v24);
  if ((v51 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_11:
  v36 = *(v54 + 40);
  v37 = *(v17 + 48);
  sub_1C6B823A4(v29 + v36, v20);
  v38 = v52 + v36;
  v39 = v52;
  sub_1C6B823A4(v38, &v20[v37]);
  if (v30(v20, 1, v4) != 1)
  {
    v40 = v55;
    sub_1C6B823A4(v20, v55);
    if (v30(&v20[v37], 1, v4) != 1)
    {
      v43 = v56;
      v44 = v53;
      (*(v56 + 32))(v53, &v20[v37], v4);
      sub_1C6CE98F4(&qword_1EC1D6C58, MEMORY[0x1E69AA900], MEMORY[0x1E69AA908]);
      v45 = sub_1C6D79560();
      v46 = *(v43 + 8);
      v47 = v44;
      v29 = v57;
      v46(v47, v4);
      v46(v40, v4);
      sub_1C6B82438(v20);
      if ((v45 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_21;
    }

    (*(v56 + 8))(v40, v4);
    goto LABEL_16;
  }

  if (v30(&v20[v37], 1, v4) != 1)
  {
LABEL_16:
    v31 = v20;
    goto LABEL_17;
  }

  sub_1C6B82438(v20);
LABEL_21:
  if (sub_1C6B5BCD8(v29[2], v39[2]) & 1) != 0 && (v29[3] == v39[3] && v29[4] == v39[4] || (sub_1C6D7A130()))
  {
    v48 = v29[5];
    v49 = v39[5];
    if (*(v29 + 48))
    {
      v48 = v48 != 0;
    }

    if (*(v39 + 48) == 1)
    {
      if (v49)
      {
        if (v48 == 1)
        {
          goto LABEL_34;
        }
      }

      else if (!v48)
      {
LABEL_34:
        sub_1C6D78A40();
        sub_1C6CE98F4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v41 = sub_1C6D79560();
        return v41 & 1;
      }
    }

    else if (v48 == v49)
    {
      goto LABEL_34;
    }
  }

LABEL_18:
  v41 = 0;
  return v41 & 1;
}

void sub_1C6CE97D8(uint64_t a1)
{
  sub_1C6CE993C(319, &qword_1EDCDFA78, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C6D78A40();
    if (v2 <= 0x3F)
    {
      sub_1C6CE993C(319, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C6CE98F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6CE993C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t Com_Apple_News_Personalization_RecipeSessionMessageVersion.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Com_Apple_News_Personalization_RecipeSessionMessageVersion.rawValue.getter()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

unint64_t sub_1C6CE99F0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C6CE9A08()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_1C6CE9A34@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_1C6CE9A50(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

uint64_t sub_1C6CE9A70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6CE904C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

BOOL sub_1C6CE9ABC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

uint64_t sub_1C6CE9AF8()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D93D8);
  __swift_project_value_buffer(v0, qword_1EC1D93D8);
  sub_1C6B4A290(0);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 0;
  *v7 = "RECIPE_SESSION_MESSAGE_VERSION_UNKNOWN";
  *(v7 + 8) = 38;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "RECIPE_SESSION_MESSAGE_VERSION_ONE";
  *(v11 + 1) = 34;
  v11[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_RecipeSessionMessageVersion._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5B88 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D93D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1C6CE9D54()
{
  result = qword_1EC1D93F0;
  if (!qword_1EC1D93F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D93F0);
  }

  return result;
}

unint64_t sub_1C6CE9DAC()
{
  result = qword_1EC1D93F8;
  if (!qword_1EC1D93F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D93F8);
  }

  return result;
}

unint64_t sub_1C6CE9E04()
{
  result = qword_1EC1D9400;
  if (!qword_1EC1D9400)
  {
    sub_1C6CE9E5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D9400);
  }

  return result;
}

void sub_1C6CE9E5C()
{
  if (!qword_1EC1D9408)
  {
    v0 = sub_1C6D79820();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1D9408);
    }
  }
}

unint64_t sub_1C6CE9EB0()
{
  result = qword_1EC1D9410;
  if (!qword_1EC1D9410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D9410);
  }

  return result;
}

uint64_t sub_1C6CE9F04@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5B88 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D93D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEvent.timestamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0) + 24);
  sub_1C6CEFE2C(v1 + v3, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v4 = sub_1C6D789A0();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

BOOL Com_Apple_News_Personalization_RecipeSessionEvent.hasTimestamp.getter()
{
  v1 = MEMORY[0x1E69AA900];
  sub_1C6CEAAE0(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0);
  sub_1C6CEFE9C(v0 + *(v6 + 24), v5, &qword_1EDCE66F0, v1);
  v7 = sub_1C6D789A0();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_1C6CEFE2C(v5, &qword_1EDCE66F0, v1);
  return v8;
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEvent.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69AA900];
  sub_1C6CEAAE0(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0);
  sub_1C6CEFE9C(v1 + *(v8 + 24), v7, &qword_1EDCE66F0, v3);
  v9 = sub_1C6D789A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_1C6D78990();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6CEFE2C(v7, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  }

  return result;
}

uint64_t sub_1C6CEA36C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69AA900];
  sub_1C6CEAAE0(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0);
  sub_1C6CEFE9C(a1 + *(v9 + 24), v8, &qword_1EDCE66F0, v4);
  v10 = sub_1C6D789A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v8, v10);
  }

  sub_1C6D78990();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C6CEFE2C(v8, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  }

  return result;
}

uint64_t sub_1C6CEA504(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D789A0();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0) + 24);
  sub_1C6CEFE2C(a2 + v10, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_RecipeSessionEvent.timestamp.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6CEAAE0(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1C6D789A0();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0) + 24);
  *(v5 + 12) = v16;
  sub_1C6CEFE9C(v1 + v16, v9, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D78990();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6CEFE2C(v9, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6CEA88C;
}

void sub_1C6CEA88C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_1C6CEFE2C(v9 + v3, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1C6CEFE2C(v9 + v3, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

Swift::Void __swiftcall Com_Apple_News_Personalization_RecipeSessionEvent.clearTimestamp()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0) + 24);
  sub_1C6CEFE2C(v0 + v1, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v2 = sub_1C6D789A0();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

void sub_1C6CEAAE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6CEAB6C(uint64_t a1, uint64_t a2)
{
  sub_1C6CEAAE0(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEvent.cookModeViewed.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1C6CEAAE0(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - v6;
  sub_1C6CEFE9C(v2, &v15 - v6, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6CEFE2C(v7, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1C6CEB5D8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
    }

    sub_1C6CEB39C(v7, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v9 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed(0);
  v10 = *(v9 + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = *(v9 + 24);
  v13 = sub_1C6D78A00();
  return (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
}

uint64_t sub_1C6CEAE40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6CEAAE0(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - v6;
  sub_1C6CEFE9C(a1, &v15 - v6, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6CEFE2C(v7, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1C6CEB5D8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
    }

    sub_1C6CEB39C(v7, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v9 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed(0);
  v10 = *(v9 + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  v12 = *(v9 + 24);
  v13 = sub_1C6D78A00();
  return (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
}

void (*Com_Apple_News_Personalization_RecipeSessionEvent.cookModeViewed.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  sub_1C6CEAAE0(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  if (v4)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  v6[1] = v9;
  v11 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed(0);
  v12 = *(*(v11 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v11 - 8) + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v6[3] = v13;
  sub_1C6CEFE9C(v2, v10, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v15 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  v6[4] = v15;
  v16 = *(v15 - 8);
  v6[5] = v16;
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_1C6CEFE2C(v10, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C6CEB5D8(v10, v14, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
      return sub_1C6CEB358;
    }

    sub_1C6CEB39C(v10, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v17 = *(v11 + 20);
  v18 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
  v19 = *(v11 + 24);
  v20 = sub_1C6D78A00();
  (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
  return sub_1C6CEB358;
}

uint64_t sub_1C6CEB39C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEvent.recipeSaved.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1C6CEAAE0(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  sub_1C6CEFE9C(v2, &v12 - v6, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6CEFE2C(v7, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1C6CEB5D8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
    }

    sub_1C6CEB39C(v7, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved(0) + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  return (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
}

uint64_t sub_1C6CEB5D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6CEB640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6CEAAE0(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  sub_1C6CEFE9C(a1, &v12 - v6, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6CEFE2C(v7, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1C6CEB5D8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
    }

    sub_1C6CEB39C(v7, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved(0) + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  return (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
}

uint64_t sub_1C6CEB81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t a8)
{
  v12 = (a5)(0, a2, a3, a4);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v18 - v14;
  sub_1C6CEFF80(a1, &v18 - v14, a6);
  sub_1C6CEFE2C(a2, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  sub_1C6CEB5D8(v15, a2, a7);
  v16 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
}

uint64_t sub_1C6CEB958(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  sub_1C6CEFE2C(v3, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  sub_1C6CEB5D8(a1, v3, a2);
  v6 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v3, 0, 1, v6);
}

void (*Com_Apple_News_Personalization_RecipeSessionEvent.recipeSaved.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6CEAAE0(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6CEFE9C(v1, v9, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6CEFE2C(v9, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
LABEL_15:
    sub_1C6D78A30();
    v16 = *(v10 + 20);
    v17 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    return sub_1C6CEBCB4;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1C6CEB39C(v9, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6CEB5D8(v9, v13, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
  return sub_1C6CEBCB4;
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEvent.recipeViewed.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1C6CEAAE0(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - v6;
  sub_1C6CEFE9C(v2, &v15 - v6, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6CEFE2C(v7, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1C6CEB5D8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
    }

    sub_1C6CEB39C(v7, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = sub_1C6D78A00();
  return (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
}

uint64_t sub_1C6CEBF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6CEAAE0(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - v6;
  sub_1C6CEFE9C(a1, &v15 - v6, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6CEFE2C(v7, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1C6CEB5D8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
    }

    sub_1C6CEB39C(v7, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = sub_1C6D78A00();
  return (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
}

void (*Com_Apple_News_Personalization_RecipeSessionEvent.recipeViewed.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  sub_1C6CEAAE0(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  if (v4)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  v6[1] = v9;
  v11 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed(0);
  v12 = *(*(v11 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v11 - 8) + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v6[3] = v13;
  sub_1C6CEFE9C(v2, v10, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v15 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  v6[4] = v15;
  v16 = *(v15 - 8);
  v6[5] = v16;
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_1C6CEFE2C(v10, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
LABEL_15:
    sub_1C6D78A30();
    v17 = *(v11 + 20);
    v18 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    v19 = *(v11 + 24);
    v20 = sub_1C6D78A00();
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    return sub_1C6CEC43C;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1C6CEB39C(v10, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6CEB5D8(v10, v14, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
  return sub_1C6CEC43C;
}

void sub_1C6CEC480(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), double a7)
{
  v8 = *a1;
  v9 = (*a1)[4];
  v10 = (*a1)[5];
  v11 = (*a1)[2];
  v12 = (*a1)[3];
  v14 = **a1;
  v13 = (*a1)[1];
  if (a2)
  {
    sub_1C6CEFF80((*a1)[3], v11, a5);
    sub_1C6CEFE2C(v14, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    sub_1C6CEB5D8(v11, v14, a3);
    swift_storeEnumTagMultiPayload();
    (*(v10 + 56))(v14, 0, 1, v9);
    sub_1C6CEB39C(v12, a6);
  }

  else
  {
    sub_1C6CEFE2C(**a1, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    sub_1C6CEB5D8(v12, v14, a3);
    swift_storeEnumTagMultiPayload();
    (*(v10 + 56))(v14, 0, 1, v9);
  }

  free(v12);
  free(v11);
  free(v13);

  free(v8);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEvent.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEvent.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0);
  sub_1C6D78A30();
  v4 = *(v3 + 24);
  v5 = sub_1C6D789A0();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t sub_1C6CEC81C()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D9418);
  __swift_project_value_buffer(v0, qword_1EC1D9418);
  sub_1C6CEAAE0(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D80210;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "timestamp";
  *(v7 + 8) = 9;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "cookModeViewed";
  *(v11 + 8) = 14;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "recipeSaved";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "recipeViewed";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_RecipeSessionEvent._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5B90 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9418);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEvent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_1C6CED2F0(v5, a1, a2, a3);
      }

      else if (result == 4)
      {
        sub_1C6CED940(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_1C6CECC08(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_1C6CECCBC(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6CECC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0);
  sub_1C6D789A0();
  sub_1C6CEFA8C(&unk_1EDCDFD10, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6CECCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a3;
  v53 = a4;
  v51 = a2;
  v54 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v46 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v45 = &v42 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6CEAAE0(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v42 - v14;
  v16 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v42 - v23;
  sub_1C6CEAAE0(0, &qword_1EC1D9450, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v32 = &v42 - v31;
  v47 = v5;
  v33 = *(v5 + 56);
  v50 = v4;
  v44 = v33;
  (v33)(&v42 - v31, 1, 1, v4, v30);
  sub_1C6CEFE9C(v54, v15, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v43 = v17;
  v34 = (*(v17 + 48))(v15, 1, v16);
  if (v34 == 1)
  {
    sub_1C6CEFE2C(v15, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
LABEL_5:
    v35 = v50;
    goto LABEL_6;
  }

  sub_1C6CEB5D8(v15, v24, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  sub_1C6CEB5D8(v24, v20, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1C6CEB39C(v20, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    goto LABEL_5;
  }

  sub_1C6CEFE2C(v32, &qword_1EC1D9450, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
  v39 = v45;
  sub_1C6CEB5D8(v20, v45, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
  sub_1C6CEB5D8(v39, v32, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
  v35 = v50;
  v44(v32, 0, 1, v50);
LABEL_6:
  v36 = v48;
  sub_1C6CEFA8C(&qword_1EC1D7158, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed, &protocol conformance descriptor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
  v37 = v49;
  sub_1C6D78BB0();
  if (v37)
  {
    return sub_1C6CEFE2C(v32, &qword_1EC1D9450, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
  }

  sub_1C6CEFE9C(v32, v36, &qword_1EC1D9450, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
  if ((*(v47 + 48))(v36, 1, v35) == 1)
  {
    sub_1C6CEFE2C(v32, &qword_1EC1D9450, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
    return sub_1C6CEFE2C(v36, &qword_1EC1D9450, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
  }

  else
  {
    v40 = v46;
    sub_1C6CEB5D8(v36, v46, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
    if (v34 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6CEFE2C(v32, &qword_1EC1D9450, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
    v41 = v54;
    sub_1C6CEFE2C(v54, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    sub_1C6CEB5D8(v40, v41, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v41, 0, 1, v16);
  }
}

uint64_t sub_1C6CED2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6CEAAE0(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6CEAAE0(0, &qword_1EC1D9458, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6CEFE9C(v55, v15, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6CEFE2C(v15, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6CEB5D8(v15, v24, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    sub_1C6CEB5D8(v24, v20, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v35 = v49;
      sub_1C6CEFE2C(v49, &qword_1EC1D9458, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
      v36 = v46;
      sub_1C6CEB5D8(v20, v46, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
      sub_1C6CEB5D8(v36, v35, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6CEB39C(v20, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6CEFA8C(&qword_1EC1D7160, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved, &protocol conformance descriptor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6CEFE2C(v35, &qword_1EC1D9458, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
  }

  sub_1C6CEFE9C(v35, v38, &qword_1EC1D9458, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6CEFE2C(v35, &qword_1EC1D9458, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
    return sub_1C6CEFE2C(v38, &qword_1EC1D9458, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
  }

  else
  {
    v41 = v45;
    sub_1C6CEB5D8(v38, v45, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6CEFE2C(v35, &qword_1EC1D9458, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
    v42 = v55;
    sub_1C6CEFE2C(v55, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    sub_1C6CEB5D8(v41, v42, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6CED940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6CEAAE0(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6CEAAE0(0, &qword_1EC1D9460, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6CEFE9C(v55, v15, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6CEFE2C(v15, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6CEB5D8(v15, v24, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    sub_1C6CEB5D8(v24, v20, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v35 = v49;
      sub_1C6CEFE2C(v49, &qword_1EC1D9460, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
      v36 = v46;
      sub_1C6CEB5D8(v20, v46, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
      sub_1C6CEB5D8(v36, v35, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6CEB39C(v20, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6CEFA8C(&qword_1EC1D7148, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed, &protocol conformance descriptor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6CEFE2C(v35, &qword_1EC1D9460, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
  }

  sub_1C6CEFE9C(v35, v38, &qword_1EC1D9460, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6CEFE2C(v35, &qword_1EC1D9460, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
    return sub_1C6CEFE2C(v38, &qword_1EC1D9460, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
  }

  else
  {
    v41 = v45;
    sub_1C6CEB5D8(v38, v45, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6CEFE2C(v35, &qword_1EC1D9460, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
    v42 = v55;
    sub_1C6CEFE2C(v55, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    sub_1C6CEB5D8(v41, v42, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEvent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6CEAAE0(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v15 - v10;
  result = sub_1C6CEE190(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1C6CEFE9C(v3, v11, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    v13 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
    if ((*(*(v13 - 8) + 48))(v11, 1, v13) != 1)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_1C6CEE640(v3, a1, a2, a3);
        }

        else
        {
          sub_1C6CEE8A8(v3, a1, a2, a3);
        }
      }

      else
      {
        sub_1C6CEE3DC(v3, a1, a2, a3);
      }

      sub_1C6CEB39C(v11, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    }

    type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6CEE190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v17[1] = a3;
  v5 = MEMORY[0x1E69AA900];
  sub_1C6CEAAE0(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v17 - v8;
  v10 = sub_1C6D789A0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0);
  sub_1C6CEFE9C(a1 + *(v15 + 24), v9, &qword_1EDCE66F0, v5);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C6CEFE2C(v9, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  }

  (*(v11 + 32))(v14, v9, v10);
  sub_1C6CEFA8C(&unk_1EDCDFD10, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  sub_1C6D78CF0();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1C6CEE3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6CEAAE0(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6CEFE9C(a1, v8, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6CEFE2C(v8, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1C6CEB5D8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
    sub_1C6CEFA8C(&qword_1EC1D7158, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed, &protocol conformance descriptor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
    sub_1C6D78CF0();
    return sub_1C6CEB39C(v12, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
  }

  result = sub_1C6CEB39C(v8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6CEE640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6CEAAE0(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6CEFE9C(a1, v8, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6CEFE2C(v8, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C6CEB5D8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
    sub_1C6CEFA8C(&qword_1EC1D7160, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved, &protocol conformance descriptor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
    sub_1C6D78CF0();
    return sub_1C6CEB39C(v12, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
  }

  result = sub_1C6CEB39C(v8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6CEE8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6CEAAE0(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6CEFE9C(a1, v8, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6CEFE2C(v8, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1C6CEB5D8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
    sub_1C6CEFA8C(&qword_1EC1D7148, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed, &protocol conformance descriptor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
    sub_1C6D78CF0();
    return sub_1C6CEB39C(v12, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
  }

  result = sub_1C6CEB39C(v8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t Com_Apple_News_Personalization_RecipeSessionEvent.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0);
  sub_1C6CEFA8C(&qword_1EC1D9430, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent, &protocol conformance descriptor for Com_Apple_News_Personalization_RecipeSessionEvent);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CEEB9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  sub_1C6D78A30();
  v5 = *(a1 + 24);
  v6 = sub_1C6D789A0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_1C6CEECA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6CEFA8C(&qword_1EC1D9448, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent, &protocol conformance descriptor for Com_Apple_News_Personalization_RecipeSessionEvent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6CEED24@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5B90 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9418);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6CEEDCC(uint64_t a1)
{
  v2 = sub_1C6CEFA8C(&qword_1EC1D7150, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent, &protocol conformance descriptor for Com_Apple_News_Personalization_RecipeSessionEvent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6CEEE38(uint64_t a1, uint64_t a2)
{
  sub_1C6CEFA8C(&qword_1EC1D7150, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent, &protocol conformance descriptor for Com_Apple_News_Personalization_RecipeSessionEvent);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B19_RecipeSessionEventV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v3 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E6720];
  sub_1C6CEAAE0(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v52 = &v49 - v9;
  sub_1C6CEFD58(0, &qword_1EC1D6C60, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v53 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v56 = &v49 - v12;
  v13 = sub_1C6D789A0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E69AA900];
  sub_1C6CEAAE0(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], v6);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v49 - v21;
  sub_1C6CEFD58(0, &qword_1EC1D6C50, &qword_1EDCE66F0, v18);
  v24 = v23 - 8;
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v49 - v26;
  v51 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0);
  v28 = *(v51 + 24);
  v29 = *(v24 + 56);
  v57 = a1;
  sub_1C6CEFE9C(a1 + v28, v27, &qword_1EDCE66F0, v18);
  v30 = v58 + v28;
  v31 = v58;
  sub_1C6CEFE9C(v30, &v27[v29], &qword_1EDCE66F0, v18);
  v32 = *(v14 + 48);
  if (v32(v27, 1, v13) != 1)
  {
    sub_1C6CEFE9C(v27, v22, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    if (v32(&v27[v29], 1, v13) != 1)
    {
      (*(v14 + 32))(v17, &v27[v29], v13);
      sub_1C6CEFA8C(&qword_1EC1D6C58, MEMORY[0x1E69AA900], MEMORY[0x1E69AA908]);
      v37 = sub_1C6D79560();
      v38 = *(v14 + 8);
      v38(v17, v13);
      v38(v22, v13);
      sub_1C6CEFE2C(v27, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      if ((v37 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    (*(v14 + 8))(v22, v13);
LABEL_6:
    v33 = &qword_1EC1D6C50;
    v34 = &qword_1EDCE66F0;
    v35 = MEMORY[0x1E69AA900];
    v36 = v27;
LABEL_14:
    sub_1C6CEFDD0(v36, v33, v34, v35);
    goto LABEL_15;
  }

  if (v32(&v27[v29], 1, v13) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6CEFE2C(v27, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
LABEL_8:
  v39 = *(v53 + 48);
  v40 = v56;
  sub_1C6CEFE9C(v57, v56, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  sub_1C6CEFE9C(v31, v40 + v39, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v41 = v55;
  v42 = *(v54 + 48);
  if (v42(v40, 1, v55) == 1)
  {
    if (v42(v40 + v39, 1, v41) == 1)
    {
      sub_1C6CEFE2C(v40, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
LABEL_18:
      sub_1C6D78A40();
      sub_1C6CEFA8C(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v44 = sub_1C6D79560();
      return v44 & 1;
    }

    goto LABEL_13;
  }

  v43 = v52;
  sub_1C6CEFE9C(v40, v52, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  if (v42(v40 + v39, 1, v41) == 1)
  {
    sub_1C6CEB39C(v43, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
LABEL_13:
    v33 = &qword_1EC1D6C60;
    v34 = qword_1EDCE50F8;
    v35 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event;
    v36 = v40;
    goto LABEL_14;
  }

  v46 = v40 + v39;
  v47 = v50;
  sub_1C6CEB5D8(v46, v50, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v48 = _s19NewsPersonalization010Com_Apple_a1_B19_RecipeSessionEventV06OneOf_G0O2eeoiySbAE_AEtFZ_0(v43, v47);
  sub_1C6CEB39C(v47, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  sub_1C6CEB39C(v43, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  sub_1C6CEFE2C(v40, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  if (v48)
  {
    goto LABEL_18;
  }

LABEL_15:
  v44 = 0;
  return v44 & 1;
}