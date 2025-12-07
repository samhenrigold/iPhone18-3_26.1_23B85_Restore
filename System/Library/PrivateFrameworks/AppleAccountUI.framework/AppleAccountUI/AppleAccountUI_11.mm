uint64_t sub_1C5569B64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v114 = a1;
  v82 = sub_1C556F6D0;
  v83 = MEMORY[0x1E6981218];
  v84 = sub_1C556F6D8;
  v85 = MEMORY[0x1E697D510];
  v86 = &unk_1C55CC370;
  v87 = sub_1C556F6D0;
  v153 = 0;
  v152 = 0;
  v151 = 0;
  v150 = 0;
  v138 = 0;
  v127 = 0;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EFF0, &unk_1C55B8058);
  v89 = *(v88 - 8);
  v90 = v88 - 8;
  v91 = (v89[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v88, v2, v3, v4);
  v92 = &v47 - v91;
  v93 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v47 - v91, v6, v7, v8);
  v94 = &v47 - v93;
  v95 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v47 - v93, v10, v11, v12);
  v96 = &v47 - v95;
  v153 = &v47 - v95;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EEF8, &qword_1C55B7F90);
  v98 = (*(*(v97 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v97, v13, v14, v15);
  v99 = &v47 - v98;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EFA8, &qword_1C55B8028);
  v101 = *(v100 - 8);
  v102 = v100 - 8;
  v103 = (*(v101 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v100, v16, v17, v18);
  v104 = &v47 - v103;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EFE8, &qword_1C55B8050);
  v106 = *(v105 - 8);
  v107 = v105 - 8;
  v108 = (v106[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v105, v19, v20, v21);
  v109 = &v47 - v108;
  v110 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v47 - v108, v23, v24, v25);
  v111 = &v47 - v110;
  v112 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v47 - v110, v27, v28, v29);
  v113 = &v47 - v112;
  v152 = &v47 - v112;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF98, &qword_1C55B8020);
  v116 = (*(*(v115 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v114, v30, v31, v32);
  v117 = &v47 - v116;
  v118 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34, &v47 - v116, v35, v36);
  v119 = &v47 - v118;
  v151 = &v47 - v118;
  v150 = v37;
  v121 = *(v37 + 144);
  MEMORY[0x1E69E5928](v121, v38);
  v120 = *MEMORY[0x1E698B760];
  *&v40 = MEMORY[0x1E69E5928](v120, v39).n128_u64[0];
  v122 = [v121 aa:v120 isAccountClass:v40];
  MEMORY[0x1E69E5920](v120);
  MEMORY[0x1E69E5920](v121);
  if (v122)
  {
    v80 = sub_1C5471180();
  }

  else
  {
    v80 = 0;
  }

  if (v80)
  {
    sub_1C5566F14(v99);
    sub_1C55271EC(v114, v137);
    v69 = swift_allocObject();
    memcpy((v69 + 16), v114, 0xA8uLL);
    v71 = sub_1C55688B8();
    sub_1C543AECC();
    sub_1C5595B44();

    sub_1C5370988(v99);
    v41 = *(v114 + 6);
    v70 = &v154;
    v154 = v41;
    sub_1C5409664(&v154, &v136);
    v135 = v154;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
    sub_1C5595FA4();
    v73 = v132;
    v74 = v133;
    v72 = v134;
    sub_1C5373718(v70);
    v130 = v97;
    v131 = v71;
    v76 = 1;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1C5541FD0(v73, v74, v72 & 1, v100, OpaqueTypeConformance2);

    (*(v101 + 8))(v104, v100);
    v128 = v100;
    v129 = OpaqueTypeConformance2;
    v77 = swift_getOpaqueTypeConformance2();
    sub_1C540EFD8(v111, v105, v113);
    v78 = v106[1];
    v79 = v106 + 1;
    v78(v111, v105);
    v127 = v111;
    v67 = v106[2];
    v66 = v106 + 2;
    v67(v109, v113, v105);
    sub_1C540EFD8(v109, v105, v111);
    v78(v109, v105);
    v67(v109, v111, v105);
    v68 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EFB0, &qword_1C55B8030);
    v42 = sub_1C556BBA8();
    v123 = v100;
    v124 = v68;
    v125 = OpaqueTypeConformance2;
    v126 = v42;
    v43 = swift_getOpaqueTypeConformance2();
    sub_1C540FD1C(v109, v105, v88, v77, v43, v117);
    v78(v109, v105);
    sub_1C5371E28(v117, v119);
    v78(v111, v105);
    v78(v113, v105);
  }

  else
  {
    sub_1C5566F14(v99);
    sub_1C55271EC(v114, &v149);
    v51 = 184;
    v52 = 7;
    v49 = swift_allocObject();
    v53 = 168;
    memcpy((v49 + 16), v114, 0xA8uLL);
    v54 = sub_1C55688B8();
    sub_1C543AECC();
    sub_1C5595B44();

    sub_1C5370988(v99);
    v44 = *(v114 + 6);
    v50 = &v155;
    v155 = v44;
    sub_1C5409664(&v155, &v148);
    v147 = v155;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
    sub_1C5595FA4();
    v57 = v145[21];
    v58 = v145[22];
    v55 = v146;
    sub_1C5373718(v50);
    sub_1C55271EC(v114, v145);
    v56 = swift_allocObject();
    memcpy((v56 + 16), v114, v53);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EFB0, &qword_1C55B8030);
    v143 = v97;
    v144 = v54;
    v62 = 1;
    v60 = swift_getOpaqueTypeConformance2();
    v61 = sub_1C556BBA8();
    sub_1C5595D34();

    (*(v101 + 8))(v104, v100);
    v139 = v100;
    v140 = v59;
    v141 = v60;
    v142 = v61;
    v63 = swift_getOpaqueTypeConformance2();
    sub_1C540EFD8(v94, v88, v96);
    v64 = v89[1];
    v65 = v89 + 1;
    v64(v94, v88);
    v138 = v94;
    v48 = v89[2];
    v47 = v89 + 2;
    v48(v92, v96, v88);
    sub_1C540EFD8(v92, v88, v94);
    v64(v92, v88);
    v48(v92, v94, v88);
    v137[21] = v100;
    v137[22] = v60;
    v45 = swift_getOpaqueTypeConformance2();
    sub_1C54108A0(v92, v105, v88, v45, v63, v117);
    v64(v92, v88);
    sub_1C5371E28(v117, v119);
    v64(v94, v88);
    v64(v96, v88);
  }

  sub_1C5371F38(v119, v117);
  sub_1C556BA00();
  sub_1C540EFD8(v117, v115, v81);
  sub_1C5372048(v117);
  return sub_1C5372048(v119);
}

void *sub_1C556A768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[8] = a1;
  v21 = *(a1 + 112);
  sub_1C550606C(&v21, &v18);
  v17 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EEE0, &qword_1C55B7F78);
  sub_1C5595FA4();
  sub_1C55060CC(&v21);
  MEMORY[0x1E69E5928](*(a1 + 144), v2);
  nullsub_1();
  v16[0] = v3;
  v16[1] = v4;
  v16[2] = v5;
  v16[3] = v6;
  sub_1C55271EC(a1, v15);
  v9 = swift_allocObject();
  memcpy((v9 + 16), a1, 0xA8uLL);
  sub_1C55000E0();
  sub_1C5595B04();
  sub_1C5411348(sub_1C556F6E0, v9);
  sub_1C54FFFEC(v16);
  memcpy(__dst, v19, sizeof(__dst));
  memcpy(v14, __dst, sizeof(v14));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EFB0, &qword_1C55B8030);
  sub_1C556BBA8();
  sub_1C540EFD8(v14, v11, v20);
  sub_1C556F6E8(v14);
  memcpy(v23, v20, sizeof(v23));
  sub_1C556F788(v23, v13);
  memcpy(v12, v23, sizeof(v12));
  sub_1C540EFD8(v12, v11, a2);
  sub_1C556F6E8(v12);
  return sub_1C556F6E8(v20);
}

uint64_t sub_1C556A9D8()
{
  v177 = 0;
  v232 = 0;
  v178 = 0;
  v224 = 0;
  v223 = 0;
  v210 = 0;
  v205 = 0;
  v197 = 0;
  v179 = sub_1C5594C74();
  v180 = *(v179 - 8);
  v181 = v180;
  v184 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v179 - 8, v179, v1, v2);
  v186 = (v184 + 15) & 0xFFFFFFFFFFFFFFF0;
  v182 = &v58 - v186;
  MEMORY[0x1EEE9AC00](&v58 - v186, v3, v4, v5);
  v183 = &v58 - v186;
  MEMORY[0x1EEE9AC00](&v58 - v186, v6, v7, v8);
  v185 = &v58 - v186;
  MEMORY[0x1EEE9AC00](&v58 - v186, v9, v10, v11);
  v187 = &v58 - v186;
  v232 = v0;
  v235 = *(v0 + 112);
  v189 = &v235;
  sub_1C550606C(&v235, &v231);
  v230 = v235;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EEE0, &qword_1C55B7F78);
  sub_1C5595F84();
  v191 = v229;
  v190 = v229;
  sub_1C55060CC(v189);
  v192 = [v191 imageData];
  if (v192)
  {
    v175 = v192;
    v170 = v192;
    v171 = sub_1C55948D4();
    v172 = v12;

    v173 = v171;
    v174 = v172;
  }

  else
  {
    v173 = 0;
    v174 = 0xF000000000000000;
  }

  v168 = v174;
  v169 = v173;
  if (v174 >> 60 != 15)
  {
    v166 = v169;
    v167 = v168;
    v161 = v168;
    v162 = v169;
    v223 = v169;
    v224 = v168;

    v234 = *(v176 + 112);
    v163 = &v234;
    sub_1C550606C(&v234, &v222);
    v221 = v234;
    sub_1C5595F84();
    v164 = v220;
    sub_1C55060CC(v163);
    [v164 cropRect];
    v219 = v13;
    v218 = v14;
    v217 = v15;
    v216 = v16;
    v165.size.height = v13;
    v165.size.width = v14;
    v165.origin.y = v15;
    v165.origin.x = v16;

    v215 = v165;
    if (!CGRectIsNull(v165))
    {
      sub_1C5418C84();
      sub_1C544DE30(v162, v161);
      v160 = sub_1C54493D0(v162, v161);
      if (v160)
      {
        v159 = v160;
        v151 = v160;
        v205 = v160;
        v233 = *(v176 + 112);
        v152 = &v233;
        sub_1C550606C(&v233, &v204);
        v203 = v233;
        sub_1C5595F84();
        v153 = v202;
        sub_1C55060CC(v152);
        [v153 cropRect];
        v201 = v17;
        v200 = v18;
        v199 = v19;
        v198 = v20;
        v157 = v17;
        v156 = v18;
        v155 = v19;
        v154 = v20;

        v21 = sub_1C5449944(v154, v155, v156, v157);
        v158 = v21;
        if (v21)
        {
          v150 = v158;
          v22 = v187;
          v144 = v158;
          v197 = v158;
          v23 = sub_1C54B05F8();
          (*(v181 + 16))(v22, v23, v179);
          v148 = sub_1C5594C54();
          v145 = v148;
          v147 = sub_1C5596974();
          v146 = v147;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
          v149 = sub_1C5596E04();
          if (os_log_type_enabled(v148, v147))
          {
            v25 = v178;
            v135 = sub_1C5596A74();
            v131 = v135;
            v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
            v133 = 0;
            v136 = sub_1C5419DC0(0, v132, v132);
            v134 = v136;
            v137 = sub_1C5419DC0(v133, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
            v196 = v135;
            v195 = v136;
            v194 = v137;
            v138 = 0;
            v139 = &v196;
            sub_1C5419E14(0, &v196);
            sub_1C5419E14(v138, v139);
            v193 = v149;
            v140 = &v58;
            MEMORY[0x1EEE9AC00](&v58, v26, v27, v28);
            v141 = &v58 - 6;
            *(&v58 - 4) = v29;
            *(&v58 - 3) = &v195;
            *(&v58 - 2) = &v194;
            v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
            sub_1C5419F0C();
            sub_1C55966B4();
            v143 = v25;
            if (v25)
            {
              __break(1u);
            }

            else
            {
              _os_log_impl(&dword_1C5355000, v145, v146, "Setting image to croppedUIImage...", v131, 2u);
              v129 = 0;
              sub_1C5419E74(v134, 0, v132);
              sub_1C5419E74(v137, v129, MEMORY[0x1E69E7CA0] + 8);
              sub_1C5596A54();

              v130 = v143;
            }
          }

          else
          {

            v130 = v178;
          }

          v127 = v130;

          (*(v181 + 8))(v187, v179);
          v30 = v144;
          v31 = sub_1C5595ED4();
          sub_1C5564EEC(v31);

          v128 = v127;
LABEL_32:
          v79 = v128;
          sub_1C544DEAC(v162, v161);
          return v79;
        }
      }
    }

    sub_1C5418C84();
    sub_1C544DE30(v162, v161);
    v126 = sub_1C54493D0(v162, v161);
    if (v126)
    {
      v125 = v126;
      v32 = v185;
      v119 = v126;
      v210 = v126;
      v33 = sub_1C54B05F8();
      (*(v181 + 16))(v32, v33, v179);
      v123 = sub_1C5594C54();
      v120 = v123;
      v122 = sub_1C5596974();
      v121 = v122;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
      v124 = sub_1C5596E04();
      if (os_log_type_enabled(v123, v122))
      {
        v34 = v178;
        v110 = sub_1C5596A74();
        v106 = v110;
        v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
        v108 = 0;
        v111 = sub_1C5419DC0(0, v107, v107);
        v109 = v111;
        v112 = sub_1C5419DC0(v108, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v209 = v110;
        v208 = v111;
        v207 = v112;
        v113 = 0;
        v114 = &v209;
        sub_1C5419E14(0, &v209);
        sub_1C5419E14(v113, v114);
        v206 = v124;
        v115 = &v58;
        MEMORY[0x1EEE9AC00](&v58, v35, v36, v37);
        v116 = &v58 - 6;
        *(&v58 - 4) = v38;
        *(&v58 - 3) = &v208;
        *(&v58 - 2) = &v207;
        v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
        sub_1C5419F0C();
        sub_1C55966B4();
        v118 = v34;
        if (v34)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1C5355000, v120, v121, "Setting image to newImage...", v106, 2u);
          v104 = 0;
          sub_1C5419E74(v109, 0, v107);
          sub_1C5419E74(v112, v104, MEMORY[0x1E69E7CA0] + 8);
          sub_1C5596A54();

          v105 = v118;
        }
      }

      else
      {

        v105 = v178;
      }

      v102 = v105;

      (*(v181 + 8))(v185, v179);
      v39 = v119;
      v40 = sub_1C5595ED4();
      sub_1C5564EEC(v40);

      v103 = v102;
    }

    else
    {
      v41 = v183;
      v42 = sub_1C54B05F8();
      (*(v181 + 16))(v41, v42, v179);
      v100 = sub_1C5594C54();
      v97 = v100;
      v99 = sub_1C5596974();
      v98 = v99;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
      v101 = sub_1C5596E04();
      if (os_log_type_enabled(v100, v99))
      {
        v43 = v178;
        v88 = sub_1C5596A74();
        v84 = v88;
        v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
        v86 = 0;
        v89 = sub_1C5419DC0(0, v85, v85);
        v87 = v89;
        v90 = sub_1C5419DC0(v86, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v214 = v88;
        v213 = v89;
        v212 = v90;
        v91 = 0;
        v92 = &v214;
        sub_1C5419E14(0, &v214);
        sub_1C5419E14(v91, v92);
        v211 = v101;
        v93 = &v58;
        MEMORY[0x1EEE9AC00](&v58, v44, v45, v46);
        v94 = &v58 - 6;
        *(&v58 - 4) = v47;
        *(&v58 - 3) = &v213;
        *(&v58 - 2) = &v212;
        v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
        sub_1C5419F0C();
        sub_1C55966B4();
        v96 = v43;
        if (v43)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1C5355000, v97, v98, "Failed to create UIImage from data. Setting to default placeholder image...", v84, 2u);
          v82 = 0;
          sub_1C5419E74(v87, 0, v85);
          sub_1C5419E74(v90, v82, MEMORY[0x1E69E7CA0] + 8);
          sub_1C5596A54();

          v83 = v96;
        }
      }

      else
      {

        v83 = v178;
      }

      v81 = v83;

      (*(v181 + 8))(v183, v179);
      sub_1C55965F4("person.crop.circle.fill", 23, 1);
      v48 = sub_1C5595EF4();
      sub_1C5564EEC(v48);
      v103 = v81;
    }

    v128 = v103;
    goto LABEL_32;
  }

  v49 = v182;

  v50 = sub_1C54B05F8();
  (*(v181 + 16))(v49, v50, v179);
  v77 = sub_1C5594C54();
  v74 = v77;
  v76 = sub_1C5596944();
  v75 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v78 = sub_1C5596E04();
  if (os_log_type_enabled(v77, v76))
  {
    v51 = v178;
    v65 = sub_1C5596A74();
    v61 = v65;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v63 = 0;
    v66 = sub_1C5419DC0(0, v62, v62);
    v64 = v66;
    v67 = sub_1C5419DC0(v63, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v228 = v65;
    v227 = v66;
    v226 = v67;
    v68 = 0;
    v69 = &v228;
    sub_1C5419E14(0, &v228);
    sub_1C5419E14(v68, v69);
    v225 = v78;
    v70 = &v58;
    MEMORY[0x1EEE9AC00](&v58, v52, v53, v54);
    v71 = &v58 - 6;
    *(&v58 - 4) = v55;
    *(&v58 - 3) = &v227;
    *(&v58 - 2) = &v226;
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v73 = v51;
    if (v51)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v74, v75, "AppleAccountHeaderView: pickerContact.imageData is nil. Using default avatar.", v61, 2u);
      v59 = 0;
      sub_1C5419E74(v64, 0, v62);
      sub_1C5419E74(v67, v59, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();

      v60 = v73;
    }
  }

  else
  {

    v60 = v178;
  }

  v58 = v60;

  (*(v181 + 8))(v182, v179);
  sub_1C55965F4("person.crop.circle.fill", 23, 1);
  v56 = sub_1C5595EF4();
  sub_1C5564EEC(v56);
  return v58;
}

unint64_t sub_1C556BA00()
{
  v2 = qword_1EC15EFA0;
  if (!qword_1EC15EFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EF98, &qword_1C55B8020);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EFA8, &qword_1C55B8028);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EEF8, &qword_1C55B7F90);
    sub_1C55688B8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EFB0, &qword_1C55B8030);
    sub_1C556BBA8();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EFA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556BBA8()
{
  v2 = qword_1EC15A028;
  if (!qword_1EC15A028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EFB0, &qword_1C55B8030);
    sub_1C55000E0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15A028);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C556BC4C(uint64_t a1)
{
  v36 = a1;
  v45 = 0;
  v56 = 0;
  v35 = 0;
  v42 = sub_1C5594C74();
  v37 = v42;
  v38 = *(v42 - 8);
  v41 = v38;
  v39 = v38;
  MEMORY[0x1EEE9AC00](v36, v42, v1, v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v4;
  v56 = v5;
  v6 = sub_1C54B05F8();
  (*(v41 + 16))(v4, v6, v42);
  v47 = sub_1C5594C54();
  v43 = v47;
  v46 = sub_1C5596944();
  v44 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v48 = sub_1C5596E04();
  if (os_log_type_enabled(v47, v46))
  {
    v7 = v35;
    v26 = sub_1C5596A74();
    v22 = v26;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v24 = 0;
    v27 = sub_1C5419DC0(0, v23, v23);
    v25 = v27;
    v28 = sub_1C5419DC0(v24, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v52[0] = v26;
    v51 = v27;
    v50 = v28;
    v29 = 0;
    v30 = v52;
    sub_1C5419E14(0, v52);
    sub_1C5419E14(v29, v30);
    v49 = v48;
    v31 = &v15;
    MEMORY[0x1EEE9AC00](&v15, v8, v9, v10);
    v32 = &v15 - 6;
    *(&v15 - 4) = v11;
    *(&v15 - 3) = &v51;
    *(&v15 - 2) = &v50;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v34 = v7;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v43, v44, "Contact changed. Updating profile picture...", v22, 2u);
      v20 = 0;
      sub_1C5419E74(v25, 0, v23);
      sub_1C5419E74(v28, v20, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();

      v21 = v34;
    }
  }

  else
  {

    v21 = v35;
  }

  (*(v39 + 8))(v40, v37);
  sub_1C5522CD8();
  v16 = *(v36 + 160);
  v12 = v16;
  v19 = sub_1C5566ED4(v16);
  v57 = *(v36 + 112);
  v18 = &v57;
  sub_1C550606C(&v57, &v55);
  sub_1C550606C(v18, &v54);
  v53 = v57;
  v13 = v19;
  v52[1] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EEE0, &qword_1C55B7F78);
  v17 = &v53;
  sub_1C5595F94();
  sub_1C55060CC(v17);
  sub_1C55060CC(v18);

  return sub_1C556A9D8();
}

unint64_t sub_1C556C144()
{
  v2 = qword_1EC15EFC0;
  if (!qword_1EC15EFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EF68, &qword_1C55B7FF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EFC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556C1CC()
{
  v2 = qword_1EC15EFC8;
  if (!qword_1EC15EFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EFB8, &qword_1C55B8038);
    sub_1C556C264();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EFC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556C264()
{
  v2 = qword_1EC15EFD0;
  if (!qword_1EC15EFD0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EFD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C556C2DC(uint64_t a1)
{
  if ((*(a1 + 8) & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_1C544DEAC(*a1, *(a1 + 8));
  }

  return a1;
}

uint64_t sub_1C556C32C(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v43 = a1;
  v60 = 0;
  v59 = 0;
  v42 = 0;
  v45 = sub_1C5594C74();
  v46 = *(v45 - 8);
  v47 = v46;
  MEMORY[0x1EEE9AC00](v43, v44, v45, v2);
  v48 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v4;
  v59 = v5;
  v50 = *(v5 + 144);
  v6 = v50;
  v49 = *MEMORY[0x1E6959640];
  v7 = v49;
  v51 = [v50 isEnabledForDataclass_];

  if (v51)
  {
    return v42;
  }

  v8 = v48;
  v9 = sub_1C54B05F8();
  (*(v47 + 16))(v8, v9, v45);
  v40 = sub_1C5594C54();
  v37 = v40;
  v39 = sub_1C5596944();
  v38 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v41 = sub_1C5596E04();
  if (os_log_type_enabled(v40, v39))
  {
    v10 = v42;
    v28 = sub_1C5596A74();
    v24 = v28;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v26 = 0;
    v29 = sub_1C5419DC0(0, v25, v25);
    v27 = v29;
    v30 = sub_1C5419DC0(v26, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v55 = v28;
    v54 = v29;
    v53 = v30;
    v31 = 0;
    v32 = &v55;
    sub_1C5419E14(0, &v55);
    sub_1C5419E14(v31, v32);
    v52 = v41;
    v33 = &v17;
    MEMORY[0x1EEE9AC00](&v17, v11, v12, v13);
    v34 = &v17 - 6;
    *(&v17 - 4) = v14;
    *(&v17 - 3) = &v54;
    *(&v17 - 2) = &v53;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v36 = v10;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v37, v38, "SNaP editor dismissed. Syncing me card to server...", v24, 2u);
      v22 = 0;
      sub_1C5419E74(v27, 0, v25);
      sub_1C5419E74(v30, v22, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();

      v23 = v36;
    }
  }

  else
  {

    v23 = v42;
  }

  v20 = v23;

  (*(v47 + 8))(v48, v45);
  v61 = *(v44 + 128);
  v18 = &v61;
  sub_1C545D998(&v61, &v58);
  v57 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EEE8, &qword_1C55B7F80);
  sub_1C5595F84();
  v15 = v56;
  v19 = v56;
  sub_1C5436F54(v18);
  (*(*v15 + 104))();

  return v20;
}

uint64_t sub_1C556C844(uint64_t a1)
{
  v30 = a1;
  v39 = 0;
  v47 = 0;
  v29 = 0;
  v36 = sub_1C5594C74();
  v31 = v36;
  v32 = *(v36 - 8);
  v35 = v32;
  v33 = v32;
  MEMORY[0x1EEE9AC00](v30, v36, v1, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v4;
  v47 = v5;
  v6 = sub_1C54B05F8();
  (*(v35 + 16))(v4, v6, v36);
  v41 = sub_1C5594C54();
  v37 = v41;
  v40 = sub_1C5596944();
  v38 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v42 = sub_1C5596E04();
  if (os_log_type_enabled(v41, v40))
  {
    v7 = v29;
    v20 = sub_1C5596A74();
    v16 = v20;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v18 = 0;
    v21 = sub_1C5419DC0(0, v17, v17);
    v19 = v21;
    v22 = sub_1C5419DC0(v18, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v46 = v20;
    v45 = v21;
    v44 = v22;
    v23 = 0;
    v24 = &v46;
    sub_1C5419E14(0, &v46);
    sub_1C5419E14(v23, v24);
    v43 = v42;
    v25 = &v13;
    MEMORY[0x1EEE9AC00](&v13, v8, v9, v10);
    v26 = &v13 - 6;
    *(&v13 - 4) = v11;
    *(&v13 - 3) = &v45;
    *(&v13 - 2) = &v44;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v28 = v7;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v37, v38, "AppleAccountHeaderView onAppear was called. Updating image and account info...", v16, 2u);
      v14 = 0;
      sub_1C5419E74(v19, 0, v17);
      sub_1C5419E74(v22, v14, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();

      v15 = v28;
    }
  }

  else
  {

    v15 = v29;
  }

  (*(v33 + 8))(v34, v31);
  sub_1C556A9D8();
  return sub_1C556CE80();
}

unint64_t sub_1C556CC08()
{
  v2 = qword_1EC15EFF8;
  if (!qword_1EC15EFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EF78, &qword_1C55B8000);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15EFF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556CC90()
{
  v2 = qword_1EC15F000;
  if (!qword_1EC15F000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EF80, &qword_1C55B8008);
    sub_1C556CC08();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F000);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556CD34()
{
  v2 = qword_1EC15F008;
  if (!qword_1EC15F008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EF88, &qword_1C55B8010);
    sub_1C556CC90();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F008);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556CDD8()
{
  v2 = qword_1EC15F010;
  if (!qword_1EC15F010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EF90, &qword_1C55B8018);
    sub_1C556CD34();
    sub_1C5410EE0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F010);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C556CE80()
{
  v105 = 0;
  v140 = 0;
  v139 = 0;
  v125 = 0;
  v124 = 0;
  v106 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D1E8, &unk_1C55B1AB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v1, v2, v3);
  v107 = &v32 - v106;
  v108 = sub_1C5594834();
  v109 = *(v108 - 8);
  v110 = v109;
  v111 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v108 - 8, v108, v4, v5);
  v113 = (v111 + 15) & 0xFFFFFFFFFFFFFFF0;
  v112 = &v32 - v113;
  MEMORY[0x1EEE9AC00](&v32 - v113, v6, v7, v8);
  v114 = &v32 - v113;
  v140 = &v32 - v113;
  v139 = v0;
  v115 = *(v0 + 144);
  v9 = v115;
  v116 = *MEMORY[0x1E6959750];
  v10 = v116;
  v117 = v116;
  v11 = sub_1C5596574();
  v136 = MEMORY[0x1E69E6158];
  v135[0] = v11;
  v135[1] = v12;
  if (MEMORY[0x1E69E6158])
  {
    v98 = v136;
    v101 = v135;
    v13 = __swift_project_boxed_opaque_existential_0(v135, v136);
    v96 = *(v98 - 8);
    v97 = v96;
    v100 = &v32;
    v15 = MEMORY[0x1EEE9AC00](&v32, v13, v98, v14);
    v99 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v97 + 16))(v15);
    v102 = sub_1C5596E14();
    (*(v97 + 8))(v99, v98);
    __swift_destroy_boxed_opaque_existential_0(v101);
    v103 = v102;
  }

  else
  {
    v103 = 0;
  }

  v93 = v103;
  v95 = [v115 objectForKeyedSubscript_];
  v94 = v95;
  swift_unknownObjectRelease();
  if (v95)
  {
    v92 = v94;
    v91 = v94;
    v90 = v118;
    sub_1C5596AF4();
    sub_1C551433C(v90, &v133);
    swift_unknownObjectRelease();
  }

  else
  {
    v133 = 0uLL;
    v134 = 0uLL;
  }

  v138 = v134;
  v137 = v133;

  if (*(&v138 + 1))
  {
    if (swift_dynamicCast())
    {
      v88 = v118[4];
      v89 = v118[5];
    }

    else
    {
      v88 = 0;
      v89 = 0;
    }

    v85 = v89;
    v84 = v88;

    v86 = v84;
    v87 = v85;
  }

  else
  {

    sub_1C544435C(&v137);
    v86 = 0;
    v87 = 0;
  }

  v79 = v87;
  v80 = v86;
  v81 = *(v104 + 144);
  v17 = v81;
  v82 = *MEMORY[0x1E6959788];
  v18 = v82;
  v83 = v82;
  v19 = sub_1C5596574();
  v130 = MEMORY[0x1E69E6158];
  v129[0] = v19;
  v129[1] = v20;
  if (MEMORY[0x1E69E6158])
  {
    v73 = v130;
    v76 = v129;
    v21 = __swift_project_boxed_opaque_existential_0(v129, v130);
    v71 = *(v73 - 8);
    v72 = v71;
    v75 = &v32;
    v23 = MEMORY[0x1EEE9AC00](&v32, v21, v73, v22);
    v74 = &v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v72 + 16))(v23);
    v77 = sub_1C5596E14();
    (*(v72 + 8))(v74, v73);
    __swift_destroy_boxed_opaque_existential_0(v76);
    v78 = v77;
  }

  else
  {
    v78 = 0;
  }

  v68 = v78;
  v70 = [v81 objectForKeyedSubscript_];
  v69 = v70;
  swift_unknownObjectRelease();
  if (v70)
  {
    v67 = v69;
    v66 = v69;
    v65 = v119;
    sub_1C5596AF4();
    sub_1C551433C(v65, &v127);
    swift_unknownObjectRelease();
  }

  else
  {
    v127 = 0uLL;
    v128 = 0uLL;
  }

  v132 = v128;
  v131 = v127;

  if (*(&v132 + 1))
  {
    if (swift_dynamicCast())
    {
      v63 = v119[4];
      v64 = v119[5];
    }

    else
    {
      v63 = 0;
      v64 = 0;
    }

    v60 = v64;
    v59 = v63;

    v61 = v59;
    v62 = v60;
  }

  else
  {

    sub_1C544435C(&v131);
    v61 = 0;
    v62 = 0;
  }

  v25 = v112;
  v48 = v62;
  v47 = v61;
  (*(v110 + 56))(v107, 1, 1, v108);
  v51 = 0;
  sub_1C5594804();
  v53 = objc_opt_self();
  (*(v110 + 16))(v25, v114, v108);
  v54 = sub_1C5594814();
  v49 = *(v110 + 8);
  v50 = (v110 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v49(v112, v108);
  type metadata accessor for Options(v51);
  v52 = sub_1C5596E04();
  sub_1C556E510();
  sub_1C5596B04();
  v55 = [v53 localizedStringFromPersonNameComponents:v54 style:2 options:v126];

  v26 = sub_1C5596574();
  sub_1C5565460(v26, v27);

  v57 = *(v104 + 144);
  v56 = v57;
  v28 = v57;
  v58 = [v57 aa_formattedUsername];
  if (v58)
  {
    v46 = v58;
    v41 = v58;
    v42 = sub_1C5596574();
    v43 = v29;

    v44 = v42;
    v45 = v43;
  }

  else
  {
    v44 = 0;
    v45 = 0;
  }

  v39 = v45;
  v40 = v44;
  if (v45)
  {
    v37 = v40;
    v38 = v39;
    v36 = v39;
    v33 = v40;
    v124 = v40;
    v125 = v39;

    sub_1C5594CF4();
    v30 = *(v104 + 40);
    v142 = *(v104 + 56);
    v141 = v30;
    v35 = &v141;
    sub_1C55653C8(&v141, v123);
    sub_1C55653C8(v35, v122);
    v121 = v142;
    v120 = v141;
    sub_1C5594CF4();
    v119[6] = v33;
    v119[7] = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EED8, &unk_1C55B7F68);
    v34 = &v120;
    sub_1C5595F94();
    sub_1C5565428(v34);
    sub_1C5565428(v35);
  }

  else
  {
  }

  return (v49)(v114, v108);
}

uint64_t sub_1C556D94C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v44 = a1;
  v43 = a2;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F020, &qword_1C55B8068);
  v37 = (*(*(v36 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36, v3, v4, v5);
  v38 = &v26 - v37;
  v39 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v26 - v37, v7, v8, v9);
  v40 = &v26 - v39;
  v41 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v26 - v39, v11, v12, v13);
  v42 = &v26 - v41;
  v59 = &v26 - v41;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F028, &qword_1C55B8070);
  v49 = *(*(v45 - 8) + 64);
  v46 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v44, v14, v15, v16);
  v47 = &v26 - v46;
  v48 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17, &v26 - v46, v18, v19);
  v50 = &v26 - v48;
  v51 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20, &v26 - v48, v21, v22);
  v52 = &v26 - v51;
  v58 = &v26 - v51;
  v57 = v23;
  v56 = v24 & 1;
  if (sub_1C544DA34(v24 & 1, 1))
  {
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F050, &qword_1C55B8080);
    v33 = sub_1C556E750();
    sub_1C5410F68();
    sub_1C5595D14();
    v34 = sub_1C556E6AC();
    sub_1C540EFD8(v40, v36, v42);
    sub_1C556EE64(v40);
    v53 = v40;
    sub_1C556EECC(v42, v38);
    sub_1C540EFD8(v38, v36, v40);
    sub_1C556EE64(v38);
    sub_1C556EECC(v40, v38);
    sub_1C540FD1C(v38, v36, v36, v34, v34, v47);
    sub_1C556EE64(v38);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F030, &qword_1C55B8078);
    (*(*(v31 - 8) + 56))(v47, 0, 1);
    sub_1C556E60C();
    sub_1C540F554(v47, v31, v50);
    sub_1C556E7D8(v47);
    sub_1C556E90C(v50, v52);
    sub_1C556EE64(v40);
    sub_1C556EE64(v42);
  }

  else if (sub_1C544DA34(v43 & 1, 0))
  {
    v55 = v42;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F050, &qword_1C55B8080);
    v29 = sub_1C556E750();
    sub_1C5410F68();
    sub_1C5595D14();
    v30 = sub_1C556E6AC();
    sub_1C540EFD8(v40, v36, v42);
    sub_1C556EE64(v40);
    v54 = v40;
    sub_1C556EECC(v42, v38);
    sub_1C540EFD8(v38, v36, v40);
    sub_1C556EE64(v38);
    sub_1C556EECC(v40, v38);
    sub_1C54108A0(v38, v36, v36, v30, v30, v47);
    sub_1C556EE64(v38);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F030, &qword_1C55B8078);
    (*(*(v27 - 8) + 56))(v47, 0, 1);
    sub_1C556E60C();
    sub_1C540F554(v47, v27, v50);
    sub_1C556E7D8(v47);
    sub_1C556E90C(v50, v52);
    sub_1C556EE64(v40);
    sub_1C556EE64(v42);
  }

  else
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F030, &qword_1C55B8078);
    (*(*(v26 - 8) + 56))(v47, 1);
    sub_1C556E60C();
    sub_1C540F554(v47, v26, v50);
    sub_1C556E7D8(v47);
    sub_1C556E90C(v50, v52);
  }

  sub_1C556EB6C(v52, v50);
  sub_1C556EDCC();
  sub_1C540EFD8(v50, v45, v35);
  sub_1C556E7D8(v50);
  return sub_1C556E7D8(v52);
}

id sub_1C556DFC0(uint64_t a1)
{
  v4 = [v1 initWithContact_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

uint64_t sub_1C556E010(uint64_t a1)
{
  sub_1C556F5D8();
  sub_1C556F658();
  return sub_1C5597014();
}

uint64_t sub_1C556E214(uint64_t a1, uint64_t a2)
{
  sub_1C556F5D8();
  sub_1C556F658();
  return sub_1C5597004();
}

uint64_t sub_1C556E258(uint64_t a1, uint64_t a2)
{
  sub_1C556F5D8();
  sub_1C556F658();
  return sub_1C5596FE4();
}

uint64_t sub_1C556E29C(uint64_t a1, uint64_t a2)
{
  sub_1C556F5D8();
  sub_1C556F658();
  return sub_1C5596FF4();
}

unint64_t type metadata accessor for Options(uint64_t a1)
{
  v5 = qword_1EC159F08;
  if (!qword_1EC159F08)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC159F08);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1C556E510()
{
  v2 = qword_1EC159F20;
  if (!qword_1EC159F20)
  {
    type metadata accessor for Options(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159F20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556E590()
{
  v2 = qword_1EC15F018;
  if (!qword_1EC15F018)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F018);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556E60C()
{
  v2 = qword_1EC15F038;
  if (!qword_1EC15F038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15F030, &qword_1C55B8078);
    sub_1C556E6AC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F038);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556E6AC()
{
  v2 = qword_1EC15F040;
  if (!qword_1EC15F040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15F020, &qword_1C55B8068);
    sub_1C556E750();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F040);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556E750()
{
  v2 = qword_1EC15F048;
  if (!qword_1EC15F048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15F050, &qword_1C55B8080);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F048);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C556E7D8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F030, &qword_1C55B8078);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F058, &qword_1C55B8088);
    swift_getEnumCaseMultiPayload();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F050, &qword_1C55B8080);
    (*(*(v2 - 8) + 8))(a1);
  }

  return a1;
}

char *sub_1C556E90C(char *a1, char *a2)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F030, &qword_1C55B8078);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F028, &qword_1C55B8070);
    memcpy(a2, a1, *(*(v4 - 8) + 64));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F058, &qword_1C55B8088);
    swift_getEnumCaseMultiPayload();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F050, &qword_1C55B8080);
    (*(*(v2 - 8) + 32))(a2, a1);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F020, &qword_1C55B8068);
    memcpy(&a2[*(v3 + 36)], &a1[*(v3 + 36)], 0x30uLL);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(a2, 0, 1, v8);
  }

  return a2;
}

char *sub_1C556EB6C(char *a1, char *a2)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F030, &qword_1C55B8078);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F028, &qword_1C55B8070);
    memcpy(a2, a1, *(*(v4 - 8) + 64));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F058, &qword_1C55B8088);
    swift_getEnumCaseMultiPayload();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F050, &qword_1C55B8080);
    (*(*(v2 - 8) + 16))(a2, a1);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F020, &qword_1C55B8068);
    memcpy(&a2[*(v3 + 36)], &a1[*(v3 + 36)], 0x30uLL);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(a2, 0, 1, v8);
  }

  return a2;
}

unint64_t sub_1C556EDCC()
{
  v2 = qword_1EC15F060;
  if (!qword_1EC15F060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15F028, &qword_1C55B8070);
    sub_1C556E60C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F060);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C556EE64(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F050, &qword_1C55B8080);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_1C556EECC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F050, &qword_1C55B8080);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F020, &qword_1C55B8068);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x30uLL);
  return a2;
}

unint64_t sub_1C556EFC4()
{
  v2 = qword_1EC15F068;
  if (!qword_1EC15F068)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F068);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C556F0A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void *sub_1C556F1BC(void *result, int a2, int a3)
{
  v3 = result + 21;
  if (a2 < 0)
  {
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = a2 + 0x80000000;
    result[19] = 0;
    result[18] = 0;
    result[17] = 0;
    result[16] = 0;
    result[20] = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *result = (a2 - 1);
    }
  }

  return result;
}

unint64_t sub_1C556F410()
{
  v2 = qword_1EC159F28;
  if (!qword_1EC159F28)
  {
    type metadata accessor for Options(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159F28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556F4C0()
{
  v2 = qword_1EC159F30;
  if (!qword_1EC159F30)
  {
    type metadata accessor for Options(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159F30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556F558()
{
  v2 = qword_1EC159F18;
  if (!qword_1EC159F18)
  {
    type metadata accessor for Options(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159F18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556F5D8()
{
  v2 = qword_1EC159F10;
  if (!qword_1EC159F10)
  {
    type metadata accessor for Options(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159F10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556F658()
{
  v2 = qword_1EC159F88;
  if (!qword_1EC159F88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159F88);
    return WitnessTable;
  }

  return v2;
}

void *sub_1C556F6E8(void *a1)
{

  MEMORY[0x1E69E5920](a1[2]);
  MEMORY[0x1E69E5920](a1[3]);
  if (a1[4])
  {
  }

  if (a1[6])
  {
  }

  return a1;
}

void *sub_1C556F788(void *a1, void *a2)
{
  v7 = *a1;

  *a2 = v7;
  v8 = a1[1];

  a2[1] = v8;
  v9 = a1[2];
  MEMORY[0x1E69E5928](v9, a2);
  a2[2] = v9;
  v11 = a1[3];
  MEMORY[0x1E69E5928](v11, a2);
  a2[3] = v11;
  if (a1[4])
  {
    v5 = a1[4];
    v6 = a1[5];

    a2[4] = v5;
    a2[5] = v6;
  }

  else
  {
    *(a2 + 2) = *(a1 + 2);
  }

  if (a1[6])
  {
    v3 = a1[6];
    v4 = a1[7];

    a2[6] = v3;
    a2[7] = v4;
  }

  else
  {
    *(a2 + 3) = *(a1 + 3);
  }

  return a2;
}

unint64_t sub_1C556F8D4()
{
  v2 = qword_1EC15F088;
  if (!qword_1EC15F088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15F080, &qword_1C55B85A0);
    sub_1C5413D10();
    sub_1C5452038();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F088);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556F9B4()
{
  v2 = qword_1EC15F090;
  if (!qword_1EC15F090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EF20, &qword_1C55B7FA8);
    sub_1C556F8D4();
    sub_1C54778A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F090);
    return WitnessTable;
  }

  return v2;
}

char *sub_1C556FA5C(char *a1)
{

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF20, &qword_1C55B7FA8) + 36);
  v1 = sub_1C5595754();
  (*(*(v1 - 8) + 8))(&a1[v3]);
  return a1;
}

unint64_t sub_1C556FAF0()
{
  v2 = qword_1EC15F098;
  if (!qword_1EC15F098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EF50, &qword_1C55B7FD0);
    sub_1C556F9B4();
    sub_1C556FB98();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F098);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556FB98()
{
  v2 = qword_1EC15F0A0;
  if (!qword_1EC15F0A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F0A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556FC14()
{
  v2 = qword_1EC15F0A8;
  if (!qword_1EC15F0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EF58, &unk_1C55B7FD8);
    sub_1C556FAF0();
    sub_1C546FD20();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F0A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556FCBC()
{
  v2 = qword_1EC15F0B0;
  if (!qword_1EC15F0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EF30, &qword_1C55B7FB8);
    sub_1C556FD60();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F0B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556FD60()
{
  v2 = qword_1EC15F0B8;
  if (!qword_1EC15F0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EF40, &qword_1C55B7FC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15F078, &unk_1C55B8590);
    sub_1C5595414();
    sub_1C556FE80();
    sub_1C556FFD0();
    swift_getOpaqueTypeConformance2();
    sub_1C54EC138();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F0B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556FE80()
{
  v2 = qword_1EC15F0C0;
  if (!qword_1EC15F0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15F078, &unk_1C55B8590);
    sub_1C556FF28();
    sub_1C5410EE0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F0C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556FF28()
{
  v2 = qword_1EC15F0C8;
  if (!qword_1EC15F0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15F070, &qword_1C55B8588);
    sub_1C547070C();
    sub_1C5435844();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F0C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C556FFD0()
{
  v2 = qword_1EC15F0D0;
  if (!qword_1EC15F0D0)
  {
    sub_1C5595414();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F0D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5570050(uint64_t *a1, uint64_t a2)
{
  v6 = *a1;

  *a2 = v6;
  *(a2 + 8) = a1[1];
  *(a2 + 16) = *(a1 + 8);
  v7 = a1[3];

  *(a2 + 24) = v7;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF20, &qword_1C55B7FA8) + 36);
  v2 = sub_1C5595754();
  (*(*(v2 - 8) + 16))(a2 + v8, a1 + v8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF50, &qword_1C55B7FD0);
  *(a2 + *(v3 + 36)) = *(a1 + *(v3 + 36));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF58, &unk_1C55B7FD8);
  result = a2;
  *(a2 + *(v4 + 36)) = *(a1 + *(v4 + 36));
  return result;
}

char *sub_1C557019C(void *a1, char *a2)
{
  if (a1[6])
  {
    *a2 = *a1;
    a2[16] = *(a1 + 16);
    v7 = a1[3];
    v8 = a1[4];
    v9 = *(a1 + 40);
    sub_1C54130AC(v7, v8, v9 & 1);
    *(a2 + 3) = v7;
    *(a2 + 4) = v8;
    a2[40] = v9 & 1;
    v10 = a1[6];
    sub_1C5594CF4();
    *(a2 + 6) = v10;
    if (a1[10])
    {
      v3 = a1[7];
      v4 = a1[8];
      v5 = *(a1 + 72);
      sub_1C54130AC(v3, v4, v5 & 1);
      *(a2 + 7) = v3;
      *(a2 + 8) = v4;
      a2[72] = v5 & 1;
      v6 = a1[10];
      sub_1C5594CF4();
      *(a2 + 10) = v6;
    }

    else
    {
      *(a2 + 56) = *(a1 + 7);
      *(a2 + 72) = *(a1 + 9);
    }
  }

  else
  {
    memcpy(a2, a1, 0x58uLL);
  }

  return a2;
}

unint64_t sub_1C55702F8()
{
  v2 = qword_1EC15F0E0;
  if (!qword_1EC15F0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EF60, &qword_1C55B7FE8);
    sub_1C556FCBC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F0E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5570390()
{
  v2 = qword_1EC159FC0;
  if (!qword_1EC159FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15F0D8, &qword_1C55B85A8);
    sub_1C5452350();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159FC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5570428(uint64_t a1)
{
  if (*(a1 + 48))
  {
    sub_1C5412EA0(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

    if (*(a1 + 80))
    {
      sub_1C5412EA0(*(a1 + 56), *(a1 + 64), *(a1 + 72) & 1);
    }
  }

  return a1;
}

uint64_t sub_1C55704C0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC8, &qword_1C55B0E10);
  (*(*(v1 - 8) + 8))(a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F070, &qword_1C55B8588) + 36);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C330, &qword_1C55AE688) + 28);
  v2 = sub_1C5594FC4();
  (*(*(v2 - 8) + 8))(v4 + v5);
  return a1;
}

uint64_t sub_1C55705B4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC8, &qword_1C55B0E10);
  (*(*(v1 - 8) + 8))(a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F070, &qword_1C55B8588) + 36);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C330, &qword_1C55AE688) + 28);
  v2 = sub_1C5594FC4();
  (*(*(v2 - 8) + 8))(v4 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F078, &unk_1C55B8590);

  return a1;
}

char *AccountManagerHelper.init()()
{
  v25 = "Fatal error";
  v26 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v27 = "AppleAccountUI/AccountManagerHelper.swift";
  v42 = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F0F0, &qword_1C55B85C0);
  v29 = *(v34 - 8);
  v30 = v34 - 8;
  v28 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34, v1, v2, v3);
  v33 = &v14 - v28;
  v42 = v0;
  v32 = v0;
  v31 = OBJC_IVAR___AAUIAccountManagerHelper__account;
  v35 = 0;
  v5 = sub_1C5570A94(0, v4, &v14 - v28);
  (*(v29 + 32))(&v32[v31], v33, v34, v5);
  v36 = v42;
  v37 = OBJC_IVAR___AAUIAccountManagerHelper_serviceOwnersManager;
  v38 = sub_1C5570B10();
  v39 = [objc_opt_self() defaultStore];
  if (!v39)
  {
    sub_1C5596C94();
    __break(1u);
    goto LABEL_5;
  }

  v24 = v39;
  v6 = sub_1C55716EC(v39);
  *&v36[v37] = v6;
  v20 = v42;
  v21 = OBJC_IVAR___AAUIAccountManagerHelper_accountManager;
  v22 = sub_1C557172C();
  v23 = [objc_opt_self() defaultStore];
  if (v23)
  {
    v19 = v23;
LABEL_5:
    v7 = sub_1C55716EC(v19);
    *&v20[v21] = v7;
    v14 = v42;
    v8 = type metadata accessor for AccountManagerHelper(0);
    v41.receiver = v14;
    v41.super_class = v8;
    v18 = objc_msgSendSuper2(&v41, sel_init);
    MEMORY[0x1E69E5928](v18, v9);
    v42 = v18;
    v15 = &v18[OBJC_IVAR___AAUIAccountManagerHelper_accountManager];
    v16 = &v40;
    swift_beginAccess();
    v17 = *v15;
    MEMORY[0x1E69E5928](v17, v10);
    swift_endAccess();
    *&v12 = MEMORY[0x1E69E5928](v18, v11).n128_u64[0];
    [v17 setDelegate_];
    swift_unknownObjectRelease();
    MEMORY[0x1E69E5920](v17);
    sub_1C557258C();
    MEMORY[0x1E69E5920](v42);
    return v18;
  }

  result = sub_1C5596C94();
  __break(1u);
  return result;
}

double sub_1C5570A94@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8[1] = a1;
  MEMORY[0x1E69E5928](a1, a2);
  v8[0] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F108, &qword_1C55B85C8);
  sub_1C5402CCC(v8, v3, a3, v4);
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

unint64_t sub_1C5570B10()
{
  v2 = qword_1EC15F0F8;
  if (!qword_1EC15F0F8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15F0F8);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_1C5570B74()
{
  sub_1C5570B10();
  v2 = [objc_opt_self() defaultStore];
  if (v2)
  {
    v1 = v2;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  return sub_1C55716EC(v1);
}

id sub_1C5570C58()
{
  sub_1C557172C();
  v2 = [objc_opt_self() defaultStore];
  if (v2)
  {
    v1 = v2;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  return sub_1C55716EC(v1);
}

uint64_t sub_1C5570D60(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](v2, a2);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5594E84();

  MEMORY[0x1E69E5920](v2);
  return v4;
}

double sub_1C5570E0C@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x68))(v3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C5570EAC(void *a1, void *a2)
{
  sub_1C5402C1C(a1, &v7);
  v6 = v7;
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x70))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C5570F58(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](v2, a2);
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1E69E5928](a1, KeyPath);
  sub_1C5594E94();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

void (*sub_1C5571014(void *a1))(uint64_t *a1, char a2)
{
  v4 = __swift_coroFrameAllocStub(0x40uLL, 30363);
  *a1 = v4;
  v4[4] = v3;
  MEMORY[0x1E69E5928](v3, v1);
  v4[5] = swift_getKeyPath();
  v4[6] = swift_getKeyPath();
  v4[7] = sub_1C5594E74();
  return sub_1C54031B4;
}

uint64_t sub_1C55710FC()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F0F0, &qword_1C55B85C0);
  sub_1C5594E54();
  return swift_endAccess();
}

uint64_t sub_1C5571178(uint64_t a1)
{
  v9 = a1;
  v13 = 0;
  v12 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15F110, &qword_1C55B8618);
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6[0] = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v10, v9, v10, v2);
  v6[1] = v6 - v6[0];
  v13 = v4;
  v12 = v1;
  (*(v7 + 16))(v3);
  v6[2] = &v11;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F0F0, &qword_1C55B85C0);
  sub_1C5594E64();
  swift_endAccess();
  return (*(v7 + 8))(v9, v10);
}

uint64_t (*sub_1C55712CC(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 40715);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15F110, &qword_1C55B8618);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 40715);
  v6[4] = __swift_coroFrameAllocStub(v5, 40715);
  sub_1C55710FC();
  return sub_1C55713F0;
}

void sub_1C55713F0(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_1C5571178(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_1C5571178(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t sub_1C55714EC@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR___AAUIAccountManagerHelper__account;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F0F0, &qword_1C55B85C0);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_1C557158C(uint64_t a1)
{
  v13 = a1;
  v17 = 0;
  v16 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F0F0, &qword_1C55B85C0);
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  v7 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v14, v13, v14, v2);
  v9 = &v6 - v7;
  v17 = v4;
  v16 = v1;
  (*(v11 + 16))(v3);
  v8 = v1 + OBJC_IVAR___AAUIAccountManagerHelper__account;
  v10 = &v15;
  swift_beginAccess();
  (*(v11 + 40))(v8, v9, v14);
  swift_endAccess();
  return (*(v11 + 8))(v13, v14);
}

unint64_t sub_1C557172C()
{
  v2 = qword_1EC15F100;
  if (!qword_1EC15F100)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15F100);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C5571790(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR___AAUIAccountManagerHelper_serviceOwnersManager);
  MEMORY[0x1E69E5928](v4, a2);
  return v4;
}

uint64_t type metadata accessor for AccountManagerHelper(uint64_t a1)
{
  v2 = qword_1EC16A2D8;
  if (!qword_1EC16A2D8)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1C55718B8()
{
  v3 = (v0 + OBJC_IVAR___AAUIAccountManagerHelper_accountManager);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C5571990(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR___AAUIAccountManagerHelper_accountManager);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double sub_1C5571A2C@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x98))(v3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C5571ACC(void *a1, void *a2)
{
  v4 = *a1;
  MEMORY[0x1E69E5928](*a1, a2);
  v6 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0xA0))(v4, v2);
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

uint64_t sub_1C5571BF8()
{
  v10 = v0;
  v7 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x98))();
  v6 = *MEMORY[0x1E698C218];
  v8 = [v7 accounts];
  if (v8)
  {
    type metadata accessor for AIDAServiceType(0);
    sub_1C543D95C();
    sub_1C5572838();
    v4 = sub_1C5596444();
    MEMORY[0x1E69E5920](v8);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    sub_1C5596C94();
    __break(1u);
  }

  v9[0] = v6;
  type metadata accessor for AIDAServiceType(0);
  sub_1C543D95C();
  sub_1C5572838();
  sub_1C5596464();
  sub_1C5401EF8(v9);
  v3 = v9[1];
  MEMORY[0x1E69E5920](v7);

  return v3;
}

uint64_t sub_1C5571E28()
{
  v10 = v0;
  v7 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x98))();
  v6 = *MEMORY[0x1E698C238];
  v8 = [v7 accounts];
  if (v8)
  {
    type metadata accessor for AIDAServiceType(0);
    sub_1C543D95C();
    sub_1C5572838();
    v4 = sub_1C5596444();
    MEMORY[0x1E69E5920](v8);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    sub_1C5596C94();
    __break(1u);
  }

  v9[0] = v6;
  type metadata accessor for AIDAServiceType(0);
  sub_1C543D95C();
  sub_1C5572838();
  sub_1C5596464();
  sub_1C5401EF8(v9);
  v3 = v9[1];
  MEMORY[0x1E69E5920](v7);

  return v3;
}

uint64_t sub_1C5572058()
{
  v7 = v0;
  v5 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0xB0))();
  v2 = MEMORY[0x1E69E5928](v4, v1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xB8))(v2);
  }

  (MEMORY[0x1E69E5920])();
  return v6;
}

uint64_t sub_1C5572164(uint64_t a1, __n128 a2)
{
  v23 = a1;
  v22 = v2;
  type metadata accessor for AIDAServiceType(0);
  sub_1C543D95C();
  sub_1C5572838();
  v21 = sub_1C5596414();
  v19 = *(v2 + OBJC_IVAR___AAUIAccountManagerHelper_serviceOwnersManager);
  MEMORY[0x1E69E5928](v19, v3);
  v18 = *MEMORY[0x1E698C218];
  v20 = [v19 accountForService_];
  MEMORY[0x1E69E5920](v18);
  MEMORY[0x1E69E5920](v19);
  MEMORY[0x1E69E5928](v20, v5);
  if (v20)
  {
    MEMORY[0x1E69E5928](*MEMORY[0x1E698C218], v6);
    MEMORY[0x1E69E5928](v20, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15F128, qword_1C55B8620);
    sub_1C5596474();
    MEMORY[0x1E69E5920](v20);
  }

  v15 = *(v17 + OBJC_IVAR___AAUIAccountManagerHelper_serviceOwnersManager);
  MEMORY[0x1E69E5928](v15, v6);
  v14 = *MEMORY[0x1E698C238];
  v16 = [v15 accountForService_];
  MEMORY[0x1E69E5920](v14);
  MEMORY[0x1E69E5920](v15);
  MEMORY[0x1E69E5928](v16, v9);
  if (v16)
  {
    MEMORY[0x1E69E5928](*MEMORY[0x1E698C238], v10);
    MEMORY[0x1E69E5928](v16, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15F128, qword_1C55B8620);
    sub_1C5596474();
    MEMORY[0x1E69E5920](v16);
  }

  v13 = v21;
  sub_1C5594CF4();
  MEMORY[0x1E69E5920](v16);
  MEMORY[0x1E69E5920](v20);
  sub_1C541439C(&v21);
  return v13;
}

uint64_t sub_1C557258C()
{
  v18 = v0;
  v10 = MEMORY[0x1E69E7D40];
  v8 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x98))();
  MEMORY[0x1E69E5928](v9, v1);
  v6 = swift_allocObject();
  MEMORY[0x1E69E5928](v9, v2);
  swift_unknownObjectWeakInit();
  (MEMORY[0x1E69E5920])();

  v16 = sub_1C5572CE4;
  v17 = v6;
  aBlock = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = 0;
  v14 = sub_1C5572CEC;
  v15 = &block_descriptor_20;
  v7 = _Block_copy(&aBlock);

  [v8 addAccountChangeObserver:v9 handler:v7];
  _Block_release(v7);
  swift_unknownObjectRelease();
  v3 = MEMORY[0x1E69E5920](v8);
  v4 = (*((*v9 & *v10) + 0xC0))(v3);
  return (*((*v9 & *v10) + 0x70))(v4);
}

unint64_t type metadata accessor for AIDAServiceType(uint64_t a1)
{
  v5 = qword_1EC159F40;
  if (!qword_1EC159F40)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC159F40);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1C5572838()
{
  v2 = qword_1EC15F120;
  if (!qword_1EC15F120)
  {
    type metadata accessor for AIDAServiceType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F120);
    return WitnessTable;
  }

  return v2;
}

double sub_1C55728B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = 0;
  v28 = a1;
  v27 = a2;
  v26 = a3 + 16;
  v16 = *MEMORY[0x1E698C218];
  MEMORY[0x1E69E5928](*MEMORY[0x1E698C218], a2);
  v24[0] = v16;
  type metadata accessor for AIDAServiceType(0);
  sub_1C543D95C();
  sub_1C5572838();
  sub_1C5596464();
  sub_1C5401EF8(v24);
  v23 = v24[1];
  sub_1C5594CF4();
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v15 = *MEMORY[0x1E698C238];
    MEMORY[0x1E69E5928](*MEMORY[0x1E698C238], v3);
    v22 = v15;
    sub_1C5596464();
    sub_1C5401EF8(&v22);
    if (v23)
    {
      sub_1C5401EF8(&v23);
    }
  }

  v13 = v25;
  v21 = v25;
  v14 = *MEMORY[0x1E698C218];
  MEMORY[0x1E69E5928](*MEMORY[0x1E698C218], v4);
  v19[0] = v14;
  sub_1C5596464();
  sub_1C5401EF8(v19);
  v18 = v19[1];
  sub_1C5594CF4();
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v12 = *MEMORY[0x1E698C238];
    MEMORY[0x1E69E5928](*MEMORY[0x1E698C238], v5);
    v17 = v12;
    sub_1C5596464();
    sub_1C5401EF8(&v17);
    if (v18)
    {
      sub_1C5401EF8(&v18);
    }
  }

  v10 = v20;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    MEMORY[0x1E69E5928](v13, v6);
    if (v10)
    {
      v9 = 0;
    }

    else
    {
      v9 = v13 != 0;
    }

    v7 = MEMORY[0x1E69E5920](v13);
    if (v9)
    {
      (*((*Strong & *MEMORY[0x1E69E7D40]) + 0x70))(0, v7);
      MEMORY[0x1E69E5920](Strong);
      MEMORY[0x1E69E5920](v10);
      *&result = MEMORY[0x1E69E5920](v13).n128_u64[0];
      return result;
    }

    MEMORY[0x1E69E5920](Strong);
  }

  MEMORY[0x1E69E5920](v10);
  *&result = MEMORY[0x1E69E5920](v13).n128_u64[0];
  return result;
}

uint64_t sub_1C5572CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  MEMORY[0x1E69E5928](a2, v3);
  type metadata accessor for AIDAServiceType(0);
  sub_1C543D95C();
  sub_1C5572838();
  v7 = sub_1C5596444();
  MEMORY[0x1E69E5928](a3, v7);
  sub_1C5596444();
  v5(v7);

  MEMORY[0x1E69E5920](a3);

  MEMORY[0x1E69E5920](a2);
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

id AccountManagerHelper.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountManagerHelper(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C5572F7C(uint64_t a1)
{
  updated = sub_1C55731C4(319);
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t sub_1C55731C4(uint64_t a1)
{
  v5 = qword_1EC15F198;
  if (!qword_1EC15F198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15F108, &qword_1C55B85C8);
    v4 = sub_1C5594EA4();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EC15F198);
      return v2;
    }
  }

  return v5;
}

id sub_1C5573268(uint64_t a1)
{
  v4 = [v1 initWithAccountStore_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

uint64_t sub_1C5573388(uint64_t a1)
{
  sub_1C557370C();
  sub_1C545CCC8();
  return sub_1C5596D54();
}

uint64_t sub_1C55733C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C557370C();
  sub_1C545CCC8();
  return sub_1C5596D24();
}

uint64_t sub_1C5573410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C557370C();
  sub_1C545CCC8();
  return sub_1C5596D34() & 1;
}

uint64_t sub_1C5573460(uint64_t a1, uint64_t a2)
{
  sub_1C557370C();
  sub_1C545CCC8();
  return sub_1C5596D44();
}

uint64_t sub_1C55734F8(uint64_t a1)
{
  sub_1C5572838();
  sub_1C557370C();
  return sub_1C5596D04();
}

unint64_t sub_1C557355C()
{
  v2 = qword_1EC159F68;
  if (!qword_1EC159F68)
  {
    type metadata accessor for AIDAServiceType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159F68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C55735F4()
{
  v2 = qword_1EC159F50;
  if (!qword_1EC159F50)
  {
    type metadata accessor for AIDAServiceType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159F50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C557368C()
{
  v2 = qword_1EC159F78;
  if (!qword_1EC159F78)
  {
    type metadata accessor for AIDAServiceType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159F78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C557370C()
{
  v2 = qword_1EC159F60;
  if (!qword_1EC159F60)
  {
    type metadata accessor for AIDAServiceType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159F60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C557378C()
{
  v2 = *(v0 + *(type metadata accessor for LockDownModeRowElement(0) + 20));
  sub_1C5594CF4();
  return v2;
}

uint64_t type metadata accessor for LockDownModeRowElement(uint64_t a1)
{
  v2 = qword_1EC16A7F0;
  if (!qword_1EC16A7F0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1C5573848()
{
  v2 = *(v0 + *(type metadata accessor for LockDownModeRowElement(0) + 24));
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C5573890()
{
  v2 = *(v0 + *(type metadata accessor for LockDownModeRowElement(0) + 28));
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C55738D8()
{
  v2 = *(v0 + *(type metadata accessor for LockDownModeRowElement(0) + 32));
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C5573920()
{
  v2 = *(v0 + *(type metadata accessor for LockDownModeRowElement(0) + 36));
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C5573968()
{
  v2 = *(v0 + *(type metadata accessor for LockDownModeRowElement(0) + 40));
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C55739B0()
{
  v2 = *(v0 + *(type metadata accessor for LockDownModeRowElement(0) + 44));
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C55739F8()
{
  type metadata accessor for LockDownModeRowElement(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F84();

  return v1 & 1;
}

uint64_t sub_1C5573A90(char a1)
{
  v8 = 0;
  v9 = a1 & 1;
  v2 = (v1 + *(type metadata accessor for LockDownModeRowElement(0) + 48));
  v4 = *v2;
  v5 = *(v2 + 1);

  v6[0] = v4;
  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F94();
  sub_1C5373718(v6);
}

void (*sub_1C5573B54(void *a1))(uint64_t *a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x48uLL, 61988);
  *a1 = v1;
  v2 = (v4 + *(type metadata accessor for LockDownModeRowElement(0) + 48));
  v5 = *v2;
  v1[67] = *v2 & 1;
  v6 = *(v2 + 1);
  *(v1 + 6) = v6;

  *v1 = v5;
  *(v1 + 1) = v6;
  *(v1 + 7) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F84();
  return sub_1C542E3F0;
}

uint64_t sub_1C5573C40()
{
  type metadata accessor for LockDownModeRowElement(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595FA4();

  return v1;
}

uint64_t sub_1C5573CF0()
{
  v2 = *(v0 + *(type metadata accessor for LockDownModeRowElement(0) + 48));

  return v2 & 1;
}

uint64_t sub_1C5573D3C(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for LockDownModeRowElement(0) + 48);
  *v3 = a1;
  *(v3 + 8) = a2;
}

uint64_t sub_1C5573D98()
{
  type metadata accessor for LockDownModeRowElement(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F84();

  return v1 & 1;
}

uint64_t sub_1C5573E30(char a1)
{
  v8 = 0;
  v9 = a1 & 1;
  v2 = (v1 + *(type metadata accessor for LockDownModeRowElement(0) + 52));
  v4 = *v2;
  v5 = *(v2 + 1);

  v6[0] = v4;
  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F94();
  sub_1C5373718(v6);
}

void (*sub_1C5573EF4(void *a1))(uint64_t *a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x48uLL, 16267);
  *a1 = v1;
  v2 = (v4 + *(type metadata accessor for LockDownModeRowElement(0) + 52));
  v5 = *v2;
  v1[67] = *v2 & 1;
  v6 = *(v2 + 1);
  *(v1 + 6) = v6;

  *v1 = v5;
  *(v1 + 1) = v6;
  *(v1 + 7) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F84();
  return sub_1C542E3F0;
}

uint64_t sub_1C5573FE0()
{
  type metadata accessor for LockDownModeRowElement(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595FA4();

  return v1;
}

uint64_t sub_1C5574090()
{
  v2 = *(v0 + *(type metadata accessor for LockDownModeRowElement(0) + 52));

  return v2 & 1;
}

uint64_t sub_1C55740DC(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for LockDownModeRowElement(0) + 52);
  *v3 = a1;
  *(v3 + 8) = a2;
}

uint64_t sub_1C5574138@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v17 = sub_1C5574F24;
  v34 = 0;
  v33 = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F1A0, &qword_1C55B87E8);
  v13 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23, v1, v2, v3);
  v25 = &v12 - v13;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F1A8, &qword_1C55B87F0);
  v15 = *(*(v27 - 8) + 64);
  v14 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27, v4, v5, v6);
  v29 = &v12 - v14;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v12 - v14, v7, v8, v9);
  v30 = &v12 - v16;
  v34 = &v12 - v16;
  v33 = v10;
  v18 = &v31;
  v32 = v10;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F1B0, &qword_1C55B87F8);
  v20 = sub_1C5574F2C();
  sub_1C5412C88();
  v21 = 0;
  v22 = 1;
  sub_1C5596024();
  v24 = sub_1C55750D4();
  sub_1C5411148(v23, v24);
  sub_1C5595D84();
  sub_1C5372C00(v25);
  v28 = sub_1C557515C();
  sub_1C540EFD8(v29, v27, v30);
  sub_1C5372C00(v29);
  sub_1C5372D14(v30, v29);
  sub_1C540EFD8(v29, v27, v26);
  sub_1C5372C00(v29);
  return sub_1C5372C00(v30);
}

uint64_t sub_1C557437C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v83 = a1;
  v84 = &unk_1C55C98F8;
  v85 = &unk_1C55C98A0;
  v127 = 0;
  v126 = 0;
  v125 = 0;
  v124 = 0;
  v121 = 0;
  v116 = 0;
  v86 = sub_1C5596384();
  v87 = *(v86 - 8);
  v88 = v86 - 8;
  v89 = (*(v87 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v86, v3, v4, v5);
  v90 = &v50 - v89;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F1E8, &qword_1C55B8818);
  v92 = *(v91 - 8);
  v93 = v91 - 8;
  v94 = (v92[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v91, v6, v7, v8);
  v95 = &v50 - v94;
  v96 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v50 - v94, v10, v11, v12);
  v97 = &v50 - v96;
  v98 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v50 - v96, v14, v15, v16);
  v99 = &v50 - v98;
  v127 = &v50 - v98;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F1E0, &qword_1C55B8810);
  v101 = *(v100 - 8);
  v102 = v100 - 8;
  v103 = (v101[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v100, v17, v18, v19);
  v104 = &v50 - v103;
  v105 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v50 - v103, v21, v22, v23);
  v106 = &v50 - v105;
  v107 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v50 - v105, v25, v26, v27);
  v108 = &v50 - v107;
  v126 = &v50 - v107;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F1B0, &qword_1C55B87F8);
  v110 = (*(*(v109 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v109, v28, v29, v30);
  v111 = &v50 - v110;
  v112 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v50 - v110, v32, v33, v34);
  v113 = &v50 - v112;
  v125 = &v50 - v112;
  v124 = a1;
  if (sub_1C55739F8())
  {
    v35 = v83;
    v77 = type metadata accessor for LockDownModeRowElement(0);
    v36 = (v35 + *(v77 + 24));
    v74 = *v36;
    v76 = v36[1];
    sub_1C5594CF4();
    v37 = (v35 + *(v77 + 32));
    v73 = *v37;
    v75 = v37[1];
    sub_1C5594CF4();
    v78 = sub_1C5575054();
    sub_1C5450D48(v74, v76, v73, v75, v77, v106);

    v117 = v77;
    v118 = v78;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1C540EFD8(v106, v100, v108);
    v80 = v101[1];
    v81 = v101 + 1;
    v80(v106, v100);
    v116 = v106;
    v72 = v101[2];
    v71 = v101 + 2;
    v72(v104, v108, v100);
    sub_1C540EFD8(v104, v100, v106);
    v80(v104, v100);
    v72(v104, v106, v100);
    v114 = v77;
    v115 = v78;
    v38 = swift_getOpaqueTypeConformance2();
    sub_1C540FD1C(v104, v100, v91, OpaqueTypeConformance2, v38, v111);
    v80(v104, v100);
    sub_1C53730EC(v111, v113);
    v80(v106, v100);
    v80(v108, v100);
  }

  else
  {
    v39 = v83;
    v66 = type metadata accessor for LockDownModeRowElement(0);
    v40 = (v39 + v66[6]);
    v57 = *v40;
    v65 = v40[1];
    sub_1C5594CF4();
    v41 = (v39 + v66[7]);
    v54 = *v41;
    v64 = v41[1];
    sub_1C5594CF4();
    v42 = (v39 + v66[9]);
    v55 = *v42;
    v63 = v42[1];
    sub_1C5594CF4();
    v43 = (v39 + v66[10]);
    v56 = *v43;
    v62 = v43[1];
    sub_1C5594CF4();
    v44 = (v39 + v66[11]);
    v53 = *v44;
    v61 = v44[1];
    sub_1C5594CF4();
    (*(v87 + 16))(v90, v39, v86);
    v59 = sub_1C5573FE0();
    v60 = v45;
    v52 = v46;
    v67 = sub_1C5575054();
    v58 = v49;
    v49[7] = v67;
    sub_1C5452AB8(v57, v65, v54, v64, v55, v63, v56, v62, v97, v53, v61, v90, v59, v60, v52 & 1, v66);

    (*(v87 + 8))(v90, v86);

    v122 = v66;
    v123 = v67;
    v68 = swift_getOpaqueTypeConformance2();
    sub_1C540EFD8(v97, v91, v99);
    v69 = v92[1];
    v70 = v92 + 1;
    v69(v97, v91);
    v121 = v97;
    v51 = v92[2];
    v50 = v92 + 2;
    v51(v95, v99, v91);
    sub_1C540EFD8(v95, v91, v97);
    v69(v95, v91);
    v51(v95, v97, v91);
    v119 = v66;
    v120 = v67;
    v47 = swift_getOpaqueTypeConformance2();
    sub_1C54108A0(v95, v100, v91, v47, v68, v111);
    v69(v95, v91);
    sub_1C53730EC(v111, v113);
    v69(v97, v91);
    v69(v99, v91);
  }

  sub_1C53731FC(v113, v111);
  sub_1C5574F2C();
  sub_1C540EFD8(v111, v109, v82);
  sub_1C537330C(v111);
  return sub_1C537330C(v113);
}

unint64_t sub_1C5574F2C()
{
  v2 = qword_1EC15F1B8;
  if (!qword_1EC15F1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15F1B0, &qword_1C55B87F8);
    type metadata accessor for LockDownModeRowElement(255);
    sub_1C5575054();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F1B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5575054()
{
  v2 = qword_1EC15F1C0;
  if (!qword_1EC15F1C0)
  {
    type metadata accessor for LockDownModeRowElement(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F1C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C55750D4()
{
  v2 = qword_1EC15F1C8;
  if (!qword_1EC15F1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15F1A0, &qword_1C55B87E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F1C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C557515C()
{
  v2 = qword_1EC15F1F0;
  if (!qword_1EC15F1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15F1A8, &qword_1C55B87F0);
    sub_1C55750D4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F1F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C557524C()
{
  v2 = qword_1EC15F1F8;
  if (!qword_1EC15F1F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F1F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C55753C8()
{
  v2 = qword_1EC15F200;
  if (!qword_1EC15F200)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F200);
    return WitnessTable;
  }

  return v2;
}

void sub_1C5575474(void *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v108 = a1;
  v125 = 0;
  v124 = 0;
  v123 = 0;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F208, &qword_1C55B8820);
  v93 = *(v92 - 8);
  v94 = v92 - 8;
  v95 = (*(v93 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v92, v2, v3, v4);
  v96 = v52 - v95;
  v125 = v52 - v95;
  v97 = 0;
  v98 = sub_1C5596384();
  v99 = *(v98 - 8);
  v100 = v98 - 8;
  v101 = (*(v99 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v97, v5, v6, v7);
  v102 = v52 - v101;
  v103 = type metadata accessor for LockDownModeRowElement(v8);
  v104 = (*(*(v103 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v103, v9, v10, v11);
  v107 = v52 - v104;
  v124 = v52 - v104;
  v123 = v12;
  v106 = *(v13 + 52);
  v105 = 1;
  v14 = sub_1C5409594(0);
  v15 = v108;
  v16 = v107 + v106;
  *v16 = v14 & v105;
  *(v16 + 8) = v17;
  v111 = v15[3];
  v109 = v15[4];
  __swift_project_boxed_opaque_existential_0(v15, v111);
  v18 = v110;
  v19 = sub_1C5596F04();
  v112 = v18;
  v113 = v19;
  v114 = v20;
  v115 = v18;
  if (v18)
  {
    v54 = v115;
    v55 = 512;
  }

  else
  {
    v21 = v108;
    v22 = v114;
    v23 = (v107 + v103[5]);
    *v23 = v113;
    v23[1] = v22;
    v88 = v122;
    sub_1C5432498(v21, v122);
    v24 = v112;
    sub_1C5596374();
    v89 = v24;
    v90 = v24;
    if (v24)
    {
      v54 = v90;
      v55 = 514;
    }

    else
    {
      (*(v99 + 32))(v107, v102, v98);
      v84 = v108[3];
      v85 = v108[4];
      __swift_project_boxed_opaque_existential_0(v108, v84);
      sub_1C55753C8();
      v25 = v89;
      sub_1C5596F24();
      v86 = v25;
      v87 = v25;
      if (!v25)
      {
        v121 = 0;
        v26 = sub_1C5596D74();
        v80 = 0;
        v81 = v26;
        v82 = v27;
        v83 = 0;
        v28 = (v107 + v103[6]);
        *v28 = v26;
        v28[1] = v27;
        v120 = 1;
        v29 = sub_1C5596D74();
        v76 = 0;
        v77 = v29;
        v78 = v30;
        v79 = 0;
        v31 = (v107 + v103[7]);
        *v31 = v29;
        v31[1] = v30;
        v119 = 4;
        v32 = sub_1C5596D74();
        v72 = 0;
        v73 = v32;
        v74 = v33;
        v75 = 0;
        v34 = (v107 + v103[8]);
        *v34 = v32;
        v34[1] = v33;
        v118 = 2;
        v35 = sub_1C5596D74();
        v68 = 0;
        v69 = v35;
        v70 = v36;
        v71 = 0;
        v37 = (v107 + v103[9]);
        *v37 = v35;
        v37[1] = v36;
        v117 = 3;
        v38 = sub_1C5596D74();
        v64 = 0;
        v65 = v38;
        v66 = v39;
        v67 = 0;
        v40 = (v107 + v103[10]);
        *v40 = v38;
        v40[1] = v39;
        v116 = 5;
        v41 = sub_1C5596D74();
        v60 = 0;
        v61 = v41;
        v62 = v42;
        v63 = 0;
        v43 = (v107 + v103[11]);
        *v43 = v41;
        v43[1] = v42;
        sub_1C5594B64();
        v56 = sub_1C5594B44();
        v57 = MEMORY[0x1C69456F0]();
        MEMORY[0x1E69E5920](v56);
        v59 = (v107 + v103[12]);
        v58 = 1;
        v44 = sub_1C5409594(v57 & 1);
        v45 = v59;
        v46 = v93;
        v47 = v44;
        v48 = v96;
        v50 = v49;
        v51 = v92;
        *v59 = v47 & v58;
        *(v45 + 1) = v50;
        (*(v46 + 8))(v48, v51);
        sub_1C5575FE8(v107, v91);
        __swift_destroy_boxed_opaque_existential_0(v108);
        sub_1C557629C(v107);
        return;
      }

      v54 = v87;
      v55 = 515;
    }
  }

  v53 = v55;
  v52[1] = v54;
  __swift_destroy_boxed_opaque_existential_0(v108);
  if (v53)
  {
    (*(v99 + 8))(v107, v98);
  }

  if ((v53 & 2) != 0)
  {
    sub_1C5401ECC(v107 + v103[5]);
  }

  if ((v53 & 4) != 0)
  {
    sub_1C5401ECC(v107 + v103[6]);
  }

  if ((v53 & 8) != 0)
  {
    sub_1C5401ECC(v107 + v103[7]);
  }

  if ((v53 & 0x10) != 0)
  {
    sub_1C5401ECC(v107 + v103[8]);
  }

  if ((v53 & 0x20) != 0)
  {
    sub_1C5401ECC(v107 + v103[9]);
  }

  if ((v53 & 0x40) != 0)
  {
    sub_1C5401ECC(v107 + v103[10]);
  }

  sub_1C5373718(v107 + v103[13]);
}

uint64_t sub_1C5575FE8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C5596384();
  (*(*(v2 - 8) + 16))(a2, a1);
  v30 = type metadata accessor for LockDownModeRowElement(0);
  v3 = (a1 + v30[5]);
  v13 = (a2 + v30[5]);
  *v13 = *v3;
  v14 = v3[1];
  sub_1C5594CF4();
  v13[1] = v14;
  v4 = v30[6];
  v15 = a2 + v4;
  *(a2 + v4) = *(a1 + v4);
  v16 = *(a1 + v4 + 8);
  sub_1C5594CF4();
  *(v15 + 8) = v16;
  v5 = v30[7];
  v17 = a2 + v5;
  *(a2 + v5) = *(a1 + v5);
  v18 = *(a1 + v5 + 8);
  sub_1C5594CF4();
  *(v17 + 8) = v18;
  v6 = v30[8];
  v19 = a2 + v6;
  *(a2 + v6) = *(a1 + v6);
  v20 = *(a1 + v6 + 8);
  sub_1C5594CF4();
  *(v19 + 8) = v20;
  v7 = v30[9];
  v21 = a2 + v7;
  *(a2 + v7) = *(a1 + v7);
  v22 = *(a1 + v7 + 8);
  sub_1C5594CF4();
  *(v21 + 8) = v22;
  v8 = v30[10];
  v23 = a2 + v8;
  *(a2 + v8) = *(a1 + v8);
  v24 = *(a1 + v8 + 8);
  sub_1C5594CF4();
  *(v23 + 8) = v24;
  v9 = v30[11];
  v25 = a2 + v9;
  *(a2 + v9) = *(a1 + v9);
  v26 = *(a1 + v9 + 8);
  sub_1C5594CF4();
  *(v25 + 8) = v26;
  v10 = v30[12];
  v28 = a2 + v10;
  *(a2 + v10) = *(a1 + v10);
  v29 = *(a1 + v10 + 8);

  *(v28 + 8) = v29;
  v11 = v30[13];
  v32 = a2 + v11;
  *(a2 + v11) = *(a1 + v11);
  v33 = *(a1 + v11 + 8);

  result = a2;
  *(v32 + 8) = v33;
  return result;
}

uint64_t sub_1C557629C(uint64_t a1)
{
  v1 = sub_1C5596384();
  (*(*(v1 - 8) + 8))(a1);
  type metadata accessor for LockDownModeRowElement(0);

  return a1;
}

uint64_t sub_1C557644C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C557378C();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_1C5576494()
{
  v2 = qword_1EC15F210;
  if (!qword_1EC15F210)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F210);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5576528()
{
  v2 = qword_1EC15F218;
  if (!qword_1EC15F218)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F218);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C55765BC()
{
  v2 = qword_1EC15F220;
  if (!qword_1EC15F220)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F220);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5576684()
{
  v2 = qword_1EC15F228;
  if (!qword_1EC15F228)
  {
    type metadata accessor for LockDownModeRowElement(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F228);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C557671C()
{
  v2 = qword_1EC15F230;
  if (!qword_1EC15F230)
  {
    type metadata accessor for LockDownModeRowElement(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F230);
    return WitnessTable;
  }

  return v2;
}

id sub_1C5576818()
{
  sub_1C543D95C();
  result = sub_1C5404B48();
  qword_1EC16A808 = result;
  return result;
}

uint64_t *sub_1C557684C()
{
  if (qword_1EC16A800 != -1)
  {
    swift_once();
  }

  return &qword_1EC16A808;
}

uint64_t static AccountInformationKey.defaultValue.getter()
{
  v0 = sub_1C557684C();
  v3 = *v0;
  MEMORY[0x1E69E5928](*v0, v1);
  return v3;
}

uint64_t sub_1C55768E4@<X0>(uint64_t *a1@<X8>)
{
  result = static AccountInformationKey.defaultValue.getter();
  *a1 = result;
  return result;
}

uint64_t RUIDecodingUserInfo.account.getter()
{
  sub_1C557695C();
  sub_1C55969E4();
  return v1;
}

unint64_t sub_1C557695C()
{
  v2 = qword_1EC15F238;
  if (!qword_1EC15F238)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F238);
    return WitnessTable;
  }

  return v2;
}

double sub_1C55769D8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  MEMORY[0x1E69E5928](*a1, a2);
  *a3 = RUIDecodingUserInfo.account.getter();
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

double sub_1C5576A44(uint64_t *a1, void *a2)
{
  v4 = *a1;
  MEMORY[0x1E69E5928](*a1, a2);
  v6 = *a2;
  MEMORY[0x1E69E5928](*a2, a2);
  RUIDecodingUserInfo.account.setter(v4, v2);
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

double RUIDecodingUserInfo.account.setter(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  sub_1C557695C();
  sub_1C55969F4();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double (*RUIDecodingUserInfo.account.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = RUIDecodingUserInfo.account.getter();
  return sub_1C5576BB0;
}

double sub_1C5576BB0(uint64_t *a1, uint64_t a2)
{
  if ((a2 & 1) == 0)
  {
    return RUIDecodingUserInfo.account.setter(*a1, a2);
  }

  v4 = *a1;
  MEMORY[0x1E69E5928](*a1, a2);
  RUIDecodingUserInfo.account.setter(v4, v3);
  *&result = MEMORY[0x1E69E5920](*a1).n128_u64[0];
  return result;
}

uint64_t sub_1C5576C88@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC14AppleAccountUI17CustodianListItem_custodianID;
  v2 = sub_1C5594994();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1C5576CFC()
{
  v2 = *(v0 + 16);
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C5576D34()
{
  v2 = *(v0 + 32);
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C5576D6C()
{
  v2 = *(v0 + 48);

  return v2;
}

uint64_t sub_1C5576D98@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC14AppleAccountUI17CustodianListItem_custodianID;
  v2 = sub_1C5594994();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1C5576E04()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5594E84();

  return v1 & 1;
}

uint64_t sub_1C5576EA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 128))(v2) & 1;
}

uint64_t sub_1C5576F28(char *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;

  (*(*v3 + 136))(v4 & 1);
}

uint64_t sub_1C5576FA8(char a1)
{

  swift_getKeyPath();
  swift_getKeyPath();
  return sub_1C5594E94();
}

void (*sub_1C557703C(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 16136);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = sub_1C5594E74();
  return sub_1C542BE14;
}

uint64_t sub_1C557711C()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E0, &qword_1C55AE518);
  sub_1C5594E54();
  return swift_endAccess();
}

uint64_t sub_1C5577198(uint64_t a1)
{
  v9 = a1;
  v13 = 0;
  v12 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E8, &qword_1C55AE520);
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6[0] = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v10, v9, v10, v2);
  v6[1] = v6 - v6[0];
  v13 = v4;
  v12 = v1;
  (*(v7 + 16))(v3);
  v6[2] = &v11;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E0, &qword_1C55AE518);
  sub_1C5594E64();
  swift_endAccess();
  return (*(v7 + 8))(v9, v10);
}

uint64_t (*sub_1C55772EC(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 62312);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E8, &qword_1C55AE520);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 62312);
  v6[4] = __swift_coroFrameAllocStub(v5, 62312);
  sub_1C557711C();
  return sub_1C5577410;
}

void sub_1C5577410(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_1C5577198(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_1C5577198(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t sub_1C557750C@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC14AppleAccountUI17CustodianListItem__selected;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E0, &qword_1C55AE518);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_1C55775A4(uint64_t a1)
{
  v12 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E0, &qword_1C55AE518);
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v13, v12, v13, v2);
  v8 = &v5 - v6;
  (*(v10 + 16))(v3);
  v7 = v1 + OBJC_IVAR____TtC14AppleAccountUI17CustodianListItem__selected;
  v9 = &v14;
  swift_beginAccess();
  (*(v10 + 40))(v7, v8, v13);
  swift_endAccess();
  return (*(v10 + 8))(v12, v13);
}

void *sub_1C5577788(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v82 = a1;
  v77 = a2;
  v84 = a3;
  v85 = a4;
  v72 = a5;
  v73 = a6;
  v74 = a7;
  v75 = a8;
  v76 = a9;
  v63 = "Fatal error";
  v64 = "Unexpectedly found nil while unwrapping an Optional value";
  v65 = "AppleAccountUI/CustodianListItem.swift";
  v110 = 0;
  v111 = 0;
  v108 = 0;
  v109 = 0;
  v106 = 0;
  v107 = 0;
  v104 = 0;
  v105 = 0;
  v103 = 0;
  v102 = 0;
  v96 = 0;
  v90 = 0;
  v87 = 0;
  v88 = 0;
  v86 = 0;
  v66 = 0;
  v67 = sub_1C5594994();
  v68 = *(v67 - 8);
  v69 = v67 - 8;
  v70 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v10, v11, v12);
  v71 = v35 - v70;
  v78 = sub_1C5594684();
  v79 = *(v78 - 8);
  v80 = v78 - 8;
  v81 = (*(v79 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v85, v77, v84, v13);
  v83 = v35 - v81;
  v110 = v82;
  v111 = v14;
  v108 = v15;
  v109 = v16;
  v106 = v17;
  v107 = v18;
  v104 = v19;
  v105 = v20;
  v103 = v21;
  v102 = v9;
  sub_1C5594CF4();
  v98 = v84;
  v99 = v85;
  if (v85)
  {
    v100 = v98;
    v101 = v99;
  }

  else
  {
    v100 = sub_1C55965F4("", 0, 1);
    v101 = v22;
    if (v99)
    {
      sub_1C5401ECC(&v98);
    }
  }

  v58 = v97;
  v97[0] = v100;
  v97[1] = v101;
  sub_1C5594674();
  v55 = sub_1C54141E8();
  v59 = sub_1C5596AC4();
  v60 = v23;
  v56 = *(v79 + 8);
  v57 = v79 + 8;
  v56(v83, v78);
  sub_1C5401ECC(v58);
  v61 = sub_1C5596614();
  v96 = v61 & 1;

  if (v61)
  {
    sub_1C5594CF4();
    v53 = v72;
    v54 = v73;
  }

  else
  {
    sub_1C5594CF4();
    if (v85)
    {
      v51 = v84;
      v52 = v85;
    }

    else
    {
      sub_1C5596C94();
      __break(1u);
    }

    v53 = v51;
    v54 = v52;
  }

  v24 = v62;
  v25 = v54;
  v62[4] = v53;
  v24[5] = v25;
  sub_1C5594CF4();
  v92 = v82;
  v93 = v77;
  if (v77)
  {
    v94 = v92;
    v95 = v93;
  }

  else
  {
    v94 = sub_1C55965F4("", 0, 1);
    v95 = v26;
    if (v93)
    {
      sub_1C5401ECC(&v92);
    }
  }

  v47 = v91;
  v91[0] = v94;
  v91[1] = v95;
  sub_1C5594674();
  v48 = sub_1C5596AC4();
  v49 = v27;
  v56(v83, v78);
  sub_1C5401ECC(v47);
  v50 = sub_1C5596614();
  v90 = v50 & 1;

  if (v50)
  {
    sub_1C5594CF4();
    v45 = v72;
    v46 = v73;
  }

  else
  {
    sub_1C5594CF4();
    if (v77)
    {
      v43 = v82;
      v44 = v77;
    }

    else
    {
      sub_1C5596C94();
      __break(1u);
    }

    v45 = v43;
    v46 = v44;
  }

  v28 = v75;
  v29 = v74;
  v30 = v62;
  v31 = v46;
  v62[2] = v45;
  v30[3] = v31;
  sub_1C54F044C(v29, v28);
  if ((v75 & 0xF000000000000000) == 0xF000000000000000)
  {
    goto LABEL_31;
  }

  v41 = v74;
  v42 = v75;
  v39 = v75;
  v38 = v74;
  v87 = v74;
  v88 = v75;
  sub_1C544DE30(v74, v75);
  v32 = sub_1C55781A4(v38, v39);
  v40 = v32;
  if (!v32)
  {
    sub_1C544DEAC(v38, v39);
LABEL_31:
    sub_1C55965F4("person.crop.circle.fill", 23, 1);
    v62[6] = sub_1C5595EF4();
    goto LABEL_32;
  }

  v37 = v40;
  v36 = v40;
  v86 = v40;

  v62[6] = v36;

  sub_1C544DEAC(v38, v39);
LABEL_32:
  (*(v68 + 16))(v71, v76, v67);
  (*(v68 + 32))(v62 + OBJC_IVAR____TtC14AppleAccountUI17CustodianListItem_custodianID, v71, v67);
  v35[0] = v62 + OBJC_IVAR____TtC14AppleAccountUI17CustodianListItem__selected;
  v35[1] = &v89;
  swift_beginAccess();
  sub_1C542BAB8(1, v35[0], v33);
  swift_endAccess();
  (*(v68 + 8))(v76, v67);
  sub_1C54F0970(v74, v75);

  return v62;
}

uint64_t sub_1C55781A4(uint64_t a1, unint64_t a2)
{
  v9 = 0;
  sub_1C5418C84();
  sub_1C544DE30(a1, a2);
  v8 = sub_1C54493D0(a1, a2);
  if (v8)
  {
    MEMORY[0x1E69E5928](v8, v2);
    v4 = sub_1C5595ED4();

    v9 = v4;
    MEMORY[0x1E69E5920](v8);
    sub_1C544DEAC(a1, a2);
    sub_1C5410D10(&v9);
    return v4;
  }

  else
  {
    sub_1C544DEAC(a1, a2);
    return 0;
  }
}

uint64_t sub_1C55782A8()
{
  sub_1C5401ECC(v0 + 16);
  sub_1C5401ECC(v0 + 32);
  sub_1C5410D10((v0 + 48));
  v4 = OBJC_IVAR____TtC14AppleAccountUI17CustodianListItem_custodianID;
  v1 = sub_1C5594994();
  (*(*(v1 - 8) + 8))(v0 + v4);
  v5 = OBJC_IVAR____TtC14AppleAccountUI17CustodianListItem__selected;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E0, &qword_1C55AE518);
  (*(*(v2 - 8) + 8))(v0 + v5);
  return v6;
}

uint64_t sub_1C5578440@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CustodianListItem(0);
  result = sub_1C5594E34();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for CustodianListItem(uint64_t a1)
{
  v2 = qword_1EC16A9B0;
  if (!qword_1EC16A9B0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_1C5578508()
{
  v2 = qword_1EC15F240;
  if (!qword_1EC15F240)
  {
    sub_1C5594994();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F240);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C55785A4(uint64_t a1)
{
  updated = sub_1C5594994();
  if (v1 <= 0x3F)
  {
    updated = sub_1C5433B4C(319);
    if (v2 <= 0x3F)
    {
      updated = swift_updateClassMetadata2();
      if (!updated)
      {
        return 0;
      }
    }
  }

  return updated;
}

AppleAccountUI::AAUISignOutFlowStage_optional __swiftcall AAUISignOutFlowStage.init(rawValue:)(Swift::String rawValue)
{
  v4 = v1;
  sub_1C5596E04();
  *v2 = "signoutOffer";
  *(v2 + 8) = 12;
  *(v2 + 16) = 2;
  *(v2 + 24) = "eraseAllData";
  *(v2 + 32) = 12;
  *(v2 + 40) = 2;
  *(v2 + 48) = "signoutRemainInformation";
  *(v2 + 56) = 24;
  *(v2 + 64) = 2;
  *(v2 + 72) = "signoutRemovedInformation";
  *(v2 + 80) = 25;
  *(v2 + 88) = 2;
  sub_1C540FCD8();
  v5 = sub_1C5596D64();

  if (v5)
  {
    switch(v5)
    {
      case 1:
        v6 = 1;
        break;
      case 2:
        v6 = 2;
        break;
      case 3:
        v6 = 3;
        break;
      default:

        *v4 = 4;
        return result;
    }
  }

  else
  {
    v6 = 0;
  }

  *v4 = v6;
}

uint64_t AAUISignOutFlowStage.rawValue.getter()
{
  v3 = *v0;
  if (!*v0)
  {
    return sub_1C55965F4("signoutOffer", 12, 1);
  }

  if (v3 == 1)
  {
    return sub_1C55965F4("eraseAllData", 12, 1);
  }

  if (v3 == 2)
  {
    return sub_1C55965F4("signoutRemainInformation", 24, 1);
  }

  return sub_1C55965F4("signoutRemovedInformation", 25, 1);
}

unint64_t sub_1C55789F0()
{
  v2 = qword_1EC15F250;
  if (!qword_1EC15F250)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F250);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5578B60@<X0>(uint64_t *a1@<X8>)
{
  result = AAUISignOutFlowStage.rawValue.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_1C5578B90()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

double sub_1C5578BF8(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x1E69E5920](a1);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

void (*sub_1C5578C90(void *a1))(void **a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL, 37799);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR___AAUISignOutOrEraseOfferFlow_navController;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1C55329E0;
}

uint64_t sub_1C5578D3C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

double sub_1C5578DA4(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x1E69E5920](a1);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

void (*sub_1C5578E3C(void *a1))(void **a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL, 12492);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR___AAUISignOutOrEraseOfferFlow_presentingController;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1C55329E0;
}

uint64_t sub_1C5578EE8()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutOrEraseOfferFlow_signOutFlowDirector);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1C5578F50(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR___AAUISignOutOrEraseOfferFlow_signOutFlowDirector);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1C557903C()
{
  v3 = (v0 + OBJC_IVAR___AAUISignOutOrEraseOfferFlow_account);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C55790AC(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR___AAUISignOutOrEraseOfferFlow_account);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C55791B4()
{
  v3 = (v0 + OBJC_IVAR___AAUISignOutOrEraseOfferFlow_dataclassActionsStore);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C5579224(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR___AAUISignOutOrEraseOfferFlow_dataclassActionsStore);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C557932C()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutOrEraseOfferFlow_isEraseAllowed);
  swift_beginAccess();
  v3 = *v2;
  v4 = *(v2 + 4);
  swift_endAccess();
  LODWORD(v5) = v3;
  BYTE4(v5) = v4 & 1;
  return v5;
}

uint64_t sub_1C55793B0(uint64_t a1)
{
  v3 = a1;
  v4 = BYTE4(a1);
  v5 = v1 + OBJC_IVAR___AAUISignOutOrEraseOfferFlow_isEraseAllowed;
  swift_beginAccess();
  *v5 = v3;
  *(v5 + 4) = v4 & 1;
  return swift_endAccess();
}

uint64_t SignOutOrEraseOfferFlow.init(navController:presentingController:account:dataclassActionsStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  MEMORY[0x1E69E5928](a1, v5);
  MEMORY[0x1E69E5928](a2, v6);
  MEMORY[0x1E69E5928](a3, v7);
  v9 = MEMORY[0x1E69E5928](a4, v8);
  LODWORD(v17) = 0;
  BYTE4(v17) = 1;
  v16 = (*(ObjectType + 280))(a1, a2, a3, a4, v17, v9);
  MEMORY[0x1E69E5928](v16, v10);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v16);
  return v16;
}

char *SignOutOrEraseOfferFlow.__allocating_init(navController:presentingController:account:dataclassActionsStore:isEraseAllowed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a5;
  v9 = BYTE4(a5);
  v6 = objc_allocWithZone(v5);
  LODWORD(v14) = v8;
  BYTE4(v14) = v9 & 1;
  return SignOutOrEraseOfferFlow.init(navController:presentingController:account:dataclassActionsStore:isEraseAllowed:)(a1, a2, a3, a4, v14);
}

char *SignOutOrEraseOfferFlow.init(navController:presentingController:account:dataclassActionsStore:isEraseAllowed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = 0;
  v30 = a5;
  v14 = a5;
  v15 = BYTE4(a5);
  v28 = a1;
  v27 = a2;
  v26 = a3;
  v25 = a4;
  v23 = a5;
  v24 = BYTE4(a5) & 1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *OBJC_IVAR___AAUISignOutOrEraseOfferFlow_signOutFlowDirector = 0;
  v5 = &v29[OBJC_IVAR___AAUISignOutOrEraseOfferFlow_isEraseAllowed];
  *v5 = 0;
  v5[4] = 1;
  MEMORY[0x1E69E5928](a1, v6);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x1E69E5920](a1);
  swift_endAccess();
  MEMORY[0x1E69E5928](a2, v7);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x1E69E5920](a2);
  swift_endAccess();
  v12 = v29;
  MEMORY[0x1E69E5928](a3, v8);
  *&v12[OBJC_IVAR___AAUISignOutOrEraseOfferFlow_account] = a3;
  v13 = v29;
  MEMORY[0x1E69E5928](a4, v9);
  *&v13[OBJC_IVAR___AAUISignOutOrEraseOfferFlow_dataclassActionsStore] = a4;
  v16 = &v29[OBJC_IVAR___AAUISignOutOrEraseOfferFlow_isEraseAllowed];
  swift_beginAccess();
  *v16 = v14;
  v16[4] = v15 & 1;
  swift_endAccess();
  v22.receiver = v29;
  v22.super_class = type metadata accessor for SignOutOrEraseOfferFlow();
  v21 = objc_msgSendSuper2(&v22, sel_init);
  MEMORY[0x1E69E5928](v21, v10);
  v29 = v21;
  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v29);
  return v21;
}

uint64_t sub_1C5579AE8(uint64_t a1)
{
  v60 = a1;
  v79 = 0;
  v78 = 0;
  v59 = 0;
  v73 = 0;
  v72 = 0;
  v61 = sub_1C5594C74();
  v62 = *(v61 - 8);
  v63 = v62;
  MEMORY[0x1EEE9AC00](v60, v61, v2, v3);
  v64 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v5;
  v78 = v1;
  v65 = sub_1C5578B90();
  if (v65)
  {
    v58 = v65;
    v56 = v65;
    v73 = v65;
    v57 = sub_1C5578D3C();
    if (v57)
    {
      v55 = v57;
      v52 = v57;
      v72 = v57;
      v51 = type metadata accessor for SignOutFlowDirector();
      swift_unknownObjectRetain();
      v6 = v56;
      v7 = v52;
      v53 = sub_1C557903C();
      v54 = sub_1C55791B4();
      v71 = sub_1C557932C();
      LODWORD(v70) = v71;
      BYTE4(v70) = BYTE4(v71);
      v8 = sub_1C557A1A0(v60, v56, v52, v53, v54, v70);
      sub_1C5578F50(v8);
      v9 = sub_1C5578EE8();
      v69 = v9;
      if (v9)
      {
        v50 = v69;

        sub_1C5410D10(&v69);
        v48 = 0;
        v68 = 0;
        v10 = AAUISignOutFlowStage.rawValue.getter();
        v11 = v50;
        v45 = v10;
        v46 = v12;
        sub_1C5594CF4();
        v47 = sub_1C5596554();
        v13 = v47;

        v66[0] = 0;
        v66[1] = v47;
        v67 = v48;
        v14 = *(*v11 + 408);
        v49 = v66;
        v14();
        sub_1C545CDC0(v49);
      }

      else
      {
        sub_1C5410D10(&v69);
      }
    }

    return v59;
  }

  else
  {
    v15 = v64;
    v16 = sub_1C54B0910();
    (*(v63 + 16))(v15, v16, v61);
    v42 = sub_1C5594C54();
    v39 = v42;
    v41 = sub_1C5596954();
    v40 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
    v43 = sub_1C5596E04();
    if (os_log_type_enabled(v42, v41))
    {
      v17 = v59;
      v30 = sub_1C5596A74();
      v26 = v30;
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v28 = 0;
      v31 = sub_1C5419DC0(0, v27, v27);
      v29 = v31;
      v32 = sub_1C5419DC0(v28, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v77 = v30;
      v76 = v31;
      v75 = v32;
      v33 = 0;
      v34 = &v77;
      sub_1C5419E14(0, &v77);
      sub_1C5419E14(v33, v34);
      v74 = v43;
      v35 = &v23;
      MEMORY[0x1EEE9AC00](&v23, v18, v19, v20);
      v36 = &v23 - 6;
      *(&v23 - 4) = v21;
      *(&v23 - 3) = &v76;
      *(&v23 - 2) = &v75;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v38 = v17;
      if (v17)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v39, v40, "SignOutOfferFlow: Error invoking buddy, no navigation controller found.", v26, 2u);
        v24 = 0;
        sub_1C5419E74(v29, 0, v27);
        sub_1C5419E74(v32, v24, MEMORY[0x1E69E7CA0] + 8);
        sub_1C5596A54();

        v25 = v38;
      }
    }

    else
    {

      v25 = v59;
    }

    v23 = v25;

    (*(v63 + 8))(v64, v61);
    return v23;
  }
}

uint64_t sub_1C557A1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a6;
  v8 = BYTE4(a6);
  swift_allocObject();
  LODWORD(v14) = v7;
  BYTE4(v14) = v8 & 1;
  return sub_1C557AD54(a1, a2, a3, a4, a5, v14);
}

id SignOutOrEraseOfferFlow.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignOutOrEraseOfferFlow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1C557A440(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL, 9322);
  *a1 = v3;
  v3[4] = v1;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1C5533B48;
}

void (*sub_1C557A4D8(void *a1))(void **a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL, 8085);
  *a1 = v3;
  v3[4] = v1;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1C5533D64;
}

uint64_t sub_1C557A570()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

double sub_1C557A5C8(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x1E69E5920](a1);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t (*sub_1C557A648(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL, 60327);
  *a1 = v3;
  v3[4] = v1;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1C557A6E0;
}

void sub_1C557A6E0(void **a1, uint64_t a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4[3];
    MEMORY[0x1E69E5928](v2, a2);
    swift_unknownObjectWeakAssign();
    MEMORY[0x1E69E5920](v2);
    sub_1C5401EF8(v4 + 3);
  }

  else
  {
    v3 = v4[3];
    swift_unknownObjectWeakAssign();
    MEMORY[0x1E69E5920](v3);
  }

  swift_endAccess();
  free(v4);
}

uint64_t sub_1C557A7A4()
{
  swift_beginAccess();
  v3 = *(v0 + 40);
  MEMORY[0x1E69E5928](v3, v1);
  swift_endAccess();
  return v3;
}

double sub_1C557A7FC(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  swift_beginAccess();
  v3 = *(v2 + 40);
  *(v2 + 40) = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C557A874()
{
  swift_beginAccess();
  v2 = *(v0 + 48);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1C557A8C4(char a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
  return swift_endAccess();
}

uint64_t sub_1C557A910()
{
  swift_beginAccess();
  v2 = *(v0 + 64);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1C557A960(char a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
  return swift_endAccess();
}

uint64_t sub_1C557AA08()
{
  swift_beginAccess();
  v3 = *(v0 + 72);
  MEMORY[0x1E69E5928](v3, v1);
  swift_endAccess();
  return v3;
}

double sub_1C557AA60(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  swift_beginAccess();
  v3 = *(v2 + 72);
  *(v2 + 72) = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C557AB34()
{
  swift_beginAccess();
  v2 = *(v0 + 80);
  sub_1C5594CF4();
  swift_endAccess();
  return v2;
}

uint64_t sub_1C557AB90(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  swift_beginAccess();
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;

  swift_endAccess();
}

uint64_t sub_1C557AC5C()
{
  swift_beginAccess();
  v2 = *(v0 + 96);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1C557ACAC(char a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;
  return swift_endAccess();
}

uint64_t sub_1C557AD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = BYTE4(a6);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 64) = 0;
  *(v6 + 80) = 0;
  *(v6 + 88) = 0;
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  MEMORY[0x1E69E5928](a2, v7);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x1E69E5920](a2);
  swift_endAccess();
  MEMORY[0x1E69E5928](a3, v8);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x1E69E5920](a3);
  swift_endAccess();
  MEMORY[0x1E69E5928](a4, v9);
  *(v6 + 56) = a4;
  MEMORY[0x1E69E5928](a5, v10);
  *(v6 + 72) = a5;
  if (v21)
  {
    v15 = [objc_opt_self() sharedConnection];
    if (v15)
    {
      v13 = *MEMORY[0x1E69ADE60];
      MEMORY[0x1E69E5928](*MEMORY[0x1E69ADE60], v11);
      sub_1C5596574();
      v14 = sub_1C5596554();

      [v15 effectiveBoolValueForSetting_];
      MEMORY[0x1E69E5920](v14);
      MEMORY[0x1E69E5920](v15);
    }

    else
    {
      sub_1C5596C94();
      __break(1u);
    }
  }

  type metadata accessor for MCRestrictedBoolType(0);
  sub_1C54BCE08();
  *(v16 + 96) = sub_1C5596E24() & 1;
  MEMORY[0x1E69E5920](a5);
  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](a2);
  swift_unknownObjectRelease();
  return v16;
}

uint64_t sub_1C557B18C(uint64_t a1)
{
  v311 = a1;
  v376 = 0;
  v309 = 0;
  v375 = 0;
  v374 = 0;
  v373 = 0;
  v310 = 0;
  v368 = 0;
  v367 = 0;
  v361 = 0;
  v357 = 0;
  v356 = 0;
  v312 = sub_1C5594C74();
  v313 = *(v312 - 8);
  v314 = v313;
  v319 = *(v313 + 64);
  MEMORY[0x1EEE9AC00](v311, v312, v2, v3);
  v321 = (v319 + 15) & 0xFFFFFFFFFFFFFFF0;
  v315 = &v103 - v321;
  MEMORY[0x1EEE9AC00](v4, &v103 - v321, v5, v6);
  v316 = &v103 - v321;
  MEMORY[0x1EEE9AC00](v7, &v103 - v321, v8, v9);
  v317 = &v103 - v321;
  MEMORY[0x1EEE9AC00](v10, &v103 - v321, v11, v12);
  v318 = &v103 - v321;
  MEMORY[0x1EEE9AC00](v13, &v103 - v321, v14, v15);
  v320 = &v103 - v321;
  v19 = MEMORY[0x1EEE9AC00](v16, &v103 - v321, v17, v18);
  v322 = &v103 - v321;
  v323 = *v20;
  v324 = v20[1];
  v325 = *(v20 + 16);
  v374 = v323;
  v375 = v324;
  v376 = v325;
  v373 = v1;
  v326 = (*(*v1 + 160))(v19);
  if (v326)
  {
    v307 = v326;
    v306 = v326;
    v368 = v326;
    if (v325)
    {
      if (v325 == 1)
      {
        v303 = v324;
        v169 = v324;
        v68 = v324;
        v361 = v169;
        v69 = v169;
        v360 = 0;
        v166 = AAUISignOutFlowStage.rawValue.getter();
        v167 = v70;
        sub_1C5594CF4();
        v168 = sub_1C5596554();
        v71 = v168;

        v359 = v168;
        v358 = v169;
        v170 = type metadata accessor for AAUIWelcomeFlowStage(0);
        sub_1C545CBC8();
        v171 = &v359;
        v172 = sub_1C55964D4();
        sub_1C5401EF8(v171);
        if (v172)
        {
          v72 = v308;

          (*(*v72 + 440))();
        }

        else
        {

          swift_getObjectType();
          v164 = 0;
          type metadata accessor for WelcomeFlowResult();
          v73 = v169;
          v165 = WelcomeFlowResult.__allocating_init(outcome:stage:info:error:)(1, v169, v164, v164);
          [v306 welcomeFlowEndedWithResult_];
          swift_unknownObjectRelease();
        }

        v174 = v310;
      }

      else
      {
        v302 = v324;
        v74 = v316;
        v144 = v324;
        v75 = v324;
        v367 = v144;
        v76 = sub_1C54B0910();
        (*(v314 + 16))(v74, v76, v312);
        v77 = v144;
        v152 = 7;
        v153 = swift_allocObject();
        *(v153 + 16) = v144;
        v163 = sub_1C5594C54();
        v145 = v163;
        v162 = sub_1C5596944();
        v146 = v162;
        v147 = 17;
        v156 = swift_allocObject();
        v148 = v156;
        v149 = 32;
        *(v156 + 16) = 32;
        v78 = swift_allocObject();
        v79 = v149;
        v157 = v78;
        v150 = v78;
        *(v78 + 16) = 8;
        v151 = v79;
        v80 = swift_allocObject();
        v81 = v153;
        v154 = v80;
        *(v80 + 16) = sub_1C55380D4;
        *(v80 + 24) = v81;
        v82 = swift_allocObject();
        v83 = v154;
        v160 = v82;
        v155 = v82;
        *(v82 + 16) = sub_1C5473EFC;
        *(v82 + 24) = v83;
        v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
        v158 = sub_1C5596E04();
        v159 = v84;

        v85 = v156;
        v86 = v159;
        *v159 = sub_1C545C6D4;
        v86[1] = v85;

        v87 = v157;
        v88 = v159;
        v159[2] = sub_1C545C6D4;
        v88[3] = v87;

        v89 = v159;
        v90 = v160;
        v159[4] = sub_1C5473FA4;
        v89[5] = v90;
        sub_1C540FCD8();

        if (os_log_type_enabled(v163, v162))
        {
          v92 = v310;
          v137 = sub_1C5596A74();
          v134 = v137;
          v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
          v138 = sub_1C5419DC0(0, v135, v135);
          v136 = v138;
          v140 = 1;
          v139 = sub_1C5419DC0(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v366 = v137;
          v365 = v138;
          v364 = v139;
          v141 = &v366;
          sub_1C5419E14(2, &v366);
          sub_1C5419E14(v140, v141);
          v362 = sub_1C545C6D4;
          v363 = v148;
          sub_1C5419E28(&v362, v141, &v365, &v364);
          v142 = v92;
          v143 = v92;
          if (v92)
          {
            v132 = 0;

            __break(1u);
          }

          else
          {
            v362 = sub_1C545C6D4;
            v363 = v150;
            sub_1C5419E28(&v362, &v366, &v365, &v364);
            v130 = 0;
            v131 = 0;
            v362 = sub_1C5473FA4;
            v363 = v155;
            sub_1C5419E28(&v362, &v366, &v365, &v364);
            v128 = 0;
            v129 = 0;
            _os_log_impl(&dword_1C5355000, v145, v146, "Deferring action from stage: %s", v134, 0xCu);
            sub_1C5419E74(v136, 0, v135);
            sub_1C5419E74(v139, 1, MEMORY[0x1E69E7CA0] + 8);
            sub_1C5596A54();

            v133 = v128;
          }
        }

        else
        {
          v93 = v310;

          v133 = v93;
        }

        v127 = v133;

        (*(v314 + 8))(v316, v312);
        swift_getObjectType();
        v125 = 0;
        type metadata accessor for WelcomeFlowResult();
        v94 = v144;
        v126 = WelcomeFlowResult.__allocating_init(outcome:stage:info:error:)(1, v144, v125, v125);
        [v306 welcomeFlowEndedWithResult_];
        swift_unknownObjectRelease();

        v174 = v127;
      }

      goto LABEL_59;
    }

    v304 = v323;
    v305 = v324;
    v294 = v324;
    v293 = v323;
    sub_1C5594CF4();
    v21 = v294;
    v357 = v293;
    v356 = v294;
    v355 = v294;
    v354 = 0;
    v295 = AAUISignOutFlowStage.rawValue.getter();
    v296 = v22;
    sub_1C5594CF4();
    v297 = sub_1C5596554();
    v23 = v297;

    v353 = v297;
    v299 = type metadata accessor for AAUIWelcomeFlowStage(0);
    v298 = v299;
    sub_1C545CA98();
    v300 = &v353;
    v301 = sub_1C5596E24();
    sub_1C5401EF8(v300);

    if (v301)
    {
      v290 = v327;
      swift_beginAccess();
      v291 = *(v308 + 48);
      swift_endAccess();
      v292 = v291 ^ 1;
    }

    else
    {
      v292 = 0;
    }

    v289 = v292;

    if (v289)
    {
      sub_1C557CE68();

      swift_unknownObjectRelease();
      return v310;
    }

    v24 = v294;
    v352 = 0;
    v282 = AAUISignOutFlowStage.rawValue.getter();
    v283 = v25;
    sub_1C5594CF4();
    v284 = sub_1C5596554();
    v26 = v284;

    v351 = v284;
    v350 = v294;
    v285 = sub_1C545CBC8();
    v286 = &v351;
    v287 = sub_1C55964D4();
    sub_1C5401EF8(v286);
    if (v287)
    {
      v27 = v322;

      v28 = sub_1C54B0910();
      (*(v314 + 16))(v27, v28, v312);
      v280 = sub_1C5594C54();
      v277 = v280;
      v279 = sub_1C5596944();
      v278 = v279;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
      v281 = sub_1C5596E04();
      if (os_log_type_enabled(v280, v279))
      {
        v29 = v310;
        v268 = sub_1C5596A74();
        v264 = v268;
        v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
        v266 = 0;
        v269 = sub_1C5419DC0(0, v265, v265);
        v267 = v269;
        v270 = sub_1C5419DC0(v266, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v330[0] = v268;
        v329 = v269;
        v328 = v270;
        v271 = 0;
        v272 = v330;
        sub_1C5419E14(0, v330);
        sub_1C5419E14(v271, v272);
        v327[3] = v281;
        v273 = &v103;
        MEMORY[0x1EEE9AC00](&v103, v30, v31, v32);
        v274 = &v103 - 6;
        *(&v103 - 4) = v33;
        *(&v103 - 3) = &v329;
        *(&v103 - 2) = &v328;
        v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
        sub_1C5419F0C();
        sub_1C55966B4();
        v276 = v29;
        if (v29)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1C5355000, v277, v278, "Completed Stage: Signout Offer. Starting SignOut information.", v264, 2u);
          v262 = 0;
          sub_1C5419E74(v267, 0, v265);
          sub_1C5419E74(v270, v262, MEMORY[0x1E69E7CA0] + 8);
          sub_1C5596A54();

          v263 = v276;
        }
      }

      else
      {

        v263 = v310;
      }

      v34 = v308;
      v260 = v263;

      v35 = (*(v314 + 8))(v322, v312);
      (*(*v34 + 432))(v35);
      v261 = v260;
LABEL_48:
      v173 = v261;

      v174 = v173;
LABEL_59:
      v124 = v174;
      swift_unknownObjectRelease();
      return v124;
    }

    v36 = v294;
    v349 = 2;
    v255 = AAUISignOutFlowStage.rawValue.getter();
    v256 = v37;
    sub_1C5594CF4();
    v257 = sub_1C5596554();
    v38 = v257;

    v348 = v257;
    v347 = v294;
    v258 = &v348;
    v259 = sub_1C55964D4();
    sub_1C5401EF8(v258);
    if (v259)
    {
      v39 = v320;

      v40 = sub_1C54B0910();
      (*(v314 + 16))(v39, v40, v312);
      v253 = sub_1C5594C54();
      v250 = v253;
      v252 = sub_1C5596944();
      v251 = v252;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
      v254 = sub_1C5596E04();
      if (os_log_type_enabled(v253, v252))
      {
        v41 = v310;
        v241 = sub_1C5596A74();
        v237 = v241;
        v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
        v239 = 0;
        v242 = sub_1C5419DC0(0, v238, v238);
        v240 = v242;
        v243 = sub_1C5419DC0(v239, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v333 = v241;
        v332 = v242;
        v331 = v243;
        v244 = 0;
        v245 = &v333;
        sub_1C5419E14(0, &v333);
        sub_1C5419E14(v244, v245);
        v330[1] = v254;
        v246 = &v103;
        MEMORY[0x1EEE9AC00](&v103, v42, v43, v44);
        v247 = &v103 - 6;
        *(&v103 - 4) = v45;
        *(&v103 - 3) = &v332;
        *(&v103 - 2) = &v331;
        v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
        sub_1C5419F0C();
        sub_1C55966B4();
        v249 = v41;
        if (v41)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1C5355000, v250, v251, "Completed Stage: Sign Out Remain Information", v237, 2u);
          v235 = 0;
          sub_1C5419E74(v240, 0, v238);
          sub_1C5419E74(v243, v235, MEMORY[0x1E69E7CA0] + 8);
          sub_1C5596A54();

          v236 = v249;
        }
      }

      else
      {

        v236 = v310;
      }

      v234 = v236;

      (*(v314 + 8))(v320, v312);
      sub_1C5594CF4();
      if (v293)
      {
        v233 = v293;
        v232 = v293;
        v334[0] = sub_1C55965F4("tnlDisclaimerLabel", 18, 1);
        v334[1] = v46;
        v231 = v334;
        sub_1C5596464();
        sub_1C5401ECC(v231);
      }

      else
      {
        memset(v336, 0, sizeof(v336));
        v337 = 0;
      }

      if (v337)
      {
        if (swift_dynamicCast())
        {
          v229 = v334[2];
          v230 = v334[3];
        }

        else
        {
          v229 = 0;
          v230 = 0;
        }

        v227 = v229;
        v228 = v230;
      }

      else
      {
        sub_1C544435C(v336);
        v227 = 0;
        v228 = 0;
      }

      v47 = v308;
      v226 = v228;
      v224 = v227;
      sub_1C5594CF4();
      v225 = &v335;
      swift_beginAccess();
      v48 = v226;
      v47[10] = v224;
      v47[11] = v48;

      swift_endAccess();

      (*(*v47 + 448))(v49);
      v261 = v234;
      goto LABEL_48;
    }

    v50 = v294;
    v346 = 3;
    v219 = AAUISignOutFlowStage.rawValue.getter();
    v220 = v51;
    sub_1C5594CF4();
    v221 = sub_1C5596554();
    v52 = v221;

    v345 = v221;
    v344[1] = v294;
    v222 = &v345;
    v223 = sub_1C55964D4();
    sub_1C5401EF8(v222);
    if (v223)
    {
      v53 = v318;

      v54 = sub_1C54B0910();
      (*(v314 + 16))(v53, v54, v312);
      v217 = sub_1C5594C54();
      v214 = v217;
      v216 = sub_1C5596944();
      v215 = v216;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
      v218 = sub_1C5596E04();
      if (os_log_type_enabled(v217, v216))
      {
        v55 = v310;
        v205 = sub_1C5596A74();
        v201 = v205;
        v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
        v203 = 0;
        v206 = sub_1C5419DC0(0, v202, v202);
        v204 = v206;
        v207 = sub_1C5419DC0(v203, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v341[0] = v205;
        v340 = v206;
        v339 = v207;
        v208 = 0;
        v209 = v341;
        sub_1C5419E14(0, v341);
        sub_1C5419E14(v208, v209);
        v338 = v218;
        v210 = &v103;
        MEMORY[0x1EEE9AC00](&v103, v56, v57, v58);
        v211 = &v103 - 6;
        *(&v103 - 4) = v59;
        *(&v103 - 3) = &v340;
        *(&v103 - 2) = &v339;
        v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
        sub_1C5419F0C();
        sub_1C55966B4();
        v213 = v55;
        if (v55)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1C5355000, v214, v215, "Completed Stage: Sign out Removed information", v201, 2u);
          v199 = 0;
          sub_1C5419E74(v204, 0, v202);
          sub_1C5419E74(v207, v199, MEMORY[0x1E69E7CA0] + 8);
          sub_1C5596A54();

          v200 = v213;
        }
      }

      else
      {

        v200 = v310;
      }

      v198 = v200;

      (*(v314 + 8))(v318, v312);
      swift_getObjectType();
      v196 = 0;
      type metadata accessor for WelcomeFlowResult();
      v60 = v294;
      v197 = WelcomeFlowResult.__allocating_init(outcome:stage:info:error:)(v196, v294, v196, v196);
      [v306 welcomeFlowEndedWithResult_];
      swift_unknownObjectRelease();
      v261 = v198;
      goto LABEL_48;
    }

    v61 = v317;

    v62 = sub_1C54B0910();
    (*(v314 + 16))(v61, v62, v312);
    v194 = sub_1C5594C54();
    v191 = v194;
    v193 = sub_1C5596954();
    v192 = v193;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
    v195 = sub_1C5596E04();
    if (os_log_type_enabled(v194, v193))
    {
      v63 = v310;
      v182 = sub_1C5596A74();
      v178 = v182;
      v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v180 = 0;
      v183 = sub_1C5419DC0(0, v179, v179);
      v181 = v183;
      v184 = sub_1C5419DC0(v180, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v344[0] = v182;
      v343 = v183;
      v342 = v184;
      v185 = 0;
      v186 = v344;
      sub_1C5419E14(0, v344);
      sub_1C5419E14(v185, v186);
      v341[1] = v195;
      v187 = &v103;
      MEMORY[0x1EEE9AC00](&v103, v64, v65, v66);
      v188 = &v103 - 6;
      *(&v103 - 4) = v67;
      *(&v103 - 3) = &v343;
      *(&v103 - 2) = &v342;
      v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v190 = v63;
      if (v63)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v191, v192, "Completed Stage: Unknown.", v178, 2u);
        v176 = 0;
        sub_1C5419E74(v181, 0, v179);
        sub_1C5419E74(v184, v176, MEMORY[0x1E69E7CA0] + 8);
        sub_1C5596A54();

        v177 = v190;
      }
    }

    else
    {

      v177 = v310;
    }

    v175 = v177;

    (*(v314 + 8))(v317, v312);

    swift_unknownObjectRelease();
    return v175;
  }

  else
  {
    v95 = v315;
    v96 = sub_1C54B0910();
    (*(v314 + 16))(v95, v96, v312);
    v122 = sub_1C5594C54();
    v119 = v122;
    v121 = sub_1C5596954();
    v120 = v121;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
    v123 = sub_1C5596E04();
    if (os_log_type_enabled(v122, v121))
    {
      v97 = v310;
      v110 = sub_1C5596A74();
      v106 = v110;
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v108 = 0;
      v111 = sub_1C5419DC0(0, v107, v107);
      v109 = v111;
      v112 = sub_1C5419DC0(v108, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v372 = v110;
      v371 = v111;
      v370 = v112;
      v113 = 0;
      v114 = &v372;
      sub_1C5419E14(0, &v372);
      sub_1C5419E14(v113, v114);
      v369 = v123;
      v115 = &v103;
      MEMORY[0x1EEE9AC00](&v103, v98, v99, v100);
      v116 = &v103 - 6;
      *(&v103 - 4) = v101;
      *(&v103 - 3) = &v371;
      *(&v103 - 2) = &v370;
      v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v118 = v97;
      if (v97)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v119, v120, "SignOutFlowDirector: Missing reference to the buddy flow invoker.", v106, 2u);
        v104 = 0;
        sub_1C5419E74(v109, 0, v107);
        sub_1C5419E74(v112, v104, MEMORY[0x1E69E7CA0] + 8);
        sub_1C5596A54();

        v105 = v118;
      }
    }

    else
    {

      v105 = v310;
    }

    v103 = v105;

    (*(v314 + 8))(v315, v312);
    return v103;
  }
}

uint64_t sub_1C557CE68()
{
  swift_beginAccess();
  v4 = *(v0 + 96);
  v1 = swift_endAccess();
  if (v4)
  {
    (*(*v3 + 424))(v1);
  }

  else
  {
    (*(*v3 + 440))(v1);
  }

  swift_beginAccess();
  v3[48] = 1;
  return swift_endAccess();
}

void sub_1C557CF78()
{
  v64 = 0;
  v83 = 0;
  v81 = 0;
  v79 = 0;
  v45 = 0;
  v46 = sub_1C5596284();
  v47 = *(v46 - 8);
  v48 = v47;
  MEMORY[0x1EEE9AC00](0, v46, v0, v1);
  v49 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1C55962A4();
  v51 = *(v50 - 8);
  v52 = v51;
  MEMORY[0x1EEE9AC00](v64, v50, v3, v4);
  v53 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1C5594C74();
  v55 = v61;
  v56 = *(v61 - 8);
  v60 = v56;
  v57 = v56;
  v58 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v61 - 8, v61, v6, v7);
  v8 = v23 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v8;
  v83 = v9;
  v10 = sub_1C54B0910();
  (*(v60 + 16))(v8, v10, v61);
  v66 = sub_1C5594C54();
  v62 = v66;
  v65 = sub_1C5596944();
  v63 = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v67 = sub_1C5596E04();
  if (os_log_type_enabled(v66, v65))
  {
    v11 = v45;
    v36 = sub_1C5596A74();
    v32 = v36;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v34 = 0;
    v37 = sub_1C5419DC0(0, v33, v33);
    v35 = v37;
    v38 = sub_1C5419DC0(v34, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v71 = v36;
    v70 = v37;
    v69 = v38;
    v39 = 0;
    v40 = &v71;
    sub_1C5419E14(0, &v71);
    sub_1C5419E14(v39, v40);
    v68 = v67;
    v41 = v23;
    MEMORY[0x1EEE9AC00](v23, v12, v13, v14);
    v42 = &v23[-6];
    v23[-4] = v15;
    v23[-3] = &v70;
    v23[-2] = &v69;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v44 = v11;
    if (v11)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v62, v63, "Starting Sign Out or Erase offer.", v32, 2u);
      v30 = 0;
      sub_1C5419E74(v35, 0, v33);
      sub_1C5419E74(v38, v30, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();

      v31 = v44;
    }
  }

  else
  {

    v31 = v45;
  }

  (*(v57 + 8))(v59, v55);
  v24 = 0;
  v82 = 0;
  v23[0] = AAUISignOutFlowStage.rawValue.getter();
  v23[1] = v16;
  sub_1C5594CF4();
  v29 = sub_1C5596554();
  v17 = v29;

  v81 = v29;
  v80 = v24;
  v28 = sub_1C5580A68(&v80);
  v79 = v28;
  v25 = 0;
  sub_1C5444CF8();
  v27 = sub_1C5596984();

  swift_unknownObjectRetain();
  v18 = v29;
  v19 = swift_allocObject();
  v20 = v24;
  v21 = v28;
  v22 = v29;
  v19[2] = v54;
  v19[3] = v21;
  v19[4] = v22;
  v77 = sub_1C5581678;
  v78 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v73 = 1107296256;
  v74 = v20;
  v75 = sub_1C544364C;
  v76 = &block_descriptor_21;
  v26 = _Block_copy(&aBlock);

  sub_1C544369C();
  sub_1C54436B4();
  MEMORY[0x1C6947530](v25, v53, v49, v26);
  (*(v48 + 8))(v49, v46);
  (*(v52 + 8))(v53, v50);
  _Block_release(v26);

  swift_unknownObjectRelease();
}

uint64_t sub_1C557D728(uint64_t a1, uint64_t a2, void *a3)
{
  v73 = a3;
  v72 = a2;
  v76 = a1;
  v77 = 0;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v66 = 0;
  v88 = 0;
  v86 = 0;
  v67 = sub_1C5594C74();
  v68 = *(v67 - 8);
  v69 = v68;
  v70 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](0, v72, v73, v67);
  v71 = &v23 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = v3;
  v97 = v4;
  v96 = v5;
  type metadata accessor for SignOutActionInvokingOBWelcomeController();
  swift_unknownObjectRetain();
  v6 = v73;

  v95[3] = type metadata accessor for SignOutFlowDirector();
  v95[4] = &off_1F447F528;
  v95[0] = v76;
  v75 = SignOutActionInvokingOBWelcomeController.__allocating_init(model:stage:flowDirector:)(v72, v73, v95);
  v7 = v75;
  v74 = &v94;
  swift_beginAccess();
  v8 = *(v76 + 40);
  *(v76 + 40) = v75;

  swift_endAccess();
  v78 = v76 + 32;
  v79 = &v93;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v80 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v65 = v80;
    v61 = v80;
    v88 = v80;
    v63 = &v87;
    swift_beginAccess();
    v64 = *(v76 + 40);
    v62 = v64;
    v9 = v64;
    swift_endAccess();
    if (v64)
    {
      v60 = v62;
      v56 = v62;
      v86 = v62;
      v57 = v76 + 32;
      v58 = &v84;
      swift_beginAccess();
      v59 = swift_unknownObjectWeakLoadStrong();
      swift_endAccess();
      v85 = v59;
      if (v59)
      {
        v55 = v85;
        v10 = v85;
        sub_1C5401EF8(&v85);
        v51 = sub_1C54F02F8();
        v53 = 1;
        v50 = sub_1C5596E04();
        v49 = v11;
        v12 = v56;
        *v49 = v56;
        sub_1C540FCD8();
        v52 = v13;
        v54 = sub_1C5596704();

        [v55 setViewControllers:v54 animated:v53];
      }

      else
      {
        sub_1C5401EF8(&v85);
      }

      v46 = v76 + 24;
      v47 = &v82;
      swift_beginAccess();
      v48 = swift_unknownObjectWeakLoadStrong();
      swift_endAccess();
      v83 = v48;
      if (v48)
      {
        v45 = v83;
        v14 = v83;
        sub_1C5401EF8(&v83);
        [v45 presentViewController:v61 animated:1 completion:0];
      }

      else
      {
        sub_1C5401EF8(&v83);
      }

      return v66;
    }
  }

  v15 = v71;
  v16 = sub_1C54B0910();
  (*(v69 + 16))(v15, v16, v67);
  v42 = sub_1C5594C54();
  v39 = v42;
  v41 = sub_1C5596954();
  v40 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v43 = sub_1C5596E04();
  if (os_log_type_enabled(v42, v41))
  {
    v17 = v66;
    v30 = sub_1C5596A74();
    v26 = v30;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v28 = 0;
    v31 = sub_1C5419DC0(0, v27, v27);
    v29 = v31;
    v32 = sub_1C5419DC0(v28, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v92 = v30;
    v91 = v31;
    v90 = v32;
    v33 = 0;
    v34 = &v92;
    sub_1C5419E14(0, &v92);
    sub_1C5419E14(v33, v34);
    v89 = v43;
    v35 = &v23;
    MEMORY[0x1EEE9AC00](&v23, v18, v19, v20);
    v36 = &v23 - 6;
    *(&v23 - 4) = v21;
    *(&v23 - 3) = &v91;
    *(&v23 - 2) = &v90;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v38 = v17;
    if (v17)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v39, v40, "Unable to start Sign Out offer.", v26, 2u);
      v24 = 0;
      sub_1C5419E74(v29, 0, v27);
      sub_1C5419E74(v32, v24, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();

      v25 = v38;
    }
  }

  else
  {

    v25 = v66;
  }

  v23 = v25;

  (*(v69 + 8))(v71, v67);
  return v23;
}

void sub_1C557DE00()
{
  v54 = 0;
  v69 = 0;
  v35 = 0;
  v36 = sub_1C5596284();
  v37 = *(v36 - 8);
  v38 = v37;
  MEMORY[0x1EEE9AC00](0, v36, v0, v1);
  v39 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1C55962A4();
  v41 = *(v40 - 8);
  v42 = v41;
  MEMORY[0x1EEE9AC00](v54, v40, v3, v4);
  v43 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1C5594C74();
  v45 = v51;
  v46 = *(v51 - 8);
  v50 = v46;
  v47 = v46;
  v48 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v51 - 8, v51, v6, v7);
  v8 = &v16 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v8;
  v69 = v9;
  v10 = sub_1C54B0910();
  (*(v50 + 16))(v8, v10, v51);
  v56 = sub_1C5594C54();
  v52 = v56;
  v55 = sub_1C5596944();
  v53 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v57 = sub_1C5596E04();
  if (os_log_type_enabled(v56, v55))
  {
    v11 = v35;
    v26 = sub_1C5596A74();
    v22 = v26;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v24 = 0;
    v27 = sub_1C5419DC0(0, v23, v23);
    v25 = v27;
    v28 = sub_1C5419DC0(v24, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v61 = v26;
    v60 = v27;
    v59 = v28;
    v29 = 0;
    v30 = &v61;
    sub_1C5419E14(0, &v61);
    sub_1C5419E14(v29, v30);
    v58 = v57;
    v31 = &v16;
    MEMORY[0x1EEE9AC00](&v16, v12, v13, v14);
    v32 = &v16 - 6;
    *(&v16 - 4) = v15;
    *(&v16 - 3) = &v60;
    *(&v16 - 2) = &v59;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v34 = v11;
    if (v11)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v52, v53, "Starting DisembarkUI flow.", v22, 2u);
      v20 = 0;
      sub_1C5419E74(v25, 0, v23);
      sub_1C5419E74(v28, v20, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();

      v21 = v34;
    }
  }

  else
  {

    v21 = v35;
  }

  (*(v47 + 8))(v49, v45);
  v17 = 0;
  sub_1C5444CF8();
  v19 = sub_1C5596984();

  v67 = sub_1C55816EC;
  v68 = v44;
  aBlock = MEMORY[0x1E69E9820];
  v63 = 1107296256;
  v64 = 0;
  v65 = sub_1C544364C;
  v66 = &block_descriptor_25;
  v18 = _Block_copy(&aBlock);

  sub_1C544369C();
  sub_1C54436B4();
  MEMORY[0x1C6947530](v17, v43, v39, v18);
  (*(v38 + 8))(v39, v36);
  (*(v42 + 8))(v43, v40);
  _Block_release(v18);
}

uint64_t sub_1C557E464(uint64_t a1)
{
  v41 = a1;
  v40 = 0;
  v56 = 0;
  v39 = 0;
  v50 = 0;
  v42 = sub_1C5594C74();
  v43 = *(v42 - 8);
  v44 = v43;
  MEMORY[0x1EEE9AC00](v41, v42, v1, 0);
  v45 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v3;
  v46 = v3 + 32;
  v47 = &v55;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v48 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v38 = v48;
    v31 = v48;
    v50 = v48;
    v30 = objc_opt_self();
    v6 = v31;
    [v30 startDisembarkUIFlowWithParentViewController_];

    return v39;
  }

  else
  {
    v4 = v45;
    v5 = sub_1C54B0910();
    (*(v44 + 16))(v4, v5, v42);
    v36 = sub_1C5594C54();
    v33 = v36;
    v35 = sub_1C5596954();
    v34 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
    v37 = sub_1C5596E04();
    if (os_log_type_enabled(v36, v35))
    {
      v7 = v39;
      v21 = sub_1C5596A74();
      v17 = v21;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v19 = 0;
      v22 = sub_1C5419DC0(0, v18, v18);
      v20 = v22;
      v23 = sub_1C5419DC0(v19, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v54 = v21;
      v53 = v22;
      v52 = v23;
      v24 = 0;
      v25 = &v54;
      sub_1C5419E14(0, &v54);
      sub_1C5419E14(v24, v25);
      v51 = v37;
      v26 = &v13;
      MEMORY[0x1EEE9AC00](&v13, v8, v9, v10);
      v27 = &v13 - 6;
      *(&v13 - 4) = v11;
      *(&v13 - 3) = &v53;
      *(&v13 - 2) = &v52;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v29 = v7;
      if (v7)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v33, v34, "Unable to start DisembarkUI flow. Navigation controller is nil.", v17, 2u);
        v15 = 0;
        sub_1C5419E74(v20, 0, v18);
        sub_1C5419E74(v23, v15, MEMORY[0x1E69E7CA0] + 8);
        sub_1C5596A54();

        v16 = v29;
      }
    }

    else
    {

      v16 = v39;
    }

    v14 = v16;

    (*(v44 + 8))(v45, v42);
    return v14;
  }
}

void sub_1C557E920()
{
  v63 = 0;
  v82 = 0;
  v80 = 0;
  v78 = 0;
  v44 = 0;
  v45 = sub_1C5596284();
  v46 = *(v45 - 8);
  v47 = v46;
  MEMORY[0x1EEE9AC00](0, v45, v0, v1);
  v48 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1C55962A4();
  v50 = *(v49 - 8);
  v51 = v50;
  MEMORY[0x1EEE9AC00](v63, v49, v3, v4);
  v52 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1C5594C74();
  v54 = v60;
  v55 = *(v60 - 8);
  v59 = v55;
  v56 = v55;
  v57 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v60 - 8, v60, v6, v7);
  v8 = v22 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v8;
  v82 = v9;
  v10 = sub_1C54B0910();
  (*(v59 + 16))(v8, v10, v60);
  v65 = sub_1C5594C54();
  v61 = v65;
  v64 = sub_1C5596944();
  v62 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v66 = sub_1C5596E04();
  if (os_log_type_enabled(v65, v64))
  {
    v11 = v44;
    v35 = sub_1C5596A74();
    v31 = v35;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v33 = 0;
    v36 = sub_1C5419DC0(0, v32, v32);
    v34 = v36;
    v37 = sub_1C5419DC0(v33, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v70 = v35;
    v69 = v36;
    v68 = v37;
    v38 = 0;
    v39 = &v70;
    sub_1C5419E14(0, &v70);
    sub_1C5419E14(v38, v39);
    v67 = v66;
    v40 = v22;
    MEMORY[0x1EEE9AC00](v22, v12, v13, v14);
    v41 = &v22[-6];
    v22[-4] = v15;
    v22[-3] = &v69;
    v22[-2] = &v68;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v43 = v11;
    if (v11)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v61, v62, "Starting Sign Out Remain Information.", v31, 2u);
      v29 = 0;
      sub_1C5419E74(v34, 0, v32);
      sub_1C5419E74(v37, v29, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();

      v30 = v43;
    }
  }

  else
  {

    v30 = v44;
  }

  (*(v56 + 8))(v58, v54);
  v23 = 2;
  v81 = 2;
  v22[0] = AAUISignOutFlowStage.rawValue.getter();
  v22[1] = v16;
  sub_1C5594CF4();
  v28 = sub_1C5596554();
  v17 = v28;

  v80 = v28;
  v79 = v23;
  v27 = sub_1C5580A68(&v79);
  v78 = v27;
  v24 = 0;
  sub_1C5444CF8();
  v26 = sub_1C5596984();

  swift_unknownObjectRetain();
  v18 = v28;
  v19 = swift_allocObject();
  v20 = v27;
  v21 = v28;
  v19[2] = v53;
  v19[3] = v20;
  v19[4] = v21;
  v76 = sub_1C5581758;
  v77 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v72 = 1107296256;
  v73 = 0;
  v74 = sub_1C544364C;
  v75 = &block_descriptor_32;
  v25 = _Block_copy(&aBlock);

  sub_1C544369C();
  sub_1C54436B4();
  MEMORY[0x1C6947530](v24, v52, v48, v25);
  (*(v47 + 8))(v48, v45);
  (*(v51 + 8))(v52, v49);
  _Block_release(v25);

  swift_unknownObjectRelease();
}

uint64_t sub_1C557F0CC(uint64_t a1, uint64_t a2, void *a3)
{
  v121 = a3;
  v120 = a2;
  v127 = a1;
  v126 = 0;
  v154 = 0;
  v153 = 0;
  v152 = 0;
  v111 = 0;
  v142 = 0;
  v140 = 0;
  v134 = 0;
  v132 = 0;
  v112 = sub_1C5594C74();
  v113 = *(v112 - 8);
  v114 = v113;
  v115 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](0, v120, v121, v112);
  v117 = (v115 + 15) & 0xFFFFFFFFFFFFFFF0;
  v116 = &v34 - v117;
  MEMORY[0x1EEE9AC00](v3, v4, v5, &v34 - v117);
  v118 = &v34 - v117;
  v154 = v6;
  v153 = v7;
  v152 = v8;
  type metadata accessor for SignOutRemainedInformationActionInvokingOBWelcomeController();
  swift_unknownObjectRetain();
  v9 = v121;

  v151[3] = type metadata accessor for SignOutFlowDirector();
  v151[4] = &off_1F447F528;
  v151[0] = v127;
  v125 = 32;
  v119 = &v150;
  swift_beginAccess();
  v122 = *(v127 + 72);
  v10 = v122;
  swift_endAccess();
  v124 = SignOutRemainedInformationActionInvokingOBWelcomeController.__allocating_init(model:stage:flowDirector:dataclassActionsStore:)(v120, v121, v151, v122);
  v11 = v124;
  v123 = &v149;
  swift_beginAccess();
  v12 = *(v127 + 40);
  *(v127 + 40) = v124;

  swift_endAccess();
  v128 = &v148;
  swift_beginAccess();
  v129 = *(v127 + 96);
  swift_endAccess();
  if (v129)
  {
    v63 = v127 + 32;
    v64 = &v147;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v65 = Strong;
    swift_endAccess();
    if (Strong)
    {
      v62 = v65;
      v58 = v65;
      v142 = v65;
      v60 = &v141;
      swift_beginAccess();
      v61 = *(v127 + 40);
      v59 = v61;
      v25 = v61;
      swift_endAccess();
      if (v61)
      {
        v57 = v59;
        v56 = v59;
        v140 = v59;
        [v58 pushViewController_animated_];

        return v111;
      }
    }

    v26 = v116;
    v27 = sub_1C54B0910();
    (*(v114 + 16))(v26, v27, v112);
    v54 = sub_1C5594C54();
    v51 = v54;
    v53 = sub_1C5596954();
    v52 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
    v55 = sub_1C5596E04();
    if (os_log_type_enabled(v54, v53))
    {
      v28 = v111;
      v42 = sub_1C5596A74();
      v38 = v42;
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v40 = 0;
      v43 = sub_1C5419DC0(0, v39, v39);
      v41 = v43;
      v44 = sub_1C5419DC0(v40, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v146 = v42;
      v145 = v43;
      v144 = v44;
      v45 = 0;
      v46 = &v146;
      sub_1C5419E14(0, &v146);
      sub_1C5419E14(v45, v46);
      v143 = v55;
      v47 = &v34;
      MEMORY[0x1EEE9AC00](&v34, v29, v30, v31);
      v48 = &v34 - 6;
      *(&v34 - 4) = v32;
      *(&v34 - 3) = &v145;
      *(&v34 - 2) = &v144;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v50 = v28;
      if (v28)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v51, v52, "Unable to start sign out remain information flow. OnboardingViewController is nil.", v38, 2u);
        v36 = 0;
        sub_1C5419E74(v41, 0, v39);
        sub_1C5419E74(v44, v36, MEMORY[0x1E69E7CA0] + 8);
        sub_1C5596A54();

        v37 = v50;
      }
    }

    else
    {

      v37 = v111;
    }

    v35 = v37;

    (*(v114 + 8))(v116, v112);
    return v35;
  }

  else
  {
    v107 = v127 + 32;
    v108 = &v139;
    swift_beginAccess();
    v110 = swift_unknownObjectWeakLoadStrong();
    v109 = v110;
    swift_endAccess();
    if (v110)
    {
      v106 = v109;
      v102 = v109;
      v134 = v109;
      v104 = &v133;
      swift_beginAccess();
      v105 = *(v127 + 40);
      v103 = v105;
      v13 = v105;
      swift_endAccess();
      if (v105)
      {
        v101 = v103;
        v91 = v103;
        v132 = v103;
        v97 = 0;
        v93 = sub_1C54F02F8();
        v95 = 1;
        v92 = sub_1C5596E04();
        v90 = v14;
        v15 = v91;
        *v90 = v91;
        sub_1C540FCD8();
        v94 = v16;
        v96 = sub_1C5596704();

        [v102 setViewControllers:v96 animated:v95];

        v98 = v127 + 24;
        v99 = &v130;
        swift_beginAccess();
        v100 = swift_unknownObjectWeakLoadStrong();
        swift_endAccess();
        v131 = v100;
        if (v100)
        {
          v89 = v131;
          v17 = v131;
          sub_1C5401EF8(&v131);
          [v89 presentViewController:v102 animated:1 completion:0];
        }

        else
        {
          sub_1C5401EF8(&v131);
        }

        return v111;
      }
    }

    v18 = v118;
    v19 = sub_1C54B0910();
    (*(v114 + 16))(v18, v19, v112);
    v87 = sub_1C5594C54();
    v84 = v87;
    v86 = sub_1C5596954();
    v85 = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
    v88 = sub_1C5596E04();
    if (os_log_type_enabled(v87, v86))
    {
      v20 = v111;
      v75 = sub_1C5596A74();
      v71 = v75;
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v73 = 0;
      v76 = sub_1C5419DC0(0, v72, v72);
      v74 = v76;
      v77 = sub_1C5419DC0(v73, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v138 = v75;
      v137 = v76;
      v136 = v77;
      v78 = 0;
      v79 = &v138;
      sub_1C5419E14(0, &v138);
      sub_1C5419E14(v78, v79);
      v135 = v88;
      v80 = &v34;
      MEMORY[0x1EEE9AC00](&v34, v21, v22, v23);
      v81 = &v34 - 6;
      *(&v34 - 4) = v24;
      *(&v34 - 3) = &v137;
      *(&v34 - 2) = &v136;
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v83 = v20;
      if (v20)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v84, v85, "Unable to start Sign Out flow.", v71, 2u);
        v69 = 0;
        sub_1C5419E74(v74, 0, v72);
        sub_1C5419E74(v77, v69, MEMORY[0x1E69E7CA0] + 8);
        sub_1C5596A54();

        v70 = v83;
      }
    }

    else
    {

      v70 = v111;
    }

    v67 = v70;

    (*(v114 + 8))(v118, v112);
    return v67;
  }
}

uint64_t sub_1C557FB80()
{
  v39 = 0;
  v47 = 0;
  v28 = 0;
  v36 = sub_1C5594C74();
  v30 = v36;
  v31 = *(v36 - 8);
  v35 = v31;
  v32 = v31;
  v33 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v36 - 8, v36, v0, v1);
  v2 = v12 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v2;
  v47 = v3;
  v4 = sub_1C54B0910();
  (*(v35 + 16))(v2, v4, v36);
  v41 = sub_1C5594C54();
  v37 = v41;
  v40 = sub_1C5596944();
  v38 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v42 = sub_1C5596E04();
  if (os_log_type_enabled(v41, v40))
  {
    v5 = v28;
    v19 = sub_1C5596A74();
    v15 = v19;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v17 = 0;
    v20 = sub_1C5419DC0(0, v16, v16);
    v18 = v20;
    v21 = sub_1C5419DC0(v17, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v46 = v19;
    v45 = v20;
    v44 = v21;
    v22 = 0;
    v23 = &v46;
    sub_1C5419E14(0, &v46);
    sub_1C5419E14(v22, v23);
    v43 = v42;
    v24 = v12;
    MEMORY[0x1EEE9AC00](v12, v6, v7, v8);
    v25 = &v12[-6];
    v12[-4] = v9;
    v12[-3] = &v45;
    v12[-2] = &v44;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v27 = v5;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v37, v38, "Starting Sign Out Removed Information.", v15, 2u);
      v13 = 0;
      sub_1C5419E74(v18, 0, v16);
      sub_1C5419E74(v21, v13, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();

      v14 = v27;
    }
  }

  else
  {

    v14 = v28;
  }

  (*(v32 + 8))(v34, v30);
  type metadata accessor for AAUIDeviceLocatorStore();
  v10 = sub_1C5463574();
  v12[1] = v10;

  (*(*v10 + 88))(sub_1C55817CC, v29);
}

double sub_1C557FFA8(unsigned int a1, uint64_t a2)
{
  v20 = a1;
  v25 = a2;
  v18 = 0;
  v26 = sub_1C55819E4;
  v53 = 0;
  v52 = 0;
  v49 = 0;
  v47 = 0;
  v27 = 0;
  v31 = sub_1C5596284();
  v28 = *(v31 - 8);
  v29 = v31 - 8;
  v17 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v2, v3, v4);
  v30 = &v17 - v17;
  v35 = sub_1C55962A4();
  v32 = *(v35 - 8);
  v33 = v35 - 8;
  v19 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20, v25, v5, v18);
  v34 = &v17 - v19;
  v53 = v6 & 1;
  v52 = v7;
  v21 = &v51;
  swift_beginAccess();
  *(v25 + 64) = v20;
  swift_endAccess();
  v24 = 3;
  v50 = 3;
  v22 = AAUISignOutFlowStage.rawValue.getter();
  v23 = v8;
  sub_1C5594CF4();
  v39 = sub_1C5596554();
  MEMORY[0x1E69E5928](v39, v9);

  MEMORY[0x1E69E5920](v39);
  v49 = v39;
  v48 = v24;
  v38 = sub_1C5580A68(&v48);
  v47 = v38;
  sub_1C5444CF8();
  v37 = sub_1C5596984();

  swift_unknownObjectRetain();
  MEMORY[0x1E69E5928](v39, v10);
  v11 = swift_allocObject();
  v12 = v26;
  v13 = v38;
  v14 = v11;
  v15 = v39;
  v14[2] = v25;
  v14[3] = v13;
  v14[4] = v15;
  v45 = v12;
  v46 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = 0;
  v43 = sub_1C544364C;
  v44 = &block_descriptor_70;
  v36 = _Block_copy(&aBlock);

  sub_1C544369C();
  sub_1C54436B4();
  MEMORY[0x1C6947530](v27, v34, v30, v36);
  (*(v28 + 8))(v30, v31);
  (*(v32 + 8))(v34, v35);
  _Block_release(v36);
  MEMORY[0x1E69E5920](v37);
  swift_unknownObjectRelease();
  *&result = MEMORY[0x1E69E5920](v39).n128_u64[0];
  return result;
}

uint64_t sub_1C558037C(uint64_t a1, uint64_t a2, void *a3)
{
  v55 = a3;
  v54 = a2;
  v60 = a1;
  v59 = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v48 = 0;
  v66 = 0;
  v49 = sub_1C5594C74();
  v50 = *(v49 - 8);
  v51 = v50;
  v52 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](0, v54, v55, v49);
  v53 = &v19 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v3;
  v75 = v4;
  v74 = v5;
  type metadata accessor for SignOutRemovedInformationActionInvokingOBWelcomeController();
  swift_unknownObjectRetain();
  v6 = v55;

  v73[3] = type metadata accessor for SignOutFlowDirector();
  v73[4] = &off_1F447F528;
  v73[0] = v60;
  v57 = SignOutRemovedInformationActionInvokingOBWelcomeController.__allocating_init(model:stage:flowDirector:)(v54, v55, v73);
  v7 = v57;
  v58 = v60 + 40;
  v56 = &v72;
  swift_beginAccess();
  v8 = *(v60 + 40);
  *(v60 + 40) = v57;

  swift_endAccess();
  v62 = &v71;
  swift_beginAccess();
  v63 = *(v60 + 40);
  v61 = v63;
  v9 = v63;
  swift_endAccess();
  if (v63)
  {
    v47 = v61;
    v38 = v61;
    v66 = v61;
    v39 = v60 + 32;
    v40 = &v64;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_endAccess();
    v65 = Strong;
    if (Strong)
    {
      v37 = v65;
      v12 = v65;
      sub_1C5401EF8(&v65);
      [v37 pushViewController:v38 animated:1];
    }

    else
    {
      sub_1C5401EF8(&v65);
    }

    return v48;
  }

  else
  {
    v10 = v53;
    v11 = sub_1C54B0910();
    (*(v51 + 16))(v10, v11, v49);
    v45 = sub_1C5594C54();
    v42 = v45;
    v44 = sub_1C5596954();
    v43 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
    v46 = sub_1C5596E04();
    if (os_log_type_enabled(v45, v44))
    {
      v13 = v48;
      v27 = sub_1C5596A74();
      v23 = v27;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v25 = 0;
      v28 = sub_1C5419DC0(0, v24, v24);
      v26 = v28;
      v29 = sub_1C5419DC0(v25, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v70 = v27;
      v69 = v28;
      v68 = v29;
      v30 = 0;
      v31 = &v70;
      sub_1C5419E14(0, &v70);
      sub_1C5419E14(v30, v31);
      v67 = v46;
      v32 = &v19;
      MEMORY[0x1EEE9AC00](&v19, v14, v15, v16);
      v33 = &v19 - 6;
      *(&v19 - 4) = v17;
      *(&v19 - 3) = &v69;
      *(&v19 - 2) = &v68;
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v35 = v13;
      if (v13)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v42, v43, "Unable to start Sign Out removed information.", v23, 2u);
        v21 = 0;
        sub_1C5419E74(v26, 0, v24);
        sub_1C5419E74(v29, v21, MEMORY[0x1E69E7CA0] + 8);
        sub_1C5596A54();

        v22 = v35;
      }
    }

    else
    {

      v22 = v48;
    }

    v20 = v22;

    (*(v51 + 8))(v53, v49);
    return v20;
  }
}

char *sub_1C5580A68(uint64_t a1)
{
  v48 = a1;
  v56 = sub_1C55817D8;
  v60 = sub_1C5473EFC;
  v62 = sub_1C545C6D4;
  v64 = sub_1C545C6D4;
  v67 = sub_1C5473FA4;
  v84 = 0;
  v83 = 0;
  v46 = 0;
  v53 = sub_1C5594C74();
  v51 = *(v53 - 8);
  v52 = v53 - 8;
  v49 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v48, v1, v2, v3);
  v4 = v24 - v49;
  v50 = v24 - v49;
  v54 = *v5;
  v84 = v54;
  v83 = v6;
  v7 = sub_1C54B0910();
  (*(v51 + 16))(v4, v7, v53);
  v55 = 17;
  v58 = 7;
  v59 = swift_allocObject();
  *(v59 + 16) = v54;
  v71 = sub_1C5594C54();
  v72 = sub_1C5596944();
  v63 = swift_allocObject();
  *(v63 + 16) = 32;
  v65 = swift_allocObject();
  *(v65 + 16) = 8;
  v57 = 32;
  v8 = swift_allocObject();
  v9 = v59;
  v61 = v8;
  *(v8 + 16) = v56;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v61;
  v68 = v10;
  *(v10 + 16) = v60;
  *(v10 + 24) = v11;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v66 = sub_1C5596E04();
  v69 = v12;

  v13 = v63;
  v14 = v69;
  *v69 = v62;
  v14[1] = v13;

  v15 = v65;
  v16 = v69;
  v69[2] = v64;
  v16[3] = v15;

  v17 = v68;
  v18 = v69;
  v69[4] = v67;
  v18[5] = v17;
  sub_1C540FCD8();

  if (os_log_type_enabled(v71, v72))
  {
    v19 = v46;
    v39 = sub_1C5596A74();
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v40 = sub_1C5419DC0(0, v38, v38);
    v41 = sub_1C5419DC0(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v42 = &v77;
    v77 = v39;
    v43 = &v76;
    v76 = v40;
    v44 = &v75;
    v75 = v41;
    sub_1C5419E14(2, &v77);
    sub_1C5419E14(1, v42);
    v73 = v62;
    v74 = v63;
    sub_1C5419E28(&v73, v42, v43, v44);
    v45 = v19;
    if (v19)
    {

      __break(1u);
    }

    else
    {
      v73 = v64;
      v74 = v65;
      sub_1C5419E28(&v73, &v77, &v76, &v75);
      v37 = 0;
      v73 = v67;
      v74 = v68;
      sub_1C5419E28(&v73, &v77, &v76, &v75);
      _os_log_impl(&dword_1C5355000, v71, v72, "Creating sign out model for stage: %s", v39, 0xCu);
      sub_1C5419E74(v40, 0, v38);
      sub_1C5419E74(v41, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();
    }
  }

  else
  {
  }

  v20 = MEMORY[0x1E69E5920](v71);
  (*(v51 + 8))(v50, v53, v20);
  if (v54)
  {
    if (v54 == 2)
    {
      type metadata accessor for SignOutRemainInformationModel();
      v30 = &v79;
      v31 = 32;
      v32 = 0;
      swift_beginAccess();
      v34 = *(v47 + 56);
      MEMORY[0x1E69E5928](v34, v21);
      swift_endAccess();
      v33 = &v78;
      swift_beginAccess();
      v35 = *(v47 + 96);
      swift_endAccess();
      return SignOutRemainInformationModel.__allocating_init(account:isEraseAllowed:)(v34, v35 & 1);
    }

    if (v54 == 3)
    {
      v24[2] = 0;
      v24[3] = type metadata accessor for SignOutRemovedInformationModel();
      v24[0] = &v82;
      v24[4] = 32;
      v24[5] = 0;
      swift_beginAccess();
      v25 = *(v47 + 56);
      MEMORY[0x1E69E5928](v25, v22);
      swift_endAccess();
      v24[1] = &v81;
      swift_beginAccess();
      v26 = *(v47 + 64);
      swift_endAccess();
      sub_1C55817E0();
      v27 = sub_1C5404B48();
      v24[6] = &v80;
      swift_beginAccess();
      v28 = *(v47 + 80);
      v29 = *(v47 + 88);
      sub_1C5594CF4();
      swift_endAccess();
      return SignOutRemovedInformationModel.__allocating_init(account:isFindMyEnabled:walletCardListStore:theftAndLossDisclaimerLabel:)(v25, v26 & 1, v27, v28, v29);
    }
  }

  type metadata accessor for SignOutOrEraseOfferModel();
  return SignOutOrEraseOfferModel.__allocating_init()();
}

uint64_t sub_1C5581418()
{
  sub_1C55381C8();
  MEMORY[0x1C6948CE0](v0 + 3);
  MEMORY[0x1C6948CE0](v0 + 4);
  sub_1C5401EF8(v0 + 5);
  MEMORY[0x1E69E5920](v0[7]);
  MEMORY[0x1E69E5920](v0[9]);
  sub_1C5401ECC((v0 + 10));
  return v2;
}

void (*sub_1C5581560(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL, 34212);
  *a1 = v3;
  v3[4] = (*(**v1 + 176))();
  return sub_1C545A074;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1C55817E0()
{
  v2 = qword_1EC15F288;
  if (!qword_1EC15F288)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15F288);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C558185C()
{
  v2 = qword_1EC15F290;
  if (!qword_1EC15F290)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F290);
    return WitnessTable;
  }

  return v2;
}

uint64_t dispatch thunk of SignOutOrEraseOfferFlow.__allocating_init(navController:presentingController:account:dataclassActionsStore:isEraseAllowed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LODWORD(v7) = a5;
  BYTE4(v7) = BYTE4(a5) & 1;
  return (*(v5 + 280))(a1, a2, a3, a4, v7);
}

uint64_t block_copy_helper_68(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1C5581A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7[1] = a1;
  sub_1C5594CF4();
  v7[0] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CB60, &qword_1C55B0878);
  sub_1C5402CCC(v7, v2, a2, v3);
}

uint64_t sub_1C5581AC8()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5594E84();

  return v1;
}

uint64_t sub_1C5581B64@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 112))(v2);
}

uint64_t sub_1C5581BE4(void *a1, uint64_t *a2)
{
  sub_1C540955C(a1, &v6);
  v4 = v6;
  v5 = *a2;

  (*(*v5 + 120))(v4);
}

uint64_t sub_1C5581C70(uint64_t a1)
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5594CF4();
  sub_1C5594E94();
}

void (*sub_1C5581D14(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 5649);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = sub_1C5594E74();
  return sub_1C542BE14;
}

uint64_t sub_1C5581E28()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F318, &qword_1C55B9028);
  sub_1C5594E54();
  return swift_endAccess();
}

uint64_t sub_1C5581EA4(uint64_t a1)
{
  v9 = a1;
  v13 = 0;
  v12 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F320, &unk_1C55B9030);
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6[0] = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v10, v9, v10, v2);
  v6[1] = v6 - v6[0];
  v13 = v4;
  v12 = v1;
  (*(v7 + 16))(v3);
  v6[2] = &v11;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F318, &qword_1C55B9028);
  sub_1C5594E64();
  swift_endAccess();
  return (*(v7 + 8))(v9, v10);
}

uint64_t (*sub_1C5581FF8(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 4767);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F320, &unk_1C55B9030);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 4767);
  v6[4] = __swift_coroFrameAllocStub(v5, 4767);
  sub_1C5581E28();
  return sub_1C558211C;
}

void sub_1C558211C(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_1C5581EA4(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_1C5581EA4(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t sub_1C5582218@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC14AppleAccountUI28ReviewCustodianListViewModel__custodianListItems;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F318, &qword_1C55B9028);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_1C55822B0(uint64_t a1)
{
  v12 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F318, &qword_1C55B9028);
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v13, v12, v13, v2);
  v8 = &v5 - v6;
  (*(v10 + 16))(v3);
  v7 = v1 + OBJC_IVAR____TtC14AppleAccountUI28ReviewCustodianListViewModel__custodianListItems;
  v9 = &v14;
  swift_beginAccess();
  (*(v10 + 40))(v7, v8, v13);
  swift_endAccess();
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1C5582460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a1;
  v28 = a2;
  v24 = a3;
  v27 = a4;
  v35 = 0;
  v34 = 0;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F318, &qword_1C55B9028);
  v19 = *(v23 - 8);
  v20 = v23 - 8;
  v17 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29, v28, v24, v27);
  v22 = &v16 - v17;
  v35 = v5;
  v34 = v6;
  v32 = v7;
  v33 = v8;
  v31 = v4;
  v21 = OBJC_IVAR____TtC14AppleAccountUI28ReviewCustodianListViewModel__custodianListItems;
  v18 = 0;
  type metadata accessor for CustodianListItem(0);
  v9 = sub_1C5596E04();
  sub_1C5581A58(v9, v22);
  (*(v19 + 32))(v4 + v21, v22, v23);
  MEMORY[0x1E69E5928](v29, v10);
  v11 = v28;
  v4[2] = v29;
  MEMORY[0x1E69E5928](v11, v12);
  v4[3] = v28;
  sub_1C5594CF4();
  v13 = v27;
  v4[4] = v24;
  v4[5] = v13;
  v26 = v4[3];
  MEMORY[0x1E69E5928](v26, v14);

  v25 = v30;
  [v26 setDataDelegate_];
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v26);

  MEMORY[0x1E69E5920](v28);
  MEMORY[0x1E69E5920](v29);
  return v30;
}

uint64_t sub_1C5582664()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  MEMORY[0x1E69E5920](*(v0 + 24));
  sub_1C5401ECC(v0 + 32);
  v3 = OBJC_IVAR____TtC14AppleAccountUI28ReviewCustodianListViewModel__custodianListItems;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F318, &qword_1C55B9028);
  (*(*(v1 - 8) + 8))(v0 + v3);
  return v4;
}

uint64_t sub_1C5582774@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ReviewCustodianListViewModel(0);
  result = sub_1C5594E34();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for ReviewCustodianListViewModel(uint64_t a1)
{
  v2 = qword_1EC16AF60;
  if (!qword_1EC16AF60)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

void sub_1C5582824(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  v6 = [v5 localContacts];
  if (v6)
  {
    sub_1C5403328();
    v3 = sub_1C5596714();
    MEMORY[0x1E69E5920](v6);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x1E69E5920](v5);
  if (v4)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BCD0, &qword_1C55AD850);
    sub_1C55837B0();
    sub_1C55966B4();
  }
}

uint64_t sub_1C55829CC(uint64_t a1, uint64_t a2)
{
  v126 = a2;
  v125 = a1;
  v122 = 0;
  v148 = 0;
  v147 = 0;
  v146 = 0;
  v141 = 0;
  v139 = 0;
  v118 = sub_1C5594C74();
  v119 = *(v118 - 8);
  v120 = v119;
  MEMORY[0x1EEE9AC00](v118 - 8, v118, v2, v3);
  v121 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DC40, &qword_1C55B43D8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v122, v5, v6, v7);
  v124 = &v40 - v123;
  v127 = sub_1C5594994();
  v128 = *(v127 - 8);
  v129 = v128;
  v130 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v125, v126, v127, v8);
  v132 = (v130 + 15) & 0xFFFFFFFFFFFFFFF0;
  v131 = &v40 - v132;
  v13 = MEMORY[0x1EEE9AC00](v9, v10, v11, v12);
  v133 = &v40 - v132;
  v148 = &v40 - v132;
  v134 = *v14;
  v147 = v134;
  v146 = v15;
  v135 = [v134 custodianID];
  if (v135)
  {
    v116 = v135;
    v115 = v135;
    sub_1C5594974();
    (*(v129 + 32))(v124, v131, v127);
    (*(v129 + 56))(v124, 0, 1, v127);
  }

  else
  {
    (*(v129 + 56))(v124, 1, 1, v127);
  }

  if ((*(v129 + 48))(v124, 1, v127) == 1)
  {
    v16 = v121;
    sub_1C54EB940(v124);
    v17 = sub_1C54B05F8();
    (*(v120 + 16))(v16, v17, v118);
    v113 = sub_1C5594C54();
    v110 = v113;
    v112 = sub_1C5596954();
    v111 = v112;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
    v114 = sub_1C5596E04();
    if (os_log_type_enabled(v113, v112))
    {
      v55 = v117;
      v47 = sub_1C5596A74();
      v43 = v47;
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v45 = 0;
      v48 = sub_1C5419DC0(0, v44, v44);
      v46 = v48;
      v49 = sub_1C5419DC0(v45, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v145 = v47;
      v144 = v48;
      v143 = v49;
      v50 = 0;
      v51 = &v145;
      sub_1C5419E14(0, &v145);
      sub_1C5419E14(v50, v51);
      v142 = v114;
      v52 = &v40;
      MEMORY[0x1EEE9AC00](&v40, v34, v35, v36);
      v53 = &v40 - 6;
      *(&v40 - 4) = v37;
      *(&v40 - 3) = &v144;
      v39 = &v143;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
      sub_1C5419F0C();
      v38 = v55;
      sub_1C55966B4();
      v56 = v38;
      if (v38)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v110, v111, "Local contact does not contain custodianID. Skipping adding it to the list.", v43, 2u);
        v41 = 0;
        sub_1C5419E74(v46, 0, v44);
        sub_1C5419E74(v49, v41, MEMORY[0x1E69E7CA0] + 8);
        sub_1C5596A54();

        v42 = v56;
      }
    }

    else
    {

      v42 = v117;
    }

    v40 = v42;

    (*(v120 + 8))(v121, v118);
    return v40;
  }

  (*(v129 + 32))(v133, v124, v127);
  v107 = type metadata accessor for Status(0);
  sub_1C5596E04();
  *v18 = 2;
  v18[1] = 1;
  v18[2] = 3;
  sub_1C540FCD8();
  v104 = v19;
  v108 = sub_1C5462C0C();
  v106 = sub_1C5596874();
  v105 = v106;
  v141 = v106;
  v140 = [v134 trustedContactStatus];
  v109 = sub_1C5596884();

  if ((v109 & 1) == 0)
  {
    goto LABEL_11;
  }

  v101 = v117;
  v136 = (*(*v126 + 112))();
  v98 = &v40;
  MEMORY[0x1EEE9AC00](&v40, v20, v21, v22);
  v99 = &v40 - 4;
  v39 = v23;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CB60, &qword_1C55B0878);
  sub_1C5583B88();
  v24 = v101;
  v25 = sub_1C55966C4();
  v102 = v24;
  v103 = v25;
  if (v24)
  {
    __break(1u);
LABEL_11:
    v96 = 0;
    v97 = v117;
    goto LABEL_12;
  }

  v95 = v103;
  sub_1C541439C(&v136);
  v96 = v95 ^ 1;
  v97 = v102;
LABEL_12:
  v93 = v97;
  v94 = v96;

  if (v94)
  {
    v90 = type metadata accessor for CustodianListItem(0);
    v91 = v90;
    v92 = [v134 fullName];
    if (v92)
    {
      v89 = v92;
      v84 = v92;
      v85 = sub_1C5596574();
      v86 = v26;

      v87 = v85;
      v88 = v86;
    }

    else
    {
      v87 = 0;
      v88 = 0;
    }

    v81 = v88;
    v82 = v87;
    v83 = [v134 firstName];
    if (v83)
    {
      v80 = v83;
      v75 = v83;
      v76 = sub_1C5596574();
      v77 = v27;

      v78 = v76;
      v79 = v77;
    }

    else
    {
      v78 = 0;
      v79 = 0;
    }

    v69 = v79;
    v70 = v78;
    v71 = [v134 handle];
    v72 = sub_1C5596574();
    v73 = v28;
    v74 = [v134 imageData];
    if (v74)
    {
      v68 = v74;
      v63 = v74;
      v64 = sub_1C55948D4();
      v65 = v29;

      v66 = v64;
      v67 = v65;
    }

    else
    {
      v66 = 0;
      v67 = 0xF000000000000000;
    }

    v59 = v67;
    v58 = v66;
    (*(v129 + 16))(v131, v133, v127);
    v30 = sub_1C55776F0(v82, v81, v70, v69, v72, v73, v58, v59, v131);
    v31 = v126;
    v62 = v30;

    v139 = v62;

    v138 = v62;
    v32 = *(*v31 + 128);
    v60 = &v137;
    v61 = v32();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CB60, &qword_1C55B0878);
    sub_1C5596754();
    v61(v60, 0);
  }

  (*(v129 + 8))(v133, v127);
  result = v93;
  v57 = v93;
  return result;
}

unint64_t sub_1C55837B0()
{
  v2 = qword_1EC15F328;
  if (!qword_1EC15F328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BCD0, &qword_1C55AD850);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F328);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5583838(uint64_t *a1, uint64_t a2)
{
  v8 = a1;
  v9 = a2;
  v16 = 0;
  v15 = 0;
  v12 = sub_1C5594994();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v7 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v12, v9, v12, v2);
  v13 = &v6 - v7;
  v16 = *v8;
  v15 = v4;
  (*(v10 + 16))(v3);
  v14 = sub_1C5594964();
  (*(v10 + 8))(v13, v12);
  return v14 & 1;
}

unint64_t sub_1C55839C0(uint64_t a1)
{
  updated = sub_1C5583AB8(319);
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t sub_1C5583AB8(uint64_t a1)
{
  v5 = qword_1EC15F330;
  if (!qword_1EC15F330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CB60, &qword_1C55B0878);
    v4 = sub_1C5594EA4();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EC15F330);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1C5583B88()
{
  v2 = qword_1EC15F398;
  if (!qword_1EC15F398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CB60, &qword_1C55B0878);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15F398);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5583C10()
{
  v3 = (v0 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_hostingController);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C5583C80(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_hostingController);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

char *SignInDataclassActionMergeListModel.init(dataclassList:)(uint64_t a1)
{
  v120 = a1;
  v141 = 0;
  v140 = 0;
  v132 = 0;
  v121 = 0;
  v122 = sub_1C5595774();
  v123 = (*(*(v122 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v2, v3, v4);
  v124 = v55 - v123;
  v140 = v5;
  v141 = v1;
  *&v1[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_hostingController] = v6;
  v7 = &v141[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_title];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v141[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_detailText];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v141[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_primaryButton];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v141[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_secondaryButton];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v141[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_contentViewLayout] = 2;
  *&v141[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_image] = v6;
  v11 = &v141[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_imageName];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v141[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_contentView] = v6;
  *&v141[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_secondaryView] = v6;
  v12 = &v141[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_helpLinkTitle];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v141[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_helpLinkURL];
  *v13 = 0;
  *(v13 + 1) = 0;
  v125 = v141;
  v14 = type metadata accessor for SignInDataclassActionMergeListModel();
  v139.receiver = v125;
  v139.super_class = v14;
  v126 = objc_msgSendSuper2(&v139, sel_init);
  MEMORY[0x1E69E5928](v126, v15);
  v141 = v126;
  if ([objc_opt_self() isSolariumEnabled])
  {
    v116 = v141;
    v112 = 0;
    v113 = sub_1C5418C84();
    v115 = sub_1C55965F4("sign_in_merge_data_header_icon_gradient", 39, 1);
    v114 = v16;
    sub_1C5439370();
    v17 = sub_1C5576C44();
    v118 = sub_1C55584D0(v115, v114, v17);
    v117 = &v116[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_image];
    v119 = &v127;
    swift_beginAccess();
    v18 = *v117;
    *v117 = v118;
  }

  else
  {
    v108 = v141;
    v104 = 0;
    v105 = sub_1C5418C84();
    v107 = sub_1C55965F4("sign_in_merge_data_header_icon", 30, 1);
    v106 = v19;
    sub_1C5439370();
    v20 = sub_1C5576C44();
    v110 = sub_1C55584D0(v107, v106, v20);
    v109 = &v108[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_image];
    v111 = &v138;
    swift_beginAccess();
    v18 = *v109;
    *v109 = v110;
  }

  MEMORY[0x1E69E5920](v18);
  swift_endAccess();
  v56 = v141;
  v94 = 1;
  v21 = sub_1C55965F4("MERGE_ICLOUD_DATA", 17, 1);
  v55[1] = v22;
  v57 = sub_1C54637B4(v21, v22);
  v59 = v23;

  v58 = &v56[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_title];
  v60 = &v137;
  v97 = 33;
  v98 = 0;
  swift_beginAccess();
  v24 = v58;
  v25 = v59;
  *v58 = v57;
  v24[1] = v25;

  swift_endAccess();
  v62 = v141;
  v26 = sub_1C55965F4("MERGE_ICLOUD_DATA_DETAIL", 24, v94 & 1);
  v61 = v27;
  v63 = sub_1C54637B4(v26, v27);
  v65 = v28;

  v64 = &v62[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_detailText];
  v66 = &v136;
  swift_beginAccess();
  v29 = v64;
  v30 = v65;
  *v64 = v63;
  v29[1] = v30;

  swift_endAccess();
  v68 = v141;
  v31 = sub_1C55965F4("CONFIRM_MERGE", 13, v94 & 1);
  v67 = v32;
  v69 = sub_1C54637B4(v31, v32);
  v71 = v33;

  v70 = &v68[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_primaryButton];
  v72 = &v135;
  swift_beginAccess();
  v34 = v70;
  v35 = v71;
  *v70 = v69;
  v34[1] = v35;

  swift_endAccess();
  v74 = v141;
  v36 = sub_1C55965F4("GO_BACK", 7, v94 & 1);
  v73 = v37;
  v75 = sub_1C54637B4(v36, v37);
  v77 = v38;

  v76 = &v74[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_secondaryButton];
  v78 = &v134;
  swift_beginAccess();
  v39 = v76;
  v40 = v77;
  *v76 = v75;
  v39[1] = v40;

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F400, qword_1C55B9130);
  sub_1C5594CF4();
  v79 = v142;
  sub_1C554D990(v120, v142);
  v80 = v133;
  memcpy(v133, v79, sizeof(v133));
  v103 = sub_1C5595484();
  v132 = v103;
  v81 = sub_1C5596E04();
  sub_1C5595764();
  sub_1C540FCD8();
  v82 = v41;
  sub_1C555C910();
  sub_1C5596B04();
  sub_1C5595474();
  v83 = &v141[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_contentViewLayout];
  v84 = &v131;
  swift_beginAccess();
  *v83 = 3;
  swift_endAccess();
  v85 = v141;
  MEMORY[0x1E69E5928](v103, v42);
  v86 = &v85[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_hostingController];
  v87 = &v130;
  swift_beginAccess();
  v43 = *v86;
  *v86 = v103;
  MEMORY[0x1E69E5920](v43);
  swift_endAccess();
  v89 = v141;
  v44 = sub_1C55965F4("LEARN_MORE", 10, v94 & 1);
  v88 = v45;
  v90 = sub_1C54637B4(v44, v45);
  v92 = v46;

  v91 = &v89[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_helpLinkTitle];
  v93 = &v129;
  swift_beginAccess();
  v47 = v91;
  v48 = v92;
  *v91 = v90;
  v47[1] = v48;

  swift_endAccess();
  v96 = v141;
  v49 = sub_1C55965F4("SIGN_IN_MERGE_DATACLASS_LINK", 28, v94 & 1);
  v95 = v50;
  v99 = sub_1C54637B4(v49, v50);
  v101 = v51;

  v100 = &v96[OBJC_IVAR___AAUISignInDataclassActionMergeListModel_helpLinkURL];
  v102 = &v128;
  swift_beginAccess();
  v52 = v100;
  v53 = v101;
  *v100 = v99;
  v52[1] = v53;

  swift_endAccess();
  MEMORY[0x1E69E5920](v103);

  MEMORY[0x1E69E5920](v141);
  return v126;
}

uint64_t sub_1C5584708()
{
  v2 = (v0 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_title);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5584850(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_title);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C55848EC@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0xD0))(v3);
  a3[1] = v4;
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

double sub_1C5584990(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xD8))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5584B7C()
{
  v2 = (v0 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_detailText);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5584CC4(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_detailText);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C5584D60@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0xE8))(v3);
  a3[1] = v4;
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

double sub_1C5584E04(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xF0))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5584FF0()
{
  v2 = (v0 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_primaryButton);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5585138(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_primaryButton);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C55851D4@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x100))(v3);
  a3[1] = v4;
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

double sub_1C5585280(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x108))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5585474()
{
  v2 = (v0 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_secondaryButton);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C55855BC(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_secondaryButton);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C5585658@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x118))(v3);
  a3[1] = v4;
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

double sub_1C5585704(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x120))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C558588C()
{
  v2 = (v0 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_contentViewLayout);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5585948(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_contentViewLayout);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

double sub_1C55859B4@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x130))(v3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C5585A5C(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x138))(v5, v2);
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

uint64_t sub_1C5585BD8()
{
  v3 = (v0 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_image);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C5585CB0(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_image);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double sub_1C5585D48@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x148))(v3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C5585DF0(void *a1, void *a2)
{
  sub_1C5402C1C(a1, &v7);
  v6 = v7;
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x150))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5585FD8()
{
  v2 = (v0 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_imageName);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5586120(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_imageName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C55861BC@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x160))(v3);
  a3[1] = v4;
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

double sub_1C5586268(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x168))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5586400()
{
  v3 = (v0 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_contentView);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C55864D8(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_contentView);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double sub_1C5586570@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x178))(v3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C5586618(void *a1, void *a2)
{
  sub_1C5402C1C(a1, &v7);
  v6 = v7;
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x180))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C55867A4()
{
  v3 = (v0 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_secondaryView);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C558687C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_secondaryView);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double sub_1C5586914@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x190))(v3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C55869BC(void *a1, void *a2)
{
  sub_1C5402C1C(a1, &v7);
  v6 = v7;
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x198))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5586BA4()
{
  v2 = (v0 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_helpLinkTitle);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5586CEC(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_helpLinkTitle);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C5586D88@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x1A8))(v3);
  a3[1] = v4;
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

double sub_1C5586E34(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x1B0))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5587028()
{
  v2 = (v0 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_helpLinkURL);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5587170(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignInDataclassActionMergeListModel_helpLinkURL);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C558720C@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x1C0))(v3);
  a3[1] = v4;
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

double sub_1C55872B8(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x1C8))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

id SignInDataclassActionMergeListModel.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignInDataclassActionMergeListModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C55880DC()
{
  sub_1C5439370();
  type metadata accessor for ResourceBundleClass();
  result = sub_1C54B72C4();
  qword_1EC16B278 = result;
  return result;
}

uint64_t *sub_1C5588124()
{
  if (qword_1EC16B270 != -1)
  {
    swift_once();
  }

  return &qword_1EC16B278;
}

uint64_t sub_1C5588184()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B500);
  __swift_project_value_buffer(v3, qword_1EC16B500);
  sub_1C55965F4("AppleAccount_Icon_Blue", 22, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C558821C()
{
  if (qword_1EC16B280 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B500);
}

uint64_t sub_1C5588288@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558821C();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C55882EC()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B518);
  __swift_project_value_buffer(v3, qword_1EC16B518);
  sub_1C55965F4("AppleAccount_Icon_Color", 23, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C5588384()
{
  if (qword_1EC16B288 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B518);
}

uint64_t sub_1C55883F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5588384();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C5588454()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B530);
  __swift_project_value_buffer(v3, qword_1EC16B530);
  sub_1C55965F4("AppleAccount_Icon_Orange", 24, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C55884EC()
{
  if (qword_1EC16B290 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B530);
}

uint64_t sub_1C5588558@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C55884EC();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C55885BC()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B548);
  __swift_project_value_buffer(v3, qword_1EC16B548);
  sub_1C55965F4("AppleLogo", 9, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C5588654()
{
  if (qword_1EC16B298 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B548);
}

uint64_t sub_1C55886C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5588654();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C5588724()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B560);
  __swift_project_value_buffer(v3, qword_1EC16B560);
  sub_1C55965F4("IconBubbleSolarium/Icon-0", 25, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C55887BC()
{
  if (qword_1EC16B2A0 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B560);
}

uint64_t sub_1C5588828@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C55887BC();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558888C()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B578);
  __swift_project_value_buffer(v3, qword_1EC16B578);
  sub_1C55965F4("IconBubbleSolarium/Icon-1", 25, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C5588924()
{
  if (qword_1EC16B2A8 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B578);
}

uint64_t sub_1C5588990@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5588924();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C55889F4()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B590);
  __swift_project_value_buffer(v3, qword_1EC16B590);
  sub_1C55965F4("IconBubbleSolarium/Icon-2", 25, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C5588A8C()
{
  if (qword_1EC16B2B0 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B590);
}

uint64_t sub_1C5588AF8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5588A8C();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C5588B5C()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B5A8);
  __swift_project_value_buffer(v3, qword_1EC16B5A8);
  sub_1C55965F4("IconBubbleSolarium/Icon-3", 25, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C5588BF4()
{
  if (qword_1EC16B2B8 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B5A8);
}

uint64_t sub_1C5588C60@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5588BF4();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C5588CC4()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B5C0);
  __swift_project_value_buffer(v3, qword_1EC16B5C0);
  sub_1C55965F4("IconBubbleSolarium/Icon-4", 25, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C5588D5C()
{
  if (qword_1EC16B2C0 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B5C0);
}

uint64_t sub_1C5588DC8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5588D5C();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C5588E2C()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B5D8);
  __swift_project_value_buffer(v3, qword_1EC16B5D8);
  sub_1C55965F4("IconBubbleSolarium/Icon-5", 25, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C5588EC4()
{
  if (qword_1EC16B2C8 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B5D8);
}

uint64_t sub_1C5588F30@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5588EC4();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C5588F94()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B5F0);
  __swift_project_value_buffer(v3, qword_1EC16B5F0);
  sub_1C55965F4("IconBubbleSolarium/Icon-6", 25, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C558902C()
{
  if (qword_1EC16B2D0 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B5F0);
}

uint64_t sub_1C5589098@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558902C();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C55890FC()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B608);
  __swift_project_value_buffer(v3, qword_1EC16B608);
  sub_1C55965F4("IconBubbleSolarium/Icon-7", 25, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C5589194()
{
  if (qword_1EC16B2D8 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B608);
}

uint64_t sub_1C5589200@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5589194();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C5589264()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B620);
  __swift_project_value_buffer(v3, qword_1EC16B620);
  sub_1C55965F4("IconBubble/Icon-0", 17, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C55892FC()
{
  if (qword_1EC16B2E0 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B620);
}

uint64_t sub_1C5589368@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C55892FC();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C55893CC()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B638);
  __swift_project_value_buffer(v3, qword_1EC16B638);
  sub_1C55965F4("IconBubble/Icon-1", 17, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C5589464()
{
  if (qword_1EC16B2E8 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B638);
}

uint64_t sub_1C55894D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5589464();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C5589534()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B650);
  __swift_project_value_buffer(v3, qword_1EC16B650);
  sub_1C55965F4("IconBubble/Icon-2", 17, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C55895CC()
{
  if (qword_1EC16B2F0 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B650);
}

uint64_t sub_1C5589638@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C55895CC();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558969C()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B668);
  __swift_project_value_buffer(v3, qword_1EC16B668);
  sub_1C55965F4("IconBubble/Icon-3", 17, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C5589734()
{
  if (qword_1EC16B2F8 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B668);
}

uint64_t sub_1C55897A0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5589734();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C5589804()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B680);
  __swift_project_value_buffer(v3, qword_1EC16B680);
  sub_1C55965F4("IconBubble/Icon-4", 17, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C558989C()
{
  if (qword_1EC16B300 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B680);
}

uint64_t sub_1C5589908@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558989C();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558996C()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B698);
  __swift_project_value_buffer(v3, qword_1EC16B698);
  sub_1C55965F4("IconBubble/Icon-5", 17, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C5589A04()
{
  if (qword_1EC16B308 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B698);
}

uint64_t sub_1C5589A70@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5589A04();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C5589AD4()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B6B0);
  __swift_project_value_buffer(v3, qword_1EC16B6B0);
  sub_1C55965F4("IconBubble/Icon-6", 17, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C5589B6C()
{
  if (qword_1EC16B310 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B6B0);
}

uint64_t sub_1C5589BD8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5589B6C();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C5589C3C()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B6C8);
  __swift_project_value_buffer(v3, qword_1EC16B6C8);
  sub_1C55965F4("IconBubble/Icon-7", 17, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C5589CD4()
{
  if (qword_1EC16B318 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B6C8);
}

uint64_t sub_1C5589D40@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5589CD4();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C5589DA4()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B6E0);
  __swift_project_value_buffer(v3, qword_1EC16B6E0);
  sub_1C55965F4("Image", 5, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C5589E3C()
{
  if (qword_1EC16B320 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B6E0);
}

uint64_t sub_1C5589EA8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5589E3C();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C5589F0C()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B6F8);
  __swift_project_value_buffer(v3, qword_1EC16B6F8);
  sub_1C55965F4("OBShieldUI", 10, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C5589FA4()
{
  if (qword_1EC16B328 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B6F8);
}

uint64_t sub_1C558A010@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5589FA4();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558A074()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B710);
  __swift_project_value_buffer(v3, qword_1EC16B710);
  sub_1C55965F4("TemporaryProfilePictureBackdrop", 31, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C558A10C()
{
  if (qword_1EC16B330 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B710);
}

uint64_t sub_1C558A178@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558A10C();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558A1DC()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B728);
  __swift_project_value_buffer(v3, qword_1EC16B728);
  sub_1C55965F4("accountBeneficiary", 18, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C558A274()
{
  if (qword_1EC16B338 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B728);
}

uint64_t sub_1C558A2E0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558A274();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558A344()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B740);
  __swift_project_value_buffer(v3, qword_1EC16B740);
  sub_1C55965F4("add_button", 10, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C558A3DC()
{
  if (qword_1EC16B340 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B740);
}

uint64_t sub_1C558A448@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558A3DC();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558A4AC()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B758);
  __swift_project_value_buffer(v3, qword_1EC16B758);
  sub_1C55965F4("apple_icon_circle", 17, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C558A544()
{
  if (qword_1EC16B348 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B758);
}

uint64_t sub_1C558A5B0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558A544();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558A614()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B770);
  __swift_project_value_buffer(v3, qword_1EC16B770);
  sub_1C55965F4("beneficiary_message_bubble", 26, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C558A6AC()
{
  if (qword_1EC16B350 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B770);
}

uint64_t sub_1C558A718@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558A6AC();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558A77C()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B788);
  __swift_project_value_buffer(v3, qword_1EC16B788);
  sub_1C55965F4("custodian_confirm_checkmark", 27, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C558A814()
{
  if (qword_1EC16B358 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B788);
}

uint64_t sub_1C558A880@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558A814();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558A8E4()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B7A0);
  __swift_project_value_buffer(v3, qword_1EC16B7A0);
  sub_1C55965F4("custodian_message_bubble", 24, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C558A97C()
{
  if (qword_1EC16B360 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B7A0);
}

uint64_t sub_1C558A9E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558A97C();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558AA4C()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B7B8);
  __swift_project_value_buffer(v3, qword_1EC16B7B8);
  sub_1C55965F4("device_badge_person_gradient", 28, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C558AAE4()
{
  if (qword_1EC16B368 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B7B8);
}

uint64_t sub_1C558AB50@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558AAE4();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558ABB4()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B7D0);
  __swift_project_value_buffer(v3, qword_1EC16B7D0);
  sub_1C55965F4("findmy-masked", 13, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C558AC4C()
{
  if (qword_1EC16B370 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B7D0);
}

uint64_t sub_1C558ACB8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558AC4C();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558AD1C()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B7E8);
  __swift_project_value_buffer(v3, qword_1EC16B7E8);
  sub_1C55965F4("iphone_badge_person", 19, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C558ADB4()
{
  if (qword_1EC16B378 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B7E8);
}

uint64_t sub_1C558AE20@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558ADB4();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558AE84()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B800);
  __swift_project_value_buffer(v3, qword_1EC16B800);
  sub_1C55965F4("legacy_contact_header", 21, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C558AF1C()
{
  if (qword_1EC16B380 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B800);
}

uint64_t sub_1C558AF88@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558AF1C();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558AFEC()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B818);
  __swift_project_value_buffer(v3, qword_1EC16B818);
  sub_1C55965F4("message_invite_background", 25, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C558B084()
{
  if (qword_1EC16B388 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B818);
}

uint64_t sub_1C558B0F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558B084();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558B154()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B830);
  __swift_project_value_buffer(v3, qword_1EC16B830);
  sub_1C55965F4("recovery_contact_shield", 23, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C558B1EC()
{
  if (qword_1EC16B390 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B830);
}

uint64_t sub_1C558B258@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558B1EC();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558B2BC()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B848);
  __swift_project_value_buffer(v3, qword_1EC16B848);
  sub_1C55965F4("recovery_contact_shield_icon", 28, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C558B354()
{
  if (qword_1EC16B398 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B848);
}

uint64_t sub_1C558B3C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558B354();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558B424()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B860);
  __swift_project_value_buffer(v3, qword_1EC16B860);
  sub_1C55965F4("sign_in_merge_data_header_icon", 30, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C558B4BC()
{
  if (qword_1EC16B3A0 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B860);
}

uint64_t sub_1C558B528@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558B4BC();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558B58C()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B878);
  __swift_project_value_buffer(v3, qword_1EC16B878);
  sub_1C55965F4("sign_in_merge_data_header_icon_gradient", 39, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C558B624()
{
  if (qword_1EC16B3A8 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B878);
}

uint64_t sub_1C558B690@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558B624();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C558B6F4()
{
  v3 = sub_1C5594C24();
  __swift_allocate_value_buffer(v3, qword_1EC16B890);
  __swift_project_value_buffer(v3, qword_1EC16B890);
  sub_1C55965F4("custom.key.fill.shield.fill", 27, 1);
  v0 = sub_1C5588124();
  MEMORY[0x1E69E5928](*v0, v1);
  return sub_1C5594C14();
}

uint64_t sub_1C558B78C()
{
  if (qword_1EC16B3B0 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C24();
  return __swift_project_value_buffer(v0, qword_1EC16B890);
}

uint64_t sub_1C558B7F8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C558B78C();
  v1 = sub_1C5594C24();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

BOOL __isOSVersionAtLeast(int a1, int a2, int a3)
{
  if (qword_1EC16B3C8 == -1)
  {
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    __isOSVersionAtLeast_cold_1();
    a2 = v6;
    a3 = v5;
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_1EC16B3BC > a2)
  {
    return 1;
  }

  if (dword_1EC16B3BC < a2)
  {
    return 0;
  }

  return dword_1EC16B3C0 >= a3;
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_1EC16B3D0 == -1)
  {
    if (qword_1EC16B3D8)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1EC16B3D8)
    {
      return _availability_version_check();
    }
  }

  if (qword_1EC16B3C8 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isOSVersionAtLeast_cold_1();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1EC16B3BC > a3)
      {
        return 1;
      }

      if (dword_1EC16B3BC >= a3)
      {
        return dword_1EC16B3C0 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = qword_1EC16B3D8;
  if (qword_1EC16B3D8)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x1EEE9AC60])
    {
      v1 = MEMORY[0x1EEE9AC60];
      qword_1EC16B3D8 = MEMORY[0x1EEE9AC60];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x1C69482D0](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_1EC16B3BC, &dword_1EC16B3C0);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void _AAUISignInViewControllerCommonInit_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 userPersonaNickName];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_1C5355000, a2, OS_LOG_TYPE_DEBUG, "Initializing AAUISignInViewController with persona type %@", &v4, 0xCu);
}

void _AAUISignInViewControllerCommonInit_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_2(&dword_1C5355000, a2, a3, "Error returned when attempting to copy persona context: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

uint64_t CKBalloonViewForClass_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_ChatKit))
  {
    dlopenHelper_ChatKit(a1);
  }

  return MEMORY[0x1EEDF3140]();
}

uint64_t humanReadableUpdateName_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_SoftwareUpdateServices))
  {
    dlopenHelper_SoftwareUpdateServices(a1);
  }

  return MEMORY[0x1EEE416C8]();
}

double gotLoadHelper_x8__OBJC_CLASS___CKColoredBalloonView(double result)
{
  if (!atomic_load(&dlopenHelperFlag_ChatKit))
  {
    return dlopenHelper_ChatKit(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___CKTextBalloonView(double result)
{
  if (!atomic_load(&dlopenHelperFlag_ChatKit))
  {
    return dlopenHelper_ChatKit(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___CKUIBehavior(double result)
{
  if (!atomic_load(&dlopenHelperFlag_ChatKit))
  {
    return dlopenHelper_ChatKit(result);
  }

  return result;
}

void gotLoadHelper_x26__OBJC_CLASS___CKUIBehavior(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_ChatKit))
  {
    dlopenHelper_ChatKit(a1);
  }
}

double gotLoadHelper_x8__OBJC_CLASS___SUManagerClient(double result)
{
  if (!atomic_load(&dlopenHelperFlag_SoftwareUpdateServices))
  {
    return dlopenHelper_SoftwareUpdateServices(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___SUScanOptions(double result)
{
  if (!atomic_load(&dlopenHelperFlag_SoftwareUpdateServices))
  {
    return dlopenHelper_SoftwareUpdateServices(result);
  }

  return result;
}

double gotLoadHelper_x8__SUErrorDomain(double result)
{
  if (!atomic_load(&dlopenHelperFlag_SoftwareUpdateServices))
  {
    return dlopenHelper_SoftwareUpdateServices(result);
  }

  return result;
}

double dlopenHelper_ChatKit(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/ChatKit.framework/ChatKit", 0);
  atomic_store(1u, &dlopenHelperFlag_ChatKit);
  return a1;
}

double dlopenHelper_SoftwareUpdateServices(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework/SoftwareUpdateServices", 0);
  atomic_store(1u, &dlopenHelperFlag_SoftwareUpdateServices);
  return a1;
}