uint64_t sub_23016DE9C(unint64_t a1, unint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v5 = a4;
  if (a4 > 99)
  {
    sub_23017250C();
    swift_allocError();
    *v17 = v5;
    swift_willThrow();
    return v4;
  }

  v400 = *a3;
  if (qword_27DB13BC0 != -1)
  {
    goto LABEL_172;
  }

LABEL_3:
  v8 = sub_23030EF48();
  __swift_project_value_buffer(v8, qword_27DB15FE8);

  v4 = sub_23030EF38();
  v9 = sub_230310278();
  v10 = (a2 >> 62);
  v11 = a1 >> 62;
  v386 = a2;
  v395 = a1;
  v376 = v5;
  if (os_log_type_enabled(v4, v9))
  {
    v12 = swift_slowAlloc();
    v396 = swift_slowAlloc();
    v422[0] = v396;
    *v12 = 134218754;
    LOBYTE(v398) = v9;
    if (!v10)
    {
      v13 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }

    goto LABEL_440;
  }

  for (i = a1 & 0x8000000000000000; ; i = v401)
  {
    v39 = v11 ? sub_2303106D8() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = sub_23029CF70(MEMORY[0x277D84F90], v39, 0.0);

    v423 = v4;
    if (v10)
    {
      v10 = sub_2303106D8();
      if (v10)
      {
LABEL_32:
        v12 = v395 & 0xFFFFFFFFFFFFFF8;
        if (v11)
        {
          v410 = sub_2303106D8();
        }

        else
        {
          v410 = *((v395 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v382 = v10;
        v384 = a2 & 0xC000000000000001;
        v377 = a2 + 32;
        v379 = a2 & 0xFFFFFFFFFFFFFF8;
        v40 = 0;
        LOBYTE(v398) = v395 & 0xF8;
        while (1)
        {
          if (v384)
          {
            i = MEMORY[0x231912650](v40, a2);
            v5 = v400;
            v41 = __OFADD__(v40, 1);
            v42 = (v40 + 1);
            if (v41)
            {
              goto LABEL_168;
            }
          }

          else
          {
            v5 = v400;
            if (v40 >= *(v379 + 16))
            {
              goto LABEL_433;
            }

            i = *(v377 + 8 * v40);

            v41 = __OFADD__(v40, 1);
            v42 = (v40 + 1);
            if (v41)
            {
              goto LABEL_168;
            }
          }

          v391 = v42;
          v396 = v4;
          swift_beginAccess();
          if (!v410)
          {
            v44 = 0;
            v47 = 1.79769313e308;
            goto LABEL_144;
          }

          v43 = 0;
          v44 = 0;
          v45 = 1.79769313e308;
          do
          {
            v387 = v44;
            v44 = v43;
LABEL_49:
            if ((v395 & 0xC000000000000001) != 0)
            {
              v48 = MEMORY[0x231912650](v44, v395);
              v43 = v44 + 1;
              if (__OFADD__(v44, 1))
              {
                goto LABEL_162;
              }
            }

            else
            {
              if (v44 >= *(v12 + 16))
              {
                goto LABEL_163;
              }

              v48 = *(v395 + 32 + 8 * v44);

              v43 = v44 + 1;
              if (__OFADD__(v44, 1))
              {
                goto LABEL_162;
              }
            }

            a1 = *(i + 24);
            if (!v5)
            {
              if ((a1 & 0x8000000000000000) != 0)
              {
                goto LABEL_166;
              }

              if (a1)
              {
                swift_beginAccess();
                swift_beginAccess();
                v55 = *(i + 16);
                v56 = *(v55 + 16);
                if (!v56)
                {
                  goto LABEL_156;
                }

                v57 = *(v48 + 16);
                v58 = *(v57 + 16);
                if (!v58)
                {
                  goto LABEL_158;
                }

                v59 = v55 + 32;
                v60 = v57 + 32;
                v61 = *(v55 + 32) - *(v57 + 32);
                v46 = v61 * v61;
                if (a1 != 1)
                {
                  v62 = a1 - 2;
                  v63 = v58 - 1;
                  if (v58 - 1 >= v56 - 1)
                  {
                    v63 = v56 - 1;
                  }

                  if (v62 >= v63)
                  {
                    v62 = v63;
                  }

                  v64 = v62 + 1;
                  if (v64 > 4)
                  {
                    v99 = v64 & 3;
                    if ((v64 & 3) == 0)
                    {
                      v99 = 4;
                    }

                    v100 = v64 - v99;
                    v65 = v100 + 1;
                    v101 = (v55 + 56);
                    v102 = (v57 + 56);
                    do
                    {
                      v103 = vsubq_f64(v101[-1], v102[-1]);
                      v104 = vsubq_f64(*v101, *v102);
                      v105 = vmulq_f64(v103, v103);
                      v106 = vmulq_f64(v104, v104);
                      v46 = v46 + v105.f64[0] + v105.f64[1] + v106.f64[0] + v106.f64[1];
                      v101 += 2;
                      v102 += 2;
                      v100 -= 4;
                    }

                    while (v100);
                  }

                  else
                  {
                    v65 = 1;
                  }

                  while (v56 != v65)
                  {
                    if (v65 >= v58)
                    {
                      goto LABEL_158;
                    }

                    v46 = v46 + (*(v59 + 8 * v65) - *(v60 + 8 * v65)) * (*(v59 + 8 * v65) - *(v60 + 8 * v65));
                    if (a1 == ++v65)
                    {
                      goto LABEL_46;
                    }
                  }

LABEL_156:
                  __break(1u);
LABEL_157:
                  __break(1u);
LABEL_158:
                  __break(1u);
LABEL_159:
                  __break(1u);
                  goto LABEL_160;
                }
              }

              else
              {
                v46 = 0.0;
              }

LABEL_46:

              v47 = sqrt(v46);
              goto LABEL_47;
            }

            if (v5 != 1)
            {
              if ((a1 & 0x8000000000000000) != 0)
              {
                goto LABEL_165;
              }

              if (a1)
              {
                swift_beginAccess();
                swift_beginAccess();
                v66 = *(i + 16);
                v67 = *(v66 + 16);
                if (!v67)
                {
                  goto LABEL_157;
                }

                v68 = *(v48 + 16);
                v69 = *(v68 + 16);
                if (!v69)
                {
                  goto LABEL_159;
                }

                v70 = v66 + 32;
                v71 = v68 + 32;
                v72 = *(v68 + 32);
                v73 = *(v66 + 32);
                v74 = v73 * v73;
                v75 = v72 * v72;
                v76 = v73 * v72 + 0.0;
                if (a1 != 1)
                {
                  v77 = a1 - 2;
                  v78 = v69 - 1;
                  if (v69 - 1 >= v67 - 1)
                  {
                    v78 = v67 - 1;
                  }

                  if (v77 >= v78)
                  {
                    v77 = v78;
                  }

                  v79 = v77 + 1;
                  if (v79 > 4)
                  {
                    v107 = v79 & 3;
                    if ((v79 & 3) == 0)
                    {
                      v107 = 4;
                    }

                    v108 = v79 - v107;
                    v80 = v108 + 1;
                    v109 = (v66 + 56);
                    v110 = (v68 + 56);
                    do
                    {
                      v111 = v109[-1];
                      v112 = v110[-1];
                      v113 = vmulq_f64(v111, v111);
                      v114 = vmulq_f64(*v109, *v109);
                      v115 = vmulq_f64(v112, v112);
                      v116 = vmulq_f64(*v110, *v110);
                      v117 = vmulq_f64(v111, v112);
                      v118 = vmulq_f64(*v109, *v110);
                      v76 = v76 + v117.f64[0] + v117.f64[1] + v118.f64[0] + v118.f64[1];
                      v75 = v75 + v115.f64[0] + v115.f64[1] + v116.f64[0] + v116.f64[1];
                      v74 = v74 + v113.f64[0] + v113.f64[1] + v114.f64[0] + v114.f64[1];
                      v109 += 2;
                      v110 += 2;
                      v108 -= 4;
                    }

                    while (v108);
                  }

                  else
                  {
                    v80 = 1;
                  }

                  while (v67 != v80)
                  {
                    if (v80 >= v69)
                    {
                      goto LABEL_159;
                    }

                    v119 = *(v70 + 8 * v80);
                    v120 = *(v71 + 8 * v80);
                    v74 = v74 + v119 * v119;
                    v75 = v75 + v120 * v120;
                    v76 = v76 + v119 * v120;
                    if (a1 == ++v80)
                    {
                      goto LABEL_121;
                    }
                  }

                  goto LABEL_157;
                }
              }

              else
              {
                v76 = 0.0;
                v75 = 0.0;
                v74 = 0.0;
              }

LABEL_121:

              v121 = sqrt(v74);
              v122 = v121 * sqrt(v75);
              if (v122 == 0.0)
              {
                v123 = 0.0;
              }

              else
              {
                v123 = v76 / v122;
              }

              v47 = acos(v123) / 3.14159265;
              goto LABEL_47;
            }

            if ((a1 & 0x8000000000000000) != 0)
            {
              goto LABEL_164;
            }

            if (a1)
            {
              swift_beginAccess();
              swift_beginAccess();
              v49 = 4;
              v5 = MEMORY[0x277D84F90];
              while (1)
              {
                v50 = *(i + 16);
                if ((v49 - 4) >= *(v50 + 16))
                {
                  break;
                }

                v51 = *(v48 + 16);
                if ((v49 - 4) >= *(v51 + 16))
                {
                  goto LABEL_155;
                }

                v52 = *(v50 + 8 * v49);
                v53 = *(v51 + 8 * v49);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v5 = sub_23007EB60(0, *(v5 + 16) + 1, 1, v5);
                }

                v11 = *(v5 + 16);
                v54 = *(v5 + 24);
                a2 = v11 + 1;
                if (v11 >= v54 >> 1)
                {
                  v5 = sub_23007EB60((v54 > 1), v11 + 1, 1, v5);
                }

                *(v5 + 16) = a2;
                *(v5 + 8 * v11 + 32) = v52 - v53;
                ++v49;
                if (!--a1)
                {
                  goto LABEL_88;
                }
              }

              __break(1u);
LABEL_155:
              __break(1u);
              goto LABEL_156;
            }

            v5 = MEMORY[0x277D84F90];
LABEL_88:
            type metadata accessor for RDVector();
            inited = swift_initStackObject();
            *(inited + 16) = v5;
            v82 = *(v5 + 16);
            *(inited + 24) = v82;
            v83 = 32;
            v12 = v395 & 0xFFFFFFFFFFFFFF8;
            while (v82)
            {
              v84 = *(v5 + v83);
              v83 += 8;
              --v82;
              if ((v84 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {

                v5 = *(i + 24);
                if ((v5 & 0x8000000000000000) != 0)
                {
                  goto LABEL_167;
                }

                if (v5)
                {
                  swift_beginAccess();
                  swift_beginAccess();
                  v85 = *(i + 16);
                  v86 = *(v85 + 16);
                  if (!v86)
                  {
                    goto LABEL_160;
                  }

                  v87 = *(v48 + 16);
                  v88 = *(v87 + 16);
                  if (!v88)
                  {
                    goto LABEL_161;
                  }

                  v89 = v85 + 32;
                  v90 = v87 + 32;
                  v91 = *(v87 + 32);
                  v92 = *(v85 + 32);
                  v93 = v92 * v92;
                  v94 = v91 * v91;
                  v95 = v92 * v91 + 0.0;
                  if (v5 != 1)
                  {
                    v96 = v88 - 1;
                    if (v88 - 1 >= v86 - 1)
                    {
                      v96 = v86 - 1;
                    }

                    if (v96 >= v5 - 2)
                    {
                      v96 = v5 - 2;
                    }

                    v97 = v96 + 1;
                    if (v97 > 4)
                    {
                      v124 = v97 & 3;
                      if ((v97 & 3) == 0)
                      {
                        v124 = 4;
                      }

                      v125 = v97 - v124;
                      v98 = v125 + 1;
                      v126 = (v85 + 56);
                      v127 = (v87 + 56);
                      do
                      {
                        v128 = v126[-1];
                        v129 = v127[-1];
                        v130 = vmulq_f64(v128, v128);
                        v131 = vmulq_f64(*v126, *v126);
                        v132 = vmulq_f64(v129, v129);
                        v133 = vmulq_f64(*v127, *v127);
                        v134 = vmulq_f64(v128, v129);
                        v135 = vmulq_f64(*v126, *v127);
                        v95 = v95 + v134.f64[0] + v134.f64[1] + v135.f64[0] + v135.f64[1];
                        v94 = v94 + v132.f64[0] + v132.f64[1] + v133.f64[0] + v133.f64[1];
                        v93 = v93 + v130.f64[0] + v130.f64[1] + v131.f64[0] + v131.f64[1];
                        v126 += 2;
                        v127 += 2;
                        v125 -= 4;
                      }

                      while (v125);
                    }

                    else
                    {
                      v98 = 1;
                    }

                    while (v86 != v98)
                    {
                      if (v98 >= v88)
                      {
                        goto LABEL_161;
                      }

                      v136 = *(v89 + 8 * v98);
                      v137 = *(v90 + 8 * v98);
                      v93 = v93 + v136 * v136;
                      v94 = v94 + v137 * v137;
                      v95 = v95 + v136 * v137;
                      if (v5 == ++v98)
                      {
                        goto LABEL_132;
                      }
                    }

LABEL_160:
                    __break(1u);
LABEL_161:
                    __break(1u);
LABEL_162:
                    __break(1u);
LABEL_163:
                    __break(1u);
LABEL_164:
                    __break(1u);
LABEL_165:
                    __break(1u);
LABEL_166:
                    __break(1u);
LABEL_167:
                    __break(1u);
LABEL_168:
                    __break(1u);
LABEL_169:
                    __break(1u);
                    goto LABEL_170;
                  }
                }

                else
                {
                  v95 = 0.0;
                  v94 = 0.0;
                  v93 = 0.0;
                }

LABEL_132:

                v138 = sqrt(v93);
                v139 = v138 * sqrt(v94);
                v140 = vabdd_f64(1.0, v95 / v139);
                if (v139 == 0.0)
                {
                  v141 = 1.0;
                }

                else
                {
                  v141 = v140;
                }

                v47 = sqrt(v141);
                v5 = v400;
LABEL_47:
                if (v47 < v45)
                {
                  goto LABEL_140;
                }

LABEL_48:
                v44 = v43;
                if (v43 == v410)
                {
                  v47 = v45;
                  v44 = v387;
                  goto LABEL_144;
                }

                goto LABEL_49;
              }
            }

            if (v45 <= 0.0)
            {
              v5 = v400;
              goto LABEL_48;
            }

            v47 = 0.0;
            v5 = v400;
LABEL_140:
            v45 = v47;
          }

          while (v43 != v410);
LABEL_144:
          v142 = v47;

          v4 = v396;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if ((v44 & 0x8000000000000000) != 0)
            {
              goto LABEL_169;
            }
          }

          else
          {
            v4 = sub_23029CE94(v396);
            if ((v44 & 0x8000000000000000) != 0)
            {
              goto LABEL_169;
            }
          }

          if (v44 >= *(v4 + 16))
          {
            break;
          }

          v143 = v4 + 16 * v44;
          MEMORY[0x231911A30]();
          if (*((*(v143 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v143 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_23030FD18();
          }

          v10 = (v143 + 32);
          sub_23030FD68();

          v5 = *(v4 + 16);
          if (v44 >= v5)
          {
            goto LABEL_171;
          }

          *(v143 + 40) = v142 + *(v143 + 40);
          v423 = v4;
          v40 = v391;
          a2 = v386;
          v12 = v395 & 0xFFFFFFFFFFFFFF8;
          if (v391 == v382)
          {
            goto LABEL_176;
          }
        }

LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        swift_once();
        goto LABEL_3;
      }
    }

    else
    {
      v10 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        goto LABEL_32;
      }
    }

    v5 = *(v4 + 16);
LABEL_176:
    v144 = 0;
    v10 = MEMORY[0x277D84F90];
LABEL_177:
    v14 = 16 * v144 + 32;
    while (v5 != v144)
    {
      if (v144 >= v5)
      {
        goto LABEL_408;
      }

      v145 = v144 + 1;
      if (__OFADD__(v144, 1))
      {
        goto LABEL_409;
      }

      if (v144 >= *(v4 + 16))
      {
        goto LABEL_410;
      }

      v146 = *(v4 + v14);
      if (v146 >> 62)
      {
        v147 = sub_2303106D8();
      }

      else
      {
        v147 = *((v146 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v144;
      v14 += 16;
      if (!v147)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v419 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_23009EC04(0, v10[2] + 1, 1);
          v10 = v419;
        }

        a1 = v10[2];
        v149 = v10[3];
        if (a1 >= v149 >> 1)
        {
          sub_23009EC04((v149 > 1), a1 + 1, 1);
          v10 = v419;
        }

        v10[2] = a1 + 1;
        v10[a1 + 4] = v144 - 1;
        v144 = v145;
        goto LABEL_177;
      }
    }

    v369 = v10[2];
    if (!v369)
    {
      goto LABEL_388;
    }

    v373 = v10;
    v150 = sub_23030EF38();
    v11 = sub_230310278();

    v12 = &unk_23031F000;
    if (os_log_type_enabled(v150, v11))
    {
      a1 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      v418[0] = v151;
      *a1 = 134218498;
      *(a1 + 4) = v376;
      *(a1 + 12) = 2080;
      v152 = MEMORY[0x231911A60](v10, MEMORY[0x277D83B88]);
      v154 = sub_23004E30C(v152, v153, v418);

      *(a1 + 14) = v154;
      *(a1 + 22) = 2080;
      v155 = *(v4 + 16);
      v5 = v4;
      v4 = MEMORY[0x277D84F90];
      v396 = v5;
      if (v155)
      {
        v392 = v151;
        LODWORD(v395) = v11;
        v398 = a1;
        v402 = v150;
        v417[0] = MEMORY[0x277D84F90];

        v10 = v417;
        sub_23009EC34(0, v155, 0);
        v156 = 0;
        v4 = v417[0];
        v411 = *(v5 + 16);
        a1 = 32;
        v12 = MEMORY[0x277D83B88];
        v157 = MEMORY[0x277D83BF8];
        do
        {
          if (v411 == v156)
          {
            goto LABEL_430;
          }

          v158 = *(v396 + a1);
          v415 = v156;

          v419 = sub_230310E58();
          v420 = v159;
          MEMORY[0x231911790](8250, 0xE200000000000000);
          if (v158 >> 62)
          {
            v160 = sub_2303106D8();
          }

          else
          {
            v160 = *((v158 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v415 = v160;
          v161 = v157;
          v162 = sub_230310E58();
          v10 = &v419;
          MEMORY[0x231911790](v162);

          v163 = v419;
          v164 = v420;
          v417[0] = v4;
          v11 = *(v4 + 16);
          v165 = *(v4 + 24);
          v5 = v11 + 1;
          if (v11 >= v165 >> 1)
          {
            v10 = v417;
            sub_23009EC34((v165 > 1), v11 + 1, 1);
            v4 = v417[0];
          }

          ++v156;
          *(v4 + 16) = v5;
          v166 = v4 + 16 * v11;
          *(v166 + 32) = v163;
          *(v166 + 40) = v164;
          a1 += 16;
          v12 = MEMORY[0x277D83B88];
          v157 = v161;
        }

        while (v155 != v156);

        v12 = &unk_23031F000;
        v150 = v402;
        a1 = v398;
        v11 = v395;
        v151 = v392;
      }

      v167 = MEMORY[0x231911A60](v4, MEMORY[0x277D837D0]);
      v169 = v168;

      v170 = sub_23004E30C(v167, v169, v418);

      *(a1 + 24) = v170;
      _os_log_impl(&dword_230044000, v150, v11, "KMean: computeClusters() got empty clusters: {iteration: %ld, emptyClusterIdx: %s, clusters[idx].count: %s}", a1, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v151, -1, -1);
      MEMORY[0x231914180](a1, -1, -1);

      v4 = v396;
      v10 = v373;
    }

    else
    {
    }

    sub_23012A964(v171);
    v419 = v172;
    sub_23016BFC0(&v419);
    v14 = v389;
    v5 = v400;
    if (v389)
    {
      goto LABEL_450;
    }

    v173 = 0;
    v371 = v10 + 4;
    v372 = v419;
    v370 = v419 + 4;
LABEL_208:
    if (v173 >= v10[2])
    {
      goto LABEL_434;
    }

    if (v173 >= *(v372 + 16))
    {
      goto LABEL_435;
    }

    v174 = v371[v173];
    v175 = &v370[3 * v173];
    a1 = v175[1];
    v176 = v175[2];
    i = a1 >> 62;
    if (a1 >> 62)
    {
      v327 = v173;
      v328 = &v370[3 * v173];
      v11 = v371[v173];
      v329 = sub_2303106D8();
      v174 = v11;
      v175 = v328;
      v173 = v327;
      v12 = v329;
      if (!v329)
      {
        goto LABEL_376;
      }
    }

    else
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v12)
      {
        goto LABEL_376;
      }
    }

    v389 = v14;
    v10 = (a1 & 0xC000000000000001);
    v380 = v173;
    v374 = v175;
    v375 = v174;
    if ((a1 & 0xC000000000000001) != 0)
    {
      swift_bridgeObjectRetain_n();
      v407 = MEMORY[0x231912650](0, a1);
      if (v12 < 0)
      {
        goto LABEL_449;
      }
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_436;
      }

      v14 = *(a1 + 32);
      swift_bridgeObjectRetain_n();
      v407 = v14;

      if (v12 < 0)
      {
        goto LABEL_449;
      }
    }

    if (i)
    {
      if (sub_2303106D8() < 1)
      {
        goto LABEL_437;
      }

      v177 = sub_2303106D8();
    }

    else
    {
      v177 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v177)
      {
        goto LABEL_437;
      }
    }

    if (v177 < v12)
    {
      goto LABEL_438;
    }

    if (!v10 || v12 == 1)
    {

      v396 = v4;
      if (!i)
      {
        goto LABEL_226;
      }
    }

    else
    {
      type metadata accessor for RDVector();

      v178 = 1;
      do
      {
        v10 = (v178 + 1);
        sub_2303108B8();
        v178 = v10;
      }

      while (v12 != v10);
      v396 = v4;
      if (!i)
      {
LABEL_226:
        v179 = a1 & 0xFFFFFFFFFFFFFF8;
        v403 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
        v4 = 1;
        goto LABEL_229;
      }
    }

    v179 = sub_230310B88();
    v403 = v180;
    v4 = v181;
    v12 = v182 >> 1;
LABEL_229:
    v14 = v12 - v4;
    if (!__OFSUB__(v12, v4))
    {
      break;
    }

LABEL_439:
    __break(1u);
LABEL_440:
    v13 = sub_2303106D8();
LABEL_6:
    *(v12 + 4) = v13;

    *(v12 + 12) = 2048;
    v14 = a1 & 0x8000000000000000;
    if (v11)
    {
      v15 = sub_2303106D8();
    }

    else
    {
      v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v12 + 14) = v15;

    *(v12 + 22) = 2048;
    *(v12 + 24) = v5;
    *(v12 + 32) = 2080;
    v409 = v11;
    v401 = a1 & 0x8000000000000000;
    if (v11)
    {
      v16 = sub_2303106D8();
    }

    else
    {
      v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v406 = v10;
    v20 = MEMORY[0x277D84F90];
    if (v16)
    {
      v421[0] = MEMORY[0x277D84F90];
      sub_23009EC34(0, v16 & ~(v16 >> 63), 0);
      if (v16 < 0)
      {
        goto LABEL_448;
      }

      v390 = v4;
      v20 = v421[0];
      if ((a1 & 0xC000000000000001) != 0)
      {
        v21 = 0;
        do
        {
          MEMORY[0x231912650](v21, v395);
          v22 = sub_230289E28();
          v24 = v23;
          swift_unknownObjectRelease();
          v421[0] = v20;
          v26 = *(v20 + 16);
          v25 = *(v20 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_23009EC34((v25 > 1), v26 + 1, 1);
            v20 = v421[0];
          }

          ++v21;
          *(v20 + 16) = v26 + 1;
          v27 = v20 + 16 * v26;
          *(v27 + 32) = v22;
          *(v27 + 40) = v24;
        }

        while (v16 != v21);
      }

      else
      {
        v28 = a1 + 32;
        do
        {

          v29 = sub_230289E28();
          v31 = v30;

          v421[0] = v20;
          v33 = *(v20 + 16);
          v32 = *(v20 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_23009EC34((v32 > 1), v33 + 1, 1);
            v20 = v421[0];
          }

          *(v20 + 16) = v33 + 1;
          v34 = v20 + 16 * v33;
          *(v34 + 32) = v29;
          *(v34 + 40) = v31;
          v28 += 8;
          --v16;
        }

        while (v16);
      }

      v4 = v390;
      a1 = v395;
    }

    v35 = MEMORY[0x231911A60](v20, MEMORY[0x277D837D0]);
    v37 = v36;

    v38 = sub_23004E30C(v35, v37, v422);

    *(v12 + 34) = v38;
    _os_log_impl(&dword_230044000, v4, v398, "KMean: computeClusters() input has %ld points and %ld centers: {iteration: %ld, centers: %s}", v12, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1(v396);
    MEMORY[0x231914180](v396, -1, -1);
    MEMORY[0x231914180](v12, -1, -1);

    a2 = v386;
    v10 = v406;
    v11 = v409;
  }

  v388 = a1;
  if (!v14)
  {
    swift_unknownObjectRelease();
    v10 = MEMORY[0x277D84F90];
    goto LABEL_327;
  }

  v386 = v179;
  v393 = a1 >> 62;
  v415 = MEMORY[0x277D84F90];
  sub_23009EBE4(0, v14 & ~(v14 >> 63), 0);
  if (v14 < 0)
  {
    goto LABEL_447;
  }

  v10 = v415;
  swift_beginAccess();
  v183 = 0;
  v398 = v12;
  v395 = v12 - v4;
  while (2)
  {
    i = v183 + 1;
    if (__OFADD__(v183, 1))
    {
      __break(1u);
LABEL_418:
      __break(1u);
LABEL_419:
      __break(1u);
      goto LABEL_420;
    }

    if (v4 >= v12 || v183 >= v14)
    {
      goto LABEL_418;
    }

    v14 = *(v403 + 8 * v4);
    a1 = *(v407 + 24);
    if (v5)
    {
      if (v5 == 1)
      {
        if ((a1 & 0x8000000000000000) != 0)
        {
          goto LABEL_428;
        }

        if (a1)
        {

          swift_beginAccess();
          swift_beginAccess();
          v12 = 4;
          v184 = MEMORY[0x277D84F90];
          while (1)
          {
            v185 = *(v407 + 16);
            if ((v12 - 4) >= *(v185 + 16))
            {
              break;
            }

            v186 = *(v14 + 16);
            if ((v12 - 4) >= *(v186 + 16))
            {
              goto LABEL_375;
            }

            v187 = *(v185 + 8 * v12);
            v188 = *(v186 + 8 * v12);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v184 = sub_23007EB60(0, *(v184 + 2) + 1, 1, v184);
            }

            v11 = *(v184 + 2);
            v189 = *(v184 + 3);
            if (v11 >= v189 >> 1)
            {
              v184 = sub_23007EB60((v189 > 1), v11 + 1, 1, v184);
            }

            *(v184 + 2) = v11 + 1;
            *&v184[8 * v11 + 32] = v187 - v188;
            ++v12;
            if (!--a1)
            {
              goto LABEL_272;
            }
          }

LABEL_374:
          __break(1u);
LABEL_375:
          __break(1u);
LABEL_376:
          swift_bridgeObjectRetain_n();

          v14 = sub_23030EF38();
          LOBYTE(v10) = sub_230310268();
          if (os_log_type_enabled(v14, v10))
          {
            v5 = swift_slowAlloc();
            *v5 = 134217984;
            if (i)
            {
              goto LABEL_411;
            }

            v330 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_412:
            *(v5 + 4) = v330;

            _os_log_impl(&dword_230044000, v14, v10, "KMean: No point found. Cluster has %ld points", v5, 0xCu);
            MEMORY[0x231914180](v5, -1, -1);
          }

          else
          {
          }

          if (i)
          {
            v361 = sub_2303106D8();
          }

          else
          {
            v361 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          sub_230172560();
          swift_allocError();
          *v362 = v361;
          swift_willThrow();

          return v4;
        }

        v184 = MEMORY[0x277D84F90];
LABEL_272:
        type metadata accessor for RDVector();
        v216 = swift_initStackObject();
        *(v216 + 16) = v184;
        v217 = *(v184 + 2);
        *(v216 + 24) = v217;
        v218 = 32;
        do
        {
          if (!v217)
          {

            v234 = 0.0;
            goto LABEL_310;
          }

          v219 = *&v184[v218];
          v218 += 8;
          --v217;
        }

        while ((v219 & 0x7FFFFFFFFFFFFFFFLL) == 0);

        v5 = *(v407 + 24);
        if ((v5 & 0x8000000000000000) != 0)
        {
          goto LABEL_432;
        }

        if (v5)
        {
          swift_beginAccess();
          swift_beginAccess();
          v220 = *(v407 + 16);
          v221 = *(v220 + 16);
          if (!v221)
          {
            goto LABEL_406;
          }

          v222 = *(v14 + 16);
          v223 = *(v222 + 16);
          if (!v223)
          {
            goto LABEL_407;
          }

          v224 = v220 + 32;
          v225 = v222 + 32;
          v226 = *(v222 + 32);
          v227 = *(v220 + 32);
          v228 = v227 * v227;
          v229 = v226 * v226;
          v230 = v227 * v226 + 0.0;
          if (v5 != 1)
          {
            v231 = v223 - 1;
            if (v223 - 1 >= v221 - 1)
            {
              v231 = v221 - 1;
            }

            if (v231 >= v5 - 2)
            {
              v231 = v5 - 2;
            }

            v232 = v231 + 1;
            if (v232 > 4)
            {
              v263 = v232 & 3;
              if ((v232 & 3) == 0)
              {
                v263 = 4;
              }

              v264 = v232 - v263;
              v233 = v264 + 1;
              v265 = (v220 + 56);
              v266 = (v222 + 56);
              do
              {
                v267 = v265[-1];
                v268 = v266[-1];
                v269 = vmulq_f64(v267, v267);
                v270 = vmulq_f64(*v265, *v265);
                v271 = vmulq_f64(v268, v268);
                v272 = vmulq_f64(*v266, *v266);
                v273 = vmulq_f64(v267, v268);
                v274 = vmulq_f64(*v265, *v266);
                v230 = v230 + v273.f64[0] + v273.f64[1] + v274.f64[0] + v274.f64[1];
                v229 = v229 + v271.f64[0] + v271.f64[1] + v272.f64[0] + v272.f64[1];
                v228 = v228 + v269.f64[0] + v269.f64[1] + v270.f64[0] + v270.f64[1];
                v265 += 2;
                v266 += 2;
                v264 -= 4;
              }

              while (v264);
            }

            else
            {
              v233 = 1;
            }

            while (1)
            {
              if (v221 == v233)
              {
                goto LABEL_406;
              }

              if (v233 >= v223)
              {
                break;
              }

              v275 = *(v224 + 8 * v233);
              v276 = *(v225 + 8 * v233);
              v228 = v228 + v275 * v275;
              v229 = v229 + v276 * v276;
              v230 = v230 + v275 * v276;
              if (v5 == ++v233)
              {
                goto LABEL_322;
              }
            }

LABEL_407:
            __break(1u);
LABEL_408:
            __break(1u);
LABEL_409:
            __break(1u);
LABEL_410:
            __break(1u);
LABEL_411:
            v330 = sub_2303106D8();
            goto LABEL_412;
          }
        }

        else
        {
          v230 = 0.0;
          v229 = 0.0;
          v228 = 0.0;
        }

LABEL_322:
        v277 = sqrt(v228);
        v278 = v277 * sqrt(v229);
        v279 = vabdd_f64(1.0, v230 / v278);
        if (v278 == 0.0)
        {
          v280 = 1.0;
        }

        else
        {
          v280 = v279;
        }

        v234 = sqrt(v280);
LABEL_310:
        v415 = v10;
        v261 = v10[2];
        v260 = v10[3];
        v5 = v261 + 1;
        if (v261 >= v260 >> 1)
        {
          sub_23009EBE4((v260 > 1), v261 + 1, 1);
          v10 = v415;
        }

        v10[2] = v5;
        v262 = &v10[2 * v261];
        v262[4] = v14;
        *(v262 + 5) = v234;
        v41 = __OFADD__(v4++, 1);
        if (v41)
        {
          goto LABEL_419;
        }

        v183 = i;
        v14 = v395;
        v5 = v400;
        v12 = v398;
        if (i != v395)
        {
          continue;
        }

        swift_unknownObjectRelease();
        a1 = v388;
        i = v393;
LABEL_327:
        v5 = v10[2];
        v4 = v396;
        if (v5)
        {
          v381 = v380 + 1;
          v12 = (v10 + 5);
          v281 = *(v10 + 5);
          v282 = v10[4];

          v283 = 1;
LABEL_329:
          v284 = (v12 + 16 * v283);
          while (v5 != v283)
          {
            if (v283 >= v10[2])
            {
              __break(1u);
LABEL_406:
              __break(1u);
              goto LABEL_407;
            }

            ++v283;
            v285 = v284 + 2;
            v286 = *v284;
            v287 = v281 < *v284;
            v284 += 2;
            if (v287)
            {
              v14 = *(v285 - 3);

              v282 = v14;
              v281 = v286;
              goto LABEL_329;
            }
          }

          if (v281 == 0.0)
          {

            v332 = sub_23030EF38();
            v333 = sub_230310268();

            if (os_log_type_enabled(v332, v333))
            {
              v334 = swift_slowAlloc();
              *v334 = 134217984;

              *(v334 + 4) = v176;
              _os_log_impl(&dword_230044000, v332, v333, "KMean: Farthest point has distance 0. Cluster sse is %f", v334, 0xCu);
              MEMORY[0x231914180](v334, -1, -1);
            }

            else
            {
            }

            if (i)
            {
              v359 = sub_2303106D8();
            }

            else
            {
              v359 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            sub_230172560();
            swift_allocError();
            *v360 = v359;
            swift_willThrow();

            return v4;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14880, &qword_230316B00);
          v11 = swift_allocObject();
          *(v11 + 16) = xmmword_23031F090;
          *(v11 + 32) = v407;
          v383 = v11 + 32;
          *(v11 + 40) = v282;

          v288 = sub_23030EF38();
          v289 = sub_230310278();

          if (os_log_type_enabled(v288, v289))
          {
            v367 = v289;
            log = v288;
            v290 = swift_slowAlloc();
            v365 = swift_slowAlloc();
            v366 = v290;
            v414 = v365;
            *v290 = 134218498;
            *(v290 + 4) = v376;
            *(v290 + 12) = 2080;
            v378 = v11 & 0xFFFFFFFFFFFFFF8;
            i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v5 = v400;
            if (i)
            {
              v413 = MEMORY[0x277D84F90];
              v10 = &v413;
              sub_23009EC34(0, i, 0);
              v291 = 0;
              v292 = v413;
              v394 = v11 & 0xC000000000000001;
              v385 = i;
              v386 = v11;
              do
              {
                v404 = v292;
                v398 = v291;
                if (v394)
                {
                  v293 = MEMORY[0x231912650]();
                }

                else
                {
                  if (v291 >= *(v378 + 16))
                  {
                    goto LABEL_431;
                  }

                  v293 = *(v383 + 8 * v291);
                }

                v415 = 2636374;
                v416 = 0xE300000000000000;
                swift_beginAccess();
                v294 = *(v293 + 16);
                v295 = *(v294 + 16);
                if (v295 >= 5)
                {
                  v296 = 5;
                }

                else
                {
                  v296 = *(v294 + 16);
                }

                if (v295)
                {
                  v395 = v293;
                  v412 = MEMORY[0x277D84F90];

                  sub_23009EC34(0, v296, 0);
                  v297 = 32;
                  do
                  {
                    v298 = *(v294 + v297);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14718, &qword_2303163A0);
                    v299 = swift_allocObject();
                    *(v299 + 16) = xmmword_230315CE0;
                    *(v299 + 56) = MEMORY[0x277D839F8];
                    *(v299 + 64) = MEMORY[0x277D83A80];
                    *(v299 + 32) = v298;
                    v300 = sub_23030F918();
                    v302 = v301;
                    v304 = *(v412 + 16);
                    v303 = *(v412 + 24);
                    if (v304 >= v303 >> 1)
                    {
                      sub_23009EC34((v303 > 1), v304 + 1, 1);
                    }

                    *(v412 + 16) = v304 + 1;
                    v305 = v412 + 16 * v304;
                    *(v305 + 32) = v300;
                    *(v305 + 40) = v302;
                    v297 += 8;
                    --v296;
                  }

                  while (v296);

                  v4 = v396;
                  v11 = v386;
                  a1 = v388;
                  i = v385;
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0, &unk_23031A990);
                sub_2300B0FA8();
                v306 = sub_23030F7C8();
                v308 = v307;

                MEMORY[0x231911790](v306, v308);

                v10 = &v415;
                MEMORY[0x231911790](0x292E2E2E20, 0xE500000000000000);

                v12 = v415;
                v309 = v416;
                v292 = v404;
                v413 = v404;
                v311 = *(v404 + 16);
                v310 = *(v404 + 24);
                if (v311 >= v310 >> 1)
                {
                  v10 = &v413;
                  sub_23009EC34((v310 > 1), v311 + 1, 1);
                  v292 = v413;
                }

                v291 = v398 + 1;
                *(v292 + 16) = v311 + 1;
                v312 = v292 + 16 * v311;
                *(v312 + 32) = v12;
                *(v312 + 40) = v309;
                v5 = v400;
              }

              while (v398 + 1 != i);
            }

            else
            {
              v292 = MEMORY[0x277D84F90];
            }

            v313 = MEMORY[0x231911A60](v292, MEMORY[0x277D837D0]);
            v315 = v314;

            v316 = sub_23004E30C(v313, v315, &v414);

            *(v366 + 14) = v316;
            *(v366 + 22) = 2080;
            v317 = Array<A>.truncatedLoggingDescription()(a1);
            v319 = sub_23004E30C(v317, v318, &v414);

            *(v366 + 24) = v319;
            _os_log_impl(&dword_230044000, log, v367, "KMean: computerClusters() will call itself recursively {curr.iteration: %ld, nextCenters: %s, pointsToSplit: %s}", v366, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x231914180](v365, -1, -1);
            MEMORY[0x231914180](v366, -1, -1);
          }

          else
          {

            LOBYTE(v5) = v400;
          }

          LOBYTE(v415) = v5;
          v14 = sub_23016DE9C(v11, a1, &v415, v376 + 1);

          if (*(v14 + 16) < 2uLL)
          {
            __break(1u);
          }

          else
          {
            v389 = 0;
            v320 = *(v14 + 48);
            v321 = *(v14 + 56);
            swift_beginAccess();

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v322 = v375;
              if ((v375 & 0x8000000000000000) == 0)
              {
                goto LABEL_362;
              }

LABEL_373:
              __break(1u);
              goto LABEL_374;
            }

            v4 = sub_23029CE94(v4);
            v322 = v375;
            if ((v375 & 0x8000000000000000) != 0)
            {
              goto LABEL_373;
            }

LABEL_362:
            if (v322 < *(v4 + 16))
            {
              v323 = (v4 + 32 + 16 * v322);
              *v323 = v320;
              v323[1] = v321;

              v423 = v4;
              if (*(v14 + 16))
              {
                v12 = *v374;
                v324 = *(v14 + 32);
                v325 = *(v14 + 40);

                if ((v12 & 0x8000000000000000) == 0)
                {
                  if (v12 < *(v4 + 16))
                  {
                    v326 = (v4 + 32 + 16 * v12);
                    *v326 = v324;
                    v326[1] = v325;
                    v423 = v4;
                    swift_endAccess();

                    v173 = v381;
                    v14 = 0;
                    v5 = v400;
                    v10 = v373;
                    if (v381 != v369)
                    {
                      goto LABEL_208;
                    }

LABEL_388:

                    v335 = sub_23030EF38();
                    v336 = sub_230310278();
                    if (os_log_type_enabled(v335, v336))
                    {
                      v337 = swift_slowAlloc();
                      v338 = swift_slowAlloc();
                      v339 = v338;
                      v414 = v338;
                      *v337 = 134218498;
                      *(v337 + 4) = v376;
                      *(v337 + 12) = 2048;
                      *(v337 + 14) = *(v4 + 16);
                      *(v337 + 22) = 2080;
                      v340 = v4;
                      v341 = *(v4 + 16);
                      v342 = MEMORY[0x277D84F90];
                      if (v341)
                      {
                        v399 = v338;
                        v405 = v337;
                        v408 = v335;
                        v413 = MEMORY[0x277D84F90];

                        sub_23009EC34(0, v341, 0);
                        v342 = v413;
                        v397 = v340;
                        v343 = v340 + 40;
                        do
                        {
                          v344 = *(v343 - 8);
                          v415 = 0;
                          v416 = 0xE000000000000000;
                          sub_230310848();
                          MEMORY[0x231911790](0xD000000000000010, 0x8000000230342820);
                          sub_23030FEE8();
                          MEMORY[0x231911790](8236, 0xE200000000000000);
                          v345 = v415;
                          v346 = v416;
                          v415 = 0;
                          v416 = 0xE000000000000000;
                          sub_230310848();

                          v415 = 0x5B203A737470090ALL;
                          v416 = 0xEB0000000009090ALL;
                          v347 = Array<A>.truncatedLoggingDescription()(v344);
                          MEMORY[0x231911790](v347);

                          MEMORY[0x231911790](693963018, 0xE400000000000000);
                          v348 = v415;
                          v349 = v416;
                          v415 = v345;
                          v416 = v346;

                          MEMORY[0x231911790](v348, v349);

                          v350 = v415;
                          v351 = v416;
                          v413 = v342;
                          v353 = *(v342 + 16);
                          v352 = *(v342 + 24);
                          if (v353 >= v352 >> 1)
                          {
                            sub_23009EC34((v352 > 1), v353 + 1, 1);
                            v342 = v413;
                          }

                          *(v342 + 16) = v353 + 1;
                          v354 = v342 + 16 * v353;
                          *(v354 + 32) = v350;
                          *(v354 + 40) = v351;
                          v343 += 16;
                          --v341;
                        }

                        while (v341);
                        v4 = v397;

                        v337 = v405;
                        v335 = v408;
                        v339 = v399;
                      }

                      else
                      {
                        v4 = v340;
                      }

                      v415 = v342;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0, &unk_23031A990);
                      sub_2300B0FA8();
                      v355 = sub_23030F7C8();
                      v357 = v356;

                      v358 = sub_23004E30C(v355, v357, &v414);

                      *(v337 + 24) = v358;
                      _os_log_impl(&dword_230044000, v335, v336, "KMean: computeClusters() result: {iteration: %ld, clusters.count: %ld, clusters: \n%s}", v337, 0x20u);
                      __swift_destroy_boxed_opaque_existential_1(v339);
                      MEMORY[0x231914180](v339, -1, -1);
                      MEMORY[0x231914180](v337, -1, -1);
                    }

                    return v4;
                  }

LABEL_446:
                  __break(1u);
LABEL_447:
                  __break(1u);
LABEL_448:
                  __break(1u);
LABEL_449:
                  __break(1u);
LABEL_450:

                  __break(1u);
                  return result;
                }

LABEL_445:
                __break(1u);
                goto LABEL_446;
              }

LABEL_444:
              __break(1u);
              goto LABEL_445;
            }
          }

          __break(1u);
          goto LABEL_444;
        }

        v14 = sub_23030EF38();
        LOBYTE(v10) = sub_230310268();
        if (os_log_type_enabled(v14, v10))
        {
          v5 = swift_slowAlloc();
          *v5 = 134217984;
          if (!i)
          {
            v331 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_421;
          }

LABEL_420:
          v331 = sub_2303106D8();
LABEL_421:
          *(v5 + 4) = v331;

          _os_log_impl(&dword_230044000, v14, v10, "KMean: Only one point. Cluster has %ld points", v5, 0xCu);
          MEMORY[0x231914180](v5, -1, -1);
        }

        else
        {
        }

        if (i)
        {
          v363 = sub_2303106D8();
        }

        else
        {
          v363 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        sub_230172560();
        swift_allocError();
        *v364 = v363;
        swift_willThrow();

        goto LABEL_426;
      }

      if ((a1 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_428:
        __break(1u);
LABEL_429:
        __break(1u);
LABEL_430:
        __break(1u);
LABEL_431:
        __break(1u);
LABEL_432:
        __break(1u);
LABEL_433:
        __break(1u);
LABEL_434:
        __break(1u);
LABEL_435:
        __break(1u);
LABEL_436:
        __break(1u);
LABEL_437:
        __break(1u);
LABEL_438:
        __break(1u);
        goto LABEL_439;
      }

      if (a1)
      {
        swift_beginAccess();
        swift_beginAccess();
        v201 = *(v407 + 16);
        v202 = *(v201 + 16);
        if (!v202)
        {
          goto LABEL_384;
        }

        v203 = *(v14 + 16);
        v204 = *(v203 + 16);
        if (!v204)
        {
          goto LABEL_386;
        }

        v205 = v201 + 32;
        v206 = v203 + 32;
        v207 = *(v203 + 32);
        v208 = *(v201 + 32);
        v209 = v208 * v208;
        v210 = v207 * v207;
        v211 = v208 * v207 + 0.0;
        if (a1 != 1)
        {
          v212 = a1 - 2;
          v213 = v204 - 1;
          if (v204 - 1 >= v202 - 1)
          {
            v213 = v202 - 1;
          }

          if (v212 >= v213)
          {
            v212 = v213;
          }

          v214 = v212 + 1;
          if (v214 > 4)
          {
            v243 = v214 & 3;
            if ((v214 & 3) == 0)
            {
              v243 = 4;
            }

            v244 = v214 - v243;
            v215 = v244 + 1;
            v245 = (v201 + 56);
            v246 = (v203 + 56);
            do
            {
              v247 = v245[-1];
              v248 = v246[-1];
              v249 = vmulq_f64(v247, v247);
              v250 = vmulq_f64(*v245, *v245);
              v251 = vmulq_f64(v248, v248);
              v252 = vmulq_f64(*v246, *v246);
              v253 = vmulq_f64(v247, v248);
              v254 = vmulq_f64(*v245, *v246);
              v211 = v211 + v253.f64[0] + v253.f64[1] + v254.f64[0] + v254.f64[1];
              v210 = v210 + v251.f64[0] + v251.f64[1] + v252.f64[0] + v252.f64[1];
              v209 = v209 + v249.f64[0] + v249.f64[1] + v250.f64[0] + v250.f64[1];
              v245 += 2;
              v246 += 2;
              v244 -= 4;
            }

            while (v244);
          }

          else
          {
            v215 = 1;
          }

          while (v202 != v215)
          {
            if (v215 >= v204)
            {
              goto LABEL_386;
            }

            v255 = *(v205 + 8 * v215);
            v256 = *(v206 + 8 * v215);
            v209 = v209 + v255 * v255;
            v210 = v210 + v256 * v256;
            v211 = v211 + v255 * v256;
            if (a1 == ++v215)
            {
              goto LABEL_305;
            }
          }

LABEL_384:
          __break(1u);
          goto LABEL_385;
        }
      }

      else
      {
        v211 = 0.0;
        v210 = 0.0;
        v209 = 0.0;
      }

LABEL_305:
      v257 = sqrt(v209);
      v258 = v257 * sqrt(v210);
      if (v258 == 0.0)
      {
        v259 = 0.0;
      }

      else
      {
        v259 = v211 / v258;
      }

      v234 = acos(v259) / 3.14159265;
LABEL_309:

      goto LABEL_310;
    }

    break;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_429;
  }

  if (!a1)
  {
    v196 = 0.0;
LABEL_297:
    v234 = sqrt(v196);
    goto LABEL_309;
  }

  swift_beginAccess();
  swift_beginAccess();
  v190 = *(v407 + 16);
  v191 = *(v190 + 16);
  if (!v191)
  {
    goto LABEL_385;
  }

  v192 = *(v14 + 16);
  v193 = *(v192 + 16);
  if (!v193)
  {
    goto LABEL_387;
  }

  v194 = v190 + 32;
  v195 = v192 + 32;
  v196 = (*(v190 + 32) - *(v192 + 32)) * (*(v190 + 32) - *(v192 + 32));
  if (a1 == 1)
  {
    goto LABEL_297;
  }

  v197 = a1 - 2;
  v198 = v193 - 1;
  if (v193 - 1 >= v191 - 1)
  {
    v198 = v191 - 1;
  }

  if (v197 >= v198)
  {
    v197 = v198;
  }

  v199 = v197 + 1;
  if (v199 > 4)
  {
    v235 = v199 & 3;
    if ((v199 & 3) == 0)
    {
      v235 = 4;
    }

    v236 = v199 - v235;
    v200 = v236 + 1;
    v237 = (v190 + 56);
    v238 = (v192 + 56);
    do
    {
      v239 = vsubq_f64(v237[-1], v238[-1]);
      v240 = vsubq_f64(*v237, *v238);
      v241 = vmulq_f64(v239, v239);
      v242 = vmulq_f64(v240, v240);
      v196 = v196 + v241.f64[0] + v241.f64[1] + v242.f64[0] + v242.f64[1];
      v237 += 2;
      v238 += 2;
      v236 -= 4;
    }

    while (v236);
  }

  else
  {
    v200 = 1;
  }

  while (v191 != v200)
  {
    if (v200 >= v193)
    {
      goto LABEL_387;
    }

    v196 = v196 + (*(v194 + 8 * v200) - *(v195 + 8 * v200)) * (*(v194 + 8 * v200) - *(v195 + 8 * v200));
    if (a1 == ++v200)
    {
      goto LABEL_297;
    }
  }

LABEL_385:
  __break(1u);
LABEL_386:
  __break(1u);
LABEL_387:
  __break(1u);

LABEL_426:

  return v4;
}

uint64_t sub_230170760(uint64_t result, unint64_t a2, uint64_t a3)
{
  v17 = MEMORY[0x277D84F90];
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v4 = result;
    if (!a2)
    {
      v9 = MEMORY[0x277D84F90];
      goto LABEL_17;
    }

    if ((result & 0xC000000000000001) == 0)
    {
      if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) < a2)
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        return result;
      }

      v6 = result + 32;
      v7 = a2;
      do
      {

        MEMORY[0x231911A30](v8);
        if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23030FD18();
        }

        result = sub_23030FD68();
        v6 += 8;
        --v7;
      }

      while (v7);
      goto LABEL_16;
    }
  }

  v10 = 0;
  do
  {
    MEMORY[0x231912650](v10, v4, a3);
    MEMORY[0x231911A30]();
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23030FD18();
    }

    ++v10;
    result = sub_23030FD68();
  }

  while (v5 != v10);
LABEL_16:
  v9 = v17;
LABEL_17:
  if (v4 >> 62)
  {
    goto LABEL_37;
  }

  v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v12 = v11 == v5;
  if (v11 < v5)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  while (!v12)
  {
    if (v11 <= v5)
    {
      goto LABEL_40;
    }

    if ((v4 & 0xC000000000000001) == 0 && v11 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_41;
    }

    v13 = v5;
    while (1)
    {
      v14 = v5;
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v3, *(v3 + 24));
      sub_230172604();
      sub_230172658();
      sub_23030F758();
      if ((v16 & 0x8000000000000000) != 0)
      {
        break;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x231912650](v13, v4);
      }

      else
      {
        v15 = *(v4 + 8 * v13 + 32);
      }

      v5 = v14;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v9 & 0x8000000000000000) != 0 || (v9 & 0x4000000000000000) != 0)
      {
        v9 = sub_23029CEA8(v9);
      }

      if (v16 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      ++v13;
      *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * v16 + 0x20) = v15;

      if (v11 == v13)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    result = sub_2303106D8();
    v11 = result;
    v12 = result == v5;
    if (result < v5)
    {
      goto LABEL_38;
    }
  }

  return v9;
}

uint64_t KMeans.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return v0;
}

uint64_t KMeans.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t *sub_230170B34(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

uint64_t *assignWithCopy for KMeans.TrainingMetrics(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  return a1;
}

uint64_t assignWithTake for KMeans.TrainingMetrics(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t *assignWithCopy for KMeans.Cluster(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

void *assignWithTake for KMeans.Cluster(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

uint64_t *assignWithCopy for KMeans.ClusterStats(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];
  return a1;
}

uint64_t *assignWithTake for KMeans.ClusterStats(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];
  return a1;
}

uint64_t sub_230170D84(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_230310E48();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14908, &qword_230316BD0);
        v5 = sub_23030FD48();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2301715AC(v7, v8, a1, v4);
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
    return sub_230170E8C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_230170E8C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3 - 24;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 24 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *v9;
      if (v7 >> 62)
      {
        v16 = a3;
        v19 = a2;
        v17 = sub_2303106D8();
        a2 = v19;
        a3 = v16;
        v11 = v17;
        if (!(v10 >> 62))
        {
LABEL_8:
          result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (result >= v11)
          {
            goto LABEL_4;
          }

          goto LABEL_9;
        }
      }

      else
      {
        v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!(v10 >> 62))
        {
          goto LABEL_8;
        }
      }

      v18 = a3;
      v20 = a2;
      result = sub_2303106D8();
      a2 = v20;
      a3 = v18;
      if (result >= v11)
      {
LABEL_4:
        ++a3;
        v5 += 24;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

LABEL_9:
      if (!v4)
      {
        __break(1u);
        return result;
      }

      v12 = v9[4];
      v13 = v9[5];
      v14 = v9[2];
      v7 = v9[3];
      *(v9 + 3) = *v9;
      v9[5] = v14;
      *v9 = v7;
      v9[1] = v12;
      v9[2] = v13;
      v9 -= 3;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t sub_230170FE8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_2302A36A0(v7);
      v7 = result;
    }

    v85 = (v7 + 16);
    v86 = *(v7 + 16);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = (v7 + 16 * v86);
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_230171D04((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v94);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v92 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 64);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 3;
        v17 = v15 >= v16;
        ++v13;
        v15 = v16;
        if ((((v12 < v9) ^ v17) & 1) == 0)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 24 * v6 - 8;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v27 + v10);
            v22 = (v27 + v18);
            v23 = *v21;
            v24 = v21[1];
            v25 = v21[2];
            v26 = *v22;
            *v21 = *(v22 - 1);
            v21[2] = v26;
            *(v22 - 2) = v23;
            *(v22 - 1) = v24;
            *v22 = v25;
          }

          ++v20;
          v18 -= 24;
          v10 += 24;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23007EA34(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v38 = *(v7 + 16);
    v37 = *(v7 + 24);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_23007EA34((v37 > 1), v38 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v39;
    v40 = v7 + 32;
    v41 = (v7 + 32 + 16 * v38);
    *v41 = v8;
    v41[1] = v6;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v7 + 32);
          v44 = *(v7 + 40);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = (v7 + 16 * v39);
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = (v40 + 16 * v42);
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = (v7 + 16 * v39);
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = (v40 + 16 * v42);
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v42 - 1 >= v39)
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

        v80 = (v40 + 16 * (v42 - 1));
        v81 = *v80;
        v82 = (v40 + 16 * v42);
        v83 = v82[1];
        sub_230171D04((*a3 + 24 * *v80), (*a3 + 24 * *v82), *a3 + 24 * v83, v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *(v7 + 16);
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        result = memmove((v40 + 16 * v42), v82 + 2, 16 * (v84 - 1 - v42));
        *(v7 + 16) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = v40 + 16 * v39;
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = (v7 + 16 * v39);
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = (v40 + 16 * v42);
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v92;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6 + 16);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (*(v33 - 1) >= v31)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *v33;
    v35 = *(v33 + 1);
    *v33 = *(v33 - 3);
    v33[2] = *(v33 - 1);
    *(v33 - 2) = v35;
    *(v33 - 1) = v31;
    *(v33 - 3) = v34;
    v33 -= 3;
    if (__CFADD__(v32++, 1))
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

uint64_t sub_2301715AC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v107 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_105:
    v6 = *v107;
    if (!*v107)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_107:
      v100 = *(v8 + 2);
      if (v100 >= 2)
      {
        while (*a3)
        {
          v101 = *&v8[16 * v100];
          v102 = *&v8[16 * v100 + 24];
          sub_230171F40((*a3 + 24 * v101), (*a3 + 24 * *&v8[16 * v100 + 16]), *a3 + 24 * v102, v6);
          if (v5)
          {
          }

          if (v102 < v101)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_2302A36A0(v8);
          }

          if (v100 - 2 >= *(v8 + 2))
          {
            goto LABEL_131;
          }

          v103 = &v8[16 * v100];
          *v103 = v101;
          *(v103 + 1) = v102;
          result = sub_2302A3614(v100 - 1);
          v100 = *(v8 + 2);
          if (v100 <= 1)
          {
          }
        }

        goto LABEL_141;
      }
    }

LABEL_137:
    result = sub_2302A36A0(v8);
    v8 = result;
    goto LABEL_107;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (2)
  {
    v9 = v7++;
    v108 = v9;
    if (v7 >= v6)
    {
      goto LABEL_29;
    }

    v10 = *a3;
    v11 = *(*a3 + 24 * v7);
    v12 = *(*a3 + 24 * v9);
    if (v11 >> 62)
    {
      result = sub_2303106D8();
      v9 = v108;
      v13 = result;
    }

    else
    {
      v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v105 = v5;
    if (v12 >> 62)
    {
      v99 = v13;
      result = sub_2303106D8();
      v13 = v99;
      v9 = v108;
      v14 = result;
    }

    else
    {
      v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = 0;
    v16 = v9 + 2;
    v17 = 24 * v9;
    v18 = (v10 + 24 * v9 + 48);
    do
    {
      v19 = v16;
      v20 = v7;
      v5 = v15;
      if (v16 >= v6)
      {
        break;
      }

      v21 = *(v18 - 3);
      if (*v18 >> 62)
      {
        v23 = v17;
        v109 = v13;
        v24 = sub_2303106D8();
        v9 = v108;
        v13 = v109;
        v17 = v23;
        v22 = v24;
        if (v21 >> 62)
        {
LABEL_17:
          v25 = v17;
          v110 = v13;
          result = sub_2303106D8();
          v9 = v108;
          v13 = v110;
          v17 = v25;
          goto LABEL_14;
        }
      }

      else
      {
        v22 = *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v21 >> 62)
        {
          goto LABEL_17;
        }
      }

      result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:
      v16 = v19 + 1;
      v18 += 3;
      v7 = v20 + 1;
      v15 = v5 + 24;
    }

    while (v14 < v13 != result >= v22);
    if (v14 < v13)
    {
      if (v19 < v9)
      {
        goto LABEL_134;
      }

      if (v9 < v19)
      {
        v26 = 0;
        v27 = v9;
        do
        {
          if (v27 != v20)
          {
            if (!*a3)
            {
              goto LABEL_140;
            }

            v28 = *a3 + v17;
            v29 = (v28 + v26);
            v30 = v28 + v5;
            v31 = *v29;
            v32 = v29[1];
            v33 = v29[2];
            v34 = *(v30 + 40);
            *v29 = *(v30 + 24);
            v29[2] = v34;
            *(v30 + 24) = v31;
            *(v30 + 32) = v32;
            *(v30 + 40) = v33;
          }

          ++v27;
          v5 -= 24;
          v26 += 24;
        }

        while (v27 < v20--);
      }
    }

    v7 = v19;
    v5 = v105;
LABEL_29:
    v36 = a3[1];
    if (v7 >= v36)
    {
      goto LABEL_52;
    }

    if (__OFSUB__(v7, v9))
    {
      goto LABEL_133;
    }

    if (v7 - v9 >= a4)
    {
      goto LABEL_52;
    }

    if (__OFADD__(v9, a4))
    {
      goto LABEL_135;
    }

    if (v9 + a4 >= v36)
    {
      v37 = a3[1];
    }

    else
    {
      v37 = v9 + a4;
    }

    if (v37 < v9)
    {
LABEL_136:
      __break(1u);
      goto LABEL_137;
    }

    if (v7 == v37)
    {
LABEL_52:
      if (v7 < v9)
      {
        goto LABEL_132;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_23007EA34(0, *(v8 + 2) + 1, 1, v8);
        v8 = result;
      }

      v53 = *(v8 + 2);
      v52 = *(v8 + 3);
      v54 = v53 + 1;
      v55 = v108;
      if (v53 >= v52 >> 1)
      {
        result = sub_23007EA34((v52 > 1), v53 + 1, 1, v8);
        v55 = v108;
        v8 = result;
      }

      *(v8 + 2) = v54;
      v56 = &v8[16 * v53];
      *(v56 + 4) = v55;
      *(v56 + 5) = v7;
      v57 = *v107;
      if (!*v107)
      {
        goto LABEL_142;
      }

      if (!v53)
      {
LABEL_3:
        v6 = a3[1];
        if (v7 >= v6)
        {
          goto LABEL_105;
        }

        continue;
      }

      while (1)
      {
        v58 = v54 - 1;
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v59 = *(v8 + 4);
          v60 = *(v8 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_72:
          if (v62)
          {
            goto LABEL_121;
          }

          v75 = &v8[16 * v54];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_124;
          }

          v81 = &v8[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_128;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v54 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v85 = &v8[16 * v54];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_86:
        if (v80)
        {
          goto LABEL_123;
        }

        v88 = &v8[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_126;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_93:
        v96 = v58 - 1;
        if (v58 - 1 >= v54)
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
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v6 = *&v8[16 * v96 + 32];
        v97 = *&v8[16 * v58 + 40];
        sub_230171F40((*a3 + 24 * v6), (*a3 + 24 * *&v8[16 * v58 + 32]), *a3 + 24 * v97, v57);
        if (v5)
        {
        }

        if (v97 < v6)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2302A36A0(v8);
        }

        if (v96 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v98 = &v8[16 * v96];
        *(v98 + 4) = v6;
        *(v98 + 5) = v97;
        result = sub_2302A3614(v58);
        v54 = *(v8 + 2);
        if (v54 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v8[16 * v54 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_119;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_120;
      }

      v70 = &v8[16 * v54];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_122;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_125;
      }

      if (v74 >= v66)
      {
        v92 = &v8[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_129;
        }

        if (v61 < v95)
        {
          v58 = v54 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

    break;
  }

  v106 = v5;
  v6 = *a3;
  v38 = *a3 + 24 * v7 - 24;
  v39 = v9 - v7;
LABEL_40:
  v111 = v7;
  v40 = *(v6 + 24 * v7);
  v41 = v39;
  v42 = v38;
  while (1)
  {
    v43 = *v42;
    if (v40 >> 62)
    {
      v49 = v37;
      v50 = sub_2303106D8();
      v37 = v49;
      v9 = v108;
      v44 = v50;
      if (v43 >> 62)
      {
LABEL_49:
        v51 = v37;
        result = sub_2303106D8();
        v37 = v51;
        v9 = v108;
        if (result < v44)
        {
          goto LABEL_44;
        }

LABEL_39:
        v7 = v111 + 1;
        v38 += 24;
        --v39;
        if (v111 + 1 == v37)
        {
          v7 = v37;
          v5 = v106;
          goto LABEL_52;
        }

        goto LABEL_40;
      }
    }

    else
    {
      v44 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v43 >> 62)
      {
        goto LABEL_49;
      }
    }

    result = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= v44)
    {
      goto LABEL_39;
    }

LABEL_44:
    if (!v6)
    {
      break;
    }

    v45 = v42[4];
    v46 = v42[5];
    v47 = v42[2];
    v40 = v42[3];
    *(v42 + 3) = *v42;
    v42[5] = v47;
    *v42 = v40;
    v42[1] = v45;
    v42[2] = v46;
    v42 -= 3;
    if (__CFADD__(v41++, 1))
    {
      goto LABEL_39;
    }
  }

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
  return result;
}

uint64_t sub_230171D04(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[3 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[3 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v4[2] < v6[2])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 3;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 3;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 3;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v7[2] = v13[2];
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[3 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[3 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v6 - 1) < *(v12 - 1))
      {
        v19 = v6 - 3;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 3, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 3;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 3;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[3 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

uint64_t sub_230171F40(char *__dst, char *__src, unint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[3 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_41;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v16 = *v4;
      if (*v6 >> 62)
      {
        v17 = sub_2303106D8();
        if (!(v16 >> 62))
        {
LABEL_13:
          if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < v17)
          {
            goto LABEL_14;
          }

          goto LABEL_7;
        }
      }

      else
      {
        v17 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!(v16 >> 62))
        {
          goto LABEL_13;
        }
      }

      if (sub_2303106D8() < v17)
      {
LABEL_14:
        v13 = v6;
        v14 = v7 == v6;
        v6 += 3;
        if (v14)
        {
          goto LABEL_9;
        }

LABEL_8:
        v15 = *v13;
        *(v7 + 2) = v13[2];
        *v7 = v15;
        goto LABEL_9;
      }

LABEL_7:
      v13 = v4;
      v14 = v7 == v4;
      v4 += 3;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[3 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_25:
    v18 = v6 - 3;
    v5 -= 24;
    v19 = v12;
    while (1)
    {
      v21 = *(v19 - 24);
      v19 -= 24;
      v20 = v21;
      v22 = *v18;
      if (v21 >> 62)
      {
        v23 = sub_2303106D8();
        if (v22 >> 62)
        {
LABEL_34:
          v24 = sub_2303106D8();
          goto LABEL_30;
        }
      }

      else
      {
        v23 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v22 >> 62)
        {
          goto LABEL_34;
        }
      }

      v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_30:
      v25 = (v5 + 24);
      if (v24 < v23)
      {
        if (v25 != v6)
        {
          v27 = *v18;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v27;
        }

        if (v12 <= v4 || (v6 -= 3, v18 <= v7))
        {
          v6 = v18;
          break;
        }

        goto LABEL_25;
      }

      if (v25 != v12)
      {
        v26 = *v19;
        *(v5 + 16) = *(v19 + 16);
        *v5 = v26;
      }

      v5 -= 24;
      v12 = v19;
      if (v19 <= v4)
      {
        v12 = v19;
        break;
      }
    }
  }

LABEL_41:
  v28 = (v12 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[3 * v28])
  {
    memmove(v6, v4, 24 * v28);
  }

  return 1;
}

double sub_230172230(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16000, &qword_23031F1A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9[-v4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230172474();
  sub_230311428();
  type metadata accessor for RDVector();
  v9[15] = 0;
  sub_2301724C8(&qword_27DB16010, &protocol conformance descriptor for RDVector);
  sub_230310CE8();
  v9[14] = 1;
  sub_230310CB8();
  v8 = v7;
  v9[13] = 2;
  sub_230310CC8();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_230172474()
{
  result = qword_27DB16008;
  if (!qword_27DB16008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16008);
  }

  return result;
}

uint64_t sub_2301724C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RDVector();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23017250C()
{
  result = qword_27DB16028;
  if (!qword_27DB16028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16028);
  }

  return result;
}

unint64_t sub_230172560()
{
  result = qword_27DB16030;
  if (!qword_27DB16030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16030);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_230172604()
{
  result = qword_27DB16038;
  if (!qword_27DB16038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16038);
  }

  return result;
}

unint64_t sub_230172658()
{
  result = qword_27DB16040;
  if (!qword_27DB16040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16040);
  }

  return result;
}

unint64_t sub_2301726E0()
{
  result = qword_27DB16048;
  if (!qword_27DB16048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16048);
  }

  return result;
}

unint64_t sub_230172738()
{
  result = qword_27DB16050;
  if (!qword_27DB16050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16050);
  }

  return result;
}

unint64_t sub_230172790()
{
  result = qword_27DB16058;
  if (!qword_27DB16058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16058);
  }

  return result;
}

uint64_t sub_2301727E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265746E6563 && a2 == 0xE600000000000000;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65636E6169726176 && a2 == 0xE800000000000000 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_230311048();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

char *REMCustomSmartListFilterDescriptor.__allocating_init(data:minimumSupportedVersion:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *MEMORY[0x277D44CC8] != a3 && *MEMORY[0x277D44CB8] == a3;
  v6 = v4;
  return sub_23017872C(a1, a2, &v6);
}

void *REMCustomSmartListFilterDescriptor.toData()()
{
  v1 = v0;
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = REMCustomSmartListFilterDescriptor.minimumSupportedVersion.getter();
  v4 = v2 != *MEMORY[0x277D44CC8] && v2 == *MEMORY[0x277D44CB8];
  LOBYTE(v10[0]) = v4;
  sub_2301730E0(v10);
  if (!v0)
  {
    v5 = objc_opt_self();
    v6 = sub_23030F638();

    v10[0] = 0;
    v7 = [v5 dataWithJSONObject:v6 options:0 error:v10];

    v8 = v10[0];
    if (v7)
    {
      v1 = sub_23030EA18();
    }

    else
    {
      v1 = v8;
      sub_23030E808();

      swift_willThrow();
    }
  }

  return v1;
}

uint64_t REMCustomSmartListFilterDescriptor.minimumSupportedVersion.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AE0, &qword_23031F3B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32 - v3;
  v5 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *MEMORY[0x277D44CC8];
  v10 = *MEMORY[0x277D44CB8];
  if (*MEMORY[0x277D44CB8] <= *MEMORY[0x277D44CC8])
  {
    v11 = *MEMORY[0x277D44CC8];
  }

  else
  {
    v11 = *MEMORY[0x277D44CB8];
  }

  if (*(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_operation))
  {
    v12 = v11;
  }

  else
  {
    v12 = *MEMORY[0x277D44CC8];
  }

  v13 = v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags;
  v14 = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags);
  if (v14)
  {
    v15 = *MEMORY[0x277D44CC8];
    if (v14 != 1)
    {
      if (v14 == 2)
      {
        goto LABEL_19;
      }

      v16 = *(v13 + 16);
      v17 = *(*(v13 + 8) + 16);
      if ((v16 & 1) == 0 && v17 == 0)
      {
        v15 = *MEMORY[0x277D44CC8];
      }

      else
      {
        v15 = *MEMORY[0x277D44CB8];
      }
    }
  }

  else
  {
    v15 = *MEMORY[0x277D44CB8];
  }

  if (v15 > v12)
  {
    v12 = v15;
  }

LABEL_19:
  sub_230055F74(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_date, v4, &unk_27DB15AE0, &qword_23031F3B0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_230061918(v4, &unk_27DB15AE0, &qword_23031F3B0);
  }

  else
  {
    sub_230179418(v4, v8);
    v19 = sub_23017384C();
    sub_23017947C(v8);
    if (v19 > v12)
    {
      v12 = v19;
    }
  }

  v20 = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_time);
  v21 = v9;
  if (v20 >= 5)
  {
    if (v20 != 5)
    {
      goto LABEL_26;
    }

    v21 = v10;
  }

  if (v21 > v12)
  {
    v12 = v21;
  }

LABEL_26:
  v22 = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_priorities);
  if (v22)
  {
    v23 = sub_2300A80A0(v22, &unk_2844EAEE0);
    v24 = v10 <= v12 ? v12 : v10;
    if (v23)
    {
      v12 = v24;
    }
  }

  if (v10 <= v12)
  {
    v25 = v12;
  }

  else
  {
    v25 = v10;
  }

  if ((*(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_flagged) == 2) | *(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_flagged) & 1)
  {
    v26 = v12;
  }

  else
  {
    v26 = v25;
  }

  v27 = (v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location);
  v28 = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 48);
  if (v28 >= 2)
  {
    if (v28 == 255)
    {
      goto LABEL_44;
    }

    v29 = vorrq_s8(v27[1], v27[2]);
    if (*&vorr_s8(*v29.i8, *&vextq_s8(v29, v29, 8uLL)) | v27->i64[1] | v27->i64[0])
    {
      v9 = v10;
    }
  }

  if (v9 > v26)
  {
    v26 = v9;
  }

LABEL_44:
  if (v10 <= v26)
  {
    v30 = v26;
  }

  else
  {
    v30 = v10;
  }

  if (*(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists))
  {
    return v30;
  }

  else
  {
    return v26;
  }
}

uint64_t REMCustomSmartListFilterDescriptor.DataSerializationVersion.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t REMCustomSmartListFilterDescriptor.DataSerializationVersion.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_230172E20()
{
  sub_230311358();
  sub_230311388();
  return sub_2303113A8();
}

uint64_t sub_230172EA8(uint64_t a1)
{
  sub_230311358();
  sub_230311388();
  return sub_2303113A8();
}

unsigned __int16 *sub_230172EF4@<X0>(unsigned __int16 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  *a2 = v4;
  return result;
}

void sub_230172F14(__int16 *a1@<X8>)
{
  if (*v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *a1 = v2;
}

uint64_t static REMCustomSmartListFilterDescriptor.toSerializationVersion(from:)@<X0>(uint64_t result@<X0>, BOOL *a2@<X8>)
{
  v3 = *MEMORY[0x277D44CC8] != result && *MEMORY[0x277D44CB8] == result;
  *a2 = v3;
  return result;
}

void *REMCustomSmartListFilterDescriptor.toData(serializationVersion:)(_BYTE *a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  LOBYTE(v8[0]) = *a1;
  sub_2301730E0(v8);
  if (!v2)
  {
    v3 = objc_opt_self();
    v4 = sub_23030F638();

    v8[0] = 0;
    v5 = [v3 dataWithJSONObject:v4 options:0 error:v8];

    v6 = v8[0];
    if (v5)
    {
      v1 = sub_23030EA18();
    }

    else
    {
      v1 = v6;
      sub_23030E808();

      swift_willThrow();
    }
  }

  return v1;
}

uint64_t sub_2301730E0(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AE0, &qword_23031F3B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v60[-v5];
  v7 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v60[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a1;
  if (v11 == 1)
  {
    v12 = MEMORY[0x277D84F98];
    v13 = 6581857;
    if (*(v2 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_operation))
    {
      v13 = 29295;
    }

    v14 = 0xE300000000000000;
    if (*(v2 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_operation))
    {
      v14 = 0xE200000000000000;
    }

    *(&v66 + 1) = MEMORY[0x277D837D0];
    *&v65 = v13;
    *(&v65 + 1) = v14;
    sub_230061914(&v65, &v69);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72 = v12;
    sub_2300A175C(&v69, 0x6F6974617265706FLL, 0xE90000000000006ELL, isUniquelyReferenced_nonNull_native);
    v16 = v72;
    v17 = v2 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags;
    if (*(v2 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags) == 2)
    {
      v18 = v64;
      goto LABEL_13;
    }

    v20 = *(v17 + 16);
    v21 = *(v17 + 8);
    *&v69 = *(v2 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags);
    *(&v69 + 1) = v21;
    v70 = v20;
    v22 = sub_230173DD0();
  }

  else
  {
    v19 = v2 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags;
    if (*(v2 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags) == 2)
    {
      v16 = MEMORY[0x277D84F98];
      v18 = v64;
      goto LABEL_13;
    }

    v23 = *(v19 + 16);
    v24 = *(v19 + 8);
    *&v69 = *(v2 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags);
    *(&v69 + 1) = v24;
    v70 = v23;
    v22 = sub_230173C7C();
    v16 = MEMORY[0x277D84F98];
  }

  v18 = v64;
  *(&v66 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15578, &qword_23031A808);
  *&v65 = v22;
  sub_230061914(&v65, &v69);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v72 = v16;
  sub_2300A175C(&v69, 0x7367617468736168, 0xE800000000000000, v25);
  v16 = v72;
LABEL_13:
  sub_230055F74(v2 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_date, v6, &unk_27DB15AE0, &qword_23031F3B0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_230061918(v6, &unk_27DB15AE0, &qword_23031F3B0);
    goto LABEL_20;
  }

  sub_230179418(v6, v10);
  if (v11)
  {
    v26 = sub_230174C3C();
    if (v18)
    {
LABEL_17:
      sub_23017947C(v10);
LABEL_50:

      return v16;
    }
  }

  else
  {
    v26 = sub_230174700();
    if (v18)
    {
      goto LABEL_17;
    }
  }

  v27 = v16;
  v28 = v26;
  *(&v66 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15578, &qword_23031A808);
  *&v65 = v28;
  sub_230061914(&v65, &v69);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v72 = v27;
  sub_2300A175C(&v69, 1702125924, 0xE400000000000000, v29);
  sub_23017947C(v10);
  v16 = v72;
LABEL_20:
  if (*(v2 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_time) == 6)
  {
    v63 = v16;
  }

  else
  {
    LOBYTE(v65) = *(v2 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_time);
    v30 = sub_23017719C();
    *(&v66 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15578, &qword_23031A808);
    *&v65 = v30;
    sub_230061914(&v65, &v69);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v72 = v16;
    sub_2300A175C(&v69, 1701669236, 0xE400000000000000, v31);
    v63 = v72;
  }

  v32 = *(v2 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_priorities);
  if (v32)
  {
    v33 = *(v32 + 16);
    v34 = MEMORY[0x277D84F90];
    if (v33)
    {
      v61 = v11;
      v62 = v2;
      v64 = v18;
      *&v65 = MEMORY[0x277D84F90];
      sub_23009EC34(0, v33, 0);
      v34 = v65;
      v35 = (v32 + 32);
      do
      {
        v37 = *v35++;
        v36 = v37;
        v38 = v37 == 1;
        if (v37 == 1)
        {
          v39 = 7827308;
        }

        else
        {
          v39 = 1701736302;
        }

        if (v38)
        {
          v40 = 0xE300000000000000;
        }

        else
        {
          v40 = 0xE400000000000000;
        }

        if (v36 == 2)
        {
          v39 = 0x6D756964656DLL;
          v40 = 0xE600000000000000;
        }

        if (v36 == 3)
        {
          v41 = 1751607656;
        }

        else
        {
          v41 = v39;
        }

        if (v36 == 3)
        {
          v42 = 0xE400000000000000;
        }

        else
        {
          v42 = v40;
        }

        *&v65 = v34;
        v44 = *(v34 + 16);
        v43 = *(v34 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_23009EC34((v43 > 1), v44 + 1, 1);
          v34 = v65;
        }

        *(v34 + 16) = v44 + 1;
        v45 = v34 + 16 * v44;
        *(v45 + 32) = v41;
        *(v45 + 40) = v42;
        --v33;
      }

      while (v33);
      v18 = v64;
      v2 = v62;
      v11 = v61;
    }

    *(&v66 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0, &unk_23031A990);
    *&v65 = v34;
    sub_230061914(&v65, &v69);
    v46 = v63;
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v72 = v46;
    sub_2300A175C(&v69, 0x697469726F697270, 0xEA00000000007365, v47);
    v16 = v72;
  }

  else
  {
    v16 = v63;
  }

  v48 = *(v2 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_flagged);
  if (v48 != 2)
  {
    *(&v66 + 1) = MEMORY[0x277D839B0];
    LOBYTE(v65) = v48 & 1;
    sub_230061914(&v65, &v69);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v72 = v16;
    sub_2300A175C(&v69, 0x64656767616C66, 0xE700000000000000, v49);
    v16 = v72;
  }

  v50 = (v2 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location);
  v51 = *(v2 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 48);
  if (v51 != 255)
  {
    v52 = v50[1];
    v65 = *v50;
    v66 = v52;
    v67 = v50[2];
    v68 = v51;
    LOBYTE(v72) = v11;
    v53 = sub_230173B54(&v72);
    if (v18)
    {
      goto LABEL_50;
    }

    v54 = v53;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15578, &qword_23031A808);
    *&v69 = v54;
    sub_230061914(&v69, &v65);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v72 = v16;
    sub_2300A175C(&v65, 0x6E6F697461636F6CLL, 0xE800000000000000, v55);
    v16 = v72;
  }

  if (v11 && *(v2 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists))
  {
    v56 = *(v2 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists + 8);
    *&v65 = *(v2 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists);
    *(&v65 + 1) = v56;
    v57 = sub_230177C5C();
    *(&v66 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15578, &qword_23031A808);
    *&v65 = v57;
    sub_230061914(&v65, &v69);
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v72 = v16;
    sub_2300A175C(&v69, 0x737473696CLL, 0xE500000000000000, v58);
    return v72;
  }

  return v16;
}

uint64_t sub_23017384C()
{
  v1 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230179960(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = MEMORY[0x277D44CC8];
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_23017947C(v3);
      v5 = MEMORY[0x277D44CC8];
    }

    else if (v3[17])
    {
      v5 = MEMORY[0x277D44CB8];
    }
  }

  else
  {
    if ((EnumCaseMultiPayload - 3) < 3)
    {
      sub_23017947C(v3);
LABEL_8:
      v5 = MEMORY[0x277D44CB8];
      return *v5;
    }

    if (EnumCaseMultiPayload != 6)
    {
      goto LABEL_8;
    }
  }

  return *v5;
}

void *sub_230173990@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2)
  {

    v6 = sub_2300AEB0C();
    v8 = v7;

    if (v8)
    {
      *&v15[0] = v6;
      *(&v15[0] + 1) = v8;
      sub_23030FB18();
      v9 = sub_230310C08();

      if (!v9)
      {

        v11 = xmmword_230316800;
        v12 = 0uLL;
        v14 = 2;
        v13 = 0uLL;
        goto LABEL_9;
      }
    }

    result = sub_230177740(a1, v15);
    if (v3)
    {
      return result;
    }
  }

  else
  {
    result = sub_230177740(a1, v15);
    if (v3)
    {
      return result;
    }
  }

  v11 = v15[0];
  v12 = v15[1];
  v13 = v15[2];
  v14 = v16;
LABEL_9:
  *a3 = v11;
  *(a3 + 16) = v12;
  *(a3 + 32) = v13;
  *(a3 + 48) = v14;
  return result;
}

char *REMCustomSmartListFilterDescriptor.__allocating_init(data:serializationVersion:)(uint64_t a1, unint64_t a2, __int16 a3)
{
  if (a3 == 1)
  {
    v3 = 0;
    goto LABEL_5;
  }

  if (a3 == 2)
  {
    v3 = 1;
LABEL_5:
    v9 = v3;
    return sub_23017872C(a1, a2, &v9);
  }

  sub_2301794D8();
  swift_allocError();
  *v8 = a3;
  swift_willThrow();
  return sub_23005FE3C(a1, a2);
}

unint64_t sub_230173B54(_BYTE *a1)
{
  if ((*a1 & 1) == 0)
  {
    return sub_23017731C(a1);
  }

  if (*(v1 + 48) < 2u || (*(v1 + 16) | *(v1 + 8) | *v1 | *(v1 + 32) | *(v1 + 24) | *(v1 + 40)) == 0)
  {
    return sub_23017731C(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146C0, &unk_230316180);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_230315CE0;
  *(inited + 32) = 0x697461636F4C6F6ELL;
  v4 = inited + 32;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0xEA00000000006E6FLL;
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  v5 = sub_23008C5BC(inited);
  swift_setDeallocating();
  sub_230061918(v4, &qword_27DB146B0, &qword_230316140);
  return v5;
}

unint64_t sub_230173C7C()
{
  v1 = *v0;
  if (*v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146C0, &unk_230316180);
    if (v1 == 1)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_230315CE0;
      *(inited + 32) = 7958113;
      v3 = inited + 32;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 40) = 0xE300000000000000;
      *(inited + 48) = 0;
      *(inited + 56) = 0xE000000000000000;
    }

    else
    {
      v6 = swift_initStackObject();
      *(v6 + 16) = xmmword_230315CE0;
      *(v6 + 32) = 0x7367617468736168;
      v3 = v6 + 32;
      *(v6 + 40) = 0xE800000000000000;
      *(v6 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0, &unk_23031A990);
      *(v6 + 48) = v1;

      inited = v6;
    }

    v7 = sub_23008C5BC(inited);
    swift_setDeallocating();
    sub_230061918(v3, &qword_27DB146B0, &qword_230316140);
    return v7;
  }

  else
  {
    v4 = MEMORY[0x277D84F90];

    return sub_23008C5BC(v4);
  }
}

unint64_t sub_230173DD0()
{
  v1 = *v0;
  if (!*v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146C0, &unk_230316180);
    inited = swift_initStackObject();
    v3 = inited;
    *(inited + 16) = xmmword_230315CE0;
    *(inited + 32) = 0x6465676761746E75;
    v4 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE800000000000000;
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146C0, &unk_230316180);
    inited = swift_initStackObject();
    v3 = inited;
    *(inited + 16) = xmmword_230315CE0;
    *(inited + 32) = 7958113;
    v4 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE300000000000000;
LABEL_5:
    *(inited + 48) = 0;
    *(inited + 56) = 0xE000000000000000;
    goto LABEL_11;
  }

  v5 = *(v0 + 16);
  v6 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146C0, &unk_230316180);
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_230315CE0;
  *(v3 + 32) = 0x7367617468736168;
  v4 = v3 + 32;
  *(v3 + 40) = 0xE800000000000000;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_230316160;
  *(v7 + 32) = 0x6564756C636E69;
  *(v7 + 40) = 0xE700000000000000;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0, &unk_23031A990);
  *(v7 + 48) = v1;
  *(v7 + 72) = v8;
  *(v7 + 80) = 0x6564756C637865;
  *(v7 + 88) = 0xE700000000000000;
  *(v7 + 96) = v6;
  *(v7 + 120) = v8;
  *(v7 + 128) = 0x6F6974617265706FLL;
  v9 = 6581857;
  if (v5)
  {
    v9 = 29295;
  }

  v10 = 0xE300000000000000;
  if (v5)
  {
    v10 = 0xE200000000000000;
  }

  *(v7 + 168) = MEMORY[0x277D837D0];
  *(v7 + 136) = 0xE90000000000006ELL;
  *(v7 + 144) = v9;
  *(v7 + 152) = v10;

  v11 = sub_23008C5BC(v7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146B0, &qword_230316140);
  swift_arrayDestroy();
  *(v3 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15578, &qword_23031A808);
  *(v3 + 48) = v11;
LABEL_11:
  v12 = sub_23008C5BC(v3);
  swift_setDeallocating();
  sub_230061918(v4, &qword_27DB146B0, &qword_230316140);
  return v12;
}

uint64_t sub_23017407C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2300AEB0C();
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = v4;
  v7 = v5;
  *&v19[0] = v4;
  *(&v19[0] + 1) = v5;

  sub_23030FB18();
  v8 = sub_230310C08();

  if (v8)
  {
    if (v8 == 1)
    {
      v9 = 1;
      if (*(a1 + 16))
      {
        goto LABEL_5;
      }

LABEL_9:

      goto LABEL_10;
    }

LABEL_16:

    sub_2301799C4();
    swift_allocError();
    *v16 = 0u;
    *(v16 + 16) = 0u;
    *(v16 + 32) = 0;
    return swift_willThrow();
  }

  v9 = 0;
  if (!*(a1 + 16))
  {
    goto LABEL_9;
  }

LABEL_5:
  v10 = sub_23005EE00(v6, v7);
  v12 = v11;

  if (v12)
  {
    sub_23004D5CC(*(a1 + 56) + 32 * v10, v19);

    if ((v9 & 1) == 0)
    {
LABEL_7:
      v13 = 0;
      v14 = 1;
LABEL_14:
      result = sub_230061918(v19, &qword_27DB14810, &qword_230316820);
      *a2 = v14;
      *(a2 + 8) = v13;
      *(a2 + 16) = 0;
      return result;
    }

    goto LABEL_11;
  }

LABEL_10:

  memset(v19, 0, sizeof(v19));
  if ((v9 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  sub_230055F74(v19, v18, &qword_27DB14810, &qword_230316820);
  if (v18[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0, &unk_23031A990);
    if (swift_dynamicCast())
    {
      v14 = v20;
      v13 = MEMORY[0x277D84F90];
      goto LABEL_14;
    }
  }

  else
  {
    sub_230061918(v18, &qword_27DB14810, &qword_230316820);
  }

  sub_2301799C4();
  swift_allocError();
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  swift_willThrow();
  return sub_230061918(v19, &qword_27DB14810, &qword_230316820);
}

uint64_t sub_2301742EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2300AEB0C();
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  v7 = v4;
  *&v28[0] = v4;
  *(&v28[0] + 1) = v5;

  sub_23030FB18();
  v8 = sub_230310C08();

  if (v8 >= 3)
  {

LABEL_8:

    sub_2301799C4();
    swift_allocError();
    *v15 = 1;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0;
    return swift_willThrow();
  }

  if (!*(a1 + 16))
  {

LABEL_10:

    memset(v28, 0, sizeof(v28));
    v12 = v8;
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v9 = sub_23005EE00(v7, v6);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_23004D5CC(*(a1 + 56) + 32 * v9, v28);

  v12 = v8;
  if (!v8)
  {
LABEL_6:
    v13 = v8;
    v14 = v8;
LABEL_13:
    result = sub_230061918(v28, &qword_27DB14810, &qword_230316820);
    *a2 = v13;
    *(a2 + 8) = v14;
    *(a2 + 16) = v8;
    return result;
  }

LABEL_11:
  if (v12 == 1)
  {
    v14 = 0;
    LOBYTE(v8) = 0;
    v13 = 1;
    goto LABEL_13;
  }

  sub_230055F74(v28, v26, &qword_27DB14810, &qword_230316820);
  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15578, &qword_23031A808);
    if (swift_dynamicCast())
    {
      if (*(v25 + 16))
      {
        v17 = sub_23005EE00(0x6564756C636E69, 0xE700000000000000);
        if (v18)
        {
          sub_23004D5CC(*(v25 + 56) + 32 * v17, v26);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0, &unk_23031A990);
          if (swift_dynamicCast())
          {
            v13 = v25;
            if (*(v25 + 16))
            {
              v19 = sub_23005EE00(0x6564756C637865, 0xE700000000000000);
              if (v20)
              {
                sub_23004D5CC(*(v25 + 56) + 32 * v19, v26);
                if (swift_dynamicCast())
                {
                  v14 = v25;
                  if (*(v25 + 16) && (v21 = sub_23005EE00(0x6F6974617265706FLL, 0xE90000000000006ELL), (v22 & 1) != 0))
                  {
                    sub_23004D5CC(*(v25 + 56) + 32 * v21, v26);

                    if (swift_dynamicCast())
                    {
                      v23 = sub_230310C08();

                      if (v23 == 1)
                      {
                        LOBYTE(v8) = 1;
                        goto LABEL_13;
                      }

                      if (!v23)
                      {
                        LOBYTE(v8) = 0;
                        goto LABEL_13;
                      }
                    }
                  }

                  else
                  {
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    sub_230061918(v26, &qword_27DB14810, &qword_230316820);
  }

  sub_2301799C4();
  swift_allocError();
  *v24 = 1;
  *(v24 + 8) = 0;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = 0;
  swift_willThrow();
  return sub_230061918(v28, &qword_27DB14810, &qword_230316820);
}

unsigned __int8 *sub_230174700()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78, &qword_23031CBE0);
  MEMORY[0x28223BE20](v2);
  v4 = v39 - v3;
  v5 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate(0);
  MEMORY[0x28223BE20](v5);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230179960(v1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_230112AF4(v7, v4, &qword_27DB15A78, &qword_23031CBE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146C0, &unk_230316180);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_230315CE0;
      *(inited + 32) = 0x676E615265746164;
      v39[0] = inited + 32;
      *(inited + 40) = 0xE900000000000065;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB18F60, &qword_230316B10);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_2303167B0;
      if (qword_27DB13BC8 != -1)
      {
        swift_once();
      }

      v11 = qword_27DB16060;
      v12 = sub_23030EAA8();
      v13 = [v11 stringFromDate_];

      v14 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v16 = v15;

      *(v10 + 32) = v14;
      *(v10 + 40) = v16;
      v17 = sub_23030EAA8();
      v18 = [v11 stringFromDate_];

      v19 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v21 = v20;

      *(v10 + 48) = v19;
      *(v10 + 56) = v21;
      *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0, &unk_23031A990);
      *(inited + 48) = v10;
      v7 = sub_23008C5BC(inited);
      swift_setDeallocating();
      sub_230061918(v39[0], &qword_27DB146B0, &qword_230316140);
      v22 = &qword_27DB15A78;
      v23 = &qword_23031CBE0;
      v24 = v4;
      goto LABEL_25;
    }

    v28 = *v7;
    v29 = *(v7 + 1);
    v30 = v7[16];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146C0, &unk_230316180);
    v31 = swift_initStackObject();
    *(v31 + 16) = xmmword_230315CE0;
    *(v31 + 32) = 0x65766974616C6572;
    v26 = v31 + 32;
    *(v31 + 40) = 0xED000065676E6152;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB18F60, &qword_230316B10);
    v32 = swift_allocObject();
    v33 = v32;
    *(v32 + 16) = xmmword_230316160;
    v34 = 0x747361506E69;
    if (v28)
    {
      v34 = 0x7478654E6E69;
    }

    *(v32 + 32) = v34;
    *(v32 + 40) = 0xE600000000000000;
    v39[33] = v29;
    *(v32 + 48) = sub_230310E58();
    v33[7] = v35;
    if (v30 <= 1)
    {
      if (v30)
      {
        v36 = 0xE300000000000000;
        v37 = 7954788;
      }

      else
      {
        v36 = 0xE400000000000000;
        v37 = 1920298856;
      }
    }

    else if (v30 == 2)
    {
      v36 = 0xE400000000000000;
      v37 = 1801807223;
    }

    else if (v30 == 3)
    {
      v36 = 0xE500000000000000;
      v37 = 0x68746E6F6DLL;
    }

    else
    {
      v36 = 0xE400000000000000;
      v37 = 1918985593;
    }

    v33[8] = v37;
    v33[9] = v36;
    *(v31 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0, &unk_23031A990);
    *(v31 + 48) = v33;
    v25 = v31;
LABEL_24:
    v7 = sub_23008C5BC(v25);
    swift_setDeallocating();
    v22 = &qword_27DB146B0;
    v23 = &qword_230316140;
    v24 = v26;
LABEL_25:
    sub_230061918(v24, v22, v23);
    return v7;
  }

  if ((EnumCaseMultiPayload - 3) >= 3)
  {
    if (EnumCaseMultiPayload != 6)
    {
      goto LABEL_11;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146C0, &unk_230316180);
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_230315CE0;
    *(v25 + 32) = 7958113;
    v26 = v25 + 32;
    *(v25 + 72) = MEMORY[0x277D837D0];
    *(v25 + 40) = 0xE300000000000000;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0xE000000000000000;
    goto LABEL_24;
  }

  sub_23017947C(v7);
LABEL_11:
  sub_2301794D8();
  swift_allocError();
  *v27 = 1;
  swift_willThrow();
  return v7;
}

unsigned __int8 *sub_230174C3C()
{
  v2 = sub_23030EB58();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_230179960(v0, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146C0, &unk_230316180);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_230315CE0;
        *(inited + 32) = 0x657461446F6ELL;
        v12 = inited + 32;
        *(inited + 72) = MEMORY[0x277D837D0];
        *(inited + 40) = 0xE600000000000000;
        *(inited + 48) = 0;
        *(inited + 56) = 0xE000000000000000;
        goto LABEL_13;
      }

      goto LABEL_15;
    }

    v33 = v1;
    if (EnumCaseMultiPayload == 4)
    {
      (*(v3 + 32))(v5, v8, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146C0, &unk_230316180);
      v13 = swift_initStackObject();
      *(v13 + 32) = 0x657461446E6FLL;
      v14 = v13 + 32;
      *(v13 + 16) = xmmword_230315CE0;
      *(v13 + 40) = 0xE600000000000000;
      if (qword_27DB13BC8 == -1)
      {
        goto LABEL_20;
      }
    }

    else
    {
      (*(v3 + 32))(v5, v8, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146C0, &unk_230316180);
      v13 = swift_initStackObject();
      *(v13 + 32) = 0x7461447265746661;
      v14 = v13 + 32;
      *(v13 + 16) = xmmword_230315CE0;
      *(v13 + 40) = 0xE900000000000065;
      if (qword_27DB13BC8 == -1)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_23;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v15 = *v8;
      v16 = *(v8 + 1);
      v17 = v8[16];
      v18 = v8[17];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146C0, &unk_230316180);
      v19 = swift_initStackObject();
      *(v19 + 16) = xmmword_230315CE0;
      strcpy((v19 + 32), "relativeRange");
      *(v19 + 46) = -4864;
      v29[80] = v15;
      v30 = v16;
      v31 = v17;
      v32 = v18;
      v20 = sub_2301769FC();
      *(v19 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15578, &qword_23031A808);
      *(v19 + 48) = v20;
      v8 = sub_23008C5BC(v19);
      swift_setDeallocating();
      sub_230061918(v19 + 32, &qword_27DB146B0, &qword_230316140);
      return v8;
    }

    v33 = v1;
    (*(v3 + 32))(v5, v8, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146C0, &unk_230316180);
    v13 = swift_initStackObject();
    *(v13 + 32) = 0x614465726F666562;
    v14 = v13 + 32;
    *(v13 + 16) = xmmword_230315CE0;
    *(v13 + 40) = 0xEA00000000006574;
    if (qword_27DB13BC8 == -1)
    {
LABEL_20:
      v22 = qword_27DB16060;
      v23 = sub_23030EAA8();
      v24 = [v22 stringFromDate_];

      v25 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v27 = v26;

      *(v13 + 72) = MEMORY[0x277D837D0];
      *(v13 + 48) = v25;
      *(v13 + 56) = v27;
      v8 = sub_23008C5BC(v13);
      swift_setDeallocating();
      sub_230061918(v14, &qword_27DB146B0, &qword_230316140);
      (*(v3 + 8))(v5, v2);
      return v8;
    }

LABEL_23:
    swift_once();
    goto LABEL_20;
  }

  if (!EnumCaseMultiPayload)
  {
    v10 = *v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146C0, &unk_230316180);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_230315CE0;
    *(inited + 32) = 0x7961646F74;
    v12 = inited + 32;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 48) = v10;
LABEL_13:
    v8 = sub_23008C5BC(inited);
    swift_setDeallocating();
    sub_230061918(v12, &qword_27DB146B0, &qword_230316140);
    return v8;
  }

  sub_23017947C(v8);
LABEL_15:
  v21 = sub_230174700();
  if (!v1)
  {
    return v21;
  }

  return v8;
}

unsigned __int8 *sub_230175260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15AB0, &qword_23031CC00);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v103 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0, &unk_23031A950);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v110 = v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v111 = v103 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v103 - v18;
  MEMORY[0x28223BE20](v17);
  v113 = (v103 - v20);
  v21 = sub_23030EB58();
  v114 = *(v21 - 8);
  v115 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v109 = v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v112 = v103 - v24;
  v25 = sub_2300AEB0C();
  if (!v26)
  {
    goto LABEL_4;
  }

  v27 = v25;
  v28 = v26;
  v108 = v11;
  *&v118 = v25;
  *(&v118 + 1) = v26;

  v29 = sub_23030FB18();
  v31 = sub_2301785FC(v29, v30);
  if (v31 == 3)
  {

LABEL_4:

    sub_2301799C4();
    swift_allocError();
    *v32 = 0u;
    *(v32 + 16) = 0u;
    *(v32 + 32) = 0;
    return swift_willThrow();
  }

  v34 = v31;
  if (!*(a1 + 16))
  {

    v118 = 0u;
    v119 = 0u;
    v38 = v34;
    if (v34)
    {
      goto LABEL_13;
    }

LABEL_9:
    sub_230061918(&v118, &qword_27DB14810, &qword_230316820);
    type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate(0);
    return swift_storeEnumTagMultiPayload();
  }

  v107 = v6;
  v35 = sub_23005EE00(v27, v28);
  v37 = v36;

  if (v37)
  {
    sub_23004D5CC(*(a1 + 56) + 32 * v35, &v118);
  }

  else
  {

    v118 = 0u;
    v119 = 0u;
  }

  v3 = v2;
  v6 = v107;
  v38 = v34;
  if (!v34)
  {
    goto LABEL_9;
  }

LABEL_13:
  if (v38 != 1)
  {
    sub_230055F74(&v118, v116, &qword_27DB14810, &qword_230316820);
    if (v117)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0, &unk_23031A990);
      if (swift_dynamicCast())
      {
        v39 = v120;
        if (v120[2] == 3)
        {
          v45 = a2;
          v46 = v120[4];

          v47 = sub_230310C08();

          if (v47 == 1)
          {
            LOBYTE(v48) = 1;
          }

          else
          {
            if (v47)
            {
              goto LABEL_103;
            }

            LOBYTE(v48) = 0;
          }

          if (v39[2] < 2uLL)
          {
            __break(1u);
          }

          else
          {
            v46 = v39[6];
            v47 = v39[7];
            v60 = HIBYTE(v47) & 0xF;
            v61 = v46 & 0xFFFFFFFFFFFFLL;
            if ((v47 & 0x2000000000000000) != 0)
            {
              v62 = HIBYTE(v47) & 0xF;
            }

            else
            {
              v62 = v46 & 0xFFFFFFFFFFFFLL;
            }

            if (!v62)
            {
              goto LABEL_103;
            }

            if ((v47 & 0x1000000000000000) == 0)
            {
              if ((v47 & 0x2000000000000000) == 0)
              {
                if ((v46 & 0x1000000000000000) == 0)
                {
                  goto LABEL_112;
                }

                result = ((v47 & 0xFFFFFFFFFFFFFFFLL) + 32);
                goto LABEL_44;
              }

              v116[0] = v39[6];
              v116[1] = v47 & 0xFFFFFFFFFFFFFFLL;
              if (v46 == 43)
              {
                if (v60)
                {
                  if (--v60)
                  {
                    v64 = 0;
                    v88 = v116 + 1;
                    while (1)
                    {
                      v89 = *v88 - 48;
                      if (v89 > 9)
                      {
                        break;
                      }

                      v90 = 10 * v64;
                      if ((v64 * 10) >> 64 != (10 * v64) >> 63)
                      {
                        break;
                      }

                      v64 = v90 + v89;
                      if (__OFADD__(v90, v89))
                      {
                        break;
                      }

                      ++v88;
                      if (!--v60)
                      {
                        goto LABEL_102;
                      }
                    }
                  }

                  goto LABEL_101;
                }

LABEL_117:
                __break(1u);
                return result;
              }

              if (v46 != 45)
              {
                if (v60)
                {
                  v64 = 0;
                  v93 = v116;
                  while (1)
                  {
                    v94 = *v93 - 48;
                    if (v94 > 9)
                    {
                      break;
                    }

                    v95 = 10 * v64;
                    if ((v64 * 10) >> 64 != (10 * v64) >> 63)
                    {
                      break;
                    }

                    v64 = v95 + v94;
                    if (__OFADD__(v95, v94))
                    {
                      break;
                    }

                    ++v93;
                    if (!--v60)
                    {
                      goto LABEL_102;
                    }
                  }
                }

                goto LABEL_101;
              }

              if (v60)
              {
                if (--v60)
                {
                  v64 = 0;
                  v68 = v116 + 1;
                  while (1)
                  {
                    v69 = *v68 - 48;
                    if (v69 > 9)
                    {
                      break;
                    }

                    v70 = 10 * v64;
                    if ((v64 * 10) >> 64 != (10 * v64) >> 63)
                    {
                      break;
                    }

                    v64 = v70 - v69;
                    if (__OFSUB__(v70, v69))
                    {
                      break;
                    }

                    ++v68;
                    if (!--v60)
                    {
                      goto LABEL_102;
                    }
                  }
                }

                goto LABEL_101;
              }

LABEL_115:
              __break(1u);
LABEL_116:
              __break(1u);
              goto LABEL_117;
            }
          }

          v64 = sub_230243758(v46, v47, 10);
          v98 = v97;

          if ((v98 & 1) == 0)
          {
            goto LABEL_107;
          }
        }

LABEL_103:
      }

LABEL_104:
      sub_2301799C4();
      swift_allocError();
      *v96 = 0u;
      *(v96 + 16) = 0u;
      *(v96 + 32) = 0;
      swift_willThrow();
      return sub_230061918(&v118, &qword_27DB14810, &qword_230316820);
    }

LABEL_27:
    sub_230061918(v116, &qword_27DB14810, &qword_230316820);
    goto LABEL_104;
  }

  sub_230055F74(&v118, v116, &qword_27DB14810, &qword_230316820);
  if (!v117)
  {
    goto LABEL_27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0, &unk_23031A990);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_104;
  }

  v39 = v120;
  if (v120[2] != 2)
  {
    goto LABEL_103;
  }

  v40 = qword_27DB13BC8;

  if (v40 != -1)
  {
    swift_once();
  }

  v41 = qword_27DB16060;
  v42 = sub_23030F8B8();

  v106 = v41;
  v43 = [v41 dateFromString_];

  v103[1] = v3;
  if (v43)
  {
    sub_23030EB18();

    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  v50 = v114;
  v49 = v115;
  v105 = *(v114 + 56);
  v105(v19, v44, 1, v115);
  v51 = v19;
  v48 = v49;
  v52 = v113;
  sub_230112AF4(v51, v113, &unk_27DB15AA0, &unk_23031A950);
  v104 = *(v50 + 48);
  if (v104(v52, 1, v48) == 1)
  {

    sub_230061918(v52, &unk_27DB15AA0, &unk_23031A950);
    goto LABEL_104;
  }

  v107 = v6;
  v53 = v52;
  v45 = v50 + 32;
  v113 = *(v50 + 32);
  (v113)(v112, v53, v48);
  if (v39[2] >= 2uLL)
  {

    v54 = sub_23030F8B8();

    v55 = [v106 dateFromString_];

    v56 = v111;
    if (v55)
    {
      v57 = v110;
      sub_23030EB18();

      v58 = 0;
      v59 = v115;
    }

    else
    {
      v58 = 1;
      v59 = v115;
      v57 = v110;
    }

    v71 = v104;
    v105(v57, v58, 1, v59);
    sub_230112AF4(v57, v56, &unk_27DB15AA0, &unk_23031A950);
    if (v71(v56, 1, v59) == 1)
    {
      (*(v114 + 8))(v112, v59);
      sub_230061918(v56, &unk_27DB15AA0, &unk_23031A950);
      goto LABEL_104;
    }

    v72 = v9;
    v115 = a2;
    v73 = v109;
    v74 = v113;
    (v113)(v109, v56, v59);
    sub_230179A18();
    v75 = v112;
    v76 = sub_23030F7F8();
    result = sub_230061918(&v118, &qword_27DB14810, &qword_230316820);
    if (v76)
    {
      v77 = v108;
      v74(v108, v75, v59);
      v78 = v107;
      v74((v77 + *(v107 + 48)), v73, v59);
      sub_230055F74(v77, v72, &qword_27DB15AB0, &qword_23031CC00);
      v79 = *(v78 + 48);
      v80 = v115;
      v74(v115, v72, v59);
      v81 = *(v114 + 8);
      v81(v72 + v79, v59);
      v82 = v81;
      sub_230112AF4(v77, v72, &qword_27DB15AB0, &qword_23031CC00);
      v83 = *(v107 + 48);
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78, &qword_23031CBE0);
      v74((v80 + *(v84 + 36)), (v72 + v83), v59);
      v82(v72, v59);
      type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate(0);
      return swift_storeEnumTagMultiPayload();
    }

    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  __break(1u);
  do
  {
    __break(1u);
LABEL_112:
    result = sub_230310958();
LABEL_44:
    v63 = *result;
    if (v63 == 43)
    {
      if (v61 < 1)
      {
        goto LABEL_116;
      }

      v60 = v61 - 1;
      if (v61 != 1)
      {
        v64 = 0;
        if (!result)
        {
          goto LABEL_93;
        }

        v85 = result + 1;
        while (1)
        {
          v86 = *v85 - 48;
          if (v86 > 9)
          {
            break;
          }

          v87 = 10 * v64;
          if ((v64 * 10) >> 64 != (10 * v64) >> 63)
          {
            break;
          }

          v64 = v87 + v86;
          if (__OFADD__(v87, v86))
          {
            break;
          }

          ++v85;
          if (!--v60)
          {
            goto LABEL_102;
          }
        }
      }
    }

    else if (v63 == 45)
    {
      if (v61 < 1)
      {
        goto LABEL_114;
      }

      v60 = v61 - 1;
      if (v61 != 1)
      {
        v64 = 0;
        if (!result)
        {
          goto LABEL_93;
        }

        v65 = result + 1;
        while (1)
        {
          v66 = *v65 - 48;
          if (v66 > 9)
          {
            break;
          }

          v67 = 10 * v64;
          if ((v64 * 10) >> 64 != (10 * v64) >> 63)
          {
            break;
          }

          v64 = v67 - v66;
          if (__OFSUB__(v67, v66))
          {
            break;
          }

          ++v65;
          if (!--v60)
          {
            goto LABEL_102;
          }
        }
      }
    }

    else if (v61)
    {
      v64 = 0;
      if (!result)
      {
LABEL_93:
        LOBYTE(v60) = 0;
        goto LABEL_102;
      }

      while (1)
      {
        v91 = *result - 48;
        if (v91 > 9)
        {
          break;
        }

        v92 = 10 * v64;
        if ((v64 * 10) >> 64 != (10 * v64) >> 63)
        {
          break;
        }

        v64 = v92 + v91;
        if (__OFADD__(v92, v91))
        {
          break;
        }

        ++result;
        if (!--v61)
        {
          goto LABEL_93;
        }
      }
    }

LABEL_101:
    v64 = 0;
    LOBYTE(v60) = 1;
LABEL_102:
    LOBYTE(v120) = v60;
    if (v60)
    {
      goto LABEL_103;
    }

LABEL_107:
    ;
  }

  while (v39[2] < 3uLL);
  v99 = v39[8];
  v100 = v39[9];

  v101 = sub_230178648(v99, v100);
  if (v101 == 5)
  {
    goto LABEL_104;
  }

  v102 = v101;
  sub_230061918(&v118, &qword_27DB14810, &qword_230316820);
  *v45 = v48;
  *(v45 + 8) = v64;
  *(v45 + 16) = v102;
  *(v45 + 17) = 0;
  type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate(0);
  return swift_storeEnumTagMultiPayload();
}

void sub_230175EF4(uint64_t a1@<X0>, char *a2@<X8>)
{
  v89 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate(0);
  MEMORY[0x28223BE20](v89);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0, &unk_23031A950);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v83 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v86 = &v80 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v82 = &v80 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v85 = &v80 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v80 - v17;
  MEMORY[0x28223BE20](v16);
  v84 = &v80 - v19;
  v20 = sub_23030EB58();
  v87 = *(v20 - 8);
  v88 = v20;
  v21 = MEMORY[0x28223BE20](v20);
  v81 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v80 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v80 - v26;

  v28 = sub_2300AEB0C();
  v30 = v29;

  if (!v30)
  {
    goto LABEL_4;
  }

  v97 = a2;
  *&v96[0] = v28;
  *(&v96[0] + 1) = v30;

  v31 = sub_23030FB18();
  v33 = sub_230178694(v31, v32);
  if (v33 != 6)
  {
    v35 = v33;
    if (*(a1 + 16))
    {
      v36 = sub_23005EE00(v28, v30);
      v38 = v37;

      if (v38)
      {
        sub_23004D5CC(*(a1 + 56) + 32 * v36, v96);

        goto LABEL_12;
      }
    }

    else
    {
    }

    memset(v96, 0, sizeof(v96));
LABEL_12:
    if (v35 > 2u)
    {
      if (v35 == 3)
      {
        sub_230055F74(v96, v91, &qword_27DB14810, &qword_230316820);
        v50 = v97;
        if (v95)
        {
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_44;
          }

          if (qword_27DB13BC8 != -1)
          {
            swift_once();
          }

          v51 = qword_27DB16060;
          v52 = sub_23030F8B8();

          v53 = [v51 dateFromString_];

          v54 = v85;
          if (v53)
          {
            v55 = v82;
            sub_23030EB18();

            v56 = 0;
          }

          else
          {
            v56 = 1;
            v55 = v82;
          }

          v65 = v87;
          v66 = v55;
          v67 = v55;
          v68 = v88;
          (*(v87 + 56))(v66, v56, 1, v88);
          sub_230112AF4(v67, v54, &unk_27DB15AA0, &unk_23031A950);
          if ((*(v65 + 48))(v54, 1, v68) == 1)
          {
            v61 = &unk_27DB15AA0;
            v62 = &unk_23031A950;
            v63 = v54;
            goto LABEL_43;
          }

          sub_230061918(v96, &qword_27DB14810, &qword_230316820);
          v69 = *(v65 + 32);
          v69(v25, v54, v68);
          v69(v50, v25, v68);
          goto LABEL_46;
        }
      }

      else
      {
        if (v35 != 4)
        {
          sub_230061918(v96, &qword_27DB14810, &qword_230316820);
          goto LABEL_46;
        }

        sub_230055F74(v96, v91, &qword_27DB14810, &qword_230316820);
        if (v95)
        {
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_44;
          }

          if (qword_27DB13BC8 != -1)
          {
            swift_once();
          }

          v43 = qword_27DB16060;
          v44 = sub_23030F8B8();

          v45 = [v43 dateFromString_];

          v46 = v86;
          v47 = v83;
          if (v45)
          {
            sub_23030EB18();

            v48 = 0;
          }

          else
          {
            v48 = 1;
          }

          v70 = v97;
          v71 = v87;
          v72 = v88;
          (*(v87 + 56))(v47, v48, 1, v88);
          sub_230112AF4(v47, v46, &unk_27DB15AA0, &unk_23031A950);
          if ((*(v71 + 48))(v46, 1, v72) == 1)
          {
            goto LABEL_57;
          }

          sub_230061918(v96, &qword_27DB14810, &qword_230316820);
          v73 = *(v71 + 32);
          v74 = v81;
          v73(v81, v46, v72);
          v73(v70, v74, v72);
          goto LABEL_46;
        }
      }
    }

    else if (v35)
    {
      v39 = v97;
      if (v35 == 1)
      {
        sub_230055F74(v96, v91, &qword_27DB14810, &qword_230316820);
        if (v95)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15578, &qword_23031A808);
          if (swift_dynamicCast())
          {
            sub_230176C04(v90, v91);
            sub_230061918(v96, &qword_27DB14810, &qword_230316820);
            if (v2)
            {
              return;
            }

            v40 = v92;
            v41 = v93;
            v42 = v94;
            *v39 = v91[0];
            *(v39 + 1) = v40;
            v39[16] = v41;
            v39[17] = v42;
            goto LABEL_46;
          }

LABEL_44:
          sub_2301799C4();
          swift_allocError();
          *v64 = 1;
          *(v64 + 8) = 0;
          *(v64 + 16) = 0;
          *(v64 + 24) = 0;
          *(v64 + 32) = 0;
          swift_willThrow();
          sub_230061918(v96, &qword_27DB14810, &qword_230316820);
          return;
        }

        goto LABEL_42;
      }

      sub_230055F74(v96, v91, &qword_27DB14810, &qword_230316820);
      if (v95)
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_44;
        }

        if (qword_27DB13BC8 != -1)
        {
          swift_once();
        }

        v57 = qword_27DB16060;
        v58 = sub_23030F8B8();

        v59 = [v57 dateFromString_];

        if (v59)
        {
          sub_23030EB18();

          v60 = 0;
        }

        else
        {
          v60 = 1;
        }

        v75 = v97;
        v76 = v87;
        v77 = v88;
        (*(v87 + 56))(v18, v60, 1, v88);
        v78 = v18;
        v46 = v84;
        sub_230112AF4(v78, v84, &unk_27DB15AA0, &unk_23031A950);
        if ((*(v76 + 48))(v46, 1, v77) == 1)
        {
LABEL_57:
          v61 = &unk_27DB15AA0;
          v62 = &unk_23031A950;
          v63 = v46;
          goto LABEL_43;
        }

        sub_230061918(v96, &qword_27DB14810, &qword_230316820);
        v79 = *(v76 + 32);
        v79(v27, v46, v77);
        v79(v75, v27, v77);
LABEL_46:
        swift_storeEnumTagMultiPayload();
        return;
      }
    }

    else
    {
      sub_230055F74(v96, v91, &qword_27DB14810, &qword_230316820);
      v49 = v97;
      if (v95)
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_44;
        }

        sub_230061918(v96, &qword_27DB14810, &qword_230316820);
        *v49 = v90;
        goto LABEL_46;
      }
    }

LABEL_42:
    v61 = &qword_27DB14810;
    v62 = &qword_230316820;
    v63 = v91;
LABEL_43:
    sub_230061918(v63, v61, v62);
    goto LABEL_44;
  }

  a2 = v97;
LABEL_4:
  sub_230175260(a1, v6);
  if (v2)
  {
    sub_2301799C4();
    swift_allocError();
    *v34 = 1;
    *(v34 + 8) = 0;
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0;
    swift_willThrow();
  }

  else
  {
    sub_230179418(v6, a2);
  }
}

unint64_t sub_2301769FC()
{
  v1 = *v0;
  v2 = v0[16];
  v3 = v0[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146C0, &unk_230316180);
  inited = swift_initStackObject();
  v5 = inited;
  *(inited + 32) = 0x6F69746365726964;
  *(inited + 16) = xmmword_23031A240;
  v6 = MEMORY[0x277D837D0];
  v7 = 0x747361506E69;
  if (v1)
  {
    v7 = 0x7478654E6E69;
  }

  *(inited + 40) = 0xE90000000000006ELL;
  *(inited + 48) = v7;
  *(inited + 56) = 0xE600000000000000;
  *(inited + 72) = v6;
  *(inited + 80) = 0x647574696E67616DLL;
  *(inited + 88) = 0xE900000000000065;
  *(inited + 96) = sub_230310E58();
  *(v5 + 104) = v8;
  *(v5 + 120) = v6;
  *(v5 + 128) = 0x7374696E75;
  v9 = 0xE500000000000000;
  *(v5 + 136) = 0xE500000000000000;
  if (v2 <= 1)
  {
    if (v2)
    {
      v9 = 0xE300000000000000;
      v10 = 7954788;
    }

    else
    {
      v9 = 0xE400000000000000;
      v10 = 1920298856;
    }
  }

  else if (v2 == 2)
  {
    v9 = 0xE400000000000000;
    v10 = 1801807223;
  }

  else if (v2 == 3)
  {
    v10 = 0x68746E6F6DLL;
  }

  else
  {
    v9 = 0xE400000000000000;
    v10 = 1918985593;
  }

  *(v5 + 144) = v10;
  *(v5 + 152) = v9;
  *(v5 + 168) = v6;
  strcpy((v5 + 176), "includePastDue");
  *(v5 + 191) = -18;
  *(v5 + 216) = MEMORY[0x277D839B0];
  *(v5 + 192) = v3;
  v11 = sub_23008C5BC(v5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146B0, &qword_230316140);
  swift_arrayDestroy();
  return v11;
}

unint64_t sub_230176C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_32;
  }

  v4 = sub_23005EE00(0x6F69746365726964, 0xE90000000000006ELL);
  if ((v5 & 1) == 0)
  {
    goto LABEL_32;
  }

  sub_23004D5CC(*(a1 + 56) + 32 * v4, v43);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_80;
  }

  v6 = sub_23005EE00(0x647574696E67616DLL, 0xE900000000000065);
  if ((v7 & 1) == 0)
  {
    goto LABEL_80;
  }

  sub_23004D5CC(*(a1 + 56) + 32 * v6, v43);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_80;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_31;
  }

  v8 = sub_23005EE00(0x7374696E75, 0xE500000000000000);
  if ((v9 & 1) == 0)
  {
    goto LABEL_31;
  }

  sub_23004D5CC(*(a1 + 56) + 32 * v8, v43);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_86:

    goto LABEL_80;
  }

  v44 = v41;
  v10 = sub_230310C08();

  if (v10 > 1)
  {
LABEL_31:

LABEL_32:

LABEL_33:
    sub_2301799C4();
    swift_allocError();
    *v20 = 1;
    *(v20 + 8) = 0;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0;
    return swift_willThrow();
  }

  v12 = HIBYTE(v42) & 0xF;
  v13 = v41 & 0xFFFFFFFFFFFFLL;
  if ((v42 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v42) & 0xF;
  }

  else
  {
    v14 = v41 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    goto LABEL_86;
  }

  if ((v42 & 0x1000000000000000) != 0)
  {
    v16 = sub_230243758(v41, v42, 10);
    v35 = v40;
    goto LABEL_79;
  }

  if ((v42 & 0x2000000000000000) != 0)
  {
    v43[0] = v41;
    v43[1] = v42 & 0xFFFFFFFFFFFFFFLL;
    if (v41 == 43)
    {
      if (v12)
      {
        if (--v12)
        {
          v16 = 0;
          v27 = v43 + 1;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              break;
            }

            v29 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              break;
            }

            v16 = v29 + v28;
            if (__OFADD__(v29, v28))
            {
              break;
            }

            ++v27;
            if (!--v12)
            {
              goto LABEL_78;
            }
          }
        }

        goto LABEL_77;
      }

LABEL_92:
      __break(1u);
      return result;
    }

    if (v41 != 45)
    {
      if (v12)
      {
        v16 = 0;
        v32 = v43;
        while (1)
        {
          v33 = *v32 - 48;
          if (v33 > 9)
          {
            break;
          }

          v34 = 10 * v16;
          if ((v16 * 10) >> 64 != (10 * v16) >> 63)
          {
            break;
          }

          v16 = v34 + v33;
          if (__OFADD__(v34, v33))
          {
            break;
          }

          ++v32;
          if (!--v12)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_77;
    }

    if (v12)
    {
      if (--v12)
      {
        v16 = 0;
        v21 = v43 + 1;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v16;
          if ((v16 * 10) >> 64 != (10 * v16) >> 63)
          {
            break;
          }

          v16 = v23 - v22;
          if (__OFSUB__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v12)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_77;
    }

    goto LABEL_90;
  }

  if ((v41 & 0x1000000000000000) != 0)
  {
    result = (v42 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_230310958();
  }

  v15 = *result;
  if (v15 == 43)
  {
    if (v13 < 1)
    {
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v12 = v13 - 1;
    if (v13 != 1)
    {
      v16 = 0;
      if (result)
      {
        v24 = (result + 1);
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            goto LABEL_77;
          }

          v26 = 10 * v16;
          if ((v16 * 10) >> 64 != (10 * v16) >> 63)
          {
            goto LABEL_77;
          }

          v16 = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            goto LABEL_77;
          }

          ++v24;
          if (!--v12)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_69;
    }

LABEL_77:
    v16 = 0;
    LOBYTE(v12) = 1;
    goto LABEL_78;
  }

  if (v15 != 45)
  {
    if (v13)
    {
      v16 = 0;
      if (result)
      {
        while (1)
        {
          v30 = *result - 48;
          if (v30 > 9)
          {
            goto LABEL_77;
          }

          v31 = 10 * v16;
          if ((v16 * 10) >> 64 != (10 * v16) >> 63)
          {
            goto LABEL_77;
          }

          v16 = v31 + v30;
          if (__OFADD__(v31, v30))
          {
            goto LABEL_77;
          }

          ++result;
          if (!--v13)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_69;
    }

    goto LABEL_77;
  }

  if (v13 < 1)
  {
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v12 = v13 - 1;
  if (v13 == 1)
  {
    goto LABEL_77;
  }

  v16 = 0;
  if (result)
  {
    v17 = (result + 1);
    while (1)
    {
      v18 = *v17 - 48;
      if (v18 > 9)
      {
        goto LABEL_77;
      }

      v19 = 10 * v16;
      if ((v16 * 10) >> 64 != (10 * v16) >> 63)
      {
        goto LABEL_77;
      }

      v16 = v19 - v18;
      if (__OFSUB__(v19, v18))
      {
        goto LABEL_77;
      }

      ++v17;
      if (!--v12)
      {
        goto LABEL_78;
      }
    }
  }

LABEL_69:
  LOBYTE(v12) = 0;
LABEL_78:
  LOBYTE(v41) = v12;
  v35 = v12;
LABEL_79:

  if (v35)
  {
LABEL_80:

    goto LABEL_32;
  }

  v36 = sub_230178648(v44, v42);
  if (v36 == 5)
  {
    goto LABEL_32;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_32;
  }

  v37 = v36;
  v38 = sub_23005EE00(0x506564756C636E69, 0xEE00657544747361);
  if ((v39 & 1) == 0)
  {
    goto LABEL_32;
  }

  sub_23004D5CC(*(a1 + 56) + 32 * v38, v43);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_33;
  }

  *a2 = v10;
  *(a2 + 8) = v16;
  *(a2 + 16) = v37;
  *(a2 + 17) = v41;
  return result;
}

unint64_t sub_23017719C()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146C0, &unk_230316180);
  v2 = 0xE300000000000000;
  v3 = 7958113;
  v4 = 0xE700000000000000;
  v5 = 0x676E696E657665;
  v6 = 0xE500000000000000;
  v7 = 0x746867696ELL;
  if (v1 != 4)
  {
    v7 = 0x656D69546F6ELL;
    v6 = 0xE600000000000000;
  }

  if (v1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x676E696E726F6DLL;
  if (v1 != 1)
  {
    v9 = 0x6F6F6E7265746661;
    v8 = 0xE90000000000006ELL;
  }

  if (v1)
  {
    v3 = v9;
    v2 = v8;
  }

  if (v1 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (v1 <= 2)
  {
    v11 = v2;
  }

  else
  {
    v11 = v4;
  }

  inited = swift_initStackObject();
  *(inited + 32) = v10;
  v13 = inited + 32;
  v14 = MEMORY[0x277D837D0];
  *(inited + 16) = xmmword_230315CE0;
  *(inited + 72) = v14;
  *(inited + 40) = v11;
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  v15 = sub_23008C5BC(inited);
  swift_setDeallocating();
  sub_230061918(v13, &qword_27DB146B0, &qword_230316140);
  return v15;
}

unint64_t sub_23017731C(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 48))
  {
    v3 = *(v1 + 8);
    v4 = *(v1 + 16);
    v6 = *(v1 + 24);
    v5 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (*(v1 + 48) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146C0, &unk_230316180);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_230315CE0;
      *(inited + 32) = 0x6E6F697461636F6CLL;
      *(inited + 40) = 0xE800000000000000;
      v9 = swift_initStackObject();
      v10 = v9;
      *(v9 + 16) = xmmword_23031F3A0;
      *(v9 + 32) = 0x656C746974;
      v11 = 0xE500000000000000;
      v12 = MEMORY[0x277D837D0];
      *(v9 + 40) = 0xE500000000000000;
      *(v9 + 48) = v2;
      *(v9 + 56) = v3;
      *(v9 + 72) = v12;
      *(v9 + 80) = 0x656475746974616CLL;
      v13 = MEMORY[0x277D839F8];
      *(v9 + 88) = 0xE800000000000000;
      *(v9 + 96) = v4;
      *(v9 + 120) = v13;
      *(v9 + 128) = 0x64757469676E6F6CLL;
      *(v9 + 136) = 0xE900000000000065;
      *(v9 + 144) = v6;
      *(v9 + 168) = v13;
      *(v9 + 176) = 0x737569646172;
      *(v9 + 184) = 0xE600000000000000;
      *(v9 + 192) = v5;
      *(v9 + 216) = v13;
      *(v9 + 224) = 0x74696D69786F7270;
      *(v9 + 232) = 0xE900000000000079;
      switch(v7)
      {
        case 0:
          goto LABEL_16;
        case 1:
          v14 = 0x7265746E65;
          break;
        case 2:
          v14 = 0x657661656CLL;
          break;
        default:
LABEL_16:
          v11 = 0xE400000000000000;
          v14 = 1701736302;
          break;
      }

      *(v9 + 264) = v12;
      *(v9 + 240) = v14;
      *(v9 + 248) = v11;
      sub_230145648(v2, v3, v4, v6, v5, v7, 1);
      v24 = sub_23008C5BC(v10);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146B0, &qword_230316140);
      swift_arrayDestroy();
      *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15578, &qword_23031A808);
      *(inited + 48) = v24;
      v19 = sub_23008C5BC(inited);
      swift_setDeallocating();
      v23 = inited + 32;
      goto LABEL_20;
    }

    if (!(v4 | v3 | v2 | v6 | v5 | v7))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146C0, &unk_230316180);
      v21 = swift_initStackObject();
      *(v21 + 16) = xmmword_230315CE0;
      *(v21 + 32) = 7958113;
      v22 = v21 + 32;
      *(v21 + 72) = MEMORY[0x277D837D0];
      *(v21 + 40) = 0xE300000000000000;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0xE000000000000000;
      v19 = sub_23008C5BC(v21);
      swift_setDeallocating();
      v23 = v22;
LABEL_20:
      sub_230061918(v23, &qword_27DB146B0, &qword_230316140);
      return v19;
    }

    sub_2301794D8();
    v19 = swift_allocError();
    *v20 = 1;
    swift_willThrow();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146C0, &unk_230316180);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_230315CE0;
    *(v15 + 32) = 0x656C6369686576;
    v16 = v15 + 32;
    v17 = 0xE400000000000000;
    v18 = 1701736302;
    if (v2 == 1)
    {
      v18 = 0x657463656E6E6F63;
      v17 = 0xE900000000000064;
    }

    if (v2 == 2)
    {
      v18 = 0x656E6E6F63736964;
    }

    *(v15 + 72) = MEMORY[0x277D837D0];
    if (v2 == 2)
    {
      v17 = 0xEC00000064657463;
    }

    *(v15 + 40) = 0xE700000000000000;
    *(v15 + 48) = v18;
    *(v15 + 56) = v17;
    v19 = sub_23008C5BC(v15);
    swift_setDeallocating();
    sub_230061918(v16, &qword_27DB146B0, &qword_230316140);
  }

  return v19;
}

uint64_t sub_230177740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2300AEB0C();
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  v7 = v4;
  *&v37[0] = v4;
  *(&v37[0] + 1) = v5;

  sub_23030FB18();
  v8 = sub_230310C08();

  if (v8 >= 3)
  {

LABEL_9:

    sub_2301799C4();
    swift_allocError();
    *v21 = 0u;
    *(v21 + 16) = 0u;
    *(v21 + 32) = 0;
    return swift_willThrow();
  }

  if (!*(a1 + 16))
  {

LABEL_11:

    memset(v37, 0, sizeof(v37));
    v12 = v8;
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  v9 = sub_23005EE00(v7, v6);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_23004D5CC(*(a1 + 56) + 32 * v9, v37);

  v12 = v8;
  if (!v8)
  {
LABEL_6:
    v13 = v8;
    v14 = 2;
    v15 = v13;
    v16 = v13;
    v17 = v13;
    v18 = v13;
    v19 = v13;
LABEL_7:
    result = sub_230061918(v37, &qword_27DB14810, &qword_230316820);
    *a2 = v13;
    *(a2 + 8) = v15;
    *(a2 + 16) = v16;
    *(a2 + 24) = v17;
    *(a2 + 32) = v18;
    *(a2 + 40) = v19;
    *(a2 + 48) = v14;
    return result;
  }

LABEL_12:
  if (v12 == 1)
  {
    sub_230055F74(v37, v35, &qword_27DB14810, &qword_230316820);
    if (v36)
    {
      if (swift_dynamicCast())
      {
        v13 = sub_230310C08();

        if (v13 < 3)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v14 = 0;
          goto LABEL_7;
        }
      }

      goto LABEL_41;
    }

    goto LABEL_36;
  }

  sub_230055F74(v37, v35, &qword_27DB14810, &qword_230316820);
  if (!v36)
  {
LABEL_36:
    sub_230061918(v35, &qword_27DB14810, &qword_230316820);
    goto LABEL_41;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15578, &qword_23031A808);
  if (swift_dynamicCast())
  {
    if (!*(v33 + 16))
    {
      goto LABEL_40;
    }

    v22 = sub_23005EE00(0x656C746974, 0xE500000000000000);
    if ((v23 & 1) == 0)
    {
      goto LABEL_40;
    }

    sub_23004D5CC(*(v33 + 56) + 32 * v22, v35);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_40;
    }

    v15 = v34;
    if (!*(v33 + 16))
    {
      goto LABEL_37;
    }

    v13 = v33;
    v24 = sub_23005EE00(0x656475746974616CLL, 0xE800000000000000);
    if ((v25 & 1) == 0)
    {
      goto LABEL_37;
    }

    sub_23004D5CC(*(v33 + 56) + 32 * v24, v35);
    if (swift_dynamicCast())
    {
      if (!*(v33 + 16))
      {
        goto LABEL_37;
      }

      v16 = v33;
      v26 = sub_23005EE00(0x64757469676E6F6CLL, 0xE900000000000065);
      if ((v27 & 1) == 0)
      {
        goto LABEL_37;
      }

      sub_23004D5CC(*(v33 + 56) + 32 * v26, v35);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_39;
      }

      if (!*(v33 + 16) || (v38 = v33, v28 = sub_23005EE00(0x737569646172, 0xE600000000000000), (v29 & 1) == 0))
      {
LABEL_37:

        goto LABEL_40;
      }

      sub_23004D5CC(*(v33 + 56) + 32 * v28, v35);
      if (swift_dynamicCast())
      {
        if (*(v33 + 16))
        {
          v18 = v33;
          v30 = sub_23005EE00(0x74696D69786F7270, 0xE900000000000079);
          if (v31)
          {
            sub_23004D5CC(*(v33 + 56) + 32 * v30, v35);

            if (swift_dynamicCast())
            {
              v19 = sub_230310C08();

              if (v19 < 3)
              {
                v14 = 1;
                v17 = v38;
                goto LABEL_7;
              }
            }

            goto LABEL_40;
          }
        }

        goto LABEL_37;
      }
    }

LABEL_39:

LABEL_40:
  }

LABEL_41:
  sub_2301799C4();
  swift_allocError();
  *v32 = 0u;
  *(v32 + 16) = 0u;
  *(v32 + 32) = 0;
  swift_willThrow();
  return sub_230061918(v37, &qword_27DB14810, &qword_230316820);
}

char *sub_230177C5C()
{
  v51 = sub_23030EBB8();
  v1 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v3 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v4 = v0[1];
  if (*v0 >> 62)
  {
    v41 = v0[1];
    v42 = *v0;
    v43 = sub_2303106D8();
    v5 = v42;
    v4 = v41;
    v6 = v43;
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  v50 = v4;
  if (v6)
  {
    v8 = v5;
    v52 = MEMORY[0x277D84F90];
    result = sub_23009EC34(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
      goto LABEL_28;
    }

    v10 = 0;
    v7 = v52;
    v11 = v8;
    v48 = v8 & 0xC000000000000001;
    v47 = v1;
    v12 = (v1 + 8);
    v49 = v8;
    v13 = v6;
    do
    {
      if (v48)
      {
        v14 = MEMORY[0x231912650](v10, v11);
      }

      else
      {
        v14 = *(v11 + 8 * v10 + 32);
      }

      v15 = v14;
      v16 = [v14 uuid];
      sub_23030EBA8();

      v17 = sub_23030EB78();
      v19 = v18;

      (*v12)(v3, v51);
      v52 = v7;
      v21 = *(v7 + 16);
      v20 = *(v7 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_23009EC34((v20 > 1), v21 + 1, 1);
        v7 = v52;
      }

      ++v10;
      *(v7 + 16) = v21 + 1;
      v22 = v7 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      v11 = v49;
    }

    while (v13 != v10);
    v4 = v50;
    v1 = v47;
  }

  if (v4 >> 62)
  {
    v44 = v4;
    v45 = sub_2303106D8();
    v4 = v44;
    v23 = v45;
  }

  else
  {
    v23 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = MEMORY[0x277D84F90];
  if (!v23)
  {
LABEL_24:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146C0, &unk_230316180);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2303167B0;
    *(inited + 32) = 0x6564756C636E69;
    *(inited + 40) = 0xE700000000000000;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0, &unk_23031A990);
    *(inited + 48) = v7;
    *(inited + 72) = v39;
    *(inited + 80) = 0x6564756C637865;
    *(inited + 120) = v39;
    *(inited + 88) = 0xE700000000000000;
    *(inited + 96) = v24;
    v40 = sub_23008C5BC(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146B0, &qword_230316140);
    swift_arrayDestroy();
    return v40;
  }

  v25 = v4;
  v52 = MEMORY[0x277D84F90];
  result = sub_23009EC34(0, v23 & ~(v23 >> 63), 0);
  if ((v23 & 0x8000000000000000) == 0)
  {
    v26 = 0;
    v24 = v52;
    v27 = v25;
    v48 = v25 & 0xC000000000000001;
    v49 = v23;
    v28 = (v1 + 8);
    do
    {
      if (v48)
      {
        v29 = MEMORY[0x231912650](v26, v27);
      }

      else
      {
        v29 = *(v27 + 8 * v26 + 32);
      }

      v30 = v29;
      v31 = [v29 uuid];
      sub_23030EBA8();

      v32 = sub_23030EB78();
      v34 = v33;

      (*v28)(v3, v51);
      v52 = v24;
      v36 = *(v24 + 16);
      v35 = *(v24 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_23009EC34((v35 > 1), v36 + 1, 1);
        v24 = v52;
      }

      ++v26;
      *(v24 + 16) = v36 + 1;
      v37 = v24 + 16 * v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v34;
      v27 = v50;
    }

    while (v49 != v26);
    goto LABEL_24;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_230178074@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16))
  {
    v4 = sub_23005EE00(0x6564756C636E69, 0xE700000000000000);
    if (v5)
    {
      sub_23004D5CC(*(a1 + 56) + 32 * v4, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0, &unk_23031A990);
      if (swift_dynamicCast())
      {
        v6 = v15;
        if (*(a1 + 16) && (v7 = sub_23005EE00(0x6564756C637865, 0xE700000000000000), (v8 & 1) != 0))
        {
          sub_23004D5CC(*(a1 + 56) + 32 * v7, v14);

          if (swift_dynamicCast())
          {
            v9 = v15;
            v10 = sub_230178208(v6);

            v11 = sub_230178208(v9);

            *a2 = v10;
            a2[1] = v11;
            return result;
          }
        }

        else
        {
        }
      }
    }
  }

  sub_2301799C4();
  swift_allocError();
  *v13 = 1;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  return swift_willThrow();
}

uint64_t sub_230178208(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800, &unk_230316810);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - v3;
  v5 = sub_23030EBB8();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v25 - v10;
  result = MEMORY[0x277D84F90];
  v34 = MEMORY[0x277D84F90];
  v13 = *(a1 + 16);
  if (!v13)
  {
    return result;
  }

  v14 = 0;
  v31 = v4;
  v32 = (v9 + 48);
  v29 = (v9 + 16);
  v30 = (v9 + 32);
  v28 = (v9 + 8);
  v15 = a1 + 40;
  v33 = v13;
  v26 = a1 + 40;
  do
  {
    v27 = result;
    v16 = v15 + 16 * v14;
    v17 = v14;
    while (1)
    {
      if (v17 >= v13)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return result;
      }

      v14 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_19;
      }

      sub_23030EB68();
      if ((*v32)(v4, 1, v5) != 1)
      {
        break;
      }

      result = sub_230061918(v4, &qword_27DB14800, &unk_230316810);
LABEL_5:
      ++v17;
      v16 += 16;
      v13 = v33;
      if (v14 == v33)
      {
        return v27;
      }
    }

    (*v30)(v11, v4, v5);
    (*v29)(v8, v11, v5);
    v18 = v11;
    v19 = v8;
    v20 = [objc_opt_self() cdEntityName];
    if (!v20)
    {
      _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v20 = sub_23030F8B8();
    }

    v21 = objc_allocWithZone(type metadata accessor for REMObjectID_Codable());
    v22 = sub_23030EB88();
    v23 = [v21 initWithUUID:v22 entityName:v20];

    v24 = *v28;
    (*v28)(v19, v5);
    result = v24(v18, v5);
    v8 = v19;
    v11 = v18;
    v4 = v31;
    if (!v23)
    {
      goto LABEL_5;
    }

    MEMORY[0x231911A30](result);
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23030FD18();
    }

    sub_23030FD68();
    v13 = v33;
    result = v34;
    v15 = v26;
  }

  while (v14 != v33);
  return result;
}

void sub_230178584()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v1 = sub_23030F8B8();
  [v0 setDateFormat_];

  qword_27DB16060 = v0;
}

unint64_t sub_2301785FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_230310C08();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_230178648(uint64_t a1, uint64_t a2)
{
  v2 = sub_230310C08();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_230178694(uint64_t a1, uint64_t a2)
{
  v2 = sub_230310C08();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2301786E0(uint64_t a1, uint64_t a2)
{
  v2 = sub_230310C08();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

char *sub_23017872C(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  v127 = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate(0);
  v113 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v98 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v98 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AE0, &qword_23031F3B0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v111 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v98 - v19;
  MEMORY[0x28223BE20](v18);
  v115 = &v98 - v21;
  v116 = *a3;
  v22 = objc_opt_self();
  v23 = sub_23030E9F8();
  v120 = 0;
  v24 = [v22 JSONObjectWithData:v23 options:0 error:&v120];

  if (v24)
  {
    v112 = a1;
    v114 = a2;
    v25 = v120;
    sub_2303105E8();
    swift_unknownObjectRelease();
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15578, &qword_23031A808);
    if (swift_dynamicCast())
    {
      v26 = v118;
      v27 = v116;
      if (!v116 || !*(v118 + 16) || (v28 = sub_23005EE00(0x6F6974617265706FLL, 0xE90000000000006ELL), (v29 & 1) == 0) || (sub_23004D5CC(*(v26 + 56) + 32 * v28, &v120), (swift_dynamicCast() & 1) == 0) || (v30 = sub_230310C08(), , !v30))
      {
        v31 = 0;
        goto LABEL_15;
      }

      if (v30 == 1)
      {
        v31 = 1;
LABEL_15:
        v37 = *(v26 + 16);
        v106 = v31;
        if (v37 && (v38 = sub_23005EE00(0x7367617468736168, 0xE800000000000000), (v39 & 1) != 0) && (sub_23004D5CC(*(v26 + 56) + 32 * v38, &v120), (swift_dynamicCast() & 1) != 0))
        {
          v40 = v117;
          if (v27)
          {
            sub_2301742EC(v118, &v120);
          }

          else
          {
            sub_23017407C(v118, &v120);
          }

          v117 = v40;
          if (v40)
          {
LABEL_32:
            sub_23005FE3C(v112, v114);

            return v20;
          }

          v107 = v120;
          v109 = v121;
          v108 = v122;
        }

        else
        {
          v109 = 0;
          v108 = 0;
          v107 = 2;
        }

        v41 = *(v113 + 7);
        v41(v115, 1, 1, v6);
        if (!*(v26 + 16) || (v42 = sub_23005EE00(1702125924, 0xE400000000000000), (v43 & 1) == 0) || (sub_23004D5CC(*(v26 + 56) + 32 * v42, &v120), (swift_dynamicCast() & 1) == 0))
        {
LABEL_34:
          if (*(v26 + 16) && (v47 = sub_23005EE00(1701669236, 0xE400000000000000), (v48 & 1) != 0) && (sub_23004D5CC(*(v26 + 56) + 32 * v47, &v120), (swift_dynamicCast() & 1) != 0))
          {
            v20 = sub_2300AEB0C();
            v50 = v49;

            if (!v50 || (v120 = v20, v121 = v50, v51 = sub_23030FB18(), v53 = sub_2301786E0(v51, v52), v53 == 6))
            {
              sub_2301799C4();
              swift_allocError();
              *v54 = 0u;
              *(v54 + 16) = 0u;
              *(v54 + 32) = 0;
              swift_willThrow();
              goto LABEL_40;
            }
          }

          else
          {
            v53 = 6;
          }

          v105 = v53;
          if (*(v26 + 16) && (v55 = sub_23005EE00(0x697469726F697270, 0xEA00000000007365), (v56 & 1) != 0) && (sub_23004D5CC(*(v26 + 56) + 32 * v55, &v120), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0, &unk_23031A990), (swift_dynamicCast() & 1) != 0))
          {
            v57 = 0;
            v58 = v118;
            v59 = *(v118 + 16);
            v60 = (v118 + 40);
            v61 = MEMORY[0x277D84F90];
            v113 = (v118 + 40);
LABEL_46:
            v62 = &v60[16 * v57];
            while (v59 != v57)
            {
              if (v57 >= *(v58 + 16))
              {
                __break(1u);
              }

              ++v57;
              v63 = v62 + 16;

              v64 = sub_230310C08();

              v62 = v63;
              if (v64 < 4)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v61 = sub_23007F588(0, *(v61 + 2) + 1, 1, v61);
                }

                v66 = *(v61 + 2);
                v65 = *(v61 + 3);
                if (v66 >= v65 >> 1)
                {
                  v61 = sub_23007F588((v65 > 1), v66 + 1, 1, v61);
                }

                *(v61 + 2) = v66 + 1;
                *&v61[8 * v66 + 32] = v64;
                v60 = v113;
                goto LABEL_46;
              }
            }

            v113 = v61;

            v27 = v116;
            v20 = v117;
          }

          else
          {
            v113 = 0;
            v20 = v117;
          }

          v67 = v114;
          if (*(v26 + 16) && (v68 = sub_23005EE00(0x64656767616C66, 0xE700000000000000), (v69 & 1) != 0) && (sub_23004D5CC(*(v26 + 56) + 32 * v68, &v120), swift_dynamicCast()))
          {
            v70 = v118;
            if (!*(v26 + 16))
            {
              goto LABEL_67;
            }
          }

          else
          {
            v70 = 2;
            if (!*(v26 + 16))
            {
              goto LABEL_67;
            }
          }

          v71 = sub_23005EE00(0x6E6F697461636F6CLL, 0xE800000000000000);
          if (v72)
          {
            sub_23004D5CC(*(v26 + 56) + 32 * v71, &v120);
            if (swift_dynamicCast())
            {
              v73 = v118;
              LOBYTE(v118) = v27;
              sub_230173990(v73, &v118, &v120);
              if (v20)
              {
                sub_230061918(v115, &unk_27DB15AE0, &qword_23031F3B0);

                sub_23005FE3C(v112, v67);
                sub_2301467EC(v107);
                goto LABEL_66;
              }

              v117 = 0;
              v20 = v120;
              v74 = v121;
              v75 = v122;
              v76 = v123;
              v77 = v124;
              v78 = v125;
              v79 = v126;
LABEL_68:
              v104 = v79;
              v103 = v20;
              v102 = v74;
              v101 = v75;
              v100 = v76;
              v99 = v77;
              v116 = v78;
              if (v27 && *(v26 + 16) && (v80 = sub_23005EE00(0x737473696CLL, 0xE500000000000000), (v81 & 1) != 0))
              {
                sub_23004D5CC(*(v26 + 56) + 32 * v80, &v120);

                if (swift_dynamicCast())
                {
                  v82 = v117;
                  sub_230178074(v118, &v120);
                  v117 = v82;
                  if (v82)
                  {
                    sub_230061918(v115, &unk_27DB15AE0, &qword_23031F3B0);
                    sub_2301467EC(v107);

                    sub_230146810(v20, v74, v75, v76, v77, v116, v104);
                    sub_23005FE3C(v112, v114);
                    return v20;
                  }

                  v83 = v70;
                  v84 = v120;
                  v85 = v121;
LABEL_76:
                  v86 = v115;
                  v87 = v111;
                  sub_230055F74(v115, v111, &unk_27DB15AE0, &qword_23031F3B0);
                  v88 = type metadata accessor for REMCustomSmartListFilterDescriptor(0);
                  v89 = objc_allocWithZone(v88);
                  v89[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_operation] = v106;
                  v90 = &v89[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags];
                  v91 = v109;
                  *v90 = v107;
                  *(v90 + 1) = v91;
                  v90[16] = v108;
                  sub_230055F74(v87, &v89[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_date], &unk_27DB15AE0, &qword_23031F3B0);
                  v89[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_time] = v105;
                  *&v89[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_priorities] = v113;
                  v89[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_flagged] = v83;
                  v92 = &v89[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location];
                  v93 = v102;
                  *v92 = v103;
                  *(v92 + 1) = v93;
                  v94 = v100;
                  *(v92 + 2) = v101;
                  *(v92 + 3) = v94;
                  v95 = v116;
                  *(v92 + 4) = v99;
                  *(v92 + 5) = v95;
                  v92[48] = v104;
                  v96 = &v89[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists];
                  *v96 = v84;
                  v96[1] = v85;
                  v119.receiver = v89;
                  v119.super_class = v88;
                  v20 = objc_msgSendSuper2(&v119, sel_init);
                  sub_23005FE3C(v112, v114);
                  sub_230061918(v87, &unk_27DB15AE0, &qword_23031F3B0);
                  sub_230061918(v86, &unk_27DB15AE0, &qword_23031F3B0);
                  return v20;
                }

                v83 = v70;
              }

              else
              {
                v83 = v70;
              }

              v84 = 0;
              v85 = 0;
              goto LABEL_76;
            }
          }

LABEL_67:
          v117 = v20;
          v20 = 0;
          v74 = 0;
          v75 = 0;
          v76 = 0;
          v77 = 0;
          v78 = 0;
          v79 = 255;
          goto LABEL_68;
        }

        if (v27)
        {
          v44 = v117;
          sub_230175EF4(v118, v9);
          if (v44)
          {
LABEL_40:
            sub_230061918(v115, &unk_27DB15AE0, &qword_23031F3B0);
            sub_2301467EC(v107);
            sub_23005FE3C(v112, v114);
LABEL_66:

            return v20;
          }

          v117 = 0;
          v12 = v9;
          goto LABEL_33;
        }

        v45 = v117;
        sub_230175260(v118, v12);
        v117 = v45;
        if (!v45)
        {
LABEL_33:
          v46 = v115;
          sub_230061918(v115, &unk_27DB15AE0, &qword_23031F3B0);
          sub_230179418(v12, v14);
          sub_230179418(v14, v20);
          v41(v20, 0, 1, v6);
          sub_230112AF4(v20, v46, &unk_27DB15AE0, &qword_23031F3B0);
          v27 = v116;
          goto LABEL_34;
        }

        sub_230061918(v115, &unk_27DB15AE0, &qword_23031F3B0);
        sub_2301467EC(v107);
        goto LABEL_32;
      }

      sub_2301799C4();
      swift_allocError();
      v36 = 1;
    }

    else
    {
      sub_2301799C4();
      swift_allocError();
      v36 = v116;
    }

    *v35 = v36;
    *(v35 + 8) = 0;
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    *(v35 + 32) = 0;
    swift_willThrow();
    v33 = v112;
    v34 = v114;
  }

  else
  {
    v32 = v120;
    sub_23030E808();

    swift_willThrow();
    v33 = a1;
    v34 = a2;
  }

  sub_23005FE3C(v33, v34);
  return v20;
}

uint64_t sub_230179418(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23017947C(uint64_t a1)
{
  v2 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2301794D8()
{
  result = qword_27DB16068;
  if (!qword_27DB16068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16068);
  }

  return result;
}

unint64_t sub_23017952C()
{
  result = qword_27DB16070;
  if (!qword_27DB16070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16070);
  }

  return result;
}

uint64_t _s22DataSerializationErrorOwet(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if ((a2 + 0xFFFF) < 0xFF0000)
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
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }
  }

  return 0;
}

_WORD *_s22DataSerializationErrorOwst(_WORD *result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 2) = 0;
  }

  return result;
}

double sub_2301796B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 < 0)
  {
  }

  return result;
}

uint64_t sub_23017970C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 < 0)
  {
  }

  return result;
}

uint64_t _s24DataDeserializationErrorOwcp(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  sub_2301796B4(*a2, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return a1;
}

uint64_t _s24DataDeserializationErrorOwca(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  sub_2301796B4(*a2, v4, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v12 = *(a1 + 32);
  *(a1 + 32) = v7;
  sub_23017970C(v8, v9, v10, v11, v12);
  return a1;
}

uint64_t _s24DataDeserializationErrorOwta(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
  v9 = *(a1 + 32);
  *(a1 + 32) = v3;
  sub_23017970C(v4, v6, v5, v7, v9);
  return a1;
}

uint64_t _s24DataDeserializationErrorOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 33))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 32) & 0x7E | (*(a1 + 32) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t _s24DataDeserializationErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_230179960(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2301799C4()
{
  result = qword_27DB16078;
  if (!qword_27DB16078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16078);
  }

  return result;
}

unint64_t sub_230179A18()
{
  result = qword_280C9C418;
  if (!qword_280C9C418)
  {
    sub_23030EB58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9C418);
  }

  return result;
}

uint64_t Publisher.map<A, B>(executeOn:receiveOn:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v31 = a8;
  v32 = a3;
  v33 = a6;
  v29 = a2;
  v30 = a9;
  v14 = *(a7 - 8);
  v15 = MEMORY[0x28223BE20](a1);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v28 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, v25, v24);
  v26 = *(v14 + 16);
  v26(v20, a1, a7);
  v26(v17, v29, a7);
  Publishers.MapOnScheduler.init(upstream:executeOnScheduler:receiveOnScheduler:transform:)(v22, v20, v17, v32, a4, a5, a7, v33, v30, v31, a10);
}

uint64_t Publishers.MapOnScheduler.init(upstream:executeOnScheduler:receiveOnScheduler:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  (*(*(a6 - 8) + 32))(a9, a1, a6);
  v23[0] = a6;
  v23[1] = a7;
  v23[2] = a8;
  v23[3] = a10;
  v23[4] = a11;
  v19 = type metadata accessor for Publishers.MapOnScheduler(0, v23);
  v20 = *(*(a7 - 8) + 32);
  v20(a9 + v19[15], a2, a7);
  result = (v20)(a9 + v19[16], a3, a7);
  v22 = (a9 + v19[17]);
  *v22 = a4;
  v22[1] = a5;
  return result;
}

uint64_t Publishers.MapOnScheduler.transform.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 68));

  return v2;
}

uint64_t Publishers.MapOnScheduler.receive<A>(subscriber:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v79 = a3;
  v80 = a4;
  v81 = a1;
  v77 = *(a2 - 1);
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](a1);
  v76 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_2303104C8();
  v10 = *(v9 - 8);
  v88 = v9;
  v89 = v10;
  MEMORY[0x28223BE20](v9);
  v87 = &v53 - v11;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DB16080, &unk_23031F5B0);
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v13 = &v53 - v12;
  v62 = sub_23030EFD8();
  v14 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2[5];
  v83 = a2[2];
  v84 = v17;
  v55 = a2;
  v18 = sub_23030F048();
  v54 = v18;
  v74 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v58 = &v53 - v19;
  WitnessTable = swift_getWitnessTable();
  v90 = v18;
  v91 = v8;
  v82 = v8;
  v92 = WitnessTable;
  v93 = v7;
  v20 = sub_23030F098();
  v63 = v20;
  v75 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v59 = &v53 - v21;
  v69 = a2[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308, &unk_230315BC0);
  v22 = sub_2303113E8();
  v68 = v22;
  v23 = swift_getWitnessTable();
  v67 = v23;
  v64 = swift_getWitnessTable();
  v90 = v22;
  v91 = v20;
  v92 = v23;
  v93 = v64;
  v24 = sub_23030F058();
  v60 = v24;
  v72 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v57 = &v53 - v25;
  v61 = swift_getWitnessTable();
  v90 = v24;
  v91 = v8;
  v92 = v61;
  v93 = v7;
  v66 = sub_23030F098();
  v70 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v56 = &v53 - v26;
  v27 = v62;
  (*(v14 + 104))(v16, *MEMORY[0x277CBCBD0], v62);
  v28 = v71;
  v29 = v13;
  v30 = v73;
  (*(v71 + 104))(v13, *MEMORY[0x277CBCBE8], v73);
  v31 = v58;
  v32 = v85;
  sub_23030F238();
  (*(v28 + 8))(v29, v30);
  (*(v14 + 8))(v16, v27);
  v33 = v55;
  v34 = *(AssociatedTypeWitness - 8);
  v71 = *(v34 + 56);
  v73 = v34 + 56;
  v35 = v87;
  (v71)(v87, 1, 1);
  v36 = v59;
  v37 = v54;
  v38 = v82;
  sub_23030F268();
  v39 = *(v89 + 8);
  v89 += 8;
  WitnessTable = v39;
  v39(v35, v88);
  (*(v74 + 8))(v31, v37);
  v40 = v76;
  v41 = v77;
  (*(v77 + 16))(v76, v32, v33);
  v42 = (*(v41 + 80) + 72) & ~*(v41 + 80);
  v43 = swift_allocObject();
  *(v43 + 2) = v83;
  *(v43 + 3) = v38;
  v44 = v79;
  v45 = v80;
  *(v43 + 4) = v69;
  *(v43 + 5) = v44;
  *(v43 + 6) = v84;
  *(v43 + 7) = v7;
  *(v43 + 8) = v45;
  (*(v41 + 32))(&v43[v42], v40, v33);
  v46 = v57;
  v47 = v63;
  sub_23030F258();

  (*(v75 + 8))(v36, v47);
  v48 = v87;
  (v71)(v87, 1, 1, AssociatedTypeWitness);
  v49 = v56;
  v50 = v60;
  sub_23030F268();
  WitnessTable(v48, v88);
  (*(v72 + 8))(v46, v50);
  v51 = v66;
  sub_23030F088();
  return (*(v70 + 8))(v49, v51);
}

uint64_t sub_23017A790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v21 = a7;
  v22 = a8;
  v20 = a6;
  v23 = a9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308, &unk_230315BC0);
  v15 = sub_230311408();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v20 - v17;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = v20;
  v28 = v21;
  v29 = v22;
  v30 = a10;
  v31 = a2;
  v32 = a1;
  sub_230134650(sub_23017B654, &v20 - v17);
  sub_2303113F8();
  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_23017A904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v14[0] = v2[2];
  v5 = v14[0];
  v14[1] = v6;
  v14[2] = v7;
  v14[3] = v9;
  v14[4] = v10;
  v12 = *(type metadata accessor for Publishers.MapOnScheduler(0, v14) - 8);
  return sub_23017A790(a1, v2 + ((*(v12 + 80) + 72) & ~*(v12 + 80)), v5, v6, v7, v8, v9, v10, a2, v11);
}

uint64_t sub_23017A9F4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_23017AAD4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = *(v7 + 64);
  v11 = v10 + v8;
  v12 = v10 + 7;
  v13 = ((v10 + 7 + ((v10 + v8 + ((v5 + v8) & ~v8)) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = v8 | *(v4 + 80) & 0xF8;
  if (v14 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v13 > 0x18)
  {
    v17 = *a2;
    *v3 = *a2;
    v3 = (v17 + (((v14 | 7) + 16) & ~(v14 | 7)));
  }

  else
  {
    v18 = ~v8;
    (*(v4 + 16))(a1);
    v20 = (v3 + v9) & v18;
    v21 = (a2 + v9) & v18;
    v22 = *(v7 + 16);
    v22(v20, v21, v6);
    v23 = (v11 + v20) & v18;
    v24 = (v11 + v21) & v18;
    v22(v23, v24, v6);
    v25 = ((v12 + v24) & 0xFFFFFFFFFFFFFFF8);
    v26 = v25[1];
    v27 = ((v12 + v23) & 0xFFFFFFFFFFFFFFF8);
    *v27 = *v25;
    v27[1] = v26;
  }

  return v3;
}

uint64_t sub_23017ACA4(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56) + a1;
  v6 = *(a2 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v9 = v7 + 8;
  v10 = *(v7 + 80);
  v11 = (v5 + v10) & ~v10;
  v8(v11, v6);
  v8((*(v9 + 56) + v10 + v11) & ~v10, v6);
}

uint64_t sub_23017AD90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v11 = *(v8 + 80);
  v12 = *(v6 + 48) + v11;
  v13 = (v12 + a1) & ~v11;
  v14 = (v12 + a2) & ~v11;
  v9(v13, v14, v7);
  v15 = *(v10 + 48);
  v16 = (v15 + v11 + v13) & ~v11;
  v17 = (v15 + v11 + v14) & ~v11;
  v9(v16, v17, v7);
  v18 = ((v15 + 7 + v17) & 0xFFFFFFFFFFFFFFF8);
  v20 = *v18;
  v19 = v18[1];
  v21 = ((v15 + 7 + v16) & 0xFFFFFFFFFFFFFFF8);
  *v21 = v20;
  v21[1] = v19;

  return a1;
}

uint64_t sub_23017AEA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 24);
  v10 = v8 + 24;
  v11 = *(v8 + 80);
  v12 = *(v6 + 40) + v11;
  v13 = (v12 + a1) & ~v11;
  v14 = (v12 + a2) & ~v11;
  v9(v13, v14, v7);
  v15 = *(v10 + 40);
  v16 = (v15 + v11 + v13) & ~v11;
  v17 = (v15 + v11 + v14) & ~v11;
  v9(v16, v17, v7);
  v18 = ((v15 + 7 + v16) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v15 + 7 + v17) & 0xFFFFFFFFFFFFFFF8);
  v20 = v19[1];
  *v18 = *v19;
  v18[1] = v20;

  return a1;
}

uint64_t sub_23017AFC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 32);
  v10 = v8 + 32;
  v11 = *(v8 + 80);
  v12 = *(v6 + 32) + v11;
  v13 = (v12 + a1) & ~v11;
  v14 = (v12 + a2) & ~v11;
  v9(v13, v14, v7);
  v15 = *(v10 + 32);
  v16 = (v15 + v11 + v13) & ~v11;
  v17 = (v15 + v11 + v14) & ~v11;
  v9(v16, v17, v7);
  *((v15 + 7 + v16) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 7 + v17) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_23017B0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 40);
  v10 = v8 + 40;
  v11 = *(v8 + 80);
  v12 = *(v6 + 24) + v11;
  v13 = (v12 + a1) & ~v11;
  v14 = (v12 + a2) & ~v11;
  v9(v13, v14, v7);
  v15 = *(v10 + 24);
  v16 = (v15 + v11 + v13) & ~v11;
  v17 = (v15 + v11 + v14) & ~v11;
  v9(v16, v17, v7);
  *((v15 + 7 + v16) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 7 + v17) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_23017B1EC(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= v5)
  {
    v11 = *(v4 + 84);
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v13 = v10 + v9;
  v14 = v10 + 7;
  if (v11 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((v14 + ((v13 + (v12 & ~v9)) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v16 = a2 - v11;
  v17 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = v16 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v21 = *(a1 + v15);
      if (!v21)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v21 = *(a1 + v15);
      if (!v21)
      {
        goto LABEL_29;
      }
    }
  }

  else if (!v20 || (v21 = *(a1 + v15)) == 0)
  {
LABEL_29:
    if (v5 == v11)
    {
      return (*(v4 + 48))(a1);
    }

    v25 = (a1 + v12) & ~v9;
    if (v8 == v11)
    {
      return (*(v7 + 48))(v25, v8, v6);
    }

    v26 = *((v14 + ((v13 + v25) & ~v9)) & 0xFFFFFFFFFFFFFFF8);
    if (v26 >= 0xFFFFFFFF)
    {
      LODWORD(v26) = -1;
    }

    return (v26 + 1);
  }

  v23 = v21 - 1;
  if (v17)
  {
    v23 = 0;
    v24 = *a1;
  }

  else
  {
    v24 = 0;
  }

  return v11 + (v24 | v23) + 1;
}

_BYTE *sub_23017B3D0(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = v9 + v10;
  v14 = (v9 + v10) & ~v10;
  v15 = v11 + v10;
  v16 = (v11 + v10 + v14) & ~v10;
  v17 = v11 + 7;
  v18 = ((v17 + v16) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v22 = 0;
    v23 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v19 = a3 - v12;
    if (((v17 + v16) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v20 = v19 + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_19:
      if (v22 > 1)
      {
        if (v22 != 2)
        {
          *&result[v18] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
        }

        *&result[v18] = 0;
      }

      else if (v22)
      {
        result[v18] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return result;
      }

LABEL_35:
      if (v6 == v12)
      {
        v27 = *(v5 + 56);

        return v27();
      }

      else
      {
        result = (&result[v13] & ~v10);
        if (v8 == v12)
        {
          v28 = *(v7 + 56);

          return v28(result);
        }

        else
        {
          v29 = ((v17 + (&result[v15] & ~v10)) & 0xFFFFFFFFFFFFFFF8);
          if ((a2 & 0x80000000) != 0)
          {
            *v29 = a2 & 0x7FFFFFFF;
            v29[1] = 0;
          }

          else
          {
            *v29 = a2 - 1;
          }
        }
      }

      return result;
    }
  }

  if (v18)
  {
    v24 = 1;
  }

  else
  {
    v24 = v23;
  }

  if (v18)
  {
    v25 = ~v12 + a2;
    v26 = result;
    bzero(result, v18);
    result = v26;
    *v26 = v25;
  }

  if (v22 > 1)
  {
    if (v22 == 2)
    {
      *&result[v18] = v24;
    }

    else
    {
      *&result[v18] = v24;
    }
  }

  else if (v22)
  {
    result[v18] = v24;
  }

  return result;
}

uint64_t sub_23017B654(void *a1)
{
  v4 = *(v1 + 32);
  v6 = *(v1 + 72);
  v5 = *(v1 + 80);
  v9 = *(v1 + 16);
  v10 = v4;
  v11 = *(v1 + 48);
  v7 = type metadata accessor for Publishers.MapOnScheduler(0, &v9);
  result = (*(v6 + *(v7 + 68)))(v5);
  if (v2)
  {
    *a1 = v2;
  }

  return result;
}

uint64_t sub_23017B6F0()
{
  v0 = sub_23017C4A8();
  sub_230048758(v0, v1);
  return v0;
}

uint64_t sub_23017B724(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_27DB16110);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_2300528E4(v6, v7);
}

void sub_23017B7F4(char a1)
{
  v3 = sub_23030F8B8();
  [v1 willChangeValueForKey_];

  *(v1 + qword_27DB16128) = a1;
  v4 = sub_23030F8B8();
  [v1 didChangeValueForKey_];
}

uint64_t sub_23017B89C()
{
  v0 = sub_2302A38D0(&unk_2844EB818);
  sub_2301500DC(&unk_2844EB838);
  return v0;
}

uint64_t sub_23017B8D8()
{
  v0 = sub_2302A38D0(&unk_2844EB848);
  sub_2301500DC(&unk_2844EB868);
  return v0;
}

uint64_t sub_23017B914()
{
  v0 = sub_2302A38D0(&unk_2844EB878);
  sub_2301500DC(&unk_2844EB898);
  return v0;
}

uint64_t AsyncOperationError.hashValue.getter()
{
  sub_230311358();
  MEMORY[0x2319130E0](0);
  return sub_2303113A8();
}

uint64_t sub_23017B9F4(unsigned __int8 a1)
{
  sub_230311358();
  MEMORY[0x2319130E0](a1);
  return sub_2303113A8();
}

uint64_t sub_23017BA54(uint64_t a1)
{
  sub_230311358();
  sub_23017B9CC(v3, *v1);
  return sub_2303113A8();
}

uint64_t AsyncOperation.operationID.getter()
{
  v1 = *(v0 + qword_27DB16118);

  return v1;
}

uint64_t sub_23017BAE8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>)
{
  v4 = *(a1 + a2 - 8);
  v5 = sub_23017C4A8();
  if (v5)
  {
    v7 = v5;
    v8 = v6;
    v9 = swift_allocObject();
    v6 = v8;
    v10 = v9;
    v5 = v7;
    *(v10 + 16) = v4;
    *(v10 + 24) = v7;
    *(v10 + 32) = v8;
    v11 = sub_23004F878;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  *a3 = v11;
  a3[1] = v10;

  return sub_230048758(v5, v6);
}

uint64_t sub_23017BB88(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1)
  {
    v6 = *(a3 + a4 - 8);
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = v4;
    v7[4] = v5;
    v8 = sub_23017C8FC;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  sub_230048758(v4, v5);
  return sub_23017B724(v8, v7);
}

uint64_t sub_23017BC24()
{
  v1 = MEMORY[0x277D85000];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308, &unk_230315BC0);
  v2 = sub_230311408();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v13 - v4);
  if ([v0 isCancelled])
  {
    v6 = v0 + qword_27DB16110;
    result = swift_beginAccess();
    v8 = *v6;
    if (*v6)
    {
      v9 = *(v6 + 1);
      sub_23017C4F8();
      *v5 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      sub_230048758(v8, v9);
      v8(v5);
      sub_2300528E4(v8, v9);
      return (*(v3 + 8))(v5, v2);
    }
  }

  else
  {
    sub_23017B7F4(1);
    v10 = swift_allocObject();
    *(v10 + 16) = v0;
    v11 = *((*v1 & *v0) + 0xA0);
    v12 = v0;
    v11(sub_23017C4F0, v10);
  }

  return result;
}

uint64_t sub_23017BE5C(uint64_t a1, uint64_t a2)
{
  sub_23017B7F4(2);
  v4 = a2 + qword_27DB16110;
  result = swift_beginAccess();
  v6 = *v4;
  if (*v4)
  {
    v7 = *(v4 + 8);
    sub_230048758(v6, v7);
    v6(a1);
    return sub_2300528E4(v6, v7);
  }

  return result;
}

void sub_23017BEE8(void *a1)
{
  v1 = a1;
  sub_23017BC24();
}

uint64_t sub_23017BF38(void *a1)
{
  v1 = a1;
  v5 = sub_23017BF6C(v1, v2, v3, v4);

  return v5 & 1;
}

id sub_23017BF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + qword_27DB16128))
  {
    return 0;
  }

  v6 = type metadata accessor for AsyncOperation(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v6;
  return objc_msgSendSuper2(&v7, sel_isReady);
}

id sub_23017C0BC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  v3 = sub_23030FF18();

  return v3;
}

id AsyncOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AsyncOperation.init()()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  v3 = (v0 + qword_27DB16118);
  *v3 = sub_23017C564();
  v3[1] = v4;
  v5 = (v0 + qword_27DB16110);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + qword_27DB16128) = 0;
  v8 = type metadata accessor for AsyncOperation(0, *((v2 & v1) + 0x50), v6, v7);
  v10.receiver = v0;
  v10.super_class = v8;
  return objc_msgSendSuper2(&v10, sel_init);
}

id AsyncOperation.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for AsyncOperation(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_23017C268(uint64_t a1)
{

  v2 = *(a1 + qword_27DB16110);
  v3 = *(a1 + qword_27DB16110 + 8);

  return sub_2300528E4(v2, v3);
}

uint64_t sub_23017C2BC()
{
  result = sub_23030F9D8();
  if (!result)
  {
    goto LABEL_4;
  }

  v1 = result;
  v2 = sub_23017C424(result, 0);
  v3 = sub_23017C35C(&v4, v2 + 4, v1, 0xD000000000000010, 0x80000002303428A0);

  if (v3 != v1)
  {
    __break(1u);
LABEL_4:
    v2 = MEMORY[0x277D84F90];
  }

  off_27DB16108 = v2;
  return result;
}