uint64_t sub_1AF4107B0(__objc2_class **a1, uint64_t a2, unint64_t a3, int a4, uint64_t *a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t *a10, uint64_t a11)
{
  v202 = a8;
  v203 = a7;
  v205 = a6;
  v199 = a4;
  v207 = a3;
  v12 = a2;
  v185 = sub_1AFDFC318();
  v182 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v184 = &v164 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v164 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v164 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v164 - v22;
  if ((v12 & 1) == 0)
  {
    goto LABEL_135;
  }

  v24 = *a5;
  if (!*(*a5 + 16))
  {

    goto LABEL_8;
  }

  v25 = sub_1AF0D3F10(a1);
  if ((v26 & 1) == 0)
  {

    v28 = sub_1AF0D3F10(a1);
    if (v29)
    {
      v27 = *(*(v24 + 56) + 8 * v28);
LABEL_131:

      return v27;
    }

LABEL_8:
    v30 = a10;
    v31 = *(*a10 + 16);
    v177 = v17;
    if (!v31 || (sub_1AF0D3F10(a1), (v32 & 1) == 0))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v216[0] = *a10;
      *a10 = 0x8000000000000000;
      sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
      *a10 = v216[0];

      v191 = type metadata accessor for Node(0);
      v34 = v199 & (v191 == MEMORY[0x1E69E6530]);
      v35 = swift_allocObject();
      v172 = v35;
      *(v35 + 16) = a1;
      v171 = (v35 + 16);

      v36 = a1;
      v181 = v34;
      if (v34 == 1)
      {
        v37 = sub_1AF96FB80(1);
        v38 = v171;
        *v171 = v37;

        v36 = *v38;
      }

      v201 = a9;
      v39 = sub_1AF96CD1C(v36);
      v200 = a5;
      v204 = a10;
      if (v39)
      {
        v40 = v39;
        v41 = *(v182 + 16);
        v42 = v36 + OBJC_IVAR____TtC3VFX4Node_authoringID;
        v43 = v185;
        v41(v23, v42, v185);
        v41(v20, v23, v43);
        v44 = v203;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_1AF4276E0(0, v203[2] + 1, 1, v203, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v46 = v44[2];
        v45 = v44[3];
        v206 = v40;
        if (v46 >= v45 >> 1)
        {
          v44 = sub_1AF4276E0(v45 > 1, v46 + 1, 1, v44, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v30 = v204;
        v47 = v182;
        v48 = v23;
        v49 = v185;
        (*(v182 + 8))(v48, v185);
        v44[2] = v46 + 1;
        (*(v47 + 32))(v44 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v46, v20, v49);
        v50 = sub_1AF3FC510(v202, v201, 1, v207, v199 & 1, v44, sub_1AF417BB0, type metadata accessor for Node, _s11DeletedNodeCMa);
        v52 = v51;

        if (v191 == MEMORY[0x1E69E6530])
        {
          v53 = *(v52 + 16);
          if (v53)
          {
            v216[0] = MEMORY[0x1E69E7CC0];
            sub_1AFDFE368();
            v54 = 32;
            do
            {
              v55 = v50[2];
              if (v55)
              {
                v56 = sub_1AF0D3F10(*(v52 + v54));
                if (v57)
                {
                  v55 = *(v50[7] + 8 * v56);
                }

                else
                {
                  v55 = 0;
                }
              }

              *&v209 = v55;
              swift_dynamicCast();
              sub_1AFDFE328();
              sub_1AFDFE398();
              sub_1AFDFE3A8();
              sub_1AFDFE348();
              v54 += 8;
              --v53;
              a5 = v200;
            }

            while (v53);

            v58 = v216[0];
            v30 = v204;
          }

          else
          {

            v58 = MEMORY[0x1E69E7CC0];
          }

          v59 = *v171;
          type metadata accessor for Graph();
          v60 = swift_allocObject();
          *(v60 + 16) = v58;
          *(v59 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = v60;
        }

        else
        {
        }
      }

      v61 = v207 >> 59;
      if (((v207 >> 59) & 2) != 0)
      {
        v62 = 0;
        v169 = 0;
        v168 = 0;
        v167 = 0;
        v166 = 0;
        v165 = 0;
      }

      else
      {
        ((*a1)[3].info)(v215, v39);
        v62 = v215[0];
        v169 = v215[1];
        v168 = v215[2];
        v167 = v215[3];
        v166 = v215[4];
        v165 = v215[5];
      }

      v198 = a11;
      v63 = sub_1AF971F68();
      v195 = *(v63 + 16);
      v170 = a1;
      if (!v195)
      {
        v183 = v199 & 1;
LABEL_122:

        sub_1AF441284(v62, v169, v168, v167, v166, v165);
        v144 = v172;
        sub_1AF3FCBA8(v172, v30, a5);
        v145 = swift_allocObject();
        v146 = v202;
        v147 = v201;
        *(v145 + 16) = v202;
        *(v145 + 24) = v147;
        v148 = v205;

        v149 = v207;
        sub_1AF4410E4(v207, sub_1AF4410A8);

        v150 = swift_allocObject();
        *(v150 + 16) = 1;
        *(v150 + 24) = v149;
        *(v150 + 32) = v183;
        *(v150 + 40) = a5;
        *(v150 + 48) = v148;
        v151 = v203;
        *(v150 + 56) = v203;
        *(v150 + 64) = v146;
        *(v150 + 72) = v147;
        *(v150 + 80) = v30;
        v152 = v198;
        *(v150 + 88) = v198;
        v153 = swift_allocObject();
        *(v153 + 16) = sub_1AF449D6C;
        *(v153 + 24) = v150;
        v154 = *(v144 + 16);
        *&v209 = v148;
        *(&v209 + 1) = v154;
        v210 = v151;
        v211 = sub_1AF449D48;
        v212 = v153;
        v213 = v152;

        sub_1AF449DC0(&v209, &v214);

        v27 = v214;
        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

        v155 = v170;
        sub_1AF6345D0(v27, v170);
        v156 = v204;
        if (v157)
        {
          v158 = a5[1];
          v159 = swift_isUniquelyReferenced_nonNull_native();
          a5[1] = v158;
          if ((v159 & 1) == 0)
          {
            v158 = sub_1AF422330(0, *(v158 + 2) + 1, 1, v158, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
            a5[1] = v158;
          }

          v161 = *(v158 + 2);
          v160 = *(v158 + 3);
          if (v161 >= v160 >> 1)
          {
            v158 = sub_1AF422330(v160 > 1, v161 + 1, 1, v158, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
            a5[1] = v158;
          }

          *(v158 + 2) = v161 + 1;
          *&v158[8 * v161 + 32] = v155;
        }

        if (v191 == MEMORY[0x1E69E6530])
        {
          *&v209 = v27;

          swift_dynamicCast();
        }

        v162 = swift_isUniquelyReferenced_nonNull_native();
        *&v209 = *v156;
        *v156 = 0x8000000000000000;
        sub_1AF850FDC(0, v155, v162);
        *v156 = v209;

        goto LABEL_131;
      }

      v64 = 0;
      v178 = v61 & 2;
      LODWORD(v206) = v178 | (v207 >> 2) & 1;
      v194 = v63 + 32;
      v176 = v62 + 32;
      v175 = (v182 + 16);
      v174 = v182 + 8;
      v173 = v182 + 32;
      v180 = v62;
      v179 = v63;
      v183 = v199 & 1;
      while (1)
      {
        v65 = *(v194 + 16 * v64);
        if (!v65)
        {
          goto LABEL_39;
        }

        v196 = v64;
        if (v62 && v64 < *(v62 + 16))
        {
          v66 = *(v176 + 8 * v64);
          sub_1AF4410A8(v66);
        }

        else
        {
          v66 = 0xA000000000000000;
        }

        if (v206)
        {
          if (v206 == 1)
          {
            v67 = sub_1AF9C5694(v66, v207 & 0xEFFFFFFFFFFFFFFBLL);
            sub_1AF441114(v66);
            if (v67)
            {
              goto LABEL_38;
            }
          }

          else
          {
            sub_1AF441114(v66);
          }
        }

        else
        {
          v68 = sub_1AF9C5694(v66, v207);
          sub_1AF441114(v66);
          if (!v68)
          {
            goto LABEL_38;
          }
        }

        if (!*(*a5 + 16) || (sub_1AF0D3F10(v65), (v69 & 1) == 0))
        {
          if (*(*v30 + 16))
          {
            sub_1AF0D3F10(v65);
            v70 = MEMORY[0x1E69E6530];
            if (v71)
            {
              break;
            }
          }

          else
          {
            v70 = MEMORY[0x1E69E6530];
          }

          v72 = swift_isUniquelyReferenced_nonNull_native();
          *&v209 = *v30;
          v73 = v209;
          *v30 = 0x8000000000000000;
          v74 = sub_1AF0D3F10(v65);
          v76 = v75;
          v77 = *(v73 + 16) + ((v75 & 1) == 0);
          if (*(v73 + 24) >= v77)
          {
            if (v72)
            {
              goto LABEL_62;
            }

            v80 = v74;
            sub_1AF843F7C();
            v74 = v80;
            v79 = v209;
            if ((v76 & 1) == 0)
            {
              goto LABEL_65;
            }

LABEL_63:
            *(v79[7] + v74) = 1;
          }

          else
          {
            sub_1AF82BC4C(v77, v72);
            v74 = sub_1AF0D3F10(v65);
            if ((v76 & 1) != (v78 & 1))
            {
              goto LABEL_134;
            }

LABEL_62:
            v79 = v209;
            if (v76)
            {
              goto LABEL_63;
            }

LABEL_65:
            v79[(v74 >> 6) + 8] |= 1 << v74;
            *(v79[6] + 8 * v74) = v65;
            *(v79[7] + v74) = 1;
            ++v79[2];
          }

          *v30 = v79;

          v81 = swift_allocObject();
          v193 = v81;
          *(v81 + 16) = v65;
          v192 = (v81 + 16);

          v82 = v65;
          if (v181)
          {
            v83 = sub_1AF96FB80(1);
            v84 = v192;
            *v192 = v83;

            v82 = *v84;
          }

          v85 = sub_1AF96CD1C(v82);
          v197 = v65;
          if (v85)
          {
            v86 = *v175;
            v87 = v82 + OBJC_IVAR____TtC3VFX4Node_authoringID;
            v88 = v177;
            v89 = v185;
            (*v175)(v177, v87, v185);
            v86(v184, v88, v89);
            v90 = v203;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v90 = sub_1AF4276E0(0, v203[2] + 1, 1, v203, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
            }

            v92 = v90[2];
            v91 = v90[3];
            if (v92 >= v91 >> 1)
            {
              v90 = sub_1AF4276E0(v91 > 1, v92 + 1, 1, v90, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
            }

            v93 = v182;
            v94 = v88;
            v95 = v185;
            (*(v182 + 8))(v94, v185);
            v90[2] = v92 + 1;
            (*(v93 + 32))(v90 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v92, v184, v95);
            v96 = sub_1AF3FC510(v202, v201, 1, v207, v199 & 1, v90, sub_1AF417BB0, type metadata accessor for Node, _s11DeletedNodeCMa);
            v98 = v97;

            if (v191 == v70)
            {
              v99 = *(v98 + 16);
              if (v99)
              {
                *&v209 = MEMORY[0x1E69E7CC0];
                sub_1AFDFE368();
                v100 = 32;
                do
                {
                  v101 = v96[2];
                  if (v101)
                  {
                    v102 = sub_1AF0D3F10(*(v98 + v100));
                    if (v103)
                    {
                      v101 = *(v96[7] + 8 * v102);
                    }

                    else
                    {
                      v101 = 0;
                    }
                  }

                  v208 = v101;
                  swift_dynamicCast();
                  sub_1AFDFE328();
                  sub_1AFDFE398();
                  sub_1AFDFE3A8();
                  sub_1AFDFE348();
                  v100 += 8;
                  --v99;
                  v65 = v197;
                }

                while (v99);

                v104 = v209;
              }

              else
              {

                v104 = MEMORY[0x1E69E7CC0];
              }

              v105 = *v192;
              type metadata accessor for Graph();
              v106 = swift_allocObject();
              *(v106 + 16) = v104;
              *(v105 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = v106;
            }

            else
            {
            }
          }

          if (v178)
          {
            v107 = 0;
            v190 = 0;
            v189 = 0;
            v188 = 0;
            v187 = 0;
            v186 = 0;
          }

          else
          {
            (*(*v65 + 152))(v216, v85);
            v107 = v216[0];
            v190 = v216[1];
            v189 = v216[2];
            v188 = v216[3];
            v187 = v216[4];
            v186 = v216[5];
          }

          v108 = sub_1AF971F68();
          v109 = *(v108 + 16);
          if (v109)
          {
            v110 = 0;
            v111 = 32;
            while (2)
            {
              v112 = *(v108 + v111);
              if (!v112)
              {
                goto LABEL_94;
              }

              if (v107 && v110 < *(v107 + 16))
              {
                v113 = *(v107 + 32 + 8 * v110);
                sub_1AF4410A8(v113);
              }

              else
              {
                v113 = 0xA000000000000000;
              }

              if (v206)
              {
                if (v206 == 1)
                {
                  v114 = sub_1AF9C5694(v113, v207 & 0xEFFFFFFFFFFFFFFBLL);
                  sub_1AF441114(v113);
                  if (v114)
                  {
                    goto LABEL_93;
                  }
                }

                else
                {
                  sub_1AF441114(v113);
                }
              }

              else
              {
                v115 = sub_1AF9C5694(v113, v207);
                sub_1AF441114(v113);
                if (!v115)
                {
LABEL_93:

LABEL_94:
                  ++v110;
                  v111 += 16;
                  if (v109 == v110)
                  {
                    goto LABEL_106;
                  }

                  continue;
                }
              }

              break;
            }

            sub_1AF3E707C(v112, 1, v207, v199 & 1, v203, v202, v201, v204, v200, v198);
            goto LABEL_93;
          }

LABEL_106:

          sub_1AF441284(v107, v190, v189, v188, v187, v186);
          v116 = v193;
          v117 = v204;
          a5 = v200;
          sub_1AF3FCBA8(v193, v204, v200);
          v118 = swift_allocObject();
          v119 = v202;
          v120 = v201;
          *(v118 + 16) = v202;
          *(v118 + 24) = v120;
          v121 = v205;

          v122 = v207;
          sub_1AF4410E4(v207, sub_1AF4410A8);

          v123 = swift_allocObject();
          *(v123 + 16) = 1;
          *(v123 + 24) = v122;
          *(v123 + 32) = v183;
          *(v123 + 40) = a5;
          *(v123 + 48) = v121;
          v124 = v203;
          *(v123 + 56) = v203;
          *(v123 + 64) = v119;
          *(v123 + 72) = v120;
          *(v123 + 80) = v117;
          v125 = v198;
          *(v123 + 88) = v198;
          v126 = swift_allocObject();
          *(v126 + 16) = sub_1AF449D6C;
          *(v126 + 24) = v123;
          v127 = *(v116 + 16);
          *&v209 = v121;
          *(&v209 + 1) = v127;
          v210 = v124;
          v211 = sub_1AF449D48;
          v212 = v126;
          v213 = v125;
          swift_bridgeObjectRetain_n();

          sub_1AF449DC0(&v209, &v214);

          v128 = v214;
          swift_isEscapingClosureAtFileLocation();

          swift_isEscapingClosureAtFileLocation();

          v129 = v197;
          sub_1AF6345D0(v128, v197);
          v30 = v204;
          if (v130)
          {
            v131 = a5[1];
            v132 = swift_isUniquelyReferenced_nonNull_native();
            a5[1] = v131;
            if ((v132 & 1) == 0)
            {
              v131 = sub_1AF422330(0, *(v131 + 2) + 1, 1, v131, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
              a5[1] = v131;
            }

            v134 = *(v131 + 2);
            v133 = *(v131 + 3);
            if (v134 >= v133 >> 1)
            {
              v131 = sub_1AF422330(v133 > 1, v134 + 1, 1, v131, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
              a5[1] = v131;
            }

            *(v131 + 2) = v134 + 1;
            *&v131[8 * v134 + 32] = v129;
          }

          if (v191 == MEMORY[0x1E69E6530])
          {
            *&v209 = v128;

            swift_dynamicCast();
          }

          v135 = swift_isUniquelyReferenced_nonNull_native();
          *&v209 = *v30;
          v136 = v209;
          *v30 = 0x8000000000000000;
          v137 = sub_1AF0D3F10(v129);
          v139 = v138;
          v140 = *(v136 + 16) + ((v138 & 1) == 0);
          if (*(v136 + 24) >= v140)
          {
            if ((v135 & 1) == 0)
            {
              v143 = v137;
              sub_1AF843F7C();
              v137 = v143;
            }
          }

          else
          {
            sub_1AF82BC4C(v140, v135);
            v137 = sub_1AF0D3F10(v129);
            if ((v139 & 1) != (v141 & 1))
            {
LABEL_134:
              sub_1AFDFF1A8();
              __break(1u);
              break;
            }
          }

          v62 = v180;
          v142 = v209;
          if (v139)
          {
            *(*(v209 + 56) + v137) = 0;
          }

          else
          {
            *(v209 + 8 * (v137 >> 6) + 64) |= 1 << v137;
            *(v142[6] + 8 * v137) = v129;
            *(v142[7] + v137) = 0;
            ++v142[2];
          }

          *v30 = v142;
        }

LABEL_38:

        v64 = v196;
LABEL_39:
        if (++v64 == v195)
        {
          goto LABEL_122;
        }
      }
    }

LABEL_135:
    sub_1AFDFE518();
    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();

    while (1)
    {

      swift_unexpectedError();
      __break(1u);

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      sub_1AF441284(v180, v169, v168, v167, v166, v165);
    }
  }

  return *(*(v24 + 56) + 8 * v25);
}

uint64_t sub_1AF4121EC(uint64_t a1, uint64_t a2, int a3, unint64_t a4, int a5, void *a6, uint64_t *a7)
{
  v74 = a7;
  LODWORD(v88) = a5;
  LODWORD(v87) = a3;
  v86 = a2;
  v95 = *MEMORY[0x1E69E9840];
  v85 = v7 + 24;

  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = v11;
  }

  else
  {
    v12 = sub_1AF42B320(v11, 0);

    v13 = v12;
  }

  v91 = MEMORY[0x1E69E7CC0];
  v92 = sub_1AF0D4098(MEMORY[0x1E69E7CC0], sub_1AF44034C, sub_1AF0D3F10);
  if (v13 >> 62)
  {
    v14 = sub_1AFDFE108();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1AF4410E4(a4, sub_1AF4410A8);

  v15 = v13;
  v73 = v13;
  if (!v14)
  {
LABEL_14:

    sub_1AF4410E4(a4, sub_1AF441114);

    if (v91 >> 62)
    {
      if (!sub_1AFDFE108())
      {
        goto LABEL_17;
      }
    }

    else if (!*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_17:
      v21 = *v74;
      v20 = v74[1];
      v22 = *(v20 + 16);
      v23 = MEMORY[0x1E69E7CC0];
      if (!v22)
      {
        v25 = MEMORY[0x1E69E7CC0];
LABEL_54:

        v67 = sub_1AF8A9490(v25);
        v69 = v68;

        v70 = v74;
        *v74 = v67;
        v70[1] = v69;
        goto LABEL_55;
      }

      v90 = MEMORY[0x1E69E7CC0];

      sub_1AFC05D48(0, v22, 0);
      v24 = 0;
      v25 = v90;
      v72 = v20;
      v75 = v20 + 32;
      v83 = v21;
      v84 = &v94 + 1;
      v76 = v22;
      while (1)
      {
        v80 = v24;
        v26 = *(v75 + 8 * v24);
        v27 = *(v21 + 16);
        v81 = v25;
        v79 = v26;
        if (v27 && (v28 = sub_1AF0D3F10(v26), (v29 & 1) != 0))
        {
          v30 = *(*(v21 + 56) + 8 * v28);
        }

        else
        {
          v30 = 0;
        }

        v78 = v30;
        v31 = sub_1AF97228C();
        v32 = *(v31 + 16);
        if (v32)
        {
          v89 = v23;
          sub_1AFC05D98(0, v32, 0);
          v33 = v89;
          v34 = 32;
          v82 = v31;
          do
          {
            v35 = *(v31 + v34);
            v88 = v35;
            v36 = v35;
            if (v35)
            {
              v37 = *(v88 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw);
              if (*v37 == _TtC3VFX16_PlaceholderNode)
              {
                v86 = v33;
                v38 = *(v37 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode + 24);
                v39 = *(v37 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode + 32);
                v85 = v37 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode;
                v40 = sub_1AF441150((v37 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode), v38);
                v87 = &v72;
                v41 = *(v38 - 8);
                v42 = MEMORY[0x1EEE9AC00](v40);
                v44 = &v72 - v43;
                (*(v41 + 16))(&v72 - v43, v42);
                v45 = *(v39 + 24);
                swift_retain_n();

                v46 = v45(v38, v39);
                (*(v41 + 8))(v44, v38);
                v21 = v83;
                if (*(v83 + 16) && (v47 = sub_1AF0D3F10(v46), (v48 & 1) != 0))
                {
                  v49 = *(*(v21 + 56) + 8 * v47);

                  *&v94 = v49;
                  *(&v94 + 1) = *(&v88 + 1);
                  v36 = v49;
                }

                else
                {

                  sub_1AF441194(v85, v93);

                  sub_1AF4498F4(0, &qword_1EB638380, &protocol descriptor for _NodeProtocol, 1);
                  type metadata accessor for AuthoringNode(0);
                  swift_dynamicCast();
                  *(&v94 + 1) = *(&v88 + 1);
                  v36 = v94;
                }

                v31 = v82;
                v33 = v86;
              }

              else
              {
                v94 = v35;
                swift_retain_n();
              }
            }

            else
            {
              *&v94 = 0;
              *v84 = *(&v35 + 1);
            }

            v89 = v33;
            v51 = *(v33 + 16);
            v50 = *(v33 + 24);
            if (v51 >= v50 >> 1)
            {
              sub_1AFC05D98(v50 > 1, v51 + 1, 1);
              v33 = v89;
            }

            *(v33 + 16) = v51 + 1;
            v52 = v33 + 16 * v51;
            *(v52 + 32) = v36;
            *(v52 + 40) = *(&v88 + 1);
            v34 += 16;
            --v32;
          }

          while (v32);

          v23 = MEMORY[0x1E69E7CC0];
          v53 = *(v33 + 16);
          if (v53)
          {
LABEL_38:
            v93[0] = v23;
            sub_1AFC05D04(0, v53, 0);
            v54 = v93[0];
            v55 = *(v93[0] + 16);
            v56 = 16 * v55;
            v57 = (v33 + 40);
            do
            {
              v58 = *(v57 - 1);
              if (v58)
              {
                v59 = *v57;
              }

              else
              {
                v59 = 0;
              }

              v93[0] = v54;
              v60 = *(v54 + 24);

              if (v55 >= v60 >> 1)
              {
                sub_1AFC05D04(v60 > 1, v55 + 1, 1);
                v54 = v93[0];
              }

              v57 += 2;
              *(v54 + 16) = v55 + 1;
              v61 = v54 + v56;
              *(v61 + 32) = v58;
              *(v61 + 40) = v59;
              v56 += 16;
              ++v55;
              --v53;
            }

            while (v53);

            v21 = v83;
            v23 = MEMORY[0x1E69E7CC0];
            goto LABEL_48;
          }
        }

        else
        {

          v33 = v23;
          v53 = *(v23 + 16);
          if (v53)
          {
            goto LABEL_38;
          }
        }

        v54 = v23;
LABEL_48:
        v62 = v78;
        *(v78 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v54;

        v25 = v81;
        v90 = v81;
        v64 = *(v81 + 16);
        v63 = *(v81 + 24);
        v65 = v76;
        if (v64 >= v63 >> 1)
        {
          sub_1AFC05D48(v63 > 1, v64 + 1, 1);
          v25 = v90;
        }

        v24 = v80 + 1;
        *(v25 + 16) = v64 + 1;
        v66 = v25 + 16 * v64;
        *(v66 + 32) = v79;
        *(v66 + 40) = v62;
        if (v24 == v65)
        {

          goto LABEL_54;
        }
      }
    }

    sub_1AF48F6CC(v19);
    goto LABEL_17;
  }

  v16 = 0;
  v17 = v13 & 0xC000000000000001;
  while (1)
  {
    if (v17)
    {
      v18 = MEMORY[0x1B2719C70](v16, v15);
    }

    else
    {
      v18 = *(v15 + 8 * v16 + 32);
    }

    sub_1AF3DBA8C(v18, v87 & 1, a4, v88 & 1, a6, a1, v86, &v92, v74, &v91);
    if (v77)
    {
      break;
    }

    ++v16;
    v15 = v73;
    if (v14 == v16)
    {
      goto LABEL_14;
    }
  }

  sub_1AF4410E4(a4, sub_1AF441114);

LABEL_55:
}

uint64_t sub_1AF412AA8(uint64_t a1, uint64_t a2, char a3, unint64_t a4, char a5, void *a6, void *a7)
{
  v9 = v7;
  v26[1] = *MEMORY[0x1E69E9840];
  v12 = *(v7 + 24);
  v25 = MEMORY[0x1E69E7CC0];
  v26[0] = sub_1AF0D4098(MEMORY[0x1E69E7CC0], sub_1AF44034C, sub_1AF0D3F10);
  if (v12 >> 62)
  {
    v13 = sub_1AFDFE108();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1AF4410E4(a4, sub_1AF4410A8);

  if (!v13)
  {
LABEL_11:

    sub_1AF4410E4(a4, sub_1AF441114);

    if (v25 >> 62)
    {
      if (!sub_1AFDFE108())
      {
        goto LABEL_14;
      }
    }

    else if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:

      goto LABEL_16;
    }

    sub_1AF48F6CC(v18);
    goto LABEL_14;
  }

  v14 = 0;
  v15 = v12 & 0xC000000000000001;
  while (1)
  {
    v16 = v12;
    if (v15)
    {
      v17 = MEMORY[0x1B2719C70](v14, v12);
    }

    else
    {
      v17 = *(v12 + 8 * v14 + 32);
    }

    sub_1AF418138(v17, v9, a3 & 1, a4, a5 & 1, a6, a1, a2, v26, a7, &v25);
    if (v8)
    {
      break;
    }

    ++v14;
    v12 = v16;
    if (v13 == v14)
    {
      goto LABEL_11;
    }
  }

  sub_1AF4410E4(a4, sub_1AF441114);

LABEL_16:
}

uint64_t sub_1AF412D4C(uint64_t a1, uint64_t a2, char a3, unint64_t a4, char a5, void *a6, void *a7)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v11 = *(v7 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  v25[0] = sub_1AF0D4098(MEMORY[0x1E69E7CC0], sub_1AF44034C, sub_1AF0D3F10);
  if (v11 >> 62)
  {
    v12 = sub_1AFDFE108();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1AF4410E4(a4, sub_1AF4410A8);

  if (!v12)
  {
LABEL_11:

    sub_1AF4410E4(a4, sub_1AF441114);

    if (v24 >> 62)
    {
      if (!sub_1AFDFE108())
      {
        goto LABEL_14;
      }
    }

    else if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:

      goto LABEL_16;
    }

    sub_1AF48F7F8(v17);
    goto LABEL_14;
  }

  v13 = 0;
  v14 = v11 & 0xC000000000000001;
  while (1)
  {
    v15 = v11;
    if (v14)
    {
      v16 = MEMORY[0x1B2719C70](v13, v11);
    }

    else
    {
      v16 = *(v11 + 8 * v13 + 32);
    }

    sub_1AF3DC99C(v16, a3 & 1, a4, a5 & 1, a6, a1, a2, v25, a7, &v24);
    if (v8)
    {
      break;
    }

    ++v13;
    v11 = v15;
    if (v12 == v13)
    {
      goto LABEL_11;
    }
  }

  sub_1AF4410E4(a4, sub_1AF441114);

LABEL_16:
}

uint64_t sub_1AF412FE8(uint64_t a1, uint64_t a2, char a3, unint64_t a4, char a5, void *a6, uint64_t *a7)
{
  v9 = v8;
  v47[1] = *MEMORY[0x1E69E9840];
  v12 = *(v7 + 24);

  if ((a4 & 0x1000000000000000) == 0)
  {
    v13 = sub_1AF42B320(v12, 0);

    v12 = v13;
  }

  v45 = MEMORY[0x1E69E7CC0];
  v46 = sub_1AF0D4098(MEMORY[0x1E69E7CC0], sub_1AF44034C, sub_1AF0D3F10);
  if (v12 >> 62)
  {
    v14 = sub_1AFDFE108();
  }

  else
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1AF4410E4(a4, sub_1AF4410A8);

  if (!v14)
  {
LABEL_13:

    sub_1AF4410E4(a4, sub_1AF441114);

    if (v45 >> 62)
    {
      if (!sub_1AFDFE108())
      {
LABEL_16:
        sub_1AF44479C(0);
        if (v18 == type metadata accessor for AuthoringNode(0))
        {
          v19 = *a7;
          v20 = a7[1];
          v21 = *(v20 + 16);
          v22 = MEMORY[0x1E69E7CC0];
          if (v21)
          {
            v44 = MEMORY[0x1E69E7CC0];

            sub_1AFC05F74(0, v21, 0);
            v23 = 32;
            v22 = v44;
            v41 = v20;
            v42 = v19;
            do
            {
              v24 = *(v20 + v23);
              if (*(v19 + 16) && (v25 = sub_1AF0D3F10(*(v20 + v23)), (v26 & 1) != 0))
              {
                v27 = *(*(v19 + 56) + 8 * v25);
              }

              else
              {
                v27 = 1;
              }

              v28 = sub_1AF419184(v47, v24, v27, a7);
              sub_1AF0DB74C(v27);
              v29 = v47[0];
              v31 = *(v44 + 16);
              v30 = *(v44 + 24);
              if (v31 >= v30 >> 1)
              {
                sub_1AFC05F74(v30 > 1, v31 + 1, 1);
              }

              *(v44 + 16) = v31 + 1;
              v32 = v44 + 16 * v31;
              *(v32 + 32) = v28;
              *(v32 + 40) = v29;
              v23 += 8;
              --v21;
              v20 = v41;
              v19 = v42;
            }

            while (v21);
          }

          v33 = sub_1AF8A94D0(v22);
          v35 = v34;

          *a7 = v33;
          a7[1] = v35;
        }

        else
        {
        }

        goto LABEL_30;
      }
    }

    else if (!*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    sub_1AF48F6CC(v17);
    goto LABEL_16;
  }

  v15 = 0;
  while (1)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1B2719C70](v15, v12);
    }

    else
    {
      v16 = *(v12 + 8 * v15 + 32);
    }

    sub_1AF3DDA58(v16, a3 & 1, a4, a5 & 1, a6, a1, a2, &v46, a7, &v45);
    if (v9)
    {
      break;
    }

    if (v14 == ++v15)
    {
      goto LABEL_13;
    }
  }

  sub_1AF4410E4(a4, sub_1AF441114);

LABEL_30:
}

uint64_t sub_1AF413434(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, void *a6, uint64_t *a7)
{
  v9 = v8;
  v32 = a7;
  v33 = a6;
  v30 = a3;
  v31 = a5;
  v28 = a1;
  v29 = a2;
  v42 = *MEMORY[0x1E69E9840];
  v35 = v7;
  v10 = *(v7 + 16);
  v27 = v7 + 16;
  v11 = MEMORY[0x1E69E7CC0];
  v34 = a4;
  if ((a4 & 0x1000000000000000) != 0)
  {

LABEL_5:
    v16 = sub_1AF0D4098(v11, sub_1AF44034C, sub_1AF0D3F10);
    v36 = v11;
    v37 = v16;
    if (v10 >> 62)
    {
      v17 = sub_1AFDFE108();
    }

    else
    {
      v17 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_1AF4410E4(v34, sub_1AF4410A8);

    if (v17)
    {
      v18 = 0;
      v19 = v10 & 0xC000000000000001;
      while (1)
      {
        v20 = v10;
        if (v19)
        {
          v21 = MEMORY[0x1B2719C70](v18, v10);
        }

        else
        {
          v21 = *(v10 + 8 * v18 + 32);
        }

        sub_1AF3DEAB4(v21, v30 & 1, v34, v31 & 1, v33, v28, v29, &v37, v40, v32, &v36);
        if (v9)
        {
          break;
        }

        ++v18;
        v38[6] = v40[6];
        v39[0] = v41[0];
        *(v39 + 9) = *(v41 + 9);
        v38[2] = v40[2];
        v38[3] = v40[3];
        v38[4] = v40[4];
        v38[5] = v40[5];
        v38[0] = v40[0];
        v38[1] = v40[1];
        sub_1AF44943C(v38, sub_1AF448148);

        v10 = v20;
        if (v17 == v18)
        {
          goto LABEL_15;
        }
      }

      sub_1AF4410E4(v34, sub_1AF441114);

      goto LABEL_20;
    }

LABEL_15:

    sub_1AF4410E4(v34, sub_1AF441114);

    if (v36 >> 62)
    {
      if (!sub_1AFDFE108())
      {
        goto LABEL_18;
      }
    }

    else if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:

LABEL_20:
    }

    sub_1AF48F7F8(v22);
    goto LABEL_18;
  }

  *&v38[0] = MEMORY[0x1E69E7CC0];
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  MEMORY[0x1EEE9AC00](v12);
  LOBYTE(v25) = 0;
  v26 = v38;
  MEMORY[0x1EEE9AC00](v13);
  v24[2] = sub_1AF449D54;
  v24[3] = v14;
  swift_bridgeObjectRetain_n();
  *&v40[0] = sub_1AF42B0F4(v11);
  *(&v40[0] + 1) = v15;
  sub_1AF412D4C(sub_1AF449DD8, v24, 1, 0x1000000000000000uLL, 0, v11, v40);
  if (!v8)
  {
    v9 = 0;

    v10 = *&v38[0];
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AF41388C(uint64_t a1, uint64_t a2, int a3, unint64_t a4, int a5, void *a6, uint64_t *a7)
{
  v9 = v8;
  v29 = a7;
  v30 = a6;
  v27 = a3;
  v28 = a5;
  v25 = a1;
  v26 = a2;
  v33[1] = *MEMORY[0x1E69E9840];
  v10 = *(v7 + 16);
  v24 = v7 + 16;
  v11 = MEMORY[0x1E69E7CC0];
  v31 = a4;
  if ((a4 & 0x1000000000000000) != 0)
  {

LABEL_5:
    v32[0] = sub_1AF0D4098(v11, sub_1AF44034C, sub_1AF0D3F10);
    v33[0] = v11;
    if (v10 >> 62)
    {
      v16 = sub_1AFDFE108();
    }

    else
    {
      v16 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_1AF4410E4(v31, sub_1AF4410A8);

    if (v16)
    {
      v17 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1B2719C70](v17, v10);
        }

        else
        {
          v18 = *(v10 + 8 * v17 + 32);
        }

        sub_1AF3DFFC4(v18, v27 & 1, v31, v28 & 1, v30, v25, v26, v32, v29, v33);
        if (v9)
        {
          break;
        }

        if (v16 == ++v17)
        {
          goto LABEL_15;
        }
      }

      sub_1AF4410E4(v31, sub_1AF441114);

      goto LABEL_19;
    }

LABEL_15:

    sub_1AF4410E4(v31, sub_1AF441114);

    if (v33[0] >> 62)
    {
      if (!sub_1AFDFE108())
      {
        goto LABEL_19;
      }
    }

    else if (!*((v33[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_19:
    }

    sub_1AF48F7F8(v19);
    goto LABEL_19;
  }

  v33[0] = MEMORY[0x1E69E7CC0];
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  MEMORY[0x1EEE9AC00](v12);
  LOBYTE(v22) = 0;
  v23 = v33;
  MEMORY[0x1EEE9AC00](v13);
  v21[2] = sub_1AF449D54;
  v21[3] = v14;
  swift_bridgeObjectRetain_n();
  v32[0] = sub_1AF42B0F4(v11);
  v32[1] = v15;
  sub_1AF412D4C(sub_1AF449DD8, v21, 1, 0x1000000000000000uLL, 0, v11, v32);
  if (!v8)
  {
    v9 = 0;

    v10 = v33[0];
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AF413C70(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, void *a6, uint64_t *a7)
{
  v9 = v8;
  v55 = a7;
  v53 = a6;
  v51 = a3;
  LODWORD(v52) = a5;
  v49 = a1;
  v50 = a2;
  v60 = *MEMORY[0x1E69E9840];
  v10 = *(v7 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  v54 = a4;
  if ((a4 & 0x1000000000000000) != 0)
  {

LABEL_5:
    v16 = sub_1AF0D4098(v11, sub_1AF44034C, sub_1AF0D3F10);
    v57 = v11;
    v58 = v16;
    if (v10 >> 62)
    {
      v17 = sub_1AFDFE108();
    }

    else
    {
      v17 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v48 = v7 + 16;

    sub_1AF4410E4(v54, sub_1AF4410A8);

    if (v17)
    {
      v18 = 0;
      v19 = v10;
      v20 = v10 & 0xC000000000000001;
      while (1)
      {
        if (v20)
        {
          v21 = MEMORY[0x1B2719C70](v18, v19);
        }

        else
        {
          v21 = v19[v18 + 4];
        }

        sub_1AF3E1430(v21, v51 & 1, v54, v52 & 1, v53, v49, v50, &v58, v55, &v57);
        if (v9)
        {
          break;
        }

        if (v17 == ++v18)
        {
          goto LABEL_16;
        }
      }

      sub_1AF4410E4(v54, sub_1AF441114);

      goto LABEL_31;
    }

    v19 = v10;
LABEL_16:

    sub_1AF4410E4(v54, sub_1AF441114);

    if (v57 >> 62)
    {
      if (!sub_1AFDFE108())
      {
LABEL_19:
        sub_1AF449B08(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v23 == type metadata accessor for Node(0))
        {
          v53 = v19;
          v24 = *v55;
          v25 = v55[1];
          v26 = *(v25 + 16);
          v27 = MEMORY[0x1E69E7CC0];
          if (v26)
          {
            v56 = MEMORY[0x1E69E7CC0];

            sub_1AFC07104(0, v26, 0);
            v28 = 32;
            v27 = v56;
            v54 = v25;
            do
            {
              v29 = *(v25 + v28);
              if (*(v24 + 16) && (v30 = sub_1AF0D3F10(*(v25 + v28)), (v31 & 1) != 0))
              {
                v32 = (*(v24 + 56) + 16 * v30);
                v33 = *v32;
                v34 = v32[1];
              }

              else
              {
                v33 = 0;
                v34 = 1;
              }

              v35 = sub_1AF419350(&v59, v29, v33, v34, v55);
              sub_1AF447EB0(v33, v34);
              v36 = v59;
              v56 = v27;
              v38 = *(v27 + 16);
              v37 = *(v27 + 24);
              if (v38 >= v37 >> 1)
              {
                v52 = v59;
                sub_1AFC07104(v37 > 1, v38 + 1, 1);
                v36 = v52;
                v27 = v56;
              }

              *(v27 + 16) = v38 + 1;
              v39 = v27 + 24 * v38;
              *(v39 + 32) = v35;
              *(v39 + 40) = v36;
              v28 += 8;
              --v26;
              v25 = v54;
            }

            while (v26);
          }

          v40 = sub_1AF8A9B50(v27);
          v42 = v41;

          v43 = v55;
          *v55 = v40;
          v43[1] = v42;
          goto LABEL_33;
        }

LABEL_31:

LABEL_33:
      }
    }

    else if (!*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

    sub_1AF48F7F8(v22);
    goto LABEL_19;
  }

  v58 = MEMORY[0x1E69E7CC0];
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  MEMORY[0x1EEE9AC00](v12);
  LOBYTE(v46) = 0;
  v47 = &v58;
  MEMORY[0x1EEE9AC00](v13);
  v45[2] = sub_1AF449D54;
  v45[3] = v14;
  swift_bridgeObjectRetain_n();
  *&v59 = sub_1AF42B0F4(v11);
  *(&v59 + 1) = v15;
  sub_1AF412D4C(sub_1AF449DD8, v45, 1, 0x1000000000000000uLL, 0, v11, &v59);
  if (!v8)
  {
    v9 = 0;

    v10 = v58;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AF41420C(uint64_t a1, uint64_t a2, char a3, unint64_t a4, char a5, void *a6, void *a7)
{
  v9 = v8;
  v25[1] = *MEMORY[0x1E69E9840];
  v12 = *(v7 + 24);

  if ((a4 & 0x1000000000000000) == 0)
  {
    v13 = sub_1AF42B320(v12, 0);

    v12 = v13;
  }

  v24 = MEMORY[0x1E69E7CC0];
  v25[0] = sub_1AF0D4098(MEMORY[0x1E69E7CC0], sub_1AF44034C, sub_1AF0D3F10);
  if (v12 >> 62)
  {
    v14 = sub_1AFDFE108();
  }

  else
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1AF4410E4(a4, sub_1AF4410A8);

  if (!v14)
  {
LABEL_13:

    sub_1AF4410E4(a4, sub_1AF441114);

    if (v24 >> 62)
    {
      if (!sub_1AFDFE108())
      {
        goto LABEL_17;
      }
    }

    else if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    sub_1AF48F6CC(v17);
    goto LABEL_17;
  }

  v15 = 0;
  while (1)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1B2719C70](v15, v12);
    }

    else
    {
      v16 = *(v12 + 8 * v15 + 32);
    }

    sub_1AF3E2468(v16, a3 & 1, a4, a5 & 1, a6, a1, a2, v25, a7, &v24);
    if (v9)
    {
      break;
    }

    if (v14 == ++v15)
    {
      goto LABEL_13;
    }
  }

  sub_1AF4410E4(a4, sub_1AF441114);

LABEL_17:
}

uint64_t sub_1AF4144D0(uint64_t a1, uint64_t a2, int a3, unint64_t a4, int a5, __objc2_class **a6, uint64_t *a7)
{
  v9 = v8;
  v53 = a7;
  v51 = a6;
  v49 = a3;
  v50 = a5;
  v47 = a1;
  v48 = a2;
  v57[1] = *MEMORY[0x1E69E9840];
  v11 = v7 + 16;
  v12 = *(v7 + 16);
  v46 = v11;
  v13 = MEMORY[0x1E69E7CC0];
  if ((a4 & 0x1000000000000000) != 0)
  {

LABEL_5:
    v52 = v9;
    v56[0] = sub_1AF0D4098(v13, sub_1AF44034C, sub_1AF0D3F10);
    v57[0] = v13;
    if (v12 >> 62)
    {
      v18 = sub_1AFDFE108();
    }

    else
    {
      v18 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_1AF4410E4(a4, sub_1AF4410A8);

    if (v18)
    {
      v19 = 0;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x1B2719C70](v19, v12);
        }

        else
        {
          v20 = *(v12 + 8 * v19 + 32);
        }

        v21 = v52;
        sub_1AF3E3638(v20, v49 & 1, a4, v50 & 1, v51, v47, v48, v56, v53, v57);
        v52 = v21;
        if (v21)
        {
          break;
        }

        if (v18 == ++v19)
        {
          goto LABEL_15;
        }
      }

      sub_1AF4410E4(a4, sub_1AF441114);

      goto LABEL_30;
    }

LABEL_15:

    sub_1AF4410E4(a4, sub_1AF441114);

    v45 = v12;
    if (v57[0] >> 62)
    {
      if (!sub_1AFDFE108())
      {
        goto LABEL_18;
      }
    }

    else if (!*((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      v24 = *v53;
      v23 = v53[1];
      v25 = v23[2];
      v26 = MEMORY[0x1E69E7CC0];
      if (v25)
      {
        v55 = MEMORY[0x1E69E7CC0];

        sub_1AFC07728(0, v25, 0);
        v27 = 4;
        v26 = v55;
        v51 = v23;
        do
        {
          v28 = v23[v27];
          if (*(v24 + 16) && (v29 = sub_1AF0D3F10(v23[v27]), (v30 & 1) != 0))
          {
            v31 = *(*(v24 + 56) + 8 * v29);
          }

          else
          {
            v31 = 0;
          }

          v32 = sub_1AF4195D0(&v54, v28, v31, v53);

          v33 = v54;
          v55 = v26;
          v35 = *(v26 + 16);
          v34 = *(v26 + 24);
          if (v35 >= v34 >> 1)
          {
            sub_1AFC07728(v34 > 1, v35 + 1, 1);
            v26 = v55;
          }

          *(v26 + 16) = v35 + 1;
          v36 = v26 + 16 * v35;
          *(v36 + 32) = v32;
          *(v36 + 40) = v33;
          ++v27;
          --v25;
          v23 = v51;
        }

        while (v25);
      }

      v37 = sub_1AF8AA17C(v26);
      v39 = v38;

      v40 = v53;
      *v53 = v37;
      v40[1] = v39;
LABEL_30:
    }

    sub_1AF48F7F8(v22);
    goto LABEL_18;
  }

  v57[0] = MEMORY[0x1E69E7CC0];
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  MEMORY[0x1EEE9AC00](v14);
  LOBYTE(v43) = 0;
  v44 = v57;
  MEMORY[0x1EEE9AC00](v15);
  v42[2] = sub_1AF449D54;
  v42[3] = v16;
  swift_bridgeObjectRetain_n();
  v56[0] = sub_1AF42B0F4(v13);
  v56[1] = v17;
  sub_1AF412D4C(sub_1AF449DD8, v42, 1, 0x1000000000000000uLL, 0, v13, v56);
  if (!v8)
  {
    v9 = 0;

    v12 = v57[0];
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AF414A20(uint64_t a1, uint64_t a2, int a3, unint64_t a4, int a5, void *a6, void *a7)
{
  p_flags = v8;
  v10 = v7;
  v144 = a5;
  v153 = a3;
  v154 = a1;
  v155 = a2;
  v164[1] = *MEMORY[0x1E69E9840];
  v14 = *v7;
  v137 = sub_1AFDFC318();
  v136 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v132 = v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v131 = v129 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v134 = v129 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v133 = v129 - v21;
  v22 = v7 + 2;
  v23 = v7[2];
  v129[1] = v22;
  v24 = MEMORY[0x1E69E7CC0];
  v143 = v10;
  v138 = v14;
  if ((a4 & 0x1000000000000000) != 0)
  {
  }

  else
  {
    v158 = MEMORY[0x1E69E7CC0];
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    MEMORY[0x1EEE9AC00](v25);
    MEMORY[0x1EEE9AC00](v26);
    v127 = sub_1AF449D54;
    v128 = v27;
    swift_bridgeObjectRetain_n();
    *&v159 = sub_1AF42B0F4(v24);
    *(&v159 + 1) = v28;
    sub_1AF412D4C(sub_1AF449DD8, &v126, 1, 0x1000000000000000uLL, 0, v24, &v159);
    if (v8)
    {
      goto LABEL_112;
    }

    p_flags = 0;

    v23 = v158;
    v10 = v143;
  }

  v29 = MEMORY[0x1E69E7CC0];
  v30 = sub_1AF0D4098(MEMORY[0x1E69E7CC0], sub_1AF44034C, sub_1AF0D3F10);
  v157 = v29;
  v158 = v30;
  if (v23 >> 62)
  {
    v31 = sub_1AFDFE108();
  }

  else
  {
    v31 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1AF4410E4(a4, sub_1AF4410A8);

  v135 = v23;
  if (!v31)
  {
LABEL_93:

    sub_1AF4410E4(a4, sub_1AF441114);

    if (v157 >> 62)
    {
      if (!sub_1AFDFE108())
      {
LABEL_96:

LABEL_103:
      }
    }

    else if (!*((v157 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_96;
    }

    sub_1AF48F7F8(v124);
    goto LABEL_96;
  }

  v32 = 0;
  v147 = v23 + 32;
  v148 = v23 & 0xC000000000000001;
  v130 = (v136 + 16);
  v129[3] = v136 + 8;
  v129[2] = v136 + 32;
  v142 = v144 & 1;
  v149 = v153 & 1;
  v140 = a6;
  v152 = a4;
  v139 = a7;
  v145 = v31;
  while (1)
  {
    if (v148)
    {
      v33 = MEMORY[0x1B2719C70](v32, v135);
    }

    else
    {
      v33 = *(v147 + 8 * v32);
    }

    if (*(*a7 + 16))
    {
      sub_1AF0D3F10(v33);
      if (v34)
      {
        goto LABEL_10;
      }
    }

    v35 = v158[2];
    v151 = v32;
    if (v35)
    {
      sub_1AF0D3F10(v33);
      if (v36)
      {
        goto LABEL_111;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v158;
    v158 = 0x8000000000000000;
    *&v159 = v38;
    v39 = sub_1AF0D3F10(v33);
    v41 = v40;
    v42 = *(v38 + 16) + ((v40 & 1) == 0);
    if (*(v38 + 24) < v42)
    {
      sub_1AF82BC4C(v42, isUniquelyReferenced_nonNull_native);
      v39 = sub_1AF0D3F10(v33);
      if ((v41 & 1) != (v43 & 1))
      {
        goto LABEL_110;
      }

LABEL_21:
      v44 = v159;
      if (v41)
      {
        goto LABEL_22;
      }

      goto LABEL_25;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v45 = v39;
    sub_1AF843F7C();
    v39 = v45;
    v10 = v143;
    v44 = v159;
    if (v41)
    {
LABEL_22:
      *(v44[7] + v39) = 1;
      goto LABEL_26;
    }

LABEL_25:
    v44[(v39 >> 6) + 8] |= 1 << v39;
    *(v44[6] + 8 * v39) = v33;
    *(v44[7] + v39) = 1;
    ++v44[2];
LABEL_26:
    v158 = v44;

    sub_1AF449890(0, &unk_1EB63F440, type metadata accessor for GraphCodeGen.CFGNode, MEMORY[0x1E69E6720]);
    v146 = v46;
    if ((v153 & 1) == 0)
    {
      v156 = p_flags;
      v57 = a7;
      v58 = a6;

      v59 = a4;
      goto LABEL_52;
    }

    if (*v33 == _TtC3VFX12SubGraphNode && *(v33 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) && (v47 = swift_dynamicCastClass()) != 0)
    {
      v156 = v47;
      v48 = *v130;
      v49 = v133;
      v50 = v137;
      (*v130)(v133, v33 + OBJC_IVAR____TtC3VFX4Node_authoringID, v137);
      v48(v134, v49, v50);

      v51 = a6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_1AF4276E0(0, a6[2] + 1, 1, a6, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v53 = v51[2];
      v52 = v51[3];
      v141 = v33;
      if (v53 >= v52 >> 1)
      {
        v51 = sub_1AF4276E0(v52 > 1, v53 + 1, 1, v51, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v54 = v136;
      v55 = v137;
      (*(v136 + 8))(v133, v137);
      v51[2] = v53 + 1;
      (*(v54 + 32))(v51 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v53, v134, v55);
      *&v159 = sub_1AF4415B4(MEMORY[0x1E69E7CC0]);
      *(&v159 + 1) = v56;
      sub_1AF414A20(v154, v155, 1, v152, v144 & 1, v51, &v159);
      if (p_flags)
      {

LABEL_98:

        a4 = v152;
LABEL_102:
        sub_1AF4410E4(a4, sub_1AF441114);

        goto LABEL_103;
      }

      a4 = v152;
      v10 = v143;
      v33 = v141;
    }

    else
    {
    }

    sub_1AF3F5CE4(1, a4, v144 & 1, v33, v10, a6, v154, v155, &v158, a7, &v157);
    if (p_flags)
    {
      goto LABEL_101;
    }

    v60 = type metadata accessor for Node(0);
    v61 = swift_dynamicCastMetatype();
    v156 = 0;
    if (!v61)
    {
      v57 = a7;
      v58 = a6;
      type metadata accessor for AuthoringNode(0);
      v59 = v152;
      goto LABEL_52;
    }

    v62 = v33[2];
    cache = v62->cache;
    if (cache)
    {
      break;
    }

    v57 = a7;

    v64 = MEMORY[0x1E69E7CC0];
LABEL_51:
    v33[2] = v64;

    v58 = v140;
    v59 = v152;
    v10 = v143;
LABEL_52:
    v74 = v33;
    v75 = swift_allocObject();
    v77 = v154;
    v76 = v155;
    *(v75 + 16) = v154;
    *(v75 + 24) = v76;

    sub_1AF4410E4(v59, sub_1AF4410A8);

    v78 = swift_allocObject();
    *(v78 + 16) = v149;
    *(v78 + 24) = v59;
    *(v78 + 32) = v142;
    *(v78 + 40) = v57;
    *(v78 + 48) = v10;
    *(v78 + 56) = v58;
    *(v78 + 64) = v77;
    *(v78 + 72) = v76;
    *(v78 + 80) = &v158;
    *(v78 + 88) = &v157;
    v79 = swift_allocObject();
    *(v79 + 16) = sub_1AF44420C;
    *(v79 + 24) = v78;
    *&v159 = v10;
    *(&v159 + 1) = v74;
    v160 = v58;
    v161 = sub_1AF449D48;
    v162 = v79;
    v163 = &v157;
    swift_bridgeObjectRetain_n();

    v80 = v156;
    sub_1AF449DC0(&v159, v164);
    v81 = v74;
    if (v80)
    {

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      goto LABEL_98;
    }

    v156 = 0;

    v82 = v58;

    v83 = v164[0];
    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();

    v84 = swift_retain_n();
    v85 = sub_1AF6342E4(v84, v74);
    a7 = v57;
    v150 = v83;
    if (v85 == 1)
    {
      v86 = v57[1];
      v87 = swift_isUniquelyReferenced_nonNull_native();
      a4 = v152;
      if ((v87 & 1) == 0)
      {
        v86 = sub_1AF422330(0, *(v86 + 2) + 1, 1, v86, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      }

      a6 = v82;
      v89 = *(v86 + 2);
      v88 = *(v86 + 3);
      p_flags = v156;
      if (v89 >= v88 >> 1)
      {
        v86 = sub_1AF422330(v88 > 1, v89 + 1, 1, v86, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      }

      *(v86 + 2) = v89 + 1;
      *&v86[8 * v89 + 32] = v81;
      a7[1] = v86;
      v10 = v143;
    }

    else
    {
      v90 = v85;

      sub_1AF0DB74C(v90);
      a4 = v152;
      a6 = v82;
      p_flags = v156;
    }

    v91 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v158;
    v158 = 0x8000000000000000;
    *&v159 = v92;
    v93 = sub_1AF0D3F10(v81);
    v95 = v94;
    v96 = *(v92 + 16) + ((v94 & 1) == 0);
    if (*(v92 + 24) >= v96)
    {
      if ((v91 & 1) == 0)
      {
        v123 = v93;
        sub_1AF843F7C();
        v93 = v123;
        v10 = v143;
      }
    }

    else
    {
      sub_1AF82BC4C(v96, v91);
      v93 = sub_1AF0D3F10(v81);
      if ((v95 & 1) != (v97 & 1))
      {
        goto LABEL_110;
      }
    }

    v31 = v145;
    v98 = v159;
    if (v95)
    {
      *(*(v159 + 56) + v93) = 0;
    }

    else
    {
      *(v159 + 8 * (v93 >> 6) + 64) |= 1 << v93;
      *(v98[6] + 8 * v93) = v81;
      *(v98[7] + v93) = 0;
      ++v98[2];
    }

    v158 = v98;

    v32 = v151;
    if (v153)
    {
    }

    else
    {
      sub_1AF3F5CE4(v149, a4, v144 & 1, v81, v10, a6, v154, v155, &v158, a7, &v157);
      if (p_flags)
      {

LABEL_101:

        goto LABEL_102;
      }

      if (*v81 == _TtC3VFX12SubGraphNode && v81)
      {
        if (*(v81 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) && (v99 = swift_dynamicCastClass()) != 0)
        {
          v156 = v99;
          v100 = *v130;
          v101 = v131;
          v102 = v137;
          (*v130)(v131, v81 + OBJC_IVAR____TtC3VFX4Node_authoringID, v137);
          v100(v132, v101, v102);

          v103 = a6;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v103 = sub_1AF4276E0(0, a6[2] + 1, 1, a6, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v105 = v103[2];
          v104 = v103[3];
          v106 = v81;
          if (v105 >= v104 >> 1)
          {
            v103 = sub_1AF4276E0(v104 > 1, v105 + 1, 1, v103, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v107 = v136;
          v108 = v137;
          (*(v136 + 8))(v131, v137);
          v103[2] = v105 + 1;
          (*(v107 + 32))(v103 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v105, v132, v108);
          *&v159 = sub_1AF4415B4(MEMORY[0x1E69E7CC0]);
          *(&v159 + 1) = v109;
          sub_1AF414A20(v154, v155, v149, v152, v144 & 1, v103, &v159);

          v10 = v143;
          a7 = v139;
          v81 = v106;
          v31 = v145;
          v32 = v151;
          a4 = v152;
        }

        else
        {
          v31 = v145;
        }
      }

      v110 = type metadata accessor for Node(0);
      if (swift_dynamicCastMetatype())
      {
        v111 = v81[2];
        v112 = v111->cache;
        if (v112)
        {
          v141 = v81;
          v156 = 0;
          v164[0] = MEMORY[0x1E69E7CC0];

          sub_1AFC05E7C(0, v112, 0);
          v113 = v164[0];
          v146 = v111;
          v114 = v111 + 1;
          while (1)
          {
            p_flags = &v114[-1].info->flags;
            isa = v114->isa;
            v116 = v158;
            if (v158[2])
            {
              v117 = sub_1AF0D3F10(v114[-1].info);
              if ((v118 & 1) != 0 && (*(*(v116 + 56) + v117) & 1) == 0)
              {
                goto LABEL_109;
              }
            }

            type metadata accessor for _PlaceholderNode(0);
            v119 = swift_allocObject();
            v161 = v110;
            v162 = &off_1EE8015B0;
            *&v159 = p_flags;
            sub_1AF441194(&v159, v119 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode);
            v119[4] = 0;
            v119[2] = MEMORY[0x1E69E7CC0];
            v119[3] = 0;
            swift_retain_n();
            sub_1AFDFC308();
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v159);

            v164[0] = v113;
            v121 = *(v113 + 16);
            v120 = *(v113 + 24);
            if (v121 >= v120 >> 1)
            {
              sub_1AFC05E7C(v120 > 1, v121 + 1, 1);
              v113 = v164[0];
            }

            v114 = (v114 + 16);
            *(v113 + 16) = v121 + 1;
            v122 = v113 + 16 * v121;
            *(v122 + 32) = v119;
            *(v122 + 40) = isa;
            if (!--v112)
            {

              v81 = v141;
              p_flags = v156;
              v10 = v143;
              v31 = v145;
              v32 = v151;
              goto LABEL_92;
            }
          }
        }

        v113 = MEMORY[0x1E69E7CC0];
LABEL_92:
        v81[2] = v113;

        a6 = v140;
        a4 = v152;
        a7 = v139;
      }

      else
      {
        type metadata accessor for AuthoringNode(0);

        a6 = v140;
      }
    }

LABEL_10:
    ++v32;

    if (v32 == v31)
    {
      goto LABEL_93;
    }
  }

  v164[0] = MEMORY[0x1E69E7CC0];
  v141 = v33;

  sub_1AFC05E7C(0, cache, 0);
  v64 = v164[0];
  v150 = v62;
  v65 = v62 + 1;
  while (1)
  {
    info = v65[-1].info;
    v67 = v65->isa;
    v68 = v158;
    if (v158[2])
    {
      v69 = sub_1AF0D3F10(v65[-1].info);
      if ((v70 & 1) != 0 && (*(*(v68 + 56) + v69) & 1) == 0)
      {
        break;
      }
    }

    type metadata accessor for _PlaceholderNode(0);
    p_flags = swift_allocObject();
    v161 = v60;
    v162 = &off_1EE8015B0;
    *&v159 = info;
    sub_1AF441194(&v159, p_flags + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode);
    p_flags[4] = 0;
    p_flags[2] = MEMORY[0x1E69E7CC0];
    p_flags[3] = 0;
    swift_retain_n();
    sub_1AFDFC308();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v159);

    v164[0] = v64;
    v72 = *(v64 + 16);
    v71 = *(v64 + 24);
    if (v72 >= v71 >> 1)
    {
      sub_1AFC05E7C(v71 > 1, v72 + 1, 1);
      v64 = v164[0];
    }

    v65 = (v65 + 16);
    *(v64 + 16) = v72 + 1;
    v73 = v64 + 16 * v72;
    *(v73 + 32) = p_flags;
    *(v73 + 40) = v67;
    if (!--cache)
    {

      v33 = v141;
      v57 = v139;
      goto LABEL_51;
    }
  }

  sub_1AF0D3F10(info);
  __break(1u);
LABEL_109:
  sub_1AF0D3F10(p_flags);
  __break(1u);
LABEL_110:
  sub_1AFDFF1A8();
  __break(1u);
LABEL_111:
  LODWORD(v128) = 0;
  v127 = 156;
  sub_1AFDFE518();
  __break(1u);
LABEL_112:

  __break(1u);
  return result;
}

uint64_t sub_1AF416014(uint64_t a1, uint64_t a2, int a3, unint64_t a4, int a5, void *a6, void *a7)
{
  v9 = v8;
  v10 = v7;
  v143 = a5;
  v151 = a3;
  v152 = a1;
  v153 = a2;
  v192 = *MEMORY[0x1E69E9840];
  v14 = *v10;
  v15 = sub_1AFDFC318();
  v137 = *(v15 - 8);
  v138 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v133 = v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v132 = v130 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v135 = v130 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v134 = v130 - v22;
  v154 = v10;
  v23 = v10[2];
  v130[1] = v10 + 2;
  v24 = MEMORY[0x1E69E7CC0];
  v156 = a4;
  v139 = v14;
  if ((a4 & 0x1000000000000000) != 0)
  {
  }

  else
  {
    *&v174 = MEMORY[0x1E69E7CC0];
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    MEMORY[0x1EEE9AC00](v25);
    MEMORY[0x1EEE9AC00](v26);
    v128 = sub_1AF449D54;
    v129 = v27;
    swift_bridgeObjectRetain_n();
    *&v182 = sub_1AF42B0F4(v24);
    *(&v182 + 1) = v28;
    sub_1AF412D4C(sub_1AF449DD8, &v127, 1, 0x1000000000000000uLL, 0, v24, &v182);
    if (v8)
    {
      goto LABEL_109;
    }

    v9 = 0;

    v23 = v174;
  }

  v29 = MEMORY[0x1E69E7CC0];
  v30 = sub_1AF0D4098(MEMORY[0x1E69E7CC0], sub_1AF44034C, sub_1AF0D3F10);
  v164 = v29;
  v165 = v30;
  if (v23 >> 62)
  {
    v31 = sub_1AFDFE108();
  }

  else
  {
    v31 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1AF4410E4(v156, sub_1AF4410A8);

  if (!v31)
  {
LABEL_95:

    sub_1AF4410E4(v156, sub_1AF441114);

    if (v164 >> 62)
    {
      if (!sub_1AFDFE108())
      {
        goto LABEL_101;
      }
    }

    else if (!*((v164 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_101:
    }

    sub_1AF48F7F8(v125);
    goto LABEL_101;
  }

  v32 = 0;
  v145 = v23 + 32;
  v146 = v23 & 0xC000000000000001;
  v130[3] = v137 + 8;
  v131 = (v137 + 16);
  v130[2] = v137 + 32;
  v141 = v143 & 1;
  v148 = v151 & 1;
  v147 = v23;
  v157 = a6;
  v140 = a7;
  v142 = v31;
  while (1)
  {
    if (v146)
    {
      v33 = MEMORY[0x1B2719C70](v32, v23);
    }

    else
    {
      v33 = *(v145 + 8 * v32);
    }

    if (*(*a7 + 16))
    {
      sub_1AF0D3F10(v33);
      if (v34)
      {
        goto LABEL_12;
      }
    }

    v35 = v165[2];
    v150 = v32;
    if (v35)
    {
      sub_1AF0D3F10(v33);
      if (v36)
      {
        goto LABEL_108;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v165;
    *&v182 = v165;
    v165 = 0x8000000000000000;
    v39 = sub_1AF0D3F10(v33);
    v41 = v40;
    v42 = *(v38 + 16) + ((v40 & 1) == 0);
    if (*(v38 + 24) >= v42)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v123 = v39;
        sub_1AF843F7C();
        v39 = v123;
      }
    }

    else
    {
      sub_1AF82BC4C(v42, isUniquelyReferenced_nonNull_native);
      v39 = sub_1AF0D3F10(v33);
      if ((v41 & 1) != (v43 & 1))
      {
        goto LABEL_107;
      }
    }

    v44 = v182;
    if (v41)
    {
      *(*(v182 + 56) + v39) = 1;
    }

    else
    {
      *(v182 + 8 * (v39 >> 6) + 64) |= 1 << v39;
      *(v44[6] + 8 * v39) = v33;
      *(v44[7] + v39) = 1;
      ++v44[2];
    }

    v165 = v44;

    sub_1AF449B08(0, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720]);
    v144 = v45;
    if ((v151 & 1) == 0)
    {
      v155 = v9;

      goto LABEL_55;
    }

    if (*v33 == _TtC3VFX12SubGraphNode)
    {
      if (*(v33 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph))
      {
        v155 = v9;
        v149 = v33;
        if (swift_dynamicCastClass())
        {
          v46 = *v131;
          v47 = v134;
          v48 = v138;
          (*v131)(v134, v149 + OBJC_IVAR____TtC3VFX4Node_authoringID, v138);
          v49 = v47;
          v50 = v157;
          v46(v135, v49, v48);

          v51 = v50;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v51 = sub_1AF4276E0(0, v50[2] + 1, 1, v50, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v53 = v51[2];
          v52 = v51[3];
          if (v53 >= v52 >> 1)
          {
            v51 = sub_1AF4276E0(v52 > 1, v53 + 1, 1, v51, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v55 = v137;
          v54 = v138;
          (*(v137 + 8))(v134, v138);
          v51[2] = v53 + 1;
          (*(v55 + 32))(v51 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v53, v135, v54);
          *&v182 = sub_1AF4417E8(MEMORY[0x1E69E7CC0]);
          *(&v182 + 1) = v56;
          v57 = v155;
          sub_1AF416014(v152, v153, 1, v156, v143 & 1, v51, &v182);
          v9 = v57;
          if (v57)
          {

            sub_1AF4410E4(v156, sub_1AF441114);
            goto LABEL_100;
          }

          a7 = v140;
          a6 = v157;
          v33 = v149;
        }

        else
        {
          v33 = v149;

          v9 = v155;
        }
      }

      else
      {
      }
    }

    else
    {
    }

    sub_1AF3F760C(1, v156, v143 & 1, v33, v154, a6, v152, v153, &v165, a7, &v164);
    if (v9)
    {

      sub_1AF4410E4(v156, sub_1AF441114);
      goto LABEL_100;
    }

    v158 = type metadata accessor for Node(0);
    v58 = swift_dynamicCastMetatype();
    v155 = 0;
    if (!v58)
    {
      type metadata accessor for AuthoringNode(0);
      goto LABEL_55;
    }

    v59 = v33[2];
    cache = v59->cache;
    if (cache)
    {
      break;
    }

    v61 = MEMORY[0x1E69E7CC0];
LABEL_54:
    v33[2] = v61;

LABEL_55:
    v73 = v33;
    v74 = swift_allocObject();
    v76 = v152;
    v75 = v153;
    *(v74 + 16) = v152;
    *(v74 + 24) = v75;
    v77 = v154;

    v78 = v156;
    sub_1AF4410E4(v156, sub_1AF4410A8);

    v79 = swift_allocObject();
    *(v79 + 16) = v148;
    *(v79 + 24) = v78;
    *(v79 + 32) = v141;
    *(v79 + 40) = a7;
    *(v79 + 48) = v77;
    v80 = v157;
    *(v79 + 56) = v157;
    *(v79 + 64) = v76;
    *(v79 + 72) = v75;
    *(v79 + 80) = &v165;
    *(v79 + 88) = &v164;
    v81 = a7;
    v82 = swift_allocObject();
    *(v82 + 16) = sub_1AF443FD8;
    *(v82 + 24) = v79;
    *&v159 = v77;
    *(&v159 + 1) = v73;
    v160 = v80;
    v161 = sub_1AF441390;
    v162 = v82;
    v163 = &v164;
    swift_bridgeObjectRetain_n();

    v83 = v155;
    sub_1AF441360(&v159);
    if (v83)
    {

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      sub_1AF4410E4(v156, sub_1AF441114);
LABEL_100:

      goto LABEL_101;
    }

    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();

    v190[4] = v186;
    v190[5] = v187;
    v190[6] = v188;
    v191 = v189;
    v190[0] = v182;
    v190[1] = v183;
    v190[2] = v184;
    v190[3] = v185;
    v84 = MEMORY[0x1E69E6720];
    sub_1AF0D8094(v190, &v166, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
    sub_1AF0D8094(v190, &v166, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, v84, sub_1AF449B08);
    sub_1AF634450(v190, v73, &v174);
    v85 = v81;
    v86 = v73;
    if (v174 == 1)
    {
      v170 = v178;
      v171 = v179;
      v172 = v180;
      v173 = v181;
      v166 = v174;
      v167 = v175;
      v168 = v176;
      v169 = v177;
      sub_1AF44943C(&v166, sub_1AF443FDC);
      v87 = v81[1];
      v88 = swift_isUniquelyReferenced_nonNull_native();
      v23 = v147;
      v9 = 0;
      a7 = v81;
      if ((v88 & 1) == 0)
      {
        v87 = sub_1AF422330(0, *(v87 + 2) + 1, 1, v87, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      }

      a6 = v157;
      v90 = *(v87 + 2);
      v89 = *(v87 + 3);
      if (v90 >= v89 >> 1)
      {
        v87 = sub_1AF422330(v89 > 1, v90 + 1, 1, v87, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      }

      sub_1AF444058(v190, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
      *(v87 + 2) = v90 + 1;
      *&v87[8 * v90 + 32] = v86;
      a7[1] = v87;
    }

    else
    {
      sub_1AF444058(v190, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
      v170 = v178;
      v171 = v179;
      v172 = v180;
      v173 = v181;
      v166 = v174;
      v167 = v175;
      v168 = v176;
      v169 = v177;
      sub_1AF44943C(&v166, sub_1AF443FDC);
      v23 = v147;
      a6 = v157;
      v9 = 0;
      a7 = v85;
    }

    v91 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v165;
    *&v174 = v165;
    v165 = 0x8000000000000000;
    v93 = sub_1AF0D3F10(v86);
    v95 = v94;
    v96 = *(v92 + 16) + ((v94 & 1) == 0);
    if (*(v92 + 24) >= v96)
    {
      if ((v91 & 1) == 0)
      {
        v124 = v93;
        sub_1AF843F7C();
        v93 = v124;
      }
    }

    else
    {
      sub_1AF82BC4C(v96, v91);
      v93 = sub_1AF0D3F10(v86);
      if ((v95 & 1) != (v97 & 1))
      {
        goto LABEL_107;
      }
    }

    v32 = v150;
    v98 = v174;
    if (v95)
    {
      *(*(v174 + 56) + v93) = 0;
    }

    else
    {
      *(v174 + 8 * (v93 >> 6) + 64) |= 1 << v93;
      *(v98[6] + 8 * v93) = v86;
      *(v98[7] + v93) = 0;
      ++v98[2];
    }

    v165 = v98;

    v31 = v142;
    if ((v151 & 1) == 0)
    {
      sub_1AF3F760C(v148, v156, v143 & 1, v86, v154, a6, v152, v153, &v165, a7, &v164);
      if (*v86 == _TtC3VFX12SubGraphNode && v86)
      {
        v149 = v86;
        if (*(v86 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) && swift_dynamicCastClass())
        {
          v99 = v132;
          v100 = *v131;
          v101 = v138;
          (*v131)(v132, v149 + OBJC_IVAR____TtC3VFX4Node_authoringID, v138);
          v102 = v99;
          v103 = v157;
          v100(v133, v102, v101);

          v104 = v103;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v104 = sub_1AF4276E0(0, v103[2] + 1, 1, v103, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v106 = v104[2];
          v105 = v104[3];
          if (v106 >= v105 >> 1)
          {
            v104 = sub_1AF4276E0(v105 > 1, v106 + 1, 1, v104, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v108 = v137;
          v107 = v138;
          (*(v137 + 8))(v132, v138);
          v104[2] = v106 + 1;
          (*(v108 + 32))(v104 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v106, v133, v107);
          *&v166 = sub_1AF4417E8(MEMORY[0x1E69E7CC0]);
          *(&v166 + 1) = v109;
          sub_1AF416014(v152, v153, v148, v156, v143 & 1, v104, &v166);

          a7 = v140;
          v23 = v147;
          a6 = v157;
          v86 = v149;
          v32 = v150;
          v31 = v142;
        }

        else
        {
          v86 = v149;
        }
      }

      v158 = type metadata accessor for Node(0);
      if (swift_dynamicCastMetatype())
      {
        v110 = v86[2];
        v111 = v110->cache;
        if (v111)
        {
          v149 = v86;
          v155 = 0;
          *&v166 = MEMORY[0x1E69E7CC0];

          sub_1AFC05E7C(0, v111, 0);
          v112 = v166;
          v144 = v110;
          v113 = v110 + 1;
          while (1)
          {
            info = v113[-1].info;
            isa = v113->isa;
            v115 = v165;
            v116 = MEMORY[0x1E69E7CC0];
            if (v165[2])
            {
              v117 = sub_1AF0D3F10(v113[-1].info);
              if ((v118 & 1) != 0 && (*(*(v115 + 56) + v117) & 1) == 0)
              {
                goto LABEL_106;
              }
            }

            type metadata accessor for _PlaceholderNode(0);
            v119 = swift_allocObject();
            *(&v175 + 1) = v158;
            *&v176 = &off_1EE8015B0;
            *&v174 = info;
            sub_1AF441194(&v174, v119 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode);
            v119[3] = 0;
            v119[4] = 0;
            v119[2] = v116;
            swift_retain_n();
            sub_1AFDFC308();
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v174);

            *&v166 = v112;
            v121 = *(v112 + 16);
            v120 = *(v112 + 24);
            if (v121 >= v120 >> 1)
            {
              sub_1AFC05E7C(v120 > 1, v121 + 1, 1);
              v112 = v166;
            }

            v113 = (v113 + 16);
            *(v112 + 16) = v121 + 1;
            v122 = v112 + 16 * v121;
            *(v122 + 32) = v119;
            *(v122 + 40) = isa;
            if (!--v111)
            {

              v86 = v149;
              v32 = v150;
              v9 = v155;
              a7 = v140;
              v31 = v142;
              goto LABEL_93;
            }
          }
        }

        v112 = MEMORY[0x1E69E7CC0];
LABEL_93:
        v86[2] = v112;

        v23 = v147;
        a6 = v157;
        goto LABEL_11;
      }

      type metadata accessor for AuthoringNode(0);
    }

LABEL_11:
    v178 = v186;
    v179 = v187;
    v180 = v188;
    v181 = v189;
    v174 = v182;
    v175 = v183;
    v176 = v184;
    v177 = v185;
    sub_1AF444058(&v174, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
LABEL_12:

    if (++v32 == v31)
    {
      goto LABEL_95;
    }
  }

  *&v174 = MEMORY[0x1E69E7CC0];
  v149 = v33;

  sub_1AFC05E7C(0, cache, 0);
  v61 = v174;
  v136 = v59;
  v62 = v59 + 1;
  while (1)
  {
    info = v62[-1].info;
    v64 = v62->isa;
    v65 = v165;
    v66 = MEMORY[0x1E69E7CC0];
    if (v165[2])
    {
      v67 = sub_1AF0D3F10(v62[-1].info);
      if ((v68 & 1) != 0 && (*(*(v65 + 56) + v67) & 1) == 0)
      {
        break;
      }
    }

    type metadata accessor for _PlaceholderNode(0);
    v69 = swift_allocObject();
    *&v184 = &off_1EE8015B0;
    *(&v183 + 1) = v158;
    *&v182 = info;
    sub_1AF441194(&v182, v69 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode);
    v69[3] = 0;
    v69[4] = 0;
    v69[2] = v66;
    swift_retain_n();
    sub_1AFDFC308();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v182);

    *&v174 = v61;
    v71 = *(v61 + 16);
    v70 = *(v61 + 24);
    if (v71 >= v70 >> 1)
    {
      sub_1AFC05E7C(v70 > 1, v71 + 1, 1);
      v61 = v174;
    }

    v62 = (v62 + 16);
    *(v61 + 16) = v71 + 1;
    v72 = v61 + 16 * v71;
    *(v72 + 32) = v69;
    *(v72 + 40) = v64;
    if (!--cache)
    {

      v33 = v149;
      a7 = v140;
      goto LABEL_54;
    }
  }

LABEL_106:
  sub_1AF0D3F10(info);
  __break(1u);
LABEL_107:
  sub_1AFDFF1A8();
  __break(1u);
LABEL_108:
  LODWORD(v129) = 0;
  v128 = 156;
  sub_1AFDFE518();
  __break(1u);
LABEL_109:

  __break(1u);
  return result;
}

uint64_t sub_1AF41774C(void *a1, uint64_t a2, char a3, unint64_t a4, char a5, __objc2_class **a6, uint64_t *a7)
{
  v43[1] = *MEMORY[0x1E69E9840];
  v12 = *(v7 + 24);

  if ((a4 & 0x1000000000000000) == 0)
  {
    v13 = sub_1AF42B320(v12, 0);

    v12 = v13;
  }

  v42 = MEMORY[0x1E69E7CC0];
  v43[0] = sub_1AF0D4098(MEMORY[0x1E69E7CC0], sub_1AF44034C, sub_1AF0D3F10);
  if (v12 >> 62)
  {
    v14 = sub_1AFDFE108();
  }

  else
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1AF4410E4(a4, sub_1AF4410A8);

  if (v14)
  {
    v15 = 0;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1B2719C70](v15, v12);
      }

      else
      {
        v16 = *(v12 + 8 * v15 + 32);
      }

      sub_1AF3E5F1C(v16, a3 & 1, a4, a5 & 1, a6, a1, a2, v43, a7, &v42);
      if (v8)
      {
        break;
      }

      if (v14 == ++v15)
      {
        goto LABEL_13;
      }
    }

    sub_1AF4410E4(a4, sub_1AF441114);

    goto LABEL_20;
  }

LABEL_13:

  sub_1AF4410E4(a4, sub_1AF441114);

  if (!(v42 >> 62))
  {
    v17 = a7;
    if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v17 = a7;
  if (sub_1AFDFE108())
  {
LABEL_15:

    sub_1AF48F6CC(v18);
  }

LABEL_16:
  if (type metadata accessor for AuthoringNode(0) != MEMORY[0x1E69E6530])
  {
LABEL_20:

    goto LABEL_21;
  }

  v19 = *v17;
  v20 = v17[1];
  v21 = *(v20 + 16);
  if (!v21)
  {

    v22 = sub_1AF8A9FB0(MEMORY[0x1E69E7CC0]);
    v24 = v23;

    *v17 = v22;
    v17[1] = v24;
LABEL_21:
  }

  sub_1AFC077F8(0, v21, 0);
  if (*(v19 + 16))
  {
    sub_1AF0D3F10(*(v20 + 32));
  }

  swift_dynamicCast();
  v26 = sub_1AF97228C();
  v27 = sub_1AF3D6FA0(v26, a7);

  v28 = *(v27 + 16);
  if (v28)
  {
    v41 = MEMORY[0x1E69E7CC0];
    sub_1AFC05D04(0, v28, 0);
    v29 = *(v41 + 16);
    v30 = 16 * v29;
    v31 = (v27 + 40);
    do
    {
      v33 = *(v31 - 1);
      if (v33)
      {
        v34 = *v31;
      }

      else
      {
        v34 = 0;
      }

      v35 = *(v41 + 24);
      v36 = v29 + 1;

      if (v29 >= v35 >> 1)
      {
        sub_1AFC05D04(v35 > 1, v36, 1);
      }

      v31 += 2;
      *(v41 + 16) = v36;
      v32 = v41 + v30;
      *(v32 + 32) = v33;
      *(v32 + 40) = v34;
      v30 += 16;
      ++v29;
      --v28;
    }

    while (v28);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AF417BB0(void *a1, uint64_t a2, int a3, uint64_t a4, int a5, __objc2_class **a6, uint64_t *a7)
{
  v9 = v8;
  v54 = a6;
  v50 = a3;
  v51 = a5;
  v48 = a1;
  v49 = a2;
  v58[1] = *MEMORY[0x1E69E9840];
  v11 = *(v7 + 16);
  v47 = v7 + 16;
  v12 = MEMORY[0x1E69E7CC0];
  v53 = a4;
  if ((a4 & 0x1000000000000000) != 0)
  {
  }

  else
  {
    v58[0] = MEMORY[0x1E69E7CC0];
    v13 = swift_allocObject();
    v14 = &v47;
    *(v13 + 16) = v11;
    MEMORY[0x1EEE9AC00](v13);
    LOBYTE(v45) = 0;
    v46 = v58;
    MEMORY[0x1EEE9AC00](v15);
    v16 = v44;
    v44[2] = sub_1AF449D54;
    v44[3] = v17;
    swift_bridgeObjectRetain_n();
    v57[0] = sub_1AF42B0F4(v12);
    v57[1] = v18;
    sub_1AF412D4C(sub_1AF441EF8, v44, 1, 0x1000000000000000uLL, 0, v12, v57);
    if (v8)
    {

      __break(1u);
      goto LABEL_28;
    }

    v9 = 0;

    v11 = v58[0];
  }

  v52 = a7;
  v57[0] = sub_1AF0D4098(v12, sub_1AF44034C, sub_1AF0D3F10);
  v58[0] = v12;
  if (v11 >> 62)
  {
    v19 = sub_1AFDFE108();
  }

  else
  {
    v19 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1AF4410E4(v53, sub_1AF4410A8);

  if (v19)
  {
    v20 = 0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1B2719C70](v20, v11);
      }

      else
      {
        v21 = *(v11 + 8 * v20 + 32);
      }

      sub_1AF3E707C(v21, v50 & 1, v53, v51 & 1, v54, v48, v49, v57, v52, v58);
      if (v9)
      {
        break;
      }

      if (v19 == ++v20)
      {
        goto LABEL_15;
      }
    }

    sub_1AF4410E4(v53, sub_1AF441114);

    goto LABEL_22;
  }

LABEL_15:

  sub_1AF4410E4(v53, sub_1AF441114);

  if (v58[0] >> 62)
  {
    v28 = sub_1AFDFE108();
    v22 = v52;
    if (!v28)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v22 = v52;
  if (*((v58[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:

    sub_1AF48F7F8(v23);
  }

LABEL_18:
  if (type metadata accessor for Node(0) != MEMORY[0x1E69E6530])
  {
LABEL_22:

    goto LABEL_23;
  }

  v16 = *v22;
  v14 = v22[1];
  v8 = v14[2];
  if (!v8)
  {

    v24 = sub_1AF8A9FB0(MEMORY[0x1E69E7CC0]);
    v26 = v25;

    *v22 = v24;
    v22[1] = v26;
LABEL_23:
  }

LABEL_28:
  v56 = MEMORY[0x1E69E7CC0];

  sub_1AFC077F8(0, v8, 0);
  v29 = v16[2];
  if (v29)
  {
    v30 = sub_1AF0D3F10(v14[4]);
    if (v31)
    {
      v29 = *(v16[7] + 8 * v30);
    }

    else
    {
      v29 = 0;
    }
  }

  v55 = v29;
  swift_dynamicCast();
  v32 = sub_1AF971F68();
  v33 = sub_1AF3D80E8(v32, v52);

  v34 = *(v33 + 16);
  if (v34)
  {
    v55 = MEMORY[0x1E69E7CC0];
    sub_1AFC05E7C(0, v34, 0);
    v35 = v55;
    v36 = *(v55 + 16);
    v37 = 16 * v36;
    v38 = (v33 + 40);
    do
    {
      v40 = *(v38 - 1);
      v41 = *v38;
      v55 = v35;
      v42 = v36 + 1;
      v43 = *(v35 + 24);

      if (v36 >= v43 >> 1)
      {
        sub_1AFC05E7C(v43 > 1, v42, 1);
        v35 = v55;
      }

      v38 += 2;
      *(v35 + 16) = v42;
      v39 = v35 + v37;
      *(v39 + 32) = v40;
      *(v39 + 40) = v41;
      v37 += 16;
      ++v36;
      --v34;
    }

    while (v34);
  }

  __break(1u);
  return result;
}

unint64_t sub_1AF418138(__objc2_class **a1, uint64_t a2, int a3, unint64_t a4, int a5, void *a6, uint64_t a7, uint64_t a8, uint64_t *a9, void *a10, uint64_t *a11)
{
  v131 = a7;
  v127 = a6;
  v129 = a5;
  v143 = *MEMORY[0x1E69E9840];
  v126 = sub_1AFDFC318();
  v16 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v122 = v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v121 = v117 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v117 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v117 - v24;
  v128 = a10;
  if (*(*a10 + 16))
  {
    result = sub_1AF0D3F10(a1);
    if (v27)
    {
      return result;
    }
  }

  v135 = a8;
  v28 = a9;
  if (*(*a9 + 16))
  {
    result = sub_1AF0D3F10(a1);
    if (v29)
    {
      return result;
    }
  }

  v123 = a11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v138 = *a9;
  *a9 = 0x8000000000000000;
  sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
  *a9 = v138;

  v124 = a9;
  v125 = a1;
  v119 = v16;
  v120 = a3;
  if ((a3 & 1) == 0)
  {
    v55 = a3;

    goto LABEL_23;
  }

  v133 = sub_1AF96D010(a1);
  if (!v133)
  {

    v84 = v128;
    v85 = v123;
LABEL_39:
    v87 = v134;
    sub_1AF3E805C(1, a4, v129 & 1, a1, a2, v127, v131, v135, v28, v84, v85);
    v134 = v87;
    if (v87)
    {
    }

    type metadata accessor for Node(0);
    type metadata accessor for AuthoringNode(0);
    v55 = a3;
    if (swift_dynamicCastMetatype())
    {
      v88 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

      v90 = v134;
      v91 = a4;
      v92 = sub_1AF3D6B1C(v89, v124, v128, sub_1AF3FCC84);
      v134 = v90;

      *(a1 + v88) = v92;
      a4 = v91;
    }

LABEL_23:
    v56 = v129 & 1;
    v57 = swift_allocObject();
    v58 = v131;
    v59 = v135;
    *(v57 + 16) = v131;
    *(v57 + 24) = v59;

    sub_1AF4410E4(a4, sub_1AF4410A8);

    v60 = a4;
    v61 = swift_allocObject();
    v62 = v55 & 1;
    *(v61 + 16) = v55 & 1;
    *(v61 + 24) = v60;
    *(v61 + 32) = v56;
    v63 = v127;
    *(v61 + 40) = v128;
    *(v61 + 48) = a2;
    *(v61 + 56) = v63;
    *(v61 + 64) = v58;
    v64 = v124;
    *(v61 + 72) = v59;
    *(v61 + 80) = v64;
    v65 = v123;
    *(v61 + 88) = v123;
    v66 = swift_allocObject();
    *(v66 + 16) = sub_1AF441378;
    *(v66 + 24) = v61;
    *&v138 = a2;
    *(&v138 + 1) = v125;
    v139 = v63;
    v140 = sub_1AF441390;
    v141 = v66;
    v142 = v65;
    swift_bridgeObjectRetain_n();

    v67 = v134;
    sub_1AF441360(&v138);
    if (v67)
    {

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();
    }

    else
    {
      LODWORD(v133) = v62;
      v118 = a2;
      v134 = v60;

      v68 = v125;

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      v69 = v128;
      v70 = sub_1AF633A88(v68);
      v71 = v131;
      v72 = v129;
      v73 = v69;
      v74 = v120;
      v75 = v124;
      if (v70)
      {
        v76 = v131;
        v77 = *(v69 + 8);
        v78 = swift_isUniquelyReferenced_nonNull_native();
        v73[1] = v77;
        v79 = v75;
        if ((v78 & 1) == 0)
        {
          v77 = sub_1AF422330(0, *(v77 + 2) + 1, 1, v77, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
          v128[1] = v77;
        }

        v81 = *(v77 + 2);
        v80 = *(v77 + 3);
        if (v81 >= v80 >> 1)
        {
          v77 = sub_1AF422330(v80 > 1, v81 + 1, 1, v77, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
          v128[1] = v77;
        }

        *(v77 + 2) = v81 + 1;
        *&v77[8 * v81 + 32] = v68;
        v75 = v79;
        v73 = v128;
        v71 = v76;
        v72 = v129;
      }

      v82 = swift_isUniquelyReferenced_nonNull_native();
      *&v138 = *v75;
      *v75 = 0x8000000000000000;
      sub_1AF850FDC(0, v68, v82);
      *v75 = v138;

      if ((v74 & 1) == 0)
      {
        v93 = v127;
        sub_1AF3E805C(v133, v134, v72 & 1, v68, v118, v127, v71, v135, v75, v73, v123);
        v132 = sub_1AF96D010(v68);
        if (v132)
        {
          v94 = v72;
          v95 = *(v119 + 16);
          v96 = v121;
          v97 = v126;
          v95(v121, v68 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v126);
          v95(v122, v96, v97);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v93 = sub_1AF4276E0(0, v93[2] + 1, 1, v93, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v99 = v93[2];
          v98 = v93[3];
          v100 = v119;
          if (v99 >= v98 >> 1)
          {
            v93 = sub_1AF4276E0(v98 > 1, v99 + 1, 1, v93, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v101 = v126;
          (*(v100 + 8))(v121, v126);
          v93[2] = v99 + 1;
          v102 = v93;
          (*(v100 + 32))(v93 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v99, v122, v101);
          v103 = MEMORY[0x1E69E7CC0];
          *&v138 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
          *(&v138 + 1) = v104;
          v105 = v132[3];
          v130 = v132 + 3;
          v106 = sub_1AF0D4098(v103, sub_1AF44034C, sub_1AF0D3F10);
          v136 = v103;
          v137 = v106;
          if (v105 >> 62)
          {
            v107 = sub_1AFDFE108();
          }

          else
          {
            v107 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          sub_1AF4410E4(v134, sub_1AF4410A8);

          if (v107)
          {
            v108 = v94;
            for (i = 0; i != v107; ++i)
            {
              if ((v105 & 0xC000000000000001) != 0)
              {
                v110 = MEMORY[0x1B2719C70](i, v105);
              }

              else
              {
                v110 = *(v105 + 8 * i + 32);
              }

              sub_1AF418138(v110, v132, v133, v134, v108 & 1, v102, v131, v135, &v137, &v138, &v136);
            }
          }

          sub_1AF4410E4(v134, sub_1AF441114);

          if (v136 >> 62)
          {
            v111 = sub_1AFDFE108();
          }

          else
          {
            v111 = *((v136 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v68 = v125;
          if (v111)
          {

            sub_1AF48F6CC(v112);
          }

          v75 = v124;
        }

        type metadata accessor for Node(0);
        type metadata accessor for AuthoringNode(0);
        if (swift_dynamicCastMetatype())
        {
          v113 = v75;
          v114 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

          v116 = sub_1AF3D6B1C(v115, v113, v128, sub_1AF3FCC84);

          *(v68 + v114) = v116;
        }
      }
    }
  }

  v31 = *(v16 + 16);
  v32 = v126;
  v31(v25, a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v126);
  v31(v22, v25, v32);

  v33 = v127;

  v34 = swift_isUniquelyReferenced_nonNull_native();
  v35 = v33;
  if ((v34 & 1) == 0)
  {
    v35 = sub_1AF4276E0(0, v33[2] + 1, 1, v33, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
  }

  v37 = v35[2];
  v36 = v35[3];
  if (v37 >= v36 >> 1)
  {
    v132 = sub_1AF4276E0(v36 > 1, v37 + 1, 1, v35, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
  }

  else
  {
    v132 = v35;
  }

  v38 = v119;
  v39 = v25;
  v40 = v126;
  (*(v119 + 8))(v39, v126);
  v41 = v132;
  v132[2] = v37 + 1;
  (*(v38 + 32))(v41 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v37, v22, v40);
  v42 = MEMORY[0x1E69E7CC0];
  *&v138 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
  *(&v138 + 1) = v43;
  v44 = *(v133 + 24);
  v117[1] = v133 + 24;
  v45 = sub_1AF0D4098(v42, sub_1AF44034C, sub_1AF0D3F10);
  v136 = v42;
  v137 = v45;
  v46 = a4;
  if (v44 >> 62)
  {
    v47 = sub_1AFDFE108();
  }

  else
  {
    v47 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v48 = v129;
  v118 = a2;
  v49 = v131;
  v50 = v134;
  swift_bridgeObjectRetain_n();

  sub_1AF4410E4(v46, sub_1AF4410A8);
  v51 = v132;

  v130 = v44;
  if (!v47)
  {
LABEL_33:

    sub_1AF4410E4(v46, sub_1AF441114);

    v134 = v50;
    if (v136 >> 62)
    {
      v83 = sub_1AFDFE108();
    }

    else
    {
      v83 = *((v136 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v28 = v124;
    a1 = v125;
    v84 = v128;
    a2 = v118;
    LOBYTE(a3) = v120;
    a4 = v46;
    v85 = v123;
    if (v83)
    {

      sub_1AF48F6CC(v86);
    }

    goto LABEL_39;
  }

  v52 = 0;
  while (1)
  {
    if ((v44 & 0xC000000000000001) != 0)
    {
      v54 = MEMORY[0x1B2719C70](v52, v130);
      v51 = v132;
      v53 = v54;
    }

    else
    {
      v53 = v130[v52 + 4];
    }

    sub_1AF418138(v53, v133, 1, v46, v48 & 1, v51, v49, v135, &v137, &v138, &v136);
    if (v50)
    {
      break;
    }

    ++v52;
    v51 = v132;
    if (v47 == v52)
    {
      goto LABEL_33;
    }
  }

  sub_1AF4410E4(v46, sub_1AF441114);
}

uint64_t sub_1AF419184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1AF44479C(0);
  type metadata accessor for AuthoringNode(0);

  swift_dynamicCast();
  v6 = sub_1AF97228C();
  v7 = sub_1AF3D6C48(v6, a4);

  v8 = v21;
  v9 = *(v7 + 16);
  if (v9)
  {
    v19 = a2;
    v20 = MEMORY[0x1E69E7CC0];
    sub_1AFC05D04(0, v9, 0);
    v10 = v20;
    v11 = *(v20 + 16);
    v12 = 16 * v11;
    v13 = (v7 + 40);
    do
    {
      v14 = *(v13 - 1);
      if (v14)
      {
        v15 = *v13;
      }

      else
      {
        v15 = 0;
      }

      v16 = *(v20 + 24);

      if (v11 >= v16 >> 1)
      {
        sub_1AFC05D04(v16 > 1, v11 + 1, 1);
      }

      v13 += 2;
      *(v20 + 16) = v11 + 1;
      v17 = v20 + v12;
      *(v17 + 32) = v14;
      *(v17 + 40) = v15;
      v12 += 16;
      ++v11;
      --v9;
    }

    while (v9);

    a2 = v19;
    v8 = v21;
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  *(v8 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v10;

  swift_dynamicCast();
  return a2;
}

uint64_t sub_1AF419350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  sub_1AF449B08(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  type metadata accessor for Node(0);

  swift_dynamicCast();
  v6 = *(v32 + 16);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v29 = a5;
    v31 = MEMORY[0x1E69E7CC0];

    sub_1AFC05E2C(0, v7, 0);
    v9 = 0;
    v10 = v31;
    v11 = *(v31 + 16);
    v12 = 16 * v11;
    do
    {
      v14 = *(v6 + v9 + 32);
      v13 = *(v6 + v9 + 40);
      v15 = *(v31 + 24);

      if (v11 >= v15 >> 1)
      {
        sub_1AFC05E2C(v15 > 1, v11 + 1, 1);
      }

      *(v31 + 16) = v11 + 1;
      v16 = v31 + v12 + v9;
      *(v16 + 32) = v14;
      *(v16 + 40) = v13;
      v9 += 16;
      ++v11;
      --v7;
    }

    while (v7);

    a5 = v29;
    v8 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v17 = sub_1AF3D7A84(v10, a5);

  v18 = v32;
  v19 = *(v17 + 16);
  if (v19)
  {
    sub_1AFC05E7C(0, v19, 0);
    v20 = *(v8 + 16);
    v21 = 16 * v20;
    v22 = (v17 + 40);
    do
    {
      v24 = *(v22 - 1);
      v23 = *v22;
      v25 = v20 + 1;
      v26 = *(v8 + 24);

      if (v20 >= v26 >> 1)
      {
        sub_1AFC05E7C(v26 > 1, v25, 1);
      }

      v22 += 2;
      *(v8 + 16) = v25;
      v27 = v8 + v21;
      *(v27 + 32) = v24;
      *(v27 + 40) = v23;
      v21 += 16;
      ++v20;
      --v19;
    }

    while (v19);

    v18 = v32;
  }

  else
  {
  }

  *(v18 + 16) = v8;

  swift_dynamicCast();
  return a2;
}

uint64_t sub_1AF4195D0(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a3 + 16);
  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v26 = a4;
    v30 = MEMORY[0x1E69E7CC0];

    sub_1AFC05E2C(0, v5, 0);
    v7 = 0;
    v8 = v30;
    v9 = *(v30 + 16);
    v10 = 16 * v9;
    do
    {
      v11 = *(v4 + v7 + 32);
      v12 = *(v4 + v7 + 40);
      v13 = *(v30 + 24);

      if (v9 >= v13 >> 1)
      {
        sub_1AFC05E2C(v13 > 1, v9 + 1, 1);
      }

      *(v30 + 16) = v9 + 1;
      v14 = v30 + v10 + v7;
      *(v14 + 32) = v11;
      *(v14 + 40) = v12;
      v7 += 16;
      ++v9;
      --v5;
    }

    while (v5);

    v6 = MEMORY[0x1E69E7CC0];
    a4 = v26;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v15 = sub_1AF3D7DC0(v8, a4);

  v16 = *(v15 + 16);
  if (v16)
  {
    sub_1AFC05E7C(0, v16, 0);
    v17 = v6;
    v18 = *(v6 + 16);
    v19 = 16 * v18;
    v20 = (v15 + 40);
    do
    {
      v22 = *(v20 - 1);
      v21 = *v20;
      v23 = *(v17 + 24);

      if (v18 >= v23 >> 1)
      {
        sub_1AFC05E7C(v23 > 1, v18 + 1, 1);
      }

      v20 += 2;
      *(v17 + 16) = v18 + 1;
      v24 = v17 + v19;
      *(v24 + 32) = v22;
      *(v24 + 40) = v21;
      v19 += 16;
      ++v18;
      --v16;
    }

    while (v16);
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
  }

  *(a3 + 16) = v17;

  *a1 = a3;

  return a2;
}

float sub_1AF4197D8()
{
  type metadata accessor for ConstantNode(0);
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    sub_1AF0D5A54(v0 + OBJC_IVAR____TtC3VFX12ConstantNode_holder + 8, v4);
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  sub_1AF449B08(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  v1 = swift_dynamicCast();
  result = v3;
  if (!v1)
  {
    return 0.0;
  }

  return result;
}

id sub_1AF419890(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = v3(a2);

  return v4;
}

uint64_t sub_1AF4198F0(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1AFDFE108();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

unint64_t sub_1AF419940(uint64_t a1)
{
  sub_1AFDFC318();
  v2 = MEMORY[0x1E69695A8];
  sub_1AF43A5EC(&qword_1EB633A20, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v3 = sub_1AFDFCCF8();
  return sub_1AF41D294(a1, v3, MEMORY[0x1E69695A8], &qword_1EB633A10, v2, MEMORY[0x1E69695C8]);
}

unint64_t sub_1AF419A14(int64x2_t *a1)
{
  v2 = a1->i64[1];
  v3 = a1[1].i64[0];
  v4 = a1[1].i64[1];
  v5 = a1[2].i64[0];
  v6 = a1[2].i64[1];
  v7 = a1[3].i64[0];
  v8 = a1[3].i64[1];
  v11 = a1[4].i64[0];
  v12 = a1[4].i64[1];
  v13 = a1[5].i64[0];
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  MEMORY[0x1B271ACB0](v2);
  MEMORY[0x1B271ACB0](v3);
  MEMORY[0x1B271ACB0](v4);
  MEMORY[0x1B271ACB0](v5);
  MEMORY[0x1B271ACB0](v6);
  MEMORY[0x1B271ACB0](v7);
  MEMORY[0x1B271ACB0](v8);
  MEMORY[0x1B271ACB0](v11);
  MEMORY[0x1B271ACB0](v12);
  MEMORY[0x1B271ACB0](v13);
  sub_1AFDFF2A8();
  v9 = sub_1AFDFF2F8();

  return sub_1AF41B444(a1, v9);
}

unint64_t sub_1AF419B74(unint64_t a1)
{
  v1 = a1;
  v2 = HIDWORD(a1) & 1;
  sub_1AFDFF288();
  sub_1AF7C239C(v5, v1 | (v2 << 32));
  v3 = sub_1AFDFF2F8();
  LOBYTE(v5[0]) = v2;

  return sub_1AF41BC6C(v1 | (v2 << 32), v3);
}

unint64_t sub_1AF419BF8(uint64_t a1)
{
  v2 = a1;
  v3 = sub_1AF3D60F0(*(v1 + 40), a1);

  return sub_1AF41BD30(v2, v3);
}

unint64_t sub_1AF419C3C(uint64_t *a1)
{
  sub_1AFDFF288();
  sub_1AF7BC2B8(v4);
  v2 = sub_1AFDFF2F8();

  return sub_1AF41BFDC(a1, v2);
}

unint64_t sub_1AF419CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](a1);
  sub_1AFDFE008();
  sub_1AFDFCD08();
  MEMORY[0x1B271ACB0](a4);
  v8 = sub_1AFDFF2F8();
  return sub_1AF41C1A0(a1, a2, a3, a4, v8);
}

unint64_t sub_1AF419D60(uint64_t a1)
{
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](a1);
  v2 = sub_1AFDFF2F8();
  return sub_1AF0D5DB4(a1, v2);
}

unint64_t sub_1AF419DC8(uint64_t a1, double a2)
{
  sub_1AFDFE488();
  v3 = sub_1AFDFCCF8();

  return sub_1AF41C300(a1, v3, v4);
}

unint64_t sub_1AF419E2C(void *a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  v2 = a1[4];
  v3 = *(v2 + 16);
  MEMORY[0x1B271ACB0](v3);
  if (v3)
  {
    v4 = v2 + 64;
    do
    {
      v5 = *(v4 - 32);
      v6 = *(v4 - 24);
      v7 = *(v4 - 16);
      if (v7 == 1)
      {
        MEMORY[0x1B271ACB0](1);

        sub_1AFDFD038();
      }

      else
      {
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](v5);
      }

      sub_1AF87A0E4();
      sub_1AF4456D0(v5, v6, v7);
      v4 += 112;
      --v3;
    }

    while (v3);
  }

  MEMORY[0x1B271ACB0](a1[3]);
  v8 = sub_1AFDFF2F8();

  return sub_1AF41C498(a1, v8);
}

unint64_t sub_1AF419F60(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  v2 = sub_1AFDFF2F8();

  return sub_1AF41CB5C(a1, v2);
}

unint64_t sub_1AF419FCC(uint64_t a1)
{
  v1 = a1;
  sub_1AFDFF288();
  sub_1AFDFD038();

  sub_1AFDFD038();

  v2 = sub_1AFDFF2F8();

  return sub_1AF41CC38(v1, v2);
}

unint64_t sub_1AF41A124(uint64_t a1)
{
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](a1);
  v2 = sub_1AFDFF2F8();

  return sub_1AF0D5DB4(a1, v2);
}

unint64_t sub_1AF41A190(unint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFF2A8();
  if ((a1 & 0x100000000) == 0)
  {
    sub_1AFDFF2C8();
  }

  v2 = sub_1AFDFF2F8();

  return sub_1AF41CF00(a1 | ((HIDWORD(a1) & 1) << 32), v2);
}

unint64_t sub_1AF41A220(uint64_t a1)
{
  v1 = a1;
  sub_1AFDFF288();
  sub_1AFDFD038();

  v2 = sub_1AFDFF2F8();

  return sub_1AF41CF84(v1, v2);
}

unint64_t sub_1AF41A308(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AF7FE65C();
  sub_1AFDFD038();

  v2 = sub_1AFDFF2F8();

  return sub_1AF41D144(a1, v2);
}

unint64_t sub_1AF41A390(uint64_t a1)
{
  sub_1AFDFC128();
  v2 = MEMORY[0x1E6968FB0];
  sub_1AF43A5EC(&qword_1ED725EE0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  v3 = sub_1AFDFCCF8();
  return sub_1AF41D294(a1, v3, MEMORY[0x1E6968FB0], &qword_1EB6327A0, v2, MEMORY[0x1E6968FC8]);
}

unint64_t sub_1AF41A4B4(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AF8C2834();
  v2 = sub_1AFDFF2F8();

  return sub_1AF41D434(a1, v2);
}

uint64_t sub_1AF41A54C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_1AFDFF288();
  a3(v10, a1, a2);
  v7 = sub_1AFDFF2F8();

  return a4(a1, a2, v7);
}

unint64_t sub_1AF41A680(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  sub_1AFDFF288();
  sub_1AFDFF2A8();
  MEMORY[0x1B271ACB0](a2);
  v4 = sub_1AFDFF2F8();

  return sub_1AF41DF60(v3, a2, v4);
}

unint64_t sub_1AF41A700(unsigned __int8 *a1)
{
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](*a1);
  v2 = type metadata accessor for TextureCache.TextureKey(0);
  sub_1AFDFC128();
  sub_1AF43A5EC(&qword_1ED725EE0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1AFDFCD08();
  v3 = &a1[*(v2 + 24)];
  v4 = *(v3 + 1);
  v5 = *(v3 + 2);
  v6 = v3[24];
  v8 = *(v3 + 4);
  v7 = *(v3 + 5);
  v9 = *(v3 + 6);
  v10 = *(v3 + 28);
  MEMORY[0x1B271ACB0](*v3);
  if (v6 < 0xFE)
  {
    sub_1AFDFF2A8();
    if ((v6 & 0x80) != 0)
    {
      MEMORY[0x1B271ACB0](1);
      MEMORY[0x1B271ACB0](v4);
      MEMORY[0x1B271ACB0](v5);
    }

    else
    {
      MEMORY[0x1B271ACB0](0);
      MEMORY[0x1B271ACB0](v4);
      MEMORY[0x1B271ACB0](v5);
      sub_1AFDFF2A8();
    }
  }

  else
  {
    sub_1AFDFF2A8();
  }

  if ((v10 & 0xFF00) != 0x300)
  {
    sub_1AFDFF2A8();
    MEMORY[0x1B271ACB0](v8);
    MEMORY[0x1B271ACB0](v7);
    sub_1AFDFF2A8();
    if ((v10 & 1) == 0)
    {
      MEMORY[0x1B271ACB0](v9);
    }
  }

  sub_1AFDFF2A8();
  v11 = sub_1AFDFF2F8();

  return sub_1AF41DFE0(a1, v11);
}

unint64_t sub_1AF41A8F8(uint64_t a1)
{
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](*a1);
  MEMORY[0x1B271ACB0](*(a1 + 8));
  MEMORY[0x1B271ACB0](*(a1 + 16));
  if (*(a1 + 32) == 1)
  {
    sub_1AFDFF2A8();
  }

  else
  {
    v2 = *(a1 + 24);
    sub_1AFDFF2A8();
    MEMORY[0x1B271ACB0](v2);
  }

  v3 = sub_1AFDFF2F8();

  return sub_1AF41E2B0(a1, v3);
}

unint64_t sub_1AF41A9B4(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  v2 = sub_1AFDFF2F8();
  return sub_1AF41E370(a1, v2);
}

unint64_t sub_1AF41AA2C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  v8 = sub_1AFDFF2F8();

  return sub_1AF41E3E8(a1, a2 & 1, a3, a4, v8);
}

uint64_t sub_1AF41AABC(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_1AFDFF288();
  a2(a1);
  sub_1AFDFD038();

  v5 = sub_1AFDFF2F8();

  return a3(a1, v5);
}

unint64_t sub_1AF41AB58(uint64_t *a1)
{
  v2 = *(a1 + 16);
  sub_1AFDFF288();
  sub_1AFDFD038();
  sub_1AF76ACE8(v2);
  sub_1AFDFD038();

  sub_1AFDFD038();
  v3 = sub_1AFDFF2F8();

  return sub_1AF41E8F8(a1, v3);
}

unint64_t sub_1AF41AC1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  sub_1AFDFF2A8();
  if ((a4 & 1) == 0)
  {
    MEMORY[0x1B271ACB0](a3);
  }

  v8 = sub_1AFDFF2F8();

  return sub_1AF41ED94(a1, a2, a3, a4 & 1, v8);
}

unint64_t sub_1AF41ACD4(uint64_t a1, uint64_t a2)
{
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](a1);
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  v4 = sub_1AFDFF2F8();

  return sub_1AF41EE4C(a1, a2, v4);
}

unint64_t sub_1AF41AD6C(void *a1, void *a2)
{
  sub_1AFDFF288();
  if (a1)
  {
    sub_1AFDFF2A8();
    v4 = a1;
    sub_1AFDFDC58();

    if (a2)
    {
LABEL_3:
      sub_1AFDFF2A8();
      v5 = a2;
      sub_1AFDFDC58();

      goto LABEL_6;
    }
  }

  else
  {
    sub_1AFDFF2A8();
    if (a2)
    {
      goto LABEL_3;
    }
  }

  sub_1AFDFF2A8();
LABEL_6:
  v6 = sub_1AFDFF2F8();

  return sub_1AF41EED0(a1, a2, v6);
}

unint64_t sub_1AF41AE38(uint64_t a1, uint64_t a2)
{
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  MEMORY[0x1B271ACB0](a2);
  v4 = sub_1AFDFF2F8();

  return sub_1AF41F06C(a1, a2, v4);
}

unint64_t sub_1AF41AED0(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AF933064(v4);
  v2 = sub_1AFDFF2F8();

  return sub_1AF41F0F0(a1, v2);
}

unint64_t sub_1AF41AF3C(unint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFAA0C08(v4, a1);
  v2 = sub_1AFDFF2F8();

  return sub_1AF41F478(a1, v2);
}

unint64_t sub_1AF41AFA8(uint64_t a1)
{
  v2 = sub_1AFDFE158();

  return sub_1AF41F534(a1, v2);
}

unint64_t sub_1AF41AFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  sub_1AFDFF288();
  sub_1AFDFD038();
  sub_1AFDFD038();

  v6 = sub_1AFDFF2F8();

  return sub_1AF41F5FC(a1, a2, v3, v6);
}

unint64_t sub_1AF41B134(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFC318();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFDFF288();
  (*(v5 + 16))(v7, a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v4);
  sub_1AF43A5EC(&qword_1EB633A20, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1AFDFCD08();
  (*(v5 + 8))(v7, v4);
  MEMORY[0x1B271ACB0](a2);
  v8 = sub_1AFDFF2F8();
  return sub_1AF41F870(a1, a2, v8);
}

unint64_t sub_1AF41B2A8(uint64_t a1)
{
  v1 = a1;
  sub_1AFDFF288();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  v2 = sub_1AFDFF2F8();

  return sub_1AF41FA98(v1 & 0x1FF, v2);
}

unint64_t sub_1AF41B320(uint64_t a1)
{
  v1 = a1;
  sub_1AFDFF288();
  sub_1AFDFF2A8();
  v2 = sub_1AFDFF2F8();

  return sub_1AF0D8024(v1, v2);
}

unint64_t sub_1AF41B38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1AFDFEE28())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1AF41B444(int64x2_t *a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v2 + 48) + 96 * result);
      if (v7->i32[0] == a1->i32[0] && v7->i64[1] == a1->i64[1])
      {
        v8 = v7[5].i64[0] == a1[5].i64[0];
        if (vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_s64(v7[1], a1[1]), vceqq_s64(v7[2], a1[2])), vuzp1q_s32(vceqq_s64(v7[3], a1[3]), vceqq_s64(v7[4], a1[4]))))))
        {
          v9 = v7[5].u8[8];
          if (v8 && v9 == a1[5].u8[8])
          {
            break;
          }
        }
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1AF41B530(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE400000000000000;
      v8 = 1953460082;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 1835819376;
          break;
        case 2:
          v7 = 0xE500000000000000;
          v8 = 0x7473697277;
          break;
        case 3:
          v8 = 0x756E4B626D756874;
          v7 = 0xEC000000656C6B63;
          break;
        case 4:
          v8 = 0xD000000000000015;
          v7 = 0x80000001AFF27030;
          break;
        case 5:
          v8 = 0xD000000000000014;
          v7 = 0x80000001AFF27050;
          break;
        case 6:
          v7 = 0xE800000000000000;
          v8 = 0x706954626D756874;
          break;
        case 7:
          v8 = 0xD000000000000015;
          v7 = 0x80000001AFF27070;
          break;
        case 8:
          v8 = 0xD000000000000012;
          v7 = 0x80000001AFF27090;
          break;
        case 9:
          v8 = 0xD00000000000001BLL;
          v7 = 0x80000001AFF270B0;
          break;
        case 0xA:
          v8 = 0xD00000000000001ALL;
          v7 = 0x80000001AFF270D0;
          break;
        case 0xB:
          v8 = 0x6E69467865646E69;
          v7 = 0xEE00706954726567;
          break;
        case 0xC:
          v8 = 0xD000000000000016;
          v7 = 0x80000001AFF27100;
          break;
        case 0xD:
          v8 = 0xD000000000000013;
          v7 = 0x80000001AFF27120;
          break;
        case 0xE:
          v8 = 0xD00000000000001CLL;
          v7 = 0x80000001AFF27140;
          break;
        case 0xF:
          v8 = 0xD00000000000001BLL;
          v7 = 0x80000001AFF27160;
          break;
        case 0x10:
          v9 = 1684302189;
          goto LABEL_32;
        case 0x11:
          v8 = 0xD000000000000014;
          v7 = 0x80000001AFF27190;
          break;
        case 0x12:
          v8 = 0xD000000000000011;
          v7 = 0x80000001AFF271B0;
          break;
        case 0x13:
          v8 = 0xD00000000000001ALL;
          v7 = 0x80000001AFF271D0;
          break;
        case 0x14:
          v8 = 0xD000000000000019;
          v7 = 0x80000001AFF271F0;
          break;
        case 0x15:
          v8 = 0x676E6946676E6972;
          v7 = 0xED00007069547265;
          break;
        case 0x16:
          v8 = 0xD000000000000016;
          v7 = 0x80000001AFF27220;
          break;
        case 0x17:
          v8 = 0xD000000000000013;
          v7 = 0x80000001AFF27240;
          break;
        case 0x18:
          v8 = 0xD00000000000001CLL;
          v7 = 0x80000001AFF27260;
          break;
        case 0x19:
          v8 = 0xD00000000000001BLL;
          v7 = 0x80000001AFF27280;
          break;
        case 0x1A:
          v9 = 1953786220;
LABEL_32:
          v8 = v9 | 0x6946656C00000000;
          v7 = 0xEF7069547265676ELL;
          break;
        case 0x1B:
          v8 = 0x576D726165726F66;
          v7 = 0xEC00000074736972;
          break;
        case 0x1C:
          v8 = 0x416D726165726F66;
          v7 = 0xEA00000000006D72;
          break;
        default:
          break;
      }

      v10 = 0xE400000000000000;
      v11 = 1953460082;
      switch(a1)
      {
        case 1:
          if (v8 == 1835819376)
          {
            goto LABEL_87;
          }

          goto LABEL_88;
        case 2:
          v10 = 0xE500000000000000;
          if (v8 != 0x7473697277)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 3:
          v12 = 0x756E4B626D756874;
          v13 = 1701604195;
          goto LABEL_57;
        case 4:
          v10 = 0x80000001AFF27030;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 5:
          v10 = 0x80000001AFF27050;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 6:
          v10 = 0xE800000000000000;
          if (v8 != 0x706954626D756874)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 7:
          v10 = 0x80000001AFF27070;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 8:
          v10 = 0x80000001AFF27090;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 9:
          v10 = 0x80000001AFF270B0;
          if (v8 != 0xD00000000000001BLL)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 10:
          v10 = 0x80000001AFF270D0;
          if (v8 != 0xD00000000000001ALL)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 11:
          v10 = 0xEE00706954726567;
          if (v8 != 0x6E69467865646E69)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 12:
          v10 = 0x80000001AFF27100;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 13:
          v10 = 0x80000001AFF27120;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 14:
          v10 = 0x80000001AFF27140;
          if (v8 != 0xD00000000000001CLL)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 15:
          v10 = 0x80000001AFF27160;
          if (v8 != 0xD00000000000001BLL)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 16:
          v14 = 1684302189;
          goto LABEL_92;
        case 17:
          v10 = 0x80000001AFF27190;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 18:
          v10 = 0x80000001AFF271B0;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 19:
          v10 = 0x80000001AFF271D0;
          if (v8 != 0xD00000000000001ALL)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 20:
          v10 = 0x80000001AFF271F0;
          if (v8 != 0xD000000000000019)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 21:
          v10 = 0xED00007069547265;
          if (v8 != 0x676E6946676E6972)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 22:
          v10 = 0x80000001AFF27220;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 23:
          v10 = 0x80000001AFF27240;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 24:
          v10 = 0x80000001AFF27260;
          if (v8 != 0xD00000000000001CLL)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 25:
          v10 = 0x80000001AFF27280;
          if (v8 != 0xD00000000000001BLL)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 26:
          v14 = 1953786220;
LABEL_92:
          v10 = 0xEF7069547265676ELL;
          if (v8 != (v14 | 0x6946656C00000000))
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 27:
          v12 = 0x576D726165726F66;
          v13 = 1953720690;
LABEL_57:
          v10 = v13 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v8 != v12)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        case 28:
          v11 = 0x416D726165726F66;
          v10 = 0xEA00000000006D72;
          goto LABEL_86;
        default:
LABEL_86:
          if (v8 != v11)
          {
            goto LABEL_88;
          }

LABEL_87:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_88:
          v15 = sub_1AFDFEE28();

          if (v15)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_1AF41BC6C(unint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = HIDWORD(a1) & 1;
    if (a1 > 1)
    {
      v8 = BYTE4(a1) & 1;
    }

    else
    {
      v8 = 0;
    }

    if (a1 == 1)
    {
      v9 = BYTE4(a1) & 1;
    }

    else
    {
      v9 = 0;
    }

    if (a1)
    {
      LOBYTE(v7) = 0;
    }

    do
    {
      v10 = *(v2 + 48) + 8 * result;
      v11 = *v10;
      if (*(v10 + 4) == 1)
      {
        if (v11 == 0.0)
        {
          if (v7)
          {
            return result;
          }
        }

        else if (LODWORD(v11) == 1)
        {
          if (v9)
          {
            return result;
          }
        }

        else if (v8)
        {
          return result;
        }
      }

      else if ((a1 & 0x100000000) == 0 && v11 == *&a1)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1AF41BD30(unsigned __int8 a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v25 = ~v4;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v27 + 48) + v5);
      if (v7 > 3)
      {
        if (*(*(v27 + 48) + v5) > 5u)
        {
          if (v7 == 6)
          {
            v11 = 0x646E49746E696F6ALL;
            v13 = 1936024425;
          }

          else
          {
            v11 = 0x696557746E696F6ALL;
            v13 = 1937008743;
          }

          v12 = v13 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        }

        else
        {
          if (v7 == 4)
          {
            v11 = 0x726F6C6F63;
          }

          else
          {
            v11 = 1702521203;
          }

          if (v7 == 4)
          {
            v12 = 0xE500000000000000;
          }

          else
          {
            v12 = 0xE400000000000000;
          }
        }
      }

      else
      {
        if (v7 == 2)
        {
          v8 = 0x6C616D726F6ELL;
        }

        else
        {
          v8 = 0x7461746E6569726FLL;
        }

        if (v7 == 2)
        {
          v9 = 0xE600000000000000;
        }

        else
        {
          v9 = 0xEB000000006E6F69;
        }

        if (*(*(v27 + 48) + v5))
        {
          v10 = 0x797469636F6C6576;
        }

        else
        {
          v10 = 0x6E6F697469736F70;
        }

        if (*(*(v27 + 48) + v5) <= 1u)
        {
          v11 = v10;
        }

        else
        {
          v11 = v8;
        }

        if (*(*(v27 + 48) + v5) <= 1u)
        {
          v12 = 0xE800000000000000;
        }

        else
        {
          v12 = v9;
        }
      }

      v14 = 0x696557746E696F6ALL;
      if (v6 == 6)
      {
        v14 = 0x646E49746E696F6ALL;
      }

      v15 = 0xEC00000073746867;
      if (v6 == 6)
      {
        v15 = 0xEC00000073656369;
      }

      v16 = 0x726F6C6F63;
      if (v6 != 4)
      {
        v16 = 1702521203;
      }

      v17 = 0xE500000000000000;
      if (v6 != 4)
      {
        v17 = 0xE400000000000000;
      }

      if (v6 <= 5)
      {
        v14 = v16;
        v15 = v17;
      }

      if (v6 == 2)
      {
        v18 = 0x6C616D726F6ELL;
      }

      else
      {
        v18 = 0x7461746E6569726FLL;
      }

      if (v6 == 2)
      {
        v19 = 0xE600000000000000;
      }

      else
      {
        v19 = 0xEB000000006E6F69;
      }

      if (v6)
      {
        v20 = 0x797469636F6C6576;
      }

      else
      {
        v20 = 0x6E6F697469736F70;
      }

      if (v6 <= 1)
      {
        v18 = v20;
        v19 = 0xE800000000000000;
      }

      v21 = v6 <= 3 ? v18 : v14;
      v22 = v6 <= 3 ? v19 : v15;
      if (v11 == v21 && v12 == v22)
      {
        break;
      }

      v23 = sub_1AFDFEE28();

      if ((v23 & 1) == 0)
      {
        v5 = (v5 + 1) & v25;
        if ((*(v26 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v5;
    }
  }

  return v5;
}

unint64_t sub_1AF41BFDC(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v25 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v23 = ~v3;
    v6 = a1[1];
    v27 = *a1;
    v24 = *(v2 + 48);
    do
    {
      v7 = v24 + 72 * v4;
      v8 = *(v7 + 16);
      v9 = *(v7 + 24);
      v11 = *(v7 + 32);
      v10 = *(v7 + 40);
      v13 = *(v7 + 48);
      v12 = *(v7 + 56);
      v26 = *(v7 + 64);
      v14 = *(v7 + 68);
      v15 = *v7 == v27 && *(v7 + 8) == v6;
      if (!v15 && (sub_1AFDFEE28() & 1) == 0)
      {
        goto LABEL_4;
      }

      v16 = v8 == a1[2] && v9 == a1[3];
      if (!v16 && (sub_1AFDFEE28() & 1) == 0)
      {
        goto LABEL_4;
      }

      v17 = a1[5];
      if (v10)
      {
        if (!v17)
        {
          goto LABEL_4;
        }

        v18 = v11 == a1[4] && v10 == v17;
        if (!v18 && (sub_1AFDFEE28() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v17)
      {
        goto LABEL_4;
      }

      v19 = a1[7];
      if (v12)
      {
        if (!v19)
        {
          goto LABEL_4;
        }

        v20 = v13 == a1[6] && v12 == v19;
        if (!v20 && (sub_1AFDFEE28() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v19)
      {
        goto LABEL_4;
      }

      v21 = *(a1 + 68);
      if (v14)
      {
        if (*(a1 + 68))
        {
          return v4;
        }
      }

      else
      {
        if (v26 != *(a1 + 16))
        {
          v21 = 1;
        }

        if ((v21 & 1) == 0)
        {
          return v4;
        }
      }

LABEL_4:
      v4 = (v4 + 1) & v23;
    }

    while (((*(v25 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1AF41C1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = v5;
    v13 = ~v7;
    do
    {
      v14 = (*(v9 + 48) + 32 * v8);
      if (*v14 == a1)
      {
        v15 = v14[3];
        sub_1AFDFE008();

        v17 = MEMORY[0x1B2719A10](v16, a3);

        if ((v17 & 1) != 0 && v15 == a4)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_1AF41C294(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1AF41C300(uint64_t a1, uint64_t a2, double a3)
{
  v23 = a1;
  v5 = sub_1AFDFE488();
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v3;
  v10 = -1 << *(v3 + 32);
  v11 = a2 & ~v10;
  v22 = v3 + 64;
  if ((*(v3 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v9, *(v24 + 48) + v16 * v11, v5, v7);
      v19 = sub_1AFDFCE58();
      (*v17)(v9, v5);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v22 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_1AF41C498(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = a1;
    v7 = ~v4;
    v8 = *a1;
    v9 = a1[1];
    v58 = ~v4;
    v59 = v2 + 64;
    v56 = v9;
    v57 = *a1;
    while (1)
    {
      v10 = (*(v2 + 48) + 40 * v5);
      v11 = v10[3];
      v12 = v10[4];
      v13 = *v10 == v8 && v10[1] == v9;
      if (!v13 && (sub_1AFDFEE28() & 1) == 0)
      {
        goto LABEL_4;
      }

      v14 = v6[3];
      if (v11)
      {
        if (!v14 || v11 != v14)
        {
          goto LABEL_4;
        }
      }

      else if (v14)
      {
        goto LABEL_4;
      }

      v15 = v6[4];
      v16 = *(v12 + 16);
      if (v16 != *(v15 + 16))
      {
        goto LABEL_4;
      }

      if (!v16 || v12 == v15)
      {
        return v5;
      }

      v68 = *(v12 + 16);
      v69 = v15 + 32;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      v17 = 0;
      while (2)
      {
        v24 = v12 + 32 + 112 * v17;
        v25 = *v24;
        v26 = *(v24 + 8);
        v27 = *(v24 + 16);
        v28 = *(v24 + 32);
        v29 = *(v24 + 48);
        v30 = *(v24 + 64);
        v31 = *(v24 + 80);
        v32 = *(v24 + 96);
        v33 = (v69 + 112 * v17);
        v34 = v33->i64[0];
        v35 = v33[2];
        v36 = v33[3];
        v37 = v33[4];
        v38 = v33[5];
        v39 = v33[6].u8[0];
        if (v27 == 1)
        {
          if ((v33[1].i8[0] & 1) == 0 || ((v62 = v33[5], v63 = *(v24 + 80), v64 = v33[4], v65 = *(v24 + 64), v66 = v33[3], v67 = *(v24 + 48), v70 = *(v24 + 32), v75 = v33[2], v25 == v34) ? (v40 = v26 == v33->i64[1]) : (v40 = 0), !v40 && (sub_1AFDFEE28() & 1) == 0))
          {
LABEL_85:

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            goto LABEL_92;
          }

          v28 = v70;
          v35 = v75;
          v36 = v66;
          v29 = v67;
          v37 = v64;
          v30 = v65;
          v38 = v62;
          v31 = v63;
        }

        else if ((v33[1].i8[0] & 1) != 0 || v25 != v34)
        {
          goto LABEL_85;
        }

        v41 = v28.i32[0];
        switch(v32)
        {
          case 1:
            v74 = v28.i64[0];
            v80 = v35.i64[0];
            sub_1AF4456D0(v25, v26, v27);
            v23 = v68;
            if (v39 != 1)
            {
              goto LABEL_90;
            }

            v51 = 0;
            v52 = 1;
            while (1)
            {
              if (v52)
              {
                v82 = v74;
                v46 = *(&v82 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v51 & 1)));
                v83 = v80;
                v47 = *(&v83 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v51 & 1)));
                v52 = v46 == v47;
                if (v51 == 1)
                {
                  goto LABEL_74;
                }
              }

              else
              {
                if (v51 == 1)
                {
                  goto LABEL_90;
                }

                v52 = 0;
              }

              ++v51;
            }

          case 2:
            v72 = v28;
            v78 = v35;
            sub_1AF4456D0(v25, v26, v27);
            v23 = v68;
            if (v39 != 2)
            {
              goto LABEL_90;
            }

            v44 = 0;
            v45 = 1;
            while (2)
            {
              if (!v45)
              {
                if (v44 != 2)
                {
                  v45 = 0;
LABEL_51:
                  ++v44;
                  continue;
                }

                goto LABEL_90;
              }

              break;
            }

            v84 = v72;
            v46 = *(&v84 & 0xFFFFFFFFFFFFFFF3 | (4 * (v44 & 3)));
            v85 = v78;
            v47 = *(&v85 & 0xFFFFFFFFFFFFFFF3 | (4 * (v44 & 3)));
            v45 = v46 == v47;
            if (v44 != 2)
            {
              goto LABEL_51;
            }

            goto LABEL_74;
          case 3:
            v73 = v28;
            v79 = v35;
            sub_1AF4456D0(v25, v26, v27);
            v23 = v68;
            if (v39 != 3)
            {
              goto LABEL_90;
            }

            v48 = 0;
            v49 = 1;
LABEL_62:
            if (v49)
            {
              v86 = v73;
              v46 = *(&v86 & 0xFFFFFFFFFFFFFFF3 | (4 * (v48 & 3)));
              v87 = v79;
              v47 = *(&v87 & 0xFFFFFFFFFFFFFFF3 | (4 * (v48 & 3)));
              v49 = v46 == v47;
              if (v48 != 3)
              {
                goto LABEL_61;
              }

LABEL_74:
              if (v46 != v47)
              {
                goto LABEL_90;
              }

LABEL_22:
              if (++v17 == v23)
              {

                swift_unknownObjectRelease();
                swift_unknownObjectRelease();

                return v5;
              }

              continue;
            }

            if (v48 != 3)
            {
              v49 = 0;
LABEL_61:
              ++v48;
              goto LABEL_62;
            }

LABEL_90:

            swift_unknownObjectRelease();
LABEL_91:

            swift_unknownObjectRelease();
LABEL_92:
            v6 = a1;
            v2 = v61;
            v7 = v58;
            v3 = v59;
            v9 = v56;
            v8 = v57;
LABEL_4:
            v5 = (v5 + 1) & v7;
            if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
            {
              return v5;
            }

            break;
          case 4:
            if (v39 != 4)
            {
              goto LABEL_89;
            }

            v42 = vand_s8(*&vceqq_f32(v28, v35), vceq_f32(*&vextq_s8(v35, v35, 8uLL), *&v28.u32[2]));
            v43 = vpmin_u32(v42, v42).u32[0];
            sub_1AF4456D0(v25, v26, v27);
            v23 = v68;
            if ((v43 & 0x80000000) == 0)
            {
              goto LABEL_90;
            }

            goto LABEL_22;
          case 5:
            if (v39 != 5)
            {
LABEL_89:
              sub_1AF4456D0(v25, v26, v27);
              goto LABEL_90;
            }

            v18 = vceqq_f32(v28, v35);
            v19 = vceqq_f32(v29, v36);
LABEL_19:
            v20 = vandq_s8(v18, v19);
            v20.i32[3] = v20.i32[2];
            goto LABEL_20;
          case 6:
            if (v39 != 6)
            {
              goto LABEL_87;
            }

            v20 = vandq_s8(vceqq_f32(v28, v35), vceqq_f32(v29, v36));
            goto LABEL_20;
          case 7:
            if (v39 != 7)
            {
              goto LABEL_87;
            }

            v50 = vand_s8(vceq_f32(*&vextq_s8(v35, v35, 8uLL), *&v28.u32[2]), vand_s8(*&vceqq_f32(v29, v36), *&vceqq_f32(v28, v35)));
            v21 = vpmin_u32(v50, v50).u32[0];
            goto LABEL_21;
          case 8:
            if (v39 != 8)
            {
              goto LABEL_87;
            }

            v18 = vandq_s8(vceqq_f32(v28, v35), vceqq_f32(v29, v36));
            v19 = vceqq_f32(v30, v37);
            goto LABEL_19;
          case 9:
            if (v39 != 9)
            {
              goto LABEL_87;
            }

            v20 = vandq_s8(vandq_s8(vceqq_f32(v28, v35), vceqq_f32(v29, v36)), vceqq_f32(v30, v37));
            goto LABEL_20;
          case 10:
            if (v39 != 10)
            {
              goto LABEL_87;
            }

            v53 = vceqq_f32(v29, v36);
            v54 = vand_s8(vand_s8(vand_s8(*&vextq_s8(v53, v53, 8uLL), *v53.i8), *&vceqq_f32(v28, v35)), vceq_f32(*&vextq_s8(v35, v35, 8uLL), *&v28.u32[2]));
            v21 = vpmin_u32(v54, v54).u32[0];
            goto LABEL_21;
          case 11:
            if (v39 != 11)
            {
              goto LABEL_87;
            }

            v18 = vandq_s8(vceqq_f32(v28, v35), vceqq_f32(v29, v36));
            v19 = vandq_s8(vceqq_f32(v30, v37), vceqq_f32(v31, v38));
            goto LABEL_19;
          case 12:
            if (v39 != 12)
            {
LABEL_87:
              sub_1AF4456D0(v25, v26, v27);
LABEL_88:
              swift_unknownObjectRelease();

              goto LABEL_91;
            }

            v20 = vandq_s8(vandq_s8(vceqq_f32(v28, v35), vceqq_f32(v29, v36)), vandq_s8(vceqq_f32(v30, v37), vceqq_f32(v31, v38)));
LABEL_20:
            v21 = vminvq_u32(v20);
LABEL_21:
            v22 = v21;
            sub_1AF4456D0(v25, v26, v27);
            v23 = v68;
            if ((v22 & 0x80000000) == 0)
            {
              goto LABEL_88;
            }

            goto LABEL_22;
          case 13:
            v81 = v35.i16[0];
            sub_1AF4456D0(v25, v26, v27);
            if (v39 != 13)
            {
              goto LABEL_88;
            }

            v88 = v81;
            v23 = v68;
            if ((v81 & 1) != (v41 & 1))
            {
              goto LABEL_88;
            }

            goto LABEL_22;
          case 14:
            v77 = v35.i32[0];
            sub_1AF4456D0(v25, v26, v27);
            if (v39 != 14)
            {
              goto LABEL_88;
            }

            goto LABEL_56;
          case 15:
            v77 = v35.i32[0];
            sub_1AF4456D0(v25, v26, v27);
            if (v39 != 15)
            {
              goto LABEL_85;
            }

LABEL_56:
            v23 = v68;
            if (v77 != v41)
            {
              goto LABEL_85;
            }

            goto LABEL_22;
          default:
            v71 = v28.f32[0];
            v76 = v35.f32[0];
            sub_1AF4456D0(v25, v26, v27);
            v23 = v68;
            if (v39 || v76 != v71)
            {
              goto LABEL_90;
            }

            goto LABEL_22;
        }

        break;
      }
    }
  }

  return v5;
}

unint64_t sub_1AF41CB5C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      sub_1AF44596C(*(v2 + 48) + 32 * v4, v10);
      if (v10[2] == *(a1 + 16) && v10[3] == *(a1 + 24))
      {
        break;
      }

      v8 = sub_1AFDFEE28();
      sub_1AF4459C8(v10);
      if ((v8 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    sub_1AF4459C8(v10);
  }

  return v4;
}

unint64_t sub_1AF41CC38(__int16 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v8 = (*(v2 + 48) + 2 * v4);
      if (*v8 > 1u)
      {
        if (*v8 == 2)
        {
          v9 = 0xE700000000000000;
          v10 = 0x534F6863746177;
        }

        else
        {
          v9 = 0xE400000000000000;
          v10 = 1397716596;
        }
      }

      else if (*v8)
      {
        v9 = 0xE500000000000000;
        v10 = 0x534F63616DLL;
      }

      else
      {
        v9 = 0xE300000000000000;
        v10 = 5459817;
      }

      v11 = v8[1];
      v12 = 0x534F6863746177;
      if (a1 != 2)
      {
        v12 = 1397716596;
      }

      v13 = 0xE700000000000000;
      if (a1 != 2)
      {
        v13 = 0xE400000000000000;
      }

      v14 = 0x534F63616DLL;
      if (!a1)
      {
        v14 = 5459817;
      }

      v15 = 0xE300000000000000;
      if (a1)
      {
        v15 = 0xE500000000000000;
      }

      if (a1 <= 1u)
      {
        v16 = v14;
      }

      else
      {
        v16 = v12;
      }

      if (a1 <= 1u)
      {
        v17 = v15;
      }

      else
      {
        v17 = v13;
      }

      if (v10 == v16 && v9 == v17)
      {
      }

      else
      {
        v18 = sub_1AFDFEE28();

        if ((v18 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if (v11 > 1)
      {
        if (v11 == 2)
        {
          v19 = 0xE600000000000000;
          v20 = 0x6534366D7261;
        }

        else
        {
          v19 = 0xE800000000000000;
          v20 = 0x32335F34366D7261;
        }
      }

      else if (v11)
      {
        v19 = 0xE500000000000000;
        v20 = 0x34366D7261;
      }

      else
      {
        v19 = 0xE600000000000000;
        v20 = 0x34365F363878;
      }

      v21 = 0x32335F34366D7261;
      if (HIBYTE(a1) == 2)
      {
        v21 = 0x6534366D7261;
      }

      v22 = 0xE800000000000000;
      if (HIBYTE(a1) == 2)
      {
        v22 = 0xE600000000000000;
      }

      v23 = 0x34365F363878;
      if (HIBYTE(a1))
      {
        v23 = 0x34366D7261;
        v24 = 0xE500000000000000;
      }

      else
      {
        v24 = 0xE600000000000000;
      }

      if (HIBYTE(a1) <= 1u)
      {
        v25 = v23;
      }

      else
      {
        v25 = v21;
      }

      if (HIBYTE(a1) <= 1u)
      {
        v26 = v24;
      }

      else
      {
        v26 = v22;
      }

      if (v20 == v25 && v19 == v26)
      {

        return v4;
      }

      v7 = sub_1AFDFEE28();

      if (v7)
      {
        return v4;
      }

LABEL_4:
      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1AF41CF00(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(v2 + 48) + 8 * result;
      if (*(v7 + 4))
      {
        if ((a1 & 0x100000000) != 0)
        {
          return result;
        }
      }

      else if ((a1 & 0x100000000) == 0 && *v7 == a1)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1AF41CF84(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = 0xE100000000000000;
    v6 = a1;
    v7 = 0xE200000000000000;
    while (1)
    {
      v8 = *(*(v2 + 48) + v4);
      if (v8 <= 1)
      {
        if (*(*(v2 + 48) + v4))
        {
          v9 = 0x7070636A626FLL;
        }

        else
        {
          v9 = 99;
        }

        if (*(*(v2 + 48) + v4))
        {
          v10 = 0xE600000000000000;
        }

        else
        {
          v10 = 0xE100000000000000;
        }
      }

      else if (v8 == 2)
      {
        v10 = 0xE500000000000000;
        v9 = 0x6C6174656DLL;
      }

      else
      {
        if (v8 == 3)
        {
          v9 = 0x7466697773;
        }

        else
        {
          v9 = 29546;
        }

        if (v8 == 3)
        {
          v10 = 0xE500000000000000;
        }

        else
        {
          v10 = 0xE200000000000000;
        }
      }

      if (v6 == 3)
      {
        v11 = 0x7466697773;
      }

      else
      {
        v11 = 29546;
      }

      if (v6 == 3)
      {
        v7 = 0xE500000000000000;
      }

      if (v6 == 2)
      {
        v11 = 0x6C6174656DLL;
        v7 = 0xE500000000000000;
      }

      if (v6)
      {
        v12 = 0x7070636A626FLL;
      }

      else
      {
        v12 = 99;
      }

      if (v6)
      {
        v5 = 0xE600000000000000;
      }

      v13 = v6 <= 1 ? v12 : v11;
      v14 = v6 <= 1 ? v5 : v7;
      if (v9 == v13 && v10 == v14)
      {
        break;
      }

      v15 = sub_1AFDFEE28();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        v5 = 0xE100000000000000;
        v7 = 0xE200000000000000;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1AF41D144(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v7 = ~v4;
    while (1)
    {
      v8 = *(v6 + 48) + 40 * v5;
      v9 = *(v8 + 32);
      v10 = *(v8 + 16);
      v18[0] = *v8;
      v18[1] = v10;
      v19 = v9;
      sub_1AF444F60(v18, v17);
      v11 = sub_1AF7FE65C();
      v13 = v12;
      if (v11 == sub_1AF7FE65C() && v13 == v14)
      {
        break;
      }

      v15 = sub_1AFDFEE28();

      sub_1AF444FBC(v18);
      if ((v15 & 1) == 0)
      {
        v5 = (v5 + 1) & v7;
        if ((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v5;
    }

    sub_1AF444FBC(v18);
  }

  return v5;
}

unint64_t sub_1AF41D294(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), const char *a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_1AF43A5EC(v24, v25, v26);
      v20 = sub_1AFDFCE58();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_1AF41D434(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  for (result = a2 & ~v4; ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0; result = (result + 1) & ~v4)
  {
    v6 = *(*(v2 + 48) + 8 * result);
    if (*(v6 + 96) == *(a1 + 96) && *(v6 + 100) == *(a1 + 100) && *(v6 + 102) == *(a1 + 102) && *(v6 + 104) == *(a1 + 104) && *(v6 + 108) == *(a1 + 108) && *(v6 + 110) == *(a1 + 110) && *(v6 + 112) == *(a1 + 112) && *(v6 + 116) == *(a1 + 116) && *(v6 + 118) == *(a1 + 118) && *(v6 + 120) == *(a1 + 120) && *(v6 + 124) == *(a1 + 124) && *(v6 + 126) == *(a1 + 126) && *(v6 + 128) == *(a1 + 128) && *(v6 + 132) == *(a1 + 132) && *(v6 + 134) == *(a1 + 134) && *(v6 + 136) == *(a1 + 136) && *(v6 + 140) == *(a1 + 140) && *(v6 + 142) == *(a1 + 142) && *(v6 + 144) == *(a1 + 144) && *(v6 + 148) == *(a1 + 148) && *(v6 + 150) == *(a1 + 150) && *(v6 + 152) == *(a1 + 152) && *(v6 + 156) == *(a1 + 156) && *(v6 + 158) == *(a1 + 158) && *(v6 + 160) == *(a1 + 160) && *(v6 + 164) == *(a1 + 164) && *(v6 + 166) == *(a1 + 166) && *(v6 + 168) == *(a1 + 168) && *(v6 + 172) == *(a1 + 172) && *(v6 + 174) == *(a1 + 174) && *(v6 + 16) == *(a1 + 16) && *(v6 + 20) == *(a1 + 20) && *(v6 + 22) == *(a1 + 22) && *(v6 + 24) == *(a1 + 24) && *(v6 + 28) == *(a1 + 28) && *(v6 + 30) == *(a1 + 30) && *(v6 + 32) == *(a1 + 32) && *(v6 + 36) == *(a1 + 36) && *(v6 + 38) == *(a1 + 38) && *(v6 + 40) == *(a1 + 40) && *(v6 + 44) == *(a1 + 44) && *(v6 + 46) == *(a1 + 46) && *(v6 + 48) == *(a1 + 48) && *(v6 + 52) == *(a1 + 52) && *(v6 + 54) == *(a1 + 54) && *(v6 + 56) == *(a1 + 56) && *(v6 + 60) == *(a1 + 60) && *(v6 + 62) == *(a1 + 62) && *(v6 + 64) == *(a1 + 64) && *(v6 + 68) == *(a1 + 68) && *(v6 + 70) == *(a1 + 70) && *(v6 + 72) == *(a1 + 72) && *(v6 + 76) == *(a1 + 76) && *(v6 + 78) == *(a1 + 78) && *(v6 + 80) == *(a1 + 80) && *(v6 + 84) == *(a1 + 84) && *(v6 + 86) == *(a1 + 86) && *(v6 + 88) == *(a1 + 88) && *(v6 + 92) == *(a1 + 92) && *(v6 + 94) == *(a1 + 94))
    {
      break;
    }
  }

  return result;
}

unint64_t sub_1AF41D8D4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __s1[2] = *MEMORY[0x1E69E9840];
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v10 = a2 >> 62;
    v11 = ~v5;
    if (a1)
    {
      v12 = 0;
    }

    else
    {
      v12 = a2 == 0xC000000000000000;
    }

    v13 = !v12;
    v59 = v13;
    v54 = a1;
    v55 = (a1 >> 32) - a1;
    v56 = (0xFFFFFFFF00000001 * a1) >> 32;
    __n = BYTE6(a2);
    v57 = v3 + 64;
    v58 = ~v5;
    while (1)
    {
      v14 = (*(v7 + 48) + 16 * v6);
      v16 = *v14;
      v15 = v14[1];
      v17 = v15 >> 62;
      if (v15 >> 62 == 3)
      {
        break;
      }

      if (v17 > 1)
      {
        if (v17 == 2)
        {
          v21 = *(v16 + 24) - *(v16 + 16);
          if (v10 <= 1)
          {
            goto LABEL_33;
          }

          goto LABEL_27;
        }

        goto LABEL_32;
      }

      v21 = BYTE6(v15);
      if (v17)
      {
        v21 = (0xFFFFFFFF00000001 * v16) >> 32;
      }

      if (v10 <= 1)
      {
LABEL_33:
        v22 = __n;
        if (v10)
        {
          v22 = v56;
        }

        goto LABEL_35;
      }

LABEL_27:
      if (v10 != 2)
      {
        if (!v21)
        {
          return v6;
        }

        goto LABEL_10;
      }

      v22 = *(a1 + 24) - *(a1 + 16);
LABEL_35:
      if (v21 != v22)
      {
        goto LABEL_10;
      }

      if (v21 < 1)
      {
        return v6;
      }

      if (v17 > 1)
      {
        if (v17 != 2)
        {
          memset(__s1, 0, 14);
          if (!v10)
          {
LABEL_83:
            __s2 = a1;
            v62 = a2;
            v63 = BYTE2(a2);
            v64 = BYTE3(a2);
            v65 = BYTE4(a2);
            v66 = BYTE5(a2);
            v49 = memcmp(__s1, &__s2, __n);
            v11 = v58;
            if (!v49)
            {
              return v6;
            }

            goto LABEL_10;
          }

          if (v10 == 2)
          {
LABEL_75:
            v43 = *(a1 + 16);
            v53 = *(a1 + 24);
            sub_1AF43C9F0(v16, v15);
            v44 = sub_1AFDFBDB8();
            if (v44)
            {
              v44 = v44 + v43 - sub_1AFDFBDE8();
            }

            v45 = sub_1AFDFBDD8();
            v46 = v53 - v43;
            if (v45 < v53 - v43)
            {
              v46 = v45;
            }

            v47 = v44 + v46;
            if (!v44)
            {
              v47 = 0;
            }

            v36 = v47 - v44;
            v37 = __s1;
            v42 = v44;
            goto LABEL_82;
          }

          goto LABEL_41;
        }

        v30 = *(v16 + 16);
        sub_1AF43C9F0(v16, v15);
        v31 = sub_1AFDFBDB8();
        if (v31)
        {
          v31 = v31 + v30 - sub_1AFDFBDE8();
        }

        sub_1AFDFBDD8();
        v4 = v57;
        if (v10 == 2)
        {
LABEL_64:
          v52 = v31;
          v38 = *(a1 + 16);
          v51 = *(a1 + 24);
          v32 = sub_1AFDFBDB8();
          if (v32)
          {
            v32 = v32 + v38 - sub_1AFDFBDE8();
          }

          v39 = sub_1AFDFBDD8();
          if (v52 == v32)
          {
            goto LABEL_90;
          }

          v40 = v51 - v38;
          if (v39 < v51 - v38)
          {
            v40 = v39;
          }

          v41 = v32 + v40;
          if (!v32)
          {
            v41 = 0;
          }

          v36 = v41 - v32;
          v37 = v52;
LABEL_72:
          v42 = v32;
LABEL_82:
          v48 = memcmp(v37, v42, v36);
          sub_1AF439ED8(v16, v15);
          v4 = v57;
          goto LABEL_87;
        }
      }

      else
      {
        if (!v17)
        {
          __s1[0] = v16;
          LOWORD(__s1[1]) = v15;
          BYTE2(__s1[1]) = BYTE2(v15);
          BYTE3(__s1[1]) = BYTE3(v15);
          BYTE4(__s1[1]) = BYTE4(v15);
          BYTE5(__s1[1]) = BYTE5(v15);
          if (!v10)
          {
            goto LABEL_83;
          }

          if (v10 != 1)
          {
            goto LABEL_75;
          }

LABEL_41:
          sub_1AF43C9F0(v16, v15);
          v23 = sub_1AFDFBDB8();
          if (v23)
          {
            v23 = v23 + v54 - sub_1AFDFBDE8();
          }

          v24 = sub_1AFDFBDD8();
          v25 = v55;
          if (v24 < v55)
          {
            v25 = v24;
          }

          v26 = v23 + v25;
          if (!v23)
          {
            v26 = 0;
          }

          v27 = v26 - v23;
          v28 = __s1;
          v29 = v23;
          goto LABEL_86;
        }

        sub_1AF43C9F0(v16, v15);
        v31 = sub_1AFDFBDB8();
        if (v31)
        {
          v31 = v31 + v16 - sub_1AFDFBDE8();
        }

        sub_1AFDFBDD8();
        if (v10 == 2)
        {
          goto LABEL_64;
        }
      }

      if (v10 == 1)
      {
        v32 = sub_1AFDFBDB8();
        if (v32)
        {
          v32 = v32 + v54 - sub_1AFDFBDE8();
        }

        v33 = sub_1AFDFBDD8();
        if (v31 == v32)
        {
LABEL_90:
          sub_1AF439ED8(v16, v15);
          return v6;
        }

        v34 = v55;
        if (v33 < v55)
        {
          v34 = v33;
        }

        v35 = v32 + v34;
        if (!v32)
        {
          v35 = 0;
        }

        v36 = v35 - v32;
        v37 = v31;
        goto LABEL_72;
      }

      __s1[0] = a1;
      LOWORD(__s1[1]) = a2;
      BYTE2(__s1[1]) = BYTE2(a2);
      BYTE3(__s1[1]) = BYTE3(a2);
      BYTE4(__s1[1]) = BYTE4(a2);
      BYTE5(__s1[1]) = BYTE5(a2);
      v29 = __s1;
      v28 = v31;
      v27 = __n;
LABEL_86:
      v48 = memcmp(v28, v29, v27);
      sub_1AF439ED8(v16, v15);
LABEL_87:
      v11 = v58;
      if (!v48)
      {
        return v6;
      }

LABEL_10:
      v6 = (v6 + 1) & v11;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        return v6;
      }
    }

    if (v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = v15 == 0xC000000000000000;
    }

    v20 = !v18 || v10 < 3;
    if (((v20 | v59) & 1) == 0)
    {
      return v6;
    }

LABEL_32:
    v21 = 0;
    if (v10 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  return v6;
}

unint64_t sub_1AF41DE94(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1AF0D4478(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_1AFDFDC48();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1AF41DF60(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = a1;
    v8 = ~v5;
    do
    {
      v9 = (*(v3 + 48) + 16 * result);
      v10 = *v9;
      v11 = *(v9 + 1);
      if (v10 == v7 && v11 == a2)
      {
        break;
      }

      result = (result + 1) & v8;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1AF41DFE0(unsigned __int8 *a1, uint64_t a2)
{
  v5 = type metadata accessor for TextureCache.TextureKey(0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *a1;
    v13 = *(v6 + 72);
    do
    {
      sub_1AF4495B8(*(v2 + 48) + v13 * v10, v8, type metadata accessor for TextureCache.TextureKey);
      if (v12 == *v8 && (sub_1AFDFC0A8() & 1) != 0)
      {
        v14 = &v8[*(v5 + 24)];
        v16 = *v14;
        v15 = *(v14 + 1);
        v31 = *(v14 + 2);
        v32 = v15;
        LODWORD(v15) = v14[24];
        v17 = *(v14 + 4);
        v33 = *(v14 + 5);
        v34 = v17;
        v30 = *(v14 + 6);
        v35 = *(v14 + 28);
        v36 = v15;
        sub_1AF44943C(v8, type metadata accessor for TextureCache.TextureKey);
        v18 = &a1[*(v5 + 24)];
        if (v16 == *v18)
        {
          v19 = v18[24];
          v20 = *(v18 + 4);
          v21 = *(v18 + 5);
          v22 = *(v18 + 6);
          v23 = *(v18 + 28);
          if (v36 <= 0xFD)
          {
            if (v19 > 0xFD)
            {
              goto LABEL_4;
            }

            v26 = *(v18 + 1);
            v25 = *(v18 + 2);
            if ((v36 & 0x80) != 0)
            {
              if ((v19 & 0x80) == 0 || v32 != v26 || v31 != v25)
              {
                goto LABEL_4;
              }
            }

            else if (v19 & 0x80) != 0 || v32 != v26 || v31 != v25 || ((v19 ^ v36))
            {
              goto LABEL_4;
            }
          }

          else if (v19 <= 0xFD)
          {
            goto LABEL_4;
          }

          v24 = v23 & 0xFF00;
          if ((v35 & 0xFF00) == 0x300)
          {
            if (v24 == 768)
            {
              return v10;
            }
          }

          else
          {
            if (v24 == 768 || v34 != v20 || v33 != v21)
            {
              goto LABEL_4;
            }

            if (v35)
            {
              if ((v23 & 1) == 0)
              {
                goto LABEL_4;
              }
            }

            else if ((v23 & 1) != 0 || v30 != v22)
            {
              goto LABEL_4;
            }

            if (v35 >> 8 == v23 >> 8)
            {
              return v10;
            }
          }
        }
      }

      else
      {
        sub_1AF44943C(v8, type metadata accessor for TextureCache.TextureKey);
      }

LABEL_4:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1AF41E2B0(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v8 = *(v2 + 48) + 40 * result;
      if (*v8 == *a1 && *(v8 + 8) == *(a1 + 8) && *(v8 + 16) == *(a1 + 16))
      {
        if (*(v8 + 32))
        {
          if (*(a1 + 32))
          {
            return result;
          }
        }

        else
        {
          if (*(v8 + 24) == *(a1 + 24))
          {
            v7 = *(a1 + 32);
          }

          else
          {
            v7 = 1;
          }

          if ((v7 & 1) == 0)
          {
            return result;
          }
        }
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1AF41E370(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v2 + 48) + 8 * result);
      v9 = *v7;
      v8 = v7[1];
      if (v9 == a1 && v8 == HIDWORD(a1))
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1AF41E3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v10 = ~v6;
    do
    {
      v11 = *(v5 + 48) + 32 * v7;
      if (*(v11 + 16) == a3 && *(v11 + 24) == a4)
      {
        break;
      }

      if (sub_1AFDFEE28())
      {
        break;
      }

      v7 = (v7 + 1) & v10;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_1AF41E4A0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE800000000000000;
      v8 = 0x746E6174736E6F43;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE400000000000000;
          v8 = 1752457549;
          break;
        case 2:
          v7 = 0xE400000000000000;
          v8 = 2003790918;
          break;
        case 3:
          v7 = 0xE500000000000000;
          v8 = 0x6369676F4CLL;
          break;
        case 4:
          v7 = 0xE600000000000000;
          v8 = 0x6D6F646E6152;
          break;
        case 5:
          v7 = 0xE600000000000000;
          v8 = 0x676E69736145;
          break;
        case 6:
          v8 = 0x69737265766E6F43;
          v7 = 0xEA00000000006E6FLL;
          break;
        case 7:
          v7 = 0xE600000000000000;
          v8 = 0x7463656A624FLL;
          break;
        case 8:
          v8 = 0x6E69746E65726150;
          v7 = 0xE900000000000067;
          break;
        case 9:
          v7 = 0xEA0000000000736ELL;
          v8 = 0x6F6974616D696E41;
          break;
        case 0xA:
          v8 = 0x616E6964726F6F43;
          v7 = 0xEB00000000736574;
          break;
        case 0xB:
          v7 = 0xE900000000000073;
          v8 = 0x656974696C697455;
          break;
        case 0xC:
          v8 = 0x47207265646E6552;
          v7 = 0xEC00000068706172;
          break;
        case 0xD:
          v7 = 0xE700000000000000;
          v8 = 0x65727574786554;
          break;
        case 0xE:
          v8 = 0x6870617267627553;
          break;
        default:
          break;
      }

      v9 = 0xE800000000000000;
      v10 = 0x746E6174736E6F43;
      switch(a1)
      {
        case 1:
          v9 = 0xE400000000000000;
          if (v8 == 1752457549)
          {
            goto LABEL_45;
          }

          goto LABEL_46;
        case 2:
          v9 = 0xE400000000000000;
          if (v8 != 2003790918)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 3:
          v9 = 0xE500000000000000;
          if (v8 != 0x6369676F4CLL)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 4:
          v9 = 0xE600000000000000;
          if (v8 != 0x6D6F646E6152)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 5:
          v9 = 0xE600000000000000;
          if (v8 != 0x676E69736145)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 6:
          v9 = 0xEA00000000006E6FLL;
          if (v8 != 0x69737265766E6F43)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 7:
          v9 = 0xE600000000000000;
          if (v8 != 0x7463656A624FLL)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 8:
          v9 = 0xE900000000000067;
          if (v8 != 0x6E69746E65726150)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 9:
          v9 = 0xEA0000000000736ELL;
          if (v8 != 0x6F6974616D696E41)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 10:
          v10 = 0x616E6964726F6F43;
          v9 = 0xEB00000000736574;
          goto LABEL_44;
        case 11:
          v9 = 0xE900000000000073;
          if (v8 != 0x656974696C697455)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 12:
          v9 = 0xEC00000068706172;
          if (v8 != 0x47207265646E6552)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 13:
          v9 = 0xE700000000000000;
          if (v8 != 0x65727574786554)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        case 14:
          if (v8 != 0x6870617267627553)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        default:
LABEL_44:
          if (v8 != v10)
          {
            goto LABEL_46;
          }

LABEL_45:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_46:
          v11 = sub_1AFDFEE28();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_1AF41E8F8(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v31 = ~v3;
    v5 = *a1;
    v6 = a1[1];
    v7 = *(a1 + 16);
    v34 = a1[3];
    v30 = a1[4];
    do
    {
      v9 = *(v33 + 48) + 40 * v4;
      v10 = *(v9 + 16);
      v12 = *(v9 + 24);
      v11 = *(v9 + 32);
      v13 = *v9 == v5 && *(v9 + 8) == v6;
      if (!v13 && (sub_1AFDFEE28() & 1) == 0)
      {
        goto LABEL_4;
      }

      if (v10 <= 4)
      {
        v16 = 0xD000000000000018;
        v17 = 0x80000001AFF25F50;
        if (v10 == 3)
        {
          v17 = 0x80000001AFF25F30;
        }

        if (v10 == 2)
        {
          v17 = 0x80000001AFF25F10;
        }

        else
        {
          v16 = 0xD000000000000011;
        }

        v18 = 0x70696E5365646F43;
        if (v10)
        {
          v18 = 0x656C626169726156;
        }

        v19 = 0xEF74657070696E53;
        if (!v10)
        {
          v19 = 0xEB00000000746570;
        }

        if (v10 <= 1)
        {
          v15 = v18;
        }

        else
        {
          v15 = v16;
        }

        if (v10 <= 1)
        {
          v14 = v19;
        }

        else
        {
          v14 = v17;
        }
      }

      else if (v10 > 7)
      {
        if (v10 == 8)
        {
          v14 = 0xEA00000000007478;
          v15 = 0x65746E6F43627553;
        }

        else if (v10 == 9)
        {
          v15 = 0xD000000000000014;
          v14 = 0x80000001AFF25FB0;
        }

        else
        {
          v15 = 0x656A624F65736142;
          v14 = 0xEA00000000007463;
        }
      }

      else if (v10 == 5)
      {
        v15 = 0xD000000000000013;
        v14 = 0x80000001AFF25F70;
      }

      else
      {
        if (v10 == 6)
        {
          v14 = 0xEB00000000746978;
        }

        else
        {
          v14 = 0xEC0000007972746ELL;
        }

        v15 = 0x45747865746E6F43;
      }

      if (v7 <= 4)
      {
        if (v7 <= 1)
        {
          v25 = 0x70696E5365646F43;
          v26 = 0xEB00000000746570;
          if (v7)
          {
            v25 = 0x656C626169726156;
            v26 = 0xEF74657070696E53;
          }
        }

        else
        {
          v27 = 0x80000001AFF25F50;
          if (v7 == 3)
          {
            v27 = 0x80000001AFF25F30;
          }

          if (v7 == 2)
          {
            v25 = 0xD000000000000018;
          }

          else
          {
            v25 = 0xD000000000000011;
          }

          if (v7 == 2)
          {
            v26 = 0x80000001AFF25F10;
          }

          else
          {
            v26 = v27;
          }
        }
      }

      else
      {
        v20 = 0xEA00000000007463;
        v21 = 0xEA00000000007478;
        v22 = 0xD000000000000014;
        if (v7 == 9)
        {
          v20 = 0x80000001AFF25FB0;
        }

        else
        {
          v22 = 0x656A624F65736142;
        }

        if (v7 == 8)
        {
          v22 = 0x65746E6F43627553;
        }

        else
        {
          v21 = v20;
        }

        v23 = 0xD000000000000013;
        v24 = 0xEB00000000746978;
        if (v7 != 6)
        {
          v24 = 0xEC0000007972746ELL;
        }

        if (v7 == 5)
        {
          v24 = 0x80000001AFF25F70;
        }

        else
        {
          v23 = 0x45747865746E6F43;
        }

        if (v7 <= 7)
        {
          v25 = v23;
        }

        else
        {
          v25 = v22;
        }

        if (v7 <= 7)
        {
          v26 = v24;
        }

        else
        {
          v26 = v21;
        }
      }

      if (v15 == v25 && v14 == v26)
      {
      }

      else
      {
        v28 = sub_1AFDFEE28();

        if ((v28 & 1) == 0)
        {

          goto LABEL_4;
        }
      }

      if (v12 == v34 && v11 == v30)
      {

        return v4;
      }

      v8 = sub_1AFDFEE28();

      if (v8)
      {
        return v4;
      }

LABEL_4:
      v4 = (v4 + 1) & v31;
    }

    while (((*(v32 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1AF41ED94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v10 = ~v6;
    do
    {
      v11 = (*(v5 + 48) + 32 * v7);
      if (*v11 == a1 && v11[1] == a2)
      {
        break;
      }

      if (sub_1AFDFEE28())
      {
        break;
      }

      v7 = (v7 + 1) & v10;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_1AF41EE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      v9 = *v8;
      v11 = *(v8 + 8);
      v10 = *(v8 + 12);
      if (v9 == a1 && v11 == a2 && v10 == HIDWORD(a2))
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1AF41EED0(void *a1, void *a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  v22 = v3 + 64;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v3;
    v21 = ~v4;
    do
    {
      v11 = *(v6 + 48) + 16 * v5;
      v13 = *v11;
      v12 = *(v11 + 8);
      if (*v11)
      {
        if (!a1)
        {
          goto LABEL_6;
        }

        sub_1AF0D4478(0, &qword_1ED72F7F0, &off_1E7A77B60);
        v9 = v12;
        v14 = a1;
        v10 = v13;
        v15 = sub_1AFDFDC48();

        if ((v15 & 1) == 0)
        {
          goto LABEL_4;
        }

        if (!v12)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (a1)
        {
          goto LABEL_6;
        }

        v19 = v12;
        if (!v12)
        {
LABEL_16:
          v10 = a2;

          if (!a2)
          {
            return v5;
          }

          goto LABEL_5;
        }
      }

      if (!a2)
      {
        v9 = v13;
        v10 = v12;
LABEL_4:

LABEL_5:
        goto LABEL_6;
      }

      sub_1AF0D4478(0, &qword_1ED72F7F0, &off_1E7A77B60);
      v16 = v12;
      v17 = a2;
      v18 = sub_1AFDFDC48();

      if (v18)
      {
        return v5;
      }

LABEL_6:
      v5 = (v5 + 1) & v21;
    }

    while (((*(v22 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1AF41F06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      v9 = *v8;
      v10 = *(v8 + 4);
      v11 = *(v8 + 8);
      if (v9 == a1 && v10 == HIDWORD(a1) && v11 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1AF41F0F0(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v8 = &type metadata for GraphScheduling;
    do
    {
      sub_1AF447040(*(v2 + 48) + 48 * v5, v35);
      sub_1AF447040(v35, v27);
      sub_1AF447040(a1, &v30);
      if (v29)
      {
        if (v29 == 1)
        {
          v9 = v7;
          v10 = a1;
          v11 = v8;
          sub_1AF447040(v27, &v25);
          v12 = v25;
          if (v34 == 1)
          {
            v13 = v30;
            sub_1AF447144(v26, v24);
            sub_1AF447144(&v31, v23);
            v14 = sub_1AFDFCEF8();
            v16 = v15;
            if (v14 == sub_1AFDFCEF8() && v16 == v17)
            {
            }

            else
            {
              v20 = sub_1AFDFEE28();

              if ((v20 & 1) == 0)
              {

                sub_1AF4470F0(v23);
                sub_1AF4470F0(v24);
                sub_1AF44709C(v35);
                sub_1AF44709C(v27);
                v8 = v11;
                a1 = v10;
                v7 = v9;
                v3 = v2 + 64;
                goto LABEL_5;
              }
            }

            v21 = sub_1AF9B2978(v24, v23);

            sub_1AF4470F0(v23);
            sub_1AF4470F0(v24);
            sub_1AF44709C(v35);
            v8 = v11;
            a1 = v10;
            v7 = v9;
            v3 = v2 + 64;
            if (v21)
            {
              goto LABEL_31;
            }

            goto LABEL_28;
          }

          sub_1AF44709C(v35);
          sub_1AF4470F0(v26);
          v8 = v11;
          a1 = v10;
          v7 = v9;
          v3 = v2 + 64;
        }

        else if (v28 || v27[3] | v27[4] | v27[0] | v27[2] | v27[1])
        {
          sub_1AF44709C(v35);
          if (v34 == 2 && !v33 && v30 == 1)
          {
            v19 = vorrq_s8(v31, v32);
            if (!*&vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL)))
            {
LABEL_31:
              sub_1AF44709C(v27);
              return v5;
            }
          }
        }

        else
        {
          sub_1AF44709C(v35);
          if (v34 == 2 && !v33)
          {
            v18 = vorrq_s8(v31, v32);
            if (!(*&vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL)) | v30))
            {
              goto LABEL_31;
            }
          }
        }
      }

      else
      {
        sub_1AF44709C(v35);
        sub_1AF447040(v27, &v25);
        if (!v34)
        {
          if (v25 == v30)
          {
            goto LABEL_31;
          }

LABEL_28:
          sub_1AF44709C(v27);
          goto LABEL_5;
        }
      }

      sub_1AF444058(v27, &qword_1EB638B10, v8, v8, sub_1AF0D8108);
LABEL_5:
      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1AF41F478(unint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = *(*(v2 + 48) + 8 * v4);
      sub_1AF443EE0(v7);
      v8 = sub_1AFAB5FF0(v7, a1);
      sub_1AF443F24(v7);
      if (v8)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1AF41F534(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1AF442860(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1B2719B80](v9, a1);
      sub_1AF4428BC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1AF41F5FC(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v23 = ~v5;
    v9 = a3;
    do
    {
      v11 = *(v4 + 48) + 24 * v6;
      v12 = *(v11 + 16);
      v13 = *v11 == a1 && *(v11 + 8) == a2;
      if (v13 || (sub_1AFDFEE28() & 1) != 0)
      {
        if (v12 > 2)
        {
          if (v12 == 3)
          {
            v14 = 0x6579616C50584656;
            v15 = 0xEB00000000565472;
          }

          else if (v12 == 4)
          {
            v15 = 0xE800000000000000;
            v14 = 0x6C74635846565345;
          }

          else
          {
            v15 = 0xE500000000000000;
            v14 = 0x726568744FLL;
          }
        }

        else if (v12)
        {
          if (v12 == 1)
          {
            v14 = 0x6579616C50584656;
            v15 = 0xEC00000063614D72;
          }

          else
          {
            v14 = 0xD000000000000012;
            v15 = 0x80000001AFF26120;
          }
        }

        else
        {
          v14 = 0x6579616C50584656;
          v15 = 0xE900000000000072;
        }

        v16 = 0x6C74635846565345;
        if (v9 != 4)
        {
          v16 = 0x726568744FLL;
        }

        v17 = 0xE800000000000000;
        if (v9 != 4)
        {
          v17 = 0xE500000000000000;
        }

        if (v9 == 3)
        {
          v16 = 0x6579616C50584656;
          v17 = 0xEB00000000565472;
        }

        v18 = 0xD000000000000012;
        if (v9 == 1)
        {
          v18 = 0x6579616C50584656;
        }

        v19 = 0xEC00000063614D72;
        if (v9 != 1)
        {
          v19 = 0x80000001AFF26120;
        }

        if (!v9)
        {
          v18 = 0x6579616C50584656;
          v19 = 0xE900000000000072;
        }

        if (v9 <= 2)
        {
          v20 = v18;
        }

        else
        {
          v20 = v16;
        }

        if (v9 <= 2)
        {
          v21 = v19;
        }

        else
        {
          v21 = v17;
        }

        if (v14 == v20 && v15 == v21)
        {

          return v6;
        }

        v10 = sub_1AFDFEE28();

        if (v10)
        {
          return v6;
        }
      }

      v6 = (v6 + 1) & v23;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1AF41F870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v31 = a2;
  v5 = sub_1AFDFC318();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - v11;
  v32 = v3;
  v13 = -1 << *(v3 + 32);
  v14 = a3 & ~v13;
  v29 = v3 + 64;
  if ((*(v3 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v26 = ~v13;
    v16 = *(v6 + 16);
    v15 = v6 + 16;
    v27 = v16;
    v28 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
    v17 = (v15 - 8);
    do
    {
      v18 = (*(v32 + 48) + 16 * v14);
      v19 = v18[1];
      v20 = v27;
      (v27)(v12, *v18 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v5, v10);
      v21 = v15;
      v20(v8, v30 + v28, v5);

      v22 = sub_1AFDFC2D8();
      v23 = *v17;
      (*v17)(v8, v5);
      v23(v12, v5);

      if ((v22 & (v19 == v31)) == 1)
      {
        break;
      }

      v14 = (v14 + 1) & v26;
      v15 = v21;
    }

    while (((*(v29 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_1AF41FA98(__int16 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + 2 * result) == a1) & (((a1 & 0x100) == 0) ^ *(*(v2 + 48) + 2 * result + 1))) == 1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_1AF41FB68(char a1, int64_t a2, char a3, void *a4)
{
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = a4[2];
  if (a2 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF444400(0);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 != a4 || v11 + 4 >= &a4[3 * v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 24 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF448BAC(0, &unk_1EB632390, type metadata accessor for AuthoringNode);
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF41FC9C(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &unk_1EB630980, &type metadata for AnyValue, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 40);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v13 >= &v14[40 * v9])
    {
      memmove(v13, v14, 40 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF41FDF8(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1ED726990, MEMORY[0x1E69E6448], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 29;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 2);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[4 * v9])
    {
      memmove(v14, v15, 4 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 4 * v9);
  }

  return v11;
}

void *sub_1AF41FF24(char a1, int64_t a2, char a3, void *a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t a7)
{
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    v13 = v11 & 0xFFFFFFFFFFFFFFFELL;
    if (v13 <= a2)
    {
      v13 = a2;
    }

    if (v12 < a2)
    {
      a2 = v13;
    }

    else
    {
      a2 = v12;
    }
  }

  v14 = a4[2];
  if (a2 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = a2;
  }

  if (v15)
  {
    a5(0);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF449B08(0, a6, a7, MEMORY[0x1E69E6720]);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1AF420058(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449890(0, &qword_1ED726960, type metadata accessor for vfx_memory_entry_t, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v13 >= &v14[24 * v9])
    {
      memmove(v13, v14, 24 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 24 * v9);
  }

  return v11;
}

char *sub_1AF420180(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1ED726A58, &type metadata for ChunksStorage, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 40);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v13 >= &v14[40 * v9])
    {
      memmove(v13, v14, 40 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_1AF4202A0(char a1, int64_t a2, char a3, void *a4)
{
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = a4[2];
  if (a2 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449890(0, &unk_1ED726A18, sub_1AF4458D4, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    v11[2] = v9;
    v11[3] = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 < a4 || v11 + 4 >= &a4[v9 + 4])
    {
      sub_1AF4458D4(0);
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11 != a4)
    {
      sub_1AF4458D4(0);
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF4458D4(0);
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_1AF420408(char a1, int64_t a2, char a3, void *a4)
{
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = a4[2];
  if (a2 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF42B9E0(0, &unk_1EB6386D0, &qword_1ED7268D0, MEMORY[0x1E69E7280], 1);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    v11[2] = v9;
    v11[3] = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 != a4 || v11 + 4 >= &a4[v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 8 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF4498F4(0, &qword_1ED7268D0, MEMORY[0x1E69E7280], 1);
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF420554(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF420660(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &unk_1EB630940, MEMORY[0x1E69E6888], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

void *sub_1AF420764(char a1, int64_t a2, char a3, void *a4)
{
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = a4[2];
  if (a2 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449890(0, &qword_1EB638150, type metadata accessor for DeviceType, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    v11[2] = v9;
    v11[3] = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 != a4 || v11 + 4 >= &a4[v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 8 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for DeviceType(0);
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF420898(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1EB638158, &_s15CaptureDeviceIDVN, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 1;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 5);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[32 * v9])
    {
      memmove(v14, v15, 32 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF4209BC(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &qword_1EB6382C0, &type metadata for Property.Description, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 1;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 5);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[32 * v9])
    {
      memmove(v14, v15, 32 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_1AF420AC8(char a1, int64_t a2, char a3, void *a4)
{
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = a4[2];
  if (a2 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF448AC4(0, &qword_1EB638D50, &qword_1EB63F680, sub_1AF448BAC, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 != a4 || v11 + 4 >= &a4[3 * v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 24 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF448BAC(0, &qword_1EB63F680, type metadata accessor for Node);
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF420C48(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &unk_1ED721EA0, &type metadata for ShaderParameter, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 80);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  v15 = 80 * v9;
  if (a1)
  {
    if (v11 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v11;
}

char *sub_1AF420D58(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449B08(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

void *sub_1AF420EA0(char a1, int64_t a2, char a3, void *a4)
{
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = a4[2];
  if (a2 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449890(0, &qword_1ED7269C0, sub_1AF43A540, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 72);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 != a4 || v11 + 4 >= &a4[9 * v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 72 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AF43A540(0);
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1AF420FF0(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF449890(0, &unk_1ED726A00, sub_1AF43D154, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v13 >= &v14[24 * v9])
    {
      memmove(v13, v14, 24 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 24 * v9);
  }

  return v11;
}