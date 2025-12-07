char *sub_1AFAFD528(int a1, double a2)
{
  v4 = v3;
  v5 = v2;
  v172 = a1;
  sub_1AFB0EF20(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v151 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v163 = (&v151 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v179 = &v151 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v151 - v14;
  v180 = type metadata accessor for EmitterScript(0);
  v16 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v171 = &v151 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v151 - v19;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v225 = qword_1ED73B840;
  v226 = 0;
  v227 = 2;
  v228 = 0;
  v229 = 2;
  v230 = 0;
  sub_1AF704984(1, &v199);
  v219 = v199;
  v220 = v200;
  v221 = v201;
  v222 = v202 | 1;
  v223 = v203;
  v224 = v204;
  sub_1AF6B06C0(v2[2], &v219, 0x200000000, v205);
  v158 = *&v205[0];
  if (!*&v205[0])
  {
    v140 = &qword_1ED723E40;
    v141 = &off_1F255B720;
    v142 = type metadata accessor for EmitterScript;
    v143 = sub_1AFB12B74;
    v144 = &v199;
LABEL_134:
    sub_1AFB12A64(v144, v140, v142, v141, v143);
    return MEMORY[0x1E69E7CC0];
  }

  v156 = *(&v205[2] + 1);
  v21 = *(&v206 + 1);
  v161 = *(&v207 + 1);
  v162 = v207;
  v209 = *(v205 + 8);
  v210 = *(&v205[1] + 8);
  if (v208 < 1)
  {
    sub_1AFB12A64(&v199, &qword_1ED723E40, type metadata accessor for EmitterScript, &off_1F255B720, sub_1AFB12B74);
    v140 = &qword_1ED725EA0;
    v142 = &type metadata for QueryResult;
    v141 = MEMORY[0x1E69E6720];
    v143 = sub_1AFB12AC4;
    v144 = v205;
    goto LABEL_134;
  }

  if (!*(&v206 + 1))
  {
    v195 = v205[2];
    v196 = v206;
    v197 = v207;
    v198 = v208;
    v193 = v205[0];
    v194 = v205[1];
    sub_1AF5DD298(&v193, &v187);
    sub_1AFB12A64(&v199, &qword_1ED723E40, type metadata accessor for EmitterScript, &off_1F255B720, sub_1AFB12B74);
    sub_1AFB12A64(v205, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
    v148 = MEMORY[0x1E69E7CC0];
LABEL_139:
    sub_1AFB12A64(v205, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
    return v148;
  }

  v154 = v16;
  v160 = v161[4];
  v159 = *(v162 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v195 = v205[2];
  v196 = v206;
  v197 = v207;
  v198 = v208;
  v193 = v205[0];
  v194 = v205[1];
  sub_1AF5DD298(&v193, &v187);
  v22 = 0;
  v170 = MEMORY[0x1E69E7CC0];
  v173 = v5;
  v164 = v8;
  v181 = v20;
  v182 = v15;
  v155 = v21;
  while (1)
  {
    v23 = (v156 + 48 * v22);
    v186 = *v23;
    v184 = v23[1];
    v24 = *(v23 + 3);
    v185 = *(v23 + 2);
    v26 = *(v23 + 4);
    v25 = *(v23 + 5);
    v157 = v22;
    if (v159)
    {
      v27 = *(v25 + 376);

      os_unfair_lock_lock(v27);
      os_unfair_lock_lock(*(v25 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v160);
    v28 = v161;
    v29 = *(v161 + 4);
    v217[0] = *(v161 + 3);
    v217[1] = v29;
    v218 = v161[10];
    v30 = *(*(*(*(v25 + 40) + 16) + 32) + 16) + 1;
    v28[6] = ecs_stack_allocator_allocate(v161[4], 48 * v30, 8);
    v28[7] = v30;
    v28[9] = 0;
    v28[10] = 0;
    v28[8] = 0;
    v31 = v185;
    v183 = v25;
    v32 = sub_1AF64B110(v180, &off_1F255B720, v185, v24, v26, v28);
    v33 = v32;
    if (!v31)
    {
      break;
    }

    if (v26)
    {
      v174 = *(v154 + 72);
      while (1)
      {
        v231 = v33;
        v36 = *v185++;
        v186 = v36;
        v37 = *(*v5 + 104);
        v38 = v37();
        v184 = v26;
        if (!v38)
        {
          break;
        }

        v39 = v183;
        v40 = sub_1AFDFEE28();

        if ((v40 & 1) == 0)
        {
          if ((v37)(v41) == 1)
          {
            goto LABEL_25;
          }

          v42 = sub_1AFDFEE28();

          if ((v42 & 1) == 0)
          {
            v44 = *v231;
            v45 = (v37)(v43);
            if (v44 <= 1)
            {
              if (v44)
              {
                v46 = 0xE600000000000000;
                v47 = 0x7070636A626FLL;
              }

              else
              {
                v46 = 0xE100000000000000;
                v47 = 99;
              }
            }

            else
            {
              if (v44 != 2)
              {
                v35 = v231;
                if (v44 == 3)
                {
                  v46 = 0xE500000000000000;
                  v47 = 0x7466697773;
                }

                else
                {
                  v46 = 0xE200000000000000;
                  v47 = 29546;
                }

                goto LABEL_38;
              }

              v46 = 0xE500000000000000;
              v47 = 0x6C6174656DLL;
            }

            v35 = v231;
LABEL_38:
            if (v45 <= 1u)
            {
              if (v45)
              {
                v51 = 0xE600000000000000;
                if (v47 != 0x7070636A626FLL)
                {
                  goto LABEL_67;
                }
              }

              else
              {
                v51 = 0xE100000000000000;
                if (v47 != 99)
                {
                  goto LABEL_67;
                }
              }
            }

            else if (v45 == 2)
            {
              v51 = 0xE500000000000000;
              if (v47 != 0x6C6174656DLL)
              {
                goto LABEL_67;
              }
            }

            else if (v45 == 3)
            {
              v51 = 0xE500000000000000;
              if (v47 != 0x7466697773)
              {
                goto LABEL_67;
              }
            }

            else
            {
              v51 = 0xE200000000000000;
              if (v47 != 29546)
              {
                goto LABEL_67;
              }
            }

            if (v46 != v51)
            {
LABEL_67:
              v86 = sub_1AFDFEE28();

              if ((v86 & 1) == 0)
              {
                goto LABEL_15;
              }

              goto LABEL_54;
            }

            goto LABEL_53;
          }
        }

LABEL_26:
        v35 = v231;
        v48 = *v231;
        if (v48 > 1 || *v231)
        {
          v49 = sub_1AFDFEE28();

          if (v49)
          {
            goto LABEL_54;
          }

          if (v48 != 1)
          {
            v50 = sub_1AFDFEE28();

            if ((v50 & 1) == 0)
            {
              goto LABEL_15;
            }

            goto LABEL_54;
          }
        }

LABEL_53:

LABEL_54:
        sub_1AFB12BD8(v35, v20, type metadata accessor for EmitterScript);
        v52 = v5[5];
        v177 = v5[6];
        v178 = v52;

        if (v39[184])
        {
          goto LABEL_141;
        }

        v54 = *(*(v53 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * *(*(v39 + 21) + 4 * v186) + 8);
        v175 = *(*(v39 + 21) + 4 * v186);
        v176 = v54;

        v55 = v179;
        sub_1AFB12858(v35 + *(v180 + 32), v179);
        v56 = type metadata accessor for ScriptIndex(0);
        v57 = *(v56 - 8);
        v58 = *(v57 + 48);
        if (v58(v55, 1, v56) == 1)
        {
          v59 = v4;

          if (v39[184])
          {
            goto LABEL_141;
          }

          v61 = *(*(v39 + 21) + 4 * v186);
          v62 = *(*(v60 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v61 + 8);

          v63 = v182;
          *v182 = v61;
          v63[1] = v62;
          swift_storeEnumTagMultiPayload();
          v64 = v179;
          v65 = v58(v179, 1, v56) == 1;
          v4 = v59;
          v66 = v64;
          v35 = v231;
          if (!v65)
          {
            sub_1AF687E28(v66);
          }
        }

        else
        {
          v63 = v182;
          sub_1AFB128EC(v55, v182);
        }

        (*(v57 + 56))(v63, 0, 1, v56);
        v20 = v181;
        v67 = sub_1AFAA7344(0, 0, &v187);
        if (v4)
        {
          sub_1AFB12B14(v20, type metadata accessor for EmitterScript);
          sub_1AF687E28(v63);
          if (v172)
          {
            goto LABEL_135;
          }

          v4 = 0;
          v5 = v173;
        }

        else
        {
          v165 = &v151;
          v68 = v175;
          v69 = v187;
          v70 = v188;
          v71 = v189;
          v166 = v190;
          v167 = v191;
          v168 = v192;
          MEMORY[0x1EEE9AC00](v67);
          v73 = v177;
          v72 = v178;
          *(&v151 - 6) = v178;
          *(&v151 - 5) = v73;
          v74 = v176;
          *(&v151 - 8) = v75;
          *(&v151 - 7) = v74;
          *(&v151 - 3) = 0x72657474696D65;
          v149 = 0xE700000000000000;
          v150 = v182;
          v169 = sub_1AFBFBEF0(sub_1AFA9EB54, (&v151 - 8), v69);
          v175 = 0;
          v76 = sub_1AFAF8B58(v70, v71, v72, v73, v68 | (v74 << 32), 0x72657474696D65uLL, 0xE700000000000000, v182);
          v78 = v77;
          v20 = v181;

          sub_1AFB12B14(v20, type metadata accessor for EmitterScript);
          sub_1AF687E28(v182);

          v79 = sub_1AF6496EC(v186);

          v80 = sub_1AFAB9FCC(v79, v162);
          v82 = v81;
          v83 = v170;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v83 = sub_1AF425C8C(0, *(v83 + 2) + 1, 1, v83);
          }

          v85 = *(v83 + 2);
          v84 = *(v83 + 3);
          if (v85 >= v84 >> 1)
          {
            v83 = sub_1AF425C8C(v84 > 1, v85 + 1, 1, v83);
          }

          *(v83 + 2) = v85 + 1;
          v170 = v83;
          v34 = &v83[40 * v85];
          *(v34 + 4) = v169;
          *(v34 + 5) = v76;
          *(v34 + 6) = v78;
          *(v34 + 7) = v80;
          *(v34 + 8) = v82;
          v4 = v175;
          v5 = v173;
          v35 = v231;
        }

LABEL_15:
        v33 = (v35 + v174);
        v26 = v184 - 1;
        if (v184 == 1)
        {
          goto LABEL_70;
        }
      }

      v39 = v183;
LABEL_25:

      goto LABEL_26;
    }

LABEL_70:
    v211 = v158;
    v212 = v209;
    v213 = v210;
    sub_1AF630994(v161, &v211, v217);
    v88 = v183;
    sub_1AF62D29C(v183);
    ecs_stack_allocator_pop_snapshot(v160);
    if (v159)
    {
      os_unfair_lock_unlock(*(v88 + 43));
      os_unfair_lock_unlock(*(v88 + 47));
    }

    v22 = v157 + 1;
    if (v157 + 1 == v155)
    {
      sub_1AFB12A64(&v199, &qword_1ED723E40, type metadata accessor for EmitterScript, &off_1F255B720, sub_1AFB12B74);
      sub_1AFB12A64(v205, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
      v148 = v170;
      goto LABEL_139;
    }
  }

  v87 = v186;
  if (v186 == v184)
  {
    goto LABEL_70;
  }

  v89 = *(v154 + 72);
  v169 = v184 - 1;
  v231 = v32;
  v178 = v89;
  while (2)
  {
    v90 = &v33[v89 * v87];
    v185 = v87;
    while (2)
    {
      v186 = v90;
      v91 = *(*v5 + 104);
      if (!v91())
      {
        goto LABEL_83;
      }

      v92 = sub_1AFDFEE28();

      if (v92)
      {
        break;
      }

      if ((v91)(v93) == 1)
      {
LABEL_83:

        break;
      }

      v94 = sub_1AFDFEE28();

      if ((v94 & 1) == 0)
      {
        v96 = *v186;
        v97 = (v91)(v95);
        if (v96 <= 1)
        {
          if (v96)
          {
            v99 = 0xE600000000000000;
            v100 = 0x7070636A626FLL;
          }

          else
          {
            v99 = 0xE100000000000000;
            v100 = 99;
          }
        }

        else
        {
          if (v96 != 2)
          {
            v98 = v183;
            if (v96 == 3)
            {
              v99 = 0xE500000000000000;
              v100 = 0x7466697773;
            }

            else
            {
              v99 = 0xE200000000000000;
              v100 = 29546;
            }

LABEL_97:
            if (v97 <= 1u)
            {
              if (v97)
              {
                v104 = 0xE600000000000000;
                if (v100 != 0x7070636A626FLL)
                {
                  goto LABEL_122;
                }

                goto LABEL_110;
              }

              v104 = 0xE100000000000000;
              if (v100 == 99)
              {
                goto LABEL_110;
              }
            }

            else if (v97 == 2)
            {
              v104 = 0xE500000000000000;
              if (v100 == 0x6C6174656DLL)
              {
                goto LABEL_110;
              }
            }

            else
            {
              if (v97 == 3)
              {
                v104 = 0xE500000000000000;
                if (v100 != 0x7466697773)
                {
                  goto LABEL_122;
                }

LABEL_110:
                if (v99 != v104)
                {
                  goto LABEL_122;
                }

LABEL_112:

                goto LABEL_113;
              }

              v104 = 0xE200000000000000;
              if (v100 == 29546)
              {
                goto LABEL_110;
              }
            }

LABEL_122:
            v120 = sub_1AFDFEE28();

            if (v120)
            {
              goto LABEL_113;
            }

LABEL_74:
            v90 = v186 + v178;
            v185 = (v185 + 1);
            if (v184 == v185)
            {
              goto LABEL_70;
            }

            continue;
          }

          v99 = 0xE500000000000000;
          v100 = 0x6C6174656DLL;
        }

        v98 = v183;
        goto LABEL_97;
      }

      break;
    }

    v101 = *v186;
    if (v101 <= 1)
    {
      v98 = v183;
      if (!*v186)
      {
        goto LABEL_112;
      }
    }

    else
    {
      v98 = v183;
    }

    v102 = sub_1AFDFEE28();

    if ((v102 & 1) == 0)
    {
      if (v101 == 1)
      {
        goto LABEL_112;
      }

      v103 = sub_1AFDFEE28();

      if ((v103 & 1) == 0)
      {
        goto LABEL_74;
      }
    }

LABEL_113:
    v105 = v186;
    sub_1AFB12BD8(v186, v171, type metadata accessor for EmitterScript);
    v106 = v5[5];
    v176 = v5[6];
    v177 = v106;

    if (v98[184])
    {
      goto LABEL_141;
    }

    v108 = *(*(v107 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * *(*(v98 + 21) + 4 * v185) + 8);
    v174 = *(*(v98 + 21) + 4 * v185);
    v175 = v108;

    v109 = v164;
    sub_1AFB12858(v105 + *(v180 + 32), v164);
    v110 = type metadata accessor for ScriptIndex(0);
    v111 = *(v110 - 8);
    v112 = *(v111 + 48);
    if (v112(v109, 1, v110) == 1)
    {

      if (v98[184])
      {
LABEL_141:
        LODWORD(v150) = 0;
        v149 = 204;
        result = sub_1AFDFE518();
        __break(1u);
        return result;
      }

      v114 = *(*(v98 + 21) + 4 * v185);
      v115 = *(*(v113 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v114 + 8);

      v116 = v163;
      *v163 = v114;
      v116[1] = v115;
      swift_storeEnumTagMultiPayload();
      v117 = v112(v164, 1, v110);
      v5 = v173;
      if (v117 != 1)
      {
        sub_1AF687E28(v164);
      }
    }

    else
    {
      v116 = v163;
      sub_1AFB128EC(v109, v163);
    }

    (*(v111 + 56))(v116, 0, 1, v110);
    v118 = v171;
    v119 = sub_1AFAA7344(0, 0, &v187);
    if (!v4)
    {
      v153 = &v151;
      v165 = v174;
      v152 = v188;
      v121 = v189;
      v166 = v190;
      v167 = v191;
      v168 = v192;
      MEMORY[0x1EEE9AC00](v119);
      v123 = v176;
      v122 = v177;
      *(&v151 - 6) = v177;
      *(&v151 - 5) = v123;
      v124 = v175;
      *(&v151 - 8) = v125;
      *(&v151 - 7) = v124;
      *(&v151 - 3) = 0x72657474696D65;
      v149 = 0xE700000000000000;
      v150 = v116;
      v186 = sub_1AFBFBEF0(sub_1AFA9EB54, (&v151 - 8), v126);
      v127 = sub_1AFAF8B58(v152, v121, v122, v123, v165 | (v124 << 32), 0x72657474696D65uLL, 0xE700000000000000, v116);
      v129 = v128;

      sub_1AFB12B14(v118, type metadata accessor for EmitterScript);
      sub_1AF687E28(v116);

      v130 = sub_1AF6496EC(v185);

      v131 = sub_1AFAB9FCC(v130, v162);
      v133 = v132;
      v134 = v170;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v134 = sub_1AF425C8C(0, *(v134 + 2) + 1, 1, v134);
      }

      v136 = *(v134 + 2);
      v135 = *(v134 + 3);
      if (v136 >= v135 >> 1)
      {
        v170 = sub_1AF425C8C(v135 > 1, v136 + 1, 1, v134);
      }

      else
      {
        v170 = v134;
      }

      v137 = v185;
      v87 = (v185 + 1);
      v138 = v170;
      *(v170 + 2) = v136 + 1;
      v139 = &v138[40 * v136];
      *(v139 + 4) = v186;
      *(v139 + 5) = v127;
      *(v139 + 6) = v129;
      *(v139 + 7) = v131;
      *(v139 + 8) = v133;
      v65 = v169 == v137;
      v4 = 0;
      v5 = v173;
      v20 = v181;
      v33 = v231;
      v89 = v178;
      if (v65)
      {
        goto LABEL_70;
      }

      continue;
    }

    break;
  }

  sub_1AFB12B14(v118, type metadata accessor for EmitterScript);
  sub_1AF687E28(v116);
  if ((v172 & 1) == 0)
  {

    v4 = 0;
    v20 = v181;
    goto LABEL_74;
  }

LABEL_135:
  v146 = v183;
  swift_willThrow();
  v214 = v158;
  v215 = v209;
  v216 = v210;
  sub_1AF630994(v161, &v214, v217);
  sub_1AF62D29C(v146);
  ecs_stack_allocator_pop_snapshot(v160);
  if (v159)
  {
    os_unfair_lock_unlock(*(v146 + 43));
    os_unfair_lock_unlock(*(v146 + 47));
  }

  sub_1AFB12A64(&v199, &qword_1ED723E40, type metadata accessor for EmitterScript, &off_1F255B720, sub_1AFB12B74);

  v147 = MEMORY[0x1E69E6720];
  sub_1AFB12A64(v205, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
  sub_1AFB12A64(v205, &qword_1ED725EA0, &type metadata for QueryResult, v147, sub_1AFB12AC4);
}

char *sub_1AFAFEDB4(int a1, double a2)
{
  v4 = v3;
  v5 = v2;
  v172 = a1;
  sub_1AFB0EF20(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v151 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v162 = (&v151 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v179 = &v151 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v151 - v14;
  inited = type metadata accessor for ParticleInitScript(0);
  v16 = *(inited - 8);
  MEMORY[0x1EEE9AC00](inited);
  v171 = &v151 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v151 - v19;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v225 = qword_1ED73B840;
  v226 = 0;
  v227 = 2;
  v228 = 0;
  v229 = 2;
  v230 = 0;
  sub_1AF703D7C(1, &v199);
  v219 = v199;
  v220 = v200;
  v221 = v201;
  v222 = v202 | 1;
  v223 = v203;
  v224 = v204;
  sub_1AF6B06C0(v2[2], &v219, 0x200000000, v205);
  v157 = *&v205[0];
  if (!*&v205[0])
  {
    v140 = &qword_1ED723D28;
    v141 = &off_1F255B9C0;
    v142 = type metadata accessor for ParticleInitScript;
    v143 = sub_1AFB12B74;
    v144 = &v199;
LABEL_134:
    sub_1AFB12A64(v144, v140, v142, v141, v143);
    return MEMORY[0x1E69E7CC0];
  }

  v155 = *(&v205[2] + 1);
  v21 = *(&v206 + 1);
  v160 = *(&v207 + 1);
  v161 = v207;
  v209 = *(v205 + 8);
  v210 = *(&v205[1] + 8);
  if (v208 < 1)
  {
    sub_1AFB12A64(&v199, &qword_1ED723D28, type metadata accessor for ParticleInitScript, &off_1F255B9C0, sub_1AFB12B74);
    v140 = &qword_1ED725EA0;
    v142 = &type metadata for QueryResult;
    v141 = MEMORY[0x1E69E6720];
    v143 = sub_1AFB12AC4;
    v144 = v205;
    goto LABEL_134;
  }

  if (!*(&v206 + 1))
  {
    v195 = v205[2];
    v196 = v206;
    v197 = v207;
    v198 = v208;
    v193 = v205[0];
    v194 = v205[1];
    sub_1AF5DD298(&v193, &v187);
    sub_1AFB12A64(&v199, &qword_1ED723D28, type metadata accessor for ParticleInitScript, &off_1F255B9C0, sub_1AFB12B74);
    sub_1AFB12A64(v205, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
    v148 = MEMORY[0x1E69E7CC0];
LABEL_139:
    sub_1AFB12A64(v205, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
    return v148;
  }

  v153 = v16;
  v159 = *(v161 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v158 = v160[4];
  v195 = v205[2];
  v196 = v206;
  v197 = v207;
  v198 = v208;
  v193 = v205[0];
  v194 = v205[1];
  sub_1AF5DD298(&v193, &v187);
  v22 = 0;
  v170 = MEMORY[0x1E69E7CC0];
  v173 = v5;
  v163 = v8;
  v181 = v20;
  v182 = v15;
  v154 = v21;
  while (1)
  {
    v23 = (v155 + 48 * v22);
    v186 = *v23;
    v184 = v23[1];
    v24 = *(v23 + 3);
    v185 = *(v23 + 2);
    v26 = *(v23 + 4);
    v25 = *(v23 + 5);
    v156 = v22;
    if (v159)
    {
      v27 = *(v25 + 376);

      os_unfair_lock_lock(v27);
      os_unfair_lock_lock(*(v25 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v158);
    v28 = v160;
    v29 = *(v160 + 4);
    v217[0] = *(v160 + 3);
    v217[1] = v29;
    v218 = v160[10];
    v30 = *(*(*(*(v25 + 40) + 16) + 32) + 16) + 1;
    v28[6] = ecs_stack_allocator_allocate(v160[4], 48 * v30, 8);
    v28[7] = v30;
    v28[9] = 0;
    v28[10] = 0;
    v28[8] = 0;
    v31 = v185;
    v183 = v25;
    v32 = sub_1AF64B110(inited, &off_1F255B9C0, v185, v24, v26, v28);
    v33 = v32;
    if (!v31)
    {
      break;
    }

    if (v26)
    {
      v174 = *(v153 + 72);
      while (1)
      {
        v231 = v33;
        v36 = *v185++;
        v186 = v36;
        v37 = *(*v5 + 104);
        v38 = v37();
        v184 = v26;
        if (!v38)
        {
          break;
        }

        v39 = v183;
        v40 = sub_1AFDFEE28();

        if ((v40 & 1) == 0)
        {
          if ((v37)(v41) == 1)
          {
            goto LABEL_25;
          }

          v42 = sub_1AFDFEE28();

          if ((v42 & 1) == 0)
          {
            v44 = *v231;
            v45 = (v37)(v43);
            if (v44 <= 1)
            {
              if (v44)
              {
                v46 = 0xE600000000000000;
                v47 = 0x7070636A626FLL;
              }

              else
              {
                v46 = 0xE100000000000000;
                v47 = 99;
              }
            }

            else
            {
              if (v44 != 2)
              {
                v35 = v231;
                if (v44 == 3)
                {
                  v46 = 0xE500000000000000;
                  v47 = 0x7466697773;
                }

                else
                {
                  v46 = 0xE200000000000000;
                  v47 = 29546;
                }

                goto LABEL_38;
              }

              v46 = 0xE500000000000000;
              v47 = 0x6C6174656DLL;
            }

            v35 = v231;
LABEL_38:
            if (v45 <= 1u)
            {
              if (v45)
              {
                v51 = 0xE600000000000000;
                if (v47 != 0x7070636A626FLL)
                {
                  goto LABEL_67;
                }
              }

              else
              {
                v51 = 0xE100000000000000;
                if (v47 != 99)
                {
                  goto LABEL_67;
                }
              }
            }

            else if (v45 == 2)
            {
              v51 = 0xE500000000000000;
              if (v47 != 0x6C6174656DLL)
              {
                goto LABEL_67;
              }
            }

            else if (v45 == 3)
            {
              v51 = 0xE500000000000000;
              if (v47 != 0x7466697773)
              {
                goto LABEL_67;
              }
            }

            else
            {
              v51 = 0xE200000000000000;
              if (v47 != 29546)
              {
                goto LABEL_67;
              }
            }

            if (v46 != v51)
            {
LABEL_67:
              v86 = sub_1AFDFEE28();

              if ((v86 & 1) == 0)
              {
                goto LABEL_15;
              }

              goto LABEL_54;
            }

            goto LABEL_53;
          }
        }

LABEL_26:
        v35 = v231;
        v48 = *v231;
        if (v48 > 1 || *v231)
        {
          v49 = sub_1AFDFEE28();

          if (v49)
          {
            goto LABEL_54;
          }

          if (v48 != 1)
          {
            v50 = sub_1AFDFEE28();

            if ((v50 & 1) == 0)
            {
              goto LABEL_15;
            }

            goto LABEL_54;
          }
        }

LABEL_53:

LABEL_54:
        sub_1AFB12BD8(v35, v20, type metadata accessor for ParticleInitScript);
        v52 = v5[5];
        v177 = v5[6];
        v178 = v52;

        if (v39[184])
        {
          goto LABEL_141;
        }

        v54 = *(*(v53 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * *(*(v39 + 21) + 4 * v186) + 8);
        v175 = *(*(v39 + 21) + 4 * v186);
        v176 = v54;

        v55 = v179;
        sub_1AFB12858(v35 + *(inited + 40), v179);
        v56 = type metadata accessor for ScriptIndex(0);
        v57 = *(v56 - 8);
        v58 = *(v57 + 48);
        if (v58(v55, 1, v56) == 1)
        {
          v59 = v4;

          if (v39[184])
          {
            goto LABEL_141;
          }

          v61 = *(*(v39 + 21) + 4 * v186);
          v62 = *(*(v60 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v61 + 8);

          v63 = v182;
          *v182 = v61;
          v63[1] = v62;
          swift_storeEnumTagMultiPayload();
          v64 = v179;
          v65 = v58(v179, 1, v56) == 1;
          v4 = v59;
          v66 = v64;
          v35 = v231;
          if (!v65)
          {
            sub_1AF687E28(v66);
          }
        }

        else
        {
          v63 = v182;
          sub_1AFB128EC(v55, v182);
        }

        v67.n128_f64[0] = (*(v57 + 56))(v63, 0, 1, v56);
        v20 = v181;
        v68 = sub_1AFAA2CD8(0, 0, &v187, v67);
        if (v4)
        {
          sub_1AFB12B14(v20, type metadata accessor for ParticleInitScript);
          sub_1AF687E28(v63);
          if (v172)
          {
            goto LABEL_135;
          }

          v4 = 0;
          v5 = v173;
        }

        else
        {
          v164 = &v151;
          v165 = v175;
          v69 = v187;
          v70 = v188;
          v71 = v189;
          v166 = v190;
          v167 = v191;
          v168 = v192;
          MEMORY[0x1EEE9AC00](v68);
          v72 = v177;
          v73 = v178;
          *(&v151 - 6) = v178;
          *(&v151 - 5) = v72;
          v74 = v176;
          *(&v151 - 8) = v75;
          *(&v151 - 7) = v74;
          *(&v151 - 3) = 0x656C636974726170;
          v149 = 0xEC00000074696E49;
          v150 = v182;
          v169 = sub_1AFBFBEF0(sub_1AFA9EB54, (&v151 - 8), v69);
          v175 = 0;
          v76 = sub_1AFAF8B58(v70, v71, v73, v72, v165 | (v74 << 32), 0x656C636974726170uLL, 0xEC00000074696E49, v182);
          v78 = v77;
          v20 = v181;

          sub_1AFB12B14(v20, type metadata accessor for ParticleInitScript);
          sub_1AF687E28(v182);

          v79 = sub_1AF6496EC(v186);

          v80 = sub_1AFABA1FC(v79, v161);
          v82 = v81;
          v83 = v170;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v83 = sub_1AF425C8C(0, *(v83 + 2) + 1, 1, v83);
          }

          v85 = *(v83 + 2);
          v84 = *(v83 + 3);
          if (v85 >= v84 >> 1)
          {
            v83 = sub_1AF425C8C(v84 > 1, v85 + 1, 1, v83);
          }

          *(v83 + 2) = v85 + 1;
          v170 = v83;
          v34 = &v83[40 * v85];
          *(v34 + 4) = v169;
          *(v34 + 5) = v76;
          *(v34 + 6) = v78;
          *(v34 + 7) = v80;
          *(v34 + 8) = v82;
          v4 = v175;
          v5 = v173;
          v35 = v231;
        }

LABEL_15:
        v33 = (v35 + v174);
        v26 = v184 - 1;
        if (v184 == 1)
        {
          goto LABEL_70;
        }
      }

      v39 = v183;
LABEL_25:

      goto LABEL_26;
    }

LABEL_70:
    v211 = v157;
    v212 = v209;
    v213 = v210;
    sub_1AF630994(v160, &v211, v217);
    v88 = v183;
    sub_1AF62D29C(v183);
    ecs_stack_allocator_pop_snapshot(v158);
    if (v159)
    {
      os_unfair_lock_unlock(*(v88 + 43));
      os_unfair_lock_unlock(*(v88 + 47));
    }

    v22 = v156 + 1;
    if (v156 + 1 == v154)
    {
      sub_1AFB12A64(&v199, &qword_1ED723D28, type metadata accessor for ParticleInitScript, &off_1F255B9C0, sub_1AFB12B74);
      sub_1AFB12A64(v205, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
      v148 = v170;
      goto LABEL_139;
    }
  }

  v87 = v186;
  if (v186 == v184)
  {
    goto LABEL_70;
  }

  v89 = *(v153 + 72);
  v169 = v184 - 1;
  v231 = v32;
  v178 = v89;
  while (2)
  {
    v90 = &v33[v89 * v87];
    v185 = v87;
    while (2)
    {
      v186 = v90;
      v91 = *(*v5 + 104);
      if (!v91())
      {
        goto LABEL_83;
      }

      v92 = sub_1AFDFEE28();

      if (v92)
      {
        break;
      }

      if ((v91)(v93) == 1)
      {
LABEL_83:

        break;
      }

      v94 = sub_1AFDFEE28();

      if ((v94 & 1) == 0)
      {
        v96 = *v186;
        v97 = (v91)(v95);
        if (v96 <= 1)
        {
          if (v96)
          {
            v99 = 0xE600000000000000;
            v100 = 0x7070636A626FLL;
          }

          else
          {
            v99 = 0xE100000000000000;
            v100 = 99;
          }
        }

        else
        {
          if (v96 != 2)
          {
            v98 = v183;
            if (v96 == 3)
            {
              v99 = 0xE500000000000000;
              v100 = 0x7466697773;
            }

            else
            {
              v99 = 0xE200000000000000;
              v100 = 29546;
            }

LABEL_97:
            if (v97 <= 1u)
            {
              if (v97)
              {
                v104 = 0xE600000000000000;
                if (v100 != 0x7070636A626FLL)
                {
                  goto LABEL_122;
                }

                goto LABEL_110;
              }

              v104 = 0xE100000000000000;
              if (v100 == 99)
              {
                goto LABEL_110;
              }
            }

            else if (v97 == 2)
            {
              v104 = 0xE500000000000000;
              if (v100 == 0x6C6174656DLL)
              {
                goto LABEL_110;
              }
            }

            else
            {
              if (v97 == 3)
              {
                v104 = 0xE500000000000000;
                if (v100 != 0x7466697773)
                {
                  goto LABEL_122;
                }

LABEL_110:
                if (v99 != v104)
                {
                  goto LABEL_122;
                }

LABEL_112:

                goto LABEL_113;
              }

              v104 = 0xE200000000000000;
              if (v100 == 29546)
              {
                goto LABEL_110;
              }
            }

LABEL_122:
            v121 = sub_1AFDFEE28();

            if (v121)
            {
              goto LABEL_113;
            }

LABEL_74:
            v90 = v186 + v178;
            v185 = (v185 + 1);
            if (v184 == v185)
            {
              goto LABEL_70;
            }

            continue;
          }

          v99 = 0xE500000000000000;
          v100 = 0x6C6174656DLL;
        }

        v98 = v183;
        goto LABEL_97;
      }

      break;
    }

    v101 = *v186;
    if (v101 <= 1)
    {
      v98 = v183;
      if (!*v186)
      {
        goto LABEL_112;
      }
    }

    else
    {
      v98 = v183;
    }

    v102 = sub_1AFDFEE28();

    if ((v102 & 1) == 0)
    {
      if (v101 == 1)
      {
        goto LABEL_112;
      }

      v103 = sub_1AFDFEE28();

      if ((v103 & 1) == 0)
      {
        goto LABEL_74;
      }
    }

LABEL_113:
    v105 = v186;
    sub_1AFB12BD8(v186, v171, type metadata accessor for ParticleInitScript);
    v106 = v5[5];
    v176 = v5[6];
    v177 = v106;

    if (v98[184])
    {
      goto LABEL_141;
    }

    v108 = *(*(v107 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * *(*(v98 + 21) + 4 * v185) + 8);
    v174 = *(*(v98 + 21) + 4 * v185);
    v175 = v108;

    v109 = v163;
    sub_1AFB12858(v105 + *(inited + 40), v163);
    v110 = type metadata accessor for ScriptIndex(0);
    v111 = *(v110 - 8);
    v112 = *(v111 + 48);
    if (v112(v109, 1, v110) == 1)
    {

      if (v98[184])
      {
LABEL_141:
        LODWORD(v150) = 0;
        v149 = 204;
        result = sub_1AFDFE518();
        __break(1u);
        return result;
      }

      v114 = *(*(v98 + 21) + 4 * v185);
      v115 = *(*(v113 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v114 + 8);

      v116 = v162;
      *v162 = v114;
      v116[1] = v115;
      swift_storeEnumTagMultiPayload();
      v117 = v112(v163, 1, v110);
      v5 = v173;
      if (v117 != 1)
      {
        sub_1AF687E28(v163);
      }
    }

    else
    {
      v116 = v162;
      sub_1AFB128EC(v109, v162);
    }

    v118.n128_f64[0] = (*(v111 + 56))(v116, 0, 1, v110);
    v119 = v171;
    v120 = sub_1AFAA2CD8(0, 0, &v187, v118);
    if (!v4)
    {
      v164 = &v151;
      v165 = v174;
      v151 = v189;
      v152 = v188;
      v166 = v190;
      v167 = v191;
      v168 = v192;
      MEMORY[0x1EEE9AC00](v120);
      v123 = v176;
      v122 = v177;
      *(&v151 - 6) = v177;
      *(&v151 - 5) = v123;
      v124 = v175;
      *(&v151 - 8) = v125;
      *(&v151 - 7) = v124;
      *(&v151 - 3) = 0x656C636974726170;
      v149 = 0xEC00000074696E49;
      v150 = v116;
      v186 = sub_1AFBFBEF0(sub_1AFA9EB54, (&v151 - 8), v126);
      v177 = sub_1AFAF8B58(v152, v151, v122, v123, v165 | (v124 << 32), 0x656C636974726170uLL, 0xEC00000074696E49, v116);
      v128 = v127;

      sub_1AFB12B14(v119, type metadata accessor for ParticleInitScript);
      sub_1AF687E28(v116);

      v129 = sub_1AF6496EC(v185);

      v130 = sub_1AFABA1FC(v129, v161);
      v132 = v131;
      v133 = v170;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v133 = sub_1AF425C8C(0, *(v133 + 2) + 1, 1, v133);
      }

      v135 = *(v133 + 2);
      v134 = *(v133 + 3);
      if (v135 >= v134 >> 1)
      {
        v170 = sub_1AF425C8C(v134 > 1, v135 + 1, 1, v133);
      }

      else
      {
        v170 = v133;
      }

      v136 = v185;
      v87 = (v185 + 1);
      v137 = v170;
      *(v170 + 2) = v135 + 1;
      v138 = &v137[40 * v135];
      v139 = v177;
      *(v138 + 4) = v186;
      *(v138 + 5) = v139;
      *(v138 + 6) = v128;
      *(v138 + 7) = v130;
      *(v138 + 8) = v132;
      v65 = v169 == v136;
      v4 = 0;
      v5 = v173;
      v20 = v181;
      v33 = v231;
      v89 = v178;
      if (v65)
      {
        goto LABEL_70;
      }

      continue;
    }

    break;
  }

  sub_1AFB12B14(v119, type metadata accessor for ParticleInitScript);
  sub_1AF687E28(v116);
  if ((v172 & 1) == 0)
  {

    v4 = 0;
    v20 = v181;
    goto LABEL_74;
  }

LABEL_135:
  v146 = v183;
  swift_willThrow();
  v214 = v157;
  v215 = v209;
  v216 = v210;
  sub_1AF630994(v160, &v214, v217);
  sub_1AF62D29C(v146);
  ecs_stack_allocator_pop_snapshot(v158);
  if (v159)
  {
    os_unfair_lock_unlock(*(v146 + 43));
    os_unfair_lock_unlock(*(v146 + 47));
  }

  sub_1AFB12A64(&v199, &qword_1ED723D28, type metadata accessor for ParticleInitScript, &off_1F255B9C0, sub_1AFB12B74);

  v147 = MEMORY[0x1E69E6720];
  sub_1AFB12A64(v205, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
  sub_1AFB12A64(v205, &qword_1ED725EA0, &type metadata for QueryResult, v147, sub_1AFB12AC4);
}

char *sub_1AFB00664(int a1, double a2)
{
  v4 = v3;
  v5 = v2;
  v172 = a1;
  sub_1AFB0EF20(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v151 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v162 = (&v151 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v179 = &v151 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v151 - v14;
  updated = type metadata accessor for ParticleUpdateScript(0);
  v16 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v171 = &v151 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v151 - v19;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v225 = qword_1ED73B840;
  v226 = 0;
  v227 = 2;
  v228 = 0;
  v229 = 2;
  v230 = 0;
  sub_1AF703D5C(1, &v199);
  v219 = v199;
  v220 = v200;
  v221 = v201;
  v222 = v202 | 1;
  v223 = v203;
  v224 = v204;
  sub_1AF6B06C0(v2[2], &v219, 0x200000000, v205);
  v157 = *&v205[0];
  if (!*&v205[0])
  {
    v140 = &qword_1ED723CF0;
    v141 = &off_1F255BAD0;
    v142 = type metadata accessor for ParticleUpdateScript;
    v143 = sub_1AFB12B74;
    v144 = &v199;
LABEL_134:
    sub_1AFB12A64(v144, v140, v142, v141, v143);
    return MEMORY[0x1E69E7CC0];
  }

  v155 = *(&v205[2] + 1);
  v21 = *(&v206 + 1);
  v160 = *(&v207 + 1);
  v161 = v207;
  v209 = *(v205 + 8);
  v210 = *(&v205[1] + 8);
  if (v208 < 1)
  {
    sub_1AFB12A64(&v199, &qword_1ED723CF0, type metadata accessor for ParticleUpdateScript, &off_1F255BAD0, sub_1AFB12B74);
    v140 = &qword_1ED725EA0;
    v142 = &type metadata for QueryResult;
    v141 = MEMORY[0x1E69E6720];
    v143 = sub_1AFB12AC4;
    v144 = v205;
    goto LABEL_134;
  }

  if (!*(&v206 + 1))
  {
    v195 = v205[2];
    v196 = v206;
    v197 = v207;
    v198 = v208;
    v193 = v205[0];
    v194 = v205[1];
    sub_1AF5DD298(&v193, &v187);
    sub_1AFB12A64(&v199, &qword_1ED723CF0, type metadata accessor for ParticleUpdateScript, &off_1F255BAD0, sub_1AFB12B74);
    sub_1AFB12A64(v205, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
    v148 = MEMORY[0x1E69E7CC0];
LABEL_139:
    sub_1AFB12A64(v205, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
    return v148;
  }

  v153 = v16;
  v159 = *(v161 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v158 = v160[4];
  v195 = v205[2];
  v196 = v206;
  v197 = v207;
  v198 = v208;
  v193 = v205[0];
  v194 = v205[1];
  sub_1AF5DD298(&v193, &v187);
  v22 = 0;
  v170 = MEMORY[0x1E69E7CC0];
  v173 = v5;
  v163 = v8;
  v181 = v20;
  v182 = v15;
  v154 = v21;
  while (1)
  {
    v23 = (v155 + 48 * v22);
    v186 = *v23;
    v184 = v23[1];
    v24 = *(v23 + 3);
    v185 = *(v23 + 2);
    v26 = *(v23 + 4);
    v25 = *(v23 + 5);
    v156 = v22;
    if (v159)
    {
      v27 = *(v25 + 376);

      os_unfair_lock_lock(v27);
      os_unfair_lock_lock(*(v25 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v158);
    v28 = v160;
    v29 = *(v160 + 4);
    v217[0] = *(v160 + 3);
    v217[1] = v29;
    v218 = v160[10];
    v30 = *(*(*(*(v25 + 40) + 16) + 32) + 16) + 1;
    v28[6] = ecs_stack_allocator_allocate(v160[4], 48 * v30, 8);
    v28[7] = v30;
    v28[9] = 0;
    v28[10] = 0;
    v28[8] = 0;
    v31 = v185;
    v183 = v25;
    v32 = sub_1AF64B110(updated, &off_1F255BAD0, v185, v24, v26, v28);
    v33 = v32;
    if (!v31)
    {
      break;
    }

    if (v26)
    {
      v174 = *(v153 + 72);
      while (1)
      {
        v231 = v33;
        v36 = *v185++;
        v186 = v36;
        v37 = *(*v5 + 104);
        v38 = v37();
        v184 = v26;
        if (!v38)
        {
          break;
        }

        v39 = v183;
        v40 = sub_1AFDFEE28();

        if ((v40 & 1) == 0)
        {
          if ((v37)(v41) == 1)
          {
            goto LABEL_25;
          }

          v42 = sub_1AFDFEE28();

          if ((v42 & 1) == 0)
          {
            v44 = v231[24];
            v45 = (v37)(v43);
            if (v44 <= 1)
            {
              if (v44)
              {
                v46 = 0xE600000000000000;
                v47 = 0x7070636A626FLL;
              }

              else
              {
                v46 = 0xE100000000000000;
                v47 = 99;
              }
            }

            else
            {
              if (v44 != 2)
              {
                v35 = v231;
                if (v44 == 3)
                {
                  v46 = 0xE500000000000000;
                  v47 = 0x7466697773;
                }

                else
                {
                  v46 = 0xE200000000000000;
                  v47 = 29546;
                }

                goto LABEL_38;
              }

              v46 = 0xE500000000000000;
              v47 = 0x6C6174656DLL;
            }

            v35 = v231;
LABEL_38:
            if (v45 <= 1u)
            {
              if (v45)
              {
                v51 = 0xE600000000000000;
                if (v47 != 0x7070636A626FLL)
                {
                  goto LABEL_67;
                }
              }

              else
              {
                v51 = 0xE100000000000000;
                if (v47 != 99)
                {
                  goto LABEL_67;
                }
              }
            }

            else if (v45 == 2)
            {
              v51 = 0xE500000000000000;
              if (v47 != 0x6C6174656DLL)
              {
                goto LABEL_67;
              }
            }

            else if (v45 == 3)
            {
              v51 = 0xE500000000000000;
              if (v47 != 0x7466697773)
              {
                goto LABEL_67;
              }
            }

            else
            {
              v51 = 0xE200000000000000;
              if (v47 != 29546)
              {
                goto LABEL_67;
              }
            }

            if (v46 != v51)
            {
LABEL_67:
              v86 = sub_1AFDFEE28();

              if ((v86 & 1) == 0)
              {
                goto LABEL_15;
              }

              goto LABEL_54;
            }

            goto LABEL_53;
          }
        }

LABEL_26:
        v35 = v231;
        v48 = v231[24];
        if (v48 > 1 || v231[24])
        {
          v49 = sub_1AFDFEE28();

          if (v49)
          {
            goto LABEL_54;
          }

          if (v48 != 1)
          {
            v50 = sub_1AFDFEE28();

            if ((v50 & 1) == 0)
            {
              goto LABEL_15;
            }

            goto LABEL_54;
          }
        }

LABEL_53:

LABEL_54:
        sub_1AFB12BD8(v35, v20, type metadata accessor for ParticleUpdateScript);
        v52 = v5[5];
        v177 = v5[6];
        v178 = v52;

        if (v39[184])
        {
          goto LABEL_141;
        }

        v54 = *(*(v53 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * *(*(v39 + 21) + 4 * v186) + 8);
        v175 = *(*(v39 + 21) + 4 * v186);
        v176 = v54;

        v55 = v179;
        sub_1AFB12858(v35 + *(updated + 40), v179);
        v56 = type metadata accessor for ScriptIndex(0);
        v57 = *(v56 - 8);
        v58 = *(v57 + 48);
        if (v58(v55, 1, v56) == 1)
        {
          v59 = v4;

          if (v39[184])
          {
            goto LABEL_141;
          }

          v61 = *(*(v39 + 21) + 4 * v186);
          v62 = *(*(v60 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v61 + 8);

          v63 = v182;
          *v182 = v61;
          v63[1] = v62;
          swift_storeEnumTagMultiPayload();
          v64 = v179;
          v65 = v58(v179, 1, v56) == 1;
          v4 = v59;
          v66 = v64;
          v35 = v231;
          if (!v65)
          {
            sub_1AF687E28(v66);
          }
        }

        else
        {
          v63 = v182;
          sub_1AFB128EC(v55, v182);
        }

        v67.n128_f64[0] = (*(v57 + 56))(v63, 0, 1, v56);
        v20 = v181;
        v68 = sub_1AFAA3C54(0, 0, &v187, v67);
        if (v4)
        {
          sub_1AFB12B14(v20, type metadata accessor for ParticleUpdateScript);
          sub_1AF687E28(v63);
          if (v172)
          {
            goto LABEL_135;
          }

          v4 = 0;
          v5 = v173;
        }

        else
        {
          v164 = &v151;
          v165 = v175;
          v69 = v187;
          v70 = v188;
          v71 = v189;
          v166 = v190;
          v167 = v191;
          v168 = v192;
          MEMORY[0x1EEE9AC00](v68);
          v72 = v177;
          v73 = v178;
          *(&v151 - 6) = v178;
          *(&v151 - 5) = v72;
          v74 = v176;
          *(&v151 - 8) = v75;
          *(&v151 - 7) = v74;
          *(&v151 - 3) = 0x656C636974726170;
          v149 = 0xEE00657461647055;
          v150 = v182;
          v169 = sub_1AFBFBEF0(sub_1AFA9EB54, (&v151 - 8), v69);
          v175 = 0;
          v76 = sub_1AFAF8B58(v70, v71, v73, v72, v165 | (v74 << 32), 0x656C636974726170uLL, 0xEE00657461647055, v182);
          v78 = v77;
          v20 = v181;

          sub_1AFB12B14(v20, type metadata accessor for ParticleUpdateScript);
          sub_1AF687E28(v182);

          v79 = sub_1AF6496EC(v186);

          v80 = sub_1AFABA30C(v79, v161);
          v82 = v81;
          v83 = v170;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v83 = sub_1AF425C8C(0, *(v83 + 2) + 1, 1, v83);
          }

          v85 = *(v83 + 2);
          v84 = *(v83 + 3);
          if (v85 >= v84 >> 1)
          {
            v83 = sub_1AF425C8C(v84 > 1, v85 + 1, 1, v83);
          }

          *(v83 + 2) = v85 + 1;
          v170 = v83;
          v34 = &v83[40 * v85];
          *(v34 + 4) = v169;
          *(v34 + 5) = v76;
          *(v34 + 6) = v78;
          *(v34 + 7) = v80;
          *(v34 + 8) = v82;
          v4 = v175;
          v5 = v173;
          v35 = v231;
        }

LABEL_15:
        v33 = (v35 + v174);
        v26 = v184 - 1;
        if (v184 == 1)
        {
          goto LABEL_70;
        }
      }

      v39 = v183;
LABEL_25:

      goto LABEL_26;
    }

LABEL_70:
    v211 = v157;
    v212 = v209;
    v213 = v210;
    sub_1AF630994(v160, &v211, v217);
    v88 = v183;
    sub_1AF62D29C(v183);
    ecs_stack_allocator_pop_snapshot(v158);
    if (v159)
    {
      os_unfair_lock_unlock(*(v88 + 43));
      os_unfair_lock_unlock(*(v88 + 47));
    }

    v22 = v156 + 1;
    if (v156 + 1 == v154)
    {
      sub_1AFB12A64(&v199, &qword_1ED723CF0, type metadata accessor for ParticleUpdateScript, &off_1F255BAD0, sub_1AFB12B74);
      sub_1AFB12A64(v205, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
      v148 = v170;
      goto LABEL_139;
    }
  }

  v87 = v186;
  if (v186 == v184)
  {
    goto LABEL_70;
  }

  v89 = *(v153 + 72);
  v169 = v184 - 1;
  v231 = v32;
  v178 = v89;
  while (2)
  {
    v90 = &v33[v89 * v87];
    v185 = v87;
    while (2)
    {
      v186 = v90;
      v91 = *(*v5 + 104);
      if (!v91())
      {
        goto LABEL_83;
      }

      v92 = sub_1AFDFEE28();

      if (v92)
      {
        break;
      }

      if ((v91)(v93) == 1)
      {
LABEL_83:

        break;
      }

      v94 = sub_1AFDFEE28();

      if ((v94 & 1) == 0)
      {
        v96 = *(v186 + 24);
        v97 = (v91)(v95);
        if (v96 <= 1)
        {
          if (v96)
          {
            v99 = 0xE600000000000000;
            v100 = 0x7070636A626FLL;
          }

          else
          {
            v99 = 0xE100000000000000;
            v100 = 99;
          }
        }

        else
        {
          if (v96 != 2)
          {
            v98 = v183;
            if (v96 == 3)
            {
              v99 = 0xE500000000000000;
              v100 = 0x7466697773;
            }

            else
            {
              v99 = 0xE200000000000000;
              v100 = 29546;
            }

LABEL_97:
            if (v97 <= 1u)
            {
              if (v97)
              {
                v104 = 0xE600000000000000;
                if (v100 != 0x7070636A626FLL)
                {
                  goto LABEL_122;
                }

                goto LABEL_110;
              }

              v104 = 0xE100000000000000;
              if (v100 == 99)
              {
                goto LABEL_110;
              }
            }

            else if (v97 == 2)
            {
              v104 = 0xE500000000000000;
              if (v100 == 0x6C6174656DLL)
              {
                goto LABEL_110;
              }
            }

            else
            {
              if (v97 == 3)
              {
                v104 = 0xE500000000000000;
                if (v100 != 0x7466697773)
                {
                  goto LABEL_122;
                }

LABEL_110:
                if (v99 != v104)
                {
                  goto LABEL_122;
                }

LABEL_112:

                goto LABEL_113;
              }

              v104 = 0xE200000000000000;
              if (v100 == 29546)
              {
                goto LABEL_110;
              }
            }

LABEL_122:
            v121 = sub_1AFDFEE28();

            if (v121)
            {
              goto LABEL_113;
            }

LABEL_74:
            v90 = v186 + v178;
            v185 = (v185 + 1);
            if (v184 == v185)
            {
              goto LABEL_70;
            }

            continue;
          }

          v99 = 0xE500000000000000;
          v100 = 0x6C6174656DLL;
        }

        v98 = v183;
        goto LABEL_97;
      }

      break;
    }

    v101 = *(v186 + 24);
    if (v101 <= 1)
    {
      v98 = v183;
      if (!*(v186 + 24))
      {
        goto LABEL_112;
      }
    }

    else
    {
      v98 = v183;
    }

    v102 = sub_1AFDFEE28();

    if ((v102 & 1) == 0)
    {
      if (v101 == 1)
      {
        goto LABEL_112;
      }

      v103 = sub_1AFDFEE28();

      if ((v103 & 1) == 0)
      {
        goto LABEL_74;
      }
    }

LABEL_113:
    v105 = v186;
    sub_1AFB12BD8(v186, v171, type metadata accessor for ParticleUpdateScript);
    v106 = v5[5];
    v176 = v5[6];
    v177 = v106;

    if (v98[184])
    {
      goto LABEL_141;
    }

    v108 = *(*(v107 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * *(*(v98 + 21) + 4 * v185) + 8);
    v174 = *(*(v98 + 21) + 4 * v185);
    v175 = v108;

    v109 = v163;
    sub_1AFB12858(v105 + *(updated + 40), v163);
    v110 = type metadata accessor for ScriptIndex(0);
    v111 = *(v110 - 8);
    v112 = *(v111 + 48);
    if (v112(v109, 1, v110) == 1)
    {

      if (v98[184])
      {
LABEL_141:
        LODWORD(v150) = 0;
        v149 = 204;
        result = sub_1AFDFE518();
        __break(1u);
        return result;
      }

      v114 = *(*(v98 + 21) + 4 * v185);
      v115 = *(*(v113 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v114 + 8);

      v116 = v162;
      *v162 = v114;
      v116[1] = v115;
      swift_storeEnumTagMultiPayload();
      v117 = v112(v163, 1, v110);
      v5 = v173;
      if (v117 != 1)
      {
        sub_1AF687E28(v163);
      }
    }

    else
    {
      v116 = v162;
      sub_1AFB128EC(v109, v162);
    }

    v118.n128_f64[0] = (*(v111 + 56))(v116, 0, 1, v110);
    v119 = v171;
    v120 = sub_1AFAA3C54(0, 0, &v187, v118);
    if (!v4)
    {
      v164 = &v151;
      v165 = v174;
      v151 = v189;
      v152 = v188;
      v166 = v190;
      v167 = v191;
      v168 = v192;
      MEMORY[0x1EEE9AC00](v120);
      v123 = v176;
      v122 = v177;
      *(&v151 - 6) = v177;
      *(&v151 - 5) = v123;
      v124 = v175;
      *(&v151 - 8) = v125;
      *(&v151 - 7) = v124;
      *(&v151 - 3) = 0x656C636974726170;
      v149 = 0xEE00657461647055;
      v150 = v116;
      v186 = sub_1AFBFBEF0(sub_1AFA9C4E0, (&v151 - 8), v126);
      v177 = sub_1AFAF8B58(v152, v151, v122, v123, v165 | (v124 << 32), 0x656C636974726170uLL, 0xEE00657461647055, v116);
      v128 = v127;

      sub_1AFB12B14(v119, type metadata accessor for ParticleUpdateScript);
      sub_1AF687E28(v116);

      v129 = sub_1AF6496EC(v185);

      v130 = sub_1AFABA30C(v129, v161);
      v132 = v131;
      v133 = v170;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v133 = sub_1AF425C8C(0, *(v133 + 2) + 1, 1, v133);
      }

      v135 = *(v133 + 2);
      v134 = *(v133 + 3);
      if (v135 >= v134 >> 1)
      {
        v170 = sub_1AF425C8C(v134 > 1, v135 + 1, 1, v133);
      }

      else
      {
        v170 = v133;
      }

      v136 = v185;
      v87 = (v185 + 1);
      v137 = v170;
      *(v170 + 2) = v135 + 1;
      v138 = &v137[40 * v135];
      v139 = v177;
      *(v138 + 4) = v186;
      *(v138 + 5) = v139;
      *(v138 + 6) = v128;
      *(v138 + 7) = v130;
      *(v138 + 8) = v132;
      v65 = v169 == v136;
      v4 = 0;
      v5 = v173;
      v20 = v181;
      v33 = v231;
      v89 = v178;
      if (v65)
      {
        goto LABEL_70;
      }

      continue;
    }

    break;
  }

  sub_1AFB12B14(v119, type metadata accessor for ParticleUpdateScript);
  sub_1AF687E28(v116);
  if ((v172 & 1) == 0)
  {

    v4 = 0;
    v20 = v181;
    goto LABEL_74;
  }

LABEL_135:
  v146 = v183;
  swift_willThrow();
  v214 = v157;
  v215 = v209;
  v216 = v210;
  sub_1AF630994(v160, &v214, v217);
  sub_1AF62D29C(v146);
  ecs_stack_allocator_pop_snapshot(v158);
  if (v159)
  {
    os_unfair_lock_unlock(*(v146 + 43));
    os_unfair_lock_unlock(*(v146 + 47));
  }

  sub_1AFB12A64(&v199, &qword_1ED723CF0, type metadata accessor for ParticleUpdateScript, &off_1F255BAD0, sub_1AFB12B74);

  v147 = MEMORY[0x1E69E6720];
  sub_1AFB12A64(v205, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
  sub_1AFB12A64(v205, &qword_1ED725EA0, &type metadata for QueryResult, v147, sub_1AFB12AC4);
}

uint64_t sub_1AFB01F1C(char a1)
{
  v17 = MEMORY[0x1E69E7CC0];
  v3 = sub_1AFB10C2C(type metadata accessor for GraphScript, sub_1AF70335C, &qword_1ED723E80, type metadata accessor for GraphScript, &off_1F255B548, type metadata accessor for GraphScript, 0x6870617267uLL, 0xE500000000000000, sub_1AFA9EB54, type metadata accessor for GraphScript, sub_1AFAB9EAC, sub_1AFA9EB54);
  if (v1)
  {

    return swift_willThrow();
  }

  else
  {
    sub_1AF490814(v3);
    v5 = sub_1AFAFA510(a1 & 1, v4);
    sub_1AF490814(v5);
    v6 = sub_1AFB0F3FC();
    sub_1AF490814(v6);
    v8 = sub_1AFAFBDA0(a1 & 1, v7);
    sub_1AF490814(v8);
    v10 = sub_1AFAFD528(a1 & 1, v9);
    sub_1AF490814(v10);
    v11 = sub_1AFB10C2C(type metadata accessor for TriggerScript, sub_1AF703D3C, &unk_1ED723DC0, type metadata accessor for TriggerScript, &off_1F255BBC8, type metadata accessor for TriggerScript, 0x72656767697274uLL, 0xE700000000000000, sub_1AFA9EB54, type metadata accessor for TriggerScript, sub_1AFABA0DC, sub_1AFA9EB54);
    sub_1AF490814(v11);
    v13 = sub_1AFAFEDB4(a1 & 1, v12);
    sub_1AF490814(v13);
    v15 = sub_1AFB00664(a1 & 1, v14);
    sub_1AF490814(v15);
    return v17;
  }
}

uint64_t sub_1AFB0220C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X7>, void *a6@<X8>, unint64_t a7)
{
  sub_1AF4486E4();
  if (sub_1AFDFDF18())
  {
  }

  else
  {
    MEMORY[0x1B2718AE0](a1, a2);
    MEMORY[0x1B2718AE0](0xD000000000000018, 0x80000001AFF25180);
    a3 = sub_1AFDFDEB8();
    a4 = v13;
  }

  v14 = sub_1AFB023C8(a5, a7, a3, a4);

  v15 = sub_1AFA5413C(v14);
  v17 = v16;

  *a6 = &unk_1F2503018;
  a6[1] = v15;
  a6[2] = v17;
  a6[3] = 11565;
  a6[4] = 0xE200000000000000;
  return result;
}

uint64_t sub_1AFB023C8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= 2)
  {
    if (qword_1ED724988 != -1)
    {
      swift_once();
    }

    v8 = qword_1ED73B400;
    v7 = *algn_1ED73B408;
    sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AFE431C0;
    *(inited + 32) = v8;
    *(inited + 40) = v7;
    sub_1AF441DD8(0);
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_1AFE4C620;
    *(v10 + 32) = inited;
    *(v10 + 40) = &unk_1F2502FD8;

    v6 = sub_1AFA56CA0();
    swift_setDeallocating();
    sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
    swift_arrayDestroy();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1AFE431C0;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  sub_1AF441DD8(0);
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1AFE4C620;
  *(v12 + 32) = v6;
  *(v12 + 40) = v11;

  v13 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v13;
}

uint64_t sub_1AFB02608(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = (a1 + 64);
    do
    {
      v18 = *(v3 - 3);
      v4 = *(v3 - 2);
      v5 = *(v3 - 1);
      v6 = *v3;

      MEMORY[0x1B2718AE0](v5, v6);
      sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AFE431C0;
      *(inited + 32) = 2109231;
      *(inited + 40) = 0xE300000000000000;
      *(inited + 48) = 0;
      *(inited + 56) = 0;
      v8 = swift_initStackObject();
      *(v8 + 16) = xmmword_1AFE431C0;
      *(v8 + 32) = v18;
      *(v8 + 40) = v4;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;

      sub_1AF441DD8(0);
      v9 = swift_initStackObject();
      *(v9 + 16) = xmmword_1AFE4C6A0;
      *(v9 + 32) = inited;
      *(v9 + 40) = &unk_1F2503E78;
      *(v9 + 48) = v8;
      *(v9 + 56) = &unk_1F2503EB8;
      *(v9 + 64) = &unk_1F2503EF8;
      v10 = sub_1AFA56CA0();
      swift_setDeallocating();
      sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
      swift_arrayDestroy();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1AF426BC8(0, v2[2] + 1, 1, v2);
      }

      v12 = v2[2];
      v11 = v2[3];
      if (v12 >= v11 >> 1)
      {
        v2 = sub_1AF426BC8(v11 > 1, v12 + 1, 1, v2);
      }

      v2[2] = v12 + 1;
      v2[v12 + 4] = v10;
      v3 += 5;
      --v1;
    }

    while (v1);
  }

  v13 = sub_1AFA56CA0();

  sub_1AF441DD8(0);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1AFE431C0;
  *(v14 + 32) = v13;
  v15 = v14 + 32;
  v16 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AFB12A64(v15, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
  return v16;
}

uint64_t sub_1AFB0290C(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  v43 = *(a1 + 16);
  if (!v43)
  {
LABEL_42:
    v38 = sub_1AFA56CA0();

    sub_1AF441DD8(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AFE431C0;
    *(inited + 32) = v38;
    v40 = inited + 32;
    v41 = sub_1AFA56CA0();
    swift_setDeallocating();
    sub_1AFB12A64(v40, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
    return v41;
  }

  v2 = 0;
  v3 = (a1 + 48);
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v5 = *(v3 - 2);
    v6 = *v3;
    v7 = (v5 >> 59) & 0x1E | (v5 >> 2) & 1;
    v44 = *v3;
    v45 = v4;
    if (v7 <= 9)
    {
      v8 = *(v3 - 8);
      if (v7 <= 3)
      {
        if (v7)
        {
          if (v7 != 1)
          {
            goto LABEL_43;
          }

LABEL_20:
          sub_1AF443EE0(v5);
          sub_1AF444224(v6);
          sub_1AFA9EF20(v5);
          if (sub_1AFADB4E4(v14, 2u))
          {
            if ((v8 & 2) != 0)
            {
              v15 = MEMORY[0x1E69E6878];
            }

            else
            {
              v15 = MEMORY[0x1E69E6270];
            }
          }

          else
          {
            sub_1AFA9EF20(v5);
          }

          v46[0] = sub_1AFAF9348(v15, 2u);
          v46[1] = v16;
          MEMORY[0x1B2718AE0](0x65756C617620, 0xE600000000000000);
          v17 = sub_1AFDFEA08();
          MEMORY[0x1B2718AE0](v17);

          v18 = v46[0];
          v19 = v46[1];
          sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
          v20 = swift_initStackObject();
          *(v20 + 16) = xmmword_1AFE431C0;
          *(v20 + 32) = v18;
          *(v20 + 40) = v19;
          sub_1AF441DD8(0);
          *(v20 + 48) = 0;
          *(v20 + 56) = 0;
          v21 = swift_initStackObject();
          *(v21 + 16) = xmmword_1AFE431C0;
          *(v21 + 32) = v20;
          v22 = v21 + 32;
          v11 = sub_1AFA56CA0();
          swift_setDeallocating();
          sub_1AFB12A64(v22, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
          v1 = MEMORY[0x1E69E7CC0];
          goto LABEL_37;
        }
      }

      else
      {
        if ((v7 - 4) < 2)
        {
          goto LABEL_20;
        }

        if (v7 != 8 && v7 != 9)
        {
          goto LABEL_43;
        }
      }

      sub_1AF441DD8(0);
      v23 = swift_initStackObject();
      *(v23 + 16) = xmmword_1AFE431C0;
      *(v23 + 32) = v1;
      v24 = v23 + 32;
      sub_1AF443EE0(v5);
      goto LABEL_35;
    }

    if (v7 <= 12)
    {
      if (v7 != 10 && v7 != 11)
      {
LABEL_28:
        sub_1AF443EE0(v5);
        sub_1AF444224(v6);
        sub_1AFDFE218();

        strcpy(v46, "uint32_t value");
        HIBYTE(v46[1]) = -18;
        v25 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v25);

        v26 = v46[0];
        v27 = v46[1];
        sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
        v28 = swift_initStackObject();
        *(v28 + 16) = xmmword_1AFE431C0;
        *(v28 + 32) = v26;
        *(v28 + 40) = v27;
        sub_1AF441DD8(0);
        *(v28 + 48) = 0;
        *(v28 + 56) = 0;
        v29 = swift_initStackObject();
        *(v29 + 16) = xmmword_1AFE431C0;
        *(v29 + 32) = v28;
        v30 = v29 + 32;
        v11 = sub_1AFA56CA0();
        swift_setDeallocating();
        v12 = MEMORY[0x1E69E62F8];
        v13 = v30;
        v1 = MEMORY[0x1E69E7CC0];
        goto LABEL_36;
      }

      goto LABEL_17;
    }

    if (v7 == 13)
    {
      goto LABEL_28;
    }

    if (v7 != 14)
    {
      break;
    }

LABEL_17:
    sub_1AF441DD8(0);
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_1AFE431C0;
    *(v9 + 32) = v1;
    v10 = v9 + 32;
    sub_1AF443EE0(v5);
    sub_1AF444224(v6);
    v11 = sub_1AFA56CA0();
    swift_setDeallocating();
    v12 = MEMORY[0x1E69E62F8];
    v13 = v10;
LABEL_36:
    sub_1AFB12A64(v13, &unk_1ED723290, &type metadata for CodeEmitter.Code, v12, sub_1AFB12AC4);
LABEL_37:
    sub_1AF441DD8(0);
    v33 = swift_initStackObject();
    *(v33 + 16) = xmmword_1AFE431C0;
    *(v33 + 32) = v11;
    v34 = v33 + 32;
    v35 = sub_1AFA56CA0();
    swift_setDeallocating();
    sub_1AFB12A64(v34, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
    v4 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1AF426BC8(0, v45[2] + 1, 1, v45);
    }

    v37 = v4[2];
    v36 = v4[3];
    if (v37 >= v36 >> 1)
    {
      v4 = sub_1AF426BC8(v36 > 1, v37 + 1, 1, v4);
    }

    ++v2;
    v3 += 5;
    sub_1AF443F24(v5);
    sub_1AF444AF4(v44);
    v4[2] = v37 + 1;
    v4[v37 + 4] = v35;
    if (v43 == v2)
    {
      goto LABEL_42;
    }
  }

  if (v7 == 16 && v5 == 0x8000000000000000)
  {
    sub_1AF441DD8(0);
    v32 = swift_initStackObject();
    *(v32 + 16) = xmmword_1AFE431C0;
    *(v32 + 32) = v1;
    v24 = v32 + 32;
LABEL_35:
    sub_1AF444224(v6);
    v11 = sub_1AFA56CA0();
    swift_setDeallocating();
    v12 = MEMORY[0x1E69E62F8];
    v13 = v24;
    goto LABEL_36;
  }

LABEL_43:
  sub_1AF443EE0(v5);
  sub_1AF444224(v6);
  sub_1AFDFE218();
  sub_1AFDFE458();
  MEMORY[0x1B2718AE0](0x70757320746F6E20, 0xEE00646574726F70);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFB031F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = (a1 + 48);
    v4 = &type metadata for CodeEmitter.Code;
    do
    {
      v5 = *(v3 - 2);
      v6 = *v3;
      v36 = *v3;
      if (((v5 >> 59) & 0x1E | (v5 >> 2) & 1) != 0xE)
      {
        goto LABEL_7;
      }

      v7 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v8 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      if (v8 == 3)
      {
        v24 = *(v3 - 8);
        sub_1AF443EE0(v5);
        sub_1AF444224(v6);
        sub_1AFA9EF20(v5);
        if (sub_1AFADB4E4(v25, 2u))
        {
          if ((v24 & 2) != 0)
          {
            v26 = MEMORY[0x1E69E6878];
          }

          else
          {
            v26 = MEMORY[0x1E69E6270];
          }
        }

        else
        {
          sub_1AFA9EF20(v5);
        }

        v38 = sub_1AFAF9348(v26, 2u);
        v40 = v27;
        MEMORY[0x1B2718AE0](32, 0xE100000000000000);
        MEMORY[0x1B2718AE0](*(v7 + 16), *(v7 + 24));
        sub_1AFB12AC4(0, &qword_1EB638390, v4, MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1AFE431C0;
        *(inited + 32) = v38;
        *(inited + 40) = v40;
        sub_1AF441DD8(0);
        *(inited + 48) = 0;
        *(inited + 56) = 0;
        v29 = swift_initStackObject();
        *(v29 + 16) = xmmword_1AFE431C0;
        v12 = v4;
        *(v29 + 32) = inited;
        v30 = v29 + 32;
        v16 = sub_1AFA56CA0();
        swift_setDeallocating();
        v17 = MEMORY[0x1E69E62F8];
        v18 = v30;
        goto LABEL_9;
      }

      if (v8 == 4)
      {
        v9 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v37 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v39 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        sub_1AF443EE0(v5);
        sub_1AF444224(v6);

        MEMORY[0x1B2718AE0](32, 0xE100000000000000);
        MEMORY[0x1B2718AE0](v7, v9);
        sub_1AFB12AC4(0, &qword_1EB638390, v4, MEMORY[0x1E69E6F90]);
        v10 = swift_initStackObject();
        *(v10 + 16) = xmmword_1AFE431C0;
        *(v10 + 32) = v37;
        *(v10 + 40) = v39;
        sub_1AF441DD8(0);
        *(v10 + 48) = 0;
        *(v10 + 56) = 0;
        v11 = swift_initStackObject();
        *(v11 + 16) = xmmword_1AFE431C0;
        v12 = v4;
        *(v11 + 32) = v10;
        v13 = v11 + 32;
      }

      else
      {
LABEL_7:
        sub_1AF441DD8(0);
        v14 = swift_initStackObject();
        *(v14 + 16) = xmmword_1AFE431C0;
        v15 = v6;
        v12 = v4;
        *(v14 + 32) = MEMORY[0x1E69E7CC0];
        v13 = v14 + 32;
        sub_1AF443EE0(v5);
        sub_1AF444224(v15);
      }

      v16 = sub_1AFA56CA0();
      swift_setDeallocating();
      v17 = MEMORY[0x1E69E62F8];
      v18 = v13;
LABEL_9:
      sub_1AFB12A64(v18, &unk_1ED723290, v12, v17, sub_1AFB12AC4);
      sub_1AF441DD8(0);
      v19 = swift_initStackObject();
      *(v19 + 16) = xmmword_1AFE431C0;
      *(v19 + 32) = v16;
      v20 = v19 + 32;
      v21 = sub_1AFA56CA0();
      swift_setDeallocating();
      sub_1AFB12A64(v20, &unk_1ED723290, v12, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
      v4 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1AF426BC8(0, v2[2] + 1, 1, v2);
      }

      v23 = v2[2];
      v22 = v2[3];
      if (v23 >= v22 >> 1)
      {
        v2 = sub_1AF426BC8(v22 > 1, v23 + 1, 1, v2);
      }

      v3 += 5;
      sub_1AF443F24(v5);
      sub_1AF444AF4(v36);
      v2[2] = v23 + 1;
      v2[v23 + 4] = v21;
      --v1;
    }

    while (v1);
  }

  v31 = sub_1AFA56CA0();

  sub_1AF441DD8(0);
  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_1AFE431C0;
  *(v32 + 32) = v31;
  v33 = v32 + 32;
  v34 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AFB12A64(v33, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
  return v34;
}

uint64_t sub_1AFB036B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 48);
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      v30 = v1;
      v4 = *(v2 - 2);
      v5 = *v2;
      v29 = *v2;
      if (((v4 >> 59) & 0x1E | (v4 >> 2) & 1) == 0xE && *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x30) == 1)
      {
        v6 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        if (v6 >= 9)
        {
          v12 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          v13 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
          sub_1AF443EE0(v4);
          sub_1AF444224(v5);
          v31 = sub_1AF94B594(2, v13);
          v32 = v14;
          MEMORY[0x1B2718AE0](32, 0xE100000000000000);
          MEMORY[0x1B2718AE0](v12, v6);
          sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1AFE431C0;
          *(inited + 32) = v31;
          *(inited + 40) = v32;
          sub_1AF441DD8(0);
          *(inited + 48) = 0;
          *(inited + 56) = 0;
          v16 = swift_initStackObject();
          *(v16 + 16) = xmmword_1AFE431C0;
          *(v16 + 32) = inited;
          v8 = v16 + 32;
        }

        else
        {
          sub_1AF441DD8(0);
          v7 = swift_initStackObject();
          *(v7 + 16) = xmmword_1AFE431C0;
          *(v7 + 32) = MEMORY[0x1E69E7CC0];
          v8 = v7 + 32;
          sub_1AF443EE0(v4);
          sub_1AF444224(v5);
        }

        v9 = sub_1AFA56CA0();
        swift_setDeallocating();
        sub_1AFB12A64(v8, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
        sub_1AF441DD8(0);
        v17 = swift_initStackObject();
        *(v17 + 16) = xmmword_1AFE431C0;
        *(v17 + 32) = v9;
        v11 = v17 + 32;
      }

      else
      {
        sub_1AF441DD8(0);
        v10 = swift_initStackObject();
        *(v10 + 16) = xmmword_1AFE431C0;
        *(v10 + 32) = MEMORY[0x1E69E7CC0];
        v11 = v10 + 32;
        sub_1AF443EE0(v4);
        sub_1AF444224(v5);
      }

      v18 = sub_1AFA56CA0();
      swift_setDeallocating();
      v19 = MEMORY[0x1E69E62F8];
      sub_1AFB12A64(v11, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
      sub_1AF441DD8(0);
      v20 = swift_initStackObject();
      *(v20 + 16) = xmmword_1AFE431C0;
      *(v20 + 32) = v18;
      v21 = v20 + 32;
      v22 = sub_1AFA56CA0();
      swift_setDeallocating();
      sub_1AFB12A64(v21, &unk_1ED723290, &type metadata for CodeEmitter.Code, v19, sub_1AFB12AC4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1AF426BC8(0, v3[2] + 1, 1, v3);
      }

      v24 = v3[2];
      v23 = v3[3];
      if (v24 >= v23 >> 1)
      {
        v3 = sub_1AF426BC8(v23 > 1, v24 + 1, 1, v3);
      }

      v2 += 5;
      sub_1AF443F24(v4);
      sub_1AF444AF4(v29);
      v3[2] = v24 + 1;
      v3[v24 + 4] = v22;
      v1 = v30 - 1;
    }

    while (v30 != 1);
  }

  v25 = sub_1AFA56CA0();

  sub_1AF441DD8(0);
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_1AFE4C680;
  *(v26 + 32) = &unk_1F2503110;
  *(v26 + 40) = &unk_1F2503150;
  *(v26 + 48) = v25;
  v27 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v27;
}

double sub_1AFB03B5C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, unint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, unint64_t a9)
{
  sub_1AFB0E3C8(a1, a2, a3, a4, a5, a6, a6, 0, v12, a7, a9);
  result = *v12;
  v11 = v12[1];
  *a8 = v12[0];
  *(a8 + 16) = v11;
  *(a8 + 32) = v13;
  return result;
}

uint64_t sub_1AFB03BB4@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  result = sub_1AFB01F1C(1);
  if (!v2)
  {
    v21 = 0;
    v7 = result;
    v8 = *(result + 16);
    v9 = sub_1AF8BB88C();
    v11 = v10;
    v19 = sub_1AFAFA374();
    v20 = v12;
    if (qword_1EB6372E0 != -1)
    {
      swift_once();
    }

    MEMORY[0x1B2718AE0](qword_1EB6C35A8, unk_1EB6C35B0);
    MEMORY[0x1B2718AE0](v9, v11);

    v13 = sub_1AFB12954(v7);
    v15 = v14;

    MEMORY[0x1B2718AE0](v13, v15);

    if (v8)
    {
      v16 = v19;
      type metadata accessor for MetalTrampolineCodeGen();
      LOBYTE(v19) = v4;
      BYTE1(v19) = v5;
      sub_1AFAF8704(v16, v20, &v19);

      v17 = sub_1AFDFC128();
      return (*(*(v17 - 8) + 56))(a2, 0, 1, v17);
    }

    else
    {
      v18 = sub_1AFDFC128();
      (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
    }
  }

  return result;
}

uint64_t sub_1AFB03DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, unint64_t a10)
{
  v13 = sub_1AFB08DA4(a1, a2, a3, a4, 1, 1);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if (a10 >= 2)
  {
    if (qword_1EB6372E0 != -1)
    {
      swift_once();
    }

    v31 = qword_1EB6C35A8;
    v33 = unk_1EB6C35B0;

    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
    MEMORY[0x1B2718AE0](v31, v33);

    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
    MEMORY[0x1B2718AE0](a7, a10);

    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
    MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF25E80);
  }

  MEMORY[0x1B2718AE0](10, 0xE100000000000000);
  MEMORY[0x1B2718AE0](v17, v19);

  sub_1AFB12AC4(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = 0x22206E7265747865;
  *(inited + 40) = 0xEA00000000002243;
  if (a10 >= 2)
  {
    v21 = sub_1AF420554(1, 2, 1, inited);
    *(v21 + 2) = 2;
    *(v21 + 6) = 0xD000000000000026;
    *(v21 + 7) = 0x80000001AFF25150;
  }

  v22 = sub_1AFA53AE8(0xD000000000000018, 0x80000001AFF25180, 1684631414, 0xE400000000000000, 0, 0, &unk_1F2501008, 0);
  v24 = v23;
  swift_arrayDestroy();
  v32 = v22;
  MEMORY[0x1B2718AE0](686880, 0xE300000000000000);
  v25 = sub_1AFB04168(a5 & 1, a6, v13, v15);

  sub_1AFA5413C(v25);

  v26 = sub_1AFAF888C(4);
  v28 = v27;

  MEMORY[0x1B2718AE0](v26, v28);

  MEMORY[0x1B2718AE0](125, 0xE100000000000000);
  MEMORY[0x1B2718AE0](v32, v24);

  *a8 = &unk_1F2501048;
  a8[1] = 0;
  a8[2] = 0xE000000000000000;
  a8[3] = 11565;
  a8[4] = 0xE200000000000000;
  return result;
}

uint64_t sub_1AFB04168(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v111 = sub_1AFA56CA0();
    sub_1AFB12A64(&unk_1F2500E60, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
  }

  else
  {
    v111 = MEMORY[0x1E69E7CC0];
  }

  v7 = MEMORY[0x1E69E7CC0];
  v119 = *(a2 + 16);
  if (v119)
  {
    v114 = a3;
    v115 = a4;
    v110 = sub_1AFA56CA0();
    sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
    swift_arrayDestroy();
    v8 = 0;
    v116 = a2;
    v9 = (a2 + 48);
    while (1)
    {
      v10 = *(v9 - 2);
      v11 = *v9;
      v12 = (v10 >> 59) & 0x1E | (v10 >> 2) & 1;
      if (v12 == 15)
      {
        v18 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v17 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v19 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v120 = *v9;
        sub_1AF444224(v11);
        sub_1AF443EE0(v10);
        sub_1AF90E730(v19);
        if (!v20)
        {
          goto LABEL_80;
        }

        v21 = sub_1AFAF9348(v20, 0);
        v23 = v22;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](v21, v23);
        MEMORY[0x1B2718AE0](0x5F74756F6E69202ALL, 0xEF7265746E696F70);
        v24 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v24);

        MEMORY[0x1B2718AE0](0x2828203D20, 0xE500000000000000);
        MEMORY[0x1B2718AE0](v21, v23);

        MEMORY[0x1B2718AE0](0xD000000000000031, 0x80000001AFF47440);
        MEMORY[0x1B2718AE0](v18, v17);
        MEMORY[0x1B2718AE0](992553250, 0xE400000000000000);
        sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1AFE431C0;
        *(inited + 32) = 0;
        *(inited + 40) = 0xE000000000000000;
        sub_1AF441DD8(0);
        *(inited + 48) = 0;
        *(inited + 56) = 0;
        v26 = swift_initStackObject();
        *(v26 + 16) = xmmword_1AFE431C0;
        *(v26 + 32) = inited;
        v27 = v26 + 32;
        v28 = sub_1AFA56CA0();
        swift_setDeallocating();
        sub_1AFB12A64(v27, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
      }

      else
      {
        if (v12 == 16 && v10 == 0x8000000000000000)
        {
          sub_1AF441DD8(0);
          v44 = swift_initStackObject();
          *(v44 + 16) = xmmword_1AFE431C0;
          *(v44 + 32) = MEMORY[0x1E69E7CC0];
          v45 = v44 + 32;
          sub_1AF444224(v11);
          v28 = sub_1AFA56CA0();
          swift_setDeallocating();
          sub_1AFB12A64(v45, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
          goto LABEL_20;
        }

        v14 = *(v9 - 8);
        sub_1AF444224(*v9);
        sub_1AF443EE0(v10);
        sub_1AFA9EF20(v10);
        v120 = v11;
        if (sub_1AFADB4E4(v15, 0))
        {
          if ((v14 & 2) != 0)
          {
            v16 = MEMORY[0x1E69E6878];
          }

          else
          {
            v16 = MEMORY[0x1E69E6270];
          }
        }

        else
        {
          sub_1AFA9EF20(v10);
        }

        v29 = sub_1AFAF9348(v16, 0);
        v31 = v30;
        sub_1AFDFE218();

        MEMORY[0x1B2718AE0](0x5F74756F6E69202ALL, 0xEF7265746E696F70);
        v32 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v32);

        MEMORY[0x1B2718AE0](0x2828203D20, 0xE500000000000000);
        MEMORY[0x1B2718AE0](v29, v31);

        MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF47420);
        v33 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v33);

        MEMORY[0x1B2718AE0](3877213, 0xE300000000000000);
        v34 = v29;
        v35 = v31;
        sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
        v36 = swift_initStackObject();
        *(v36 + 16) = xmmword_1AFE431C0;
        *(v36 + 32) = v34;
        *(v36 + 40) = v35;
        sub_1AF441DD8(0);
        *(v36 + 48) = 0;
        *(v36 + 56) = 0;
        v37 = swift_initStackObject();
        *(v37 + 16) = xmmword_1AFE431C0;
        *(v37 + 32) = v36;
        v38 = v37 + 32;
        v28 = sub_1AFA56CA0();
        swift_setDeallocating();
        sub_1AFB12A64(v38, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
      }

      v11 = v120;
LABEL_20:
      sub_1AF441DD8(0);
      v39 = swift_initStackObject();
      *(v39 + 16) = xmmword_1AFE431C0;
      *(v39 + 32) = v28;
      v40 = v39 + 32;
      v41 = sub_1AFA56CA0();
      swift_setDeallocating();
      sub_1AFB12A64(v40, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1AF426BC8(0, v7[2] + 1, 1, v7);
      }

      v43 = v7[2];
      v42 = v7[3];
      if (v43 >= v42 >> 1)
      {
        v7 = sub_1AF426BC8(v42 > 1, v43 + 1, 1, v7);
      }

      ++v8;
      v9 += 5;
      sub_1AF443F24(v10);
      sub_1AF444AF4(v11);
      v7[2] = v43 + 1;
      v7[v43 + 4] = v41;
      if (v119 == v8)
      {
        a2 = v116;
        a3 = v114;
        a4 = v115;
        goto LABEL_28;
      }
    }
  }

  v110 = MEMORY[0x1E69E7CC0];
LABEL_28:
  v46 = sub_1AFA56CA0();

  v47 = MEMORY[0x1E69E7CC0];
  v109 = v46;
  if (a1)
  {
    sub_1AF441DD8(0);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1AFE4C620;
    *(v48 + 32) = &unk_1F2500F18;
    *(v48 + 40) = v47;
    v108 = sub_1AFA56CA0();
    swift_setDeallocating();
    sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v49 = 4;
  }

  else
  {
    v108 = MEMORY[0x1E69E7CC0];
    v49 = 0;
  }

  sub_1AFA53EE4(a3, a4, 0, a2);

  v50 = sub_1AFAF888C(v49);
  v52 = v51;

  MEMORY[0x1B2718AE0](59, 0xE100000000000000);

  sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  v53 = swift_initStackObject();
  *(v53 + 16) = xmmword_1AFE431C0;
  *(v53 + 32) = v50;
  *(v53 + 40) = v52;
  *(v53 + 48) = 0;
  *(v53 + 56) = 0;
  v54 = MEMORY[0x1E69E7CC0];
  v107 = v53;
  if (!v119)
  {
LABEL_73:
    v102 = sub_1AFA56CA0();

    if (a1)
    {
      v103 = sub_1AFA56CA0();
      sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
      swift_arrayDestroy();
    }

    else
    {
      v103 = MEMORY[0x1E69E7CC0];
    }

    sub_1AF441DD8(0);
    v104 = swift_allocObject();
    *(v104 + 16) = xmmword_1AFE4C5E0;
    *(v104 + 32) = &unk_1F2500D80;
    *(v104 + 40) = &unk_1F2500DC0;
    *(v104 + 48) = v111;
    *(v104 + 56) = v110;
    *(v104 + 64) = v109;
    *(v104 + 72) = v108;
    *(v104 + 80) = v107;
    *(v104 + 88) = v102;
    *(v104 + 96) = v103;
    v105 = sub_1AFA56CA0();
    swift_setDeallocating();
    sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    return v105;
  }

  v55 = 0;
  v56 = 4;
  if ((a1 & 1) == 0)
  {
    v56 = 0;
  }

  v112 = v56;
  v57 = (a2 + 48);
  v58 = &type metadata for CodeEmitter.Code;
  v59 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v60 = *(v57 - 2);
    v121 = *v57;
    v61 = (v60 >> 59) & 0x1E | (v60 >> 2) & 1;
    if (v61 == 10)
    {
      break;
    }

    if (v61 == 5 || v61 == 4)
    {
      v118 = v59;
      v62 = 66;
      goto LABEL_40;
    }

    sub_1AF443EE0(v60);
    sub_1AF444224(v121);
    v72 = v54;
LABEL_68:
    sub_1AF441DD8(0);
    v97 = swift_initStackObject();
    *(v97 + 16) = xmmword_1AFE431C0;
    *(v97 + 32) = v72;
    v98 = v97 + 32;
    v99 = sub_1AFA56CA0();
    swift_setDeallocating();
    sub_1AFB12A64(v98, &unk_1ED723290, v58, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_1AF426BC8(0, v59[2] + 1, 1, v59);
    }

    v101 = v59[2];
    v100 = v59[3];
    if (v101 >= v100 >> 1)
    {
      v59 = sub_1AF426BC8(v100 > 1, v101 + 1, 1, v59);
    }

    ++v55;
    v57 += 5;
    sub_1AF443F24(v60);
    sub_1AF444AF4(v121);
    v59[2] = v101 + 1;
    v59[v101 + 4] = v99;
    if (v119 == v55)
    {
      goto LABEL_73;
    }
  }

  v118 = v59;
  v62 = 58;
LABEL_40:
  v117 = *((v60 & 0xFFFFFFFFFFFFFFBLL) + v62);
  sub_1AF443EE0(v60);
  sub_1AF444224(v121);

  if ((v117 & 3) == 0)
  {
    v70 = v54;
    v71 = v58;
LABEL_67:
    sub_1AF441DD8(0);
    v95 = swift_initStackObject();
    *(v95 + 16) = xmmword_1AFE431C0;
    *(v95 + 32) = v70;
    v96 = v95 + 32;
    v72 = sub_1AFA56CA0();
    swift_setDeallocating();
    sub_1AFB12A64(v96, &unk_1ED723290, v71, MEMORY[0x1E69E62F8], sub_1AFB12AC4);

    v58 = v71;
    v59 = v118;
    goto LABEL_68;
  }

  sub_1AFA9EF20(v60);
  if ((sub_1AFADB4E4(v63, 2u) & 1) == 0)
  {
    sub_1AFA9EF20(v60);
  }

  if (v61 != 10)
  {
    goto LABEL_58;
  }

  if ((*((v60 & 0xFFFFFFFFFFFFFFBLL) + 0x3A) & 0x80) != 0)
  {
    if ((*((v60 & 0xFFFFFFFFFFFFFFBLL) + 0x38) & 1) == 0)
    {
      goto LABEL_61;
    }

LABEL_58:
    sub_1AFDFE218();

    v73 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v73);

    v74 = 0xD000000000000017;
    v75 = 0x80000001AFF47480;
    sub_1AF441DD8(0);
    v76 = swift_initStackObject();
    *(v76 + 16) = xmmword_1AFE431C0;
    *(v76 + 32) = MEMORY[0x1E69E7CC0];
    v77 = v76 + 32;
    v78 = sub_1AFA56CA0();
    swift_setDeallocating();
    sub_1AFB12A64(v77, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
    v79 = v117;
    if (v117)
    {
LABEL_63:
      MEMORY[0x1B2718AE0](v74, v75);

      MEMORY[0x1B2718AE0](0x2E31203D20772E29, 0xEA00000000003B30);
      v85 = sub_1AFAF888C(v49);
      v87 = v86;

      v88 = swift_initStackObject();
      *(v88 + 16) = xmmword_1AFE431C0;
      *(v88 + 32) = v85;
      *(v88 + 40) = v87;
      sub_1AF441DD8(0);
      *(v88 + 48) = 0;
      *(v88 + 56) = 0;
      goto LABEL_65;
    }

LABEL_59:
    if ((v79 & 2) == 0)
    {

      v54 = MEMORY[0x1E69E7CC0];
      v80 = MEMORY[0x1E69E7CC0];
      v71 = &type metadata for CodeEmitter.Code;
LABEL_66:
      sub_1AF441DD8(0);
      v94 = swift_initStackObject();
      *(v94 + 16) = xmmword_1AFE4C680;
      *(v94 + 32) = v54;
      *(v94 + 40) = v78;
      *(v94 + 48) = v80;
      v70 = sub_1AFA56CA0();
      swift_setDeallocating();
      sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
      swift_arrayDestroy();
      goto LABEL_67;
    }

    MEMORY[0x1B2718AE0](v74, v75);

    MEMORY[0x1B2718AE0](0x2E30203D20772E29, 0xEA00000000003B30);
    v89 = sub_1AFAF888C(v112);
    v91 = v90;

    v88 = swift_initStackObject();
    *(v88 + 16) = xmmword_1AFE431C0;
    *(v88 + 32) = v89;
    *(v88 + 40) = v91;
    sub_1AF441DD8(0);
    *(v88 + 48) = 0;
    *(v88 + 56) = 0;
LABEL_65:
    v92 = swift_initStackObject();
    *(v92 + 16) = xmmword_1AFE431C0;
    *(v92 + 32) = v88;
    v93 = v92 + 32;
    v80 = sub_1AFA56CA0();
    swift_setDeallocating();
    v71 = &type metadata for CodeEmitter.Code;
    sub_1AFB12A64(v93, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
    v54 = MEMORY[0x1E69E7CC0];
    goto LABEL_66;
  }

  if (*((v60 & 0xFFFFFFFFFFFFFFBLL) + 0x38))
  {
    v64 = *((v60 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
    v65 = sub_1AFDFDFD8();
    if (!swift_conformsToProtocol2() || v65 == 0)
    {
      goto LABEL_58;
    }

    v67 = sub_1AFDFDFD8();
    if (!swift_conformsToProtocol2())
    {
      goto LABEL_78;
    }

    if (!sub_1AF640E28(v67))
    {
      goto LABEL_58;
    }

    sub_1AFDFDFD8();
    if (!swift_conformsToProtocol2())
    {
      goto LABEL_79;
    }

    v68 = sub_1AF6411A4();
    sub_1AFAF6E24(v64, v64);
    if (v68 != v69)
    {
      goto LABEL_58;
    }
  }

LABEL_61:
  sub_1AFDFDFD8();
  if (swift_conformsToProtocol2())
  {
    sub_1AF6411A4();
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF474A0);
    v81 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v81);

    MEMORY[0x1B2718AE0](539697193, 0xE400000000000000);
    v82 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v82);

    MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF474D0);
    v74 = 0;
    v75 = 0xE000000000000000;
    sub_1AF441DD8(0);
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_1AFE431C0;
    *(v83 + 32) = MEMORY[0x1E69E7CC0];
    v84 = v83 + 32;
    v78 = sub_1AFA56CA0();
    swift_setDeallocating();
    sub_1AFB12A64(v84, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
    swift_deallocClassInstance();
    v79 = v117;
    if (v117)
    {
      goto LABEL_63;
    }

    goto LABEL_59;
  }

  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20676E697373696DLL, 0xEE00203A65736163);
  sub_1AFDFE458();
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFB054AC(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  v54 = *(a1 + 16);
  if (!v54)
  {
LABEL_53:
    v48 = sub_1AFA56CA0();

    sub_1AF441DD8(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AFE431C0;
    *(inited + 32) = v48;
    v50 = inited + 32;
    v51 = sub_1AFA56CA0();
    swift_setDeallocating();
    sub_1AFB12A64(v50, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
    return v51;
  }

  v2 = 0;
  v3 = (a1 + 48);
  while (1)
  {
    v4 = *(v3 - 2);
    v5 = *(v3 - 8);
    v6 = *v3;
    v58 = 0;
    v59 = 0xE000000000000000;
    v7 = (v4 >> 59) & 0x1E | (v4 >> 2) & 1;
    v8 = v4 == 0x8000000000000000 && v7 == 16;
    v55 = v6;
    if (v8)
    {
      sub_1AF444224(v6);
      MEMORY[0x1B2718AE0](0x635F747069726373, 0xEE00747865746E6FLL);
      sub_1AF441DD8(0);
      v16 = swift_initStackObject();
      *(v16 + 16) = xmmword_1AFE431C0;
      v17 = MEMORY[0x1E69E7CC0];
      *(v16 + 32) = MEMORY[0x1E69E7CC0];
      v18 = v16 + 32;
      v19 = sub_1AFA56CA0();
      goto LABEL_46;
    }

    if (v7 != 10)
    {
      sub_1AF444224(v6);
      sub_1AF443EE0(v4);
      if (v7 != 2)
      {
        goto LABEL_43;
      }

      sub_1AFB12BD8((v4 & 0xFFFFFFFFFFFFFFBLL) + 16, v56, sub_1AF95BAC8);
      sub_1AF4459C8(v56);
      strcpy(v56, "inout_pointer");
      HIWORD(v56[1]) = -4864;
      v57 = v2;
      v20 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v20);

      MEMORY[0x1B2718AE0](v56[0], v56[1]);
      goto LABEL_44;
    }

    v9 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
    if ((*((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x3A) & 0x80) == 0)
    {
      break;
    }

    sub_1AF444224(v6);
    sub_1AF443EE0(v4);
    if ((v9 & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_23:
    if ((*((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x3A) & 0x80) != 0)
    {
      if ((*((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x38) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if ((*((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x38) & 1) == 0)
      {
        goto LABEL_43;
      }

      v21 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v22 = sub_1AFDFDFD8();
      if (swift_conformsToProtocol2() && v22 != 0)
      {
        v24 = sub_1AFDFDFD8();
        result = swift_conformsToProtocol2();
        if (!result)
        {
          goto LABEL_57;
        }

        if (sub_1AF640E28(v24))
        {
          sub_1AFDFDFD8();
          result = swift_conformsToProtocol2();
          if (!result)
          {
            goto LABEL_58;
          }

          v25 = sub_1AF6411A4();
          sub_1AFAF6E24(v21, v21);
          if (v25 == v26)
          {
LABEL_43:
            v56[0] = 0;
            v56[1] = 0xE000000000000000;
            sub_1AFDFE218();

            strcpy(v56, "*inout_pointer");
            HIBYTE(v56[1]) = -18;
            v57 = v2;
            v35 = sub_1AFDFEA08();
            MEMORY[0x1B2718AE0](v35);

            MEMORY[0x1B2718AE0](v56[0], v56[1]);
            goto LABEL_44;
          }
        }
      }
    }

    v56[0] = 0;
    v56[1] = 0xE000000000000000;
    sub_1AFDFE218();

    strcpy(v56, "inout_pointer");
    HIWORD(v56[1]) = -4864;
    v57 = v2;
    v27 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v27);

    MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF474F0);
    MEMORY[0x1B2718AE0](v56[0], v56[1]);
LABEL_44:

    sub_1AF441DD8(0);
    v36 = swift_initStackObject();
    *(v36 + 16) = xmmword_1AFE431C0;
    v37 = MEMORY[0x1E69E7CC0];
    *(v36 + 32) = MEMORY[0x1E69E7CC0];
    v38 = v36 + 32;
    v19 = sub_1AFA56CA0();
    swift_setDeallocating();
    sub_1AFB12A64(v38, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
    sub_1AFA9EF20(v4);
    if ((sub_1AFADB4E4(v39, 0) & 1) == 0)
    {
      v17 = v37;
      goto LABEL_48;
    }

    v56[0] = 38;
    v56[1] = 0xE100000000000000;
    MEMORY[0x1B2718AE0](v58, v59);

    v58 = v56[0];
    v59 = v56[1];
    v40 = swift_initStackObject();
    *(v40 + 16) = xmmword_1AFE431C0;
    *(v40 + 32) = v37;
    v18 = v40 + 32;
    v17 = sub_1AFA56CA0();
LABEL_46:
    swift_setDeallocating();
    sub_1AFB12A64(v18, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
LABEL_48:
    v41 = v58;
    v42 = v59;
    sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
    v43 = swift_initStackObject();
    *(v43 + 16) = xmmword_1AFE431C0;
    *(v43 + 32) = v41;
    *(v43 + 40) = v42;
    sub_1AF441DD8(0);
    *(v43 + 48) = 0;
    *(v43 + 56) = 0;
    v44 = swift_initStackObject();
    *(v44 + 16) = xmmword_1AFE4C680;
    *(v44 + 32) = v19;
    *(v44 + 40) = v17;
    *(v44 + 48) = v43;
    v45 = sub_1AFA56CA0();
    swift_setDeallocating();
    sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
    swift_arrayDestroy();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1AF426BC8(0, v1[2] + 1, 1, v1);
    }

    v47 = v1[2];
    v46 = v1[3];
    if (v47 >= v46 >> 1)
    {
      v1 = sub_1AF426BC8(v46 > 1, v47 + 1, 1, v1);
    }

    ++v2;
    v3 += 5;
    sub_1AF443F24(v4);
    sub_1AF444AF4(v55);
    v1[2] = v47 + 1;
    v1[v47 + 4] = v45;
    if (v54 == v2)
    {
      goto LABEL_53;
    }
  }

  if (*((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x38))
  {
    v52 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
    sub_1AF444224(v6);
    sub_1AF443EE0(v4);
    v10 = sub_1AFDFDFD8();
    if (swift_conformsToProtocol2())
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = sub_1AFDFDFD8();
      result = swift_conformsToProtocol2();
      if (!result)
      {
        goto LABEL_55;
      }

      if (sub_1AF640E28(v12))
      {
        sub_1AFDFDFD8();
        result = swift_conformsToProtocol2();
        if (!result)
        {
          goto LABEL_56;
        }

        v14 = sub_1AF6411A4();
        sub_1AFAF6E24(v52, v52);
        if (v14 == v15)
        {
          goto LABEL_35;
        }
      }
    }

    goto LABEL_23;
  }

  sub_1AF444224(v6);
  sub_1AF443EE0(v4);
LABEL_35:
  sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v53 = sub_1AF6411A4();
    sub_1AFA9EF20(v4);
    if (sub_1AFADB4E4(v28, 0))
    {
      if ((v5 & 2) != 0)
      {
        v29 = MEMORY[0x1E69E6878];
      }

      else
      {
        v29 = MEMORY[0x1E69E6270];
      }
    }

    else
    {
      sub_1AFA9EF20(v4);
    }

    v30 = sub_1AFAF9348(v29, 0);
    v32 = v31;
    v56[0] = 0;
    v56[1] = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](10282, 0xE200000000000000);
    MEMORY[0x1B2718AE0](v30, v32);

    MEMORY[0x1B2718AE0](0xD000000000000018, 0x80000001AFF47510);
    v57 = v2;
    v33 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v33);

    MEMORY[0x1B2718AE0](539697193, 0xE400000000000000);
    v57 = v53;
    v34 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v34);

    MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF474D0);
    MEMORY[0x1B2718AE0](v56[0], v56[1]);
    goto LABEL_44;
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

uint64_t sub_1AFB05EA8(unint64_t a1, uint64_t a2)
{
  v5 = sub_1AFB05FC0(a1, a2);
  v6 = sub_1AFA5413C(v5);
  v8 = v7;

  MEMORY[0x1B2718AE0](v6, v8);

  MEMORY[0x1B2718AE0](10, 0xE100000000000000);
  v9 = sub_1AFB063EC(a1, a2);
  v10 = sub_1AFA5413C(v9);
  v12 = v11;

  MEMORY[0x1B2718AE0](v10, v12);

  v13 = MEMORY[0x1B2718AE0](10, 0xE100000000000000);
  v14 = sub_1AFB069A0(v2, v13);
  v15 = sub_1AFA5413C(v14);
  v17 = v16;

  MEMORY[0x1B2718AE0](v15, v17);

  return 10;
}

uint64_t sub_1AFB05FC0(unint64_t a1, uint64_t a2)
{

  sub_1AF490814(v2);
  v3 = &qword_1AFE43000;
  v28 = *(a1 + 16);
  if (v28)
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v6 = *(*(a1 + 32 + 40 * v4) + 16);
      if (v6)
      {
        v29 = v5;
        v30 = v4;
        v7 = ( + 40);
        v8 = MEMORY[0x1E69E7CC0];
        do
        {
          v10 = *(v7 - 1);
          v9 = *v7;

          sub_1AFDFE218();

          MEMORY[0x1B2718AE0](v10, v9);

          MEMORY[0x1B2718AE0](0x292A2064696F7628, 0xE90000000000003BLL);
          sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1AFE431C0;
          *(inited + 32) = 0xD000000000000010;
          *(inited + 40) = 0x80000001AFF476C0;
          sub_1AF441DD8(0);
          *(inited + 48) = 0;
          *(inited + 56) = 0;
          v12 = swift_initStackObject();
          *(v12 + 16) = xmmword_1AFE431C0;
          *(v12 + 32) = inited;
          v13 = v12 + 32;
          v14 = sub_1AFA56CA0();
          swift_setDeallocating();
          sub_1AFB12A64(v13, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1AF426BC8(0, v8[2] + 1, 1, v8);
          }

          v16 = v8[2];
          v15 = v8[3];
          if (v16 >= v15 >> 1)
          {
            v8 = sub_1AF426BC8(v15 > 1, v16 + 1, 1, v8);
          }

          v8[2] = v16 + 1;
          v8[v16 + 4] = v14;
          v7 += 3;
          --v6;
        }

        while (v6);

        v5 = v29;
        v4 = v30;
      }

      v17 = sub_1AFA56CA0();

      sub_1AF441DD8(0);
      v18 = swift_initStackObject();
      *(v18 + 16) = xmmword_1AFE431C0;
      *(v18 + 32) = v17;
      v19 = v18 + 32;
      v20 = sub_1AFA56CA0();
      swift_setDeallocating();
      sub_1AFB12A64(v19, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1AF426BC8(0, v5[2] + 1, 1, v5);
      }

      v22 = v5[2];
      v21 = v5[3];
      if (v22 >= v21 >> 1)
      {
        v5 = sub_1AF426BC8(v21 > 1, v22 + 1, 1, v5);
      }

      ++v4;
      v5[2] = v22 + 1;
      v5[v22 + 4] = v20;
    }

    while (v4 != v28);

    v3 = &qword_1AFE43000;
  }

  else
  {
  }

  v23 = sub_1AFA56CA0();

  sub_1AF441DD8(0);
  v24 = swift_initStackObject();
  *(v24 + 16) = *(v3 + 28);
  *(v24 + 32) = v23;
  v25 = v24 + 32;
  v26 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AFB12A64(v25, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
  return v26;
}

uint64_t sub_1AFB063EC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFB06540(a1, a2);
  sub_1AFA5413C(v2);

  v3 = sub_1AFAF888C(4);
  v5 = v4;

  sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  sub_1AF441DD8(0);
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1AFE4C6A0;
  *(v7 + 32) = &unk_1F2503D78;
  *(v7 + 40) = &unk_1F2503DB8;
  *(v7 + 48) = &unk_1F2503DF8;
  *(v7 + 56) = inited;
  *(v7 + 64) = &unk_1F2503E38;
  v8 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v8;
}

uint64_t sub_1AFB06540(uint64_t a1, uint64_t a2)
{

  sub_1AF490814(v2);
  v26 = *(a1 + 16);
  if (v26)
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      v5 = *(*(a1 + 32 + 40 * v3) + 16);
      if (v5)
      {
        v27 = v4;
        v28 = v3;
        v6 = ( + 40);
        v7 = MEMORY[0x1E69E7CC0];
        do
        {
          v8 = *(v6 - 1);
          v9 = *v6;

          sub_1AFDFE218();

          MEMORY[0x1B2718AE0](v8, v9);

          MEMORY[0x1B2718AE0](0x64696F7628202C22, 0xEB00000000292A20);
          MEMORY[0x1B2718AE0](v8, v9);

          MEMORY[0x1B2718AE0](2915616, 0xE300000000000000);
          sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1AFE431C0;
          *(inited + 32) = 2236539;
          *(inited + 40) = 0xE300000000000000;
          sub_1AF441DD8(0);
          *(inited + 48) = 0;
          *(inited + 56) = 0;
          v11 = swift_initStackObject();
          *(v11 + 16) = xmmword_1AFE431C0;
          *(v11 + 32) = inited;
          v12 = v11 + 32;
          v13 = sub_1AFA56CA0();
          swift_setDeallocating();
          sub_1AFB12A64(v12, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1AF426BC8(0, v7[2] + 1, 1, v7);
          }

          v15 = v7[2];
          v14 = v7[3];
          if (v15 >= v14 >> 1)
          {
            v7 = sub_1AF426BC8(v14 > 1, v15 + 1, 1, v7);
          }

          v7[2] = v15 + 1;
          v7[v15 + 4] = v13;
          v6 += 3;
          --v5;
        }

        while (v5);

        v4 = v27;
        v3 = v28;
      }

      v16 = sub_1AFA56CA0();

      sub_1AF441DD8(0);
      v17 = swift_initStackObject();
      *(v17 + 16) = xmmword_1AFE431C0;
      *(v17 + 32) = v16;
      v18 = v17 + 32;
      v19 = sub_1AFA56CA0();
      swift_setDeallocating();
      sub_1AFB12A64(v18, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1AF426BC8(0, v4[2] + 1, 1, v4);
      }

      v21 = v4[2];
      v20 = v4[3];
      if (v21 >= v20 >> 1)
      {
        v4 = sub_1AF426BC8(v20 > 1, v21 + 1, 1, v4);
      }

      ++v3;
      v4[2] = v21 + 1;
      v4[v21 + 4] = v19;
    }

    while (v3 != v26);
  }

  v22 = sub_1AFA56CA0();

  sub_1AF441DD8(0);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1AFE4C620;
  *(v23 + 32) = v22;
  *(v23 + 40) = &unk_1F2503D38;
  v24 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v24;
}

uint64_t sub_1AFB069A0(uint64_t a1, double a2)
{
  sub_1AFB0EF20(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  v4 = MEMORY[0x1E69E7738];
  *(v3 + 56) = MEMORY[0x1E69E76D8];
  *(v3 + 64) = v4;
  *(v3 + 32) = 0x6D61676963766678;
  v5 = sub_1AFDFCF38();
  v7 = v6;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000032, 0x80000001AFF47600);
  MEMORY[0x1B2718AE0](0x435F415441445F5FLL, 0xEC00000054534E4FLL);
  MEMORY[0x1B2718AE0](44, 0xE100000000000000);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF36600);
  MEMORY[0x1B2718AE0](0xD00000000000005ELL, 0x80000001AFF47640);
  MEMORY[0x1B2718AE0](v5, v7);

  MEMORY[0x1B2718AE0](2236460, 0xE300000000000000);
  MEMORY[0x1B2718AE0](*(a1 + 40), *(a1 + 48));
  MEMORY[0x1B2718AE0](0xD000000000000018, 0x80000001AFF476A0);
  sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = 0;
  *(inited + 40) = 0xE000000000000000;
  sub_1AF441DD8(0);
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_1AFE431C0;
  *(v9 + 32) = inited;
  v10 = v9 + 32;
  v11 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AFB12A64(v10, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
  return v11;
}

uint64_t sub_1AFB06C28(char a1)
{
  v4 = v2;
  v6 = sub_1AFB01F1C(a1);
  if (!v3)
  {
    v7 = v6;
    v1 = *(v6 + 16);
    sub_1AFAFA374();
    if (qword_1EB6372E0 != -1)
    {
      swift_once();
    }

    v19 = qword_1EB6C35A8;
    v20 = unk_1EB6C35B0;

    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
    MEMORY[0x1B2718AE0](v19, v20);

    v9 = *(v2 + 16);
    v8 = *(v2 + 24);
    v10 = *(v4 + 32);
    type metadata accessor for SwiftTrampolineCodeGen();
    swift_initStackObject();

    sub_1AFB0F318(v9, v8, v10);

    v12 = sub_1AFB01F1C(a1 & 1);

    v13 = sub_1AFB05EA8(v7, v12);
    v15 = v14;

    v16 = sub_1AFB12954(v7);
    v18 = v17;

    MEMORY[0x1B2718AE0](v16, v18);

    MEMORY[0x1B2718AE0](v13, v15);
  }

  return v1;
}

uint64_t sub_1AFB06E28@<X0>(char a1@<W4>, uint64_t a2@<X6>, void *a3@<X8>, uint64_t x0_0@<X0>, uint64_t a5@<X1>, uint64_t a6@<X2>, uint64_t a7@<X3>, unint64_t a4)
{
  sub_1AFB0EC30(x0_0, a5, a6, a7);
  v11 = v10;
  v13 = v12;
  v105 = a3;
  if (a4 >= 2)
  {
    MEMORY[0x1B2718AE0](0xD000000000000029, 0x80000001AFF47370);
    MEMORY[0x1B2718AE0](0xD00000000000007CLL, 0x80000001AFF473A0);
    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
    MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF25E80);

    v14 = 0x2063696C627570;
    v15 = 0xE700000000000000;
  }

  else
  {
    v14 = 0;
    v15 = 0xE000000000000000;
  }

  MEMORY[0x1B2718AE0](10, 0xE100000000000000);
  MEMORY[0x1B2718AE0](v11, v13);

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x6C636564635F400ALL, 0xEA00000000002228);
  MEMORY[0x1B2718AE0](0xD000000000000018, 0x80000001AFF25180);
  MEMORY[0x1B2718AE0](665890, 0xE300000000000000);
  MEMORY[0x1B2718AE0](v14, v15);

  MEMORY[0x1B2718AE0](0x20636E7566, 0xE500000000000000);
  MEMORY[0x1B2718AE0](0xD000000000000018, 0x80000001AFF25180);
  MEMORY[0x1B2718AE0](0xD000000000000026, 0x80000001AFF47020);
  MEMORY[0x1B2718AE0](0, 0xE000000000000000);

  v16 = sub_1AFAF888C(4);
  MEMORY[0x1B2718AE0](v16);

  if (a1)
  {
    v17 = sub_1AFAF888C(4);
    MEMORY[0x1B2718AE0](v17);
  }

  v110 = *(a2 + 16);
  v107 = a2;
  if (v110)
  {
    v18 = sub_1AFAF888C(4);
    MEMORY[0x1B2718AE0](v18);

    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
    v19 = 0;
    v20 = (a2 + 48);
    do
    {
      v24 = *(v20 - 2);
      if (v24 != 0x8000000000000000)
      {
        v25 = *v20;
        sub_1AF443EE0(v24);
        sub_1AF444224(v25);
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0x6F6E49702074656CLL, 0xEA00000000007475);
        v26 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v26);

        MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF47130);
        v27 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v27);

        MEMORY[0x1B2718AE0](0xD00000000000001BLL, 0x80000001AFF47150);
        sub_1AFA9EF20(v24);
        if ((sub_1AFADB4E4(v28, 3u) & 1) == 0)
        {
          sub_1AFA9EF20(v24);
        }

        v29 = sub_1AFDFF4B8();
        v111 = v30;

        v31 = sub_1AFDFD178();

        if (v31)
        {
          sub_1AFDFD078();
          sub_1AFDFCFD8();
        }

        MEMORY[0x1B2718AE0](v29, v111);

        MEMORY[0x1B2718AE0](0xA29666C65732ELL, 0xE700000000000000);
        v21 = sub_1AFAF888C(4);
        v23 = v22;

        MEMORY[0x1B2718AE0](v21, v23);
        sub_1AF443F24(v24);
        sub_1AF444AF4(v25);
      }

      ++v19;
      v20 += 5;
    }

    while (v110 != v19);
  }

  else
  {
    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
  }

  if (a1)
  {
    v32 = sub_1AFAF888C(4);
    MEMORY[0x1B2718AE0](v32);

    v33 = 8;
  }

  else
  {
    v33 = 4;
  }

  MEMORY[0x1B2718AE0](40, 0xE100000000000000);
  v34 = sub_1AFAF888C(v33);
  v36 = v35;

  MEMORY[0x1B2718AE0](v34, v36);

  v109 = v33;
  if (!v110)
  {
    v99 = sub_1AFAF888C(v33);
    MEMORY[0x1B2718AE0](v99);

LABEL_124:
    if (a1)
    {
      v100 = v109 - 4;
      v101 = sub_1AFAF888C(v109 - 4);
      MEMORY[0x1B2718AE0](v101);

      v102 = v105;
    }

    else
    {
      v102 = v105;
      v100 = v109;
    }

    v103 = sub_1AFAF888C(v100 - 4);
    MEMORY[0x1B2718AE0](v103);

    *v102 = &unk_1F2502FA0;
    v102[1] = 0;
    v102[2] = 0xE000000000000000;
    v102[3] = 11565;
    v102[4] = 0xE200000000000000;
    return result;
  }

  v37 = 0;
  v38 = (v107 + 48);
  while (1)
  {
    v47 = *(v38 - 2);
    v48 = *(v38 - 8);
    v49 = *v38;
    v50 = (v47 >> 59) & 0x1E | (v47 >> 2) & 1;
    if (v47 != 0x8000000000000000 || v50 != 16)
    {
      break;
    }

    sub_1AF444224(v49);
    MEMORY[0x1B2718AE0](0x6F43747069726373, 0xED0000747865746ELL);
    v39 = 0;
    v40 = 0xE000000000000000;
LABEL_22:
    v41 = v37 + 1;
    v38 += 5;
    MEMORY[0x1B2718AE0](v39, v40);

    MEMORY[0x1B2718AE0](0, 0xE000000000000000);

    if (v37)
    {
      v42 = 44;
    }

    else
    {
      v42 = 0;
    }

    if (v37)
    {
      v43 = 0xE100000000000000;
    }

    else
    {
      v43 = 0xE000000000000000;
    }

    MEMORY[0x1B2718AE0](v42, v43);

    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
    v44 = sub_1AFAF888C(v109 + 4);
    v46 = v45;

    MEMORY[0x1B2718AE0](v44, v46);

    MEMORY[0x1B2718AE0](0, 0xE000000000000000);
    sub_1AF443F24(v47);
    sub_1AF444AF4(v49);

    v37 = v41;
    if (v110 == v41)
    {
      v76 = sub_1AFAF888C(v109);
      MEMORY[0x1B2718AE0](v76);

      v77 = 0;
      v78 = (v107 + 48);
      v104 = MEMORY[0x1E69E7CA0] + 8;
      while (1)
      {
        v83 = *(v78 - 2);
        v84 = *v78;
        v85 = (v83 >> 59) & 0x1E | (v83 >> 2) & 1;
        if (v85 == 10)
        {
          v86 = 58;
        }

        else
        {
          if (v85 != 5 && v85 != 4)
          {
            goto LABEL_78;
          }

          v86 = 66;
        }

        v87 = *((v83 & 0xFFFFFFFFFFFFFFBLL) + v86);
        if ((v87 & 3) != 0)
        {
          break;
        }

LABEL_78:
        ++v77;
        v78 += 5;
        if (v110 == v77)
        {
          goto LABEL_124;
        }
      }

      sub_1AF443EE0(*(v78 - 2));
      sub_1AF444224(v84);

      sub_1AFA9EF20(v83);
      v89 = v88;
      if (!swift_dynamicCastMetatype())
      {
        type metadata accessor for frame_constants(0);
        if (!swift_dynamicCastMetatype())
        {
          if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && (sub_1AF80AF34(0, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve), !swift_dynamicCastMetatype()) && (swift_dynamicCastMetatype() || v89 != v104 && !swift_dynamicCastMetatype() && (type metadata accessor for __vfx_sampler1d(0), !swift_dynamicCastMetatype()) && (type metadata accessor for __vfx_sampler2d(0), !swift_dynamicCastMetatype()) && (type metadata accessor for __vfx_sampler3d(0), !swift_dynamicCastMetatype())))
          {
            sub_1AFA9EF20(v83);
          }
        }
      }

      if (v85 == 10)
      {
        if ((*((v83 & 0xFFFFFFFFFFFFFFBLL) + 0x3A) & 0x80) != 0)
        {
          if ((*((v83 & 0xFFFFFFFFFFFFFFBLL) + 0x38) & 1) == 0)
          {
            goto LABEL_108;
          }
        }

        else
        {
          if ((*((v83 & 0xFFFFFFFFFFFFFFBLL) + 0x38) & 1) == 0)
          {
            goto LABEL_108;
          }

          v90 = *((v83 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
          v91 = sub_1AFDFDFD8();
          if (swift_conformsToProtocol2() && v91 != 0)
          {
            v93 = sub_1AFDFDFD8();
            result = swift_conformsToProtocol2();
            if (!result)
            {
              goto LABEL_131;
            }

            if (sub_1AF640E28(v93))
            {
              sub_1AFDFDFD8();
              result = swift_conformsToProtocol2();
              if (!result)
              {
                goto LABEL_134;
              }

              v94 = sub_1AF6411A4();
              sub_1AFAF6E24(v90, v90);
              if (v94 == v95)
              {
LABEL_108:
                sub_1AFDFDFD8();
                result = swift_conformsToProtocol2();
                if (!result)
                {
                  goto LABEL_129;
                }

                sub_1AF6411A4();
                sub_1AFDFE218();
                MEMORY[0x1B2718AE0](0xD00000000000001ELL, 0x80000001AFF47190);
                v97 = sub_1AFDFEA08();
                MEMORY[0x1B2718AE0](v97);

                MEMORY[0x1B2718AE0](0x636E617664612E29, 0xEF203A7962286465);
                v98 = sub_1AFDFEA08();
                MEMORY[0x1B2718AE0](v98);

                MEMORY[0x1B2718AE0](0xD000000000000045, 0x80000001AFF47220);
                if ((v87 & 1) == 0)
                {
LABEL_110:
                  if ((v87 & 2) == 0)
                  {

                    sub_1AF443F24(v83);
                    sub_1AF444AF4(v84);
                    goto LABEL_78;
                  }

                  v79 = 0x30203D20772ELL;
                  goto LABEL_77;
                }

LABEL_76:
                v79 = 0x31203D20772ELL;
LABEL_77:
                MEMORY[0x1B2718AE0](v79 & 0xFFFFFFFFFFFFLL | 0x302E000000000000, 0xE90000000000000ALL);
                v80 = sub_1AFAF888C(v109);
                v82 = v81;

                MEMORY[0x1B2718AE0](v80, v82);

                sub_1AF443F24(v83);
                sub_1AF444AF4(v84);

                goto LABEL_78;
              }
            }
          }
        }
      }

      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD00000000000001ELL, 0x80000001AFF47190);
      v96 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v96);

      MEMORY[0x1B2718AE0](0xD000000000000034, 0x80000001AFF471E0);
      if ((v87 & 1) == 0)
      {
        goto LABEL_110;
      }

      goto LABEL_76;
    }
  }

  if (v50 != 10)
  {
    sub_1AF444224(v49);
    sub_1AF443EE0(v47);
    goto LABEL_46;
  }

  v52 = *((v47 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
  if ((*((v47 & 0xFFFFFFFFFFFFFFBLL) + 0x3A) & 0x80) != 0)
  {
    sub_1AF444224(v49);
    sub_1AF443EE0(v47);
    if ((v52 & 1) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_49;
  }

  if ((*((v47 & 0xFFFFFFFFFFFFFFBLL) + 0x38) & 1) == 0)
  {
    sub_1AF444224(v49);
    sub_1AF443EE0(v47);
    goto LABEL_61;
  }

  v108 = *((v47 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
  sub_1AF444224(v49);
  sub_1AF443EE0(v47);
  v53 = sub_1AFDFDFD8();
  if (swift_conformsToProtocol2())
  {
    v54 = v53 == 0;
  }

  else
  {
    v54 = 1;
  }

  if (v54)
  {
    goto LABEL_49;
  }

  v55 = sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    goto LABEL_130;
  }

  if (!sub_1AF640E28(v55))
  {
    goto LABEL_49;
  }

  sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    goto LABEL_132;
  }

  v57 = sub_1AF6411A4();
  sub_1AFAF6E24(v108, v108);
  if (v57 != v58)
  {
LABEL_49:
    if ((*((v47 & 0xFFFFFFFFFFFFFFBLL) + 0x3A) & 0x80) != 0)
    {
      if (*((v47 & 0xFFFFFFFFFFFFFFBLL) + 0x38))
      {
LABEL_74:
        sub_1AFDFE218();

        v75 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v75);

        v60 = 0xD000000000000010;
        v61 = 0x80000001AFF47170;
        goto LABEL_47;
      }
    }

    else if (*((v47 & 0xFFFFFFFFFFFFFFBLL) + 0x38))
    {
      v62 = *((v47 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v63 = sub_1AFDFDFD8();
      if (!swift_conformsToProtocol2() || v63 == 0)
      {
        goto LABEL_74;
      }

      v65 = sub_1AFDFDFD8();
      result = swift_conformsToProtocol2();
      if (!result)
      {
        goto LABEL_133;
      }

      if (!sub_1AF640E28(v65))
      {
        goto LABEL_74;
      }

      sub_1AFDFDFD8();
      result = swift_conformsToProtocol2();
      if (!result)
      {
        goto LABEL_135;
      }

      v66 = sub_1AF6411A4();
      sub_1AFAF6E24(v62, v62);
      if (v66 != v67)
      {
        goto LABEL_74;
      }
    }

LABEL_46:
    sub_1AFDFE218();

    v59 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v59);

    v60 = 0x6565746E696F702ELL;
    v61 = 0xE800000000000000;
LABEL_47:
    MEMORY[0x1B2718AE0](v60, v61);
    MEMORY[0x1B2718AE0](0x74756F6E4970, 0xE600000000000000);
    goto LABEL_68;
  }

LABEL_61:
  sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (result)
  {
    sub_1AF6411A4();
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000001ELL, 0x80000001AFF47190);
    v68 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v68);

    MEMORY[0x1B2718AE0](0x636E617664612E29, 0xEF203A7962286465);
    v69 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v69);

    MEMORY[0x1B2718AE0](0xD00000000000002BLL, 0x80000001AFF471B0);
    sub_1AFA9EF20(v47);
    if (sub_1AFADB4E4(v70, 3u))
    {
      if ((v48 & 2) != 0)
      {
        v71 = MEMORY[0x1E69E6878];
      }

      else
      {
        v71 = MEMORY[0x1E69E6270];
      }
    }

    else
    {
      sub_1AFA9EF20(v47);
    }

    v72 = sub_1AF75D128(v71);
    MEMORY[0x1B2718AE0](v72);

    MEMORY[0x1B2718AE0](0x702E29666C65732ELL, 0xEE006565746E696FLL);
    MEMORY[0x1B2718AE0](0, 0xE000000000000000);
LABEL_68:

    sub_1AFA9EF20(v47);
    if (sub_1AFADB4E4(v73, 3u) & 1) == 0 && (v48 & 2) != 0 || (sub_1AFA9EF20(v47), v40 = 0xE000000000000000, (sub_1AFADB4E4(v74, 3u)))
    {
      v40 = 0xE100000000000000;
      v39 = 38;
    }

    else
    {
      v39 = 0;
    }

    goto LABEL_22;
  }

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
  return result;
}

uint64_t sub_1AFB081E0(char a1)
{
  v3 = sub_1AFB01F1C(a1);
  if (!v2)
  {
    v4 = v3;
    sub_1AFAFA374();

    MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF47EF0);

    v5 = sub_1AFB12344(v4);
    MEMORY[0x1B2718AE0](v5);

    v1 = *(v4 + 16);
  }

  return v1;
}

double sub_1AFB08298()
{

  swift_deallocClassInstance();
  return result;
}

void *sub_1AFB08304(int a1, void *a2, unint64_t a3)
{
  v120 = a1;
  v5 = sub_1AFDFBCE8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v118 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v118 - v13;
  sub_1AFDFBC88();
  sub_1AFDFBC58();
  sub_1AFDFBC98();
  v15 = *(v6 + 8);
  v124 = v8;
  v15(v8, v5);
  v122 = v11;
  v126 = v6 + 8;
  v127 = v5;
  v125 = v15;
  v15(v11, v5);
  v129 = a2;
  v130 = a3;
  v16 = sub_1AF4486E4();
  v119 = v14;
  v123 = v16;
  v17 = sub_1AFDFDE88();
  v18 = 0;
  v19 = v17 + 40;
  v20 = *(v17 + 16) + 1;
  v21 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v22 = (v19 + 16 * v18);
  while (v20 != ++v18)
  {
    v24 = *(v22 - 1);
    v23 = *v22;
    v22 += 2;
    v25 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v25 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v129 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1AFC05CE4(0, v21[2] + 1, 1);
        v21 = v129;
      }

      v28 = v21[2];
      v27 = v21[3];
      if (v28 >= v27 >> 1)
      {
        sub_1AFC05CE4(v27 > 1, v28 + 1, 1);
        v21 = v129;
      }

      v21[2] = v28 + 1;
      v29 = &v21[2 * v28];
      v29[4] = v24;
      v29[5] = v23;
      goto LABEL_2;
    }
  }

  v30 = v21[2];
  if (!v30)
  {
    goto LABEL_21;
  }

  v31 = v21[5];
  v32 = v21[4] & 0xFFFFFFFFFFFFLL;
  if ((v31 & 0x2000000000000000) != 0)
  {
    v32 = HIBYTE(v31) & 0xF;
  }

  if (!v32)
  {
LABEL_21:

    v125(v119, v127);
    return 0;
  }

  v118[2] = 0;
  v133 = MEMORY[0x1E69E7CC0];
  sub_1AFC05CE4(0, v30, 0);
  v33 = v133;
  v118[1] = v21;
  v34 = v21 + 5;
  v35 = MEMORY[0x1E69E6158];
  do
  {
    v36 = *(v34 - 1);
    v37 = *v34;
    v128 = v30;
    v129 = v36;
    v130 = v37;

    v38 = v33;
    v39 = v122;
    sub_1AFDFBCD8();
    v40 = v124;
    sub_1AFDFBC78();
    sub_1AFDFBCC8();
    v41 = v40;
    v42 = v127;
    v43 = v125;
    v125(v41, v127);
    sub_1AFDFBCA8();
    v44 = sub_1AFDFDE88();
    v45 = v39;
    v33 = v38;
    v43(v45, v42);
    v129 = v44;
    sub_1AFB12AC4(0, &qword_1ED726C70, v35, MEMORY[0x1E69E62F8]);
    v47 = v46;
    v121 = sub_1AF488088();
    v48 = sub_1AFDFCD98();
    v50 = v49;

    v133 = v38;
    v52 = *(v38 + 16);
    v51 = *(v38 + 24);
    if (v52 >= v51 >> 1)
    {
      sub_1AFC05CE4(v51 > 1, v52 + 1, 1);
      v33 = v133;
    }

    *(v33 + 16) = v52 + 1;
    v53 = v33 + 16 * v52;
    *(v53 + 32) = v48;
    *(v53 + 40) = v50;
    v34 += 2;
    v30 = v128 - 1;
  }

  while (v128 != 1);
  v124 = v47;

  v55 = 0;
  v56 = *(v33 + 16) + 1;
  v57 = MEMORY[0x1E69E7CC0];
  v58 = MEMORY[0x1E69E7CC0];
LABEL_23:
  v59 = (v33 + 40 + 16 * v55);
  while (v56 != ++v55)
  {
    v61 = *(v59 - 1);
    v60 = *v59;
    v59 += 2;
    v62 = HIBYTE(v60) & 0xF;
    if ((v60 & 0x2000000000000000) == 0)
    {
      v62 = v61 & 0xFFFFFFFFFFFFLL;
    }

    if (v62)
    {

      v63 = swift_isUniquelyReferenced_nonNull_native();
      v129 = v58;
      if ((v63 & 1) == 0)
      {
        sub_1AFC05CE4(0, v58[2] + 1, 1);
        v58 = v129;
      }

      v65 = v58[2];
      v64 = v58[3];
      if (v65 >= v64 >> 1)
      {
        sub_1AFC05CE4(v64 > 1, v65 + 1, 1);
        v58 = v129;
      }

      v58[2] = v65 + 1;
      v66 = &v58[2 * v65];
      v66[4] = v61;
      v66[5] = v60;
      goto LABEL_23;
    }
  }

  v67 = v58[2];
  if (v67)
  {
    v128 = v58;
    v135 = v57;
    sub_1AFC05CE4(0, v67, 0);
    v68 = 0;
    v69 = v135;
    while (1)
    {
      v70 = *(v128 + v68 + 32);
      v71 = *(v128 + v68 + 40);
      if (v120)
      {

        sub_1AFDFD078();
        sub_1AFDFD1F8();
        v72 = sub_1AFDFDDB8();
        v74 = v73;

        v75 = sub_1AF701628(1, v70, v71);
        v77 = v76;
        v79 = v78;
        v81 = v80;

        v133 = v72;
        v134 = v74;
        v129 = v75;
        v130 = v77;
        v131 = v79;
        v132 = v81;
        sub_1AF725990();
        sub_1AFDFD0A8();
      }

      else
      {
        if (!v68)
        {

          goto LABEL_40;
        }

        sub_1AFDFD078();
        sub_1AFDFD1F8();
        v82 = sub_1AFDFDDB8();
        v84 = v83;

        v85 = sub_1AF701628(1, v70, v71);
        v87 = v86;
        v89 = v88;
        v91 = v90;

        v133 = v82;
        v134 = v84;
        v129 = v85;
        v130 = v87;
        v131 = v89;
        v132 = v91;
        sub_1AF725990();
        sub_1AFDFD0A8();
      }

      v70 = v133;
      v71 = v134;
LABEL_40:
      v135 = v69;
      v93 = v69[2];
      v92 = v69[3];
      if (v93 >= v92 >> 1)
      {
        sub_1AFC05CE4(v92 > 1, v93 + 1, 1);
        v69 = v135;
      }

      v69[2] = v93 + 1;
      v94 = &v69[2 * v93];
      v94[4] = v70;
      v94[5] = v71;
      v68 += 16;
      if (!--v67)
      {

        goto LABEL_46;
      }
    }
  }

  v69 = MEMORY[0x1E69E7CC0];
LABEL_46:
  v129 = v69;
  v95 = sub_1AFDFCD98();
  v97 = v96;

  v98 = HIBYTE(v97) & 0xF;
  if ((v97 & 0x2000000000000000) == 0)
  {
    v98 = v95 & 0xFFFFFFFFFFFFLL;
  }

  if (!v98)
  {
    v125(v119, v127);

    return 0;
  }

  v99 = v95;
  v100 = v97;
  if (v120)
  {
    sub_1AF9A0BAC(1, v95, v97);

    v101 = sub_1AFDFDDA8();
    v103 = v102;

    v104 = sub_1AF701628(1, v95, v97);
    v106 = v105;
    v108 = v107;
    v110 = v109;

    v133 = v101;
    v134 = v103;
    v129 = v104;
    v130 = v106;
    v131 = v108;
    v132 = v110;
    sub_1AF725990();
    sub_1AFDFD0A8();

    v99 = v133;
    v100 = v134;
  }

  sub_1AFDFD1C8();
  v111 = sub_1AFDFCD48();

  if (v111)
  {
    v129 = v95;
    v130 = v97;
    MEMORY[0x1EEE9AC00](v112);
    v118[-2] = &v129;
    v113 = sub_1AF7B9518(sub_1AFB1283C, &v118[-4], &unk_1F2503978);
    swift_arrayDestroy();

    if ((v113 & 1) == 0)
    {
      sub_1AFDFD1C8();
      v114 = sub_1AFDFCD48();

      if (v114)
      {
        v129 = v99;
        v130 = v100;
        MEMORY[0x1EEE9AC00](v115);
        v118[-2] = &v129;
        v116 = sub_1AF7B9518(sub_1AFB12C44, &v118[-4], &unk_1F2503978);
        swift_arrayDestroy();
        if ((v116 & 1) == 0)
        {
          v125(v119, v127);
          return v99;
        }
      }
    }
  }

  else
  {
  }

  v129 = v99;
  v130 = v100;
  v133 = 95;
  v134 = 0xE100000000000000;
  v133 = sub_1AFDFD1E8();
  v134 = v117;
  sub_1AFDFD0A8();
  v125(v119, v127);

  return v133;
}

uint64_t sub_1AFB08DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a5)
  {
    sub_1AF4486E4();
    if ((sub_1AFDFDF18() & 1) == 0)
    {

      MEMORY[0x1B2718AE0](0x545049524353255FLL, 0xEC0000002544495FLL);
      MEMORY[0x1B2718AE0](a1, a2);
      sub_1AFDFE218();

      MEMORY[0x1B2718AE0](a1, a2);
      MEMORY[0x1B2718AE0](0x545049524353255FLL, 0xEC0000002544495FLL);
      sub_1AFDFDEB8();

      MEMORY[0x1B2718AE0](a1, a2);
      sub_1AFDFE218();

      MEMORY[0x1B2718AE0](a1, a2);
      MEMORY[0x1B2718AE0](0x545049524353255FLL, 0xEC0000002544495FLL);
      sub_1AFDFDEB8();

      MEMORY[0x1B2718AE0](a1, a2);
      sub_1AFDFE218();

      MEMORY[0x1B2718AE0](a1, a2);
      MEMORY[0x1B2718AE0](0x545049524353255FLL, 0xEC0000002544495FLL);
      sub_1AFDFDEB8();

      if ((a6 & 1) == 0)
      {
        return a1;
      }

      goto LABEL_4;
    }
  }

  if (a6)
  {
LABEL_4:
    MEMORY[0x1B2718AE0](a1, a2);
    sub_1AFDFE218();

    MEMORY[0x1B2718AE0](a1, a2);
    sub_1AF4486E4();
    sub_1AFDFDEB8();
  }

  return a1;
}

uint64_t sub_1AFB09214(unint64_t a1)
{
  if (((a1 >> 59) & 0x1E | (a1 >> 2) & 1) == 8)
  {
    v1 = 0x3165727574786574;
    v2 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x21);
    v3 = 0x3265727574786574;
    if (v2 != 5)
    {
      v3 = 0x64326874706564;
    }

    v4 = 0x4365727574786574;
    if (v2 != 3)
    {
      v4 = 0x3165727574786574;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x21) <= 4u)
    {
      v3 = v4;
    }

    v5 = 0x3265727574786574;
    if (v2 != 1)
    {
      v5 = 0x3365727574786574;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x21))
    {
      v1 = v5;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x21) <= 2u)
    {
      return v1;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFB09378(unsigned __int8 a1, uint64_t a2, unint64_t a3, char a4, unint64_t a5, unint64_t a6, char a7, unint64_t a8)
{
  LODWORD(v14) = a1 - 1;
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      goto LABEL_56;
    }

    goto LABEL_5;
  }

  if (!a1)
  {
LABEL_5:
    v71 = sub_1AFA56CA0();
    sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
    swift_arrayDestroy();
    goto LABEL_10;
  }

  sub_1AFDFE218();

  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF47DA0);
  sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1AFE431C0;
  *(v18 + 32) = a2;
  *(v18 + 40) = a3;
  *(v18 + 48) = 0;
  *(v18 + 56) = 0;
  if (a4)
  {
    v19 = sub_1AFA56CA0();
    sub_1AFB12A64(&unk_1F2501148, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  sub_1AF441DD8(0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1AFE4C630;
  *(v20 + 32) = v18;
  *(v20 + 40) = v19;
  *(v20 + 48) = &unk_1F2501150;
  *(v20 + 56) = &unk_1F2501190;
  *(v20 + 64) = &unk_1F25011D0;
  *(v20 + 72) = &unk_1F2501210;
  *(v20 + 80) = &unk_1F2501250;
  v71 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  swift_deallocClassInstance();
LABEL_10:
  sub_1AFDFE218();

  MEMORY[0x1B2718AE0](a5, a6);
  MEMORY[0x1B2718AE0](8230, 0xE200000000000000);
  MEMORY[0x1B2718AE0](0x61765F7475706E69, 0xEC0000007365756CLL);
  MEMORY[0x1B2718AE0](0x66667562205B5B20, 0xEB00000000287265);
  v21 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v21);

  MEMORY[0x1B2718AE0](1566384169, 0xE400000000000000);
  a6 = 0xE900000000000020;
  sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  v23 = v22;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = 0x746E6174736E6F63;
  *(inited + 40) = 0xE900000000000020;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v70 = inited;
  if (v14 > 1)
  {
    v69 = MEMORY[0x1E69E7CC0];
    LOBYTE(v14) = v23;
    if ((a7 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x746E6174736E6F63, 0xE900000000000020);
    MEMORY[0x1B2718AE0](0xD00000000000001BLL, 0x80000001AFF459E0);
    MEMORY[0x1B2718AE0](0xD00000000000004BLL, 0x80000001AFF47D50);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1AFE431C0;
    *(v25 + 32) = 0;
    *(v25 + 40) = 0xE000000000000000;
    sub_1AF441DD8(0);
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    a6 = swift_allocObject();
    *(a6 + 16) = xmmword_1AFE431C0;
    *(a6 + 32) = v25;
    a5 = a6 + 32;
    v69 = sub_1AFA56CA0();
    swift_setDeallocating();
    sub_1AFB12A64(a6 + 32, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
    swift_deallocClassInstance();
    LOBYTE(v14) = v23;
    if ((a7 & 1) == 0)
    {
LABEL_12:
      v68 = MEMORY[0x1E69E7CC0];
      goto LABEL_15;
    }
  }

  v68 = sub_1AFA56CA0();
  sub_1AFB12A64(&unk_1F2501528, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
LABEL_15:
  v9 = MEMORY[0x1E69E7CC0];
  v75 = *(a8 + 16);
  if (v75)
  {
    v26 = 0;
    v73 = 0;
    v27 = (a8 + 48);
    v74 = 7;
    v8 = MEMORY[0x1E69E7CC0];
    v72 = v14;
    while (1)
    {
      v28 = *(v27 - 2);
      v78 = *v27;
      v29 = (v28 >> 59) & 0x1E | (v28 >> 2) & 1;
      v76 = v28;
      v77 = v8;
      if (v29 > 9)
      {
        break;
      }

      if (v29 <= 7)
      {
        if ((v29 - 4) >= 2 && v29 != 1)
        {
LABEL_55:
          sub_1AF444224(v78);
          sub_1AF443EE0(v28);
          a8 = v28;
          sub_1AFDFE218();
          sub_1AFDFE458();
          MEMORY[0x1B2718AE0](0xD000000000000023, 0x80000001AFF47C70);
          goto LABEL_56;
        }

LABEL_33:
        sub_1AF441DD8(0);
        v38 = swift_initStackObject();
        *(v38 + 16) = xmmword_1AFE431C0;
        *(v38 + 32) = v9;
        v39 = v38 + 32;
        sub_1AF444224(v78);
        sub_1AF443EE0(v28);
        goto LABEL_34;
      }

      if (v29 == 8)
      {
        v44 = sub_1AFB09214(v28);
        v46 = v45;
        sub_1AF444224(v78);
        sub_1AF443EE0(v28);
        sub_1AFDFE218();

        MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF47CF0);
        v47 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v47);

        MEMORY[0x1B2718AE0](0x74786574205B5B20, 0xEC00000028657275);
        v48 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v48);

        MEMORY[0x1B2718AE0](1566384169, 0xE400000000000000);
        v49 = v44;
        v50 = swift_initStackObject();
        *(v50 + 16) = xmmword_1AFE431C0;
        *(v50 + 32) = v49;
        *(v50 + 40) = v46;
        ++v73;
        sub_1AF441DD8(0);
        *(v50 + 48) = 0;
        *(v50 + 56) = 0;
        v51 = swift_initStackObject();
        *(v51 + 16) = xmmword_1AFE4C620;
        *(v51 + 32) = v50;
        *(v51 + 40) = MEMORY[0x1E69E7CC0];
        v36 = sub_1AFA56CA0();
        swift_setDeallocating();
        sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
        v9 = MEMORY[0x1E69E7CC0];
        swift_arrayDestroy();
        goto LABEL_35;
      }

      if (*((v28 & 0xFFFFFFFFFFFFFFBLL) + 0x20) >= 2u)
      {
        sub_1AF441DD8(0);
        v61 = swift_initStackObject();
        *(v61 + 16) = xmmword_1AFE431C0;
        *(v61 + 32) = v9;
        v62 = v61 + 32;
        sub_1AF444224(v78);
        sub_1AF443EE0(v28);
        v56 = sub_1AFA56CA0();
        swift_setDeallocating();
        sub_1AFB12A64(v62, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
      }

      else
      {
        sub_1AF444224(v78);
        sub_1AF443EE0(v28);
        sub_1AFDFE218();

        v52 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v52);

        MEMORY[0x1B2718AE0](0x657474696D65203ELL, 0xEA00000000005F72);
        v53 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v53);

        v54 = swift_initStackObject();
        *(v54 + 16) = xmmword_1AFE431C0;
        *(v54 + 32) = 0xD000000000000019;
        *(v54 + 40) = 0x80000001AFF47CD0;
        v74 += 2;
        sub_1AF441DD8(0);
        *(v54 + 48) = 0;
        *(v54 + 56) = 0;
        v55 = swift_initStackObject();
        *(v55 + 16) = xmmword_1AFE4C620;
        *(v55 + 32) = v54;
        *(v55 + 40) = MEMORY[0x1E69E7CC0];
        v56 = sub_1AFA56CA0();
        swift_setDeallocating();
        sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
        v9 = MEMORY[0x1E69E7CC0];
        swift_arrayDestroy();
      }

      sub_1AF441DD8(0);
      v63 = swift_initStackObject();
      *(v63 + 16) = xmmword_1AFE431C0;
      *(v63 + 32) = v56;
      v39 = v63 + 32;
LABEL_34:
      v36 = sub_1AFA56CA0();
      swift_setDeallocating();
      sub_1AFB12A64(v39, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
LABEL_35:
      sub_1AF441DD8(0);
      v40 = swift_initStackObject();
      *(v40 + 16) = xmmword_1AFE431C0;
      *(v40 + 32) = v36;
      v41 = v40 + 32;
      v42 = sub_1AFA56CA0();
      swift_setDeallocating();
      sub_1AFB12A64(v41, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
      v8 = v77;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1AF426BC8(0, v77[2] + 1, 1, v77);
      }

      a5 = *(v8 + 16);
      v43 = *(v8 + 24);
      a6 = a5 + 1;
      if (a5 >= v43 >> 1)
      {
        v8 = sub_1AF426BC8(v43 > 1, a5 + 1, 1, v8);
      }

      ++v26;
      v27 += 5;
      sub_1AF443F24(v76);
      sub_1AF444AF4(v78);
      *(v8 + 16) = a6;
      *(v8 + 8 * a5 + 32) = v42;
      if (v75 == v26)
      {
        goto LABEL_54;
      }
    }

    if (v29 > 11 && (v29 - 12) >= 2)
    {
      if (v29 == 14)
      {
        v8 = *((v28 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v9 = *((v28 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        a6 = *((v28 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        a5 = *((v28 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        LODWORD(v14) = *((v28 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
        v30 = v14 == 6 && (v9 | v8 | a6 | a5) == 0;
        a8 = *(v27 - 2);
        if (!v30)
        {
          while (1)
          {
            sub_1AF444224(v78);
            sub_1AF443EE0(a8);
            sub_1AFABCE58(v8, v9, a6, a5, v14);
            sub_1AFDFE218();
            sub_1AFDFE458();
            MEMORY[0x1B2718AE0](0xD000000000000029, 0x80000001AFF47CA0);
LABEL_56:
            sub_1AFDFE518();
            __break(1u);
          }
        }

        sub_1AF441DD8(0);
        v31 = swift_initStackObject();
        *(v31 + 16) = xmmword_1AFE431C0;
        *(v31 + 32) = MEMORY[0x1E69E7CC0];
        v32 = v31 + 32;
        sub_1AF444224(v78);
        sub_1AF443EE0(v28);
        v33 = sub_1AFA56CA0();
        swift_setDeallocating();
        v34 = MEMORY[0x1E69E62F8];
        sub_1AFB12A64(v32, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
        v35 = swift_initStackObject();
        *(v35 + 16) = xmmword_1AFE431C0;
        *(v35 + 32) = v33;
        v14 = v35 + 32;
        v36 = sub_1AFA56CA0();
        swift_setDeallocating();
        v9 = MEMORY[0x1E69E7CC0];
        sub_1AFB12A64(v14, &unk_1ED723290, &type metadata for CodeEmitter.Code, v34, sub_1AFB12AC4);
        LOBYTE(v14) = v72;
      }

      else
      {
        if (v29 != 16 || v28 != 0x8000000000000000)
        {
          goto LABEL_55;
        }

        sub_1AF444224(v78);
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD000000000000033, 0x80000001AFF47D10);
        v58 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v58);

        MEMORY[0x1B2718AE0](1566384169, 0xE400000000000000);
        v59 = swift_initStackObject();
        *(v59 + 16) = xmmword_1AFE431C0;
        *(v59 + 32) = 0;
        *(v59 + 40) = 0xE000000000000000;
        ++v74;
        sub_1AF441DD8(0);
        *(v59 + 48) = 0;
        *(v59 + 56) = 0;
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_1AFE4C620;
        *(v60 + 32) = v59;
        *(v60 + 40) = MEMORY[0x1E69E7CC0];
        v36 = sub_1AFA56CA0();
        swift_setDeallocating();
        sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
        v9 = MEMORY[0x1E69E7CC0];
        swift_arrayDestroy();
        swift_deallocClassInstance();
      }

      goto LABEL_35;
    }

    goto LABEL_33;
  }

LABEL_54:
  v64 = sub_1AFA56CA0();

  sub_1AF441DD8(0);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1AFE4C6A0;
  *(v65 + 32) = v71;
  *(v65 + 40) = v70;
  *(v65 + 48) = v69;
  *(v65 + 56) = v68;
  *(v65 + 64) = v64;
  v66 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v66;
}

uint64_t sub_1AFB0A530(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000042, 0x80000001AFF479B0);
  MEMORY[0x1B2718AE0](a1, a2);
  MEMORY[0x1B2718AE0](540680233, 0xE400000000000000);
  MEMORY[0x1B2718AE0](a1, a2);
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD00000000000005ALL, 0x80000001AFF47A00);
  MEMORY[0x1B2718AE0](a1, a2);
  MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF47A60);
  MEMORY[0x1B2718AE0](a1, a2);
  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  if (a3 <= 1u)
  {
    if (a3)
    {

      return 0;
    }

    else
    {
    }

    return a1;
  }

  a1 = 0;
  if (a3 == 3)
  {

    return a1;
  }

  if (a3 == 4)
  {

    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000003DLL, 0x80000001AFF47970);
    MEMORY[0x1B2718AE0](0, 0xE000000000000000);

    MEMORY[0x1B2718AE0](41, 0xE100000000000000);
    return 0;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFB0A7A0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x6C61636F6C5F7369, 0xEB00000000203F20);
  MEMORY[0x1B2718AE0](a1, a2);
  MEMORY[0x1B2718AE0](0xD000000000000045, 0x80000001AFF47A80);
  MEMORY[0x1B2718AE0](a1, a2);
  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000039, 0x80000001AFF47AD0);
  MEMORY[0x1B2718AE0](a1, a2);
  MEMORY[0x1B2718AE0](540680233, 0xE400000000000000);
  MEMORY[0x1B2718AE0](a1, a2);
  if (a3 <= 1u || a3 == 3)
  {

    return 0;
  }

  if (a3 == 4)
  {

    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000003ELL, 0x80000001AFF47B10);
    MEMORY[0x1B2718AE0](0, 0xE000000000000000);

    MEMORY[0x1B2718AE0](41, 0xE100000000000000);
    return 0;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFB0A9F4(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v6 = 0xE400000000000000;
  v7 = 2054780974;
  if (a4 == 2)
  {
    v7 = 7960622;
    v6 = 0xE300000000000000;
  }

  if (a4 == 1)
  {
    v8 = 30766;
  }

  else
  {
    v8 = v7;
  }

  if (a4 == 1)
  {
    v9 = 0xE200000000000000;
  }

  else
  {
    v9 = v6;
  }

  sub_1AFDFE218();

  v13 = v8;
  MEMORY[0x1B2718AE0](v8, v9);

  sub_1AFDFE218();

  strcpy(v15, "is_local ? ");
  BYTE5(v15[1]) = 0;
  MEMORY[0x1B2718AE0](a1, a2);
  MEMORY[0x1B2718AE0](673200672, 0xE400000000000000);
  MEMORY[0x1B2718AE0](a1, a2);
  MEMORY[0x1B2718AE0](2109216, 0xE300000000000000);
  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF47B50);
  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  v10 = v15[0];
  sub_1AFDFE218();

  strcpy(v15, "is_local ? (");
  HIWORD(v15[1]) = -5120;
  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF47B50);
  MEMORY[0x1B2718AE0](2107936, 0xE300000000000000);
  MEMORY[0x1B2718AE0](a1, a2);
  MEMORY[0x1B2718AE0](540680233, 0xE400000000000000);
  MEMORY[0x1B2718AE0](a1, a2);
  v11 = v15[0];
  if (a3 <= 1u)
  {
    if (!a3)
    {

      return v10;
    }

LABEL_13:

    return v11;
  }

  if (a3 == 3)
  {
    goto LABEL_13;
  }

  if (a3 == 4)
  {

    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](v15[0], v15[1]);

    MEMORY[0x1B2718AE0](0xD000000000000036, 0x80000001AFF47B70);
    MEMORY[0x1B2718AE0](v13, v9);

    return 0;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFB0AD44(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 3)
    {
      return 0xD00000000000003BLL;
    }

    else if (a3 == 4)
    {
      return 0xD00000000000004ALL;
    }

    else
    {
      result = sub_1AFDFE518();
      __break(1u);
    }
  }

  else if (a3)
  {
    return 0xD000000000000022;
  }

  else
  {

    return a1;
  }

  return result;
}

unint64_t sub_1AFB0AE44(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      sub_1AFDFE218();

      v6 = 0xD000000000000018;
LABEL_8:
      MEMORY[0x1B2718AE0](a1, a2);
      MEMORY[0x1B2718AE0](41, 0xE100000000000000);
      return v6;
    }

LABEL_5:

    return a1;
  }

  if (a3 == 3)
  {
    goto LABEL_5;
  }

  if (a3 == 4)
  {
    v6 = 0;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000003DLL, 0x80000001AFF47970);
    goto LABEL_8;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFB0AFA0(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    if (a2 == 2)
    {
      v4 = 0xD000000000000049;
    }

    else
    {
      v4 = 0xD00000000000007DLL;
    }

    v125 = v4;
    if (a2 == 2)
    {
      v5 = "camera_position(camera_index)";
    }

    else
    {
      v5 = "fragment_in_primitive_id";
    }

    v124 = v5 | 0x8000000000000000;
    v6 = a1 + 64;
    v7 = &unk_1ED723290;
    v8 = &type metadata for CodeEmitter.Code;
    v132 = MEMORY[0x1E69E7CC0];
    v130 = *(a1 + 16);
    while (1)
    {
      v9 = *(v6 - 32);
      v10 = *(v6 - 16);
      v11 = (v9 >> 59) & 0x1E | (v9 >> 2) & 1;
      v131 = v10;
      if (v11 <= 9)
      {
        break;
      }

      if (v11 <= 12)
      {
        if (v11 == 10)
        {
          sub_1AF444224(v10);
          sub_1AF443EE0(v9);
          sub_1AFDFE218();

          strcpy(v133, "particle_data_");
          HIBYTE(v133[1]) = -18;
        }

        else
        {
          if (v11 == 11)
          {
            v18 = *(v6 - 16);
            v19 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10) == 0x44496E77617073 && *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x18) == 0xE700000000000000;
            if (v19 || (v20 = sub_1AFDFEE28(), v18 = v131, (v20 & 1) != 0))
            {
              sub_1AF444224(v18);
              sub_1AF443EE0(v9);

              v21 = sub_1AFA56CA0();
              sub_1AFB12A64(&unk_1F2502840, v7, v8, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
            }

            else
            {
              sub_1AF444224(v131);
              sub_1AF443EE0(v9);

              v21 = MEMORY[0x1E69E7CC0];
            }

            v55 = v8;
            v56 = v7;
            sub_1AF441DD8(0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1AFE431C0;
            *(inited + 32) = v21;
            v58 = inited + 32;
            v39 = sub_1AFA56CA0();

            swift_setDeallocating();
            sub_1AFB12A64(v58, v56, v55, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
            v2 = v130;
            v7 = v56;
            v8 = v55;
            goto LABEL_123;
          }

LABEL_44:
          v133[0] = 0xD000000000000012;
          v133[1] = 0x80000001AFF478D0;
          sub_1AF444224(v10);
          sub_1AF443EE0(v9);
        }

        v49 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v49);

        v50 = v133[0];
        v51 = v133[1];
        sub_1AFB12AC4(0, &qword_1EB638390, v8, MEMORY[0x1E69E6F90]);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_1AFE431C0;
        *(v48 + 32) = v50;
        *(v48 + 40) = v51;
        sub_1AF441DD8(0);
        *(v48 + 48) = 0;
        *(v48 + 56) = 0;
LABEL_46:
        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_1AFE431C0;
        *(v52 + 32) = v48;
        v39 = sub_1AFA56CA0();
        swift_setDeallocating();
        sub_1AFB12A64(v52 + 32, v7, v8, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
        goto LABEL_47;
      }

      switch(v11)
      {
        case 13:
          sub_1AF444224(v10);
          sub_1AF443EE0(v9);
          v41 = &unk_1F2501640;
          break;
        case 14:
          v23 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          v22 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
          v24 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
          v25 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
          v26 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
          v128 = v24;
          v129 = v22;
          v127 = v25;
          v126 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
          if (v26 > 2)
          {
            if (*((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x30) <= 4u)
            {
              if (v26 == 3)
              {
                v27 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
                v28 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
                v29 = *(v23 + 16);
                v30 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
                v31 = *(v28 + 24);
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                sub_1AFABCE58(v28, v22, v27, v30, 3);
                sub_1AFDFE218();

                v133[0] = 0xD000000000000010;
                v133[1] = 0x80000001AFF477B0;
                MEMORY[0x1B2718AE0](v29, v31);
                sub_1AFB12AC4(0, &qword_1EB638390, v8, MEMORY[0x1E69E6F90]);
              }

              else
              {
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                sub_1AFABCE58(v23, v22, v24, v25, 4);
                sub_1AFDFE218();

                v133[0] = 0xD000000000000010;
                v133[1] = 0x80000001AFF477B0;
                MEMORY[0x1B2718AE0](v23, v22);
                sub_1AFB12AC4(0, &qword_1EB638390, v8, MEMORY[0x1E69E6F90]);
                v28 = v23;
              }

              v32 = swift_initStackObject();
              *(v32 + 16) = xmmword_1AFE431C0;
              *(v32 + 32) = 0xD000000000000010;
              *(v32 + 40) = 0x80000001AFF477B0;
              sub_1AF441DD8(0);
              *(v32 + 48) = 0;
              *(v32 + 56) = 0;
              v78 = swift_initStackObject();
              *(v78 + 16) = xmmword_1AFE431C0;
              *(v78 + 32) = v32;
              v79 = v78 + 32;
              v69 = sub_1AFA56CA0();
              swift_setDeallocating();
              v7 = &unk_1ED723290;
              sub_1AFB12A64(v79, &unk_1ED723290, v8, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
              v2 = v130;
              goto LABEL_122;
            }

            if (v26 != 5)
            {
              v123 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
              if (!(v24 | v22 | v23 | v25))
              {
                goto LABEL_130;
              }

              sub_1AF444224(v10);
              sub_1AF443EE0(v9);
              v80 = sub_1AFA56CA0();
              v81 = MEMORY[0x1E69E62F8];
              v7 = &unk_1ED723290;
              sub_1AFB12A64(&unk_1F25020F0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
              sub_1AF441DD8(0);
              v82 = swift_initStackObject();
              *(v82 + 16) = xmmword_1AFE431C0;
              *(v82 + 32) = v80;
              v83 = v82 + 32;
              v69 = sub_1AFA56CA0();
              swift_setDeallocating();
              v8 = &type metadata for CodeEmitter.Code;
              sub_1AFB12A64(v83, &unk_1ED723290, &type metadata for CodeEmitter.Code, v81, sub_1AFB12AC4);
              v2 = v130;
              v28 = v123;
              goto LABEL_122;
            }

            v28 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            switch(v28)
            {
              case 5:
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                v54 = &unk_1F2502138;
                goto LABEL_119;
              case 6:
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                v54 = &unk_1F25021A0;
                goto LABEL_119;
              case 7:
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                v54 = &unk_1F2502208;
                goto LABEL_119;
              case 8:
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                v54 = &unk_1F2502270;
                goto LABEL_119;
              case 9:
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                v54 = &unk_1F25022D8;
                goto LABEL_119;
              case 10:
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                v54 = &unk_1F2502340;
                goto LABEL_119;
              case 11:
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                v54 = &unk_1F25023A8;
                goto LABEL_119;
              case 12:
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                v54 = &unk_1F2502410;
                goto LABEL_119;
              case 13:
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                v54 = &unk_1F2502548;
                goto LABEL_119;
              case 14:
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                v54 = &unk_1F2502478;
                goto LABEL_119;
              case 15:
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                v54 = &unk_1F25024E0;
                goto LABEL_119;
              case 16:
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                v54 = &unk_1F2502618;
                goto LABEL_119;
              case 17:
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                v54 = &unk_1F2502680;
                goto LABEL_119;
              case 18:
                v133[0] = 0;
                v133[1] = 0xE000000000000000;
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                sub_1AFDFE218();
                MEMORY[0x1B2718AE0](0xD00000000000001FLL, 0x80000001AFF477F0);
                MEMORY[0x1B2718AE0](0xD00000000000007DLL, 0x80000001AFF256A0);
                MEMORY[0x1B2718AE0](0xD00000000000003CLL, 0x80000001AFF47810);
                sub_1AFB12AC4(0, &qword_1EB638390, v8, MEMORY[0x1E69E6F90]);
                v94 = swift_initStackObject();
                *(v94 + 16) = xmmword_1AFE431C0;
                *(v94 + 32) = 0;
                *(v94 + 40) = 0xE000000000000000;
                sub_1AF441DD8(0);
                *(v94 + 48) = 0;
                *(v94 + 56) = 0;
                v95 = swift_initStackObject();
                *(v95 + 16) = xmmword_1AFE431C0;
                *(v95 + 32) = v94;
                v96 = v95 + 32;
                v97 = sub_1AFA56CA0();
                swift_setDeallocating();
                v98 = MEMORY[0x1E69E62F8];
                v99 = v96;
                break;
              case 19:
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                v54 = &unk_1F25025B0;
                goto LABEL_119;
              case 20:
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                v54 = &unk_1F25026E8;
                goto LABEL_119;
              case 21:
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                v54 = &unk_1F2502750;
                goto LABEL_119;
              case 22:
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                v54 = &unk_1F25027B8;
LABEL_119:
                v106 = sub_1AFA56CA0();
                v98 = MEMORY[0x1E69E62F8];
                v99 = v54 + 32;
                v97 = v106;
                break;
              default:
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                v28 = v23;
                v100 = sub_1AFB0AE44(0xD00000000000002DLL, 0x80000001AFF47850, v23);
                v102 = v101;
                sub_1AFB12AC4(0, &qword_1EB638390, v8, MEMORY[0x1E69E6F90]);
                v103 = swift_initStackObject();
                *(v103 + 16) = xmmword_1AFE431C0;
                *(v103 + 32) = v100;
                *(v103 + 40) = v102;
                sub_1AF441DD8(0);
                *(v103 + 48) = 0;
                *(v103 + 56) = 0;
                v104 = swift_initStackObject();
                *(v104 + 16) = xmmword_1AFE431C0;
                *(v104 + 32) = v103;
                v105 = v104 + 32;
                v97 = sub_1AFA56CA0();
                swift_setDeallocating();
                v98 = MEMORY[0x1E69E62F8];
                v99 = v105;
                break;
            }

            sub_1AFB12A64(v99, v7, v8, v98, sub_1AFB12AC4);
            sub_1AF441DD8(0);
            v107 = swift_initStackObject();
            *(v107 + 16) = xmmword_1AFE431C0;
            *(v107 + 32) = v97;
            v108 = v107 + 32;
            v69 = sub_1AFA56CA0();
            swift_setDeallocating();
            v77 = MEMORY[0x1E69E62F8];
            v74 = v108;
            v75 = v7;
            v76 = v8;
LABEL_121:
            sub_1AFB12A64(v74, v75, v76, v77, sub_1AFB12AC4);
LABEL_122:
            sub_1AF441DD8(0);
            v109 = swift_initStackObject();
            *(v109 + 16) = xmmword_1AFE431C0;
            *(v109 + 32) = v69;
            v110 = v109 + 32;
            v39 = sub_1AFA56CA0();
            sub_1AFABCF1C(v28, v129, v128, v127, v126);
            swift_setDeallocating();
            sub_1AFB12A64(v110, v7, v8, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
            goto LABEL_123;
          }

          if (*((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x30))
          {
            if (v26 != 1)
            {
              sub_1AF444224(v10);
              sub_1AF443EE0(v9);
              v70 = off_1E7A80030[v23];
              v122 = sub_1AFA56CA0();
              v71 = MEMORY[0x1E69E62F8];
              sub_1AFB12A64(v70, v7, v8, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
              sub_1AF441DD8(0);
              v72 = swift_initStackObject();
              *(v72 + 16) = xmmword_1AFE431C0;
              v28 = v23;
              *(v72 + 32) = v122;
              v73 = v72 + 32;
              v69 = sub_1AFA56CA0();
              v8 = &type metadata for CodeEmitter.Code;
              swift_setDeallocating();
              v74 = v73;
              v75 = v7;
              v76 = &type metadata for CodeEmitter.Code;
              v77 = v71;
              v2 = v130;
              goto LABEL_121;
            }

            if (v22 <= 3)
            {
              if (v22 > 1)
              {
                v28 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                if (v22 == 2)
                {
                  v53 = &unk_1F2501848;
                }

                else
                {
                  v53 = &unk_1F25018B0;
                }

                goto LABEL_96;
              }

              if (!v22)
              {
                v28 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                v53 = &unk_1F25017E0;
                goto LABEL_96;
              }

              if (v22 != 1)
              {
                goto LABEL_99;
              }

              v28 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
              sub_1AFB12AC4(0, &qword_1EB638390, v8, MEMORY[0x1E69E6F90]);
              v84 = swift_allocObject();
              *(v84 + 16) = xmmword_1AFE431C0;
              *(v84 + 32) = v125;
              *(v84 + 40) = v124;
              sub_1AF441DD8(0);
              *(v84 + 48) = 0;
              *(v84 + 56) = 0;
              v85 = swift_allocObject();
              *(v85 + 16) = xmmword_1AFE431C0;
              *(v85 + 32) = v84;
              v86 = v85 + 32;
              sub_1AF444224(v131);
              sub_1AF443EE0(v9);
LABEL_100:
              v89 = sub_1AFA56CA0();
              swift_setDeallocating();
              sub_1AFB12A64(v86, v7, v8, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
              swift_deallocClassInstance();
            }

            else
            {
              if (v22 <= 5)
              {
                v28 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                if (v22 == 4)
                {
                  v53 = &unk_1F2501918;
                }

                else
                {
                  v53 = &unk_1F2501980;
                }
              }

              else
              {
                switch(v22)
                {
                  case 6:
                    v28 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
                    sub_1AF444224(v10);
                    sub_1AF443EE0(v9);
                    v53 = &unk_1F25019E8;
                    break;
                  case 7:
                    v28 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
                    sub_1AF444224(v10);
                    sub_1AF443EE0(v9);
                    v53 = &unk_1F2501A50;
                    break;
                  case 8:
                    v28 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
                    sub_1AF444224(v10);
                    sub_1AF443EE0(v9);
                    v53 = &unk_1F2501AB8;
                    break;
                  default:
LABEL_99:
                    v133[0] = 3043177;
                    v133[1] = 0xE300000000000000;
                    sub_1AF444224(v10);
                    sub_1AF443EE0(v9);
                    v91 = sub_1AFABCE58(v23, v22, v24, v25, 1);
                    v28 = v23;
                    MEMORY[0x1B2718AE0](v23, v22, v91);
                    sub_1AFB12AC4(0, &qword_1EB638390, v8, MEMORY[0x1E69E6F90]);
                    v92 = swift_allocObject();
                    *(v92 + 16) = xmmword_1AFE431C0;
                    *(v92 + 32) = 3043177;
                    *(v92 + 40) = 0xE300000000000000;
                    sub_1AF441DD8(0);
                    *(v92 + 48) = 0;
                    *(v92 + 56) = 0;
                    v93 = swift_allocObject();
                    *(v93 + 16) = xmmword_1AFE431C0;
                    *(v93 + 32) = v92;
                    v86 = v93 + 32;
                    goto LABEL_100;
                }
              }

LABEL_96:
              v87 = sub_1AFA56CA0();
              v88 = v53 + 32;
              v89 = v87;
              sub_1AFB12A64(v88, v7, v8, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
            }

            sub_1AF441DD8(0);
            v90 = swift_allocObject();
            *(v90 + 16) = xmmword_1AFE431C0;
            *(v90 + 32) = v89;
            v69 = sub_1AFA56CA0();
            swift_setDeallocating();
            sub_1AFB12A64(v90 + 32, v7, v8, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
          }

          else
          {
            sub_1AF444224(v10);
            sub_1AF443EE0(v9);
            v65 = off_1E7A7FFC0[v23];
            v121 = sub_1AFA56CA0();
            v66 = MEMORY[0x1E69E62F8];
            sub_1AFB12A64(v65, v7, v8, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
            sub_1AF441DD8(0);
            v67 = swift_allocObject();
            *(v67 + 16) = xmmword_1AFE431C0;
            v28 = v23;
            *(v67 + 32) = v121;
            v68 = v67 + 32;
            v69 = sub_1AFA56CA0();
            swift_setDeallocating();
            v2 = v130;
            sub_1AFB12A64(v68, v7, &type metadata for CodeEmitter.Code, v66, sub_1AFB12AC4);
            v8 = &type metadata for CodeEmitter.Code;
          }

          swift_deallocClassInstance();
          goto LABEL_122;
        case 16:
          if (v9 == 0x8000000000000000)
          {
            sub_1AF444224(v10);
            v41 = &unk_1F25015D8;
          }

          else
          {
            if (v9 != 0x8000000000000010)
            {
LABEL_129:
              v133[0] = 0;
              v133[1] = 0xE000000000000000;
              sub_1AF444224(v10);
              sub_1AF443EE0(v9);
              sub_1AFDFE218();
              sub_1AFDFE458();
              MEMORY[0x1B2718AE0](0x70757320746F6E20, 0xEE00646574726F70);
              goto LABEL_130;
            }

            sub_1AF444224(v10);
            v41 = &unk_1F2501570;
          }

          break;
        default:
          goto LABEL_129;
      }

      v39 = sub_1AFA56CA0();
      sub_1AFB12A64(v41 + 32, v7, v8, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
LABEL_123:
      sub_1AF441DD8(0);
      v111 = swift_initStackObject();
      *(v111 + 16) = xmmword_1AFE431C0;
      *(v111 + 32) = v39;
      v112 = v111 + 32;
      v113 = sub_1AFA56CA0();
      swift_setDeallocating();
      sub_1AFB12A64(v112, v7, v8, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v132 = sub_1AF426BC8(0, v132[2] + 1, 1, v132);
      }

      v115 = v132[2];
      v114 = v132[3];
      if (v115 >= v114 >> 1)
      {
        v132 = sub_1AF426BC8(v114 > 1, v115 + 1, 1, v132);
      }

      ++v3;
      sub_1AF443F24(v9);
      sub_1AF444AF4(v131);
      v132[2] = v115 + 1;
      v132[v115 + 4] = v113;
      v6 += 40;
      if (v2 == v3)
      {
        goto LABEL_128;
      }
    }

    if (v11 > 3)
    {
      if ((v11 - 4) < 2)
      {
        goto LABEL_44;
      }

      if (v11 == 8)
      {
        v12 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x21);
        if (v12 >= 3)
        {
          while (1)
          {
            v133[0] = 0;
            v133[1] = 0xE000000000000000;
            sub_1AF444224(v10);
            sub_1AF443EE0(v9);
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF461F0);
            sub_1AFDFE458();
LABEL_130:
            v10 = sub_1AFDFE518();
            __break(1u);
          }
        }

        v13 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x23);
        v14 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x22);
        sub_1AF444224(v10);
        sub_1AF443EE0(v9);
        sub_1AFDFE218();

        strcpy(v133, "vfx_sampler");
        HIDWORD(v133[1]) = -352321536;
        MEMORY[0x1B2718AE0](v12 + 25649, 0xE200000000000000);

        MEMORY[0x1B2718AE0](0x7574786574207B20, 0xEB000000005F6572);
        v15 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v15);

        MEMORY[0x1B2718AE0](0x656C706D6173202CLL, 0xEA00000000002872);
        if (v14 > 1)
        {
          v7 = &unk_1ED723290;
          if (v14 == 2)
          {
            v16 = 0x3A73736572646461;
            v17 = 0xEF7461657065723ALL;
          }

          else
          {
            v16 = 0xD000000000000018;
            v17 = 0x80000001AFF478F0;
          }
        }

        else
        {
          v7 = &unk_1ED723290;
          v16 = 0xD000000000000016;
          if (v14)
          {
            v17 = 0x80000001AFF47930;
          }

          else
          {
            v17 = 0x80000001AFF47910;
          }
        }

        MEMORY[0x1B2718AE0](v16, v17);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        if (v13)
        {
          v59 = 0xEE007261656E696CLL;
        }

        else
        {
          v59 = 0xEF7473657261656ELL;
        }

        MEMORY[0x1B2718AE0](0x3A3A7265746C6966, v59);

        MEMORY[0x1B2718AE0](8200233, 0xE300000000000000);
        v60 = v133[0];
        v61 = v133[1];
        sub_1AFB12AC4(0, &qword_1EB638390, v8, MEMORY[0x1E69E6F90]);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_1AFE431C0;
        *(v62 + 32) = v60;
        *(v62 + 40) = v61;
        sub_1AF441DD8(0);
        *(v62 + 48) = 0;
        *(v62 + 56) = 0;
        v63 = swift_allocObject();
        *(v63 + 16) = xmmword_1AFE431C0;
        *(v63 + 32) = v62;
        v64 = v63 + 32;
        v39 = sub_1AFA56CA0();
        swift_setDeallocating();
        sub_1AFB12A64(v64, &unk_1ED723290, v8, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
        swift_deallocClassInstance();
        v2 = v130;
        goto LABEL_123;
      }

      if (v11 != 9)
      {
        goto LABEL_129;
      }

      if (*((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x20) >= 2u)
      {
        sub_1AF444224(v10);
        sub_1AF443EE0(v9);
        v48 = sub_1AFA56CA0();
        sub_1AFB12A64(&unk_1F25016C8, v7, v8, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
      }

      else
      {
        sub_1AF444224(v10);
        sub_1AF443EE0(v9);
        sub_1AFDFE218();

        strcpy(v133, "emitter_");
        BYTE1(v133[1]) = 0;
        WORD1(v133[1]) = 0;
        HIDWORD(v133[1]) = -402653184;
        v42 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v42);

        MEMORY[0x1B2718AE0](0x28706172776E752ELL, 0xE900000000000029);
        v43 = v133[0];
        v44 = v133[1];
        sub_1AFB12AC4(0, &qword_1EB638390, v8, MEMORY[0x1E69E6F90]);
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_1AFE431C0;
        *(v45 + 32) = v43;
        *(v45 + 40) = v44;
        sub_1AF441DD8(0);
        *(v45 + 48) = 0;
        *(v45 + 56) = 0;
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_1AFE431C0;
        *(v46 + 32) = v45;
        v47 = v46 + 32;
        v48 = sub_1AFA56CA0();
        swift_setDeallocating();
        sub_1AFB12A64(v47, v7, v8, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
        swift_deallocClassInstance();
      }

      sub_1AF441DD8(0);
      goto LABEL_46;
    }

    if (v11)
    {
      if (v11 != 1)
      {
        goto LABEL_129;
      }

      goto LABEL_44;
    }

    v33 = *(v9 + 16);
    sub_1AF444224(v10);
    sub_1AF443EE0(v9);
    if (v33)
    {
      v34 = &unk_1F2501798;
    }

    else
    {
      v34 = &unk_1F2501730;
    }

    v35 = sub_1AFA56CA0();
    v36 = MEMORY[0x1E69E62F8];
    sub_1AFB12A64(v34, &unk_1ED723290, v8, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
    sub_1AF441DD8(0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1AFE431C0;
    *(v37 + 32) = v35;
    v38 = v37 + 32;
    v39 = sub_1AFA56CA0();
    swift_setDeallocating();
    v40 = v36;
    v2 = v130;
    v7 = &unk_1ED723290;
    sub_1AFB12A64(v38, &unk_1ED723290, &type metadata for CodeEmitter.Code, v40, sub_1AFB12AC4);
    v8 = &type metadata for CodeEmitter.Code;
LABEL_47:
    swift_deallocClassInstance();
    goto LABEL_123;
  }

LABEL_128:
  v116 = sub_1AFA56CA0();

  sub_1AF441DD8(0);
  v117 = swift_allocObject();
  *(v117 + 16) = xmmword_1AFE431C0;
  *(v117 + 32) = v116;
  v118 = v117 + 32;
  v119 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AFB12A64(v118, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
  swift_deallocClassInstance();
  return v119;
}

uint64_t sub_1AFB0CB50(char a1, unsigned int a2, char a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v14 = sub_1AFA56CA0();
    sub_1AFB12A64(&unk_1F25028A8, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v131 = v14;
  v132 = a7;
  v133 = a8;
  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      goto LABEL_102;
    }

    if (a1)
    {
      v19 = sub_1AFA56CA0();
      sub_1AFB12A64(&unk_1F2502AA0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC0];
    }

    sub_1AF441DD8(0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1AFE4C680;
    *(v21 + 32) = &unk_1F25029C0;
    *(v21 + 40) = &unk_1F2502A00;
    *(v21 + 48) = v19;
    v130 = sub_1AFA56CA0();
    swift_setDeallocating();
    sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
    swift_arrayDestroy();
    goto LABEL_17;
  }

  if (!a2)
  {
    if (a3)
    {
      v15 = &unk_1F2502910;
    }

    else
    {
      v15 = &unk_1F2502978;
    }

    v16 = sub_1AFA56CA0();
    v17 = MEMORY[0x1E69E62F8];
    sub_1AFB12A64(v15, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
    sub_1AF441DD8(0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1AFE4C620;
    *(v18 + 32) = v16;
    *(v18 + 40) = &unk_1F2502980;
    v130 = sub_1AFA56CA0();
    swift_setDeallocating();
    sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, v17);
    swift_arrayDestroy();
LABEL_17:
    swift_deallocClassInstance();
    goto LABEL_20;
  }

  if (a1)
  {
    v20 = sub_1AFA56CA0();
    sub_1AFB12A64(&unk_1F2502B88, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  sub_1AF441DD8(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C680;
  *(inited + 32) = &unk_1F2502AA8;
  *(inited + 40) = &unk_1F2502AE8;
  *(inited + 48) = v20;
  v130 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
LABEL_20:
  v135 = a2;
  v23 = *(a4 + 16);
  v134 = a4;
  v142 = v23;
  if (v23)
  {
    v24 = 0;
    v25 = a4 + 64;
    v148 = MEMORY[0x1E69E7CC0];
    v26 = MEMORY[0x1E69E7CC0];
    do
    {
      v27 = *(v25 - 32);
      v28 = *(v25 - 16);
      v29 = (v27 >> 59) & 0x1E | (v27 >> 2) & 1;
      v146 = v28;
      if (v29 == 10)
      {
        v33 = *(v25 - 24);
        v143 = *((v27 & 0xFFFFFFFFFFFFFFBLL) + 0x3C);
        sub_1AF443EE0(v27);
        sub_1AF444224(v28);
        sub_1AFA9EF20(v27);
        if (sub_1AFADB4E4(v34, 2u))
        {
          if ((v33 & 2) != 0)
          {
            v35 = MEMORY[0x1E69E6878];
          }

          else
          {
            v35 = MEMORY[0x1E69E6270];
          }
        }

        else
        {
          sub_1AFA9EF20(v27);
        }

        v39 = sub_1AFAF9348(v35, 2u);
        v141 = v40;
        sub_1AFDFE218();

        v41 = sub_1AFDFDFD8();
        if (!swift_conformsToProtocol2())
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF476E0);
          sub_1AFDFE458();
LABEL_102:
          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }

        v42 = sub_1AFB7A5C0(v41);
        v44 = v43;

        MEMORY[0x1B2718AE0](v42, v44);

        MEMORY[0x1B2718AE0](0x2964697028, 0xE500000000000000);
        v45 = 0xEA00000000002E73;
        if (v143 == 5)
        {
          v144 = 0x656C636974726170;
          v26 = MEMORY[0x1E69E7CC0];
          v139 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          sub_1AFDFDFD8();
          v46 = swift_conformsToProtocol2();
          v47 = MEMORY[0x1E69E7CC0];
          if (!v46)
          {
            goto LABEL_100;
          }

          if (swift_dynamicCastMetatype())
          {
            v144 = sub_1AFB0A530(0x656C636974726170, 0xEA00000000002E73, v143);
            v136 = v48;
          }

          else if (swift_dynamicCastMetatype())
          {
            v144 = sub_1AFB0A7A0(0x656C636974726170, 0xEA00000000002E73, v143);
            v136 = v49;
          }

          else if (swift_dynamicCastMetatype())
          {
            v144 = sub_1AFB0A9F4(0x656C636974726170, 0xEA00000000002E73, v143, 1);
            v136 = v50;
          }

          else if (swift_dynamicCastMetatype())
          {
            v144 = sub_1AFB0A9F4(0x656C636974726170, 0xEA00000000002E73, v143, 2);
            v136 = v51;
          }

          else if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
          {
            v144 = sub_1AFB0A9F4(0x656C636974726170, 0xEA00000000002E73, v143, 3);
            v136 = v52;
          }

          else
          {
            if (!swift_dynamicCastMetatype())
            {
              goto LABEL_101;
            }

            v144 = sub_1AFB0AD44(0x656C636974726170, 0xEA00000000002E73, v143);
            v136 = v69;
          }

          sub_1AF441DD8(0);
          v53 = swift_initStackObject();
          *(v53 + 16) = xmmword_1AFE431C0;
          *(v53 + 32) = v47;
          v54 = v53 + 32;
          v55 = sub_1AFA56CA0();
          swift_setDeallocating();
          v56 = MEMORY[0x1E69E62F8];
          sub_1AFB12A64(v54, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
          v57 = swift_initStackObject();
          *(v57 + 16) = xmmword_1AFE431C0;
          *(v57 + 32) = v55;
          v58 = v57 + 32;
          v139 = sub_1AFA56CA0();
          swift_setDeallocating();
          v59 = v56;
          v26 = MEMORY[0x1E69E7CC0];
          sub_1AFB12A64(v58, &unk_1ED723290, &type metadata for CodeEmitter.Code, v59, sub_1AFB12AC4);
          v45 = v136;
        }

        sub_1AFDFE218();

        MEMORY[0x1B2718AE0](0x6C63697472617020, 0xEF5F617461645F65);
        v60 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v60);

        MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
        MEMORY[0x1B2718AE0](v144, v45);

        MEMORY[0x1B2718AE0](59, 0xE100000000000000);
        sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
        v61 = swift_initStackObject();
        *(v61 + 16) = xmmword_1AFE431C0;
        *(v61 + 32) = v39;
        *(v61 + 40) = v141;
        sub_1AF441DD8(0);
        *(v61 + 48) = 0;
        *(v61 + 56) = 0;
        v62 = swift_initStackObject();
        *(v62 + 16) = xmmword_1AFE4C620;
        *(v62 + 32) = v139;
        *(v62 + 40) = v61;
        v30 = sub_1AFA56CA0();
        swift_setDeallocating();
        sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
        swift_arrayDestroy();
        v23 = v142;
      }

      else
      {
        if (v29 == 13)
        {
          sub_1AF443EE0(v27);
          sub_1AF444224(v28);
          v30 = sub_1AFA56CA0();
          v31 = MEMORY[0x1E69E62F8];
          v32 = &unk_1F2502BF0;
        }

        else
        {
          sub_1AF441DD8(0);
          v36 = swift_initStackObject();
          *(v36 + 16) = xmmword_1AFE431C0;
          v37 = v28;
          *(v36 + 32) = v26;
          v38 = (v36 + 32);
          sub_1AF443EE0(v27);
          sub_1AF444224(v37);
          v30 = sub_1AFA56CA0();
          swift_setDeallocating();
          v31 = MEMORY[0x1E69E62F8];
          v32 = v38;
        }

        sub_1AFB12A64(v32, &unk_1ED723290, &type metadata for CodeEmitter.Code, v31, sub_1AFB12AC4);
      }

      sub_1AF441DD8(0);
      v63 = swift_initStackObject();
      *(v63 + 16) = xmmword_1AFE431C0;
      *(v63 + 32) = v30;
      v64 = v63 + 32;
      v65 = sub_1AFA56CA0();
      swift_setDeallocating();
      sub_1AFB12A64(v64, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
      v66 = v148;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_1AF426BC8(0, v148[2] + 1, 1, v148);
      }

      v68 = v66[2];
      v67 = v66[3];
      if (v68 >= v67 >> 1)
      {
        v66 = sub_1AF426BC8(v67 > 1, v68 + 1, 1, v66);
      }

      ++v24;
      sub_1AF443F24(v27);
      sub_1AF444AF4(v146);
      v66[2] = v68 + 1;
      v148 = v66;
      v66[v68 + 4] = v65;
      v25 += 40;
    }

    while (v23 != v24);
  }

  v70 = sub_1AFA56CA0();

  v140 = v70;
  if (v135 == 1)
  {

    MEMORY[0x1B2718AE0](0x7B203D2074756F20, 0xEA00000000003B7DLL);
    sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_1AFE431C0;
    *(v71 + 32) = a5;
    *(v71 + 40) = a6;
    sub_1AF441DD8(0);
    *(v71 + 48) = 0;
    *(v71 + 56) = 0;
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_1AFE431C0;
    *(v72 + 32) = v71;
    v73 = v72 + 32;
    v138 = sub_1AFA56CA0();
    swift_setDeallocating();
    sub_1AFB12A64(v73, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
    v74 = v134;
  }

  else
  {
    v74 = v134;
    if (v135 != 2)
    {
      v138 = MEMORY[0x1E69E7CC0];
      goto LABEL_63;
    }

    MEMORY[0x1B2718AE0](0x7D7B203D206F6920, 0xE90000000000003BLL);
    sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_1AFE431C0;
    *(v75 + 32) = a5;
    *(v75 + 40) = a6;
    sub_1AF441DD8(0);
    *(v75 + 48) = 0;
    *(v75 + 56) = 0;
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_1AFE4C680;
    *(v76 + 32) = &unk_1F2502BF8;
    *(v76 + 40) = &unk_1F2502C38;
    *(v76 + 48) = v75;
    v138 = sub_1AFA56CA0();
    swift_setDeallocating();
    sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
    swift_arrayDestroy();
  }

  swift_deallocClassInstance();
LABEL_63:

  v77 = sub_1AFA5439C(v132, v133, 0, v74, v135);
  v79 = v78;

  MEMORY[0x1B2718AE0](59, 0xE100000000000000);

  sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  v80 = swift_initStackObject();
  *(v80 + 16) = xmmword_1AFE431C0;
  *(v80 + 32) = v77;
  *(v80 + 40) = v79;
  *(v80 + 48) = 0;
  *(v80 + 56) = 0;
  v137 = v80;
  v81 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v82 = 0;
    v83 = (v74 + 48);
    v84 = MEMORY[0x1E69E7CC0];
    do
    {
      v85 = *(v83 - 2);
      v86 = *v83;
      v147 = *v83;
      v145 = v85;
      if (((v85 >> 59) & 0x1E | (v85 >> 2) & 1) == 0xA)
      {
        if ((*(v83 - 1) & 2) != 0)
        {
          sub_1AF443EE0(v85);
          sub_1AF444224(v86);
          sub_1AFDFE218();

          v90 = sub_1AFDFDFD8();
          if (!swift_conformsToProtocol2())
          {
            goto LABEL_99;
          }

          sub_1AFB7A5C0(v90);
          v92 = v91;
          v94 = v93;

          MEMORY[0x1B2718AE0](v92, v94);

          MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF47700);
          v95 = sub_1AFDFEA08();
          MEMORY[0x1B2718AE0](v95);

          MEMORY[0x1B2718AE0](15145, 0xE200000000000000);
          v96 = swift_initStackObject();
          *(v96 + 16) = xmmword_1AFE431C0;
          *(v96 + 32) = 0x656C636974726170;
          *(v96 + 40) = 0xEA00000000002E73;
          sub_1AF441DD8(0);
          *(v96 + 48) = 0;
          *(v96 + 56) = 0;
          v97 = swift_allocObject();
          *(v97 + 16) = xmmword_1AFE4C620;
          *(v97 + 32) = v81;
          *(v97 + 40) = v96;
          v87 = sub_1AFA56CA0();
          swift_setDeallocating();
          sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
          swift_arrayDestroy();
          swift_deallocClassInstance();
        }

        else
        {
          sub_1AF443EE0(v85);
          sub_1AF444224(v86);
          v87 = v81;
        }

        sub_1AF441DD8(0);
        v98 = swift_initStackObject();
        *(v98 + 16) = xmmword_1AFE431C0;
        *(v98 + 32) = v87;
        v89 = v98 + 32;
      }

      else
      {
        sub_1AF441DD8(0);
        v88 = swift_initStackObject();
        *(v88 + 16) = xmmword_1AFE431C0;
        *(v88 + 32) = v81;
        v89 = v88 + 32;
        sub_1AF443EE0(v85);
        sub_1AF444224(v86);
      }

      v99 = sub_1AFA56CA0();
      swift_setDeallocating();
      v100 = MEMORY[0x1E69E62F8];
      sub_1AFB12A64(v89, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
      sub_1AF441DD8(0);
      v101 = swift_initStackObject();
      *(v101 + 16) = xmmword_1AFE431C0;
      *(v101 + 32) = v99;
      v102 = v101 + 32;
      v103 = sub_1AFA56CA0();
      swift_setDeallocating();
      sub_1AFB12A64(v102, &unk_1ED723290, &type metadata for CodeEmitter.Code, v100, sub_1AFB12AC4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v84 = sub_1AF426BC8(0, v84[2] + 1, 1, v84);
      }

      v105 = v84[2];
      v104 = v84[3];
      v81 = MEMORY[0x1E69E7CC0];
      if (v105 >= v104 >> 1)
      {
        v84 = sub_1AF426BC8(v104 > 1, v105 + 1, 1, v84);
      }

      ++v82;
      v83 += 5;
      sub_1AF443F24(v145);
      sub_1AF444AF4(v147);
      v84[2] = v105 + 1;
      v84[v105 + 4] = v103;
    }

    while (v142 != v82);
  }

  v106 = sub_1AFA56CA0();

  v107 = MEMORY[0x1E69E7CC0];
  v108 = MEMORY[0x1E69E7CC0];
  if (v135 == 2)
  {
    v109 = v142;
    if (v142)
    {
      v110 = (v134 + 32);
      v111 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v113 = *v110;
        v110 += 5;
        v112 = v113;
        if (((v113 >> 59) & 0x1E | (v113 >> 2) & 1) == 0xE)
        {
          v114 = v112 & 0xFFFFFFFFFFFFFFBLL;
          v115 = *((v112 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
          if (v115 <= 1)
          {
            v116 = *(v114 + 24);
            if (v115 && v116 == 0)
            {
              break;
            }
          }
        }

        if (!--v109)
        {
          goto LABEL_89;
        }
      }
    }

    else
    {
LABEL_89:
      v111 = sub_1AFA56CA0();
      sub_1AFB12A64(&unk_1F2502D58, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
    }

    sub_1AF441DD8(0);
    v118 = swift_allocObject();
    *(v118 + 32) = &unk_1F2502C78;
    *(v118 + 16) = xmmword_1AFE4C6B0;
    *(v118 + 40) = &unk_1F2502CB8;
    *(v118 + 48) = v111;
    *(v118 + 56) = &unk_1F2502D60;
    v108 = sub_1AFA56CA0();
    swift_setDeallocating();
    sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  if (v135 == 1)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000043, 0x80000001AFF47720);
    MEMORY[0x1B2718AE0](0xD00000000000007DLL, 0x80000001AFF256A0);
    MEMORY[0x1B2718AE0](0xD00000000000003BLL, 0x80000001AFF47770);
    v119 = swift_allocObject();
    *(v119 + 16) = xmmword_1AFE431C0;
    *(v119 + 32) = 0;
    *(v119 + 40) = 0xE000000000000000;
    sub_1AF441DD8(0);
    *(v119 + 48) = 0;
    *(v119 + 56) = 0;
    v120 = swift_allocObject();
    *(v120 + 16) = xmmword_1AFE4C6A0;
    *(v120 + 32) = &unk_1F2502DA0;
    *(v120 + 40) = v119;
    *(v120 + 48) = &unk_1F2502DE0;
    *(v120 + 56) = &unk_1F2502E20;
    *(v120 + 64) = &unk_1F2502E60;
    v107 = sub_1AFA56CA0();
    swift_setDeallocating();
    v121 = MEMORY[0x1E69E62F8];
    sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v122 = sub_1AFA56CA0();
    sub_1AFB12A64(&unk_1F2502F68, &unk_1ED723290, &type metadata for CodeEmitter.Code, v121, sub_1AFB12AC4);
  }

  else if (v135)
  {
    if (v135 != 2)
    {
      goto LABEL_102;
    }

    v122 = sub_1AFA56CA0();
    sub_1AFB12A64(&unk_1F2502F00, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
    v107 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1AF441DD8(0);
    v123 = swift_allocObject();
    *(v123 + 16) = xmmword_1AFE431C0;
    *(v123 + 32) = v107;
    v124 = v123 + 32;
    v122 = sub_1AFA56CA0();
    swift_setDeallocating();
    sub_1AFB12A64(v124, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
    swift_deallocClassInstance();
  }

  sub_1AF441DD8(0);
  v125 = swift_allocObject();
  *(v125 + 16) = xmmword_1AFE4C5E0;
  *(v125 + 32) = v131;
  *(v125 + 40) = v130;
  *(v125 + 48) = v140;
  *(v125 + 56) = v138;
  *(v125 + 64) = v137;
  *(v125 + 72) = v106;
  *(v125 + 80) = v108;
  *(v125 + 88) = v107;
  *(v125 + 96) = v122;
  v126 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v126;
}

uint64_t sub_1AFB0E3C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unsigned int a8@<W7>, uint64_t *a9@<X8>, uint64_t a10, unint64_t a11)
{
  v81 = a6;
  v88 = a3;
  v89 = a4;

  MEMORY[0x1B2718AE0](10, 0xE100000000000000);
  v71 = a5;
  if (a8 > 1u)
  {
    if (a8 != 2)
    {
LABEL_76:
      result = sub_1AFDFE518();
      __break(1u);
      return result;
    }

    v18 = 0xED0000737475706ELL;
    v17 = 0x695F786574726576;
  }

  else
  {
    if (a8)
    {
      v17 = 0x746E656D67617266;
    }

    else
    {
      v17 = 0x5F657475706D6F63;
    }

    if (a8)
    {
      v18 = 0xEF737475706E695FLL;
    }

    else
    {
      v18 = 0xEE00737475706E69;
    }
  }

  v19 = sub_1AFA54200(v17, v18, v81);
  v21 = v20;

  MEMORY[0x1B2718AE0](v19, v21);

  if (!a8)
  {
    v79 = 1;
    v33 = 0xE400000000000000;
    v34 = 1684631414;
LABEL_36:
    v80[0] = v34;
    v80[1] = v33;
    v32 = *(a7 + 16);
    if (v32)
    {
      goto LABEL_39;
    }

LABEL_46:
    v41 = a1;
    v42 = 0;
    goto LABEL_47;
  }

  if (a8 != 1)
  {
    v79 = 1;
    v33 = 0xE200000000000000;
    v34 = 28521;
    goto LABEL_36;
  }

  strcpy(v80, "fragment_out");
  BYTE5(v80[1]) = 0;
  HIWORD(v80[1]) = -5120;
  v22 = sub_1AFA54218();
  MEMORY[0x1B2718AE0](v22);

  v23 = *(a7 + 16);
  if (!v23)
  {
LABEL_38:
    v79 = 0;
    v32 = *(a7 + 16);
    if (!v32)
    {
      goto LABEL_46;
    }

    goto LABEL_39;
  }

  v24 = (a7 + 32);
  while (1)
  {
    v28 = *v24;
    v24 += 5;
    v27 = v28;
    v29 = (v28 >> 59) & 0x1E | (v28 >> 2) & 1;
    if (v29 <= 13)
    {
      if (v29 == 9)
      {
        v31 = v27 & 0xFFFFFFFFFFFFFFBLL;
        if (*(v31 + 32) == 2 && *(v31 + 16) == 0)
        {
          goto LABEL_32;
        }
      }

      else if (v29 == 10)
      {
        goto LABEL_32;
      }

      goto LABEL_18;
    }

    if (v29 == 14)
    {
      break;
    }

    if (v29 == 16 && v27 == 0x8000000000000010)
    {
      goto LABEL_32;
    }

LABEL_18:
    if (!--v23)
    {
      goto LABEL_38;
    }
  }

  v25 = v27 & 0xFFFFFFFFFFFFFFBLL;
  if (*(v25 + 48) != 5 || *(v25 + 16) != 9)
  {
    goto LABEL_18;
  }

LABEL_32:
  v79 = 1;
  v32 = *(a7 + 16);
  if (!v32)
  {
    goto LABEL_46;
  }

LABEL_39:
  v35 = (a7 + 32);
  while (1)
  {
    v37 = *v35;
    v35 += 5;
    v36 = v37;
    if (((v37 >> 59) & 0x1E | (v37 >> 2) & 1) == 0xE)
    {
      v38 = v36 & 0xFFFFFFFFFFFFFFBLL;
      v39 = *((v36 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v40 = *(v38 + 48);
      if (((1 << v40) & 0x3B) == 0 && v40 == 2 && !v39)
      {
        break;
      }
    }

    if (!--v32)
    {
      goto LABEL_46;
    }
  }

  v41 = a1;
  v42 = 1;
LABEL_47:
  v43 = 0x706D6F635F786676;
  v76 = a9;
  v74 = a7;
  if (a8 > 1u)
  {
    if (a8 == 2)
    {
      v44 = 0x786574726576;
      v77 = 0xEA00000000007865;
      v78 = 0xE600000000000000;
      v43 = 0x747265765F786676;
      goto LABEL_53;
    }

    goto LABEL_76;
  }

  if (a8)
  {
    v43 = 0x676172665F786676;
    v44 = 0x746E656D67617266;
    v77 = 0xEC000000746E656DLL;
    v78 = 0xE800000000000000;
  }

  else
  {
    v77 = 0xEB00000000657475;
    v78 = 0xE600000000000000;
    v44 = 0x6C656E72656BLL;
  }

LABEL_53:
  v72 = v41;
  v73 = a2;
  v86 = 0;
  v87 = 0xE000000000000000;
  v45 = &unk_1F2502F80;
  if (a11 < 2)
  {
    v45 = (MEMORY[0x1E69E7CC0] + 16);
  }

  v46 = *v45;
  if (*v45)
  {
    if (a11 >= 2)
    {
      v47 = &unk_1F2502F90;
    }

    else
    {
      v47 = (MEMORY[0x1E69E7CC0] + 32);
    }

    v48 = (v47 + 8);
    do
    {
      v49 = *v48;
      v84 = *(v48 - 1);
      v85 = v49;

      MEMORY[0x1B2718AE0](32, 0xE100000000000000);
      MEMORY[0x1B2718AE0](v84, v85);

      v48 += 2;
      --v46;
    }

    while (v46);
  }

  else
  {
  }

  MEMORY[0x1B2718AE0](32, 0xE100000000000000);
  MEMORY[0x1B2718AE0](v44, v78);

  v84 = v80[0];
  v85 = v80[1];

  MEMORY[0x1B2718AE0](32, 0xE100000000000000);
  MEMORY[0x1B2718AE0](v43, v77);
  MEMORY[0x1B2718AE0](40, 0xE100000000000000);
  MEMORY[0x1B2718AE0](v80[0], v80[1]);

  v75 = a8;
  v50 = sub_1AFB09378(a8, 28521, 0xE200000000000000, v42, v17, v18, v79, v81);
  v51 = *(v50 + 16);
  if (v51)
  {
    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
    v52 = 0;
    v53 = (v50 + 56);
    do
    {
      v57 = *(v53 - 2);
      v58 = *(v53 - 1);
      v59 = *v53;
      v84 = *(v53 - 3);
      v85 = v57;
      v60 = *(v50 + 16) - 1;

      swift_bridgeObjectRetain_n();
      if (v52 != v60)
      {
        MEMORY[0x1B2718AE0](44, 0xE100000000000000);
      }

      if (v59)
      {
        v82 = 539963168;
        v83 = 0xE400000000000000;
        MEMORY[0x1B2718AE0](v58, v59);

        MEMORY[0x1B2718AE0](539963168, 0xE400000000000000);
      }

      ++v52;
      v53 += 4;
      MEMORY[0x1B2718AE0](10, 0xE100000000000000);
      v54 = sub_1AFAF888C(4);
      v56 = v55;

      MEMORY[0x1B2718AE0](v54, v56);
    }

    while (v51 != v52);
  }

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);

  MEMORY[0x1B2718AE0](686880, 0xE300000000000000);
  v61 = sub_1AFB0CB50(v79, v75, v71 & 1, v74, v80[0], v80[1], v72, v73);

  sub_1AFA5413C(v61);

  v62 = sub_1AFAF888C(4);
  v64 = v63;

  MEMORY[0x1B2718AE0](v62, v64);

  MEMORY[0x1B2718AE0](125, 0xE100000000000000);

  MEMORY[0x1B2718AE0](v86, v87);

  sub_1AFB12AC4(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
  result = swift_allocObject();
  *(result + 16) = xmmword_1AFE431C0;
  if (v75 > 1u)
  {
    v66 = v76;
    if (v75 == 2)
    {
      v68 = 0x747265765F786676;
      v67 = 0xEA00000000007865;
      goto LABEL_75;
    }

    goto LABEL_76;
  }

  v66 = v76;
  v67 = 0xEB00000000657475;
  v68 = 0x706D6F635F786676;
  if (v75)
  {
    v68 = 0x676172665F786676;
    v67 = 0xEC000000746E656DLL;
  }

LABEL_75:
  *(result + 32) = v68;
  *(result + 40) = v67;
  *(result + 48) = v75;
  v69 = v88;
  v70 = v89;
  *v66 = result;
  v66[1] = v69;
  v66[2] = v70;
  v66[3] = 11565;
  v66[4] = 0xE200000000000000;
  return result;
}

uint64_t sub_1AFB0EC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AF4486E4();
  if (sub_1AFDFDF18())
  {
    if (!a4)
    {

      return a1;
    }

    v7 = a1;
    v8 = a2;
    goto LABEL_6;
  }

  MEMORY[0x1B2718AE0](0x545049524353255FLL, 0xEC0000002544495FLL);
  v7 = a1;
  v8 = a2;
  if (a4)
  {

    MEMORY[0x1B2718AE0](a1, a2);
    sub_1AFDFE218();

    MEMORY[0x1B2718AE0](a1, a2);
    MEMORY[0x1B2718AE0](0x545049524353255FLL, 0xEC0000002544495FLL);
    sub_1AFDFDEB8();

LABEL_6:
    MEMORY[0x1B2718AE0](v7, v8);
    sub_1AFDFE218();

    MEMORY[0x1B2718AE0](v7, v8);
    sub_1AFDFDEB8();
  }

  return v7;
}

void sub_1AFB0EF20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AFB0EF84(uint64_t *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, char **a7@<X8>)
{
  v9 = *a1;
  v29 = a1[3];
  v30 = a1[4];
  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      sub_1AFDFE518();
      __break(1u);
      return;
    }

    v11 = "%PROJECT%_%KIND%_%ORIG_ENTITY%";
    v10 = 0xD00000000000001DLL;
  }

  else
  {
    if (a2)
    {
      v10 = 0xD00000000000001DLL;
    }

    else
    {
      v10 = 0xD000000000000017;
    }

    if (a2)
    {
      v11 = "%PROJECT%_%KIND%_%ORIG_ENTITY%";
    }

    else
    {
      v11 = "vfx_custom_shader_%SCRIPT_ID%";
    }
  }

  v12 = v11 | 0x8000000000000000;
  v31 = v9;

  MEMORY[0x1B2718AE0](v10, v12);
  MEMORY[0x1B2718AE0](686880, 0xE300000000000000);
  v28 = a6;
  if (a6 >= 2)
  {
    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
    v13 = 0xD000000000000020;
    v14 = 0x80000001AFF25E80;
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  v15 = a1[1];
  v16 = a1[2];

  MEMORY[0x1B2718AE0](v13, v14);

  MEMORY[0x1B2718AE0](v15, v16);

  sub_1AFDFE218();

  MEMORY[0x1B2718AE0](v10, v12);
  MEMORY[0x1B2718AE0](10, 0xE100000000000000);

  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF47E90);

  v18 = 0x63617073656D616ELL;
  v17 = 0xEA00000000002065;
  v19 = v31;
  v20 = *(v31 + 16);
  if (v20)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1AFC0DC9C(v31);
    }

    v32 = v19;
    v21 = (v19 + 40);
    do
    {

      MEMORY[0x1B2718AE0](14906, 0xE200000000000000);
      v22 = *(v21 - 1);
      v23 = *v21;

      MEMORY[0x1B2718AE0](v22, v23);

      *(v21 - 1) = v10;
      *v21 = v12;

      v21 += 3;
      --v20;
    }

    while (v20);
    v19 = v32;
  }

  if (v28 >= 2)
  {

    MEMORY[0x1B2718AE0](a5, v28);

    MEMORY[0x1B2718AE0](0x63617073656D616ELL, 0xEA00000000002065);

    v18 = a3;
    v17 = a4;
  }

  *a7 = v19;
  a7[1] = v18;
  a7[2] = v17;
  a7[3] = v29;
  a7[4] = v30;
}

void *sub_1AFB0F318(uint64_t a1, void *a2, unint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;

  v6 = sub_1AFB08304(0, a2, a3);
  if (v7)
  {
    v3[5] = v6;
    v3[6] = v7;
    return v3;
  }

  else
  {
    sub_1AFDFE218();

    MEMORY[0x1B2718AE0](a2, a3);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

char *sub_1AFB0F3FC()
{
  v2 = v1;
  v3 = v0;
  sub_1AFB0EF20(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v170 = &v167 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v173 = (&v167 - v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v167 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v191 = (&v167 - v12);
  v198 = type metadata accessor for MetalFunctionScript(0);
  v169 = *(v198 - 1);
  MEMORY[0x1EEE9AC00](v198);
  v176 = (&v167 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v242 = (&v167 - v15);
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v236 = qword_1ED73B840;
  v237 = 0;
  v238 = 2;
  v239 = 0;
  v240 = 2;
  v241 = 0;
  sub_1AF7044B4(1, &v206);
  v230 = v206;
  v231 = v207;
  v232 = v208;
  v233 = v209 | 1;
  v234 = v210;
  v235 = v211;
  sub_1AF6B06C0(v0[2], &v230, 0x200000000, v212);
  v175 = *&v212[0];
  if (!*&v212[0])
  {
    v159 = &qword_1ED723D10;
    v160 = &off_1F255B630;
    v161 = type metadata accessor for MetalFunctionScript;
    v162 = sub_1AFB12B74;
    v163 = &v206;
LABEL_133:
    sub_1AFB12A64(v163, v159, v161, v160, v162);
    return MEMORY[0x1E69E7CC0];
  }

  v174 = *(&v212[2] + 1);
  v16 = *(&v213 + 1);
  v180 = *(&v214 + 1);
  v220 = *(v212 + 8);
  v221 = *(&v212[1] + 8);
  if (v215 < 1)
  {
    sub_1AFB12A64(&v206, &qword_1ED723D10, type metadata accessor for MetalFunctionScript, &off_1F255B630, sub_1AFB12B74);
    v159 = &qword_1ED725EA0;
    v161 = &type metadata for QueryResult;
    v160 = MEMORY[0x1E69E6720];
    v162 = sub_1AFB12AC4;
    v163 = v212;
    goto LABEL_133;
  }

  if (!*(&v213 + 1))
  {
    v202 = v212[2];
    v203 = v213;
    v204 = v214;
    v205 = v215;
    v200 = v212[0];
    v201 = v212[1];
    sub_1AF5DD298(&v200, v199);
    sub_1AFB12A64(&v206, &qword_1ED723D10, type metadata accessor for MetalFunctionScript, &off_1F255B630, sub_1AFB12B74);
    sub_1AFB12A64(v212, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_135;
  }

  v179 = v180[4];
  v178 = *(v214 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v202 = v212[2];
  v203 = v213;
  v204 = v214;
  v205 = v215;
  v200 = v212[0];
  v201 = v212[1];
  sub_1AF5DD298(&v200, v199);
  v17 = 0;
  v182 = "material property '";
  v18 = MEMORY[0x1E69E7CC0];
  v181 = xmmword_1AFE431C0;
  v183 = v3;
  v185 = v10;
  v172 = v16;
  while (1)
  {
    v195 = v2;
    v177 = v17;
    v19 = (v174 + 48 * v17);
    v20 = *v19;
    v22 = *(v19 + 2);
    v21 = *(v19 + 3);
    v196 = v19[1];
    v197 = v21;
    v23 = *(v19 + 4);
    if (v178)
    {
      v24 = *(v19 + 5);
      v25 = *(v24 + 376);

      os_unfair_lock_lock(v25);
      os_unfair_lock_lock(*(v24 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v179);
    v26 = v180;
    v27 = *(v180 + 4);
    v227[0] = *(v180 + 3);
    v227[1] = v27;
    v228 = v180[10];
    v28 = *(*(*(*(v24 + 40) + 16) + 32) + 16) + 1;
    v26[6] = ecs_stack_allocator_allocate(v180[4], 48 * v28, 8);
    v26[7] = v28;
    v26[9] = 0;
    v26[10] = 0;
    v26[8] = 0;
    v29 = v22;
    v194 = v24;
    v30 = sub_1AF64B110(v198, &off_1F255B630, v22, v197, v23, v26);
    v31 = v30;
    if (v29)
    {
      if (v23)
      {
        v184 = *(v169 + 72);
        while (1)
        {
          v196 = v23;
          v33 = *v29;
          v34 = *(*v3 + 104);
          v35 = v34();
          v197 = v29 + 1;
          if (!v35)
          {
            break;
          }

          v36 = sub_1AFDFEE28();

          if ((v36 & 1) == 0)
          {
            if ((v34)(v37) == 1)
            {
              break;
            }

            v38 = sub_1AFDFEE28();

            if ((v38 & 1) == 0)
            {
              v40 = *(v31 + 16);
              v41 = (v34)(v39);
              if (v40 <= 1)
              {
                if (v40)
                {
                  v42 = 0xE600000000000000;
                  v43 = 0x7070636A626FLL;
                }

                else
                {
                  v42 = 0xE100000000000000;
                  v43 = 99;
                }
              }

              else if (v40 == 2)
              {
                v42 = 0xE500000000000000;
                v43 = 0x6C6174656DLL;
              }

              else if (v40 == 3)
              {
                v42 = 0xE500000000000000;
                v43 = 0x7466697773;
              }

              else
              {
                v42 = 0xE200000000000000;
                v43 = 29546;
              }

              if (v41 <= 1u)
              {
                if (v41)
                {
                  v47 = 0xE600000000000000;
                  if (v43 != 0x7070636A626FLL)
                  {
                    goto LABEL_66;
                  }
                }

                else
                {
                  v47 = 0xE100000000000000;
                  if (v43 != 99)
                  {
                    goto LABEL_66;
                  }
                }
              }

              else if (v41 == 2)
              {
                v47 = 0xE500000000000000;
                if (v43 != 0x6C6174656DLL)
                {
                  goto LABEL_66;
                }
              }

              else if (v41 == 3)
              {
                v47 = 0xE500000000000000;
                if (v43 != 0x7466697773)
                {
                  goto LABEL_66;
                }
              }

              else
              {
                v47 = 0xE200000000000000;
                if (v43 != 29546)
                {
                  goto LABEL_66;
                }
              }

              if (v42 != v47)
              {
LABEL_66:
                v92 = sub_1AFDFEE28();

                if ((v92 & 1) == 0)
                {
                  goto LABEL_15;
                }

                goto LABEL_52;
              }

              goto LABEL_51;
            }
          }

LABEL_25:
          v44 = *(v31 + 16);
          if (v44 <= 1 && !*(v31 + 16))
          {
            goto LABEL_51;
          }

          v45 = sub_1AFDFEE28();

          if ((v45 & 1) == 0)
          {
            if (v44 != 1)
            {
              v46 = sub_1AFDFEE28();

              if ((v46 & 1) == 0)
              {
                goto LABEL_15;
              }

              goto LABEL_52;
            }

LABEL_51:
          }

LABEL_52:
          v193 = v18;
          sub_1AFB12BD8(v31, v242, type metadata accessor for MetalFunctionScript);
          v48 = v3[5];
          v190 = v3[6];
          v49 = v194;

          if (v49[184])
          {
            goto LABEL_137;
          }

          v51 = *(*(v50 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * *(*(v49 + 21) + 4 * v33) + 8);
          v188 = *(*(v49 + 21) + 4 * v33);
          v189 = v51;

          v52 = v198[6];
          v192 = v31;
          v53 = v185;
          sub_1AFB12858(v31 + v52, v185);
          v54 = type metadata accessor for ScriptIndex(0);
          v55 = *(v54 - 8);
          v56 = *(v55 + 48);
          if (v56(v53, 1, v54) == 1)
          {

            if (v49[184])
            {
              goto LABEL_137;
            }

            v58 = *(*(v49 + 21) + 4 * v33);
            v59 = *(*(v57 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v58 + 8);

            v60 = v191;
            *v191 = v58;
            v60[1] = v59;
            swift_storeEnumTagMultiPayload();
            v61 = v185;
            if (v56(v185, 1, v54) != 1)
            {
              sub_1AF687E28(v61);
            }
          }

          else
          {
            v60 = v191;
            sub_1AFB128EC(v53, v191);
          }

          (*(v55 + 56))(v60, 0, 1, v54);
          v62 = *(v242 + v198[8]);
          if (v62[2])
          {
            v63 = v62[4];
            v64 = v62[5];
          }

          else
          {
            v63 = 0;
            v64 = 0;
          }

          v65 = v188;
          v187 = v188;
          v66 = v242;
          v67 = sub_1AFB08DA4(v63, v64, *v242, v242[1], 1, 1);
          v69 = v68;
          v71 = v70;
          v73 = v72;

          sub_1AFB12AC4(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
          v74 = swift_allocObject();
          *(v74 + 16) = v181;
          v75 = v198[9];
          *(v74 + 32) = v67;
          *(v74 + 40) = v69;
          v76 = *(v66 + v75);
          *(v74 + 48) = v76;
          v229[0] = v74;
          v229[1] = v71;
          v229[2] = v73;
          v229[3] = 11565;
          v229[4] = 0xE200000000000000;
          sub_1AFB0EF84(v229, v76, 0xD00000000000002FLL, v182 | 0x8000000000000000, 0, 0, v216);

          v186 = &v167;
          v225 = v217;
          v78 = v216[2];
          v79 = v216[1];
          v80 = v216[0];
          MEMORY[0x1EEE9AC00](v77);
          v81 = v189;
          v82 = v190;
          *(&v167 - 6) = v48;
          *(&v167 - 5) = v82;
          *(&v167 - 8) = v65;
          *(&v167 - 7) = v81;
          *(&v167 - 3) = 0x6C656E72656BLL;
          v165 = 0xE600000000000000;
          v83 = v191;
          v166 = v191;
          v84 = v195;
          v188 = sub_1AFBFBEF0(sub_1AFA9EB54, (&v167 - 8), v80);
          v195 = v84;
          v85 = sub_1AFAF8B58(v79, v78, v48, v82, v187 | (v81 << 32), 0x6C656E72656BuLL, 0xE600000000000000, v83);
          v87 = v86;

          sub_1AF585778(&v225);
          sub_1AFB12B14(v242, type metadata accessor for MetalFunctionScript);
          sub_1AF687E28(v83);
          v88 = v194;

          if (v88[184])
          {
            goto LABEL_137;
          }

          v18 = v193;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v3 = v183;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v18 = sub_1AF425C8C(0, *(v18 + 2) + 1, 1, v18);
          }

          v91 = *(v18 + 2);
          v90 = *(v18 + 3);
          if (v91 >= v90 >> 1)
          {
            v18 = sub_1AF425C8C(v90 > 1, v91 + 1, 1, v18);
          }

          *(v18 + 2) = v91 + 1;
          v32 = &v18[40 * v91];
          *(v32 + 4) = v188;
          *(v32 + 5) = v85;
          *(v32 + 6) = v87;
          strcpy(v32 + 56, "Kernel Script");
          *(v32 + 35) = -4864;
          v31 = v192;
LABEL_15:
          v31 += v184;
          v29 = v197;
          v23 = v196 - 1;
          if (v196 == 1)
          {
            goto LABEL_128;
          }
        }

        goto LABEL_25;
      }

      goto LABEL_128;
    }

    if (v20 != v196)
    {
      break;
    }

LABEL_128:
    v222 = v175;
    v223 = v220;
    v224 = v221;
    v157 = v195;
    sub_1AF630994(v180, &v222, v227);
    v2 = v157;
    v158 = v194;
    sub_1AF62D29C(v194);
    ecs_stack_allocator_pop_snapshot(v179);
    if (v178)
    {
      os_unfair_lock_unlock(*(v158 + 43));
      os_unfair_lock_unlock(*(v158 + 47));
    }

    v17 = v177 + 1;
    if (v177 + 1 == v172)
    {
      sub_1AFB12A64(&v206, &qword_1ED723D10, type metadata accessor for MetalFunctionScript, &off_1F255B630, sub_1AFB12B74);
      sub_1AFB12A64(v212, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
LABEL_135:
      sub_1AFB12A64(v212, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
      return v18;
    }
  }

  v197 = *(v169 + 72);
  v168 = v196 - 1;
  v192 = v30;
  while (2)
  {
    v193 = v18;
    v93 = v31 + v197 * v20;
    v94 = v20;
    v95 = v196;
    while (2)
    {
      v96 = *(*v3 + 104);
      if (!v96())
      {
        goto LABEL_79;
      }

      v97 = sub_1AFDFEE28();

      if (v97)
      {
LABEL_80:
        v105 = *(v93 + 16);
        if (v105 <= 2 && v105 != 1 && v105 != 2)
        {
          goto LABEL_111;
        }

        v106 = sub_1AFDFEE28();

        if (v106)
        {
          goto LABEL_112;
        }

        if (v105 <= 1)
        {
          goto LABEL_111;
        }

        v107 = sub_1AFDFEE28();

        if (v107)
        {
          goto LABEL_112;
        }

        goto LABEL_86;
      }

      if ((v96)(v98) == 1)
      {
LABEL_79:

        goto LABEL_80;
      }

      v99 = sub_1AFDFEE28();

      if (v99)
      {
        goto LABEL_80;
      }

      v101 = *(v93 + 16);
      v102 = (v96)(v100);
      if (v101 <= 1)
      {
        if (v101)
        {
          v103 = 0xE600000000000000;
          v104 = 0x7070636A626FLL;
        }

        else
        {
          v103 = 0xE100000000000000;
          v104 = 99;
        }
      }

      else if (v101 == 2)
      {
        v103 = 0xE500000000000000;
        v104 = 0x6C6174656DLL;
      }

      else if (v101 == 3)
      {
        v103 = 0xE500000000000000;
        v104 = 0x7466697773;
      }

      else
      {
        v103 = 0xE200000000000000;
        v104 = 29546;
      }

      if (v102 <= 1u)
      {
        if (!v102)
        {
          v108 = 0xE100000000000000;
          if (v104 != 99)
          {
            goto LABEL_107;
          }

          goto LABEL_106;
        }

        v108 = 0xE600000000000000;
        if (v104 == 0x7070636A626FLL)
        {
          goto LABEL_106;
        }

LABEL_107:
        v109 = sub_1AFDFEE28();

        if (v109)
        {
          goto LABEL_112;
        }

LABEL_86:
        ++v94;
        v93 += v197;
        if (v95 == v94)
        {
          v18 = v193;
          goto LABEL_128;
        }

        continue;
      }

      break;
    }

    if (v102 == 2)
    {
      v108 = 0xE500000000000000;
      if (v104 != 0x6C6174656DLL)
      {
        goto LABEL_107;
      }
    }

    else if (v102 == 3)
    {
      v108 = 0xE500000000000000;
      if (v104 != 0x7466697773)
      {
        goto LABEL_107;
      }
    }

    else
    {
      v108 = 0xE200000000000000;
      if (v104 != 29546)
      {
        goto LABEL_107;
      }
    }

LABEL_106:
    if (v103 != v108)
    {
      goto LABEL_107;
    }

LABEL_111:

LABEL_112:
    sub_1AFB12BD8(v93, v176, type metadata accessor for MetalFunctionScript);
    v110 = v3[5];
    v189 = v3[6];
    v190 = v110;
    v111 = v194;

    if ((v111[184] & 1) == 0)
    {
      v113 = *(*(v111 + 21) + 4 * v94);
      v188 = *(*(v112 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v113 + 8);

      v114 = v170;
      sub_1AFB12858(v93 + v198[6], v170);
      v115 = type metadata accessor for ScriptIndex(0);
      v116 = *(v115 - 8);
      v117 = *(v116 + 48);
      if (v117(v114, 1, v115) != 1)
      {
        v121 = v173;
        sub_1AFB128EC(v114, v173);
        goto LABEL_118;
      }

      v187 = v113;

      if ((v111[184] & 1) == 0)
      {
        v119 = *(*(v111 + 21) + 4 * v94);
        v120 = *(*(v118 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v119 + 8);

        v121 = v173;
        *v173 = v119;
        v121[1] = v120;
        swift_storeEnumTagMultiPayload();
        v122 = v170;
        v123 = v117(v170, 1, v115);
        LODWORD(v113) = v187;
        if (v123 != 1)
        {
          sub_1AF687E28(v122);
        }

LABEL_118:
        (*(v116 + 56))(v121, 0, 1, v115);
        v124 = *(v176 + v198[8]);
        if (v124[2])
        {
          v125 = v124[4];
          v126 = v124[5];
        }

        else
        {
          v125 = 0;
          v126 = 0;
        }

        v186 = v113;
        v127 = v176;
        v128 = sub_1AFB08DA4(v125, v126, *v176, v176[1], 1, 1);
        v130 = v129;
        v132 = v131;
        v133 = v113;
        v135 = v134;

        sub_1AFB12AC4(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
        v136 = swift_allocObject();
        *(v136 + 16) = v181;
        v137 = v198[9];
        *(v136 + 32) = v128;
        *(v136 + 40) = v130;
        v138 = *(v127 + v137);
        *(v136 + 48) = v138;
        v199[0] = v136;
        v199[1] = v132;
        v199[2] = v135;
        v199[3] = 11565;
        v199[4] = 0xE200000000000000;
        sub_1AFB0EF84(v199, v138, 0xD00000000000002FLL, v182 | 0x8000000000000000, 0, 0, v218);

        v184 = &v167;
        v226 = v219;
        v140 = v218[2];
        v171 = v218[1];
        v141 = v218[0];
        MEMORY[0x1EEE9AC00](v139);
        v142 = v189;
        v143 = v190;
        *(&v167 - 6) = v190;
        *(&v167 - 5) = v142;
        v144 = v188;
        *(&v167 - 8) = v133;
        *(&v167 - 7) = v144;
        *(&v167 - 3) = 0x6C656E72656BLL;
        v165 = 0xE600000000000000;
        v145 = v173;
        v166 = v173;
        v146 = v195;
        v187 = sub_1AFBFBEF0(sub_1AFA9EB54, (&v167 - 8), v141);
        v195 = v146;
        v147 = sub_1AFAF8B58(v171, v140, v143, v142, v186 | (v144 << 32), 0x6C656E72656BuLL, 0xE600000000000000, v145);
        v149 = v148;

        sub_1AF585778(&v226);
        sub_1AFB12B14(v176, type metadata accessor for MetalFunctionScript);
        sub_1AF687E28(v145);
        v150 = v194;

        if ((v150[184] & 1) == 0)
        {

          v151 = swift_isUniquelyReferenced_nonNull_native();
          v3 = v183;
          if ((v151 & 1) == 0)
          {
            v193 = sub_1AF425C8C(0, *(v193 + 2) + 1, 1, v193);
          }

          v153 = *(v193 + 2);
          v152 = *(v193 + 3);
          if (v153 >= v152 >> 1)
          {
            v193 = sub_1AF425C8C(v152 > 1, v153 + 1, 1, v193);
          }

          v20 = v94 + 1;
          v154 = v193;
          *(v193 + 2) = v153 + 1;
          v155 = &v154[40 * v153];
          *(v155 + 4) = v187;
          *(v155 + 5) = v147;
          *(v155 + 6) = v149;
          strcpy(v155 + 56, "Kernel Script");
          *(v155 + 35) = -4864;
          v156 = v168 == v94;
          v18 = v154;
          v31 = v192;
          if (v156)
          {
            goto LABEL_128;
          }

          continue;
        }
      }
    }

    break;
  }

LABEL_137:
  LODWORD(v166) = 0;
  v165 = 204;
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

char *sub_1AFB10C2C(uint64_t (*a1)(void, double), void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t *a3, ValueMetadata *a4, uint64_t a5, uint64_t (*a6)(void), unint64_t a7, unint64_t a8, void (*a9)(uint64_t *__return_ptr, void *, __n128), uint64_t (*a10)(void), void (*a11)(uint64_t, uint64_t), void (*a12)(uint64_t *__return_ptr, void *, __n128))
{
  v194 = a7;
  v195 = a8;
  v193 = a6;
  v180 = a5;
  v172 = a3;
  v173 = a4;
  v15 = v12;
  sub_1AFB0EF20(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v176 = &v171 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v181 = (&v171 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v188 = &v171 - v21;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v171 - v24;
  v196 = a1(0, v23);
  v175 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v186 = &v171 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v211 = &v171 - v28;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v248 = qword_1ED73B840;
  v249 = 0;
  v250 = 2;
  v251 = 0;
  v252 = 2;
  v253 = 0;
  a2(&v221, 1);
  v242 = v221;
  v243 = v222;
  v244 = v223;
  v245 = v224 | 1;
  v246 = v225;
  v247 = v226;
  sub_1AF6B06C0(v12[2], &v242, 0x200000000, v227);
  v179 = *&v227[0];
  if (!*&v227[0])
  {
    v163 = sub_1AFB12B74;
    v164 = &v221;
    v165 = v172;
    v166 = v173;
    v167 = v180;
LABEL_147:
    sub_1AFB12A64(v164, v165, v166, v167, v163);
    return MEMORY[0x1E69E7CC0];
  }

  v178 = *(&v227[2] + 1);
  v29 = *(&v228 + 1);
  v185 = *(&v229 + 1);
  v192 = v229;
  v235 = *(v227 + 8);
  v236 = *(&v227[1] + 8);
  if (v230 < 1)
  {
    sub_1AFB12A64(&v221, v172, v173, v180, sub_1AFB12B74);
    v165 = &qword_1ED725EA0;
    v166 = &type metadata for QueryResult;
    v167 = MEMORY[0x1E69E6720];
    v163 = sub_1AFB12AC4;
    v164 = v227;
    goto LABEL_147;
  }

  if (!*(&v228 + 1))
  {
    v217 = v227[2];
    v218 = v228;
    v219 = v229;
    v220 = v230;
    v215 = v227[0];
    v216 = v227[1];
    sub_1AF5DD298(&v215, v213);
    sub_1AFB12A64(&v221, v172, v173, v180, sub_1AFB12B74);
    sub_1AFB12A64(v227, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
    v212 = MEMORY[0x1E69E7CC0];
    goto LABEL_149;
  }

  v174 = a12;
  v190 = a11;
  v189 = a10;
  v187 = a9;
  v184 = v185[4];
  v183 = *(v192 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v217 = v227[2];
  v218 = v228;
  v219 = v229;
  v220 = v230;
  v215 = v227[0];
  v216 = v227[1];
  sub_1AF5DD298(&v215, v213);
  v30 = 0;
  v212 = MEMORY[0x1E69E7CC0];
  v191 = v15;
  v198 = v25;
  v177 = v29;
  while (1)
  {
    v31 = (v178 + 48 * v30);
    v32 = *v31;
    v254 = v31[1];
    v33 = *(v31 + 2);
    v34 = *(v31 + 3);
    v35 = *(v31 + 5);
    v210 = *(v31 + 4);
    v182 = v30;
    if (v183)
    {
      v36 = *(v35 + 376);

      os_unfair_lock_lock(v36);
      os_unfair_lock_lock(*(v35 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v184);
    v37 = v185;
    v38 = *(v185 + 4);
    v213[0] = *(v185 + 3);
    v213[1] = v38;
    v214 = v185[10];
    v39 = *(*(*(*(v35 + 40) + 16) + 32) + 16) + 1;
    v37[6] = ecs_stack_allocator_allocate(v185[4], 48 * v39, 8);
    v37[7] = v39;
    v37[9] = 0;
    v37[10] = 0;
    v37[8] = 0;
    v40 = v33;
    v41 = v34;
    v42 = v210;
    v207 = v35;
    v43 = sub_1AF64B110(v196, v180, v33, v41, v210, v37);
    v44 = v43;
    if (v33)
    {
      if (v42)
      {
        v197 = *(v175 + 72);
        while (1)
        {
          v254 = *v40;
          v209 = (v40 + 1);
          v46 = *(*v15 + 104);
          v47 = v46();
          v210 = v42;
          if (!v47)
          {
            break;
          }

          v48 = sub_1AFDFEE28();

          if ((v48 & 1) == 0)
          {
            if ((v46)(v49) == 1)
            {
              break;
            }

            v50 = sub_1AFDFEE28();

            if ((v50 & 1) == 0)
            {
              v52 = *(v44 + 24);
              v53 = (v46)(v51);
              if (v52 <= 1)
              {
                if (v52)
                {
                  v54 = 0xE600000000000000;
                  v55 = 0x7070636A626FLL;
                }

                else
                {
                  v54 = 0xE100000000000000;
                  v55 = 99;
                }
              }

              else if (v52 == 2)
              {
                v54 = 0xE500000000000000;
                v55 = 0x6C6174656DLL;
              }

              else if (v52 == 3)
              {
                v54 = 0xE500000000000000;
                v55 = 0x7466697773;
              }

              else
              {
                v54 = 0xE200000000000000;
                v55 = 29546;
              }

              if (v53 <= 1u)
              {
                if (v53)
                {
                  v59 = 0xE600000000000000;
                  if (v55 != 0x7070636A626FLL)
                  {
                    goto LABEL_51;
                  }
                }

                else
                {
                  v59 = 0xE100000000000000;
                  if (v55 != 99)
                  {
                    goto LABEL_51;
                  }
                }
              }

              else if (v53 == 2)
              {
                v59 = 0xE500000000000000;
                if (v55 != 0x6C6174656DLL)
                {
                  goto LABEL_51;
                }
              }

              else if (v53 == 3)
              {
                v59 = 0xE500000000000000;
                if (v55 != 0x7466697773)
                {
                  goto LABEL_51;
                }
              }

              else
              {
                v59 = 0xE200000000000000;
                if (v55 != 29546)
                {
                  goto LABEL_51;
                }
              }

              if (v54 != v59)
              {
LABEL_51:
                v58 = sub_1AFDFEE28();

LABEL_52:

                if ((v58 & 1) == 0)
                {
                  goto LABEL_15;
                }

                goto LABEL_53;
              }

LABEL_50:

              goto LABEL_53;
            }
          }

LABEL_25:
          v56 = *(v44 + 24);
          if (v56 <= 1 && !*(v44 + 24))
          {
            goto LABEL_50;
          }

          v57 = sub_1AFDFEE28();

          if ((v57 & 1) == 0)
          {
            if (v56 != 1)
            {
              v58 = sub_1AFDFEE28();
              goto LABEL_52;
            }

            goto LABEL_50;
          }

LABEL_53:
          sub_1AFB12BD8(v44, v211, v193);
          v60 = v15[5];
          v204 = v15[6];
          v61 = v207;

          if (v61[184])
          {
            goto LABEL_150;
          }

          v63 = *(v62 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
          v205 = *(*(v61 + 21) + 4 * v254);
          v203 = *(v63 + 12 * v205 + 8);

          v64 = *(v196 + 44);
          v206 = v44;
          v65 = v188;
          sub_1AFB12858(v44 + v64, v188);
          v66 = type metadata accessor for ScriptIndex(0);
          v67 = *(v66 - 8);
          v68 = *(v67 + 48);
          if (v68(v65, 1, v66) == 1)
          {

            if (v61[184])
            {
              goto LABEL_150;
            }

            v70 = *(*(v61 + 21) + 4 * v254);
            v71 = *(*(v69 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v70 + 8);

            v72 = v198;
            *v198 = v70;
            *(v72 + 1) = v71;
            v25 = v72;
            swift_storeEnumTagMultiPayload();
            if (v68(v65, 1, v66) != 1)
            {
              sub_1AF687E28(v65);
            }
          }

          else
          {
            sub_1AFB128EC(v65, v25);
          }

          (*(v67 + 56))(v25, 0, 1, v66);
          v73 = v211;
          v74 = *(v211 + 24);
          if (v74 > 2)
          {
            v75 = v205;
            if (v74 == 3)
            {
              v76 = type metadata accessor for SwiftTrampolineCodeGen();
            }

            else
            {
              v76 = type metadata accessor for JavaScriptTrampolineCodeGen();
            }
          }

          else
          {
            v75 = v205;
            if (v74 >= 2)
            {
              v76 = type metadata accessor for MetalTrampolineCodeGen();
            }

            else
            {
              v76 = type metadata accessor for CTrampolineCodeGen();
            }
          }

          v77 = v76;
          v202 = v75;
          v78 = v73[4];
          if (v78[2])
          {
            v79 = v78[4];
            v80 = v78[5];
          }

          else
          {
            v79 = 0;
            v80 = 0;
          }

          (*(v77 + 128))(v231, v79, v80, v73[1], v73[2], 0, 0, *v73, 0, 0);

          v201 = &v171;
          v240 = v232;
          v199 = v231[1];
          v200 = v231[2];
          v82 = v231[0];
          MEMORY[0x1EEE9AC00](v81);
          v83 = v60;
          v85 = v203;
          v84 = v204;
          *(&v171 - 6) = v60;
          *(&v171 - 5) = v84;
          *(&v171 - 8) = v75;
          *(&v171 - 7) = v85;
          v86 = v194;
          v87 = v195;
          *(&v171 - 3) = v194;
          v169 = v87;
          v25 = v198;
          v170 = v198;

          v88 = v208;
          v205 = sub_1AFBFBEF0(v187, (&v171 - 8), v82);
          v208 = v88;
          v89 = sub_1AFAF8B58(v199, v200, v83, v84, v202 | (v85 << 32), v86, v87, v25);
          v91 = v90;

          sub_1AF585778(&v240);
          sub_1AFB12B14(v211, v189);
          sub_1AF687E28(v25);

          v92 = sub_1AF6496EC(v254);

          v190(v92, v192);
          v94 = v93;
          v96 = v95;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v97 = v212;
          }

          else
          {
            v97 = sub_1AF425C8C(0, *(v212 + 2) + 1, 1, v212);
          }

          v99 = *(v97 + 2);
          v98 = *(v97 + 3);
          if (v99 >= v98 >> 1)
          {
            v97 = sub_1AF425C8C(v98 > 1, v99 + 1, 1, v97);
          }

          *(v97 + 2) = v99 + 1;
          v212 = v97;
          v45 = &v97[40 * v99];
          *(v45 + 4) = v205;
          *(v45 + 5) = v89;
          *(v45 + 6) = v91;
          *(v45 + 7) = v94;
          *(v45 + 8) = v96;
          v15 = v191;
          v44 = v206;
LABEL_15:
          v44 += v197;
          v40 = v209;
          v42 = v210 - 1;
          if (v210 == 1)
          {
            goto LABEL_142;
          }
        }

        goto LABEL_25;
      }

      goto LABEL_142;
    }

    if (v32 != v254)
    {
      break;
    }

LABEL_142:
    v237 = v179;
    v238 = v235;
    v239 = v236;
    v161 = v208;
    sub_1AF630994(v185, &v237, v213);
    v208 = v161;
    v162 = v207;
    sub_1AF62D29C(v207);
    ecs_stack_allocator_pop_snapshot(v184);
    if (v183)
    {
      os_unfair_lock_unlock(*(v162 + 43));
      os_unfair_lock_unlock(*(v162 + 47));
    }

    v30 = v182 + 1;
    if (v182 + 1 == v177)
    {
      sub_1AFB12A64(&v221, v172, v173, v180, sub_1AFB12B74);
      sub_1AFB12A64(v227, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
LABEL_149:
      sub_1AFB12A64(v227, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
      return v212;
    }
  }

  v210 = *(v175 + 72);
  v197 = v254 - 1;
  v206 = v43;
  while (2)
  {
    v100 = v44 + v210 * v32;
    v101 = v32;
    while (2)
    {
      v102 = *(*v15 + 104);
      if (!v102())
      {
        goto LABEL_85;
      }

      v103 = sub_1AFDFEE28();

      if (v103)
      {
LABEL_86:
        v111 = *(v100 + 24);
        if (v111 <= 2 && v111 != 1 && v111 != 2)
        {
          goto LABEL_117;
        }

        v112 = sub_1AFDFEE28();

        if (v112)
        {
          goto LABEL_118;
        }

        if (v111 <= 1)
        {
          goto LABEL_117;
        }

        v113 = sub_1AFDFEE28();

        if (v113)
        {
          goto LABEL_118;
        }

        goto LABEL_92;
      }

      if ((v102)(v104) == 1)
      {
LABEL_85:

        goto LABEL_86;
      }

      v105 = sub_1AFDFEE28();

      if (v105)
      {
        goto LABEL_86;
      }

      v107 = *(v100 + 24);
      v108 = (v102)(v106);
      if (v107 <= 1)
      {
        if (v107)
        {
          v109 = 0xE600000000000000;
          v110 = 0x7070636A626FLL;
        }

        else
        {
          v109 = 0xE100000000000000;
          v110 = 99;
        }
      }

      else if (v107 == 2)
      {
        v109 = 0xE500000000000000;
        v110 = 0x6C6174656DLL;
      }

      else if (v107 == 3)
      {
        v109 = 0xE500000000000000;
        v110 = 0x7466697773;
      }

      else
      {
        v109 = 0xE200000000000000;
        v110 = 29546;
      }

      if (v108 <= 1u)
      {
        if (!v108)
        {
          v114 = 0xE100000000000000;
          if (v110 != 99)
          {
            goto LABEL_113;
          }

          goto LABEL_112;
        }

        v114 = 0xE600000000000000;
        if (v110 == 0x7070636A626FLL)
        {
          goto LABEL_112;
        }

LABEL_113:
        v115 = sub_1AFDFEE28();

        if (v115)
        {
          goto LABEL_118;
        }

LABEL_92:
        ++v101;
        v100 += v210;
        if (v254 == v101)
        {
          v25 = v198;
          goto LABEL_142;
        }

        continue;
      }

      break;
    }

    if (v108 == 2)
    {
      v114 = 0xE500000000000000;
      if (v110 != 0x6C6174656DLL)
      {
        goto LABEL_113;
      }
    }

    else if (v108 == 3)
    {
      v114 = 0xE500000000000000;
      if (v110 != 0x7466697773)
      {
        goto LABEL_113;
      }
    }

    else
    {
      v114 = 0xE200000000000000;
      if (v110 != 29546)
      {
        goto LABEL_113;
      }
    }

LABEL_112:
    if (v109 != v114)
    {
      goto LABEL_113;
    }

LABEL_117:

LABEL_118:
    sub_1AFB12BD8(v100, v186, v193);
    v116 = v15[5];
    v205 = v15[6];
    v117 = v207;

    if ((v117[184] & 1) == 0)
    {
      v119 = *(v118 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      v209 = *(*(v117 + 21) + 4 * v101);
      v204 = *(v119 + 12 * v209 + 8);

      v120 = v176;
      sub_1AFB12858(v100 + *(v196 + 44), v176);
      v121 = type metadata accessor for ScriptIndex(0);
      v122 = *(v121 - 8);
      v123 = *(v122 + 48);
      v124 = v123(v120, 1, v121);
      v125 = v117;
      v126 = v181;
      if (v124 != 1)
      {
        sub_1AFB128EC(v120, v181);
        goto LABEL_124;
      }

      if ((v125[184] & 1) == 0)
      {
        v128 = *(*(v125 + 21) + 4 * v101);
        v129 = *(*(v127 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v128 + 8);

        v130 = v181;
        *v181 = v128;
        v130[1] = v129;
        v126 = v130;
        swift_storeEnumTagMultiPayload();
        v131 = v176;
        if (v123(v176, 1, v121) != 1)
        {
          sub_1AF687E28(v131);
        }

LABEL_124:
        (*(v122 + 56))(v126, 0, 1, v121);
        v132 = *(v186 + 24);
        if (v132 > 2)
        {
          v133 = v209;
          if (v132 == 3)
          {
            v134 = type metadata accessor for SwiftTrampolineCodeGen();
          }

          else
          {
            v134 = type metadata accessor for JavaScriptTrampolineCodeGen();
          }
        }

        else
        {
          v133 = v209;
          if (v132 >= 2)
          {
            v134 = type metadata accessor for MetalTrampolineCodeGen();
          }

          else
          {
            v134 = type metadata accessor for CTrampolineCodeGen();
          }
        }

        v135 = v134;
        v203 = v133;
        v136 = *(v186 + 32);
        if (v136[2])
        {
          v137 = v136[4];
          v138 = v136[5];
        }

        else
        {
          v137 = 0;
          v138 = 0;
        }

        (*(v135 + 128))(v233, v137, v138, *(v186 + 8), *(v186 + 16), 0, 0, *v186, 0, 0);

        v202 = &v171;
        v241 = v234;
        v200 = v233[1];
        v201 = v233[2];
        v140 = v233[0];
        MEMORY[0x1EEE9AC00](v139);
        v141 = v204;
        v142 = v205;
        *(&v171 - 6) = v116;
        *(&v171 - 5) = v142;
        *(&v171 - 8) = v133;
        *(&v171 - 7) = v141;
        v199 = v116;
        v144 = v194;
        v143 = v195;
        *(&v171 - 3) = v194;
        v169 = v143;
        v145 = v181;
        v170 = v181;

        v146 = v208;
        v147 = sub_1AFBFBEF0(v174, (&v171 - 8), v140);
        v208 = v146;
        v209 = v147;
        v205 = sub_1AFAF8B58(v200, v201, v199, v142, v203 | (v141 << 32), v144, v143, v145);
        v149 = v148;

        sub_1AF585778(&v241);
        sub_1AFB12B14(v186, v189);
        sub_1AF687E28(v145);

        v150 = sub_1AF6496EC(v101);

        v190(v150, v192);
        v152 = v151;
        v154 = v153;

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v155 = v212;
        }

        else
        {
          v155 = sub_1AF425C8C(0, *(v212 + 2) + 1, 1, v212);
        }

        v157 = *(v155 + 2);
        v156 = *(v155 + 3);
        if (v157 >= v156 >> 1)
        {
          v155 = sub_1AF425C8C(v156 > 1, v157 + 1, 1, v155);
        }

        *(v155 + 2) = v157 + 1;
        v32 = v101 + 1;
        v212 = v155;
        v158 = &v155[40 * v157];
        v159 = v205;
        *(v158 + 4) = v209;
        *(v158 + 5) = v159;
        *(v158 + 6) = v149;
        *(v158 + 7) = v152;
        *(v158 + 8) = v154;
        v25 = v198;
        v160 = v197 == v101;
        v15 = v191;
        v44 = v206;
        if (v160)
        {
          goto LABEL_142;
        }

        continue;
      }
    }

    break;
  }

LABEL_150:
  LODWORD(v170) = 0;
  v169 = 204;
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}