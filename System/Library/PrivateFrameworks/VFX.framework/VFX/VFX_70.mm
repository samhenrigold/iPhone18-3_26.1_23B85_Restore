uint64_t sub_1AF68D1FC()
{
  v1 = v0;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v37 = qword_1ED73B840;
  v38 = 0;
  v39 = 2;
  v40 = 1;
  v41 = 2;
  v42 = 0;

  sub_1AF6B06C0(v0, &v37, 0x200000000, &v22);

  v18 = v22;
  if (v22)
  {
    v17 = v25;
    v19 = v26;
    v3 = v28;
    v30 = v23;
    v31 = v24;
    if (v29 >= 1 && v26)
    {
      v4 = 0;
      v21 = *(v28 + 32);
      v20 = *(v27 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      do
      {
        v5 = (v17 + 48 * v4);
        v7 = *v5;
        v6 = v5[1];
        v8 = *(v5 + 2);
        v10 = *(v5 + 4);
        v9 = *(v5 + 5);
        if (v20)
        {
          v11 = *(v9 + 376);

          os_unfair_lock_lock(v11);
          os_unfair_lock_lock(*(v9 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v21);
        v12 = *(v3 + 64);
        v35[0] = *(v3 + 48);
        v35[1] = v12;
        v36 = *(v3 + 80);
        v13 = *(*(*(*(v9 + 40) + 16) + 32) + 16) + 1;
        *(v3 + 48) = ecs_stack_allocator_allocate(*(v3 + 32), 48 * v13, 8);
        *(v3 + 56) = v13;
        *(v3 + 72) = 0;
        *(v3 + 80) = 0;
        *(v3 + 64) = 0;
        if (v8)
        {
          for (; v10; --v10)
          {
            v14 = *v8++;
            sub_1AF693250(v9, v14, v1);
          }
        }

        else
        {
          for (i = v7; v6 != i; i = v16)
          {
            v16 = i + 1;
            sub_1AF693250(v9, i, v1);
          }
        }

        v32 = v18;
        v33 = v30;
        v34 = v31;
        sub_1AF630994(v3, &v32, v35);
        sub_1AF62D29C(v9);
        ecs_stack_allocator_pop_snapshot(v21);
        if (v20)
        {
          os_unfair_lock_unlock(*(v9 + 344));
          os_unfair_lock_unlock(*(v9 + 376));
        }

        ++v4;
      }

      while (v4 != v19);
    }

    return sub_1AF692E04(&v22, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF69348C);
  }

  return result;
}

uint64_t sub_1AF68D51C()
{
  v1 = v0;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v195 = qword_1ED73B840;
  v196 = 0;
  v197 = 2;
  v198 = 1;
  v199 = 2;
  v200 = 0;
  sub_1AF5C52A8(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C620;
  *(v2 + 32) = &type metadata for SubEntity;
  *(v2 + 40) = &off_1F2562CF0;
  *(v2 + 48) = &type metadata for PropagateDirtiness;
  *(v2 + 56) = &off_1F25323E0;

  sub_1AF5F58E4(v2, 1, v162);

  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AF6B06C0(v0, v162, 0x200000000, &v163);
  sub_1AF692DB0(v162);
  v144 = v0;
  if (v163)
  {
    if (v170 >= 1 && (v3 = v167) != 0)
    {
      v4 = 0;
      v5 = v169;
      v6 = *(v169 + 32);
      v7 = *(v168 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v184 = v163;
      v185 = v164;
      v186 = v165;
      v8 = (v166 + 40);
      do
      {
        v9 = *v8;
        if (v7)
        {
          v10 = *(v9 + 376);

          os_unfair_lock_lock(v10);
          os_unfair_lock_lock(*(v9 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v6);
        v11 = *(v5 + 64);
        v203[0] = *(v5 + 48);
        v203[1] = v11;
        v204 = *(v5 + 80);
        v12 = *(*(*(*(v9 + 40) + 16) + 32) + 16) + 1;
        *(v5 + 48) = ecs_stack_allocator_allocate(*(v5 + 32), 48 * v12, 8);
        *(v5 + 56) = v12;
        *(v5 + 72) = 0;
        *(v5 + 80) = 0;
        *(v5 + 64) = 0;
        if (*(*(*(*(v9 + 40) + 16) + 32) + 16) == 2)
        {
          v13 = v4;
          memset(v172, 0, sizeof(v172));
          LOBYTE(v173) = 5;
          sub_1AF63515C(v172, v180);
          *&v182 = 0;
          v181 = 0uLL;
          v14 = *(v5 + 104);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v5 + 104) = v14;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v14 = sub_1AF420EA0(0, v14[2] + 1, 1, v14);
            *(v5 + 104) = v14;
          }

          v17 = v14[2];
          v16 = v14[3];
          if (v17 >= v16 >> 1)
          {
            *(v5 + 104) = sub_1AF420EA0(v16 > 1, v17 + 1, 1, v14);
          }

          sub_1AF635250(v172);
          v18 = *(v5 + 104);
          *(v18 + 16) = v17 + 1;
          v19 = v18 + 72 * v17;
          *(v19 + 32) = *v180;
          v21 = *&v180[32];
          v20 = v181;
          v22 = *&v180[16];
          *(v19 + 96) = v182;
          *(v19 + 64) = v21;
          *(v19 + 80) = v20;
          *(v19 + 48) = v22;
          *(v5 + 104) = v18;
          v4 = v13;
        }

        sub_1AF630994(v5, &v184, v203);
        sub_1AF62D29C(v9);
        ecs_stack_allocator_pop_snapshot(v6);
        if (v7)
        {
          os_unfair_lock_unlock(*(v9 + 344));
          os_unfair_lock_unlock(*(v9 + 376));
        }

        v8 += 6;
        --v3;
      }

      while (v3);
    }

    else
    {
      v4 = 0;
    }

    sub_1AF692E04(&v163, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF69348C);
    v1 = v144;
  }

  else
  {
    v4 = 0;
  }

  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1AFE431C0;
  *(v23 + 32) = &type metadata for SubEntity;
  *(v23 + 40) = &off_1F2562CF0;

  sub_1AF5F58E4(v23, 1, v171);

  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AF6B06C0(v1, v171, 0x200000000, v172);
  sub_1AF692DB0(v171);
  if (*v172)
  {
    if (v177 >= 1)
    {
      v24 = v174;
      if (v174)
      {
        v25 = v176;
        v26 = *(v176 + 32);
        v27 = *(v175 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v187 = *v172;
        v188 = *&v172[8];
        v189 = *&v172[24];
        v28 = (v173 + 40);
        do
        {
          v29 = *v28;
          if (v27)
          {
            v30 = *(v29 + 376);

            os_unfair_lock_lock(v30);
            os_unfair_lock_lock(*(v29 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v26);
          v31 = *(v25 + 64);
          v201[0] = *(v25 + 48);
          v201[1] = v31;
          v202 = *(v25 + 80);
          v32 = *(*(*(*(v29 + 40) + 16) + 32) + 16) + 1;
          *(v25 + 48) = ecs_stack_allocator_allocate(*(v25 + 32), 48 * v32, 8);
          *(v25 + 56) = v32;
          *(v25 + 72) = 0;
          *(v25 + 80) = 0;
          *(v25 + 64) = 0;
          if (*(*(*(*(v29 + 40) + 16) + 32) + 16) == 1)
          {
            *&v158 = 0;
            v156 = 0u;
            v157 = 0u;
            BYTE8(v158) = 5;
            sub_1AF63515C(&v156, v180);
            *&v182 = 0;
            v181 = 0uLL;
            v33 = *(v25 + 104);
            v34 = swift_isUniquelyReferenced_nonNull_native();
            *(v25 + 104) = v33;
            v35 = v4;
            if ((v34 & 1) == 0)
            {
              v33 = sub_1AF420EA0(0, v33[2] + 1, 1, v33);
              *(v25 + 104) = v33;
            }

            v37 = v33[2];
            v36 = v33[3];
            if (v37 >= v36 >> 1)
            {
              *(v25 + 104) = sub_1AF420EA0(v36 > 1, v37 + 1, 1, v33);
            }

            sub_1AF635250(&v156);
            v38 = *(v25 + 104);
            *(v38 + 16) = v37 + 1;
            v39 = v38 + 72 * v37;
            *(v39 + 32) = *v180;
            v41 = *&v180[32];
            v40 = v181;
            v42 = *&v180[16];
            *(v39 + 96) = v182;
            *(v39 + 64) = v41;
            *(v39 + 80) = v40;
            *(v39 + 48) = v42;
            *(v25 + 104) = v38;
            v4 = v35;
          }

          sub_1AF630994(v25, &v187, v201);
          sub_1AF62D29C(v29);
          ecs_stack_allocator_pop_snapshot(v26);
          if (v27)
          {
            os_unfair_lock_unlock(*(v29 + 344));
            os_unfair_lock_unlock(*(v29 + 376));
          }

          v28 += 6;
          --v24;
        }

        while (v24);
      }
    }

    sub_1AF692E04(v172, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF69348C);
    v1 = v144;
  }

  sub_1AF702F8C(3, v178);

  v193[0] = v178[0];
  v193[1] = v178[1];
  v194 = v179;
  sub_1AF6B06C0(v1, v193, 0x200000000, v180);
  v158 = *&v180[32];
  v159 = v181;
  v160 = v182;
  v161 = v183;
  v156 = *v180;
  v157 = *&v180[16];
  result = sub_1AF692E04(v178, &qword_1ED723D38, &type metadata for EmitterDescription, &off_1F2563648, sub_1AF5DD590);
  if (*v180)
  {
    if (v183 > 0 && (v136 = *(&v181 + 1)) != 0)
    {
      v135 = *&v180[40];
      v44 = *(&v182 + 1);
      v45 = *(*(&v182 + 1) + 32);
      v140 = *(v182 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v190 = *v180;
      v191 = *&v180[8];
      v192 = *&v180[24];
      v46 = (v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      v155[2] = v158;
      v155[3] = v159;
      v155[4] = v160;
      v155[5] = v161;
      v155[0] = v156;
      v155[1] = v157;
      sub_1AF5DD298(v155, v153);
      v47 = 0;
      v133 = v45;
      v134 = v44;
      do
      {
        v138 = v47;
        v48 = (v135 + 48 * v47);
        v49 = *v48;
        v51 = *(v48 + 2);
        v50 = *(v48 + 3);
        v52 = *(v48 + 5);
        v141 = v48[1];
        v142 = *(v48 + 4);
        if (v140)
        {
          v53 = *(v52 + 376);

          os_unfair_lock_lock(v53);
          os_unfair_lock_lock(*(v52 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v45);
        v54 = *(v44 + 4);
        v153[0] = *(v44 + 3);
        v153[1] = v54;
        v154 = v44[10];
        v55 = *(*(*(*(v52 + 40) + 16) + 32) + 16) + 1;
        v44[6] = ecs_stack_allocator_allocate(v44[4], 48 * v55, 8);
        v44[7] = v55;
        v44[9] = 0;
        v44[10] = 0;
        v44[8] = 0;
        v137 = v52;
        v143 = sub_1AF64B110(&type metadata for EmitterDescription, &off_1F2563648, v51, v50, v142, v44);
        v139 = v4;
        if (v51)
        {
          if (v142)
          {
            for (i = 0; i != v142; ++i)
            {
              v57 = &v143[104 * i];
              v58 = *v57;
              v59 = *(*v57 + 16);
              if (v59)
              {

                v61 = 32;
                v62 = MEMORY[0x1E69E7CC0];
                do
                {
                  *&v60 = *(v58 + v61);
                  v65 = v60 == -1 && DWORD1(v60) == 0;
                  if (!v65 && (v60 & 0x80000000) == 0 && v46[1] > v60 && (DWORD1(v60) == -1 || *(*v46 + 12 * v60 + 8) == DWORD1(v60)))
                  {
                    v145 = v60;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_1AFC07194(0, *(v62 + 16) + 1, 1);
                    }

                    v60 = v145;
                    v64 = *(v62 + 16);
                    v63 = *(v62 + 24);
                    if (v64 >= v63 >> 1)
                    {
                      sub_1AFC07194(v63 > 1, v64 + 1, 1);
                      v60 = v145;
                    }

                    *(v62 + 16) = v64 + 1;
                    *(v62 + 8 * v64 + 32) = v60;
                  }

                  v61 += 8;
                  --v59;
                }

                while (v59);
              }

              else
              {
                v62 = MEMORY[0x1E69E7CC0];
              }

              *v57 = v62;

              v67 = *(v57 + 1);
              v68 = *(v67 + 16);
              if (v68)
              {

                v70 = 32;
                v71 = MEMORY[0x1E69E7CC0];
                do
                {
                  *&v69 = *(v67 + v70);
                  v74 = v69 == -1 && DWORD1(v69) == 0;
                  if (!v74 && (v69 & 0x80000000) == 0 && v46[1] > v69 && (DWORD1(v69) == -1 || *(*v46 + 12 * v69 + 8) == DWORD1(v69)))
                  {
                    v146 = v69;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_1AFC07194(0, *(v71 + 16) + 1, 1);
                    }

                    v69 = v146;
                    v73 = *(v71 + 16);
                    v72 = *(v71 + 24);
                    if (v73 >= v72 >> 1)
                    {
                      sub_1AFC07194(v72 > 1, v73 + 1, 1);
                      v69 = v146;
                    }

                    *(v71 + 16) = v73 + 1;
                    *(v71 + 8 * v73 + 32) = v69;
                  }

                  v70 += 8;
                  --v68;
                }

                while (v68);
              }

              else
              {
                v71 = MEMORY[0x1E69E7CC0];
              }

              *(v57 + 1) = v71;

              v76 = *(v57 + 2);
              v77 = *(v76 + 16);
              if (v77)
              {

                v79 = 32;
                v80 = MEMORY[0x1E69E7CC0];
                do
                {
                  *&v78 = *(v76 + v79);
                  v83 = v78 == -1 && DWORD1(v78) == 0;
                  if (!v83 && (v78 & 0x80000000) == 0 && v46[1] > v78 && (DWORD1(v78) == -1 || *(*v46 + 12 * v78 + 8) == DWORD1(v78)))
                  {
                    v147 = v78;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_1AFC07194(0, *(v80 + 16) + 1, 1);
                    }

                    v78 = v147;
                    v82 = *(v80 + 16);
                    v81 = *(v80 + 24);
                    if (v82 >= v81 >> 1)
                    {
                      sub_1AFC07194(v81 > 1, v82 + 1, 1);
                      v78 = v147;
                    }

                    *(v80 + 16) = v82 + 1;
                    *(v80 + 8 * v82 + 32) = v78;
                  }

                  v79 += 8;
                  --v77;
                }

                while (v77);
              }

              else
              {
                v80 = MEMORY[0x1E69E7CC0];
              }

              *(v57 + 2) = v80;

              v85 = *(v57 + 3);
              v86 = *(v85 + 16);
              if (v86)
              {

                v88 = 32;
                v89 = MEMORY[0x1E69E7CC0];
                do
                {
                  *&v87 = *(v85 + v88);
                  v92 = v87 == -1 && DWORD1(v87) == 0;
                  if (!v92 && (v87 & 0x80000000) == 0 && v46[1] > v87 && (DWORD1(v87) == -1 || *(*v46 + 12 * v87 + 8) == DWORD1(v87)))
                  {
                    v148 = v87;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_1AFC07194(0, *(v89 + 16) + 1, 1);
                    }

                    v87 = v148;
                    v91 = *(v89 + 16);
                    v90 = *(v89 + 24);
                    if (v91 >= v90 >> 1)
                    {
                      sub_1AFC07194(v90 > 1, v91 + 1, 1);
                      v87 = v148;
                    }

                    *(v89 + 16) = v91 + 1;
                    *(v89 + 8 * v91 + 32) = v87;
                  }

                  v88 += 8;
                  --v86;
                }

                while (v86);
              }

              else
              {
                v89 = MEMORY[0x1E69E7CC0];
              }

              *(v57 + 3) = v89;
            }
          }
        }

        else if (v49 != v141)
        {
          do
          {
            v94 = &v143[104 * v49];
            v95 = *v94;
            v96 = *(*v94 + 16);
            if (v96)
            {

              v98 = 32;
              v99 = MEMORY[0x1E69E7CC0];
              do
              {
                *&v97 = *(v95 + v98);
                v102 = v97 == -1 && DWORD1(v97) == 0;
                if (!v102 && (v97 & 0x80000000) == 0 && v46[1] > v97 && (DWORD1(v97) == -1 || *(*v46 + 12 * v97 + 8) == DWORD1(v97)))
                {
                  v149 = v97;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_1AFC07194(0, *(v99 + 16) + 1, 1);
                  }

                  v97 = v149;
                  v101 = *(v99 + 16);
                  v100 = *(v99 + 24);
                  if (v101 >= v100 >> 1)
                  {
                    sub_1AFC07194(v100 > 1, v101 + 1, 1);
                    v97 = v149;
                  }

                  *(v99 + 16) = v101 + 1;
                  *(v99 + 8 * v101 + 32) = v97;
                }

                v98 += 8;
                --v96;
              }

              while (v96);
            }

            else
            {
              v99 = MEMORY[0x1E69E7CC0];
            }

            *v94 = v99;

            v104 = *(v94 + 1);
            v105 = *(v104 + 16);
            if (v105)
            {

              v107 = 32;
              v108 = MEMORY[0x1E69E7CC0];
              do
              {
                *&v106 = *(v104 + v107);
                v111 = v106 == -1 && DWORD1(v106) == 0;
                if (!v111 && (v106 & 0x80000000) == 0 && v46[1] > v106 && (DWORD1(v106) == -1 || *(*v46 + 12 * v106 + 8) == DWORD1(v106)))
                {
                  v150 = v106;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_1AFC07194(0, *(v108 + 16) + 1, 1);
                  }

                  v106 = v150;
                  v110 = *(v108 + 16);
                  v109 = *(v108 + 24);
                  if (v110 >= v109 >> 1)
                  {
                    sub_1AFC07194(v109 > 1, v110 + 1, 1);
                    v106 = v150;
                  }

                  *(v108 + 16) = v110 + 1;
                  *(v108 + 8 * v110 + 32) = v106;
                }

                v107 += 8;
                --v105;
              }

              while (v105);
            }

            else
            {
              v108 = MEMORY[0x1E69E7CC0];
            }

            *(v94 + 1) = v108;

            v113 = *(v94 + 2);
            v114 = *(v113 + 16);
            if (v114)
            {

              v116 = 32;
              v117 = MEMORY[0x1E69E7CC0];
              do
              {
                *&v115 = *(v113 + v116);
                v120 = v115 == -1 && DWORD1(v115) == 0;
                if (!v120 && (v115 & 0x80000000) == 0 && v46[1] > v115 && (DWORD1(v115) == -1 || *(*v46 + 12 * v115 + 8) == DWORD1(v115)))
                {
                  v151 = v115;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_1AFC07194(0, *(v117 + 16) + 1, 1);
                  }

                  v115 = v151;
                  v119 = *(v117 + 16);
                  v118 = *(v117 + 24);
                  if (v119 >= v118 >> 1)
                  {
                    sub_1AFC07194(v118 > 1, v119 + 1, 1);
                    v115 = v151;
                  }

                  *(v117 + 16) = v119 + 1;
                  *(v117 + 8 * v119 + 32) = v115;
                }

                v116 += 8;
                --v114;
              }

              while (v114);
            }

            else
            {
              v117 = MEMORY[0x1E69E7CC0];
            }

            *(v94 + 2) = v117;

            v122 = *(v94 + 3);
            v123 = *(v122 + 16);
            if (v123)
            {

              v125 = 32;
              v126 = MEMORY[0x1E69E7CC0];
              do
              {
                *&v124 = *(v122 + v125);
                v129 = v124 == -1 && DWORD1(v124) == 0;
                if (!v129 && (v124 & 0x80000000) == 0 && v46[1] > v124 && (DWORD1(v124) == -1 || *(*v46 + 12 * v124 + 8) == DWORD1(v124)))
                {
                  v152 = v124;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_1AFC07194(0, *(v126 + 16) + 1, 1);
                  }

                  v124 = v152;
                  v128 = *(v126 + 16);
                  v127 = *(v126 + 24);
                  if (v128 >= v127 >> 1)
                  {
                    sub_1AFC07194(v127 > 1, v128 + 1, 1);
                    v124 = v152;
                  }

                  *(v126 + 16) = v128 + 1;
                  *(v126 + 8 * v128 + 32) = v124;
                }

                v125 += 8;
                --v123;
              }

              while (v123);
            }

            else
            {
              v126 = MEMORY[0x1E69E7CC0];
            }

            ++v49;
            *(v94 + 3) = v126;
          }

          while (v49 != v141);
        }

        v44 = v134;
        v4 = v139;
        sub_1AF630994(v134, &v190, v153);
        sub_1AF62D29C(v137);
        v45 = v133;
        ecs_stack_allocator_pop_snapshot(v133);
        if (v140)
        {
          os_unfair_lock_unlock(*(v137 + 344));
          os_unfair_lock_unlock(*(v137 + 376));
        }

        v47 = v138 + 1;
      }

      while (v138 + 1 != v136);
      v132 = MEMORY[0x1E69E6720];
      sub_1AF692E04(v180, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF69348C);
      v131 = v132;
    }

    else
    {
      v131 = MEMORY[0x1E69E6720];
    }

    return sub_1AF692E04(v180, &qword_1ED725EA0, &type metadata for QueryResult, v131, sub_1AF69348C);
  }

  return result;
}

uint64_t sub_1AF68E7E4(uint64_t a1, uint64_t a2, char **a3)
{
  v3 = *(a1 + 28);
  v4 = *(a1 + 24);
  v5 = v4 == -1 && v3 == 0;
  if (v5 || (v4 & 0x80000000) != 0 || *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) <= v4 || ((v6 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v4), v3 != -1) ? (v7 = v6[2] == v3) : (v7 = 1), !v7 || (result = sub_1AF6854EC(*(*(a2 + 144) + 8 * *v6 + 32), *(v6 + 2), 32, a3), (result & 1) != 0)))
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v9 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v9);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF2EB40);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF68E978()
{
  v228 = *MEMORY[0x1E69E9840];
  sub_1AF68B14C(0, &qword_1EB63D268, type metadata accessor for GraphScriptingConfig.ScriptInfo, &type metadata for GraphScriptingConfig.EvaluationMode, "key value ");
  v187 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v180 = &v161 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v179 = (&v161 - v4);
  MEMORY[0x1EEE9AC00](v5);
  v185 = &v161 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v184 = (&v161 - v8);
  v9 = type metadata accessor for GraphScriptingConfig.ScriptInfo(0);
  v186 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v178 = &v161 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v183 = &v161 - v12;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v195 = qword_1ED73B840;
  v196 = 0;
  v197 = 2;
  v198 = 1;
  v199 = 2;
  v200 = 0;

  sub_1AF826A90(v188);

  v193[0] = v188[0];
  v193[1] = v188[1];
  v194 = v189;
  sub_1AF6B06C0(v0, v193, 0x200000000, &v216);
  result = sub_1AF692E04(v188, &unk_1EB63D280, &type metadata for GraphScriptingConfig, &off_1F253C070, sub_1AF5DD590);
  v165 = v216;
  if (v216)
  {
    v164 = v219;
    v14 = v220;
    v169 = v222;
    v224 = v217;
    v225 = v218;
    if (v223 >= 1 && v220)
    {
      v15 = v169[4];
      v167 = *(v221 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      sub_1AF5D15C0(&v216, &v210);
      v16 = 0;
      v168 = 0;
      v162 = v15;
      v163 = v14;
      while (1)
      {
        v166 = v16;
        v17 = (v164 + 48 * v16);
        v19 = *v17;
        v18 = v17[1];
        v20 = *(v17 + 3);
        v174 = *(v17 + 2);
        v21 = *(v17 + 4);
        v22 = *(v17 + 5);
        v172 = v18;
        v173 = v21;
        if (v167)
        {
          v23 = *(v22 + 376);

          os_unfair_lock_lock(v23);
          os_unfair_lock_lock(*(v22 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v15);
        v24 = v169;
        v25 = *(v169 + 4);
        v226[0] = *(v169 + 3);
        v226[1] = v25;
        v227 = v169[10];
        v26 = *(*(*(*(v22 + 40) + 16) + 32) + 16) + 1;
        v24[6] = ecs_stack_allocator_allocate(v169[4], 48 * v26, 8);
        v24[7] = v26;
        v24[9] = 0;
        v24[10] = 0;
        v24[8] = 0;
        v28 = v173;
        v27 = v174;
        v170 = v22;
        v29 = sub_1AF64B110(&type metadata for GraphScriptingConfig, &off_1F253C070, v174, v20, v173, v24);
        if (v27)
        {
          if (!v28)
          {
            goto LABEL_15;
          }

          v30 = 0;
          v171 = v29 + 16;
          while (2)
          {
            v172 = v174[v30];
            v177 = v30;
            v98 = *&v171[32 * v30];
            v99 = *(v98 + 32);
            v100 = v99 & 0x3F;
            v101 = ((1 << v99) + 63) >> 6;
            v102 = 8 * v101;

            if (v100 > 0xD)
            {

              if (swift_stdlib_isStackAllocationSafe())
              {

                goto LABEL_83;
              }

              v94 = swift_slowAlloc();

              v158 = v168;
              v159 = sub_1AF6931C8(v94, v101, v98, sub_1AF692C70);
              v168 = v158;
              if (v158)
              {
                goto LABEL_143;
              }

              v124 = v159;

              MEMORY[0x1B271DEA0](v94, -1, -1);
            }

            else
            {
LABEL_83:
              v175 = &v161;
              v176 = v101;
              MEMORY[0x1EEE9AC00](v103);
              v181 = &v161 - ((v102 + 15) & 0x3FFFFFFFFFFFFFF0);
              bzero(v181, v102);
              v182 = 0;
              v104 = 0;
              v105 = 1 << *(v98 + 32);
              if (v105 < 64)
              {
                v106 = ~(-1 << v105);
              }

              else
              {
                v106 = -1;
              }

              v107 = v106 & *(v98 + 64);
              v108 = (v105 + 63) >> 6;
              while (v107)
              {
                v109 = __clz(__rbit64(v107));
                v107 &= v107 - 1;
                v110 = v109 | (v104 << 6);
LABEL_94:
                v114 = *(v98 + 48) + 8 * v110;
                v115 = *v114;
                v116 = *(v114 + 4);
                v117 = v183;
                sub_1AF6935C4(*(v98 + 56) + *(v186 + 72) * v110, v183);
                v118 = v184;
                *v184 = v115;
                *(v118 + 4) = v116;
                v119 = v187;
                sub_1AF687DC4(v117, v118 + *(v187 + 48));
                v120 = v185;
                sub_1AF693628(v118, v185);
                v121 = v120 + *(v119 + 48);
                v122 = *(v121 + 32);
                if (v122)
                {
                  v123 = *(v122 + 16);
                  sub_1AF693564(v121, type metadata accessor for GraphScriptingConfig.ScriptInfo);
                  if (v123)
                  {
                    *&v181[(v110 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v110;
                    ++v182;
                  }
                }

                else
                {
                  sub_1AF693564(v121, type metadata accessor for GraphScriptingConfig.ScriptInfo);
                }
              }

              v111 = v104 << 6;
              while (1)
              {
                v112 = v104 + 1;
                if (v104 + 1 >= v108)
                {
                  break;
                }

                v113 = *(v98 + 8 * v104 + 72);
                v111 += 64;
                ++v104;
                if (v113)
                {
                  v107 = (v113 - 1) & v113;
                  v110 = __clz(__rbit64(v113)) + v111;
                  v104 = v112;
                  goto LABEL_94;
                }
              }

              v124 = sub_1AF8FB3D0(v181, v176, v182, v98);
            }

            v125 = v124[2];

            if (v125)
            {
              goto LABEL_81;
            }

            v126 = *(*(v170 + 5) + 16);
            v127 = *(v126 + 128);
            if (!*(v127 + 16))
            {
              goto LABEL_81;
            }

            v128 = sub_1AF449CB8(&type metadata for GraphScriptingConfig);
            if ((v129 & 1) == 0 || *(*(v126 + 24) + 16 * *(*(v127 + 56) + 8 * v128) + 32) != &type metadata for GraphScriptingConfig)
            {
              goto LABEL_81;
            }

            v207 = &type metadata for GraphScriptingConfig;
            v208 = &off_1F253C070;
            v209 = 1;
            v130 = v169[13];
            v131 = *(v130 + 16);
            if (!v131)
            {

LABEL_131:
              v145 = v169;
              v146 = *(v170 + 30) - *(v170 + 29);
              v147 = ecs_stack_allocator_allocate(v169[4], 8 * v146, 8);
              *v147 = v172;
              sub_1AF63515C(&v207, &v210);
              *v213 = v147;
              *&v213[8] = v146;
              *&v213[16] = 1;
              v148 = v145[13];
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v145[13] = v148;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v148 = sub_1AF420EA0(0, v148[2] + 1, 1, v148);
                v169[13] = v148;
              }

              v151 = v148[2];
              v150 = v148[3];
              if (v151 >= v150 >> 1)
              {
                v160 = sub_1AF420EA0(v150 > 1, v151 + 1, 1, v148);
                v169[13] = v160;
              }

              sub_1AF635250(&v207);
              v152 = v169;
              v153 = v169[13];
              *(v153 + 16) = v151 + 1;
              v154 = v153 + 72 * v151;
              *(v154 + 32) = v210;
              v156 = v212;
              v155 = *v213;
              v157 = v211;
              *(v154 + 96) = *&v213[16];
              *(v154 + 64) = v156;
              *(v154 + 80) = v155;
              *(v154 + 48) = v157;
              v152[13] = v153;
              goto LABEL_81;
            }

            v132 = v130 + 32;

            v133 = 0;
LABEL_107:
            sub_1AF6350F8(v132, v206);
            sub_1AF63515C(v206, &v210);
            sub_1AF63515C(&v207, v213);
            if (BYTE8(v212) > 2u)
            {
              if (BYTE8(v212) != 3)
              {
                if (BYTE8(v212) != 4)
                {
                  sub_1AF6934DC(v206);
                  if (v215 == 5)
                  {
                    v140 = vorrq_s8(*&v213[8], v214);
                    if (!(*&vorr_s8(*v140.i8, *&vextq_s8(v140, v140, 8uLL)) | *v213))
                    {
                      sub_1AF635250(&v210);
LABEL_128:
                      v142 = sub_1AFBFCA08(&v210);
                      v143 = *(v141 + 48);
                      if (v143)
                      {
                        v144 = *(v141 + 64);
                        *(v143 + 8 * v144) = v172;
                        *(v141 + 64) = v144 + 1;
                      }

                      (v142)(&v210, 0);

                      sub_1AF635250(&v207);
LABEL_81:
                      v30 = v177 + 1;
                      if (v177 + 1 == v173)
                      {
                        goto LABEL_15;
                      }

                      continue;
                    }
                  }

                  goto LABEL_105;
                }

                sub_1AF6934DC(v206);
                sub_1AF63515C(&v210, v205);
                if (v215 != 4)
                {
                  goto LABEL_105;
                }

                v134 = LOBYTE(v205[0]);
                v135 = v213[0];
                sub_1AF635250(&v210);
                if (v134 == v135)
                {
                  goto LABEL_128;
                }

LABEL_106:
                ++v133;
                v132 += 72;
                if (v131 == v133)
                {
                  goto LABEL_131;
                }

                goto LABEL_107;
              }

              sub_1AF63515C(&v210, v205);
              if (v215 == 3)
              {
LABEL_123:
                sub_1AF0FBA54(v205, v202);
                sub_1AF0FBA54(v213, v201);
                v138 = v203;
                v139 = v204;
                sub_1AF441150(v202, v203);
                LOBYTE(v138) = sub_1AF640C98(v201, v138, v139);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v201);
                sub_1AF6934DC(v206);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v202);
                sub_1AF635250(&v210);
                if (v138)
                {
                  goto LABEL_128;
                }

                goto LABEL_106;
              }
            }

            else
            {
              if (!BYTE8(v212))
              {
                sub_1AF6934DC(v206);
                sub_1AF63515C(&v210, v205);
                if (v215)
                {
                  goto LABEL_105;
                }

LABEL_118:
                v136 = *&v205[0];
                v137 = *v213;
                sub_1AF635250(&v210);
                if (v136 == v137)
                {
                  goto LABEL_128;
                }

                goto LABEL_106;
              }

              if (BYTE8(v212) == 1)
              {
                sub_1AF6934DC(v206);
                sub_1AF63515C(&v210, v205);
                if (v215 == 1)
                {
                  goto LABEL_118;
                }

LABEL_105:
                sub_1AF693564(&v210, sub_1AF635194);
                goto LABEL_106;
              }

              sub_1AF63515C(&v210, v205);
              if (v215 == 2)
              {
                goto LABEL_123;
              }
            }

            break;
          }

          sub_1AF6934DC(v206);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v205);
          goto LABEL_105;
        }

        if (v19 == v172)
        {
          goto LABEL_15;
        }

        v174 = (v29 + 16);
        do
        {
          v177 = v19;
          v33 = v174[4 * v19];
          v34 = *(v33 + 32);
          v35 = v34 & 0x3F;
          v36 = ((1 << v34) + 63) >> 6;
          v37 = 8 * v36;

          if (v35 > 0xD)
          {

            if (!swift_stdlib_isStackAllocationSafe())
            {
              v94 = swift_slowAlloc();

              v95 = v168;
              v96 = sub_1AF6931C8(v94, v36, v33, sub_1AF692C70);
              v168 = v95;
              if (v95)
              {
LABEL_143:

                result = MEMORY[0x1B271DEA0](v94, -1, -1);
                __break(1u);
                return result;
              }

              v59 = v96;

              MEMORY[0x1B271DEA0](v94, -1, -1);
              goto LABEL_34;
            }
          }

          v175 = &v161;
          v176 = v36;
          MEMORY[0x1EEE9AC00](v38);
          v181 = &v161 - ((v37 + 15) & 0x3FFFFFFFFFFFFFF0);
          bzero(v181, v37);
          v182 = 0;
          v39 = 0;
          v40 = 1 << *(v33 + 32);
          if (v40 < 64)
          {
            v41 = ~(-1 << v40);
          }

          else
          {
            v41 = -1;
          }

          v42 = v41 & *(v33 + 64);
          v43 = (v40 + 63) >> 6;
          while (v42)
          {
            v44 = __clz(__rbit64(v42));
            v42 &= v42 - 1;
            v45 = v44 | (v39 << 6);
LABEL_30:
            v49 = *(v33 + 48) + 8 * v45;
            v50 = *v49;
            v51 = *(v49 + 4);
            v52 = v178;
            sub_1AF6935C4(*(v33 + 56) + *(v186 + 72) * v45, v178);
            v53 = v179;
            *v179 = v50;
            *(v53 + 4) = v51;
            v54 = v187;
            sub_1AF687DC4(v52, v53 + *(v187 + 48));
            v55 = v180;
            sub_1AF693628(v53, v180);
            v56 = v55 + *(v54 + 48);
            v57 = *(v56 + 32);
            if (v57)
            {
              v58 = *(v57 + 16);
              sub_1AF693564(v56, type metadata accessor for GraphScriptingConfig.ScriptInfo);
              if (v58)
              {
                *&v181[(v45 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v45;
                ++v182;
              }
            }

            else
            {
              sub_1AF693564(v56, type metadata accessor for GraphScriptingConfig.ScriptInfo);
            }
          }

          v46 = v39 << 6;
          while (1)
          {
            v47 = v39 + 1;
            if (v39 + 1 >= v43)
            {
              break;
            }

            v48 = *(v33 + 8 * v39 + 72);
            v46 += 64;
            ++v39;
            if (v48)
            {
              v42 = (v48 - 1) & v48;
              v45 = __clz(__rbit64(v48)) + v46;
              v39 = v47;
              goto LABEL_30;
            }
          }

          v59 = sub_1AF8FB3D0(v181, v176, v182, v33);
LABEL_34:

          v60 = v59[2];

          if (v60)
          {
            goto LABEL_35;
          }

          v62 = *(*(v170 + 5) + 16);
          v63 = *(v62 + 128);
          if (!*(v63 + 16))
          {
            goto LABEL_35;
          }

          v64 = sub_1AF449CB8(&type metadata for GraphScriptingConfig);
          if ((v65 & 1) == 0 || *(*(v62 + 24) + 16 * *(*(v63 + 56) + 8 * v64) + 32) != &type metadata for GraphScriptingConfig)
          {
            goto LABEL_35;
          }

          v207 = &type metadata for GraphScriptingConfig;
          v208 = &off_1F253C070;
          v209 = 1;
          v66 = v169[13];
          v67 = *(v66 + 16);
          if (!v67)
          {

LABEL_70:
            v81 = v169;
            v82 = *(v170 + 30) - *(v170 + 29);
            v83 = ecs_stack_allocator_allocate(v169[4], 8 * v82, 8);
            *v83 = v177;
            sub_1AF63515C(&v207, &v210);
            *v213 = v83;
            *&v213[8] = v82;
            *&v213[16] = 1;
            v84 = v81[13];
            v85 = swift_isUniquelyReferenced_nonNull_native();
            v81[13] = v84;
            if ((v85 & 1) == 0)
            {
              v84 = sub_1AF420EA0(0, v84[2] + 1, 1, v84);
              v169[13] = v84;
            }

            v87 = v84[2];
            v86 = v84[3];
            if (v87 >= v86 >> 1)
            {
              v97 = sub_1AF420EA0(v86 > 1, v87 + 1, 1, v84);
              v169[13] = v97;
            }

            sub_1AF635250(&v207);
            v88 = v169;
            v89 = v169[13];
            *(v89 + 16) = v87 + 1;
            v90 = v89 + 72 * v87;
            *(v90 + 32) = v210;
            v92 = v212;
            v91 = *v213;
            v93 = v211;
            *(v90 + 96) = *&v213[16];
            *(v90 + 64) = v92;
            *(v90 + 80) = v91;
            *(v90 + 48) = v93;
            v88[13] = v89;
            goto LABEL_35;
          }

          v68 = v66 + 32;

          v69 = 0;
          while (1)
          {
            sub_1AF6350F8(v68, v206);
            sub_1AF63515C(v206, &v210);
            sub_1AF63515C(&v207, v213);
            if (BYTE8(v212) <= 2u)
            {
              if (!BYTE8(v212))
              {
                sub_1AF6934DC(v206);
                sub_1AF63515C(&v210, v205);
                if (v215)
                {
                  goto LABEL_44;
                }

                goto LABEL_57;
              }

              if (BYTE8(v212) == 1)
              {
                sub_1AF6934DC(v206);
                sub_1AF63515C(&v210, v205);
                if (v215 != 1)
                {
                  goto LABEL_44;
                }

LABEL_57:
                v72 = *&v205[0];
                v73 = *v213;
                sub_1AF635250(&v210);
                if (v72 == v73)
                {
                  goto LABEL_67;
                }

                goto LABEL_45;
              }

              sub_1AF63515C(&v210, v205);
              if (v215 != 2)
              {
LABEL_43:
                sub_1AF6934DC(v206);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v205);
LABEL_44:
                sub_1AF693564(&v210, sub_1AF635194);
                goto LABEL_45;
              }

              goto LABEL_62;
            }

            if (BYTE8(v212) == 3)
            {
              sub_1AF63515C(&v210, v205);
              if (v215 != 3)
              {
                goto LABEL_43;
              }

LABEL_62:
              sub_1AF0FBA54(v205, v202);
              sub_1AF0FBA54(v213, v201);
              v74 = v203;
              v75 = v204;
              sub_1AF441150(v202, v203);
              LOBYTE(v74) = sub_1AF640C98(v201, v74, v75);
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v201);
              sub_1AF6934DC(v206);
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v202);
              sub_1AF635250(&v210);
              if (v74)
              {
                goto LABEL_67;
              }

              goto LABEL_45;
            }

            if (BYTE8(v212) != 4)
            {
              break;
            }

            sub_1AF6934DC(v206);
            sub_1AF63515C(&v210, v205);
            if (v215 != 4)
            {
              goto LABEL_44;
            }

            v70 = LOBYTE(v205[0]);
            v71 = v213[0];
            sub_1AF635250(&v210);
            if (v70 == v71)
            {
              goto LABEL_67;
            }

LABEL_45:
            ++v69;
            v68 += 72;
            if (v67 == v69)
            {
              goto LABEL_70;
            }
          }

          sub_1AF6934DC(v206);
          if (v215 != 5)
          {
            goto LABEL_44;
          }

          v76 = vorrq_s8(*&v213[8], v214);
          if (*&vorr_s8(*v76.i8, *&vextq_s8(v76, v76, 8uLL)) | *v213)
          {
            goto LABEL_44;
          }

          sub_1AF635250(&v210);
LABEL_67:
          v78 = sub_1AFBFCA08(&v210);
          v79 = *(v77 + 48);
          if (!v79)
          {
            (v78)(&v210, 0);

            sub_1AF635250(&v207);
LABEL_35:
            v61 = v177;
            goto LABEL_36;
          }

          v80 = *(v77 + 64);
          v61 = v177;
          *(v79 + 8 * v80) = v177;
          *(v77 + 64) = v80 + 1;
          (v78)(&v210, 0);

          sub_1AF635250(&v207);
LABEL_36:
          v19 = v61 + 1;
        }

        while (v19 != v172);
LABEL_15:
        v190 = v165;
        v191 = v224;
        v192 = v225;
        v31 = v168;
        sub_1AF630994(v169, &v190, v226);
        v168 = v31;
        v32 = v170;
        sub_1AF62D29C(v170);
        v15 = v162;
        ecs_stack_allocator_pop_snapshot(v162);
        if (v167)
        {
          os_unfair_lock_unlock(*(v32 + 43));
          os_unfair_lock_unlock(*(v32 + 47));
        }

        v16 = v166 + 1;
        if (v166 + 1 == v163)
        {
          sub_1AF692E04(&v216, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF69348C);
          return sub_1AF692E04(&v216, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF69348C);
        }
      }
    }

    return sub_1AF692E04(&v216, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF69348C);
  }

  return result;
}

uint64_t sub_1AF68FC74()
{
  v245 = *MEMORY[0x1E69E9840];
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v207 = qword_1ED73B840;
  v208 = 0;
  v209 = 2;
  v210 = 1;
  v211 = 2;
  v212 = 0;

  sub_1AF826AA4(v200);

  v205[0] = v200[0];
  v205[1] = v200[1];
  v206 = v201;
  sub_1AF6B06C0(v0, v205, 0x200000000, v231);
  v241 = *&v231[32];
  v242 = v232;
  v243 = v233;
  v244 = v234;
  v239 = *v231;
  v240 = *&v231[16];
  v1 = &type metadata for CodeGenerationInitialized;
  result = sub_1AF692E04(v200, &unk_1EB63D278, &type metadata for CodeGenerationInitialized, &off_1F253BF30, sub_1AF5DD590);
  v189 = *v231;
  if (!*v231)
  {
    return result;
  }

  v3 = v0;
  v188 = *&v231[40];
  v4 = *(&v232 + 1);
  v194 = *(&v233 + 1);
  v235 = *&v231[8];
  v236 = *&v231[24];
  if (v234 <= 0 || !*(&v232 + 1))
  {
    v181 = MEMORY[0x1E69E6720];
    return sub_1AF692E04(v231, &qword_1ED725EA0, &type metadata for QueryResult, v181, sub_1AF69348C);
  }

  v5 = *(*(&v233 + 1) + 32);
  v6 = v0;
  v7 = *(v233 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v8 = &unk_1ED72C000;
  v184 = (v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v230[2] = v241;
  v230[3] = v242;
  v230[4] = v243;
  v230[5] = v244;
  v230[0] = v239;
  v230[1] = v240;
  sub_1AF5DD298(v230, &v224);
  v9 = 0;
  v10 = 0;
  v11 = v6;
  v190 = v6;
  v186 = v5;
  v187 = v4;
  v185 = v7;
  while (2)
  {
    v191 = v9;
    v192 = v10;
    v12 = (v188 + 48 * v9);
    v13 = *v12;
    v14 = v12[1];
    v193 = *(v12 + 2);
    v15 = *(v12 + 5);
    v197 = *(v12 + 4);
    if (v7)
    {
      v16 = *(v15 + 376);

      os_unfair_lock_lock(v16);
      os_unfair_lock_lock(*(v15 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v5);
    v17 = *(v194 + 64);
    v237[0] = *(v194 + 48);
    v237[1] = v17;
    v238 = *(v194 + 80);
    v18 = *(*(*(*(v15 + 40) + 16) + 32) + 16) + 1;
    *(v194 + 48) = ecs_stack_allocator_allocate(*(v194 + 32), 48 * v18, 8);
    *(v194 + 56) = v18;
    *(v194 + 72) = 0;
    *(v194 + 80) = 0;
    *(v194 + 64) = 0;
    v195 = v15;
    if (!v193)
    {
      v101 = v11;
      v198 = v14;
      if (v13 == v14)
      {
        goto LABEL_118;
      }

      while (1)
      {
        v199 = 0;

        if (*(v15 + 184))
        {
          goto LABEL_230;
        }

        v103 = *(*(v15 + 168) + 4 * v13);
        v104 = *(*(v102 + v8[284]) + 12 * v103 + 8);

        if (v103 == -1)
        {

LABEL_143:

          goto LABEL_149;
        }

        v105 = v8[284];

        if ((v103 & 0x80000000) != 0)
        {
          goto LABEL_143;
        }

        v106 = v101;
        if (*(v101 + v105 + 8) <= v103 || ((v107 = *(v101 + v105) + 12 * v103, v104 != -1) ? (v108 = *(v107 + 8) == v104) : (v108 = 1), !v108 || (v109 = *(*(*(v101 + 88) + 8 * *(v107 + 6) + 32) + 16), v110 = *(v109 + 128), !*(v110 + 16)) || (v111 = sub_1AF449CB8(&type metadata for EmitterDescription), (v112 & 1) == 0) || *(*(v109 + 24) + 16 * *(*(v110 + 56) + 8 * v111) + 32) != &type metadata for EmitterDescription))
        {
          v101 = v106;
          v113 = (v106 + v8[284]);
          v114 = v113[1];

          if (v114 <= v103)
          {
LABEL_146:

            goto LABEL_147;
          }

          v115 = *v113 + 12 * v103;
          if (v104 != -1 && *(v115 + 8) != v104)
          {
LABEL_145:
            v101 = v106;
            goto LABEL_146;
          }

          v117 = *(*(*(v106 + 88) + 8 * *(v115 + 6) + 32) + 16);
          v118 = *(v117 + 128);
          if (!*(v118 + 16))
          {

            v101 = v106;
            goto LABEL_147;
          }

          v119 = sub_1AF449CB8(&type metadata for GraphScriptingConfig);
          if ((v120 & 1) == 0)
          {
            goto LABEL_145;
          }

          v121 = *(*(v117 + 24) + 16 * *(*(v118 + 56) + 8 * v119) + 32);
          v101 = v106;

          if (v121 != &type metadata for GraphScriptingConfig)
          {

LABEL_147:
            v15 = v195;
LABEL_148:
            v14 = v198;
            goto LABEL_149;
          }

          swift_unownedRetain();

          v15 = v195;
          if (v184[1] > v103)
          {
            v174 = (*v184 + 12 * v103);
            if (v104 == -1 || v174[2] == v104)
            {
              v176 = *(*(*(v101 + 144) + 8 * *v174 + 32) + 48);
              v177 = (v176 + 32);
              v178 = *(v176 + 16) + 1;
              v14 = v198;
              while (--v178)
              {
                v179 = *v177;
                v177 += 5;
                if (v179 == &type metadata for GraphScriptingConfig)
                {
                  swift_unownedRelease();

                  goto LABEL_189;
                }
              }
            }
          }

LABEL_229:

          *&v224 = 0;
          *(&v224 + 1) = 0xE000000000000000;
          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
          v183 = sub_1AF656F38();
          MEMORY[0x1B2718AE0](v183);

          MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
          MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF2EB40);
          MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
LABEL_230:
          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }

        v220 = &off_1F253CE00;
        *&v218 = __PAIR64__(v104, v103);
        v219 = &type metadata for VFXEmitter;
        *(&v218 + 1) = v106;
        sub_1AF0FBA54(&v218, &v224);
        v156 = sub_1AF441150(&v224, *(&v225 + 1));
        v158 = *v156;
        v157 = v156[1];

        v159 = sub_1AF85BAAC(v158, v157);
        v160 = *(v159 + 2);
        if (!v160)
        {

          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v224);

          v101 = v106;
          v15 = v195;
          goto LABEL_148;
        }

        v161 = (v159 + 40);
        v101 = v106;
        v14 = v198;
        do
        {
          v162 = *(v161 - 2);
          v163 = *(v161 - 1);
          v164 = *v161;

          if (v162 == -1 && v163 == 0)
          {
            goto LABEL_202;
          }

          if ((v162 & 0x80000000) != 0)
          {
            goto LABEL_202;
          }

          if (*(v164 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) <= v162)
          {
            goto LABEL_202;
          }

          v166 = *(v164 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v162;
          if (v163 != -1 && *(v166 + 8) != v163)
          {
            goto LABEL_202;
          }

          v167 = *(*(*(v164 + 88) + 8 * *(v166 + 6) + 32) + 16);
          v168 = *(v167 + 128);
          if (*(v168 + 16) && (v169 = sub_1AF449CB8(&type metadata for GraphScriptingConfig), (v170 & 1) != 0))
          {
            v171 = *(*(v167 + 24) + 16 * *(*(v168 + 56) + 8 * v169) + 32);

            if (v171 == &type metadata for GraphScriptingConfig)
            {
              v172 = off_1F253C078;
              type metadata accessor for VFXAttribute();
              v173 = swift_allocObject();
              *(v173 + 16) = v164;
              *(v173 + 24) = v162;
              *(v173 + 28) = v163;
              *(v173 + 32) = &type metadata for GraphScriptingConfig;
              *(v173 + 40) = v172;

              swift_unownedRetain();

              sub_1AF680B34(v162 | (v163 << 32), v190, &v199);
              v101 = v190;
LABEL_202:

              goto LABEL_203;
            }

            v101 = v190;
          }

          else
          {

            v101 = v190;
          }

LABEL_203:
          v161 += 2;
          --v160;
        }

        while (v160);

        v180 = v199;
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v224);

        v1 = &type metadata for CodeGenerationInitialized;
        v8 = &unk_1ED72C000;
        v15 = v195;
        if (v180)
        {
          goto LABEL_189;
        }

LABEL_149:
        v122 = v101;
        v123 = *(*(v15 + 40) + 16);
        v124 = *(v123 + 128);
        if (!*(v124 + 16))
        {
          goto LABEL_188;
        }

        v125 = sub_1AF449CB8(v1);
        if ((v126 & 1) == 0 || *(*(v123 + 24) + 16 * *(*(v124 + 56) + 8 * v125) + 32) != v1)
        {
          goto LABEL_188;
        }

        v221 = v1;
        v222 = &off_1F253BF30;
        v223 = 1;
        v127 = *(v194 + 104);
        v128 = *(v127 + 16);
        if (!v128)
        {

LABEL_183:
          v145 = *(v15 + 240) - *(v15 + 232);
          v146 = ecs_stack_allocator_allocate(*(v194 + 32), 8 * v145, 8);
          *v146 = v13;
          sub_1AF63515C(&v221, &v224);
          *v227 = v146;
          *&v227[8] = v145;
          *&v227[16] = 1;
          v147 = *(v194 + 104);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v194 + 104) = v147;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v147 = sub_1AF420EA0(0, v147[2] + 1, 1, v147);
            *(v194 + 104) = v147;
          }

          v8 = &unk_1ED72C000;
          v14 = v198;
          v150 = v147[2];
          v149 = v147[3];
          if (v150 >= v149 >> 1)
          {
            *(v194 + 104) = sub_1AF420EA0(v149 > 1, v150 + 1, 1, v147);
          }

          sub_1AF635250(&v221);
          v151 = *(v194 + 104);
          *(v151 + 16) = v150 + 1;
          v152 = v151 + 72 * v150;
          *(v152 + 32) = v224;
          v154 = v226;
          v153 = *v227;
          v155 = v225;
          *(v152 + 96) = *&v227[16];
          *(v152 + 64) = v154;
          *(v152 + 80) = v153;
          *(v152 + 48) = v155;
          *(v194 + 104) = v151;
LABEL_188:
          v101 = v122;
          goto LABEL_189;
        }

        v129 = v127 + 32;

        v130 = 0;
        v131 = v1;
        while (2)
        {
          sub_1AF6350F8(v129, &v218);
          sub_1AF63515C(&v218, &v224);
          sub_1AF63515C(&v221, v227);
          if (BYTE8(v226) <= 2u)
          {
            if (!BYTE8(v226))
            {
              sub_1AF6934DC(&v218);
              sub_1AF63515C(&v224, v217);
              if (!v229)
              {
                goto LABEL_167;
              }

              goto LABEL_155;
            }

            if (BYTE8(v226) == 1)
            {
              sub_1AF6934DC(&v218);
              sub_1AF63515C(&v224, v217);
              if (v229 == 1)
              {
LABEL_167:
                v135 = *&v217[0];
                v136 = *v227;
                sub_1AF635250(&v224);
                v134 = v135 == v136;
                goto LABEL_168;
              }

LABEL_155:
              sub_1AF693564(&v224, sub_1AF635194);
LABEL_156:
              ++v130;
              v129 += 72;
              if (v128 == v130)
              {
                goto LABEL_183;
              }

              continue;
            }

            sub_1AF63515C(&v224, v217);
            if (v229 == 2)
            {
LABEL_174:
              sub_1AF0FBA54(v217, v214);
              sub_1AF0FBA54(v227, v213);
              v137 = v215;
              v138 = v216;
              sub_1AF441150(v214, v215);
              v139 = v138;
              v1 = v131;
              LOBYTE(v137) = sub_1AF640C98(v213, v137, v139);
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v213);
              sub_1AF6934DC(&v218);
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v214);
              sub_1AF635250(&v224);
              if (v137)
              {
                goto LABEL_179;
              }

              goto LABEL_156;
            }

LABEL_154:
            sub_1AF6934DC(&v218);
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v217);
            goto LABEL_155;
          }

          break;
        }

        if (BYTE8(v226) == 3)
        {
          sub_1AF63515C(&v224, v217);
          if (v229 == 3)
          {
            goto LABEL_174;
          }

          goto LABEL_154;
        }

        if (BYTE8(v226) == 4)
        {
          sub_1AF6934DC(&v218);
          sub_1AF63515C(&v224, v217);
          if (v229 != 4)
          {
            goto LABEL_155;
          }

          v132 = LOBYTE(v217[0]);
          v133 = v227[0];
          sub_1AF635250(&v224);
          v134 = v132 == v133;
LABEL_168:
          if (v134)
          {
            goto LABEL_179;
          }

          goto LABEL_156;
        }

        sub_1AF6934DC(&v218);
        if (v229 != 5)
        {
          goto LABEL_155;
        }

        v140 = vorrq_s8(*&v227[8], v228);
        if (*&vorr_s8(*v140.i8, *&vextq_s8(v140, v140, 8uLL)) | *v227)
        {
          goto LABEL_155;
        }

        sub_1AF635250(&v224);
LABEL_179:
        v142 = sub_1AFBFCA08(&v224);
        v143 = *(v141 + 48);
        if (v143)
        {
          v144 = *(v141 + 64);
          *(v143 + 8 * v144) = v13;
          *(v141 + 64) = v144 + 1;
        }

        (v142)(&v224, 0);

        sub_1AF635250(&v221);
        v8 = &unk_1ED72C000;
        v101 = v122;
        v14 = v198;
LABEL_189:
        if (++v13 == v14)
        {
          goto LABEL_118;
        }
      }
    }

    if (!v197)
    {
      goto LABEL_118;
    }

    v19 = v11;
    v20 = 0;
    v21 = v193;
    do
    {
      v22 = *(v21 + 8 * v20);
      v199 = 0;

      if (*(v15 + 184))
      {
        goto LABEL_230;
      }

      v196 = v22;
      v24 = *(*(v15 + 168) + 4 * v22);
      v25 = *(*(v23 + v8[284]) + 12 * v24 + 8);

      if (v24 == -1)
      {

LABEL_37:

        goto LABEL_41;
      }

      v26 = v8[284];

      if ((v24 & 0x80000000) != 0)
      {
        goto LABEL_37;
      }

      v27 = v19;
      if (*(v19 + v26 + 8) <= v24 || ((v28 = *(v19 + v26) + 12 * v24, v25 != -1) ? (v29 = *(v28 + 8) == v25) : (v29 = 1), !v29 || (v30 = *(*(*(v19 + 88) + 8 * *(v28 + 6) + 32) + 16), v31 = *(v30 + 128), !*(v31 + 16)) || (v32 = sub_1AF449CB8(&type metadata for EmitterDescription), (v33 & 1) == 0) || *(*(v30 + 24) + 16 * *(*(v31 + 56) + 8 * v32) + 32) != &type metadata for EmitterDescription))
      {
        v19 = v27;
        v34 = (v27 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
        v35 = *(v27 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8);

        if (v35 > v24)
        {
          v36 = *v34 + 12 * v24;
          if (v25 == -1 || *(v36 + 8) == v25)
          {
            v38 = *(*(*(v27 + 88) + 8 * *(v36 + 6) + 32) + 16);
            v39 = *(v38 + 128);
            if (*(v39 + 16))
            {
              v40 = sub_1AF449CB8(&type metadata for GraphScriptingConfig);
              if (v41)
              {
                v42 = *(*(v38 + 24) + 16 * *(*(v39 + 56) + 8 * v40) + 32);
                v19 = v27;

                if (v42 == &type metadata for GraphScriptingConfig)
                {

                  swift_unownedRetain();

                  v15 = v195;
                  if (v184[1] > v24)
                  {
                    v94 = (*v184 + 12 * v24);
                    if (v25 == -1 || v94[2] == v25)
                    {
                      v96 = *(*(*(v19 + 144) + 8 * *v94 + 32) + 48);
                      v97 = (v96 + 32);
                      v98 = *(v96 + 16) + 1;
                      v8 = &unk_1ED72C000;
                      while (--v98)
                      {
                        v99 = *v97;
                        v97 += 5;
                        if (v99 == &type metadata for GraphScriptingConfig)
                        {
                          swift_unownedRelease();

                          v21 = v193;
                          goto LABEL_81;
                        }
                      }
                    }
                  }

                  goto LABEL_229;
                }
              }

              else
              {
                v19 = v27;
              }

              v8 = &unk_1ED72C000;
              v15 = v195;
              v21 = v193;
              goto LABEL_41;
            }

            v19 = v27;
          }

          else
          {
            v19 = v27;
          }
        }

        v8 = &unk_1ED72C000;
LABEL_40:
        v15 = v195;
        goto LABEL_41;
      }

      v220 = &off_1F253CE00;
      *&v218 = __PAIR64__(v25, v24);
      v219 = &type metadata for VFXEmitter;
      v75 = v27;
      *(&v218 + 1) = v27;
      sub_1AF0FBA54(&v218, &v224);
      v76 = sub_1AF441150(&v224, *(&v225 + 1));
      v78 = *v76;
      v77 = v76[1];

      v79 = sub_1AF85BAAC(v78, v77);
      v80 = *(v79 + 2);
      if (!v80)
      {

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v224);

        v8 = &unk_1ED72C000;
        v19 = v27;
        goto LABEL_40;
      }

      v81 = (v79 + 40);
      v19 = v75;
      do
      {
        v83 = *(v81 - 2);
        v82 = *(v81 - 1);
        v84 = *v81;

        if (v83 == -1 && v82 == 0)
        {
          goto LABEL_95;
        }

        if ((v83 & 0x80000000) != 0)
        {
          goto LABEL_95;
        }

        if (*(v84 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) <= v83)
        {
          goto LABEL_95;
        }

        v86 = *(v84 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v83;
        if (v82 != -1 && *(v86 + 8) != v82)
        {
          goto LABEL_95;
        }

        v87 = *(*(*(v84 + 88) + 8 * *(v86 + 6) + 32) + 16);
        v88 = *(v87 + 128);
        if (*(v88 + 16) && (v89 = sub_1AF449CB8(&type metadata for GraphScriptingConfig), (v90 & 1) != 0))
        {
          v91 = *(*(v87 + 24) + 16 * *(*(v88 + 56) + 8 * v89) + 32);

          if (v91 == &type metadata for GraphScriptingConfig)
          {
            v92 = off_1F253C078;
            type metadata accessor for VFXAttribute();
            v93 = swift_allocObject();
            *(v93 + 16) = v84;
            *(v93 + 24) = v83;
            *(v93 + 28) = v82;
            *(v93 + 32) = &type metadata for GraphScriptingConfig;
            *(v93 + 40) = v92;

            swift_unownedRetain();

            sub_1AF680B34(v83 | (v82 << 32), v190, &v199);
            v19 = v190;
LABEL_95:

            goto LABEL_96;
          }

          v19 = v190;
        }

        else
        {

          v19 = v190;
        }

LABEL_96:
        v81 += 2;
        --v80;
      }

      while (v80);

      v100 = v199;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v224);

      v1 = &type metadata for CodeGenerationInitialized;
      v8 = &unk_1ED72C000;
      v15 = v195;
      if (v100)
      {
        goto LABEL_81;
      }

LABEL_41:
      v43 = v19;
      v44 = *(*(v15 + 40) + 16);
      v45 = *(v44 + 128);
      if (!*(v45 + 16))
      {
        goto LABEL_80;
      }

      v46 = sub_1AF449CB8(v1);
      if ((v47 & 1) == 0 || *(*(v44 + 24) + 16 * *(*(v45 + 56) + 8 * v46) + 32) != v1)
      {
        goto LABEL_80;
      }

      v221 = v1;
      v222 = &off_1F253BF30;
      v223 = 1;
      v48 = *(v194 + 104);
      v49 = *(v48 + 16);
      if (!v49)
      {

LABEL_75:
        v64 = *(v195 + 240) - *(v195 + 232);
        v65 = ecs_stack_allocator_allocate(*(v194 + 32), 8 * v64, 8);
        *v65 = v196;
        sub_1AF63515C(&v221, &v224);
        *v227 = v65;
        *&v227[8] = v64;
        *&v227[16] = 1;
        v66 = *(v194 + 104);
        v67 = swift_isUniquelyReferenced_nonNull_native();
        *(v194 + 104) = v66;
        if ((v67 & 1) == 0)
        {
          v66 = sub_1AF420EA0(0, v66[2] + 1, 1, v66);
          *(v194 + 104) = v66;
        }

        v1 = &type metadata for CodeGenerationInitialized;
        v8 = &unk_1ED72C000;
        v69 = v66[2];
        v68 = v66[3];
        v15 = v195;
        if (v69 >= v68 >> 1)
        {
          *(v194 + 104) = sub_1AF420EA0(v68 > 1, v69 + 1, 1, v66);
        }

        sub_1AF635250(&v221);
        v70 = *(v194 + 104);
        *(v70 + 16) = v69 + 1;
        v71 = v70 + 72 * v69;
        *(v71 + 32) = v224;
        v73 = v226;
        v72 = *v227;
        v74 = v225;
        *(v71 + 96) = *&v227[16];
        *(v71 + 64) = v73;
        *(v71 + 80) = v72;
        *(v71 + 48) = v74;
        *(v194 + 104) = v70;
        goto LABEL_80;
      }

      v50 = v48 + 32;

      v51 = 0;
      while (2)
      {
        sub_1AF6350F8(v50, &v218);
        sub_1AF63515C(&v218, &v224);
        sub_1AF63515C(&v221, v227);
        if (BYTE8(v226) <= 2u)
        {
          if (!BYTE8(v226))
          {
            sub_1AF6934DC(&v218);
            sub_1AF63515C(&v224, v217);
            if (!v229)
            {
              goto LABEL_59;
            }

            goto LABEL_47;
          }

          if (BYTE8(v226) == 1)
          {
            sub_1AF6934DC(&v218);
            sub_1AF63515C(&v224, v217);
            if (v229 == 1)
            {
LABEL_59:
              v55 = *&v217[0];
              v56 = *v227;
              sub_1AF635250(&v224);
              v54 = v55 == v56;
              goto LABEL_60;
            }

LABEL_47:
            sub_1AF693564(&v224, sub_1AF635194);
LABEL_48:
            ++v51;
            v50 += 72;
            if (v49 == v51)
            {
              goto LABEL_75;
            }

            continue;
          }

          sub_1AF63515C(&v224, v217);
          if (v229 == 2)
          {
LABEL_66:
            sub_1AF0FBA54(v217, v214);
            sub_1AF0FBA54(v227, v213);
            v57 = v215;
            v58 = v216;
            sub_1AF441150(v214, v215);
            LOBYTE(v57) = sub_1AF640C98(v213, v57, v58);
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v213);
            sub_1AF6934DC(&v218);
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v214);
            sub_1AF635250(&v224);
            if (v57)
            {
              goto LABEL_71;
            }

            goto LABEL_48;
          }

LABEL_46:
          sub_1AF6934DC(&v218);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v217);
          goto LABEL_47;
        }

        break;
      }

      if (BYTE8(v226) == 3)
      {
        sub_1AF63515C(&v224, v217);
        if (v229 == 3)
        {
          goto LABEL_66;
        }

        goto LABEL_46;
      }

      if (BYTE8(v226) == 4)
      {
        sub_1AF6934DC(&v218);
        sub_1AF63515C(&v224, v217);
        if (v229 != 4)
        {
          goto LABEL_47;
        }

        v52 = LOBYTE(v217[0]);
        v53 = v227[0];
        sub_1AF635250(&v224);
        v54 = v52 == v53;
LABEL_60:
        if (v54)
        {
          goto LABEL_71;
        }

        goto LABEL_48;
      }

      sub_1AF6934DC(&v218);
      if (v229 != 5)
      {
        goto LABEL_47;
      }

      v59 = vorrq_s8(*&v227[8], v228);
      if (*&vorr_s8(*v59.i8, *&vextq_s8(v59, v59, 8uLL)) | *v227)
      {
        goto LABEL_47;
      }

      sub_1AF635250(&v224);
LABEL_71:
      v61 = sub_1AFBFCA08(&v224);
      v62 = *(v60 + 48);
      if (v62)
      {
        v63 = *(v60 + 64);
        *(v62 + 8 * v63) = v196;
        *(v60 + 64) = v63 + 1;
      }

      (v61)(&v224, 0);

      sub_1AF635250(&v221);
      v1 = &type metadata for CodeGenerationInitialized;
      v15 = v195;
      v8 = &unk_1ED72C000;
LABEL_80:
      v19 = v43;
LABEL_81:
      ++v20;
    }

    while (v20 != v197);
LABEL_118:
    v202 = v189;
    v203 = v235;
    v204 = v236;
    v10 = v192;
    sub_1AF630994(v194, &v202, v237);
    sub_1AF62D29C(v15);
    v5 = v186;
    ecs_stack_allocator_pop_snapshot(v186);
    v7 = v185;
    if (v185)
    {
      os_unfair_lock_unlock(*(v15 + 344));
      os_unfair_lock_unlock(*(v15 + 376));
    }

    v11 = v190;
    v9 = v191 + 1;
    if (v191 + 1 != v187)
    {
      continue;
    }

    break;
  }

  v182 = MEMORY[0x1E69E6720];
  sub_1AF692E04(v231, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF69348C);
  v181 = v182;
  return sub_1AF692E04(v231, &qword_1ED725EA0, &type metadata for QueryResult, v181, sub_1AF69348C);
}

uint64_t sub_1AF69132C()
{
  v253 = *MEMORY[0x1E69E9840];
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v205 = qword_1ED73B840;
  v206 = 0;
  v207 = 2;
  v208 = 1;
  v209 = 2;
  v210 = 0;

  sub_1AF702F78(1, v189);

  sub_1AF5C52A8(0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1AFE431C0;
  *(v1 + 32) = &type metadata for CodeGenerationInitialized;
  *(v1 + 40) = &off_1F253BFF0;
  sub_1AF5D1EBC(v1);
  sub_1AF692E04(v189, &unk_1EB63D270, &type metadata for GraphEntityComponentPropertyReferences, &off_1F253B5B8, sub_1AF5DD590);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v203[0] = v190[0];
  v203[1] = v190[1];
  v204 = v191;
  v2 = v0;
  sub_1AF6B06C0(v0, v203, 0x200000000, &v239);
  sub_1AF692E04(v190, &unk_1EB63D270, &type metadata for GraphEntityComponentPropertyReferences, &off_1F253B5B8, sub_1AF5DD590);
  if (!v239)
  {
    v6 = 0;
    goto LABEL_109;
  }

  if (v246 < 1)
  {
    v6 = 0;
    goto LABEL_108;
  }

  v176 = v243;
  if (!v243)
  {
    v6 = 0;
    goto LABEL_108;
  }

  v169 = v0;
  v174 = v242;
  v3 = *(v244 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v183 = v245;
  v4 = *(v245 + 32);
  v195 = v239;
  v196 = v240;
  v197 = v241;
  sub_1AF5D15C0(&v239, v247);
  v5 = 0;
  v6 = 0;
  v172 = v3;
  v170 = v4;
  do
  {
    v181 = v5;
    v7 = (v174 + 48 * v5);
    v8 = *v7;
    v179 = v7[1];
    v9 = *(v7 + 2);
    v10 = *(v7 + 3);
    v12 = *(v7 + 4);
    v11 = *(v7 + 5);
    v185 = v6;
    v187 = v11;
    if (v3)
    {
      v13 = *(v11 + 376);

      os_unfair_lock_lock(v13);
      os_unfair_lock_lock(*(v11 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v4);
    v14 = *(v183 + 64);
    v251[0] = *(v183 + 48);
    v251[1] = v14;
    v252 = *(v183 + 80);
    v15 = *(*(*(*(v11 + 40) + 16) + 32) + 16) + 1;
    *(v183 + 48) = ecs_stack_allocator_allocate(*(v183 + 32), 48 * v15, 8);
    *(v183 + 56) = v15;
    *(v183 + 72) = 0;
    *(v183 + 80) = 0;
    *(v183 + 64) = 0;
    v16 = sub_1AF64B110(&type metadata for GraphEntityComponentPropertyReferences, &off_1F253B5B8, v9, v10, v12, v183);
    if (!v9)
    {
      if (v8 == v179)
      {
        goto LABEL_59;
      }

LABEL_63:
      v52 = &v16[64 * v8];
      v53 = *(v52 + 5);
      if (v53 && *(v53 + 16))
      {
        goto LABEL_62;
      }

      if (*(*(v52 + 6) + 16))
      {
        goto LABEL_62;
      }

      v54 = *(*(v187 + 40) + 16);
      v55 = *(v54 + 128);
      if (!*(v55 + 16))
      {
        goto LABEL_62;
      }

      v56 = sub_1AF449CB8(&type metadata for GraphEntityComponentPropertyReferences);
      if ((v57 & 1) == 0 || *(*(v54 + 24) + 16 * *(*(v55 + 56) + 8 * v56) + 32) != &type metadata for GraphEntityComponentPropertyReferences)
      {
        goto LABEL_62;
      }

      *&v228[0] = &type metadata for GraphEntityComponentPropertyReferences;
      *(&v228[0] + 1) = &off_1F253B5B8;
      BYTE8(v229) = 1;
      v58 = *(v183 + 104);
      v59 = *(v58 + 16);
      if (!v59)
      {

LABEL_99:
        v73 = *(v187 + 240) - *(v187 + 232);
        v74 = ecs_stack_allocator_allocate(*(v183 + 32), 8 * v73, 8);
        *v74 = v8;
        sub_1AF63515C(v228, v247);
        *v248 = v74;
        *&v248[8] = v73;
        *&v248[16] = 1;
        v75 = *(v183 + 104);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v183 + 104) = v75;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v75 = sub_1AF420EA0(0, v75[2] + 1, 1, v75);
          *(v183 + 104) = v75;
        }

        v78 = v75[2];
        v77 = v75[3];
        if (v78 >= v77 >> 1)
        {
          *(v183 + 104) = sub_1AF420EA0(v77 > 1, v78 + 1, 1, v75);
        }

        sub_1AF635250(v228);
        v79 = *(v183 + 104);
        *(v79 + 16) = v78 + 1;
        v80 = v79 + 72 * v78;
        *(v80 + 32) = *v247;
        v82 = *&v247[32];
        v81 = *v248;
        v83 = *&v247[16];
        *(v80 + 96) = *&v248[16];
        *(v80 + 64) = v82;
        *(v80 + 80) = v81;
        *(v80 + 48) = v83;
        *(v183 + 104) = v79;
        goto LABEL_62;
      }

      v60 = v58 + 32;

      v61 = 0;
      while (1)
      {
        sub_1AF6350F8(v60, &v233);
        sub_1AF63515C(&v233, v247);
        sub_1AF63515C(v228, v248);
        if (v247[40] <= 2u)
        {
          break;
        }

        if (v247[40] == 3)
        {
          sub_1AF63515C(v247, &v222);
          if (v248[40] != 3)
          {
            goto LABEL_71;
          }

LABEL_90:
          sub_1AF0FBA54(&v222, v216);
          sub_1AF0FBA54(v248, &v219);
          v66 = v217;
          v67 = v218;
          sub_1AF441150(v216, v217);
          LOBYTE(v66) = sub_1AF640C98(&v219, v66, v67);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v219);
          sub_1AF6934DC(&v233);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v216);
          sub_1AF635250(v247);
          if (v66)
          {
            goto LABEL_95;
          }

          goto LABEL_73;
        }

        if (v247[40] != 4)
        {
          sub_1AF6934DC(&v233);
          if (v248[40] == 5)
          {
            v68 = vorrq_s8(*&v248[8], *&v248[24]);
            if (!(*&vorr_s8(*v68.i8, *&vextq_s8(v68, v68, 8uLL)) | *v248))
            {
              sub_1AF635250(v247);
LABEL_95:
              v70 = sub_1AFBFCA08(v247);
              v71 = *(v69 + 48);
              if (v71)
              {
                v72 = *(v69 + 64);
                *(v71 + 8 * v72) = v8;
                *(v69 + 64) = v72 + 1;
              }

              (v70)(v247, 0);

              sub_1AF635250(v228);
LABEL_62:
              if (++v8 == v179)
              {
                goto LABEL_59;
              }

              goto LABEL_63;
            }
          }

          goto LABEL_72;
        }

        sub_1AF6934DC(&v233);
        sub_1AF63515C(v247, &v222);
        if (v248[40] != 4)
        {
          goto LABEL_72;
        }

        v62 = v222;
        v63 = v248[0];
        sub_1AF635250(v247);
        if (v62 == v63)
        {
          goto LABEL_95;
        }

LABEL_73:
        ++v61;
        v60 += 72;
        if (v59 == v61)
        {
          goto LABEL_99;
        }
      }

      if (!v247[40])
      {
        sub_1AF6934DC(&v233);
        sub_1AF63515C(v247, &v222);
        if (v248[40])
        {
          goto LABEL_72;
        }

        goto LABEL_85;
      }

      if (v247[40] == 1)
      {
        sub_1AF6934DC(&v233);
        sub_1AF63515C(v247, &v222);
        if (v248[40] != 1)
        {
          goto LABEL_72;
        }

LABEL_85:
        v64 = v222;
        v65 = *v248;
        sub_1AF635250(v247);
        if (v64 == v65)
        {
          goto LABEL_95;
        }

        goto LABEL_73;
      }

      sub_1AF63515C(v247, &v222);
      if (v248[40] != 2)
      {
LABEL_71:
        sub_1AF6934DC(&v233);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v222);
LABEL_72:
        sub_1AF693564(v247, sub_1AF635194);
        goto LABEL_73;
      }

      goto LABEL_90;
    }

    if (v12)
    {
      v17 = 0;
      while (1)
      {
        v18 = v9[v17];
        v19 = &v16[64 * v17];
        v20 = *(v19 + 5);
        if (v20 && *(v20 + 16))
        {
          goto LABEL_15;
        }

        if (*(*(v19 + 6) + 16))
        {
          goto LABEL_15;
        }

        v21 = *(*(v187 + 40) + 16);
        v22 = *(v21 + 128);
        if (!*(v22 + 16))
        {
          goto LABEL_15;
        }

        v23 = sub_1AF449CB8(&type metadata for GraphEntityComponentPropertyReferences);
        if ((v24 & 1) == 0 || *(*(v21 + 24) + 16 * *(*(v22 + 56) + 8 * v23) + 32) != &type metadata for GraphEntityComponentPropertyReferences)
        {
          goto LABEL_15;
        }

        *&v228[0] = &type metadata for GraphEntityComponentPropertyReferences;
        *(&v228[0] + 1) = &off_1F253B5B8;
        BYTE8(v229) = 1;
        v25 = *(v183 + 104);
        v26 = *(v25 + 16);
        if (!v26)
        {

LABEL_53:
          v41 = *(v187 + 240) - *(v187 + 232);
          v42 = ecs_stack_allocator_allocate(*(v183 + 32), 8 * v41, 8);
          *v42 = v18;
          sub_1AF63515C(v228, v247);
          *v248 = v42;
          *&v248[8] = v41;
          *&v248[16] = 1;
          v43 = *(v183 + 104);
          v44 = swift_isUniquelyReferenced_nonNull_native();
          *(v183 + 104) = v43;
          if ((v44 & 1) == 0)
          {
            v43 = sub_1AF420EA0(0, v43[2] + 1, 1, v43);
            *(v183 + 104) = v43;
          }

          v46 = v43[2];
          v45 = v43[3];
          if (v46 >= v45 >> 1)
          {
            *(v183 + 104) = sub_1AF420EA0(v45 > 1, v46 + 1, 1, v43);
          }

          sub_1AF635250(v228);
          v47 = *(v183 + 104);
          *(v47 + 16) = v46 + 1;
          v48 = v47 + 72 * v46;
          *(v48 + 32) = *v247;
          v50 = *&v247[32];
          v49 = *v248;
          v51 = *&v247[16];
          *(v48 + 96) = *&v248[16];
          *(v48 + 64) = v50;
          *(v48 + 80) = v49;
          *(v48 + 48) = v51;
          *(v183 + 104) = v47;
          goto LABEL_15;
        }

        v27 = v25 + 32;

        v28 = 0;
        while (1)
        {
          sub_1AF6350F8(v27, &v233);
          sub_1AF63515C(&v233, v247);
          sub_1AF63515C(v228, v248);
          if (v247[40] > 2u)
          {
            break;
          }

          if (!v247[40])
          {
            sub_1AF6934DC(&v233);
            sub_1AF63515C(v247, &v222);
            if (v248[40])
            {
              goto LABEL_25;
            }

            goto LABEL_37;
          }

          if (v247[40] == 1)
          {
            sub_1AF6934DC(&v233);
            sub_1AF63515C(v247, &v222);
            if (v248[40] != 1)
            {
              goto LABEL_25;
            }

LABEL_37:
            v32 = v222;
            v33 = *v248;
            sub_1AF635250(v247);
            v31 = v32 == v33;
LABEL_38:
            if (v31)
            {
              goto LABEL_49;
            }

            goto LABEL_26;
          }

          sub_1AF63515C(v247, &v222);
          if (v248[40] != 2)
          {
LABEL_24:
            sub_1AF6934DC(&v233);
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v222);
LABEL_25:
            sub_1AF693564(v247, sub_1AF635194);
            goto LABEL_26;
          }

LABEL_44:
          sub_1AF0FBA54(&v222, v216);
          sub_1AF0FBA54(v248, &v219);
          v34 = v217;
          v35 = v218;
          sub_1AF441150(v216, v217);
          LOBYTE(v34) = sub_1AF640C98(&v219, v34, v35);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v219);
          sub_1AF6934DC(&v233);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v216);
          sub_1AF635250(v247);
          if (v34)
          {
            goto LABEL_49;
          }

LABEL_26:
          ++v28;
          v27 += 72;
          if (v26 == v28)
          {
            goto LABEL_53;
          }
        }

        if (v247[40] == 3)
        {
          break;
        }

        if (v247[40] == 4)
        {
          sub_1AF6934DC(&v233);
          sub_1AF63515C(v247, &v222);
          if (v248[40] != 4)
          {
            goto LABEL_25;
          }

          v29 = v222;
          v30 = v248[0];
          sub_1AF635250(v247);
          v31 = v29 == v30;
          goto LABEL_38;
        }

        sub_1AF6934DC(&v233);
        if (v248[40] != 5)
        {
          goto LABEL_25;
        }

        v36 = vorrq_s8(*&v248[8], *&v248[24]);
        if (*&vorr_s8(*v36.i8, *&vextq_s8(v36, v36, 8uLL)) | *v248)
        {
          goto LABEL_25;
        }

        sub_1AF635250(v247);
LABEL_49:
        v38 = sub_1AFBFCA08(v247);
        v39 = *(v37 + 48);
        if (v39)
        {
          v40 = *(v37 + 64);
          *(v39 + 8 * v40) = v18;
          *(v37 + 64) = v40 + 1;
        }

        (v38)(v247, 0);

        sub_1AF635250(v228);
LABEL_15:
        if (++v17 == v12)
        {
          goto LABEL_59;
        }
      }

      sub_1AF63515C(v247, &v222);
      if (v248[40] != 3)
      {
        goto LABEL_24;
      }

      goto LABEL_44;
    }

LABEL_59:
    v6 = v185;
    sub_1AF630994(v183, &v195, v251);
    sub_1AF62D29C(v187);
    v4 = v170;
    ecs_stack_allocator_pop_snapshot(v170);
    v3 = v172;
    if (v172)
    {
      os_unfair_lock_unlock(*(v187 + 344));
      os_unfair_lock_unlock(*(v187 + 376));
    }

    v5 = v181 + 1;
  }

  while (v181 + 1 != v176);
  sub_1AF692E04(&v239, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF69348C);
  v2 = v169;
LABEL_108:
  sub_1AF692E04(&v239, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF69348C);
LABEL_109:

  sub_1AF702F78(1, v192);

  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_1AFE431C0;
  *(v84 + 32) = &type metadata for CodeGenerationInitialized;
  *(v84 + 40) = &off_1F253BFF0;
  sub_1AF5F903C();
  sub_1AF692E04(v192, &unk_1EB63D270, &type metadata for GraphEntityComponentPropertyReferences, &off_1F253B5B8, sub_1AF5DD590);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v201[0] = v193[0];
  v201[1] = v193[1];
  v202 = v194;
  sub_1AF6B06C0(v2, v201, 0x200000000, v247);
  v235 = *&v247[32];
  v236 = *v248;
  v237 = *&v248[16];
  v238 = *&v248[32];
  v233 = *v247;
  v234 = *&v247[16];
  result = sub_1AF692E04(v193, &unk_1EB63D270, &type metadata for GraphEntityComponentPropertyReferences, &off_1F253B5B8, sub_1AF5DD590);
  if (!*v247)
  {
    return result;
  }

  if (*&v248[32] <= 0 || (v182 = *&v248[8]) == 0)
  {
    v167 = MEMORY[0x1E69E6720];
    return sub_1AF692E04(v247, &qword_1ED725EA0, &type metadata for QueryResult, v167, sub_1AF69348C);
  }

  v180 = *&v247[40];
  v86 = *&v248[24];
  v188 = *(*&v248[16] + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v184 = *(*&v248[24] + 32);
  v198 = *v247;
  v199 = *&v247[8];
  v200 = *&v247[24];
  v229 = v235;
  v230 = v236;
  v231 = v237;
  v232 = v238;
  v228[0] = v233;
  v228[1] = v234;
  sub_1AF5DD298(v228, &v222);
  v87 = 0;
  while (2)
  {
    v186 = v6;
    v88 = (v180 + 48 * v87);
    v90 = *v88;
    v89 = v88[1];
    v92 = *(v88 + 2);
    v91 = *(v88 + 3);
    v94 = *(v88 + 4);
    v93 = *(v88 + 5);
    if (v188)
    {
      v95 = *(v93 + 376);

      os_unfair_lock_lock(v95);
      os_unfair_lock_lock(*(v93 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v184);
    v96 = *(v86 + 64);
    v249[0] = *(v86 + 48);
    v249[1] = v96;
    v250 = *(v86 + 80);
    v97 = *(*(*(*(v93 + 40) + 16) + 32) + 16) + 1;
    *(v86 + 48) = ecs_stack_allocator_allocate(*(v86 + 32), 48 * v97, 8);
    *(v86 + 56) = v97;
    *(v86 + 72) = 0;
    *(v86 + 80) = 0;
    *(v86 + 64) = 0;
    v98 = sub_1AF64B110(&type metadata for GraphEntityComponentPropertyReferences, &off_1F253B5B8, v92, v91, v94, v86);
    if (!v92)
    {
      if (v90 == v89)
      {
        goto LABEL_121;
      }

LABEL_175:
      v134 = &v98[64 * v90];
      if (*(*(v134 + 1) + 16))
      {
        goto LABEL_174;
      }

      if (*(*(v134 + 2) + 16))
      {
        goto LABEL_174;
      }

      if (*(*(v134 + 3) + 16))
      {
        goto LABEL_174;
      }

      if (*(*(v134 + 4) + 16))
      {
        goto LABEL_174;
      }

      v135 = *(v134 + 5);
      if (v135)
      {
        if (*(v135 + 16))
        {
          goto LABEL_174;
        }
      }

      if (*(*(v134 + 6) + 16))
      {
        goto LABEL_174;
      }

      v136 = *(*(v93 + 40) + 16);
      v137 = *(v136 + 128);
      if (!*(v137 + 16))
      {
        goto LABEL_174;
      }

      v178 = v98;
      v138 = sub_1AF449CB8(&type metadata for GraphEntityComponentPropertyReferences);
      if ((v139 & 1) == 0)
      {
        goto LABEL_220;
      }

      v140 = *(*(v136 + 24) + 16 * *(*(v137 + 56) + 8 * v138) + 32);
      v98 = v178;
      if (v140 != &type metadata for GraphEntityComponentPropertyReferences)
      {
        goto LABEL_174;
      }

      v219 = &type metadata for GraphEntityComponentPropertyReferences;
      v220 = &off_1F253B5B8;
      v221 = 1;
      v141 = *(v86 + 104);
      v142 = *(v141 + 16);
      if (!v142)
      {

LABEL_215:
        v156 = *(v93 + 240) - *(v93 + 232);
        v157 = ecs_stack_allocator_allocate(*(v86 + 32), 8 * v156, 8);
        *v157 = v90;
        sub_1AF63515C(&v219, &v222);
        *v225 = v157;
        *&v225[8] = v156;
        *&v225[16] = 1;
        v158 = *(v86 + 104);
        v159 = swift_isUniquelyReferenced_nonNull_native();
        *(v86 + 104) = v158;
        if ((v159 & 1) == 0)
        {
          v158 = sub_1AF420EA0(0, v158[2] + 1, 1, v158);
          *(v86 + 104) = v158;
        }

        v161 = v158[2];
        v160 = v158[3];
        if (v161 >= v160 >> 1)
        {
          *(v86 + 104) = sub_1AF420EA0(v160 > 1, v161 + 1, 1, v158);
        }

        sub_1AF635250(&v219);
        v162 = *(v86 + 104);
        *(v162 + 16) = v161 + 1;
        v163 = v162 + 72 * v161;
        *(v163 + 32) = v222;
        v165 = v224;
        v164 = *v225;
        v166 = v223;
        *(v163 + 96) = *&v225[16];
        *(v163 + 64) = v165;
        *(v163 + 80) = v164;
        *(v163 + 48) = v166;
        *(v86 + 104) = v162;
        goto LABEL_220;
      }

      v143 = v141 + 32;

      v144 = 0;
      while (1)
      {
        sub_1AF6350F8(v143, v216);
        sub_1AF63515C(v216, &v222);
        sub_1AF63515C(&v219, v225);
        if (BYTE8(v224) <= 2u)
        {
          break;
        }

        if (BYTE8(v224) == 3)
        {
          sub_1AF63515C(&v222, v215);
          if (v227 != 3)
          {
            goto LABEL_187;
          }

LABEL_206:
          sub_1AF0FBA54(v215, v212);
          sub_1AF0FBA54(v225, v211);
          v149 = v213;
          v150 = v214;
          sub_1AF441150(v212, v213);
          LOBYTE(v149) = sub_1AF640C98(v211, v149, v150);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v211);
          sub_1AF6934DC(v216);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v212);
          sub_1AF635250(&v222);
          if (v149)
          {
            goto LABEL_211;
          }

          goto LABEL_189;
        }

        if (BYTE8(v224) != 4)
        {
          sub_1AF6934DC(v216);
          if (v227 == 5)
          {
            v151 = vorrq_s8(*&v225[8], v226);
            if (!(*&vorr_s8(*v151.i8, *&vextq_s8(v151, v151, 8uLL)) | *v225))
            {
              sub_1AF635250(&v222);
LABEL_211:
              v153 = sub_1AFBFCA08(&v222);
              v154 = *(v152 + 48);
              if (v154)
              {
                v155 = *(v152 + 64);
                *(v154 + 8 * v155) = v90;
                *(v152 + 64) = v155 + 1;
              }

              (v153)(&v222, 0);

              sub_1AF635250(&v219);
LABEL_220:
              v98 = v178;
LABEL_174:
              if (++v90 == v89)
              {
                goto LABEL_121;
              }

              goto LABEL_175;
            }
          }

          goto LABEL_188;
        }

        sub_1AF6934DC(v216);
        sub_1AF63515C(&v222, v215);
        if (v227 != 4)
        {
          goto LABEL_188;
        }

        v145 = LOBYTE(v215[0]);
        v146 = v225[0];
        sub_1AF635250(&v222);
        if (v145 == v146)
        {
          goto LABEL_211;
        }

LABEL_189:
        ++v144;
        v143 += 72;
        if (v142 == v144)
        {
          goto LABEL_215;
        }
      }

      if (!BYTE8(v224))
      {
        sub_1AF6934DC(v216);
        sub_1AF63515C(&v222, v215);
        if (v227)
        {
          goto LABEL_188;
        }

        goto LABEL_201;
      }

      if (BYTE8(v224) == 1)
      {
        sub_1AF6934DC(v216);
        sub_1AF63515C(&v222, v215);
        if (v227 != 1)
        {
          goto LABEL_188;
        }

LABEL_201:
        v147 = *&v215[0];
        v148 = *v225;
        sub_1AF635250(&v222);
        if (v147 == v148)
        {
          goto LABEL_211;
        }

        goto LABEL_189;
      }

      sub_1AF63515C(&v222, v215);
      if (v227 != 2)
      {
LABEL_187:
        sub_1AF6934DC(v216);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v215);
LABEL_188:
        sub_1AF693564(&v222, sub_1AF635194);
        goto LABEL_189;
      }

      goto LABEL_206;
    }

    if (!v94)
    {
      goto LABEL_121;
    }

    v99 = 0;
    while (2)
    {
      v100 = &v98[64 * v99];
      if (*(*(v100 + 1) + 16))
      {
        goto LABEL_124;
      }

      if (*(*(v100 + 2) + 16))
      {
        goto LABEL_124;
      }

      if (*(*(v100 + 3) + 16))
      {
        goto LABEL_124;
      }

      if (*(*(v100 + 4) + 16))
      {
        goto LABEL_124;
      }

      v101 = v92[v99];
      v102 = *(v100 + 5);
      if (v102)
      {
        if (*(v102 + 16))
        {
          goto LABEL_124;
        }
      }

      if (*(*(v100 + 6) + 16))
      {
        goto LABEL_124;
      }

      v103 = *(*(v93 + 40) + 16);
      v104 = *(v103 + 128);
      if (!*(v104 + 16))
      {
        goto LABEL_124;
      }

      v177 = v98;
      v105 = sub_1AF449CB8(&type metadata for GraphEntityComponentPropertyReferences);
      if ((v106 & 1) == 0)
      {
        v98 = v177;
        goto LABEL_124;
      }

      v107 = *(*(v103 + 24) + 16 * *(*(v104 + 56) + 8 * v105) + 32);
      v98 = v177;
      if (v107 != &type metadata for GraphEntityComponentPropertyReferences)
      {
        goto LABEL_124;
      }

      v171 = v101;
      v219 = &type metadata for GraphEntityComponentPropertyReferences;
      v220 = &off_1F253B5B8;
      v221 = 1;
      v108 = *(v86 + 104);
      v109 = *(v108 + 16);
      if (!v109)
      {

LABEL_167:
        v123 = *(v93 + 240) - *(v93 + 232);
        v124 = ecs_stack_allocator_allocate(*(v86 + 32), 8 * v123, 8);
        *v124 = v171;
        sub_1AF63515C(&v219, &v222);
        *v225 = v124;
        *&v225[8] = v123;
        *&v225[16] = 1;
        v125 = *(v86 + 104);
        v126 = swift_isUniquelyReferenced_nonNull_native();
        *(v86 + 104) = v125;
        if ((v126 & 1) == 0)
        {
          v125 = sub_1AF420EA0(0, v125[2] + 1, 1, v125);
          *(v86 + 104) = v125;
        }

        v128 = v125[2];
        v127 = v125[3];
        if (v128 >= v127 >> 1)
        {
          *(v86 + 104) = sub_1AF420EA0(v127 > 1, v128 + 1, 1, v125);
        }

        sub_1AF635250(&v219);
        v129 = *(v86 + 104);
        *(v129 + 16) = v128 + 1;
        v130 = v129 + 72 * v128;
        *(v130 + 32) = v222;
        v132 = v224;
        v131 = *v225;
        v133 = v223;
        *(v130 + 96) = *&v225[16];
        *(v130 + 64) = v132;
        *(v130 + 80) = v131;
        *(v130 + 48) = v133;
        *(v86 + 104) = v129;
        goto LABEL_172;
      }

      v110 = v108 + 32;

      v111 = 0;
      v175 = v109;
      while (1)
      {
        sub_1AF6350F8(v110, v216);
        sub_1AF63515C(v216, &v222);
        sub_1AF63515C(&v219, v225);
        if (BYTE8(v224) > 2u)
        {
          break;
        }

        if (!BYTE8(v224))
        {
          sub_1AF6934DC(v216);
          sub_1AF63515C(&v222, v215);
          if (v227)
          {
            goto LABEL_139;
          }

          goto LABEL_151;
        }

        if (BYTE8(v224) == 1)
        {
          sub_1AF6934DC(v216);
          sub_1AF63515C(&v222, v215);
          if (v227 != 1)
          {
            goto LABEL_139;
          }

LABEL_151:
          v115 = *&v215[0];
          v116 = *v225;
          sub_1AF635250(&v222);
          v114 = v115 == v116;
LABEL_152:
          v109 = v175;
          if (v114)
          {
            goto LABEL_163;
          }

          goto LABEL_140;
        }

        sub_1AF63515C(&v222, v215);
        if (v227 != 2)
        {
LABEL_138:
          sub_1AF6934DC(v216);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v215);
LABEL_139:
          sub_1AF693564(&v222, sub_1AF635194);
          goto LABEL_140;
        }

LABEL_158:
        sub_1AF0FBA54(v215, v212);
        sub_1AF0FBA54(v225, v211);
        v117 = v213;
        v173 = v214;
        sub_1AF441150(v212, v213);
        LOBYTE(v117) = sub_1AF640C98(v211, v117, v173);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v211);
        sub_1AF6934DC(v216);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v212);
        sub_1AF635250(&v222);
        if (v117)
        {
          goto LABEL_163;
        }

LABEL_140:
        ++v111;
        v110 += 72;
        if (v109 == v111)
        {
          goto LABEL_167;
        }
      }

      if (BYTE8(v224) == 3)
      {
        sub_1AF63515C(&v222, v215);
        if (v227 != 3)
        {
          goto LABEL_138;
        }

        goto LABEL_158;
      }

      if (BYTE8(v224) == 4)
      {
        sub_1AF6934DC(v216);
        sub_1AF63515C(&v222, v215);
        if (v227 != 4)
        {
          goto LABEL_139;
        }

        v112 = LOBYTE(v215[0]);
        v113 = v225[0];
        sub_1AF635250(&v222);
        v114 = v112 == v113;
        goto LABEL_152;
      }

      sub_1AF6934DC(v216);
      if (v227 != 5)
      {
        goto LABEL_139;
      }

      v118 = vorrq_s8(*&v225[8], v226);
      if (*&vorr_s8(*v118.i8, *&vextq_s8(v118, v118, 8uLL)) | *v225)
      {
        goto LABEL_139;
      }

      sub_1AF635250(&v222);
LABEL_163:
      v120 = sub_1AFBFCA08(&v222);
      v121 = *(v119 + 48);
      if (v121)
      {
        v122 = *(v119 + 64);
        *(v121 + 8 * v122) = v171;
        *(v119 + 64) = v122 + 1;
      }

      (v120)(&v222, 0);

      sub_1AF635250(&v219);
LABEL_172:
      v98 = v177;
LABEL_124:
      if (++v99 != v94)
      {
        continue;
      }

      break;
    }

LABEL_121:
    v6 = v186;
    sub_1AF630994(v86, &v198, v249);
    sub_1AF62D29C(v93);
    ecs_stack_allocator_pop_snapshot(v184);
    if (v188)
    {
      os_unfair_lock_unlock(*(v93 + 344));
      os_unfair_lock_unlock(*(v93 + 376));
    }

    if (++v87 != v182)
    {
      continue;
    }

    break;
  }

  v168 = MEMORY[0x1E69E6720];
  sub_1AF692E04(v247, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF69348C);
  v167 = v168;
  return sub_1AF692E04(v247, &qword_1ED725EA0, &type metadata for QueryResult, v167, sub_1AF69348C);
}

BOOL sub_1AF692C70(uint64_t a1, uint64_t a2)
{
  sub_1AF68B14C(0, &qword_1EB63D268, type metadata accessor for GraphScriptingConfig.ScriptInfo, &type metadata for GraphScriptingConfig.EvaluationMode, "key value ");
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  v11 = *(a1 + 4);
  *v10 = *a1;
  v10[4] = v11;
  sub_1AF6935C4(a2, &v16 + *(v5 + 56) - v9);
  sub_1AF693628(v10, v7);
  v12 = &v7[*(v5 + 56)];
  v13 = *(v12 + 32);
  if (v13)
  {
    v14 = *(v13 + 16) != 0;
  }

  else
  {
    v14 = 0;
  }

  sub_1AF693564(v12, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  return v14;
}

uint64_t sub_1AF692E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1AF692E64(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1AF692FD0(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_1AF693148(v10, v6, v4, a2);
  result = MEMORY[0x1B271DEA0](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t sub_1AF692FD0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
LABEL_5:
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
LABEL_11:
    v16 = *(*a4 + 16);
    if (v16)
    {
      v26 = v5;
      v17 = (*(a3 + 48) + 16 * v12);
      v18 = *v17;
      v19 = v17[1];
      v20 = (*a4 + 40);
      do
      {
        v21 = *(v20 - 1) == v18 && *v20 == v19;
        if (v21 || (sub_1AFDFEE28() & 1) != 0)
        {
          *(a1 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
          v5 = v26 + 1;
          goto LABEL_5;
        }

        v20 += 2;
        --v16;
      }

      while (v16);
      v5 = v26;
    }
  }

  v13 = v6 << 6;
  while (1)
  {
    v14 = v6 + 1;
    if (v6 + 1 >= v10)
    {
      return sub_1AF8FB190(a1, a2, v5, a3);
    }

    v15 = *(a3 + 8 * v6 + 72);
    v13 += 64;
    ++v6;
    if (v15)
    {
      v9 = (v15 - 1) & v15;
      v12 = __clz(__rbit64(v15)) + v13;
      v6 = v14;
      goto LABEL_11;
    }
  }
}

uint64_t sub_1AF693148(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = a1;
    v6 = a2;
    v7 = a4;
    bzero(a1, 8 * a2);
    a1 = v5;
    a2 = v6;
    a4 = v7;
  }

  v8 = sub_1AF692FD0(a1, a2, a3, a4);

  return v8;
}

void *sub_1AF6931C8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(int *, char *))
{
  if (a2)
  {
    v5 = a1;
    v6 = a2;
    v7 = a4;
    bzero(a1, 8 * a2);
    a1 = v5;
    a2 = v6;
    a4 = v7;
  }

  v8 = sub_1AF8FA7A8(a1, a2, a3, a4);

  return v8;
}

uint64_t sub_1AF693250(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v6 = sub_1AF6496EC(a2);

  v25 = a3;
  v20 = sub_1AF682350(v6);
  v7 = *(v20 + 16);
  if (!v7)
  {
  }

  for (i = (v20 + 32); ; ++i)
  {
    v21 = *i;

    if (*(a1 + 184))
    {
      break;
    }

    v10 = *(*(a1 + 168) + 4 * a2);
    v11 = *(*(v9 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v10 + 8);

    v12 = sub_1AF6824B0(v21, *(&v21 + 1), v10 | (v11 << 32));
    v24 = v21;
    v13 = sub_1AF585714(v23);
    v14 = *(*(&v21 + 1) + 8);
    sub_1AF641154(v12, v21, v13);
    v15 = v24;
    sub_1AF448018(v23, v24);
    (*(v14 + 112))(v15, *(*(&v15 + 1) + 8));
    v16 = v24;
    v17 = sub_1AF441150(v23, v24);
    v22[3] = v16;
    v22[4] = *(*(&v16 + 1) + 8);
    v18 = sub_1AF585714(v22);
    (*(*(v16 - 8) + 16))(v18, v17, v16);
    sub_1AF6411D8(v22, v12, v21);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v22);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v23);
    if (!--v7)
    {
    }
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void sub_1AF69348C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AF6934DC(uint64_t a1)
{
  sub_1AF68B14C(0, qword_1ED729A30, sub_1AF43A570, &type metadata for PrivateCommandQueue.Operation, "operation indices ");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AF693564(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AF6935C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GraphScriptingConfig.ScriptInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF693628(uint64_t a1, uint64_t a2)
{
  sub_1AF68B14C(0, &qword_1EB63D268, type metadata accessor for GraphScriptingConfig.ScriptInfo, &type metadata for GraphScriptingConfig.EvaluationMode, "key value ");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *_s15RelationStorageVwca(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);
  return a1;
}

void *_s15RelationStorageVwta(void *a1, uint64_t a2)
{

  v4 = *(a2 + 16);
  *a1 = *a2;
  a1[2] = v4;
  return a1;
}

uint64_t sub_1AF693758(uint64_t a1)
{
  if (*(*(v1 + 216) + 16) && (sub_1AF449CB8(a1), (v2 & 1) != 0))
  {
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

unint64_t sub_1AF6937A8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = result;
  v9 = HIDWORD(result);
  if (HIDWORD(result) || result != -1)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = a3;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1AF694318;
    *(v11 + 24) = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28[0] = *(v5 + 216);
    v13 = v28[0];
    *(v5 + 216) = 0x8000000000000000;
    v14 = sub_1AF449CB8(a2);
    v16 = v15;
    v17 = *(v13 + 16) + ((v15 & 1) == 0);
    if (*(v13 + 24) >= v17)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1AF848B00();
        v13 = v28[0];
      }
    }

    else
    {
      sub_1AF834194(v17, isUniquelyReferenced_nonNull_native);
      v13 = v28[0];
      v18 = sub_1AF449CB8(a2);
      if ((v16 & 1) != (v19 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }

      v14 = v18;
    }

    *(v5 + 216) = v13;

    v20 = *(v5 + 216);
    if ((v16 & 1) == 0)
    {
      sub_1AF6338E8(sub_1AF694318, v28);
      sub_1AF843220(v14, a2, v28[0], v28[1], v28[2], v20);
    }

    v21 = (v20[7] + 24 * v14);
    v22 = *v21;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    *v21 = v22;
    if ((v23 & 1) == 0)
    {
      v22 = sub_1AF4230FC(0, *(v22 + 2) + 1, 1, v22);
      *v21 = v22;
    }

    v25 = *(v22 + 2);
    v24 = *(v22 + 3);
    if (v25 >= v24 >> 1)
    {
      v22 = sub_1AF4230FC(v24 > 1, v25 + 1, 1, v22);
      *v21 = v22;
    }

    *(v22 + 2) = v25 + 1;
    v26 = &v22[16 * v25];
    *(v26 + 8) = v8;
    *(v26 + 9) = v9;
    *(v26 + 5) = a4;
  }

  return result;
}

BOOL sub_1AF693A08(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  return a1[2] == a2[2] && a1[3] == a2[3];
}

uint64_t sub_1AF693A3C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF448018(v5, v6);
  sub_1AF480018();
  sub_1AFDFEC38();
  if (!v3)
  {
    sub_1AF448018(v5, v6);
    sub_1AFDFEC38();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v5);
}

uint64_t sub_1AF693B2C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF694328(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1AF693B94(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 216);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v5 = sub_1AF449CB8(a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(*(*(v3 + 56) + 24 * v5) + 16);

  if (v7)
  {
    v9 = (v8 + 40);
    while (*(v9 - 2) != a1 || *(v9 - 1) != HIDWORD(a1))
    {
      v9 += 2;
      if (!--v7)
      {
        goto LABEL_10;
      }
    }

    v11 = *v9;
  }

  else
  {
LABEL_10:
    v11 = 0;
  }

  return v11;
}

__n128 sub_1AF693C38@<Q0>(int32x2_t **a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = *(a1 + 1);
  v4 = (*a1)[2];
  if (v4)
  {
    v6 = a2;
    v7 = HIDWORD(a2);
    v8 = (a3 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v9 = *a1 + 4;
    v10 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v14 = *v9->i8;
      v15 = vceq_s32(*v9, 0xFFFFFFFFLL);
      if (v15.i32[0] & v15.i32[1])
      {
        break;
      }

      v16 = 0;
      v17 = 1;
      if ((v14.i32[0] & 0x80000000) == 0 && v8[1] > v14.i32[0])
      {
        v19 = (*v8 + 12 * v14.i32[0]);
        if (v14.i32[1] != -1 && v19[2] != v14.i32[1])
        {
          break;
        }

        v21 = *(*(a3 + 144) + 8 * *v19 + 32);
        v16 = *(v21 + 28);
        v17 = *(v21 + 32);
      }

LABEL_9:
      if (v7)
      {
        if (v7 == 1)
        {
          if (v17)
          {
            v18 = 1;
            goto LABEL_29;
          }

          if (v16 != v6)
          {
            v18 = 0;
LABEL_29:
            v24 = vceq_s32(*&vextq_s8(v14, v14, 8uLL), 0xFFFFFFFFLL);
            if (v24.i32[0] & v24.i32[1])
            {
              goto LABEL_46;
            }

            goto LABEL_30;
          }
        }

        v23 = vceq_s32(*&vextq_s8(v14, v14, 8uLL), 0xFFFFFFFFLL);
        if (v23.i32[0] & v23.i32[1])
        {
          goto LABEL_6;
        }

        v18 = 1;
      }

      else
      {
        if ((v17 & 1) == 0)
        {
          v18 = v16 == v6;
          goto LABEL_29;
        }

        v22 = vceq_s32(*&vextq_s8(v14, v14, 8uLL), 0xFFFFFFFFLL);
        if (v22.i32[0] & v22.i32[1])
        {
          goto LABEL_51;
        }

        v18 = 0;
      }

LABEL_30:
      v25 = 0;
      v26 = 1;
      if (v14.i32[2] < 0 || v8[1] <= v14.i32[2])
      {
        goto LABEL_38;
      }

      v27 = (*v8 + 12 * v14.i32[2]);
      if (v14.i32[3] == -1 || v27[2] == v14.i32[3])
      {
        v29 = *(*(a3 + 144) + 8 * *v27 + 32);
        v25 = *(v29 + 28);
        v26 = *(v29 + 32);
LABEL_38:
        v30 = v7;
        if (!v7)
        {
          goto LABEL_47;
        }

        goto LABEL_39;
      }

LABEL_46:
      v25 = 0;
      v26 = 1;
      v30 = v7;
      if (!v7)
      {
LABEL_47:
        if (v26)
        {
          if (!v18)
          {
            goto LABEL_51;
          }
        }

        else if (!v18 && v25 != v6)
        {
          goto LABEL_51;
        }

        goto LABEL_6;
      }

LABEL_39:
      if (v30 == 1)
      {
        v31 = v25 == v6 ? 1 : v26;
        if ((v31 & 1) == 0 && !v18)
        {
LABEL_51:
          v35 = *v9->i8;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1AFC07558(0, *(v10 + 16) + 1, 1);
          }

          v12 = *(v10 + 16);
          v11 = *(v10 + 24);
          v13 = v35;
          if (v12 >= v11 >> 1)
          {
            sub_1AFC07558(v11 > 1, v12 + 1, 1);
            v13 = v35;
          }

          *(v10 + 16) = v12 + 1;
          *(v10 + 16 * v12 + 32) = v13;
        }
      }

LABEL_6:
      v9 += 2;
      if (!--*&v4)
      {
        goto LABEL_54;
      }
    }

    v16 = 0;
    v17 = 1;
    goto LABEL_9;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_54:
  *a4 = v10;
  result = v33;
  *(a4 + 8) = v33;
  return result;
}

uint64_t sub_1AF693F20(uint64_t result, uint64_t a2, uint64_t a3, int32x2_t *a4)
{
  v4 = a4[2];
  if (v4)
  {
    v6 = result;
    v7 = a4 + 4;
    do
    {
      v8 = vceq_s32(*v7, 0xFFFFFFFFLL);
      if ((v8.i32[0] & v8.i32[1] & 1) == 0)
      {
        v30 = *v7->i8;
        v9 = swift_allocObject();
        *(v9 + 16) = a2;
        *(v9 + 24) = a3;
        v10 = swift_allocObject();
        *(v10 + 16) = sub_1AF694938;
        *(v10 + 24) = v9;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v31 = *(v6 + 216);
        v12 = v31;
        *(v6 + 216) = 0x8000000000000000;
        v13 = sub_1AF449CB8(a2);
        v15 = v14;
        v16 = *(v12 + 16) + ((v14 & 1) == 0);
        if (*(v12 + 24) >= v16)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1AF848B00();
            v12 = v31;
          }
        }

        else
        {
          sub_1AF834194(v16, isUniquelyReferenced_nonNull_native);
          v12 = v31;
          v17 = sub_1AF449CB8(a2);
          if ((v15 & 1) != (v18 & 1))
          {
            result = sub_1AFDFF1A8();
            __break(1u);
            return result;
          }

          v13 = v17;
        }

        *(v6 + 216) = v12;

        v19 = *(v6 + 216);
        if ((v15 & 1) == 0)
        {
          sub_1AF6338E8(*(v10 + 16), &v31);
          v20 = v32;
          v19[(v13 >> 6) + 8] |= 1 << v13;
          *(v19[6] + 8 * v13) = a2;
          v21 = v19[7] + 24 * v13;
          *v21 = v31;
          *(v21 + 16) = v20;
          ++v19[2];
        }

        v22 = (v19[7] + 24 * v13);
        v23 = *v22;
        v24 = swift_isUniquelyReferenced_nonNull_native();
        *v22 = v23;
        if ((v24 & 1) == 0)
        {
          v23 = sub_1AF4230FC(0, *(v23 + 2) + 1, 1, v23);
          *v22 = v23;
        }

        v26 = *(v23 + 2);
        v25 = *(v23 + 3);
        v27 = v30;
        if (v26 >= v25 >> 1)
        {
          v28 = sub_1AF4230FC(v25 > 1, v26 + 1, 1, v23);
          v27 = v30;
          v23 = v28;
          *v22 = v28;
        }

        *(v23 + 2) = v26 + 1;
        *&v23[16 * v26 + 32] = v27;
      }

      v7 += 2;
      --*&v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1AF6941A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF448018(v6, v7);
  sub_1AF6457DC();
  sub_1AFDFEC38();
  if (!v4)
  {
    sub_1AF448018(v6, v7);
    sub_1AF694678();
    sub_1AF69471C(&qword_1EB63D288, sub_1AF694788, MEMORY[0x1E69E6300]);
    sub_1AFDFEC38();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v6);
}

uint64_t sub_1AF6942C8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF6944BC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1AF694328(void *a1)
{
  v3 = a1[3];
  sub_1AF441150(a1, v3);
  sub_1AFDFF388();
  if (!v1)
  {
    sub_1AF448018(v5, v6);
    sub_1AF47FEB4();
    sub_1AFDFEAD8();
    v3 = v7;
    sub_1AF448018(v5, v6);
    sub_1AFDFEAD8();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v5);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v3;
}

uint64_t assignWithCopy for RelationsCoder(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t sub_1AF6944BC(void *a1)
{
  v3 = a1[3];
  sub_1AF441150(a1, v3);
  sub_1AFDFF388();
  if (v1)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    return v3;
  }

  sub_1AF448018(v6, v7);
  sub_1AF645788();
  sub_1AFDFEAD8();
  v3 = v5;
  result = swift_conformsToProtocol2();
  if (result)
  {
    result = swift_conformsToProtocol2();
    if (result)
    {
      sub_1AF694678();
      sub_1AF448018(v6, v7);
      sub_1AF69471C(&qword_1ED723280, sub_1AF6946C8, MEMORY[0x1E69E6330]);
      sub_1AFDFEAD8();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v6);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1AF694678()
{
  if (!qword_1ED723288)
  {
    v0 = sub_1AFDFD538();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED723288);
    }
  }
}

unint64_t sub_1AF6946C8()
{
  result = qword_1ED72D060;
  if (!qword_1ED72D060)
  {
    result = swift_getWitnessTable(asc_1AFE6DB0C, &type metadata for RelationPair, v0, v1);
    atomic_store(result, &qword_1ED72D060);
  }

  return result;
}

uint64_t sub_1AF69471C(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AF694678();
    v8 = v7;
    v9 = a2();
    result = swift_getWitnessTable(a3, v8, &v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF694788()
{
  result = qword_1ED72D068;
  if (!qword_1ED72D068)
  {
    result = swift_getWitnessTable(aU_7, &type metadata for RelationPair, v0, v1);
    atomic_store(result, &qword_1ED72D068);
  }

  return result;
}

uint64_t sub_1AF6947DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1AF693758(a1);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = (v6 + 32);
    v9 = MEMORY[0x1E69E7CC0];
    do
    {
      if (*(a4 + 16))
      {
        v15 = *v8;
        sub_1AF449D3C(*v8 | (HIDWORD(*v8) << 32));
        if (v12)
        {
          if (*(a4 + 16))
          {
            sub_1AF449D3C(DWORD2(v15) | (HIDWORD(v15) << 32));
            if (v13)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1AFC07558(0, *(v9 + 16) + 1, 1);
              }

              v11 = *(v9 + 16);
              v10 = *(v9 + 24);
              if (v11 >= v10 >> 1)
              {
                sub_1AFC07558(v10 > 1, v11 + 1, 1);
              }

              *(v9 + 16) = v11 + 1;
              *(v9 + 16 * v11 + 32) = v15;
            }
          }
        }
      }

      ++v8;
      --v7;
    }

    while (v7);
  }

  return a1;
}

uint64_t sub_1AF69493C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v48 = a4;
  v45 = sub_1AFDFBBE8();
  v44[0] = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44[1] = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF6A076C(0, &qword_1ED726B50, MEMORY[0x1E69E6D30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v44 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v44 - v15;
  v47 = sub_1AFDFE488();
  v17 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v19 = v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v44 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v44 - v24;
  v46 = type metadata accessor for SerializationContext();
  swift_allocObject();
  LOBYTE(v50[0]) = 1;
  v26 = sub_1AF69D428(a2, 0, 1, 0x100000000);
  v27 = a1;
  v28 = v26;
  *(v26 + 82) = 257;
  *(v26 + 81) = a3;
  if (v27 <= 1u)
  {
    if (v27)
    {
      v38 = sub_1AFDFBEC8();
      swift_allocObject();
      v31 = sub_1AFDFBEB8();
      sub_1AFDFBE88();
      sub_1AFDFE478();
      v39 = v47;
      (*(v17 + 48))(v13, 1, v47);
      (*(v17 + 32))(v22, v13, v39);
      v51 = v46;
      v50[0] = v28;

      v40 = sub_1AFDFBEA8();
      v41 = v22;
      v30 = v38;
      sub_1AF824640(v50, v41);
      v40(v49, 0);
      v33 = &off_1F2533B58;
      goto LABEL_11;
    }
  }

  else if (v27 != 3)
  {
    if (qword_1ED727D50 != -1)
    {
      swift_once();
    }

    v29 = qword_1ED73B620;
    v30 = type metadata accessor for BinaryEncoder();
    v31 = swift_allocObject();

    *(v31 + 32) = sub_1AF43A744(MEMORY[0x1E69E7CC0]);
    *(v31 + 16) = 0;
    *(v31 + 17) = v27 == 2;
    *(v31 + 24) = v29;
    sub_1AFDFE478();
    v32 = v47;
    (*(v17 + 48))(v10, 1, v47);
    (*(v17 + 32))(v19, v10, v32);
    v51 = v46;
    v50[0] = v28;

    sub_1AF8247D4(v50, v19);
    v33 = &off_1F2533BB8;
    goto LABEL_11;
  }

  v30 = sub_1AFDFBC38();
  swift_allocObject();
  v31 = sub_1AFDFBC28();
  sub_1AFDFE478();
  v34 = v47;
  (*(v17 + 48))(v16, 1, v47);
  (*(v17 + 32))(v25, v16, v34);
  v51 = v46;
  v50[0] = v28;

  v35 = sub_1AFDFBC18();
  sub_1AF824640(v50, v25);
  v35(v49, 0);
  if (v27 == 3)
  {
    v36 = MEMORY[0x1E6967F78];
    sub_1AF6A076C(0, &unk_1EB63F330, MEMORY[0x1E6967F78], MEMORY[0x1E69E6F90]);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1AFE4C620;
    sub_1AFDFBBD8();
    sub_1AFDFBBC8();
    v50[0] = v37;
    sub_1AF6A23E0(&unk_1EB63DD30, MEMORY[0x1E6967F78], MEMORY[0x1E6967F88]);
    sub_1AF6A076C(0, &unk_1EB63F340, v36, MEMORY[0x1E69E62F8]);
    sub_1AF6A07D0();
    sub_1AFDFE058();
    sub_1AFDFBBF8();
  }

  v33 = &off_1F2533B18;
LABEL_11:
  v42 = v48;
  v48[3] = v30;
  v42[4] = v33;

  *v42 = v31;
  return result;
}

BOOL sub_1AF694FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(sub_1AF6950D8(a2, a3, MEMORY[0x1E69E7760], 89) + 24);

  return v4 >= a1;
}

BOOL sub_1AF69504C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(sub_1AF6950D8(a2, a3, MEMORY[0x1E69E7760], 89) + 24);

  return v4 < a1;
}

uint64_t sub_1AF6950D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v4 = a3(a1, a2);
  v6 = sub_1AF695254(v4, v5);

  if (v6)
  {
    return v6;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF695174(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_1AF6950D8(a1, a2, MEMORY[0x1E69E7760], 89) + 24);

  return v2;
}

BOOL sub_1AF6951B8()
{
  v0 = sub_1AFDFF3E8();
  v2 = sub_1AF695254(v0, v1);

  if (v2)
  {
  }

  return v2 != 0;
}

uint64_t sub_1AF695200(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_1AF6950D8(a1, a2, MEMORY[0x1E69E7780], 40) + 16);

  return v2;
}

uint64_t sub_1AF695254(uint64_t a1, double a2)
{
  sub_1AF6A076C(0, &qword_1ED726B50, MEMORY[0x1E69E6D30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v15 - v4;
  v6 = sub_1AFDFE488();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*thread_serialization_context(v8))
  {
  }

  sub_1AFDFE478();
  (*(v7 + 48))(v5, 1, v6);
  (*(v7 + 32))(v10, v5, v6);
  if (*(a1 + 16) && (v13 = sub_1AF419DC8(v10, v12), (v14 & 1) != 0))
  {
    sub_1AF0D5A54(*(a1 + 56) + 32 * v13, v16);
    (*(v7 + 8))(v10, v6);
    type metadata accessor for SerializationContext();
    if (swift_dynamicCast())
    {
      return v15[1];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    return 0;
  }
}

uint64_t sub_1AF695480@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1AFDFE638();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1AF6954D4@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1AFDFE638();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1AF69552C(uint64_t a1)
{
  v2 = sub_1AF47986C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF695568(uint64_t a1)
{
  v2 = sub_1AF47986C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF6955A4()
{
  v1 = *(v0 + 16);

  return v1;
}

double sub_1AF6955D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = 0.0;
  *a3 = xmmword_1AFE21110;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  return result;
}

uint64_t sub_1AF6955F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1AFDFEA08();
  *a2 = a1;
  a2[1] = 0;
  a2[2] = result;
  a2[3] = v5;
  return result;
}

uint64_t sub_1AF69564C(uint64_t a1)
{
  v2 = sub_1AF445B90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF695688(uint64_t a1)
{
  v2 = sub_1AF445B90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF6956C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF695718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(asc_1AFE6E7B0, a3);

  return sub_1AF609060(a1, a2, a3, WitnessTable);
}

uint64_t sub_1AF695784(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(byte_1AFE6E248, a1);
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1AF6957F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(byte_1AFE6E248);
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1AF695860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(byte_1AFE6E248);
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1AF6958D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF6956C4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1AF69590C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AF0E87A4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1AF695958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF6956C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF69598C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF45416C();
  *a1 = result;
  return result;
}

uint64_t sub_1AF6959C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(asc_1AFE6E7B0, a1);

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1AF695A14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(asc_1AFE6E7B0, a1);

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1AF695A68@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v48 = a5;
  v47 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v49 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for VersionedContainer.CodingKeys(255, v10, v11, v12);
  swift_getWitnessTable(asc_1AFE6E7B0, v13);
  v54 = sub_1AFDFE818();
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v15 = &v43 - v14;
  v50 = a2;
  v51 = a3;
  v16 = type metadata accessor for VersionedContainer(0, a2, a3, a4);
  v46 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v43 - v17);
  v19 = a1[3];
  v56 = a1;
  sub_1AF441150(a1, v19);
  v53 = v15;
  v20 = v55;
  sub_1AFDFF3B8();
  if (v20)
  {
    v42 = v56;
  }

  else
  {
    v21 = v18;
    v55 = v16;
    v22 = v56;
    v24 = v49;
    v23 = v50;
    v58 = 0;
    v25 = sub_1AFDFE748();
    v44 = v21;
    *v21 = v25;
    v26 = v22[3];
    v27 = v22[4];
    v28 = v25;
    sub_1AF441150(v22, v26);
    v29 = MEMORY[0x1E69E7760];
    v45 = *(sub_1AF6950D8(v26, v27, MEMORY[0x1E69E7760], 89) + 24);

    v30 = v22[3];
    v31 = v22[4];
    sub_1AF441150(v22, v30);
    v32 = v29;
    v33 = v54;
    *(sub_1AF6950D8(v30, v31, v32, 89) + 24) = v28;
    v34 = v53;

    v57 = 1;
    sub_1AFDFE768();
    v36 = v55;
    v37 = v44;
    (*(v47 + 32))(v44 + *(v55 + 44), v24, v23);
    v38 = v56;
    v39 = v56[3];
    v40 = v56[4];
    sub_1AF441150(v56, v39);
    v41 = sub_1AF6950D8(v39, v40, MEMORY[0x1E69E7760], 89);
    (*(v52 + 8))(v34, v33);
    *(v41 + 24) = v45;

    (*(v46 + 32))(v48, v37, v36);
    v42 = v38;
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v42);
}

uint64_t sub_1AF695EFC(void *a1, void *a2, double a3)
{
  v5 = a2[2];
  v6 = a2[3];
  v14[0] = a2[4];
  v14[1] = v5;
  v7 = type metadata accessor for VersionedContainer.CodingKeys(255, v5, v6, v14[0]);
  swift_getWitnessTable(asc_1AFE6E7B0, v7);
  v8 = sub_1AFDFE9A8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - v10;
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3F8();
  v16 = 0;
  v12 = v14[3];
  sub_1AFDFE8F8();
  if (!v12)
  {
    v15 = 1;
    sub_1AFDFE918();
  }

  return (*(v9 + 8))(v11, v8);
}

void *sub_1AF6960D4()
{
  v1 = v0;
  v2 = *(v0 + 96);
  if (v2)
  {
    v3 = *(v0 + 104);

    v2(v4);
    sub_1AF0FB8EC(v2, v3);
  }

  sub_1AF0FB8EC(*(v1 + 96), *(v1 + 104));

  return v1;
}

uint64_t sub_1AF696160()
{
  sub_1AF6960D4();

  return swift_deallocClassInstance();
}

uint64_t sub_1AF696194(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 24);
  v4 = *(v2 + 32);
  v5 = *(v2 + 36);
  type metadata accessor for SerializationContext();
  swift_allocObject();

  v7 = sub_1AF69D428(v6, v3, 0, v4 | (v5 << 32));

  *(v7 + 80) = *(v2 + 80);
  *(v7 + 81) = *(v2 + 81);
  *(v7 + 82) = *(v2 + 82);
  *(v7 + 83) = *(v2 + 83);
  *(v7 + 84) = *(v2 + 84);
  *(v7 + 86) = *(v2 + 86);
  *(v7 + 87) = *(v2 + 87);
  *(v7 + 112) = *(v2 + 112);

  *(v7 + 120) = *(v2 + 120);

  *(v7 + 128) = *(v2 + 128);

  *(v7 + 136) = *(v2 + 136);

  *(v7 + 144) = *(v2 + 144);

  return v7;
}

uint64_t sub_1AF6962D0(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v4) = a3;
  sub_1AF0D4E74(0);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1AFDFC298();
  v9 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v34 = v3;
    v51 = MEMORY[0x1E69E7CC0];
    sub_1AFC07388(0, v11, 0);
    v12 = v51;
    v37 = "Can't find component ";
    v38 = 0x80000001AFF2EE10;
    v36 = (v9 + 32);
    v13 = (a1 + 40);
    v14 = off_1ED730000;
    v35 = xmmword_1AFE431C0;
    v40 = v4;
    v39 = a2;
    while (v14[137])
    {
      v15 = *(v13 - 1);
      v16 = *v13;

      v17 = sub_1AF6DC144(v15, v16, a2, v4 & 1);

      if (v17)
      {
      }

      else
      {
        v48 = 0;
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v49 = 0;
        v50 = 0xE000000000000000;
        sub_1AFDFE218();

        v49 = 0xD000000000000015;
        v50 = v38;
        MEMORY[0x1B2718AE0](v15, v16);
        MEMORY[0x1B2718AE0](0xD000000000000010, v37 | 0x8000000000000000);
        v18 = v49;
        v19 = v50;
        v20 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          swift_once();
        }

        v46 = v11;
        v47 = v12;
        if (qword_1ED730E98 != -1)
        {
          swift_once();
        }

        v21 = qword_1ED73B890;
        sub_1AF69D4DC(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v22 = swift_allocObject();
        *(v22 + 16) = v35;
        *(v22 + 56) = MEMORY[0x1E69E6158];
        *(v22 + 64) = sub_1AF0D544C();
        *(v22 + 32) = v18;
        *(v22 + 40) = v19;

        sub_1AFDFC4C8(v20, &dword_1AF0CE000, v21, "%{public}s", 10, 2, v22);

        v45 = v19;
        v23 = v41;
        sub_1AFDFC288();
        v24 = v44[12];
        v4 = v44[16];
        v25 = v18;
        v26 = v43;
        v27 = v20;
        v28 = &v43[v44[20]];
        (*v36)(v43, v23, v42);
        *(v26 + v24) = v27;
        *(v26 + v4) = 0;
        v29 = v45;
        *v28 = v25;
        *(v28 + 1) = v29;
        sub_1AFDFC608();

        sub_1AF6A2D58(v26, sub_1AF0D4E74);
        LOBYTE(v4) = v40;
        a2 = v39;
        v14 = off_1ED730000;
        v12 = v47;
        v17 = v48;
        v11 = v46;
      }

      v51 = v12;
      v31 = *(v12 + 16);
      v30 = *(v12 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1AFC07388(v30 > 1, v31 + 1, 1);
        v12 = v51;
      }

      *(v12 + 16) = v31 + 1;
      *(v12 + 8 * v31 + 32) = v17;
      v13 += 2;
      if (!--v11)
      {
        v3 = v34;
        goto LABEL_17;
      }
    }

    result = sub_1AFDFE518();
    __break(1u);
  }

  else
  {
LABEL_17:
    *(v3 + 136) = v12;
  }

  return result;
}

uint64_t sub_1AF6967C4()
{
  v1 = *(v0 + 136);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v14 = MEMORY[0x1E69E7CC0];

    sub_1AFC05CE4(0, v2, 0);
    v4 = 32;
    v3 = v14;
    do
    {
      if (*(v1 + v4))
      {
        v5 = sub_1AFDFF4B8();
        v7 = v6;
        v13 = v6;

        v8 = sub_1AFDFD178();

        if (v8)
        {
          sub_1AFDFD078();
          sub_1AFDFCFD8();
          v7 = v13;
        }
      }

      else
      {
        v5 = 0;
        v7 = 0xE000000000000000;
      }

      v10 = *(v14 + 16);
      v9 = *(v14 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1AFC05CE4(v9 > 1, v10 + 1, 1);
      }

      *(v14 + 16) = v10 + 1;
      v11 = v14 + 16 * v10;
      *(v11 + 32) = v5;
      *(v11 + 40) = v7;
      v4 += 8;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1AF69694C(uint64_t a1)
{
  v3 = *(v1 + 136);
  v4 = *(v3 + 2);
  if (v4)
  {
    result = 0;
    while (1)
    {
      v6 = *&v3[8 * result + 32];
      if (v6 && v6 == a1)
      {
        break;
      }

      if (v4 == ++result)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 136) = v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_1AF4236B8(0, v4 + 1, 1, v3);
      *(v1 + 136) = v3;
    }

    v10 = *(v3 + 2);
    v9 = *(v3 + 3);
    if (v10 >= v9 >> 1)
    {
      v3 = sub_1AF4236B8(v9 > 1, v10 + 1, 1, v3);
    }

    *(v3 + 2) = v10 + 1;
    *&v3[8 * v10 + 32] = a1;
    *(v1 + 136) = v3;
    return v4;
  }

  return result;
}

uint64_t sub_1AF696A20(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 144);
  v5 = v4[2];
  if (!v5)
  {
    v6 = 0;
LABEL_18:

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 144) = v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_1AF423590(0, v6 + 1, 1, v4);
      *(v2 + 144) = v4;
    }

    v15 = v4[2];
    v14 = v4[3];
    if (v15 >= v14 >> 1)
    {
      v4 = sub_1AF423590(v14 > 1, v15 + 1, 1, v4);
    }

    v4[2] = v15 + 1;
    v4[v15 + 4] = a1;
    *(v2 + 144) = v4;
    return v6;
  }

  v6 = 0;
  while (1)
  {
    v7 = v4[v6 + 4];
    if (!v7)
    {
      goto LABEL_4;
    }

    v8 = sub_1AFDFDFD8();
    result = swift_conformsToProtocol2();
    if (!result)
    {
      break;
    }

    v10 = sub_1AFDFDFD8();
    result = swift_conformsToProtocol2();
    if (!result)
    {
      goto LABEL_26;
    }

    if (v8 == v10 && v7[5] == a1[5])
    {
      if (v7[2] == a1[2] && v7[3] == a1[3])
      {

        return v6;
      }

      v12 = sub_1AFDFEE28();

      if (v12)
      {

        return v6;
      }
    }

    else
    {
    }

LABEL_4:
    if (v5 == ++v6)
    {

      v4 = *(v2 + 144);
      v6 = v4[2];
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1AF696C34@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v8 = sub_1AFDFDD58();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  v13 = type metadata accessor for DecodeOrNil(0, a2, a3, v12);
  v26 = *(v13 - 8);
  v27 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v24 = a1;
  v25 = &v24 - v14;
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF398();
  if (v4)
  {
    v33 = v4;
    v15 = v4;
    sub_1AF5C5358(0, &qword_1ED7268D0, MEMORY[0x1E69E7280]);
    if (swift_dynamicCast())
    {
      v16 = v31;
      if ((v31 & 0xE0) == 0x20)
      {
        sub_1AF6A2070(v29, v30, v31);
        if (v16)
        {

          v22 = v25;
          (*(*(a2 - 8) + 56))(v25, 1, 1, a2);

          goto LABEL_13;
        }
      }

      else
      {
        sub_1AF6A2070(v29, v30, v31);
      }
    }

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v29 = 0;
    v30 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2EEE0);
    v17 = sub_1AFDFF4B8();
    MEMORY[0x1B2718AE0](v17);

    MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
    swift_getErrorValue();
    sub_1AFDFEDD8();
    v19 = v29;
    v18 = v30;
    v20 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v23 = v20;
      swift_once();
      v20 = v23;
    }

    v29 = 0;
    sub_1AF0D4F18(v20, &v29, v19, v18);

    v22 = v25;
    (*(*(a2 - 8) + 56))(v25, 1, 1, a2);
  }

  else
  {
    sub_1AF441150(&v29, v32);
    sub_1AFDFEE88();
    (*(*(a2 - 8) + 56))(v11, 0, 1, a2);
    v22 = v25;
    (*(v9 + 32))(v25, v11, v8);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v29);
  }

LABEL_13:
  (*(v26 + 32))(v28, v22, v27);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v24);
}

void *sub_1AF697118(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = a7;
  v37 = a4;
  v38 = a6;
  v11 = sub_1AFDFDD58();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v31 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1AF441150(a1, a1[3]);
  sub_1AFDFF388();
  if (v7)
  {
    goto LABEL_7;
  }

  v33 = v16;
  v34 = v13;
  v35 = a1;
  v18 = sub_1AFDFD538();
  sub_1AF448018(v44, v45);
  v46 = v37;
  swift_getWitnessTable(MEMORY[0x1E69E6330], v18, &v46);
  sub_1AFDFEAD8();
  v32 = v18;
  v19 = v39;
  v20 = sub_1AFDFD538();
  sub_1AF448018(v44, v45);
  v43 = v36;
  swift_getWitnessTable(MEMORY[0x1E69E6330], v20, &v43);
  sub_1AFDFEAD8();
  v21 = v39;
  v22 = sub_1AFDFD4C8();
  if (v22 != sub_1AFDFD4C8())
  {

    v17 = 0x80000001AFF2EE70;
    sub_1AF4567E0();
    swift_allocError();
    *v29 = 0xD000000000000017;
    *(v29 + 8) = 0x80000001AFF2EE70;
    *(v29 + 16) = 96;
    swift_willThrow();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v44);
    a1 = v35;
LABEL_7:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    return v17;
  }

  swift_getTupleTypeMetadata2();
  v23 = sub_1AFDFD478();
  v24 = sub_1AF75C3D8(v23, a2, a3, v38);
  v37 = v21;
  v25 = v24;

  v41 = v19;
  v42 = v25;
  swift_getWitnessTable(MEMORY[0x1E69E6338], v32);
  sub_1AFDFD828();
  v26 = v39;
  v27 = v40;
  v36 = v19;
  for (i = v34; v27 != v26; ++v26)
  {
    sub_1AFDFD598();
    sub_1AFDFD598();
    (*(*(a3 - 8) + 56))(i, 0, 1, a3);
    sub_1AFDFCCB8();
    sub_1AFDFCCD8();
  }

  v17 = v42;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v44);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v35);
  return v17;
}

uint64_t sub_1AF697534(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  nullsub_106();
  v11 = sub_1AFDFCC68();

  swift_getWitnessTable(MEMORY[0x1E69E5D90], v11);
  v21 = sub_1AFDFD578();
  sub_1AF448018(v19, v20);
  v12 = sub_1AFDFD538();
  v18 = a6;
  swift_getWitnessTable(MEMORY[0x1E69E6300], v12, &v18);
  sub_1AFDFEC38();

  if (!v16)
  {
    v21 = a2;
    v13 = sub_1AFDFCC88();

    swift_getWitnessTable(MEMORY[0x1E69E5DE8], v13);
    v21 = sub_1AFDFD578();
    sub_1AF448018(v19, v20);
    v14 = sub_1AFDFD538();
    v17 = a9;
    swift_getWitnessTable(MEMORY[0x1E69E6300], v14, &v17);
    sub_1AFDFEC38();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v19);
}

void *sub_1AF69777C@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X4>, void *a4@<X8>)
{
  result = sub_1AF697118(a1, a2[2], a2[3], a2[4], a3, a2[6], a2[7]);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

unint64_t sub_1AF6977F0@<X0>(unint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF69FF48(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1AF697834()
{
  type metadata accessor for BinaryCodingTypeRegistry();
  v0 = swift_allocObject();
  *(v0 + 16) = sub_1AF43A634(MEMORY[0x1E69E7CC0]);
  result = sub_1AF697884();
  qword_1ED73B620 = v0;
  return result;
}

uint64_t sub_1AF697884()
{
  sub_1AF69DA10(0, &qword_1ED72C770, sub_1AF69D570, sub_1AF69D5C4, &type metadata for EntityCoder);
  v2 = v1;
  v3 = sub_1AF69D570();
  v4 = sub_1AF69D5C4();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *(v0 + 16);
  *(v0 + 16) = 0x8000000000000000;
  sub_1AF85221C(&type metadata for EntityCoder, v3, v4, v2, isUniquelyReferenced_nonNull_native);
  *(v0 + 16) = v36;

  sub_1AF69DA10(0, &qword_1ED72C748, sub_1AF648860, sub_1AF6488B4, &type metadata for ComponentProperty);
  v7 = v6;
  v8 = sub_1AF648860();
  v9 = sub_1AF6488B4();
  v10 = swift_isUniquelyReferenced_nonNull_native();
  v37 = *(v0 + 16);
  *(v0 + 16) = 0x8000000000000000;
  sub_1AF85221C(&type metadata for ComponentProperty, v8, v9, v7, v10);
  *(v0 + 16) = v37;

  sub_1AF69D618(0);
  v12 = v11;
  sub_1AF6A2C9C(0, &qword_1ED72D9C8, sub_1AF648860, &type metadata for ComponentProperty, type metadata accessor for DecodeOrNil);
  v14 = v13;
  v15 = sub_1AF69D718(&qword_1ED72D9D0, asc_1AFE6E04C);
  v16 = sub_1AF69D718(qword_1ED72D9D8, a5_6);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(v0 + 16);
  *(v0 + 16) = 0x8000000000000000;
  sub_1AF85221C(v14, v15, v16, v12, v17);
  *(v0 + 16) = v38;

  sub_1AF69D794(0);
  v19 = v18;
  sub_1AF6A24BC(0, &qword_1ED72AE98, &type metadata for ComponentProperty, MEMORY[0x1E69E6720]);
  v21 = v20;
  v22 = sub_1AF69D830();
  v23 = sub_1AF69D8CC();
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *(v0 + 16);
  *(v0 + 16) = 0x8000000000000000;
  sub_1AF85221C(v21, v22, v23, v19, v24);
  *(v0 + 16) = v39;

  sub_1AF69DA10(0, &qword_1ED72C768, sub_1AF69D968, sub_1AF69D9BC, &type metadata for RelationsCoder);
  v26 = v25;
  v27 = sub_1AF69D968();
  v28 = sub_1AF69D9BC();
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *(v0 + 16);
  *(v0 + 16) = 0x8000000000000000;
  sub_1AF85221C(&type metadata for RelationsCoder, v27, v28, v26, v29);
  *(v0 + 16) = v40;

  sub_1AF69DA10(0, &qword_1ED72C750, sub_1AF6946C8, sub_1AF694788, &type metadata for RelationPair);
  v31 = v30;
  v32 = sub_1AF6946C8();
  v33 = sub_1AF694788();
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *(v0 + 16);
  *(v0 + 16) = 0x8000000000000000;
  sub_1AF85221C(&type metadata for RelationPair, v32, v33, v31, v34);
  *(v0 + 16) = v41;
}

uint64_t sub_1AF697C9C()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF697DA4(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF697E98(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AF697F9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF69DAD8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AF697FCC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000656C62;
  v4 = 0x6154797469746E65;
  v5 = 0xE900000000000073;
  v6 = 0x6E6F6974616C6572;
  v7 = 0xEE00656C62615474;
  v8 = 0x6E656E6F706D6F63;
  if (v2 != 3)
  {
    v8 = 0x79747265706F7270;
    v7 = 0xED0000656C626154;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7365697469746E65;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1AF698090()
{
  v1 = *v0;
  v2 = 0x6154797469746E65;
  v3 = 0x6E6F6974616C6572;
  v4 = 0x6E656E6F706D6F63;
  if (v1 != 3)
  {
    v4 = 0x79747265706F7270;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7365697469746E65;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1AF698150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF69DAD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF698178(uint64_t a1)
{
  v2 = sub_1AF6A20C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF6981B4(uint64_t a1)
{
  v2 = sub_1AF6A20C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF6981F0(uint64_t result, char **a2, uint64_t a3, void *a4, void *a5)
{
  v53 = result;
  v52 = *(result + 32) - *(result + 24);
  if (!v52)
  {
    return result;
  }

  v7 = 0;
  v51 = a3 + 32;
  while (1)
  {
    v9 = *(v53 + 48);
    v10 = *(v53 + 8);
    v11 = *(v10 + 184);

    if (v11)
    {
      break;
    }

    v13 = *(*(v10 + 168) + 4 * v9 + 4 * v7);
    v14 = *(*(v12 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v13 + 8);

    v15 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_1AF4217DC(0, *(v15 + 2) + 1, 1, v15);
      *a2 = v15;
    }

    v18 = *(v15 + 2);
    v17 = *(v15 + 3);
    if (v18 >= v17 >> 1)
    {
      v15 = sub_1AF4217DC(v17 > 1, v18 + 1, 1, v15);
      *a2 = v15;
    }

    *(v15 + 2) = v18 + 1;
    v19 = &v15[8 * v18];
    *(v19 + 8) = v13;
    *(v19 + 9) = v14;
    v55 = *(v51 + 8 * *a4);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = a5[14];
    a5[14] = 0x8000000000000000;
    v22 = sub_1AF449CBC(v55);
    v24 = v23;
    v25 = v21[2] + ((v23 & 1) == 0);
    if (v21[3] < v25)
    {
      sub_1AF837228(v25, v20);
      v22 = sub_1AF449CBC(v55);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_37;
      }

LABEL_15:
      v27 = v21;
      if (v24)
      {
        goto LABEL_16;
      }

      goto LABEL_18;
    }

    if (v20)
    {
      goto LABEL_15;
    }

    v29 = v22;
    sub_1AF84A514();
    v22 = v29;
    v27 = v21;
    if (v24)
    {
LABEL_16:
      v28 = (v27[7] + 8 * v22);
      *v28 = v13;
      v28[1] = v14;
      goto LABEL_19;
    }

LABEL_18:
    v27[(v22 >> 6) + 8] |= 1 << v22;
    *(v27[6] + 4 * v22) = v55;
    v30 = (v27[7] + 8 * v22);
    *v30 = v13;
    v30[1] = v14;
    ++v27[2];
LABEL_19:
    a5[14] = v27;

    v31 = swift_isUniquelyReferenced_nonNull_native();
    v32 = a5[15];
    a5[15] = 0x8000000000000000;
    v33 = sub_1AF449D3C(v55 | (HIDWORD(v55) << 32));
    v35 = v34;
    v36 = v32[2] + ((v34 & 1) == 0);
    if (v32[3] < v36)
    {
      sub_1AF833F28(v36, v31);
      v33 = sub_1AF449D3C(v55 | (HIDWORD(v55) << 32));
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_36;
      }

LABEL_23:
      v38 = v32;
      if (v35)
      {
        goto LABEL_24;
      }

      goto LABEL_26;
    }

    if (v31)
    {
      goto LABEL_23;
    }

    v40 = v33;
    sub_1AF8489C0();
    v33 = v40;
    v38 = v32;
    if (v35)
    {
LABEL_24:
      v39 = (v38[7] + 8 * v33);
      *v39 = v13;
      v39[1] = v14;
      goto LABEL_27;
    }

LABEL_26:
    v38[(v33 >> 6) + 8] |= 1 << v33;
    *(v38[6] + 8 * v33) = v55;
    v41 = (v38[7] + 8 * v33);
    *v41 = v13;
    v41[1] = v14;
    ++v38[2];
LABEL_27:
    a5[15] = v38;

    v42 = swift_isUniquelyReferenced_nonNull_native();
    v43 = a5[16];
    a5[16] = 0x8000000000000000;
    v44 = sub_1AF449D3C(v13 | (v14 << 32));
    v46 = v45;
    v47 = v43[2] + ((v45 & 1) == 0);
    if (v43[3] < v47)
    {
      sub_1AF833F28(v47, v42);
      v44 = sub_1AF449D3C(v13 | (v14 << 32));
      if ((v46 & 1) != (v48 & 1))
      {
        goto LABEL_36;
      }

LABEL_31:
      v49 = v43;
      if (v46)
      {
        goto LABEL_32;
      }

      goto LABEL_4;
    }

    if (v42)
    {
      goto LABEL_31;
    }

    v50 = v44;
    sub_1AF8489C0();
    v44 = v50;
    v49 = v43;
    if (v46)
    {
LABEL_32:
      *(v49[7] + 8 * v44) = v55;
      goto LABEL_5;
    }

LABEL_4:
    v49[(v44 >> 6) + 8] |= 1 << v44;
    v8 = (v49[6] + 8 * v44);
    *v8 = v13;
    v8[1] = v14;
    *(v49[7] + 8 * v44) = v55;
    ++v49[2];
LABEL_5:
    a5[16] = v49;

    ++*a4;
    if (v52 == ++v7)
    {
      return result;
    }
  }

  sub_1AFDFE518();
  __break(1u);
LABEL_36:
  sub_1AFDFF1A8();
  __break(1u);
LABEL_37:
  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

uint64_t sub_1AF6986BC(uint64_t a1, unint64_t a2, unint64_t a3, int a4, uint64_t a5, double a6)
{
  v6 = a3;
  v88 = a2;
  v7 = *(a5 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  v91 = a1;
  v89 = a5;
  v90 = a4;
  if (v7)
  {
    v105 = MEMORY[0x1E69E7CC0];
    sub_1AFC07070(0, v7, 0);
    v8 = v105;
    v11 = a5 + 32;
    v12 = v7;
    do
    {
      sub_1AF441194(v11, &v96);
      sub_1AF441150(&v96, v99);
      DynamicType = swift_getDynamicType();
      v14 = v100;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v96);
      v105 = v8;
      v16 = *(v8 + 16);
      v15 = *(v8 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1AFC07070(v15 > 1, v16 + 1, 1);
        v8 = v105;
      }

      *(v8 + 16) = v16 + 1;
      v17 = v8 + 16 * v16;
      *(v17 + 32) = DynamicType;
      *(v17 + 40) = v14;
      v11 += 40;
      --v12;
    }

    while (v12);
    v6 = a3;
    v18 = v91;
    v19 = v90;
  }

  else
  {
    v19 = a4;
    v18 = a1;
  }

  v20 = thread_worker_index(a6);
  if (*v20 == -1)
  {
    v21 = *(v18 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  }

  else
  {
    v21 = (*(v18 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *v20 + 8);
  }

  v86 = *v21;
  v22 = v18 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
  os_unfair_lock_lock(*(v18 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24));

  v24 = sub_1AF66ED9C(v23, MEMORY[0x1E69E7CC0]);
  v26 = *(v18 + 80);
  v27 = *(v26 + 16);
  if (!v27)
  {
    goto LABEL_17;
  }

  v28 = 0;
  v29 = v26 + 32;
  while (*(*(v29 + 8 * v28) + 144) != v24)
  {
    if (v27 == ++v28)
    {
      goto LABEL_17;
    }
  }

  v30 = v19;
  v31 = v24;
  v32 = v25;
  v33 = sub_1AF65D418(v25, v28);
  v25 = v32;
  v34 = v33;
  v24 = v31;
  v19 = v30;
  if ((v34 & 0x100000000) != 0)
  {
LABEL_17:
    v34 = sub_1AF65D480(v24, v25, v8, MEMORY[0x1E69E7CC0]);
  }

  os_unfair_lock_unlock(*(v22 + 24));
  v35 = sub_1AF65C98C(v6);
  v36 = *(*(v18 + 144) + 8 * v35 + 32);
  v37 = *(v36 + 376);

  os_unfair_lock_lock(v37);
  os_unfair_lock_lock(*(v36 + 344));
  sub_1AF6A24BC(0, &qword_1ED726988, MEMORY[0x1E69E6530], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v35 << 16 >> 48;
  v39 = *(v36 + 16);
  v40 = *(v36 + 40);
  LOBYTE(v37) = v40[200];
  v95 = *(*(v39 + 88) + 8 * v34 + 32);

  if ((v37 & 1) != 0 || *(v95 + 200) == 1)
  {
    *(v39 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
    v40 = *(v36 + 40);
  }

  if (v40[212])
  {
    v84 = 0;
  }

  else
  {
    v84 = *(v95 + 212);
  }

  v83 = v40[208];
  v94 = *(v36 + 128);
  v41 = *(v36 + 256);
  v85 = inited;
  sub_1AF5B6148(v40, inited, 0, v36);
  v92 = *(v36 + 256);
  v93 = v41;
  v42 = v92 - v41;
  if (v92 == v41)
  {
    v43 = 0;
  }

  else
  {
    v43 = v41;
  }

  v105 = v43;
  v87 = v36;
  v44 = *(*(v36 + 40) + 24);
  v45 = *(v44 + 16);
  if (v45)
  {
    v82 = v6;
    v46 = v44 + 32;
    v81 = v44;

    for (i = 0; i != v45; ++i)
    {
      v48 = (v46 + 40 * i);
      if ((v48[4] & 1) == 0)
      {
        v49 = *v48;
        v51 = v48[2];
        v50 = v48[3];
        v52 = *(v95 + 24);
        v53 = *(v52 + 16);
        if (v53)
        {
          v54 = (v52 + 32);
          while (*v54 != v49)
          {
            v54 += 5;
            if (!--v53)
            {
              goto LABEL_29;
            }
          }
        }

        else
        {
LABEL_29:
          sub_1AF640BC8(v94 + v51 * v43 + v50, v42);
        }
      }
    }

    v6 = v82;
    v19 = v90;
  }

  v55 = v87;
  if (*(v39 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v39 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v87 + 72) * v42);
  }

  if (*(v87 + 184))
  {
    v56 = 0;
  }

  else
  {
    v56 = *(v87 + 168);
  }

  v104 = 0;

  MEMORY[0x1EEE9AC00](&v81);
  v68[4] = v88;
  v69 = BYTE4(v88) & 1;
  v70 = v55;
  v71 = v95;
  v72 = 0u;
  v73 = 0u;
  v74 = &v105;
  v75 = v94;
  v76 = &v104;
  v77 = v83;
  v78 = v34;
  v79 = v84;
  v80 = v86;
  LODWORD(v99) = -1;
  v100 = v93;
  v101 = v92;
  v102 = v93;
  v103 = v92;
  v96 = v93;
  v97 = v92;
  v98 = v56;
  if (v42 >= 1)
  {
    v57 = v88 | ((HIDWORD(v88) & 1) << 32);
    do
    {
      sub_1AF6248A8(v34, v57, v19 & 1, v39, &v96, sub_1AF5C5ACC);
    }

    while (v97 - v96 > 0);
  }

  v58 = v89;
  v59 = *(v55 + 192);
  if (v59)
  {
    v60 = *(v55 + 208);
    v62 = v92;
    v61 = v93;
    sub_1AF75D364(v93, v92, v59);
    sub_1AF75D364(v61, v62, v60);
  }

  swift_setDeallocating();
  os_unfair_lock_unlock(*(v55 + 344));
  os_unfair_lock_unlock(*(v55 + 376));
  if (v7)
  {
    v63 = v58 + 32;
    do
    {
      sub_1AF441194(v63, &v96);
      sub_1AF441150(&v96, v99);
      v64 = swift_getDynamicType();
      v65 = v100;
      v66 = sub_1AF6411A4();
      if (v66 >= 1)
      {
        MEMORY[0x1EEE9AC00](v66);
        *&v68[-8] = v64;
        *&v68[-6] = v65;
        *&v68[-4] = &v96;
        sub_1AF682600(v64, v65, v6, sub_1AF6A250C);
      }

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v96);
      v63 += 40;
      --v7;
    }

    while (v7);
  }
}

uint64_t sub_1AF698D8C(void *a1, unint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v63 = a3;
  sub_1AF6A2C9C(0, &qword_1EB63D2D8, sub_1AF6A20C8, &type metadata for EntityManagerCoder.CodingKeys, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v59 - v10;
  v12 = a1[3];
  v61 = a1;
  sub_1AF441150(a1, v12);
  sub_1AF6A20C8();
  v13 = a2;
  v14 = v8;
  sub_1AFDFF3F8();
  LOBYTE(v67[0]) = 0;
  v65 = v11;
  sub_1AFDFE838();
  v15 = v13[2];
  swift_bridgeObjectRetain_n();
  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v64 = v9;
    v62 = v14;
    v17 = 0;
    v66 = v13 + 4;
    do
    {
      v18 = v13;
      v67[0] = v13[v17 + 4];
      sub_1AF448018(v68, v68[3]);
      sub_1AF6A2614();
      sub_1AFDFEC38();
      if (v3)
      {
        swift_bridgeObjectRelease_n();
        (*(v64 + 8))(v65, v62);
        return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v68);
      }

      ++v17;
    }

    while (v15 != v17);
    v60 = 0;
    v67[0] = v16;
    sub_1AFC074C4(0, v15, 0);
    v16 = v67[0];
    v19 = v63;
    do
    {
      v20 = *v66++;
      swift_unownedRetainStrong();
      v21 = sub_1AF69DB24(v20, v19);
      v23 = v22;
      v25 = v24;

      v67[0] = v16;
      v27 = *(v16 + 16);
      v26 = *(v16 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1AFC074C4(v26 > 1, v27 + 1, 1);
        v19 = v63;
        v16 = v67[0];
      }

      *(v16 + 16) = v27 + 1;
      v28 = v16 + 24 * v27;
      *(v28 + 32) = v21;
      *(v28 + 40) = v23 & 1;
      *(v28 + 48) = v25;
      --v15;
    }

    while (v15);
    v4 = v60;
    v9 = v64;
    v13 = v18;
    v14 = v62;
  }

  v67[0] = v16;
  v69 = 1;
  sub_1AF69DA10(0, &qword_1ED72C770, sub_1AF69D570, sub_1AF69D5C4, &type metadata for EntityCoder);
  sub_1AF6A2668(&qword_1EB63D2E8, byte_1AFE69FD0);
  v29 = v65;
  sub_1AFDFE918();
  if (v4)
  {

    swift_bridgeObjectRelease_n();
    (*(v9 + 8))(v29, v14);
  }

  else
  {
    v66 = v13;

    v30 = v61;
    v31 = v61[3];
    v32 = v61[4];
    sub_1AF441150(v61, v31);
    v33 = MEMORY[0x1E69E7780];
    LODWORD(v62) = *(sub_1AF6950D8(v31, v32, MEMORY[0x1E69E7780], 40) + 87);

    v34 = v30[3];
    v35 = v30[4];
    sub_1AF441150(v30, v34);
    *(sub_1AF6950D8(v34, v35, v33, 40) + 87) = 0;

    v36 = v30[3];
    v37 = v30[4];
    sub_1AF441150(v30, v36);
    v38 = *(sub_1AF6950D8(v36, v37, v33, 40) + 144);

    v67[0] = v38;
    v69 = 4;
    sub_1AF69D794(0);
    sub_1AF6A23E0(&qword_1EB63D2F0, sub_1AF69D794, byte_1AFE69FD0);
    sub_1AFDFE918();
    v64 = v9;

    v39 = v30[3];
    v40 = v30[4];
    sub_1AF441150(v30, v39);
    v41 = MEMORY[0x1E69E7780];
    v42 = sub_1AF6950D8(v39, v40, MEMORY[0x1E69E7780], 40);
    *(v42 + 87) = v62;

    v43 = v30[3];
    v44 = v30[4];
    sub_1AF441150(v30, v43);
    v45 = sub_1AF6950D8(v43, v44, v41, 40);
    v46 = v66;
    v47 = sub_1AF69F02C(v66, v66, sub_1AF4493DC, sub_1AF69D0A8);
    swift_bridgeObjectRelease_n();
    *(v45 + 120) = v47;

    v48 = v63;
    swift_unownedRetainStrong();

    v50 = sub_1AF62B8A4(v49);

    MEMORY[0x1EEE9AC00](v51);
    *(&v59 - 4) = v46;
    *(&v59 - 3) = v48;
    *(&v59 - 2) = v30;
    v52 = sub_1AFBFBDC8(sub_1AF6A26E4, (&v59 - 6), v50);

    v67[0] = v52;
    v69 = 2;
    sub_1AF6A24BC(0, &qword_1ED726CA0, &type metadata for RelationsCoder, MEMORY[0x1E69E62F8]);
    sub_1AF6A2708();
    sub_1AFDFE918();

    v69 = 3;
    v62 = v14;
    sub_1AFDFE838();
    v53 = v30[3];
    v54 = v30[4];
    sub_1AF441150(v30, v53);
    sub_1AF6950D8(v53, v54, MEMORY[0x1E69E7780], 40);
    v55 = sub_1AF6967C4();

    v56 = *(v55 + 16);
    if (v56)
    {
      v57 = v55 + 40;
      do
      {
        sub_1AF448018(v67, v67[3]);

        sub_1AFDFEBE8();

        v57 += 16;
        --v56;
      }

      while (v56);
    }

    (*(v64 + 8))(v65, v62);

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v67);
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v68);
}

uint64_t sub_1AF699654@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  swift_unownedRetainStrong();
  v9 = a3[3];
  v10 = a3[4];
  sub_1AF441150(a3, v9);
  v11 = *(sub_1AF6950D8(v9, v10, MEMORY[0x1E69E7780], 40) + 120);

  v12 = sub_1AF6947DC(v7, v8, a2, v11);
  v14 = v13;
  v16 = v15;

  *a4 = v12;
  a4[1] = v14;
  a4[2] = v16;
  return result;
}

Swift::Int sub_1AF699734@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF69F0F8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1AF69977C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v44 = a2;
  sub_1AF6A2C0C(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v43 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v43 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  sub_1AF6A2C9C(0, &qword_1ED726A88, sub_1AF6A2D04, &type metadata for ComponentCoder.CodingKeys_pre2000, MEMORY[0x1E69E6F48]);
  v46 = *(v14 - 8);
  v15 = *(v46 + 56);
  v47 = v14;
  v15(v13, 1, 1);
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v16 = a1[3];
  v17 = a1[4];
  sub_1AF441150(a1, v16);
  v18 = *(sub_1AF6950D8(v16, v17, MEMORY[0x1E69E7760], 89) + 24);

  v45 = v18;
  if (v18 > 1999)
  {
    v48 = v13;
    sub_1AF441150(a1, a1[3]);
    v22 = v56;
    sub_1AFDFF388();
    if (!v22)
    {
      sub_1AF6A2DB8(&v50, &v51);
      sub_1AF448018(&v51, *(&v52 + 1));
      sub_1AF645788();
      sub_1AFDFEAD8();
      goto LABEL_8;
    }

    sub_1AF6A2D58(v48, sub_1AF6A2C0C);
LABEL_19:
    sub_1AF6A2F10(&v51, &qword_1ED7268D8, &qword_1ED7268E0, MEMORY[0x1E69E6FA0]);
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF441150(a1, a1[3]);
  sub_1AF6A2D04();
  v19 = v56;
  sub_1AFDFF3B8();
  sub_1AF6A2D58(v13, sub_1AF6A2C0C);
  if (v19)
  {
    goto LABEL_19;
  }

  v20 = v47;
  (v15)(v10, 0, 1, v47);
  sub_1AF6A2EAC(v10, v13);
  v48 = v13;
  sub_1AF6A2E48(v13, v7);
  v21 = v46;
  (*(v46 + 48))(v7, 1, v20);
  LOBYTE(v49) = 0;
  sub_1AF645788();
  sub_1AFDFE768();
  (*(v21 + 8))(v7, v20);
  v23 = v50;
  result = swift_conformsToProtocol2();
  if (result)
  {
    goto LABEL_9;
  }

  __break(1u);
LABEL_8:
  v23 = v50;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = result;
  v26 = a1[3];
  v27 = a1[4];
  sub_1AF441150(a1, v26);
  v28 = *(sub_1AF6950D8(v26, v27, MEMORY[0x1E69E7760], 89) + 84);

  if (v28 == 1)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v50 = 0x676E69646F636564;
    *(&v50 + 1) = 0xE900000000000020;
    v29 = sub_1AFDFF4B8();
    MEMORY[0x1B2718AE0](v29);

    v30 = v50;
    v31 = sub_1AFDFD9F8();
    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    *&v50 = 0;
    sub_1AF0D4F18(v31, &v50, v30, *(&v30 + 1));
  }

  v32 = a1[3];
  v33 = a1[4];
  sub_1AF441150(a1, v32);
  v34 = sub_1AF6950D8(v32, v33, MEMORY[0x1E69E7760], 89);
  *(v34 + 56) = v23;
  *(v34 + 64) = v25;

  if (v45 > 1999)
  {
    sub_1AF641D4C(&v51, v23, &v50);
  }

  else
  {
    v35 = v43;
    sub_1AF6A2E48(v48, v43);
    v36 = v46;
    v37 = v47;
    (*(v46 + 48))(v35, 1, v47);
    LOBYTE(v49) = 1;
    sub_1AF6A2D04();
    sub_1AF64197C(v35, &v49, v23, &type metadata for ComponentCoder.CodingKeys_pre2000, &v50);
    (*(v36 + 8))(v35, v37);
  }

  sub_1AF0FBA54(&v50, v54);
  v38 = a1[3];
  v39 = a1[4];
  sub_1AF441150(a1, v38);
  v40 = sub_1AF6950D8(v38, v39, MEMORY[0x1E69E7760], 89);
  sub_1AF6A2D58(v48, sub_1AF6A2C0C);
  *(v40 + 56) = 0;
  *(v40 + 64) = 0;

  sub_1AF6A2F10(&v51, &qword_1ED7268D8, &qword_1ED7268E0, MEMORY[0x1E69E6FA0]);
  v41 = v54[1];
  v42 = v44;
  *v44 = v54[0];
  v42[1] = v41;
  *(v42 + 4) = v55;
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

uint64_t sub_1AF69A550(void *a1)
{
  v3 = v2;
  v4 = v1;
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF441194(v1, &v42);
  sub_1AF441150(&v42, v44);
  DynamicType = swift_getDynamicType();
  v7 = v45;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v42);
  v8 = a1[3];
  v9 = a1[4];
  sub_1AF441150(a1, v8);
  v10 = MEMORY[0x1E69E7780];
  v11 = sub_1AF6950D8(v8, v9, MEMORY[0x1E69E7780], 40);
  *(v11 + 56) = DynamicType;
  *(v11 + 64) = v7;

  v12 = a1[3];
  v13 = a1[4];
  sub_1AF441150(a1, v12);
  LODWORD(v12) = *(sub_1AF6950D8(v12, v13, v10, 40) + 84);

  if (v12 == 1)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v42 = 0x676E69646F636E65;
    v43 = 0xE900000000000020;
    v14 = sub_1AFDFF4B8();
    MEMORY[0x1B2718AE0](v14);

    v16 = v42;
    v15 = v43;
    v17 = sub_1AFDFD9F8();
    if (qword_1ED731058 != -1)
    {
      v37 = v17;
      swift_once();
      v17 = v37;
    }

    v42 = 0;
    sub_1AF0D4F18(v17, &v42, v16, v15);
  }

  sub_1AF441194(v4, v41);
  sub_1AF5C5358(0, &qword_1ED7270D0, &protocol descriptor for Component);
  sub_1AF5C5358(0, &qword_1EB63D338, MEMORY[0x1E69E5E78]);
  if (swift_dynamicCast())
  {
    sub_1AF0FBA54(v39, &v42);
    v41[0] = DynamicType;
    sub_1AF448018(v46, v46[3]);
    sub_1AF6457DC();
    sub_1AFDFEC38();
    if (!v2)
    {
      v18 = v44;
      v19 = v45;
      sub_1AF441150(&v42, v44);
      sub_1AF758548(v46, v18, v19);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v42);
      goto LABEL_19;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v42);
  }

  else
  {
    v40 = 0;
    memset(v39, 0, sizeof(v39));
    sub_1AF6A2F10(v39, &qword_1EB63D340, &qword_1EB63D338, MEMORY[0x1E69E5E78]);
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_1AFDFE218();
    v20 = sub_1AFDFF4B8();
    v22 = v21;

    v42 = v20;
    v43 = v22;
    MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF2F0D0);
    v23 = v42;
    v24 = v43;
    sub_1AF4567E0();
    v3 = swift_allocError();
    *v25 = v23;
    *(v25 + 8) = v24;
    *(v25 + 16) = 64;
    swift_willThrow();
  }

  v26 = a1[3];
  v27 = a1[4];
  sub_1AF441150(a1, v26);
  LODWORD(v26) = *(sub_1AF6950D8(v26, v27, MEMORY[0x1E69E7780], 40) + 83);

  if (v26 == 1)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v42 = 0;
    v43 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000022, 0x80000001AFF2F0F0);
    v28 = sub_1AFDFF4B8();
    MEMORY[0x1B2718AE0](v28);

    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2F120);
    swift_getErrorValue();
    sub_1AFDFEDD8();
    v30 = v42;
    v29 = v43;
    v31 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v38 = v31;
      swift_once();
      v31 = v38;
    }

    v42 = 0;
    sub_1AF0D4F18(v31, &v42, v30, v29);

    sub_1AF4567E0();
    swift_allocError();
    *v32 = v3;
    *(v32 + 8) = 0;
    *(v32 + 16) = -32;
  }

  swift_willThrow();
LABEL_19:
  v33 = a1[3];
  v34 = a1[4];
  sub_1AF441150(a1, v33);
  v35 = sub_1AF6950D8(v33, v34, MEMORY[0x1E69E7780], 40);
  *(v35 + 56) = 0;
  *(v35 + 64) = 0;

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v46);
}

uint64_t sub_1AF69AB34(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = a1[3];
  v10 = a1[4];
  sub_1AF441150(a1, v9);
  v11 = sub_1AF6950D8(v9, v10, MEMORY[0x1E69E7780], 40);
  *(v11 + 40) = a2;
  *(v11 + 48) = 0;

  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF448018(v24, v25);
  sub_1AFDFEC48();
  if (!v4)
  {
    if ((a3 & 1) == 0)
    {
      sub_1AF448018(v24, v25);
      sub_1AFDFEBF8();
    }

    sub_1AF448018(v24, v25);
    sub_1AFDFEBD8();
    v12 = *(a4 + 16);
    if (v12)
    {
      v13 = (a4 + 32);
      do
      {
        v14 = v13[3];
        v15 = v13[4];
        v16 = sub_1AF441150(v13, v14);
        v22[3] = v14;
        v22[4] = *(v15 + 8);
        v17 = sub_1AF585714(v22);
        (*(*(v14 - 8) + 16))(v17, v16, v14);
        sub_1AF448018(v23, v23[3]);
        sub_1AF6A25C0();
        sub_1AFDFEC38();
        sub_1AF61005C(v22);
        v13 += 5;
        --v12;
      }

      while (v12);
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v23);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v24);
  v18 = a1[3];
  v19 = a1[4];
  sub_1AF441150(a1, v18);
  v20 = sub_1AF6950D8(v18, v19, MEMORY[0x1E69E7780], 40);
  *(v20 + 40) = 0;
  *(v20 + 48) = 1;
}

uint64_t sub_1AF69AE20(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4[3];
  v7 = a4[4];
  v8 = sub_1AF441150(a4, v6);
  v11[3] = v6;
  v11[4] = *(v7 + 8);
  v9 = sub_1AF585714(v11);
  (*(*(v6 - 8) + 16))(v9, v8, v6);
  sub_1AF6411D8(v11, a1, a2);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v11);
}

uint64_t sub_1AF69AED4@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF69E220(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
    *(a1 + 16) = v6;
  }

  return result;
}

double sub_1AF69AFA8@<D0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a2();
  if (*(v5 + 16) && (v7 = sub_1AF419DC8(a1, v6), (v8 & 1) != 0))
  {
    sub_1AF0D5A54(*(v5 + 56) + 32 * v7, v13);

    v9 = v14;
    v10 = sub_1AF441150(v13, v14);
    *(a3 + 24) = v9;
    v11 = sub_1AF585714(a3);
    (*(*(v9 - 8) + 16))(v11, v10, v9);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v13);
  }

  else
  {

    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1AF69B098(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(_BYTE *))
{
  v9 = sub_1AFDFE488();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v13 + 16))(v12, a1, v10);
  sub_1AF0D5A54(a2, v17);
  v14 = a6(v16);
  sub_1AF824640(v17, v12);
  return v14(v16, 0);
}

double sub_1AF69B318@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(v2 + 32);
  if (!*(v4 + 16))
  {
    goto LABEL_7;
  }

  v7 = sub_1AF419DC8(a1, v6);
  if ((v8 & 1) == 0)
  {

LABEL_7:
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
    return result;
  }

  sub_1AF0D5A54(*(v4 + 56) + 32 * v7, a2);

  return result;
}

uint64_t sub_1AF69B3A8(uint64_t a1, void *a2, double a3)
{
  v5 = sub_1AFDFE488();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  v10 = a2[3];
  v11 = sub_1AF441150(a2, v10);
  v14[3] = v10;
  v12 = sub_1AF585714(v14);
  (*(*(v10 - 8) + 16))(v12, v11, v10);
  return sub_1AF8247D4(v14, v8);
}

double sub_1AF69B4FC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(v2 + 48);
  if (!*(v4 + 16))
  {
    goto LABEL_7;
  }

  v7 = sub_1AF419DC8(a1, v6);
  if ((v8 & 1) == 0)
  {

LABEL_7:
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
    return result;
  }

  sub_1AF0D5A54(*(v4 + 56) + 32 * v7, a2);

  return result;
}

uint64_t sub_1AF69B58C(uint64_t a1, void *a2, double a3)
{
  v5 = sub_1AFDFE488();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  v10 = a2[3];
  v11 = sub_1AF441150(a2, v10);
  v14[3] = v10;
  v12 = sub_1AF585714(v14);
  (*(*(v10 - 8) + 16))(v12, v11, v10);
  return sub_1AF8247D4(v14, v8);
}

uint64_t sub_1AF69B6E0(uint64_t *a1, double a2)
{
  v31 = a1;
  sub_1AF6A076C(0, &qword_1ED726B50, MEMORY[0x1E69E6D30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v30 - v6;
  v8 = sub_1AFDFE488();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v30 - v13;
  v30[1] = "count buffer bytesPerIndex ";
  sub_1AFDFE478();
  v15 = *(v9 + 48);
  v15(v7, 1, v8);
  v16 = *(v9 + 32);
  v17 = v16(v14, v7, v8);
  v18 = *v31;
  v19 = sub_1AF419DC8(v14, v17);
  sub_1AF0D5A54(*(v18 + 56) + 32 * v19, v32);
  (*(v9 + 8))(v14, v8);
  sub_1AF449D40(v32, &v33);
  v20 = type metadata accessor for SerializationContext();
  v21 = swift_dynamicCast();
  v22 = sub_1AF696194(v21);

  sub_1AFDFE478();
  v15(v4, 1, v8);
  v16(v11, v4, v8);
  v34 = v20;
  *&v33 = v22;

  sub_1AF8247D4(&v33, v11);
  v24 = thread_serialization_context(v23);
  v25 = *v24;
  *v24 = v22;
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  v28 = *(v22 + 96);
  v27 = *(v22 + 104);
  *(v22 + 96) = sub_1AF69D544;
  *(v22 + 104) = v26;
  sub_1AF0FB8EC(v28, v27);
}

uint64_t sub_1AF69B9F8(char *a1, unsigned __int8 a2, char a3, double a4)
{
  v5 = v4;
  sub_1AF6A076C(0, &qword_1ED726B50, MEMORY[0x1E69E6D30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v33 - v10;
  v12 = sub_1AFDFE488();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  v17 = sub_1AF6A05F4(v16, a1);
  v19 = v18;

  sub_1AF69493C(a2, v5, a3, &v36);
  v20 = v37;
  v21 = v38;
  sub_1AF441150(&v36, v37);
  sub_1AFDFE478();
  (*(v13 + 48))(v11, 1, v12);
  (*(v13 + 32))(v15, v11, v12);
  (*(v21 + 16))(v34, v15, v20, v21);
  (*(v13 + 8))(v15, v12);
  sub_1AF449D40(v34, v35);
  type metadata accessor for SerializationContext();
  swift_dynamicCast();
  v22 = v33[7];
  v23 = thread_serialization_context;
  v25 = thread_serialization_context(v24);
  v33[0] = *v25;
  *v25 = v22;
  v27 = v37;
  v26 = v38;
  sub_1AF441150(&v36, v37);
  *&v35[0] = v17;
  *(&v35[0] + 1) = v19;
  v33[1] = v19;
  v28 = *(v26 + 24);
  v29 = sub_1AF6A0718();
  v30 = v28(v35, &type metadata for EntityManagerCoder, v29, v27, v26);
  v31 = (v23)(&thread_serialization_context);
  *v31 = v33[0];

  swift_unownedRelease();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v36);
  return v30;
}

uint64_t sub_1AF69BDCC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1701869940;
  }

  else
  {
    v3 = 0x797469746E65;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1701869940;
  }

  else
  {
    v5 = 0x797469746E65;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF69BE68()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF69BEE0(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF69BF44(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

void sub_1AF69BFC4(uint64_t *a1@<X8>)
{
  v2 = 1701869940;
  if (!*v1)
  {
    v2 = 0x797469746E65;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1AF69BFF8()
{
  if (*v0)
  {
    return 1701869940;
  }

  else
  {
    return 0x797469746E65;
  }
}

uint64_t sub_1AF69C034(uint64_t a1)
{
  v2 = sub_1AF6A201C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF69C070(uint64_t a1)
{
  v2 = sub_1AF6A201C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF69C0AC(void *a1, uint64_t a2, uint64_t a3)
{
  v12 = a2;
  sub_1AF6A2C9C(0, &qword_1EB63D300, sub_1AF6A201C, &type metadata for EntityComponentReference.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF6A201C();
  sub_1AFDFF3F8();
  v14 = a3;
  v13 = 1;
  sub_1AF6457DC();
  sub_1AFDFE918();
  if (!v3)
  {
    v14 = v12;
    v13 = 0;
    sub_1AF480018();
    sub_1AFDFE918();
  }

  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_1AF69C274@<X0>(unint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF6A0254(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1AF69C2C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x69746172656E6567;
  }

  else
  {
    v3 = 0x7865646E69;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xEA00000000006E6FLL;
  }

  if (*a2)
  {
    v5 = 0x69746172656E6567;
  }

  else
  {
    v5 = 0x7865646E69;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006E6FLL;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF69C36C()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF69C3F0(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF69C460(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

void sub_1AF69C4EC(uint64_t *a1@<X8>)
{
  v2 = 0x7865646E69;
  if (*v1)
  {
    v2 = 0x69746172656E6567;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006E6FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1AF69C52C()
{
  if (*v0)
  {
    return 0x69746172656E6567;
  }

  else
  {
    return 0x7865646E69;
  }
}

uint64_t sub_1AF69C574(uint64_t a1)
{
  v2 = sub_1AF6A2BB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF69C5B0(uint64_t a1)
{
  v2 = sub_1AF6A2BB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF69C5EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x73746E65746E6F63;
  }

  else
  {
    v3 = 1701869940;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x73746E65746E6F63;
  }

  else
  {
    v5 = 1701869940;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF69C68C()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF69C708(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF69C770(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

void sub_1AF69C7F4(uint64_t *a1@<X8>)
{
  v2 = 1701869940;
  if (*v1)
  {
    v2 = 0x73746E65746E6F63;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1AF69C82C()
{
  if (*v0)
  {
    return 0x73746E65746E6F63;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1AF69C86C(uint64_t a1)
{
  v2 = sub_1AF6A2D04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF69C8A8(uint64_t a1)
{
  v2 = sub_1AF6A2D04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF69C8E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E656E6F706D6F63;
  v4 = 0xEA00000000007374;
  if (v2 != 1)
  {
    v3 = 0x657669746361;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7865646E69;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x6E656E6F706D6F63;
  v8 = 0xEA00000000007374;
  if (*a2 != 1)
  {
    v7 = 0x657669746361;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7865646E69;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF69C9E4()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF69CA84(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF69CB10(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AF69CBAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF69DA8C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AF69CBDC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xEA00000000007374;
  v5 = 0x6E656E6F706D6F63;
  if (v2 != 1)
  {
    v5 = 0x657669746361;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7865646E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1AF69CC38()
{
  v1 = 0x6E656E6F706D6F63;
  if (*v0 != 1)
  {
    v1 = 0x657669746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7865646E69;
  }
}

unint64_t sub_1AF69CC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF69DA8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF69CCB8(uint64_t a1)
{
  v2 = sub_1AF6A2518();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF69CCF4(uint64_t a1)
{
  v2 = sub_1AF6A2518();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1AF69CD30(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  LOBYTE(v5) = a3;
  v8 = *(a1 + 16);

  if (!v8 || !*(a2 + 16))
  {
LABEL_18:

    swift_bridgeObjectRelease_n();
    return;
  }

  v9 = *(a1 + 32);
  v10 = *(a2 + 32);
  v11 = *a4;
  v12 = sub_1AF449CB8(v9);
  v14 = v13;
  v15 = v11[2] + ((v13 & 1) == 0);
  if (v11[3] < v15)
  {
    sub_1AF830A44(v15, v5 & 1);
    v12 = sub_1AF449CB8(v9);
    if ((v14 & 1) == (v16 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v12 = sub_1AFDFF1A8();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v14)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v19 = v12;
  sub_1AF846E40();
  v12 = v19;
  if ((v14 & 1) == 0)
  {
LABEL_11:
    v20 = *a4;
    *(*a4 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    *(v20[6] + 8 * v12) = v9;
    *(v20[7] + 8 * v12) = v10;
    ++v20[2];
    v5 = v8 - 1;
    if (v8 != 1)
    {
      v8 = 0;
      do
      {
        if (v8 + 1 == *(a2 + 16))
        {
          break;
        }

        v9 = *(a1 + 40 + 8 * v8);
        v10 = *(a2 + 40 + 8 * v8);
        v21 = *a4;
        v22 = sub_1AF449CB8(v9);
        v14 = v23;
        if (v21[3] < (v21[2] + ((v23 & 1) == 0)))
        {
          sub_1AF830A44(v21[2] + ((v23 & 1) == 0), 1);
          v22 = sub_1AF449CB8(v9);
          if ((v14 & 1) != (v24 & 1))
          {
            goto LABEL_5;
          }
        }

        if (v14)
        {
          goto LABEL_8;
        }

        v25 = *a4;
        *(*a4 + 8 * (v22 >> 6) + 64) |= 1 << v22;
        *(v25[6] + 8 * v22) = v9;
        *(v25[7] + 8 * v22) = v10;
        ++v25[2];
        ++v8;
      }

      while (v5 != v8);
    }

    goto LABEL_18;
  }

LABEL_8:
  v17 = swift_allocError();
  swift_willThrow();
  v18 = v17;
  sub_1AF5C5358(0, &qword_1ED7268D0, MEMORY[0x1E69E7280]);
  if (swift_dynamicCast())
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000001BLL, 0x80000001AFF2D560);
    sub_1AFDFE458();
    MEMORY[0x1B2718AE0](39, 0xE100000000000000);
    sub_1AFDFE518();
    __break(1u);
  }

  else
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }
}

void sub_1AF69D0A8(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = *(a1 + 16);

  if (!v8 || !*(a2 + 16))
  {
LABEL_18:

    return;
  }

  v9 = *(a1 + 32);
  v10 = *(a2 + 32);
  v11 = *a4;
  v12 = sub_1AF449D3C(v9);
  v14 = v13;
  v15 = v11[2] + ((v13 & 1) == 0);
  if (v11[3] < v15)
  {
    sub_1AF833F28(v15, a3 & 1);
    v12 = sub_1AF449D3C(v9);
    if ((v14 & 1) == (v16 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v12 = sub_1AFDFF1A8();
    __break(1u);
  }

  if (a3)
  {
LABEL_7:
    if (v14)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v19 = v12;
  sub_1AF8489C0();
  v12 = v19;
  if ((v14 & 1) == 0)
  {
LABEL_11:
    v20 = *a4;
    *(*a4 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    *(v20[6] + 8 * v12) = v9;
    *(v20[7] + 8 * v12) = v10;
    ++v20[2];
    v26 = v8 - 1;
    if (v8 != 1)
    {
      v8 = 0;
      do
      {
        if (v8 + 1 == *(a2 + 16))
        {
          break;
        }

        v9 = *(a1 + 40 + 8 * v8);
        v10 = *(a2 + 40 + 8 * v8);
        a3 = v9;
        v21 = *a4;
        v22 = sub_1AF449D3C(v9);
        v14 = v23;
        if (v21[3] < (v21[2] + ((v23 & 1) == 0)))
        {
          sub_1AF833F28(v21[2] + ((v23 & 1) == 0), 1);
          v22 = sub_1AF449D3C(v9);
          if ((v14 & 1) != (v24 & 1))
          {
            goto LABEL_5;
          }
        }

        if (v14)
        {
          goto LABEL_8;
        }

        v25 = *a4;
        *(*a4 + 8 * (v22 >> 6) + 64) |= 1 << v22;
        *(v25[6] + 8 * v22) = v9;
        *(v25[7] + 8 * v22) = v10;
        ++v25[2];
        ++v8;
      }

      while (v26 != v8);
    }

    goto LABEL_18;
  }

LABEL_8:
  v17 = swift_allocError();
  swift_willThrow();
  v18 = v17;
  sub_1AF5C5358(0, &qword_1ED7268D0, MEMORY[0x1E69E7280]);
  if (swift_dynamicCast())
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000001BLL, 0x80000001AFF2D560);
    sub_1AFDFE458();
    MEMORY[0x1B2718AE0](39, 0xE100000000000000);
    sub_1AFDFE518();
    __break(1u);
  }

  else
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_1AF69D428(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 40) = 0;
  *(v4 + 48) = 1;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  v8 = MEMORY[0x1E69E7CC0];
  *(v4 + 72) = MEMORY[0x1E69E7CC0];
  *(v4 + 80) = 0x101010000000100;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 136) = v8;
  *(v4 + 144) = v8;
  *(v4 + 16) = a1;
  *(v4 + 120) = sub_1AF42B4D0(v8);
  *(v4 + 128) = sub_1AF42B4D0(v8);
  *(v4 + 112) = sub_1AF432BBC(v8);
  v9 = 3031;
  if ((a3 & 1) == 0)
  {
    v9 = a2;
  }

  *(v4 + 24) = v9;
  *(v4 + 32) = a4;
  *(v4 + 36) = BYTE4(a4) & 1;
  return v4;
}

void sub_1AF69D4DC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1AF5C5358(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void *sub_1AF69D544(double a1)
{
  result = thread_serialization_context(a1);
  *result = v2;
  return result;
}

unint64_t sub_1AF69D570()
{
  result = qword_1ED72D8A8;
  if (!qword_1ED72D8A8)
  {
    result = swift_getWitnessTable(byte_1AFE6DFD4, &type metadata for EntityCoder, v0, v1);
    atomic_store(result, &qword_1ED72D8A8);
  }

  return result;
}

unint64_t sub_1AF69D5C4()
{
  result = qword_1ED72D8B0;
  if (!qword_1ED72D8B0)
  {
    result = swift_getWitnessTable(byte_1AFE6DFAC, &type metadata for EntityCoder, v0, v1);
    atomic_store(result, &qword_1ED72D8B0);
  }

  return result;
}

void sub_1AF69D618(uint64_t a1)
{
  if (!qword_1ED72C758)
  {
    sub_1AF6A2C9C(255, &qword_1ED72D9C8, sub_1AF648860, &type metadata for ComponentProperty, type metadata accessor for DecodeOrNil);
    v3 = v2;
    v4 = sub_1AF69D718(&qword_1ED72D9D0, asc_1AFE6E04C);
    v5 = sub_1AF69D718(qword_1ED72D9D8, a5_6);
    v6 = type metadata accessor for ParallelCoder(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1ED72C758);
    }
  }
}

uint64_t sub_1AF69D718(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1AF6A2C9C(255, &qword_1ED72D9C8, sub_1AF648860, &type metadata for ComponentProperty, type metadata accessor for DecodeOrNil);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AF69D794(uint64_t a1)
{
  if (!qword_1ED72C740)
  {
    sub_1AF6A24BC(255, &qword_1ED72AE98, &type metadata for ComponentProperty, MEMORY[0x1E69E6720]);
    v3 = v2;
    v4 = sub_1AF69D830();
    v5 = sub_1AF69D8CC();
    v6 = type metadata accessor for ParallelCoder(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1ED72C740);
    }
  }
}

unint64_t sub_1AF69D830()
{
  result = qword_1ED72AE88;
  if (!qword_1ED72AE88)
  {
    v5[3] = v0;
    v5[4] = v1;
    sub_1AF6A24BC(255, &qword_1ED72AE98, &type metadata for ComponentProperty, MEMORY[0x1E69E6720]);
    v4 = v3;
    v5[0] = sub_1AF648860();
    result = swift_getWitnessTable(MEMORY[0x1E69E7C88], v4, v5);
    atomic_store(result, &qword_1ED72AE88);
  }

  return result;
}

unint64_t sub_1AF69D8CC()
{
  result = qword_1ED72AE90;
  if (!qword_1ED72AE90)
  {
    v5[3] = v0;
    v5[4] = v1;
    sub_1AF6A24BC(255, &qword_1ED72AE98, &type metadata for ComponentProperty, MEMORY[0x1E69E6720]);
    v4 = v3;
    v5[0] = sub_1AF6488B4();
    result = swift_getWitnessTable(MEMORY[0x1E69E7C70], v4, v5);
    atomic_store(result, &qword_1ED72AE90);
  }

  return result;
}

unint64_t sub_1AF69D968()
{
  result = qword_1ED72BE28;
  if (!qword_1ED72BE28)
  {
    result = swift_getWitnessTable(byte_1AFE6DBA0, &type metadata for RelationsCoder, v0, v1);
    atomic_store(result, &qword_1ED72BE28);
  }

  return result;
}

unint64_t sub_1AF69D9BC()
{
  result = qword_1ED72BE30;
  if (!qword_1ED72BE30)
  {
    result = swift_getWitnessTable(byte_1AFE6DB78, &type metadata for RelationsCoder, v0, v1);
    atomic_store(result, &qword_1ED72BE30);
  }

  return result;
}

void sub_1AF69DA10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a4();
    v11 = type metadata accessor for ParallelCoder(a1, a5, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_1AF69DA8C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AF69DAD8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AF69DB24(unint64_t a1, uint64_t a2)
{
  sub_1AF0D4E74(0);
  v57 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v56 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1AFDFC298();
  v6 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47[3] = sub_1AF65AE88(a1);
  v59 = a2;
  v8 = sub_1AF682350(a1);
  v9 = v8;
  v10 = *(v8 + 16);
  if (!v10)
  {

    v11 = MEMORY[0x1E69E7CC0];
    v33 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v33)
    {
      goto LABEL_23;
    }

LABEL_32:

    return a1;
  }

  v50 = "ks to ComponentCoder!\n";
  v49 = (v6 + 32);
  v11 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E6440];
  v13 = 32;
  v48 = xmmword_1AFE431C0;
  v52 = v8;
  v53 = a1;
  v51 = &protocol descriptor for NotCodable;
  do
  {
    v60 = *(v9 + v13);
    v16 = v60;
    if (swift_conformsToProtocol2())
    {
      v17 = v16 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      if (sub_1AF608380(v16, v16, v12, MEMORY[0x1E69E5E78]))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v61 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1AFC07070(0, v11[2] + 1, 1);
          v11 = v61;
        }

        v15 = v11[2];
        v14 = v11[3];
        if (v15 >= v14 >> 1)
        {
          sub_1AFC07070(v14 > 1, v15 + 1, 1);
          v11 = v61;
        }

        v11[2] = v15 + 1;
        *&v11[2 * v15 + 4] = v60;
      }

      else
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v64 = 0;
        v65 = 0xE000000000000000;
        sub_1AFDFE218();
        v19 = sub_1AFDFF4B8();
        MEMORY[0x1B2718AE0](v19);

        MEMORY[0x1B2718AE0](0xD000000000000071, v50 | 0x8000000000000000);
        v21 = v64;
        v20 = v65;
        v22 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          swift_once();
        }

        *&v60 = v11;
        if (qword_1ED730E98 != -1)
        {
          swift_once();
        }

        v23 = qword_1ED73B890;
        sub_1AF69D4DC(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v24 = swift_allocObject();
        *(v24 + 16) = v48;
        *(v24 + 56) = MEMORY[0x1E69E6158];
        *(v24 + 64) = sub_1AF0D544C();
        *(v24 + 32) = v21;
        *(v24 + 40) = v20;

        sub_1AFDFC4C8(v22, &dword_1AF0CE000, v23, "%{public}s", 10, 2, v24);

        v58 = v20;
        v25 = v22;
        v26 = v54;
        sub_1AFDFC288();
        v27 = v57[12];
        v28 = v57[16];
        v29 = v21;
        v30 = v56;
        v31 = &v56[v57[20]];
        (*v49)(v56, v26, v55);
        *(v30 + v27) = v25;
        *(v30 + v28) = 0;
        v32 = v58;
        *v31 = v29;
        *(v31 + 1) = v32;
        sub_1AFDFC608();

        sub_1AF6A2D58(v30, sub_1AF0D4E74);
        v9 = v52;
        a1 = v53;
        v12 = MEMORY[0x1E69E6440];
        v11 = v60;
      }
    }

    v13 += 16;
    --v10;
  }

  while (v10);

  v33 = v11[2];
  if (!v33)
  {
    goto LABEL_32;
  }

LABEL_23:
  v34 = v11 + 5;
  v35 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1AF67E3AC(*(v34 - 1), *v34, a1, &v61);
    if (!v62)
    {
      break;
    }

    sub_1AF0FBA54(&v61, &v64);
    sub_1AF441194(&v64, &v61);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v66 = v35;
    if ((v36 & 1) == 0)
    {
      v35 = sub_1AF423348(0, v35[2] + 1, 1, v35);
      v66 = v35;
    }

    v38 = v35[2];
    v37 = v35[3];
    if (v38 >= v37 >> 1)
    {
      v35 = sub_1AF423348(v37 > 1, v38 + 1, 1, v35);
      v66 = v35;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v64);
    v39 = v62;
    v40 = v63;
    v41 = sub_1AF448018(&v61, v62);
    v42 = MEMORY[0x1EEE9AC00](v41);
    v44 = v47 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v45 + 16))(v44, v42);
    sub_1AF66E44C(v38, v44, &v66, v39, v40);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v61);
    v34 += 2;
    if (!--v33)
    {
      goto LABEL_32;
    }
  }

  sub_1AF6A2F10(&v61, &qword_1EB634220, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF69E220(void *a1)
{
  sub_1AF6A2C9C(0, &qword_1ED726A90, sub_1AF6A2518, &type metadata for EntityCoder.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v81 - v6;
  v8 = a1[3];
  v9 = a1[4];
  sub_1AF441150(a1, v8);
  v10 = *(sub_1AF6950D8(v8, v9, MEMORY[0x1E69E7760], 89) + 24);

  if (v10 > 1999)
  {
    v11 = sub_1AF441150(a1, a1[3]);
    sub_1AFDFF388();
    if (!v1)
    {
      sub_1AF441150(&v90, v91);
      v13 = sub_1AFDFEA68();
      v15 = v14;
      sub_1AF448018(&v90, v91);
      v16 = sub_1AFDFEAE8();
      v19 = 1;
      if (v15)
      {
        v12 = v16;
      }

      else
      {
        v12 = v16;
        if (v13 == 3)
        {
          sub_1AF448018(&v90, v91);
          v19 = sub_1AFDFEA88();
        }
      }

      sub_1AF448018(&v90, v91);
      sub_1AFDFEA48();
      sub_1AF0FBA54(&v87, v92);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v90);
      goto LABEL_12;
    }

LABEL_10:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);

    return v11;
  }

  v11 = sub_1AF441150(a1, a1[3]);
  sub_1AF6A2518();
  sub_1AFDFF3B8();
  if (v1)
  {
    goto LABEL_10;
  }

  LOBYTE(v90) = 0;
  v12 = sub_1AFDFE798();
  LOBYTE(v87) = 1;
  sub_1AFDFE658();
  sub_1AF0FBA54(&v90, v92);
  LOBYTE(v90) = 2;
  v18 = sub_1AFDFE6A8();
  (*(v5 + 8))(v7, v4);
  v19 = (v18 == 2) | v18;
LABEL_12:
  v20 = a1[3];
  v21 = a1[4];
  sub_1AF441150(a1, v20);
  v22 = *(sub_1AF6950D8(v20, v21, MEMORY[0x1E69E7760], 89) + 112);

  v23 = *(v22 + 16);
  v83 = v19;
  if (v23 && (v24 = sub_1AF449CBC(v12), (v25 & 1) != 0))
  {
    v26 = (*(v22 + 56) + 8 * v24);
    v28 = *v26;
    v27 = v26[1];
  }

  else
  {
    v27 = 0;
    v28 = -1;
  }

  v29 = MEMORY[0x1E69E7CC0];
  if (v28 != -1 || v27)
  {
    v30 = a1[3];
    v31 = a1[4];
    sub_1AF441150(a1, v30);
    v32 = MEMORY[0x1E69E7760];
    v33 = sub_1AF6950D8(v30, v31, MEMORY[0x1E69E7760], 89);
    v82 = v28 | (v27 << 32);
    *(v33 + 40) = v82;
    *(v33 + 48) = 0;

    v34 = a1[3];
    v35 = a1[4];
    sub_1AF441150(a1, v34);
    *(sub_1AF6950D8(v34, v35, v32, 89) + 72) = v29;

    sub_1AF441150(v92, v93);
    v36 = sub_1AFDFEA68();
    if (v37)
    {
      v38 = a1[3];
      v39 = a1[4];
      sub_1AF441150(a1, v38);
      v40 = sub_1AF6950D8(v38, v39, MEMORY[0x1E69E7760], 89);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = *(v40 + 72);
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_1AF64CAD0(0, *(v42 + 16));
      }

      else
      {
        *(v40 + 72) = sub_1AFC85B7C(0, *(v42 + 24) >> 1);
      }
    }

    else
    {
      v43 = MEMORY[0x1E69E7CC0];
      for (i = v36; i; --i)
      {
        sub_1AF448018(v92, v93);
        sub_1AF6A256C();
        sub_1AFDFEAD8();
        sub_1AF0FBA54(&v86, &v87);
        sub_1AF5C5358(0, &qword_1ED7270D0, &protocol descriptor for Component);
        sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
        swift_dynamicCast();
        sub_1AF441194(&v90, &v87);
        v51 = swift_isUniquelyReferenced_nonNull_native();
        v94 = v43;
        if ((v51 & 1) == 0)
        {
          v43 = sub_1AF423348(0, v43[2] + 1, 1, v43);
          v94 = v43;
        }

        v53 = v43[2];
        v52 = v43[3];
        if (v53 >= v52 >> 1)
        {
          v43 = sub_1AF423348(v52 > 1, v53 + 1, 1, v43);
          v94 = v43;
        }

        v45 = v88;
        v85 = v89;
        v46 = sub_1AF448018(&v87, v88);
        v47 = MEMORY[0x1EEE9AC00](v46);
        v49 = &v81 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v50 + 16))(v49, v47);
        sub_1AF66E44C(v53, v49, &v94, v45, v85);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v87);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v90);
      }

      v54 = a1[3];
      v55 = a1[4];
      sub_1AF441150(a1, v54);
      v56 = *(sub_1AF6950D8(v54, v55, MEMORY[0x1E69E7760], 89) + 72);

      v81 = v56;
      v85 = *(v56 + 16);
      if (v85)
      {
        v57 = 0;
        v84 = v81 + 32;
        do
        {
          sub_1AF441194(v84 + 40 * v57, &v90);
          sub_1AF441150(&v90, v91);
          DynamicType = swift_getDynamicType();
          v59 = v43[2];
          if (v59)
          {
            v60 = DynamicType;
            v61 = (v43 + 4);
            while (1)
            {
              sub_1AF441194(v61, &v87);
              sub_1AF441150(&v87, v88);
              v62 = swift_getDynamicType();
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v87);
              if (v62 == v60)
              {
                break;
              }

              v61 += 40;
              if (!--v59)
              {
                goto LABEL_37;
              }
            }

            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v90);
          }

          else
          {
LABEL_37:
            sub_1AF441194(&v90, &v87);
            v63 = swift_isUniquelyReferenced_nonNull_native();
            v94 = v43;
            if ((v63 & 1) == 0)
            {
              v43 = sub_1AF423348(0, v43[2] + 1, 1, v43);
              v94 = v43;
            }

            v65 = v43[2];
            v64 = v43[3];
            if (v65 >= v64 >> 1)
            {
              v43 = sub_1AF423348(v64 > 1, v65 + 1, 1, v43);
              v94 = v43;
            }

            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v90);
            v66 = v88;
            v67 = v89;
            v68 = sub_1AF448018(&v87, v88);
            v69 = MEMORY[0x1EEE9AC00](v68);
            v71 = &v81 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v72 + 16))(v71, v69);
            sub_1AF66E44C(v65, v71, &v94, v66, v67);
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v87);
          }

          ++v57;
        }

        while (v57 != v85);
      }

      v73 = a1[3];
      v74 = a1[4];
      sub_1AF441150(a1, v73);
      v75 = sub_1AF6950D8(v73, v74, MEMORY[0x1E69E7760], 89);
      v76 = swift_isUniquelyReferenced_nonNull_native();
      v77 = *(v75 + 72);
      if (v76)
      {
        sub_1AF64CAD0(0, *(v77 + 16));
      }

      else
      {
        *(v75 + 72) = sub_1AFC85B7C(0, *(v77 + 24) >> 1);
      }
    }

    v78 = a1[3];
    v79 = a1[4];
    sub_1AF441150(a1, v78);
    v80 = sub_1AF6950D8(v78, v79, MEMORY[0x1E69E7760], 89);
    *(v80 + 40) = 0;
    *(v80 + 48) = 1;

    v11 = v82;
  }

  else
  {
    v11 = 0xFFFFFFFFLL;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v92);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v11;
}

uint64_t sub_1AF69F02C(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t *))
{
  if (*(a2 + 16) >= *(a1 + 16))
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  if (v7)
  {
    a3(0);
    v8 = sub_1AFDFE5C8();
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC8];
  }

  v10 = v8;

  a4(a1, a2, 1, &v10);
  return v10;
}

Swift::Int sub_1AF69F0F8(void *a1)
{
  sub_1AF6A2C9C(0, &qword_1ED726A68, sub_1AF6A20C8, &type metadata for EntityManagerCoder.CodingKeys, MEMORY[0x1E69E6F48]);
  v3 = v2;
  v126 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v118 - v4;
  v6 = a1[3];
  v7 = a1[4];
  sub_1AF441150(a1, v6);
  v8 = sub_1AF6950D8(v6, v7, MEMORY[0x1E69E7760], 89);

  v128 = swift_unownedRetain();

  v9 = *(v8 + 32);
  v10 = *(v8 + 36);
  v11 = a1[3];
  v129 = a1;
  v12 = sub_1AF441150(a1, v11);
  sub_1AF6A20C8();
  v13 = v127;
  sub_1AFDFF3B8();
  if (v13)
  {

    v14 = v129;
LABEL_4:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v14);
LABEL_5:
    swift_unownedRelease();
    return v12;
  }

  v123 = v10;
  v124 = v9;
  v127 = v8;
  sub_1AF6A24BC(0, &unk_1ED726C80, &type metadata for EntityTableEntryCoder, MEMORY[0x1E69E62F8]);
  LOBYTE(v132) = 0;
  sub_1AF6A211C();
  sub_1AFDFE768();
  v121 = v3;
  v122 = v5;
  v16 = v133;
  v17 = *(v133 + 2);
  v18 = v128;
  v125 = 0;
  if (v17)
  {
    v132 = MEMORY[0x1E69E7CC0];
    sub_1AFC07194(0, v17, 0);
    v19 = v132;
    v20 = *(v132 + 16);
    v21 = 32;
    do
    {
      v22 = *&v16[v21];
      v132 = v19;
      v23 = *(v19 + 24);
      if (v20 >= v23 >> 1)
      {
        sub_1AFC07194(v23 > 1, v20 + 1, 1);
        v19 = v132;
      }

      *(v19 + 16) = v20 + 1;
      *(v19 + 8 * v20 + 32) = v22;
      v21 += 8;
      ++v20;
      --v17;
    }

    while (v17);
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
  }

  v119 = *(v19 + 16);
  swift_unownedRetainStrong();
  v24 = v18 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
  os_unfair_lock_lock(*(v18 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24));
  v25 = MEMORY[0x1E69E7CC0];
  v26 = sub_1AF66ED9C(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);
  v28 = *(v18 + 80);
  v29 = *(v28 + 16);
  v30 = v129;
  if (!v29)
  {
    goto LABEL_20;
  }

  v31 = 0;
  v32 = v28 + 32;
  while (*(*(v32 + 8 * v31) + 144) != v26)
  {
    if (v29 == ++v31)
    {
      goto LABEL_20;
    }
  }

  v33 = v25;
  v34 = v26;
  v35 = v27;
  v36 = sub_1AF65D418(v27, v31);
  v27 = v35;
  v37 = v36;
  v26 = v34;
  v25 = v33;
  if ((v37 & 0x100000000) != 0)
  {
LABEL_20:
    LODWORD(v37) = sub_1AF65D480(v26, v27, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);
  }

  v38 = *(*(v18 + 88) + 8 * v37 + 32);
  v39 = *(v24 + 24);

  os_unfair_lock_unlock(v39);

  v132 = 0;
  v133 = v25;
  swift_unownedRetainStrong();
  v40 = **(v18 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);

  v41 = v30[3];
  v42 = v30[4];
  sub_1AF441150(v30, v41);
  v43 = MEMORY[0x1E69E7760];
  v44 = sub_1AF6950D8(v41, v42, MEMORY[0x1E69E7760], 89);
  v45 = *(v44 + 32);
  v46 = *(v44 + 36);

  v47 = v127;

  LOBYTE(v131) = v46;
  v120 = v38;
  v48 = v125;
  sub_1AF63EA20(0, v38, 1, v45 | (v46 << 32), v119, v40, &v133, v19, &v132, v47);
  swift_bridgeObjectRelease_n();

  v49 = v133;
  v50 = v30[3];
  v51 = v30[4];
  sub_1AF441150(v30, v50);

  v52 = *(sub_1AF6950D8(v50, v51, v43, 89) + 24);

  if (v52 <= 1106)
  {
    v119 = v49;
    v125 = v48;
  }

  else
  {
    sub_1AF6A24BC(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    LOBYTE(v130) = 3;
    sub_1AF6A2428();
    v53 = v121;
    v12 = v122;
    sub_1AFDFE768();
    if (v48)
    {
      (*(v126 + 8))(v12, v53);

LABEL_30:

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v30);

      goto LABEL_5;
    }

    v119 = v49;
    v125 = 0;
    v54 = v131;
    v55 = v30[3];
    v56 = v30[4];
    sub_1AF441150(v30, v55);
    v57 = MEMORY[0x1E69E7760];
    sub_1AF6950D8(v55, v56, MEMORY[0x1E69E7760], 89);
    v58 = v30[3];
    v59 = v30[4];
    sub_1AF441150(v30, v58);
    v60 = *(sub_1AF6950D8(v58, v59, v57, 89) + 24);

    sub_1AF6962D0(v54, v60, 0);
  }

  v61 = v30[3];
  v62 = v30[4];
  sub_1AF441150(v30, v61);
  v63 = *(sub_1AF6950D8(v61, v62, MEMORY[0x1E69E7760], 89) + 24);

  v64 = v121;
  if (v63 >= 2002)
  {
    v65 = v30[3];
    v66 = v30[4];
    sub_1AF441150(v30, v65);
    v67 = MEMORY[0x1E69E7760];
    v68 = *(sub_1AF6950D8(v65, v66, MEMORY[0x1E69E7760], 89) + 87);

    v69 = v30[3];
    v70 = v30[4];
    sub_1AF441150(v30, v69);
    *(sub_1AF6950D8(v69, v70, v67, 89) + 87) = 0;

    v71 = v30[3];
    v72 = v30[4];
    sub_1AF441150(v30, v71);
    v73 = *(sub_1AF6950D8(v71, v72, v67, 89) + 24);

    v74 = v126;
    if (v73 < 2012)
    {
      sub_1AF6A24BC(0, &qword_1EB63D2C0, &type metadata for ComponentProperty, MEMORY[0x1E69E62F8]);
      LOBYTE(v130) = 4;
      sub_1AF6A2344();
      v79 = v122;
      v80 = v125;
      sub_1AFDFE768();
      if (v80)
      {
        v81 = v30[3];
        v82 = v30[4];
        sub_1AF441150(v30, v81);
        v12 = sub_1AF6950D8(v81, v82, MEMORY[0x1E69E7760], 89);

        (*(v74 + 8))(v79, v64);

        *(v12 + 87) = v68;

LABEL_53:
        v14 = v30;
        goto LABEL_4;
      }

      v83 = v68;
      v125 = 0;
      v86 = sub_1AF3C4360(v131);
    }

    else
    {
      sub_1AF69D618(0);
      LOBYTE(v130) = 4;
      sub_1AF6A23E0(&qword_1ED72C760, sub_1AF69D618, byte_1AFE69FF8);
      v75 = v122;
      v76 = v125;
      sub_1AFDFE768();
      if (v76)
      {
        v77 = v30[3];
        v78 = v30[4];
        sub_1AF441150(v30, v77);
        v12 = sub_1AF6950D8(v77, v78, MEMORY[0x1E69E7760], 89);

        (*(v74 + 8))(v75, v64);
        *(v12 + 87) = v68;

        goto LABEL_30;
      }

      v83 = v68;
      v84 = *(v131 + 16);
      v125 = 0;
      if (v84)
      {
        v130 = MEMORY[0x1E69E7CC0];
        v118 = v131;
        sub_1AFC073C4(0, v84, 0);
        v85 = v118;
        v86 = v130;
        v87 = *(v130 + 16);
        v88 = 32;
        do
        {
          v89 = *(v85 + v88);
          v130 = v86;
          v90 = *(v86 + 24);

          if (v87 >= v90 >> 1)
          {
            sub_1AFC073C4(v90 > 1, v87 + 1, 1);
            v85 = v118;
            v86 = v130;
          }

          *(v86 + 16) = v87 + 1;
          *(v86 + 8 * v87 + 32) = v89;
          v88 += 8;
          ++v87;
          --v84;
        }

        while (v84);

        v64 = v121;
        v30 = v129;
      }

      else
      {

        v86 = MEMORY[0x1E69E7CC0];
        v64 = v121;
      }
    }

    v91 = v30[3];
    v92 = v30[4];
    sub_1AF441150(v30, v91);
    v93 = MEMORY[0x1E69E7760];
    *(sub_1AF6950D8(v91, v92, MEMORY[0x1E69E7760], 89) + 144) = v86;

    v94 = v30[3];
    v95 = v30[4];
    sub_1AF441150(v30, v94);
    *(sub_1AF6950D8(v94, v95, v93, 89) + 87) = v83;
  }

  v96 = v126;
  v97 = v30[3];
  v98 = v30[4];
  sub_1AF441150(v30, v97);
  v99 = *(sub_1AF6950D8(v97, v98, MEMORY[0x1E69E7760], 89) + 24);

  v100 = v122;
  v101 = v125;
  if (v99 >= 2004)
  {
    sub_1AF6A24BC(0, &qword_1ED726CA0, &type metadata for RelationsCoder, MEMORY[0x1E69E62F8]);
    LOBYTE(v130) = 2;
    sub_1AF6A22A8();
    v12 = v100;
    sub_1AFDFE768();
    if (v101)
    {
LABEL_52:

      (*(v96 + 8))(v100, v64);
      swift_bridgeObjectRelease_n();
      goto LABEL_53;
    }

    v101 = 0;
    v102 = *(v131 + 16);
    if (v102)
    {
      v103 = (v131 + 48);
      do
      {
        v104 = *(v103 - 2);
        v105 = *(v103 - 1);
        v106 = *v103;
        v103 += 3;
        swift_unownedRetainStrong();

        sub_1AF693F20(v18, v104, v105, v106);

        --v102;
      }

      while (v102);
    }

    v64 = v121;
    v100 = v122;
    v30 = v129;
  }

  v107 = v30[3];
  v108 = v30[4];
  sub_1AF441150(v30, v107);
  v109 = *(sub_1AF6950D8(v107, v108, MEMORY[0x1E69E7760], 89) + 24);

  if (v109 > 2011)
  {
    sub_1AF69DA10(0, &qword_1ED72C770, sub_1AF69D570, sub_1AF69D5C4, &type metadata for EntityCoder);
    LOBYTE(v130) = 1;
    sub_1AF6A2668(qword_1ED72C778, byte_1AFE69FF8);
  }

  else
  {
    sub_1AF6A24BC(0, &qword_1EB63D2B0, &type metadata for EntityCoder, MEMORY[0x1E69E62F8]);
    LOBYTE(v130) = 1;
    sub_1AF6A220C();
  }

  v12 = v100;
  sub_1AFDFE768();
  if (v101)
  {
    goto LABEL_52;
  }

  v125 = 0;
  v126 = v131;
  v110 = *(v131 + 16);
  if (v110)
  {
    v111 = (v126 + 48);
    v112 = v124;
    v113 = v123;
    do
    {
      v114 = *(v111 - 2);
      v115 = *(v111 - 8);
      v116 = *v111;
      v111 += 3;
      swift_unownedRetainStrong();

      LOBYTE(v131) = v113;
      sub_1AF6986BC(v18, v112 | (v113 << 32), v114, v115, v116, v117);

      --v110;
    }

    while (v110);
  }

  (*(v96 + 8))(v122, v121);
  v12 = v119;

  swift_unownedRetain();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v129);
  swift_unownedRelease();
  return v12;
}

unint64_t sub_1AF69FF48(void *a1)
{
  sub_1AF6A2C9C(0, &qword_1ED726A60, sub_1AF6A2BB8, &type metadata for EntityTableEntryCoder.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19[-1] - v6;
  v8 = a1[3];
  v9 = a1[4];
  sub_1AF441150(a1, v8);
  v10 = *(sub_1AF6950D8(v8, v9, MEMORY[0x1E69E7760], 89) + 24);

  if (v10 >= 2000)
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF398();
    if (!v1)
    {
      v11 = a1[3];
      v12 = a1[4];
      sub_1AF441150(a1, v11);
      v13 = *(sub_1AF6950D8(v11, v12, MEMORY[0x1E69E7760], 89) + 24);

      sub_1AF441150(v19, v19[3]);
      if (v13 > 2007)
      {
        v15 = sub_1AFDFEE98();
        v16 = 0xFFFFFFFFLL;
      }

      else
      {
        v14 = sub_1AFDFEEB8();
        v15 = v14;
        v16 = HIDWORD(v14);
      }

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v19);
      goto LABEL_10;
    }

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF441150(a1, a1[3]);
  sub_1AF6A2BB8();
  sub_1AFDFF3B8();
  if (v1)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  LOBYTE(v19[0]) = 0;
  v15 = sub_1AFDFE798();
  LOBYTE(v19[0]) = 1;
  v16 = sub_1AFDFE798();
  (*(v5 + 8))(v7, v4);
LABEL_10:
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v15 | (v16 << 32);
}

unint64_t sub_1AF6A0254(void *a1)
{
  sub_1AF6A2C9C(0, &qword_1EB63D2A0, sub_1AF6A201C, &type metadata for EntityComponentReference.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AF6A201C();
  sub_1AFDFF3B8();
  if (v1)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v14 = 1;
  sub_1AF645788();
  sub_1AFDFE768();
  v14 = 0;
  sub_1AF47FEB4();
  sub_1AFDFE768();
  (*(v5 + 8))(v7, v4);
  v8 = v12;
  v9 = v13 << 32;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9 | v8;
}

char *sub_1AF6A05F4(uint64_t a1, char *a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = sub_1AF4217DC(0, *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_entityCount) & ~(*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_entityCount) >> 63), 0, MEMORY[0x1E69E7CC0]);
    v4 = a1 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
    os_unfair_lock_lock(*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24));
    v5 = (a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v6 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8);
    if (v6)
    {
      v7 = 0;
      for (i = 0; i != v6; ++i)
      {
        v10 = *v5 + v7;
        if ((*(v10 + 6) & 0x80000000) == 0)
        {
          v11 = *(v10 + 8);
          v13 = *(v3 + 2);
          v12 = *(v3 + 3);
          if (v13 >= v12 >> 1)
          {
            v3 = sub_1AF4217DC(v12 > 1, v13 + 1, 1, v3);
          }

          *(v3 + 2) = v13 + 1;
          v9 = &v3[8 * v13];
          *(v9 + 8) = i;
          *(v9 + 9) = v11;
        }

        v7 += 12;
      }
    }

    os_unfair_lock_unlock(*(v4 + 24));
  }

  swift_unownedRetain();
  return v3;
}

unint64_t sub_1AF6A0718()
{
  result = qword_1EB63D290;
  if (!qword_1EB63D290)
  {
    result = swift_getWitnessTable(aI_31, &type metadata for EntityManagerCoder, v0, v1);
    atomic_store(result, &qword_1EB63D290);
  }

  return result;
}

void sub_1AF6A076C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1AF6A07D0()
{
  result = qword_1EB63DD40;
  if (!qword_1EB63DD40)
  {
    sub_1AF6A076C(255, &unk_1EB63F340, MEMORY[0x1E6967F78], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6328], v3, v0, v1);
    atomic_store(result, &qword_1EB63DD40);
  }

  return result;
}

uint64_t sub_1AF6A0858(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for EntityCoder(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for EntityCoder(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t destroy for EntityManagerCoder(void *a1)
{

  return swift_unownedRelease();
}

uint64_t *sub_1AF6A097C(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;

  swift_unownedRetain();
  a1[1] = v3;
  return a1;
}

uint64_t *assignWithCopy for EntityManagerCoder(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = swift_unownedRetain();
  swift_unownedRelease();
  return a1;
}

void *assignWithTake for EntityManagerCoder(void *a1, _OWORD *a2)
{

  *a1 = *a2;
  swift_unownedRelease();
  return a1;
}

uint64_t sub_1AF6A0A68(uint64_t a1)
{
  result = sub_1AFDFDD58();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_1AF6A0AF8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  v7 = *(v5 + 80);
  if (v7 > 7 || (*(v5 + 80) & 0x100000) != 0 || v6 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v7 + 16) & ~v7));

    return a1;
  }

  if (!(*(v5 + 48))(a2, 1, v4))
  {
    (*(v5 + 16))(a1, a2, v4);
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }

  return memcpy(a1, a2, v6);
}

uint64_t sub_1AF6A0C50(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v6 = *(v3 - 8);
  result = (*(v6 + 48))(a1, 1, v3);
  if (!result)
  {
    v5 = *(v6 + 8);

    return v5(a1, v3);
  }

  return result;
}

void *sub_1AF6A0D14(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    if (*(v6 + 84))
    {
      v7 = *(v6 + 64);
    }

    else
    {
      v7 = *(v6 + 64) + 1;
    }

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v6 + 16))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }
}

void *sub_1AF6A0E24(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (!v8)
  {
    if (v9)
    {
      v13 = *(v6 + 8);
      v12 = v6 + 8;
      v13(a1, v5);
      v10 = *(v12 + 76);
      v11 = *(v12 + 56);
      goto LABEL_6;
    }

    (*(v6 + 24))(a1, a2, v5);
    return a1;
  }

  if (!v9)
  {
    (*(v6 + 16))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }

  v10 = *(v6 + 84);
  v11 = *(v6 + 64);
LABEL_6:
  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v11 + 1;
  }

  return memcpy(a1, a2, v14);
}