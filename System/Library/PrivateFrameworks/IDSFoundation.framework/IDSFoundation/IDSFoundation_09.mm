uint64_t sub_1A7CEDC98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x1E69E7CC0];
  v47 = *(result + 16);
  v6 = 0;
  if (v47)
  {
    v7 = 0;
    v8 = (result + 32);
    v45 = *(a5 + 16);
    v46 = *(a4 + 16);
    v44 = a4 + 32;
    v9 = (a5 + 64);
    while (1)
    {
      v10 = v8[1];
      v48 = *v8;
      *v49 = v10;
      *&v49[14] = *(v8 + 30);
      v11 = v7 >= v46 ? 1 : *(v44 + 8 * v7);
      if (v45 == v7)
      {
        break;
      }

      v51 = *v9;
      v52[0] = v49[21];
      *&v52[8] = *&v49[8];
      sub_1A7CF36A8(&v48, &v53);
      sub_1A7CF36A8(&v48, &v53);
      CLIText.formatted(maxWidth:pad:useColors:)(v11, 1, &v53);

      v12 = *(&v54 + 1);
      v13 = v55;
      sub_1A7CC9878(&v53, *(&v54 + 1));
      v14 = *(v13 + 8);
      sub_1A7CF36A8(&v48, &v51);
      v15 = v14(v12, v13);
      v16 = *(&v54 + 1);
      v17 = v55;
      sub_1A7CC9878(&v53, *(&v54 + 1));
      v18 = (*(v17 + 16))(v16, v17);
      v19 = *(&v54 + 1);
      v20 = v55;
      sub_1A7CC9878(&v53, *(&v54 + 1));
      v21 = (*(v20 + 24))(v19, v20);
      sub_1A7CF3704(&v48);
      v51 = v48;
      *v52 = *v49;
      *&v52[14] = *&v49[14];
      sub_1A7B0CD6C(&v53);
      v53 = v51;
      v54 = *v52;
      *&v55 = *&v52[16];
      *(&v55 + 1) = v15;
      *&v56 = v18;
      *(&v56 + 1) = v21;
      sub_1A7CF3670(&v53, &v51);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1A7CCC998(0, *(v5 + 2) + 1, 1, v5);
      }

      v23 = *(v5 + 2);
      v22 = *(v5 + 3);
      if (v23 >= v22 >> 1)
      {
        v5 = sub_1A7CCC998((v22 > 1), v23 + 1, 1, v5);
      }

      ++v7;
      *(v5 + 2) = v23 + 1;
      v24 = &v5[64 * v23];
      v25 = v53;
      v26 = v54;
      v27 = v56;
      *(v24 + 4) = v55;
      *(v24 + 5) = v27;
      *(v24 + 2) = v25;
      *(v24 + 3) = v26;
      v28 = *(*(&v56 + 1) + 16);
      result = sub_1A7CF3758(&v53);
      if (v6 <= v28)
      {
        v6 = v28;
      }

      v9 = (v9 + 56);
      v8 = (v8 + 40);
      if (v47 == v7)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    v29 = *(v5 + 2);
    if (v29)
    {
      v50 = MEMORY[0x1E69E7CC0];
      sub_1A7CCE9D8(0, v29, 0);
      v30 = v50;
      v31 = v29 - 1;
      for (i = 32; ; i += 64)
      {
        v33 = *&v5[i];
        v34 = *&v5[i + 16];
        v35 = *&v5[i + 48];
        v55 = *&v5[i + 32];
        v56 = v35;
        v53 = v33;
        v54 = v34;
        v36 = *(&v35 + 1);
        v38 = *&v5[i + 16];
        v37 = *&v5[i + 32];
        v48 = *&v5[i];
        *v49 = v38;
        *&v49[16] = v37;
        sub_1A7CF3670(&v53, &v51);
        v50 = v30;
        v40 = *(v30 + 16);
        v39 = *(v30 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_1A7CCE9D8((v39 > 1), v40 + 1, 1);
          v30 = v50;
        }

        *(v30 + 16) = v40 + 1;
        v41 = v30 + (v40 << 6);
        v42 = v48;
        v43 = *&v49[16];
        *(v41 + 48) = *v49;
        *(v41 + 64) = v43;
        *(v41 + 32) = v42;
        *(v41 + 80) = v6;
        *(v41 + 88) = v36;
        if (!v31)
        {
          break;
        }

        --v31;
      }
    }
  }

  return result;
}

char *sub_1A7CEE038@<X0>(uint64_t a1@<X0>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v193 = sub_1A7CEC4E8(a1, a3, a4, a5 & 0xFFFFFFFF01);
  v7 = *(a4 + 16);
  if (v7)
  {
    v8 = a4 + 41;
    v9 = MEMORY[0x1E69E7CC0];
    do
    {
      v10 = *(v8 - 1);

      v12 = sub_1A7CEDC98(v11, v10, a2 & 1, v193, a3);
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v19 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1A7CCCBB0(0, *(v9 + 2) + 1, 1, v9);
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1A7CCCBB0((v20 > 1), v21 + 1, 1, v19);
      }

      v9 = v19;
      *(v19 + 2) = v21 + 1;
      v22 = &v19[32 * v21];
      *(v22 + 4) = v12;
      v8 += 16;
      *(v22 + 20) = v14;
      *(v22 + 6) = v16;
      *(v22 + 7) = v18;
      --v7;
    }

    while (v7);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v176 = *(v9 + 2);
  if (!v176)
  {
    v171 = MEMORY[0x1E69E7CC0];
LABEL_163:
    v172 = *(v171 + 16);
    a6[3] = &type metadata for CLIFormattedText;
    a6[4] = &protocol witness table for CLIFormattedText;
    v173 = v171;

    *a6 = a1;
    a6[1] = v172;
    a6[2] = v173;
    return result;
  }

  v177 = v9 + 32;

  v24 = 0;
  v25 = MEMORY[0x1E69E7CC0];
  v190 = v9;
  while (2)
  {
    if (v24 >= *(v9 + 2))
    {
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
      goto LABEL_167;
    }

    v28 = &v177[32 * v24];
    v29 = *(v28 + 3);
    v186 = *(v28 + 2);
    v188 = v28;
    v178 = v25;
    v192 = v24;
    v194 = v29;
    if (v24)
    {
    }

    else
    {
      *&v209 = 0;
      *(&v209 + 1) = 0xE000000000000000;
      v30 = *(v29 + 16);
      if (v30)
      {
        swift_bridgeObjectRetain_n();

        v31 = *(v29 + 66);
        v32 = *(v29 + 66) != 0;
        v33 = v9;
        v34 = *(v29 + 67);
        v37 = sub_1A7D7EE30((v31 << 8) | (*(v29 + 65) << 24), v35, v36);
        MEMORY[0x1AC561C90](v37);

        v40 = sub_1A7D7EE30(v31 & 0xFFFF00FF | (v31 << 8), v38, v39);
        *&v205 = 0;
        *(&v205 + 1) = 0xE000000000000000;
        *&v201 = v40;
        *(&v201 + 1) = v41;
        sub_1A7CC7DFC();
        v42 = sub_1A7E22A30();
        v44 = v43;

        MEMORY[0x1AC561C90](v42, v44);

        v47 = *(v33 + 2);
        if (v47)
        {
          v47 = *(v33 + 7);
          if (*(v47 + 16) < 2uLL)
          {
            LODWORD(v47) = 0;
          }

          else
          {
            if (v34 <= *(v47 + 129))
            {
              v34 = *(v47 + 129);
            }

            LODWORD(v47) = *(v47 + 130) << 8;
          }
        }

        v48 = sub_1A7D7EE30(v47 | (v34 << 24) | v31, v45, v46);
        MEMORY[0x1AC561C90](v48);

        v51 = v30 - 1;
        if (v51)
        {
          v58 = 0;
          v59 = 2;
          do
          {
            v63 = *(v29 + v58 + 130);
            v183 = *(v29 + v58 + 130) != 0;
            v61 = *(v29 + v58 + 131);
            v64 = sub_1A7D7EE30(v63 | (v63 << 8), v49, v50);
            *&v205 = 0;
            *(&v205 + 1) = 0xE000000000000000;
            *&v201 = v64;
            *(&v201 + 1) = v65;
            sub_1A7CC7DFC();
            v66 = sub_1A7E22A30();
            v68 = v67;

            MEMORY[0x1AC561C90](v66, v68);

            v60 = *(v190 + 2);
            if (v60)
            {
              v71 = *(v190 + 7);
              if (v59 < *(v71 + 16))
              {
                v60 = v71 + v58;
                if (v61 <= *(v60 + 193))
                {
                  v61 = *(v60 + 193);
                }

                LODWORD(v60) = *(v60 + 194) << 8;
              }

              else
              {
                LODWORD(v60) = 0;
              }
            }

            v32 |= v183;
            v62 = sub_1A7D7EE30(v60 | (v61 << 24) | v63, v69, v70);
            MEMORY[0x1AC561C90](v62);

            v58 += 64;
            ++v59;
            --v51;
            v29 = v194;
          }

          while (v51);
        }

        v52 = *(&v209 + 1);
        if (v32)
        {
          v53 = v209;
          result = sub_1A7CCCAA4(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v54 = result;
          v56 = *(result + 2);
          v55 = *(result + 3);
          v9 = v190;
          if (v56 >= v55 >> 1)
          {
            result = sub_1A7CCCAA4((v55 > 1), v56 + 1, 1, result);
            v54 = result;
          }

          *(v54 + 2) = v56 + 1;
          v57 = &v54[16 * v56];
          *(v57 + 4) = v53;
          *(v57 + 5) = v52;
          v24 = 0;
          v29 = v194;
          goto LABEL_41;
        }

        v9 = v190;
        v24 = 0;
      }

      else
      {
      }
    }

    v54 = MEMORY[0x1E69E7CC0];
LABEL_41:
    if (v186 < 0)
    {
      goto LABEL_165;
    }

    if (v186)
    {
      v72 = 0;
      v73 = *(v29 + 16);
      v181 = v73;
      do
      {
        v74 = 0xE000000000000000;
        *&v209 = 0;
        *(&v209 + 1) = 0xE000000000000000;
        if (v73)
        {
          v184 = v54;

          v78 = 1;
          v79 = v73;
          v80 = 129;
          do
          {
            v85 = *(v75 + v80 - 62);
            v86 = *(v75 + v80 - 41);
            if (v80 == 129)
            {
              v87 = sub_1A7D7EE30((*(v75 + 65) << 16) | (*(v75 + 65) << 24), v76, v77);
              v89 = v88;

              MEMORY[0x1AC561C90](v87, v89);
              v9 = v190;
            }

            else
            {
            }

            if (v72 >= *(v86 + 16))
            {

              *&v205 = 0;
              *(&v205 + 1) = 0xE000000000000000;
              *&v201 = 32;
              *(&v201 + 1) = 0xE100000000000000;
              sub_1A7CC7DFC();
              v93 = sub_1A7E22A30();
            }

            else
            {
              v90 = v86 + 16 * v72;
              v92 = *(v90 + 32);
              v91 = *(v90 + 40);

              v93 = v92;
              v94 = v91;
            }

            MEMORY[0x1AC561C90](v93, v94);
            v24 = v192;

            if (v192 < *(v9 + 2))
            {
              v95 = *(v188 + 3);
              if (v78 < *(v95 + 16))
              {
                v96 = *(v95 + v80);
                if (v85 <= v96)
                {
                  v85 = v96;
                }
              }
            }

            if (v85 > 4)
            {
              v81 = 8623330;
              if (v85 != 8)
              {
                v81 = 9541090;
              }

              if (v85 == 7)
              {
                v81 = 8557794;
              }

              v82 = 9410018;
              if (v85 == 5)
              {
                v82 = 9344482;
              }

              if (v85 <= 6)
              {
                v83 = v82;
              }

              else
              {
                v83 = v81;
              }

              v84 = 0xA300000000000000;
            }

            else if (v85 <= 1)
            {
              if (v85)
              {
                v83 = 9082082;
              }

              else
              {
                v83 = 32;
              }

              if (v85)
              {
                v84 = 0xA300000000000000;
              }

              else
              {
                v84 = 0xE100000000000000;
              }
            }

            else if (v85 == 2)
            {
              v83 = 9147618;
              v84 = 0xA300000000000000;
            }

            else
            {
              if (v85 == 3)
              {
                v83 = 8819938;
              }

              else
              {
                v83 = 8885474;
              }

              v84 = 0xA300000000000000;
            }

            MEMORY[0x1AC561C90](v83, v84);

            v80 += 64;
            ++v78;
            --v79;
            v75 = v194;
          }

          while (v79);

          v74 = *(&v209 + 1);
          v97 = v209;
          v73 = v181;
          v54 = v184;
        }

        else
        {
          v97 = 0;
        }

        v98 = v54;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v54 = v98;
        }

        else
        {
          v54 = sub_1A7CCCAA4(0, *(v98 + 2) + 1, 1, v98);
        }

        v100 = *(v54 + 2);
        v99 = *(v54 + 3);
        if (v100 >= v99 >> 1)
        {
          v54 = sub_1A7CCCAA4((v99 > 1), v100 + 1, 1, v54);
        }

        ++v72;
        *(v54 + 2) = v100 + 1;
        v101 = &v54[16 * v100];
        *(v101 + 4) = v97;
        *(v101 + 5) = v74;
      }

      while (v72 != v186);
    }

    v185 = v54;
    v102 = v24 + 1;

    v213 = 0;
    v214 = 0xE000000000000000;
    v105 = v194;
    v179 = v24 + 1;
    v182 = *(v194 + 16);
    if (!v182)
    {

LABEL_147:

      result = v178;
      v156 = v185;
      goto LABEL_148;
    }

    v106 = 0;
    v107 = 96;
    v108 = 1;
    v180 = &v177[32 * v102];
    while (1)
    {
      v109 = *(v105 + v107 - 31);
      v110 = *(v105 + v107 - 29);
      v111 = *(v105 + v107 - 28);
      v112 = *(v105 + v107 - 28) != 0;
      if (v102 >= *(v190 + 2) || (v113 = *(v180 + 3), v108 - 1 >= *(v113 + 16)))
      {
        v211 = 0u;
        v212 = 0u;
        v209 = 0u;
        v210 = 0u;
      }

      else
      {
        v114 = v113 + v107;
        v115 = *(v114 - 64);
        v116 = *(v114 - 48);
        v117 = *(v114 - 16);
        v203 = *(v114 - 32);
        v204 = v117;
        v201 = v115;
        v202 = v116;
        v205 = *(v114 - 64);
        v206 = *(v114 - 48);
        v207 = *(v114 - 32);
        v208 = *(v114 - 16);
        v118 = v108;
        sub_1A7CF3670(&v201, &v197);
        v108 = v118;
        v209 = v205;
        v210 = v206;
        v211 = v207;
        v212 = v208;
      }

      if (v24 >= *(v190 + 2) || (v119 = *(v188 + 3), v108 >= *(v119 + 16)))
      {
        v207 = 0u;
        v208 = 0u;
        v205 = 0u;
        v206 = 0u;
      }

      else
      {
        v120 = (v119 + v107);
        v121 = *v120;
        v122 = v120[1];
        v123 = v120[3];
        v199 = v120[2];
        v200 = v123;
        v197 = v121;
        v198 = v122;
        v201 = *v120;
        v202 = v120[1];
        v203 = v120[2];
        v204 = v120[3];
        v124 = v108;
        sub_1A7CF3670(&v197, v196);
        v108 = v124;
        v205 = v201;
        v206 = v202;
        v207 = v203;
        v208 = v204;
      }

      v187 = v108;
      if (v102 >= *(v190 + 2) || (v125 = *(v180 + 3), v108 >= *(v125 + 16)))
      {
        v126 = v112;
        v203 = 0u;
        v204 = 0u;
        v201 = 0u;
        v202 = 0u;
      }

      else
      {
        v126 = v112;
        v127 = (v125 + v107);
        v128 = *v127;
        v129 = v127[1];
        v130 = v127[3];
        v196[2] = v127[2];
        v196[3] = v130;
        v196[0] = v128;
        v196[1] = v129;
        v197 = *v127;
        v198 = v127[1];
        v199 = v127[2];
        v200 = v127[3];
        sub_1A7CF3670(v196, v195);
        v201 = v197;
        v202 = v198;
        v203 = v199;
        v204 = v200;
      }

      v131 = *(&v210 + 1);
      v132 = v107;
      if (v107 == 96)
      {
        if (*(&v210 + 1))
        {
          v133 = BYTE1(v211) << 24;
        }

        else
        {
          v133 = 0;
        }

        v134 = sub_1A7D7EE30(v133 | (v109 << 16) | (v111 << 8), v103, v104);
        MEMORY[0x1AC561C90](v134);

        v131 = *(&v210 + 1);
      }

      v135 = BYTE2(v211);
      if (v111 > BYTE2(v211))
      {
        v135 = v111;
      }

      if (v131)
      {
        v136 = v135;
      }

      else
      {
        v136 = v111;
      }

      v137 = sub_1A7D7EE30(v136 | (v136 << 8), v103, v104);
      *&v197 = 0;
      *(&v197 + 1) = 0xE000000000000000;
      *&v196[0] = v137;
      *(&v196[0] + 1) = v138;
      sub_1A7CC7DFC();
      v139 = sub_1A7E22A30();
      v141 = v140;

      MEMORY[0x1AC561C90](v139, v141);

      v144 = *(&v210 + 1);
      v145 = BYTE2(v211);
      if (v111 > BYTE2(v211))
      {
        v145 = v111;
      }

      if (*(&v210 + 1))
      {
        v146 = v145;
      }

      else
      {
        v146 = v111;
      }

      v147 = BYTE4(v207);
      if (!*(&v206 + 1))
      {
        v147 = 0;
      }

      v148 = v147;
      if (v147 <= BYTE2(v203))
      {
        v148 = BYTE2(v203);
      }

      if (*(&v202 + 1))
      {
        v149 = v148;
      }

      else
      {
        v149 = v147;
      }

      if (*(&v206 + 1))
      {
        v150 = BYTE1(v207);
        sub_1A7CC9970(&v205, &qword_1EB2B5430, &qword_1A7E442F0);
        if (v110 <= v150)
        {
          v110 = v150;
        }

        v144 = *(&v210 + 1);
      }

      v24 = v192;
      if (v144)
      {
        v151 = BYTE3(v211);
        sub_1A7CC9970(&v209, &qword_1EB2B5430, &qword_1A7E442F0);
        if (!*(&v202 + 1))
        {
          goto LABEL_135;
        }
      }

      else
      {
        v151 = 0;
        if (!*(&v202 + 1))
        {
          goto LABEL_135;
        }
      }

      v152 = BYTE1(v203);
      sub_1A7CC9970(&v201, &qword_1EB2B5430, &qword_1A7E442F0);
      if (v151 <= v152)
      {
        v151 = v152;
      }

      v102 = v179;
LABEL_135:
      v106 |= v126;
      v153 = sub_1A7D7EE30((v110 << 16) | (v151 << 24) | (v149 << 8) | v146, v142, v143);
      MEMORY[0x1AC561C90](v153);

      if (v182 == v187)
      {
        break;
      }

      v108 = v187 + 1;
      v107 = v132 + 64;
      v105 = v194;
    }

    if ((v106 & 1) == 0)
    {
      v9 = v190;
      goto LABEL_147;
    }

    v154 = v213;
    v155 = v214;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v156 = v185;
    }

    else
    {
      v156 = sub_1A7CCCAA4(0, *(v185 + 2) + 1, 1, v185);
    }

    v158 = *(v156 + 2);
    v157 = *(v156 + 3);
    v9 = v190;
    result = v178;
    if (v158 >= v157 >> 1)
    {
      v156 = sub_1A7CCCAA4((v157 > 1), v158 + 1, 1, v156);
      result = v178;
    }

    *(v156 + 2) = v158 + 1;
    v159 = &v156[16 * v158];
    *(v159 + 4) = v154;
    *(v159 + 5) = v155;
LABEL_148:
    v160 = *(v156 + 2);
    v161 = *(result + 2);
    v162 = v161 + v160;
    if (__OFADD__(v161, v160))
    {
      goto LABEL_166;
    }

    v163 = v156;
    result = swift_isUniquelyReferenced_nonNull_native();
    v164 = v178;
    if (!result || v162 > *(v178 + 3) >> 1)
    {
      if (v161 <= v162)
      {
        v165 = v161 + v160;
      }

      else
      {
        v165 = v161;
      }

      result = sub_1A7CCCAA4(result, v165, 1, v178);
      v164 = result;
    }

    if (*(v163 + 2))
    {
      v27 = v179;
      if ((*(v164 + 3) >> 1) - *(v164 + 2) < v160)
      {
        goto LABEL_168;
      }

      v166 = v164;
      swift_arrayInitWithCopy();

      v25 = v166;
      if (!v160)
      {
        goto LABEL_13;
      }

      v167 = *(v166 + 2);
      v168 = __OFADD__(v167, v160);
      v169 = v167 + v160;
      if (v168)
      {
        goto LABEL_169;
      }

      *(v166 + 2) = v169;
LABEL_13:
      v24 = v27;
      if (v27 == v176)
      {
        v170 = v25;

        v171 = v170;
        goto LABEL_163;
      }

      continue;
    }

    break;
  }

  v26 = v164;

  v25 = v26;
  v27 = v179;
  if (!v160)
  {
    goto LABEL_13;
  }

LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
  return result;
}

uint64_t sub_1A7CEEDA4(char *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v80 = *MEMORY[0x1E69E9840];
  v75 = a1;
  v77[4] = BYTE4(a3);
  *v77 = a3;
  v67 = *(a2 + 16);
  if (v67)
  {
    v64 = a2 + 32;

    for (i = 0; i != v67; ++i)
    {
      v5 = *(v64 + 16 * i);
      v6 = *(v5 + 16);
      if (v6)
      {

        for (j = 0; j != v6; ++j)
        {
          if (j >= *(v5 + 16))
          {
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
          }

          if (*(v3 + 2) <= j)
          {
            do
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v3 = sub_1A7CCC644(0, *(v3 + 2) + 1, 1, v3);
              }

              v9 = *(v3 + 2);
              v8 = *(v3 + 3);
              if (v9 >= v8 >> 1)
              {
                v3 = sub_1A7CCC644((v8 > 1), v9 + 1, 1, v3);
              }

              *(v3 + 2) = v9 + 1;
              v10 = &v3[56 * v9];
              *(v10 + 2) = xmmword_1A7E44250;
              *(v10 + 6) = 1;
              v10[56] = 2;
              *(v10 + 57) = v72;
              *(v10 + 15) = *(&v72 + 3);
              *(v10 + 4) = vdupq_n_s64(1uLL);
              *(v10 + 40) = 0;
              v10[82] = 1;
            }

            while (v9 < j);
            v75 = v3;
          }
        }
      }
    }

    v11 = MEMORY[0x1E69E7CC0];
    v73 = MEMORY[0x1E69E7CC0];

    sub_1A7CCE988(0, v67, 0);
    v12 = 0;
    v13 = v73;
    do
    {
      v14 = (v64 + 16 * v12);
      v15 = *v14;
      v69 = v14[8];
      v63 = v14[9];
      v16 = *(*v14 + 16);
      v17 = *(v3 + 2);

      if (v16 >= v17)
      {
        v18 = v15;
      }

      else
      {

        v18 = v15;
        do
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_1A7CCC868(0, *(v18 + 2) + 1, 1, v18);
          }

          v20 = *(v18 + 2);
          v19 = *(v18 + 3);
          v21 = v20 + 1;
          if (v20 >= v19 >> 1)
          {
            v18 = sub_1A7CCC868((v19 > 1), v20 + 1, 1, v18);
          }

          *(v18 + 2) = v21;
          v22 = &v18[40 * v20];
          *(v22 + 4) = 0;
          *(v22 + 5) = 0;
          v22[48] = 1;
          *(v22 + 13) = *&v71[3];
          *(v22 + 49) = *v71;
          *(v22 + 7) = v11;
          *(v22 + 16) = 0;
          *(v22 + 34) = 0;
        }

        while (v21 < *(v3 + 2));
      }

      v72 = v13;
      v24 = *(v13 + 16);
      v23 = *(v13 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1A7CCE988((v23 > 1), v24 + 1, 1);
      }

      *(v13 + 16) = v24 + 1;
      v25 = v13 + 16 * v24;
      *(v25 + 32) = v18;
      ++v12;
      *(v25 + 40) = v69;
      *(v25 + 41) = v63;
    }

    while (v12 != v67);
    swift_bridgeObjectRelease_n();
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  v76 = v13;
  sub_1A7CEC0F8();
  v26 = v75;
  v27 = v77[0];
  v28 = *&v77[1];
  v75 = 0;
  v29 = sub_1A7E22070();
  v61 = MEMORY[0x1AC561960](1, v29, &v75);
  v30 = v13;
  v31 = WORD1(v75);
  v75 = v26;
  v76 = v13;
  v77[0] = v27;
  *&v77[1] = v28;
  v65 = *(v13 + 16);
  if (!v65)
  {
    goto LABEL_63;
  }

  v32 = 0;
  v68 = v13 + 32;
  do
  {
    if (v32 >= *(v30 + 16))
    {
      goto LABEL_70;
    }

    v33 = *(v68 + 16 * v32);
    v34 = *(v33 + 16);
    if (v34)
    {

      for (k = 0; k != v34; ++k)
      {
        if (k >= *(v33 + 16))
        {
          goto LABEL_69;
        }

        if (*(v26 + 2) <= k)
        {
          do
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v26 = sub_1A7CCC644(0, *(v26 + 2) + 1, 1, v26);
            }

            v37 = *(v26 + 2);
            v36 = *(v26 + 3);
            if (v37 >= v36 >> 1)
            {
              v26 = sub_1A7CCC644((v36 > 1), v37 + 1, 1, v26);
            }

            *(v26 + 2) = v37 + 1;
            v38 = &v26[56 * v37];
            *(v38 + 2) = xmmword_1A7E44250;
            *(v38 + 6) = 1;
            v38[56] = 2;
            *(v38 + 57) = v72;
            *(v38 + 15) = *(&v72 + 3);
            *(v38 + 4) = vdupq_n_s64(1uLL);
            *(v38 + 40) = 0;
            v38[82] = 1;
          }

          while (v37 < k);
          v75 = v26;
        }
      }

      v30 = v13;
    }

    ++v32;
  }

  while (v32 != v65);
  v39 = *(v30 + 16);
  if (v39)
  {
    v40 = MEMORY[0x1E69E7CC0];
    v74 = MEMORY[0x1E69E7CC0];

    sub_1A7CCE988(0, v39, 0);
    v41 = 0;
    v42 = v74;
    v62 = v39;
    do
    {
      v43 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        goto LABEL_71;
      }

      v44 = (v68 + 16 * v41);
      v45 = *v44;
      v70 = v44[8];
      v66 = v44[9];
      v46 = *(*v44 + 16);
      v47 = *(v26 + 2);

      if (v46 >= v47)
      {
        v48 = v45;
      }

      else
      {

        v48 = v45;
        do
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = sub_1A7CCC868(0, *(v48 + 2) + 1, 1, v48);
          }

          v50 = *(v48 + 2);
          v49 = *(v48 + 3);
          v51 = v50 + 1;
          if (v50 >= v49 >> 1)
          {
            v48 = sub_1A7CCC868((v49 > 1), v50 + 1, 1, v48);
          }

          *(v48 + 2) = v51;
          v52 = &v48[40 * v50];
          *(v52 + 4) = 0;
          *(v52 + 5) = 0;
          v52[48] = 1;
          *(v52 + 13) = *&v71[3];
          *(v52 + 49) = *v71;
          *(v52 + 7) = v40;
          *(v52 + 16) = 0;
          *(v52 + 34) = 0;
        }

        while (v51 < *(v26 + 2));
      }

      v54 = *(v74 + 16);
      v53 = *(v74 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_1A7CCE988((v53 > 1), v54 + 1, 1);
      }

      *(v74 + 16) = v54 + 1;
      v55 = v74 + 16 * v54;
      *(v55 + 32) = v48;
      *(v55 + 40) = v70;
      *(v55 + 41) = v66;
      v41 = v43;
    }

    while (v43 != v62);
    swift_bridgeObjectRelease_n();
  }

  else
  {
LABEL_63:

    v42 = MEMORY[0x1E69E7CC0];
  }

  if (v61)
  {
    v56 = 80;
  }

  else
  {
    v56 = v31;
  }

  v76 = v42;
  sub_1A7CEC0F8();
  sub_1A7CEE038(v56, 1, v75, v76, v77[0] | (v77[1] << 8) | (v77[2] << 16) | (v77[3] << 24) | (v77[4] << 32), &v75);

  v57 = v78;
  v58 = v79;
  sub_1A7CC9878(&v75, v78);
  (*(v58 + 24))(v57, v58);
  sub_1A7CC7FFC(&qword_1EB2B4AA0, &qword_1A7E45010);
  sub_1A7CF3788(&qword_1EB2B3088, &qword_1EB2B4AA0, &qword_1A7E45010, MEMORY[0x1E69E6310]);
  v59 = sub_1A7E221F0();

  sub_1A7B0CD6C(&v75);
  return v59;
}

uint64_t sub_1A7CEF5D0@<X0>(uint64_t a1@<X0>, char a2@<W2>, uint64_t *a3@<X8>)
{
  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = *(v3 + 16);
  v11 = *(v3 + 17);

  sub_1A7CEBF20();
  sub_1A7CEC0F8();
  sub_1A7CEE038(a1, a2, v8, v9, v10 | (v11 << 8) | (BYTE1(v11) << 16) | (BYTE2(v11) << 24) | (HIBYTE(v11) << 32), a3);
}

unint64_t sub_1A7CEF6A8(uint64_t a1)
{
  result = sub_1A7CEF6D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A7CEF6D0()
{
  result = qword_1EB2B5428;
  if (!qword_1EB2B5428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5428);
  }

  return result;
}

uint64_t sub_1A7CEF724(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A7D602E4(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1A7E23080();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1A7E22580();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1A7CEF858(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1A7CEF858(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1A7CF0024(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1A7CEFDA4((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A7CCC08C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1A7CCC08C((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
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
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_1A7CEFDA4((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1A7CEFDA4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_1A7CEFF98(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A7CF0024(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1A7CF0038(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](a2);
  v6 = sub_1A7E23240();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1A7CF1688(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1A7CF0154(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1A7E23200();
  sub_1A7E22350();
  v8 = sub_1A7E23240();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1A7E230D0() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1A7CF17D4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1A7CF02C8(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v10 = *v6;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](*a2);
  v11 = sub_1A7E23240();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A7CD1F00(a2, v24, a3, a4);
    v23 = *v21;
    sub_1A7CF1C54(v24, v13, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
    *v21 = v23;
    sub_1A7CE5028(a2, a1, a3, a4);
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    sub_1A7CD1F00(*(v10 + 48) + 24 * v13, v24, a3, a4);
    Strong = swift_unknownObjectWeakLoadStrong();
    v16 = swift_unknownObjectWeakLoadStrong();
    sub_1A7CC9970(v24, a3, a4);
    if (!Strong)
    {
      if (!v16)
      {
        goto LABEL_12;
      }

      goto LABEL_4;
    }

    if (v16)
    {
      break;
    }

LABEL_4:
    swift_unknownObjectRelease();
LABEL_5:
    v13 = (v13 + 1) & v14;
    if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (Strong != v16)
  {
    goto LABEL_5;
  }

LABEL_12:
  sub_1A7CC9970(a2, a3, a4);
  sub_1A7CD1F00(*(v10 + 48) + 24 * v13, a1, a3, a4);
  return 0;
}

uint64_t sub_1A7CF04F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  v11 = *v5;
  sub_1A7E23200();
  sub_1A7E22350();
  v12 = sub_1A7E23240();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (1)
    {
      v16 = (*(v11 + 48) + 32 * v14);
      v17 = *v16 == a2 && v16[1] == a3;
      if (v17 || (sub_1A7E230D0() & 1) != 0)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v20 = *(v11 + 48) + 32 * v14;
    v21 = *(v20 + 8);
    v22 = *(v20 + 16);
    v23 = *(v20 + 24);
    *a1 = *v20;
    *(a1 + 8) = v21;
    *(a1 + 16) = v22;
    *(a1 + 24) = v23;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v5;

    sub_1A7CF1954(a2, a3, v7, a5, v14, isUniquelyReferenced_nonNull_native);
    *v5 = v24;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = v7;
    *(a1 + 24) = a5;
    return 1;
  }
}

uint64_t sub_1A7CF0694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](a2);
  v8 = sub_1A7E23240();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (*(*(v7 + 48) + 16 * v10) != a2)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRelease();
    *a1 = *(*(v7 + 48) + 16 * v10);
    swift_unknownObjectRetain();
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    v13 = swift_unknownObjectRetain();
    sub_1A7CF1AF4(v13, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    *a1 = a2;
    *(a1 + 8) = a3;
    return 1;
  }
}

uint64_t sub_1A7CF080C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A7CC7FFC(&qword_1EB2B5468, &qword_1A7E44318);
  result = sub_1A7E22B10();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1A7E23200();
      MEMORY[0x1AC562AF0](v17);
      result = sub_1A7E23240();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1A7CF0A5C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A7CC7FFC(&qword_1EB2B54B8, qword_1A7E44368);
  result = sub_1A7E22B10();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1A7E23200();
      sub_1A7E22350();
      result = sub_1A7E23240();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1A7CF0CBC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = *v5;
  sub_1A7CC7FFC(a2, a3);
  result = sub_1A7E22B10();
  v11 = result;
  if (*(v9 + 16))
  {
    v12 = 0;
    v13 = (v9 + 56);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      sub_1A7CE5028(*(v9 + 48) + 24 * (v20 | (v12 << 6)), v31, a4, a5);
      sub_1A7E23200();
      MEMORY[0x1AC562AF0](v31[0]);
      result = sub_1A7E23240();
      v23 = -1 << *(v11 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v18 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v18 + 8 * v25);
          if (v29 != -1)
          {
            v19 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v24) & ~*(v18 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1A7CE5028(v31, *(v11 + 48) + 24 * v19, a4, a5);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v9 + 32);
    if (v30 >= 64)
    {
      bzero((v9 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v30;
    }

    v8 = v5;
    *(v9 + 16) = 0;
  }

  *v8 = v11;
  return result;
}

uint64_t sub_1A7CF0F3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A7CC7FFC(&qword_1EB2B5498, &qword_1A7E44348);
  result = sub_1A7E22B10();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 32 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v32 = *(v18 + 17);
      v31 = *(v18 + 24);
      sub_1A7E23200();
      sub_1A7E22350();
      result = sub_1A7E23240();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 32 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      *(v14 + 17) = v32;
      v3 = v30;
      *(v14 + 24) = v31;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1A7CF11C4(uint64_t a1)
{
  v2 = *v1;
  sub_1A7CC7FFC(&qword_1EB2B5490, &qword_1A7E44340);
  result = sub_1A7E22B10();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v24 = *(*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      sub_1A7E23200();
      MEMORY[0x1AC562AF0](v24);
      result = sub_1A7E23240();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v11 + 8 * v18);
          if (v22 != -1)
          {
            v12 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 16 * v12) = v24;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v23 = 1 << *(v2 + 32);
    if (v23 >= 64)
    {
      bzero((v2 + 56), ((v23 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v23;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1A7CF1418(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A7CC7FFC(&qword_1EB2B5478, &qword_1A7E44328);
  result = sub_1A7E22B10();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 2 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1A7E23200();
      MEMORY[0x1AC562AF0](v19);
      MEMORY[0x1AC562AF0](v20);
      result = sub_1A7E23240();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 2 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1A7CF1688(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A7CF080C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1A7CF1FF0();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1A7CF28EC(v5 + 1);
  }

  v8 = *v3;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v4);
  result = sub_1A7E23240();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1A7E23130();
  __break(1u);
  return result;
}

uint64_t sub_1A7CF17D4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1A7CF0A5C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1A7CF2154();
      goto LABEL_16;
    }

    sub_1A7CF2B0C(v8 + 1);
  }

  v10 = *v4;
  sub_1A7E23200();
  sub_1A7E22350();
  result = sub_1A7E23240();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1A7E230D0();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1A7E23130();
  __break(1u);
  return result;
}

uint64_t sub_1A7CF1954(uint64_t result, uint64_t a2, __int16 a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a6)
  {
    sub_1A7CF0F3C(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_1A7CF2498();
      goto LABEL_16;
    }

    sub_1A7CF2F94(v12 + 1);
  }

  v14 = *v6;
  sub_1A7E23200();
  sub_1A7E22350();
  result = sub_1A7E23240();
  v15 = -1 << *(v14 + 32);
  a5 = result & ~v15;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v16 = ~v15;
    do
    {
      v17 = (*(v14 + 48) + 32 * a5);
      if (*v17 == v11 && v17[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1A7E230D0();
      if (result)
      {
        goto LABEL_19;
      }

      a5 = (a5 + 1) & v16;
    }

    while (((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_16:
  v19 = *v6;
  *(*v6 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v20 = *(v19 + 48) + 32 * a5;
  *v20 = v11;
  *(v20 + 8) = a2;
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v19 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1A7E23130();
  __break(1u);
  return result;
}

uint64_t sub_1A7CF1AF4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a4)
  {
    sub_1A7CF11C4(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = sub_1A7CF260C();
      a3 = v9;
      goto LABEL_12;
    }

    sub_1A7CF31F8(v7 + 1);
  }

  v10 = *v4;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v6);
  result = sub_1A7E23240();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    while (*(*(v10 + 48) + 16 * a3) != v6)
    {
      a3 = (a3 + 1) & v12;
      if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v14 = (*(v13 + 48) + 16 * a3);
  *v14 = v6;
  v14[1] = a2;
  v15 = *(v13 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v13 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1A7E23130();
  __break(1u);
  return result;
}

uint64_t sub_1A7CF1C54(void *a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v12 = *(*v7 + 16);
  v13 = *(*v7 + 24);
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1A7CF0CBC(v12 + 1, a4, a5, a6, a7);
    }

    else
    {
      if (v13 > v12)
      {
        sub_1A7CF22D4(a4, a5, a6, a7);
        goto LABEL_17;
      }

      sub_1A7CF2D44(v12 + 1, a4, a5, a6, a7);
    }

    v14 = *v7;
    sub_1A7E23200();
    MEMORY[0x1AC562AF0](*a1);
    v15 = sub_1A7E23240();
    v16 = -1 << *(v14 + 32);
    a2 = v15 & ~v16;
    if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v17 = ~v16;
      do
      {
        sub_1A7CD1F00(*(v14 + 48) + 24 * a2, v26, a6, a7);
        Strong = swift_unknownObjectWeakLoadStrong();
        v19 = swift_unknownObjectWeakLoadStrong();
        sub_1A7CC9970(v26, a6, a7);
        if (Strong)
        {
          if (v19)
          {
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            if (Strong == v19)
            {
              goto LABEL_20;
            }

            goto LABEL_11;
          }
        }

        else if (!v19)
        {
          goto LABEL_20;
        }

        swift_unknownObjectRelease();
LABEL_11:
        a2 = (a2 + 1) & v17;
      }

      while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_17:
  v20 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1A7CE5028(a1, *(v20 + 48) + 24 * a2, a6, a7);
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
LABEL_20:
    sub_1A7CC7FFC(a6, a7);
    result = sub_1A7E23130();
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }

  return result;
}

uint64_t sub_1A7CF1E70(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    sub_1A7CF1418(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      v8 = a2;
      result = sub_1A7CF27AC();
      a2 = v8;
      goto LABEL_15;
    }

    sub_1A7CF3430(v6 + 1);
  }

  v9 = *v3;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v4);
  MEMORY[0x1AC562AF0](HIBYTE(v4));
  result = sub_1A7E23240();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = (*(v9 + 48) + 2 * a2);
      v13 = *v12;
      v14 = v12[1];
      if (v13 == v5 && HIBYTE(v4) == v14)
      {
        goto LABEL_18;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v17 = (*(v16 + 48) + 2 * a2);
  *v17 = v5;
  v17[1] = HIBYTE(v4);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_18:
  result = sub_1A7E23130();
  __break(1u);
  return result;
}

void *sub_1A7CF1FF0()
{
  v1 = v0;
  sub_1A7CC7FFC(&qword_1EB2B5468, &qword_1A7E44318);
  v2 = *v0;
  v3 = sub_1A7E22B00();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1A7CF2154()
{
  v1 = v0;
  sub_1A7CC7FFC(&qword_1EB2B54B8, qword_1A7E44368);
  v2 = *v0;
  v3 = sub_1A7E22B00();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1A7CF22D4(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  sub_1A7CC7FFC(a1, a2);
  v8 = *v4;
  v9 = sub_1A7E22B00();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 56);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v8 + 56 + 8 * v12)
    {
      result = memmove(result, (v8 + 56), 8 * v12);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = *(v8 + 56);
    v17 = -1;
    if (v15 < 64)
    {
      v17 = ~(-1 << v15);
    }

    v18 = v17 & v16;
    v19 = (v15 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_17:
        v23 = 24 * (v20 | (v14 << 6));
        sub_1A7CD1F00(*(v8 + 48) + v23, v24, a3, a4);
        result = sub_1A7CE5028(v24, *(v10 + 48) + v23, a3, a4);
      }

      while (v18);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {
        goto LABEL_19;
      }

      v22 = *(v8 + 56 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v7 = v10;
  }

  return result;
}

void *sub_1A7CF2498()
{
  v1 = v0;
  sub_1A7CC7FFC(&qword_1EB2B5498, &qword_1A7E44348);
  v2 = *v0;
  v3 = sub_1A7E22B00();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 32 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *(v18 + 8);
        v20 = *(v18 + 16);
        v21 = *(v18 + 24);
        v22 = *(v4 + 48) + v17;
        *v22 = *v18;
        *(v22 + 8) = v19;
        *(v22 + 16) = v20;
        *(v22 + 24) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1A7CF260C()
{
  v1 = v0;
  sub_1A7CC7FFC(&qword_1EB2B5490, &qword_1A7E44340);
  v2 = *v0;
  v3 = sub_1A7E22B00();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1A7CF27AC()
{
  v1 = v0;
  sub_1A7CC7FFC(&qword_1EB2B5478, &qword_1A7E44328);
  v2 = *v0;
  v3 = sub_1A7E22B00();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A7CF28EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A7CC7FFC(&qword_1EB2B5468, &qword_1A7E44318);
  result = sub_1A7E22B10();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_1A7E23200();
      MEMORY[0x1AC562AF0](v16);
      result = sub_1A7E23240();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1A7CF2B0C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A7CC7FFC(&qword_1EB2B54B8, qword_1A7E44368);
  result = sub_1A7E22B10();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1A7E23200();

      sub_1A7E22350();
      result = sub_1A7E23240();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1A7CF2D44(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = *v5;
  sub_1A7CC7FFC(a2, a3);
  result = sub_1A7E22B10();
  v11 = result;
  if (*(v9 + 16))
  {
    v12 = 0;
    v13 = 1 << *(v9 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v9 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      sub_1A7CD1F00(*(v9 + 48) + 24 * (v19 | (v12 << 6)), v29, a4, a5);
      sub_1A7E23200();
      MEMORY[0x1AC562AF0](v29[0]);
      result = sub_1A7E23240();
      v22 = -1 << *(v11 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v17 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v17 + 8 * v24);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v18 = __clz(__rbit64((-1 << v23) & ~*(v17 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_1A7CE5028(v29, *(v11 + 48) + 24 * v18, a4, a5);
      ++*(v11 + 16);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v8 = v5;
        goto LABEL_26;
      }

      v21 = *(v9 + 56 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v8 = v11;
  }

  return result;
}

uint64_t sub_1A7CF2F94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A7CC7FFC(&qword_1EB2B5498, &qword_1A7E44348);
  result = sub_1A7E22B10();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 32 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v30 = *(v18 + 17);
      v31 = *(v18 + 16);
      v21 = *(v18 + 24);
      sub_1A7E23200();

      sub_1A7E22350();
      result = sub_1A7E23240();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 32 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v31;
      *(v14 + 17) = v30;
      *(v14 + 24) = v21;
      ++*(v5 + 16);
      v3 = v29;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1A7CF31F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A7CC7FFC(&qword_1EB2B5490, &qword_1A7E44340);
  result = sub_1A7E22B10();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v23 = *(*(v3 + 48) + 16 * (v13 | (v6 << 6)));
      sub_1A7E23200();
      MEMORY[0x1AC562AF0](v23);
      result = sub_1A7E23240();
      v16 = -1 << *(v5 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v11 + 8 * v18);
          if (v22 != -1)
          {
            v12 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 16 * v12) = v23;
      ++*(v5 + 16);
      result = swift_unknownObjectRetain();
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1A7CF3430(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A7CC7FFC(&qword_1EB2B5478, &qword_1A7E44328);
  result = sub_1A7E22B10();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 2 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1A7E23200();
      MEMORY[0x1AC562AF0](v18);
      MEMORY[0x1AC562AF0](v19);
      result = sub_1A7E23240();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 2 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1A7CF3788(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A7CC9830(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_1A7CF37D0(char *result)
{
  v1 = *(result + 2);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = result + 32;
  v3 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 2);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= *(v3 + 3) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v8 = v6 + v5;
      }

      else
      {
        v8 = v6;
      }

      result = sub_1A7CCC75C(result, v8, 1, v3);
      v3 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 3) >> 1) - *(v3 + 2) < v5)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v9 = *(v3 + 2);
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_23;
          }

          *(v3 + 2) = v11;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 += 8;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

__n128 sub_1A7CF3914(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A7CF3928(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A7CF3970(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A7CF39D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A7CD22FC;

  return sub_1A7CF3A68(a1);
}

uint64_t sub_1A7CF3A68(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  sub_1A7CC7FFC(&qword_1EB2B4A80, &unk_1A7E41910);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = type metadata accessor for LinkState(0);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7CF3BAC, 0, 0);
}

void sub_1A7CF3BAC()
{
  v1 = LinkEngine.linkConnector.getter();
  v65 = v2;
  if (!v1)
  {
    goto LABEL_56;
  }

  v3 = *(v0 + 144);
  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);

  os_unfair_lock_unlock((v3 + 16));
  v5 = v4 + 64;
  v74 = MEMORY[0x1E69E7CC0];
  v6 = -1;
  v7 = -1 << *(v4 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v4 + 64);
  v9 = (63 - v7) >> 6;

  v10 = 0;
  if (v8)
  {
    goto LABEL_7;
  }

  while (1)
  {
LABEL_8:
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      while (1)
      {

        v8 &= v8 - 1;
        if (sub_1A7CF44C4())
        {
          sub_1A7E22BF0();
          sub_1A7E22C40();
          sub_1A7E22C50();
          sub_1A7E22C00();
          v10 = v11;
          if (!v8)
          {
            goto LABEL_8;
          }
        }

        else
        {

          v10 = v11;
          if (!v8)
          {
            goto LABEL_8;
          }
        }

LABEL_7:
        v11 = v10;
      }
    }
  }

  v12 = *(v0 + 152);

  v5 = v74;
  os_unfair_lock_lock((v12 + 32));
  v73 = *(v12 + 36);
  os_unfair_lock_unlock((v12 + 32));
  if (v74 < 0 || (v74 & 0x4000000000000000) != 0)
  {
LABEL_54:
    v13 = sub_1A7E22DA0();
    if (!v13)
    {
      goto LABEL_55;
    }

LABEL_17:
    if (v13 < 1)
    {
      __break(1u);
      return;
    }

    v14 = 0;
    v71 = v13;
    v72 = v5 & 0xC000000000000001;
    v70 = v5;
    while (1)
    {
      if (v72)
      {
        v18 = MEMORY[0x1AC562480](v14, v5);
        if (!v73)
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v14 >= *(v5 + 16))
        {
          goto LABEL_53;
        }

        v18 = *(v5 + 8 * v14 + 32);

        if (!v73)
        {
LABEL_31:
          os_unfair_lock_lock((v18 + 40));
          v24 = type metadata accessor for LinkStateComponent(0);
          v25 = v24;
          v26 = *(v18 + 48);
          if (*(v26 + 16) && (v27 = sub_1A7CD0DFC(v24), (v28 & 1) != 0))
          {
            sub_1A7B0CD10(*(v26 + 56) + 32 * v27, v0 + 16);
          }

          else
          {
            *(v0 + 16) = 0u;
            *(v0 + 32) = 0u;
          }

          v35 = *(v0 + 176);
          os_unfair_lock_unlock((v18 + 40));
          sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
          v36 = swift_dynamicCast();
          v37 = *(v25 - 8);
          v67 = *(v37 + 56);
          v67(v35, v36 ^ 1u, 1, v25);
          v69 = *(v37 + 48);
          v38 = v69(v35, 1, v25);
          v39 = *(v0 + 232);
          v40 = *(v0 + 176);
          if (v38)
          {
            sub_1A7CD9FEC(v40);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            v49 = *(v0 + 224);
            v50 = *(v0 + 176);
            sub_1A7CD0EC4(v40, v49);
            v51 = v50;
            v13 = v71;
            sub_1A7CD9FEC(v51);
            sub_1A7CF4888(v49, v39, type metadata accessor for LinkState);
          }

          v52 = *(v0 + 232);
          if (swift_getEnumCaseMultiPayload() > 1)
          {

            sub_1A7CD0E68(v52);
            v5 = v70;
            goto LABEL_23;
          }

          v53 = *(v0 + 216);
          v54 = *(v0 + 168);
          v64 = *(v0 + 160);
          v55 = sub_1A7E22CF0();
          (*(*(v55 - 8) + 8))(v52, v55);
          sub_1A7E22CC0();
          swift_storeEnumTagMultiPayload();
          sub_1A7CD0EC4(v53, v54);
          v67(v54, 0, 1, v25);
          os_unfair_lock_lock((v18 + 40));
          sub_1A7CDA3E0(v54, v64);
          v56 = v69(v64, 1, v25);
          v57 = *(v0 + 160);
          if (v56 == 1)
          {
            sub_1A7CD9FEC(*(v0 + 160));
            *(v0 + 48) = 0u;
            *(v0 + 64) = 0u;
          }

          else
          {
            *(v0 + 72) = v25;
            v58 = sub_1A7CC98BC((v0 + 48));
            sub_1A7CF4888(v57, v58, type metadata accessor for LinkStateComponent);
          }

          v59 = *(v0 + 216);
          v60 = *(v0 + 168);
          sub_1A7CC8D74(v0 + 48, v25);
          os_unfair_lock_unlock((v18 + 40));
          sub_1A7CD0E68(v59);
          sub_1A7CD9FEC(v60);
          ObjectType = swift_getObjectType();
          (*(v65 + 24))(v18, ObjectType);
          goto LABEL_21;
        }
      }

      os_unfair_lock_lock((v18 + 40));
      v19 = type metadata accessor for LinkStateComponent(0);
      v20 = v19;
      v21 = *(v18 + 48);
      if (*(v21 + 16) && (v22 = sub_1A7CD0DFC(v19), (v23 & 1) != 0))
      {
        sub_1A7B0CD10(*(v21 + 56) + 32 * v22, v0 + 80);
      }

      else
      {
        *(v0 + 80) = 0u;
        *(v0 + 96) = 0u;
      }

      v29 = *(v0 + 200);
      os_unfair_lock_unlock((v18 + 40));
      sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
      v30 = swift_dynamicCast();
      v31 = *(v20 - 8);
      v66 = *(v31 + 56);
      v66(v29, v30 ^ 1u, 1, v20);
      v68 = *(v31 + 48);
      v32 = v68(v29, 1, v20);
      v33 = *(v0 + 256);
      v34 = *(v0 + 200);
      if (v32)
      {
        sub_1A7CD9FEC(v34);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v41 = *(v0 + 248);
        v42 = *(v0 + 200);
        sub_1A7CD0EC4(v34, v41);
        sub_1A7CD9FEC(v42);
        sub_1A7CF4888(v41, v33, type metadata accessor for LinkState);
      }

      v43 = *(v0 + 256);
      if (swift_getEnumCaseMultiPayload() != 4)
      {

        sub_1A7CD0E68(v43);
        goto LABEL_22;
      }

      v44 = *(v0 + 240);
      v45 = *(v0 + 192);
      v63 = *(v0 + 184);
      sub_1A7CD0E68(v43);
      sub_1A7E22CC0();
      swift_storeEnumTagMultiPayload();
      sub_1A7CD0EC4(v44, v45);
      v66(v45, 0, 1, v20);
      os_unfair_lock_lock((v18 + 40));
      sub_1A7CDA3E0(v45, v63);
      v46 = v68(v63, 1, v20);
      v47 = *(v0 + 184);
      if (v46 == 1)
      {
        sub_1A7CD9FEC(*(v0 + 184));
        *(v0 + 112) = 0u;
        *(v0 + 128) = 0u;
      }

      else
      {
        *(v0 + 136) = v20;
        v48 = sub_1A7CC98BC((v0 + 112));
        sub_1A7CF4888(v47, v48, type metadata accessor for LinkStateComponent);
      }

      v15 = *(v0 + 240);
      v16 = *(v0 + 192);
      sub_1A7CC8D74(v0 + 112, v20);
      os_unfair_lock_unlock((v18 + 40));
      sub_1A7CD0E68(v15);
      sub_1A7CD9FEC(v16);
      v17 = swift_getObjectType();
      (*(v65 + 8))(v18, v17);
LABEL_21:

      v5 = v70;
LABEL_22:
      v13 = v71;
LABEL_23:
      if (v13 == ++v14)
      {
        goto LABEL_55;
      }
    }
  }

  v13 = *(v74 + 16);
  if (v13)
  {
    goto LABEL_17;
  }

LABEL_55:

  swift_unknownObjectRelease();
LABEL_56:

  v62 = *(v0 + 8);

  v62();
}

BOOL sub_1A7CF44C4()
{
  LinkEngineLink.definition.getter(&v4);
  v1 = v4;
  v0 = v5;
  v2 = v6;
  if (v4)
  {

    sub_1A7CDB84C(v1, v0, v2);
    LinkDefinition.idsLinkType.getter(&v7);
    sub_1A7CDB84C(v1, v0, v2);
    return v7 - 1 < 2;
  }

  else
  {
    sub_1A7CDB84C(0, v5, v6);
    return 0;
  }
}

uint64_t sub_1A7CF458C()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for IDSConnectAllEndToEndLinksPlugin.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

uint64_t sub_1A7CF4698(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_1A7E44458;
  *(v3 + 24) = v1;

  sub_1A7D20F9C(v4, &unk_1A7E44460, v3, v2);
}

uint64_t sub_1A7CF4728(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A7CD22FC;

  return sub_1A7CF39D0(a1);
}

uint64_t sub_1A7CF47C0(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A7CD2A2C;

  return sub_1A7D193A4(a1, a2, v6);
}

uint64_t sub_1A7CF4888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A7CF48F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = 13160;
  v25 = 0xE200000000000000;
  v23 = &v24;
  result = sub_1A7DB1A5C(sub_1A7CF67EC, v22, a1);
  if (result)
  {
    *a2 = 0x332F50545448;
    *(a2 + 8) = 0xE600000000000000;
    v5 = 512;
LABEL_10:
    *(a2 + 16) = v5;
    goto LABEL_11;
  }

  v24 = 12904;
  v25 = 0xE200000000000000;
  MEMORY[0x1EEE9AC00](result);
  v21 = &v24;
  result = sub_1A7DB1A5C(sub_1A7CF680C, v20, a1);
  if (result)
  {
    v6 = 0x322F50545448;
    v7 = 0xE600000000000000;
LABEL_5:
    *a2 = v6;
    *(a2 + 8) = v7;
    v5 = 1024;
    goto LABEL_10;
  }

  v24 = 0x616C65722D736469;
  v25 = 0xE900000000000079;
  MEMORY[0x1EEE9AC00](result);
  v21 = &v24;
  v8 = sub_1A7DB1A5C(sub_1A7CF680C, v20, a1);
  if (v8)
  {
    v24 = 7365492;
    v25 = 0xE300000000000000;
    MEMORY[0x1EEE9AC00](v8);
    v21 = &v24;
    result = sub_1A7DB1A5C(sub_1A7CF680C, v20, a1);
    if (result)
    {
      *a2 = 5260116;
      *(a2 + 8) = 0xE300000000000000;
LABEL_9:
      v5 = 256;
      goto LABEL_10;
    }

    v24 = 7365749;
    v25 = 0xE300000000000000;
    MEMORY[0x1EEE9AC00](result);
    v21 = &v24;
    result = sub_1A7DB1A5C(sub_1A7CF680C, v20, a1);
    if (result)
    {
      v6 = 5260373;
      v7 = 0xE300000000000000;
      goto LABEL_5;
    }

    v24 = 0x736C742D656B6166;
    v25 = 0xE800000000000000;
    MEMORY[0x1EEE9AC00](result);
    v21 = &v24;
    result = sub_1A7DB1A5C(sub_1A7CF680C, v20, a1);
    if (result)
    {
      *a2 = 0x534C54656B6146;
      *(a2 + 8) = 0xE700000000000000;
      goto LABEL_9;
    }
  }

  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1A7CCE918(0, v9, 0);
    v10 = v24;
    v11 = (a1 + 40);
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;
      v24 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);

      if (v15 >= v14 >> 1)
      {
        sub_1A7CCE918((v14 > 1), v15 + 1, 1);
        v10 = v24;
      }

      *(v10 + 16) = v15 + 1;
      v16 = v10 + 16 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v12;
      v11 += 2;
      --v9;
    }

    while (v9);
  }

  v24 = v10;
  sub_1A7CC7FFC(&qword_1EB2B4AA0, &qword_1A7E45010);
  sub_1A7CD0F8C();
  v17 = sub_1A7E221F0();
  v19 = v18;

  *a2 = v17;
  *(a2 + 8) = v19;
  *(a2 + 16) = 0;
LABEL_11:
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 2;
  return result;
}

uint64_t sub_1A7CF4CB8(uint64_t a1)
{
  if (a1)
  {
    sub_1A7CC7FFC(&qword_1EB2B4AD0, &qword_1A7E41A10);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1A7E418C0;
    *(v2 + 32) = vdupq_n_s64(1uLL);
    *(v2 + 48) = 2;
    *(v2 + 56) = 1;
    *(v2 + 64) = xmmword_1A7E418E0;
    *(v2 + 80) = 1792;
    v16 = v2;
    *(v2 + 82) = 1;
    v3 = &unk_1A7E44000;
    if ((a1 & 0x1000000) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
    v3 = &unk_1A7E44000;
    if ((a1 & 0x1000000) != 0)
    {
LABEL_3:
      sub_1A7CC7FFC(&qword_1EB2B4AD0, &qword_1A7E41A10);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1A7E418C0;
      *(v4 + 32) = vdupq_n_s64(1uLL);
      *(v4 + 48) = 2;
      *(v4 + 56) = 1;
      *(v4 + 64) = v3[71];
      *(v4 + 80) = 0;
      *(v4 + 82) = 3;
      if ((a1 & 0x100000000) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = MEMORY[0x1E69E7CC0];
      if ((a1 & 0x10000000000) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v4 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0x100000000) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_1A7CC7FFC(&qword_1EB2B4AD0, &qword_1A7E41A10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A7E418C0;
  *(v5 + 32) = vdupq_n_s64(1uLL);
  *(v5 + 48) = 2;
  *(v5 + 56) = 1;
  *(v5 + 64) = v3[71];
  *(v5 + 80) = 0;
  *(v5 + 82) = 3;
  if ((a1 & 0x10000000000) != 0)
  {
LABEL_5:
    sub_1A7CC7FFC(&qword_1EB2B4AD0, &qword_1A7E41A10);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1A7E418C0;
    *(v6 + 32) = vdupq_n_s64(1uLL);
    *(v6 + 48) = 2;
    *(v6 + 56) = 1;
    *(v6 + 64) = v3[71];
    *(v6 + 80) = 0;
    *(v6 + 82) = 3;
    goto LABEL_10;
  }

LABEL_9:
  v6 = MEMORY[0x1E69E7CC0];
LABEL_10:
  sub_1A7CC7FFC(&qword_1EB2B4AD0, &qword_1A7E41A10);
  v7 = swift_allocObject();
  v8 = vdupq_n_s64(1uLL);
  *(v7 + 16) = xmmword_1A7E418C0;
  *(v7 + 32) = v8;
  *(v7 + 48) = 3;
  *(v7 + 56) = 1;
  *(v7 + 64) = v8;
  *(v7 + 80) = 0;
  *(v7 + 82) = 1;
  if ((a1 & 0x10000000000) != 0)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1A7E418C0;
    *(v9 + 32) = vdupq_n_s64(1uLL);
    *(v9 + 48) = 2;
    *(v9 + 56) = 1;
    *(v9 + 64) = xmmword_1A7E418E0;
    *(v9 + 80) = 0;
    *(v9 + 82) = 1;
    if ((a1 & 0x100000000) != 0)
    {
LABEL_12:
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1A7E418C0;
      *(v10 + 32) = vdupq_n_s64(1uLL);
      *(v10 + 48) = 2;
      *(v10 + 56) = 1;
      *(v10 + 64) = xmmword_1A7E418E0;
      *(v10 + 80) = 0;
      *(v10 + 82) = 1;
      if ((a1 & 0x1000000) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
    if ((a1 & 0x100000000) != 0)
    {
      goto LABEL_12;
    }
  }

  v10 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0x1000000) != 0)
  {
LABEL_13:
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1A7E418C0;
    *(v11 + 32) = vdupq_n_s64(1uLL);
    *(v11 + 48) = 2;
    *(v11 + 56) = 1;
    *(v11 + 64) = xmmword_1A7E418E0;
    *(v11 + 80) = 0;
    *(v11 + 82) = 1;
    if ((a1 & 0x1000000000000) != 0)
    {
      goto LABEL_14;
    }

LABEL_19:
    v12 = MEMORY[0x1E69E7CC0];
    if ((a1 & 0x10000) != 0)
    {
      goto LABEL_15;
    }

LABEL_20:
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_18:
  v11 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0x1000000000000) == 0)
  {
    goto LABEL_19;
  }

LABEL_14:
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A7E418C0;
  *(v12 + 32) = vdupq_n_s64(1uLL);
  *(v12 + 48) = 2;
  *(v12 + 56) = 1;
  *(v12 + 64) = vdupq_n_s64(3uLL);
  *(v12 + 80) = 7;
  *(v12 + 82) = 2;
  if ((a1 & 0x10000) == 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  v13 = swift_allocObject();
  v14 = vdupq_n_s64(1uLL);
  *(v13 + 16) = xmmword_1A7E418C0;
  *(v13 + 32) = v14;
  *(v13 + 48) = 1;
  *(v13 + 56) = 2;
  *(v13 + 64) = v14;
  *(v13 + 80) = 0;
  *(v13 + 82) = 1;
LABEL_21:
  sub_1A7DDF27C(v4);
  sub_1A7DDF27C(v5);
  sub_1A7DDF27C(v6);
  sub_1A7DDF27C(v7);
  sub_1A7DDF27C(v9);
  sub_1A7DDF27C(v10);
  sub_1A7DDF27C(v11);
  sub_1A7DDF27C(v12);
  sub_1A7DDF27C(v13);
  return v16;
}

uint64_t sub_1A7CF5100(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CF52E8(a1 & 0x101010101010101);
  sub_1A7CC7FFC(&qword_1EB2B4AD8, &qword_1A7E41A18);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A7E418C0;
  *(v5 + 32) = v4;
  v17 = v5;
  *(v5 + 40) = 2304;
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = *(type metadata accessor for LEToolLink(0) - 8);
    v8 = (a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
    v9 = *(v7 + 72);
    v10 = MEMORY[0x1E69E7CC0];
    do
    {
      v11 = sub_1A7CF57BC(a1 & 0x101010101010101, v8);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1A7E418C0;
      *(v12 + 32) = v11;
      *(v12 + 40) = 1792;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1A7CCD0AC(0, *(v10 + 2) + 1, 1, v10);
      }

      v14 = *(v10 + 2);
      v13 = *(v10 + 3);
      if (v14 >= v13 >> 1)
      {
        v10 = sub_1A7CCD0AC((v13 > 1), v14 + 1, 1, v10);
      }

      *(v10 + 2) = v14 + 1;
      *&v10[8 * v14 + 32] = v12;
      v8 = (v8 + v9);
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v15 = sub_1A7CF37D0(v10);

  sub_1A7DDF188(v15);
  return v17;
}

uint64_t sub_1A7CF52E8(uint64_t a1)
{
  if (a1)
  {
    sub_1A7CF6318(0x6574617453, 0xE500000000000000, 1, 0);
    v3 = v2;
    sub_1A7CC7FFC(&qword_1EB2B4AE0, &unk_1A7E41A20);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1A7E418C0;
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
    *(v4 + 48) = 1;
    *(v4 + 56) = v3;
    *(v4 + 64) = 0;
    v34 = v4;
    *(v4 + 68) = 0;
    if ((a1 & 0x1000000) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v34 = MEMORY[0x1E69E7CC0];
    if ((a1 & 0x1000000) != 0)
    {
LABEL_3:
      sub_1A7CF6318(1836020294, 0xE400000000000000, 1, 0);
      v6 = v5;
      sub_1A7CC7FFC(&qword_1EB2B4AE0, &unk_1A7E41A20);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1A7E418C0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 48) = 1;
      *(v7 + 56) = v6;
      *(v7 + 64) = 0;
      v33 = v7;
      *(v7 + 68) = 0;
      if ((a1 & 0x100000000) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v10 = MEMORY[0x1E69E7CC0];
      if ((a1 & 0x10000000000) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v33 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0x100000000) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_1A7CF6318(1064718409, 0xE400000000000000, 1, 0);
  v9 = v8;
  sub_1A7CC7FFC(&qword_1EB2B4AE0, &unk_1A7E41A20);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A7E418C0;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  *(v10 + 48) = 1;
  *(v10 + 56) = v9;
  *(v10 + 64) = 0;
  *(v10 + 68) = 0;
  if ((a1 & 0x10000000000) != 0)
  {
LABEL_5:
    sub_1A7CF6318(5521746, 0xE300000000000000, 1, 0);
    v12 = v11;
    sub_1A7CC7FFC(&qword_1EB2B4AE0, &unk_1A7E41A20);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1A7E418C0;
    *(v13 + 32) = 0;
    *(v13 + 40) = 0;
    *(v13 + 48) = 1;
    *(v13 + 56) = v12;
    *(v13 + 64) = 0;
    *(v13 + 68) = 0;
    goto LABEL_10;
  }

LABEL_9:
  v13 = MEMORY[0x1E69E7CC0];
LABEL_10:
  sub_1A7CF6318(540945696, 0xE400000000000000, 1, 0);
  v15 = v14;
  sub_1A7CC7FFC(&qword_1EB2B4AE0, &unk_1A7E41A20);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1A7E418C0;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  *(v16 + 48) = 1;
  *(v16 + 56) = v15;
  *(v16 + 64) = 0;
  *(v16 + 68) = 0;
  if ((a1 & 0x10000000000) != 0)
  {
    sub_1A7CF6318(5521746, 0xE300000000000000, 1, 0);
    v31 = v30;
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1A7E418C0;
    *(v17 + 32) = 0;
    *(v17 + 40) = 0;
    *(v17 + 48) = 1;
    *(v17 + 56) = v31;
    *(v17 + 64) = 0;
    *(v17 + 68) = 0;
    if ((a1 & 0x100000000) != 0)
    {
LABEL_12:
      sub_1A7CF6318(1064718409, 0xE400000000000000, 1, 0);
      v19 = v18;
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1A7E418C0;
      *(v20 + 32) = 0;
      *(v20 + 40) = 0;
      *(v20 + 48) = 1;
      *(v20 + 56) = v19;
      *(v20 + 64) = 0;
      *(v20 + 68) = 0;
      if ((a1 & 0x1000000) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
    if ((a1 & 0x100000000) != 0)
    {
      goto LABEL_12;
    }
  }

  v20 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0x1000000) != 0)
  {
LABEL_13:
    sub_1A7CF6318(28500, 0xE200000000000000, 1, 0);
    v22 = v21;
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1A7E418C0;
    *(v23 + 32) = 0;
    *(v23 + 40) = 0;
    *(v23 + 48) = 1;
    *(v23 + 56) = v22;
    *(v23 + 64) = 0;
    *(v23 + 68) = 0;
    if ((a1 & 0x1000000000000) != 0)
    {
      goto LABEL_14;
    }

LABEL_19:
    v26 = MEMORY[0x1E69E7CC0];
    if ((a1 & 0x10000) != 0)
    {
      goto LABEL_15;
    }

LABEL_20:
    v29 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_18:
  v23 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0x1000000000000) == 0)
  {
    goto LABEL_19;
  }

LABEL_14:
  sub_1A7CF6318(0x6C6F636F746F7250, 0xE800000000000000, 1, 0);
  v25 = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1A7E418C0;
  *(v26 + 32) = 0;
  *(v26 + 40) = 0;
  *(v26 + 48) = 1;
  *(v26 + 56) = v25;
  *(v26 + 64) = 0;
  *(v26 + 68) = 0;
  if ((a1 & 0x10000) == 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  sub_1A7CF6318(1701667150, 0xE400000000000000, 1, 0);
  v28 = v27;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1A7E418C0;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  *(v29 + 48) = 1;
  *(v29 + 56) = v28;
  *(v29 + 64) = 0;
  *(v29 + 68) = 0;
LABEL_21:
  sub_1A7DDF370(v33);
  sub_1A7DDF370(v10);
  sub_1A7DDF370(v13);
  sub_1A7DDF370(v16);
  sub_1A7DDF370(v17);
  sub_1A7DDF370(v20);
  sub_1A7DDF370(v23);
  sub_1A7DDF370(v26);
  sub_1A7DDF370(v29);
  return v34;
}

uint64_t sub_1A7CF57BC(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = type metadata accessor for LEToolLink(0);
    sub_1A7CD0EC4(a2 + *(v7 + 24), v6);
    sub_1A7CC7FFC(&qword_1EB2B4D10, &qword_1A7E41C60);
    v8 = swift_allocObject();
    v80 = xmmword_1A7E418C0;
    *(v8 + 16) = xmmword_1A7E418C0;
    LinkState.cli.getter(v8 + 32);
    sub_1A7CD0E68(v6);
    sub_1A7CC7FFC(&qword_1EB2B4AE0, &unk_1A7E41A20);
    v9 = swift_allocObject();
    *(v9 + 16) = v80;
    *(v9 + 32) = 0;
    *(v9 + 40) = 0;
    *(v9 + 48) = 1;
    *(v9 + 56) = v8;
    *(v9 + 64) = 0;
    v79 = v9;
    *(v9 + 68) = 0;
    if ((a1 & 0x1000000) != 0)
    {
LABEL_3:
      v10 = sub_1A7CF5F34(a2);
      sub_1A7CC7FFC(&qword_1EB2B4AE0, &unk_1A7E41A20);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1A7E418C0;
      *(v11 + 32) = 0;
      *(v11 + 40) = 0;
      *(v11 + 48) = 1;
      *(v11 + 56) = v10;
      *(v11 + 64) = 0;
      v78 = v11;
      *(v11 + 68) = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v79 = MEMORY[0x1E69E7CC0];
    if ((a1 & 0x1000000) != 0)
    {
      goto LABEL_3;
    }
  }

  v78 = MEMORY[0x1E69E7CC0];
LABEL_6:
  if ((a1 & 0x100000000) != 0)
  {
    v16 = *(a2 + 12);
    v97 = *(a2 + 11);
    v98 = v16;
    v99 = *(a2 + 13);
    v100 = a2[28];
    v17 = *(a2 + 8);
    v93 = *(a2 + 7);
    v94 = v17;
    v18 = *(a2 + 10);
    v95 = *(a2 + 9);
    v96 = v18;
    v19 = *(a2 + 4);
    v89 = *(a2 + 3);
    v90 = v19;
    v20 = *(a2 + 6);
    v91 = *(a2 + 5);
    v92 = v20;
    v21 = *(a2 + 2);
    v87 = *(a2 + 1);
    v88 = v21;
    v22 = sub_1A7CF6774(&v87);
    v23 = v87;
    if (v22 == 1)
    {
      v23 = 3;
    }

    v24 = *&aIpv4_2[8 * v23];
    v25 = 0x1010204u >> (8 * v23);
    sub_1A7CC7FFC(&qword_1EB2B4D10, &qword_1A7E41C60);
    v26 = swift_allocObject();
    v80 = xmmword_1A7E418C0;
    *(v26 + 16) = xmmword_1A7E418C0;
    *(v26 + 32) = v24;
    *(v26 + 40) = 0xE400000000000000;
    *(v26 + 48) = 0;
    *(v26 + 49) = v25;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    *(v26 + 72) = 2;
    sub_1A7CC7FFC(&qword_1EB2B4AE0, &unk_1A7E41A20);
    v12 = swift_allocObject();
    *(v12 + 16) = v80;
    *(v12 + 32) = 0;
    *(v12 + 40) = 0;
    *(v12 + 48) = 1;
    *(v12 + 56) = v26;
    *(v12 + 64) = 0;
    *(v12 + 68) = 0;
    if ((a1 & 0x10000000000) != 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
    if ((a1 & 0x10000000000) != 0)
    {
LABEL_8:
      sub_1A7CF6228(a2);
      v14 = v13;
      sub_1A7CC7FFC(&qword_1EB2B4AE0, &unk_1A7E41A20);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1A7E418C0;
      *(v15 + 32) = 0;
      *(v15 + 40) = 0;
      *(v15 + 48) = 1;
      *(v15 + 56) = v14;
      *(v15 + 64) = 0;
      *(v15 + 68) = 0;
      goto LABEL_13;
    }
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_13:
  sub_1A7CF6318(540945696, 0xE400000000000000, 0, 6);
  v28 = v27;
  v29 = sub_1A7CC7FFC(&qword_1EB2B4AE0, &unk_1A7E41A20);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1A7E418C0;
  *(v30 + 32) = 0;
  *(v30 + 40) = 0;
  *(v30 + 48) = 1;
  *(v30 + 56) = v28;
  *(v30 + 64) = 0;
  *(v30 + 68) = 0;
  v80 = xmmword_1A7E418C0;
  if ((a1 & 0x10000000000) == 0)
  {
    v31 = v29;
    v77 = MEMORY[0x1E69E7CC0];
    if ((a1 & 0x100000000) != 0)
    {
      goto LABEL_15;
    }

LABEL_23:
    v76 = MEMORY[0x1E69E7CC0];
    v43 = v31;
    if ((a1 & 0x1000000) != 0)
    {
      goto LABEL_18;
    }

LABEL_24:
    v46 = MEMORY[0x1E69E7CC0];
    if ((a1 & 0x1000000000000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  sub_1A7CF6390(a2);
  v59 = v58;
  v31 = v29;
  v60 = swift_allocObject();
  *(v60 + 16) = v80;
  *(v60 + 32) = 0;
  *(v60 + 40) = 0;
  *(v60 + 48) = 1;
  *(v60 + 56) = v59;
  *(v60 + 64) = 0;
  v77 = v60;
  *(v60 + 68) = 0;
  if ((a1 & 0x100000000) == 0)
  {
    goto LABEL_23;
  }

LABEL_15:
  v32 = *(a2 + 12);
  v97 = *(a2 + 11);
  v98 = v32;
  v99 = *(a2 + 13);
  v100 = a2[28];
  v33 = *(a2 + 8);
  v93 = *(a2 + 7);
  v94 = v33;
  v34 = *(a2 + 10);
  v95 = *(a2 + 9);
  v96 = v34;
  v35 = *(a2 + 4);
  v89 = *(a2 + 3);
  v90 = v35;
  v36 = *(a2 + 6);
  v91 = *(a2 + 5);
  v92 = v36;
  v37 = *(a2 + 2);
  v87 = *(a2 + 1);
  v88 = v37;
  v38 = sub_1A7CF6774(&v87);
  v39 = BYTE8(v93);
  if (v38 == 1)
  {
    v39 = 3;
  }

  v40 = *&aIpv4_2[8 * v39];
  v41 = 0x1010204u >> (8 * v39);
  sub_1A7CC7FFC(&qword_1EB2B4D10, &qword_1A7E41C60);
  v42 = swift_allocObject();
  *(v42 + 16) = v80;
  *(v42 + 32) = v40;
  *(v42 + 40) = 0xE400000000000000;
  *(v42 + 48) = 0;
  *(v42 + 49) = v41;
  *(v42 + 56) = 0;
  *(v42 + 64) = 0;
  *(v42 + 72) = 2;
  v43 = v31;
  v44 = swift_allocObject();
  *(v44 + 16) = v80;
  *(v44 + 32) = 0;
  *(v44 + 40) = 0;
  *(v44 + 48) = 1;
  *(v44 + 56) = v42;
  *(v44 + 64) = 0;
  v76 = v44;
  *(v44 + 68) = 0;
  if ((a1 & 0x1000000) == 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  v45 = sub_1A7CF6480(a2);
  v46 = swift_allocObject();
  *(v46 + 16) = v80;
  *(v46 + 32) = 0;
  *(v46 + 40) = 0;
  *(v46 + 48) = 1;
  *(v46 + 56) = v45;
  *(v46 + 64) = 0;
  *(v46 + 68) = 0;
  if ((a1 & 0x1000000000000) != 0)
  {
LABEL_19:
    v47 = *(a2 + 12);
    v97 = *(a2 + 11);
    v98 = v47;
    v99 = *(a2 + 13);
    v100 = a2[28];
    v48 = *(a2 + 8);
    v93 = *(a2 + 7);
    v94 = v48;
    v49 = *(a2 + 10);
    v95 = *(a2 + 9);
    v96 = v49;
    v50 = *(a2 + 4);
    v89 = *(a2 + 3);
    v90 = v50;
    v51 = *(a2 + 6);
    v91 = *(a2 + 5);
    v92 = v51;
    v52 = *(a2 + 2);
    v87 = *(a2 + 1);
    v88 = v52;
    if (sub_1A7CF6774(&v87) == 1 || !v100)
    {
      v55 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      sub_1A7CF48F0(v53, v81);

      v54 = v81[0];
      v75 = v81[1];
      v73 = v83;
      v74 = v82;
      v71 = v85;
      v72 = v84;
      v70 = v86;
      sub_1A7CC7FFC(&qword_1EB2B4D10, &qword_1A7E41C60);
      v55 = swift_allocObject();
      *(v55 + 16) = v80;
      v56 = v75;
      *(v55 + 32) = v54;
      *(v55 + 40) = v56;
      LOBYTE(v56) = v73;
      *(v55 + 48) = v74;
      *(v55 + 49) = v56;
      v57 = v71;
      *(v55 + 56) = v72;
      *(v55 + 64) = v57;
      *(v55 + 72) = v70;
    }

    v61 = swift_allocObject();
    *(v61 + 16) = v80;
    *(v61 + 32) = 0;
    *(v61 + 40) = 0;
    *(v61 + 48) = 1;
    *(v61 + 56) = v55;
    *(v61 + 64) = 0;
    *(v61 + 68) = 0;
    if ((a1 & 0x10000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

LABEL_25:
  v61 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0x10000) == 0)
  {
LABEL_29:
    v67 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

LABEL_26:
  v75 = v43;
  v62 = v15;
  v63 = v12;
  v65 = *a2;
  v64 = a2[1];
  sub_1A7CC7FFC(&qword_1EB2B4D10, &qword_1A7E41C60);
  v66 = swift_allocObject();
  *(v66 + 16) = v80;
  *(v66 + 32) = v65;
  *(v66 + 40) = v64;
  v12 = v63;
  v15 = v62;
  *(v66 + 48) = 0;
  *(v66 + 56) = 0;
  *(v66 + 64) = 0;
  *(v66 + 72) = 2;
  v67 = swift_allocObject();
  *(v67 + 16) = v80;
  *(v67 + 32) = 0;
  *(v67 + 40) = 0;
  *(v67 + 48) = 1;
  *(v67 + 56) = v66;
  *(v67 + 64) = 0;
  *(v67 + 68) = 0;

LABEL_30:
  v101 = v79;
  sub_1A7DDF370(v78);
  sub_1A7DDF370(v12);
  sub_1A7DDF370(v15);
  sub_1A7DDF370(v30);
  sub_1A7DDF370(v77);
  sub_1A7DDF370(v76);
  sub_1A7DDF370(v46);
  sub_1A7DDF370(v61);
  sub_1A7DDF370(v67);
  return v101;
}

uint64_t sub_1A7CF5F34(uint64_t a1)
{
  v1 = *(a1 + 192);
  v30 = *(a1 + 176);
  v31 = v1;
  v32 = *(a1 + 208);
  v33 = *(a1 + 224);
  v2 = *(a1 + 128);
  v26 = *(a1 + 112);
  v27 = v2;
  v3 = *(a1 + 160);
  v28 = *(a1 + 144);
  v29 = v3;
  v4 = *(a1 + 64);
  v22 = *(a1 + 48);
  v23 = v4;
  v5 = *(a1 + 96);
  v24 = *(a1 + 80);
  v25 = v5;
  v6 = *(a1 + 32);
  v20 = *(a1 + 16);
  v21 = v6;
  if (sub_1A7CF6774(&v20) == 1)
  {
    goto LABEL_9;
  }

  v7 = v21;
  if (!v21)
  {
    goto LABEL_9;
  }

  v8 = 0;
  v9 = *(&v20 + 1);
  v10 = MEMORY[0x1E69E7CC0];
  if (v20 <= 1u)
  {
    if (v20)
    {
      sub_1A7CC7FFC(&qword_1EB2B4D10, &qword_1A7E41C60);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1A7E418C0;
      *(v10 + 32) = 91;
      *(v10 + 40) = 0xE100000000000000;
      *(v10 + 48) = 768;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      *(v10 + 72) = 2;
      v8 = 1;
    }

    goto LABEL_7;
  }

  if (v20 != 2)
  {
LABEL_9:
    sub_1A7CC7FFC(&qword_1EB2B4D10, &qword_1A7E41C60);
    result = swift_allocObject();
    *(result + 16) = xmmword_1A7E418C0;
    *(result + 32) = 0x5049206F4ELL;
    *(result + 40) = 0xE500000000000000;
    *(result + 48) = 256;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 2;
    return result;
  }

LABEL_7:
  sub_1A7CC7FFC(&qword_1EB2B4D10, &qword_1A7E41C60);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A7E418C0;
  *(v11 + 32) = v9;
  *(v11 + 40) = v7;
  *(v11 + 48) = 768;
  *(v11 + 56) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = 2;
  if (v8)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1A7E418C0;
    *(v12 + 32) = 93;
    *(v12 + 40) = 0xE100000000000000;
    *(v12 + 48) = 768;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    *(v12 + 72) = 2;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  if (BYTE10(v21) == 1)
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1A7E418C0;
    *(v15 + 32) = 58;
    *(v15 + 40) = 0xE100000000000000;
    *(v15 + 48) = 1024;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    *(v15 + 72) = 2;
    sub_1A7CF6798();

    v16 = sub_1A7E22A90();
    v18 = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1A7E418C0;
    *(v19 + 32) = v16;
    *(v19 + 40) = v18;
    *(v19 + 48) = 1024;
    *(v19 + 56) = 0;
    *(v19 + 64) = 0;
    *(v19 + 72) = 2;
    sub_1A7DDF090(v19);
    v14 = v15;
  }

  sub_1A7DDF090(v11);
  sub_1A7DDF090(v12);
  sub_1A7DDF090(v14);
  return v10;
}

double sub_1A7CF6228(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E55;
  v2 = *(a1 + 192);
  v22 = *(a1 + 176);
  v23 = v2;
  v24 = *(a1 + 208);
  v25 = *(a1 + 224);
  v3 = *(a1 + 128);
  v18 = *(a1 + 112);
  v19 = v3;
  v4 = *(a1 + 160);
  v20 = *(a1 + 144);
  v21 = v4;
  v5 = *(a1 + 64);
  v14 = *(a1 + 48);
  v15 = v5;
  v6 = *(a1 + 96);
  v16 = *(a1 + 80);
  v17 = v6;
  v7 = *(a1 + 32);
  v12 = *(a1 + 16);
  v13 = v7;
  if (sub_1A7CF6774(&v12) == 1 || (v14 & 1) != 0)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v1 = IDSRadioAccessTechnology.description.getter(SHIDWORD(v13));
    v8 = v9;
  }

  sub_1A7CC7FFC(&qword_1EB2B4D10, &qword_1A7E41C60);
  v10 = swift_allocObject();
  *&result = 1;
  *(v10 + 16) = xmmword_1A7E418C0;
  *(v10 + 32) = v1;
  *(v10 + 40) = v8;
  *(v10 + 48) = 1280;
  *(v10 + 56) = 0;
  *(v10 + 64) = 0;
  *(v10 + 72) = 2;
  return result;
}

double sub_1A7CF6318(uint64_t a1, uint64_t a2, char a3, char a4)
{
  sub_1A7CC7FFC(&qword_1EB2B4D10, &qword_1A7E41C60);
  v8 = swift_allocObject();
  *&result = 1;
  *(v8 + 16) = xmmword_1A7E418C0;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  *(v8 + 48) = a3;
  *(v8 + 49) = a4;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 72) = 2;
  return result;
}

double sub_1A7CF6390(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E55;
  v2 = *(a1 + 192);
  v15 = *(a1 + 176);
  v16 = v2;
  v17 = *(a1 + 208);
  v18 = *(a1 + 224);
  v3 = *(a1 + 128);
  v12[6] = *(a1 + 112);
  v12[7] = v3;
  v4 = *(a1 + 160);
  v13 = *(a1 + 144);
  v14 = v4;
  v5 = *(a1 + 64);
  v12[2] = *(a1 + 48);
  v12[3] = v5;
  v6 = *(a1 + 96);
  v12[4] = *(a1 + 80);
  v12[5] = v6;
  v7 = *(a1 + 32);
  v12[0] = *(a1 + 16);
  v12[1] = v7;
  if (sub_1A7CF6774(v12) == 1 || (BYTE8(v13) & 1) != 0)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v1 = IDSRadioAccessTechnology.description.getter(SDWORD1(v13));
    v8 = v9;
  }

  sub_1A7CC7FFC(&qword_1EB2B4D10, &qword_1A7E41C60);
  v10 = swift_allocObject();
  *&result = 1;
  *(v10 + 16) = xmmword_1A7E418C0;
  *(v10 + 32) = v1;
  *(v10 + 40) = v8;
  *(v10 + 48) = 1280;
  *(v10 + 56) = 0;
  *(v10 + 64) = 0;
  *(v10 + 72) = 2;
  return result;
}

uint64_t sub_1A7CF6480(uint64_t a1)
{
  v1 = *(a1 + 192);
  v25 = *(a1 + 176);
  v26 = v1;
  v27 = *(a1 + 208);
  v28 = *(a1 + 224);
  v2 = *(a1 + 128);
  v21 = *(a1 + 112);
  v22 = v2;
  v3 = *(a1 + 160);
  v23 = *(a1 + 144);
  v24 = v3;
  v4 = *(a1 + 64);
  v20[2] = *(a1 + 48);
  v20[3] = v4;
  v5 = *(a1 + 96);
  v20[4] = *(a1 + 80);
  v20[5] = v5;
  v6 = *(a1 + 32);
  v20[0] = *(a1 + 16);
  v20[1] = v6;
  if (sub_1A7CF6774(v20) == 1)
  {
    goto LABEL_9;
  }

  v7 = *(&v22 + 1);
  if (!*(&v22 + 1))
  {
    goto LABEL_9;
  }

  v8 = 0;
  v9 = v22;
  v10 = MEMORY[0x1E69E7CC0];
  if (BYTE8(v21) <= 1u)
  {
    if (BYTE8(v21))
    {
      sub_1A7CC7FFC(&qword_1EB2B4D10, &qword_1A7E41C60);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1A7E418C0;
      *(v10 + 32) = 91;
      *(v10 + 40) = 0xE100000000000000;
      *(v10 + 48) = 768;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      *(v10 + 72) = 2;
      v8 = 1;
    }

    goto LABEL_7;
  }

  if (BYTE8(v21) != 2)
  {
LABEL_9:
    sub_1A7CC7FFC(&qword_1EB2B4D10, &qword_1A7E41C60);
    result = swift_allocObject();
    *(result + 16) = xmmword_1A7E418C0;
    *(result + 32) = 0x5049206F4ELL;
    *(result + 40) = 0xE500000000000000;
    *(result + 48) = 256;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 2;
    return result;
  }

LABEL_7:
  sub_1A7CC7FFC(&qword_1EB2B4D10, &qword_1A7E41C60);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A7E418C0;
  *(v11 + 32) = v9;
  *(v11 + 40) = v7;
  *(v11 + 48) = 768;
  *(v11 + 56) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = 2;
  if (v8)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1A7E418C0;
    *(v12 + 32) = 93;
    *(v12 + 40) = 0xE100000000000000;
    *(v12 + 48) = 768;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    *(v12 + 72) = 2;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  if (BYTE2(v23) == 1)
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1A7E418C0;
    *(v15 + 32) = 58;
    *(v15 + 40) = 0xE100000000000000;
    *(v15 + 48) = 1024;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    *(v15 + 72) = 2;
    sub_1A7CF6798();

    v16 = sub_1A7E22A90();
    v18 = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1A7E418C0;
    *(v19 + 32) = v16;
    *(v19 + 40) = v18;
    *(v19 + 48) = 1024;
    *(v19 + 56) = 0;
    *(v19 + 64) = 0;
    *(v19 + 72) = 2;
    sub_1A7DDF090(v19);
    v14 = v15;
  }

  sub_1A7DDF090(v11);
  sub_1A7DDF090(v12);
  sub_1A7DDF090(v14);
  return v10;
}

uint64_t sub_1A7CF6774(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_1A7CF6798()
{
  result = qword_1EB2B54C8;
  if (!qword_1EB2B54C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B54C8);
  }

  return result;
}

void sub_1A7CF6828(void *a1, unsigned __int8 *a2)
{
  v146 = *a2;
  v145 = a2[1];
  v144 = a2[2];
  v143 = a2[3];
  v142 = a2[4];
  v141 = a2[5];
  v140 = a2[6];
  v139 = a2[7];
  v4 = *v2;
  v5 = v2[1];
  if (v2[3] < 0)
  {
    v128 = v2[1];
    v48 = v2[4];
    v125 = v2[2];
    v49 = a1[3];
    v50 = a1[4];
    v133 = v2[3];
    sub_1A7CC9878(a1, v49);
    strcpy(&v135, "Two-Way (");
    WORD1(v135._object) = 0;
    HIDWORD(v135._object) = -385875968;
    if ((v4 & 0x100) != 0)
    {
      v51 = 0x6F74616974696E49;
    }

    else
    {
      v51 = 0x6E65697069636552;
    }

    if ((v4 & 0x100) != 0)
    {
      v52 = 0xE900000000000072;
    }

    else
    {
      v52 = 0xE900000000000074;
    }

    MEMORY[0x1AC561C90](v51, v52);

    MEMORY[0x1AC561C90](14889, 0xE200000000000000);
    v136 = 769;
    v137 = 0uLL;
    v138 = 2;
    CLIPrinter.print(_:)(&v135._countAndFlagsBits, v49, v50);

    sub_1A7CC9878(a1, a1[3]);
    IDSGLTwoWayLinkConnectorPlugin.Behavior.cli.getter(&v135);
    v53 = CLIString.description.getter();
    v55 = v54;

    MEMORY[0x1AC561C90](v53, v55);

    v56._countAndFlagsBits = 0x203A65646F4DLL;
    v56._object = 0xE600000000000000;
    CLIPrinter.print(_:)(v56);

    sub_1A7CC9878(a1, a1[3]);
    v57._countAndFlagsBits = 0;
    v57._object = 0xE000000000000000;
    CLIPrinter.print(_:)(v57);
    sub_1A7CC9878(a1, a1[3]);
    v135._countAndFlagsBits = 0xD000000000000018;
    v135._object = 0x80000001A7EAE3C0;
    v136 = 1;
    v137 = 0uLL;
    v138 = 2;
    v58 = CLIString.description.getter();
    v60 = v59;

    v61 = MEMORY[0x1AC561E20](v48, &type metadata for IDSLinkCellularTuple);
    v63 = v62;

    MEMORY[0x1AC561C90](v61, v63);

    v64._countAndFlagsBits = v58;
    v64._object = v60;
    CLIPrinter.print(_:)(v64);

    sub_1A7CC9878(a1, a1[3]);
    v135._countAndFlagsBits = 0xD000000000000018;
    v135._object = 0x80000001A7EAE3E0;
    v136 = 1;
    v137 = 0uLL;
    v138 = 2;
    v65 = CLIString.description.getter();
    v67 = v66;

    if (v133 == 3)
    {
      v68 = 0xE300000000000000;
      v69 = 7104878;
    }

    else
    {
      v69 = IDSLinkCellularTuple.description.getter();
      v68 = v70;
    }

    v71 = v128;
    MEMORY[0x1AC561C90](v69, v68);

    MEMORY[0x1AC561C90](0, 0xE000000000000000);

    v72._countAndFlagsBits = v65;
    v72._object = v67;
    CLIPrinter.print(_:)(v72);

    sub_1A7CC9878(a1, a1[3]);
    v73._countAndFlagsBits = 0;
    v73._object = 0xE000000000000000;
    CLIPrinter.print(_:)(v73);
    v74 = a1[3];
    v75 = a1[4];
    sub_1A7CC9878(a1, v74);
    strcpy(&v135, "Allocations:");
    BYTE5(v135._object) = 0;
    HIWORD(v135._object) = -5120;
    v136 = 769;
    v137 = 0uLL;
    v138 = 2;
    CLIPrinter.print(_:)(&v135._countAndFlagsBits, v74, v75);

    v126 = *(v128 + 16);
    if (v126)
    {
      v76 = 0;
      while (v76 < *(v71 + 16))
      {
        v78 = v128 + 32 + 32 * v76;
        v79 = *(v78 + 24);
        v130 = v76 + 1;
        v80 = *(v78 + 16);
        v82 = *v78;
        v81 = *(v78 + 8);
        sub_1A7CC9878(a1, a1[3]);
        v135._countAndFlagsBits = 0;
        v135._object = 0xE000000000000000;

        sub_1A7E22B70();

        v135._countAndFlagsBits = 8237;
        v135._object = 0xE200000000000000;
        MEMORY[0x1AC561C90](v82, v81);

        MEMORY[0x1AC561C90](0xD000000000000012, 0x80000001A7EAE400);
        v83 = 0x6C6C65436E6F4ELL;
        if (v80 != 1)
        {
          v83 = 7958081;
        }

        v84 = 0xE700000000000000;
        if (v80 != 1)
        {
          v84 = 0xE300000000000000;
        }

        if (v80)
        {
          v85 = v83;
        }

        else
        {
          v85 = 1819043139;
        }

        if (v80)
        {
          v86 = v84;
        }

        else
        {
          v86 = 0xE400000000000000;
        }

        MEMORY[0x1AC561C90](v85, v86);

        CLIPrinter.print(_:)(v135);

        v87 = *(v79 + 16);
        if (v87)
        {
          v88 = (v79 + 40);
          do
          {
            v89 = *(v88 - 1);
            v90 = *v88;
            sub_1A7CC9878(a1, a1[3]);
            v135._countAndFlagsBits = 0;
            v135._object = 0xE000000000000000;

            sub_1A7E22B70();

            strcpy(&v135, "  - Endpoint: ");
            HIBYTE(v135._object) = -18;
            MEMORY[0x1AC561C90](v89, v90);

            CLIPrinter.print(_:)(v135);

            v88 += 2;
            --v87;
          }

          while (v87);
        }

        sub_1A7CC9878(a1, a1[3]);
        v77._countAndFlagsBits = 0;
        v77._object = 0xE000000000000000;
        CLIPrinter.print(_:)(v77);
        v71 = v128;
        v76 = v130;
        if (v130 == v126)
        {
          goto LABEL_58;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_58:
      sub_1A7CC9878(a1, a1[3]);
      v91._countAndFlagsBits = 0;
      v91._object = 0xE000000000000000;
      CLIPrinter.print(_:)(v91);
      v92 = a1[3];
      v93 = a1[4];
      sub_1A7CC9878(a1, v92);
      strcpy(&v135, "Link Mapping");
      BYTE5(v135._object) = 0;
      HIWORD(v135._object) = -5120;
      v136 = 769;
      v137 = 0uLL;
      v138 = 2;
      CLIPrinter.print(_:)(&v135._countAndFlagsBits, v92, v93);

      v94 = *(v125 + 16);
      if (v94)
      {
        v95 = (v125 + 40);
        do
        {
          v134 = v94;
          v111 = *(v95 - 4);
          v112 = v95[1];
          v127 = *v95;
          v129 = *(v95 + 16);
          v113 = v95[4];
          sub_1A7CC9878(a1, a1[3]);
          LOWORD(v135._countAndFlagsBits) = v111;

          v131 = v113;

          v135._countAndFlagsBits = IDSLinkCellularTuple.description.getter();
          v135._object = v114;
          v136 = 1537;
          v137 = 0uLL;
          v138 = 2;
          v115 = CLIString.description.getter();
          v117 = v116;

          MEMORY[0x1AC561C90](v115, v117);

          v118._countAndFlagsBits = 8237;
          v118._object = 0xE200000000000000;
          CLIPrinter.print(_:)(v118);

          sub_1A7CC9878(a1, a1[3]);
          v135._countAndFlagsBits = 0;
          v135._object = 0xE000000000000000;
          sub_1A7E22B70();

          strcpy(&v135, "  Allocation: ");
          HIBYTE(v135._object) = -18;
          MEMORY[0x1AC561C90](v127, v112);

          MEMORY[0x1AC561C90](0xD000000000000012, 0x80000001A7EAE420);
          v119 = 0x6C6C65436E6F4ELL;
          if (v129 != 1)
          {
            v119 = 7958081;
          }

          v120 = 0xE700000000000000;
          if (v129 != 1)
          {
            v120 = 0xE300000000000000;
          }

          if (v129)
          {
            v121 = v119;
          }

          else
          {
            v121 = 1819043139;
          }

          if (v129)
          {
            v122 = v120;
          }

          else
          {
            v122 = 0xE400000000000000;
          }

          MEMORY[0x1AC561C90](v121, v122);

          MEMORY[0x1AC561C90](41, 0xE100000000000000);
          CLIPrinter.print(_:)(v135);

          sub_1A7CC9878(a1, a1[3]);
          v123._countAndFlagsBits = 0;
          v123._object = 0xE000000000000000;
          CLIPrinter.print(_:)(v123);
          if (*(v113 + 16))
          {
            if (v139)
            {
              v96 = 0x100000000000000;
            }

            else
            {
              v96 = 0;
            }

            v97 = 0x1000000000000;
            if (!v140)
            {
              v97 = 0;
            }

            v98 = 0x10000000000;
            if (!v141)
            {
              v98 = 0;
            }

            v99 = 0x100000000;
            if (!v142)
            {
              v99 = 0;
            }

            v100 = 0x1000000;
            if (!v143)
            {
              v100 = 0;
            }

            v101 = 0x10000;
            if (!v144)
            {
              v101 = 0;
            }

            v102 = 256;
            if (!v145)
            {
              v102 = 0;
            }

            v103 = v102 | v146 | v101 | v100 | v99 | v98 | v97;
            v104 = sub_1A7CF4CB8(v103 | v96);
            v105 = sub_1A7CF5100(v103 | v96, v131);

            v106 = a1[3];
            v107 = a1[4];
            sub_1A7CC9878(a1, v106);
            *&v137 = &type metadata for CLIIndented;
            *(&v137 + 1) = sub_1A7CF7858();
            v108 = swift_allocObject();
            v135._countAndFlagsBits = v108;
            *(v108 + 40) = &type metadata for CLITable;
            v109 = sub_1A7CF78AC();
            *(v108 + 16) = v104;
            *(v108 + 24) = v105;
            *(v108 + 32) = 0;
            *(v108 + 36) = 0;
            *(v108 + 48) = v109;
            *(v108 + 56) = 538976288;
            *(v108 + 64) = 0xE400000000000000;
            CLIPrinter.print(_:)(&v135, v106, v107);
            sub_1A7B0CD6C(&v135);
          }

          else
          {

            sub_1A7CC9878(a1, a1[3]);
            v124._countAndFlagsBits = 0x6F4E202020202020;
            v124._object = 0xEF2E736B6E696C20;
            CLIPrinter.print(_:)(v124);
          }

          sub_1A7CC9878(a1, a1[3]);
          v110._countAndFlagsBits = 0;
          v110._object = 0xE000000000000000;
          CLIPrinter.print(_:)(v110);
          v95 += 6;
          v94 = v134 - 1;
        }

        while (v134 != 1);
      }
    }
  }

  else
  {
    v6 = a1[3];
    v7 = a1[4];
    sub_1A7CC9878(a1, v6);
    v135._countAndFlagsBits = 0xD00000000000001ALL;
    v135._object = 0x80000001A7EAE440;
    v136 = 769;
    v137 = 0uLL;
    v138 = 2;
    CLIPrinter.print(_:)(&v135._countAndFlagsBits, v6, v7);

    sub_1A7CC9878(a1, a1[3]);
    IDSConnectRelayLinksByInterfaceTypePlugin.Behavior.cli.getter(&v135);
    v8 = CLIString.description.getter();
    v10 = v9;

    MEMORY[0x1AC561C90](v8, v10);

    v11._countAndFlagsBits = 0x203A65646F4DLL;
    v11._object = 0xE600000000000000;
    CLIPrinter.print(_:)(v11);

    sub_1A7CC9878(a1, a1[3]);
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    CLIPrinter.print(_:)(v12);
    v13 = *(v5 + 16);
    if (v13)
    {
      v14 = (v5 + 40);
      do
      {
        v132 = v13;
        v30 = *(v14 - 8);
        v31 = *v14;
        sub_1A7CC9878(a1, a1[3]);
        v32 = 0x72616C756C6C6543;
        if (v30 != 2)
        {
          v32 = 0x6E776F6E6B6E55;
        }

        v33 = 0xE800000000000000;
        if (v30 != 2)
        {
          v33 = 0xE700000000000000;
        }

        v34 = 1766222167;
        if (!v30)
        {
          v34 = 0x6465726957;
        }

        v35 = 0xE500000000000000;
        if (v30)
        {
          v35 = 0xE400000000000000;
        }

        if (v30 > 1)
        {
          v36 = v33;
        }

        else
        {
          v32 = v34;
          v36 = v35;
        }

        v135._countAndFlagsBits = v32;
        v135._object = v36;
        v136 = 1025;
        v137 = 0uLL;
        v138 = 2;

        v37 = CLIString.description.getter();
        v39 = v38;

        MEMORY[0x1AC561C90](v37, v39);

        v40._countAndFlagsBits = 538976288;
        v40._object = 0xE400000000000000;
        CLIPrinter.print(_:)(v40);

        v41 = a1[3];
        v42 = a1[4];
        sub_1A7CC9878(a1, v41);
        *&v137 = &type metadata for CLIIndented;
        v43 = sub_1A7CF7858();
        *(&v137 + 1) = v43;
        v44 = swift_allocObject();
        v135._countAndFlagsBits = v44;
        *(v44 + 40) = &type metadata for CLIRule;
        v45 = sub_1A7CE5D50();
        *(v44 + 16) = 9;
        *(v44 + 48) = v45;
        *(v44 + 56) = 538976288;
        *(v44 + 64) = 0xE400000000000000;
        CLIPrinter.print(_:)(&v135, v41, v42);
        sub_1A7B0CD6C(&v135);
        sub_1A7CC9878(a1, a1[3]);
        v46._countAndFlagsBits = 0;
        v46._object = 0xE000000000000000;
        CLIPrinter.print(_:)(v46);
        if (*(v31 + 16))
        {
          v15 = 0x100000000000000;
          if ((v139 & 1) == 0)
          {
            v15 = 0;
          }

          v16 = 0x1000000000000;
          if ((v140 & 1) == 0)
          {
            v16 = 0;
          }

          v17 = 0x100000000;
          if ((v142 & 1) == 0)
          {
            v17 = 0;
          }

          v18 = 0x1000000;
          if ((v143 & 1) == 0)
          {
            v18 = 0;
          }

          v19 = 0x10000;
          if ((v144 & 1) == 0)
          {
            v19 = 0;
          }

          v20 = 256;
          if ((v145 & 1) == 0)
          {
            v20 = 0;
          }

          v21 = v20 & 0xFFFFFFFFFFFFFFFELL | v146 & 1 | v19 | v18;
          v22 = v17 | v16 | v15;
          v23 = sub_1A7CF4CB8(v21 | v22);
          v24 = sub_1A7CF5100(v21 | v22, v31);

          v25 = a1[3];
          v26 = a1[4];
          sub_1A7CC9878(a1, v25);
          *&v137 = &type metadata for CLIIndented;
          *(&v137 + 1) = v43;
          v27 = swift_allocObject();
          v135._countAndFlagsBits = v27;
          *(v27 + 40) = &type metadata for CLITable;
          v28 = sub_1A7CF78AC();
          *(v27 + 16) = v23;
          *(v27 + 24) = v24;
          *(v27 + 32) = 0;
          *(v27 + 36) = 0;
          *(v27 + 48) = v28;
          *(v27 + 56) = 538976288;
          *(v27 + 64) = 0xE400000000000000;
          CLIPrinter.print(_:)(&v135, v25, v26);
          sub_1A7B0CD6C(&v135);
        }

        else
        {

          sub_1A7CC9878(a1, a1[3]);
          v47._countAndFlagsBits = 0x6F4E202020202020;
          v47._object = 0xEF2E736B6E696C20;
          CLIPrinter.print(_:)(v47);
        }

        sub_1A7CC9878(a1, a1[3]);
        v29._countAndFlagsBits = 0;
        v29._object = 0xE000000000000000;
        CLIPrinter.print(_:)(v29);
        v14 += 2;
        v13 = v132 - 1;
      }

      while (v132 != 1);
    }
  }
}

unint64_t sub_1A7CF7858()
{
  result = qword_1EB2B54D0;
  if (!qword_1EB2B54D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B54D0);
  }

  return result;
}

unint64_t sub_1A7CF78AC()
{
  result = qword_1EB2B54D8;
  if (!qword_1EB2B54D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B54D8);
  }

  return result;
}

uint64_t CLIPrinter.print(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  v8 = a1[3];
  v9 = a1[4];
  v10 = *(a1 + 40);
  sub_1A7CC7FFC(&qword_1EB2B4D10, &qword_1A7E41C60);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A7E418C0;
  *(v11 + 32) = v5;
  *(v11 + 40) = v4;
  *(v11 + 48) = v6;
  *(v11 + 49) = v7;
  *(v11 + 56) = v8;
  *(v11 + 64) = v9;
  *(v11 + 72) = v10;
  v16[3] = &type metadata for CLIText;
  v16[4] = sub_1A7CF7A10();
  v12 = swift_allocObject();
  v16[0] = v12;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = 1;
  *(v12 + 40) = v11;
  v13 = *(a3 + 8);

  v13(v16, a2, a3);
  return sub_1A7B0CD6C(v16);
}

unint64_t sub_1A7CF7A10()
{
  result = qword_1EB2B54E0;
  if (!qword_1EB2B54E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B54E0);
  }

  return result;
}

uint64_t CLIPrinter.print(_:)(uint64_t (*a1)(void), uint64_t a2, Swift::Int a3, IDSFoundation::CLITextAlign a4)
{
  v7[0] = 0;
  v7[1] = 0;
  v8 = 1;
  v9 = a1();
  v11.leadingPadding = v7;
  v11.trailingPadding = a3;
  v11.alignment = a4;
  CLIPrinter.print(_:)(v11);
}

Swift::Void __swiftcall CLIPrinter.print(_:)(Swift::String a1)
{
  v3 = v2;
  v4 = v1;
  v5 = a1;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 2;

  CLIPrinter.print(_:)(&v5._countAndFlagsBits, v4, v3);
}

Swift::Void __swiftcall CLIPrinter.print(_:)(IDSFoundation::CLIText a1)
{
  v1 = *&a1.alignment;
  trailingPadding = a1.trailingPadding;
  v3 = *a1.leadingPadding;
  v4 = *(a1.leadingPadding + 8);
  v5 = *(a1.leadingPadding + 16);
  v6 = *(a1.leadingPadding + 24);
  v9[3] = &type metadata for CLIText;
  v9[4] = sub_1A7CF7A10();
  v7 = swift_allocObject();
  v9[0] = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  v8 = *(v1 + 8);

  v8(v9, trailingPadding, v1);
  sub_1A7B0CD6C(v9);
}

uint64_t CLIPrinter.print(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_1A7CC9878(a1, v5);
  v7 = *(v6 + 8);
  v9[3] = &type metadata for CLIText;
  v9[4] = sub_1A7CF7A10();
  v9[0] = swift_allocObject();
  v7(v5, v6);
  (*(a3 + 8))(v9, a2, a3);
  return sub_1A7B0CD6C(v9);
}

{
  sub_1A7CC7FFC(&qword_1EB2B4D10, &qword_1A7E41C60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A7E418C0;
  v7 = a1[3];
  v8 = a1[4];
  sub_1A7CC9878(a1, v7);
  (*(v8 + 8))(v7, v8);
  v11[3] = &type metadata for CLIText;
  v11[4] = sub_1A7CF7A10();
  v9 = swift_allocObject();
  v11[0] = v9;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = 1;
  *(v9 + 40) = v6;
  (*(a3 + 8))(v11, a2, a3);
  return sub_1A7B0CD6C(v11);
}

{
  sub_1A7CC9878(a1, a1[3]);
  v7[0] = sub_1A7E23090();
  v7[1] = v5;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 2;
  CLIPrinter.print(_:)(v7, a2, a3);
}

uint64_t sub_1A7CF7EC8()
{
  if (*v0)
  {
    return 0x6F4C74656B636170;
  }

  else
  {
    return 0x69676E456B6E696CLL;
  }
}

uint64_t sub_1A7CF7F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x69676E456B6E696CLL && a2 == 0xEA0000000000656ELL;
  if (v6 || (sub_1A7E230D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F4C74656B636170 && a2 == 0xE900000000000067)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A7E230D0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A7CF7FF8(uint64_t a1)
{
  v2 = sub_1A7CF85AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7CF8034(uint64_t a1)
{
  v2 = sub_1A7CF85AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7CF8070(uint64_t a1)
{
  v2 = sub_1A7CF870C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7CF80AC(uint64_t a1)
{
  v2 = sub_1A7CF870C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7CF80E8(uint64_t a1)
{
  v2 = sub_1A7CF8664();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7CF8124(uint64_t a1)
{
  v2 = sub_1A7CF8664();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSToolRequest.Request.encode(to:)(void *a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B54E8, &qword_1A7E444C0);
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v25 = &v22 - v3;
  v4 = sub_1A7CC7FFC(&qword_1EB2B54F0, &qword_1A7E444C8);
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v22 - v5;
  v23 = type metadata accessor for LEToolRequestMessage(0);
  MEMORY[0x1EEE9AC00](v23);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IDSToolRequest.Request(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A7CC7FFC(&qword_1EB2B54F8, &qword_1A7E444D0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7CF85AC();
  sub_1A7E23260();
  sub_1A7CF8600(v30, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v10;
    v33 = 1;
    sub_1A7CF8664();
    v16 = v25;
    sub_1A7E22F80();
    v32 = v15;
    sub_1A7CF86B8();
    v17 = v29;
    sub_1A7E23030();
    (*(v28 + 8))(v16, v17);
  }

  else
  {
    sub_1A7CF8E64(v10, v7, type metadata accessor for LEToolRequestMessage);
    v31 = 0;
    sub_1A7CF870C();
    v18 = v24;
    sub_1A7E22F80();
    sub_1A7CF8ECC(&qword_1EB2B5520, type metadata accessor for LEToolRequestMessage, &protocol conformance descriptor for LEToolRequestMessage);
    v19 = v27;
    sub_1A7E23030();
    v20 = (*(v26 + 8))(v18, v19);
    sub_1A7CF8760(v7, v20);
  }

  return (*(v12 + 8))(v14, v11);
}

unint64_t sub_1A7CF85AC()
{
  result = qword_1EB2B5500;
  if (!qword_1EB2B5500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5500);
  }

  return result;
}

uint64_t sub_1A7CF8600(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSToolRequest.Request(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A7CF8664()
{
  result = qword_1EB2B5508;
  if (!qword_1EB2B5508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5508);
  }

  return result;
}

unint64_t sub_1A7CF86B8()
{
  result = qword_1EB2B5510;
  if (!qword_1EB2B5510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5510);
  }

  return result;
}

unint64_t sub_1A7CF870C()
{
  result = qword_1EB2B5518;
  if (!qword_1EB2B5518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5518);
  }

  return result;
}

uint64_t sub_1A7CF8760(uint64_t a1, double a2)
{
  v3 = type metadata accessor for LEToolRequestMessage(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t IDSToolRequest.Request.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v43 = sub_1A7CC7FFC(&qword_1EB2B5528, &qword_1A7E444D8);
  v46 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v41 - v3;
  v4 = sub_1A7CC7FFC(&qword_1EB2B5530, &qword_1A7E444E0);
  v5 = *(v4 - 8);
  v44 = v4;
  v45 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v41 - v6;
  v7 = sub_1A7CC7FFC(&qword_1EB2B5538, &unk_1A7E444E8);
  v48 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - v8;
  v10 = type metadata accessor for IDSToolRequest.Request(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  v19 = a1[3];
  v52 = a1;
  sub_1A7CC9878(a1, v19);
  sub_1A7CF85AC();
  v20 = v51;
  sub_1A7E23250();
  if (!v20)
  {
    v41 = v12;
    v42 = v18;
    v51 = v15;
    v22 = v48;
    v21 = v49;
    v23 = v50;
    v24 = sub_1A7E22F70();
    v25 = (2 * *(v24 + 16)) | 1;
    v53 = v24;
    v54 = v24 + 32;
    v55 = 0;
    v56 = v25;
    v26 = sub_1A7CDB538();
    v27 = v7;
    if (v26 == 2 || v55 != v56 >> 1)
    {
      v34 = sub_1A7E22BD0();
      swift_allocError();
      v36 = v35;
      sub_1A7CC7FFC(&qword_1EB2B4EC8, &qword_1A7E42100);
      *v36 = v10;
      sub_1A7E22E90();
      sub_1A7E22BC0();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
      swift_willThrow();
      (*(v22 + 8))(v9, v7);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v26)
      {
        v57 = 1;
        sub_1A7CF8664();
        v28 = v47;
        sub_1A7E22E70();
        v29 = v23;
        sub_1A7CF8E10();
        v30 = v43;
        sub_1A7E22F30();
        (*(v46 + 8))(v28, v30);
        (*(v22 + 8))(v9, v27);
        swift_unknownObjectRelease();
        v31 = v41;
        *v41 = v57;
        swift_storeEnumTagMultiPayload();
        v32 = v31;
        v33 = v42;
        sub_1A7CF8E64(v32, v42, type metadata accessor for IDSToolRequest.Request);
      }

      else
      {
        v57 = 0;
        sub_1A7CF870C();
        v38 = v21;
        sub_1A7E22E70();
        type metadata accessor for LEToolRequestMessage(0);
        sub_1A7CF8ECC(&qword_1EB2B5548, type metadata accessor for LEToolRequestMessage, &protocol conformance descriptor for LEToolRequestMessage);
        v39 = v51;
        v40 = v44;
        sub_1A7E22F30();
        (*(v45 + 8))(v38, v40);
        (*(v22 + 8))(v9, v27);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v33 = v42;
        sub_1A7CF8E64(v39, v42, type metadata accessor for IDSToolRequest.Request);
        v29 = v50;
      }

      sub_1A7CF8E64(v33, v29, type metadata accessor for IDSToolRequest.Request);
    }
  }

  return sub_1A7B0CD6C(v52);
}

unint64_t sub_1A7CF8E10()
{
  result = qword_1EB2B5540;
  if (!qword_1EB2B5540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5540);
  }

  return result;
}

uint64_t sub_1A7CF8E64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A7CF8ECC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A7CF8F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A7E230D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A7CF8FE4(uint64_t a1)
{
  v2 = sub_1A7CF91D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7CF9020(uint64_t a1)
{
  v2 = sub_1A7CF91D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSToolRequest.encode(to:)(void *a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B5550, &qword_1A7E444F8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7CF91D4();
  sub_1A7E23260();
  type metadata accessor for IDSToolRequest.Request(0);
  sub_1A7CF8ECC(&qword_1EB2B5560, type metadata accessor for IDSToolRequest.Request, &protocol conformance descriptor for IDSToolRequest.Request);
  sub_1A7E23030();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1A7CF91D4()
{
  result = qword_1EB2B5558;
  if (!qword_1EB2B5558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5558);
  }

  return result;
}

uint64_t IDSToolRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for IDSToolRequest.Request(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A7CC7FFC(&qword_1EB2B5568, &qword_1A7E44500);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for IDSToolRequest(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7CF91D4();
  sub_1A7E23250();
  if (!v2)
  {
    v12 = v15;
    sub_1A7CF8ECC(&qword_1EB2B5570, type metadata accessor for IDSToolRequest.Request, &protocol conformance descriptor for IDSToolRequest.Request);
    v13 = v17;
    sub_1A7E22F30();
    (*(v16 + 8))(v8, v6);
    sub_1A7CF8E64(v13, v11, type metadata accessor for IDSToolRequest.Request);
    sub_1A7CF8E64(v11, v12, type metadata accessor for IDSToolRequest);
  }

  return sub_1A7B0CD6C(a1);
}

uint64_t sub_1A7CF94D4(void *a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B5550, &qword_1A7E444F8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7CF91D4();
  sub_1A7E23260();
  type metadata accessor for IDSToolRequest.Request(0);
  sub_1A7CF8ECC(&qword_1EB2B5560, type metadata accessor for IDSToolRequest.Request, &protocol conformance descriptor for IDSToolRequest.Request);
  sub_1A7E23030();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1A7CF9674(uint64_t a1)
{
  result = type metadata accessor for IDSToolRequest.Request(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A7CF96E0(uint64_t a1, double a2)
{
  result = type metadata accessor for LEToolRequestMessage(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1A7CF978C()
{
  result = qword_1EB2B5598;
  if (!qword_1EB2B5598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5598);
  }

  return result;
}

unint64_t sub_1A7CF97E4()
{
  result = qword_1EB2B55A0;
  if (!qword_1EB2B55A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B55A0);
  }

  return result;
}

unint64_t sub_1A7CF983C()
{
  result = qword_1EB2B55A8;
  if (!qword_1EB2B55A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B55A8);
  }

  return result;
}

unint64_t sub_1A7CF9894()
{
  result = qword_1EB2B55B0;
  if (!qword_1EB2B55B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B55B0);
  }

  return result;
}

unint64_t sub_1A7CF98EC()
{
  result = qword_1EB2B55B8;
  if (!qword_1EB2B55B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B55B8);
  }

  return result;
}

unint64_t sub_1A7CF9944()
{
  result = qword_1EB2B55C0;
  if (!qword_1EB2B55C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B55C0);
  }

  return result;
}

unint64_t sub_1A7CF999C()
{
  result = qword_1EB2B55C8;
  if (!qword_1EB2B55C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B55C8);
  }

  return result;
}

unint64_t sub_1A7CF99F4()
{
  result = qword_1EB2B55D0;
  if (!qword_1EB2B55D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B55D0);
  }

  return result;
}

unint64_t sub_1A7CF9A4C()
{
  result = qword_1EB2B55D8;
  if (!qword_1EB2B55D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B55D8);
  }

  return result;
}

unint64_t sub_1A7CF9AA4()
{
  result = qword_1EB2B55E0;
  if (!qword_1EB2B55E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B55E0);
  }

  return result;
}

unint64_t sub_1A7CF9AFC()
{
  result = qword_1EB2B55E8;
  if (!qword_1EB2B55E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B55E8);
  }

  return result;
}

unint64_t sub_1A7CF9B54()
{
  result = qword_1EB2B55F0;
  if (!qword_1EB2B55F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B55F0);
  }

  return result;
}

uint64_t sub_1A7CF9BA8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1A7E22840();
  if (!v19)
  {
    return sub_1A7E22570();
  }

  v41 = v19;
  v45 = sub_1A7E22C70();
  v32 = sub_1A7E22C80();
  sub_1A7E22C10();
  result = sub_1A7E22830();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1A7E22890();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1A7E22C60();
      result = sub_1A7E22860();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*LinkEnginePluginHook.on(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *&v3->_os_unfair_lock_opaque;
  os_unfair_lock_lock(v3 + 4);
  v8 = *(v7 + 80);
  sub_1A7CFB6F8(&v3[6], a1, a2, a3, v8);
  type metadata accessor for LinkEnginePluginHook.State(0, v8, v9, v10);
  os_unfair_lock_unlock(v3 + 4);
  result = sub_1A7CFB568();
  if (result)
  {
    v13 = result;
    v14 = v12;
    result(a1, a2, a3);

    return sub_1A7B15088(v13, v14);
  }

  return result;
}

void LinkEnginePluginHook.makeIterator()(uint64_t *a1@<X8>)
{
  v3 = *v1;
  os_unfair_lock_lock(v1 + 4);
  v4 = *(v3 + 80);
  sub_1A7CFBAF8(v1 + 3, v4, a1, v5, v6);
  type metadata accessor for LinkEnginePluginHook.State(0, v4, v7, v8);
  sub_1A7E225E0();
  swift_getWitnessTable();
  sub_1A7E22D50();

  os_unfair_lock_unlock(v1 + 4);
}

BOOL sub_1A7CFA174(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v3)
    {
      v4 = v3;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return Strong == v4;
    }
  }

  else if (!v3)
  {
    return 1;
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_1A7CFA1E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[2] = 0;
  swift_unknownObjectWeakInit();
  *a3 = a1;
  a3[2] = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1A7CFA24C()
{
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](*v0);
  return sub_1A7E23240();
}

uint64_t sub_1A7CFA298(uint64_t a1)
{
  sub_1A7E23200();
  sub_1A7CE6038();
  return sub_1A7E23240();
}

uint64_t sub_1A7CFA2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for LinkEnginePluginHook.HandlerWithDependencies(0, v5, a3, a4);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v98 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v95 = &v80 - v10;
  v13 = type metadata accessor for LinkEnginePluginHook.PluginWrapper(255, v5, v11, v12);
  v100 = v6;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v89 = sub_1A7E229A0();
  v15 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v91 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v88 = &v80 - v18;
  v19 = sub_1A7E22570();

  v4[1] = v19;
  v20 = swift_allocObject();
  WitnessTable = swift_getWitnessTable();
  v22 = sub_1A7E22150();
  v80 = v20;
  *(v20 + 16) = v22;
  v23 = swift_allocObject();
  v24 = sub_1A7E22150();
  v82 = v23;
  *(v23 + 16) = v24;
  v25 = swift_allocObject();
  v26 = sub_1A7E22800();
  swift_getTupleTypeMetadata2();
  v27 = sub_1A7E22570();
  v28 = sub_1A7CFC18C(v27, v13, v26, WitnessTable);

  *(v25 + 16) = v28;
  v81 = v4;
  v29 = *v4;
  v32 = *(*v4 + 64);
  v31 = *v4 + 64;
  v30 = v32;
  v33 = 1 << *(v29 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v30;
  v83 = (v33 + 63) >> 6;
  v92 = TupleTypeMetadata2;
  v90 = TupleTypeMetadata2 - 8;
  v97 = v13 - 8;
  v84 = v7 + 16;
  v96 = (v7 + 32);
  v87 = (v15 + 32);
  v85 = v7;
  v86 = (v7 + 8);
  v93 = v29;

  v37 = 0;
  v94 = v31;
  while (v35)
  {
    v38 = v37;
LABEL_15:
    v41 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    v42 = v41 | (v38 << 6);
    v43 = v93;
    v44 = *(v13 - 8);
    (*(v44 + 16))(v102, *(v93 + 48) + 24 * v42, v13);
    v45 = v85;
    v46 = v100;
    (*(v85 + 16))(v95, *(v43 + 56) + *(v85 + 72) * v42, v100);
    v48 = v91;
    v47 = v92;
    v99 = *(v92 + 48);
    (*(v44 + 32))(v91, v102, v13);
    (*(v45 + 32))(&v48[v99], v95, v46);
    v49 = *(v47 - 8);
    (*(v49 + 56))(v48, 0, 1, v47);
LABEL_16:
    v50 = v88;
    (*v87)();
    if ((*(v49 + 48))(v50, 1, v47) == 1)
    {
      v68 = v93;

      v69 = 1 << *(v68 + 32);
      v70 = -1;
      if (v69 < 64)
      {
        v70 = ~(-1 << v69);
      }

      v71 = v70 & *(v68 + 64);
      v72 = (v69 + 63) >> 6;

      v73 = 0;
      v74 = v81;
      v75 = v80;
      for (i = v94; v71; i = v94)
      {
        v77 = v73;
LABEL_33:
        v78 = __clz(__rbit64(v71));
        v71 &= v71 - 1;
        v79 = *(v13 - 8);
        (*(v79 + 16))(v102, *(v93 + 48) + 24 * (v78 | (v77 << 6)), v13);
        sub_1A7CFAF04(v102, v82, v75, v25, v74, v5);
        result = (*(v79 + 8))(v102, v13);
      }

      while (1)
      {
        v77 = v73 + 1;
        if (__OFADD__(v73, 1))
        {
          goto LABEL_37;
        }

        if (v77 >= v72)
        {

          *(v74 + 16) = 0;
          return result;
        }

        v71 = *(i + 8 * v77);
        ++v73;
        if (v71)
        {
          v73 = v77;
          goto LABEL_33;
        }
      }
    }

    v51 = *(v47 + 48);
    v99 = *(v13 - 8);
    (*(v99 + 32))(v102, v50, v13);
    v52 = &v50[v51];
    v53 = v98;
    v54 = v100;
    (*v96)(v98, v52, v100);
    v55 = *&v53[*(v54 + 32)];
    v56 = *(v55 + 16);
    if (v56)
    {
      v57 = (v99 + 8);
      v58 = (v55 + 40);
      do
      {
        v59 = *v58;
        v60 = swift_unknownObjectRetain_n();
        sub_1A7CFA1E4(v60, v59, v101);
        sub_1A7CFABD0(v102, v101, v25, v5);
        swift_unknownObjectRelease();
        (*v57)(v101, v13);
        v58 += 2;
        --v56;
      }

      while (v56);
    }

    v61 = *&v98[*(v100 + 28)];
    v62 = *(v61 + 16);
    if (v62)
    {
      v63 = (v99 + 8);
      v64 = (v61 + 40);
      do
      {
        v65 = *v64;
        v66 = swift_unknownObjectRetain_n();
        sub_1A7CFA1E4(v66, v65, v101);
        sub_1A7CFABD0(v101, v102, v25, v5);
        swift_unknownObjectRelease();
        (*v63)(v101, v13);
        v64 += 2;
        --v62;
      }

      while (v62);
    }

    (*v86)(v98, v100);
    result = (*(v99 + 8))(v102, v13);
    v31 = v94;
  }

  if (v83 <= v37 + 1)
  {
    v39 = v37 + 1;
  }

  else
  {
    v39 = v83;
  }

  v40 = v39 - 1;
  while (1)
  {
    v38 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v38 >= v83)
    {
      v67 = v92;
      v49 = *(v92 - 8);
      (*(v49 + 56))(v91, 1, 1, v92);
      v35 = 0;
      v37 = v40;
      v47 = v67;
      goto LABEL_16;
    }

    v35 = *(v31 + 8 * v38);
    ++v37;
    if (v35)
    {
      v37 = v38;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1A7CFABD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v11 = type metadata accessor for LinkEnginePluginHook.PluginWrapper(0, a4, v9, v10);
  v21 = *(v11 - 8);
  v19 = *(v21 + 16);
  v19(v22, a2, v11);
  swift_beginAccess();
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = sub_1A7CFC478;
  v12[4] = v8;
  swift_isUniquelyReferenced_nonNull_native();
  v23[0] = *(a3 + 16);
  v13 = v23[0];
  *(a3 + 16) = 0x8000000000000000;
  WitnessTable = swift_getWitnessTable();
  v20 = a1;
  sub_1A7CFBDBC(a1, v11, WitnessTable);
  if (__OFADD__(*(v13 + 16), (v15 & 1) == 0))
  {
    __break(1u);
LABEL_8:
    result = sub_1A7E23140();
    __break(1u);
    return result;
  }

  v16 = v15;
  sub_1A7E22800();
  sub_1A7E22D80();
  if (sub_1A7E22D60())
  {
    sub_1A7CFBDBC(v20, v11, WitnessTable);
    if ((v16 & 1) != (v17 & 1))
    {
      goto LABEL_8;
    }
  }

  *(a3 + 16) = v23[0];
  if ((v16 & 1) == 0)
  {
    (v12[3])();
    v19(v23, v20, v11);
    sub_1A7E22D70();
  }

  sub_1A7E227D0();
  swift_endAccess();
  (*(v21 + 8))(v23, v11);
}

uint64_t sub_1A7CFAE74(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = type metadata accessor for LinkEnginePluginHook.PluginWrapper(0, a1, a4, a5);
  v6 = sub_1A7E22570();
  if (sub_1A7E225B0())
  {
    WitnessTable = swift_getWitnessTable();
    v8 = sub_1A7CFC484(v6, v5, WitnessTable);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CD0];
  }

  return v8;
}

uint64_t sub_1A7CFAF04(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v52 = a3;
  v10 = a1;
  v48 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v49 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LinkEnginePluginHook.HandlerWithDependencies(255, v14, v12, v13);
  v47 = sub_1A7E229A0();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v42 - v16;
  v51 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v46 = &v42 - v18;
  swift_beginAccess();
  v58 = a2;
  v21 = type metadata accessor for LinkEnginePluginHook.PluginWrapper(0, a6, v19, v20);

  swift_getWitnessTable();
  v22 = sub_1A7E227F0();

  if ((v22 & 1) == 0)
  {
    v57 = a5;
    v24 = *(v21 - 8);
    v25 = *(v24 + 16);
    v54 = v24 + 16;
    v55 = v25;
    v25(v59, v10, v21);
    swift_beginAccess();
    v26 = sub_1A7E22800();
    sub_1A7E227D0();
    swift_endAccess();
    v27 = *(v24 + 8);
    v56 = v24 + 8;
    v53 = v27;
    v27(v60, v21);
    swift_beginAccess();
    v44 = v26;
    sub_1A7E221A0();
    v28 = v59[0];
    if (v59[0])
    {
      v42 = v15;
      v29 = a4;
      v30 = v52;
      v43 = v10;
      result = swift_endAccess();
      v31 = 0;
      v32 = 1 << *(v28 + 32);
      v33 = -1;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      v34 = v33 & *(v28 + 56);
      for (i = (v32 + 63) >> 6; v34; result = v53(v60, v21))
      {
        v36 = v31;
LABEL_11:
        v37 = __clz(__rbit64(v34));
        v34 &= v34 - 1;
        v55(v60, *(v28 + 48) + 24 * (v37 | (v36 << 6)), v21);
        sub_1A7CFAF04(v60, v58, v30, v29, v57, a6);
      }

      while (1)
      {
        v36 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v36 >= i)
        {

          v10 = v43;
          v15 = v42;
          goto LABEL_15;
        }

        v34 = *(v28 + 56 + 8 * v36);
        ++v31;
        if (v34)
        {
          v31 = v36;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    else
    {
      swift_endAccess();
LABEL_15:
      v38 = v50;
      sub_1A7E221A0();
      v39 = v51;
      if ((*(v51 + 48))(v38, 1, v15) == 1)
      {
        (*(v45 + 8))(v38, v47);
      }

      else
      {
        v40 = v46;
        (*(v39 + 32))(v46, v38, v15);
        (*(v48 + 16))(v49, v40, a6);
        sub_1A7E225E0();
        sub_1A7E225C0();
        (*(v39 + 8))(v40, v15);
      }

      swift_beginAccess();
      sub_1A7E227E0();
      swift_endAccess();
      v41 = sub_1A7E229A0();
      (*(*(v41 - 8) + 8))(v60, v41);
      v55(v59, v10, v21);
      swift_beginAccess();
      sub_1A7E227D0();
      swift_endAccess();
      return v53(v60, v21);
    }
  }

  return result;
}

uint64_t (*sub_1A7CFB568())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v1 = *&v0->_os_unfair_lock_opaque;
  os_unfair_lock_lock(v0 + 4);
  v2 = *(v1 + 80);
  sub_1A7CFB66C(&v0[6], v2, v9);
  type metadata accessor for LinkEnginePluginHook.State(0, v2, v3, v4);
  sub_1A7CC9830(&qword_1EB2B4B58, &unk_1A7E41AA0);
  swift_getFunctionTypeMetadata2();
  sub_1A7E229A0();
  os_unfair_lock_unlock(v0 + 4);
  v5 = v9[0];
  if (!v9[0])
  {
    return 0;
  }

  v6 = v9[1];
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v5;
  v7[4] = v6;
  return sub_1A7CFC898;
}

uint64_t sub_1A7CFB66C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v4)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = v4;
    *(v7 + 32) = v5;
    v8 = sub_1A7CFC8D4;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a3 = v8;
  a3[1] = v7;
  return sub_1A7B151B0(v4, v5);
}

uint64_t sub_1A7CFB6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v28[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LinkEnginePluginHook.HandlerWithDependencies(255, v14, v12, v13);
  v16 = sub_1A7E229A0();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v28[-1] - v17;
  v19 = swift_unknownObjectRetain();
  sub_1A7CFA1E4(v19, a3, v28);
  (*(v9 + 16))(v11, a4, a5);
  (*(v9 + 32))(v18, v11, a5);
  v22 = type metadata accessor for LinkEnginePluginHook.HandlerWithDependencies(0, a5, v20, v21);
  v23 = MEMORY[0x1E69E7CC0];
  *&v18[*(v22 + 28)] = MEMORY[0x1E69E7CC0];
  *&v18[*(v22 + 32)] = v23;
  (*(*(v15 - 8) + 56))(v18, 0, 1, v15);
  type metadata accessor for LinkEnginePluginHook.PluginWrapper(255, a5, v24, v25);
  swift_getWitnessTable();
  sub_1A7E22190();
  result = sub_1A7E221B0();
  *(a1 + 16) = 1;
  return result;
}

void LinkEnginePluginHook.off(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *&v2->_os_unfair_lock_opaque;
  os_unfair_lock_lock(v2 + 4);
  v6 = *(v5 + 80);
  sub_1A7CFB9B4(&v2[6], a1, a2, v6);
  type metadata accessor for LinkEnginePluginHook.State(0, v6, v7, v8);

  os_unfair_lock_unlock(v2 + 4);
}

uint64_t sub_1A7CFB9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for LinkEnginePluginHook.HandlerWithDependencies(255, a4, a3, a4);
  v7 = sub_1A7E229A0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15[-1] - v8;
  v10 = swift_unknownObjectRetain();
  sub_1A7CFA1E4(v10, a3, v15);
  (*(*(v6 - 8) + 56))(v9, 1, 1, v6);
  type metadata accessor for LinkEnginePluginHook.PluginWrapper(255, a4, v11, v12);
  swift_getWitnessTable();
  sub_1A7E22190();
  return sub_1A7E221B0();
}

uint64_t sub_1A7CFBAF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t x2_0@<X2>, uint64_t a5@<X3>)
{
  if (*(a1 + 16) == 1)
  {
    v9 = type metadata accessor for LinkEnginePluginHook.State(0, a2, x2_0, a5);
    sub_1A7CFA2D8(v9, v10, v11, v12);
  }

  v13 = *a1;
  type metadata accessor for LinkEnginePluginHook.PluginWrapper(0, a2, x2_0, a5);
  type metadata accessor for LinkEnginePluginHook.HandlerWithDependencies(0, a2, v14, v15);
  WitnessTable = swift_getWitnessTable();
  v22[5] = v13;
  MEMORY[0x1EEE9AC00](WitnessTable);
  v22[2] = a2;
  v17 = sub_1A7E22180();

  v18 = swift_getWitnessTable();
  v20 = sub_1A7CF9BA8(sub_1A7CFC840, v22, v17, a2, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);

  *a3 = v20;
  a3[1] = 0;
  return result;
}

uint64_t LinkEnginePluginHook.deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LinkEnginePluginHook.State(255, *(*v4 + 80), a3, a4);
  sub_1A7E21CB0();
  sub_1A7E22990();
  return v4;
}

uint64_t LinkEnginePluginHook.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LinkEnginePluginHook.deinit(a1, a2, a3, a4);

  return swift_deallocClassInstance();
}

uint64_t sub_1A7CFBCF4@<X0>(uint64_t *a1@<X8>)
{
  LinkEnginePluginHook.makeIterator()(a1);
}

uint64_t sub_1A7CFBD3C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A7CFC480(v2, a1, a2);

  return v3;
}

unint64_t sub_1A7CFBDBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A7E221C0();

  return sub_1A7CFBE18(a1, v6, a2, a3);
}

unint64_t sub_1A7CFBE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_1A7E22240();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_1A7CFC06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A7CFC0A8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A7CFC0CC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1A7CFC114(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A7CFC18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1A7E225B0())
  {
    sub_1A7E22E30();
    v13 = sub_1A7E22E20();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1A7E225B0();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1A7E22590())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1A7E22B90();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1A7CFBDBC(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
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

    return v13;
  }

  return result;
}

uint64_t sub_1A7CFC484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v38 - v10;
  v39 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  if (sub_1A7E225B0())
  {
    sub_1A7E22B30();
    v15 = sub_1A7E22B20();
  }

  else
  {
    v15 = MEMORY[0x1E69E7CD0];
  }

  v43 = sub_1A7E225B0();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 56;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    v17 = sub_1A7E22590();
    sub_1A7E22550();
    if (v17)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_1A7E22B90();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = sub_1A7E221C0();
    v22 = v15;
    v23 = -1 << *(v15 + 32);
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = *(v49 + 8 * (v24 >> 6));
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v8, (*(v22 + 48) + v28 * v24), a2);
        v30 = a3;
        v31 = sub_1A7E22240();
        v32 = *v47;
        (*v47)(v8, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = *(v49 + 8 * (v24 >> 6));
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    *(v49 + 8 * v25) = v27 | v26;
    v34 = *(v22 + 48) + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = *(v22 + 16);
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    *(v22 + 16) = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1A7CFC898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v6[0] = a1;
  v6[1] = a2;
  return v4(v6, a3);
}

void sub_1A7CFC940(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1A7CFCCD4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A7CFC9C8(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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

_BYTE *sub_1A7CFCB0C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
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

void sub_1A7CFCCD4(uint64_t a1)
{
  if (!qword_1EB2B2940)
  {
    sub_1A7CC9830(&qword_1EB2B4B58, &unk_1A7E41AA0);
    v1 = sub_1A7E225E0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB2B2940);
    }
  }
}

uint64_t sub_1A7CFCD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A7CFCD74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 16) & 0xF000000000000007) != 0)
  {
    v2 = *(a1 + 8) & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A7CFCDC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = 1;
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t IDSLinkEndpointCellularState.uniqueIDSortableIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t IDSLinkEndpointCellularState.uniqueID.getter()
{
  v1 = 0xE700000000000000;
  v2 = 0x6C6C65436E6F4ELL;
  if (*v0 != 1)
  {
    v2 = 7958081;
    v1 = 0xE300000000000000;
  }

  if (*v0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 1819043139;
  }

  if (*v0)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x1AC561C90](v3, v4);

  return 0x3D6C6C6563;
}

uint64_t sub_1A7CFCEF4()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_1A7CFCF24()
{
  v1 = 0xE700000000000000;
  v2 = 0x6C6C65436E6F4ELL;
  if (*v0 != 1)
  {
    v2 = 7958081;
    v1 = 0xE300000000000000;
  }

  if (*v0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 1819043139;
  }

  if (*v0)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x1AC561C90](v3, v4);

  return 0x3D6C6C6563;
}

void LinkEndpoint.idsCellularState.getter(char *a1@<X8>)
{
  v3 = *v1;
  if (*(v3 + 16) && (v4 = sub_1A7CD0DFC(&type metadata for IDSLinkEndpointCellularState), (v5 & 1) != 0) && (sub_1A7B0CD10(*(v3 + 56) + 32 * v4, v8), sub_1A7B1503C(v8, &v7), sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60), (swift_dynamicCast() & 1) != 0) && v10)
  {
    v6 = v9[0];
  }

  else
  {
    v6 = 1;
  }

  *a1 = v6;
}

uint64_t sub_1A7CFD06C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  sub_1A7CE05C0(*a1, &v5);
  result = v6;
  if (v6)
  {
    v4 = v5;
  }

  else
  {
    v4 = 1;
  }

  *a2 = v4;
  return result;
}

_OWORD *LinkEndpoint.idsCellularState.setter(_BYTE *a1)
{
  v2[0] = *a1;
  v3 = 1819043171;
  v4 = 0xE400000000000000;
  v5 = &type metadata for IDSLinkEndpointCellularState;
  return sub_1A7CC8D74(v2, &type metadata for IDSLinkEndpointCellularState);
}

uint64_t (*LinkEndpoint.idsCellularState.modify(uint64_t a1))()
{
  *a1 = v1;
  sub_1A7CE05C0(*v1, v5);
  if (v5[2])
  {
    v3 = v5[0];
  }

  else
  {
    v3 = 1;
  }

  *(a1 + 8) = v3;
  return sub_1A7CFD180;
}

_OWORD *sub_1A7CFD180(uint64_t a1)
{
  v2[0] = *(a1 + 8);
  v3 = 1819043171;
  v4 = 0xE400000000000000;
  v5 = &type metadata for IDSLinkEndpointCellularState;
  return sub_1A7CC8D74(v2, &type metadata for IDSLinkEndpointCellularState);
}

uint64_t sub_1A7CFD1D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A7CFD21C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}